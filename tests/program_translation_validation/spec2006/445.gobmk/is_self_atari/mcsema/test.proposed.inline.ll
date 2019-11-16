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
%G_0x99da08_type = type <{ [4 x i8] }>
%G__0x57a16e_type = type <{ [8 x i8] }>
%G__0x57a49b_type = type <{ [8 x i8] }>
%G__0x57a4be_type = type <{ [8 x i8] }>
%G__0x57a4f4_type = type <{ [8 x i8] }>
%G__0xa7f430_type = type <{ [8 x i8] }>
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
@G_0x99da08 = global %G_0x99da08_type zeroinitializer
@G__0x57a16e = global %G__0x57a16e_type zeroinitializer
@G__0x57a49b = global %G__0x57a49b_type zeroinitializer
@G__0x57a4be = global %G__0x57a4be_type zeroinitializer
@G__0x57a4f4 = global %G__0x57a4f4_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer

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

declare %struct.Memory* @sub_412080.accuratelib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @is_self_atari(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4142a0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4142a0, %struct.Memory** %MEMORY
  %loadMem_4142a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i793 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i794 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i793
  %27 = load i64, i64* %PC.i792
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i792
  store i64 %26, i64* %RBP.i794, align 8
  store %struct.Memory* %loadMem_4142a1, %struct.Memory** %MEMORY
  %loadMem_4142a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i811 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i811
  %36 = load i64, i64* %PC.i810
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i810
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i811, align 8
  %39 = icmp ult i64 %35, 96
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
  %49 = xor i64 96, %35
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
  store %struct.Memory* %loadMem_4142a4, %struct.Memory** %MEMORY
  %loadMem_4142a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i865 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i864
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i864
  store i64 3, i64* %RAX.i865, align 8
  store %struct.Memory* %loadMem_4142a8, %struct.Memory** %MEMORY
  %loadMem_4142ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i882 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i882
  %85 = sub i64 %84, 8
  %86 = load i32, i32* %EDI.i
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i881
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i881
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_4142ad, %struct.Memory** %MEMORY
  %loadMem_4142b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i938 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %96 to i32*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i939 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i939
  %101 = sub i64 %100, 12
  %102 = load i32, i32* %ESI.i
  %103 = zext i32 %102 to i64
  %104 = load i64, i64* %PC.i938
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC.i938
  %106 = inttoptr i64 %101 to i32*
  store i32 %102, i32* %106
  store %struct.Memory* %loadMem_4142b0, %struct.Memory** %MEMORY
  %loadMem_4142b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i955 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RAX.i956 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 15
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RBP.i957 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RAX.i956
  %117 = load i64, i64* %RBP.i957
  %118 = sub i64 %117, 12
  %119 = load i64, i64* %PC.i955
  %120 = add i64 %119, 3
  store i64 %120, i64* %PC.i955
  %121 = trunc i64 %116 to i32
  %122 = inttoptr i64 %118 to i32*
  %123 = load i32, i32* %122
  %124 = sub i32 %121, %123
  %125 = zext i32 %124 to i64
  store i64 %125, i64* %RAX.i956, align 8
  %126 = icmp ult i32 %121, %123
  %127 = zext i1 %126 to i8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %127, i8* %128, align 1
  %129 = and i32 %124, 255
  %130 = call i32 @llvm.ctpop.i32(i32 %129)
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %133, i8* %134, align 1
  %135 = xor i32 %123, %121
  %136 = xor i32 %135, %124
  %137 = lshr i32 %136, 4
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %139, i8* %140, align 1
  %141 = icmp eq i32 %124, 0
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %142, i8* %143, align 1
  %144 = lshr i32 %124, 31
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %145, i8* %146, align 1
  %147 = lshr i32 %121, 31
  %148 = lshr i32 %123, 31
  %149 = xor i32 %148, %147
  %150 = xor i32 %144, %147
  %151 = add i32 %150, %149
  %152 = icmp eq i32 %151, 2
  %153 = zext i1 %152 to i8
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %153, i8* %154, align 1
  store %struct.Memory* %loadMem_4142b3, %struct.Memory** %MEMORY
  %loadMem_4142b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 33
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %PC.i1001 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %EAX.i1002 = bitcast %union.anon* %160 to i32*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 15
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RBP.i1003 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %RBP.i1003
  %165 = sub i64 %164, 16
  %166 = load i32, i32* %EAX.i1002
  %167 = zext i32 %166 to i64
  %168 = load i64, i64* %PC.i1001
  %169 = add i64 %168, 3
  store i64 %169, i64* %PC.i1001
  %170 = inttoptr i64 %165 to i32*
  store i32 %166, i32* %170
  store %struct.Memory* %loadMem_4142b6, %struct.Memory** %MEMORY
  %loadMem_4142b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 33
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %PC.i999 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 15
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RBP.i1000 = bitcast %union.anon* %176 to i64*
  %177 = load i64, i64* %RBP.i1000
  %178 = sub i64 %177, 20
  %179 = load i64, i64* %PC.i999
  %180 = add i64 %179, 7
  store i64 %180, i64* %PC.i999
  %181 = inttoptr i64 %178 to i32*
  store i32 0, i32* %181
  store %struct.Memory* %loadMem_4142b9, %struct.Memory** %MEMORY
  %loadMem_4142c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 33
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %PC.i997 = bitcast %union.anon* %184 to i64*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 15
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %RBP.i998 = bitcast %union.anon* %187 to i64*
  %188 = load i64, i64* %RBP.i998
  %189 = sub i64 %188, 24
  %190 = load i64, i64* %PC.i997
  %191 = add i64 %190, 7
  store i64 %191, i64* %PC.i997
  %192 = inttoptr i64 %189 to i32*
  store i32 0, i32* %192
  store %struct.Memory* %loadMem_4142c0, %struct.Memory** %MEMORY
  %loadMem_4142c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 33
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %PC.i995 = bitcast %union.anon* %195 to i64*
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 15
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %RBP.i996 = bitcast %union.anon* %198 to i64*
  %199 = load i64, i64* %RBP.i996
  %200 = sub i64 %199, 28
  %201 = load i64, i64* %PC.i995
  %202 = add i64 %201, 7
  store i64 %202, i64* %PC.i995
  %203 = inttoptr i64 %200 to i32*
  store i32 0, i32* %203
  store %struct.Memory* %loadMem_4142c7, %struct.Memory** %MEMORY
  %loadMem_4142ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 33
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %PC.i993 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 15
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RBP.i994 = bitcast %union.anon* %209 to i64*
  %210 = load i64, i64* %RBP.i994
  %211 = sub i64 %210, 8
  %212 = load i64, i64* %PC.i993
  %213 = add i64 %212, 7
  store i64 %213, i64* %PC.i993
  %214 = inttoptr i64 %211 to i32*
  %215 = load i32, i32* %214
  %216 = sub i32 %215, 421
  %217 = icmp ult i32 %215, 421
  %218 = zext i1 %217 to i8
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %218, i8* %219, align 1
  %220 = and i32 %216, 255
  %221 = call i32 @llvm.ctpop.i32(i32 %220)
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %224, i8* %225, align 1
  %226 = xor i32 %215, 421
  %227 = xor i32 %226, %216
  %228 = lshr i32 %227, 4
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %230, i8* %231, align 1
  %232 = icmp eq i32 %216, 0
  %233 = zext i1 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %233, i8* %234, align 1
  %235 = lshr i32 %216, 31
  %236 = trunc i32 %235 to i8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %236, i8* %237, align 1
  %238 = lshr i32 %215, 31
  %239 = xor i32 %235, %238
  %240 = add i32 %239, %238
  %241 = icmp eq i32 %240, 2
  %242 = zext i1 %241 to i8
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %242, i8* %243, align 1
  store %struct.Memory* %loadMem_4142ce, %struct.Memory** %MEMORY
  %loadMem_4142d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 33
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %PC.i992 = bitcast %union.anon* %246 to i64*
  %247 = load i64, i64* %PC.i992
  %248 = add i64 %247, 32
  %249 = load i64, i64* %PC.i992
  %250 = add i64 %249, 6
  %251 = load i64, i64* %PC.i992
  %252 = add i64 %251, 6
  store i64 %252, i64* %PC.i992
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %254 = load i8, i8* %253, align 1
  %255 = icmp eq i8 %254, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %BRANCH_TAKEN, align 1
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %258 = select i1 %255, i64 %248, i64 %250
  store i64 %258, i64* %257, align 8
  store %struct.Memory* %loadMem_4142d5, %struct.Memory** %MEMORY
  %loadBr_4142d5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4142d5 = icmp eq i8 %loadBr_4142d5, 1
  br i1 %cmpBr_4142d5, label %block_.L_4142f5, label %block_4142db

block_4142db:                                     ; preds = %entry
  %loadMem_4142db = load %struct.Memory*, %struct.Memory** %MEMORY
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 33
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %PC.i989 = bitcast %union.anon* %261 to i64*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %RAX.i990 = bitcast %union.anon* %264 to i64*
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 15
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %RBP.i991 = bitcast %union.anon* %267 to i64*
  %268 = load i64, i64* %RBP.i991
  %269 = sub i64 %268, 8
  %270 = load i64, i64* %PC.i989
  %271 = add i64 %270, 4
  store i64 %271, i64* %PC.i989
  %272 = inttoptr i64 %269 to i32*
  %273 = load i32, i32* %272
  %274 = sext i32 %273 to i64
  store i64 %274, i64* %RAX.i990, align 8
  store %struct.Memory* %loadMem_4142db, %struct.Memory** %MEMORY
  %loadMem_4142df = load %struct.Memory*, %struct.Memory** %MEMORY
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 33
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %PC.i986 = bitcast %union.anon* %277 to i64*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %RAX.i987 = bitcast %union.anon* %280 to i64*
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 5
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %RCX.i988 = bitcast %union.anon* %283 to i64*
  %284 = load i64, i64* %RAX.i987
  %285 = add i64 %284, 12099168
  %286 = load i64, i64* %PC.i986
  %287 = add i64 %286, 8
  store i64 %287, i64* %PC.i986
  %288 = inttoptr i64 %285 to i8*
  %289 = load i8, i8* %288
  %290 = zext i8 %289 to i64
  store i64 %290, i64* %RCX.i988, align 8
  store %struct.Memory* %loadMem_4142df, %struct.Memory** %MEMORY
  %loadMem_4142e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 33
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %PC.i984 = bitcast %union.anon* %293 to i64*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 5
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %ECX.i985 = bitcast %union.anon* %296 to i32*
  %297 = load i32, i32* %ECX.i985
  %298 = zext i32 %297 to i64
  %299 = load i64, i64* %PC.i984
  %300 = add i64 %299, 3
  store i64 %300, i64* %PC.i984
  %301 = sub i32 %297, 3
  %302 = icmp ult i32 %297, 3
  %303 = zext i1 %302 to i8
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %303, i8* %304, align 1
  %305 = and i32 %301, 255
  %306 = call i32 @llvm.ctpop.i32(i32 %305)
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %309, i8* %310, align 1
  %311 = xor i64 3, %298
  %312 = trunc i64 %311 to i32
  %313 = xor i32 %312, %301
  %314 = lshr i32 %313, 4
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %316, i8* %317, align 1
  %318 = icmp eq i32 %301, 0
  %319 = zext i1 %318 to i8
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %319, i8* %320, align 1
  %321 = lshr i32 %301, 31
  %322 = trunc i32 %321 to i8
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %322, i8* %323, align 1
  %324 = lshr i32 %297, 31
  %325 = xor i32 %321, %324
  %326 = add i32 %325, %324
  %327 = icmp eq i32 %326, 2
  %328 = zext i1 %327 to i8
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %328, i8* %329, align 1
  store %struct.Memory* %loadMem_4142e7, %struct.Memory** %MEMORY
  %loadMem_4142ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 33
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %PC.i983 = bitcast %union.anon* %332 to i64*
  %333 = load i64, i64* %PC.i983
  %334 = add i64 %333, 11
  %335 = load i64, i64* %PC.i983
  %336 = add i64 %335, 6
  %337 = load i64, i64* %PC.i983
  %338 = add i64 %337, 6
  store i64 %338, i64* %PC.i983
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %340 = load i8, i8* %339, align 1
  store i8 %340, i8* %BRANCH_TAKEN, align 1
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %342 = icmp ne i8 %340, 0
  %343 = select i1 %342, i64 %334, i64 %336
  store i64 %343, i64* %341, align 8
  store %struct.Memory* %loadMem_4142ea, %struct.Memory** %MEMORY
  %loadBr_4142ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4142ea = icmp eq i8 %loadBr_4142ea, 1
  br i1 %cmpBr_4142ea, label %block_.L_4142f5, label %block_4142f0

block_4142f0:                                     ; preds = %block_4142db
  %loadMem_4142f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 33
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %PC.i982 = bitcast %union.anon* %346 to i64*
  %347 = load i64, i64* %PC.i982
  %348 = add i64 %347, 94
  %349 = load i64, i64* %PC.i982
  %350 = add i64 %349, 5
  store i64 %350, i64* %PC.i982
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %348, i64* %351, align 8
  store %struct.Memory* %loadMem_4142f0, %struct.Memory** %MEMORY
  br label %block_.L_41434e

block_.L_4142f5:                                  ; preds = %block_4142db, %entry
  %loadMem_4142f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 33
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %PC.i980 = bitcast %union.anon* %354 to i64*
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 11
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %RDI.i981 = bitcast %union.anon* %357 to i64*
  %358 = load i64, i64* %PC.i980
  %359 = add i64 %358, 10
  store i64 %359, i64* %PC.i980
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i981, align 8
  store %struct.Memory* %loadMem_4142f5, %struct.Memory** %MEMORY
  %loadMem_4142ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 33
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %PC.i978 = bitcast %union.anon* %362 to i64*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 9
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %RSI.i979 = bitcast %union.anon* %365 to i64*
  %366 = load i64, i64* %PC.i978
  %367 = add i64 %366, 5
  store i64 %367, i64* %PC.i978
  store i64 2294, i64* %RSI.i979, align 8
  store %struct.Memory* %loadMem_4142ff, %struct.Memory** %MEMORY
  %loadMem_414304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 33
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %PC.i976 = bitcast %union.anon* %370 to i64*
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 7
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %RDX.i977 = bitcast %union.anon* %373 to i64*
  %374 = load i64, i64* %PC.i976
  %375 = add i64 %374, 10
  store i64 %375, i64* %PC.i976
  store i64 ptrtoint (%G__0x57a49b_type* @G__0x57a49b to i64), i64* %RDX.i977, align 8
  store %struct.Memory* %loadMem_414304, %struct.Memory** %MEMORY
  %loadMem_41430e = load %struct.Memory*, %struct.Memory** %MEMORY
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 33
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %PC.i974 = bitcast %union.anon* %378 to i64*
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %RAX.i975 = bitcast %union.anon* %381 to i64*
  %382 = load i64, i64* %PC.i974
  %383 = add i64 %382, 5
  store i64 %383, i64* %PC.i974
  store i64 20, i64* %RAX.i975, align 8
  store %struct.Memory* %loadMem_41430e, %struct.Memory** %MEMORY
  %loadMem_414313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 33
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %PC.i971 = bitcast %union.anon* %386 to i64*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 5
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %RCX.i972 = bitcast %union.anon* %389 to i64*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 15
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RBP.i973 = bitcast %union.anon* %392 to i64*
  %393 = load i64, i64* %RBP.i973
  %394 = sub i64 %393, 8
  %395 = load i64, i64* %PC.i971
  %396 = add i64 %395, 3
  store i64 %396, i64* %PC.i971
  %397 = inttoptr i64 %394 to i32*
  %398 = load i32, i32* %397
  %399 = zext i32 %398 to i64
  store i64 %399, i64* %RCX.i972, align 8
  store %struct.Memory* %loadMem_414313, %struct.Memory** %MEMORY
  %loadMem_414316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 33
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %PC.i968 = bitcast %union.anon* %402 to i64*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %EAX.i969 = bitcast %union.anon* %405 to i32*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 15
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %RBP.i970 = bitcast %union.anon* %408 to i64*
  %409 = load i64, i64* %RBP.i970
  %410 = sub i64 %409, 32
  %411 = load i32, i32* %EAX.i969
  %412 = zext i32 %411 to i64
  %413 = load i64, i64* %PC.i968
  %414 = add i64 %413, 3
  store i64 %414, i64* %PC.i968
  %415 = inttoptr i64 %410 to i32*
  store i32 %411, i32* %415
  store %struct.Memory* %loadMem_414316, %struct.Memory** %MEMORY
  %loadMem_414319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %417 = getelementptr inbounds %struct.GPR, %struct.GPR* %416, i32 0, i32 33
  %418 = getelementptr inbounds %struct.Reg, %struct.Reg* %417, i32 0, i32 0
  %PC.i965 = bitcast %union.anon* %418 to i64*
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 5
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %ECX.i966 = bitcast %union.anon* %421 to i32*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %RAX.i967 = bitcast %union.anon* %424 to i64*
  %425 = load i32, i32* %ECX.i966
  %426 = zext i32 %425 to i64
  %427 = load i64, i64* %PC.i965
  %428 = add i64 %427, 2
  store i64 %428, i64* %PC.i965
  %429 = and i64 %426, 4294967295
  store i64 %429, i64* %RAX.i967, align 8
  store %struct.Memory* %loadMem_414319, %struct.Memory** %MEMORY
  %loadMem_41431b = load %struct.Memory*, %struct.Memory** %MEMORY
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 33
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %PC.i962 = bitcast %union.anon* %432 to i64*
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 7
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %RDX.i963 = bitcast %union.anon* %435 to i64*
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 15
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %RBP.i964 = bitcast %union.anon* %438 to i64*
  %439 = load i64, i64* %RBP.i964
  %440 = sub i64 %439, 40
  %441 = load i64, i64* %RDX.i963
  %442 = load i64, i64* %PC.i962
  %443 = add i64 %442, 4
  store i64 %443, i64* %PC.i962
  %444 = inttoptr i64 %440 to i64*
  store i64 %441, i64* %444
  store %struct.Memory* %loadMem_41431b, %struct.Memory** %MEMORY
  %loadMem_41431f = load %struct.Memory*, %struct.Memory** %MEMORY
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 33
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %PC.i961 = bitcast %union.anon* %447 to i64*
  %448 = load i64, i64* %PC.i961
  %449 = add i64 %448, 1
  store i64 %449, i64* %PC.i961
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %452 = bitcast %union.anon* %451 to i32*
  %453 = load i32, i32* %452, align 8
  %454 = sext i32 %453 to i64
  %455 = lshr i64 %454, 32
  store i64 %455, i64* %450, align 8
  store %struct.Memory* %loadMem_41431f, %struct.Memory** %MEMORY
  %loadMem_414320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 33
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %PC.i958 = bitcast %union.anon* %458 to i64*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 5
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %RCX.i959 = bitcast %union.anon* %461 to i64*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 15
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %RBP.i960 = bitcast %union.anon* %464 to i64*
  %465 = load i64, i64* %RBP.i960
  %466 = sub i64 %465, 32
  %467 = load i64, i64* %PC.i958
  %468 = add i64 %467, 3
  store i64 %468, i64* %PC.i958
  %469 = inttoptr i64 %466 to i32*
  %470 = load i32, i32* %469
  %471 = zext i32 %470 to i64
  store i64 %471, i64* %RCX.i959, align 8
  store %struct.Memory* %loadMem_414320, %struct.Memory** %MEMORY
  %loadMem_414323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 33
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %474 to i64*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 5
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %ECX.i953 = bitcast %union.anon* %477 to i32*
  %478 = load i32, i32* %ECX.i953
  %479 = zext i32 %478 to i64
  %480 = load i64, i64* %PC.i952
  %481 = add i64 %480, 2
  store i64 %481, i64* %PC.i952
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %483 = bitcast %union.anon* %482 to i32*
  %484 = load i32, i32* %483, align 8
  %485 = zext i32 %484 to i64
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %487 = bitcast %union.anon* %486 to i32*
  %488 = load i32, i32* %487, align 8
  %489 = zext i32 %488 to i64
  %490 = shl i64 %479, 32
  %491 = ashr exact i64 %490, 32
  %492 = shl i64 %489, 32
  %493 = or i64 %492, %485
  %494 = sdiv i64 %493, %491
  %495 = shl i64 %494, 32
  %496 = ashr exact i64 %495, 32
  %497 = icmp eq i64 %494, %496
  br i1 %497, label %502, label %498

; <label>:498:                                    ; preds = %block_.L_4142f5
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %500, %struct.Memory* %loadMem_414323)
  br label %routine_idivl__ecx.exit954

; <label>:502:                                    ; preds = %block_.L_4142f5
  %503 = srem i64 %493, %491
  %504 = getelementptr inbounds %union.anon, %union.anon* %482, i64 0, i32 0
  %505 = and i64 %494, 4294967295
  store i64 %505, i64* %504, align 8
  %506 = getelementptr inbounds %union.anon, %union.anon* %486, i64 0, i32 0
  %507 = and i64 %503, 4294967295
  store i64 %507, i64* %506, align 8
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %508, align 1
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %509, align 1
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %510, align 1
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %511, align 1
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %512, align 1
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %513, align 1
  br label %routine_idivl__ecx.exit954

routine_idivl__ecx.exit954:                       ; preds = %498, %502
  %514 = phi %struct.Memory* [ %501, %498 ], [ %loadMem_414323, %502 ]
  store %struct.Memory* %514, %struct.Memory** %MEMORY
  %loadMem_414325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i950 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %RAX.i951 = bitcast %union.anon* %520 to i64*
  %521 = load i64, i64* %RAX.i951
  %522 = load i64, i64* %PC.i950
  %523 = add i64 %522, 3
  store i64 %523, i64* %PC.i950
  %524 = trunc i64 %521 to i32
  %525 = sub i32 %524, 1
  %526 = zext i32 %525 to i64
  store i64 %526, i64* %RAX.i951, align 8
  %527 = icmp ult i32 %524, 1
  %528 = zext i1 %527 to i8
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %528, i8* %529, align 1
  %530 = and i32 %525, 255
  %531 = call i32 @llvm.ctpop.i32(i32 %530)
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  %534 = xor i8 %533, 1
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %534, i8* %535, align 1
  %536 = xor i64 1, %521
  %537 = trunc i64 %536 to i32
  %538 = xor i32 %537, %525
  %539 = lshr i32 %538, 4
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %541, i8* %542, align 1
  %543 = icmp eq i32 %525, 0
  %544 = zext i1 %543 to i8
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %544, i8* %545, align 1
  %546 = lshr i32 %525, 31
  %547 = trunc i32 %546 to i8
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %547, i8* %548, align 1
  %549 = lshr i32 %524, 31
  %550 = xor i32 %546, %549
  %551 = add i32 %550, %549
  %552 = icmp eq i32 %551, 2
  %553 = zext i1 %552 to i8
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %553, i8* %554, align 1
  store %struct.Memory* %loadMem_414325, %struct.Memory** %MEMORY
  %loadMem_414328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 33
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %PC.i947 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 17
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %R8D.i948 = bitcast %union.anon* %560 to i32*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 15
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %RBP.i949 = bitcast %union.anon* %563 to i64*
  %564 = bitcast i32* %R8D.i948 to i64*
  %565 = load i64, i64* %RBP.i949
  %566 = sub i64 %565, 8
  %567 = load i64, i64* %PC.i947
  %568 = add i64 %567, 4
  store i64 %568, i64* %PC.i947
  %569 = inttoptr i64 %566 to i32*
  %570 = load i32, i32* %569
  %571 = zext i32 %570 to i64
  store i64 %571, i64* %564, align 8
  store %struct.Memory* %loadMem_414328, %struct.Memory** %MEMORY
  %loadMem_41432c = load %struct.Memory*, %struct.Memory** %MEMORY
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 33
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %PC.i944 = bitcast %union.anon* %574 to i64*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 1
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %EAX.i945 = bitcast %union.anon* %577 to i32*
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 15
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %RBP.i946 = bitcast %union.anon* %580 to i64*
  %581 = load i64, i64* %RBP.i946
  %582 = sub i64 %581, 44
  %583 = load i32, i32* %EAX.i945
  %584 = zext i32 %583 to i64
  %585 = load i64, i64* %PC.i944
  %586 = add i64 %585, 3
  store i64 %586, i64* %PC.i944
  %587 = inttoptr i64 %582 to i32*
  store i32 %583, i32* %587
  store %struct.Memory* %loadMem_41432c, %struct.Memory** %MEMORY
  %loadMem_41432f = load %struct.Memory*, %struct.Memory** %MEMORY
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 33
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %PC.i941 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 17
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %R8D.i942 = bitcast %union.anon* %593 to i32*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 1
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %RAX.i943 = bitcast %union.anon* %596 to i64*
  %597 = load i32, i32* %R8D.i942
  %598 = zext i32 %597 to i64
  %599 = load i64, i64* %PC.i941
  %600 = add i64 %599, 3
  store i64 %600, i64* %PC.i941
  %601 = and i64 %598, 4294967295
  store i64 %601, i64* %RAX.i943, align 8
  store %struct.Memory* %loadMem_41432f, %struct.Memory** %MEMORY
  %loadMem_414332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 33
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %604 to i64*
  %605 = load i64, i64* %PC.i940
  %606 = add i64 %605, 1
  store i64 %606, i64* %PC.i940
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %609 = bitcast %union.anon* %608 to i32*
  %610 = load i32, i32* %609, align 8
  %611 = sext i32 %610 to i64
  %612 = lshr i64 %611, 32
  store i64 %612, i64* %607, align 8
  store %struct.Memory* %loadMem_414332, %struct.Memory** %MEMORY
  %loadMem_414333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 33
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %PC.i935 = bitcast %union.anon* %615 to i64*
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 5
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %ECX.i936 = bitcast %union.anon* %618 to i32*
  %619 = load i32, i32* %ECX.i936
  %620 = zext i32 %619 to i64
  %621 = load i64, i64* %PC.i935
  %622 = add i64 %621, 2
  store i64 %622, i64* %PC.i935
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %624 = bitcast %union.anon* %623 to i32*
  %625 = load i32, i32* %624, align 8
  %626 = zext i32 %625 to i64
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %628 = bitcast %union.anon* %627 to i32*
  %629 = load i32, i32* %628, align 8
  %630 = zext i32 %629 to i64
  %631 = shl i64 %620, 32
  %632 = ashr exact i64 %631, 32
  %633 = shl i64 %630, 32
  %634 = or i64 %633, %626
  %635 = sdiv i64 %634, %632
  %636 = shl i64 %635, 32
  %637 = ashr exact i64 %636, 32
  %638 = icmp eq i64 %635, %637
  br i1 %638, label %643, label %639

; <label>:639:                                    ; preds = %routine_idivl__ecx.exit954
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %641 = load i64, i64* %640, align 8
  %642 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %641, %struct.Memory* %loadMem_414333)
  br label %routine_idivl__ecx.exit937

; <label>:643:                                    ; preds = %routine_idivl__ecx.exit954
  %644 = srem i64 %634, %632
  %645 = getelementptr inbounds %union.anon, %union.anon* %623, i64 0, i32 0
  %646 = and i64 %635, 4294967295
  store i64 %646, i64* %645, align 8
  %647 = getelementptr inbounds %union.anon, %union.anon* %627, i64 0, i32 0
  %648 = and i64 %644, 4294967295
  store i64 %648, i64* %647, align 8
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %649, align 1
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %650, align 1
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %651, align 1
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %652, align 1
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %653, align 1
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %654, align 1
  br label %routine_idivl__ecx.exit937

routine_idivl__ecx.exit937:                       ; preds = %639, %643
  %655 = phi %struct.Memory* [ %642, %639 ], [ %loadMem_414333, %643 ]
  store %struct.Memory* %655, %struct.Memory** %MEMORY
  %loadMem_414335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 33
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %PC.i933 = bitcast %union.anon* %658 to i64*
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 7
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %RDX.i934 = bitcast %union.anon* %661 to i64*
  %662 = load i64, i64* %RDX.i934
  %663 = load i64, i64* %PC.i933
  %664 = add i64 %663, 3
  store i64 %664, i64* %PC.i933
  %665 = trunc i64 %662 to i32
  %666 = sub i32 %665, 1
  %667 = zext i32 %666 to i64
  store i64 %667, i64* %RDX.i934, align 8
  %668 = icmp ult i32 %665, 1
  %669 = zext i1 %668 to i8
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %669, i8* %670, align 1
  %671 = and i32 %666, 255
  %672 = call i32 @llvm.ctpop.i32(i32 %671)
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 1
  %675 = xor i8 %674, 1
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %675, i8* %676, align 1
  %677 = xor i64 1, %662
  %678 = trunc i64 %677 to i32
  %679 = xor i32 %678, %666
  %680 = lshr i32 %679, 4
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %682, i8* %683, align 1
  %684 = icmp eq i32 %666, 0
  %685 = zext i1 %684 to i8
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %685, i8* %686, align 1
  %687 = lshr i32 %666, 31
  %688 = trunc i32 %687 to i8
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %688, i8* %689, align 1
  %690 = lshr i32 %665, 31
  %691 = xor i32 %687, %690
  %692 = add i32 %691, %690
  %693 = icmp eq i32 %692, 2
  %694 = zext i1 %693 to i8
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %694, i8* %695, align 1
  store %struct.Memory* %loadMem_414335, %struct.Memory** %MEMORY
  %loadMem_414338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 33
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %698 to i64*
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 15
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %RBP.i931 = bitcast %union.anon* %701 to i64*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 19
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %R9.i932 = bitcast %union.anon* %704 to i64*
  %705 = load i64, i64* %RBP.i931
  %706 = sub i64 %705, 40
  %707 = load i64, i64* %PC.i930
  %708 = add i64 %707, 4
  store i64 %708, i64* %PC.i930
  %709 = inttoptr i64 %706 to i64*
  %710 = load i64, i64* %709
  store i64 %710, i64* %R9.i932, align 8
  store %struct.Memory* %loadMem_414338, %struct.Memory** %MEMORY
  %loadMem_41433c = load %struct.Memory*, %struct.Memory** %MEMORY
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 33
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %PC.i927 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 7
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %EDX.i928 = bitcast %union.anon* %716 to i32*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 15
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %RBP.i929 = bitcast %union.anon* %719 to i64*
  %720 = load i64, i64* %RBP.i929
  %721 = sub i64 %720, 48
  %722 = load i32, i32* %EDX.i928
  %723 = zext i32 %722 to i64
  %724 = load i64, i64* %PC.i927
  %725 = add i64 %724, 3
  store i64 %725, i64* %PC.i927
  %726 = inttoptr i64 %721 to i32*
  store i32 %722, i32* %726
  store %struct.Memory* %loadMem_41433c, %struct.Memory** %MEMORY
  %loadMem_41433f = load %struct.Memory*, %struct.Memory** %MEMORY
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 33
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %PC.i924 = bitcast %union.anon* %729 to i64*
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 7
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %RDX.i925 = bitcast %union.anon* %732 to i64*
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 19
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %R9.i926 = bitcast %union.anon* %735 to i64*
  %736 = load i64, i64* %R9.i926
  %737 = load i64, i64* %PC.i924
  %738 = add i64 %737, 3
  store i64 %738, i64* %PC.i924
  store i64 %736, i64* %RDX.i925, align 8
  store %struct.Memory* %loadMem_41433f, %struct.Memory** %MEMORY
  %loadMem_414342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 33
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 5
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RCX.i922 = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 15
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %RBP.i923 = bitcast %union.anon* %747 to i64*
  %748 = load i64, i64* %RBP.i923
  %749 = sub i64 %748, 44
  %750 = load i64, i64* %PC.i921
  %751 = add i64 %750, 3
  store i64 %751, i64* %PC.i921
  %752 = inttoptr i64 %749 to i32*
  %753 = load i32, i32* %752
  %754 = zext i32 %753 to i64
  store i64 %754, i64* %RCX.i922, align 8
  store %struct.Memory* %loadMem_414342, %struct.Memory** %MEMORY
  %loadMem_414345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 33
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 17
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %R8D.i919 = bitcast %union.anon* %760 to i32*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 15
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %RBP.i920 = bitcast %union.anon* %763 to i64*
  %764 = bitcast i32* %R8D.i919 to i64*
  %765 = load i64, i64* %RBP.i920
  %766 = sub i64 %765, 48
  %767 = load i64, i64* %PC.i918
  %768 = add i64 %767, 4
  store i64 %768, i64* %PC.i918
  %769 = inttoptr i64 %766 to i32*
  %770 = load i32, i32* %769
  %771 = zext i32 %770 to i64
  store i64 %771, i64* %764, align 8
  store %struct.Memory* %loadMem_414345, %struct.Memory** %MEMORY
  %loadMem1_414349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 33
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %PC.i917 = bitcast %union.anon* %774 to i64*
  %775 = load i64, i64* %PC.i917
  %776 = add i64 %775, 253255
  %777 = load i64, i64* %PC.i917
  %778 = add i64 %777, 5
  %779 = load i64, i64* %PC.i917
  %780 = add i64 %779, 5
  store i64 %780, i64* %PC.i917
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %782 = load i64, i64* %781, align 8
  %783 = add i64 %782, -8
  %784 = inttoptr i64 %783 to i64*
  store i64 %778, i64* %784
  store i64 %783, i64* %781, align 8
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %776, i64* %785, align 8
  store %struct.Memory* %loadMem1_414349, %struct.Memory** %MEMORY
  %loadMem2_414349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414349 = load i64, i64* %3
  %call2_414349 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_414349, %struct.Memory* %loadMem2_414349)
  store %struct.Memory* %call2_414349, %struct.Memory** %MEMORY
  br label %block_.L_41434e

block_.L_41434e:                                  ; preds = %routine_idivl__ecx.exit937, %block_4142f0
  %loadMem_41434e = load %struct.Memory*, %struct.Memory** %MEMORY
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 33
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %788 to i64*
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 1
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %RAX.i915 = bitcast %union.anon* %791 to i64*
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 15
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %RBP.i916 = bitcast %union.anon* %794 to i64*
  %795 = load i64, i64* %RBP.i916
  %796 = sub i64 %795, 8
  %797 = load i64, i64* %PC.i914
  %798 = add i64 %797, 4
  store i64 %798, i64* %PC.i914
  %799 = inttoptr i64 %796 to i32*
  %800 = load i32, i32* %799
  %801 = sext i32 %800 to i64
  store i64 %801, i64* %RAX.i915, align 8
  store %struct.Memory* %loadMem_41434e, %struct.Memory** %MEMORY
  %loadMem_414352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 33
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %PC.i911 = bitcast %union.anon* %804 to i64*
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 1
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %RAX.i912 = bitcast %union.anon* %807 to i64*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 5
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %RCX.i913 = bitcast %union.anon* %810 to i64*
  %811 = load i64, i64* %RAX.i912
  %812 = add i64 %811, 12099168
  %813 = load i64, i64* %PC.i911
  %814 = add i64 %813, 8
  store i64 %814, i64* %PC.i911
  %815 = inttoptr i64 %812 to i8*
  %816 = load i8, i8* %815
  %817 = zext i8 %816 to i64
  store i64 %817, i64* %RCX.i913, align 8
  store %struct.Memory* %loadMem_414352, %struct.Memory** %MEMORY
  %loadMem_41435a = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i909 = bitcast %union.anon* %820 to i64*
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 5
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %ECX.i910 = bitcast %union.anon* %823 to i32*
  %824 = load i32, i32* %ECX.i910
  %825 = zext i32 %824 to i64
  %826 = load i64, i64* %PC.i909
  %827 = add i64 %826, 3
  store i64 %827, i64* %PC.i909
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %828, align 1
  %829 = and i32 %824, 255
  %830 = call i32 @llvm.ctpop.i32(i32 %829)
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  %833 = xor i8 %832, 1
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %833, i8* %834, align 1
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %835, align 1
  %836 = icmp eq i32 %824, 0
  %837 = zext i1 %836 to i8
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %837, i8* %838, align 1
  %839 = lshr i32 %824, 31
  %840 = trunc i32 %839 to i8
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %840, i8* %841, align 1
  %842 = lshr i32 %824, 31
  %843 = xor i32 %839, %842
  %844 = add i32 %843, %842
  %845 = icmp eq i32 %844, 2
  %846 = zext i1 %845 to i8
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %846, i8* %847, align 1
  store %struct.Memory* %loadMem_41435a, %struct.Memory** %MEMORY
  %loadMem_41435d = load %struct.Memory*, %struct.Memory** %MEMORY
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 33
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %PC.i908 = bitcast %union.anon* %850 to i64*
  %851 = load i64, i64* %PC.i908
  %852 = add i64 %851, 11
  %853 = load i64, i64* %PC.i908
  %854 = add i64 %853, 6
  %855 = load i64, i64* %PC.i908
  %856 = add i64 %855, 6
  store i64 %856, i64* %PC.i908
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %858 = load i8, i8* %857, align 1
  %859 = icmp eq i8 %858, 0
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %BRANCH_TAKEN, align 1
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %862 = select i1 %859, i64 %852, i64 %854
  store i64 %862, i64* %861, align 8
  store %struct.Memory* %loadMem_41435d, %struct.Memory** %MEMORY
  %loadBr_41435d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41435d = icmp eq i8 %loadBr_41435d, 1
  br i1 %cmpBr_41435d, label %block_.L_414368, label %block_414363

block_414363:                                     ; preds = %block_.L_41434e
  %loadMem_414363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 33
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %865 to i64*
  %866 = load i64, i64* %PC.i907
  %867 = add i64 %866, 94
  %868 = load i64, i64* %PC.i907
  %869 = add i64 %868, 5
  store i64 %869, i64* %PC.i907
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %867, i64* %870, align 8
  store %struct.Memory* %loadMem_414363, %struct.Memory** %MEMORY
  br label %block_.L_4143c1

block_.L_414368:                                  ; preds = %block_.L_41434e
  %loadMem_414368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 33
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %873 to i64*
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 11
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %RDI.i906 = bitcast %union.anon* %876 to i64*
  %877 = load i64, i64* %PC.i905
  %878 = add i64 %877, 10
  store i64 %878, i64* %PC.i905
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i906, align 8
  store %struct.Memory* %loadMem_414368, %struct.Memory** %MEMORY
  %loadMem_414372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 33
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 9
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %RSI.i904 = bitcast %union.anon* %884 to i64*
  %885 = load i64, i64* %PC.i903
  %886 = add i64 %885, 5
  store i64 %886, i64* %PC.i903
  store i64 2295, i64* %RSI.i904, align 8
  store %struct.Memory* %loadMem_414372, %struct.Memory** %MEMORY
  %loadMem_414377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 33
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %PC.i901 = bitcast %union.anon* %889 to i64*
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 7
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %RDX.i902 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %PC.i901
  %894 = add i64 %893, 10
  store i64 %894, i64* %PC.i901
  store i64 ptrtoint (%G__0x57a4be_type* @G__0x57a4be to i64), i64* %RDX.i902, align 8
  store %struct.Memory* %loadMem_414377, %struct.Memory** %MEMORY
  %loadMem_414381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 33
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %897 to i64*
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 1
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %RAX.i900 = bitcast %union.anon* %900 to i64*
  %901 = load i64, i64* %PC.i899
  %902 = add i64 %901, 5
  store i64 %902, i64* %PC.i899
  store i64 20, i64* %RAX.i900, align 8
  store %struct.Memory* %loadMem_414381, %struct.Memory** %MEMORY
  %loadMem_414386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 33
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %905 to i64*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %907 = getelementptr inbounds %struct.GPR, %struct.GPR* %906, i32 0, i32 5
  %908 = getelementptr inbounds %struct.Reg, %struct.Reg* %907, i32 0, i32 0
  %RCX.i897 = bitcast %union.anon* %908 to i64*
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %910 = getelementptr inbounds %struct.GPR, %struct.GPR* %909, i32 0, i32 15
  %911 = getelementptr inbounds %struct.Reg, %struct.Reg* %910, i32 0, i32 0
  %RBP.i898 = bitcast %union.anon* %911 to i64*
  %912 = load i64, i64* %RBP.i898
  %913 = sub i64 %912, 8
  %914 = load i64, i64* %PC.i896
  %915 = add i64 %914, 3
  store i64 %915, i64* %PC.i896
  %916 = inttoptr i64 %913 to i32*
  %917 = load i32, i32* %916
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %RCX.i897, align 8
  store %struct.Memory* %loadMem_414386, %struct.Memory** %MEMORY
  %loadMem_414389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 33
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 1
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %EAX.i894 = bitcast %union.anon* %924 to i32*
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 15
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %RBP.i895 = bitcast %union.anon* %927 to i64*
  %928 = load i64, i64* %RBP.i895
  %929 = sub i64 %928, 52
  %930 = load i32, i32* %EAX.i894
  %931 = zext i32 %930 to i64
  %932 = load i64, i64* %PC.i893
  %933 = add i64 %932, 3
  store i64 %933, i64* %PC.i893
  %934 = inttoptr i64 %929 to i32*
  store i32 %930, i32* %934
  store %struct.Memory* %loadMem_414389, %struct.Memory** %MEMORY
  %loadMem_41438c = load %struct.Memory*, %struct.Memory** %MEMORY
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 33
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %937 to i64*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 5
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %ECX.i891 = bitcast %union.anon* %940 to i32*
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 1
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %RAX.i892 = bitcast %union.anon* %943 to i64*
  %944 = load i32, i32* %ECX.i891
  %945 = zext i32 %944 to i64
  %946 = load i64, i64* %PC.i890
  %947 = add i64 %946, 2
  store i64 %947, i64* %PC.i890
  %948 = and i64 %945, 4294967295
  store i64 %948, i64* %RAX.i892, align 8
  store %struct.Memory* %loadMem_41438c, %struct.Memory** %MEMORY
  %loadMem_41438e = load %struct.Memory*, %struct.Memory** %MEMORY
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 33
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %PC.i887 = bitcast %union.anon* %951 to i64*
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 7
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %RDX.i888 = bitcast %union.anon* %954 to i64*
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 15
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %RBP.i889 = bitcast %union.anon* %957 to i64*
  %958 = load i64, i64* %RBP.i889
  %959 = sub i64 %958, 64
  %960 = load i64, i64* %RDX.i888
  %961 = load i64, i64* %PC.i887
  %962 = add i64 %961, 4
  store i64 %962, i64* %PC.i887
  %963 = inttoptr i64 %959 to i64*
  store i64 %960, i64* %963
  store %struct.Memory* %loadMem_41438e, %struct.Memory** %MEMORY
  %loadMem_414392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 33
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %966 to i64*
  %967 = load i64, i64* %PC.i886
  %968 = add i64 %967, 1
  store i64 %968, i64* %PC.i886
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %971 = bitcast %union.anon* %970 to i32*
  %972 = load i32, i32* %971, align 8
  %973 = sext i32 %972 to i64
  %974 = lshr i64 %973, 32
  store i64 %974, i64* %969, align 8
  store %struct.Memory* %loadMem_414392, %struct.Memory** %MEMORY
  %loadMem_414393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i883 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 5
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %RCX.i884 = bitcast %union.anon* %980 to i64*
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 15
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %RBP.i885 = bitcast %union.anon* %983 to i64*
  %984 = load i64, i64* %RBP.i885
  %985 = sub i64 %984, 52
  %986 = load i64, i64* %PC.i883
  %987 = add i64 %986, 3
  store i64 %987, i64* %PC.i883
  %988 = inttoptr i64 %985 to i32*
  %989 = load i32, i32* %988
  %990 = zext i32 %989 to i64
  store i64 %990, i64* %RCX.i884, align 8
  store %struct.Memory* %loadMem_414393, %struct.Memory** %MEMORY
  %loadMem_414396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 33
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 5
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %ECX.i879 = bitcast %union.anon* %996 to i32*
  %997 = load i32, i32* %ECX.i879
  %998 = zext i32 %997 to i64
  %999 = load i64, i64* %PC.i878
  %1000 = add i64 %999, 2
  store i64 %1000, i64* %PC.i878
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1002 = bitcast %union.anon* %1001 to i32*
  %1003 = load i32, i32* %1002, align 8
  %1004 = zext i32 %1003 to i64
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1006 = bitcast %union.anon* %1005 to i32*
  %1007 = load i32, i32* %1006, align 8
  %1008 = zext i32 %1007 to i64
  %1009 = shl i64 %998, 32
  %1010 = ashr exact i64 %1009, 32
  %1011 = shl i64 %1008, 32
  %1012 = or i64 %1011, %1004
  %1013 = sdiv i64 %1012, %1010
  %1014 = shl i64 %1013, 32
  %1015 = ashr exact i64 %1014, 32
  %1016 = icmp eq i64 %1013, %1015
  br i1 %1016, label %1021, label %1017

; <label>:1017:                                   ; preds = %block_.L_414368
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1019 = load i64, i64* %1018, align 8
  %1020 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1019, %struct.Memory* %loadMem_414396)
  br label %routine_idivl__ecx.exit880

; <label>:1021:                                   ; preds = %block_.L_414368
  %1022 = srem i64 %1012, %1010
  %1023 = getelementptr inbounds %union.anon, %union.anon* %1001, i64 0, i32 0
  %1024 = and i64 %1013, 4294967295
  store i64 %1024, i64* %1023, align 8
  %1025 = getelementptr inbounds %union.anon, %union.anon* %1005, i64 0, i32 0
  %1026 = and i64 %1022, 4294967295
  store i64 %1026, i64* %1025, align 8
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1027, align 1
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1028, align 1
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1029, align 1
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1030, align 1
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1031, align 1
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1032, align 1
  br label %routine_idivl__ecx.exit880

routine_idivl__ecx.exit880:                       ; preds = %1017, %1021
  %1033 = phi %struct.Memory* [ %1020, %1017 ], [ %loadMem_414396, %1021 ]
  store %struct.Memory* %1033, %struct.Memory** %MEMORY
  %loadMem_414398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 33
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %1036 to i64*
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 1
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %RAX.i877 = bitcast %union.anon* %1039 to i64*
  %1040 = load i64, i64* %RAX.i877
  %1041 = load i64, i64* %PC.i876
  %1042 = add i64 %1041, 3
  store i64 %1042, i64* %PC.i876
  %1043 = trunc i64 %1040 to i32
  %1044 = sub i32 %1043, 1
  %1045 = zext i32 %1044 to i64
  store i64 %1045, i64* %RAX.i877, align 8
  %1046 = icmp ult i32 %1043, 1
  %1047 = zext i1 %1046 to i8
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1047, i8* %1048, align 1
  %1049 = and i32 %1044, 255
  %1050 = call i32 @llvm.ctpop.i32(i32 %1049)
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  %1053 = xor i8 %1052, 1
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1053, i8* %1054, align 1
  %1055 = xor i64 1, %1040
  %1056 = trunc i64 %1055 to i32
  %1057 = xor i32 %1056, %1044
  %1058 = lshr i32 %1057, 4
  %1059 = trunc i32 %1058 to i8
  %1060 = and i8 %1059, 1
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1060, i8* %1061, align 1
  %1062 = icmp eq i32 %1044, 0
  %1063 = zext i1 %1062 to i8
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1063, i8* %1064, align 1
  %1065 = lshr i32 %1044, 31
  %1066 = trunc i32 %1065 to i8
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1066, i8* %1067, align 1
  %1068 = lshr i32 %1043, 31
  %1069 = xor i32 %1065, %1068
  %1070 = add i32 %1069, %1068
  %1071 = icmp eq i32 %1070, 2
  %1072 = zext i1 %1071 to i8
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1072, i8* %1073, align 1
  store %struct.Memory* %loadMem_414398, %struct.Memory** %MEMORY
  %loadMem_41439b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 33
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %1076 to i64*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 17
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %R8D.i874 = bitcast %union.anon* %1079 to i32*
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 15
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %RBP.i875 = bitcast %union.anon* %1082 to i64*
  %1083 = bitcast i32* %R8D.i874 to i64*
  %1084 = load i64, i64* %RBP.i875
  %1085 = sub i64 %1084, 8
  %1086 = load i64, i64* %PC.i873
  %1087 = add i64 %1086, 4
  store i64 %1087, i64* %PC.i873
  %1088 = inttoptr i64 %1085 to i32*
  %1089 = load i32, i32* %1088
  %1090 = zext i32 %1089 to i64
  store i64 %1090, i64* %1083, align 8
  store %struct.Memory* %loadMem_41439b, %struct.Memory** %MEMORY
  %loadMem_41439f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 33
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %1093 to i64*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 1
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %EAX.i871 = bitcast %union.anon* %1096 to i32*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 15
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %RBP.i872 = bitcast %union.anon* %1099 to i64*
  %1100 = load i64, i64* %RBP.i872
  %1101 = sub i64 %1100, 68
  %1102 = load i32, i32* %EAX.i871
  %1103 = zext i32 %1102 to i64
  %1104 = load i64, i64* %PC.i870
  %1105 = add i64 %1104, 3
  store i64 %1105, i64* %PC.i870
  %1106 = inttoptr i64 %1101 to i32*
  store i32 %1102, i32* %1106
  store %struct.Memory* %loadMem_41439f, %struct.Memory** %MEMORY
  %loadMem_4143a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 33
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %1109 to i64*
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 17
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %R8D.i868 = bitcast %union.anon* %1112 to i32*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 1
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %RAX.i869 = bitcast %union.anon* %1115 to i64*
  %1116 = load i32, i32* %R8D.i868
  %1117 = zext i32 %1116 to i64
  %1118 = load i64, i64* %PC.i867
  %1119 = add i64 %1118, 3
  store i64 %1119, i64* %PC.i867
  %1120 = and i64 %1117, 4294967295
  store i64 %1120, i64* %RAX.i869, align 8
  store %struct.Memory* %loadMem_4143a2, %struct.Memory** %MEMORY
  %loadMem_4143a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 33
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %1123 to i64*
  %1124 = load i64, i64* %PC.i866
  %1125 = add i64 %1124, 1
  store i64 %1125, i64* %PC.i866
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1128 = bitcast %union.anon* %1127 to i32*
  %1129 = load i32, i32* %1128, align 8
  %1130 = sext i32 %1129 to i64
  %1131 = lshr i64 %1130, 32
  store i64 %1131, i64* %1126, align 8
  store %struct.Memory* %loadMem_4143a5, %struct.Memory** %MEMORY
  %loadMem_4143a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 33
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %1134 to i64*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 5
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %ECX.i862 = bitcast %union.anon* %1137 to i32*
  %1138 = load i32, i32* %ECX.i862
  %1139 = zext i32 %1138 to i64
  %1140 = load i64, i64* %PC.i861
  %1141 = add i64 %1140, 2
  store i64 %1141, i64* %PC.i861
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1143 = bitcast %union.anon* %1142 to i32*
  %1144 = load i32, i32* %1143, align 8
  %1145 = zext i32 %1144 to i64
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1147 = bitcast %union.anon* %1146 to i32*
  %1148 = load i32, i32* %1147, align 8
  %1149 = zext i32 %1148 to i64
  %1150 = shl i64 %1139, 32
  %1151 = ashr exact i64 %1150, 32
  %1152 = shl i64 %1149, 32
  %1153 = or i64 %1152, %1145
  %1154 = sdiv i64 %1153, %1151
  %1155 = shl i64 %1154, 32
  %1156 = ashr exact i64 %1155, 32
  %1157 = icmp eq i64 %1154, %1156
  br i1 %1157, label %1162, label %1158

; <label>:1158:                                   ; preds = %routine_idivl__ecx.exit880
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1160 = load i64, i64* %1159, align 8
  %1161 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1160, %struct.Memory* %loadMem_4143a6)
  br label %routine_idivl__ecx.exit863

; <label>:1162:                                   ; preds = %routine_idivl__ecx.exit880
  %1163 = srem i64 %1153, %1151
  %1164 = getelementptr inbounds %union.anon, %union.anon* %1142, i64 0, i32 0
  %1165 = and i64 %1154, 4294967295
  store i64 %1165, i64* %1164, align 8
  %1166 = getelementptr inbounds %union.anon, %union.anon* %1146, i64 0, i32 0
  %1167 = and i64 %1163, 4294967295
  store i64 %1167, i64* %1166, align 8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1168, align 1
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1169, align 1
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1170, align 1
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1171, align 1
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1172, align 1
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1173, align 1
  br label %routine_idivl__ecx.exit863

routine_idivl__ecx.exit863:                       ; preds = %1158, %1162
  %1174 = phi %struct.Memory* [ %1161, %1158 ], [ %loadMem_4143a6, %1162 ]
  store %struct.Memory* %1174, %struct.Memory** %MEMORY
  %loadMem_4143a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 33
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %1177 to i64*
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 7
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %RDX.i860 = bitcast %union.anon* %1180 to i64*
  %1181 = load i64, i64* %RDX.i860
  %1182 = load i64, i64* %PC.i859
  %1183 = add i64 %1182, 3
  store i64 %1183, i64* %PC.i859
  %1184 = trunc i64 %1181 to i32
  %1185 = sub i32 %1184, 1
  %1186 = zext i32 %1185 to i64
  store i64 %1186, i64* %RDX.i860, align 8
  %1187 = icmp ult i32 %1184, 1
  %1188 = zext i1 %1187 to i8
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1188, i8* %1189, align 1
  %1190 = and i32 %1185, 255
  %1191 = call i32 @llvm.ctpop.i32(i32 %1190)
  %1192 = trunc i32 %1191 to i8
  %1193 = and i8 %1192, 1
  %1194 = xor i8 %1193, 1
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1194, i8* %1195, align 1
  %1196 = xor i64 1, %1181
  %1197 = trunc i64 %1196 to i32
  %1198 = xor i32 %1197, %1185
  %1199 = lshr i32 %1198, 4
  %1200 = trunc i32 %1199 to i8
  %1201 = and i8 %1200, 1
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1201, i8* %1202, align 1
  %1203 = icmp eq i32 %1185, 0
  %1204 = zext i1 %1203 to i8
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1204, i8* %1205, align 1
  %1206 = lshr i32 %1185, 31
  %1207 = trunc i32 %1206 to i8
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1207, i8* %1208, align 1
  %1209 = lshr i32 %1184, 31
  %1210 = xor i32 %1206, %1209
  %1211 = add i32 %1210, %1209
  %1212 = icmp eq i32 %1211, 2
  %1213 = zext i1 %1212 to i8
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1213, i8* %1214, align 1
  store %struct.Memory* %loadMem_4143a8, %struct.Memory** %MEMORY
  %loadMem_4143ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 33
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %1217 to i64*
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 15
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %RBP.i857 = bitcast %union.anon* %1220 to i64*
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 19
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %R9.i858 = bitcast %union.anon* %1223 to i64*
  %1224 = load i64, i64* %RBP.i857
  %1225 = sub i64 %1224, 64
  %1226 = load i64, i64* %PC.i856
  %1227 = add i64 %1226, 4
  store i64 %1227, i64* %PC.i856
  %1228 = inttoptr i64 %1225 to i64*
  %1229 = load i64, i64* %1228
  store i64 %1229, i64* %R9.i858, align 8
  store %struct.Memory* %loadMem_4143ab, %struct.Memory** %MEMORY
  %loadMem_4143af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 33
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %1232 to i64*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 7
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %EDX.i854 = bitcast %union.anon* %1235 to i32*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 15
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %RBP.i855 = bitcast %union.anon* %1238 to i64*
  %1239 = load i64, i64* %RBP.i855
  %1240 = sub i64 %1239, 72
  %1241 = load i32, i32* %EDX.i854
  %1242 = zext i32 %1241 to i64
  %1243 = load i64, i64* %PC.i853
  %1244 = add i64 %1243, 3
  store i64 %1244, i64* %PC.i853
  %1245 = inttoptr i64 %1240 to i32*
  store i32 %1241, i32* %1245
  store %struct.Memory* %loadMem_4143af, %struct.Memory** %MEMORY
  %loadMem_4143b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 7
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RDX.i851 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 19
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %R9.i852 = bitcast %union.anon* %1254 to i64*
  %1255 = load i64, i64* %R9.i852
  %1256 = load i64, i64* %PC.i850
  %1257 = add i64 %1256, 3
  store i64 %1257, i64* %PC.i850
  store i64 %1255, i64* %RDX.i851, align 8
  store %struct.Memory* %loadMem_4143b2, %struct.Memory** %MEMORY
  %loadMem_4143b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 33
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 5
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RCX.i848 = bitcast %union.anon* %1263 to i64*
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 15
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %RBP.i849 = bitcast %union.anon* %1266 to i64*
  %1267 = load i64, i64* %RBP.i849
  %1268 = sub i64 %1267, 68
  %1269 = load i64, i64* %PC.i847
  %1270 = add i64 %1269, 3
  store i64 %1270, i64* %PC.i847
  %1271 = inttoptr i64 %1268 to i32*
  %1272 = load i32, i32* %1271
  %1273 = zext i32 %1272 to i64
  store i64 %1273, i64* %RCX.i848, align 8
  store %struct.Memory* %loadMem_4143b5, %struct.Memory** %MEMORY
  %loadMem_4143b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 33
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %1276 to i64*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 17
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %R8D.i845 = bitcast %union.anon* %1279 to i32*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 15
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RBP.i846 = bitcast %union.anon* %1282 to i64*
  %1283 = bitcast i32* %R8D.i845 to i64*
  %1284 = load i64, i64* %RBP.i846
  %1285 = sub i64 %1284, 72
  %1286 = load i64, i64* %PC.i844
  %1287 = add i64 %1286, 4
  store i64 %1287, i64* %PC.i844
  %1288 = inttoptr i64 %1285 to i32*
  %1289 = load i32, i32* %1288
  %1290 = zext i32 %1289 to i64
  store i64 %1290, i64* %1283, align 8
  store %struct.Memory* %loadMem_4143b8, %struct.Memory** %MEMORY
  %loadMem1_4143bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 33
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %1293 to i64*
  %1294 = load i64, i64* %PC.i843
  %1295 = add i64 %1294, 253140
  %1296 = load i64, i64* %PC.i843
  %1297 = add i64 %1296, 5
  %1298 = load i64, i64* %PC.i843
  %1299 = add i64 %1298, 5
  store i64 %1299, i64* %PC.i843
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1301 = load i64, i64* %1300, align 8
  %1302 = add i64 %1301, -8
  %1303 = inttoptr i64 %1302 to i64*
  store i64 %1297, i64* %1303
  store i64 %1302, i64* %1300, align 8
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1295, i64* %1304, align 8
  store %struct.Memory* %loadMem1_4143bc, %struct.Memory** %MEMORY
  %loadMem2_4143bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4143bc = load i64, i64* %3
  %call2_4143bc = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_4143bc, %struct.Memory* %loadMem2_4143bc)
  store %struct.Memory* %call2_4143bc, %struct.Memory** %MEMORY
  br label %block_.L_4143c1

block_.L_4143c1:                                  ; preds = %routine_idivl__ecx.exit863, %block_414363
  %loadMem_4143c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 33
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %1307 to i64*
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 15
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %RBP.i842 = bitcast %union.anon* %1310 to i64*
  %1311 = load i64, i64* %RBP.i842
  %1312 = sub i64 %1311, 12
  %1313 = load i64, i64* %PC.i841
  %1314 = add i64 %1313, 4
  store i64 %1314, i64* %PC.i841
  %1315 = inttoptr i64 %1312 to i32*
  %1316 = load i32, i32* %1315
  %1317 = sub i32 %1316, 1
  %1318 = icmp ult i32 %1316, 1
  %1319 = zext i1 %1318 to i8
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1319, i8* %1320, align 1
  %1321 = and i32 %1317, 255
  %1322 = call i32 @llvm.ctpop.i32(i32 %1321)
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  %1325 = xor i8 %1324, 1
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1325, i8* %1326, align 1
  %1327 = xor i32 %1316, 1
  %1328 = xor i32 %1327, %1317
  %1329 = lshr i32 %1328, 4
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1331, i8* %1332, align 1
  %1333 = icmp eq i32 %1317, 0
  %1334 = zext i1 %1333 to i8
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1334, i8* %1335, align 1
  %1336 = lshr i32 %1317, 31
  %1337 = trunc i32 %1336 to i8
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1337, i8* %1338, align 1
  %1339 = lshr i32 %1316, 31
  %1340 = xor i32 %1336, %1339
  %1341 = add i32 %1340, %1339
  %1342 = icmp eq i32 %1341, 2
  %1343 = zext i1 %1342 to i8
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1343, i8* %1344, align 1
  store %struct.Memory* %loadMem_4143c1, %struct.Memory** %MEMORY
  %loadMem_4143c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 33
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %PC.i840 = bitcast %union.anon* %1347 to i64*
  %1348 = load i64, i64* %PC.i840
  %1349 = add i64 %1348, 16
  %1350 = load i64, i64* %PC.i840
  %1351 = add i64 %1350, 6
  %1352 = load i64, i64* %PC.i840
  %1353 = add i64 %1352, 6
  store i64 %1353, i64* %PC.i840
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1355 = load i8, i8* %1354, align 1
  store i8 %1355, i8* %BRANCH_TAKEN, align 1
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1357 = icmp ne i8 %1355, 0
  %1358 = select i1 %1357, i64 %1349, i64 %1351
  store i64 %1358, i64* %1356, align 8
  store %struct.Memory* %loadMem_4143c5, %struct.Memory** %MEMORY
  %loadBr_4143c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4143c5 = icmp eq i8 %loadBr_4143c5, 1
  br i1 %cmpBr_4143c5, label %block_.L_4143d5, label %block_4143cb

block_4143cb:                                     ; preds = %block_.L_4143c1
  %loadMem_4143cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 33
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %1361 to i64*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 15
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %RBP.i839 = bitcast %union.anon* %1364 to i64*
  %1365 = load i64, i64* %RBP.i839
  %1366 = sub i64 %1365, 12
  %1367 = load i64, i64* %PC.i838
  %1368 = add i64 %1367, 4
  store i64 %1368, i64* %PC.i838
  %1369 = inttoptr i64 %1366 to i32*
  %1370 = load i32, i32* %1369
  %1371 = sub i32 %1370, 2
  %1372 = icmp ult i32 %1370, 2
  %1373 = zext i1 %1372 to i8
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1373, i8* %1374, align 1
  %1375 = and i32 %1371, 255
  %1376 = call i32 @llvm.ctpop.i32(i32 %1375)
  %1377 = trunc i32 %1376 to i8
  %1378 = and i8 %1377, 1
  %1379 = xor i8 %1378, 1
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1379, i8* %1380, align 1
  %1381 = xor i32 %1370, 2
  %1382 = xor i32 %1381, %1371
  %1383 = lshr i32 %1382, 4
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1385, i8* %1386, align 1
  %1387 = icmp eq i32 %1371, 0
  %1388 = zext i1 %1387 to i8
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1388, i8* %1389, align 1
  %1390 = lshr i32 %1371, 31
  %1391 = trunc i32 %1390 to i8
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1391, i8* %1392, align 1
  %1393 = lshr i32 %1370, 31
  %1394 = xor i32 %1390, %1393
  %1395 = add i32 %1394, %1393
  %1396 = icmp eq i32 %1395, 2
  %1397 = zext i1 %1396 to i8
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1397, i8* %1398, align 1
  store %struct.Memory* %loadMem_4143cb, %struct.Memory** %MEMORY
  %loadMem_4143cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 33
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %1401 to i64*
  %1402 = load i64, i64* %PC.i837
  %1403 = add i64 %1402, 11
  %1404 = load i64, i64* %PC.i837
  %1405 = add i64 %1404, 6
  %1406 = load i64, i64* %PC.i837
  %1407 = add i64 %1406, 6
  store i64 %1407, i64* %PC.i837
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1409 = load i8, i8* %1408, align 1
  %1410 = icmp eq i8 %1409, 0
  %1411 = zext i1 %1410 to i8
  store i8 %1411, i8* %BRANCH_TAKEN, align 1
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1413 = select i1 %1410, i64 %1403, i64 %1405
  store i64 %1413, i64* %1412, align 8
  store %struct.Memory* %loadMem_4143cf, %struct.Memory** %MEMORY
  %loadBr_4143cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4143cf = icmp eq i8 %loadBr_4143cf, 1
  br i1 %cmpBr_4143cf, label %block_.L_4143da, label %block_.L_4143d5

block_.L_4143d5:                                  ; preds = %block_4143cb, %block_.L_4143c1
  %loadMem_4143d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 33
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %1416 to i64*
  %1417 = load i64, i64* %PC.i836
  %1418 = add i64 %1417, 94
  %1419 = load i64, i64* %PC.i836
  %1420 = add i64 %1419, 5
  store i64 %1420, i64* %PC.i836
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1418, i64* %1421, align 8
  store %struct.Memory* %loadMem_4143d5, %struct.Memory** %MEMORY
  br label %block_.L_414433

block_.L_4143da:                                  ; preds = %block_4143cb
  %loadMem_4143da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 33
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %PC.i834 = bitcast %union.anon* %1424 to i64*
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 11
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %RDI.i835 = bitcast %union.anon* %1427 to i64*
  %1428 = load i64, i64* %PC.i834
  %1429 = add i64 %1428, 10
  store i64 %1429, i64* %PC.i834
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i835, align 8
  store %struct.Memory* %loadMem_4143da, %struct.Memory** %MEMORY
  %loadMem_4143e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 33
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %1432 to i64*
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 9
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %RSI.i833 = bitcast %union.anon* %1435 to i64*
  %1436 = load i64, i64* %PC.i832
  %1437 = add i64 %1436, 5
  store i64 %1437, i64* %PC.i832
  store i64 2296, i64* %RSI.i833, align 8
  store %struct.Memory* %loadMem_4143e4, %struct.Memory** %MEMORY
  %loadMem_4143e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 33
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 7
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %RDX.i831 = bitcast %union.anon* %1443 to i64*
  %1444 = load i64, i64* %PC.i830
  %1445 = add i64 %1444, 10
  store i64 %1445, i64* %PC.i830
  store i64 ptrtoint (%G__0x57a4f4_type* @G__0x57a4f4 to i64), i64* %RDX.i831, align 8
  store %struct.Memory* %loadMem_4143e9, %struct.Memory** %MEMORY
  %loadMem_4143f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 33
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %1448 to i64*
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 1
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %RAX.i829 = bitcast %union.anon* %1451 to i64*
  %1452 = load i64, i64* %PC.i828
  %1453 = add i64 %1452, 5
  store i64 %1453, i64* %PC.i828
  store i64 20, i64* %RAX.i829, align 8
  store %struct.Memory* %loadMem_4143f3, %struct.Memory** %MEMORY
  %loadMem_4143f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 33
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %1456 to i64*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 5
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %RCX.i826 = bitcast %union.anon* %1459 to i64*
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 15
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %RBP.i827 = bitcast %union.anon* %1462 to i64*
  %1463 = load i64, i64* %RBP.i827
  %1464 = sub i64 %1463, 8
  %1465 = load i64, i64* %PC.i825
  %1466 = add i64 %1465, 3
  store i64 %1466, i64* %PC.i825
  %1467 = inttoptr i64 %1464 to i32*
  %1468 = load i32, i32* %1467
  %1469 = zext i32 %1468 to i64
  store i64 %1469, i64* %RCX.i826, align 8
  store %struct.Memory* %loadMem_4143f8, %struct.Memory** %MEMORY
  %loadMem_4143fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 33
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %1472 to i64*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 1
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %EAX.i823 = bitcast %union.anon* %1475 to i32*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 15
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RBP.i824 = bitcast %union.anon* %1478 to i64*
  %1479 = load i64, i64* %RBP.i824
  %1480 = sub i64 %1479, 76
  %1481 = load i32, i32* %EAX.i823
  %1482 = zext i32 %1481 to i64
  %1483 = load i64, i64* %PC.i822
  %1484 = add i64 %1483, 3
  store i64 %1484, i64* %PC.i822
  %1485 = inttoptr i64 %1480 to i32*
  store i32 %1481, i32* %1485
  store %struct.Memory* %loadMem_4143fb, %struct.Memory** %MEMORY
  %loadMem_4143fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 33
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %1488 to i64*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 5
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %ECX.i820 = bitcast %union.anon* %1491 to i32*
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 1
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %RAX.i821 = bitcast %union.anon* %1494 to i64*
  %1495 = load i32, i32* %ECX.i820
  %1496 = zext i32 %1495 to i64
  %1497 = load i64, i64* %PC.i819
  %1498 = add i64 %1497, 2
  store i64 %1498, i64* %PC.i819
  %1499 = and i64 %1496, 4294967295
  store i64 %1499, i64* %RAX.i821, align 8
  store %struct.Memory* %loadMem_4143fe, %struct.Memory** %MEMORY
  %loadMem_414400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 33
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %1502 to i64*
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 7
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %RDX.i817 = bitcast %union.anon* %1505 to i64*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 15
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %1508 to i64*
  %1509 = load i64, i64* %RBP.i818
  %1510 = sub i64 %1509, 88
  %1511 = load i64, i64* %RDX.i817
  %1512 = load i64, i64* %PC.i816
  %1513 = add i64 %1512, 4
  store i64 %1513, i64* %PC.i816
  %1514 = inttoptr i64 %1510 to i64*
  store i64 %1511, i64* %1514
  store %struct.Memory* %loadMem_414400, %struct.Memory** %MEMORY
  %loadMem_414404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 33
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %1517 to i64*
  %1518 = load i64, i64* %PC.i815
  %1519 = add i64 %1518, 1
  store i64 %1519, i64* %PC.i815
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1522 = bitcast %union.anon* %1521 to i32*
  %1523 = load i32, i32* %1522, align 8
  %1524 = sext i32 %1523 to i64
  %1525 = lshr i64 %1524, 32
  store i64 %1525, i64* %1520, align 8
  store %struct.Memory* %loadMem_414404, %struct.Memory** %MEMORY
  %loadMem_414405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 33
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 5
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RCX.i813 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 15
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RBP.i814 = bitcast %union.anon* %1534 to i64*
  %1535 = load i64, i64* %RBP.i814
  %1536 = sub i64 %1535, 76
  %1537 = load i64, i64* %PC.i812
  %1538 = add i64 %1537, 3
  store i64 %1538, i64* %PC.i812
  %1539 = inttoptr i64 %1536 to i32*
  %1540 = load i32, i32* %1539
  %1541 = zext i32 %1540 to i64
  store i64 %1541, i64* %RCX.i813, align 8
  store %struct.Memory* %loadMem_414405, %struct.Memory** %MEMORY
  %loadMem_414408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 5
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %ECX.i808 = bitcast %union.anon* %1547 to i32*
  %1548 = load i32, i32* %ECX.i808
  %1549 = zext i32 %1548 to i64
  %1550 = load i64, i64* %PC.i807
  %1551 = add i64 %1550, 2
  store i64 %1551, i64* %PC.i807
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1553 = bitcast %union.anon* %1552 to i32*
  %1554 = load i32, i32* %1553, align 8
  %1555 = zext i32 %1554 to i64
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1557 = bitcast %union.anon* %1556 to i32*
  %1558 = load i32, i32* %1557, align 8
  %1559 = zext i32 %1558 to i64
  %1560 = shl i64 %1549, 32
  %1561 = ashr exact i64 %1560, 32
  %1562 = shl i64 %1559, 32
  %1563 = or i64 %1562, %1555
  %1564 = sdiv i64 %1563, %1561
  %1565 = shl i64 %1564, 32
  %1566 = ashr exact i64 %1565, 32
  %1567 = icmp eq i64 %1564, %1566
  br i1 %1567, label %1572, label %1568

; <label>:1568:                                   ; preds = %block_.L_4143da
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1570 = load i64, i64* %1569, align 8
  %1571 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1570, %struct.Memory* %loadMem_414408)
  br label %routine_idivl__ecx.exit809

; <label>:1572:                                   ; preds = %block_.L_4143da
  %1573 = srem i64 %1563, %1561
  %1574 = getelementptr inbounds %union.anon, %union.anon* %1552, i64 0, i32 0
  %1575 = and i64 %1564, 4294967295
  store i64 %1575, i64* %1574, align 8
  %1576 = getelementptr inbounds %union.anon, %union.anon* %1556, i64 0, i32 0
  %1577 = and i64 %1573, 4294967295
  store i64 %1577, i64* %1576, align 8
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1578, align 1
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1579, align 1
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1580, align 1
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1581, align 1
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1582, align 1
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1583, align 1
  br label %routine_idivl__ecx.exit809

routine_idivl__ecx.exit809:                       ; preds = %1568, %1572
  %1584 = phi %struct.Memory* [ %1571, %1568 ], [ %loadMem_414408, %1572 ]
  store %struct.Memory* %1584, %struct.Memory** %MEMORY
  %loadMem_41440a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 33
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %1587 to i64*
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 1
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %RAX.i806 = bitcast %union.anon* %1590 to i64*
  %1591 = load i64, i64* %RAX.i806
  %1592 = load i64, i64* %PC.i805
  %1593 = add i64 %1592, 3
  store i64 %1593, i64* %PC.i805
  %1594 = trunc i64 %1591 to i32
  %1595 = sub i32 %1594, 1
  %1596 = zext i32 %1595 to i64
  store i64 %1596, i64* %RAX.i806, align 8
  %1597 = icmp ult i32 %1594, 1
  %1598 = zext i1 %1597 to i8
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1598, i8* %1599, align 1
  %1600 = and i32 %1595, 255
  %1601 = call i32 @llvm.ctpop.i32(i32 %1600)
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  %1604 = xor i8 %1603, 1
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1604, i8* %1605, align 1
  %1606 = xor i64 1, %1591
  %1607 = trunc i64 %1606 to i32
  %1608 = xor i32 %1607, %1595
  %1609 = lshr i32 %1608, 4
  %1610 = trunc i32 %1609 to i8
  %1611 = and i8 %1610, 1
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1611, i8* %1612, align 1
  %1613 = icmp eq i32 %1595, 0
  %1614 = zext i1 %1613 to i8
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1614, i8* %1615, align 1
  %1616 = lshr i32 %1595, 31
  %1617 = trunc i32 %1616 to i8
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1617, i8* %1618, align 1
  %1619 = lshr i32 %1594, 31
  %1620 = xor i32 %1616, %1619
  %1621 = add i32 %1620, %1619
  %1622 = icmp eq i32 %1621, 2
  %1623 = zext i1 %1622 to i8
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1623, i8* %1624, align 1
  store %struct.Memory* %loadMem_41440a, %struct.Memory** %MEMORY
  %loadMem_41440d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 33
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 17
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %R8D.i803 = bitcast %union.anon* %1630 to i32*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 15
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %RBP.i804 = bitcast %union.anon* %1633 to i64*
  %1634 = bitcast i32* %R8D.i803 to i64*
  %1635 = load i64, i64* %RBP.i804
  %1636 = sub i64 %1635, 8
  %1637 = load i64, i64* %PC.i802
  %1638 = add i64 %1637, 4
  store i64 %1638, i64* %PC.i802
  %1639 = inttoptr i64 %1636 to i32*
  %1640 = load i32, i32* %1639
  %1641 = zext i32 %1640 to i64
  store i64 %1641, i64* %1634, align 8
  store %struct.Memory* %loadMem_41440d, %struct.Memory** %MEMORY
  %loadMem_414411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 33
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %1644 to i64*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 1
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %EAX.i800 = bitcast %union.anon* %1647 to i32*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 15
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %1650 to i64*
  %1651 = load i64, i64* %RBP.i801
  %1652 = sub i64 %1651, 92
  %1653 = load i32, i32* %EAX.i800
  %1654 = zext i32 %1653 to i64
  %1655 = load i64, i64* %PC.i799
  %1656 = add i64 %1655, 3
  store i64 %1656, i64* %PC.i799
  %1657 = inttoptr i64 %1652 to i32*
  store i32 %1653, i32* %1657
  store %struct.Memory* %loadMem_414411, %struct.Memory** %MEMORY
  %loadMem_414414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 33
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %1660 to i64*
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 17
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %R8D.i797 = bitcast %union.anon* %1663 to i32*
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 1
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %RAX.i798 = bitcast %union.anon* %1666 to i64*
  %1667 = load i32, i32* %R8D.i797
  %1668 = zext i32 %1667 to i64
  %1669 = load i64, i64* %PC.i796
  %1670 = add i64 %1669, 3
  store i64 %1670, i64* %PC.i796
  %1671 = and i64 %1668, 4294967295
  store i64 %1671, i64* %RAX.i798, align 8
  store %struct.Memory* %loadMem_414414, %struct.Memory** %MEMORY
  %loadMem_414417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 33
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %1674 to i64*
  %1675 = load i64, i64* %PC.i795
  %1676 = add i64 %1675, 1
  store i64 %1676, i64* %PC.i795
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1679 = bitcast %union.anon* %1678 to i32*
  %1680 = load i32, i32* %1679, align 8
  %1681 = sext i32 %1680 to i64
  %1682 = lshr i64 %1681, 32
  store i64 %1682, i64* %1677, align 8
  store %struct.Memory* %loadMem_414417, %struct.Memory** %MEMORY
  %loadMem_414418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 33
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %1685 to i64*
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 5
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %ECX.i791 = bitcast %union.anon* %1688 to i32*
  %1689 = load i32, i32* %ECX.i791
  %1690 = zext i32 %1689 to i64
  %1691 = load i64, i64* %PC.i790
  %1692 = add i64 %1691, 2
  store i64 %1692, i64* %PC.i790
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1694 = bitcast %union.anon* %1693 to i32*
  %1695 = load i32, i32* %1694, align 8
  %1696 = zext i32 %1695 to i64
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1698 = bitcast %union.anon* %1697 to i32*
  %1699 = load i32, i32* %1698, align 8
  %1700 = zext i32 %1699 to i64
  %1701 = shl i64 %1690, 32
  %1702 = ashr exact i64 %1701, 32
  %1703 = shl i64 %1700, 32
  %1704 = or i64 %1703, %1696
  %1705 = sdiv i64 %1704, %1702
  %1706 = shl i64 %1705, 32
  %1707 = ashr exact i64 %1706, 32
  %1708 = icmp eq i64 %1705, %1707
  br i1 %1708, label %1713, label %1709

; <label>:1709:                                   ; preds = %routine_idivl__ecx.exit809
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1711 = load i64, i64* %1710, align 8
  %1712 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1711, %struct.Memory* %loadMem_414418)
  br label %routine_idivl__ecx.exit

; <label>:1713:                                   ; preds = %routine_idivl__ecx.exit809
  %1714 = srem i64 %1704, %1702
  %1715 = getelementptr inbounds %union.anon, %union.anon* %1693, i64 0, i32 0
  %1716 = and i64 %1705, 4294967295
  store i64 %1716, i64* %1715, align 8
  %1717 = getelementptr inbounds %union.anon, %union.anon* %1697, i64 0, i32 0
  %1718 = and i64 %1714, 4294967295
  store i64 %1718, i64* %1717, align 8
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1719, align 1
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1720, align 1
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1721, align 1
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1722, align 1
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1723, align 1
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1724, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1709, %1713
  %1725 = phi %struct.Memory* [ %1712, %1709 ], [ %loadMem_414418, %1713 ]
  store %struct.Memory* %1725, %struct.Memory** %MEMORY
  %loadMem_41441a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 33
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %1728 to i64*
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 7
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %RDX.i789 = bitcast %union.anon* %1731 to i64*
  %1732 = load i64, i64* %RDX.i789
  %1733 = load i64, i64* %PC.i788
  %1734 = add i64 %1733, 3
  store i64 %1734, i64* %PC.i788
  %1735 = trunc i64 %1732 to i32
  %1736 = sub i32 %1735, 1
  %1737 = zext i32 %1736 to i64
  store i64 %1737, i64* %RDX.i789, align 8
  %1738 = icmp ult i32 %1735, 1
  %1739 = zext i1 %1738 to i8
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1739, i8* %1740, align 1
  %1741 = and i32 %1736, 255
  %1742 = call i32 @llvm.ctpop.i32(i32 %1741)
  %1743 = trunc i32 %1742 to i8
  %1744 = and i8 %1743, 1
  %1745 = xor i8 %1744, 1
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1745, i8* %1746, align 1
  %1747 = xor i64 1, %1732
  %1748 = trunc i64 %1747 to i32
  %1749 = xor i32 %1748, %1736
  %1750 = lshr i32 %1749, 4
  %1751 = trunc i32 %1750 to i8
  %1752 = and i8 %1751, 1
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1752, i8* %1753, align 1
  %1754 = icmp eq i32 %1736, 0
  %1755 = zext i1 %1754 to i8
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1755, i8* %1756, align 1
  %1757 = lshr i32 %1736, 31
  %1758 = trunc i32 %1757 to i8
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1758, i8* %1759, align 1
  %1760 = lshr i32 %1735, 31
  %1761 = xor i32 %1757, %1760
  %1762 = add i32 %1761, %1760
  %1763 = icmp eq i32 %1762, 2
  %1764 = zext i1 %1763 to i8
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1764, i8* %1765, align 1
  store %struct.Memory* %loadMem_41441a, %struct.Memory** %MEMORY
  %loadMem_41441d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 33
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %1768 to i64*
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 15
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %RBP.i786 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 19
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %R9.i787 = bitcast %union.anon* %1774 to i64*
  %1775 = load i64, i64* %RBP.i786
  %1776 = sub i64 %1775, 88
  %1777 = load i64, i64* %PC.i785
  %1778 = add i64 %1777, 4
  store i64 %1778, i64* %PC.i785
  %1779 = inttoptr i64 %1776 to i64*
  %1780 = load i64, i64* %1779
  store i64 %1780, i64* %R9.i787, align 8
  store %struct.Memory* %loadMem_41441d, %struct.Memory** %MEMORY
  %loadMem_414421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 33
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %1783 to i64*
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 7
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %EDX.i783 = bitcast %union.anon* %1786 to i32*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 15
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RBP.i784 = bitcast %union.anon* %1789 to i64*
  %1790 = load i64, i64* %RBP.i784
  %1791 = sub i64 %1790, 96
  %1792 = load i32, i32* %EDX.i783
  %1793 = zext i32 %1792 to i64
  %1794 = load i64, i64* %PC.i782
  %1795 = add i64 %1794, 3
  store i64 %1795, i64* %PC.i782
  %1796 = inttoptr i64 %1791 to i32*
  store i32 %1792, i32* %1796
  store %struct.Memory* %loadMem_414421, %struct.Memory** %MEMORY
  %loadMem_414424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %1799 to i64*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 7
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %RDX.i781 = bitcast %union.anon* %1802 to i64*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 19
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %R9.i = bitcast %union.anon* %1805 to i64*
  %1806 = load i64, i64* %R9.i
  %1807 = load i64, i64* %PC.i780
  %1808 = add i64 %1807, 3
  store i64 %1808, i64* %PC.i780
  store i64 %1806, i64* %RDX.i781, align 8
  store %struct.Memory* %loadMem_414424, %struct.Memory** %MEMORY
  %loadMem_414427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 33
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 5
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %RCX.i778 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 15
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RBP.i779 = bitcast %union.anon* %1817 to i64*
  %1818 = load i64, i64* %RBP.i779
  %1819 = sub i64 %1818, 92
  %1820 = load i64, i64* %PC.i777
  %1821 = add i64 %1820, 3
  store i64 %1821, i64* %PC.i777
  %1822 = inttoptr i64 %1819 to i32*
  %1823 = load i32, i32* %1822
  %1824 = zext i32 %1823 to i64
  store i64 %1824, i64* %RCX.i778, align 8
  store %struct.Memory* %loadMem_414427, %struct.Memory** %MEMORY
  %loadMem_41442a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 33
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1827 to i64*
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 17
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %1830 to i32*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 15
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %RBP.i776 = bitcast %union.anon* %1833 to i64*
  %1834 = bitcast i32* %R8D.i to i64*
  %1835 = load i64, i64* %RBP.i776
  %1836 = sub i64 %1835, 96
  %1837 = load i64, i64* %PC.i775
  %1838 = add i64 %1837, 4
  store i64 %1838, i64* %PC.i775
  %1839 = inttoptr i64 %1836 to i32*
  %1840 = load i32, i32* %1839
  %1841 = zext i32 %1840 to i64
  store i64 %1841, i64* %1834, align 8
  store %struct.Memory* %loadMem_41442a, %struct.Memory** %MEMORY
  %loadMem1_41442e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 33
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %1844 to i64*
  %1845 = load i64, i64* %PC.i774
  %1846 = add i64 %1845, 253026
  %1847 = load i64, i64* %PC.i774
  %1848 = add i64 %1847, 5
  %1849 = load i64, i64* %PC.i774
  %1850 = add i64 %1849, 5
  store i64 %1850, i64* %PC.i774
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1852 = load i64, i64* %1851, align 8
  %1853 = add i64 %1852, -8
  %1854 = inttoptr i64 %1853 to i64*
  store i64 %1848, i64* %1854
  store i64 %1853, i64* %1851, align 8
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1846, i64* %1855, align 8
  store %struct.Memory* %loadMem1_41442e, %struct.Memory** %MEMORY
  %loadMem2_41442e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41442e = load i64, i64* %3
  %call2_41442e = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_41442e, %struct.Memory* %loadMem2_41442e)
  store %struct.Memory* %call2_41442e, %struct.Memory** %MEMORY
  br label %block_.L_414433

block_.L_414433:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_4143d5
  %loadMem_414433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 33
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %1858 to i64*
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 1
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %RAX.i773 = bitcast %union.anon* %1861 to i64*
  %1862 = load i64, i64* %PC.i772
  %1863 = add i64 %1862, 7
  store i64 %1863, i64* %PC.i772
  %1864 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %1865 = zext i32 %1864 to i64
  store i64 %1865, i64* %RAX.i773, align 8
  store %struct.Memory* %loadMem_414433, %struct.Memory** %MEMORY
  %loadMem_41443a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 33
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %1868 to i64*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 1
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %RAX.i771 = bitcast %union.anon* %1871 to i64*
  %1872 = load i64, i64* %RAX.i771
  %1873 = load i64, i64* %PC.i770
  %1874 = add i64 %1873, 3
  store i64 %1874, i64* %PC.i770
  %1875 = trunc i64 %1872 to i32
  %1876 = add i32 1, %1875
  %1877 = zext i32 %1876 to i64
  store i64 %1877, i64* %RAX.i771, align 8
  %1878 = icmp ult i32 %1876, %1875
  %1879 = icmp ult i32 %1876, 1
  %1880 = or i1 %1878, %1879
  %1881 = zext i1 %1880 to i8
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1881, i8* %1882, align 1
  %1883 = and i32 %1876, 255
  %1884 = call i32 @llvm.ctpop.i32(i32 %1883)
  %1885 = trunc i32 %1884 to i8
  %1886 = and i8 %1885, 1
  %1887 = xor i8 %1886, 1
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1887, i8* %1888, align 1
  %1889 = xor i64 1, %1872
  %1890 = trunc i64 %1889 to i32
  %1891 = xor i32 %1890, %1876
  %1892 = lshr i32 %1891, 4
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1894, i8* %1895, align 1
  %1896 = icmp eq i32 %1876, 0
  %1897 = zext i1 %1896 to i8
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1897, i8* %1898, align 1
  %1899 = lshr i32 %1876, 31
  %1900 = trunc i32 %1899 to i8
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1900, i8* %1901, align 1
  %1902 = lshr i32 %1875, 31
  %1903 = xor i32 %1899, %1902
  %1904 = add i32 %1903, %1899
  %1905 = icmp eq i32 %1904, 2
  %1906 = zext i1 %1905 to i8
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1906, i8* %1907, align 1
  store %struct.Memory* %loadMem_41443a, %struct.Memory** %MEMORY
  %loadMem_41443d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 1
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %EAX.i769 = bitcast %union.anon* %1913 to i32*
  %1914 = load i32, i32* %EAX.i769
  %1915 = zext i32 %1914 to i64
  %1916 = load i64, i64* %PC.i768
  %1917 = add i64 %1916, 7
  store i64 %1917, i64* %PC.i768
  store i32 %1914, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  store %struct.Memory* %loadMem_41443d, %struct.Memory** %MEMORY
  %loadMem_414444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 33
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 1
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %RAX.i766 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 15
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RBP.i767 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %RBP.i767
  %1928 = sub i64 %1927, 8
  %1929 = load i64, i64* %PC.i765
  %1930 = add i64 %1929, 3
  store i64 %1930, i64* %PC.i765
  %1931 = inttoptr i64 %1928 to i32*
  %1932 = load i32, i32* %1931
  %1933 = zext i32 %1932 to i64
  store i64 %1933, i64* %RAX.i766, align 8
  store %struct.Memory* %loadMem_414444, %struct.Memory** %MEMORY
  %loadMem_414447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 1
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RAX.i764 = bitcast %union.anon* %1939 to i64*
  %1940 = load i64, i64* %RAX.i764
  %1941 = load i64, i64* %PC.i763
  %1942 = add i64 %1941, 3
  store i64 %1942, i64* %PC.i763
  %1943 = trunc i64 %1940 to i32
  %1944 = add i32 20, %1943
  %1945 = zext i32 %1944 to i64
  store i64 %1945, i64* %RAX.i764, align 8
  %1946 = icmp ult i32 %1944, %1943
  %1947 = icmp ult i32 %1944, 20
  %1948 = or i1 %1946, %1947
  %1949 = zext i1 %1948 to i8
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1949, i8* %1950, align 1
  %1951 = and i32 %1944, 255
  %1952 = call i32 @llvm.ctpop.i32(i32 %1951)
  %1953 = trunc i32 %1952 to i8
  %1954 = and i8 %1953, 1
  %1955 = xor i8 %1954, 1
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1955, i8* %1956, align 1
  %1957 = xor i64 20, %1940
  %1958 = trunc i64 %1957 to i32
  %1959 = xor i32 %1958, %1944
  %1960 = lshr i32 %1959, 4
  %1961 = trunc i32 %1960 to i8
  %1962 = and i8 %1961, 1
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1962, i8* %1963, align 1
  %1964 = icmp eq i32 %1944, 0
  %1965 = zext i1 %1964 to i8
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1965, i8* %1966, align 1
  %1967 = lshr i32 %1944, 31
  %1968 = trunc i32 %1967 to i8
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1968, i8* %1969, align 1
  %1970 = lshr i32 %1943, 31
  %1971 = xor i32 %1967, %1970
  %1972 = add i32 %1971, %1967
  %1973 = icmp eq i32 %1972, 2
  %1974 = zext i1 %1973 to i8
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1974, i8* %1975, align 1
  store %struct.Memory* %loadMem_414447, %struct.Memory** %MEMORY
  %loadMem_41444a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 33
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 1
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %EAX.i761 = bitcast %union.anon* %1981 to i32*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 5
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %RCX.i762 = bitcast %union.anon* %1984 to i64*
  %1985 = load i32, i32* %EAX.i761
  %1986 = zext i32 %1985 to i64
  %1987 = load i64, i64* %PC.i760
  %1988 = add i64 %1987, 3
  store i64 %1988, i64* %PC.i760
  %1989 = shl i64 %1986, 32
  %1990 = ashr exact i64 %1989, 32
  store i64 %1990, i64* %RCX.i762, align 8
  store %struct.Memory* %loadMem_41444a, %struct.Memory** %MEMORY
  %loadMem_41444d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 1
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %RAX.i758 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 5
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %RCX.i759 = bitcast %union.anon* %1999 to i64*
  %2000 = load i64, i64* %RCX.i759
  %2001 = add i64 %2000, 12099168
  %2002 = load i64, i64* %PC.i757
  %2003 = add i64 %2002, 8
  store i64 %2003, i64* %PC.i757
  %2004 = inttoptr i64 %2001 to i8*
  %2005 = load i8, i8* %2004
  %2006 = zext i8 %2005 to i64
  store i64 %2006, i64* %RAX.i758, align 8
  store %struct.Memory* %loadMem_41444d, %struct.Memory** %MEMORY
  %loadMem_414455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 33
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %2009 to i64*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 1
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %EAX.i756 = bitcast %union.anon* %2012 to i32*
  %2013 = load i32, i32* %EAX.i756
  %2014 = zext i32 %2013 to i64
  %2015 = load i64, i64* %PC.i755
  %2016 = add i64 %2015, 3
  store i64 %2016, i64* %PC.i755
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2017, align 1
  %2018 = and i32 %2013, 255
  %2019 = call i32 @llvm.ctpop.i32(i32 %2018)
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  %2022 = xor i8 %2021, 1
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2022, i8* %2023, align 1
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2024, align 1
  %2025 = icmp eq i32 %2013, 0
  %2026 = zext i1 %2025 to i8
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2026, i8* %2027, align 1
  %2028 = lshr i32 %2013, 31
  %2029 = trunc i32 %2028 to i8
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2029, i8* %2030, align 1
  %2031 = lshr i32 %2013, 31
  %2032 = xor i32 %2028, %2031
  %2033 = add i32 %2032, %2031
  %2034 = icmp eq i32 %2033, 2
  %2035 = zext i1 %2034 to i8
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2035, i8* %2036, align 1
  store %struct.Memory* %loadMem_414455, %struct.Memory** %MEMORY
  %loadMem_414458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 33
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %2039 to i64*
  %2040 = load i64, i64* %PC.i754
  %2041 = add i64 %2040, 20
  %2042 = load i64, i64* %PC.i754
  %2043 = add i64 %2042, 6
  %2044 = load i64, i64* %PC.i754
  %2045 = add i64 %2044, 6
  store i64 %2045, i64* %PC.i754
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2047 = load i8, i8* %2046, align 1
  %2048 = icmp eq i8 %2047, 0
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %BRANCH_TAKEN, align 1
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2051 = select i1 %2048, i64 %2041, i64 %2043
  store i64 %2051, i64* %2050, align 8
  store %struct.Memory* %loadMem_414458, %struct.Memory** %MEMORY
  %loadBr_414458 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414458 = icmp eq i8 %loadBr_414458, 1
  br i1 %cmpBr_414458, label %block_.L_41446c, label %block_41445e

block_41445e:                                     ; preds = %block_.L_414433
  %loadMem_41445e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 33
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %2054 to i64*
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 1
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %RAX.i752 = bitcast %union.anon* %2057 to i64*
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 15
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %2060 to i64*
  %2061 = load i64, i64* %RBP.i753
  %2062 = sub i64 %2061, 20
  %2063 = load i64, i64* %PC.i751
  %2064 = add i64 %2063, 3
  store i64 %2064, i64* %PC.i751
  %2065 = inttoptr i64 %2062 to i32*
  %2066 = load i32, i32* %2065
  %2067 = zext i32 %2066 to i64
  store i64 %2067, i64* %RAX.i752, align 8
  store %struct.Memory* %loadMem_41445e, %struct.Memory** %MEMORY
  %loadMem_414461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 33
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %2070 to i64*
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 1
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %RAX.i750 = bitcast %union.anon* %2073 to i64*
  %2074 = load i64, i64* %RAX.i750
  %2075 = load i64, i64* %PC.i749
  %2076 = add i64 %2075, 3
  store i64 %2076, i64* %PC.i749
  %2077 = trunc i64 %2074 to i32
  %2078 = add i32 1, %2077
  %2079 = zext i32 %2078 to i64
  store i64 %2079, i64* %RAX.i750, align 8
  %2080 = icmp ult i32 %2078, %2077
  %2081 = icmp ult i32 %2078, 1
  %2082 = or i1 %2080, %2081
  %2083 = zext i1 %2082 to i8
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2083, i8* %2084, align 1
  %2085 = and i32 %2078, 255
  %2086 = call i32 @llvm.ctpop.i32(i32 %2085)
  %2087 = trunc i32 %2086 to i8
  %2088 = and i8 %2087, 1
  %2089 = xor i8 %2088, 1
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2089, i8* %2090, align 1
  %2091 = xor i64 1, %2074
  %2092 = trunc i64 %2091 to i32
  %2093 = xor i32 %2092, %2078
  %2094 = lshr i32 %2093, 4
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2096, i8* %2097, align 1
  %2098 = icmp eq i32 %2078, 0
  %2099 = zext i1 %2098 to i8
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2099, i8* %2100, align 1
  %2101 = lshr i32 %2078, 31
  %2102 = trunc i32 %2101 to i8
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2102, i8* %2103, align 1
  %2104 = lshr i32 %2077, 31
  %2105 = xor i32 %2101, %2104
  %2106 = add i32 %2105, %2101
  %2107 = icmp eq i32 %2106, 2
  %2108 = zext i1 %2107 to i8
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2108, i8* %2109, align 1
  store %struct.Memory* %loadMem_414461, %struct.Memory** %MEMORY
  %loadMem_414464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 33
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 1
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %EAX.i747 = bitcast %union.anon* %2115 to i32*
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 15
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %RBP.i748 = bitcast %union.anon* %2118 to i64*
  %2119 = load i64, i64* %RBP.i748
  %2120 = sub i64 %2119, 20
  %2121 = load i32, i32* %EAX.i747
  %2122 = zext i32 %2121 to i64
  %2123 = load i64, i64* %PC.i746
  %2124 = add i64 %2123, 3
  store i64 %2124, i64* %PC.i746
  %2125 = inttoptr i64 %2120 to i32*
  store i32 %2121, i32* %2125
  store %struct.Memory* %loadMem_414464, %struct.Memory** %MEMORY
  %loadMem_414467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 33
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %2128 to i64*
  %2129 = load i64, i64* %PC.i745
  %2130 = add i64 %2129, 349
  %2131 = load i64, i64* %PC.i745
  %2132 = add i64 %2131, 5
  store i64 %2132, i64* %PC.i745
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2130, i64* %2133, align 8
  store %struct.Memory* %loadMem_414467, %struct.Memory** %MEMORY
  br label %block_.L_4145c4

block_.L_41446c:                                  ; preds = %block_.L_414433
  %loadMem_41446c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2135 = getelementptr inbounds %struct.GPR, %struct.GPR* %2134, i32 0, i32 33
  %2136 = getelementptr inbounds %struct.Reg, %struct.Reg* %2135, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %2136 to i64*
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 1
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %RAX.i743 = bitcast %union.anon* %2139 to i64*
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 15
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %RBP.i744 = bitcast %union.anon* %2142 to i64*
  %2143 = load i64, i64* %RBP.i744
  %2144 = sub i64 %2143, 8
  %2145 = load i64, i64* %PC.i742
  %2146 = add i64 %2145, 3
  store i64 %2146, i64* %PC.i742
  %2147 = inttoptr i64 %2144 to i32*
  %2148 = load i32, i32* %2147
  %2149 = zext i32 %2148 to i64
  store i64 %2149, i64* %RAX.i743, align 8
  store %struct.Memory* %loadMem_41446c, %struct.Memory** %MEMORY
  %loadMem_41446f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 33
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %2152 to i64*
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 1
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %RAX.i741 = bitcast %union.anon* %2155 to i64*
  %2156 = load i64, i64* %RAX.i741
  %2157 = load i64, i64* %PC.i740
  %2158 = add i64 %2157, 3
  store i64 %2158, i64* %PC.i740
  %2159 = trunc i64 %2156 to i32
  %2160 = add i32 20, %2159
  %2161 = zext i32 %2160 to i64
  store i64 %2161, i64* %RAX.i741, align 8
  %2162 = icmp ult i32 %2160, %2159
  %2163 = icmp ult i32 %2160, 20
  %2164 = or i1 %2162, %2163
  %2165 = zext i1 %2164 to i8
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2165, i8* %2166, align 1
  %2167 = and i32 %2160, 255
  %2168 = call i32 @llvm.ctpop.i32(i32 %2167)
  %2169 = trunc i32 %2168 to i8
  %2170 = and i8 %2169, 1
  %2171 = xor i8 %2170, 1
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2171, i8* %2172, align 1
  %2173 = xor i64 20, %2156
  %2174 = trunc i64 %2173 to i32
  %2175 = xor i32 %2174, %2160
  %2176 = lshr i32 %2175, 4
  %2177 = trunc i32 %2176 to i8
  %2178 = and i8 %2177, 1
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2178, i8* %2179, align 1
  %2180 = icmp eq i32 %2160, 0
  %2181 = zext i1 %2180 to i8
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2181, i8* %2182, align 1
  %2183 = lshr i32 %2160, 31
  %2184 = trunc i32 %2183 to i8
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2184, i8* %2185, align 1
  %2186 = lshr i32 %2159, 31
  %2187 = xor i32 %2183, %2186
  %2188 = add i32 %2187, %2183
  %2189 = icmp eq i32 %2188, 2
  %2190 = zext i1 %2189 to i8
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2190, i8* %2191, align 1
  store %struct.Memory* %loadMem_41446f, %struct.Memory** %MEMORY
  %loadMem_414472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 33
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %2194 to i64*
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 1
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %EAX.i738 = bitcast %union.anon* %2197 to i32*
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 5
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %RCX.i739 = bitcast %union.anon* %2200 to i64*
  %2201 = load i32, i32* %EAX.i738
  %2202 = zext i32 %2201 to i64
  %2203 = load i64, i64* %PC.i737
  %2204 = add i64 %2203, 3
  store i64 %2204, i64* %PC.i737
  %2205 = shl i64 %2202, 32
  %2206 = ashr exact i64 %2205, 32
  store i64 %2206, i64* %RCX.i739, align 8
  store %struct.Memory* %loadMem_414472, %struct.Memory** %MEMORY
  %loadMem_414475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 33
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 1
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RAX.i735 = bitcast %union.anon* %2212 to i64*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 5
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RCX.i736 = bitcast %union.anon* %2215 to i64*
  %2216 = load i64, i64* %RCX.i736
  %2217 = add i64 %2216, 12099168
  %2218 = load i64, i64* %PC.i734
  %2219 = add i64 %2218, 8
  store i64 %2219, i64* %PC.i734
  %2220 = inttoptr i64 %2217 to i8*
  %2221 = load i8, i8* %2220
  %2222 = zext i8 %2221 to i64
  store i64 %2222, i64* %RAX.i735, align 8
  store %struct.Memory* %loadMem_414475, %struct.Memory** %MEMORY
  %loadMem_41447d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 33
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %2225 to i64*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 1
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %EAX.i732 = bitcast %union.anon* %2228 to i32*
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 15
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %RBP.i733 = bitcast %union.anon* %2231 to i64*
  %2232 = load i32, i32* %EAX.i732
  %2233 = zext i32 %2232 to i64
  %2234 = load i64, i64* %RBP.i733
  %2235 = sub i64 %2234, 12
  %2236 = load i64, i64* %PC.i731
  %2237 = add i64 %2236, 3
  store i64 %2237, i64* %PC.i731
  %2238 = inttoptr i64 %2235 to i32*
  %2239 = load i32, i32* %2238
  %2240 = sub i32 %2232, %2239
  %2241 = icmp ult i32 %2232, %2239
  %2242 = zext i1 %2241 to i8
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2242, i8* %2243, align 1
  %2244 = and i32 %2240, 255
  %2245 = call i32 @llvm.ctpop.i32(i32 %2244)
  %2246 = trunc i32 %2245 to i8
  %2247 = and i8 %2246, 1
  %2248 = xor i8 %2247, 1
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2248, i8* %2249, align 1
  %2250 = xor i32 %2239, %2232
  %2251 = xor i32 %2250, %2240
  %2252 = lshr i32 %2251, 4
  %2253 = trunc i32 %2252 to i8
  %2254 = and i8 %2253, 1
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2254, i8* %2255, align 1
  %2256 = icmp eq i32 %2240, 0
  %2257 = zext i1 %2256 to i8
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2257, i8* %2258, align 1
  %2259 = lshr i32 %2240, 31
  %2260 = trunc i32 %2259 to i8
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2260, i8* %2261, align 1
  %2262 = lshr i32 %2232, 31
  %2263 = lshr i32 %2239, 31
  %2264 = xor i32 %2263, %2262
  %2265 = xor i32 %2259, %2262
  %2266 = add i32 %2265, %2264
  %2267 = icmp eq i32 %2266, 2
  %2268 = zext i1 %2267 to i8
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2268, i8* %2269, align 1
  store %struct.Memory* %loadMem_41447d, %struct.Memory** %MEMORY
  %loadMem_414480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 33
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %2272 to i64*
  %2273 = load i64, i64* %PC.i730
  %2274 = add i64 %2273, 126
  %2275 = load i64, i64* %PC.i730
  %2276 = add i64 %2275, 6
  %2277 = load i64, i64* %PC.i730
  %2278 = add i64 %2277, 6
  store i64 %2278, i64* %PC.i730
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2280 = load i8, i8* %2279, align 1
  %2281 = icmp eq i8 %2280, 0
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %BRANCH_TAKEN, align 1
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2284 = select i1 %2281, i64 %2274, i64 %2276
  store i64 %2284, i64* %2283, align 8
  store %struct.Memory* %loadMem_414480, %struct.Memory** %MEMORY
  %loadBr_414480 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414480 = icmp eq i8 %loadBr_414480, 1
  br i1 %cmpBr_414480, label %block_.L_4144fe, label %block_414486

block_414486:                                     ; preds = %block_.L_41446c
  %loadMem_414486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 33
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %2287 to i64*
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 1
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %RAX.i729 = bitcast %union.anon* %2290 to i64*
  %2291 = load i64, i64* %PC.i728
  %2292 = add i64 %2291, 10
  store i64 %2292, i64* %PC.i728
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i729, align 8
  store %struct.Memory* %loadMem_414486, %struct.Memory** %MEMORY
  %loadMem_414490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 33
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %2295 to i64*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 5
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %RCX.i726 = bitcast %union.anon* %2298 to i64*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 15
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %RBP.i727 = bitcast %union.anon* %2301 to i64*
  %2302 = load i64, i64* %RBP.i727
  %2303 = sub i64 %2302, 8
  %2304 = load i64, i64* %PC.i725
  %2305 = add i64 %2304, 3
  store i64 %2305, i64* %PC.i725
  %2306 = inttoptr i64 %2303 to i32*
  %2307 = load i32, i32* %2306
  %2308 = zext i32 %2307 to i64
  store i64 %2308, i64* %RCX.i726, align 8
  store %struct.Memory* %loadMem_414490, %struct.Memory** %MEMORY
  %loadMem_414493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 33
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %2311 to i64*
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 5
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %RCX.i724 = bitcast %union.anon* %2314 to i64*
  %2315 = load i64, i64* %RCX.i724
  %2316 = load i64, i64* %PC.i723
  %2317 = add i64 %2316, 3
  store i64 %2317, i64* %PC.i723
  %2318 = trunc i64 %2315 to i32
  %2319 = add i32 20, %2318
  %2320 = zext i32 %2319 to i64
  store i64 %2320, i64* %RCX.i724, align 8
  %2321 = icmp ult i32 %2319, %2318
  %2322 = icmp ult i32 %2319, 20
  %2323 = or i1 %2321, %2322
  %2324 = zext i1 %2323 to i8
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2324, i8* %2325, align 1
  %2326 = and i32 %2319, 255
  %2327 = call i32 @llvm.ctpop.i32(i32 %2326)
  %2328 = trunc i32 %2327 to i8
  %2329 = and i8 %2328, 1
  %2330 = xor i8 %2329, 1
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2330, i8* %2331, align 1
  %2332 = xor i64 20, %2315
  %2333 = trunc i64 %2332 to i32
  %2334 = xor i32 %2333, %2319
  %2335 = lshr i32 %2334, 4
  %2336 = trunc i32 %2335 to i8
  %2337 = and i8 %2336, 1
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2337, i8* %2338, align 1
  %2339 = icmp eq i32 %2319, 0
  %2340 = zext i1 %2339 to i8
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2340, i8* %2341, align 1
  %2342 = lshr i32 %2319, 31
  %2343 = trunc i32 %2342 to i8
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2343, i8* %2344, align 1
  %2345 = lshr i32 %2318, 31
  %2346 = xor i32 %2342, %2345
  %2347 = add i32 %2346, %2342
  %2348 = icmp eq i32 %2347, 2
  %2349 = zext i1 %2348 to i8
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2349, i8* %2350, align 1
  store %struct.Memory* %loadMem_414493, %struct.Memory** %MEMORY
  %loadMem_414496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 33
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %2353 to i64*
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 5
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %ECX.i721 = bitcast %union.anon* %2356 to i32*
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 7
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %RDX.i722 = bitcast %union.anon* %2359 to i64*
  %2360 = load i32, i32* %ECX.i721
  %2361 = zext i32 %2360 to i64
  %2362 = load i64, i64* %PC.i720
  %2363 = add i64 %2362, 3
  store i64 %2363, i64* %PC.i720
  %2364 = shl i64 %2361, 32
  %2365 = ashr exact i64 %2364, 32
  store i64 %2365, i64* %RDX.i722, align 8
  store %struct.Memory* %loadMem_414496, %struct.Memory** %MEMORY
  %loadMem_414499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 33
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %2368 to i64*
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 7
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %RDX.i719 = bitcast %union.anon* %2371 to i64*
  %2372 = load i64, i64* %RDX.i719
  %2373 = mul i64 %2372, 4
  %2374 = add i64 %2373, 11187184
  %2375 = load i64, i64* %PC.i718
  %2376 = add i64 %2375, 8
  store i64 %2376, i64* %PC.i718
  %2377 = inttoptr i64 %2374 to i32*
  %2378 = load i32, i32* %2377
  %2379 = sext i32 %2378 to i64
  store i64 %2379, i64* %RDX.i719, align 8
  store %struct.Memory* %loadMem_414499, %struct.Memory** %MEMORY
  %loadMem_4144a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 33
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 7
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RDX.i717 = bitcast %union.anon* %2385 to i64*
  %2386 = load i64, i64* %RDX.i717
  %2387 = load i64, i64* %PC.i716
  %2388 = add i64 %2387, 7
  store i64 %2388, i64* %PC.i716
  %2389 = sext i64 %2386 to i128
  %2390 = and i128 %2389, -18446744073709551616
  %2391 = zext i64 %2386 to i128
  %2392 = or i128 %2390, %2391
  %2393 = mul i128 744, %2392
  %2394 = trunc i128 %2393 to i64
  store i64 %2394, i64* %RDX.i717, align 8
  %2395 = sext i64 %2394 to i128
  %2396 = icmp ne i128 %2395, %2393
  %2397 = zext i1 %2396 to i8
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2397, i8* %2398, align 1
  %2399 = trunc i128 %2393 to i32
  %2400 = and i32 %2399, 255
  %2401 = call i32 @llvm.ctpop.i32(i32 %2400)
  %2402 = trunc i32 %2401 to i8
  %2403 = and i8 %2402, 1
  %2404 = xor i8 %2403, 1
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2404, i8* %2405, align 1
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2406, align 1
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2407, align 1
  %2408 = lshr i64 %2394, 63
  %2409 = trunc i64 %2408 to i8
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2409, i8* %2410, align 1
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2397, i8* %2411, align 1
  store %struct.Memory* %loadMem_4144a1, %struct.Memory** %MEMORY
  %loadMem_4144a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 33
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 1
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %RAX.i714 = bitcast %union.anon* %2417 to i64*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 7
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %RDX.i715 = bitcast %union.anon* %2420 to i64*
  %2421 = load i64, i64* %RAX.i714
  %2422 = load i64, i64* %RDX.i715
  %2423 = load i64, i64* %PC.i713
  %2424 = add i64 %2423, 3
  store i64 %2424, i64* %PC.i713
  %2425 = add i64 %2422, %2421
  store i64 %2425, i64* %RAX.i714, align 8
  %2426 = icmp ult i64 %2425, %2421
  %2427 = icmp ult i64 %2425, %2422
  %2428 = or i1 %2426, %2427
  %2429 = zext i1 %2428 to i8
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2429, i8* %2430, align 1
  %2431 = trunc i64 %2425 to i32
  %2432 = and i32 %2431, 255
  %2433 = call i32 @llvm.ctpop.i32(i32 %2432)
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  %2436 = xor i8 %2435, 1
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2436, i8* %2437, align 1
  %2438 = xor i64 %2422, %2421
  %2439 = xor i64 %2438, %2425
  %2440 = lshr i64 %2439, 4
  %2441 = trunc i64 %2440 to i8
  %2442 = and i8 %2441, 1
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2442, i8* %2443, align 1
  %2444 = icmp eq i64 %2425, 0
  %2445 = zext i1 %2444 to i8
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2445, i8* %2446, align 1
  %2447 = lshr i64 %2425, 63
  %2448 = trunc i64 %2447 to i8
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2448, i8* %2449, align 1
  %2450 = lshr i64 %2421, 63
  %2451 = lshr i64 %2422, 63
  %2452 = xor i64 %2447, %2450
  %2453 = xor i64 %2447, %2451
  %2454 = add i64 %2452, %2453
  %2455 = icmp eq i64 %2454, 2
  %2456 = zext i1 %2455 to i8
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2456, i8* %2457, align 1
  store %struct.Memory* %loadMem_4144a8, %struct.Memory** %MEMORY
  %loadMem_4144ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 33
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %2460 to i64*
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 1
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %RAX.i712 = bitcast %union.anon* %2463 to i64*
  %2464 = load i64, i64* %RAX.i712
  %2465 = add i64 %2464, 12
  %2466 = load i64, i64* %PC.i711
  %2467 = add i64 %2466, 4
  store i64 %2467, i64* %PC.i711
  %2468 = inttoptr i64 %2465 to i32*
  %2469 = load i32, i32* %2468
  %2470 = sub i32 %2469, 2
  %2471 = icmp ult i32 %2469, 2
  %2472 = zext i1 %2471 to i8
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2472, i8* %2473, align 1
  %2474 = and i32 %2470, 255
  %2475 = call i32 @llvm.ctpop.i32(i32 %2474)
  %2476 = trunc i32 %2475 to i8
  %2477 = and i8 %2476, 1
  %2478 = xor i8 %2477, 1
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2478, i8* %2479, align 1
  %2480 = xor i32 %2469, 2
  %2481 = xor i32 %2480, %2470
  %2482 = lshr i32 %2481, 4
  %2483 = trunc i32 %2482 to i8
  %2484 = and i8 %2483, 1
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2484, i8* %2485, align 1
  %2486 = icmp eq i32 %2470, 0
  %2487 = zext i1 %2486 to i8
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2487, i8* %2488, align 1
  %2489 = lshr i32 %2470, 31
  %2490 = trunc i32 %2489 to i8
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2490, i8* %2491, align 1
  %2492 = lshr i32 %2469, 31
  %2493 = xor i32 %2489, %2492
  %2494 = add i32 %2493, %2492
  %2495 = icmp eq i32 %2494, 2
  %2496 = zext i1 %2495 to i8
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2496, i8* %2497, align 1
  store %struct.Memory* %loadMem_4144ab, %struct.Memory** %MEMORY
  %loadMem_4144af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 33
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %2500 to i64*
  %2501 = load i64, i64* %PC.i710
  %2502 = add i64 %2501, 18
  %2503 = load i64, i64* %PC.i710
  %2504 = add i64 %2503, 6
  %2505 = load i64, i64* %PC.i710
  %2506 = add i64 %2505, 6
  store i64 %2506, i64* %PC.i710
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2508 = load i8, i8* %2507, align 1
  %2509 = icmp ne i8 %2508, 0
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2511 = load i8, i8* %2510, align 1
  %2512 = icmp ne i8 %2511, 0
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2514 = load i8, i8* %2513, align 1
  %2515 = icmp ne i8 %2514, 0
  %2516 = xor i1 %2512, %2515
  %2517 = or i1 %2509, %2516
  %2518 = zext i1 %2517 to i8
  store i8 %2518, i8* %BRANCH_TAKEN, align 1
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2520 = select i1 %2517, i64 %2502, i64 %2504
  store i64 %2520, i64* %2519, align 8
  store %struct.Memory* %loadMem_4144af, %struct.Memory** %MEMORY
  %loadBr_4144af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4144af = icmp eq i8 %loadBr_4144af, 1
  br i1 %cmpBr_4144af, label %block_.L_4144c1, label %block_4144b5

block_4144b5:                                     ; preds = %block_414486
  %loadMem_4144b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 33
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %2523 to i64*
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 15
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %RBP.i709 = bitcast %union.anon* %2526 to i64*
  %2527 = load i64, i64* %RBP.i709
  %2528 = sub i64 %2527, 4
  %2529 = load i64, i64* %PC.i708
  %2530 = add i64 %2529, 7
  store i64 %2530, i64* %PC.i708
  %2531 = inttoptr i64 %2528 to i32*
  store i32 0, i32* %2531
  store %struct.Memory* %loadMem_4144b5, %struct.Memory** %MEMORY
  %loadMem_4144bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 33
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %2534 to i64*
  %2535 = load i64, i64* %PC.i707
  %2536 = add i64 %2535, 1504
  %2537 = load i64, i64* %PC.i707
  %2538 = add i64 %2537, 5
  store i64 %2538, i64* %PC.i707
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2536, i64* %2539, align 8
  store %struct.Memory* %loadMem_4144bc, %struct.Memory** %MEMORY
  br label %block_.L_414a9c

block_.L_4144c1:                                  ; preds = %block_414486
  %loadMem_4144c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 33
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 1
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %RAX.i706 = bitcast %union.anon* %2545 to i64*
  %2546 = load i64, i64* %PC.i705
  %2547 = add i64 %2546, 10
  store i64 %2547, i64* %PC.i705
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i706, align 8
  store %struct.Memory* %loadMem_4144c1, %struct.Memory** %MEMORY
  %loadMem_4144cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 33
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %2550 to i64*
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 5
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %RCX.i703 = bitcast %union.anon* %2553 to i64*
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2555 = getelementptr inbounds %struct.GPR, %struct.GPR* %2554, i32 0, i32 15
  %2556 = getelementptr inbounds %struct.Reg, %struct.Reg* %2555, i32 0, i32 0
  %RBP.i704 = bitcast %union.anon* %2556 to i64*
  %2557 = load i64, i64* %RBP.i704
  %2558 = sub i64 %2557, 8
  %2559 = load i64, i64* %PC.i702
  %2560 = add i64 %2559, 3
  store i64 %2560, i64* %PC.i702
  %2561 = inttoptr i64 %2558 to i32*
  %2562 = load i32, i32* %2561
  %2563 = zext i32 %2562 to i64
  store i64 %2563, i64* %RCX.i703, align 8
  store %struct.Memory* %loadMem_4144cb, %struct.Memory** %MEMORY
  %loadMem_4144ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 33
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 5
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RCX.i701 = bitcast %union.anon* %2569 to i64*
  %2570 = load i64, i64* %RCX.i701
  %2571 = load i64, i64* %PC.i700
  %2572 = add i64 %2571, 3
  store i64 %2572, i64* %PC.i700
  %2573 = trunc i64 %2570 to i32
  %2574 = add i32 20, %2573
  %2575 = zext i32 %2574 to i64
  store i64 %2575, i64* %RCX.i701, align 8
  %2576 = icmp ult i32 %2574, %2573
  %2577 = icmp ult i32 %2574, 20
  %2578 = or i1 %2576, %2577
  %2579 = zext i1 %2578 to i8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2579, i8* %2580, align 1
  %2581 = and i32 %2574, 255
  %2582 = call i32 @llvm.ctpop.i32(i32 %2581)
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  %2585 = xor i8 %2584, 1
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2585, i8* %2586, align 1
  %2587 = xor i64 20, %2570
  %2588 = trunc i64 %2587 to i32
  %2589 = xor i32 %2588, %2574
  %2590 = lshr i32 %2589, 4
  %2591 = trunc i32 %2590 to i8
  %2592 = and i8 %2591, 1
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2592, i8* %2593, align 1
  %2594 = icmp eq i32 %2574, 0
  %2595 = zext i1 %2594 to i8
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2595, i8* %2596, align 1
  %2597 = lshr i32 %2574, 31
  %2598 = trunc i32 %2597 to i8
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2598, i8* %2599, align 1
  %2600 = lshr i32 %2573, 31
  %2601 = xor i32 %2597, %2600
  %2602 = add i32 %2601, %2597
  %2603 = icmp eq i32 %2602, 2
  %2604 = zext i1 %2603 to i8
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2604, i8* %2605, align 1
  store %struct.Memory* %loadMem_4144ce, %struct.Memory** %MEMORY
  %loadMem_4144d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 33
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %2608 to i64*
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 5
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %ECX.i698 = bitcast %union.anon* %2611 to i32*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 7
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %RDX.i699 = bitcast %union.anon* %2614 to i64*
  %2615 = load i32, i32* %ECX.i698
  %2616 = zext i32 %2615 to i64
  %2617 = load i64, i64* %PC.i697
  %2618 = add i64 %2617, 3
  store i64 %2618, i64* %PC.i697
  %2619 = shl i64 %2616, 32
  %2620 = ashr exact i64 %2619, 32
  store i64 %2620, i64* %RDX.i699, align 8
  store %struct.Memory* %loadMem_4144d1, %struct.Memory** %MEMORY
  %loadMem_4144d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 33
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 7
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RDX.i696 = bitcast %union.anon* %2626 to i64*
  %2627 = load i64, i64* %RDX.i696
  %2628 = mul i64 %2627, 4
  %2629 = add i64 %2628, 11187184
  %2630 = load i64, i64* %PC.i695
  %2631 = add i64 %2630, 8
  store i64 %2631, i64* %PC.i695
  %2632 = inttoptr i64 %2629 to i32*
  %2633 = load i32, i32* %2632
  %2634 = sext i32 %2633 to i64
  store i64 %2634, i64* %RDX.i696, align 8
  store %struct.Memory* %loadMem_4144d4, %struct.Memory** %MEMORY
  %loadMem_4144dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 33
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %2637 to i64*
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 7
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %RDX.i694 = bitcast %union.anon* %2640 to i64*
  %2641 = load i64, i64* %RDX.i694
  %2642 = load i64, i64* %PC.i693
  %2643 = add i64 %2642, 7
  store i64 %2643, i64* %PC.i693
  %2644 = sext i64 %2641 to i128
  %2645 = and i128 %2644, -18446744073709551616
  %2646 = zext i64 %2641 to i128
  %2647 = or i128 %2645, %2646
  %2648 = mul i128 744, %2647
  %2649 = trunc i128 %2648 to i64
  store i64 %2649, i64* %RDX.i694, align 8
  %2650 = sext i64 %2649 to i128
  %2651 = icmp ne i128 %2650, %2648
  %2652 = zext i1 %2651 to i8
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2652, i8* %2653, align 1
  %2654 = trunc i128 %2648 to i32
  %2655 = and i32 %2654, 255
  %2656 = call i32 @llvm.ctpop.i32(i32 %2655)
  %2657 = trunc i32 %2656 to i8
  %2658 = and i8 %2657, 1
  %2659 = xor i8 %2658, 1
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2659, i8* %2660, align 1
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2661, align 1
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2662, align 1
  %2663 = lshr i64 %2649, 63
  %2664 = trunc i64 %2663 to i8
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2664, i8* %2665, align 1
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2652, i8* %2666, align 1
  store %struct.Memory* %loadMem_4144dc, %struct.Memory** %MEMORY
  %loadMem_4144e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 33
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 1
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %RAX.i691 = bitcast %union.anon* %2672 to i64*
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 7
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %RDX.i692 = bitcast %union.anon* %2675 to i64*
  %2676 = load i64, i64* %RAX.i691
  %2677 = load i64, i64* %RDX.i692
  %2678 = load i64, i64* %PC.i690
  %2679 = add i64 %2678, 3
  store i64 %2679, i64* %PC.i690
  %2680 = add i64 %2677, %2676
  store i64 %2680, i64* %RAX.i691, align 8
  %2681 = icmp ult i64 %2680, %2676
  %2682 = icmp ult i64 %2680, %2677
  %2683 = or i1 %2681, %2682
  %2684 = zext i1 %2683 to i8
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2684, i8* %2685, align 1
  %2686 = trunc i64 %2680 to i32
  %2687 = and i32 %2686, 255
  %2688 = call i32 @llvm.ctpop.i32(i32 %2687)
  %2689 = trunc i32 %2688 to i8
  %2690 = and i8 %2689, 1
  %2691 = xor i8 %2690, 1
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2691, i8* %2692, align 1
  %2693 = xor i64 %2677, %2676
  %2694 = xor i64 %2693, %2680
  %2695 = lshr i64 %2694, 4
  %2696 = trunc i64 %2695 to i8
  %2697 = and i8 %2696, 1
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2697, i8* %2698, align 1
  %2699 = icmp eq i64 %2680, 0
  %2700 = zext i1 %2699 to i8
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2700, i8* %2701, align 1
  %2702 = lshr i64 %2680, 63
  %2703 = trunc i64 %2702 to i8
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2703, i8* %2704, align 1
  %2705 = lshr i64 %2676, 63
  %2706 = lshr i64 %2677, 63
  %2707 = xor i64 %2702, %2705
  %2708 = xor i64 %2702, %2706
  %2709 = add i64 %2707, %2708
  %2710 = icmp eq i64 %2709, 2
  %2711 = zext i1 %2710 to i8
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2711, i8* %2712, align 1
  store %struct.Memory* %loadMem_4144e3, %struct.Memory** %MEMORY
  %loadMem_4144e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2714 = getelementptr inbounds %struct.GPR, %struct.GPR* %2713, i32 0, i32 33
  %2715 = getelementptr inbounds %struct.Reg, %struct.Reg* %2714, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %2715 to i64*
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 1
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %RAX.i689 = bitcast %union.anon* %2718 to i64*
  %2719 = load i64, i64* %RAX.i689
  %2720 = add i64 %2719, 12
  %2721 = load i64, i64* %PC.i688
  %2722 = add i64 %2721, 4
  store i64 %2722, i64* %PC.i688
  %2723 = inttoptr i64 %2720 to i32*
  %2724 = load i32, i32* %2723
  %2725 = sub i32 %2724, 2
  %2726 = icmp ult i32 %2724, 2
  %2727 = zext i1 %2726 to i8
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2727, i8* %2728, align 1
  %2729 = and i32 %2725, 255
  %2730 = call i32 @llvm.ctpop.i32(i32 %2729)
  %2731 = trunc i32 %2730 to i8
  %2732 = and i8 %2731, 1
  %2733 = xor i8 %2732, 1
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2733, i8* %2734, align 1
  %2735 = xor i32 %2724, 2
  %2736 = xor i32 %2735, %2725
  %2737 = lshr i32 %2736, 4
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2739, i8* %2740, align 1
  %2741 = icmp eq i32 %2725, 0
  %2742 = zext i1 %2741 to i8
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2742, i8* %2743, align 1
  %2744 = lshr i32 %2725, 31
  %2745 = trunc i32 %2744 to i8
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2745, i8* %2746, align 1
  %2747 = lshr i32 %2724, 31
  %2748 = xor i32 %2744, %2747
  %2749 = add i32 %2748, %2747
  %2750 = icmp eq i32 %2749, 2
  %2751 = zext i1 %2750 to i8
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2751, i8* %2752, align 1
  store %struct.Memory* %loadMem_4144e6, %struct.Memory** %MEMORY
  %loadMem_4144ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 33
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %2755 to i64*
  %2756 = load i64, i64* %PC.i687
  %2757 = add i64 %2756, 15
  %2758 = load i64, i64* %PC.i687
  %2759 = add i64 %2758, 6
  %2760 = load i64, i64* %PC.i687
  %2761 = add i64 %2760, 6
  store i64 %2761, i64* %PC.i687
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2763 = load i8, i8* %2762, align 1
  %2764 = icmp eq i8 %2763, 0
  %2765 = zext i1 %2764 to i8
  store i8 %2765, i8* %BRANCH_TAKEN, align 1
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2767 = select i1 %2764, i64 %2757, i64 %2759
  store i64 %2767, i64* %2766, align 8
  store %struct.Memory* %loadMem_4144ea, %struct.Memory** %MEMORY
  %loadBr_4144ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4144ea = icmp eq i8 %loadBr_4144ea, 1
  br i1 %cmpBr_4144ea, label %block_.L_4144f9, label %block_4144f0

block_4144f0:                                     ; preds = %block_.L_4144c1
  %loadMem_4144f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 33
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %2770 to i64*
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 1
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %RAX.i685 = bitcast %union.anon* %2773 to i64*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 15
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %RBP.i686 = bitcast %union.anon* %2776 to i64*
  %2777 = load i64, i64* %RBP.i686
  %2778 = sub i64 %2777, 28
  %2779 = load i64, i64* %PC.i684
  %2780 = add i64 %2779, 3
  store i64 %2780, i64* %PC.i684
  %2781 = inttoptr i64 %2778 to i32*
  %2782 = load i32, i32* %2781
  %2783 = zext i32 %2782 to i64
  store i64 %2783, i64* %RAX.i685, align 8
  store %struct.Memory* %loadMem_4144f0, %struct.Memory** %MEMORY
  %loadMem_4144f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 33
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %2786 to i64*
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 1
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %RAX.i683 = bitcast %union.anon* %2789 to i64*
  %2790 = load i64, i64* %RAX.i683
  %2791 = load i64, i64* %PC.i682
  %2792 = add i64 %2791, 3
  store i64 %2792, i64* %PC.i682
  %2793 = trunc i64 %2790 to i32
  %2794 = add i32 1, %2793
  %2795 = zext i32 %2794 to i64
  store i64 %2795, i64* %RAX.i683, align 8
  %2796 = icmp ult i32 %2794, %2793
  %2797 = icmp ult i32 %2794, 1
  %2798 = or i1 %2796, %2797
  %2799 = zext i1 %2798 to i8
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2799, i8* %2800, align 1
  %2801 = and i32 %2794, 255
  %2802 = call i32 @llvm.ctpop.i32(i32 %2801)
  %2803 = trunc i32 %2802 to i8
  %2804 = and i8 %2803, 1
  %2805 = xor i8 %2804, 1
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2805, i8* %2806, align 1
  %2807 = xor i64 1, %2790
  %2808 = trunc i64 %2807 to i32
  %2809 = xor i32 %2808, %2794
  %2810 = lshr i32 %2809, 4
  %2811 = trunc i32 %2810 to i8
  %2812 = and i8 %2811, 1
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2812, i8* %2813, align 1
  %2814 = icmp eq i32 %2794, 0
  %2815 = zext i1 %2814 to i8
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2815, i8* %2816, align 1
  %2817 = lshr i32 %2794, 31
  %2818 = trunc i32 %2817 to i8
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2818, i8* %2819, align 1
  %2820 = lshr i32 %2793, 31
  %2821 = xor i32 %2817, %2820
  %2822 = add i32 %2821, %2817
  %2823 = icmp eq i32 %2822, 2
  %2824 = zext i1 %2823 to i8
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2824, i8* %2825, align 1
  store %struct.Memory* %loadMem_4144f3, %struct.Memory** %MEMORY
  %loadMem_4144f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 33
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2828 to i64*
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 1
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %EAX.i680 = bitcast %union.anon* %2831 to i32*
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 15
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %RBP.i681 = bitcast %union.anon* %2834 to i64*
  %2835 = load i64, i64* %RBP.i681
  %2836 = sub i64 %2835, 28
  %2837 = load i32, i32* %EAX.i680
  %2838 = zext i32 %2837 to i64
  %2839 = load i64, i64* %PC.i679
  %2840 = add i64 %2839, 3
  store i64 %2840, i64* %PC.i679
  %2841 = inttoptr i64 %2836 to i32*
  store i32 %2837, i32* %2841
  store %struct.Memory* %loadMem_4144f6, %struct.Memory** %MEMORY
  br label %block_.L_4144f9

block_.L_4144f9:                                  ; preds = %block_4144f0, %block_.L_4144c1
  %loadMem_4144f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 33
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %2844 to i64*
  %2845 = load i64, i64* %PC.i678
  %2846 = add i64 %2845, 198
  %2847 = load i64, i64* %PC.i678
  %2848 = add i64 %2847, 5
  store i64 %2848, i64* %PC.i678
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2846, i64* %2849, align 8
  store %struct.Memory* %loadMem_4144f9, %struct.Memory** %MEMORY
  br label %block_.L_4145bf

block_.L_4144fe:                                  ; preds = %block_.L_41446c
  %loadMem_4144fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 33
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %2852 to i64*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 1
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %RAX.i676 = bitcast %union.anon* %2855 to i64*
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 15
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %2858 to i64*
  %2859 = load i64, i64* %RBP.i677
  %2860 = sub i64 %2859, 8
  %2861 = load i64, i64* %PC.i675
  %2862 = add i64 %2861, 3
  store i64 %2862, i64* %PC.i675
  %2863 = inttoptr i64 %2860 to i32*
  %2864 = load i32, i32* %2863
  %2865 = zext i32 %2864 to i64
  store i64 %2865, i64* %RAX.i676, align 8
  store %struct.Memory* %loadMem_4144fe, %struct.Memory** %MEMORY
  %loadMem_414501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 33
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %2868 to i64*
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 1
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %RAX.i674 = bitcast %union.anon* %2871 to i64*
  %2872 = load i64, i64* %RAX.i674
  %2873 = load i64, i64* %PC.i673
  %2874 = add i64 %2873, 3
  store i64 %2874, i64* %PC.i673
  %2875 = trunc i64 %2872 to i32
  %2876 = add i32 20, %2875
  %2877 = zext i32 %2876 to i64
  store i64 %2877, i64* %RAX.i674, align 8
  %2878 = icmp ult i32 %2876, %2875
  %2879 = icmp ult i32 %2876, 20
  %2880 = or i1 %2878, %2879
  %2881 = zext i1 %2880 to i8
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2881, i8* %2882, align 1
  %2883 = and i32 %2876, 255
  %2884 = call i32 @llvm.ctpop.i32(i32 %2883)
  %2885 = trunc i32 %2884 to i8
  %2886 = and i8 %2885, 1
  %2887 = xor i8 %2886, 1
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2887, i8* %2888, align 1
  %2889 = xor i64 20, %2872
  %2890 = trunc i64 %2889 to i32
  %2891 = xor i32 %2890, %2876
  %2892 = lshr i32 %2891, 4
  %2893 = trunc i32 %2892 to i8
  %2894 = and i8 %2893, 1
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2894, i8* %2895, align 1
  %2896 = icmp eq i32 %2876, 0
  %2897 = zext i1 %2896 to i8
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2897, i8* %2898, align 1
  %2899 = lshr i32 %2876, 31
  %2900 = trunc i32 %2899 to i8
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2900, i8* %2901, align 1
  %2902 = lshr i32 %2875, 31
  %2903 = xor i32 %2899, %2902
  %2904 = add i32 %2903, %2899
  %2905 = icmp eq i32 %2904, 2
  %2906 = zext i1 %2905 to i8
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2906, i8* %2907, align 1
  store %struct.Memory* %loadMem_414501, %struct.Memory** %MEMORY
  %loadMem_414504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 33
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %2910 to i64*
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 1
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %EAX.i671 = bitcast %union.anon* %2913 to i32*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 5
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %RCX.i672 = bitcast %union.anon* %2916 to i64*
  %2917 = load i32, i32* %EAX.i671
  %2918 = zext i32 %2917 to i64
  %2919 = load i64, i64* %PC.i670
  %2920 = add i64 %2919, 3
  store i64 %2920, i64* %PC.i670
  %2921 = shl i64 %2918, 32
  %2922 = ashr exact i64 %2921, 32
  store i64 %2922, i64* %RCX.i672, align 8
  store %struct.Memory* %loadMem_414504, %struct.Memory** %MEMORY
  %loadMem_414507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 33
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %2925 to i64*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 1
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %RAX.i668 = bitcast %union.anon* %2928 to i64*
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 5
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %RCX.i669 = bitcast %union.anon* %2931 to i64*
  %2932 = load i64, i64* %RCX.i669
  %2933 = add i64 %2932, 12099168
  %2934 = load i64, i64* %PC.i667
  %2935 = add i64 %2934, 8
  store i64 %2935, i64* %PC.i667
  %2936 = inttoptr i64 %2933 to i8*
  %2937 = load i8, i8* %2936
  %2938 = zext i8 %2937 to i64
  store i64 %2938, i64* %RAX.i668, align 8
  store %struct.Memory* %loadMem_414507, %struct.Memory** %MEMORY
  %loadMem_41450f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 33
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %2941 to i64*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 1
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %EAX.i665 = bitcast %union.anon* %2944 to i32*
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 15
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %RBP.i666 = bitcast %union.anon* %2947 to i64*
  %2948 = load i32, i32* %EAX.i665
  %2949 = zext i32 %2948 to i64
  %2950 = load i64, i64* %RBP.i666
  %2951 = sub i64 %2950, 16
  %2952 = load i64, i64* %PC.i664
  %2953 = add i64 %2952, 3
  store i64 %2953, i64* %PC.i664
  %2954 = inttoptr i64 %2951 to i32*
  %2955 = load i32, i32* %2954
  %2956 = sub i32 %2948, %2955
  %2957 = icmp ult i32 %2948, %2955
  %2958 = zext i1 %2957 to i8
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2958, i8* %2959, align 1
  %2960 = and i32 %2956, 255
  %2961 = call i32 @llvm.ctpop.i32(i32 %2960)
  %2962 = trunc i32 %2961 to i8
  %2963 = and i8 %2962, 1
  %2964 = xor i8 %2963, 1
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2964, i8* %2965, align 1
  %2966 = xor i32 %2955, %2948
  %2967 = xor i32 %2966, %2956
  %2968 = lshr i32 %2967, 4
  %2969 = trunc i32 %2968 to i8
  %2970 = and i8 %2969, 1
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2970, i8* %2971, align 1
  %2972 = icmp eq i32 %2956, 0
  %2973 = zext i1 %2972 to i8
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2973, i8* %2974, align 1
  %2975 = lshr i32 %2956, 31
  %2976 = trunc i32 %2975 to i8
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2976, i8* %2977, align 1
  %2978 = lshr i32 %2948, 31
  %2979 = lshr i32 %2955, 31
  %2980 = xor i32 %2979, %2978
  %2981 = xor i32 %2975, %2978
  %2982 = add i32 %2981, %2980
  %2983 = icmp eq i32 %2982, 2
  %2984 = zext i1 %2983 to i8
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2984, i8* %2985, align 1
  store %struct.Memory* %loadMem_41450f, %struct.Memory** %MEMORY
  %loadMem_414512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 33
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %2988 to i64*
  %2989 = load i64, i64* %PC.i663
  %2990 = add i64 %2989, 168
  %2991 = load i64, i64* %PC.i663
  %2992 = add i64 %2991, 6
  %2993 = load i64, i64* %PC.i663
  %2994 = add i64 %2993, 6
  store i64 %2994, i64* %PC.i663
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2996 = load i8, i8* %2995, align 1
  %2997 = icmp eq i8 %2996, 0
  %2998 = zext i1 %2997 to i8
  store i8 %2998, i8* %BRANCH_TAKEN, align 1
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3000 = select i1 %2997, i64 %2990, i64 %2992
  store i64 %3000, i64* %2999, align 8
  store %struct.Memory* %loadMem_414512, %struct.Memory** %MEMORY
  %loadBr_414512 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414512 = icmp eq i8 %loadBr_414512, 1
  br i1 %cmpBr_414512, label %block_.L_4145ba, label %block_414518

block_414518:                                     ; preds = %block_.L_4144fe
  %loadMem_414518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 33
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %3003 to i64*
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 1
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %RAX.i662 = bitcast %union.anon* %3006 to i64*
  %3007 = load i64, i64* %PC.i661
  %3008 = add i64 %3007, 10
  store i64 %3008, i64* %PC.i661
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i662, align 8
  store %struct.Memory* %loadMem_414518, %struct.Memory** %MEMORY
  %loadMem_414522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 33
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %3011 to i64*
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3013 = getelementptr inbounds %struct.GPR, %struct.GPR* %3012, i32 0, i32 5
  %3014 = getelementptr inbounds %struct.Reg, %struct.Reg* %3013, i32 0, i32 0
  %RCX.i659 = bitcast %union.anon* %3014 to i64*
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 15
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %3017 to i64*
  %3018 = load i64, i64* %RBP.i660
  %3019 = sub i64 %3018, 8
  %3020 = load i64, i64* %PC.i658
  %3021 = add i64 %3020, 3
  store i64 %3021, i64* %PC.i658
  %3022 = inttoptr i64 %3019 to i32*
  %3023 = load i32, i32* %3022
  %3024 = zext i32 %3023 to i64
  store i64 %3024, i64* %RCX.i659, align 8
  store %struct.Memory* %loadMem_414522, %struct.Memory** %MEMORY
  %loadMem_414525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 33
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %3027 to i64*
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 5
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %RCX.i657 = bitcast %union.anon* %3030 to i64*
  %3031 = load i64, i64* %RCX.i657
  %3032 = load i64, i64* %PC.i656
  %3033 = add i64 %3032, 3
  store i64 %3033, i64* %PC.i656
  %3034 = trunc i64 %3031 to i32
  %3035 = add i32 20, %3034
  %3036 = zext i32 %3035 to i64
  store i64 %3036, i64* %RCX.i657, align 8
  %3037 = icmp ult i32 %3035, %3034
  %3038 = icmp ult i32 %3035, 20
  %3039 = or i1 %3037, %3038
  %3040 = zext i1 %3039 to i8
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3040, i8* %3041, align 1
  %3042 = and i32 %3035, 255
  %3043 = call i32 @llvm.ctpop.i32(i32 %3042)
  %3044 = trunc i32 %3043 to i8
  %3045 = and i8 %3044, 1
  %3046 = xor i8 %3045, 1
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3046, i8* %3047, align 1
  %3048 = xor i64 20, %3031
  %3049 = trunc i64 %3048 to i32
  %3050 = xor i32 %3049, %3035
  %3051 = lshr i32 %3050, 4
  %3052 = trunc i32 %3051 to i8
  %3053 = and i8 %3052, 1
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3053, i8* %3054, align 1
  %3055 = icmp eq i32 %3035, 0
  %3056 = zext i1 %3055 to i8
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3056, i8* %3057, align 1
  %3058 = lshr i32 %3035, 31
  %3059 = trunc i32 %3058 to i8
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3059, i8* %3060, align 1
  %3061 = lshr i32 %3034, 31
  %3062 = xor i32 %3058, %3061
  %3063 = add i32 %3062, %3058
  %3064 = icmp eq i32 %3063, 2
  %3065 = zext i1 %3064 to i8
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3065, i8* %3066, align 1
  store %struct.Memory* %loadMem_414525, %struct.Memory** %MEMORY
  %loadMem_414528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 33
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %3069 to i64*
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3071 = getelementptr inbounds %struct.GPR, %struct.GPR* %3070, i32 0, i32 5
  %3072 = getelementptr inbounds %struct.Reg, %struct.Reg* %3071, i32 0, i32 0
  %ECX.i654 = bitcast %union.anon* %3072 to i32*
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 7
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %RDX.i655 = bitcast %union.anon* %3075 to i64*
  %3076 = load i32, i32* %ECX.i654
  %3077 = zext i32 %3076 to i64
  %3078 = load i64, i64* %PC.i653
  %3079 = add i64 %3078, 3
  store i64 %3079, i64* %PC.i653
  %3080 = shl i64 %3077, 32
  %3081 = ashr exact i64 %3080, 32
  store i64 %3081, i64* %RDX.i655, align 8
  store %struct.Memory* %loadMem_414528, %struct.Memory** %MEMORY
  %loadMem_41452b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 33
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %3084 to i64*
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 7
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %RDX.i652 = bitcast %union.anon* %3087 to i64*
  %3088 = load i64, i64* %RDX.i652
  %3089 = mul i64 %3088, 4
  %3090 = add i64 %3089, 11187184
  %3091 = load i64, i64* %PC.i651
  %3092 = add i64 %3091, 8
  store i64 %3092, i64* %PC.i651
  %3093 = inttoptr i64 %3090 to i32*
  %3094 = load i32, i32* %3093
  %3095 = sext i32 %3094 to i64
  store i64 %3095, i64* %RDX.i652, align 8
  store %struct.Memory* %loadMem_41452b, %struct.Memory** %MEMORY
  %loadMem_414533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 33
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %3098 to i64*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 7
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RDX.i650 = bitcast %union.anon* %3101 to i64*
  %3102 = load i64, i64* %RDX.i650
  %3103 = load i64, i64* %PC.i649
  %3104 = add i64 %3103, 7
  store i64 %3104, i64* %PC.i649
  %3105 = sext i64 %3102 to i128
  %3106 = and i128 %3105, -18446744073709551616
  %3107 = zext i64 %3102 to i128
  %3108 = or i128 %3106, %3107
  %3109 = mul i128 744, %3108
  %3110 = trunc i128 %3109 to i64
  store i64 %3110, i64* %RDX.i650, align 8
  %3111 = sext i64 %3110 to i128
  %3112 = icmp ne i128 %3111, %3109
  %3113 = zext i1 %3112 to i8
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3113, i8* %3114, align 1
  %3115 = trunc i128 %3109 to i32
  %3116 = and i32 %3115, 255
  %3117 = call i32 @llvm.ctpop.i32(i32 %3116)
  %3118 = trunc i32 %3117 to i8
  %3119 = and i8 %3118, 1
  %3120 = xor i8 %3119, 1
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3120, i8* %3121, align 1
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3122, align 1
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3123, align 1
  %3124 = lshr i64 %3110, 63
  %3125 = trunc i64 %3124 to i8
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3125, i8* %3126, align 1
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3113, i8* %3127, align 1
  store %struct.Memory* %loadMem_414533, %struct.Memory** %MEMORY
  %loadMem_41453a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 33
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %3130 to i64*
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 1
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %3133 to i64*
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 7
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %RDX.i648 = bitcast %union.anon* %3136 to i64*
  %3137 = load i64, i64* %RAX.i647
  %3138 = load i64, i64* %RDX.i648
  %3139 = load i64, i64* %PC.i646
  %3140 = add i64 %3139, 3
  store i64 %3140, i64* %PC.i646
  %3141 = add i64 %3138, %3137
  store i64 %3141, i64* %RAX.i647, align 8
  %3142 = icmp ult i64 %3141, %3137
  %3143 = icmp ult i64 %3141, %3138
  %3144 = or i1 %3142, %3143
  %3145 = zext i1 %3144 to i8
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3145, i8* %3146, align 1
  %3147 = trunc i64 %3141 to i32
  %3148 = and i32 %3147, 255
  %3149 = call i32 @llvm.ctpop.i32(i32 %3148)
  %3150 = trunc i32 %3149 to i8
  %3151 = and i8 %3150, 1
  %3152 = xor i8 %3151, 1
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3152, i8* %3153, align 1
  %3154 = xor i64 %3138, %3137
  %3155 = xor i64 %3154, %3141
  %3156 = lshr i64 %3155, 4
  %3157 = trunc i64 %3156 to i8
  %3158 = and i8 %3157, 1
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3158, i8* %3159, align 1
  %3160 = icmp eq i64 %3141, 0
  %3161 = zext i1 %3160 to i8
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3161, i8* %3162, align 1
  %3163 = lshr i64 %3141, 63
  %3164 = trunc i64 %3163 to i8
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3164, i8* %3165, align 1
  %3166 = lshr i64 %3137, 63
  %3167 = lshr i64 %3138, 63
  %3168 = xor i64 %3163, %3166
  %3169 = xor i64 %3163, %3167
  %3170 = add i64 %3168, %3169
  %3171 = icmp eq i64 %3170, 2
  %3172 = zext i1 %3171 to i8
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3172, i8* %3173, align 1
  store %struct.Memory* %loadMem_41453a, %struct.Memory** %MEMORY
  %loadMem_41453d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 33
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 1
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RAX.i645 = bitcast %union.anon* %3179 to i64*
  %3180 = load i64, i64* %RAX.i645
  %3181 = add i64 %3180, 12
  %3182 = load i64, i64* %PC.i644
  %3183 = add i64 %3182, 4
  store i64 %3183, i64* %PC.i644
  %3184 = inttoptr i64 %3181 to i32*
  %3185 = load i32, i32* %3184
  %3186 = sub i32 %3185, 1
  %3187 = icmp ult i32 %3185, 1
  %3188 = zext i1 %3187 to i8
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3188, i8* %3189, align 1
  %3190 = and i32 %3186, 255
  %3191 = call i32 @llvm.ctpop.i32(i32 %3190)
  %3192 = trunc i32 %3191 to i8
  %3193 = and i8 %3192, 1
  %3194 = xor i8 %3193, 1
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3194, i8* %3195, align 1
  %3196 = xor i32 %3185, 1
  %3197 = xor i32 %3196, %3186
  %3198 = lshr i32 %3197, 4
  %3199 = trunc i32 %3198 to i8
  %3200 = and i8 %3199, 1
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3200, i8* %3201, align 1
  %3202 = icmp eq i32 %3186, 0
  %3203 = zext i1 %3202 to i8
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3203, i8* %3204, align 1
  %3205 = lshr i32 %3186, 31
  %3206 = trunc i32 %3205 to i8
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3206, i8* %3207, align 1
  %3208 = lshr i32 %3185, 31
  %3209 = xor i32 %3205, %3208
  %3210 = add i32 %3209, %3208
  %3211 = icmp eq i32 %3210, 2
  %3212 = zext i1 %3211 to i8
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3212, i8* %3213, align 1
  store %struct.Memory* %loadMem_41453d, %struct.Memory** %MEMORY
  %loadMem_414541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 33
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %3216 to i64*
  %3217 = load i64, i64* %PC.i643
  %3218 = add i64 %3217, 121
  %3219 = load i64, i64* %PC.i643
  %3220 = add i64 %3219, 6
  %3221 = load i64, i64* %PC.i643
  %3222 = add i64 %3221, 6
  store i64 %3222, i64* %PC.i643
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3224 = load i8, i8* %3223, align 1
  %3225 = icmp eq i8 %3224, 0
  %3226 = zext i1 %3225 to i8
  store i8 %3226, i8* %BRANCH_TAKEN, align 1
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3228 = select i1 %3225, i64 %3218, i64 %3220
  store i64 %3228, i64* %3227, align 8
  store %struct.Memory* %loadMem_414541, %struct.Memory** %MEMORY
  %loadBr_414541 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414541 = icmp eq i8 %loadBr_414541, 1
  br i1 %cmpBr_414541, label %block_.L_4145ba, label %block_414547

block_414547:                                     ; preds = %block_414518
  %loadMem_414547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 33
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %3231 to i64*
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 1
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %RAX.i642 = bitcast %union.anon* %3234 to i64*
  %3235 = load i64, i64* %PC.i641
  %3236 = add i64 %3235, 10
  store i64 %3236, i64* %PC.i641
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i642, align 8
  store %struct.Memory* %loadMem_414547, %struct.Memory** %MEMORY
  %loadMem_414551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 33
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %3239 to i64*
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 5
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %RCX.i639 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 15
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %3245 to i64*
  %3246 = load i64, i64* %RBP.i640
  %3247 = sub i64 %3246, 8
  %3248 = load i64, i64* %PC.i638
  %3249 = add i64 %3248, 3
  store i64 %3249, i64* %PC.i638
  %3250 = inttoptr i64 %3247 to i32*
  %3251 = load i32, i32* %3250
  %3252 = zext i32 %3251 to i64
  store i64 %3252, i64* %RCX.i639, align 8
  store %struct.Memory* %loadMem_414551, %struct.Memory** %MEMORY
  %loadMem_414554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3254 = getelementptr inbounds %struct.GPR, %struct.GPR* %3253, i32 0, i32 33
  %3255 = getelementptr inbounds %struct.Reg, %struct.Reg* %3254, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %3255 to i64*
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 5
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %RCX.i637 = bitcast %union.anon* %3258 to i64*
  %3259 = load i64, i64* %RCX.i637
  %3260 = load i64, i64* %PC.i636
  %3261 = add i64 %3260, 3
  store i64 %3261, i64* %PC.i636
  %3262 = trunc i64 %3259 to i32
  %3263 = add i32 20, %3262
  %3264 = zext i32 %3263 to i64
  store i64 %3264, i64* %RCX.i637, align 8
  %3265 = icmp ult i32 %3263, %3262
  %3266 = icmp ult i32 %3263, 20
  %3267 = or i1 %3265, %3266
  %3268 = zext i1 %3267 to i8
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3268, i8* %3269, align 1
  %3270 = and i32 %3263, 255
  %3271 = call i32 @llvm.ctpop.i32(i32 %3270)
  %3272 = trunc i32 %3271 to i8
  %3273 = and i8 %3272, 1
  %3274 = xor i8 %3273, 1
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3274, i8* %3275, align 1
  %3276 = xor i64 20, %3259
  %3277 = trunc i64 %3276 to i32
  %3278 = xor i32 %3277, %3263
  %3279 = lshr i32 %3278, 4
  %3280 = trunc i32 %3279 to i8
  %3281 = and i8 %3280, 1
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3281, i8* %3282, align 1
  %3283 = icmp eq i32 %3263, 0
  %3284 = zext i1 %3283 to i8
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3284, i8* %3285, align 1
  %3286 = lshr i32 %3263, 31
  %3287 = trunc i32 %3286 to i8
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3287, i8* %3288, align 1
  %3289 = lshr i32 %3262, 31
  %3290 = xor i32 %3286, %3289
  %3291 = add i32 %3290, %3286
  %3292 = icmp eq i32 %3291, 2
  %3293 = zext i1 %3292 to i8
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3293, i8* %3294, align 1
  store %struct.Memory* %loadMem_414554, %struct.Memory** %MEMORY
  %loadMem_414557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 33
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %3297 to i64*
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 5
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %ECX.i634 = bitcast %union.anon* %3300 to i32*
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 7
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %RDX.i635 = bitcast %union.anon* %3303 to i64*
  %3304 = load i32, i32* %ECX.i634
  %3305 = zext i32 %3304 to i64
  %3306 = load i64, i64* %PC.i633
  %3307 = add i64 %3306, 3
  store i64 %3307, i64* %PC.i633
  %3308 = shl i64 %3305, 32
  %3309 = ashr exact i64 %3308, 32
  store i64 %3309, i64* %RDX.i635, align 8
  store %struct.Memory* %loadMem_414557, %struct.Memory** %MEMORY
  %loadMem_41455a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 33
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %3312 to i64*
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 7
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %RDX.i632 = bitcast %union.anon* %3315 to i64*
  %3316 = load i64, i64* %RDX.i632
  %3317 = mul i64 %3316, 4
  %3318 = add i64 %3317, 11187184
  %3319 = load i64, i64* %PC.i631
  %3320 = add i64 %3319, 8
  store i64 %3320, i64* %PC.i631
  %3321 = inttoptr i64 %3318 to i32*
  %3322 = load i32, i32* %3321
  %3323 = sext i32 %3322 to i64
  store i64 %3323, i64* %RDX.i632, align 8
  store %struct.Memory* %loadMem_41455a, %struct.Memory** %MEMORY
  %loadMem_414562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 33
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 7
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RDX.i630 = bitcast %union.anon* %3329 to i64*
  %3330 = load i64, i64* %RDX.i630
  %3331 = load i64, i64* %PC.i629
  %3332 = add i64 %3331, 7
  store i64 %3332, i64* %PC.i629
  %3333 = sext i64 %3330 to i128
  %3334 = and i128 %3333, -18446744073709551616
  %3335 = zext i64 %3330 to i128
  %3336 = or i128 %3334, %3335
  %3337 = mul i128 744, %3336
  %3338 = trunc i128 %3337 to i64
  store i64 %3338, i64* %RDX.i630, align 8
  %3339 = sext i64 %3338 to i128
  %3340 = icmp ne i128 %3339, %3337
  %3341 = zext i1 %3340 to i8
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3341, i8* %3342, align 1
  %3343 = trunc i128 %3337 to i32
  %3344 = and i32 %3343, 255
  %3345 = call i32 @llvm.ctpop.i32(i32 %3344)
  %3346 = trunc i32 %3345 to i8
  %3347 = and i8 %3346, 1
  %3348 = xor i8 %3347, 1
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3348, i8* %3349, align 1
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3350, align 1
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3351, align 1
  %3352 = lshr i64 %3338, 63
  %3353 = trunc i64 %3352 to i8
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3353, i8* %3354, align 1
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3341, i8* %3355, align 1
  store %struct.Memory* %loadMem_414562, %struct.Memory** %MEMORY
  %loadMem_414569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 33
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %3358 to i64*
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 1
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %RAX.i627 = bitcast %union.anon* %3361 to i64*
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 7
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %RDX.i628 = bitcast %union.anon* %3364 to i64*
  %3365 = load i64, i64* %RAX.i627
  %3366 = load i64, i64* %RDX.i628
  %3367 = load i64, i64* %PC.i626
  %3368 = add i64 %3367, 3
  store i64 %3368, i64* %PC.i626
  %3369 = add i64 %3366, %3365
  store i64 %3369, i64* %RAX.i627, align 8
  %3370 = icmp ult i64 %3369, %3365
  %3371 = icmp ult i64 %3369, %3366
  %3372 = or i1 %3370, %3371
  %3373 = zext i1 %3372 to i8
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3373, i8* %3374, align 1
  %3375 = trunc i64 %3369 to i32
  %3376 = and i32 %3375, 255
  %3377 = call i32 @llvm.ctpop.i32(i32 %3376)
  %3378 = trunc i32 %3377 to i8
  %3379 = and i8 %3378, 1
  %3380 = xor i8 %3379, 1
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3380, i8* %3381, align 1
  %3382 = xor i64 %3366, %3365
  %3383 = xor i64 %3382, %3369
  %3384 = lshr i64 %3383, 4
  %3385 = trunc i64 %3384 to i8
  %3386 = and i8 %3385, 1
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3386, i8* %3387, align 1
  %3388 = icmp eq i64 %3369, 0
  %3389 = zext i1 %3388 to i8
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3389, i8* %3390, align 1
  %3391 = lshr i64 %3369, 63
  %3392 = trunc i64 %3391 to i8
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3392, i8* %3393, align 1
  %3394 = lshr i64 %3365, 63
  %3395 = lshr i64 %3366, 63
  %3396 = xor i64 %3391, %3394
  %3397 = xor i64 %3391, %3395
  %3398 = add i64 %3396, %3397
  %3399 = icmp eq i64 %3398, 2
  %3400 = zext i1 %3399 to i8
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3400, i8* %3401, align 1
  store %struct.Memory* %loadMem_414569, %struct.Memory** %MEMORY
  %loadMem_41456c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 33
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %3404 to i64*
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 1
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %RAX.i624 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 5
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RCX.i625 = bitcast %union.anon* %3410 to i64*
  %3411 = load i64, i64* %RAX.i624
  %3412 = add i64 %3411, 740
  %3413 = load i64, i64* %PC.i623
  %3414 = add i64 %3413, 6
  store i64 %3414, i64* %PC.i623
  %3415 = inttoptr i64 %3412 to i32*
  %3416 = load i32, i32* %3415
  %3417 = zext i32 %3416 to i64
  store i64 %3417, i64* %RCX.i625, align 8
  store %struct.Memory* %loadMem_41456c, %struct.Memory** %MEMORY
  %loadMem_414572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 5
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %ECX.i622 = bitcast %union.anon* %3423 to i32*
  %3424 = load i32, i32* %ECX.i622
  %3425 = zext i32 %3424 to i64
  %3426 = load i64, i64* %PC.i621
  %3427 = add i64 %3426, 7
  store i64 %3427, i64* %PC.i621
  %3428 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %3429 = sub i32 %3424, %3428
  %3430 = icmp ult i32 %3424, %3428
  %3431 = zext i1 %3430 to i8
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3431, i8* %3432, align 1
  %3433 = and i32 %3429, 255
  %3434 = call i32 @llvm.ctpop.i32(i32 %3433)
  %3435 = trunc i32 %3434 to i8
  %3436 = and i8 %3435, 1
  %3437 = xor i8 %3436, 1
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3437, i8* %3438, align 1
  %3439 = xor i32 %3428, %3424
  %3440 = xor i32 %3439, %3429
  %3441 = lshr i32 %3440, 4
  %3442 = trunc i32 %3441 to i8
  %3443 = and i8 %3442, 1
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3443, i8* %3444, align 1
  %3445 = icmp eq i32 %3429, 0
  %3446 = zext i1 %3445 to i8
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3446, i8* %3447, align 1
  %3448 = lshr i32 %3429, 31
  %3449 = trunc i32 %3448 to i8
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3449, i8* %3450, align 1
  %3451 = lshr i32 %3424, 31
  %3452 = lshr i32 %3428, 31
  %3453 = xor i32 %3452, %3451
  %3454 = xor i32 %3448, %3451
  %3455 = add i32 %3454, %3453
  %3456 = icmp eq i32 %3455, 2
  %3457 = zext i1 %3456 to i8
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3457, i8* %3458, align 1
  store %struct.Memory* %loadMem_414572, %struct.Memory** %MEMORY
  %loadMem_414579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 33
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %3461 to i64*
  %3462 = load i64, i64* %PC.i620
  %3463 = add i64 %3462, 65
  %3464 = load i64, i64* %PC.i620
  %3465 = add i64 %3464, 6
  %3466 = load i64, i64* %PC.i620
  %3467 = add i64 %3466, 6
  store i64 %3467, i64* %PC.i620
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3469 = load i8, i8* %3468, align 1
  store i8 %3469, i8* %BRANCH_TAKEN, align 1
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3471 = icmp ne i8 %3469, 0
  %3472 = select i1 %3471, i64 %3463, i64 %3465
  store i64 %3472, i64* %3470, align 8
  store %struct.Memory* %loadMem_414579, %struct.Memory** %MEMORY
  %loadBr_414579 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414579 = icmp eq i8 %loadBr_414579, 1
  br i1 %cmpBr_414579, label %block_.L_4145ba, label %block_41457f

block_41457f:                                     ; preds = %block_414547
  %loadMem_41457f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3474 = getelementptr inbounds %struct.GPR, %struct.GPR* %3473, i32 0, i32 33
  %3475 = getelementptr inbounds %struct.Reg, %struct.Reg* %3474, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %3475 to i64*
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 1
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %RAX.i619 = bitcast %union.anon* %3478 to i64*
  %3479 = load i64, i64* %PC.i618
  %3480 = add i64 %3479, 10
  store i64 %3480, i64* %PC.i618
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i619, align 8
  store %struct.Memory* %loadMem_41457f, %struct.Memory** %MEMORY
  %loadMem_414589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 33
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %3483 to i64*
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 5
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %RCX.i616 = bitcast %union.anon* %3486 to i64*
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 15
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %3489 to i64*
  %3490 = load i64, i64* %RBP.i617
  %3491 = sub i64 %3490, 24
  %3492 = load i64, i64* %PC.i615
  %3493 = add i64 %3492, 3
  store i64 %3493, i64* %PC.i615
  %3494 = inttoptr i64 %3491 to i32*
  %3495 = load i32, i32* %3494
  %3496 = zext i32 %3495 to i64
  store i64 %3496, i64* %RCX.i616, align 8
  store %struct.Memory* %loadMem_414589, %struct.Memory** %MEMORY
  %loadMem_41458c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 33
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %3499 to i64*
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3501 = getelementptr inbounds %struct.GPR, %struct.GPR* %3500, i32 0, i32 5
  %3502 = getelementptr inbounds %struct.Reg, %struct.Reg* %3501, i32 0, i32 0
  %RCX.i614 = bitcast %union.anon* %3502 to i64*
  %3503 = load i64, i64* %RCX.i614
  %3504 = load i64, i64* %PC.i613
  %3505 = add i64 %3504, 3
  store i64 %3505, i64* %PC.i613
  %3506 = trunc i64 %3503 to i32
  %3507 = add i32 1, %3506
  %3508 = zext i32 %3507 to i64
  store i64 %3508, i64* %RCX.i614, align 8
  %3509 = icmp ult i32 %3507, %3506
  %3510 = icmp ult i32 %3507, 1
  %3511 = or i1 %3509, %3510
  %3512 = zext i1 %3511 to i8
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3512, i8* %3513, align 1
  %3514 = and i32 %3507, 255
  %3515 = call i32 @llvm.ctpop.i32(i32 %3514)
  %3516 = trunc i32 %3515 to i8
  %3517 = and i8 %3516, 1
  %3518 = xor i8 %3517, 1
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3518, i8* %3519, align 1
  %3520 = xor i64 1, %3503
  %3521 = trunc i64 %3520 to i32
  %3522 = xor i32 %3521, %3507
  %3523 = lshr i32 %3522, 4
  %3524 = trunc i32 %3523 to i8
  %3525 = and i8 %3524, 1
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3525, i8* %3526, align 1
  %3527 = icmp eq i32 %3507, 0
  %3528 = zext i1 %3527 to i8
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3528, i8* %3529, align 1
  %3530 = lshr i32 %3507, 31
  %3531 = trunc i32 %3530 to i8
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3531, i8* %3532, align 1
  %3533 = lshr i32 %3506, 31
  %3534 = xor i32 %3530, %3533
  %3535 = add i32 %3534, %3530
  %3536 = icmp eq i32 %3535, 2
  %3537 = zext i1 %3536 to i8
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3537, i8* %3538, align 1
  store %struct.Memory* %loadMem_41458c, %struct.Memory** %MEMORY
  %loadMem_41458f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 33
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %3541 to i64*
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 5
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %ECX.i611 = bitcast %union.anon* %3544 to i32*
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3546 = getelementptr inbounds %struct.GPR, %struct.GPR* %3545, i32 0, i32 15
  %3547 = getelementptr inbounds %struct.Reg, %struct.Reg* %3546, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %3547 to i64*
  %3548 = load i64, i64* %RBP.i612
  %3549 = sub i64 %3548, 24
  %3550 = load i32, i32* %ECX.i611
  %3551 = zext i32 %3550 to i64
  %3552 = load i64, i64* %PC.i610
  %3553 = add i64 %3552, 3
  store i64 %3553, i64* %PC.i610
  %3554 = inttoptr i64 %3549 to i32*
  store i32 %3550, i32* %3554
  store %struct.Memory* %loadMem_41458f, %struct.Memory** %MEMORY
  %loadMem_414592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 33
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %3557 to i64*
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 5
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %RCX.i609 = bitcast %union.anon* %3560 to i64*
  %3561 = load i64, i64* %PC.i608
  %3562 = add i64 %3561, 7
  store i64 %3562, i64* %PC.i608
  %3563 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %3564 = zext i32 %3563 to i64
  store i64 %3564, i64* %RCX.i609, align 8
  store %struct.Memory* %loadMem_414592, %struct.Memory** %MEMORY
  %loadMem_414599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 7
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %RDX.i606 = bitcast %union.anon* %3570 to i64*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 15
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RBP.i607 = bitcast %union.anon* %3573 to i64*
  %3574 = load i64, i64* %RBP.i607
  %3575 = sub i64 %3574, 8
  %3576 = load i64, i64* %PC.i605
  %3577 = add i64 %3576, 3
  store i64 %3577, i64* %PC.i605
  %3578 = inttoptr i64 %3575 to i32*
  %3579 = load i32, i32* %3578
  %3580 = zext i32 %3579 to i64
  store i64 %3580, i64* %RDX.i606, align 8
  store %struct.Memory* %loadMem_414599, %struct.Memory** %MEMORY
  %loadMem_41459c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 33
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %3583 to i64*
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 7
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %RDX.i604 = bitcast %union.anon* %3586 to i64*
  %3587 = load i64, i64* %RDX.i604
  %3588 = load i64, i64* %PC.i603
  %3589 = add i64 %3588, 3
  store i64 %3589, i64* %PC.i603
  %3590 = trunc i64 %3587 to i32
  %3591 = add i32 20, %3590
  %3592 = zext i32 %3591 to i64
  store i64 %3592, i64* %RDX.i604, align 8
  %3593 = icmp ult i32 %3591, %3590
  %3594 = icmp ult i32 %3591, 20
  %3595 = or i1 %3593, %3594
  %3596 = zext i1 %3595 to i8
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3596, i8* %3597, align 1
  %3598 = and i32 %3591, 255
  %3599 = call i32 @llvm.ctpop.i32(i32 %3598)
  %3600 = trunc i32 %3599 to i8
  %3601 = and i8 %3600, 1
  %3602 = xor i8 %3601, 1
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3602, i8* %3603, align 1
  %3604 = xor i64 20, %3587
  %3605 = trunc i64 %3604 to i32
  %3606 = xor i32 %3605, %3591
  %3607 = lshr i32 %3606, 4
  %3608 = trunc i32 %3607 to i8
  %3609 = and i8 %3608, 1
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3609, i8* %3610, align 1
  %3611 = icmp eq i32 %3591, 0
  %3612 = zext i1 %3611 to i8
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3612, i8* %3613, align 1
  %3614 = lshr i32 %3591, 31
  %3615 = trunc i32 %3614 to i8
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3615, i8* %3616, align 1
  %3617 = lshr i32 %3590, 31
  %3618 = xor i32 %3614, %3617
  %3619 = add i32 %3618, %3614
  %3620 = icmp eq i32 %3619, 2
  %3621 = zext i1 %3620 to i8
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3621, i8* %3622, align 1
  store %struct.Memory* %loadMem_41459c, %struct.Memory** %MEMORY
  %loadMem_41459f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 33
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %3625 to i64*
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 7
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %EDX.i601 = bitcast %union.anon* %3628 to i32*
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 9
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %RSI.i602 = bitcast %union.anon* %3631 to i64*
  %3632 = load i32, i32* %EDX.i601
  %3633 = zext i32 %3632 to i64
  %3634 = load i64, i64* %PC.i600
  %3635 = add i64 %3634, 3
  store i64 %3635, i64* %PC.i600
  %3636 = shl i64 %3633, 32
  %3637 = ashr exact i64 %3636, 32
  store i64 %3637, i64* %RSI.i602, align 8
  store %struct.Memory* %loadMem_41459f, %struct.Memory** %MEMORY
  %loadMem_4145a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3639 = getelementptr inbounds %struct.GPR, %struct.GPR* %3638, i32 0, i32 33
  %3640 = getelementptr inbounds %struct.Reg, %struct.Reg* %3639, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %3640 to i64*
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3642 = getelementptr inbounds %struct.GPR, %struct.GPR* %3641, i32 0, i32 9
  %3643 = getelementptr inbounds %struct.Reg, %struct.Reg* %3642, i32 0, i32 0
  %RSI.i599 = bitcast %union.anon* %3643 to i64*
  %3644 = load i64, i64* %RSI.i599
  %3645 = mul i64 %3644, 4
  %3646 = add i64 %3645, 11187184
  %3647 = load i64, i64* %PC.i598
  %3648 = add i64 %3647, 8
  store i64 %3648, i64* %PC.i598
  %3649 = inttoptr i64 %3646 to i32*
  %3650 = load i32, i32* %3649
  %3651 = sext i32 %3650 to i64
  store i64 %3651, i64* %RSI.i599, align 8
  store %struct.Memory* %loadMem_4145a2, %struct.Memory** %MEMORY
  %loadMem_4145aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 33
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %3654 to i64*
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3656 = getelementptr inbounds %struct.GPR, %struct.GPR* %3655, i32 0, i32 9
  %3657 = getelementptr inbounds %struct.Reg, %struct.Reg* %3656, i32 0, i32 0
  %RSI.i597 = bitcast %union.anon* %3657 to i64*
  %3658 = load i64, i64* %RSI.i597
  %3659 = load i64, i64* %PC.i596
  %3660 = add i64 %3659, 7
  store i64 %3660, i64* %PC.i596
  %3661 = sext i64 %3658 to i128
  %3662 = and i128 %3661, -18446744073709551616
  %3663 = zext i64 %3658 to i128
  %3664 = or i128 %3662, %3663
  %3665 = mul i128 744, %3664
  %3666 = trunc i128 %3665 to i64
  store i64 %3666, i64* %RSI.i597, align 8
  %3667 = sext i64 %3666 to i128
  %3668 = icmp ne i128 %3667, %3665
  %3669 = zext i1 %3668 to i8
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3669, i8* %3670, align 1
  %3671 = trunc i128 %3665 to i32
  %3672 = and i32 %3671, 255
  %3673 = call i32 @llvm.ctpop.i32(i32 %3672)
  %3674 = trunc i32 %3673 to i8
  %3675 = and i8 %3674, 1
  %3676 = xor i8 %3675, 1
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3676, i8* %3677, align 1
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3678, align 1
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3679, align 1
  %3680 = lshr i64 %3666, 63
  %3681 = trunc i64 %3680 to i8
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3681, i8* %3682, align 1
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3669, i8* %3683, align 1
  store %struct.Memory* %loadMem_4145aa, %struct.Memory** %MEMORY
  %loadMem_4145b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 33
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %3686 to i64*
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 1
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %RAX.i594 = bitcast %union.anon* %3689 to i64*
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 9
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %RSI.i595 = bitcast %union.anon* %3692 to i64*
  %3693 = load i64, i64* %RAX.i594
  %3694 = load i64, i64* %RSI.i595
  %3695 = load i64, i64* %PC.i593
  %3696 = add i64 %3695, 3
  store i64 %3696, i64* %PC.i593
  %3697 = add i64 %3694, %3693
  store i64 %3697, i64* %RAX.i594, align 8
  %3698 = icmp ult i64 %3697, %3693
  %3699 = icmp ult i64 %3697, %3694
  %3700 = or i1 %3698, %3699
  %3701 = zext i1 %3700 to i8
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3701, i8* %3702, align 1
  %3703 = trunc i64 %3697 to i32
  %3704 = and i32 %3703, 255
  %3705 = call i32 @llvm.ctpop.i32(i32 %3704)
  %3706 = trunc i32 %3705 to i8
  %3707 = and i8 %3706, 1
  %3708 = xor i8 %3707, 1
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3708, i8* %3709, align 1
  %3710 = xor i64 %3694, %3693
  %3711 = xor i64 %3710, %3697
  %3712 = lshr i64 %3711, 4
  %3713 = trunc i64 %3712 to i8
  %3714 = and i8 %3713, 1
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3714, i8* %3715, align 1
  %3716 = icmp eq i64 %3697, 0
  %3717 = zext i1 %3716 to i8
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3717, i8* %3718, align 1
  %3719 = lshr i64 %3697, 63
  %3720 = trunc i64 %3719 to i8
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3720, i8* %3721, align 1
  %3722 = lshr i64 %3693, 63
  %3723 = lshr i64 %3694, 63
  %3724 = xor i64 %3719, %3722
  %3725 = xor i64 %3719, %3723
  %3726 = add i64 %3724, %3725
  %3727 = icmp eq i64 %3726, 2
  %3728 = zext i1 %3727 to i8
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3728, i8* %3729, align 1
  store %struct.Memory* %loadMem_4145b1, %struct.Memory** %MEMORY
  %loadMem_4145b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 33
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %3732 to i64*
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3734 = getelementptr inbounds %struct.GPR, %struct.GPR* %3733, i32 0, i32 5
  %3735 = getelementptr inbounds %struct.Reg, %struct.Reg* %3734, i32 0, i32 0
  %ECX.i591 = bitcast %union.anon* %3735 to i32*
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3737 = getelementptr inbounds %struct.GPR, %struct.GPR* %3736, i32 0, i32 1
  %3738 = getelementptr inbounds %struct.Reg, %struct.Reg* %3737, i32 0, i32 0
  %RAX.i592 = bitcast %union.anon* %3738 to i64*
  %3739 = load i64, i64* %RAX.i592
  %3740 = add i64 %3739, 740
  %3741 = load i32, i32* %ECX.i591
  %3742 = zext i32 %3741 to i64
  %3743 = load i64, i64* %PC.i590
  %3744 = add i64 %3743, 6
  store i64 %3744, i64* %PC.i590
  %3745 = inttoptr i64 %3740 to i32*
  store i32 %3741, i32* %3745
  store %struct.Memory* %loadMem_4145b4, %struct.Memory** %MEMORY
  br label %block_.L_4145ba

block_.L_4145ba:                                  ; preds = %block_41457f, %block_414547, %block_414518, %block_.L_4144fe
  %loadMem_4145ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 33
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %3748 to i64*
  %3749 = load i64, i64* %PC.i589
  %3750 = add i64 %3749, 5
  %3751 = load i64, i64* %PC.i589
  %3752 = add i64 %3751, 5
  store i64 %3752, i64* %PC.i589
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3750, i64* %3753, align 8
  store %struct.Memory* %loadMem_4145ba, %struct.Memory** %MEMORY
  br label %block_.L_4145bf

block_.L_4145bf:                                  ; preds = %block_.L_4145ba, %block_.L_4144f9
  %loadMem_4145bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 33
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %3756 to i64*
  %3757 = load i64, i64* %PC.i588
  %3758 = add i64 %3757, 5
  %3759 = load i64, i64* %PC.i588
  %3760 = add i64 %3759, 5
  store i64 %3760, i64* %PC.i588
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3758, i64* %3761, align 8
  store %struct.Memory* %loadMem_4145bf, %struct.Memory** %MEMORY
  br label %block_.L_4145c4

block_.L_4145c4:                                  ; preds = %block_.L_4145bf, %block_41445e
  %loadMem_4145c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3763 = getelementptr inbounds %struct.GPR, %struct.GPR* %3762, i32 0, i32 33
  %3764 = getelementptr inbounds %struct.Reg, %struct.Reg* %3763, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %3764 to i64*
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 1
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %RAX.i586 = bitcast %union.anon* %3767 to i64*
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 15
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %RBP.i587 = bitcast %union.anon* %3770 to i64*
  %3771 = load i64, i64* %RBP.i587
  %3772 = sub i64 %3771, 8
  %3773 = load i64, i64* %PC.i585
  %3774 = add i64 %3773, 3
  store i64 %3774, i64* %PC.i585
  %3775 = inttoptr i64 %3772 to i32*
  %3776 = load i32, i32* %3775
  %3777 = zext i32 %3776 to i64
  store i64 %3777, i64* %RAX.i586, align 8
  store %struct.Memory* %loadMem_4145c4, %struct.Memory** %MEMORY
  %loadMem_4145c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 33
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %3780 to i64*
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 1
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %3783 to i64*
  %3784 = load i64, i64* %RAX.i584
  %3785 = load i64, i64* %PC.i583
  %3786 = add i64 %3785, 3
  store i64 %3786, i64* %PC.i583
  %3787 = trunc i64 %3784 to i32
  %3788 = sub i32 %3787, 1
  %3789 = zext i32 %3788 to i64
  store i64 %3789, i64* %RAX.i584, align 8
  %3790 = icmp ult i32 %3787, 1
  %3791 = zext i1 %3790 to i8
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3791, i8* %3792, align 1
  %3793 = and i32 %3788, 255
  %3794 = call i32 @llvm.ctpop.i32(i32 %3793)
  %3795 = trunc i32 %3794 to i8
  %3796 = and i8 %3795, 1
  %3797 = xor i8 %3796, 1
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3797, i8* %3798, align 1
  %3799 = xor i64 1, %3784
  %3800 = trunc i64 %3799 to i32
  %3801 = xor i32 %3800, %3788
  %3802 = lshr i32 %3801, 4
  %3803 = trunc i32 %3802 to i8
  %3804 = and i8 %3803, 1
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3804, i8* %3805, align 1
  %3806 = icmp eq i32 %3788, 0
  %3807 = zext i1 %3806 to i8
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3807, i8* %3808, align 1
  %3809 = lshr i32 %3788, 31
  %3810 = trunc i32 %3809 to i8
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3810, i8* %3811, align 1
  %3812 = lshr i32 %3787, 31
  %3813 = xor i32 %3809, %3812
  %3814 = add i32 %3813, %3812
  %3815 = icmp eq i32 %3814, 2
  %3816 = zext i1 %3815 to i8
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3816, i8* %3817, align 1
  store %struct.Memory* %loadMem_4145c7, %struct.Memory** %MEMORY
  %loadMem_4145ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3819 = getelementptr inbounds %struct.GPR, %struct.GPR* %3818, i32 0, i32 33
  %3820 = getelementptr inbounds %struct.Reg, %struct.Reg* %3819, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %3820 to i64*
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3822 = getelementptr inbounds %struct.GPR, %struct.GPR* %3821, i32 0, i32 1
  %3823 = getelementptr inbounds %struct.Reg, %struct.Reg* %3822, i32 0, i32 0
  %EAX.i581 = bitcast %union.anon* %3823 to i32*
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3825 = getelementptr inbounds %struct.GPR, %struct.GPR* %3824, i32 0, i32 5
  %3826 = getelementptr inbounds %struct.Reg, %struct.Reg* %3825, i32 0, i32 0
  %RCX.i582 = bitcast %union.anon* %3826 to i64*
  %3827 = load i32, i32* %EAX.i581
  %3828 = zext i32 %3827 to i64
  %3829 = load i64, i64* %PC.i580
  %3830 = add i64 %3829, 3
  store i64 %3830, i64* %PC.i580
  %3831 = shl i64 %3828, 32
  %3832 = ashr exact i64 %3831, 32
  store i64 %3832, i64* %RCX.i582, align 8
  store %struct.Memory* %loadMem_4145ca, %struct.Memory** %MEMORY
  %loadMem_4145cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 33
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %3835 to i64*
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 1
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %3838 to i64*
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 5
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %RCX.i579 = bitcast %union.anon* %3841 to i64*
  %3842 = load i64, i64* %RCX.i579
  %3843 = add i64 %3842, 12099168
  %3844 = load i64, i64* %PC.i577
  %3845 = add i64 %3844, 8
  store i64 %3845, i64* %PC.i577
  %3846 = inttoptr i64 %3843 to i8*
  %3847 = load i8, i8* %3846
  %3848 = zext i8 %3847 to i64
  store i64 %3848, i64* %RAX.i578, align 8
  store %struct.Memory* %loadMem_4145cd, %struct.Memory** %MEMORY
  %loadMem_4145d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 33
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3851 to i64*
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 1
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %EAX.i576 = bitcast %union.anon* %3854 to i32*
  %3855 = load i32, i32* %EAX.i576
  %3856 = zext i32 %3855 to i64
  %3857 = load i64, i64* %PC.i575
  %3858 = add i64 %3857, 3
  store i64 %3858, i64* %PC.i575
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3859, align 1
  %3860 = and i32 %3855, 255
  %3861 = call i32 @llvm.ctpop.i32(i32 %3860)
  %3862 = trunc i32 %3861 to i8
  %3863 = and i8 %3862, 1
  %3864 = xor i8 %3863, 1
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3864, i8* %3865, align 1
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3866, align 1
  %3867 = icmp eq i32 %3855, 0
  %3868 = zext i1 %3867 to i8
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3868, i8* %3869, align 1
  %3870 = lshr i32 %3855, 31
  %3871 = trunc i32 %3870 to i8
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3871, i8* %3872, align 1
  %3873 = lshr i32 %3855, 31
  %3874 = xor i32 %3870, %3873
  %3875 = add i32 %3874, %3873
  %3876 = icmp eq i32 %3875, 2
  %3877 = zext i1 %3876 to i8
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3877, i8* %3878, align 1
  store %struct.Memory* %loadMem_4145d5, %struct.Memory** %MEMORY
  %loadMem_4145d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 33
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %3881 to i64*
  %3882 = load i64, i64* %PC.i574
  %3883 = add i64 %3882, 20
  %3884 = load i64, i64* %PC.i574
  %3885 = add i64 %3884, 6
  %3886 = load i64, i64* %PC.i574
  %3887 = add i64 %3886, 6
  store i64 %3887, i64* %PC.i574
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3889 = load i8, i8* %3888, align 1
  %3890 = icmp eq i8 %3889, 0
  %3891 = zext i1 %3890 to i8
  store i8 %3891, i8* %BRANCH_TAKEN, align 1
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3893 = select i1 %3890, i64 %3883, i64 %3885
  store i64 %3893, i64* %3892, align 8
  store %struct.Memory* %loadMem_4145d8, %struct.Memory** %MEMORY
  %loadBr_4145d8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4145d8 = icmp eq i8 %loadBr_4145d8, 1
  br i1 %cmpBr_4145d8, label %block_.L_4145ec, label %block_4145de

block_4145de:                                     ; preds = %block_.L_4145c4
  %loadMem_4145de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 33
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %3896 to i64*
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3898 = getelementptr inbounds %struct.GPR, %struct.GPR* %3897, i32 0, i32 1
  %3899 = getelementptr inbounds %struct.Reg, %struct.Reg* %3898, i32 0, i32 0
  %RAX.i572 = bitcast %union.anon* %3899 to i64*
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3901 = getelementptr inbounds %struct.GPR, %struct.GPR* %3900, i32 0, i32 15
  %3902 = getelementptr inbounds %struct.Reg, %struct.Reg* %3901, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %3902 to i64*
  %3903 = load i64, i64* %RBP.i573
  %3904 = sub i64 %3903, 20
  %3905 = load i64, i64* %PC.i571
  %3906 = add i64 %3905, 3
  store i64 %3906, i64* %PC.i571
  %3907 = inttoptr i64 %3904 to i32*
  %3908 = load i32, i32* %3907
  %3909 = zext i32 %3908 to i64
  store i64 %3909, i64* %RAX.i572, align 8
  store %struct.Memory* %loadMem_4145de, %struct.Memory** %MEMORY
  %loadMem_4145e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 33
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %3912 to i64*
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3914 = getelementptr inbounds %struct.GPR, %struct.GPR* %3913, i32 0, i32 1
  %3915 = getelementptr inbounds %struct.Reg, %struct.Reg* %3914, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %3915 to i64*
  %3916 = load i64, i64* %RAX.i570
  %3917 = load i64, i64* %PC.i569
  %3918 = add i64 %3917, 3
  store i64 %3918, i64* %PC.i569
  %3919 = trunc i64 %3916 to i32
  %3920 = add i32 1, %3919
  %3921 = zext i32 %3920 to i64
  store i64 %3921, i64* %RAX.i570, align 8
  %3922 = icmp ult i32 %3920, %3919
  %3923 = icmp ult i32 %3920, 1
  %3924 = or i1 %3922, %3923
  %3925 = zext i1 %3924 to i8
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3925, i8* %3926, align 1
  %3927 = and i32 %3920, 255
  %3928 = call i32 @llvm.ctpop.i32(i32 %3927)
  %3929 = trunc i32 %3928 to i8
  %3930 = and i8 %3929, 1
  %3931 = xor i8 %3930, 1
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3931, i8* %3932, align 1
  %3933 = xor i64 1, %3916
  %3934 = trunc i64 %3933 to i32
  %3935 = xor i32 %3934, %3920
  %3936 = lshr i32 %3935, 4
  %3937 = trunc i32 %3936 to i8
  %3938 = and i8 %3937, 1
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3938, i8* %3939, align 1
  %3940 = icmp eq i32 %3920, 0
  %3941 = zext i1 %3940 to i8
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3941, i8* %3942, align 1
  %3943 = lshr i32 %3920, 31
  %3944 = trunc i32 %3943 to i8
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3944, i8* %3945, align 1
  %3946 = lshr i32 %3919, 31
  %3947 = xor i32 %3943, %3946
  %3948 = add i32 %3947, %3943
  %3949 = icmp eq i32 %3948, 2
  %3950 = zext i1 %3949 to i8
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3950, i8* %3951, align 1
  store %struct.Memory* %loadMem_4145e1, %struct.Memory** %MEMORY
  %loadMem_4145e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 33
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %3954 to i64*
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 1
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %EAX.i567 = bitcast %union.anon* %3957 to i32*
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 15
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %3960 to i64*
  %3961 = load i64, i64* %RBP.i568
  %3962 = sub i64 %3961, 20
  %3963 = load i32, i32* %EAX.i567
  %3964 = zext i32 %3963 to i64
  %3965 = load i64, i64* %PC.i566
  %3966 = add i64 %3965, 3
  store i64 %3966, i64* %PC.i566
  %3967 = inttoptr i64 %3962 to i32*
  store i32 %3963, i32* %3967
  store %struct.Memory* %loadMem_4145e4, %struct.Memory** %MEMORY
  %loadMem_4145e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 33
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %3970 to i64*
  %3971 = load i64, i64* %PC.i565
  %3972 = add i64 %3971, 349
  %3973 = load i64, i64* %PC.i565
  %3974 = add i64 %3973, 5
  store i64 %3974, i64* %PC.i565
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3972, i64* %3975, align 8
  store %struct.Memory* %loadMem_4145e7, %struct.Memory** %MEMORY
  br label %block_.L_414744

block_.L_4145ec:                                  ; preds = %block_.L_4145c4
  %loadMem_4145ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3977 = getelementptr inbounds %struct.GPR, %struct.GPR* %3976, i32 0, i32 33
  %3978 = getelementptr inbounds %struct.Reg, %struct.Reg* %3977, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %3978 to i64*
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 1
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %RAX.i563 = bitcast %union.anon* %3981 to i64*
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 15
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %RBP.i564 = bitcast %union.anon* %3984 to i64*
  %3985 = load i64, i64* %RBP.i564
  %3986 = sub i64 %3985, 8
  %3987 = load i64, i64* %PC.i562
  %3988 = add i64 %3987, 3
  store i64 %3988, i64* %PC.i562
  %3989 = inttoptr i64 %3986 to i32*
  %3990 = load i32, i32* %3989
  %3991 = zext i32 %3990 to i64
  store i64 %3991, i64* %RAX.i563, align 8
  store %struct.Memory* %loadMem_4145ec, %struct.Memory** %MEMORY
  %loadMem_4145ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 33
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %3994 to i64*
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3996 = getelementptr inbounds %struct.GPR, %struct.GPR* %3995, i32 0, i32 1
  %3997 = getelementptr inbounds %struct.Reg, %struct.Reg* %3996, i32 0, i32 0
  %RAX.i561 = bitcast %union.anon* %3997 to i64*
  %3998 = load i64, i64* %RAX.i561
  %3999 = load i64, i64* %PC.i560
  %4000 = add i64 %3999, 3
  store i64 %4000, i64* %PC.i560
  %4001 = trunc i64 %3998 to i32
  %4002 = sub i32 %4001, 1
  %4003 = zext i32 %4002 to i64
  store i64 %4003, i64* %RAX.i561, align 8
  %4004 = icmp ult i32 %4001, 1
  %4005 = zext i1 %4004 to i8
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4005, i8* %4006, align 1
  %4007 = and i32 %4002, 255
  %4008 = call i32 @llvm.ctpop.i32(i32 %4007)
  %4009 = trunc i32 %4008 to i8
  %4010 = and i8 %4009, 1
  %4011 = xor i8 %4010, 1
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4011, i8* %4012, align 1
  %4013 = xor i64 1, %3998
  %4014 = trunc i64 %4013 to i32
  %4015 = xor i32 %4014, %4002
  %4016 = lshr i32 %4015, 4
  %4017 = trunc i32 %4016 to i8
  %4018 = and i8 %4017, 1
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4018, i8* %4019, align 1
  %4020 = icmp eq i32 %4002, 0
  %4021 = zext i1 %4020 to i8
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4021, i8* %4022, align 1
  %4023 = lshr i32 %4002, 31
  %4024 = trunc i32 %4023 to i8
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4024, i8* %4025, align 1
  %4026 = lshr i32 %4001, 31
  %4027 = xor i32 %4023, %4026
  %4028 = add i32 %4027, %4026
  %4029 = icmp eq i32 %4028, 2
  %4030 = zext i1 %4029 to i8
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4030, i8* %4031, align 1
  store %struct.Memory* %loadMem_4145ef, %struct.Memory** %MEMORY
  %loadMem_4145f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4033 = getelementptr inbounds %struct.GPR, %struct.GPR* %4032, i32 0, i32 33
  %4034 = getelementptr inbounds %struct.Reg, %struct.Reg* %4033, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %4034 to i64*
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4036 = getelementptr inbounds %struct.GPR, %struct.GPR* %4035, i32 0, i32 1
  %4037 = getelementptr inbounds %struct.Reg, %struct.Reg* %4036, i32 0, i32 0
  %EAX.i558 = bitcast %union.anon* %4037 to i32*
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 5
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %4040 to i64*
  %4041 = load i32, i32* %EAX.i558
  %4042 = zext i32 %4041 to i64
  %4043 = load i64, i64* %PC.i557
  %4044 = add i64 %4043, 3
  store i64 %4044, i64* %PC.i557
  %4045 = shl i64 %4042, 32
  %4046 = ashr exact i64 %4045, 32
  store i64 %4046, i64* %RCX.i559, align 8
  store %struct.Memory* %loadMem_4145f2, %struct.Memory** %MEMORY
  %loadMem_4145f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 33
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %4049 to i64*
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 1
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %4052 to i64*
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4054 = getelementptr inbounds %struct.GPR, %struct.GPR* %4053, i32 0, i32 5
  %4055 = getelementptr inbounds %struct.Reg, %struct.Reg* %4054, i32 0, i32 0
  %RCX.i556 = bitcast %union.anon* %4055 to i64*
  %4056 = load i64, i64* %RCX.i556
  %4057 = add i64 %4056, 12099168
  %4058 = load i64, i64* %PC.i554
  %4059 = add i64 %4058, 8
  store i64 %4059, i64* %PC.i554
  %4060 = inttoptr i64 %4057 to i8*
  %4061 = load i8, i8* %4060
  %4062 = zext i8 %4061 to i64
  store i64 %4062, i64* %RAX.i555, align 8
  store %struct.Memory* %loadMem_4145f5, %struct.Memory** %MEMORY
  %loadMem_4145fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4064 = getelementptr inbounds %struct.GPR, %struct.GPR* %4063, i32 0, i32 33
  %4065 = getelementptr inbounds %struct.Reg, %struct.Reg* %4064, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %4065 to i64*
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4067 = getelementptr inbounds %struct.GPR, %struct.GPR* %4066, i32 0, i32 1
  %4068 = getelementptr inbounds %struct.Reg, %struct.Reg* %4067, i32 0, i32 0
  %EAX.i552 = bitcast %union.anon* %4068 to i32*
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 15
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %4071 to i64*
  %4072 = load i32, i32* %EAX.i552
  %4073 = zext i32 %4072 to i64
  %4074 = load i64, i64* %RBP.i553
  %4075 = sub i64 %4074, 12
  %4076 = load i64, i64* %PC.i551
  %4077 = add i64 %4076, 3
  store i64 %4077, i64* %PC.i551
  %4078 = inttoptr i64 %4075 to i32*
  %4079 = load i32, i32* %4078
  %4080 = sub i32 %4072, %4079
  %4081 = icmp ult i32 %4072, %4079
  %4082 = zext i1 %4081 to i8
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4082, i8* %4083, align 1
  %4084 = and i32 %4080, 255
  %4085 = call i32 @llvm.ctpop.i32(i32 %4084)
  %4086 = trunc i32 %4085 to i8
  %4087 = and i8 %4086, 1
  %4088 = xor i8 %4087, 1
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4088, i8* %4089, align 1
  %4090 = xor i32 %4079, %4072
  %4091 = xor i32 %4090, %4080
  %4092 = lshr i32 %4091, 4
  %4093 = trunc i32 %4092 to i8
  %4094 = and i8 %4093, 1
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4094, i8* %4095, align 1
  %4096 = icmp eq i32 %4080, 0
  %4097 = zext i1 %4096 to i8
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4097, i8* %4098, align 1
  %4099 = lshr i32 %4080, 31
  %4100 = trunc i32 %4099 to i8
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4100, i8* %4101, align 1
  %4102 = lshr i32 %4072, 31
  %4103 = lshr i32 %4079, 31
  %4104 = xor i32 %4103, %4102
  %4105 = xor i32 %4099, %4102
  %4106 = add i32 %4105, %4104
  %4107 = icmp eq i32 %4106, 2
  %4108 = zext i1 %4107 to i8
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4108, i8* %4109, align 1
  store %struct.Memory* %loadMem_4145fd, %struct.Memory** %MEMORY
  %loadMem_414600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4111 = getelementptr inbounds %struct.GPR, %struct.GPR* %4110, i32 0, i32 33
  %4112 = getelementptr inbounds %struct.Reg, %struct.Reg* %4111, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %4112 to i64*
  %4113 = load i64, i64* %PC.i550
  %4114 = add i64 %4113, 126
  %4115 = load i64, i64* %PC.i550
  %4116 = add i64 %4115, 6
  %4117 = load i64, i64* %PC.i550
  %4118 = add i64 %4117, 6
  store i64 %4118, i64* %PC.i550
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4120 = load i8, i8* %4119, align 1
  %4121 = icmp eq i8 %4120, 0
  %4122 = zext i1 %4121 to i8
  store i8 %4122, i8* %BRANCH_TAKEN, align 1
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4124 = select i1 %4121, i64 %4114, i64 %4116
  store i64 %4124, i64* %4123, align 8
  store %struct.Memory* %loadMem_414600, %struct.Memory** %MEMORY
  %loadBr_414600 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414600 = icmp eq i8 %loadBr_414600, 1
  br i1 %cmpBr_414600, label %block_.L_41467e, label %block_414606

block_414606:                                     ; preds = %block_.L_4145ec
  %loadMem_414606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4126 = getelementptr inbounds %struct.GPR, %struct.GPR* %4125, i32 0, i32 33
  %4127 = getelementptr inbounds %struct.Reg, %struct.Reg* %4126, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %4127 to i64*
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 1
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %4130 to i64*
  %4131 = load i64, i64* %PC.i548
  %4132 = add i64 %4131, 10
  store i64 %4132, i64* %PC.i548
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i549, align 8
  store %struct.Memory* %loadMem_414606, %struct.Memory** %MEMORY
  %loadMem_414610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 33
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %4135 to i64*
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 5
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %RCX.i546 = bitcast %union.anon* %4138 to i64*
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 15
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %4141 to i64*
  %4142 = load i64, i64* %RBP.i547
  %4143 = sub i64 %4142, 8
  %4144 = load i64, i64* %PC.i545
  %4145 = add i64 %4144, 3
  store i64 %4145, i64* %PC.i545
  %4146 = inttoptr i64 %4143 to i32*
  %4147 = load i32, i32* %4146
  %4148 = zext i32 %4147 to i64
  store i64 %4148, i64* %RCX.i546, align 8
  store %struct.Memory* %loadMem_414610, %struct.Memory** %MEMORY
  %loadMem_414613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 33
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %4151 to i64*
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 5
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %RCX.i544 = bitcast %union.anon* %4154 to i64*
  %4155 = load i64, i64* %RCX.i544
  %4156 = load i64, i64* %PC.i543
  %4157 = add i64 %4156, 3
  store i64 %4157, i64* %PC.i543
  %4158 = trunc i64 %4155 to i32
  %4159 = sub i32 %4158, 1
  %4160 = zext i32 %4159 to i64
  store i64 %4160, i64* %RCX.i544, align 8
  %4161 = icmp ult i32 %4158, 1
  %4162 = zext i1 %4161 to i8
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4162, i8* %4163, align 1
  %4164 = and i32 %4159, 255
  %4165 = call i32 @llvm.ctpop.i32(i32 %4164)
  %4166 = trunc i32 %4165 to i8
  %4167 = and i8 %4166, 1
  %4168 = xor i8 %4167, 1
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4168, i8* %4169, align 1
  %4170 = xor i64 1, %4155
  %4171 = trunc i64 %4170 to i32
  %4172 = xor i32 %4171, %4159
  %4173 = lshr i32 %4172, 4
  %4174 = trunc i32 %4173 to i8
  %4175 = and i8 %4174, 1
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4175, i8* %4176, align 1
  %4177 = icmp eq i32 %4159, 0
  %4178 = zext i1 %4177 to i8
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4178, i8* %4179, align 1
  %4180 = lshr i32 %4159, 31
  %4181 = trunc i32 %4180 to i8
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4181, i8* %4182, align 1
  %4183 = lshr i32 %4158, 31
  %4184 = xor i32 %4180, %4183
  %4185 = add i32 %4184, %4183
  %4186 = icmp eq i32 %4185, 2
  %4187 = zext i1 %4186 to i8
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4187, i8* %4188, align 1
  store %struct.Memory* %loadMem_414613, %struct.Memory** %MEMORY
  %loadMem_414616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4190 = getelementptr inbounds %struct.GPR, %struct.GPR* %4189, i32 0, i32 33
  %4191 = getelementptr inbounds %struct.Reg, %struct.Reg* %4190, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %4191 to i64*
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4193 = getelementptr inbounds %struct.GPR, %struct.GPR* %4192, i32 0, i32 5
  %4194 = getelementptr inbounds %struct.Reg, %struct.Reg* %4193, i32 0, i32 0
  %ECX.i541 = bitcast %union.anon* %4194 to i32*
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4196 = getelementptr inbounds %struct.GPR, %struct.GPR* %4195, i32 0, i32 7
  %4197 = getelementptr inbounds %struct.Reg, %struct.Reg* %4196, i32 0, i32 0
  %RDX.i542 = bitcast %union.anon* %4197 to i64*
  %4198 = load i32, i32* %ECX.i541
  %4199 = zext i32 %4198 to i64
  %4200 = load i64, i64* %PC.i540
  %4201 = add i64 %4200, 3
  store i64 %4201, i64* %PC.i540
  %4202 = shl i64 %4199, 32
  %4203 = ashr exact i64 %4202, 32
  store i64 %4203, i64* %RDX.i542, align 8
  store %struct.Memory* %loadMem_414616, %struct.Memory** %MEMORY
  %loadMem_414619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4205 = getelementptr inbounds %struct.GPR, %struct.GPR* %4204, i32 0, i32 33
  %4206 = getelementptr inbounds %struct.Reg, %struct.Reg* %4205, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %4206 to i64*
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4208 = getelementptr inbounds %struct.GPR, %struct.GPR* %4207, i32 0, i32 7
  %4209 = getelementptr inbounds %struct.Reg, %struct.Reg* %4208, i32 0, i32 0
  %RDX.i539 = bitcast %union.anon* %4209 to i64*
  %4210 = load i64, i64* %RDX.i539
  %4211 = mul i64 %4210, 4
  %4212 = add i64 %4211, 11187184
  %4213 = load i64, i64* %PC.i538
  %4214 = add i64 %4213, 8
  store i64 %4214, i64* %PC.i538
  %4215 = inttoptr i64 %4212 to i32*
  %4216 = load i32, i32* %4215
  %4217 = sext i32 %4216 to i64
  store i64 %4217, i64* %RDX.i539, align 8
  store %struct.Memory* %loadMem_414619, %struct.Memory** %MEMORY
  %loadMem_414621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4219 = getelementptr inbounds %struct.GPR, %struct.GPR* %4218, i32 0, i32 33
  %4220 = getelementptr inbounds %struct.Reg, %struct.Reg* %4219, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %4220 to i64*
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 7
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %RDX.i537 = bitcast %union.anon* %4223 to i64*
  %4224 = load i64, i64* %RDX.i537
  %4225 = load i64, i64* %PC.i536
  %4226 = add i64 %4225, 7
  store i64 %4226, i64* %PC.i536
  %4227 = sext i64 %4224 to i128
  %4228 = and i128 %4227, -18446744073709551616
  %4229 = zext i64 %4224 to i128
  %4230 = or i128 %4228, %4229
  %4231 = mul i128 744, %4230
  %4232 = trunc i128 %4231 to i64
  store i64 %4232, i64* %RDX.i537, align 8
  %4233 = sext i64 %4232 to i128
  %4234 = icmp ne i128 %4233, %4231
  %4235 = zext i1 %4234 to i8
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4235, i8* %4236, align 1
  %4237 = trunc i128 %4231 to i32
  %4238 = and i32 %4237, 255
  %4239 = call i32 @llvm.ctpop.i32(i32 %4238)
  %4240 = trunc i32 %4239 to i8
  %4241 = and i8 %4240, 1
  %4242 = xor i8 %4241, 1
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4242, i8* %4243, align 1
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4244, align 1
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4245, align 1
  %4246 = lshr i64 %4232, 63
  %4247 = trunc i64 %4246 to i8
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4247, i8* %4248, align 1
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4235, i8* %4249, align 1
  store %struct.Memory* %loadMem_414621, %struct.Memory** %MEMORY
  %loadMem_414628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4251 = getelementptr inbounds %struct.GPR, %struct.GPR* %4250, i32 0, i32 33
  %4252 = getelementptr inbounds %struct.Reg, %struct.Reg* %4251, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %4252 to i64*
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4254 = getelementptr inbounds %struct.GPR, %struct.GPR* %4253, i32 0, i32 1
  %4255 = getelementptr inbounds %struct.Reg, %struct.Reg* %4254, i32 0, i32 0
  %RAX.i534 = bitcast %union.anon* %4255 to i64*
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4257 = getelementptr inbounds %struct.GPR, %struct.GPR* %4256, i32 0, i32 7
  %4258 = getelementptr inbounds %struct.Reg, %struct.Reg* %4257, i32 0, i32 0
  %RDX.i535 = bitcast %union.anon* %4258 to i64*
  %4259 = load i64, i64* %RAX.i534
  %4260 = load i64, i64* %RDX.i535
  %4261 = load i64, i64* %PC.i533
  %4262 = add i64 %4261, 3
  store i64 %4262, i64* %PC.i533
  %4263 = add i64 %4260, %4259
  store i64 %4263, i64* %RAX.i534, align 8
  %4264 = icmp ult i64 %4263, %4259
  %4265 = icmp ult i64 %4263, %4260
  %4266 = or i1 %4264, %4265
  %4267 = zext i1 %4266 to i8
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4267, i8* %4268, align 1
  %4269 = trunc i64 %4263 to i32
  %4270 = and i32 %4269, 255
  %4271 = call i32 @llvm.ctpop.i32(i32 %4270)
  %4272 = trunc i32 %4271 to i8
  %4273 = and i8 %4272, 1
  %4274 = xor i8 %4273, 1
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4274, i8* %4275, align 1
  %4276 = xor i64 %4260, %4259
  %4277 = xor i64 %4276, %4263
  %4278 = lshr i64 %4277, 4
  %4279 = trunc i64 %4278 to i8
  %4280 = and i8 %4279, 1
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4280, i8* %4281, align 1
  %4282 = icmp eq i64 %4263, 0
  %4283 = zext i1 %4282 to i8
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4283, i8* %4284, align 1
  %4285 = lshr i64 %4263, 63
  %4286 = trunc i64 %4285 to i8
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4286, i8* %4287, align 1
  %4288 = lshr i64 %4259, 63
  %4289 = lshr i64 %4260, 63
  %4290 = xor i64 %4285, %4288
  %4291 = xor i64 %4285, %4289
  %4292 = add i64 %4290, %4291
  %4293 = icmp eq i64 %4292, 2
  %4294 = zext i1 %4293 to i8
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4294, i8* %4295, align 1
  store %struct.Memory* %loadMem_414628, %struct.Memory** %MEMORY
  %loadMem_41462b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 33
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %4298 to i64*
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4300 = getelementptr inbounds %struct.GPR, %struct.GPR* %4299, i32 0, i32 1
  %4301 = getelementptr inbounds %struct.Reg, %struct.Reg* %4300, i32 0, i32 0
  %RAX.i532 = bitcast %union.anon* %4301 to i64*
  %4302 = load i64, i64* %RAX.i532
  %4303 = add i64 %4302, 12
  %4304 = load i64, i64* %PC.i531
  %4305 = add i64 %4304, 4
  store i64 %4305, i64* %PC.i531
  %4306 = inttoptr i64 %4303 to i32*
  %4307 = load i32, i32* %4306
  %4308 = sub i32 %4307, 2
  %4309 = icmp ult i32 %4307, 2
  %4310 = zext i1 %4309 to i8
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4310, i8* %4311, align 1
  %4312 = and i32 %4308, 255
  %4313 = call i32 @llvm.ctpop.i32(i32 %4312)
  %4314 = trunc i32 %4313 to i8
  %4315 = and i8 %4314, 1
  %4316 = xor i8 %4315, 1
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4316, i8* %4317, align 1
  %4318 = xor i32 %4307, 2
  %4319 = xor i32 %4318, %4308
  %4320 = lshr i32 %4319, 4
  %4321 = trunc i32 %4320 to i8
  %4322 = and i8 %4321, 1
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4322, i8* %4323, align 1
  %4324 = icmp eq i32 %4308, 0
  %4325 = zext i1 %4324 to i8
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4325, i8* %4326, align 1
  %4327 = lshr i32 %4308, 31
  %4328 = trunc i32 %4327 to i8
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4328, i8* %4329, align 1
  %4330 = lshr i32 %4307, 31
  %4331 = xor i32 %4327, %4330
  %4332 = add i32 %4331, %4330
  %4333 = icmp eq i32 %4332, 2
  %4334 = zext i1 %4333 to i8
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4334, i8* %4335, align 1
  store %struct.Memory* %loadMem_41462b, %struct.Memory** %MEMORY
  %loadMem_41462f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 33
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %4338 to i64*
  %4339 = load i64, i64* %PC.i530
  %4340 = add i64 %4339, 18
  %4341 = load i64, i64* %PC.i530
  %4342 = add i64 %4341, 6
  %4343 = load i64, i64* %PC.i530
  %4344 = add i64 %4343, 6
  store i64 %4344, i64* %PC.i530
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4346 = load i8, i8* %4345, align 1
  %4347 = icmp ne i8 %4346, 0
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4349 = load i8, i8* %4348, align 1
  %4350 = icmp ne i8 %4349, 0
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4352 = load i8, i8* %4351, align 1
  %4353 = icmp ne i8 %4352, 0
  %4354 = xor i1 %4350, %4353
  %4355 = or i1 %4347, %4354
  %4356 = zext i1 %4355 to i8
  store i8 %4356, i8* %BRANCH_TAKEN, align 1
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4358 = select i1 %4355, i64 %4340, i64 %4342
  store i64 %4358, i64* %4357, align 8
  store %struct.Memory* %loadMem_41462f, %struct.Memory** %MEMORY
  %loadBr_41462f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41462f = icmp eq i8 %loadBr_41462f, 1
  br i1 %cmpBr_41462f, label %block_.L_414641, label %block_414635

block_414635:                                     ; preds = %block_414606
  %loadMem_414635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 33
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %4361 to i64*
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 15
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %4364 to i64*
  %4365 = load i64, i64* %RBP.i529
  %4366 = sub i64 %4365, 4
  %4367 = load i64, i64* %PC.i528
  %4368 = add i64 %4367, 7
  store i64 %4368, i64* %PC.i528
  %4369 = inttoptr i64 %4366 to i32*
  store i32 0, i32* %4369
  store %struct.Memory* %loadMem_414635, %struct.Memory** %MEMORY
  %loadMem_41463c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4371 = getelementptr inbounds %struct.GPR, %struct.GPR* %4370, i32 0, i32 33
  %4372 = getelementptr inbounds %struct.Reg, %struct.Reg* %4371, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %4372 to i64*
  %4373 = load i64, i64* %PC.i527
  %4374 = add i64 %4373, 1120
  %4375 = load i64, i64* %PC.i527
  %4376 = add i64 %4375, 5
  store i64 %4376, i64* %PC.i527
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4374, i64* %4377, align 8
  store %struct.Memory* %loadMem_41463c, %struct.Memory** %MEMORY
  br label %block_.L_414a9c

block_.L_414641:                                  ; preds = %block_414606
  %loadMem_414641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 33
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %4380 to i64*
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 1
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %4383 to i64*
  %4384 = load i64, i64* %PC.i525
  %4385 = add i64 %4384, 10
  store i64 %4385, i64* %PC.i525
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i526, align 8
  store %struct.Memory* %loadMem_414641, %struct.Memory** %MEMORY
  %loadMem_41464b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4387 = getelementptr inbounds %struct.GPR, %struct.GPR* %4386, i32 0, i32 33
  %4388 = getelementptr inbounds %struct.Reg, %struct.Reg* %4387, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %4388 to i64*
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 5
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %RCX.i523 = bitcast %union.anon* %4391 to i64*
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 15
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %RBP.i524 = bitcast %union.anon* %4394 to i64*
  %4395 = load i64, i64* %RBP.i524
  %4396 = sub i64 %4395, 8
  %4397 = load i64, i64* %PC.i522
  %4398 = add i64 %4397, 3
  store i64 %4398, i64* %PC.i522
  %4399 = inttoptr i64 %4396 to i32*
  %4400 = load i32, i32* %4399
  %4401 = zext i32 %4400 to i64
  store i64 %4401, i64* %RCX.i523, align 8
  store %struct.Memory* %loadMem_41464b, %struct.Memory** %MEMORY
  %loadMem_41464e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4403 = getelementptr inbounds %struct.GPR, %struct.GPR* %4402, i32 0, i32 33
  %4404 = getelementptr inbounds %struct.Reg, %struct.Reg* %4403, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %4404 to i64*
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4406 = getelementptr inbounds %struct.GPR, %struct.GPR* %4405, i32 0, i32 5
  %4407 = getelementptr inbounds %struct.Reg, %struct.Reg* %4406, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %4407 to i64*
  %4408 = load i64, i64* %RCX.i521
  %4409 = load i64, i64* %PC.i520
  %4410 = add i64 %4409, 3
  store i64 %4410, i64* %PC.i520
  %4411 = trunc i64 %4408 to i32
  %4412 = sub i32 %4411, 1
  %4413 = zext i32 %4412 to i64
  store i64 %4413, i64* %RCX.i521, align 8
  %4414 = icmp ult i32 %4411, 1
  %4415 = zext i1 %4414 to i8
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4415, i8* %4416, align 1
  %4417 = and i32 %4412, 255
  %4418 = call i32 @llvm.ctpop.i32(i32 %4417)
  %4419 = trunc i32 %4418 to i8
  %4420 = and i8 %4419, 1
  %4421 = xor i8 %4420, 1
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4421, i8* %4422, align 1
  %4423 = xor i64 1, %4408
  %4424 = trunc i64 %4423 to i32
  %4425 = xor i32 %4424, %4412
  %4426 = lshr i32 %4425, 4
  %4427 = trunc i32 %4426 to i8
  %4428 = and i8 %4427, 1
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4428, i8* %4429, align 1
  %4430 = icmp eq i32 %4412, 0
  %4431 = zext i1 %4430 to i8
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4431, i8* %4432, align 1
  %4433 = lshr i32 %4412, 31
  %4434 = trunc i32 %4433 to i8
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4434, i8* %4435, align 1
  %4436 = lshr i32 %4411, 31
  %4437 = xor i32 %4433, %4436
  %4438 = add i32 %4437, %4436
  %4439 = icmp eq i32 %4438, 2
  %4440 = zext i1 %4439 to i8
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4440, i8* %4441, align 1
  store %struct.Memory* %loadMem_41464e, %struct.Memory** %MEMORY
  %loadMem_414651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 33
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %4444 to i64*
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 5
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %ECX.i518 = bitcast %union.anon* %4447 to i32*
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 7
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %RDX.i519 = bitcast %union.anon* %4450 to i64*
  %4451 = load i32, i32* %ECX.i518
  %4452 = zext i32 %4451 to i64
  %4453 = load i64, i64* %PC.i517
  %4454 = add i64 %4453, 3
  store i64 %4454, i64* %PC.i517
  %4455 = shl i64 %4452, 32
  %4456 = ashr exact i64 %4455, 32
  store i64 %4456, i64* %RDX.i519, align 8
  store %struct.Memory* %loadMem_414651, %struct.Memory** %MEMORY
  %loadMem_414654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 33
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %4459 to i64*
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 7
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %RDX.i516 = bitcast %union.anon* %4462 to i64*
  %4463 = load i64, i64* %RDX.i516
  %4464 = mul i64 %4463, 4
  %4465 = add i64 %4464, 11187184
  %4466 = load i64, i64* %PC.i515
  %4467 = add i64 %4466, 8
  store i64 %4467, i64* %PC.i515
  %4468 = inttoptr i64 %4465 to i32*
  %4469 = load i32, i32* %4468
  %4470 = sext i32 %4469 to i64
  store i64 %4470, i64* %RDX.i516, align 8
  store %struct.Memory* %loadMem_414654, %struct.Memory** %MEMORY
  %loadMem_41465c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 33
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %4473 to i64*
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 7
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %RDX.i514 = bitcast %union.anon* %4476 to i64*
  %4477 = load i64, i64* %RDX.i514
  %4478 = load i64, i64* %PC.i513
  %4479 = add i64 %4478, 7
  store i64 %4479, i64* %PC.i513
  %4480 = sext i64 %4477 to i128
  %4481 = and i128 %4480, -18446744073709551616
  %4482 = zext i64 %4477 to i128
  %4483 = or i128 %4481, %4482
  %4484 = mul i128 744, %4483
  %4485 = trunc i128 %4484 to i64
  store i64 %4485, i64* %RDX.i514, align 8
  %4486 = sext i64 %4485 to i128
  %4487 = icmp ne i128 %4486, %4484
  %4488 = zext i1 %4487 to i8
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4488, i8* %4489, align 1
  %4490 = trunc i128 %4484 to i32
  %4491 = and i32 %4490, 255
  %4492 = call i32 @llvm.ctpop.i32(i32 %4491)
  %4493 = trunc i32 %4492 to i8
  %4494 = and i8 %4493, 1
  %4495 = xor i8 %4494, 1
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4495, i8* %4496, align 1
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4497, align 1
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4498, align 1
  %4499 = lshr i64 %4485, 63
  %4500 = trunc i64 %4499 to i8
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4500, i8* %4501, align 1
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4488, i8* %4502, align 1
  store %struct.Memory* %loadMem_41465c, %struct.Memory** %MEMORY
  %loadMem_414663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 33
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %4505 to i64*
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 1
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %4508 to i64*
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 7
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %RDX.i512 = bitcast %union.anon* %4511 to i64*
  %4512 = load i64, i64* %RAX.i511
  %4513 = load i64, i64* %RDX.i512
  %4514 = load i64, i64* %PC.i510
  %4515 = add i64 %4514, 3
  store i64 %4515, i64* %PC.i510
  %4516 = add i64 %4513, %4512
  store i64 %4516, i64* %RAX.i511, align 8
  %4517 = icmp ult i64 %4516, %4512
  %4518 = icmp ult i64 %4516, %4513
  %4519 = or i1 %4517, %4518
  %4520 = zext i1 %4519 to i8
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4520, i8* %4521, align 1
  %4522 = trunc i64 %4516 to i32
  %4523 = and i32 %4522, 255
  %4524 = call i32 @llvm.ctpop.i32(i32 %4523)
  %4525 = trunc i32 %4524 to i8
  %4526 = and i8 %4525, 1
  %4527 = xor i8 %4526, 1
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4527, i8* %4528, align 1
  %4529 = xor i64 %4513, %4512
  %4530 = xor i64 %4529, %4516
  %4531 = lshr i64 %4530, 4
  %4532 = trunc i64 %4531 to i8
  %4533 = and i8 %4532, 1
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4533, i8* %4534, align 1
  %4535 = icmp eq i64 %4516, 0
  %4536 = zext i1 %4535 to i8
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4536, i8* %4537, align 1
  %4538 = lshr i64 %4516, 63
  %4539 = trunc i64 %4538 to i8
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4539, i8* %4540, align 1
  %4541 = lshr i64 %4512, 63
  %4542 = lshr i64 %4513, 63
  %4543 = xor i64 %4538, %4541
  %4544 = xor i64 %4538, %4542
  %4545 = add i64 %4543, %4544
  %4546 = icmp eq i64 %4545, 2
  %4547 = zext i1 %4546 to i8
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4547, i8* %4548, align 1
  store %struct.Memory* %loadMem_414663, %struct.Memory** %MEMORY
  %loadMem_414666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4550 = getelementptr inbounds %struct.GPR, %struct.GPR* %4549, i32 0, i32 33
  %4551 = getelementptr inbounds %struct.Reg, %struct.Reg* %4550, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %4551 to i64*
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 1
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %4554 to i64*
  %4555 = load i64, i64* %RAX.i509
  %4556 = add i64 %4555, 12
  %4557 = load i64, i64* %PC.i508
  %4558 = add i64 %4557, 4
  store i64 %4558, i64* %PC.i508
  %4559 = inttoptr i64 %4556 to i32*
  %4560 = load i32, i32* %4559
  %4561 = sub i32 %4560, 2
  %4562 = icmp ult i32 %4560, 2
  %4563 = zext i1 %4562 to i8
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4563, i8* %4564, align 1
  %4565 = and i32 %4561, 255
  %4566 = call i32 @llvm.ctpop.i32(i32 %4565)
  %4567 = trunc i32 %4566 to i8
  %4568 = and i8 %4567, 1
  %4569 = xor i8 %4568, 1
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4569, i8* %4570, align 1
  %4571 = xor i32 %4560, 2
  %4572 = xor i32 %4571, %4561
  %4573 = lshr i32 %4572, 4
  %4574 = trunc i32 %4573 to i8
  %4575 = and i8 %4574, 1
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4575, i8* %4576, align 1
  %4577 = icmp eq i32 %4561, 0
  %4578 = zext i1 %4577 to i8
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4578, i8* %4579, align 1
  %4580 = lshr i32 %4561, 31
  %4581 = trunc i32 %4580 to i8
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4581, i8* %4582, align 1
  %4583 = lshr i32 %4560, 31
  %4584 = xor i32 %4580, %4583
  %4585 = add i32 %4584, %4583
  %4586 = icmp eq i32 %4585, 2
  %4587 = zext i1 %4586 to i8
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4587, i8* %4588, align 1
  store %struct.Memory* %loadMem_414666, %struct.Memory** %MEMORY
  %loadMem_41466a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4590 = getelementptr inbounds %struct.GPR, %struct.GPR* %4589, i32 0, i32 33
  %4591 = getelementptr inbounds %struct.Reg, %struct.Reg* %4590, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %4591 to i64*
  %4592 = load i64, i64* %PC.i507
  %4593 = add i64 %4592, 15
  %4594 = load i64, i64* %PC.i507
  %4595 = add i64 %4594, 6
  %4596 = load i64, i64* %PC.i507
  %4597 = add i64 %4596, 6
  store i64 %4597, i64* %PC.i507
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4599 = load i8, i8* %4598, align 1
  %4600 = icmp eq i8 %4599, 0
  %4601 = zext i1 %4600 to i8
  store i8 %4601, i8* %BRANCH_TAKEN, align 1
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4603 = select i1 %4600, i64 %4593, i64 %4595
  store i64 %4603, i64* %4602, align 8
  store %struct.Memory* %loadMem_41466a, %struct.Memory** %MEMORY
  %loadBr_41466a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41466a = icmp eq i8 %loadBr_41466a, 1
  br i1 %cmpBr_41466a, label %block_.L_414679, label %block_414670

block_414670:                                     ; preds = %block_.L_414641
  %loadMem_414670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4605 = getelementptr inbounds %struct.GPR, %struct.GPR* %4604, i32 0, i32 33
  %4606 = getelementptr inbounds %struct.Reg, %struct.Reg* %4605, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %4606 to i64*
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 1
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %4609 to i64*
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 15
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %4612 to i64*
  %4613 = load i64, i64* %RBP.i506
  %4614 = sub i64 %4613, 28
  %4615 = load i64, i64* %PC.i504
  %4616 = add i64 %4615, 3
  store i64 %4616, i64* %PC.i504
  %4617 = inttoptr i64 %4614 to i32*
  %4618 = load i32, i32* %4617
  %4619 = zext i32 %4618 to i64
  store i64 %4619, i64* %RAX.i505, align 8
  store %struct.Memory* %loadMem_414670, %struct.Memory** %MEMORY
  %loadMem_414673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 33
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %4622 to i64*
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 1
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %RAX.i503 = bitcast %union.anon* %4625 to i64*
  %4626 = load i64, i64* %RAX.i503
  %4627 = load i64, i64* %PC.i502
  %4628 = add i64 %4627, 3
  store i64 %4628, i64* %PC.i502
  %4629 = trunc i64 %4626 to i32
  %4630 = add i32 1, %4629
  %4631 = zext i32 %4630 to i64
  store i64 %4631, i64* %RAX.i503, align 8
  %4632 = icmp ult i32 %4630, %4629
  %4633 = icmp ult i32 %4630, 1
  %4634 = or i1 %4632, %4633
  %4635 = zext i1 %4634 to i8
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4635, i8* %4636, align 1
  %4637 = and i32 %4630, 255
  %4638 = call i32 @llvm.ctpop.i32(i32 %4637)
  %4639 = trunc i32 %4638 to i8
  %4640 = and i8 %4639, 1
  %4641 = xor i8 %4640, 1
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4641, i8* %4642, align 1
  %4643 = xor i64 1, %4626
  %4644 = trunc i64 %4643 to i32
  %4645 = xor i32 %4644, %4630
  %4646 = lshr i32 %4645, 4
  %4647 = trunc i32 %4646 to i8
  %4648 = and i8 %4647, 1
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4648, i8* %4649, align 1
  %4650 = icmp eq i32 %4630, 0
  %4651 = zext i1 %4650 to i8
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4651, i8* %4652, align 1
  %4653 = lshr i32 %4630, 31
  %4654 = trunc i32 %4653 to i8
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4654, i8* %4655, align 1
  %4656 = lshr i32 %4629, 31
  %4657 = xor i32 %4653, %4656
  %4658 = add i32 %4657, %4653
  %4659 = icmp eq i32 %4658, 2
  %4660 = zext i1 %4659 to i8
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4660, i8* %4661, align 1
  store %struct.Memory* %loadMem_414673, %struct.Memory** %MEMORY
  %loadMem_414676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4663 = getelementptr inbounds %struct.GPR, %struct.GPR* %4662, i32 0, i32 33
  %4664 = getelementptr inbounds %struct.Reg, %struct.Reg* %4663, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %4664 to i64*
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4666 = getelementptr inbounds %struct.GPR, %struct.GPR* %4665, i32 0, i32 1
  %4667 = getelementptr inbounds %struct.Reg, %struct.Reg* %4666, i32 0, i32 0
  %EAX.i500 = bitcast %union.anon* %4667 to i32*
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4669 = getelementptr inbounds %struct.GPR, %struct.GPR* %4668, i32 0, i32 15
  %4670 = getelementptr inbounds %struct.Reg, %struct.Reg* %4669, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %4670 to i64*
  %4671 = load i64, i64* %RBP.i501
  %4672 = sub i64 %4671, 28
  %4673 = load i32, i32* %EAX.i500
  %4674 = zext i32 %4673 to i64
  %4675 = load i64, i64* %PC.i499
  %4676 = add i64 %4675, 3
  store i64 %4676, i64* %PC.i499
  %4677 = inttoptr i64 %4672 to i32*
  store i32 %4673, i32* %4677
  store %struct.Memory* %loadMem_414676, %struct.Memory** %MEMORY
  br label %block_.L_414679

block_.L_414679:                                  ; preds = %block_414670, %block_.L_414641
  %loadMem_414679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 33
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %4680 to i64*
  %4681 = load i64, i64* %PC.i498
  %4682 = add i64 %4681, 198
  %4683 = load i64, i64* %PC.i498
  %4684 = add i64 %4683, 5
  store i64 %4684, i64* %PC.i498
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4682, i64* %4685, align 8
  store %struct.Memory* %loadMem_414679, %struct.Memory** %MEMORY
  br label %block_.L_41473f

block_.L_41467e:                                  ; preds = %block_.L_4145ec
  %loadMem_41467e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4687 = getelementptr inbounds %struct.GPR, %struct.GPR* %4686, i32 0, i32 33
  %4688 = getelementptr inbounds %struct.Reg, %struct.Reg* %4687, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %4688 to i64*
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4690 = getelementptr inbounds %struct.GPR, %struct.GPR* %4689, i32 0, i32 1
  %4691 = getelementptr inbounds %struct.Reg, %struct.Reg* %4690, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %4691 to i64*
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4693 = getelementptr inbounds %struct.GPR, %struct.GPR* %4692, i32 0, i32 15
  %4694 = getelementptr inbounds %struct.Reg, %struct.Reg* %4693, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %4694 to i64*
  %4695 = load i64, i64* %RBP.i497
  %4696 = sub i64 %4695, 8
  %4697 = load i64, i64* %PC.i495
  %4698 = add i64 %4697, 3
  store i64 %4698, i64* %PC.i495
  %4699 = inttoptr i64 %4696 to i32*
  %4700 = load i32, i32* %4699
  %4701 = zext i32 %4700 to i64
  store i64 %4701, i64* %RAX.i496, align 8
  store %struct.Memory* %loadMem_41467e, %struct.Memory** %MEMORY
  %loadMem_414681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 33
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %4704 to i64*
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4706 = getelementptr inbounds %struct.GPR, %struct.GPR* %4705, i32 0, i32 1
  %4707 = getelementptr inbounds %struct.Reg, %struct.Reg* %4706, i32 0, i32 0
  %RAX.i494 = bitcast %union.anon* %4707 to i64*
  %4708 = load i64, i64* %RAX.i494
  %4709 = load i64, i64* %PC.i493
  %4710 = add i64 %4709, 3
  store i64 %4710, i64* %PC.i493
  %4711 = trunc i64 %4708 to i32
  %4712 = sub i32 %4711, 1
  %4713 = zext i32 %4712 to i64
  store i64 %4713, i64* %RAX.i494, align 8
  %4714 = icmp ult i32 %4711, 1
  %4715 = zext i1 %4714 to i8
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4715, i8* %4716, align 1
  %4717 = and i32 %4712, 255
  %4718 = call i32 @llvm.ctpop.i32(i32 %4717)
  %4719 = trunc i32 %4718 to i8
  %4720 = and i8 %4719, 1
  %4721 = xor i8 %4720, 1
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4721, i8* %4722, align 1
  %4723 = xor i64 1, %4708
  %4724 = trunc i64 %4723 to i32
  %4725 = xor i32 %4724, %4712
  %4726 = lshr i32 %4725, 4
  %4727 = trunc i32 %4726 to i8
  %4728 = and i8 %4727, 1
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4728, i8* %4729, align 1
  %4730 = icmp eq i32 %4712, 0
  %4731 = zext i1 %4730 to i8
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4731, i8* %4732, align 1
  %4733 = lshr i32 %4712, 31
  %4734 = trunc i32 %4733 to i8
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4734, i8* %4735, align 1
  %4736 = lshr i32 %4711, 31
  %4737 = xor i32 %4733, %4736
  %4738 = add i32 %4737, %4736
  %4739 = icmp eq i32 %4738, 2
  %4740 = zext i1 %4739 to i8
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4740, i8* %4741, align 1
  store %struct.Memory* %loadMem_414681, %struct.Memory** %MEMORY
  %loadMem_414684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4743 = getelementptr inbounds %struct.GPR, %struct.GPR* %4742, i32 0, i32 33
  %4744 = getelementptr inbounds %struct.Reg, %struct.Reg* %4743, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %4744 to i64*
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4746 = getelementptr inbounds %struct.GPR, %struct.GPR* %4745, i32 0, i32 1
  %4747 = getelementptr inbounds %struct.Reg, %struct.Reg* %4746, i32 0, i32 0
  %EAX.i491 = bitcast %union.anon* %4747 to i32*
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4749 = getelementptr inbounds %struct.GPR, %struct.GPR* %4748, i32 0, i32 5
  %4750 = getelementptr inbounds %struct.Reg, %struct.Reg* %4749, i32 0, i32 0
  %RCX.i492 = bitcast %union.anon* %4750 to i64*
  %4751 = load i32, i32* %EAX.i491
  %4752 = zext i32 %4751 to i64
  %4753 = load i64, i64* %PC.i490
  %4754 = add i64 %4753, 3
  store i64 %4754, i64* %PC.i490
  %4755 = shl i64 %4752, 32
  %4756 = ashr exact i64 %4755, 32
  store i64 %4756, i64* %RCX.i492, align 8
  store %struct.Memory* %loadMem_414684, %struct.Memory** %MEMORY
  %loadMem_414687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 33
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %4759 to i64*
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4761 = getelementptr inbounds %struct.GPR, %struct.GPR* %4760, i32 0, i32 1
  %4762 = getelementptr inbounds %struct.Reg, %struct.Reg* %4761, i32 0, i32 0
  %RAX.i488 = bitcast %union.anon* %4762 to i64*
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4764 = getelementptr inbounds %struct.GPR, %struct.GPR* %4763, i32 0, i32 5
  %4765 = getelementptr inbounds %struct.Reg, %struct.Reg* %4764, i32 0, i32 0
  %RCX.i489 = bitcast %union.anon* %4765 to i64*
  %4766 = load i64, i64* %RCX.i489
  %4767 = add i64 %4766, 12099168
  %4768 = load i64, i64* %PC.i487
  %4769 = add i64 %4768, 8
  store i64 %4769, i64* %PC.i487
  %4770 = inttoptr i64 %4767 to i8*
  %4771 = load i8, i8* %4770
  %4772 = zext i8 %4771 to i64
  store i64 %4772, i64* %RAX.i488, align 8
  store %struct.Memory* %loadMem_414687, %struct.Memory** %MEMORY
  %loadMem_41468f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 33
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %4775 to i64*
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4777 = getelementptr inbounds %struct.GPR, %struct.GPR* %4776, i32 0, i32 1
  %4778 = getelementptr inbounds %struct.Reg, %struct.Reg* %4777, i32 0, i32 0
  %EAX.i485 = bitcast %union.anon* %4778 to i32*
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4780 = getelementptr inbounds %struct.GPR, %struct.GPR* %4779, i32 0, i32 15
  %4781 = getelementptr inbounds %struct.Reg, %struct.Reg* %4780, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %4781 to i64*
  %4782 = load i32, i32* %EAX.i485
  %4783 = zext i32 %4782 to i64
  %4784 = load i64, i64* %RBP.i486
  %4785 = sub i64 %4784, 16
  %4786 = load i64, i64* %PC.i484
  %4787 = add i64 %4786, 3
  store i64 %4787, i64* %PC.i484
  %4788 = inttoptr i64 %4785 to i32*
  %4789 = load i32, i32* %4788
  %4790 = sub i32 %4782, %4789
  %4791 = icmp ult i32 %4782, %4789
  %4792 = zext i1 %4791 to i8
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4792, i8* %4793, align 1
  %4794 = and i32 %4790, 255
  %4795 = call i32 @llvm.ctpop.i32(i32 %4794)
  %4796 = trunc i32 %4795 to i8
  %4797 = and i8 %4796, 1
  %4798 = xor i8 %4797, 1
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4798, i8* %4799, align 1
  %4800 = xor i32 %4789, %4782
  %4801 = xor i32 %4800, %4790
  %4802 = lshr i32 %4801, 4
  %4803 = trunc i32 %4802 to i8
  %4804 = and i8 %4803, 1
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4804, i8* %4805, align 1
  %4806 = icmp eq i32 %4790, 0
  %4807 = zext i1 %4806 to i8
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4807, i8* %4808, align 1
  %4809 = lshr i32 %4790, 31
  %4810 = trunc i32 %4809 to i8
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4810, i8* %4811, align 1
  %4812 = lshr i32 %4782, 31
  %4813 = lshr i32 %4789, 31
  %4814 = xor i32 %4813, %4812
  %4815 = xor i32 %4809, %4812
  %4816 = add i32 %4815, %4814
  %4817 = icmp eq i32 %4816, 2
  %4818 = zext i1 %4817 to i8
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4818, i8* %4819, align 1
  store %struct.Memory* %loadMem_41468f, %struct.Memory** %MEMORY
  %loadMem_414692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4821 = getelementptr inbounds %struct.GPR, %struct.GPR* %4820, i32 0, i32 33
  %4822 = getelementptr inbounds %struct.Reg, %struct.Reg* %4821, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %4822 to i64*
  %4823 = load i64, i64* %PC.i483
  %4824 = add i64 %4823, 168
  %4825 = load i64, i64* %PC.i483
  %4826 = add i64 %4825, 6
  %4827 = load i64, i64* %PC.i483
  %4828 = add i64 %4827, 6
  store i64 %4828, i64* %PC.i483
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4830 = load i8, i8* %4829, align 1
  %4831 = icmp eq i8 %4830, 0
  %4832 = zext i1 %4831 to i8
  store i8 %4832, i8* %BRANCH_TAKEN, align 1
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4834 = select i1 %4831, i64 %4824, i64 %4826
  store i64 %4834, i64* %4833, align 8
  store %struct.Memory* %loadMem_414692, %struct.Memory** %MEMORY
  %loadBr_414692 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414692 = icmp eq i8 %loadBr_414692, 1
  br i1 %cmpBr_414692, label %block_.L_41473a, label %block_414698

block_414698:                                     ; preds = %block_.L_41467e
  %loadMem_414698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4836 = getelementptr inbounds %struct.GPR, %struct.GPR* %4835, i32 0, i32 33
  %4837 = getelementptr inbounds %struct.Reg, %struct.Reg* %4836, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %4837 to i64*
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4839 = getelementptr inbounds %struct.GPR, %struct.GPR* %4838, i32 0, i32 1
  %4840 = getelementptr inbounds %struct.Reg, %struct.Reg* %4839, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %4840 to i64*
  %4841 = load i64, i64* %PC.i481
  %4842 = add i64 %4841, 10
  store i64 %4842, i64* %PC.i481
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i482, align 8
  store %struct.Memory* %loadMem_414698, %struct.Memory** %MEMORY
  %loadMem_4146a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4844 = getelementptr inbounds %struct.GPR, %struct.GPR* %4843, i32 0, i32 33
  %4845 = getelementptr inbounds %struct.Reg, %struct.Reg* %4844, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %4845 to i64*
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4847 = getelementptr inbounds %struct.GPR, %struct.GPR* %4846, i32 0, i32 5
  %4848 = getelementptr inbounds %struct.Reg, %struct.Reg* %4847, i32 0, i32 0
  %RCX.i479 = bitcast %union.anon* %4848 to i64*
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4850 = getelementptr inbounds %struct.GPR, %struct.GPR* %4849, i32 0, i32 15
  %4851 = getelementptr inbounds %struct.Reg, %struct.Reg* %4850, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %4851 to i64*
  %4852 = load i64, i64* %RBP.i480
  %4853 = sub i64 %4852, 8
  %4854 = load i64, i64* %PC.i478
  %4855 = add i64 %4854, 3
  store i64 %4855, i64* %PC.i478
  %4856 = inttoptr i64 %4853 to i32*
  %4857 = load i32, i32* %4856
  %4858 = zext i32 %4857 to i64
  store i64 %4858, i64* %RCX.i479, align 8
  store %struct.Memory* %loadMem_4146a2, %struct.Memory** %MEMORY
  %loadMem_4146a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4860 = getelementptr inbounds %struct.GPR, %struct.GPR* %4859, i32 0, i32 33
  %4861 = getelementptr inbounds %struct.Reg, %struct.Reg* %4860, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %4861 to i64*
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4863 = getelementptr inbounds %struct.GPR, %struct.GPR* %4862, i32 0, i32 5
  %4864 = getelementptr inbounds %struct.Reg, %struct.Reg* %4863, i32 0, i32 0
  %RCX.i477 = bitcast %union.anon* %4864 to i64*
  %4865 = load i64, i64* %RCX.i477
  %4866 = load i64, i64* %PC.i476
  %4867 = add i64 %4866, 3
  store i64 %4867, i64* %PC.i476
  %4868 = trunc i64 %4865 to i32
  %4869 = sub i32 %4868, 1
  %4870 = zext i32 %4869 to i64
  store i64 %4870, i64* %RCX.i477, align 8
  %4871 = icmp ult i32 %4868, 1
  %4872 = zext i1 %4871 to i8
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4872, i8* %4873, align 1
  %4874 = and i32 %4869, 255
  %4875 = call i32 @llvm.ctpop.i32(i32 %4874)
  %4876 = trunc i32 %4875 to i8
  %4877 = and i8 %4876, 1
  %4878 = xor i8 %4877, 1
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4878, i8* %4879, align 1
  %4880 = xor i64 1, %4865
  %4881 = trunc i64 %4880 to i32
  %4882 = xor i32 %4881, %4869
  %4883 = lshr i32 %4882, 4
  %4884 = trunc i32 %4883 to i8
  %4885 = and i8 %4884, 1
  %4886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4885, i8* %4886, align 1
  %4887 = icmp eq i32 %4869, 0
  %4888 = zext i1 %4887 to i8
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4888, i8* %4889, align 1
  %4890 = lshr i32 %4869, 31
  %4891 = trunc i32 %4890 to i8
  %4892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4891, i8* %4892, align 1
  %4893 = lshr i32 %4868, 31
  %4894 = xor i32 %4890, %4893
  %4895 = add i32 %4894, %4893
  %4896 = icmp eq i32 %4895, 2
  %4897 = zext i1 %4896 to i8
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4897, i8* %4898, align 1
  store %struct.Memory* %loadMem_4146a5, %struct.Memory** %MEMORY
  %loadMem_4146a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4900 = getelementptr inbounds %struct.GPR, %struct.GPR* %4899, i32 0, i32 33
  %4901 = getelementptr inbounds %struct.Reg, %struct.Reg* %4900, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %4901 to i64*
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4903 = getelementptr inbounds %struct.GPR, %struct.GPR* %4902, i32 0, i32 5
  %4904 = getelementptr inbounds %struct.Reg, %struct.Reg* %4903, i32 0, i32 0
  %ECX.i474 = bitcast %union.anon* %4904 to i32*
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4906 = getelementptr inbounds %struct.GPR, %struct.GPR* %4905, i32 0, i32 7
  %4907 = getelementptr inbounds %struct.Reg, %struct.Reg* %4906, i32 0, i32 0
  %RDX.i475 = bitcast %union.anon* %4907 to i64*
  %4908 = load i32, i32* %ECX.i474
  %4909 = zext i32 %4908 to i64
  %4910 = load i64, i64* %PC.i473
  %4911 = add i64 %4910, 3
  store i64 %4911, i64* %PC.i473
  %4912 = shl i64 %4909, 32
  %4913 = ashr exact i64 %4912, 32
  store i64 %4913, i64* %RDX.i475, align 8
  store %struct.Memory* %loadMem_4146a8, %struct.Memory** %MEMORY
  %loadMem_4146ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 33
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %4916 to i64*
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 7
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %RDX.i472 = bitcast %union.anon* %4919 to i64*
  %4920 = load i64, i64* %RDX.i472
  %4921 = mul i64 %4920, 4
  %4922 = add i64 %4921, 11187184
  %4923 = load i64, i64* %PC.i471
  %4924 = add i64 %4923, 8
  store i64 %4924, i64* %PC.i471
  %4925 = inttoptr i64 %4922 to i32*
  %4926 = load i32, i32* %4925
  %4927 = sext i32 %4926 to i64
  store i64 %4927, i64* %RDX.i472, align 8
  store %struct.Memory* %loadMem_4146ab, %struct.Memory** %MEMORY
  %loadMem_4146b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4929 = getelementptr inbounds %struct.GPR, %struct.GPR* %4928, i32 0, i32 33
  %4930 = getelementptr inbounds %struct.Reg, %struct.Reg* %4929, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %4930 to i64*
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4932 = getelementptr inbounds %struct.GPR, %struct.GPR* %4931, i32 0, i32 7
  %4933 = getelementptr inbounds %struct.Reg, %struct.Reg* %4932, i32 0, i32 0
  %RDX.i470 = bitcast %union.anon* %4933 to i64*
  %4934 = load i64, i64* %RDX.i470
  %4935 = load i64, i64* %PC.i469
  %4936 = add i64 %4935, 7
  store i64 %4936, i64* %PC.i469
  %4937 = sext i64 %4934 to i128
  %4938 = and i128 %4937, -18446744073709551616
  %4939 = zext i64 %4934 to i128
  %4940 = or i128 %4938, %4939
  %4941 = mul i128 744, %4940
  %4942 = trunc i128 %4941 to i64
  store i64 %4942, i64* %RDX.i470, align 8
  %4943 = sext i64 %4942 to i128
  %4944 = icmp ne i128 %4943, %4941
  %4945 = zext i1 %4944 to i8
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4945, i8* %4946, align 1
  %4947 = trunc i128 %4941 to i32
  %4948 = and i32 %4947, 255
  %4949 = call i32 @llvm.ctpop.i32(i32 %4948)
  %4950 = trunc i32 %4949 to i8
  %4951 = and i8 %4950, 1
  %4952 = xor i8 %4951, 1
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4952, i8* %4953, align 1
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4954, align 1
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4955, align 1
  %4956 = lshr i64 %4942, 63
  %4957 = trunc i64 %4956 to i8
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4957, i8* %4958, align 1
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4945, i8* %4959, align 1
  store %struct.Memory* %loadMem_4146b3, %struct.Memory** %MEMORY
  %loadMem_4146ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4961 = getelementptr inbounds %struct.GPR, %struct.GPR* %4960, i32 0, i32 33
  %4962 = getelementptr inbounds %struct.Reg, %struct.Reg* %4961, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %4962 to i64*
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 1
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %RAX.i467 = bitcast %union.anon* %4965 to i64*
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 7
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %RDX.i468 = bitcast %union.anon* %4968 to i64*
  %4969 = load i64, i64* %RAX.i467
  %4970 = load i64, i64* %RDX.i468
  %4971 = load i64, i64* %PC.i466
  %4972 = add i64 %4971, 3
  store i64 %4972, i64* %PC.i466
  %4973 = add i64 %4970, %4969
  store i64 %4973, i64* %RAX.i467, align 8
  %4974 = icmp ult i64 %4973, %4969
  %4975 = icmp ult i64 %4973, %4970
  %4976 = or i1 %4974, %4975
  %4977 = zext i1 %4976 to i8
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4977, i8* %4978, align 1
  %4979 = trunc i64 %4973 to i32
  %4980 = and i32 %4979, 255
  %4981 = call i32 @llvm.ctpop.i32(i32 %4980)
  %4982 = trunc i32 %4981 to i8
  %4983 = and i8 %4982, 1
  %4984 = xor i8 %4983, 1
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4984, i8* %4985, align 1
  %4986 = xor i64 %4970, %4969
  %4987 = xor i64 %4986, %4973
  %4988 = lshr i64 %4987, 4
  %4989 = trunc i64 %4988 to i8
  %4990 = and i8 %4989, 1
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4990, i8* %4991, align 1
  %4992 = icmp eq i64 %4973, 0
  %4993 = zext i1 %4992 to i8
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4993, i8* %4994, align 1
  %4995 = lshr i64 %4973, 63
  %4996 = trunc i64 %4995 to i8
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4996, i8* %4997, align 1
  %4998 = lshr i64 %4969, 63
  %4999 = lshr i64 %4970, 63
  %5000 = xor i64 %4995, %4998
  %5001 = xor i64 %4995, %4999
  %5002 = add i64 %5000, %5001
  %5003 = icmp eq i64 %5002, 2
  %5004 = zext i1 %5003 to i8
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5004, i8* %5005, align 1
  store %struct.Memory* %loadMem_4146ba, %struct.Memory** %MEMORY
  %loadMem_4146bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5007 = getelementptr inbounds %struct.GPR, %struct.GPR* %5006, i32 0, i32 33
  %5008 = getelementptr inbounds %struct.Reg, %struct.Reg* %5007, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %5008 to i64*
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5010 = getelementptr inbounds %struct.GPR, %struct.GPR* %5009, i32 0, i32 1
  %5011 = getelementptr inbounds %struct.Reg, %struct.Reg* %5010, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %5011 to i64*
  %5012 = load i64, i64* %RAX.i465
  %5013 = add i64 %5012, 12
  %5014 = load i64, i64* %PC.i464
  %5015 = add i64 %5014, 4
  store i64 %5015, i64* %PC.i464
  %5016 = inttoptr i64 %5013 to i32*
  %5017 = load i32, i32* %5016
  %5018 = sub i32 %5017, 1
  %5019 = icmp ult i32 %5017, 1
  %5020 = zext i1 %5019 to i8
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5020, i8* %5021, align 1
  %5022 = and i32 %5018, 255
  %5023 = call i32 @llvm.ctpop.i32(i32 %5022)
  %5024 = trunc i32 %5023 to i8
  %5025 = and i8 %5024, 1
  %5026 = xor i8 %5025, 1
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5026, i8* %5027, align 1
  %5028 = xor i32 %5017, 1
  %5029 = xor i32 %5028, %5018
  %5030 = lshr i32 %5029, 4
  %5031 = trunc i32 %5030 to i8
  %5032 = and i8 %5031, 1
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5032, i8* %5033, align 1
  %5034 = icmp eq i32 %5018, 0
  %5035 = zext i1 %5034 to i8
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5035, i8* %5036, align 1
  %5037 = lshr i32 %5018, 31
  %5038 = trunc i32 %5037 to i8
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5038, i8* %5039, align 1
  %5040 = lshr i32 %5017, 31
  %5041 = xor i32 %5037, %5040
  %5042 = add i32 %5041, %5040
  %5043 = icmp eq i32 %5042, 2
  %5044 = zext i1 %5043 to i8
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5044, i8* %5045, align 1
  store %struct.Memory* %loadMem_4146bd, %struct.Memory** %MEMORY
  %loadMem_4146c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 33
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %5048 to i64*
  %5049 = load i64, i64* %PC.i463
  %5050 = add i64 %5049, 121
  %5051 = load i64, i64* %PC.i463
  %5052 = add i64 %5051, 6
  %5053 = load i64, i64* %PC.i463
  %5054 = add i64 %5053, 6
  store i64 %5054, i64* %PC.i463
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5056 = load i8, i8* %5055, align 1
  %5057 = icmp eq i8 %5056, 0
  %5058 = zext i1 %5057 to i8
  store i8 %5058, i8* %BRANCH_TAKEN, align 1
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5060 = select i1 %5057, i64 %5050, i64 %5052
  store i64 %5060, i64* %5059, align 8
  store %struct.Memory* %loadMem_4146c1, %struct.Memory** %MEMORY
  %loadBr_4146c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4146c1 = icmp eq i8 %loadBr_4146c1, 1
  br i1 %cmpBr_4146c1, label %block_.L_41473a, label %block_4146c7

block_4146c7:                                     ; preds = %block_414698
  %loadMem_4146c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5062 = getelementptr inbounds %struct.GPR, %struct.GPR* %5061, i32 0, i32 33
  %5063 = getelementptr inbounds %struct.Reg, %struct.Reg* %5062, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %5063 to i64*
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5065 = getelementptr inbounds %struct.GPR, %struct.GPR* %5064, i32 0, i32 1
  %5066 = getelementptr inbounds %struct.Reg, %struct.Reg* %5065, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %5066 to i64*
  %5067 = load i64, i64* %PC.i461
  %5068 = add i64 %5067, 10
  store i64 %5068, i64* %PC.i461
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i462, align 8
  store %struct.Memory* %loadMem_4146c7, %struct.Memory** %MEMORY
  %loadMem_4146d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5070 = getelementptr inbounds %struct.GPR, %struct.GPR* %5069, i32 0, i32 33
  %5071 = getelementptr inbounds %struct.Reg, %struct.Reg* %5070, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %5071 to i64*
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5073 = getelementptr inbounds %struct.GPR, %struct.GPR* %5072, i32 0, i32 5
  %5074 = getelementptr inbounds %struct.Reg, %struct.Reg* %5073, i32 0, i32 0
  %RCX.i459 = bitcast %union.anon* %5074 to i64*
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5076 = getelementptr inbounds %struct.GPR, %struct.GPR* %5075, i32 0, i32 15
  %5077 = getelementptr inbounds %struct.Reg, %struct.Reg* %5076, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %5077 to i64*
  %5078 = load i64, i64* %RBP.i460
  %5079 = sub i64 %5078, 8
  %5080 = load i64, i64* %PC.i458
  %5081 = add i64 %5080, 3
  store i64 %5081, i64* %PC.i458
  %5082 = inttoptr i64 %5079 to i32*
  %5083 = load i32, i32* %5082
  %5084 = zext i32 %5083 to i64
  store i64 %5084, i64* %RCX.i459, align 8
  store %struct.Memory* %loadMem_4146d1, %struct.Memory** %MEMORY
  %loadMem_4146d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5086 = getelementptr inbounds %struct.GPR, %struct.GPR* %5085, i32 0, i32 33
  %5087 = getelementptr inbounds %struct.Reg, %struct.Reg* %5086, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %5087 to i64*
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5089 = getelementptr inbounds %struct.GPR, %struct.GPR* %5088, i32 0, i32 5
  %5090 = getelementptr inbounds %struct.Reg, %struct.Reg* %5089, i32 0, i32 0
  %RCX.i457 = bitcast %union.anon* %5090 to i64*
  %5091 = load i64, i64* %RCX.i457
  %5092 = load i64, i64* %PC.i456
  %5093 = add i64 %5092, 3
  store i64 %5093, i64* %PC.i456
  %5094 = trunc i64 %5091 to i32
  %5095 = sub i32 %5094, 1
  %5096 = zext i32 %5095 to i64
  store i64 %5096, i64* %RCX.i457, align 8
  %5097 = icmp ult i32 %5094, 1
  %5098 = zext i1 %5097 to i8
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5098, i8* %5099, align 1
  %5100 = and i32 %5095, 255
  %5101 = call i32 @llvm.ctpop.i32(i32 %5100)
  %5102 = trunc i32 %5101 to i8
  %5103 = and i8 %5102, 1
  %5104 = xor i8 %5103, 1
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5104, i8* %5105, align 1
  %5106 = xor i64 1, %5091
  %5107 = trunc i64 %5106 to i32
  %5108 = xor i32 %5107, %5095
  %5109 = lshr i32 %5108, 4
  %5110 = trunc i32 %5109 to i8
  %5111 = and i8 %5110, 1
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5111, i8* %5112, align 1
  %5113 = icmp eq i32 %5095, 0
  %5114 = zext i1 %5113 to i8
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5114, i8* %5115, align 1
  %5116 = lshr i32 %5095, 31
  %5117 = trunc i32 %5116 to i8
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5117, i8* %5118, align 1
  %5119 = lshr i32 %5094, 31
  %5120 = xor i32 %5116, %5119
  %5121 = add i32 %5120, %5119
  %5122 = icmp eq i32 %5121, 2
  %5123 = zext i1 %5122 to i8
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5123, i8* %5124, align 1
  store %struct.Memory* %loadMem_4146d4, %struct.Memory** %MEMORY
  %loadMem_4146d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5126 = getelementptr inbounds %struct.GPR, %struct.GPR* %5125, i32 0, i32 33
  %5127 = getelementptr inbounds %struct.Reg, %struct.Reg* %5126, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %5127 to i64*
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5129 = getelementptr inbounds %struct.GPR, %struct.GPR* %5128, i32 0, i32 5
  %5130 = getelementptr inbounds %struct.Reg, %struct.Reg* %5129, i32 0, i32 0
  %ECX.i454 = bitcast %union.anon* %5130 to i32*
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 7
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %RDX.i455 = bitcast %union.anon* %5133 to i64*
  %5134 = load i32, i32* %ECX.i454
  %5135 = zext i32 %5134 to i64
  %5136 = load i64, i64* %PC.i453
  %5137 = add i64 %5136, 3
  store i64 %5137, i64* %PC.i453
  %5138 = shl i64 %5135, 32
  %5139 = ashr exact i64 %5138, 32
  store i64 %5139, i64* %RDX.i455, align 8
  store %struct.Memory* %loadMem_4146d7, %struct.Memory** %MEMORY
  %loadMem_4146da = load %struct.Memory*, %struct.Memory** %MEMORY
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5141 = getelementptr inbounds %struct.GPR, %struct.GPR* %5140, i32 0, i32 33
  %5142 = getelementptr inbounds %struct.Reg, %struct.Reg* %5141, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %5142 to i64*
  %5143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5144 = getelementptr inbounds %struct.GPR, %struct.GPR* %5143, i32 0, i32 7
  %5145 = getelementptr inbounds %struct.Reg, %struct.Reg* %5144, i32 0, i32 0
  %RDX.i452 = bitcast %union.anon* %5145 to i64*
  %5146 = load i64, i64* %RDX.i452
  %5147 = mul i64 %5146, 4
  %5148 = add i64 %5147, 11187184
  %5149 = load i64, i64* %PC.i451
  %5150 = add i64 %5149, 8
  store i64 %5150, i64* %PC.i451
  %5151 = inttoptr i64 %5148 to i32*
  %5152 = load i32, i32* %5151
  %5153 = sext i32 %5152 to i64
  store i64 %5153, i64* %RDX.i452, align 8
  store %struct.Memory* %loadMem_4146da, %struct.Memory** %MEMORY
  %loadMem_4146e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5155 = getelementptr inbounds %struct.GPR, %struct.GPR* %5154, i32 0, i32 33
  %5156 = getelementptr inbounds %struct.Reg, %struct.Reg* %5155, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %5156 to i64*
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5158 = getelementptr inbounds %struct.GPR, %struct.GPR* %5157, i32 0, i32 7
  %5159 = getelementptr inbounds %struct.Reg, %struct.Reg* %5158, i32 0, i32 0
  %RDX.i450 = bitcast %union.anon* %5159 to i64*
  %5160 = load i64, i64* %RDX.i450
  %5161 = load i64, i64* %PC.i449
  %5162 = add i64 %5161, 7
  store i64 %5162, i64* %PC.i449
  %5163 = sext i64 %5160 to i128
  %5164 = and i128 %5163, -18446744073709551616
  %5165 = zext i64 %5160 to i128
  %5166 = or i128 %5164, %5165
  %5167 = mul i128 744, %5166
  %5168 = trunc i128 %5167 to i64
  store i64 %5168, i64* %RDX.i450, align 8
  %5169 = sext i64 %5168 to i128
  %5170 = icmp ne i128 %5169, %5167
  %5171 = zext i1 %5170 to i8
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5171, i8* %5172, align 1
  %5173 = trunc i128 %5167 to i32
  %5174 = and i32 %5173, 255
  %5175 = call i32 @llvm.ctpop.i32(i32 %5174)
  %5176 = trunc i32 %5175 to i8
  %5177 = and i8 %5176, 1
  %5178 = xor i8 %5177, 1
  %5179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5178, i8* %5179, align 1
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5180, align 1
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5181, align 1
  %5182 = lshr i64 %5168, 63
  %5183 = trunc i64 %5182 to i8
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5183, i8* %5184, align 1
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5171, i8* %5185, align 1
  store %struct.Memory* %loadMem_4146e2, %struct.Memory** %MEMORY
  %loadMem_4146e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5187 = getelementptr inbounds %struct.GPR, %struct.GPR* %5186, i32 0, i32 33
  %5188 = getelementptr inbounds %struct.Reg, %struct.Reg* %5187, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %5188 to i64*
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5190 = getelementptr inbounds %struct.GPR, %struct.GPR* %5189, i32 0, i32 1
  %5191 = getelementptr inbounds %struct.Reg, %struct.Reg* %5190, i32 0, i32 0
  %RAX.i447 = bitcast %union.anon* %5191 to i64*
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5193 = getelementptr inbounds %struct.GPR, %struct.GPR* %5192, i32 0, i32 7
  %5194 = getelementptr inbounds %struct.Reg, %struct.Reg* %5193, i32 0, i32 0
  %RDX.i448 = bitcast %union.anon* %5194 to i64*
  %5195 = load i64, i64* %RAX.i447
  %5196 = load i64, i64* %RDX.i448
  %5197 = load i64, i64* %PC.i446
  %5198 = add i64 %5197, 3
  store i64 %5198, i64* %PC.i446
  %5199 = add i64 %5196, %5195
  store i64 %5199, i64* %RAX.i447, align 8
  %5200 = icmp ult i64 %5199, %5195
  %5201 = icmp ult i64 %5199, %5196
  %5202 = or i1 %5200, %5201
  %5203 = zext i1 %5202 to i8
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5203, i8* %5204, align 1
  %5205 = trunc i64 %5199 to i32
  %5206 = and i32 %5205, 255
  %5207 = call i32 @llvm.ctpop.i32(i32 %5206)
  %5208 = trunc i32 %5207 to i8
  %5209 = and i8 %5208, 1
  %5210 = xor i8 %5209, 1
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5210, i8* %5211, align 1
  %5212 = xor i64 %5196, %5195
  %5213 = xor i64 %5212, %5199
  %5214 = lshr i64 %5213, 4
  %5215 = trunc i64 %5214 to i8
  %5216 = and i8 %5215, 1
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5216, i8* %5217, align 1
  %5218 = icmp eq i64 %5199, 0
  %5219 = zext i1 %5218 to i8
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5219, i8* %5220, align 1
  %5221 = lshr i64 %5199, 63
  %5222 = trunc i64 %5221 to i8
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5222, i8* %5223, align 1
  %5224 = lshr i64 %5195, 63
  %5225 = lshr i64 %5196, 63
  %5226 = xor i64 %5221, %5224
  %5227 = xor i64 %5221, %5225
  %5228 = add i64 %5226, %5227
  %5229 = icmp eq i64 %5228, 2
  %5230 = zext i1 %5229 to i8
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5230, i8* %5231, align 1
  store %struct.Memory* %loadMem_4146e9, %struct.Memory** %MEMORY
  %loadMem_4146ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5233 = getelementptr inbounds %struct.GPR, %struct.GPR* %5232, i32 0, i32 33
  %5234 = getelementptr inbounds %struct.Reg, %struct.Reg* %5233, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %5234 to i64*
  %5235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5236 = getelementptr inbounds %struct.GPR, %struct.GPR* %5235, i32 0, i32 1
  %5237 = getelementptr inbounds %struct.Reg, %struct.Reg* %5236, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %5237 to i64*
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5239 = getelementptr inbounds %struct.GPR, %struct.GPR* %5238, i32 0, i32 5
  %5240 = getelementptr inbounds %struct.Reg, %struct.Reg* %5239, i32 0, i32 0
  %RCX.i445 = bitcast %union.anon* %5240 to i64*
  %5241 = load i64, i64* %RAX.i444
  %5242 = add i64 %5241, 740
  %5243 = load i64, i64* %PC.i443
  %5244 = add i64 %5243, 6
  store i64 %5244, i64* %PC.i443
  %5245 = inttoptr i64 %5242 to i32*
  %5246 = load i32, i32* %5245
  %5247 = zext i32 %5246 to i64
  store i64 %5247, i64* %RCX.i445, align 8
  store %struct.Memory* %loadMem_4146ec, %struct.Memory** %MEMORY
  %loadMem_4146f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5249 = getelementptr inbounds %struct.GPR, %struct.GPR* %5248, i32 0, i32 33
  %5250 = getelementptr inbounds %struct.Reg, %struct.Reg* %5249, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %5250 to i64*
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5252 = getelementptr inbounds %struct.GPR, %struct.GPR* %5251, i32 0, i32 5
  %5253 = getelementptr inbounds %struct.Reg, %struct.Reg* %5252, i32 0, i32 0
  %ECX.i442 = bitcast %union.anon* %5253 to i32*
  %5254 = load i32, i32* %ECX.i442
  %5255 = zext i32 %5254 to i64
  %5256 = load i64, i64* %PC.i441
  %5257 = add i64 %5256, 7
  store i64 %5257, i64* %PC.i441
  %5258 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %5259 = sub i32 %5254, %5258
  %5260 = icmp ult i32 %5254, %5258
  %5261 = zext i1 %5260 to i8
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5261, i8* %5262, align 1
  %5263 = and i32 %5259, 255
  %5264 = call i32 @llvm.ctpop.i32(i32 %5263)
  %5265 = trunc i32 %5264 to i8
  %5266 = and i8 %5265, 1
  %5267 = xor i8 %5266, 1
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5267, i8* %5268, align 1
  %5269 = xor i32 %5258, %5254
  %5270 = xor i32 %5269, %5259
  %5271 = lshr i32 %5270, 4
  %5272 = trunc i32 %5271 to i8
  %5273 = and i8 %5272, 1
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5273, i8* %5274, align 1
  %5275 = icmp eq i32 %5259, 0
  %5276 = zext i1 %5275 to i8
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5276, i8* %5277, align 1
  %5278 = lshr i32 %5259, 31
  %5279 = trunc i32 %5278 to i8
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5279, i8* %5280, align 1
  %5281 = lshr i32 %5254, 31
  %5282 = lshr i32 %5258, 31
  %5283 = xor i32 %5282, %5281
  %5284 = xor i32 %5278, %5281
  %5285 = add i32 %5284, %5283
  %5286 = icmp eq i32 %5285, 2
  %5287 = zext i1 %5286 to i8
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5287, i8* %5288, align 1
  store %struct.Memory* %loadMem_4146f2, %struct.Memory** %MEMORY
  %loadMem_4146f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5290 = getelementptr inbounds %struct.GPR, %struct.GPR* %5289, i32 0, i32 33
  %5291 = getelementptr inbounds %struct.Reg, %struct.Reg* %5290, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %5291 to i64*
  %5292 = load i64, i64* %PC.i440
  %5293 = add i64 %5292, 65
  %5294 = load i64, i64* %PC.i440
  %5295 = add i64 %5294, 6
  %5296 = load i64, i64* %PC.i440
  %5297 = add i64 %5296, 6
  store i64 %5297, i64* %PC.i440
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5299 = load i8, i8* %5298, align 1
  store i8 %5299, i8* %BRANCH_TAKEN, align 1
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5301 = icmp ne i8 %5299, 0
  %5302 = select i1 %5301, i64 %5293, i64 %5295
  store i64 %5302, i64* %5300, align 8
  store %struct.Memory* %loadMem_4146f9, %struct.Memory** %MEMORY
  %loadBr_4146f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4146f9 = icmp eq i8 %loadBr_4146f9, 1
  br i1 %cmpBr_4146f9, label %block_.L_41473a, label %block_4146ff

block_4146ff:                                     ; preds = %block_4146c7
  %loadMem_4146ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5304 = getelementptr inbounds %struct.GPR, %struct.GPR* %5303, i32 0, i32 33
  %5305 = getelementptr inbounds %struct.Reg, %struct.Reg* %5304, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %5305 to i64*
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5307 = getelementptr inbounds %struct.GPR, %struct.GPR* %5306, i32 0, i32 1
  %5308 = getelementptr inbounds %struct.Reg, %struct.Reg* %5307, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %5308 to i64*
  %5309 = load i64, i64* %PC.i438
  %5310 = add i64 %5309, 10
  store i64 %5310, i64* %PC.i438
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i439, align 8
  store %struct.Memory* %loadMem_4146ff, %struct.Memory** %MEMORY
  %loadMem_414709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5312 = getelementptr inbounds %struct.GPR, %struct.GPR* %5311, i32 0, i32 33
  %5313 = getelementptr inbounds %struct.Reg, %struct.Reg* %5312, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %5313 to i64*
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5315 = getelementptr inbounds %struct.GPR, %struct.GPR* %5314, i32 0, i32 5
  %5316 = getelementptr inbounds %struct.Reg, %struct.Reg* %5315, i32 0, i32 0
  %RCX.i436 = bitcast %union.anon* %5316 to i64*
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5318 = getelementptr inbounds %struct.GPR, %struct.GPR* %5317, i32 0, i32 15
  %5319 = getelementptr inbounds %struct.Reg, %struct.Reg* %5318, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %5319 to i64*
  %5320 = load i64, i64* %RBP.i437
  %5321 = sub i64 %5320, 24
  %5322 = load i64, i64* %PC.i435
  %5323 = add i64 %5322, 3
  store i64 %5323, i64* %PC.i435
  %5324 = inttoptr i64 %5321 to i32*
  %5325 = load i32, i32* %5324
  %5326 = zext i32 %5325 to i64
  store i64 %5326, i64* %RCX.i436, align 8
  store %struct.Memory* %loadMem_414709, %struct.Memory** %MEMORY
  %loadMem_41470c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5328 = getelementptr inbounds %struct.GPR, %struct.GPR* %5327, i32 0, i32 33
  %5329 = getelementptr inbounds %struct.Reg, %struct.Reg* %5328, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %5329 to i64*
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5331 = getelementptr inbounds %struct.GPR, %struct.GPR* %5330, i32 0, i32 5
  %5332 = getelementptr inbounds %struct.Reg, %struct.Reg* %5331, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %5332 to i64*
  %5333 = load i64, i64* %RCX.i434
  %5334 = load i64, i64* %PC.i433
  %5335 = add i64 %5334, 3
  store i64 %5335, i64* %PC.i433
  %5336 = trunc i64 %5333 to i32
  %5337 = add i32 1, %5336
  %5338 = zext i32 %5337 to i64
  store i64 %5338, i64* %RCX.i434, align 8
  %5339 = icmp ult i32 %5337, %5336
  %5340 = icmp ult i32 %5337, 1
  %5341 = or i1 %5339, %5340
  %5342 = zext i1 %5341 to i8
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5342, i8* %5343, align 1
  %5344 = and i32 %5337, 255
  %5345 = call i32 @llvm.ctpop.i32(i32 %5344)
  %5346 = trunc i32 %5345 to i8
  %5347 = and i8 %5346, 1
  %5348 = xor i8 %5347, 1
  %5349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5348, i8* %5349, align 1
  %5350 = xor i64 1, %5333
  %5351 = trunc i64 %5350 to i32
  %5352 = xor i32 %5351, %5337
  %5353 = lshr i32 %5352, 4
  %5354 = trunc i32 %5353 to i8
  %5355 = and i8 %5354, 1
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5355, i8* %5356, align 1
  %5357 = icmp eq i32 %5337, 0
  %5358 = zext i1 %5357 to i8
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5358, i8* %5359, align 1
  %5360 = lshr i32 %5337, 31
  %5361 = trunc i32 %5360 to i8
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5361, i8* %5362, align 1
  %5363 = lshr i32 %5336, 31
  %5364 = xor i32 %5360, %5363
  %5365 = add i32 %5364, %5360
  %5366 = icmp eq i32 %5365, 2
  %5367 = zext i1 %5366 to i8
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5367, i8* %5368, align 1
  store %struct.Memory* %loadMem_41470c, %struct.Memory** %MEMORY
  %loadMem_41470f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5370 = getelementptr inbounds %struct.GPR, %struct.GPR* %5369, i32 0, i32 33
  %5371 = getelementptr inbounds %struct.Reg, %struct.Reg* %5370, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %5371 to i64*
  %5372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5373 = getelementptr inbounds %struct.GPR, %struct.GPR* %5372, i32 0, i32 5
  %5374 = getelementptr inbounds %struct.Reg, %struct.Reg* %5373, i32 0, i32 0
  %ECX.i431 = bitcast %union.anon* %5374 to i32*
  %5375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5376 = getelementptr inbounds %struct.GPR, %struct.GPR* %5375, i32 0, i32 15
  %5377 = getelementptr inbounds %struct.Reg, %struct.Reg* %5376, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %5377 to i64*
  %5378 = load i64, i64* %RBP.i432
  %5379 = sub i64 %5378, 24
  %5380 = load i32, i32* %ECX.i431
  %5381 = zext i32 %5380 to i64
  %5382 = load i64, i64* %PC.i430
  %5383 = add i64 %5382, 3
  store i64 %5383, i64* %PC.i430
  %5384 = inttoptr i64 %5379 to i32*
  store i32 %5380, i32* %5384
  store %struct.Memory* %loadMem_41470f, %struct.Memory** %MEMORY
  %loadMem_414712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 33
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %5387 to i64*
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5389 = getelementptr inbounds %struct.GPR, %struct.GPR* %5388, i32 0, i32 5
  %5390 = getelementptr inbounds %struct.Reg, %struct.Reg* %5389, i32 0, i32 0
  %RCX.i429 = bitcast %union.anon* %5390 to i64*
  %5391 = load i64, i64* %PC.i428
  %5392 = add i64 %5391, 7
  store i64 %5392, i64* %PC.i428
  %5393 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %5394 = zext i32 %5393 to i64
  store i64 %5394, i64* %RCX.i429, align 8
  store %struct.Memory* %loadMem_414712, %struct.Memory** %MEMORY
  %loadMem_414719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5396 = getelementptr inbounds %struct.GPR, %struct.GPR* %5395, i32 0, i32 33
  %5397 = getelementptr inbounds %struct.Reg, %struct.Reg* %5396, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %5397 to i64*
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5399 = getelementptr inbounds %struct.GPR, %struct.GPR* %5398, i32 0, i32 7
  %5400 = getelementptr inbounds %struct.Reg, %struct.Reg* %5399, i32 0, i32 0
  %RDX.i426 = bitcast %union.anon* %5400 to i64*
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5402 = getelementptr inbounds %struct.GPR, %struct.GPR* %5401, i32 0, i32 15
  %5403 = getelementptr inbounds %struct.Reg, %struct.Reg* %5402, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %5403 to i64*
  %5404 = load i64, i64* %RBP.i427
  %5405 = sub i64 %5404, 8
  %5406 = load i64, i64* %PC.i425
  %5407 = add i64 %5406, 3
  store i64 %5407, i64* %PC.i425
  %5408 = inttoptr i64 %5405 to i32*
  %5409 = load i32, i32* %5408
  %5410 = zext i32 %5409 to i64
  store i64 %5410, i64* %RDX.i426, align 8
  store %struct.Memory* %loadMem_414719, %struct.Memory** %MEMORY
  %loadMem_41471c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5412 = getelementptr inbounds %struct.GPR, %struct.GPR* %5411, i32 0, i32 33
  %5413 = getelementptr inbounds %struct.Reg, %struct.Reg* %5412, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %5413 to i64*
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5415 = getelementptr inbounds %struct.GPR, %struct.GPR* %5414, i32 0, i32 7
  %5416 = getelementptr inbounds %struct.Reg, %struct.Reg* %5415, i32 0, i32 0
  %RDX.i424 = bitcast %union.anon* %5416 to i64*
  %5417 = load i64, i64* %RDX.i424
  %5418 = load i64, i64* %PC.i423
  %5419 = add i64 %5418, 3
  store i64 %5419, i64* %PC.i423
  %5420 = trunc i64 %5417 to i32
  %5421 = sub i32 %5420, 1
  %5422 = zext i32 %5421 to i64
  store i64 %5422, i64* %RDX.i424, align 8
  %5423 = icmp ult i32 %5420, 1
  %5424 = zext i1 %5423 to i8
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5424, i8* %5425, align 1
  %5426 = and i32 %5421, 255
  %5427 = call i32 @llvm.ctpop.i32(i32 %5426)
  %5428 = trunc i32 %5427 to i8
  %5429 = and i8 %5428, 1
  %5430 = xor i8 %5429, 1
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5430, i8* %5431, align 1
  %5432 = xor i64 1, %5417
  %5433 = trunc i64 %5432 to i32
  %5434 = xor i32 %5433, %5421
  %5435 = lshr i32 %5434, 4
  %5436 = trunc i32 %5435 to i8
  %5437 = and i8 %5436, 1
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5437, i8* %5438, align 1
  %5439 = icmp eq i32 %5421, 0
  %5440 = zext i1 %5439 to i8
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5440, i8* %5441, align 1
  %5442 = lshr i32 %5421, 31
  %5443 = trunc i32 %5442 to i8
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5443, i8* %5444, align 1
  %5445 = lshr i32 %5420, 31
  %5446 = xor i32 %5442, %5445
  %5447 = add i32 %5446, %5445
  %5448 = icmp eq i32 %5447, 2
  %5449 = zext i1 %5448 to i8
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5449, i8* %5450, align 1
  store %struct.Memory* %loadMem_41471c, %struct.Memory** %MEMORY
  %loadMem_41471f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5452 = getelementptr inbounds %struct.GPR, %struct.GPR* %5451, i32 0, i32 33
  %5453 = getelementptr inbounds %struct.Reg, %struct.Reg* %5452, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %5453 to i64*
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5455 = getelementptr inbounds %struct.GPR, %struct.GPR* %5454, i32 0, i32 7
  %5456 = getelementptr inbounds %struct.Reg, %struct.Reg* %5455, i32 0, i32 0
  %EDX.i421 = bitcast %union.anon* %5456 to i32*
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5458 = getelementptr inbounds %struct.GPR, %struct.GPR* %5457, i32 0, i32 9
  %5459 = getelementptr inbounds %struct.Reg, %struct.Reg* %5458, i32 0, i32 0
  %RSI.i422 = bitcast %union.anon* %5459 to i64*
  %5460 = load i32, i32* %EDX.i421
  %5461 = zext i32 %5460 to i64
  %5462 = load i64, i64* %PC.i420
  %5463 = add i64 %5462, 3
  store i64 %5463, i64* %PC.i420
  %5464 = shl i64 %5461, 32
  %5465 = ashr exact i64 %5464, 32
  store i64 %5465, i64* %RSI.i422, align 8
  store %struct.Memory* %loadMem_41471f, %struct.Memory** %MEMORY
  %loadMem_414722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 33
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %5468 to i64*
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5470 = getelementptr inbounds %struct.GPR, %struct.GPR* %5469, i32 0, i32 9
  %5471 = getelementptr inbounds %struct.Reg, %struct.Reg* %5470, i32 0, i32 0
  %RSI.i419 = bitcast %union.anon* %5471 to i64*
  %5472 = load i64, i64* %RSI.i419
  %5473 = mul i64 %5472, 4
  %5474 = add i64 %5473, 11187184
  %5475 = load i64, i64* %PC.i418
  %5476 = add i64 %5475, 8
  store i64 %5476, i64* %PC.i418
  %5477 = inttoptr i64 %5474 to i32*
  %5478 = load i32, i32* %5477
  %5479 = sext i32 %5478 to i64
  store i64 %5479, i64* %RSI.i419, align 8
  store %struct.Memory* %loadMem_414722, %struct.Memory** %MEMORY
  %loadMem_41472a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5481 = getelementptr inbounds %struct.GPR, %struct.GPR* %5480, i32 0, i32 33
  %5482 = getelementptr inbounds %struct.Reg, %struct.Reg* %5481, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %5482 to i64*
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5484 = getelementptr inbounds %struct.GPR, %struct.GPR* %5483, i32 0, i32 9
  %5485 = getelementptr inbounds %struct.Reg, %struct.Reg* %5484, i32 0, i32 0
  %RSI.i417 = bitcast %union.anon* %5485 to i64*
  %5486 = load i64, i64* %RSI.i417
  %5487 = load i64, i64* %PC.i416
  %5488 = add i64 %5487, 7
  store i64 %5488, i64* %PC.i416
  %5489 = sext i64 %5486 to i128
  %5490 = and i128 %5489, -18446744073709551616
  %5491 = zext i64 %5486 to i128
  %5492 = or i128 %5490, %5491
  %5493 = mul i128 744, %5492
  %5494 = trunc i128 %5493 to i64
  store i64 %5494, i64* %RSI.i417, align 8
  %5495 = sext i64 %5494 to i128
  %5496 = icmp ne i128 %5495, %5493
  %5497 = zext i1 %5496 to i8
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5497, i8* %5498, align 1
  %5499 = trunc i128 %5493 to i32
  %5500 = and i32 %5499, 255
  %5501 = call i32 @llvm.ctpop.i32(i32 %5500)
  %5502 = trunc i32 %5501 to i8
  %5503 = and i8 %5502, 1
  %5504 = xor i8 %5503, 1
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5504, i8* %5505, align 1
  %5506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5506, align 1
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5507, align 1
  %5508 = lshr i64 %5494, 63
  %5509 = trunc i64 %5508 to i8
  %5510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5509, i8* %5510, align 1
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5497, i8* %5511, align 1
  store %struct.Memory* %loadMem_41472a, %struct.Memory** %MEMORY
  %loadMem_414731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5513 = getelementptr inbounds %struct.GPR, %struct.GPR* %5512, i32 0, i32 33
  %5514 = getelementptr inbounds %struct.Reg, %struct.Reg* %5513, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %5514 to i64*
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5516 = getelementptr inbounds %struct.GPR, %struct.GPR* %5515, i32 0, i32 1
  %5517 = getelementptr inbounds %struct.Reg, %struct.Reg* %5516, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %5517 to i64*
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5519 = getelementptr inbounds %struct.GPR, %struct.GPR* %5518, i32 0, i32 9
  %5520 = getelementptr inbounds %struct.Reg, %struct.Reg* %5519, i32 0, i32 0
  %RSI.i415 = bitcast %union.anon* %5520 to i64*
  %5521 = load i64, i64* %RAX.i414
  %5522 = load i64, i64* %RSI.i415
  %5523 = load i64, i64* %PC.i413
  %5524 = add i64 %5523, 3
  store i64 %5524, i64* %PC.i413
  %5525 = add i64 %5522, %5521
  store i64 %5525, i64* %RAX.i414, align 8
  %5526 = icmp ult i64 %5525, %5521
  %5527 = icmp ult i64 %5525, %5522
  %5528 = or i1 %5526, %5527
  %5529 = zext i1 %5528 to i8
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5529, i8* %5530, align 1
  %5531 = trunc i64 %5525 to i32
  %5532 = and i32 %5531, 255
  %5533 = call i32 @llvm.ctpop.i32(i32 %5532)
  %5534 = trunc i32 %5533 to i8
  %5535 = and i8 %5534, 1
  %5536 = xor i8 %5535, 1
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5536, i8* %5537, align 1
  %5538 = xor i64 %5522, %5521
  %5539 = xor i64 %5538, %5525
  %5540 = lshr i64 %5539, 4
  %5541 = trunc i64 %5540 to i8
  %5542 = and i8 %5541, 1
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5542, i8* %5543, align 1
  %5544 = icmp eq i64 %5525, 0
  %5545 = zext i1 %5544 to i8
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5545, i8* %5546, align 1
  %5547 = lshr i64 %5525, 63
  %5548 = trunc i64 %5547 to i8
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5548, i8* %5549, align 1
  %5550 = lshr i64 %5521, 63
  %5551 = lshr i64 %5522, 63
  %5552 = xor i64 %5547, %5550
  %5553 = xor i64 %5547, %5551
  %5554 = add i64 %5552, %5553
  %5555 = icmp eq i64 %5554, 2
  %5556 = zext i1 %5555 to i8
  %5557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5556, i8* %5557, align 1
  store %struct.Memory* %loadMem_414731, %struct.Memory** %MEMORY
  %loadMem_414734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5559 = getelementptr inbounds %struct.GPR, %struct.GPR* %5558, i32 0, i32 33
  %5560 = getelementptr inbounds %struct.Reg, %struct.Reg* %5559, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %5560 to i64*
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5562 = getelementptr inbounds %struct.GPR, %struct.GPR* %5561, i32 0, i32 5
  %5563 = getelementptr inbounds %struct.Reg, %struct.Reg* %5562, i32 0, i32 0
  %ECX.i411 = bitcast %union.anon* %5563 to i32*
  %5564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5565 = getelementptr inbounds %struct.GPR, %struct.GPR* %5564, i32 0, i32 1
  %5566 = getelementptr inbounds %struct.Reg, %struct.Reg* %5565, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %5566 to i64*
  %5567 = load i64, i64* %RAX.i412
  %5568 = add i64 %5567, 740
  %5569 = load i32, i32* %ECX.i411
  %5570 = zext i32 %5569 to i64
  %5571 = load i64, i64* %PC.i410
  %5572 = add i64 %5571, 6
  store i64 %5572, i64* %PC.i410
  %5573 = inttoptr i64 %5568 to i32*
  store i32 %5569, i32* %5573
  store %struct.Memory* %loadMem_414734, %struct.Memory** %MEMORY
  br label %block_.L_41473a

block_.L_41473a:                                  ; preds = %block_4146ff, %block_4146c7, %block_414698, %block_.L_41467e
  %loadMem_41473a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5575 = getelementptr inbounds %struct.GPR, %struct.GPR* %5574, i32 0, i32 33
  %5576 = getelementptr inbounds %struct.Reg, %struct.Reg* %5575, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %5576 to i64*
  %5577 = load i64, i64* %PC.i409
  %5578 = add i64 %5577, 5
  %5579 = load i64, i64* %PC.i409
  %5580 = add i64 %5579, 5
  store i64 %5580, i64* %PC.i409
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5578, i64* %5581, align 8
  store %struct.Memory* %loadMem_41473a, %struct.Memory** %MEMORY
  br label %block_.L_41473f

block_.L_41473f:                                  ; preds = %block_.L_41473a, %block_.L_414679
  %loadMem_41473f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5583 = getelementptr inbounds %struct.GPR, %struct.GPR* %5582, i32 0, i32 33
  %5584 = getelementptr inbounds %struct.Reg, %struct.Reg* %5583, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %5584 to i64*
  %5585 = load i64, i64* %PC.i408
  %5586 = add i64 %5585, 5
  %5587 = load i64, i64* %PC.i408
  %5588 = add i64 %5587, 5
  store i64 %5588, i64* %PC.i408
  %5589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5586, i64* %5589, align 8
  store %struct.Memory* %loadMem_41473f, %struct.Memory** %MEMORY
  br label %block_.L_414744

block_.L_414744:                                  ; preds = %block_.L_41473f, %block_4145de
  %loadMem_414744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5591 = getelementptr inbounds %struct.GPR, %struct.GPR* %5590, i32 0, i32 33
  %5592 = getelementptr inbounds %struct.Reg, %struct.Reg* %5591, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %5592 to i64*
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5594 = getelementptr inbounds %struct.GPR, %struct.GPR* %5593, i32 0, i32 1
  %5595 = getelementptr inbounds %struct.Reg, %struct.Reg* %5594, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %5595 to i64*
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5597 = getelementptr inbounds %struct.GPR, %struct.GPR* %5596, i32 0, i32 15
  %5598 = getelementptr inbounds %struct.Reg, %struct.Reg* %5597, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %5598 to i64*
  %5599 = load i64, i64* %RBP.i407
  %5600 = sub i64 %5599, 8
  %5601 = load i64, i64* %PC.i405
  %5602 = add i64 %5601, 3
  store i64 %5602, i64* %PC.i405
  %5603 = inttoptr i64 %5600 to i32*
  %5604 = load i32, i32* %5603
  %5605 = zext i32 %5604 to i64
  store i64 %5605, i64* %RAX.i406, align 8
  store %struct.Memory* %loadMem_414744, %struct.Memory** %MEMORY
  %loadMem_414747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5607 = getelementptr inbounds %struct.GPR, %struct.GPR* %5606, i32 0, i32 33
  %5608 = getelementptr inbounds %struct.Reg, %struct.Reg* %5607, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %5608 to i64*
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5610 = getelementptr inbounds %struct.GPR, %struct.GPR* %5609, i32 0, i32 1
  %5611 = getelementptr inbounds %struct.Reg, %struct.Reg* %5610, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %5611 to i64*
  %5612 = load i64, i64* %RAX.i404
  %5613 = load i64, i64* %PC.i403
  %5614 = add i64 %5613, 3
  store i64 %5614, i64* %PC.i403
  %5615 = trunc i64 %5612 to i32
  %5616 = sub i32 %5615, 20
  %5617 = zext i32 %5616 to i64
  store i64 %5617, i64* %RAX.i404, align 8
  %5618 = icmp ult i32 %5615, 20
  %5619 = zext i1 %5618 to i8
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5619, i8* %5620, align 1
  %5621 = and i32 %5616, 255
  %5622 = call i32 @llvm.ctpop.i32(i32 %5621)
  %5623 = trunc i32 %5622 to i8
  %5624 = and i8 %5623, 1
  %5625 = xor i8 %5624, 1
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5625, i8* %5626, align 1
  %5627 = xor i64 20, %5612
  %5628 = trunc i64 %5627 to i32
  %5629 = xor i32 %5628, %5616
  %5630 = lshr i32 %5629, 4
  %5631 = trunc i32 %5630 to i8
  %5632 = and i8 %5631, 1
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5632, i8* %5633, align 1
  %5634 = icmp eq i32 %5616, 0
  %5635 = zext i1 %5634 to i8
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5635, i8* %5636, align 1
  %5637 = lshr i32 %5616, 31
  %5638 = trunc i32 %5637 to i8
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5638, i8* %5639, align 1
  %5640 = lshr i32 %5615, 31
  %5641 = xor i32 %5637, %5640
  %5642 = add i32 %5641, %5640
  %5643 = icmp eq i32 %5642, 2
  %5644 = zext i1 %5643 to i8
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5644, i8* %5645, align 1
  store %struct.Memory* %loadMem_414747, %struct.Memory** %MEMORY
  %loadMem_41474a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5647 = getelementptr inbounds %struct.GPR, %struct.GPR* %5646, i32 0, i32 33
  %5648 = getelementptr inbounds %struct.Reg, %struct.Reg* %5647, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %5648 to i64*
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5650 = getelementptr inbounds %struct.GPR, %struct.GPR* %5649, i32 0, i32 1
  %5651 = getelementptr inbounds %struct.Reg, %struct.Reg* %5650, i32 0, i32 0
  %EAX.i401 = bitcast %union.anon* %5651 to i32*
  %5652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5653 = getelementptr inbounds %struct.GPR, %struct.GPR* %5652, i32 0, i32 5
  %5654 = getelementptr inbounds %struct.Reg, %struct.Reg* %5653, i32 0, i32 0
  %RCX.i402 = bitcast %union.anon* %5654 to i64*
  %5655 = load i32, i32* %EAX.i401
  %5656 = zext i32 %5655 to i64
  %5657 = load i64, i64* %PC.i400
  %5658 = add i64 %5657, 3
  store i64 %5658, i64* %PC.i400
  %5659 = shl i64 %5656, 32
  %5660 = ashr exact i64 %5659, 32
  store i64 %5660, i64* %RCX.i402, align 8
  store %struct.Memory* %loadMem_41474a, %struct.Memory** %MEMORY
  %loadMem_41474d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5662 = getelementptr inbounds %struct.GPR, %struct.GPR* %5661, i32 0, i32 33
  %5663 = getelementptr inbounds %struct.Reg, %struct.Reg* %5662, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %5663 to i64*
  %5664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5665 = getelementptr inbounds %struct.GPR, %struct.GPR* %5664, i32 0, i32 1
  %5666 = getelementptr inbounds %struct.Reg, %struct.Reg* %5665, i32 0, i32 0
  %RAX.i398 = bitcast %union.anon* %5666 to i64*
  %5667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5668 = getelementptr inbounds %struct.GPR, %struct.GPR* %5667, i32 0, i32 5
  %5669 = getelementptr inbounds %struct.Reg, %struct.Reg* %5668, i32 0, i32 0
  %RCX.i399 = bitcast %union.anon* %5669 to i64*
  %5670 = load i64, i64* %RCX.i399
  %5671 = add i64 %5670, 12099168
  %5672 = load i64, i64* %PC.i397
  %5673 = add i64 %5672, 8
  store i64 %5673, i64* %PC.i397
  %5674 = inttoptr i64 %5671 to i8*
  %5675 = load i8, i8* %5674
  %5676 = zext i8 %5675 to i64
  store i64 %5676, i64* %RAX.i398, align 8
  store %struct.Memory* %loadMem_41474d, %struct.Memory** %MEMORY
  %loadMem_414755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5678 = getelementptr inbounds %struct.GPR, %struct.GPR* %5677, i32 0, i32 33
  %5679 = getelementptr inbounds %struct.Reg, %struct.Reg* %5678, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %5679 to i64*
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5681 = getelementptr inbounds %struct.GPR, %struct.GPR* %5680, i32 0, i32 1
  %5682 = getelementptr inbounds %struct.Reg, %struct.Reg* %5681, i32 0, i32 0
  %EAX.i396 = bitcast %union.anon* %5682 to i32*
  %5683 = load i32, i32* %EAX.i396
  %5684 = zext i32 %5683 to i64
  %5685 = load i64, i64* %PC.i395
  %5686 = add i64 %5685, 3
  store i64 %5686, i64* %PC.i395
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5687, align 1
  %5688 = and i32 %5683, 255
  %5689 = call i32 @llvm.ctpop.i32(i32 %5688)
  %5690 = trunc i32 %5689 to i8
  %5691 = and i8 %5690, 1
  %5692 = xor i8 %5691, 1
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5692, i8* %5693, align 1
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5694, align 1
  %5695 = icmp eq i32 %5683, 0
  %5696 = zext i1 %5695 to i8
  %5697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5696, i8* %5697, align 1
  %5698 = lshr i32 %5683, 31
  %5699 = trunc i32 %5698 to i8
  %5700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5699, i8* %5700, align 1
  %5701 = lshr i32 %5683, 31
  %5702 = xor i32 %5698, %5701
  %5703 = add i32 %5702, %5701
  %5704 = icmp eq i32 %5703, 2
  %5705 = zext i1 %5704 to i8
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5705, i8* %5706, align 1
  store %struct.Memory* %loadMem_414755, %struct.Memory** %MEMORY
  %loadMem_414758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5708 = getelementptr inbounds %struct.GPR, %struct.GPR* %5707, i32 0, i32 33
  %5709 = getelementptr inbounds %struct.Reg, %struct.Reg* %5708, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %5709 to i64*
  %5710 = load i64, i64* %PC.i394
  %5711 = add i64 %5710, 20
  %5712 = load i64, i64* %PC.i394
  %5713 = add i64 %5712, 6
  %5714 = load i64, i64* %PC.i394
  %5715 = add i64 %5714, 6
  store i64 %5715, i64* %PC.i394
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5717 = load i8, i8* %5716, align 1
  %5718 = icmp eq i8 %5717, 0
  %5719 = zext i1 %5718 to i8
  store i8 %5719, i8* %BRANCH_TAKEN, align 1
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5721 = select i1 %5718, i64 %5711, i64 %5713
  store i64 %5721, i64* %5720, align 8
  store %struct.Memory* %loadMem_414758, %struct.Memory** %MEMORY
  %loadBr_414758 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414758 = icmp eq i8 %loadBr_414758, 1
  br i1 %cmpBr_414758, label %block_.L_41476c, label %block_41475e

block_41475e:                                     ; preds = %block_.L_414744
  %loadMem_41475e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5723 = getelementptr inbounds %struct.GPR, %struct.GPR* %5722, i32 0, i32 33
  %5724 = getelementptr inbounds %struct.Reg, %struct.Reg* %5723, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %5724 to i64*
  %5725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5726 = getelementptr inbounds %struct.GPR, %struct.GPR* %5725, i32 0, i32 1
  %5727 = getelementptr inbounds %struct.Reg, %struct.Reg* %5726, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %5727 to i64*
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5729 = getelementptr inbounds %struct.GPR, %struct.GPR* %5728, i32 0, i32 15
  %5730 = getelementptr inbounds %struct.Reg, %struct.Reg* %5729, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %5730 to i64*
  %5731 = load i64, i64* %RBP.i393
  %5732 = sub i64 %5731, 20
  %5733 = load i64, i64* %PC.i391
  %5734 = add i64 %5733, 3
  store i64 %5734, i64* %PC.i391
  %5735 = inttoptr i64 %5732 to i32*
  %5736 = load i32, i32* %5735
  %5737 = zext i32 %5736 to i64
  store i64 %5737, i64* %RAX.i392, align 8
  store %struct.Memory* %loadMem_41475e, %struct.Memory** %MEMORY
  %loadMem_414761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5739 = getelementptr inbounds %struct.GPR, %struct.GPR* %5738, i32 0, i32 33
  %5740 = getelementptr inbounds %struct.Reg, %struct.Reg* %5739, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %5740 to i64*
  %5741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5742 = getelementptr inbounds %struct.GPR, %struct.GPR* %5741, i32 0, i32 1
  %5743 = getelementptr inbounds %struct.Reg, %struct.Reg* %5742, i32 0, i32 0
  %RAX.i390 = bitcast %union.anon* %5743 to i64*
  %5744 = load i64, i64* %RAX.i390
  %5745 = load i64, i64* %PC.i389
  %5746 = add i64 %5745, 3
  store i64 %5746, i64* %PC.i389
  %5747 = trunc i64 %5744 to i32
  %5748 = add i32 1, %5747
  %5749 = zext i32 %5748 to i64
  store i64 %5749, i64* %RAX.i390, align 8
  %5750 = icmp ult i32 %5748, %5747
  %5751 = icmp ult i32 %5748, 1
  %5752 = or i1 %5750, %5751
  %5753 = zext i1 %5752 to i8
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5753, i8* %5754, align 1
  %5755 = and i32 %5748, 255
  %5756 = call i32 @llvm.ctpop.i32(i32 %5755)
  %5757 = trunc i32 %5756 to i8
  %5758 = and i8 %5757, 1
  %5759 = xor i8 %5758, 1
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5759, i8* %5760, align 1
  %5761 = xor i64 1, %5744
  %5762 = trunc i64 %5761 to i32
  %5763 = xor i32 %5762, %5748
  %5764 = lshr i32 %5763, 4
  %5765 = trunc i32 %5764 to i8
  %5766 = and i8 %5765, 1
  %5767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5766, i8* %5767, align 1
  %5768 = icmp eq i32 %5748, 0
  %5769 = zext i1 %5768 to i8
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5769, i8* %5770, align 1
  %5771 = lshr i32 %5748, 31
  %5772 = trunc i32 %5771 to i8
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5772, i8* %5773, align 1
  %5774 = lshr i32 %5747, 31
  %5775 = xor i32 %5771, %5774
  %5776 = add i32 %5775, %5771
  %5777 = icmp eq i32 %5776, 2
  %5778 = zext i1 %5777 to i8
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5778, i8* %5779, align 1
  store %struct.Memory* %loadMem_414761, %struct.Memory** %MEMORY
  %loadMem_414764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5781 = getelementptr inbounds %struct.GPR, %struct.GPR* %5780, i32 0, i32 33
  %5782 = getelementptr inbounds %struct.Reg, %struct.Reg* %5781, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %5782 to i64*
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5784 = getelementptr inbounds %struct.GPR, %struct.GPR* %5783, i32 0, i32 1
  %5785 = getelementptr inbounds %struct.Reg, %struct.Reg* %5784, i32 0, i32 0
  %EAX.i387 = bitcast %union.anon* %5785 to i32*
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5787 = getelementptr inbounds %struct.GPR, %struct.GPR* %5786, i32 0, i32 15
  %5788 = getelementptr inbounds %struct.Reg, %struct.Reg* %5787, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %5788 to i64*
  %5789 = load i64, i64* %RBP.i388
  %5790 = sub i64 %5789, 20
  %5791 = load i32, i32* %EAX.i387
  %5792 = zext i32 %5791 to i64
  %5793 = load i64, i64* %PC.i386
  %5794 = add i64 %5793, 3
  store i64 %5794, i64* %PC.i386
  %5795 = inttoptr i64 %5790 to i32*
  store i32 %5791, i32* %5795
  store %struct.Memory* %loadMem_414764, %struct.Memory** %MEMORY
  %loadMem_414767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5797 = getelementptr inbounds %struct.GPR, %struct.GPR* %5796, i32 0, i32 33
  %5798 = getelementptr inbounds %struct.Reg, %struct.Reg* %5797, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %5798 to i64*
  %5799 = load i64, i64* %PC.i385
  %5800 = add i64 %5799, 349
  %5801 = load i64, i64* %PC.i385
  %5802 = add i64 %5801, 5
  store i64 %5802, i64* %PC.i385
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5800, i64* %5803, align 8
  store %struct.Memory* %loadMem_414767, %struct.Memory** %MEMORY
  br label %block_.L_4148c4

block_.L_41476c:                                  ; preds = %block_.L_414744
  %loadMem_41476c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5805 = getelementptr inbounds %struct.GPR, %struct.GPR* %5804, i32 0, i32 33
  %5806 = getelementptr inbounds %struct.Reg, %struct.Reg* %5805, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %5806 to i64*
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5808 = getelementptr inbounds %struct.GPR, %struct.GPR* %5807, i32 0, i32 1
  %5809 = getelementptr inbounds %struct.Reg, %struct.Reg* %5808, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %5809 to i64*
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5811 = getelementptr inbounds %struct.GPR, %struct.GPR* %5810, i32 0, i32 15
  %5812 = getelementptr inbounds %struct.Reg, %struct.Reg* %5811, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %5812 to i64*
  %5813 = load i64, i64* %RBP.i384
  %5814 = sub i64 %5813, 8
  %5815 = load i64, i64* %PC.i382
  %5816 = add i64 %5815, 3
  store i64 %5816, i64* %PC.i382
  %5817 = inttoptr i64 %5814 to i32*
  %5818 = load i32, i32* %5817
  %5819 = zext i32 %5818 to i64
  store i64 %5819, i64* %RAX.i383, align 8
  store %struct.Memory* %loadMem_41476c, %struct.Memory** %MEMORY
  %loadMem_41476f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5821 = getelementptr inbounds %struct.GPR, %struct.GPR* %5820, i32 0, i32 33
  %5822 = getelementptr inbounds %struct.Reg, %struct.Reg* %5821, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %5822 to i64*
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5824 = getelementptr inbounds %struct.GPR, %struct.GPR* %5823, i32 0, i32 1
  %5825 = getelementptr inbounds %struct.Reg, %struct.Reg* %5824, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %5825 to i64*
  %5826 = load i64, i64* %RAX.i381
  %5827 = load i64, i64* %PC.i380
  %5828 = add i64 %5827, 3
  store i64 %5828, i64* %PC.i380
  %5829 = trunc i64 %5826 to i32
  %5830 = sub i32 %5829, 20
  %5831 = zext i32 %5830 to i64
  store i64 %5831, i64* %RAX.i381, align 8
  %5832 = icmp ult i32 %5829, 20
  %5833 = zext i1 %5832 to i8
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5833, i8* %5834, align 1
  %5835 = and i32 %5830, 255
  %5836 = call i32 @llvm.ctpop.i32(i32 %5835)
  %5837 = trunc i32 %5836 to i8
  %5838 = and i8 %5837, 1
  %5839 = xor i8 %5838, 1
  %5840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5839, i8* %5840, align 1
  %5841 = xor i64 20, %5826
  %5842 = trunc i64 %5841 to i32
  %5843 = xor i32 %5842, %5830
  %5844 = lshr i32 %5843, 4
  %5845 = trunc i32 %5844 to i8
  %5846 = and i8 %5845, 1
  %5847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5846, i8* %5847, align 1
  %5848 = icmp eq i32 %5830, 0
  %5849 = zext i1 %5848 to i8
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5849, i8* %5850, align 1
  %5851 = lshr i32 %5830, 31
  %5852 = trunc i32 %5851 to i8
  %5853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5852, i8* %5853, align 1
  %5854 = lshr i32 %5829, 31
  %5855 = xor i32 %5851, %5854
  %5856 = add i32 %5855, %5854
  %5857 = icmp eq i32 %5856, 2
  %5858 = zext i1 %5857 to i8
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5858, i8* %5859, align 1
  store %struct.Memory* %loadMem_41476f, %struct.Memory** %MEMORY
  %loadMem_414772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5861 = getelementptr inbounds %struct.GPR, %struct.GPR* %5860, i32 0, i32 33
  %5862 = getelementptr inbounds %struct.Reg, %struct.Reg* %5861, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %5862 to i64*
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5864 = getelementptr inbounds %struct.GPR, %struct.GPR* %5863, i32 0, i32 1
  %5865 = getelementptr inbounds %struct.Reg, %struct.Reg* %5864, i32 0, i32 0
  %EAX.i378 = bitcast %union.anon* %5865 to i32*
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5867 = getelementptr inbounds %struct.GPR, %struct.GPR* %5866, i32 0, i32 5
  %5868 = getelementptr inbounds %struct.Reg, %struct.Reg* %5867, i32 0, i32 0
  %RCX.i379 = bitcast %union.anon* %5868 to i64*
  %5869 = load i32, i32* %EAX.i378
  %5870 = zext i32 %5869 to i64
  %5871 = load i64, i64* %PC.i377
  %5872 = add i64 %5871, 3
  store i64 %5872, i64* %PC.i377
  %5873 = shl i64 %5870, 32
  %5874 = ashr exact i64 %5873, 32
  store i64 %5874, i64* %RCX.i379, align 8
  store %struct.Memory* %loadMem_414772, %struct.Memory** %MEMORY
  %loadMem_414775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5876 = getelementptr inbounds %struct.GPR, %struct.GPR* %5875, i32 0, i32 33
  %5877 = getelementptr inbounds %struct.Reg, %struct.Reg* %5876, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %5877 to i64*
  %5878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5879 = getelementptr inbounds %struct.GPR, %struct.GPR* %5878, i32 0, i32 1
  %5880 = getelementptr inbounds %struct.Reg, %struct.Reg* %5879, i32 0, i32 0
  %RAX.i375 = bitcast %union.anon* %5880 to i64*
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5882 = getelementptr inbounds %struct.GPR, %struct.GPR* %5881, i32 0, i32 5
  %5883 = getelementptr inbounds %struct.Reg, %struct.Reg* %5882, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %5883 to i64*
  %5884 = load i64, i64* %RCX.i376
  %5885 = add i64 %5884, 12099168
  %5886 = load i64, i64* %PC.i374
  %5887 = add i64 %5886, 8
  store i64 %5887, i64* %PC.i374
  %5888 = inttoptr i64 %5885 to i8*
  %5889 = load i8, i8* %5888
  %5890 = zext i8 %5889 to i64
  store i64 %5890, i64* %RAX.i375, align 8
  store %struct.Memory* %loadMem_414775, %struct.Memory** %MEMORY
  %loadMem_41477d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5892 = getelementptr inbounds %struct.GPR, %struct.GPR* %5891, i32 0, i32 33
  %5893 = getelementptr inbounds %struct.Reg, %struct.Reg* %5892, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %5893 to i64*
  %5894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5895 = getelementptr inbounds %struct.GPR, %struct.GPR* %5894, i32 0, i32 1
  %5896 = getelementptr inbounds %struct.Reg, %struct.Reg* %5895, i32 0, i32 0
  %EAX.i372 = bitcast %union.anon* %5896 to i32*
  %5897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5898 = getelementptr inbounds %struct.GPR, %struct.GPR* %5897, i32 0, i32 15
  %5899 = getelementptr inbounds %struct.Reg, %struct.Reg* %5898, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %5899 to i64*
  %5900 = load i32, i32* %EAX.i372
  %5901 = zext i32 %5900 to i64
  %5902 = load i64, i64* %RBP.i373
  %5903 = sub i64 %5902, 12
  %5904 = load i64, i64* %PC.i371
  %5905 = add i64 %5904, 3
  store i64 %5905, i64* %PC.i371
  %5906 = inttoptr i64 %5903 to i32*
  %5907 = load i32, i32* %5906
  %5908 = sub i32 %5900, %5907
  %5909 = icmp ult i32 %5900, %5907
  %5910 = zext i1 %5909 to i8
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5910, i8* %5911, align 1
  %5912 = and i32 %5908, 255
  %5913 = call i32 @llvm.ctpop.i32(i32 %5912)
  %5914 = trunc i32 %5913 to i8
  %5915 = and i8 %5914, 1
  %5916 = xor i8 %5915, 1
  %5917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5916, i8* %5917, align 1
  %5918 = xor i32 %5907, %5900
  %5919 = xor i32 %5918, %5908
  %5920 = lshr i32 %5919, 4
  %5921 = trunc i32 %5920 to i8
  %5922 = and i8 %5921, 1
  %5923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5922, i8* %5923, align 1
  %5924 = icmp eq i32 %5908, 0
  %5925 = zext i1 %5924 to i8
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5925, i8* %5926, align 1
  %5927 = lshr i32 %5908, 31
  %5928 = trunc i32 %5927 to i8
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5928, i8* %5929, align 1
  %5930 = lshr i32 %5900, 31
  %5931 = lshr i32 %5907, 31
  %5932 = xor i32 %5931, %5930
  %5933 = xor i32 %5927, %5930
  %5934 = add i32 %5933, %5932
  %5935 = icmp eq i32 %5934, 2
  %5936 = zext i1 %5935 to i8
  %5937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5936, i8* %5937, align 1
  store %struct.Memory* %loadMem_41477d, %struct.Memory** %MEMORY
  %loadMem_414780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5939 = getelementptr inbounds %struct.GPR, %struct.GPR* %5938, i32 0, i32 33
  %5940 = getelementptr inbounds %struct.Reg, %struct.Reg* %5939, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %5940 to i64*
  %5941 = load i64, i64* %PC.i370
  %5942 = add i64 %5941, 126
  %5943 = load i64, i64* %PC.i370
  %5944 = add i64 %5943, 6
  %5945 = load i64, i64* %PC.i370
  %5946 = add i64 %5945, 6
  store i64 %5946, i64* %PC.i370
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5948 = load i8, i8* %5947, align 1
  %5949 = icmp eq i8 %5948, 0
  %5950 = zext i1 %5949 to i8
  store i8 %5950, i8* %BRANCH_TAKEN, align 1
  %5951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5952 = select i1 %5949, i64 %5942, i64 %5944
  store i64 %5952, i64* %5951, align 8
  store %struct.Memory* %loadMem_414780, %struct.Memory** %MEMORY
  %loadBr_414780 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414780 = icmp eq i8 %loadBr_414780, 1
  br i1 %cmpBr_414780, label %block_.L_4147fe, label %block_414786

block_414786:                                     ; preds = %block_.L_41476c
  %loadMem_414786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5954 = getelementptr inbounds %struct.GPR, %struct.GPR* %5953, i32 0, i32 33
  %5955 = getelementptr inbounds %struct.Reg, %struct.Reg* %5954, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %5955 to i64*
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5957 = getelementptr inbounds %struct.GPR, %struct.GPR* %5956, i32 0, i32 1
  %5958 = getelementptr inbounds %struct.Reg, %struct.Reg* %5957, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %5958 to i64*
  %5959 = load i64, i64* %PC.i368
  %5960 = add i64 %5959, 10
  store i64 %5960, i64* %PC.i368
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i369, align 8
  store %struct.Memory* %loadMem_414786, %struct.Memory** %MEMORY
  %loadMem_414790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5962 = getelementptr inbounds %struct.GPR, %struct.GPR* %5961, i32 0, i32 33
  %5963 = getelementptr inbounds %struct.Reg, %struct.Reg* %5962, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %5963 to i64*
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5965 = getelementptr inbounds %struct.GPR, %struct.GPR* %5964, i32 0, i32 5
  %5966 = getelementptr inbounds %struct.Reg, %struct.Reg* %5965, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %5966 to i64*
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5968 = getelementptr inbounds %struct.GPR, %struct.GPR* %5967, i32 0, i32 15
  %5969 = getelementptr inbounds %struct.Reg, %struct.Reg* %5968, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %5969 to i64*
  %5970 = load i64, i64* %RBP.i367
  %5971 = sub i64 %5970, 8
  %5972 = load i64, i64* %PC.i365
  %5973 = add i64 %5972, 3
  store i64 %5973, i64* %PC.i365
  %5974 = inttoptr i64 %5971 to i32*
  %5975 = load i32, i32* %5974
  %5976 = zext i32 %5975 to i64
  store i64 %5976, i64* %RCX.i366, align 8
  store %struct.Memory* %loadMem_414790, %struct.Memory** %MEMORY
  %loadMem_414793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5978 = getelementptr inbounds %struct.GPR, %struct.GPR* %5977, i32 0, i32 33
  %5979 = getelementptr inbounds %struct.Reg, %struct.Reg* %5978, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %5979 to i64*
  %5980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5981 = getelementptr inbounds %struct.GPR, %struct.GPR* %5980, i32 0, i32 5
  %5982 = getelementptr inbounds %struct.Reg, %struct.Reg* %5981, i32 0, i32 0
  %RCX.i364 = bitcast %union.anon* %5982 to i64*
  %5983 = load i64, i64* %RCX.i364
  %5984 = load i64, i64* %PC.i363
  %5985 = add i64 %5984, 3
  store i64 %5985, i64* %PC.i363
  %5986 = trunc i64 %5983 to i32
  %5987 = sub i32 %5986, 20
  %5988 = zext i32 %5987 to i64
  store i64 %5988, i64* %RCX.i364, align 8
  %5989 = icmp ult i32 %5986, 20
  %5990 = zext i1 %5989 to i8
  %5991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5990, i8* %5991, align 1
  %5992 = and i32 %5987, 255
  %5993 = call i32 @llvm.ctpop.i32(i32 %5992)
  %5994 = trunc i32 %5993 to i8
  %5995 = and i8 %5994, 1
  %5996 = xor i8 %5995, 1
  %5997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5996, i8* %5997, align 1
  %5998 = xor i64 20, %5983
  %5999 = trunc i64 %5998 to i32
  %6000 = xor i32 %5999, %5987
  %6001 = lshr i32 %6000, 4
  %6002 = trunc i32 %6001 to i8
  %6003 = and i8 %6002, 1
  %6004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6003, i8* %6004, align 1
  %6005 = icmp eq i32 %5987, 0
  %6006 = zext i1 %6005 to i8
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6006, i8* %6007, align 1
  %6008 = lshr i32 %5987, 31
  %6009 = trunc i32 %6008 to i8
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6009, i8* %6010, align 1
  %6011 = lshr i32 %5986, 31
  %6012 = xor i32 %6008, %6011
  %6013 = add i32 %6012, %6011
  %6014 = icmp eq i32 %6013, 2
  %6015 = zext i1 %6014 to i8
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6015, i8* %6016, align 1
  store %struct.Memory* %loadMem_414793, %struct.Memory** %MEMORY
  %loadMem_414796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6018 = getelementptr inbounds %struct.GPR, %struct.GPR* %6017, i32 0, i32 33
  %6019 = getelementptr inbounds %struct.Reg, %struct.Reg* %6018, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %6019 to i64*
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6021 = getelementptr inbounds %struct.GPR, %struct.GPR* %6020, i32 0, i32 5
  %6022 = getelementptr inbounds %struct.Reg, %struct.Reg* %6021, i32 0, i32 0
  %ECX.i361 = bitcast %union.anon* %6022 to i32*
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6024 = getelementptr inbounds %struct.GPR, %struct.GPR* %6023, i32 0, i32 7
  %6025 = getelementptr inbounds %struct.Reg, %struct.Reg* %6024, i32 0, i32 0
  %RDX.i362 = bitcast %union.anon* %6025 to i64*
  %6026 = load i32, i32* %ECX.i361
  %6027 = zext i32 %6026 to i64
  %6028 = load i64, i64* %PC.i360
  %6029 = add i64 %6028, 3
  store i64 %6029, i64* %PC.i360
  %6030 = shl i64 %6027, 32
  %6031 = ashr exact i64 %6030, 32
  store i64 %6031, i64* %RDX.i362, align 8
  store %struct.Memory* %loadMem_414796, %struct.Memory** %MEMORY
  %loadMem_414799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6033 = getelementptr inbounds %struct.GPR, %struct.GPR* %6032, i32 0, i32 33
  %6034 = getelementptr inbounds %struct.Reg, %struct.Reg* %6033, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %6034 to i64*
  %6035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6036 = getelementptr inbounds %struct.GPR, %struct.GPR* %6035, i32 0, i32 7
  %6037 = getelementptr inbounds %struct.Reg, %struct.Reg* %6036, i32 0, i32 0
  %RDX.i359 = bitcast %union.anon* %6037 to i64*
  %6038 = load i64, i64* %RDX.i359
  %6039 = mul i64 %6038, 4
  %6040 = add i64 %6039, 11187184
  %6041 = load i64, i64* %PC.i358
  %6042 = add i64 %6041, 8
  store i64 %6042, i64* %PC.i358
  %6043 = inttoptr i64 %6040 to i32*
  %6044 = load i32, i32* %6043
  %6045 = sext i32 %6044 to i64
  store i64 %6045, i64* %RDX.i359, align 8
  store %struct.Memory* %loadMem_414799, %struct.Memory** %MEMORY
  %loadMem_4147a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6047 = getelementptr inbounds %struct.GPR, %struct.GPR* %6046, i32 0, i32 33
  %6048 = getelementptr inbounds %struct.Reg, %struct.Reg* %6047, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %6048 to i64*
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6050 = getelementptr inbounds %struct.GPR, %struct.GPR* %6049, i32 0, i32 7
  %6051 = getelementptr inbounds %struct.Reg, %struct.Reg* %6050, i32 0, i32 0
  %RDX.i357 = bitcast %union.anon* %6051 to i64*
  %6052 = load i64, i64* %RDX.i357
  %6053 = load i64, i64* %PC.i356
  %6054 = add i64 %6053, 7
  store i64 %6054, i64* %PC.i356
  %6055 = sext i64 %6052 to i128
  %6056 = and i128 %6055, -18446744073709551616
  %6057 = zext i64 %6052 to i128
  %6058 = or i128 %6056, %6057
  %6059 = mul i128 744, %6058
  %6060 = trunc i128 %6059 to i64
  store i64 %6060, i64* %RDX.i357, align 8
  %6061 = sext i64 %6060 to i128
  %6062 = icmp ne i128 %6061, %6059
  %6063 = zext i1 %6062 to i8
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6063, i8* %6064, align 1
  %6065 = trunc i128 %6059 to i32
  %6066 = and i32 %6065, 255
  %6067 = call i32 @llvm.ctpop.i32(i32 %6066)
  %6068 = trunc i32 %6067 to i8
  %6069 = and i8 %6068, 1
  %6070 = xor i8 %6069, 1
  %6071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6070, i8* %6071, align 1
  %6072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6072, align 1
  %6073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6073, align 1
  %6074 = lshr i64 %6060, 63
  %6075 = trunc i64 %6074 to i8
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6075, i8* %6076, align 1
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6063, i8* %6077, align 1
  store %struct.Memory* %loadMem_4147a1, %struct.Memory** %MEMORY
  %loadMem_4147a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6079 = getelementptr inbounds %struct.GPR, %struct.GPR* %6078, i32 0, i32 33
  %6080 = getelementptr inbounds %struct.Reg, %struct.Reg* %6079, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %6080 to i64*
  %6081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6082 = getelementptr inbounds %struct.GPR, %struct.GPR* %6081, i32 0, i32 1
  %6083 = getelementptr inbounds %struct.Reg, %struct.Reg* %6082, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %6083 to i64*
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6085 = getelementptr inbounds %struct.GPR, %struct.GPR* %6084, i32 0, i32 7
  %6086 = getelementptr inbounds %struct.Reg, %struct.Reg* %6085, i32 0, i32 0
  %RDX.i355 = bitcast %union.anon* %6086 to i64*
  %6087 = load i64, i64* %RAX.i354
  %6088 = load i64, i64* %RDX.i355
  %6089 = load i64, i64* %PC.i353
  %6090 = add i64 %6089, 3
  store i64 %6090, i64* %PC.i353
  %6091 = add i64 %6088, %6087
  store i64 %6091, i64* %RAX.i354, align 8
  %6092 = icmp ult i64 %6091, %6087
  %6093 = icmp ult i64 %6091, %6088
  %6094 = or i1 %6092, %6093
  %6095 = zext i1 %6094 to i8
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6095, i8* %6096, align 1
  %6097 = trunc i64 %6091 to i32
  %6098 = and i32 %6097, 255
  %6099 = call i32 @llvm.ctpop.i32(i32 %6098)
  %6100 = trunc i32 %6099 to i8
  %6101 = and i8 %6100, 1
  %6102 = xor i8 %6101, 1
  %6103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6102, i8* %6103, align 1
  %6104 = xor i64 %6088, %6087
  %6105 = xor i64 %6104, %6091
  %6106 = lshr i64 %6105, 4
  %6107 = trunc i64 %6106 to i8
  %6108 = and i8 %6107, 1
  %6109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6108, i8* %6109, align 1
  %6110 = icmp eq i64 %6091, 0
  %6111 = zext i1 %6110 to i8
  %6112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6111, i8* %6112, align 1
  %6113 = lshr i64 %6091, 63
  %6114 = trunc i64 %6113 to i8
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6114, i8* %6115, align 1
  %6116 = lshr i64 %6087, 63
  %6117 = lshr i64 %6088, 63
  %6118 = xor i64 %6113, %6116
  %6119 = xor i64 %6113, %6117
  %6120 = add i64 %6118, %6119
  %6121 = icmp eq i64 %6120, 2
  %6122 = zext i1 %6121 to i8
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6122, i8* %6123, align 1
  store %struct.Memory* %loadMem_4147a8, %struct.Memory** %MEMORY
  %loadMem_4147ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6125 = getelementptr inbounds %struct.GPR, %struct.GPR* %6124, i32 0, i32 33
  %6126 = getelementptr inbounds %struct.Reg, %struct.Reg* %6125, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %6126 to i64*
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6128 = getelementptr inbounds %struct.GPR, %struct.GPR* %6127, i32 0, i32 1
  %6129 = getelementptr inbounds %struct.Reg, %struct.Reg* %6128, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %6129 to i64*
  %6130 = load i64, i64* %RAX.i352
  %6131 = add i64 %6130, 12
  %6132 = load i64, i64* %PC.i351
  %6133 = add i64 %6132, 4
  store i64 %6133, i64* %PC.i351
  %6134 = inttoptr i64 %6131 to i32*
  %6135 = load i32, i32* %6134
  %6136 = sub i32 %6135, 2
  %6137 = icmp ult i32 %6135, 2
  %6138 = zext i1 %6137 to i8
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6138, i8* %6139, align 1
  %6140 = and i32 %6136, 255
  %6141 = call i32 @llvm.ctpop.i32(i32 %6140)
  %6142 = trunc i32 %6141 to i8
  %6143 = and i8 %6142, 1
  %6144 = xor i8 %6143, 1
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6144, i8* %6145, align 1
  %6146 = xor i32 %6135, 2
  %6147 = xor i32 %6146, %6136
  %6148 = lshr i32 %6147, 4
  %6149 = trunc i32 %6148 to i8
  %6150 = and i8 %6149, 1
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6150, i8* %6151, align 1
  %6152 = icmp eq i32 %6136, 0
  %6153 = zext i1 %6152 to i8
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6153, i8* %6154, align 1
  %6155 = lshr i32 %6136, 31
  %6156 = trunc i32 %6155 to i8
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6156, i8* %6157, align 1
  %6158 = lshr i32 %6135, 31
  %6159 = xor i32 %6155, %6158
  %6160 = add i32 %6159, %6158
  %6161 = icmp eq i32 %6160, 2
  %6162 = zext i1 %6161 to i8
  %6163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6162, i8* %6163, align 1
  store %struct.Memory* %loadMem_4147ab, %struct.Memory** %MEMORY
  %loadMem_4147af = load %struct.Memory*, %struct.Memory** %MEMORY
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6165 = getelementptr inbounds %struct.GPR, %struct.GPR* %6164, i32 0, i32 33
  %6166 = getelementptr inbounds %struct.Reg, %struct.Reg* %6165, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %6166 to i64*
  %6167 = load i64, i64* %PC.i350
  %6168 = add i64 %6167, 18
  %6169 = load i64, i64* %PC.i350
  %6170 = add i64 %6169, 6
  %6171 = load i64, i64* %PC.i350
  %6172 = add i64 %6171, 6
  store i64 %6172, i64* %PC.i350
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6174 = load i8, i8* %6173, align 1
  %6175 = icmp ne i8 %6174, 0
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6177 = load i8, i8* %6176, align 1
  %6178 = icmp ne i8 %6177, 0
  %6179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6180 = load i8, i8* %6179, align 1
  %6181 = icmp ne i8 %6180, 0
  %6182 = xor i1 %6178, %6181
  %6183 = or i1 %6175, %6182
  %6184 = zext i1 %6183 to i8
  store i8 %6184, i8* %BRANCH_TAKEN, align 1
  %6185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6186 = select i1 %6183, i64 %6168, i64 %6170
  store i64 %6186, i64* %6185, align 8
  store %struct.Memory* %loadMem_4147af, %struct.Memory** %MEMORY
  %loadBr_4147af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4147af = icmp eq i8 %loadBr_4147af, 1
  br i1 %cmpBr_4147af, label %block_.L_4147c1, label %block_4147b5

block_4147b5:                                     ; preds = %block_414786
  %loadMem_4147b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6188 = getelementptr inbounds %struct.GPR, %struct.GPR* %6187, i32 0, i32 33
  %6189 = getelementptr inbounds %struct.Reg, %struct.Reg* %6188, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %6189 to i64*
  %6190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6191 = getelementptr inbounds %struct.GPR, %struct.GPR* %6190, i32 0, i32 15
  %6192 = getelementptr inbounds %struct.Reg, %struct.Reg* %6191, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %6192 to i64*
  %6193 = load i64, i64* %RBP.i349
  %6194 = sub i64 %6193, 4
  %6195 = load i64, i64* %PC.i348
  %6196 = add i64 %6195, 7
  store i64 %6196, i64* %PC.i348
  %6197 = inttoptr i64 %6194 to i32*
  store i32 0, i32* %6197
  store %struct.Memory* %loadMem_4147b5, %struct.Memory** %MEMORY
  %loadMem_4147bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6199 = getelementptr inbounds %struct.GPR, %struct.GPR* %6198, i32 0, i32 33
  %6200 = getelementptr inbounds %struct.Reg, %struct.Reg* %6199, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %6200 to i64*
  %6201 = load i64, i64* %PC.i347
  %6202 = add i64 %6201, 736
  %6203 = load i64, i64* %PC.i347
  %6204 = add i64 %6203, 5
  store i64 %6204, i64* %PC.i347
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6202, i64* %6205, align 8
  store %struct.Memory* %loadMem_4147bc, %struct.Memory** %MEMORY
  br label %block_.L_414a9c

block_.L_4147c1:                                  ; preds = %block_414786
  %loadMem_4147c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6207 = getelementptr inbounds %struct.GPR, %struct.GPR* %6206, i32 0, i32 33
  %6208 = getelementptr inbounds %struct.Reg, %struct.Reg* %6207, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %6208 to i64*
  %6209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6210 = getelementptr inbounds %struct.GPR, %struct.GPR* %6209, i32 0, i32 1
  %6211 = getelementptr inbounds %struct.Reg, %struct.Reg* %6210, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %6211 to i64*
  %6212 = load i64, i64* %PC.i345
  %6213 = add i64 %6212, 10
  store i64 %6213, i64* %PC.i345
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i346, align 8
  store %struct.Memory* %loadMem_4147c1, %struct.Memory** %MEMORY
  %loadMem_4147cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6215 = getelementptr inbounds %struct.GPR, %struct.GPR* %6214, i32 0, i32 33
  %6216 = getelementptr inbounds %struct.Reg, %struct.Reg* %6215, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %6216 to i64*
  %6217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6218 = getelementptr inbounds %struct.GPR, %struct.GPR* %6217, i32 0, i32 5
  %6219 = getelementptr inbounds %struct.Reg, %struct.Reg* %6218, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %6219 to i64*
  %6220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6221 = getelementptr inbounds %struct.GPR, %struct.GPR* %6220, i32 0, i32 15
  %6222 = getelementptr inbounds %struct.Reg, %struct.Reg* %6221, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %6222 to i64*
  %6223 = load i64, i64* %RBP.i344
  %6224 = sub i64 %6223, 8
  %6225 = load i64, i64* %PC.i342
  %6226 = add i64 %6225, 3
  store i64 %6226, i64* %PC.i342
  %6227 = inttoptr i64 %6224 to i32*
  %6228 = load i32, i32* %6227
  %6229 = zext i32 %6228 to i64
  store i64 %6229, i64* %RCX.i343, align 8
  store %struct.Memory* %loadMem_4147cb, %struct.Memory** %MEMORY
  %loadMem_4147ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %6230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6231 = getelementptr inbounds %struct.GPR, %struct.GPR* %6230, i32 0, i32 33
  %6232 = getelementptr inbounds %struct.Reg, %struct.Reg* %6231, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %6232 to i64*
  %6233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6234 = getelementptr inbounds %struct.GPR, %struct.GPR* %6233, i32 0, i32 5
  %6235 = getelementptr inbounds %struct.Reg, %struct.Reg* %6234, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %6235 to i64*
  %6236 = load i64, i64* %RCX.i341
  %6237 = load i64, i64* %PC.i340
  %6238 = add i64 %6237, 3
  store i64 %6238, i64* %PC.i340
  %6239 = trunc i64 %6236 to i32
  %6240 = sub i32 %6239, 20
  %6241 = zext i32 %6240 to i64
  store i64 %6241, i64* %RCX.i341, align 8
  %6242 = icmp ult i32 %6239, 20
  %6243 = zext i1 %6242 to i8
  %6244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6243, i8* %6244, align 1
  %6245 = and i32 %6240, 255
  %6246 = call i32 @llvm.ctpop.i32(i32 %6245)
  %6247 = trunc i32 %6246 to i8
  %6248 = and i8 %6247, 1
  %6249 = xor i8 %6248, 1
  %6250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6249, i8* %6250, align 1
  %6251 = xor i64 20, %6236
  %6252 = trunc i64 %6251 to i32
  %6253 = xor i32 %6252, %6240
  %6254 = lshr i32 %6253, 4
  %6255 = trunc i32 %6254 to i8
  %6256 = and i8 %6255, 1
  %6257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6256, i8* %6257, align 1
  %6258 = icmp eq i32 %6240, 0
  %6259 = zext i1 %6258 to i8
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6259, i8* %6260, align 1
  %6261 = lshr i32 %6240, 31
  %6262 = trunc i32 %6261 to i8
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6262, i8* %6263, align 1
  %6264 = lshr i32 %6239, 31
  %6265 = xor i32 %6261, %6264
  %6266 = add i32 %6265, %6264
  %6267 = icmp eq i32 %6266, 2
  %6268 = zext i1 %6267 to i8
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6268, i8* %6269, align 1
  store %struct.Memory* %loadMem_4147ce, %struct.Memory** %MEMORY
  %loadMem_4147d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6271 = getelementptr inbounds %struct.GPR, %struct.GPR* %6270, i32 0, i32 33
  %6272 = getelementptr inbounds %struct.Reg, %struct.Reg* %6271, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %6272 to i64*
  %6273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6274 = getelementptr inbounds %struct.GPR, %struct.GPR* %6273, i32 0, i32 5
  %6275 = getelementptr inbounds %struct.Reg, %struct.Reg* %6274, i32 0, i32 0
  %ECX.i338 = bitcast %union.anon* %6275 to i32*
  %6276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6277 = getelementptr inbounds %struct.GPR, %struct.GPR* %6276, i32 0, i32 7
  %6278 = getelementptr inbounds %struct.Reg, %struct.Reg* %6277, i32 0, i32 0
  %RDX.i339 = bitcast %union.anon* %6278 to i64*
  %6279 = load i32, i32* %ECX.i338
  %6280 = zext i32 %6279 to i64
  %6281 = load i64, i64* %PC.i337
  %6282 = add i64 %6281, 3
  store i64 %6282, i64* %PC.i337
  %6283 = shl i64 %6280, 32
  %6284 = ashr exact i64 %6283, 32
  store i64 %6284, i64* %RDX.i339, align 8
  store %struct.Memory* %loadMem_4147d1, %struct.Memory** %MEMORY
  %loadMem_4147d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6286 = getelementptr inbounds %struct.GPR, %struct.GPR* %6285, i32 0, i32 33
  %6287 = getelementptr inbounds %struct.Reg, %struct.Reg* %6286, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %6287 to i64*
  %6288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6289 = getelementptr inbounds %struct.GPR, %struct.GPR* %6288, i32 0, i32 7
  %6290 = getelementptr inbounds %struct.Reg, %struct.Reg* %6289, i32 0, i32 0
  %RDX.i336 = bitcast %union.anon* %6290 to i64*
  %6291 = load i64, i64* %RDX.i336
  %6292 = mul i64 %6291, 4
  %6293 = add i64 %6292, 11187184
  %6294 = load i64, i64* %PC.i335
  %6295 = add i64 %6294, 8
  store i64 %6295, i64* %PC.i335
  %6296 = inttoptr i64 %6293 to i32*
  %6297 = load i32, i32* %6296
  %6298 = sext i32 %6297 to i64
  store i64 %6298, i64* %RDX.i336, align 8
  store %struct.Memory* %loadMem_4147d4, %struct.Memory** %MEMORY
  %loadMem_4147dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6300 = getelementptr inbounds %struct.GPR, %struct.GPR* %6299, i32 0, i32 33
  %6301 = getelementptr inbounds %struct.Reg, %struct.Reg* %6300, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %6301 to i64*
  %6302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6303 = getelementptr inbounds %struct.GPR, %struct.GPR* %6302, i32 0, i32 7
  %6304 = getelementptr inbounds %struct.Reg, %struct.Reg* %6303, i32 0, i32 0
  %RDX.i334 = bitcast %union.anon* %6304 to i64*
  %6305 = load i64, i64* %RDX.i334
  %6306 = load i64, i64* %PC.i333
  %6307 = add i64 %6306, 7
  store i64 %6307, i64* %PC.i333
  %6308 = sext i64 %6305 to i128
  %6309 = and i128 %6308, -18446744073709551616
  %6310 = zext i64 %6305 to i128
  %6311 = or i128 %6309, %6310
  %6312 = mul i128 744, %6311
  %6313 = trunc i128 %6312 to i64
  store i64 %6313, i64* %RDX.i334, align 8
  %6314 = sext i64 %6313 to i128
  %6315 = icmp ne i128 %6314, %6312
  %6316 = zext i1 %6315 to i8
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6316, i8* %6317, align 1
  %6318 = trunc i128 %6312 to i32
  %6319 = and i32 %6318, 255
  %6320 = call i32 @llvm.ctpop.i32(i32 %6319)
  %6321 = trunc i32 %6320 to i8
  %6322 = and i8 %6321, 1
  %6323 = xor i8 %6322, 1
  %6324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6323, i8* %6324, align 1
  %6325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6325, align 1
  %6326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6326, align 1
  %6327 = lshr i64 %6313, 63
  %6328 = trunc i64 %6327 to i8
  %6329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6328, i8* %6329, align 1
  %6330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6316, i8* %6330, align 1
  store %struct.Memory* %loadMem_4147dc, %struct.Memory** %MEMORY
  %loadMem_4147e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6332 = getelementptr inbounds %struct.GPR, %struct.GPR* %6331, i32 0, i32 33
  %6333 = getelementptr inbounds %struct.Reg, %struct.Reg* %6332, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %6333 to i64*
  %6334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6335 = getelementptr inbounds %struct.GPR, %struct.GPR* %6334, i32 0, i32 1
  %6336 = getelementptr inbounds %struct.Reg, %struct.Reg* %6335, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %6336 to i64*
  %6337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6338 = getelementptr inbounds %struct.GPR, %struct.GPR* %6337, i32 0, i32 7
  %6339 = getelementptr inbounds %struct.Reg, %struct.Reg* %6338, i32 0, i32 0
  %RDX.i332 = bitcast %union.anon* %6339 to i64*
  %6340 = load i64, i64* %RAX.i331
  %6341 = load i64, i64* %RDX.i332
  %6342 = load i64, i64* %PC.i330
  %6343 = add i64 %6342, 3
  store i64 %6343, i64* %PC.i330
  %6344 = add i64 %6341, %6340
  store i64 %6344, i64* %RAX.i331, align 8
  %6345 = icmp ult i64 %6344, %6340
  %6346 = icmp ult i64 %6344, %6341
  %6347 = or i1 %6345, %6346
  %6348 = zext i1 %6347 to i8
  %6349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6348, i8* %6349, align 1
  %6350 = trunc i64 %6344 to i32
  %6351 = and i32 %6350, 255
  %6352 = call i32 @llvm.ctpop.i32(i32 %6351)
  %6353 = trunc i32 %6352 to i8
  %6354 = and i8 %6353, 1
  %6355 = xor i8 %6354, 1
  %6356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6355, i8* %6356, align 1
  %6357 = xor i64 %6341, %6340
  %6358 = xor i64 %6357, %6344
  %6359 = lshr i64 %6358, 4
  %6360 = trunc i64 %6359 to i8
  %6361 = and i8 %6360, 1
  %6362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6361, i8* %6362, align 1
  %6363 = icmp eq i64 %6344, 0
  %6364 = zext i1 %6363 to i8
  %6365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6364, i8* %6365, align 1
  %6366 = lshr i64 %6344, 63
  %6367 = trunc i64 %6366 to i8
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6367, i8* %6368, align 1
  %6369 = lshr i64 %6340, 63
  %6370 = lshr i64 %6341, 63
  %6371 = xor i64 %6366, %6369
  %6372 = xor i64 %6366, %6370
  %6373 = add i64 %6371, %6372
  %6374 = icmp eq i64 %6373, 2
  %6375 = zext i1 %6374 to i8
  %6376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6375, i8* %6376, align 1
  store %struct.Memory* %loadMem_4147e3, %struct.Memory** %MEMORY
  %loadMem_4147e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6378 = getelementptr inbounds %struct.GPR, %struct.GPR* %6377, i32 0, i32 33
  %6379 = getelementptr inbounds %struct.Reg, %struct.Reg* %6378, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %6379 to i64*
  %6380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6381 = getelementptr inbounds %struct.GPR, %struct.GPR* %6380, i32 0, i32 1
  %6382 = getelementptr inbounds %struct.Reg, %struct.Reg* %6381, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %6382 to i64*
  %6383 = load i64, i64* %RAX.i329
  %6384 = add i64 %6383, 12
  %6385 = load i64, i64* %PC.i328
  %6386 = add i64 %6385, 4
  store i64 %6386, i64* %PC.i328
  %6387 = inttoptr i64 %6384 to i32*
  %6388 = load i32, i32* %6387
  %6389 = sub i32 %6388, 2
  %6390 = icmp ult i32 %6388, 2
  %6391 = zext i1 %6390 to i8
  %6392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6391, i8* %6392, align 1
  %6393 = and i32 %6389, 255
  %6394 = call i32 @llvm.ctpop.i32(i32 %6393)
  %6395 = trunc i32 %6394 to i8
  %6396 = and i8 %6395, 1
  %6397 = xor i8 %6396, 1
  %6398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6397, i8* %6398, align 1
  %6399 = xor i32 %6388, 2
  %6400 = xor i32 %6399, %6389
  %6401 = lshr i32 %6400, 4
  %6402 = trunc i32 %6401 to i8
  %6403 = and i8 %6402, 1
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6403, i8* %6404, align 1
  %6405 = icmp eq i32 %6389, 0
  %6406 = zext i1 %6405 to i8
  %6407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6406, i8* %6407, align 1
  %6408 = lshr i32 %6389, 31
  %6409 = trunc i32 %6408 to i8
  %6410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6409, i8* %6410, align 1
  %6411 = lshr i32 %6388, 31
  %6412 = xor i32 %6408, %6411
  %6413 = add i32 %6412, %6411
  %6414 = icmp eq i32 %6413, 2
  %6415 = zext i1 %6414 to i8
  %6416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6415, i8* %6416, align 1
  store %struct.Memory* %loadMem_4147e6, %struct.Memory** %MEMORY
  %loadMem_4147ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %6417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6418 = getelementptr inbounds %struct.GPR, %struct.GPR* %6417, i32 0, i32 33
  %6419 = getelementptr inbounds %struct.Reg, %struct.Reg* %6418, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %6419 to i64*
  %6420 = load i64, i64* %PC.i327
  %6421 = add i64 %6420, 15
  %6422 = load i64, i64* %PC.i327
  %6423 = add i64 %6422, 6
  %6424 = load i64, i64* %PC.i327
  %6425 = add i64 %6424, 6
  store i64 %6425, i64* %PC.i327
  %6426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6427 = load i8, i8* %6426, align 1
  %6428 = icmp eq i8 %6427, 0
  %6429 = zext i1 %6428 to i8
  store i8 %6429, i8* %BRANCH_TAKEN, align 1
  %6430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6431 = select i1 %6428, i64 %6421, i64 %6423
  store i64 %6431, i64* %6430, align 8
  store %struct.Memory* %loadMem_4147ea, %struct.Memory** %MEMORY
  %loadBr_4147ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4147ea = icmp eq i8 %loadBr_4147ea, 1
  br i1 %cmpBr_4147ea, label %block_.L_4147f9, label %block_4147f0

block_4147f0:                                     ; preds = %block_.L_4147c1
  %loadMem_4147f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6433 = getelementptr inbounds %struct.GPR, %struct.GPR* %6432, i32 0, i32 33
  %6434 = getelementptr inbounds %struct.Reg, %struct.Reg* %6433, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %6434 to i64*
  %6435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6436 = getelementptr inbounds %struct.GPR, %struct.GPR* %6435, i32 0, i32 1
  %6437 = getelementptr inbounds %struct.Reg, %struct.Reg* %6436, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %6437 to i64*
  %6438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6439 = getelementptr inbounds %struct.GPR, %struct.GPR* %6438, i32 0, i32 15
  %6440 = getelementptr inbounds %struct.Reg, %struct.Reg* %6439, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %6440 to i64*
  %6441 = load i64, i64* %RBP.i326
  %6442 = sub i64 %6441, 28
  %6443 = load i64, i64* %PC.i324
  %6444 = add i64 %6443, 3
  store i64 %6444, i64* %PC.i324
  %6445 = inttoptr i64 %6442 to i32*
  %6446 = load i32, i32* %6445
  %6447 = zext i32 %6446 to i64
  store i64 %6447, i64* %RAX.i325, align 8
  store %struct.Memory* %loadMem_4147f0, %struct.Memory** %MEMORY
  %loadMem_4147f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6449 = getelementptr inbounds %struct.GPR, %struct.GPR* %6448, i32 0, i32 33
  %6450 = getelementptr inbounds %struct.Reg, %struct.Reg* %6449, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %6450 to i64*
  %6451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6452 = getelementptr inbounds %struct.GPR, %struct.GPR* %6451, i32 0, i32 1
  %6453 = getelementptr inbounds %struct.Reg, %struct.Reg* %6452, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %6453 to i64*
  %6454 = load i64, i64* %RAX.i323
  %6455 = load i64, i64* %PC.i322
  %6456 = add i64 %6455, 3
  store i64 %6456, i64* %PC.i322
  %6457 = trunc i64 %6454 to i32
  %6458 = add i32 1, %6457
  %6459 = zext i32 %6458 to i64
  store i64 %6459, i64* %RAX.i323, align 8
  %6460 = icmp ult i32 %6458, %6457
  %6461 = icmp ult i32 %6458, 1
  %6462 = or i1 %6460, %6461
  %6463 = zext i1 %6462 to i8
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6463, i8* %6464, align 1
  %6465 = and i32 %6458, 255
  %6466 = call i32 @llvm.ctpop.i32(i32 %6465)
  %6467 = trunc i32 %6466 to i8
  %6468 = and i8 %6467, 1
  %6469 = xor i8 %6468, 1
  %6470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6469, i8* %6470, align 1
  %6471 = xor i64 1, %6454
  %6472 = trunc i64 %6471 to i32
  %6473 = xor i32 %6472, %6458
  %6474 = lshr i32 %6473, 4
  %6475 = trunc i32 %6474 to i8
  %6476 = and i8 %6475, 1
  %6477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6476, i8* %6477, align 1
  %6478 = icmp eq i32 %6458, 0
  %6479 = zext i1 %6478 to i8
  %6480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6479, i8* %6480, align 1
  %6481 = lshr i32 %6458, 31
  %6482 = trunc i32 %6481 to i8
  %6483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6482, i8* %6483, align 1
  %6484 = lshr i32 %6457, 31
  %6485 = xor i32 %6481, %6484
  %6486 = add i32 %6485, %6481
  %6487 = icmp eq i32 %6486, 2
  %6488 = zext i1 %6487 to i8
  %6489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6488, i8* %6489, align 1
  store %struct.Memory* %loadMem_4147f3, %struct.Memory** %MEMORY
  %loadMem_4147f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6491 = getelementptr inbounds %struct.GPR, %struct.GPR* %6490, i32 0, i32 33
  %6492 = getelementptr inbounds %struct.Reg, %struct.Reg* %6491, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %6492 to i64*
  %6493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6494 = getelementptr inbounds %struct.GPR, %struct.GPR* %6493, i32 0, i32 1
  %6495 = getelementptr inbounds %struct.Reg, %struct.Reg* %6494, i32 0, i32 0
  %EAX.i320 = bitcast %union.anon* %6495 to i32*
  %6496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6497 = getelementptr inbounds %struct.GPR, %struct.GPR* %6496, i32 0, i32 15
  %6498 = getelementptr inbounds %struct.Reg, %struct.Reg* %6497, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %6498 to i64*
  %6499 = load i64, i64* %RBP.i321
  %6500 = sub i64 %6499, 28
  %6501 = load i32, i32* %EAX.i320
  %6502 = zext i32 %6501 to i64
  %6503 = load i64, i64* %PC.i319
  %6504 = add i64 %6503, 3
  store i64 %6504, i64* %PC.i319
  %6505 = inttoptr i64 %6500 to i32*
  store i32 %6501, i32* %6505
  store %struct.Memory* %loadMem_4147f6, %struct.Memory** %MEMORY
  br label %block_.L_4147f9

block_.L_4147f9:                                  ; preds = %block_4147f0, %block_.L_4147c1
  %loadMem_4147f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6507 = getelementptr inbounds %struct.GPR, %struct.GPR* %6506, i32 0, i32 33
  %6508 = getelementptr inbounds %struct.Reg, %struct.Reg* %6507, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %6508 to i64*
  %6509 = load i64, i64* %PC.i318
  %6510 = add i64 %6509, 198
  %6511 = load i64, i64* %PC.i318
  %6512 = add i64 %6511, 5
  store i64 %6512, i64* %PC.i318
  %6513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6510, i64* %6513, align 8
  store %struct.Memory* %loadMem_4147f9, %struct.Memory** %MEMORY
  br label %block_.L_4148bf

block_.L_4147fe:                                  ; preds = %block_.L_41476c
  %loadMem_4147fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %6514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6515 = getelementptr inbounds %struct.GPR, %struct.GPR* %6514, i32 0, i32 33
  %6516 = getelementptr inbounds %struct.Reg, %struct.Reg* %6515, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %6516 to i64*
  %6517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6518 = getelementptr inbounds %struct.GPR, %struct.GPR* %6517, i32 0, i32 1
  %6519 = getelementptr inbounds %struct.Reg, %struct.Reg* %6518, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %6519 to i64*
  %6520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6521 = getelementptr inbounds %struct.GPR, %struct.GPR* %6520, i32 0, i32 15
  %6522 = getelementptr inbounds %struct.Reg, %struct.Reg* %6521, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %6522 to i64*
  %6523 = load i64, i64* %RBP.i317
  %6524 = sub i64 %6523, 8
  %6525 = load i64, i64* %PC.i315
  %6526 = add i64 %6525, 3
  store i64 %6526, i64* %PC.i315
  %6527 = inttoptr i64 %6524 to i32*
  %6528 = load i32, i32* %6527
  %6529 = zext i32 %6528 to i64
  store i64 %6529, i64* %RAX.i316, align 8
  store %struct.Memory* %loadMem_4147fe, %struct.Memory** %MEMORY
  %loadMem_414801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6531 = getelementptr inbounds %struct.GPR, %struct.GPR* %6530, i32 0, i32 33
  %6532 = getelementptr inbounds %struct.Reg, %struct.Reg* %6531, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %6532 to i64*
  %6533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6534 = getelementptr inbounds %struct.GPR, %struct.GPR* %6533, i32 0, i32 1
  %6535 = getelementptr inbounds %struct.Reg, %struct.Reg* %6534, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %6535 to i64*
  %6536 = load i64, i64* %RAX.i314
  %6537 = load i64, i64* %PC.i313
  %6538 = add i64 %6537, 3
  store i64 %6538, i64* %PC.i313
  %6539 = trunc i64 %6536 to i32
  %6540 = sub i32 %6539, 20
  %6541 = zext i32 %6540 to i64
  store i64 %6541, i64* %RAX.i314, align 8
  %6542 = icmp ult i32 %6539, 20
  %6543 = zext i1 %6542 to i8
  %6544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6543, i8* %6544, align 1
  %6545 = and i32 %6540, 255
  %6546 = call i32 @llvm.ctpop.i32(i32 %6545)
  %6547 = trunc i32 %6546 to i8
  %6548 = and i8 %6547, 1
  %6549 = xor i8 %6548, 1
  %6550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6549, i8* %6550, align 1
  %6551 = xor i64 20, %6536
  %6552 = trunc i64 %6551 to i32
  %6553 = xor i32 %6552, %6540
  %6554 = lshr i32 %6553, 4
  %6555 = trunc i32 %6554 to i8
  %6556 = and i8 %6555, 1
  %6557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6556, i8* %6557, align 1
  %6558 = icmp eq i32 %6540, 0
  %6559 = zext i1 %6558 to i8
  %6560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6559, i8* %6560, align 1
  %6561 = lshr i32 %6540, 31
  %6562 = trunc i32 %6561 to i8
  %6563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6562, i8* %6563, align 1
  %6564 = lshr i32 %6539, 31
  %6565 = xor i32 %6561, %6564
  %6566 = add i32 %6565, %6564
  %6567 = icmp eq i32 %6566, 2
  %6568 = zext i1 %6567 to i8
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6568, i8* %6569, align 1
  store %struct.Memory* %loadMem_414801, %struct.Memory** %MEMORY
  %loadMem_414804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6571 = getelementptr inbounds %struct.GPR, %struct.GPR* %6570, i32 0, i32 33
  %6572 = getelementptr inbounds %struct.Reg, %struct.Reg* %6571, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %6572 to i64*
  %6573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6574 = getelementptr inbounds %struct.GPR, %struct.GPR* %6573, i32 0, i32 1
  %6575 = getelementptr inbounds %struct.Reg, %struct.Reg* %6574, i32 0, i32 0
  %EAX.i311 = bitcast %union.anon* %6575 to i32*
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6577 = getelementptr inbounds %struct.GPR, %struct.GPR* %6576, i32 0, i32 5
  %6578 = getelementptr inbounds %struct.Reg, %struct.Reg* %6577, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %6578 to i64*
  %6579 = load i32, i32* %EAX.i311
  %6580 = zext i32 %6579 to i64
  %6581 = load i64, i64* %PC.i310
  %6582 = add i64 %6581, 3
  store i64 %6582, i64* %PC.i310
  %6583 = shl i64 %6580, 32
  %6584 = ashr exact i64 %6583, 32
  store i64 %6584, i64* %RCX.i312, align 8
  store %struct.Memory* %loadMem_414804, %struct.Memory** %MEMORY
  %loadMem_414807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6586 = getelementptr inbounds %struct.GPR, %struct.GPR* %6585, i32 0, i32 33
  %6587 = getelementptr inbounds %struct.Reg, %struct.Reg* %6586, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %6587 to i64*
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6589 = getelementptr inbounds %struct.GPR, %struct.GPR* %6588, i32 0, i32 1
  %6590 = getelementptr inbounds %struct.Reg, %struct.Reg* %6589, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %6590 to i64*
  %6591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6592 = getelementptr inbounds %struct.GPR, %struct.GPR* %6591, i32 0, i32 5
  %6593 = getelementptr inbounds %struct.Reg, %struct.Reg* %6592, i32 0, i32 0
  %RCX.i309 = bitcast %union.anon* %6593 to i64*
  %6594 = load i64, i64* %RCX.i309
  %6595 = add i64 %6594, 12099168
  %6596 = load i64, i64* %PC.i307
  %6597 = add i64 %6596, 8
  store i64 %6597, i64* %PC.i307
  %6598 = inttoptr i64 %6595 to i8*
  %6599 = load i8, i8* %6598
  %6600 = zext i8 %6599 to i64
  store i64 %6600, i64* %RAX.i308, align 8
  store %struct.Memory* %loadMem_414807, %struct.Memory** %MEMORY
  %loadMem_41480f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6602 = getelementptr inbounds %struct.GPR, %struct.GPR* %6601, i32 0, i32 33
  %6603 = getelementptr inbounds %struct.Reg, %struct.Reg* %6602, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %6603 to i64*
  %6604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6605 = getelementptr inbounds %struct.GPR, %struct.GPR* %6604, i32 0, i32 1
  %6606 = getelementptr inbounds %struct.Reg, %struct.Reg* %6605, i32 0, i32 0
  %EAX.i305 = bitcast %union.anon* %6606 to i32*
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6608 = getelementptr inbounds %struct.GPR, %struct.GPR* %6607, i32 0, i32 15
  %6609 = getelementptr inbounds %struct.Reg, %struct.Reg* %6608, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %6609 to i64*
  %6610 = load i32, i32* %EAX.i305
  %6611 = zext i32 %6610 to i64
  %6612 = load i64, i64* %RBP.i306
  %6613 = sub i64 %6612, 16
  %6614 = load i64, i64* %PC.i304
  %6615 = add i64 %6614, 3
  store i64 %6615, i64* %PC.i304
  %6616 = inttoptr i64 %6613 to i32*
  %6617 = load i32, i32* %6616
  %6618 = sub i32 %6610, %6617
  %6619 = icmp ult i32 %6610, %6617
  %6620 = zext i1 %6619 to i8
  %6621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6620, i8* %6621, align 1
  %6622 = and i32 %6618, 255
  %6623 = call i32 @llvm.ctpop.i32(i32 %6622)
  %6624 = trunc i32 %6623 to i8
  %6625 = and i8 %6624, 1
  %6626 = xor i8 %6625, 1
  %6627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6626, i8* %6627, align 1
  %6628 = xor i32 %6617, %6610
  %6629 = xor i32 %6628, %6618
  %6630 = lshr i32 %6629, 4
  %6631 = trunc i32 %6630 to i8
  %6632 = and i8 %6631, 1
  %6633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6632, i8* %6633, align 1
  %6634 = icmp eq i32 %6618, 0
  %6635 = zext i1 %6634 to i8
  %6636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6635, i8* %6636, align 1
  %6637 = lshr i32 %6618, 31
  %6638 = trunc i32 %6637 to i8
  %6639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6638, i8* %6639, align 1
  %6640 = lshr i32 %6610, 31
  %6641 = lshr i32 %6617, 31
  %6642 = xor i32 %6641, %6640
  %6643 = xor i32 %6637, %6640
  %6644 = add i32 %6643, %6642
  %6645 = icmp eq i32 %6644, 2
  %6646 = zext i1 %6645 to i8
  %6647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6646, i8* %6647, align 1
  store %struct.Memory* %loadMem_41480f, %struct.Memory** %MEMORY
  %loadMem_414812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6649 = getelementptr inbounds %struct.GPR, %struct.GPR* %6648, i32 0, i32 33
  %6650 = getelementptr inbounds %struct.Reg, %struct.Reg* %6649, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %6650 to i64*
  %6651 = load i64, i64* %PC.i303
  %6652 = add i64 %6651, 168
  %6653 = load i64, i64* %PC.i303
  %6654 = add i64 %6653, 6
  %6655 = load i64, i64* %PC.i303
  %6656 = add i64 %6655, 6
  store i64 %6656, i64* %PC.i303
  %6657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6658 = load i8, i8* %6657, align 1
  %6659 = icmp eq i8 %6658, 0
  %6660 = zext i1 %6659 to i8
  store i8 %6660, i8* %BRANCH_TAKEN, align 1
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6662 = select i1 %6659, i64 %6652, i64 %6654
  store i64 %6662, i64* %6661, align 8
  store %struct.Memory* %loadMem_414812, %struct.Memory** %MEMORY
  %loadBr_414812 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414812 = icmp eq i8 %loadBr_414812, 1
  br i1 %cmpBr_414812, label %block_.L_4148ba, label %block_414818

block_414818:                                     ; preds = %block_.L_4147fe
  %loadMem_414818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6664 = getelementptr inbounds %struct.GPR, %struct.GPR* %6663, i32 0, i32 33
  %6665 = getelementptr inbounds %struct.Reg, %struct.Reg* %6664, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %6665 to i64*
  %6666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6667 = getelementptr inbounds %struct.GPR, %struct.GPR* %6666, i32 0, i32 1
  %6668 = getelementptr inbounds %struct.Reg, %struct.Reg* %6667, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %6668 to i64*
  %6669 = load i64, i64* %PC.i301
  %6670 = add i64 %6669, 10
  store i64 %6670, i64* %PC.i301
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i302, align 8
  store %struct.Memory* %loadMem_414818, %struct.Memory** %MEMORY
  %loadMem_414822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6672 = getelementptr inbounds %struct.GPR, %struct.GPR* %6671, i32 0, i32 33
  %6673 = getelementptr inbounds %struct.Reg, %struct.Reg* %6672, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %6673 to i64*
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6675 = getelementptr inbounds %struct.GPR, %struct.GPR* %6674, i32 0, i32 5
  %6676 = getelementptr inbounds %struct.Reg, %struct.Reg* %6675, i32 0, i32 0
  %RCX.i299 = bitcast %union.anon* %6676 to i64*
  %6677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6678 = getelementptr inbounds %struct.GPR, %struct.GPR* %6677, i32 0, i32 15
  %6679 = getelementptr inbounds %struct.Reg, %struct.Reg* %6678, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %6679 to i64*
  %6680 = load i64, i64* %RBP.i300
  %6681 = sub i64 %6680, 8
  %6682 = load i64, i64* %PC.i298
  %6683 = add i64 %6682, 3
  store i64 %6683, i64* %PC.i298
  %6684 = inttoptr i64 %6681 to i32*
  %6685 = load i32, i32* %6684
  %6686 = zext i32 %6685 to i64
  store i64 %6686, i64* %RCX.i299, align 8
  store %struct.Memory* %loadMem_414822, %struct.Memory** %MEMORY
  %loadMem_414825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6688 = getelementptr inbounds %struct.GPR, %struct.GPR* %6687, i32 0, i32 33
  %6689 = getelementptr inbounds %struct.Reg, %struct.Reg* %6688, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %6689 to i64*
  %6690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6691 = getelementptr inbounds %struct.GPR, %struct.GPR* %6690, i32 0, i32 5
  %6692 = getelementptr inbounds %struct.Reg, %struct.Reg* %6691, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %6692 to i64*
  %6693 = load i64, i64* %RCX.i297
  %6694 = load i64, i64* %PC.i296
  %6695 = add i64 %6694, 3
  store i64 %6695, i64* %PC.i296
  %6696 = trunc i64 %6693 to i32
  %6697 = sub i32 %6696, 20
  %6698 = zext i32 %6697 to i64
  store i64 %6698, i64* %RCX.i297, align 8
  %6699 = icmp ult i32 %6696, 20
  %6700 = zext i1 %6699 to i8
  %6701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6700, i8* %6701, align 1
  %6702 = and i32 %6697, 255
  %6703 = call i32 @llvm.ctpop.i32(i32 %6702)
  %6704 = trunc i32 %6703 to i8
  %6705 = and i8 %6704, 1
  %6706 = xor i8 %6705, 1
  %6707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6706, i8* %6707, align 1
  %6708 = xor i64 20, %6693
  %6709 = trunc i64 %6708 to i32
  %6710 = xor i32 %6709, %6697
  %6711 = lshr i32 %6710, 4
  %6712 = trunc i32 %6711 to i8
  %6713 = and i8 %6712, 1
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6713, i8* %6714, align 1
  %6715 = icmp eq i32 %6697, 0
  %6716 = zext i1 %6715 to i8
  %6717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6716, i8* %6717, align 1
  %6718 = lshr i32 %6697, 31
  %6719 = trunc i32 %6718 to i8
  %6720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6719, i8* %6720, align 1
  %6721 = lshr i32 %6696, 31
  %6722 = xor i32 %6718, %6721
  %6723 = add i32 %6722, %6721
  %6724 = icmp eq i32 %6723, 2
  %6725 = zext i1 %6724 to i8
  %6726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6725, i8* %6726, align 1
  store %struct.Memory* %loadMem_414825, %struct.Memory** %MEMORY
  %loadMem_414828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6728 = getelementptr inbounds %struct.GPR, %struct.GPR* %6727, i32 0, i32 33
  %6729 = getelementptr inbounds %struct.Reg, %struct.Reg* %6728, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %6729 to i64*
  %6730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6731 = getelementptr inbounds %struct.GPR, %struct.GPR* %6730, i32 0, i32 5
  %6732 = getelementptr inbounds %struct.Reg, %struct.Reg* %6731, i32 0, i32 0
  %ECX.i294 = bitcast %union.anon* %6732 to i32*
  %6733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6734 = getelementptr inbounds %struct.GPR, %struct.GPR* %6733, i32 0, i32 7
  %6735 = getelementptr inbounds %struct.Reg, %struct.Reg* %6734, i32 0, i32 0
  %RDX.i295 = bitcast %union.anon* %6735 to i64*
  %6736 = load i32, i32* %ECX.i294
  %6737 = zext i32 %6736 to i64
  %6738 = load i64, i64* %PC.i293
  %6739 = add i64 %6738, 3
  store i64 %6739, i64* %PC.i293
  %6740 = shl i64 %6737, 32
  %6741 = ashr exact i64 %6740, 32
  store i64 %6741, i64* %RDX.i295, align 8
  store %struct.Memory* %loadMem_414828, %struct.Memory** %MEMORY
  %loadMem_41482b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6743 = getelementptr inbounds %struct.GPR, %struct.GPR* %6742, i32 0, i32 33
  %6744 = getelementptr inbounds %struct.Reg, %struct.Reg* %6743, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %6744 to i64*
  %6745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6746 = getelementptr inbounds %struct.GPR, %struct.GPR* %6745, i32 0, i32 7
  %6747 = getelementptr inbounds %struct.Reg, %struct.Reg* %6746, i32 0, i32 0
  %RDX.i292 = bitcast %union.anon* %6747 to i64*
  %6748 = load i64, i64* %RDX.i292
  %6749 = mul i64 %6748, 4
  %6750 = add i64 %6749, 11187184
  %6751 = load i64, i64* %PC.i291
  %6752 = add i64 %6751, 8
  store i64 %6752, i64* %PC.i291
  %6753 = inttoptr i64 %6750 to i32*
  %6754 = load i32, i32* %6753
  %6755 = sext i32 %6754 to i64
  store i64 %6755, i64* %RDX.i292, align 8
  store %struct.Memory* %loadMem_41482b, %struct.Memory** %MEMORY
  %loadMem_414833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6757 = getelementptr inbounds %struct.GPR, %struct.GPR* %6756, i32 0, i32 33
  %6758 = getelementptr inbounds %struct.Reg, %struct.Reg* %6757, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %6758 to i64*
  %6759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6760 = getelementptr inbounds %struct.GPR, %struct.GPR* %6759, i32 0, i32 7
  %6761 = getelementptr inbounds %struct.Reg, %struct.Reg* %6760, i32 0, i32 0
  %RDX.i290 = bitcast %union.anon* %6761 to i64*
  %6762 = load i64, i64* %RDX.i290
  %6763 = load i64, i64* %PC.i289
  %6764 = add i64 %6763, 7
  store i64 %6764, i64* %PC.i289
  %6765 = sext i64 %6762 to i128
  %6766 = and i128 %6765, -18446744073709551616
  %6767 = zext i64 %6762 to i128
  %6768 = or i128 %6766, %6767
  %6769 = mul i128 744, %6768
  %6770 = trunc i128 %6769 to i64
  store i64 %6770, i64* %RDX.i290, align 8
  %6771 = sext i64 %6770 to i128
  %6772 = icmp ne i128 %6771, %6769
  %6773 = zext i1 %6772 to i8
  %6774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6773, i8* %6774, align 1
  %6775 = trunc i128 %6769 to i32
  %6776 = and i32 %6775, 255
  %6777 = call i32 @llvm.ctpop.i32(i32 %6776)
  %6778 = trunc i32 %6777 to i8
  %6779 = and i8 %6778, 1
  %6780 = xor i8 %6779, 1
  %6781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6780, i8* %6781, align 1
  %6782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6782, align 1
  %6783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6783, align 1
  %6784 = lshr i64 %6770, 63
  %6785 = trunc i64 %6784 to i8
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6785, i8* %6786, align 1
  %6787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6773, i8* %6787, align 1
  store %struct.Memory* %loadMem_414833, %struct.Memory** %MEMORY
  %loadMem_41483a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6789 = getelementptr inbounds %struct.GPR, %struct.GPR* %6788, i32 0, i32 33
  %6790 = getelementptr inbounds %struct.Reg, %struct.Reg* %6789, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %6790 to i64*
  %6791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6792 = getelementptr inbounds %struct.GPR, %struct.GPR* %6791, i32 0, i32 1
  %6793 = getelementptr inbounds %struct.Reg, %struct.Reg* %6792, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %6793 to i64*
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6795 = getelementptr inbounds %struct.GPR, %struct.GPR* %6794, i32 0, i32 7
  %6796 = getelementptr inbounds %struct.Reg, %struct.Reg* %6795, i32 0, i32 0
  %RDX.i288 = bitcast %union.anon* %6796 to i64*
  %6797 = load i64, i64* %RAX.i287
  %6798 = load i64, i64* %RDX.i288
  %6799 = load i64, i64* %PC.i286
  %6800 = add i64 %6799, 3
  store i64 %6800, i64* %PC.i286
  %6801 = add i64 %6798, %6797
  store i64 %6801, i64* %RAX.i287, align 8
  %6802 = icmp ult i64 %6801, %6797
  %6803 = icmp ult i64 %6801, %6798
  %6804 = or i1 %6802, %6803
  %6805 = zext i1 %6804 to i8
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6805, i8* %6806, align 1
  %6807 = trunc i64 %6801 to i32
  %6808 = and i32 %6807, 255
  %6809 = call i32 @llvm.ctpop.i32(i32 %6808)
  %6810 = trunc i32 %6809 to i8
  %6811 = and i8 %6810, 1
  %6812 = xor i8 %6811, 1
  %6813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6812, i8* %6813, align 1
  %6814 = xor i64 %6798, %6797
  %6815 = xor i64 %6814, %6801
  %6816 = lshr i64 %6815, 4
  %6817 = trunc i64 %6816 to i8
  %6818 = and i8 %6817, 1
  %6819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6818, i8* %6819, align 1
  %6820 = icmp eq i64 %6801, 0
  %6821 = zext i1 %6820 to i8
  %6822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6821, i8* %6822, align 1
  %6823 = lshr i64 %6801, 63
  %6824 = trunc i64 %6823 to i8
  %6825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6824, i8* %6825, align 1
  %6826 = lshr i64 %6797, 63
  %6827 = lshr i64 %6798, 63
  %6828 = xor i64 %6823, %6826
  %6829 = xor i64 %6823, %6827
  %6830 = add i64 %6828, %6829
  %6831 = icmp eq i64 %6830, 2
  %6832 = zext i1 %6831 to i8
  %6833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6832, i8* %6833, align 1
  store %struct.Memory* %loadMem_41483a, %struct.Memory** %MEMORY
  %loadMem_41483d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6835 = getelementptr inbounds %struct.GPR, %struct.GPR* %6834, i32 0, i32 33
  %6836 = getelementptr inbounds %struct.Reg, %struct.Reg* %6835, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %6836 to i64*
  %6837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6838 = getelementptr inbounds %struct.GPR, %struct.GPR* %6837, i32 0, i32 1
  %6839 = getelementptr inbounds %struct.Reg, %struct.Reg* %6838, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %6839 to i64*
  %6840 = load i64, i64* %RAX.i285
  %6841 = add i64 %6840, 12
  %6842 = load i64, i64* %PC.i284
  %6843 = add i64 %6842, 4
  store i64 %6843, i64* %PC.i284
  %6844 = inttoptr i64 %6841 to i32*
  %6845 = load i32, i32* %6844
  %6846 = sub i32 %6845, 1
  %6847 = icmp ult i32 %6845, 1
  %6848 = zext i1 %6847 to i8
  %6849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6848, i8* %6849, align 1
  %6850 = and i32 %6846, 255
  %6851 = call i32 @llvm.ctpop.i32(i32 %6850)
  %6852 = trunc i32 %6851 to i8
  %6853 = and i8 %6852, 1
  %6854 = xor i8 %6853, 1
  %6855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6854, i8* %6855, align 1
  %6856 = xor i32 %6845, 1
  %6857 = xor i32 %6856, %6846
  %6858 = lshr i32 %6857, 4
  %6859 = trunc i32 %6858 to i8
  %6860 = and i8 %6859, 1
  %6861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6860, i8* %6861, align 1
  %6862 = icmp eq i32 %6846, 0
  %6863 = zext i1 %6862 to i8
  %6864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6863, i8* %6864, align 1
  %6865 = lshr i32 %6846, 31
  %6866 = trunc i32 %6865 to i8
  %6867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6866, i8* %6867, align 1
  %6868 = lshr i32 %6845, 31
  %6869 = xor i32 %6865, %6868
  %6870 = add i32 %6869, %6868
  %6871 = icmp eq i32 %6870, 2
  %6872 = zext i1 %6871 to i8
  %6873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6872, i8* %6873, align 1
  store %struct.Memory* %loadMem_41483d, %struct.Memory** %MEMORY
  %loadMem_414841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6875 = getelementptr inbounds %struct.GPR, %struct.GPR* %6874, i32 0, i32 33
  %6876 = getelementptr inbounds %struct.Reg, %struct.Reg* %6875, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %6876 to i64*
  %6877 = load i64, i64* %PC.i283
  %6878 = add i64 %6877, 121
  %6879 = load i64, i64* %PC.i283
  %6880 = add i64 %6879, 6
  %6881 = load i64, i64* %PC.i283
  %6882 = add i64 %6881, 6
  store i64 %6882, i64* %PC.i283
  %6883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6884 = load i8, i8* %6883, align 1
  %6885 = icmp eq i8 %6884, 0
  %6886 = zext i1 %6885 to i8
  store i8 %6886, i8* %BRANCH_TAKEN, align 1
  %6887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6888 = select i1 %6885, i64 %6878, i64 %6880
  store i64 %6888, i64* %6887, align 8
  store %struct.Memory* %loadMem_414841, %struct.Memory** %MEMORY
  %loadBr_414841 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414841 = icmp eq i8 %loadBr_414841, 1
  br i1 %cmpBr_414841, label %block_.L_4148ba, label %block_414847

block_414847:                                     ; preds = %block_414818
  %loadMem_414847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6890 = getelementptr inbounds %struct.GPR, %struct.GPR* %6889, i32 0, i32 33
  %6891 = getelementptr inbounds %struct.Reg, %struct.Reg* %6890, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %6891 to i64*
  %6892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6893 = getelementptr inbounds %struct.GPR, %struct.GPR* %6892, i32 0, i32 1
  %6894 = getelementptr inbounds %struct.Reg, %struct.Reg* %6893, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %6894 to i64*
  %6895 = load i64, i64* %PC.i281
  %6896 = add i64 %6895, 10
  store i64 %6896, i64* %PC.i281
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i282, align 8
  store %struct.Memory* %loadMem_414847, %struct.Memory** %MEMORY
  %loadMem_414851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6898 = getelementptr inbounds %struct.GPR, %struct.GPR* %6897, i32 0, i32 33
  %6899 = getelementptr inbounds %struct.Reg, %struct.Reg* %6898, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %6899 to i64*
  %6900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6901 = getelementptr inbounds %struct.GPR, %struct.GPR* %6900, i32 0, i32 5
  %6902 = getelementptr inbounds %struct.Reg, %struct.Reg* %6901, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %6902 to i64*
  %6903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6904 = getelementptr inbounds %struct.GPR, %struct.GPR* %6903, i32 0, i32 15
  %6905 = getelementptr inbounds %struct.Reg, %struct.Reg* %6904, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %6905 to i64*
  %6906 = load i64, i64* %RBP.i280
  %6907 = sub i64 %6906, 8
  %6908 = load i64, i64* %PC.i278
  %6909 = add i64 %6908, 3
  store i64 %6909, i64* %PC.i278
  %6910 = inttoptr i64 %6907 to i32*
  %6911 = load i32, i32* %6910
  %6912 = zext i32 %6911 to i64
  store i64 %6912, i64* %RCX.i279, align 8
  store %struct.Memory* %loadMem_414851, %struct.Memory** %MEMORY
  %loadMem_414854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6914 = getelementptr inbounds %struct.GPR, %struct.GPR* %6913, i32 0, i32 33
  %6915 = getelementptr inbounds %struct.Reg, %struct.Reg* %6914, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %6915 to i64*
  %6916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6917 = getelementptr inbounds %struct.GPR, %struct.GPR* %6916, i32 0, i32 5
  %6918 = getelementptr inbounds %struct.Reg, %struct.Reg* %6917, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %6918 to i64*
  %6919 = load i64, i64* %RCX.i277
  %6920 = load i64, i64* %PC.i276
  %6921 = add i64 %6920, 3
  store i64 %6921, i64* %PC.i276
  %6922 = trunc i64 %6919 to i32
  %6923 = sub i32 %6922, 20
  %6924 = zext i32 %6923 to i64
  store i64 %6924, i64* %RCX.i277, align 8
  %6925 = icmp ult i32 %6922, 20
  %6926 = zext i1 %6925 to i8
  %6927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6926, i8* %6927, align 1
  %6928 = and i32 %6923, 255
  %6929 = call i32 @llvm.ctpop.i32(i32 %6928)
  %6930 = trunc i32 %6929 to i8
  %6931 = and i8 %6930, 1
  %6932 = xor i8 %6931, 1
  %6933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6932, i8* %6933, align 1
  %6934 = xor i64 20, %6919
  %6935 = trunc i64 %6934 to i32
  %6936 = xor i32 %6935, %6923
  %6937 = lshr i32 %6936, 4
  %6938 = trunc i32 %6937 to i8
  %6939 = and i8 %6938, 1
  %6940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6939, i8* %6940, align 1
  %6941 = icmp eq i32 %6923, 0
  %6942 = zext i1 %6941 to i8
  %6943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6942, i8* %6943, align 1
  %6944 = lshr i32 %6923, 31
  %6945 = trunc i32 %6944 to i8
  %6946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6945, i8* %6946, align 1
  %6947 = lshr i32 %6922, 31
  %6948 = xor i32 %6944, %6947
  %6949 = add i32 %6948, %6947
  %6950 = icmp eq i32 %6949, 2
  %6951 = zext i1 %6950 to i8
  %6952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6951, i8* %6952, align 1
  store %struct.Memory* %loadMem_414854, %struct.Memory** %MEMORY
  %loadMem_414857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6954 = getelementptr inbounds %struct.GPR, %struct.GPR* %6953, i32 0, i32 33
  %6955 = getelementptr inbounds %struct.Reg, %struct.Reg* %6954, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %6955 to i64*
  %6956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6957 = getelementptr inbounds %struct.GPR, %struct.GPR* %6956, i32 0, i32 5
  %6958 = getelementptr inbounds %struct.Reg, %struct.Reg* %6957, i32 0, i32 0
  %ECX.i274 = bitcast %union.anon* %6958 to i32*
  %6959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6960 = getelementptr inbounds %struct.GPR, %struct.GPR* %6959, i32 0, i32 7
  %6961 = getelementptr inbounds %struct.Reg, %struct.Reg* %6960, i32 0, i32 0
  %RDX.i275 = bitcast %union.anon* %6961 to i64*
  %6962 = load i32, i32* %ECX.i274
  %6963 = zext i32 %6962 to i64
  %6964 = load i64, i64* %PC.i273
  %6965 = add i64 %6964, 3
  store i64 %6965, i64* %PC.i273
  %6966 = shl i64 %6963, 32
  %6967 = ashr exact i64 %6966, 32
  store i64 %6967, i64* %RDX.i275, align 8
  store %struct.Memory* %loadMem_414857, %struct.Memory** %MEMORY
  %loadMem_41485a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6969 = getelementptr inbounds %struct.GPR, %struct.GPR* %6968, i32 0, i32 33
  %6970 = getelementptr inbounds %struct.Reg, %struct.Reg* %6969, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %6970 to i64*
  %6971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6972 = getelementptr inbounds %struct.GPR, %struct.GPR* %6971, i32 0, i32 7
  %6973 = getelementptr inbounds %struct.Reg, %struct.Reg* %6972, i32 0, i32 0
  %RDX.i272 = bitcast %union.anon* %6973 to i64*
  %6974 = load i64, i64* %RDX.i272
  %6975 = mul i64 %6974, 4
  %6976 = add i64 %6975, 11187184
  %6977 = load i64, i64* %PC.i271
  %6978 = add i64 %6977, 8
  store i64 %6978, i64* %PC.i271
  %6979 = inttoptr i64 %6976 to i32*
  %6980 = load i32, i32* %6979
  %6981 = sext i32 %6980 to i64
  store i64 %6981, i64* %RDX.i272, align 8
  store %struct.Memory* %loadMem_41485a, %struct.Memory** %MEMORY
  %loadMem_414862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6983 = getelementptr inbounds %struct.GPR, %struct.GPR* %6982, i32 0, i32 33
  %6984 = getelementptr inbounds %struct.Reg, %struct.Reg* %6983, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %6984 to i64*
  %6985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6986 = getelementptr inbounds %struct.GPR, %struct.GPR* %6985, i32 0, i32 7
  %6987 = getelementptr inbounds %struct.Reg, %struct.Reg* %6986, i32 0, i32 0
  %RDX.i270 = bitcast %union.anon* %6987 to i64*
  %6988 = load i64, i64* %RDX.i270
  %6989 = load i64, i64* %PC.i269
  %6990 = add i64 %6989, 7
  store i64 %6990, i64* %PC.i269
  %6991 = sext i64 %6988 to i128
  %6992 = and i128 %6991, -18446744073709551616
  %6993 = zext i64 %6988 to i128
  %6994 = or i128 %6992, %6993
  %6995 = mul i128 744, %6994
  %6996 = trunc i128 %6995 to i64
  store i64 %6996, i64* %RDX.i270, align 8
  %6997 = sext i64 %6996 to i128
  %6998 = icmp ne i128 %6997, %6995
  %6999 = zext i1 %6998 to i8
  %7000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6999, i8* %7000, align 1
  %7001 = trunc i128 %6995 to i32
  %7002 = and i32 %7001, 255
  %7003 = call i32 @llvm.ctpop.i32(i32 %7002)
  %7004 = trunc i32 %7003 to i8
  %7005 = and i8 %7004, 1
  %7006 = xor i8 %7005, 1
  %7007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7006, i8* %7007, align 1
  %7008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7008, align 1
  %7009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7009, align 1
  %7010 = lshr i64 %6996, 63
  %7011 = trunc i64 %7010 to i8
  %7012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7011, i8* %7012, align 1
  %7013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6999, i8* %7013, align 1
  store %struct.Memory* %loadMem_414862, %struct.Memory** %MEMORY
  %loadMem_414869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7015 = getelementptr inbounds %struct.GPR, %struct.GPR* %7014, i32 0, i32 33
  %7016 = getelementptr inbounds %struct.Reg, %struct.Reg* %7015, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %7016 to i64*
  %7017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7018 = getelementptr inbounds %struct.GPR, %struct.GPR* %7017, i32 0, i32 1
  %7019 = getelementptr inbounds %struct.Reg, %struct.Reg* %7018, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %7019 to i64*
  %7020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7021 = getelementptr inbounds %struct.GPR, %struct.GPR* %7020, i32 0, i32 7
  %7022 = getelementptr inbounds %struct.Reg, %struct.Reg* %7021, i32 0, i32 0
  %RDX.i268 = bitcast %union.anon* %7022 to i64*
  %7023 = load i64, i64* %RAX.i267
  %7024 = load i64, i64* %RDX.i268
  %7025 = load i64, i64* %PC.i266
  %7026 = add i64 %7025, 3
  store i64 %7026, i64* %PC.i266
  %7027 = add i64 %7024, %7023
  store i64 %7027, i64* %RAX.i267, align 8
  %7028 = icmp ult i64 %7027, %7023
  %7029 = icmp ult i64 %7027, %7024
  %7030 = or i1 %7028, %7029
  %7031 = zext i1 %7030 to i8
  %7032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7031, i8* %7032, align 1
  %7033 = trunc i64 %7027 to i32
  %7034 = and i32 %7033, 255
  %7035 = call i32 @llvm.ctpop.i32(i32 %7034)
  %7036 = trunc i32 %7035 to i8
  %7037 = and i8 %7036, 1
  %7038 = xor i8 %7037, 1
  %7039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7038, i8* %7039, align 1
  %7040 = xor i64 %7024, %7023
  %7041 = xor i64 %7040, %7027
  %7042 = lshr i64 %7041, 4
  %7043 = trunc i64 %7042 to i8
  %7044 = and i8 %7043, 1
  %7045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7044, i8* %7045, align 1
  %7046 = icmp eq i64 %7027, 0
  %7047 = zext i1 %7046 to i8
  %7048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7047, i8* %7048, align 1
  %7049 = lshr i64 %7027, 63
  %7050 = trunc i64 %7049 to i8
  %7051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7050, i8* %7051, align 1
  %7052 = lshr i64 %7023, 63
  %7053 = lshr i64 %7024, 63
  %7054 = xor i64 %7049, %7052
  %7055 = xor i64 %7049, %7053
  %7056 = add i64 %7054, %7055
  %7057 = icmp eq i64 %7056, 2
  %7058 = zext i1 %7057 to i8
  %7059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7058, i8* %7059, align 1
  store %struct.Memory* %loadMem_414869, %struct.Memory** %MEMORY
  %loadMem_41486c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7061 = getelementptr inbounds %struct.GPR, %struct.GPR* %7060, i32 0, i32 33
  %7062 = getelementptr inbounds %struct.Reg, %struct.Reg* %7061, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %7062 to i64*
  %7063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7064 = getelementptr inbounds %struct.GPR, %struct.GPR* %7063, i32 0, i32 1
  %7065 = getelementptr inbounds %struct.Reg, %struct.Reg* %7064, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %7065 to i64*
  %7066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7067 = getelementptr inbounds %struct.GPR, %struct.GPR* %7066, i32 0, i32 5
  %7068 = getelementptr inbounds %struct.Reg, %struct.Reg* %7067, i32 0, i32 0
  %RCX.i265 = bitcast %union.anon* %7068 to i64*
  %7069 = load i64, i64* %RAX.i264
  %7070 = add i64 %7069, 740
  %7071 = load i64, i64* %PC.i263
  %7072 = add i64 %7071, 6
  store i64 %7072, i64* %PC.i263
  %7073 = inttoptr i64 %7070 to i32*
  %7074 = load i32, i32* %7073
  %7075 = zext i32 %7074 to i64
  store i64 %7075, i64* %RCX.i265, align 8
  store %struct.Memory* %loadMem_41486c, %struct.Memory** %MEMORY
  %loadMem_414872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7077 = getelementptr inbounds %struct.GPR, %struct.GPR* %7076, i32 0, i32 33
  %7078 = getelementptr inbounds %struct.Reg, %struct.Reg* %7077, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %7078 to i64*
  %7079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7080 = getelementptr inbounds %struct.GPR, %struct.GPR* %7079, i32 0, i32 5
  %7081 = getelementptr inbounds %struct.Reg, %struct.Reg* %7080, i32 0, i32 0
  %ECX.i262 = bitcast %union.anon* %7081 to i32*
  %7082 = load i32, i32* %ECX.i262
  %7083 = zext i32 %7082 to i64
  %7084 = load i64, i64* %PC.i261
  %7085 = add i64 %7084, 7
  store i64 %7085, i64* %PC.i261
  %7086 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %7087 = sub i32 %7082, %7086
  %7088 = icmp ult i32 %7082, %7086
  %7089 = zext i1 %7088 to i8
  %7090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7089, i8* %7090, align 1
  %7091 = and i32 %7087, 255
  %7092 = call i32 @llvm.ctpop.i32(i32 %7091)
  %7093 = trunc i32 %7092 to i8
  %7094 = and i8 %7093, 1
  %7095 = xor i8 %7094, 1
  %7096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7095, i8* %7096, align 1
  %7097 = xor i32 %7086, %7082
  %7098 = xor i32 %7097, %7087
  %7099 = lshr i32 %7098, 4
  %7100 = trunc i32 %7099 to i8
  %7101 = and i8 %7100, 1
  %7102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7101, i8* %7102, align 1
  %7103 = icmp eq i32 %7087, 0
  %7104 = zext i1 %7103 to i8
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7104, i8* %7105, align 1
  %7106 = lshr i32 %7087, 31
  %7107 = trunc i32 %7106 to i8
  %7108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7107, i8* %7108, align 1
  %7109 = lshr i32 %7082, 31
  %7110 = lshr i32 %7086, 31
  %7111 = xor i32 %7110, %7109
  %7112 = xor i32 %7106, %7109
  %7113 = add i32 %7112, %7111
  %7114 = icmp eq i32 %7113, 2
  %7115 = zext i1 %7114 to i8
  %7116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7115, i8* %7116, align 1
  store %struct.Memory* %loadMem_414872, %struct.Memory** %MEMORY
  %loadMem_414879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7118 = getelementptr inbounds %struct.GPR, %struct.GPR* %7117, i32 0, i32 33
  %7119 = getelementptr inbounds %struct.Reg, %struct.Reg* %7118, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %7119 to i64*
  %7120 = load i64, i64* %PC.i260
  %7121 = add i64 %7120, 65
  %7122 = load i64, i64* %PC.i260
  %7123 = add i64 %7122, 6
  %7124 = load i64, i64* %PC.i260
  %7125 = add i64 %7124, 6
  store i64 %7125, i64* %PC.i260
  %7126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7127 = load i8, i8* %7126, align 1
  store i8 %7127, i8* %BRANCH_TAKEN, align 1
  %7128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7129 = icmp ne i8 %7127, 0
  %7130 = select i1 %7129, i64 %7121, i64 %7123
  store i64 %7130, i64* %7128, align 8
  store %struct.Memory* %loadMem_414879, %struct.Memory** %MEMORY
  %loadBr_414879 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414879 = icmp eq i8 %loadBr_414879, 1
  br i1 %cmpBr_414879, label %block_.L_4148ba, label %block_41487f

block_41487f:                                     ; preds = %block_414847
  %loadMem_41487f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7132 = getelementptr inbounds %struct.GPR, %struct.GPR* %7131, i32 0, i32 33
  %7133 = getelementptr inbounds %struct.Reg, %struct.Reg* %7132, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %7133 to i64*
  %7134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7135 = getelementptr inbounds %struct.GPR, %struct.GPR* %7134, i32 0, i32 1
  %7136 = getelementptr inbounds %struct.Reg, %struct.Reg* %7135, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %7136 to i64*
  %7137 = load i64, i64* %PC.i258
  %7138 = add i64 %7137, 10
  store i64 %7138, i64* %PC.i258
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i259, align 8
  store %struct.Memory* %loadMem_41487f, %struct.Memory** %MEMORY
  %loadMem_414889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7140 = getelementptr inbounds %struct.GPR, %struct.GPR* %7139, i32 0, i32 33
  %7141 = getelementptr inbounds %struct.Reg, %struct.Reg* %7140, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %7141 to i64*
  %7142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7143 = getelementptr inbounds %struct.GPR, %struct.GPR* %7142, i32 0, i32 5
  %7144 = getelementptr inbounds %struct.Reg, %struct.Reg* %7143, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %7144 to i64*
  %7145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7146 = getelementptr inbounds %struct.GPR, %struct.GPR* %7145, i32 0, i32 15
  %7147 = getelementptr inbounds %struct.Reg, %struct.Reg* %7146, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %7147 to i64*
  %7148 = load i64, i64* %RBP.i257
  %7149 = sub i64 %7148, 24
  %7150 = load i64, i64* %PC.i255
  %7151 = add i64 %7150, 3
  store i64 %7151, i64* %PC.i255
  %7152 = inttoptr i64 %7149 to i32*
  %7153 = load i32, i32* %7152
  %7154 = zext i32 %7153 to i64
  store i64 %7154, i64* %RCX.i256, align 8
  store %struct.Memory* %loadMem_414889, %struct.Memory** %MEMORY
  %loadMem_41488c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7156 = getelementptr inbounds %struct.GPR, %struct.GPR* %7155, i32 0, i32 33
  %7157 = getelementptr inbounds %struct.Reg, %struct.Reg* %7156, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %7157 to i64*
  %7158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7159 = getelementptr inbounds %struct.GPR, %struct.GPR* %7158, i32 0, i32 5
  %7160 = getelementptr inbounds %struct.Reg, %struct.Reg* %7159, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %7160 to i64*
  %7161 = load i64, i64* %RCX.i254
  %7162 = load i64, i64* %PC.i253
  %7163 = add i64 %7162, 3
  store i64 %7163, i64* %PC.i253
  %7164 = trunc i64 %7161 to i32
  %7165 = add i32 1, %7164
  %7166 = zext i32 %7165 to i64
  store i64 %7166, i64* %RCX.i254, align 8
  %7167 = icmp ult i32 %7165, %7164
  %7168 = icmp ult i32 %7165, 1
  %7169 = or i1 %7167, %7168
  %7170 = zext i1 %7169 to i8
  %7171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7170, i8* %7171, align 1
  %7172 = and i32 %7165, 255
  %7173 = call i32 @llvm.ctpop.i32(i32 %7172)
  %7174 = trunc i32 %7173 to i8
  %7175 = and i8 %7174, 1
  %7176 = xor i8 %7175, 1
  %7177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7176, i8* %7177, align 1
  %7178 = xor i64 1, %7161
  %7179 = trunc i64 %7178 to i32
  %7180 = xor i32 %7179, %7165
  %7181 = lshr i32 %7180, 4
  %7182 = trunc i32 %7181 to i8
  %7183 = and i8 %7182, 1
  %7184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7183, i8* %7184, align 1
  %7185 = icmp eq i32 %7165, 0
  %7186 = zext i1 %7185 to i8
  %7187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7186, i8* %7187, align 1
  %7188 = lshr i32 %7165, 31
  %7189 = trunc i32 %7188 to i8
  %7190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7189, i8* %7190, align 1
  %7191 = lshr i32 %7164, 31
  %7192 = xor i32 %7188, %7191
  %7193 = add i32 %7192, %7188
  %7194 = icmp eq i32 %7193, 2
  %7195 = zext i1 %7194 to i8
  %7196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7195, i8* %7196, align 1
  store %struct.Memory* %loadMem_41488c, %struct.Memory** %MEMORY
  %loadMem_41488f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7198 = getelementptr inbounds %struct.GPR, %struct.GPR* %7197, i32 0, i32 33
  %7199 = getelementptr inbounds %struct.Reg, %struct.Reg* %7198, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %7199 to i64*
  %7200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7201 = getelementptr inbounds %struct.GPR, %struct.GPR* %7200, i32 0, i32 5
  %7202 = getelementptr inbounds %struct.Reg, %struct.Reg* %7201, i32 0, i32 0
  %ECX.i251 = bitcast %union.anon* %7202 to i32*
  %7203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7204 = getelementptr inbounds %struct.GPR, %struct.GPR* %7203, i32 0, i32 15
  %7205 = getelementptr inbounds %struct.Reg, %struct.Reg* %7204, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %7205 to i64*
  %7206 = load i64, i64* %RBP.i252
  %7207 = sub i64 %7206, 24
  %7208 = load i32, i32* %ECX.i251
  %7209 = zext i32 %7208 to i64
  %7210 = load i64, i64* %PC.i250
  %7211 = add i64 %7210, 3
  store i64 %7211, i64* %PC.i250
  %7212 = inttoptr i64 %7207 to i32*
  store i32 %7208, i32* %7212
  store %struct.Memory* %loadMem_41488f, %struct.Memory** %MEMORY
  %loadMem_414892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7214 = getelementptr inbounds %struct.GPR, %struct.GPR* %7213, i32 0, i32 33
  %7215 = getelementptr inbounds %struct.Reg, %struct.Reg* %7214, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %7215 to i64*
  %7216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7217 = getelementptr inbounds %struct.GPR, %struct.GPR* %7216, i32 0, i32 5
  %7218 = getelementptr inbounds %struct.Reg, %struct.Reg* %7217, i32 0, i32 0
  %RCX.i249 = bitcast %union.anon* %7218 to i64*
  %7219 = load i64, i64* %PC.i248
  %7220 = add i64 %7219, 7
  store i64 %7220, i64* %PC.i248
  %7221 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %7222 = zext i32 %7221 to i64
  store i64 %7222, i64* %RCX.i249, align 8
  store %struct.Memory* %loadMem_414892, %struct.Memory** %MEMORY
  %loadMem_414899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7224 = getelementptr inbounds %struct.GPR, %struct.GPR* %7223, i32 0, i32 33
  %7225 = getelementptr inbounds %struct.Reg, %struct.Reg* %7224, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %7225 to i64*
  %7226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7227 = getelementptr inbounds %struct.GPR, %struct.GPR* %7226, i32 0, i32 7
  %7228 = getelementptr inbounds %struct.Reg, %struct.Reg* %7227, i32 0, i32 0
  %RDX.i246 = bitcast %union.anon* %7228 to i64*
  %7229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7230 = getelementptr inbounds %struct.GPR, %struct.GPR* %7229, i32 0, i32 15
  %7231 = getelementptr inbounds %struct.Reg, %struct.Reg* %7230, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %7231 to i64*
  %7232 = load i64, i64* %RBP.i247
  %7233 = sub i64 %7232, 8
  %7234 = load i64, i64* %PC.i245
  %7235 = add i64 %7234, 3
  store i64 %7235, i64* %PC.i245
  %7236 = inttoptr i64 %7233 to i32*
  %7237 = load i32, i32* %7236
  %7238 = zext i32 %7237 to i64
  store i64 %7238, i64* %RDX.i246, align 8
  store %struct.Memory* %loadMem_414899, %struct.Memory** %MEMORY
  %loadMem_41489c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7240 = getelementptr inbounds %struct.GPR, %struct.GPR* %7239, i32 0, i32 33
  %7241 = getelementptr inbounds %struct.Reg, %struct.Reg* %7240, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %7241 to i64*
  %7242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7243 = getelementptr inbounds %struct.GPR, %struct.GPR* %7242, i32 0, i32 7
  %7244 = getelementptr inbounds %struct.Reg, %struct.Reg* %7243, i32 0, i32 0
  %RDX.i244 = bitcast %union.anon* %7244 to i64*
  %7245 = load i64, i64* %RDX.i244
  %7246 = load i64, i64* %PC.i243
  %7247 = add i64 %7246, 3
  store i64 %7247, i64* %PC.i243
  %7248 = trunc i64 %7245 to i32
  %7249 = sub i32 %7248, 20
  %7250 = zext i32 %7249 to i64
  store i64 %7250, i64* %RDX.i244, align 8
  %7251 = icmp ult i32 %7248, 20
  %7252 = zext i1 %7251 to i8
  %7253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7252, i8* %7253, align 1
  %7254 = and i32 %7249, 255
  %7255 = call i32 @llvm.ctpop.i32(i32 %7254)
  %7256 = trunc i32 %7255 to i8
  %7257 = and i8 %7256, 1
  %7258 = xor i8 %7257, 1
  %7259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7258, i8* %7259, align 1
  %7260 = xor i64 20, %7245
  %7261 = trunc i64 %7260 to i32
  %7262 = xor i32 %7261, %7249
  %7263 = lshr i32 %7262, 4
  %7264 = trunc i32 %7263 to i8
  %7265 = and i8 %7264, 1
  %7266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7265, i8* %7266, align 1
  %7267 = icmp eq i32 %7249, 0
  %7268 = zext i1 %7267 to i8
  %7269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7268, i8* %7269, align 1
  %7270 = lshr i32 %7249, 31
  %7271 = trunc i32 %7270 to i8
  %7272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7271, i8* %7272, align 1
  %7273 = lshr i32 %7248, 31
  %7274 = xor i32 %7270, %7273
  %7275 = add i32 %7274, %7273
  %7276 = icmp eq i32 %7275, 2
  %7277 = zext i1 %7276 to i8
  %7278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7277, i8* %7278, align 1
  store %struct.Memory* %loadMem_41489c, %struct.Memory** %MEMORY
  %loadMem_41489f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7280 = getelementptr inbounds %struct.GPR, %struct.GPR* %7279, i32 0, i32 33
  %7281 = getelementptr inbounds %struct.Reg, %struct.Reg* %7280, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %7281 to i64*
  %7282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7283 = getelementptr inbounds %struct.GPR, %struct.GPR* %7282, i32 0, i32 7
  %7284 = getelementptr inbounds %struct.Reg, %struct.Reg* %7283, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %7284 to i32*
  %7285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7286 = getelementptr inbounds %struct.GPR, %struct.GPR* %7285, i32 0, i32 9
  %7287 = getelementptr inbounds %struct.Reg, %struct.Reg* %7286, i32 0, i32 0
  %RSI.i242 = bitcast %union.anon* %7287 to i64*
  %7288 = load i32, i32* %EDX.i
  %7289 = zext i32 %7288 to i64
  %7290 = load i64, i64* %PC.i241
  %7291 = add i64 %7290, 3
  store i64 %7291, i64* %PC.i241
  %7292 = shl i64 %7289, 32
  %7293 = ashr exact i64 %7292, 32
  store i64 %7293, i64* %RSI.i242, align 8
  store %struct.Memory* %loadMem_41489f, %struct.Memory** %MEMORY
  %loadMem_4148a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7295 = getelementptr inbounds %struct.GPR, %struct.GPR* %7294, i32 0, i32 33
  %7296 = getelementptr inbounds %struct.Reg, %struct.Reg* %7295, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %7296 to i64*
  %7297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7298 = getelementptr inbounds %struct.GPR, %struct.GPR* %7297, i32 0, i32 9
  %7299 = getelementptr inbounds %struct.Reg, %struct.Reg* %7298, i32 0, i32 0
  %RSI.i240 = bitcast %union.anon* %7299 to i64*
  %7300 = load i64, i64* %RSI.i240
  %7301 = mul i64 %7300, 4
  %7302 = add i64 %7301, 11187184
  %7303 = load i64, i64* %PC.i239
  %7304 = add i64 %7303, 8
  store i64 %7304, i64* %PC.i239
  %7305 = inttoptr i64 %7302 to i32*
  %7306 = load i32, i32* %7305
  %7307 = sext i32 %7306 to i64
  store i64 %7307, i64* %RSI.i240, align 8
  store %struct.Memory* %loadMem_4148a2, %struct.Memory** %MEMORY
  %loadMem_4148aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7309 = getelementptr inbounds %struct.GPR, %struct.GPR* %7308, i32 0, i32 33
  %7310 = getelementptr inbounds %struct.Reg, %struct.Reg* %7309, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %7310 to i64*
  %7311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7312 = getelementptr inbounds %struct.GPR, %struct.GPR* %7311, i32 0, i32 9
  %7313 = getelementptr inbounds %struct.Reg, %struct.Reg* %7312, i32 0, i32 0
  %RSI.i238 = bitcast %union.anon* %7313 to i64*
  %7314 = load i64, i64* %RSI.i238
  %7315 = load i64, i64* %PC.i237
  %7316 = add i64 %7315, 7
  store i64 %7316, i64* %PC.i237
  %7317 = sext i64 %7314 to i128
  %7318 = and i128 %7317, -18446744073709551616
  %7319 = zext i64 %7314 to i128
  %7320 = or i128 %7318, %7319
  %7321 = mul i128 744, %7320
  %7322 = trunc i128 %7321 to i64
  store i64 %7322, i64* %RSI.i238, align 8
  %7323 = sext i64 %7322 to i128
  %7324 = icmp ne i128 %7323, %7321
  %7325 = zext i1 %7324 to i8
  %7326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7325, i8* %7326, align 1
  %7327 = trunc i128 %7321 to i32
  %7328 = and i32 %7327, 255
  %7329 = call i32 @llvm.ctpop.i32(i32 %7328)
  %7330 = trunc i32 %7329 to i8
  %7331 = and i8 %7330, 1
  %7332 = xor i8 %7331, 1
  %7333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7332, i8* %7333, align 1
  %7334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7334, align 1
  %7335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7335, align 1
  %7336 = lshr i64 %7322, 63
  %7337 = trunc i64 %7336 to i8
  %7338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7337, i8* %7338, align 1
  %7339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7325, i8* %7339, align 1
  store %struct.Memory* %loadMem_4148aa, %struct.Memory** %MEMORY
  %loadMem_4148b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7341 = getelementptr inbounds %struct.GPR, %struct.GPR* %7340, i32 0, i32 33
  %7342 = getelementptr inbounds %struct.Reg, %struct.Reg* %7341, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %7342 to i64*
  %7343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7344 = getelementptr inbounds %struct.GPR, %struct.GPR* %7343, i32 0, i32 1
  %7345 = getelementptr inbounds %struct.Reg, %struct.Reg* %7344, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %7345 to i64*
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7347 = getelementptr inbounds %struct.GPR, %struct.GPR* %7346, i32 0, i32 9
  %7348 = getelementptr inbounds %struct.Reg, %struct.Reg* %7347, i32 0, i32 0
  %RSI.i236 = bitcast %union.anon* %7348 to i64*
  %7349 = load i64, i64* %RAX.i235
  %7350 = load i64, i64* %RSI.i236
  %7351 = load i64, i64* %PC.i234
  %7352 = add i64 %7351, 3
  store i64 %7352, i64* %PC.i234
  %7353 = add i64 %7350, %7349
  store i64 %7353, i64* %RAX.i235, align 8
  %7354 = icmp ult i64 %7353, %7349
  %7355 = icmp ult i64 %7353, %7350
  %7356 = or i1 %7354, %7355
  %7357 = zext i1 %7356 to i8
  %7358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7357, i8* %7358, align 1
  %7359 = trunc i64 %7353 to i32
  %7360 = and i32 %7359, 255
  %7361 = call i32 @llvm.ctpop.i32(i32 %7360)
  %7362 = trunc i32 %7361 to i8
  %7363 = and i8 %7362, 1
  %7364 = xor i8 %7363, 1
  %7365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7364, i8* %7365, align 1
  %7366 = xor i64 %7350, %7349
  %7367 = xor i64 %7366, %7353
  %7368 = lshr i64 %7367, 4
  %7369 = trunc i64 %7368 to i8
  %7370 = and i8 %7369, 1
  %7371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7370, i8* %7371, align 1
  %7372 = icmp eq i64 %7353, 0
  %7373 = zext i1 %7372 to i8
  %7374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7373, i8* %7374, align 1
  %7375 = lshr i64 %7353, 63
  %7376 = trunc i64 %7375 to i8
  %7377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7376, i8* %7377, align 1
  %7378 = lshr i64 %7349, 63
  %7379 = lshr i64 %7350, 63
  %7380 = xor i64 %7375, %7378
  %7381 = xor i64 %7375, %7379
  %7382 = add i64 %7380, %7381
  %7383 = icmp eq i64 %7382, 2
  %7384 = zext i1 %7383 to i8
  %7385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7384, i8* %7385, align 1
  store %struct.Memory* %loadMem_4148b1, %struct.Memory** %MEMORY
  %loadMem_4148b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7387 = getelementptr inbounds %struct.GPR, %struct.GPR* %7386, i32 0, i32 33
  %7388 = getelementptr inbounds %struct.Reg, %struct.Reg* %7387, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %7388 to i64*
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7390 = getelementptr inbounds %struct.GPR, %struct.GPR* %7389, i32 0, i32 5
  %7391 = getelementptr inbounds %struct.Reg, %struct.Reg* %7390, i32 0, i32 0
  %ECX.i232 = bitcast %union.anon* %7391 to i32*
  %7392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7393 = getelementptr inbounds %struct.GPR, %struct.GPR* %7392, i32 0, i32 1
  %7394 = getelementptr inbounds %struct.Reg, %struct.Reg* %7393, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %7394 to i64*
  %7395 = load i64, i64* %RAX.i233
  %7396 = add i64 %7395, 740
  %7397 = load i32, i32* %ECX.i232
  %7398 = zext i32 %7397 to i64
  %7399 = load i64, i64* %PC.i231
  %7400 = add i64 %7399, 6
  store i64 %7400, i64* %PC.i231
  %7401 = inttoptr i64 %7396 to i32*
  store i32 %7397, i32* %7401
  store %struct.Memory* %loadMem_4148b4, %struct.Memory** %MEMORY
  br label %block_.L_4148ba

block_.L_4148ba:                                  ; preds = %block_41487f, %block_414847, %block_414818, %block_.L_4147fe
  %loadMem_4148ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %7402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7403 = getelementptr inbounds %struct.GPR, %struct.GPR* %7402, i32 0, i32 33
  %7404 = getelementptr inbounds %struct.Reg, %struct.Reg* %7403, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %7404 to i64*
  %7405 = load i64, i64* %PC.i230
  %7406 = add i64 %7405, 5
  %7407 = load i64, i64* %PC.i230
  %7408 = add i64 %7407, 5
  store i64 %7408, i64* %PC.i230
  %7409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7406, i64* %7409, align 8
  store %struct.Memory* %loadMem_4148ba, %struct.Memory** %MEMORY
  br label %block_.L_4148bf

block_.L_4148bf:                                  ; preds = %block_.L_4148ba, %block_.L_4147f9
  %loadMem_4148bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7411 = getelementptr inbounds %struct.GPR, %struct.GPR* %7410, i32 0, i32 33
  %7412 = getelementptr inbounds %struct.Reg, %struct.Reg* %7411, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %7412 to i64*
  %7413 = load i64, i64* %PC.i229
  %7414 = add i64 %7413, 5
  %7415 = load i64, i64* %PC.i229
  %7416 = add i64 %7415, 5
  store i64 %7416, i64* %PC.i229
  %7417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7414, i64* %7417, align 8
  store %struct.Memory* %loadMem_4148bf, %struct.Memory** %MEMORY
  br label %block_.L_4148c4

block_.L_4148c4:                                  ; preds = %block_.L_4148bf, %block_41475e
  %loadMem_4148c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7419 = getelementptr inbounds %struct.GPR, %struct.GPR* %7418, i32 0, i32 33
  %7420 = getelementptr inbounds %struct.Reg, %struct.Reg* %7419, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %7420 to i64*
  %7421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7422 = getelementptr inbounds %struct.GPR, %struct.GPR* %7421, i32 0, i32 1
  %7423 = getelementptr inbounds %struct.Reg, %struct.Reg* %7422, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %7423 to i64*
  %7424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7425 = getelementptr inbounds %struct.GPR, %struct.GPR* %7424, i32 0, i32 15
  %7426 = getelementptr inbounds %struct.Reg, %struct.Reg* %7425, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %7426 to i64*
  %7427 = load i64, i64* %RBP.i228
  %7428 = sub i64 %7427, 8
  %7429 = load i64, i64* %PC.i226
  %7430 = add i64 %7429, 3
  store i64 %7430, i64* %PC.i226
  %7431 = inttoptr i64 %7428 to i32*
  %7432 = load i32, i32* %7431
  %7433 = zext i32 %7432 to i64
  store i64 %7433, i64* %RAX.i227, align 8
  store %struct.Memory* %loadMem_4148c4, %struct.Memory** %MEMORY
  %loadMem_4148c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7435 = getelementptr inbounds %struct.GPR, %struct.GPR* %7434, i32 0, i32 33
  %7436 = getelementptr inbounds %struct.Reg, %struct.Reg* %7435, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %7436 to i64*
  %7437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7438 = getelementptr inbounds %struct.GPR, %struct.GPR* %7437, i32 0, i32 1
  %7439 = getelementptr inbounds %struct.Reg, %struct.Reg* %7438, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %7439 to i64*
  %7440 = load i64, i64* %RAX.i225
  %7441 = load i64, i64* %PC.i224
  %7442 = add i64 %7441, 3
  store i64 %7442, i64* %PC.i224
  %7443 = trunc i64 %7440 to i32
  %7444 = add i32 1, %7443
  %7445 = zext i32 %7444 to i64
  store i64 %7445, i64* %RAX.i225, align 8
  %7446 = icmp ult i32 %7444, %7443
  %7447 = icmp ult i32 %7444, 1
  %7448 = or i1 %7446, %7447
  %7449 = zext i1 %7448 to i8
  %7450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7449, i8* %7450, align 1
  %7451 = and i32 %7444, 255
  %7452 = call i32 @llvm.ctpop.i32(i32 %7451)
  %7453 = trunc i32 %7452 to i8
  %7454 = and i8 %7453, 1
  %7455 = xor i8 %7454, 1
  %7456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7455, i8* %7456, align 1
  %7457 = xor i64 1, %7440
  %7458 = trunc i64 %7457 to i32
  %7459 = xor i32 %7458, %7444
  %7460 = lshr i32 %7459, 4
  %7461 = trunc i32 %7460 to i8
  %7462 = and i8 %7461, 1
  %7463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7462, i8* %7463, align 1
  %7464 = icmp eq i32 %7444, 0
  %7465 = zext i1 %7464 to i8
  %7466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7465, i8* %7466, align 1
  %7467 = lshr i32 %7444, 31
  %7468 = trunc i32 %7467 to i8
  %7469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7468, i8* %7469, align 1
  %7470 = lshr i32 %7443, 31
  %7471 = xor i32 %7467, %7470
  %7472 = add i32 %7471, %7467
  %7473 = icmp eq i32 %7472, 2
  %7474 = zext i1 %7473 to i8
  %7475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7474, i8* %7475, align 1
  store %struct.Memory* %loadMem_4148c7, %struct.Memory** %MEMORY
  %loadMem_4148ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %7476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7477 = getelementptr inbounds %struct.GPR, %struct.GPR* %7476, i32 0, i32 33
  %7478 = getelementptr inbounds %struct.Reg, %struct.Reg* %7477, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %7478 to i64*
  %7479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7480 = getelementptr inbounds %struct.GPR, %struct.GPR* %7479, i32 0, i32 1
  %7481 = getelementptr inbounds %struct.Reg, %struct.Reg* %7480, i32 0, i32 0
  %EAX.i222 = bitcast %union.anon* %7481 to i32*
  %7482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7483 = getelementptr inbounds %struct.GPR, %struct.GPR* %7482, i32 0, i32 5
  %7484 = getelementptr inbounds %struct.Reg, %struct.Reg* %7483, i32 0, i32 0
  %RCX.i223 = bitcast %union.anon* %7484 to i64*
  %7485 = load i32, i32* %EAX.i222
  %7486 = zext i32 %7485 to i64
  %7487 = load i64, i64* %PC.i221
  %7488 = add i64 %7487, 3
  store i64 %7488, i64* %PC.i221
  %7489 = shl i64 %7486, 32
  %7490 = ashr exact i64 %7489, 32
  store i64 %7490, i64* %RCX.i223, align 8
  store %struct.Memory* %loadMem_4148ca, %struct.Memory** %MEMORY
  %loadMem_4148cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7492 = getelementptr inbounds %struct.GPR, %struct.GPR* %7491, i32 0, i32 33
  %7493 = getelementptr inbounds %struct.Reg, %struct.Reg* %7492, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %7493 to i64*
  %7494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7495 = getelementptr inbounds %struct.GPR, %struct.GPR* %7494, i32 0, i32 1
  %7496 = getelementptr inbounds %struct.Reg, %struct.Reg* %7495, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %7496 to i64*
  %7497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7498 = getelementptr inbounds %struct.GPR, %struct.GPR* %7497, i32 0, i32 5
  %7499 = getelementptr inbounds %struct.Reg, %struct.Reg* %7498, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %7499 to i64*
  %7500 = load i64, i64* %RCX.i220
  %7501 = add i64 %7500, 12099168
  %7502 = load i64, i64* %PC.i218
  %7503 = add i64 %7502, 8
  store i64 %7503, i64* %PC.i218
  %7504 = inttoptr i64 %7501 to i8*
  %7505 = load i8, i8* %7504
  %7506 = zext i8 %7505 to i64
  store i64 %7506, i64* %RAX.i219, align 8
  store %struct.Memory* %loadMem_4148cd, %struct.Memory** %MEMORY
  %loadMem_4148d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7508 = getelementptr inbounds %struct.GPR, %struct.GPR* %7507, i32 0, i32 33
  %7509 = getelementptr inbounds %struct.Reg, %struct.Reg* %7508, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %7509 to i64*
  %7510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7511 = getelementptr inbounds %struct.GPR, %struct.GPR* %7510, i32 0, i32 1
  %7512 = getelementptr inbounds %struct.Reg, %struct.Reg* %7511, i32 0, i32 0
  %EAX.i217 = bitcast %union.anon* %7512 to i32*
  %7513 = load i32, i32* %EAX.i217
  %7514 = zext i32 %7513 to i64
  %7515 = load i64, i64* %PC.i216
  %7516 = add i64 %7515, 3
  store i64 %7516, i64* %PC.i216
  %7517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7517, align 1
  %7518 = and i32 %7513, 255
  %7519 = call i32 @llvm.ctpop.i32(i32 %7518)
  %7520 = trunc i32 %7519 to i8
  %7521 = and i8 %7520, 1
  %7522 = xor i8 %7521, 1
  %7523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7522, i8* %7523, align 1
  %7524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7524, align 1
  %7525 = icmp eq i32 %7513, 0
  %7526 = zext i1 %7525 to i8
  %7527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7526, i8* %7527, align 1
  %7528 = lshr i32 %7513, 31
  %7529 = trunc i32 %7528 to i8
  %7530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7529, i8* %7530, align 1
  %7531 = lshr i32 %7513, 31
  %7532 = xor i32 %7528, %7531
  %7533 = add i32 %7532, %7531
  %7534 = icmp eq i32 %7533, 2
  %7535 = zext i1 %7534 to i8
  %7536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7535, i8* %7536, align 1
  store %struct.Memory* %loadMem_4148d5, %struct.Memory** %MEMORY
  %loadMem_4148d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7538 = getelementptr inbounds %struct.GPR, %struct.GPR* %7537, i32 0, i32 33
  %7539 = getelementptr inbounds %struct.Reg, %struct.Reg* %7538, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %7539 to i64*
  %7540 = load i64, i64* %PC.i215
  %7541 = add i64 %7540, 20
  %7542 = load i64, i64* %PC.i215
  %7543 = add i64 %7542, 6
  %7544 = load i64, i64* %PC.i215
  %7545 = add i64 %7544, 6
  store i64 %7545, i64* %PC.i215
  %7546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7547 = load i8, i8* %7546, align 1
  %7548 = icmp eq i8 %7547, 0
  %7549 = zext i1 %7548 to i8
  store i8 %7549, i8* %BRANCH_TAKEN, align 1
  %7550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7551 = select i1 %7548, i64 %7541, i64 %7543
  store i64 %7551, i64* %7550, align 8
  store %struct.Memory* %loadMem_4148d8, %struct.Memory** %MEMORY
  %loadBr_4148d8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4148d8 = icmp eq i8 %loadBr_4148d8, 1
  br i1 %cmpBr_4148d8, label %block_.L_4148ec, label %block_4148de

block_4148de:                                     ; preds = %block_.L_4148c4
  %loadMem_4148de = load %struct.Memory*, %struct.Memory** %MEMORY
  %7552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7553 = getelementptr inbounds %struct.GPR, %struct.GPR* %7552, i32 0, i32 33
  %7554 = getelementptr inbounds %struct.Reg, %struct.Reg* %7553, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %7554 to i64*
  %7555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7556 = getelementptr inbounds %struct.GPR, %struct.GPR* %7555, i32 0, i32 1
  %7557 = getelementptr inbounds %struct.Reg, %struct.Reg* %7556, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %7557 to i64*
  %7558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7559 = getelementptr inbounds %struct.GPR, %struct.GPR* %7558, i32 0, i32 15
  %7560 = getelementptr inbounds %struct.Reg, %struct.Reg* %7559, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %7560 to i64*
  %7561 = load i64, i64* %RBP.i214
  %7562 = sub i64 %7561, 20
  %7563 = load i64, i64* %PC.i212
  %7564 = add i64 %7563, 3
  store i64 %7564, i64* %PC.i212
  %7565 = inttoptr i64 %7562 to i32*
  %7566 = load i32, i32* %7565
  %7567 = zext i32 %7566 to i64
  store i64 %7567, i64* %RAX.i213, align 8
  store %struct.Memory* %loadMem_4148de, %struct.Memory** %MEMORY
  %loadMem_4148e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7569 = getelementptr inbounds %struct.GPR, %struct.GPR* %7568, i32 0, i32 33
  %7570 = getelementptr inbounds %struct.Reg, %struct.Reg* %7569, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %7570 to i64*
  %7571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7572 = getelementptr inbounds %struct.GPR, %struct.GPR* %7571, i32 0, i32 1
  %7573 = getelementptr inbounds %struct.Reg, %struct.Reg* %7572, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %7573 to i64*
  %7574 = load i64, i64* %RAX.i211
  %7575 = load i64, i64* %PC.i210
  %7576 = add i64 %7575, 3
  store i64 %7576, i64* %PC.i210
  %7577 = trunc i64 %7574 to i32
  %7578 = add i32 1, %7577
  %7579 = zext i32 %7578 to i64
  store i64 %7579, i64* %RAX.i211, align 8
  %7580 = icmp ult i32 %7578, %7577
  %7581 = icmp ult i32 %7578, 1
  %7582 = or i1 %7580, %7581
  %7583 = zext i1 %7582 to i8
  %7584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7583, i8* %7584, align 1
  %7585 = and i32 %7578, 255
  %7586 = call i32 @llvm.ctpop.i32(i32 %7585)
  %7587 = trunc i32 %7586 to i8
  %7588 = and i8 %7587, 1
  %7589 = xor i8 %7588, 1
  %7590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7589, i8* %7590, align 1
  %7591 = xor i64 1, %7574
  %7592 = trunc i64 %7591 to i32
  %7593 = xor i32 %7592, %7578
  %7594 = lshr i32 %7593, 4
  %7595 = trunc i32 %7594 to i8
  %7596 = and i8 %7595, 1
  %7597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7596, i8* %7597, align 1
  %7598 = icmp eq i32 %7578, 0
  %7599 = zext i1 %7598 to i8
  %7600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7599, i8* %7600, align 1
  %7601 = lshr i32 %7578, 31
  %7602 = trunc i32 %7601 to i8
  %7603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7602, i8* %7603, align 1
  %7604 = lshr i32 %7577, 31
  %7605 = xor i32 %7601, %7604
  %7606 = add i32 %7605, %7601
  %7607 = icmp eq i32 %7606, 2
  %7608 = zext i1 %7607 to i8
  %7609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7608, i8* %7609, align 1
  store %struct.Memory* %loadMem_4148e1, %struct.Memory** %MEMORY
  %loadMem_4148e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7611 = getelementptr inbounds %struct.GPR, %struct.GPR* %7610, i32 0, i32 33
  %7612 = getelementptr inbounds %struct.Reg, %struct.Reg* %7611, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %7612 to i64*
  %7613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7614 = getelementptr inbounds %struct.GPR, %struct.GPR* %7613, i32 0, i32 1
  %7615 = getelementptr inbounds %struct.Reg, %struct.Reg* %7614, i32 0, i32 0
  %EAX.i208 = bitcast %union.anon* %7615 to i32*
  %7616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7617 = getelementptr inbounds %struct.GPR, %struct.GPR* %7616, i32 0, i32 15
  %7618 = getelementptr inbounds %struct.Reg, %struct.Reg* %7617, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %7618 to i64*
  %7619 = load i64, i64* %RBP.i209
  %7620 = sub i64 %7619, 20
  %7621 = load i32, i32* %EAX.i208
  %7622 = zext i32 %7621 to i64
  %7623 = load i64, i64* %PC.i207
  %7624 = add i64 %7623, 3
  store i64 %7624, i64* %PC.i207
  %7625 = inttoptr i64 %7620 to i32*
  store i32 %7621, i32* %7625
  store %struct.Memory* %loadMem_4148e4, %struct.Memory** %MEMORY
  %loadMem_4148e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7627 = getelementptr inbounds %struct.GPR, %struct.GPR* %7626, i32 0, i32 33
  %7628 = getelementptr inbounds %struct.Reg, %struct.Reg* %7627, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %7628 to i64*
  %7629 = load i64, i64* %PC.i206
  %7630 = add i64 %7629, 299
  %7631 = load i64, i64* %PC.i206
  %7632 = add i64 %7631, 5
  store i64 %7632, i64* %PC.i206
  %7633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7630, i64* %7633, align 8
  store %struct.Memory* %loadMem_4148e7, %struct.Memory** %MEMORY
  br label %block_.L_414a12

block_.L_4148ec:                                  ; preds = %block_.L_4148c4
  %loadMem_4148ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %7634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7635 = getelementptr inbounds %struct.GPR, %struct.GPR* %7634, i32 0, i32 33
  %7636 = getelementptr inbounds %struct.Reg, %struct.Reg* %7635, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %7636 to i64*
  %7637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7638 = getelementptr inbounds %struct.GPR, %struct.GPR* %7637, i32 0, i32 1
  %7639 = getelementptr inbounds %struct.Reg, %struct.Reg* %7638, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %7639 to i64*
  %7640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7641 = getelementptr inbounds %struct.GPR, %struct.GPR* %7640, i32 0, i32 15
  %7642 = getelementptr inbounds %struct.Reg, %struct.Reg* %7641, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %7642 to i64*
  %7643 = load i64, i64* %RBP.i205
  %7644 = sub i64 %7643, 8
  %7645 = load i64, i64* %PC.i203
  %7646 = add i64 %7645, 3
  store i64 %7646, i64* %PC.i203
  %7647 = inttoptr i64 %7644 to i32*
  %7648 = load i32, i32* %7647
  %7649 = zext i32 %7648 to i64
  store i64 %7649, i64* %RAX.i204, align 8
  store %struct.Memory* %loadMem_4148ec, %struct.Memory** %MEMORY
  %loadMem_4148ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %7650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7651 = getelementptr inbounds %struct.GPR, %struct.GPR* %7650, i32 0, i32 33
  %7652 = getelementptr inbounds %struct.Reg, %struct.Reg* %7651, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %7652 to i64*
  %7653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7654 = getelementptr inbounds %struct.GPR, %struct.GPR* %7653, i32 0, i32 1
  %7655 = getelementptr inbounds %struct.Reg, %struct.Reg* %7654, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %7655 to i64*
  %7656 = load i64, i64* %RAX.i202
  %7657 = load i64, i64* %PC.i201
  %7658 = add i64 %7657, 3
  store i64 %7658, i64* %PC.i201
  %7659 = trunc i64 %7656 to i32
  %7660 = add i32 1, %7659
  %7661 = zext i32 %7660 to i64
  store i64 %7661, i64* %RAX.i202, align 8
  %7662 = icmp ult i32 %7660, %7659
  %7663 = icmp ult i32 %7660, 1
  %7664 = or i1 %7662, %7663
  %7665 = zext i1 %7664 to i8
  %7666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7665, i8* %7666, align 1
  %7667 = and i32 %7660, 255
  %7668 = call i32 @llvm.ctpop.i32(i32 %7667)
  %7669 = trunc i32 %7668 to i8
  %7670 = and i8 %7669, 1
  %7671 = xor i8 %7670, 1
  %7672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7671, i8* %7672, align 1
  %7673 = xor i64 1, %7656
  %7674 = trunc i64 %7673 to i32
  %7675 = xor i32 %7674, %7660
  %7676 = lshr i32 %7675, 4
  %7677 = trunc i32 %7676 to i8
  %7678 = and i8 %7677, 1
  %7679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7678, i8* %7679, align 1
  %7680 = icmp eq i32 %7660, 0
  %7681 = zext i1 %7680 to i8
  %7682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7681, i8* %7682, align 1
  %7683 = lshr i32 %7660, 31
  %7684 = trunc i32 %7683 to i8
  %7685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7684, i8* %7685, align 1
  %7686 = lshr i32 %7659, 31
  %7687 = xor i32 %7683, %7686
  %7688 = add i32 %7687, %7683
  %7689 = icmp eq i32 %7688, 2
  %7690 = zext i1 %7689 to i8
  %7691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7690, i8* %7691, align 1
  store %struct.Memory* %loadMem_4148ef, %struct.Memory** %MEMORY
  %loadMem_4148f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7693 = getelementptr inbounds %struct.GPR, %struct.GPR* %7692, i32 0, i32 33
  %7694 = getelementptr inbounds %struct.Reg, %struct.Reg* %7693, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %7694 to i64*
  %7695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7696 = getelementptr inbounds %struct.GPR, %struct.GPR* %7695, i32 0, i32 1
  %7697 = getelementptr inbounds %struct.Reg, %struct.Reg* %7696, i32 0, i32 0
  %EAX.i199 = bitcast %union.anon* %7697 to i32*
  %7698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7699 = getelementptr inbounds %struct.GPR, %struct.GPR* %7698, i32 0, i32 5
  %7700 = getelementptr inbounds %struct.Reg, %struct.Reg* %7699, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %7700 to i64*
  %7701 = load i32, i32* %EAX.i199
  %7702 = zext i32 %7701 to i64
  %7703 = load i64, i64* %PC.i198
  %7704 = add i64 %7703, 3
  store i64 %7704, i64* %PC.i198
  %7705 = shl i64 %7702, 32
  %7706 = ashr exact i64 %7705, 32
  store i64 %7706, i64* %RCX.i200, align 8
  store %struct.Memory* %loadMem_4148f2, %struct.Memory** %MEMORY
  %loadMem_4148f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7708 = getelementptr inbounds %struct.GPR, %struct.GPR* %7707, i32 0, i32 33
  %7709 = getelementptr inbounds %struct.Reg, %struct.Reg* %7708, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %7709 to i64*
  %7710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7711 = getelementptr inbounds %struct.GPR, %struct.GPR* %7710, i32 0, i32 1
  %7712 = getelementptr inbounds %struct.Reg, %struct.Reg* %7711, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %7712 to i64*
  %7713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7714 = getelementptr inbounds %struct.GPR, %struct.GPR* %7713, i32 0, i32 5
  %7715 = getelementptr inbounds %struct.Reg, %struct.Reg* %7714, i32 0, i32 0
  %RCX.i197 = bitcast %union.anon* %7715 to i64*
  %7716 = load i64, i64* %RCX.i197
  %7717 = add i64 %7716, 12099168
  %7718 = load i64, i64* %PC.i195
  %7719 = add i64 %7718, 8
  store i64 %7719, i64* %PC.i195
  %7720 = inttoptr i64 %7717 to i8*
  %7721 = load i8, i8* %7720
  %7722 = zext i8 %7721 to i64
  store i64 %7722, i64* %RAX.i196, align 8
  store %struct.Memory* %loadMem_4148f5, %struct.Memory** %MEMORY
  %loadMem_4148fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7724 = getelementptr inbounds %struct.GPR, %struct.GPR* %7723, i32 0, i32 33
  %7725 = getelementptr inbounds %struct.Reg, %struct.Reg* %7724, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %7725 to i64*
  %7726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7727 = getelementptr inbounds %struct.GPR, %struct.GPR* %7726, i32 0, i32 1
  %7728 = getelementptr inbounds %struct.Reg, %struct.Reg* %7727, i32 0, i32 0
  %EAX.i193 = bitcast %union.anon* %7728 to i32*
  %7729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7730 = getelementptr inbounds %struct.GPR, %struct.GPR* %7729, i32 0, i32 15
  %7731 = getelementptr inbounds %struct.Reg, %struct.Reg* %7730, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %7731 to i64*
  %7732 = load i32, i32* %EAX.i193
  %7733 = zext i32 %7732 to i64
  %7734 = load i64, i64* %RBP.i194
  %7735 = sub i64 %7734, 12
  %7736 = load i64, i64* %PC.i192
  %7737 = add i64 %7736, 3
  store i64 %7737, i64* %PC.i192
  %7738 = inttoptr i64 %7735 to i32*
  %7739 = load i32, i32* %7738
  %7740 = sub i32 %7732, %7739
  %7741 = icmp ult i32 %7732, %7739
  %7742 = zext i1 %7741 to i8
  %7743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7742, i8* %7743, align 1
  %7744 = and i32 %7740, 255
  %7745 = call i32 @llvm.ctpop.i32(i32 %7744)
  %7746 = trunc i32 %7745 to i8
  %7747 = and i8 %7746, 1
  %7748 = xor i8 %7747, 1
  %7749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7748, i8* %7749, align 1
  %7750 = xor i32 %7739, %7732
  %7751 = xor i32 %7750, %7740
  %7752 = lshr i32 %7751, 4
  %7753 = trunc i32 %7752 to i8
  %7754 = and i8 %7753, 1
  %7755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7754, i8* %7755, align 1
  %7756 = icmp eq i32 %7740, 0
  %7757 = zext i1 %7756 to i8
  %7758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7757, i8* %7758, align 1
  %7759 = lshr i32 %7740, 31
  %7760 = trunc i32 %7759 to i8
  %7761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7760, i8* %7761, align 1
  %7762 = lshr i32 %7732, 31
  %7763 = lshr i32 %7739, 31
  %7764 = xor i32 %7763, %7762
  %7765 = xor i32 %7759, %7762
  %7766 = add i32 %7765, %7764
  %7767 = icmp eq i32 %7766, 2
  %7768 = zext i1 %7767 to i8
  %7769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7768, i8* %7769, align 1
  store %struct.Memory* %loadMem_4148fd, %struct.Memory** %MEMORY
  %loadMem_414900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7771 = getelementptr inbounds %struct.GPR, %struct.GPR* %7770, i32 0, i32 33
  %7772 = getelementptr inbounds %struct.Reg, %struct.Reg* %7771, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %7772 to i64*
  %7773 = load i64, i64* %PC.i191
  %7774 = add i64 %7773, 126
  %7775 = load i64, i64* %PC.i191
  %7776 = add i64 %7775, 6
  %7777 = load i64, i64* %PC.i191
  %7778 = add i64 %7777, 6
  store i64 %7778, i64* %PC.i191
  %7779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7780 = load i8, i8* %7779, align 1
  %7781 = icmp eq i8 %7780, 0
  %7782 = zext i1 %7781 to i8
  store i8 %7782, i8* %BRANCH_TAKEN, align 1
  %7783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7784 = select i1 %7781, i64 %7774, i64 %7776
  store i64 %7784, i64* %7783, align 8
  store %struct.Memory* %loadMem_414900, %struct.Memory** %MEMORY
  %loadBr_414900 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414900 = icmp eq i8 %loadBr_414900, 1
  br i1 %cmpBr_414900, label %block_.L_41497e, label %block_414906

block_414906:                                     ; preds = %block_.L_4148ec
  %loadMem_414906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7786 = getelementptr inbounds %struct.GPR, %struct.GPR* %7785, i32 0, i32 33
  %7787 = getelementptr inbounds %struct.Reg, %struct.Reg* %7786, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %7787 to i64*
  %7788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7789 = getelementptr inbounds %struct.GPR, %struct.GPR* %7788, i32 0, i32 1
  %7790 = getelementptr inbounds %struct.Reg, %struct.Reg* %7789, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %7790 to i64*
  %7791 = load i64, i64* %PC.i189
  %7792 = add i64 %7791, 10
  store i64 %7792, i64* %PC.i189
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i190, align 8
  store %struct.Memory* %loadMem_414906, %struct.Memory** %MEMORY
  %loadMem_414910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7794 = getelementptr inbounds %struct.GPR, %struct.GPR* %7793, i32 0, i32 33
  %7795 = getelementptr inbounds %struct.Reg, %struct.Reg* %7794, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %7795 to i64*
  %7796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7797 = getelementptr inbounds %struct.GPR, %struct.GPR* %7796, i32 0, i32 5
  %7798 = getelementptr inbounds %struct.Reg, %struct.Reg* %7797, i32 0, i32 0
  %RCX.i187 = bitcast %union.anon* %7798 to i64*
  %7799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7800 = getelementptr inbounds %struct.GPR, %struct.GPR* %7799, i32 0, i32 15
  %7801 = getelementptr inbounds %struct.Reg, %struct.Reg* %7800, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %7801 to i64*
  %7802 = load i64, i64* %RBP.i188
  %7803 = sub i64 %7802, 8
  %7804 = load i64, i64* %PC.i186
  %7805 = add i64 %7804, 3
  store i64 %7805, i64* %PC.i186
  %7806 = inttoptr i64 %7803 to i32*
  %7807 = load i32, i32* %7806
  %7808 = zext i32 %7807 to i64
  store i64 %7808, i64* %RCX.i187, align 8
  store %struct.Memory* %loadMem_414910, %struct.Memory** %MEMORY
  %loadMem_414913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7810 = getelementptr inbounds %struct.GPR, %struct.GPR* %7809, i32 0, i32 33
  %7811 = getelementptr inbounds %struct.Reg, %struct.Reg* %7810, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %7811 to i64*
  %7812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7813 = getelementptr inbounds %struct.GPR, %struct.GPR* %7812, i32 0, i32 5
  %7814 = getelementptr inbounds %struct.Reg, %struct.Reg* %7813, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %7814 to i64*
  %7815 = load i64, i64* %RCX.i185
  %7816 = load i64, i64* %PC.i184
  %7817 = add i64 %7816, 3
  store i64 %7817, i64* %PC.i184
  %7818 = trunc i64 %7815 to i32
  %7819 = add i32 1, %7818
  %7820 = zext i32 %7819 to i64
  store i64 %7820, i64* %RCX.i185, align 8
  %7821 = icmp ult i32 %7819, %7818
  %7822 = icmp ult i32 %7819, 1
  %7823 = or i1 %7821, %7822
  %7824 = zext i1 %7823 to i8
  %7825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7824, i8* %7825, align 1
  %7826 = and i32 %7819, 255
  %7827 = call i32 @llvm.ctpop.i32(i32 %7826)
  %7828 = trunc i32 %7827 to i8
  %7829 = and i8 %7828, 1
  %7830 = xor i8 %7829, 1
  %7831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7830, i8* %7831, align 1
  %7832 = xor i64 1, %7815
  %7833 = trunc i64 %7832 to i32
  %7834 = xor i32 %7833, %7819
  %7835 = lshr i32 %7834, 4
  %7836 = trunc i32 %7835 to i8
  %7837 = and i8 %7836, 1
  %7838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7837, i8* %7838, align 1
  %7839 = icmp eq i32 %7819, 0
  %7840 = zext i1 %7839 to i8
  %7841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7840, i8* %7841, align 1
  %7842 = lshr i32 %7819, 31
  %7843 = trunc i32 %7842 to i8
  %7844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7843, i8* %7844, align 1
  %7845 = lshr i32 %7818, 31
  %7846 = xor i32 %7842, %7845
  %7847 = add i32 %7846, %7842
  %7848 = icmp eq i32 %7847, 2
  %7849 = zext i1 %7848 to i8
  %7850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7849, i8* %7850, align 1
  store %struct.Memory* %loadMem_414913, %struct.Memory** %MEMORY
  %loadMem_414916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7852 = getelementptr inbounds %struct.GPR, %struct.GPR* %7851, i32 0, i32 33
  %7853 = getelementptr inbounds %struct.Reg, %struct.Reg* %7852, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %7853 to i64*
  %7854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7855 = getelementptr inbounds %struct.GPR, %struct.GPR* %7854, i32 0, i32 5
  %7856 = getelementptr inbounds %struct.Reg, %struct.Reg* %7855, i32 0, i32 0
  %ECX.i182 = bitcast %union.anon* %7856 to i32*
  %7857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7858 = getelementptr inbounds %struct.GPR, %struct.GPR* %7857, i32 0, i32 7
  %7859 = getelementptr inbounds %struct.Reg, %struct.Reg* %7858, i32 0, i32 0
  %RDX.i183 = bitcast %union.anon* %7859 to i64*
  %7860 = load i32, i32* %ECX.i182
  %7861 = zext i32 %7860 to i64
  %7862 = load i64, i64* %PC.i181
  %7863 = add i64 %7862, 3
  store i64 %7863, i64* %PC.i181
  %7864 = shl i64 %7861, 32
  %7865 = ashr exact i64 %7864, 32
  store i64 %7865, i64* %RDX.i183, align 8
  store %struct.Memory* %loadMem_414916, %struct.Memory** %MEMORY
  %loadMem_414919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7867 = getelementptr inbounds %struct.GPR, %struct.GPR* %7866, i32 0, i32 33
  %7868 = getelementptr inbounds %struct.Reg, %struct.Reg* %7867, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %7868 to i64*
  %7869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7870 = getelementptr inbounds %struct.GPR, %struct.GPR* %7869, i32 0, i32 7
  %7871 = getelementptr inbounds %struct.Reg, %struct.Reg* %7870, i32 0, i32 0
  %RDX.i180 = bitcast %union.anon* %7871 to i64*
  %7872 = load i64, i64* %RDX.i180
  %7873 = mul i64 %7872, 4
  %7874 = add i64 %7873, 11187184
  %7875 = load i64, i64* %PC.i179
  %7876 = add i64 %7875, 8
  store i64 %7876, i64* %PC.i179
  %7877 = inttoptr i64 %7874 to i32*
  %7878 = load i32, i32* %7877
  %7879 = sext i32 %7878 to i64
  store i64 %7879, i64* %RDX.i180, align 8
  store %struct.Memory* %loadMem_414919, %struct.Memory** %MEMORY
  %loadMem_414921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7881 = getelementptr inbounds %struct.GPR, %struct.GPR* %7880, i32 0, i32 33
  %7882 = getelementptr inbounds %struct.Reg, %struct.Reg* %7881, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %7882 to i64*
  %7883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7884 = getelementptr inbounds %struct.GPR, %struct.GPR* %7883, i32 0, i32 7
  %7885 = getelementptr inbounds %struct.Reg, %struct.Reg* %7884, i32 0, i32 0
  %RDX.i178 = bitcast %union.anon* %7885 to i64*
  %7886 = load i64, i64* %RDX.i178
  %7887 = load i64, i64* %PC.i177
  %7888 = add i64 %7887, 7
  store i64 %7888, i64* %PC.i177
  %7889 = sext i64 %7886 to i128
  %7890 = and i128 %7889, -18446744073709551616
  %7891 = zext i64 %7886 to i128
  %7892 = or i128 %7890, %7891
  %7893 = mul i128 744, %7892
  %7894 = trunc i128 %7893 to i64
  store i64 %7894, i64* %RDX.i178, align 8
  %7895 = sext i64 %7894 to i128
  %7896 = icmp ne i128 %7895, %7893
  %7897 = zext i1 %7896 to i8
  %7898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7897, i8* %7898, align 1
  %7899 = trunc i128 %7893 to i32
  %7900 = and i32 %7899, 255
  %7901 = call i32 @llvm.ctpop.i32(i32 %7900)
  %7902 = trunc i32 %7901 to i8
  %7903 = and i8 %7902, 1
  %7904 = xor i8 %7903, 1
  %7905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7904, i8* %7905, align 1
  %7906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7906, align 1
  %7907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7907, align 1
  %7908 = lshr i64 %7894, 63
  %7909 = trunc i64 %7908 to i8
  %7910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7909, i8* %7910, align 1
  %7911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7897, i8* %7911, align 1
  store %struct.Memory* %loadMem_414921, %struct.Memory** %MEMORY
  %loadMem_414928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7913 = getelementptr inbounds %struct.GPR, %struct.GPR* %7912, i32 0, i32 33
  %7914 = getelementptr inbounds %struct.Reg, %struct.Reg* %7913, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %7914 to i64*
  %7915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7916 = getelementptr inbounds %struct.GPR, %struct.GPR* %7915, i32 0, i32 1
  %7917 = getelementptr inbounds %struct.Reg, %struct.Reg* %7916, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %7917 to i64*
  %7918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7919 = getelementptr inbounds %struct.GPR, %struct.GPR* %7918, i32 0, i32 7
  %7920 = getelementptr inbounds %struct.Reg, %struct.Reg* %7919, i32 0, i32 0
  %RDX.i176 = bitcast %union.anon* %7920 to i64*
  %7921 = load i64, i64* %RAX.i175
  %7922 = load i64, i64* %RDX.i176
  %7923 = load i64, i64* %PC.i174
  %7924 = add i64 %7923, 3
  store i64 %7924, i64* %PC.i174
  %7925 = add i64 %7922, %7921
  store i64 %7925, i64* %RAX.i175, align 8
  %7926 = icmp ult i64 %7925, %7921
  %7927 = icmp ult i64 %7925, %7922
  %7928 = or i1 %7926, %7927
  %7929 = zext i1 %7928 to i8
  %7930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7929, i8* %7930, align 1
  %7931 = trunc i64 %7925 to i32
  %7932 = and i32 %7931, 255
  %7933 = call i32 @llvm.ctpop.i32(i32 %7932)
  %7934 = trunc i32 %7933 to i8
  %7935 = and i8 %7934, 1
  %7936 = xor i8 %7935, 1
  %7937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7936, i8* %7937, align 1
  %7938 = xor i64 %7922, %7921
  %7939 = xor i64 %7938, %7925
  %7940 = lshr i64 %7939, 4
  %7941 = trunc i64 %7940 to i8
  %7942 = and i8 %7941, 1
  %7943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7942, i8* %7943, align 1
  %7944 = icmp eq i64 %7925, 0
  %7945 = zext i1 %7944 to i8
  %7946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7945, i8* %7946, align 1
  %7947 = lshr i64 %7925, 63
  %7948 = trunc i64 %7947 to i8
  %7949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7948, i8* %7949, align 1
  %7950 = lshr i64 %7921, 63
  %7951 = lshr i64 %7922, 63
  %7952 = xor i64 %7947, %7950
  %7953 = xor i64 %7947, %7951
  %7954 = add i64 %7952, %7953
  %7955 = icmp eq i64 %7954, 2
  %7956 = zext i1 %7955 to i8
  %7957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7956, i8* %7957, align 1
  store %struct.Memory* %loadMem_414928, %struct.Memory** %MEMORY
  %loadMem_41492b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7959 = getelementptr inbounds %struct.GPR, %struct.GPR* %7958, i32 0, i32 33
  %7960 = getelementptr inbounds %struct.Reg, %struct.Reg* %7959, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %7960 to i64*
  %7961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7962 = getelementptr inbounds %struct.GPR, %struct.GPR* %7961, i32 0, i32 1
  %7963 = getelementptr inbounds %struct.Reg, %struct.Reg* %7962, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %7963 to i64*
  %7964 = load i64, i64* %RAX.i173
  %7965 = add i64 %7964, 12
  %7966 = load i64, i64* %PC.i172
  %7967 = add i64 %7966, 4
  store i64 %7967, i64* %PC.i172
  %7968 = inttoptr i64 %7965 to i32*
  %7969 = load i32, i32* %7968
  %7970 = sub i32 %7969, 2
  %7971 = icmp ult i32 %7969, 2
  %7972 = zext i1 %7971 to i8
  %7973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7972, i8* %7973, align 1
  %7974 = and i32 %7970, 255
  %7975 = call i32 @llvm.ctpop.i32(i32 %7974)
  %7976 = trunc i32 %7975 to i8
  %7977 = and i8 %7976, 1
  %7978 = xor i8 %7977, 1
  %7979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7978, i8* %7979, align 1
  %7980 = xor i32 %7969, 2
  %7981 = xor i32 %7980, %7970
  %7982 = lshr i32 %7981, 4
  %7983 = trunc i32 %7982 to i8
  %7984 = and i8 %7983, 1
  %7985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7984, i8* %7985, align 1
  %7986 = icmp eq i32 %7970, 0
  %7987 = zext i1 %7986 to i8
  %7988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7987, i8* %7988, align 1
  %7989 = lshr i32 %7970, 31
  %7990 = trunc i32 %7989 to i8
  %7991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7990, i8* %7991, align 1
  %7992 = lshr i32 %7969, 31
  %7993 = xor i32 %7989, %7992
  %7994 = add i32 %7993, %7992
  %7995 = icmp eq i32 %7994, 2
  %7996 = zext i1 %7995 to i8
  %7997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7996, i8* %7997, align 1
  store %struct.Memory* %loadMem_41492b, %struct.Memory** %MEMORY
  %loadMem_41492f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7999 = getelementptr inbounds %struct.GPR, %struct.GPR* %7998, i32 0, i32 33
  %8000 = getelementptr inbounds %struct.Reg, %struct.Reg* %7999, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %8000 to i64*
  %8001 = load i64, i64* %PC.i171
  %8002 = add i64 %8001, 18
  %8003 = load i64, i64* %PC.i171
  %8004 = add i64 %8003, 6
  %8005 = load i64, i64* %PC.i171
  %8006 = add i64 %8005, 6
  store i64 %8006, i64* %PC.i171
  %8007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8008 = load i8, i8* %8007, align 1
  %8009 = icmp ne i8 %8008, 0
  %8010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8011 = load i8, i8* %8010, align 1
  %8012 = icmp ne i8 %8011, 0
  %8013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8014 = load i8, i8* %8013, align 1
  %8015 = icmp ne i8 %8014, 0
  %8016 = xor i1 %8012, %8015
  %8017 = or i1 %8009, %8016
  %8018 = zext i1 %8017 to i8
  store i8 %8018, i8* %BRANCH_TAKEN, align 1
  %8019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8020 = select i1 %8017, i64 %8002, i64 %8004
  store i64 %8020, i64* %8019, align 8
  store %struct.Memory* %loadMem_41492f, %struct.Memory** %MEMORY
  %loadBr_41492f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41492f = icmp eq i8 %loadBr_41492f, 1
  br i1 %cmpBr_41492f, label %block_.L_414941, label %block_414935

block_414935:                                     ; preds = %block_414906
  %loadMem_414935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8022 = getelementptr inbounds %struct.GPR, %struct.GPR* %8021, i32 0, i32 33
  %8023 = getelementptr inbounds %struct.Reg, %struct.Reg* %8022, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %8023 to i64*
  %8024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8025 = getelementptr inbounds %struct.GPR, %struct.GPR* %8024, i32 0, i32 15
  %8026 = getelementptr inbounds %struct.Reg, %struct.Reg* %8025, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %8026 to i64*
  %8027 = load i64, i64* %RBP.i170
  %8028 = sub i64 %8027, 4
  %8029 = load i64, i64* %PC.i169
  %8030 = add i64 %8029, 7
  store i64 %8030, i64* %PC.i169
  %8031 = inttoptr i64 %8028 to i32*
  store i32 0, i32* %8031
  store %struct.Memory* %loadMem_414935, %struct.Memory** %MEMORY
  %loadMem_41493c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8033 = getelementptr inbounds %struct.GPR, %struct.GPR* %8032, i32 0, i32 33
  %8034 = getelementptr inbounds %struct.Reg, %struct.Reg* %8033, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %8034 to i64*
  %8035 = load i64, i64* %PC.i168
  %8036 = add i64 %8035, 352
  %8037 = load i64, i64* %PC.i168
  %8038 = add i64 %8037, 5
  store i64 %8038, i64* %PC.i168
  %8039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8036, i64* %8039, align 8
  store %struct.Memory* %loadMem_41493c, %struct.Memory** %MEMORY
  br label %block_.L_414a9c

block_.L_414941:                                  ; preds = %block_414906
  %loadMem_414941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8041 = getelementptr inbounds %struct.GPR, %struct.GPR* %8040, i32 0, i32 33
  %8042 = getelementptr inbounds %struct.Reg, %struct.Reg* %8041, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %8042 to i64*
  %8043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8044 = getelementptr inbounds %struct.GPR, %struct.GPR* %8043, i32 0, i32 1
  %8045 = getelementptr inbounds %struct.Reg, %struct.Reg* %8044, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %8045 to i64*
  %8046 = load i64, i64* %PC.i166
  %8047 = add i64 %8046, 10
  store i64 %8047, i64* %PC.i166
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_414941, %struct.Memory** %MEMORY
  %loadMem_41494b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8049 = getelementptr inbounds %struct.GPR, %struct.GPR* %8048, i32 0, i32 33
  %8050 = getelementptr inbounds %struct.Reg, %struct.Reg* %8049, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %8050 to i64*
  %8051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8052 = getelementptr inbounds %struct.GPR, %struct.GPR* %8051, i32 0, i32 5
  %8053 = getelementptr inbounds %struct.Reg, %struct.Reg* %8052, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %8053 to i64*
  %8054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8055 = getelementptr inbounds %struct.GPR, %struct.GPR* %8054, i32 0, i32 15
  %8056 = getelementptr inbounds %struct.Reg, %struct.Reg* %8055, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %8056 to i64*
  %8057 = load i64, i64* %RBP.i165
  %8058 = sub i64 %8057, 8
  %8059 = load i64, i64* %PC.i163
  %8060 = add i64 %8059, 3
  store i64 %8060, i64* %PC.i163
  %8061 = inttoptr i64 %8058 to i32*
  %8062 = load i32, i32* %8061
  %8063 = zext i32 %8062 to i64
  store i64 %8063, i64* %RCX.i164, align 8
  store %struct.Memory* %loadMem_41494b, %struct.Memory** %MEMORY
  %loadMem_41494e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8065 = getelementptr inbounds %struct.GPR, %struct.GPR* %8064, i32 0, i32 33
  %8066 = getelementptr inbounds %struct.Reg, %struct.Reg* %8065, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %8066 to i64*
  %8067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8068 = getelementptr inbounds %struct.GPR, %struct.GPR* %8067, i32 0, i32 5
  %8069 = getelementptr inbounds %struct.Reg, %struct.Reg* %8068, i32 0, i32 0
  %RCX.i162 = bitcast %union.anon* %8069 to i64*
  %8070 = load i64, i64* %RCX.i162
  %8071 = load i64, i64* %PC.i161
  %8072 = add i64 %8071, 3
  store i64 %8072, i64* %PC.i161
  %8073 = trunc i64 %8070 to i32
  %8074 = add i32 1, %8073
  %8075 = zext i32 %8074 to i64
  store i64 %8075, i64* %RCX.i162, align 8
  %8076 = icmp ult i32 %8074, %8073
  %8077 = icmp ult i32 %8074, 1
  %8078 = or i1 %8076, %8077
  %8079 = zext i1 %8078 to i8
  %8080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8079, i8* %8080, align 1
  %8081 = and i32 %8074, 255
  %8082 = call i32 @llvm.ctpop.i32(i32 %8081)
  %8083 = trunc i32 %8082 to i8
  %8084 = and i8 %8083, 1
  %8085 = xor i8 %8084, 1
  %8086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8085, i8* %8086, align 1
  %8087 = xor i64 1, %8070
  %8088 = trunc i64 %8087 to i32
  %8089 = xor i32 %8088, %8074
  %8090 = lshr i32 %8089, 4
  %8091 = trunc i32 %8090 to i8
  %8092 = and i8 %8091, 1
  %8093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8092, i8* %8093, align 1
  %8094 = icmp eq i32 %8074, 0
  %8095 = zext i1 %8094 to i8
  %8096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8095, i8* %8096, align 1
  %8097 = lshr i32 %8074, 31
  %8098 = trunc i32 %8097 to i8
  %8099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8098, i8* %8099, align 1
  %8100 = lshr i32 %8073, 31
  %8101 = xor i32 %8097, %8100
  %8102 = add i32 %8101, %8097
  %8103 = icmp eq i32 %8102, 2
  %8104 = zext i1 %8103 to i8
  %8105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8104, i8* %8105, align 1
  store %struct.Memory* %loadMem_41494e, %struct.Memory** %MEMORY
  %loadMem_414951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8107 = getelementptr inbounds %struct.GPR, %struct.GPR* %8106, i32 0, i32 33
  %8108 = getelementptr inbounds %struct.Reg, %struct.Reg* %8107, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %8108 to i64*
  %8109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8110 = getelementptr inbounds %struct.GPR, %struct.GPR* %8109, i32 0, i32 5
  %8111 = getelementptr inbounds %struct.Reg, %struct.Reg* %8110, i32 0, i32 0
  %ECX.i159 = bitcast %union.anon* %8111 to i32*
  %8112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8113 = getelementptr inbounds %struct.GPR, %struct.GPR* %8112, i32 0, i32 7
  %8114 = getelementptr inbounds %struct.Reg, %struct.Reg* %8113, i32 0, i32 0
  %RDX.i160 = bitcast %union.anon* %8114 to i64*
  %8115 = load i32, i32* %ECX.i159
  %8116 = zext i32 %8115 to i64
  %8117 = load i64, i64* %PC.i158
  %8118 = add i64 %8117, 3
  store i64 %8118, i64* %PC.i158
  %8119 = shl i64 %8116, 32
  %8120 = ashr exact i64 %8119, 32
  store i64 %8120, i64* %RDX.i160, align 8
  store %struct.Memory* %loadMem_414951, %struct.Memory** %MEMORY
  %loadMem_414954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8122 = getelementptr inbounds %struct.GPR, %struct.GPR* %8121, i32 0, i32 33
  %8123 = getelementptr inbounds %struct.Reg, %struct.Reg* %8122, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %8123 to i64*
  %8124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8125 = getelementptr inbounds %struct.GPR, %struct.GPR* %8124, i32 0, i32 7
  %8126 = getelementptr inbounds %struct.Reg, %struct.Reg* %8125, i32 0, i32 0
  %RDX.i157 = bitcast %union.anon* %8126 to i64*
  %8127 = load i64, i64* %RDX.i157
  %8128 = mul i64 %8127, 4
  %8129 = add i64 %8128, 11187184
  %8130 = load i64, i64* %PC.i156
  %8131 = add i64 %8130, 8
  store i64 %8131, i64* %PC.i156
  %8132 = inttoptr i64 %8129 to i32*
  %8133 = load i32, i32* %8132
  %8134 = sext i32 %8133 to i64
  store i64 %8134, i64* %RDX.i157, align 8
  store %struct.Memory* %loadMem_414954, %struct.Memory** %MEMORY
  %loadMem_41495c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8136 = getelementptr inbounds %struct.GPR, %struct.GPR* %8135, i32 0, i32 33
  %8137 = getelementptr inbounds %struct.Reg, %struct.Reg* %8136, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %8137 to i64*
  %8138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8139 = getelementptr inbounds %struct.GPR, %struct.GPR* %8138, i32 0, i32 7
  %8140 = getelementptr inbounds %struct.Reg, %struct.Reg* %8139, i32 0, i32 0
  %RDX.i155 = bitcast %union.anon* %8140 to i64*
  %8141 = load i64, i64* %RDX.i155
  %8142 = load i64, i64* %PC.i154
  %8143 = add i64 %8142, 7
  store i64 %8143, i64* %PC.i154
  %8144 = sext i64 %8141 to i128
  %8145 = and i128 %8144, -18446744073709551616
  %8146 = zext i64 %8141 to i128
  %8147 = or i128 %8145, %8146
  %8148 = mul i128 744, %8147
  %8149 = trunc i128 %8148 to i64
  store i64 %8149, i64* %RDX.i155, align 8
  %8150 = sext i64 %8149 to i128
  %8151 = icmp ne i128 %8150, %8148
  %8152 = zext i1 %8151 to i8
  %8153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8152, i8* %8153, align 1
  %8154 = trunc i128 %8148 to i32
  %8155 = and i32 %8154, 255
  %8156 = call i32 @llvm.ctpop.i32(i32 %8155)
  %8157 = trunc i32 %8156 to i8
  %8158 = and i8 %8157, 1
  %8159 = xor i8 %8158, 1
  %8160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8159, i8* %8160, align 1
  %8161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8161, align 1
  %8162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8162, align 1
  %8163 = lshr i64 %8149, 63
  %8164 = trunc i64 %8163 to i8
  %8165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8164, i8* %8165, align 1
  %8166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8152, i8* %8166, align 1
  store %struct.Memory* %loadMem_41495c, %struct.Memory** %MEMORY
  %loadMem_414963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8168 = getelementptr inbounds %struct.GPR, %struct.GPR* %8167, i32 0, i32 33
  %8169 = getelementptr inbounds %struct.Reg, %struct.Reg* %8168, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %8169 to i64*
  %8170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8171 = getelementptr inbounds %struct.GPR, %struct.GPR* %8170, i32 0, i32 1
  %8172 = getelementptr inbounds %struct.Reg, %struct.Reg* %8171, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %8172 to i64*
  %8173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8174 = getelementptr inbounds %struct.GPR, %struct.GPR* %8173, i32 0, i32 7
  %8175 = getelementptr inbounds %struct.Reg, %struct.Reg* %8174, i32 0, i32 0
  %RDX.i153 = bitcast %union.anon* %8175 to i64*
  %8176 = load i64, i64* %RAX.i152
  %8177 = load i64, i64* %RDX.i153
  %8178 = load i64, i64* %PC.i151
  %8179 = add i64 %8178, 3
  store i64 %8179, i64* %PC.i151
  %8180 = add i64 %8177, %8176
  store i64 %8180, i64* %RAX.i152, align 8
  %8181 = icmp ult i64 %8180, %8176
  %8182 = icmp ult i64 %8180, %8177
  %8183 = or i1 %8181, %8182
  %8184 = zext i1 %8183 to i8
  %8185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8184, i8* %8185, align 1
  %8186 = trunc i64 %8180 to i32
  %8187 = and i32 %8186, 255
  %8188 = call i32 @llvm.ctpop.i32(i32 %8187)
  %8189 = trunc i32 %8188 to i8
  %8190 = and i8 %8189, 1
  %8191 = xor i8 %8190, 1
  %8192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8191, i8* %8192, align 1
  %8193 = xor i64 %8177, %8176
  %8194 = xor i64 %8193, %8180
  %8195 = lshr i64 %8194, 4
  %8196 = trunc i64 %8195 to i8
  %8197 = and i8 %8196, 1
  %8198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8197, i8* %8198, align 1
  %8199 = icmp eq i64 %8180, 0
  %8200 = zext i1 %8199 to i8
  %8201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8200, i8* %8201, align 1
  %8202 = lshr i64 %8180, 63
  %8203 = trunc i64 %8202 to i8
  %8204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8203, i8* %8204, align 1
  %8205 = lshr i64 %8176, 63
  %8206 = lshr i64 %8177, 63
  %8207 = xor i64 %8202, %8205
  %8208 = xor i64 %8202, %8206
  %8209 = add i64 %8207, %8208
  %8210 = icmp eq i64 %8209, 2
  %8211 = zext i1 %8210 to i8
  %8212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8211, i8* %8212, align 1
  store %struct.Memory* %loadMem_414963, %struct.Memory** %MEMORY
  %loadMem_414966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8214 = getelementptr inbounds %struct.GPR, %struct.GPR* %8213, i32 0, i32 33
  %8215 = getelementptr inbounds %struct.Reg, %struct.Reg* %8214, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %8215 to i64*
  %8216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8217 = getelementptr inbounds %struct.GPR, %struct.GPR* %8216, i32 0, i32 1
  %8218 = getelementptr inbounds %struct.Reg, %struct.Reg* %8217, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %8218 to i64*
  %8219 = load i64, i64* %RAX.i150
  %8220 = add i64 %8219, 12
  %8221 = load i64, i64* %PC.i149
  %8222 = add i64 %8221, 4
  store i64 %8222, i64* %PC.i149
  %8223 = inttoptr i64 %8220 to i32*
  %8224 = load i32, i32* %8223
  %8225 = sub i32 %8224, 2
  %8226 = icmp ult i32 %8224, 2
  %8227 = zext i1 %8226 to i8
  %8228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8227, i8* %8228, align 1
  %8229 = and i32 %8225, 255
  %8230 = call i32 @llvm.ctpop.i32(i32 %8229)
  %8231 = trunc i32 %8230 to i8
  %8232 = and i8 %8231, 1
  %8233 = xor i8 %8232, 1
  %8234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8233, i8* %8234, align 1
  %8235 = xor i32 %8224, 2
  %8236 = xor i32 %8235, %8225
  %8237 = lshr i32 %8236, 4
  %8238 = trunc i32 %8237 to i8
  %8239 = and i8 %8238, 1
  %8240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8239, i8* %8240, align 1
  %8241 = icmp eq i32 %8225, 0
  %8242 = zext i1 %8241 to i8
  %8243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8242, i8* %8243, align 1
  %8244 = lshr i32 %8225, 31
  %8245 = trunc i32 %8244 to i8
  %8246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8245, i8* %8246, align 1
  %8247 = lshr i32 %8224, 31
  %8248 = xor i32 %8244, %8247
  %8249 = add i32 %8248, %8247
  %8250 = icmp eq i32 %8249, 2
  %8251 = zext i1 %8250 to i8
  %8252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8251, i8* %8252, align 1
  store %struct.Memory* %loadMem_414966, %struct.Memory** %MEMORY
  %loadMem_41496a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8254 = getelementptr inbounds %struct.GPR, %struct.GPR* %8253, i32 0, i32 33
  %8255 = getelementptr inbounds %struct.Reg, %struct.Reg* %8254, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %8255 to i64*
  %8256 = load i64, i64* %PC.i148
  %8257 = add i64 %8256, 15
  %8258 = load i64, i64* %PC.i148
  %8259 = add i64 %8258, 6
  %8260 = load i64, i64* %PC.i148
  %8261 = add i64 %8260, 6
  store i64 %8261, i64* %PC.i148
  %8262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8263 = load i8, i8* %8262, align 1
  %8264 = icmp eq i8 %8263, 0
  %8265 = zext i1 %8264 to i8
  store i8 %8265, i8* %BRANCH_TAKEN, align 1
  %8266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8267 = select i1 %8264, i64 %8257, i64 %8259
  store i64 %8267, i64* %8266, align 8
  store %struct.Memory* %loadMem_41496a, %struct.Memory** %MEMORY
  %loadBr_41496a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41496a = icmp eq i8 %loadBr_41496a, 1
  br i1 %cmpBr_41496a, label %block_.L_414979, label %block_414970

block_414970:                                     ; preds = %block_.L_414941
  %loadMem_414970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8269 = getelementptr inbounds %struct.GPR, %struct.GPR* %8268, i32 0, i32 33
  %8270 = getelementptr inbounds %struct.Reg, %struct.Reg* %8269, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %8270 to i64*
  %8271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8272 = getelementptr inbounds %struct.GPR, %struct.GPR* %8271, i32 0, i32 1
  %8273 = getelementptr inbounds %struct.Reg, %struct.Reg* %8272, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %8273 to i64*
  %8274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8275 = getelementptr inbounds %struct.GPR, %struct.GPR* %8274, i32 0, i32 15
  %8276 = getelementptr inbounds %struct.Reg, %struct.Reg* %8275, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %8276 to i64*
  %8277 = load i64, i64* %RBP.i147
  %8278 = sub i64 %8277, 28
  %8279 = load i64, i64* %PC.i145
  %8280 = add i64 %8279, 3
  store i64 %8280, i64* %PC.i145
  %8281 = inttoptr i64 %8278 to i32*
  %8282 = load i32, i32* %8281
  %8283 = zext i32 %8282 to i64
  store i64 %8283, i64* %RAX.i146, align 8
  store %struct.Memory* %loadMem_414970, %struct.Memory** %MEMORY
  %loadMem_414973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8285 = getelementptr inbounds %struct.GPR, %struct.GPR* %8284, i32 0, i32 33
  %8286 = getelementptr inbounds %struct.Reg, %struct.Reg* %8285, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %8286 to i64*
  %8287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8288 = getelementptr inbounds %struct.GPR, %struct.GPR* %8287, i32 0, i32 1
  %8289 = getelementptr inbounds %struct.Reg, %struct.Reg* %8288, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %8289 to i64*
  %8290 = load i64, i64* %RAX.i144
  %8291 = load i64, i64* %PC.i143
  %8292 = add i64 %8291, 3
  store i64 %8292, i64* %PC.i143
  %8293 = trunc i64 %8290 to i32
  %8294 = add i32 1, %8293
  %8295 = zext i32 %8294 to i64
  store i64 %8295, i64* %RAX.i144, align 8
  %8296 = icmp ult i32 %8294, %8293
  %8297 = icmp ult i32 %8294, 1
  %8298 = or i1 %8296, %8297
  %8299 = zext i1 %8298 to i8
  %8300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8299, i8* %8300, align 1
  %8301 = and i32 %8294, 255
  %8302 = call i32 @llvm.ctpop.i32(i32 %8301)
  %8303 = trunc i32 %8302 to i8
  %8304 = and i8 %8303, 1
  %8305 = xor i8 %8304, 1
  %8306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8305, i8* %8306, align 1
  %8307 = xor i64 1, %8290
  %8308 = trunc i64 %8307 to i32
  %8309 = xor i32 %8308, %8294
  %8310 = lshr i32 %8309, 4
  %8311 = trunc i32 %8310 to i8
  %8312 = and i8 %8311, 1
  %8313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8312, i8* %8313, align 1
  %8314 = icmp eq i32 %8294, 0
  %8315 = zext i1 %8314 to i8
  %8316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8315, i8* %8316, align 1
  %8317 = lshr i32 %8294, 31
  %8318 = trunc i32 %8317 to i8
  %8319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8318, i8* %8319, align 1
  %8320 = lshr i32 %8293, 31
  %8321 = xor i32 %8317, %8320
  %8322 = add i32 %8321, %8317
  %8323 = icmp eq i32 %8322, 2
  %8324 = zext i1 %8323 to i8
  %8325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8324, i8* %8325, align 1
  store %struct.Memory* %loadMem_414973, %struct.Memory** %MEMORY
  %loadMem_414976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8327 = getelementptr inbounds %struct.GPR, %struct.GPR* %8326, i32 0, i32 33
  %8328 = getelementptr inbounds %struct.Reg, %struct.Reg* %8327, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %8328 to i64*
  %8329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8330 = getelementptr inbounds %struct.GPR, %struct.GPR* %8329, i32 0, i32 1
  %8331 = getelementptr inbounds %struct.Reg, %struct.Reg* %8330, i32 0, i32 0
  %EAX.i141 = bitcast %union.anon* %8331 to i32*
  %8332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8333 = getelementptr inbounds %struct.GPR, %struct.GPR* %8332, i32 0, i32 15
  %8334 = getelementptr inbounds %struct.Reg, %struct.Reg* %8333, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %8334 to i64*
  %8335 = load i64, i64* %RBP.i142
  %8336 = sub i64 %8335, 28
  %8337 = load i32, i32* %EAX.i141
  %8338 = zext i32 %8337 to i64
  %8339 = load i64, i64* %PC.i140
  %8340 = add i64 %8339, 3
  store i64 %8340, i64* %PC.i140
  %8341 = inttoptr i64 %8336 to i32*
  store i32 %8337, i32* %8341
  store %struct.Memory* %loadMem_414976, %struct.Memory** %MEMORY
  br label %block_.L_414979

block_.L_414979:                                  ; preds = %block_414970, %block_.L_414941
  %loadMem_414979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8343 = getelementptr inbounds %struct.GPR, %struct.GPR* %8342, i32 0, i32 33
  %8344 = getelementptr inbounds %struct.Reg, %struct.Reg* %8343, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %8344 to i64*
  %8345 = load i64, i64* %PC.i139
  %8346 = add i64 %8345, 148
  %8347 = load i64, i64* %PC.i139
  %8348 = add i64 %8347, 5
  store i64 %8348, i64* %PC.i139
  %8349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8346, i64* %8349, align 8
  store %struct.Memory* %loadMem_414979, %struct.Memory** %MEMORY
  br label %block_.L_414a0d

block_.L_41497e:                                  ; preds = %block_.L_4148ec
  %loadMem_41497e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8351 = getelementptr inbounds %struct.GPR, %struct.GPR* %8350, i32 0, i32 33
  %8352 = getelementptr inbounds %struct.Reg, %struct.Reg* %8351, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %8352 to i64*
  %8353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8354 = getelementptr inbounds %struct.GPR, %struct.GPR* %8353, i32 0, i32 1
  %8355 = getelementptr inbounds %struct.Reg, %struct.Reg* %8354, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %8355 to i64*
  %8356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8357 = getelementptr inbounds %struct.GPR, %struct.GPR* %8356, i32 0, i32 15
  %8358 = getelementptr inbounds %struct.Reg, %struct.Reg* %8357, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %8358 to i64*
  %8359 = load i64, i64* %RBP.i138
  %8360 = sub i64 %8359, 8
  %8361 = load i64, i64* %PC.i136
  %8362 = add i64 %8361, 3
  store i64 %8362, i64* %PC.i136
  %8363 = inttoptr i64 %8360 to i32*
  %8364 = load i32, i32* %8363
  %8365 = zext i32 %8364 to i64
  store i64 %8365, i64* %RAX.i137, align 8
  store %struct.Memory* %loadMem_41497e, %struct.Memory** %MEMORY
  %loadMem_414981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8367 = getelementptr inbounds %struct.GPR, %struct.GPR* %8366, i32 0, i32 33
  %8368 = getelementptr inbounds %struct.Reg, %struct.Reg* %8367, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %8368 to i64*
  %8369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8370 = getelementptr inbounds %struct.GPR, %struct.GPR* %8369, i32 0, i32 1
  %8371 = getelementptr inbounds %struct.Reg, %struct.Reg* %8370, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %8371 to i64*
  %8372 = load i64, i64* %RAX.i135
  %8373 = load i64, i64* %PC.i134
  %8374 = add i64 %8373, 3
  store i64 %8374, i64* %PC.i134
  %8375 = trunc i64 %8372 to i32
  %8376 = add i32 1, %8375
  %8377 = zext i32 %8376 to i64
  store i64 %8377, i64* %RAX.i135, align 8
  %8378 = icmp ult i32 %8376, %8375
  %8379 = icmp ult i32 %8376, 1
  %8380 = or i1 %8378, %8379
  %8381 = zext i1 %8380 to i8
  %8382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8381, i8* %8382, align 1
  %8383 = and i32 %8376, 255
  %8384 = call i32 @llvm.ctpop.i32(i32 %8383)
  %8385 = trunc i32 %8384 to i8
  %8386 = and i8 %8385, 1
  %8387 = xor i8 %8386, 1
  %8388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8387, i8* %8388, align 1
  %8389 = xor i64 1, %8372
  %8390 = trunc i64 %8389 to i32
  %8391 = xor i32 %8390, %8376
  %8392 = lshr i32 %8391, 4
  %8393 = trunc i32 %8392 to i8
  %8394 = and i8 %8393, 1
  %8395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8394, i8* %8395, align 1
  %8396 = icmp eq i32 %8376, 0
  %8397 = zext i1 %8396 to i8
  %8398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8397, i8* %8398, align 1
  %8399 = lshr i32 %8376, 31
  %8400 = trunc i32 %8399 to i8
  %8401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8400, i8* %8401, align 1
  %8402 = lshr i32 %8375, 31
  %8403 = xor i32 %8399, %8402
  %8404 = add i32 %8403, %8399
  %8405 = icmp eq i32 %8404, 2
  %8406 = zext i1 %8405 to i8
  %8407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8406, i8* %8407, align 1
  store %struct.Memory* %loadMem_414981, %struct.Memory** %MEMORY
  %loadMem_414984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8409 = getelementptr inbounds %struct.GPR, %struct.GPR* %8408, i32 0, i32 33
  %8410 = getelementptr inbounds %struct.Reg, %struct.Reg* %8409, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %8410 to i64*
  %8411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8412 = getelementptr inbounds %struct.GPR, %struct.GPR* %8411, i32 0, i32 1
  %8413 = getelementptr inbounds %struct.Reg, %struct.Reg* %8412, i32 0, i32 0
  %EAX.i132 = bitcast %union.anon* %8413 to i32*
  %8414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8415 = getelementptr inbounds %struct.GPR, %struct.GPR* %8414, i32 0, i32 5
  %8416 = getelementptr inbounds %struct.Reg, %struct.Reg* %8415, i32 0, i32 0
  %RCX.i133 = bitcast %union.anon* %8416 to i64*
  %8417 = load i32, i32* %EAX.i132
  %8418 = zext i32 %8417 to i64
  %8419 = load i64, i64* %PC.i131
  %8420 = add i64 %8419, 3
  store i64 %8420, i64* %PC.i131
  %8421 = shl i64 %8418, 32
  %8422 = ashr exact i64 %8421, 32
  store i64 %8422, i64* %RCX.i133, align 8
  store %struct.Memory* %loadMem_414984, %struct.Memory** %MEMORY
  %loadMem_414987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8424 = getelementptr inbounds %struct.GPR, %struct.GPR* %8423, i32 0, i32 33
  %8425 = getelementptr inbounds %struct.Reg, %struct.Reg* %8424, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %8425 to i64*
  %8426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8427 = getelementptr inbounds %struct.GPR, %struct.GPR* %8426, i32 0, i32 1
  %8428 = getelementptr inbounds %struct.Reg, %struct.Reg* %8427, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %8428 to i64*
  %8429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8430 = getelementptr inbounds %struct.GPR, %struct.GPR* %8429, i32 0, i32 5
  %8431 = getelementptr inbounds %struct.Reg, %struct.Reg* %8430, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %8431 to i64*
  %8432 = load i64, i64* %RCX.i130
  %8433 = add i64 %8432, 12099168
  %8434 = load i64, i64* %PC.i128
  %8435 = add i64 %8434, 8
  store i64 %8435, i64* %PC.i128
  %8436 = inttoptr i64 %8433 to i8*
  %8437 = load i8, i8* %8436
  %8438 = zext i8 %8437 to i64
  store i64 %8438, i64* %RAX.i129, align 8
  store %struct.Memory* %loadMem_414987, %struct.Memory** %MEMORY
  %loadMem_41498f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8440 = getelementptr inbounds %struct.GPR, %struct.GPR* %8439, i32 0, i32 33
  %8441 = getelementptr inbounds %struct.Reg, %struct.Reg* %8440, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %8441 to i64*
  %8442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8443 = getelementptr inbounds %struct.GPR, %struct.GPR* %8442, i32 0, i32 1
  %8444 = getelementptr inbounds %struct.Reg, %struct.Reg* %8443, i32 0, i32 0
  %EAX.i126 = bitcast %union.anon* %8444 to i32*
  %8445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8446 = getelementptr inbounds %struct.GPR, %struct.GPR* %8445, i32 0, i32 15
  %8447 = getelementptr inbounds %struct.Reg, %struct.Reg* %8446, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %8447 to i64*
  %8448 = load i32, i32* %EAX.i126
  %8449 = zext i32 %8448 to i64
  %8450 = load i64, i64* %RBP.i127
  %8451 = sub i64 %8450, 16
  %8452 = load i64, i64* %PC.i125
  %8453 = add i64 %8452, 3
  store i64 %8453, i64* %PC.i125
  %8454 = inttoptr i64 %8451 to i32*
  %8455 = load i32, i32* %8454
  %8456 = sub i32 %8448, %8455
  %8457 = icmp ult i32 %8448, %8455
  %8458 = zext i1 %8457 to i8
  %8459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8458, i8* %8459, align 1
  %8460 = and i32 %8456, 255
  %8461 = call i32 @llvm.ctpop.i32(i32 %8460)
  %8462 = trunc i32 %8461 to i8
  %8463 = and i8 %8462, 1
  %8464 = xor i8 %8463, 1
  %8465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8464, i8* %8465, align 1
  %8466 = xor i32 %8455, %8448
  %8467 = xor i32 %8466, %8456
  %8468 = lshr i32 %8467, 4
  %8469 = trunc i32 %8468 to i8
  %8470 = and i8 %8469, 1
  %8471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8470, i8* %8471, align 1
  %8472 = icmp eq i32 %8456, 0
  %8473 = zext i1 %8472 to i8
  %8474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8473, i8* %8474, align 1
  %8475 = lshr i32 %8456, 31
  %8476 = trunc i32 %8475 to i8
  %8477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8476, i8* %8477, align 1
  %8478 = lshr i32 %8448, 31
  %8479 = lshr i32 %8455, 31
  %8480 = xor i32 %8479, %8478
  %8481 = xor i32 %8475, %8478
  %8482 = add i32 %8481, %8480
  %8483 = icmp eq i32 %8482, 2
  %8484 = zext i1 %8483 to i8
  %8485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8484, i8* %8485, align 1
  store %struct.Memory* %loadMem_41498f, %struct.Memory** %MEMORY
  %loadMem_414992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8487 = getelementptr inbounds %struct.GPR, %struct.GPR* %8486, i32 0, i32 33
  %8488 = getelementptr inbounds %struct.Reg, %struct.Reg* %8487, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %8488 to i64*
  %8489 = load i64, i64* %PC.i124
  %8490 = add i64 %8489, 118
  %8491 = load i64, i64* %PC.i124
  %8492 = add i64 %8491, 6
  %8493 = load i64, i64* %PC.i124
  %8494 = add i64 %8493, 6
  store i64 %8494, i64* %PC.i124
  %8495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8496 = load i8, i8* %8495, align 1
  %8497 = icmp eq i8 %8496, 0
  %8498 = zext i1 %8497 to i8
  store i8 %8498, i8* %BRANCH_TAKEN, align 1
  %8499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8500 = select i1 %8497, i64 %8490, i64 %8492
  store i64 %8500, i64* %8499, align 8
  store %struct.Memory* %loadMem_414992, %struct.Memory** %MEMORY
  %loadBr_414992 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414992 = icmp eq i8 %loadBr_414992, 1
  br i1 %cmpBr_414992, label %block_.L_414a08, label %block_414998

block_414998:                                     ; preds = %block_.L_41497e
  %loadMem_414998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8502 = getelementptr inbounds %struct.GPR, %struct.GPR* %8501, i32 0, i32 33
  %8503 = getelementptr inbounds %struct.Reg, %struct.Reg* %8502, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %8503 to i64*
  %8504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8505 = getelementptr inbounds %struct.GPR, %struct.GPR* %8504, i32 0, i32 1
  %8506 = getelementptr inbounds %struct.Reg, %struct.Reg* %8505, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %8506 to i64*
  %8507 = load i64, i64* %PC.i122
  %8508 = add i64 %8507, 10
  store i64 %8508, i64* %PC.i122
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_414998, %struct.Memory** %MEMORY
  %loadMem_4149a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8510 = getelementptr inbounds %struct.GPR, %struct.GPR* %8509, i32 0, i32 33
  %8511 = getelementptr inbounds %struct.Reg, %struct.Reg* %8510, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %8511 to i64*
  %8512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8513 = getelementptr inbounds %struct.GPR, %struct.GPR* %8512, i32 0, i32 5
  %8514 = getelementptr inbounds %struct.Reg, %struct.Reg* %8513, i32 0, i32 0
  %RCX.i120 = bitcast %union.anon* %8514 to i64*
  %8515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8516 = getelementptr inbounds %struct.GPR, %struct.GPR* %8515, i32 0, i32 15
  %8517 = getelementptr inbounds %struct.Reg, %struct.Reg* %8516, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %8517 to i64*
  %8518 = load i64, i64* %RBP.i121
  %8519 = sub i64 %8518, 8
  %8520 = load i64, i64* %PC.i119
  %8521 = add i64 %8520, 3
  store i64 %8521, i64* %PC.i119
  %8522 = inttoptr i64 %8519 to i32*
  %8523 = load i32, i32* %8522
  %8524 = zext i32 %8523 to i64
  store i64 %8524, i64* %RCX.i120, align 8
  store %struct.Memory* %loadMem_4149a2, %struct.Memory** %MEMORY
  %loadMem_4149a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8526 = getelementptr inbounds %struct.GPR, %struct.GPR* %8525, i32 0, i32 33
  %8527 = getelementptr inbounds %struct.Reg, %struct.Reg* %8526, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %8527 to i64*
  %8528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8529 = getelementptr inbounds %struct.GPR, %struct.GPR* %8528, i32 0, i32 5
  %8530 = getelementptr inbounds %struct.Reg, %struct.Reg* %8529, i32 0, i32 0
  %RCX.i118 = bitcast %union.anon* %8530 to i64*
  %8531 = load i64, i64* %RCX.i118
  %8532 = load i64, i64* %PC.i117
  %8533 = add i64 %8532, 3
  store i64 %8533, i64* %PC.i117
  %8534 = trunc i64 %8531 to i32
  %8535 = add i32 1, %8534
  %8536 = zext i32 %8535 to i64
  store i64 %8536, i64* %RCX.i118, align 8
  %8537 = icmp ult i32 %8535, %8534
  %8538 = icmp ult i32 %8535, 1
  %8539 = or i1 %8537, %8538
  %8540 = zext i1 %8539 to i8
  %8541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8540, i8* %8541, align 1
  %8542 = and i32 %8535, 255
  %8543 = call i32 @llvm.ctpop.i32(i32 %8542)
  %8544 = trunc i32 %8543 to i8
  %8545 = and i8 %8544, 1
  %8546 = xor i8 %8545, 1
  %8547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8546, i8* %8547, align 1
  %8548 = xor i64 1, %8531
  %8549 = trunc i64 %8548 to i32
  %8550 = xor i32 %8549, %8535
  %8551 = lshr i32 %8550, 4
  %8552 = trunc i32 %8551 to i8
  %8553 = and i8 %8552, 1
  %8554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8553, i8* %8554, align 1
  %8555 = icmp eq i32 %8535, 0
  %8556 = zext i1 %8555 to i8
  %8557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8556, i8* %8557, align 1
  %8558 = lshr i32 %8535, 31
  %8559 = trunc i32 %8558 to i8
  %8560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8559, i8* %8560, align 1
  %8561 = lshr i32 %8534, 31
  %8562 = xor i32 %8558, %8561
  %8563 = add i32 %8562, %8558
  %8564 = icmp eq i32 %8563, 2
  %8565 = zext i1 %8564 to i8
  %8566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8565, i8* %8566, align 1
  store %struct.Memory* %loadMem_4149a5, %struct.Memory** %MEMORY
  %loadMem_4149a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8568 = getelementptr inbounds %struct.GPR, %struct.GPR* %8567, i32 0, i32 33
  %8569 = getelementptr inbounds %struct.Reg, %struct.Reg* %8568, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %8569 to i64*
  %8570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8571 = getelementptr inbounds %struct.GPR, %struct.GPR* %8570, i32 0, i32 5
  %8572 = getelementptr inbounds %struct.Reg, %struct.Reg* %8571, i32 0, i32 0
  %ECX.i115 = bitcast %union.anon* %8572 to i32*
  %8573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8574 = getelementptr inbounds %struct.GPR, %struct.GPR* %8573, i32 0, i32 7
  %8575 = getelementptr inbounds %struct.Reg, %struct.Reg* %8574, i32 0, i32 0
  %RDX.i116 = bitcast %union.anon* %8575 to i64*
  %8576 = load i32, i32* %ECX.i115
  %8577 = zext i32 %8576 to i64
  %8578 = load i64, i64* %PC.i114
  %8579 = add i64 %8578, 3
  store i64 %8579, i64* %PC.i114
  %8580 = shl i64 %8577, 32
  %8581 = ashr exact i64 %8580, 32
  store i64 %8581, i64* %RDX.i116, align 8
  store %struct.Memory* %loadMem_4149a8, %struct.Memory** %MEMORY
  %loadMem_4149ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %8582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8583 = getelementptr inbounds %struct.GPR, %struct.GPR* %8582, i32 0, i32 33
  %8584 = getelementptr inbounds %struct.Reg, %struct.Reg* %8583, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %8584 to i64*
  %8585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8586 = getelementptr inbounds %struct.GPR, %struct.GPR* %8585, i32 0, i32 7
  %8587 = getelementptr inbounds %struct.Reg, %struct.Reg* %8586, i32 0, i32 0
  %RDX.i113 = bitcast %union.anon* %8587 to i64*
  %8588 = load i64, i64* %RDX.i113
  %8589 = mul i64 %8588, 4
  %8590 = add i64 %8589, 11187184
  %8591 = load i64, i64* %PC.i112
  %8592 = add i64 %8591, 8
  store i64 %8592, i64* %PC.i112
  %8593 = inttoptr i64 %8590 to i32*
  %8594 = load i32, i32* %8593
  %8595 = sext i32 %8594 to i64
  store i64 %8595, i64* %RDX.i113, align 8
  store %struct.Memory* %loadMem_4149ab, %struct.Memory** %MEMORY
  %loadMem_4149b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8597 = getelementptr inbounds %struct.GPR, %struct.GPR* %8596, i32 0, i32 33
  %8598 = getelementptr inbounds %struct.Reg, %struct.Reg* %8597, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %8598 to i64*
  %8599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8600 = getelementptr inbounds %struct.GPR, %struct.GPR* %8599, i32 0, i32 7
  %8601 = getelementptr inbounds %struct.Reg, %struct.Reg* %8600, i32 0, i32 0
  %RDX.i111 = bitcast %union.anon* %8601 to i64*
  %8602 = load i64, i64* %RDX.i111
  %8603 = load i64, i64* %PC.i110
  %8604 = add i64 %8603, 7
  store i64 %8604, i64* %PC.i110
  %8605 = sext i64 %8602 to i128
  %8606 = and i128 %8605, -18446744073709551616
  %8607 = zext i64 %8602 to i128
  %8608 = or i128 %8606, %8607
  %8609 = mul i128 744, %8608
  %8610 = trunc i128 %8609 to i64
  store i64 %8610, i64* %RDX.i111, align 8
  %8611 = sext i64 %8610 to i128
  %8612 = icmp ne i128 %8611, %8609
  %8613 = zext i1 %8612 to i8
  %8614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8613, i8* %8614, align 1
  %8615 = trunc i128 %8609 to i32
  %8616 = and i32 %8615, 255
  %8617 = call i32 @llvm.ctpop.i32(i32 %8616)
  %8618 = trunc i32 %8617 to i8
  %8619 = and i8 %8618, 1
  %8620 = xor i8 %8619, 1
  %8621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8620, i8* %8621, align 1
  %8622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8622, align 1
  %8623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8623, align 1
  %8624 = lshr i64 %8610, 63
  %8625 = trunc i64 %8624 to i8
  %8626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8625, i8* %8626, align 1
  %8627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8613, i8* %8627, align 1
  store %struct.Memory* %loadMem_4149b3, %struct.Memory** %MEMORY
  %loadMem_4149ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %8628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8629 = getelementptr inbounds %struct.GPR, %struct.GPR* %8628, i32 0, i32 33
  %8630 = getelementptr inbounds %struct.Reg, %struct.Reg* %8629, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %8630 to i64*
  %8631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8632 = getelementptr inbounds %struct.GPR, %struct.GPR* %8631, i32 0, i32 1
  %8633 = getelementptr inbounds %struct.Reg, %struct.Reg* %8632, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %8633 to i64*
  %8634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8635 = getelementptr inbounds %struct.GPR, %struct.GPR* %8634, i32 0, i32 7
  %8636 = getelementptr inbounds %struct.Reg, %struct.Reg* %8635, i32 0, i32 0
  %RDX.i109 = bitcast %union.anon* %8636 to i64*
  %8637 = load i64, i64* %RAX.i108
  %8638 = load i64, i64* %RDX.i109
  %8639 = load i64, i64* %PC.i107
  %8640 = add i64 %8639, 3
  store i64 %8640, i64* %PC.i107
  %8641 = add i64 %8638, %8637
  store i64 %8641, i64* %RAX.i108, align 8
  %8642 = icmp ult i64 %8641, %8637
  %8643 = icmp ult i64 %8641, %8638
  %8644 = or i1 %8642, %8643
  %8645 = zext i1 %8644 to i8
  %8646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8645, i8* %8646, align 1
  %8647 = trunc i64 %8641 to i32
  %8648 = and i32 %8647, 255
  %8649 = call i32 @llvm.ctpop.i32(i32 %8648)
  %8650 = trunc i32 %8649 to i8
  %8651 = and i8 %8650, 1
  %8652 = xor i8 %8651, 1
  %8653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8652, i8* %8653, align 1
  %8654 = xor i64 %8638, %8637
  %8655 = xor i64 %8654, %8641
  %8656 = lshr i64 %8655, 4
  %8657 = trunc i64 %8656 to i8
  %8658 = and i8 %8657, 1
  %8659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8658, i8* %8659, align 1
  %8660 = icmp eq i64 %8641, 0
  %8661 = zext i1 %8660 to i8
  %8662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8661, i8* %8662, align 1
  %8663 = lshr i64 %8641, 63
  %8664 = trunc i64 %8663 to i8
  %8665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8664, i8* %8665, align 1
  %8666 = lshr i64 %8637, 63
  %8667 = lshr i64 %8638, 63
  %8668 = xor i64 %8663, %8666
  %8669 = xor i64 %8663, %8667
  %8670 = add i64 %8668, %8669
  %8671 = icmp eq i64 %8670, 2
  %8672 = zext i1 %8671 to i8
  %8673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8672, i8* %8673, align 1
  store %struct.Memory* %loadMem_4149ba, %struct.Memory** %MEMORY
  %loadMem_4149bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8675 = getelementptr inbounds %struct.GPR, %struct.GPR* %8674, i32 0, i32 33
  %8676 = getelementptr inbounds %struct.Reg, %struct.Reg* %8675, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %8676 to i64*
  %8677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8678 = getelementptr inbounds %struct.GPR, %struct.GPR* %8677, i32 0, i32 1
  %8679 = getelementptr inbounds %struct.Reg, %struct.Reg* %8678, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %8679 to i64*
  %8680 = load i64, i64* %RAX.i106
  %8681 = add i64 %8680, 12
  %8682 = load i64, i64* %PC.i105
  %8683 = add i64 %8682, 4
  store i64 %8683, i64* %PC.i105
  %8684 = inttoptr i64 %8681 to i32*
  %8685 = load i32, i32* %8684
  %8686 = sub i32 %8685, 1
  %8687 = icmp ult i32 %8685, 1
  %8688 = zext i1 %8687 to i8
  %8689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8688, i8* %8689, align 1
  %8690 = and i32 %8686, 255
  %8691 = call i32 @llvm.ctpop.i32(i32 %8690)
  %8692 = trunc i32 %8691 to i8
  %8693 = and i8 %8692, 1
  %8694 = xor i8 %8693, 1
  %8695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8694, i8* %8695, align 1
  %8696 = xor i32 %8685, 1
  %8697 = xor i32 %8696, %8686
  %8698 = lshr i32 %8697, 4
  %8699 = trunc i32 %8698 to i8
  %8700 = and i8 %8699, 1
  %8701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8700, i8* %8701, align 1
  %8702 = icmp eq i32 %8686, 0
  %8703 = zext i1 %8702 to i8
  %8704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8703, i8* %8704, align 1
  %8705 = lshr i32 %8686, 31
  %8706 = trunc i32 %8705 to i8
  %8707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8706, i8* %8707, align 1
  %8708 = lshr i32 %8685, 31
  %8709 = xor i32 %8705, %8708
  %8710 = add i32 %8709, %8708
  %8711 = icmp eq i32 %8710, 2
  %8712 = zext i1 %8711 to i8
  %8713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8712, i8* %8713, align 1
  store %struct.Memory* %loadMem_4149bd, %struct.Memory** %MEMORY
  %loadMem_4149c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8715 = getelementptr inbounds %struct.GPR, %struct.GPR* %8714, i32 0, i32 33
  %8716 = getelementptr inbounds %struct.Reg, %struct.Reg* %8715, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %8716 to i64*
  %8717 = load i64, i64* %PC.i104
  %8718 = add i64 %8717, 71
  %8719 = load i64, i64* %PC.i104
  %8720 = add i64 %8719, 6
  %8721 = load i64, i64* %PC.i104
  %8722 = add i64 %8721, 6
  store i64 %8722, i64* %PC.i104
  %8723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8724 = load i8, i8* %8723, align 1
  %8725 = icmp eq i8 %8724, 0
  %8726 = zext i1 %8725 to i8
  store i8 %8726, i8* %BRANCH_TAKEN, align 1
  %8727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8728 = select i1 %8725, i64 %8718, i64 %8720
  store i64 %8728, i64* %8727, align 8
  store %struct.Memory* %loadMem_4149c1, %struct.Memory** %MEMORY
  %loadBr_4149c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4149c1 = icmp eq i8 %loadBr_4149c1, 1
  br i1 %cmpBr_4149c1, label %block_.L_414a08, label %block_4149c7

block_4149c7:                                     ; preds = %block_414998
  %loadMem_4149c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8730 = getelementptr inbounds %struct.GPR, %struct.GPR* %8729, i32 0, i32 33
  %8731 = getelementptr inbounds %struct.Reg, %struct.Reg* %8730, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %8731 to i64*
  %8732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8733 = getelementptr inbounds %struct.GPR, %struct.GPR* %8732, i32 0, i32 1
  %8734 = getelementptr inbounds %struct.Reg, %struct.Reg* %8733, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %8734 to i64*
  %8735 = load i64, i64* %PC.i102
  %8736 = add i64 %8735, 10
  store i64 %8736, i64* %PC.i102
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i103, align 8
  store %struct.Memory* %loadMem_4149c7, %struct.Memory** %MEMORY
  %loadMem_4149d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8738 = getelementptr inbounds %struct.GPR, %struct.GPR* %8737, i32 0, i32 33
  %8739 = getelementptr inbounds %struct.Reg, %struct.Reg* %8738, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %8739 to i64*
  %8740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8741 = getelementptr inbounds %struct.GPR, %struct.GPR* %8740, i32 0, i32 5
  %8742 = getelementptr inbounds %struct.Reg, %struct.Reg* %8741, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %8742 to i64*
  %8743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8744 = getelementptr inbounds %struct.GPR, %struct.GPR* %8743, i32 0, i32 15
  %8745 = getelementptr inbounds %struct.Reg, %struct.Reg* %8744, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %8745 to i64*
  %8746 = load i64, i64* %RBP.i101
  %8747 = sub i64 %8746, 8
  %8748 = load i64, i64* %PC.i99
  %8749 = add i64 %8748, 3
  store i64 %8749, i64* %PC.i99
  %8750 = inttoptr i64 %8747 to i32*
  %8751 = load i32, i32* %8750
  %8752 = zext i32 %8751 to i64
  store i64 %8752, i64* %RCX.i100, align 8
  store %struct.Memory* %loadMem_4149d1, %struct.Memory** %MEMORY
  %loadMem_4149d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8754 = getelementptr inbounds %struct.GPR, %struct.GPR* %8753, i32 0, i32 33
  %8755 = getelementptr inbounds %struct.Reg, %struct.Reg* %8754, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %8755 to i64*
  %8756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8757 = getelementptr inbounds %struct.GPR, %struct.GPR* %8756, i32 0, i32 5
  %8758 = getelementptr inbounds %struct.Reg, %struct.Reg* %8757, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %8758 to i64*
  %8759 = load i64, i64* %RCX.i98
  %8760 = load i64, i64* %PC.i97
  %8761 = add i64 %8760, 3
  store i64 %8761, i64* %PC.i97
  %8762 = trunc i64 %8759 to i32
  %8763 = add i32 1, %8762
  %8764 = zext i32 %8763 to i64
  store i64 %8764, i64* %RCX.i98, align 8
  %8765 = icmp ult i32 %8763, %8762
  %8766 = icmp ult i32 %8763, 1
  %8767 = or i1 %8765, %8766
  %8768 = zext i1 %8767 to i8
  %8769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8768, i8* %8769, align 1
  %8770 = and i32 %8763, 255
  %8771 = call i32 @llvm.ctpop.i32(i32 %8770)
  %8772 = trunc i32 %8771 to i8
  %8773 = and i8 %8772, 1
  %8774 = xor i8 %8773, 1
  %8775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8774, i8* %8775, align 1
  %8776 = xor i64 1, %8759
  %8777 = trunc i64 %8776 to i32
  %8778 = xor i32 %8777, %8763
  %8779 = lshr i32 %8778, 4
  %8780 = trunc i32 %8779 to i8
  %8781 = and i8 %8780, 1
  %8782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8781, i8* %8782, align 1
  %8783 = icmp eq i32 %8763, 0
  %8784 = zext i1 %8783 to i8
  %8785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8784, i8* %8785, align 1
  %8786 = lshr i32 %8763, 31
  %8787 = trunc i32 %8786 to i8
  %8788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8787, i8* %8788, align 1
  %8789 = lshr i32 %8762, 31
  %8790 = xor i32 %8786, %8789
  %8791 = add i32 %8790, %8786
  %8792 = icmp eq i32 %8791, 2
  %8793 = zext i1 %8792 to i8
  %8794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8793, i8* %8794, align 1
  store %struct.Memory* %loadMem_4149d4, %struct.Memory** %MEMORY
  %loadMem_4149d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8796 = getelementptr inbounds %struct.GPR, %struct.GPR* %8795, i32 0, i32 33
  %8797 = getelementptr inbounds %struct.Reg, %struct.Reg* %8796, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %8797 to i64*
  %8798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8799 = getelementptr inbounds %struct.GPR, %struct.GPR* %8798, i32 0, i32 5
  %8800 = getelementptr inbounds %struct.Reg, %struct.Reg* %8799, i32 0, i32 0
  %ECX.i95 = bitcast %union.anon* %8800 to i32*
  %8801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8802 = getelementptr inbounds %struct.GPR, %struct.GPR* %8801, i32 0, i32 7
  %8803 = getelementptr inbounds %struct.Reg, %struct.Reg* %8802, i32 0, i32 0
  %RDX.i96 = bitcast %union.anon* %8803 to i64*
  %8804 = load i32, i32* %ECX.i95
  %8805 = zext i32 %8804 to i64
  %8806 = load i64, i64* %PC.i94
  %8807 = add i64 %8806, 3
  store i64 %8807, i64* %PC.i94
  %8808 = shl i64 %8805, 32
  %8809 = ashr exact i64 %8808, 32
  store i64 %8809, i64* %RDX.i96, align 8
  store %struct.Memory* %loadMem_4149d7, %struct.Memory** %MEMORY
  %loadMem_4149da = load %struct.Memory*, %struct.Memory** %MEMORY
  %8810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8811 = getelementptr inbounds %struct.GPR, %struct.GPR* %8810, i32 0, i32 33
  %8812 = getelementptr inbounds %struct.Reg, %struct.Reg* %8811, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %8812 to i64*
  %8813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8814 = getelementptr inbounds %struct.GPR, %struct.GPR* %8813, i32 0, i32 7
  %8815 = getelementptr inbounds %struct.Reg, %struct.Reg* %8814, i32 0, i32 0
  %RDX.i93 = bitcast %union.anon* %8815 to i64*
  %8816 = load i64, i64* %RDX.i93
  %8817 = mul i64 %8816, 4
  %8818 = add i64 %8817, 11187184
  %8819 = load i64, i64* %PC.i92
  %8820 = add i64 %8819, 8
  store i64 %8820, i64* %PC.i92
  %8821 = inttoptr i64 %8818 to i32*
  %8822 = load i32, i32* %8821
  %8823 = sext i32 %8822 to i64
  store i64 %8823, i64* %RDX.i93, align 8
  store %struct.Memory* %loadMem_4149da, %struct.Memory** %MEMORY
  %loadMem_4149e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8825 = getelementptr inbounds %struct.GPR, %struct.GPR* %8824, i32 0, i32 33
  %8826 = getelementptr inbounds %struct.Reg, %struct.Reg* %8825, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %8826 to i64*
  %8827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8828 = getelementptr inbounds %struct.GPR, %struct.GPR* %8827, i32 0, i32 7
  %8829 = getelementptr inbounds %struct.Reg, %struct.Reg* %8828, i32 0, i32 0
  %RDX.i91 = bitcast %union.anon* %8829 to i64*
  %8830 = load i64, i64* %RDX.i91
  %8831 = load i64, i64* %PC.i90
  %8832 = add i64 %8831, 7
  store i64 %8832, i64* %PC.i90
  %8833 = sext i64 %8830 to i128
  %8834 = and i128 %8833, -18446744073709551616
  %8835 = zext i64 %8830 to i128
  %8836 = or i128 %8834, %8835
  %8837 = mul i128 744, %8836
  %8838 = trunc i128 %8837 to i64
  store i64 %8838, i64* %RDX.i91, align 8
  %8839 = sext i64 %8838 to i128
  %8840 = icmp ne i128 %8839, %8837
  %8841 = zext i1 %8840 to i8
  %8842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8841, i8* %8842, align 1
  %8843 = trunc i128 %8837 to i32
  %8844 = and i32 %8843, 255
  %8845 = call i32 @llvm.ctpop.i32(i32 %8844)
  %8846 = trunc i32 %8845 to i8
  %8847 = and i8 %8846, 1
  %8848 = xor i8 %8847, 1
  %8849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8848, i8* %8849, align 1
  %8850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8850, align 1
  %8851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8851, align 1
  %8852 = lshr i64 %8838, 63
  %8853 = trunc i64 %8852 to i8
  %8854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8853, i8* %8854, align 1
  %8855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8841, i8* %8855, align 1
  store %struct.Memory* %loadMem_4149e2, %struct.Memory** %MEMORY
  %loadMem_4149e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8857 = getelementptr inbounds %struct.GPR, %struct.GPR* %8856, i32 0, i32 33
  %8858 = getelementptr inbounds %struct.Reg, %struct.Reg* %8857, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %8858 to i64*
  %8859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8860 = getelementptr inbounds %struct.GPR, %struct.GPR* %8859, i32 0, i32 1
  %8861 = getelementptr inbounds %struct.Reg, %struct.Reg* %8860, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %8861 to i64*
  %8862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8863 = getelementptr inbounds %struct.GPR, %struct.GPR* %8862, i32 0, i32 7
  %8864 = getelementptr inbounds %struct.Reg, %struct.Reg* %8863, i32 0, i32 0
  %RDX.i89 = bitcast %union.anon* %8864 to i64*
  %8865 = load i64, i64* %RAX.i88
  %8866 = load i64, i64* %RDX.i89
  %8867 = load i64, i64* %PC.i87
  %8868 = add i64 %8867, 3
  store i64 %8868, i64* %PC.i87
  %8869 = add i64 %8866, %8865
  store i64 %8869, i64* %RAX.i88, align 8
  %8870 = icmp ult i64 %8869, %8865
  %8871 = icmp ult i64 %8869, %8866
  %8872 = or i1 %8870, %8871
  %8873 = zext i1 %8872 to i8
  %8874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8873, i8* %8874, align 1
  %8875 = trunc i64 %8869 to i32
  %8876 = and i32 %8875, 255
  %8877 = call i32 @llvm.ctpop.i32(i32 %8876)
  %8878 = trunc i32 %8877 to i8
  %8879 = and i8 %8878, 1
  %8880 = xor i8 %8879, 1
  %8881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8880, i8* %8881, align 1
  %8882 = xor i64 %8866, %8865
  %8883 = xor i64 %8882, %8869
  %8884 = lshr i64 %8883, 4
  %8885 = trunc i64 %8884 to i8
  %8886 = and i8 %8885, 1
  %8887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8886, i8* %8887, align 1
  %8888 = icmp eq i64 %8869, 0
  %8889 = zext i1 %8888 to i8
  %8890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8889, i8* %8890, align 1
  %8891 = lshr i64 %8869, 63
  %8892 = trunc i64 %8891 to i8
  %8893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8892, i8* %8893, align 1
  %8894 = lshr i64 %8865, 63
  %8895 = lshr i64 %8866, 63
  %8896 = xor i64 %8891, %8894
  %8897 = xor i64 %8891, %8895
  %8898 = add i64 %8896, %8897
  %8899 = icmp eq i64 %8898, 2
  %8900 = zext i1 %8899 to i8
  %8901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8900, i8* %8901, align 1
  store %struct.Memory* %loadMem_4149e9, %struct.Memory** %MEMORY
  %loadMem_4149ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %8902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8903 = getelementptr inbounds %struct.GPR, %struct.GPR* %8902, i32 0, i32 33
  %8904 = getelementptr inbounds %struct.Reg, %struct.Reg* %8903, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %8904 to i64*
  %8905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8906 = getelementptr inbounds %struct.GPR, %struct.GPR* %8905, i32 0, i32 1
  %8907 = getelementptr inbounds %struct.Reg, %struct.Reg* %8906, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %8907 to i64*
  %8908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8909 = getelementptr inbounds %struct.GPR, %struct.GPR* %8908, i32 0, i32 5
  %8910 = getelementptr inbounds %struct.Reg, %struct.Reg* %8909, i32 0, i32 0
  %RCX.i86 = bitcast %union.anon* %8910 to i64*
  %8911 = load i64, i64* %RAX.i85
  %8912 = add i64 %8911, 740
  %8913 = load i64, i64* %PC.i84
  %8914 = add i64 %8913, 6
  store i64 %8914, i64* %PC.i84
  %8915 = inttoptr i64 %8912 to i32*
  %8916 = load i32, i32* %8915
  %8917 = zext i32 %8916 to i64
  store i64 %8917, i64* %RCX.i86, align 8
  store %struct.Memory* %loadMem_4149ec, %struct.Memory** %MEMORY
  %loadMem_4149f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8919 = getelementptr inbounds %struct.GPR, %struct.GPR* %8918, i32 0, i32 33
  %8920 = getelementptr inbounds %struct.Reg, %struct.Reg* %8919, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %8920 to i64*
  %8921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8922 = getelementptr inbounds %struct.GPR, %struct.GPR* %8921, i32 0, i32 5
  %8923 = getelementptr inbounds %struct.Reg, %struct.Reg* %8922, i32 0, i32 0
  %ECX.i83 = bitcast %union.anon* %8923 to i32*
  %8924 = load i32, i32* %ECX.i83
  %8925 = zext i32 %8924 to i64
  %8926 = load i64, i64* %PC.i82
  %8927 = add i64 %8926, 7
  store i64 %8927, i64* %PC.i82
  %8928 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %8929 = sub i32 %8924, %8928
  %8930 = icmp ult i32 %8924, %8928
  %8931 = zext i1 %8930 to i8
  %8932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8931, i8* %8932, align 1
  %8933 = and i32 %8929, 255
  %8934 = call i32 @llvm.ctpop.i32(i32 %8933)
  %8935 = trunc i32 %8934 to i8
  %8936 = and i8 %8935, 1
  %8937 = xor i8 %8936, 1
  %8938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8937, i8* %8938, align 1
  %8939 = xor i32 %8928, %8924
  %8940 = xor i32 %8939, %8929
  %8941 = lshr i32 %8940, 4
  %8942 = trunc i32 %8941 to i8
  %8943 = and i8 %8942, 1
  %8944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8943, i8* %8944, align 1
  %8945 = icmp eq i32 %8929, 0
  %8946 = zext i1 %8945 to i8
  %8947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8946, i8* %8947, align 1
  %8948 = lshr i32 %8929, 31
  %8949 = trunc i32 %8948 to i8
  %8950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8949, i8* %8950, align 1
  %8951 = lshr i32 %8924, 31
  %8952 = lshr i32 %8928, 31
  %8953 = xor i32 %8952, %8951
  %8954 = xor i32 %8948, %8951
  %8955 = add i32 %8954, %8953
  %8956 = icmp eq i32 %8955, 2
  %8957 = zext i1 %8956 to i8
  %8958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8957, i8* %8958, align 1
  store %struct.Memory* %loadMem_4149f2, %struct.Memory** %MEMORY
  %loadMem_4149f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8960 = getelementptr inbounds %struct.GPR, %struct.GPR* %8959, i32 0, i32 33
  %8961 = getelementptr inbounds %struct.Reg, %struct.Reg* %8960, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %8961 to i64*
  %8962 = load i64, i64* %PC.i81
  %8963 = add i64 %8962, 15
  %8964 = load i64, i64* %PC.i81
  %8965 = add i64 %8964, 6
  %8966 = load i64, i64* %PC.i81
  %8967 = add i64 %8966, 6
  store i64 %8967, i64* %PC.i81
  %8968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8969 = load i8, i8* %8968, align 1
  store i8 %8969, i8* %BRANCH_TAKEN, align 1
  %8970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8971 = icmp ne i8 %8969, 0
  %8972 = select i1 %8971, i64 %8963, i64 %8965
  store i64 %8972, i64* %8970, align 8
  store %struct.Memory* %loadMem_4149f9, %struct.Memory** %MEMORY
  %loadBr_4149f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4149f9 = icmp eq i8 %loadBr_4149f9, 1
  br i1 %cmpBr_4149f9, label %block_.L_414a08, label %block_4149ff

block_4149ff:                                     ; preds = %block_4149c7
  %loadMem_4149ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %8973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8974 = getelementptr inbounds %struct.GPR, %struct.GPR* %8973, i32 0, i32 33
  %8975 = getelementptr inbounds %struct.Reg, %struct.Reg* %8974, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %8975 to i64*
  %8976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8977 = getelementptr inbounds %struct.GPR, %struct.GPR* %8976, i32 0, i32 1
  %8978 = getelementptr inbounds %struct.Reg, %struct.Reg* %8977, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %8978 to i64*
  %8979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8980 = getelementptr inbounds %struct.GPR, %struct.GPR* %8979, i32 0, i32 15
  %8981 = getelementptr inbounds %struct.Reg, %struct.Reg* %8980, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %8981 to i64*
  %8982 = load i64, i64* %RBP.i80
  %8983 = sub i64 %8982, 24
  %8984 = load i64, i64* %PC.i78
  %8985 = add i64 %8984, 3
  store i64 %8985, i64* %PC.i78
  %8986 = inttoptr i64 %8983 to i32*
  %8987 = load i32, i32* %8986
  %8988 = zext i32 %8987 to i64
  store i64 %8988, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_4149ff, %struct.Memory** %MEMORY
  %loadMem_414a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8990 = getelementptr inbounds %struct.GPR, %struct.GPR* %8989, i32 0, i32 33
  %8991 = getelementptr inbounds %struct.Reg, %struct.Reg* %8990, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %8991 to i64*
  %8992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8993 = getelementptr inbounds %struct.GPR, %struct.GPR* %8992, i32 0, i32 1
  %8994 = getelementptr inbounds %struct.Reg, %struct.Reg* %8993, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %8994 to i64*
  %8995 = load i64, i64* %RAX.i77
  %8996 = load i64, i64* %PC.i76
  %8997 = add i64 %8996, 3
  store i64 %8997, i64* %PC.i76
  %8998 = trunc i64 %8995 to i32
  %8999 = add i32 1, %8998
  %9000 = zext i32 %8999 to i64
  store i64 %9000, i64* %RAX.i77, align 8
  %9001 = icmp ult i32 %8999, %8998
  %9002 = icmp ult i32 %8999, 1
  %9003 = or i1 %9001, %9002
  %9004 = zext i1 %9003 to i8
  %9005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9004, i8* %9005, align 1
  %9006 = and i32 %8999, 255
  %9007 = call i32 @llvm.ctpop.i32(i32 %9006)
  %9008 = trunc i32 %9007 to i8
  %9009 = and i8 %9008, 1
  %9010 = xor i8 %9009, 1
  %9011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9010, i8* %9011, align 1
  %9012 = xor i64 1, %8995
  %9013 = trunc i64 %9012 to i32
  %9014 = xor i32 %9013, %8999
  %9015 = lshr i32 %9014, 4
  %9016 = trunc i32 %9015 to i8
  %9017 = and i8 %9016, 1
  %9018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9017, i8* %9018, align 1
  %9019 = icmp eq i32 %8999, 0
  %9020 = zext i1 %9019 to i8
  %9021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9020, i8* %9021, align 1
  %9022 = lshr i32 %8999, 31
  %9023 = trunc i32 %9022 to i8
  %9024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9023, i8* %9024, align 1
  %9025 = lshr i32 %8998, 31
  %9026 = xor i32 %9022, %9025
  %9027 = add i32 %9026, %9022
  %9028 = icmp eq i32 %9027, 2
  %9029 = zext i1 %9028 to i8
  %9030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9029, i8* %9030, align 1
  store %struct.Memory* %loadMem_414a02, %struct.Memory** %MEMORY
  %loadMem_414a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9032 = getelementptr inbounds %struct.GPR, %struct.GPR* %9031, i32 0, i32 33
  %9033 = getelementptr inbounds %struct.Reg, %struct.Reg* %9032, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %9033 to i64*
  %9034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9035 = getelementptr inbounds %struct.GPR, %struct.GPR* %9034, i32 0, i32 1
  %9036 = getelementptr inbounds %struct.Reg, %struct.Reg* %9035, i32 0, i32 0
  %EAX.i74 = bitcast %union.anon* %9036 to i32*
  %9037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9038 = getelementptr inbounds %struct.GPR, %struct.GPR* %9037, i32 0, i32 15
  %9039 = getelementptr inbounds %struct.Reg, %struct.Reg* %9038, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %9039 to i64*
  %9040 = load i64, i64* %RBP.i75
  %9041 = sub i64 %9040, 24
  %9042 = load i32, i32* %EAX.i74
  %9043 = zext i32 %9042 to i64
  %9044 = load i64, i64* %PC.i73
  %9045 = add i64 %9044, 3
  store i64 %9045, i64* %PC.i73
  %9046 = inttoptr i64 %9041 to i32*
  store i32 %9042, i32* %9046
  store %struct.Memory* %loadMem_414a05, %struct.Memory** %MEMORY
  br label %block_.L_414a08

block_.L_414a08:                                  ; preds = %block_4149ff, %block_4149c7, %block_414998, %block_.L_41497e
  %loadMem_414a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9048 = getelementptr inbounds %struct.GPR, %struct.GPR* %9047, i32 0, i32 33
  %9049 = getelementptr inbounds %struct.Reg, %struct.Reg* %9048, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %9049 to i64*
  %9050 = load i64, i64* %PC.i72
  %9051 = add i64 %9050, 5
  %9052 = load i64, i64* %PC.i72
  %9053 = add i64 %9052, 5
  store i64 %9053, i64* %PC.i72
  %9054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9051, i64* %9054, align 8
  store %struct.Memory* %loadMem_414a08, %struct.Memory** %MEMORY
  br label %block_.L_414a0d

block_.L_414a0d:                                  ; preds = %block_.L_414a08, %block_.L_414979
  %loadMem_414a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %9055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9056 = getelementptr inbounds %struct.GPR, %struct.GPR* %9055, i32 0, i32 33
  %9057 = getelementptr inbounds %struct.Reg, %struct.Reg* %9056, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %9057 to i64*
  %9058 = load i64, i64* %PC.i71
  %9059 = add i64 %9058, 5
  %9060 = load i64, i64* %PC.i71
  %9061 = add i64 %9060, 5
  store i64 %9061, i64* %PC.i71
  %9062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9059, i64* %9062, align 8
  store %struct.Memory* %loadMem_414a0d, %struct.Memory** %MEMORY
  br label %block_.L_414a12

block_.L_414a12:                                  ; preds = %block_.L_414a0d, %block_4148de
  %loadMem_414a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9064 = getelementptr inbounds %struct.GPR, %struct.GPR* %9063, i32 0, i32 33
  %9065 = getelementptr inbounds %struct.Reg, %struct.Reg* %9064, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %9065 to i64*
  %9066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9067 = getelementptr inbounds %struct.GPR, %struct.GPR* %9066, i32 0, i32 1
  %9068 = getelementptr inbounds %struct.Reg, %struct.Reg* %9067, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %9068 to i64*
  %9069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9070 = getelementptr inbounds %struct.GPR, %struct.GPR* %9069, i32 0, i32 15
  %9071 = getelementptr inbounds %struct.Reg, %struct.Reg* %9070, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %9071 to i64*
  %9072 = load i64, i64* %RBP.i70
  %9073 = sub i64 %9072, 20
  %9074 = load i64, i64* %PC.i68
  %9075 = add i64 %9074, 3
  store i64 %9075, i64* %PC.i68
  %9076 = inttoptr i64 %9073 to i32*
  %9077 = load i32, i32* %9076
  %9078 = zext i32 %9077 to i64
  store i64 %9078, i64* %RAX.i69, align 8
  store %struct.Memory* %loadMem_414a12, %struct.Memory** %MEMORY
  %loadMem_414a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9080 = getelementptr inbounds %struct.GPR, %struct.GPR* %9079, i32 0, i32 33
  %9081 = getelementptr inbounds %struct.Reg, %struct.Reg* %9080, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %9081 to i64*
  %9082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9083 = getelementptr inbounds %struct.GPR, %struct.GPR* %9082, i32 0, i32 1
  %9084 = getelementptr inbounds %struct.Reg, %struct.Reg* %9083, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %9084 to i64*
  %9085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9086 = getelementptr inbounds %struct.GPR, %struct.GPR* %9085, i32 0, i32 15
  %9087 = getelementptr inbounds %struct.Reg, %struct.Reg* %9086, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %9087 to i64*
  %9088 = load i64, i64* %RAX.i66
  %9089 = load i64, i64* %RBP.i67
  %9090 = sub i64 %9089, 24
  %9091 = load i64, i64* %PC.i65
  %9092 = add i64 %9091, 3
  store i64 %9092, i64* %PC.i65
  %9093 = trunc i64 %9088 to i32
  %9094 = inttoptr i64 %9090 to i32*
  %9095 = load i32, i32* %9094
  %9096 = add i32 %9095, %9093
  %9097 = zext i32 %9096 to i64
  store i64 %9097, i64* %RAX.i66, align 8
  %9098 = icmp ult i32 %9096, %9093
  %9099 = icmp ult i32 %9096, %9095
  %9100 = or i1 %9098, %9099
  %9101 = zext i1 %9100 to i8
  %9102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9101, i8* %9102, align 1
  %9103 = and i32 %9096, 255
  %9104 = call i32 @llvm.ctpop.i32(i32 %9103)
  %9105 = trunc i32 %9104 to i8
  %9106 = and i8 %9105, 1
  %9107 = xor i8 %9106, 1
  %9108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9107, i8* %9108, align 1
  %9109 = xor i32 %9095, %9093
  %9110 = xor i32 %9109, %9096
  %9111 = lshr i32 %9110, 4
  %9112 = trunc i32 %9111 to i8
  %9113 = and i8 %9112, 1
  %9114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9113, i8* %9114, align 1
  %9115 = icmp eq i32 %9096, 0
  %9116 = zext i1 %9115 to i8
  %9117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9116, i8* %9117, align 1
  %9118 = lshr i32 %9096, 31
  %9119 = trunc i32 %9118 to i8
  %9120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9119, i8* %9120, align 1
  %9121 = lshr i32 %9093, 31
  %9122 = lshr i32 %9095, 31
  %9123 = xor i32 %9118, %9121
  %9124 = xor i32 %9118, %9122
  %9125 = add i32 %9123, %9124
  %9126 = icmp eq i32 %9125, 2
  %9127 = zext i1 %9126 to i8
  %9128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9127, i8* %9128, align 1
  store %struct.Memory* %loadMem_414a15, %struct.Memory** %MEMORY
  %loadMem_414a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9130 = getelementptr inbounds %struct.GPR, %struct.GPR* %9129, i32 0, i32 33
  %9131 = getelementptr inbounds %struct.Reg, %struct.Reg* %9130, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %9131 to i64*
  %9132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9133 = getelementptr inbounds %struct.GPR, %struct.GPR* %9132, i32 0, i32 1
  %9134 = getelementptr inbounds %struct.Reg, %struct.Reg* %9133, i32 0, i32 0
  %EAX.i64 = bitcast %union.anon* %9134 to i32*
  %9135 = load i32, i32* %EAX.i64
  %9136 = zext i32 %9135 to i64
  %9137 = load i64, i64* %PC.i63
  %9138 = add i64 %9137, 3
  store i64 %9138, i64* %PC.i63
  %9139 = sub i32 %9135, 2
  %9140 = icmp ult i32 %9135, 2
  %9141 = zext i1 %9140 to i8
  %9142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9141, i8* %9142, align 1
  %9143 = and i32 %9139, 255
  %9144 = call i32 @llvm.ctpop.i32(i32 %9143)
  %9145 = trunc i32 %9144 to i8
  %9146 = and i8 %9145, 1
  %9147 = xor i8 %9146, 1
  %9148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9147, i8* %9148, align 1
  %9149 = xor i64 2, %9136
  %9150 = trunc i64 %9149 to i32
  %9151 = xor i32 %9150, %9139
  %9152 = lshr i32 %9151, 4
  %9153 = trunc i32 %9152 to i8
  %9154 = and i8 %9153, 1
  %9155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9154, i8* %9155, align 1
  %9156 = icmp eq i32 %9139, 0
  %9157 = zext i1 %9156 to i8
  %9158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9157, i8* %9158, align 1
  %9159 = lshr i32 %9139, 31
  %9160 = trunc i32 %9159 to i8
  %9161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9160, i8* %9161, align 1
  %9162 = lshr i32 %9135, 31
  %9163 = xor i32 %9159, %9162
  %9164 = add i32 %9163, %9162
  %9165 = icmp eq i32 %9164, 2
  %9166 = zext i1 %9165 to i8
  %9167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9166, i8* %9167, align 1
  store %struct.Memory* %loadMem_414a18, %struct.Memory** %MEMORY
  %loadMem_414a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %9168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9169 = getelementptr inbounds %struct.GPR, %struct.GPR* %9168, i32 0, i32 33
  %9170 = getelementptr inbounds %struct.Reg, %struct.Reg* %9169, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %9170 to i64*
  %9171 = load i64, i64* %PC.i62
  %9172 = add i64 %9171, 18
  %9173 = load i64, i64* %PC.i62
  %9174 = add i64 %9173, 6
  %9175 = load i64, i64* %PC.i62
  %9176 = add i64 %9175, 6
  store i64 %9176, i64* %PC.i62
  %9177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %9178 = load i8, i8* %9177, align 1
  %9179 = icmp ne i8 %9178, 0
  %9180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %9181 = load i8, i8* %9180, align 1
  %9182 = icmp ne i8 %9181, 0
  %9183 = xor i1 %9179, %9182
  %9184 = zext i1 %9183 to i8
  store i8 %9184, i8* %BRANCH_TAKEN, align 1
  %9185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9186 = select i1 %9183, i64 %9172, i64 %9174
  store i64 %9186, i64* %9185, align 8
  store %struct.Memory* %loadMem_414a1b, %struct.Memory** %MEMORY
  %loadBr_414a1b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414a1b = icmp eq i8 %loadBr_414a1b, 1
  br i1 %cmpBr_414a1b, label %block_.L_414a2d, label %block_414a21

block_414a21:                                     ; preds = %block_.L_414a12
  %loadMem_414a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9188 = getelementptr inbounds %struct.GPR, %struct.GPR* %9187, i32 0, i32 33
  %9189 = getelementptr inbounds %struct.Reg, %struct.Reg* %9188, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %9189 to i64*
  %9190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9191 = getelementptr inbounds %struct.GPR, %struct.GPR* %9190, i32 0, i32 15
  %9192 = getelementptr inbounds %struct.Reg, %struct.Reg* %9191, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %9192 to i64*
  %9193 = load i64, i64* %RBP.i61
  %9194 = sub i64 %9193, 4
  %9195 = load i64, i64* %PC.i60
  %9196 = add i64 %9195, 7
  store i64 %9196, i64* %PC.i60
  %9197 = inttoptr i64 %9194 to i32*
  store i32 0, i32* %9197
  store %struct.Memory* %loadMem_414a21, %struct.Memory** %MEMORY
  %loadMem_414a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9199 = getelementptr inbounds %struct.GPR, %struct.GPR* %9198, i32 0, i32 33
  %9200 = getelementptr inbounds %struct.Reg, %struct.Reg* %9199, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %9200 to i64*
  %9201 = load i64, i64* %PC.i59
  %9202 = add i64 %9201, 116
  %9203 = load i64, i64* %PC.i59
  %9204 = add i64 %9203, 5
  store i64 %9204, i64* %PC.i59
  %9205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9202, i64* %9205, align 8
  store %struct.Memory* %loadMem_414a28, %struct.Memory** %MEMORY
  br label %block_.L_414a9c

block_.L_414a2d:                                  ; preds = %block_.L_414a12
  %loadMem_414a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %9206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9207 = getelementptr inbounds %struct.GPR, %struct.GPR* %9206, i32 0, i32 33
  %9208 = getelementptr inbounds %struct.Reg, %struct.Reg* %9207, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %9208 to i64*
  %9209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9210 = getelementptr inbounds %struct.GPR, %struct.GPR* %9209, i32 0, i32 15
  %9211 = getelementptr inbounds %struct.Reg, %struct.Reg* %9210, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %9211 to i64*
  %9212 = load i64, i64* %RBP.i58
  %9213 = sub i64 %9212, 28
  %9214 = load i64, i64* %PC.i57
  %9215 = add i64 %9214, 4
  store i64 %9215, i64* %PC.i57
  %9216 = inttoptr i64 %9213 to i32*
  %9217 = load i32, i32* %9216
  %9218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9218, align 1
  %9219 = and i32 %9217, 255
  %9220 = call i32 @llvm.ctpop.i32(i32 %9219)
  %9221 = trunc i32 %9220 to i8
  %9222 = and i8 %9221, 1
  %9223 = xor i8 %9222, 1
  %9224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9223, i8* %9224, align 1
  %9225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %9225, align 1
  %9226 = icmp eq i32 %9217, 0
  %9227 = zext i1 %9226 to i8
  %9228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9227, i8* %9228, align 1
  %9229 = lshr i32 %9217, 31
  %9230 = trunc i32 %9229 to i8
  %9231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9230, i8* %9231, align 1
  %9232 = lshr i32 %9217, 31
  %9233 = xor i32 %9229, %9232
  %9234 = add i32 %9233, %9232
  %9235 = icmp eq i32 %9234, 2
  %9236 = zext i1 %9235 to i8
  %9237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9236, i8* %9237, align 1
  store %struct.Memory* %loadMem_414a2d, %struct.Memory** %MEMORY
  %loadMem_414a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9239 = getelementptr inbounds %struct.GPR, %struct.GPR* %9238, i32 0, i32 33
  %9240 = getelementptr inbounds %struct.Reg, %struct.Reg* %9239, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %9240 to i64*
  %9241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9242 = getelementptr inbounds %struct.GPR, %struct.GPR* %9241, i32 0, i32 1
  %9243 = getelementptr inbounds %struct.Reg, %struct.Reg* %9242, i32 0, i32 0
  %9244 = bitcast %union.anon* %9243 to %struct.anon.2*
  %AL.i56 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9244, i32 0, i32 0
  %9245 = load i64, i64* %PC.i55
  %9246 = add i64 %9245, 3
  store i64 %9246, i64* %PC.i55
  %9247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9248 = load i8, i8* %9247, align 1
  %9249 = icmp eq i8 %9248, 0
  %9250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %9251 = load i8, i8* %9250, align 1
  %9252 = icmp ne i8 %9251, 0
  %9253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %9254 = load i8, i8* %9253, align 1
  %9255 = icmp ne i8 %9254, 0
  %9256 = xor i1 %9252, %9255
  %9257 = xor i1 %9256, true
  %9258 = and i1 %9249, %9257
  %9259 = zext i1 %9258 to i8
  store i8 %9259, i8* %AL.i56, align 1
  store %struct.Memory* %loadMem_414a31, %struct.Memory** %MEMORY
  %loadMem_414a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9261 = getelementptr inbounds %struct.GPR, %struct.GPR* %9260, i32 0, i32 33
  %9262 = getelementptr inbounds %struct.Reg, %struct.Reg* %9261, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %9262 to i64*
  %9263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9264 = getelementptr inbounds %struct.GPR, %struct.GPR* %9263, i32 0, i32 1
  %9265 = getelementptr inbounds %struct.Reg, %struct.Reg* %9264, i32 0, i32 0
  %9266 = bitcast %union.anon* %9265 to %struct.anon.2*
  %AL.i54 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9266, i32 0, i32 0
  %9267 = load i8, i8* %AL.i54
  %9268 = zext i8 %9267 to i64
  %9269 = load i64, i64* %PC.i53
  %9270 = add i64 %9269, 2
  store i64 %9270, i64* %PC.i53
  %9271 = and i64 1, %9268
  %9272 = trunc i64 %9271 to i8
  store i8 %9272, i8* %AL.i54, align 1
  %9273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9273, align 1
  %9274 = trunc i64 %9271 to i32
  %9275 = and i32 %9274, 255
  %9276 = call i32 @llvm.ctpop.i32(i32 %9275)
  %9277 = trunc i32 %9276 to i8
  %9278 = and i8 %9277, 1
  %9279 = xor i8 %9278, 1
  %9280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9279, i8* %9280, align 1
  %9281 = icmp eq i8 %9272, 0
  %9282 = zext i1 %9281 to i8
  %9283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9282, i8* %9283, align 1
  %9284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9284, align 1
  %9285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9285, align 1
  %9286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %9286, align 1
  store %struct.Memory* %loadMem_414a34, %struct.Memory** %MEMORY
  %loadMem_414a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9288 = getelementptr inbounds %struct.GPR, %struct.GPR* %9287, i32 0, i32 33
  %9289 = getelementptr inbounds %struct.Reg, %struct.Reg* %9288, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %9289 to i64*
  %9290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9291 = getelementptr inbounds %struct.GPR, %struct.GPR* %9290, i32 0, i32 1
  %9292 = getelementptr inbounds %struct.Reg, %struct.Reg* %9291, i32 0, i32 0
  %9293 = bitcast %union.anon* %9292 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9293, i32 0, i32 0
  %9294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9295 = getelementptr inbounds %struct.GPR, %struct.GPR* %9294, i32 0, i32 5
  %9296 = getelementptr inbounds %struct.Reg, %struct.Reg* %9295, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %9296 to i64*
  %9297 = load i8, i8* %AL.i
  %9298 = zext i8 %9297 to i64
  %9299 = load i64, i64* %PC.i51
  %9300 = add i64 %9299, 3
  store i64 %9300, i64* %PC.i51
  %9301 = and i64 %9298, 255
  store i64 %9301, i64* %RCX.i52, align 8
  store %struct.Memory* %loadMem_414a36, %struct.Memory** %MEMORY
  %loadMem_414a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9303 = getelementptr inbounds %struct.GPR, %struct.GPR* %9302, i32 0, i32 33
  %9304 = getelementptr inbounds %struct.Reg, %struct.Reg* %9303, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %9304 to i64*
  %9305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9306 = getelementptr inbounds %struct.GPR, %struct.GPR* %9305, i32 0, i32 5
  %9307 = getelementptr inbounds %struct.Reg, %struct.Reg* %9306, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %9307 to i64*
  %9308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9309 = getelementptr inbounds %struct.GPR, %struct.GPR* %9308, i32 0, i32 15
  %9310 = getelementptr inbounds %struct.Reg, %struct.Reg* %9309, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %9310 to i64*
  %9311 = load i64, i64* %RCX.i49
  %9312 = load i64, i64* %RBP.i50
  %9313 = sub i64 %9312, 24
  %9314 = load i64, i64* %PC.i48
  %9315 = add i64 %9314, 3
  store i64 %9315, i64* %PC.i48
  %9316 = trunc i64 %9311 to i32
  %9317 = inttoptr i64 %9313 to i32*
  %9318 = load i32, i32* %9317
  %9319 = add i32 %9318, %9316
  %9320 = zext i32 %9319 to i64
  store i64 %9320, i64* %RCX.i49, align 8
  %9321 = icmp ult i32 %9319, %9316
  %9322 = icmp ult i32 %9319, %9318
  %9323 = or i1 %9321, %9322
  %9324 = zext i1 %9323 to i8
  %9325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9324, i8* %9325, align 1
  %9326 = and i32 %9319, 255
  %9327 = call i32 @llvm.ctpop.i32(i32 %9326)
  %9328 = trunc i32 %9327 to i8
  %9329 = and i8 %9328, 1
  %9330 = xor i8 %9329, 1
  %9331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9330, i8* %9331, align 1
  %9332 = xor i32 %9318, %9316
  %9333 = xor i32 %9332, %9319
  %9334 = lshr i32 %9333, 4
  %9335 = trunc i32 %9334 to i8
  %9336 = and i8 %9335, 1
  %9337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9336, i8* %9337, align 1
  %9338 = icmp eq i32 %9319, 0
  %9339 = zext i1 %9338 to i8
  %9340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9339, i8* %9340, align 1
  %9341 = lshr i32 %9319, 31
  %9342 = trunc i32 %9341 to i8
  %9343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9342, i8* %9343, align 1
  %9344 = lshr i32 %9316, 31
  %9345 = lshr i32 %9318, 31
  %9346 = xor i32 %9341, %9344
  %9347 = xor i32 %9341, %9345
  %9348 = add i32 %9346, %9347
  %9349 = icmp eq i32 %9348, 2
  %9350 = zext i1 %9349 to i8
  %9351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9350, i8* %9351, align 1
  store %struct.Memory* %loadMem_414a39, %struct.Memory** %MEMORY
  %loadMem_414a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %9352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9353 = getelementptr inbounds %struct.GPR, %struct.GPR* %9352, i32 0, i32 33
  %9354 = getelementptr inbounds %struct.Reg, %struct.Reg* %9353, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %9354 to i64*
  %9355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9356 = getelementptr inbounds %struct.GPR, %struct.GPR* %9355, i32 0, i32 5
  %9357 = getelementptr inbounds %struct.Reg, %struct.Reg* %9356, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %9357 to i32*
  %9358 = load i32, i32* %ECX.i
  %9359 = zext i32 %9358 to i64
  %9360 = load i64, i64* %PC.i47
  %9361 = add i64 %9360, 3
  store i64 %9361, i64* %PC.i47
  %9362 = sub i32 %9358, 2
  %9363 = icmp ult i32 %9358, 2
  %9364 = zext i1 %9363 to i8
  %9365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9364, i8* %9365, align 1
  %9366 = and i32 %9362, 255
  %9367 = call i32 @llvm.ctpop.i32(i32 %9366)
  %9368 = trunc i32 %9367 to i8
  %9369 = and i8 %9368, 1
  %9370 = xor i8 %9369, 1
  %9371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9370, i8* %9371, align 1
  %9372 = xor i64 2, %9359
  %9373 = trunc i64 %9372 to i32
  %9374 = xor i32 %9373, %9362
  %9375 = lshr i32 %9374, 4
  %9376 = trunc i32 %9375 to i8
  %9377 = and i8 %9376, 1
  %9378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9377, i8* %9378, align 1
  %9379 = icmp eq i32 %9362, 0
  %9380 = zext i1 %9379 to i8
  %9381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9380, i8* %9381, align 1
  %9382 = lshr i32 %9362, 31
  %9383 = trunc i32 %9382 to i8
  %9384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9383, i8* %9384, align 1
  %9385 = lshr i32 %9358, 31
  %9386 = xor i32 %9382, %9385
  %9387 = add i32 %9386, %9385
  %9388 = icmp eq i32 %9387, 2
  %9389 = zext i1 %9388 to i8
  %9390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9389, i8* %9390, align 1
  store %struct.Memory* %loadMem_414a3c, %struct.Memory** %MEMORY
  %loadMem_414a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9392 = getelementptr inbounds %struct.GPR, %struct.GPR* %9391, i32 0, i32 33
  %9393 = getelementptr inbounds %struct.Reg, %struct.Reg* %9392, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %9393 to i64*
  %9394 = load i64, i64* %PC.i46
  %9395 = add i64 %9394, 18
  %9396 = load i64, i64* %PC.i46
  %9397 = add i64 %9396, 6
  %9398 = load i64, i64* %PC.i46
  %9399 = add i64 %9398, 6
  store i64 %9399, i64* %PC.i46
  %9400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %9401 = load i8, i8* %9400, align 1
  %9402 = icmp ne i8 %9401, 0
  %9403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %9404 = load i8, i8* %9403, align 1
  %9405 = icmp ne i8 %9404, 0
  %9406 = xor i1 %9402, %9405
  %9407 = zext i1 %9406 to i8
  store i8 %9407, i8* %BRANCH_TAKEN, align 1
  %9408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9409 = select i1 %9406, i64 %9395, i64 %9397
  store i64 %9409, i64* %9408, align 8
  store %struct.Memory* %loadMem_414a3f, %struct.Memory** %MEMORY
  %loadBr_414a3f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414a3f = icmp eq i8 %loadBr_414a3f, 1
  br i1 %cmpBr_414a3f, label %block_.L_414a51, label %block_414a45

block_414a45:                                     ; preds = %block_.L_414a2d
  %loadMem_414a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9411 = getelementptr inbounds %struct.GPR, %struct.GPR* %9410, i32 0, i32 33
  %9412 = getelementptr inbounds %struct.Reg, %struct.Reg* %9411, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %9412 to i64*
  %9413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9414 = getelementptr inbounds %struct.GPR, %struct.GPR* %9413, i32 0, i32 15
  %9415 = getelementptr inbounds %struct.Reg, %struct.Reg* %9414, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %9415 to i64*
  %9416 = load i64, i64* %RBP.i45
  %9417 = sub i64 %9416, 4
  %9418 = load i64, i64* %PC.i44
  %9419 = add i64 %9418, 7
  store i64 %9419, i64* %PC.i44
  %9420 = inttoptr i64 %9417 to i32*
  store i32 0, i32* %9420
  store %struct.Memory* %loadMem_414a45, %struct.Memory** %MEMORY
  %loadMem_414a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %9421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9422 = getelementptr inbounds %struct.GPR, %struct.GPR* %9421, i32 0, i32 33
  %9423 = getelementptr inbounds %struct.Reg, %struct.Reg* %9422, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %9423 to i64*
  %9424 = load i64, i64* %PC.i43
  %9425 = add i64 %9424, 80
  %9426 = load i64, i64* %PC.i43
  %9427 = add i64 %9426, 5
  store i64 %9427, i64* %PC.i43
  %9428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9425, i64* %9428, align 8
  store %struct.Memory* %loadMem_414a4c, %struct.Memory** %MEMORY
  br label %block_.L_414a9c

block_.L_414a51:                                  ; preds = %block_.L_414a2d
  %loadMem_414a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9430 = getelementptr inbounds %struct.GPR, %struct.GPR* %9429, i32 0, i32 33
  %9431 = getelementptr inbounds %struct.Reg, %struct.Reg* %9430, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %9431 to i64*
  %9432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9433 = getelementptr inbounds %struct.GPR, %struct.GPR* %9432, i32 0, i32 15
  %9434 = getelementptr inbounds %struct.Reg, %struct.Reg* %9433, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %9434 to i64*
  %9435 = load i64, i64* %RBP.i42
  %9436 = sub i64 %9435, 24
  %9437 = load i64, i64* %PC.i41
  %9438 = add i64 %9437, 4
  store i64 %9438, i64* %PC.i41
  %9439 = inttoptr i64 %9436 to i32*
  %9440 = load i32, i32* %9439
  %9441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9441, align 1
  %9442 = and i32 %9440, 255
  %9443 = call i32 @llvm.ctpop.i32(i32 %9442)
  %9444 = trunc i32 %9443 to i8
  %9445 = and i8 %9444, 1
  %9446 = xor i8 %9445, 1
  %9447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9446, i8* %9447, align 1
  %9448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %9448, align 1
  %9449 = icmp eq i32 %9440, 0
  %9450 = zext i1 %9449 to i8
  %9451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9450, i8* %9451, align 1
  %9452 = lshr i32 %9440, 31
  %9453 = trunc i32 %9452 to i8
  %9454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9453, i8* %9454, align 1
  %9455 = lshr i32 %9440, 31
  %9456 = xor i32 %9452, %9455
  %9457 = add i32 %9456, %9455
  %9458 = icmp eq i32 %9457, 2
  %9459 = zext i1 %9458 to i8
  %9460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9459, i8* %9460, align 1
  store %struct.Memory* %loadMem_414a51, %struct.Memory** %MEMORY
  %loadMem_414a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9462 = getelementptr inbounds %struct.GPR, %struct.GPR* %9461, i32 0, i32 33
  %9463 = getelementptr inbounds %struct.Reg, %struct.Reg* %9462, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %9463 to i64*
  %9464 = load i64, i64* %PC.i40
  %9465 = add i64 %9464, 33
  %9466 = load i64, i64* %PC.i40
  %9467 = add i64 %9466, 6
  %9468 = load i64, i64* %PC.i40
  %9469 = add i64 %9468, 6
  store i64 %9469, i64* %PC.i40
  %9470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9471 = load i8, i8* %9470, align 1
  %9472 = icmp eq i8 %9471, 0
  %9473 = zext i1 %9472 to i8
  store i8 %9473, i8* %BRANCH_TAKEN, align 1
  %9474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9475 = select i1 %9472, i64 %9465, i64 %9467
  store i64 %9475, i64* %9474, align 8
  store %struct.Memory* %loadMem_414a55, %struct.Memory** %MEMORY
  %loadBr_414a55 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414a55 = icmp eq i8 %loadBr_414a55, 1
  br i1 %cmpBr_414a55, label %block_.L_414a76, label %block_414a5b

block_414a5b:                                     ; preds = %block_.L_414a51
  %loadMem_414a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %9476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9477 = getelementptr inbounds %struct.GPR, %struct.GPR* %9476, i32 0, i32 33
  %9478 = getelementptr inbounds %struct.Reg, %struct.Reg* %9477, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %9478 to i64*
  %9479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9480 = getelementptr inbounds %struct.GPR, %struct.GPR* %9479, i32 0, i32 1
  %9481 = getelementptr inbounds %struct.Reg, %struct.Reg* %9480, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %9481 to i64*
  %9482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9483 = getelementptr inbounds %struct.GPR, %struct.GPR* %9482, i32 0, i32 15
  %9484 = getelementptr inbounds %struct.Reg, %struct.Reg* %9483, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %9484 to i64*
  %9485 = load i64, i64* %RBP.i39
  %9486 = sub i64 %9485, 28
  %9487 = load i64, i64* %PC.i37
  %9488 = add i64 %9487, 3
  store i64 %9488, i64* %PC.i37
  %9489 = inttoptr i64 %9486 to i32*
  %9490 = load i32, i32* %9489
  %9491 = zext i32 %9490 to i64
  store i64 %9491, i64* %RAX.i38, align 8
  store %struct.Memory* %loadMem_414a5b, %struct.Memory** %MEMORY
  %loadMem_414a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %9492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9493 = getelementptr inbounds %struct.GPR, %struct.GPR* %9492, i32 0, i32 33
  %9494 = getelementptr inbounds %struct.Reg, %struct.Reg* %9493, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %9494 to i64*
  %9495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9496 = getelementptr inbounds %struct.GPR, %struct.GPR* %9495, i32 0, i32 1
  %9497 = getelementptr inbounds %struct.Reg, %struct.Reg* %9496, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %9497 to i64*
  %9498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9499 = getelementptr inbounds %struct.GPR, %struct.GPR* %9498, i32 0, i32 15
  %9500 = getelementptr inbounds %struct.Reg, %struct.Reg* %9499, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %9500 to i64*
  %9501 = load i64, i64* %RAX.i35
  %9502 = load i64, i64* %RBP.i36
  %9503 = sub i64 %9502, 20
  %9504 = load i64, i64* %PC.i34
  %9505 = add i64 %9504, 3
  store i64 %9505, i64* %PC.i34
  %9506 = trunc i64 %9501 to i32
  %9507 = inttoptr i64 %9503 to i32*
  %9508 = load i32, i32* %9507
  %9509 = add i32 %9508, %9506
  %9510 = zext i32 %9509 to i64
  store i64 %9510, i64* %RAX.i35, align 8
  %9511 = icmp ult i32 %9509, %9506
  %9512 = icmp ult i32 %9509, %9508
  %9513 = or i1 %9511, %9512
  %9514 = zext i1 %9513 to i8
  %9515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9514, i8* %9515, align 1
  %9516 = and i32 %9509, 255
  %9517 = call i32 @llvm.ctpop.i32(i32 %9516)
  %9518 = trunc i32 %9517 to i8
  %9519 = and i8 %9518, 1
  %9520 = xor i8 %9519, 1
  %9521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9520, i8* %9521, align 1
  %9522 = xor i32 %9508, %9506
  %9523 = xor i32 %9522, %9509
  %9524 = lshr i32 %9523, 4
  %9525 = trunc i32 %9524 to i8
  %9526 = and i8 %9525, 1
  %9527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9526, i8* %9527, align 1
  %9528 = icmp eq i32 %9509, 0
  %9529 = zext i1 %9528 to i8
  %9530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9529, i8* %9530, align 1
  %9531 = lshr i32 %9509, 31
  %9532 = trunc i32 %9531 to i8
  %9533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9532, i8* %9533, align 1
  %9534 = lshr i32 %9506, 31
  %9535 = lshr i32 %9508, 31
  %9536 = xor i32 %9531, %9534
  %9537 = xor i32 %9531, %9535
  %9538 = add i32 %9536, %9537
  %9539 = icmp eq i32 %9538, 2
  %9540 = zext i1 %9539 to i8
  %9541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9540, i8* %9541, align 1
  store %struct.Memory* %loadMem_414a5e, %struct.Memory** %MEMORY
  %loadMem_414a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9543 = getelementptr inbounds %struct.GPR, %struct.GPR* %9542, i32 0, i32 33
  %9544 = getelementptr inbounds %struct.Reg, %struct.Reg* %9543, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %9544 to i64*
  %9545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9546 = getelementptr inbounds %struct.GPR, %struct.GPR* %9545, i32 0, i32 1
  %9547 = getelementptr inbounds %struct.Reg, %struct.Reg* %9546, i32 0, i32 0
  %EAX.i33 = bitcast %union.anon* %9547 to i32*
  %9548 = load i32, i32* %EAX.i33
  %9549 = zext i32 %9548 to i64
  %9550 = load i64, i64* %PC.i32
  %9551 = add i64 %9550, 3
  store i64 %9551, i64* %PC.i32
  %9552 = sub i32 %9548, 1
  %9553 = icmp ult i32 %9548, 1
  %9554 = zext i1 %9553 to i8
  %9555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9554, i8* %9555, align 1
  %9556 = and i32 %9552, 255
  %9557 = call i32 @llvm.ctpop.i32(i32 %9556)
  %9558 = trunc i32 %9557 to i8
  %9559 = and i8 %9558, 1
  %9560 = xor i8 %9559, 1
  %9561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9560, i8* %9561, align 1
  %9562 = xor i64 1, %9549
  %9563 = trunc i64 %9562 to i32
  %9564 = xor i32 %9563, %9552
  %9565 = lshr i32 %9564, 4
  %9566 = trunc i32 %9565 to i8
  %9567 = and i8 %9566, 1
  %9568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9567, i8* %9568, align 1
  %9569 = icmp eq i32 %9552, 0
  %9570 = zext i1 %9569 to i8
  %9571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9570, i8* %9571, align 1
  %9572 = lshr i32 %9552, 31
  %9573 = trunc i32 %9572 to i8
  %9574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9573, i8* %9574, align 1
  %9575 = lshr i32 %9548, 31
  %9576 = xor i32 %9572, %9575
  %9577 = add i32 %9576, %9575
  %9578 = icmp eq i32 %9577, 2
  %9579 = zext i1 %9578 to i8
  %9580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9579, i8* %9580, align 1
  store %struct.Memory* %loadMem_414a61, %struct.Memory** %MEMORY
  %loadMem_414a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9582 = getelementptr inbounds %struct.GPR, %struct.GPR* %9581, i32 0, i32 33
  %9583 = getelementptr inbounds %struct.Reg, %struct.Reg* %9582, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %9583 to i64*
  %9584 = load i64, i64* %PC.i31
  %9585 = add i64 %9584, 18
  %9586 = load i64, i64* %PC.i31
  %9587 = add i64 %9586, 6
  %9588 = load i64, i64* %PC.i31
  %9589 = add i64 %9588, 6
  store i64 %9589, i64* %PC.i31
  %9590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9591 = load i8, i8* %9590, align 1
  %9592 = icmp eq i8 %9591, 0
  %9593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %9594 = load i8, i8* %9593, align 1
  %9595 = icmp ne i8 %9594, 0
  %9596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %9597 = load i8, i8* %9596, align 1
  %9598 = icmp ne i8 %9597, 0
  %9599 = xor i1 %9595, %9598
  %9600 = xor i1 %9599, true
  %9601 = and i1 %9592, %9600
  %9602 = zext i1 %9601 to i8
  store i8 %9602, i8* %BRANCH_TAKEN, align 1
  %9603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9604 = select i1 %9601, i64 %9585, i64 %9587
  store i64 %9604, i64* %9603, align 8
  store %struct.Memory* %loadMem_414a64, %struct.Memory** %MEMORY
  %loadBr_414a64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414a64 = icmp eq i8 %loadBr_414a64, 1
  br i1 %cmpBr_414a64, label %block_.L_414a76, label %block_414a6a

block_414a6a:                                     ; preds = %block_414a5b
  %loadMem_414a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %9605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9606 = getelementptr inbounds %struct.GPR, %struct.GPR* %9605, i32 0, i32 33
  %9607 = getelementptr inbounds %struct.Reg, %struct.Reg* %9606, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %9607 to i64*
  %9608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9609 = getelementptr inbounds %struct.GPR, %struct.GPR* %9608, i32 0, i32 15
  %9610 = getelementptr inbounds %struct.Reg, %struct.Reg* %9609, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %9610 to i64*
  %9611 = load i64, i64* %RBP.i30
  %9612 = sub i64 %9611, 4
  %9613 = load i64, i64* %PC.i29
  %9614 = add i64 %9613, 7
  store i64 %9614, i64* %PC.i29
  %9615 = inttoptr i64 %9612 to i32*
  store i32 1, i32* %9615
  store %struct.Memory* %loadMem_414a6a, %struct.Memory** %MEMORY
  %loadMem_414a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9617 = getelementptr inbounds %struct.GPR, %struct.GPR* %9616, i32 0, i32 33
  %9618 = getelementptr inbounds %struct.Reg, %struct.Reg* %9617, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %9618 to i64*
  %9619 = load i64, i64* %PC.i28
  %9620 = add i64 %9619, 43
  %9621 = load i64, i64* %PC.i28
  %9622 = add i64 %9621, 5
  store i64 %9622, i64* %PC.i28
  %9623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9620, i64* %9623, align 8
  store %struct.Memory* %loadMem_414a71, %struct.Memory** %MEMORY
  br label %block_.L_414a9c

block_.L_414a76:                                  ; preds = %block_414a5b, %block_.L_414a51
  %loadMem_414a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9625 = getelementptr inbounds %struct.GPR, %struct.GPR* %9624, i32 0, i32 33
  %9626 = getelementptr inbounds %struct.Reg, %struct.Reg* %9625, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %9626 to i64*
  %9627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9628 = getelementptr inbounds %struct.GPR, %struct.GPR* %9627, i32 0, i32 7
  %9629 = getelementptr inbounds %struct.Reg, %struct.Reg* %9628, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %9629 to i64*
  %9630 = load i64, i64* %PC.i27
  %9631 = add i64 %9630, 5
  store i64 %9631, i64* %PC.i27
  store i64 2, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_414a76, %struct.Memory** %MEMORY
  %loadMem_414a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %9632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9633 = getelementptr inbounds %struct.GPR, %struct.GPR* %9632, i32 0, i32 33
  %9634 = getelementptr inbounds %struct.Reg, %struct.Reg* %9633, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %9634 to i64*
  %9635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9636 = getelementptr inbounds %struct.GPR, %struct.GPR* %9635, i32 0, i32 1
  %9637 = getelementptr inbounds %struct.Reg, %struct.Reg* %9636, i32 0, i32 0
  %EAX.i25 = bitcast %union.anon* %9637 to i32*
  %9638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9639 = getelementptr inbounds %struct.GPR, %struct.GPR* %9638, i32 0, i32 1
  %9640 = getelementptr inbounds %struct.Reg, %struct.Reg* %9639, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %9640 to i64*
  %9641 = load i64, i64* %RAX.i26
  %9642 = load i32, i32* %EAX.i25
  %9643 = zext i32 %9642 to i64
  %9644 = load i64, i64* %PC.i24
  %9645 = add i64 %9644, 2
  store i64 %9645, i64* %PC.i24
  %9646 = xor i64 %9643, %9641
  %9647 = trunc i64 %9646 to i32
  %9648 = and i64 %9646, 4294967295
  store i64 %9648, i64* %RAX.i26, align 8
  %9649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9649, align 1
  %9650 = and i32 %9647, 255
  %9651 = call i32 @llvm.ctpop.i32(i32 %9650)
  %9652 = trunc i32 %9651 to i8
  %9653 = and i8 %9652, 1
  %9654 = xor i8 %9653, 1
  %9655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9654, i8* %9655, align 1
  %9656 = icmp eq i32 %9647, 0
  %9657 = zext i1 %9656 to i8
  %9658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9657, i8* %9658, align 1
  %9659 = lshr i32 %9647, 31
  %9660 = trunc i32 %9659 to i8
  %9661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9660, i8* %9661, align 1
  %9662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9662, align 1
  %9663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %9663, align 1
  store %struct.Memory* %loadMem_414a7b, %struct.Memory** %MEMORY
  %loadMem_414a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %9664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9665 = getelementptr inbounds %struct.GPR, %struct.GPR* %9664, i32 0, i32 33
  %9666 = getelementptr inbounds %struct.Reg, %struct.Reg* %9665, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %9666 to i64*
  %9667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9668 = getelementptr inbounds %struct.GPR, %struct.GPR* %9667, i32 0, i32 1
  %9669 = getelementptr inbounds %struct.Reg, %struct.Reg* %9668, i32 0, i32 0
  %EAX.i23 = bitcast %union.anon* %9669 to i32*
  %9670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9671 = getelementptr inbounds %struct.GPR, %struct.GPR* %9670, i32 0, i32 5
  %9672 = getelementptr inbounds %struct.Reg, %struct.Reg* %9671, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %9672 to i64*
  %9673 = load i32, i32* %EAX.i23
  %9674 = zext i32 %9673 to i64
  %9675 = load i64, i64* %PC.i22
  %9676 = add i64 %9675, 2
  store i64 %9676, i64* %PC.i22
  %9677 = and i64 %9674, 4294967295
  store i64 %9677, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_414a7d, %struct.Memory** %MEMORY
  %loadMem_414a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9679 = getelementptr inbounds %struct.GPR, %struct.GPR* %9678, i32 0, i32 33
  %9680 = getelementptr inbounds %struct.Reg, %struct.Reg* %9679, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %9680 to i64*
  %9681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9682 = getelementptr inbounds %struct.GPR, %struct.GPR* %9681, i32 0, i32 11
  %9683 = getelementptr inbounds %struct.Reg, %struct.Reg* %9682, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %9683 to i64*
  %9684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9685 = getelementptr inbounds %struct.GPR, %struct.GPR* %9684, i32 0, i32 15
  %9686 = getelementptr inbounds %struct.Reg, %struct.Reg* %9685, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %9686 to i64*
  %9687 = load i64, i64* %RBP.i21
  %9688 = sub i64 %9687, 8
  %9689 = load i64, i64* %PC.i20
  %9690 = add i64 %9689, 3
  store i64 %9690, i64* %PC.i20
  %9691 = inttoptr i64 %9688 to i32*
  %9692 = load i32, i32* %9691
  %9693 = zext i32 %9692 to i64
  store i64 %9693, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_414a7f, %struct.Memory** %MEMORY
  %loadMem_414a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9695 = getelementptr inbounds %struct.GPR, %struct.GPR* %9694, i32 0, i32 33
  %9696 = getelementptr inbounds %struct.Reg, %struct.Reg* %9695, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %9696 to i64*
  %9697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9698 = getelementptr inbounds %struct.GPR, %struct.GPR* %9697, i32 0, i32 9
  %9699 = getelementptr inbounds %struct.Reg, %struct.Reg* %9698, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %9699 to i64*
  %9700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9701 = getelementptr inbounds %struct.GPR, %struct.GPR* %9700, i32 0, i32 15
  %9702 = getelementptr inbounds %struct.Reg, %struct.Reg* %9701, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %9702 to i64*
  %9703 = load i64, i64* %RBP.i19
  %9704 = sub i64 %9703, 12
  %9705 = load i64, i64* %PC.i18
  %9706 = add i64 %9705, 3
  store i64 %9706, i64* %PC.i18
  %9707 = inttoptr i64 %9704 to i32*
  %9708 = load i32, i32* %9707
  %9709 = zext i32 %9708 to i64
  store i64 %9709, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_414a82, %struct.Memory** %MEMORY
  %loadMem1_414a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9711 = getelementptr inbounds %struct.GPR, %struct.GPR* %9710, i32 0, i32 33
  %9712 = getelementptr inbounds %struct.Reg, %struct.Reg* %9711, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %9712 to i64*
  %9713 = load i64, i64* %PC.i17
  %9714 = add i64 %9713, -10757
  %9715 = load i64, i64* %PC.i17
  %9716 = add i64 %9715, 5
  %9717 = load i64, i64* %PC.i17
  %9718 = add i64 %9717, 5
  store i64 %9718, i64* %PC.i17
  %9719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9720 = load i64, i64* %9719, align 8
  %9721 = add i64 %9720, -8
  %9722 = inttoptr i64 %9721 to i64*
  store i64 %9716, i64* %9722
  store i64 %9721, i64* %9719, align 8
  %9723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9714, i64* %9723, align 8
  store %struct.Memory* %loadMem1_414a85, %struct.Memory** %MEMORY
  %loadMem2_414a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414a85 = load i64, i64* %3
  %call2_414a85 = call %struct.Memory* @sub_412080.accuratelib(%struct.State* %0, i64 %loadPC_414a85, %struct.Memory* %loadMem2_414a85)
  store %struct.Memory* %call2_414a85, %struct.Memory** %MEMORY
  %loadMem_414a8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %9724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9725 = getelementptr inbounds %struct.GPR, %struct.GPR* %9724, i32 0, i32 33
  %9726 = getelementptr inbounds %struct.Reg, %struct.Reg* %9725, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %9726 to i64*
  %9727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9728 = getelementptr inbounds %struct.GPR, %struct.GPR* %9727, i32 0, i32 1
  %9729 = getelementptr inbounds %struct.Reg, %struct.Reg* %9728, i32 0, i32 0
  %EAX.i16 = bitcast %union.anon* %9729 to i32*
  %9730 = load i32, i32* %EAX.i16
  %9731 = zext i32 %9730 to i64
  %9732 = load i64, i64* %PC.i15
  %9733 = add i64 %9732, 3
  store i64 %9733, i64* %PC.i15
  %9734 = sub i32 %9730, 1
  %9735 = icmp ult i32 %9730, 1
  %9736 = zext i1 %9735 to i8
  %9737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9736, i8* %9737, align 1
  %9738 = and i32 %9734, 255
  %9739 = call i32 @llvm.ctpop.i32(i32 %9738)
  %9740 = trunc i32 %9739 to i8
  %9741 = and i8 %9740, 1
  %9742 = xor i8 %9741, 1
  %9743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9742, i8* %9743, align 1
  %9744 = xor i64 1, %9731
  %9745 = trunc i64 %9744 to i32
  %9746 = xor i32 %9745, %9734
  %9747 = lshr i32 %9746, 4
  %9748 = trunc i32 %9747 to i8
  %9749 = and i8 %9748, 1
  %9750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9749, i8* %9750, align 1
  %9751 = icmp eq i32 %9734, 0
  %9752 = zext i1 %9751 to i8
  %9753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9752, i8* %9753, align 1
  %9754 = lshr i32 %9734, 31
  %9755 = trunc i32 %9754 to i8
  %9756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9755, i8* %9756, align 1
  %9757 = lshr i32 %9730, 31
  %9758 = xor i32 %9754, %9757
  %9759 = add i32 %9758, %9757
  %9760 = icmp eq i32 %9759, 2
  %9761 = zext i1 %9760 to i8
  %9762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9761, i8* %9762, align 1
  store %struct.Memory* %loadMem_414a8a, %struct.Memory** %MEMORY
  %loadMem_414a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %9763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9764 = getelementptr inbounds %struct.GPR, %struct.GPR* %9763, i32 0, i32 33
  %9765 = getelementptr inbounds %struct.Reg, %struct.Reg* %9764, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %9765 to i64*
  %9766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9767 = getelementptr inbounds %struct.GPR, %struct.GPR* %9766, i32 0, i32 17
  %9768 = getelementptr inbounds %struct.Reg, %struct.Reg* %9767, i32 0, i32 0
  %9769 = bitcast %union.anon* %9768 to %struct.anon.2*
  %R8B.i14 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9769, i32 0, i32 0
  %9770 = load i64, i64* %PC.i13
  %9771 = add i64 %9770, 4
  store i64 %9771, i64* %PC.i13
  %9772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9773 = load i8, i8* %9772, align 1
  %9774 = icmp ne i8 %9773, 0
  %9775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %9776 = load i8, i8* %9775, align 1
  %9777 = icmp ne i8 %9776, 0
  %9778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %9779 = load i8, i8* %9778, align 1
  %9780 = icmp ne i8 %9779, 0
  %9781 = xor i1 %9777, %9780
  %9782 = or i1 %9774, %9781
  %9783 = zext i1 %9782 to i8
  store i8 %9783, i8* %R8B.i14, align 1
  store %struct.Memory* %loadMem_414a8d, %struct.Memory** %MEMORY
  %loadMem_414a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9785 = getelementptr inbounds %struct.GPR, %struct.GPR* %9784, i32 0, i32 33
  %9786 = getelementptr inbounds %struct.Reg, %struct.Reg* %9785, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %9786 to i64*
  %9787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9788 = getelementptr inbounds %struct.GPR, %struct.GPR* %9787, i32 0, i32 17
  %9789 = getelementptr inbounds %struct.Reg, %struct.Reg* %9788, i32 0, i32 0
  %9790 = bitcast %union.anon* %9789 to %struct.anon.2*
  %R8B.i12 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9790, i32 0, i32 0
  %9791 = load i8, i8* %R8B.i12
  %9792 = zext i8 %9791 to i64
  %9793 = load i64, i64* %PC.i11
  %9794 = add i64 %9793, 4
  store i64 %9794, i64* %PC.i11
  %9795 = and i64 1, %9792
  %9796 = trunc i64 %9795 to i8
  store i8 %9796, i8* %R8B.i12, align 1
  %9797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9797, align 1
  %9798 = trunc i64 %9795 to i32
  %9799 = and i32 %9798, 255
  %9800 = call i32 @llvm.ctpop.i32(i32 %9799)
  %9801 = trunc i32 %9800 to i8
  %9802 = and i8 %9801, 1
  %9803 = xor i8 %9802, 1
  %9804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9803, i8* %9804, align 1
  %9805 = icmp eq i8 %9796, 0
  %9806 = zext i1 %9805 to i8
  %9807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9806, i8* %9807, align 1
  %9808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9808, align 1
  %9809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9809, align 1
  %9810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %9810, align 1
  store %struct.Memory* %loadMem_414a91, %struct.Memory** %MEMORY
  %loadMem_414a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9812 = getelementptr inbounds %struct.GPR, %struct.GPR* %9811, i32 0, i32 33
  %9813 = getelementptr inbounds %struct.Reg, %struct.Reg* %9812, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %9813 to i64*
  %9814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9815 = getelementptr inbounds %struct.GPR, %struct.GPR* %9814, i32 0, i32 17
  %9816 = getelementptr inbounds %struct.Reg, %struct.Reg* %9815, i32 0, i32 0
  %9817 = bitcast %union.anon* %9816 to %struct.anon.2*
  %R8B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9817, i32 0, i32 0
  %9818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9819 = getelementptr inbounds %struct.GPR, %struct.GPR* %9818, i32 0, i32 1
  %9820 = getelementptr inbounds %struct.Reg, %struct.Reg* %9819, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %9820 to i64*
  %9821 = load i8, i8* %R8B.i
  %9822 = zext i8 %9821 to i64
  %9823 = load i64, i64* %PC.i9
  %9824 = add i64 %9823, 4
  store i64 %9824, i64* %PC.i9
  %9825 = and i64 %9822, 255
  store i64 %9825, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_414a95, %struct.Memory** %MEMORY
  %loadMem_414a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9827 = getelementptr inbounds %struct.GPR, %struct.GPR* %9826, i32 0, i32 33
  %9828 = getelementptr inbounds %struct.Reg, %struct.Reg* %9827, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %9828 to i64*
  %9829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9830 = getelementptr inbounds %struct.GPR, %struct.GPR* %9829, i32 0, i32 1
  %9831 = getelementptr inbounds %struct.Reg, %struct.Reg* %9830, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %9831 to i32*
  %9832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9833 = getelementptr inbounds %struct.GPR, %struct.GPR* %9832, i32 0, i32 15
  %9834 = getelementptr inbounds %struct.Reg, %struct.Reg* %9833, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %9834 to i64*
  %9835 = load i64, i64* %RBP.i8
  %9836 = sub i64 %9835, 4
  %9837 = load i32, i32* %EAX.i
  %9838 = zext i32 %9837 to i64
  %9839 = load i64, i64* %PC.i7
  %9840 = add i64 %9839, 3
  store i64 %9840, i64* %PC.i7
  %9841 = inttoptr i64 %9836 to i32*
  store i32 %9837, i32* %9841
  store %struct.Memory* %loadMem_414a99, %struct.Memory** %MEMORY
  br label %block_.L_414a9c

block_.L_414a9c:                                  ; preds = %block_.L_414a76, %block_414a6a, %block_414a45, %block_414a21, %block_414935, %block_4147b5, %block_414635, %block_4144b5
  %loadMem_414a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %9842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9843 = getelementptr inbounds %struct.GPR, %struct.GPR* %9842, i32 0, i32 33
  %9844 = getelementptr inbounds %struct.Reg, %struct.Reg* %9843, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %9844 to i64*
  %9845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9846 = getelementptr inbounds %struct.GPR, %struct.GPR* %9845, i32 0, i32 1
  %9847 = getelementptr inbounds %struct.Reg, %struct.Reg* %9846, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %9847 to i64*
  %9848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9849 = getelementptr inbounds %struct.GPR, %struct.GPR* %9848, i32 0, i32 15
  %9850 = getelementptr inbounds %struct.Reg, %struct.Reg* %9849, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %9850 to i64*
  %9851 = load i64, i64* %RBP.i6
  %9852 = sub i64 %9851, 4
  %9853 = load i64, i64* %PC.i5
  %9854 = add i64 %9853, 3
  store i64 %9854, i64* %PC.i5
  %9855 = inttoptr i64 %9852 to i32*
  %9856 = load i32, i32* %9855
  %9857 = zext i32 %9856 to i64
  store i64 %9857, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_414a9c, %struct.Memory** %MEMORY
  %loadMem_414a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9859 = getelementptr inbounds %struct.GPR, %struct.GPR* %9858, i32 0, i32 33
  %9860 = getelementptr inbounds %struct.Reg, %struct.Reg* %9859, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %9860 to i64*
  %9861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9862 = getelementptr inbounds %struct.GPR, %struct.GPR* %9861, i32 0, i32 13
  %9863 = getelementptr inbounds %struct.Reg, %struct.Reg* %9862, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %9863 to i64*
  %9864 = load i64, i64* %RSP.i
  %9865 = load i64, i64* %PC.i4
  %9866 = add i64 %9865, 4
  store i64 %9866, i64* %PC.i4
  %9867 = add i64 96, %9864
  store i64 %9867, i64* %RSP.i, align 8
  %9868 = icmp ult i64 %9867, %9864
  %9869 = icmp ult i64 %9867, 96
  %9870 = or i1 %9868, %9869
  %9871 = zext i1 %9870 to i8
  %9872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9871, i8* %9872, align 1
  %9873 = trunc i64 %9867 to i32
  %9874 = and i32 %9873, 255
  %9875 = call i32 @llvm.ctpop.i32(i32 %9874)
  %9876 = trunc i32 %9875 to i8
  %9877 = and i8 %9876, 1
  %9878 = xor i8 %9877, 1
  %9879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9878, i8* %9879, align 1
  %9880 = xor i64 96, %9864
  %9881 = xor i64 %9880, %9867
  %9882 = lshr i64 %9881, 4
  %9883 = trunc i64 %9882 to i8
  %9884 = and i8 %9883, 1
  %9885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9884, i8* %9885, align 1
  %9886 = icmp eq i64 %9867, 0
  %9887 = zext i1 %9886 to i8
  %9888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9887, i8* %9888, align 1
  %9889 = lshr i64 %9867, 63
  %9890 = trunc i64 %9889 to i8
  %9891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9890, i8* %9891, align 1
  %9892 = lshr i64 %9864, 63
  %9893 = xor i64 %9889, %9892
  %9894 = add i64 %9893, %9889
  %9895 = icmp eq i64 %9894, 2
  %9896 = zext i1 %9895 to i8
  %9897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9896, i8* %9897, align 1
  store %struct.Memory* %loadMem_414a9f, %struct.Memory** %MEMORY
  %loadMem_414aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9899 = getelementptr inbounds %struct.GPR, %struct.GPR* %9898, i32 0, i32 33
  %9900 = getelementptr inbounds %struct.Reg, %struct.Reg* %9899, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %9900 to i64*
  %9901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9902 = getelementptr inbounds %struct.GPR, %struct.GPR* %9901, i32 0, i32 15
  %9903 = getelementptr inbounds %struct.Reg, %struct.Reg* %9902, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %9903 to i64*
  %9904 = load i64, i64* %PC.i2
  %9905 = add i64 %9904, 1
  store i64 %9905, i64* %PC.i2
  %9906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9907 = load i64, i64* %9906, align 8
  %9908 = add i64 %9907, 8
  %9909 = inttoptr i64 %9907 to i64*
  %9910 = load i64, i64* %9909
  store i64 %9910, i64* %RBP.i3, align 8
  store i64 %9908, i64* %9906, align 8
  store %struct.Memory* %loadMem_414aa3, %struct.Memory** %MEMORY
  %loadMem_414aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9912 = getelementptr inbounds %struct.GPR, %struct.GPR* %9911, i32 0, i32 33
  %9913 = getelementptr inbounds %struct.Reg, %struct.Reg* %9912, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %9913 to i64*
  %9914 = load i64, i64* %PC.i1
  %9915 = add i64 %9914, 1
  store i64 %9915, i64* %PC.i1
  %9916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9918 = load i64, i64* %9917, align 8
  %9919 = inttoptr i64 %9918 to i64*
  %9920 = load i64, i64* %9919
  store i64 %9920, i64* %9916, align 8
  %9921 = add i64 %9918, 8
  store i64 %9921, i64* %9917, align 8
  store %struct.Memory* %loadMem_414aa4, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_414aa4
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 96
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 96
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
  %23 = xor i64 96, %9
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

define %struct.Memory* @routine_movl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
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

define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jae_.L_4142f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4142f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41434e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57a16e___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x8f6___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2294, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a49b___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a49b_type* @G__0x57a49b to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_jne_.L_414368(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4143c1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x8f7___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2295, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a4be___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a4be_type* @G__0x57a4be to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movq__rdx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq_MINUS0x40__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_je_.L_4143d5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4143da(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_414433(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x8f8___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2296, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a4f4___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a4f4_type* @G__0x57a4f4 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x58__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_movl_MINUS0x60__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x99da08___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
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

define %struct.Memory* @routine_movl__eax__0x99da08(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 20, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 20
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
  %26 = xor i64 20, %9
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

define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_jne_.L_41446c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4145c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 12
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

define %struct.Memory* @routine_jne_.L_4144fe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x14___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 20, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 20
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
  %26 = xor i64 20, %9
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

define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11187184
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 744, %15
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

define %struct.Memory* @routine_addq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x2__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_4144c1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_414a9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4144f9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4145bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4145ba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 740
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
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

define %struct.Memory* @routine_je_.L_4145ba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_addl__0x14___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 20, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 20
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
  %26 = xor i64 20, %9
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

define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0xaab3f0___rsi_4____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11187184
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x2e8___rsi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 744, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_addq__rsi___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 740
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4145ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_414744(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_41467e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_414641(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_414679(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41473f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_41473a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_41473a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 20
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 20
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
  %24 = xor i64 20, %9
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

define %struct.Memory* @routine_jne_.L_41476c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4148c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4147fe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x14___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 20
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 20
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
  %24 = xor i64 20, %9
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

define %struct.Memory* @routine_jle_.L_4147c1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4147f9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4148bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4148ba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4148ba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x14___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 20
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %12, 20
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
  %24 = xor i64 20, %9
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

define %struct.Memory* @routine_jne_.L_4148ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_414a12(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_41497e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_414941(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_414979(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_414a0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_414a08(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_414a08(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 24
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

define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jl_.L_414a2d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_setg__al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 3
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
  store i8 %24, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 %15, i8* %AL, align 1
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

define %struct.Memory* @routine_movzbl__al___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %AL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x18__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jl_.L_414a51(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_414a76(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jg_.L_414a76(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.accuratelib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_setle__r8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
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
  store i8 %23, i8* %R8B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___r8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %R8B
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %R8B, align 1
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

define %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %R8B
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 96, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 96
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
  %25 = xor i64 96, %9
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
