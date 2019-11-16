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
%G__0x57a4d2_type = type <{ [8 x i8] }>
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
@G__0x57a4d2 = global %G__0x57a4d2_type zeroinitializer
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

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @extended_chainlinks(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_413ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_413ec0, %struct.Memory** %MEMORY
  %loadMem_413ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i326 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i326
  %27 = load i64, i64* %PC.i325
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i325
  store i64 %26, i64* %RBP.i327, align 8
  store %struct.Memory* %loadMem_413ec1, %struct.Memory** %MEMORY
  %loadMem_413ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i344 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i344
  %36 = load i64, i64* %PC.i343
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i343
  %38 = sub i64 %35, 1040
  store i64 %38, i64* %RSP.i344, align 8
  %39 = icmp ult i64 %35, 1040
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
  %49 = xor i64 1040, %35
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
  store %struct.Memory* %loadMem_413ec4, %struct.Memory** %MEMORY
  %loadMem_413ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i395
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i394
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i394
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_413ecb, %struct.Memory** %MEMORY
  %loadMem_413ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RSI.i392 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i393
  %93 = sub i64 %92, 16
  %94 = load i64, i64* %RSI.i392
  %95 = load i64, i64* %PC.i391
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC.i391
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97
  store %struct.Memory* %loadMem_413ece, %struct.Memory** %MEMORY
  %loadMem_413ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %EDX.i389 = bitcast %union.anon* %103 to i32*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i390
  %108 = sub i64 %107, 20
  %109 = load i32, i32* %EDX.i389
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %PC.i388
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC.i388
  %113 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %113
  store %struct.Memory* %loadMem_413ed2, %struct.Memory** %MEMORY
  %loadMem_413ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 9
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RSI.i386 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %122 to i64*
  %123 = load i64, i64* %RBP.i387
  %124 = sub i64 %123, 4
  %125 = load i64, i64* %PC.i385
  %126 = add i64 %125, 4
  store i64 %126, i64* %PC.i385
  %127 = inttoptr i64 %124 to i32*
  %128 = load i32, i32* %127
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %RSI.i386, align 8
  store %struct.Memory* %loadMem_413ed5, %struct.Memory** %MEMORY
  %loadMem_413ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 33
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %132 to i64*
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 7
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %RDX.i383 = bitcast %union.anon* %135 to i64*
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 9
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %RSI.i384 = bitcast %union.anon* %138 to i64*
  %139 = load i64, i64* %RSI.i384
  %140 = add i64 %139, 12099168
  %141 = load i64, i64* %PC.i382
  %142 = add i64 %141, 8
  store i64 %142, i64* %PC.i382
  %143 = inttoptr i64 %140 to i8*
  %144 = load i8, i8* %143
  %145 = zext i8 %144 to i64
  store i64 %145, i64* %RDX.i383, align 8
  store %struct.Memory* %loadMem_413ed9, %struct.Memory** %MEMORY
  %loadMem_413ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 33
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %148 to i64*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 7
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %EDX.i381 = bitcast %union.anon* %151 to i32*
  %152 = load i32, i32* %EDX.i381
  %153 = zext i32 %152 to i64
  %154 = load i64, i64* %PC.i380
  %155 = add i64 %154, 3
  store i64 %155, i64* %PC.i380
  %156 = sub i32 %152, 1
  %157 = icmp ult i32 %152, 1
  %158 = zext i1 %157 to i8
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %158, i8* %159, align 1
  %160 = and i32 %156, 255
  %161 = call i32 @llvm.ctpop.i32(i32 %160)
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  %164 = xor i8 %163, 1
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %164, i8* %165, align 1
  %166 = xor i64 1, %153
  %167 = trunc i64 %166 to i32
  %168 = xor i32 %167, %156
  %169 = lshr i32 %168, 4
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %171, i8* %172, align 1
  %173 = icmp eq i32 %156, 0
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %174, i8* %175, align 1
  %176 = lshr i32 %156, 31
  %177 = trunc i32 %176 to i8
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %177, i8* %178, align 1
  %179 = lshr i32 %152, 31
  %180 = xor i32 %176, %179
  %181 = add i32 %180, %179
  %182 = icmp eq i32 %181, 2
  %183 = zext i1 %182 to i8
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %183, i8* %184, align 1
  store %struct.Memory* %loadMem_413ee1, %struct.Memory** %MEMORY
  %loadMem_413ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 33
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %187 to i64*
  %188 = load i64, i64* %PC.i379
  %189 = add i64 %188, 27
  %190 = load i64, i64* %PC.i379
  %191 = add i64 %190, 6
  %192 = load i64, i64* %PC.i379
  %193 = add i64 %192, 6
  store i64 %193, i64* %PC.i379
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %195 = load i8, i8* %194, align 1
  store i8 %195, i8* %BRANCH_TAKEN, align 1
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %197 = icmp ne i8 %195, 0
  %198 = select i1 %197, i64 %189, i64 %191
  store i64 %198, i64* %196, align 8
  store %struct.Memory* %loadMem_413ee4, %struct.Memory** %MEMORY
  %loadBr_413ee4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413ee4 = icmp eq i8 %loadBr_413ee4, 1
  br i1 %cmpBr_413ee4, label %block_.L_413eff, label %block_413eea

block_413eea:                                     ; preds = %entry
  %loadMem_413eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 33
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %204 to i64*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 15
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %207 to i64*
  %208 = load i64, i64* %RBP.i378
  %209 = sub i64 %208, 4
  %210 = load i64, i64* %PC.i376
  %211 = add i64 %210, 4
  store i64 %211, i64* %PC.i376
  %212 = inttoptr i64 %209 to i32*
  %213 = load i32, i32* %212
  %214 = sext i32 %213 to i64
  store i64 %214, i64* %RAX.i377, align 8
  store %struct.Memory* %loadMem_413eea, %struct.Memory** %MEMORY
  %loadMem_413eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 33
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RCX.i375 = bitcast %union.anon* %223 to i64*
  %224 = load i64, i64* %RAX.i374
  %225 = add i64 %224, 12099168
  %226 = load i64, i64* %PC.i373
  %227 = add i64 %226, 8
  store i64 %227, i64* %PC.i373
  %228 = inttoptr i64 %225 to i8*
  %229 = load i8, i8* %228
  %230 = zext i8 %229 to i64
  store i64 %230, i64* %RCX.i375, align 8
  store %struct.Memory* %loadMem_413eee, %struct.Memory** %MEMORY
  %loadMem_413ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 5
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %ECX.i372 = bitcast %union.anon* %236 to i32*
  %237 = load i32, i32* %ECX.i372
  %238 = zext i32 %237 to i64
  %239 = load i64, i64* %PC.i371
  %240 = add i64 %239, 3
  store i64 %240, i64* %PC.i371
  %241 = sub i32 %237, 2
  %242 = icmp ult i32 %237, 2
  %243 = zext i1 %242 to i8
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %243, i8* %244, align 1
  %245 = and i32 %241, 255
  %246 = call i32 @llvm.ctpop.i32(i32 %245)
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %249, i8* %250, align 1
  %251 = xor i64 2, %238
  %252 = trunc i64 %251 to i32
  %253 = xor i32 %252, %241
  %254 = lshr i32 %253, 4
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %256, i8* %257, align 1
  %258 = icmp eq i32 %241, 0
  %259 = zext i1 %258 to i8
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %259, i8* %260, align 1
  %261 = lshr i32 %241, 31
  %262 = trunc i32 %261 to i8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %262, i8* %263, align 1
  %264 = lshr i32 %237, 31
  %265 = xor i32 %261, %264
  %266 = add i32 %265, %264
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i8
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %268, i8* %269, align 1
  store %struct.Memory* %loadMem_413ef6, %struct.Memory** %MEMORY
  %loadMem_413ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 33
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %272 to i64*
  %273 = load i64, i64* %PC.i370
  %274 = add i64 %273, 11
  %275 = load i64, i64* %PC.i370
  %276 = add i64 %275, 6
  %277 = load i64, i64* %PC.i370
  %278 = add i64 %277, 6
  store i64 %278, i64* %PC.i370
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %280 = load i8, i8* %279, align 1
  %281 = icmp eq i8 %280, 0
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %BRANCH_TAKEN, align 1
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %284 = select i1 %281, i64 %274, i64 %276
  store i64 %284, i64* %283, align 8
  store %struct.Memory* %loadMem_413ef9, %struct.Memory** %MEMORY
  %loadBr_413ef9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413ef9 = icmp eq i8 %loadBr_413ef9, 1
  br i1 %cmpBr_413ef9, label %block_.L_413f04, label %block_.L_413eff

block_.L_413eff:                                  ; preds = %block_413eea, %entry
  %loadMem_413eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 33
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %287 to i64*
  %288 = load i64, i64* %PC.i369
  %289 = add i64 %288, 118
  %290 = load i64, i64* %PC.i369
  %291 = add i64 %290, 5
  store i64 %291, i64* %PC.i369
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %289, i64* %292, align 8
  store %struct.Memory* %loadMem_413eff, %struct.Memory** %MEMORY
  br label %block_.L_413f75

block_.L_413f04:                                  ; preds = %block_413eea
  %loadMem_413f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 33
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %295 to i64*
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 11
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %RDI.i368 = bitcast %union.anon* %298 to i64*
  %299 = load i64, i64* %PC.i367
  %300 = add i64 %299, 10
  store i64 %300, i64* %PC.i367
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i368, align 8
  store %struct.Memory* %loadMem_413f04, %struct.Memory** %MEMORY
  %loadMem_413f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 33
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %303 to i64*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 9
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %RSI.i366 = bitcast %union.anon* %306 to i64*
  %307 = load i64, i64* %PC.i365
  %308 = add i64 %307, 5
  store i64 %308, i64* %PC.i365
  store i64 2227, i64* %RSI.i366, align 8
  store %struct.Memory* %loadMem_413f0e, %struct.Memory** %MEMORY
  %loadMem_413f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 33
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %311 to i64*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 7
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %RDX.i364 = bitcast %union.anon* %314 to i64*
  %315 = load i64, i64* %PC.i363
  %316 = add i64 %315, 10
  store i64 %316, i64* %PC.i363
  store i64 ptrtoint (%G__0x57a4d2_type* @G__0x57a4d2 to i64), i64* %RDX.i364, align 8
  store %struct.Memory* %loadMem_413f13, %struct.Memory** %MEMORY
  %loadMem_413f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %319 to i64*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %RAX.i362 = bitcast %union.anon* %322 to i64*
  %323 = load i64, i64* %PC.i361
  %324 = add i64 %323, 5
  store i64 %324, i64* %PC.i361
  store i64 20, i64* %RAX.i362, align 8
  store %struct.Memory* %loadMem_413f1d, %struct.Memory** %MEMORY
  %loadMem_413f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 5
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 15
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %333 to i64*
  %334 = load i64, i64* %RBP.i360
  %335 = sub i64 %334, 4
  %336 = load i64, i64* %PC.i358
  %337 = add i64 %336, 3
  store i64 %337, i64* %PC.i358
  %338 = inttoptr i64 %335 to i32*
  %339 = load i32, i32* %338
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RCX.i359, align 8
  store %struct.Memory* %loadMem_413f22, %struct.Memory** %MEMORY
  %loadMem_413f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 33
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %343 to i64*
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %EAX.i356 = bitcast %union.anon* %346 to i32*
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 15
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %349 to i64*
  %350 = load i64, i64* %RBP.i357
  %351 = sub i64 %350, 1016
  %352 = load i32, i32* %EAX.i356
  %353 = zext i32 %352 to i64
  %354 = load i64, i64* %PC.i355
  %355 = add i64 %354, 6
  store i64 %355, i64* %PC.i355
  %356 = inttoptr i64 %351 to i32*
  store i32 %352, i32* %356
  store %struct.Memory* %loadMem_413f25, %struct.Memory** %MEMORY
  %loadMem_413f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 33
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %359 to i64*
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 5
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %ECX.i353 = bitcast %union.anon* %362 to i32*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %365 to i64*
  %366 = load i32, i32* %ECX.i353
  %367 = zext i32 %366 to i64
  %368 = load i64, i64* %PC.i352
  %369 = add i64 %368, 2
  store i64 %369, i64* %PC.i352
  %370 = and i64 %367, 4294967295
  store i64 %370, i64* %RAX.i354, align 8
  store %struct.Memory* %loadMem_413f2b, %struct.Memory** %MEMORY
  %loadMem_413f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 33
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %373 to i64*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 7
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RDX.i350 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 15
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %379 to i64*
  %380 = load i64, i64* %RBP.i351
  %381 = sub i64 %380, 1024
  %382 = load i64, i64* %RDX.i350
  %383 = load i64, i64* %PC.i349
  %384 = add i64 %383, 7
  store i64 %384, i64* %PC.i349
  %385 = inttoptr i64 %381 to i64*
  store i64 %382, i64* %385
  store %struct.Memory* %loadMem_413f2d, %struct.Memory** %MEMORY
  %loadMem_413f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 33
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %388 to i64*
  %389 = load i64, i64* %PC.i348
  %390 = add i64 %389, 1
  store i64 %390, i64* %PC.i348
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %393 = bitcast %union.anon* %392 to i32*
  %394 = load i32, i32* %393, align 8
  %395 = sext i32 %394 to i64
  %396 = lshr i64 %395, 32
  store i64 %396, i64* %391, align 8
  store %struct.Memory* %loadMem_413f34, %struct.Memory** %MEMORY
  %loadMem_413f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 33
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 5
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %402 to i64*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 15
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %405 to i64*
  %406 = load i64, i64* %RBP.i347
  %407 = sub i64 %406, 1016
  %408 = load i64, i64* %PC.i345
  %409 = add i64 %408, 6
  store i64 %409, i64* %PC.i345
  %410 = inttoptr i64 %407 to i32*
  %411 = load i32, i32* %410
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RCX.i346, align 8
  store %struct.Memory* %loadMem_413f35, %struct.Memory** %MEMORY
  %loadMem_413f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 33
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %415 to i64*
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %417 = getelementptr inbounds %struct.GPR, %struct.GPR* %416, i32 0, i32 5
  %418 = getelementptr inbounds %struct.Reg, %struct.Reg* %417, i32 0, i32 0
  %ECX.i341 = bitcast %union.anon* %418 to i32*
  %419 = load i32, i32* %ECX.i341
  %420 = zext i32 %419 to i64
  %421 = load i64, i64* %PC.i340
  %422 = add i64 %421, 2
  store i64 %422, i64* %PC.i340
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %424 = bitcast %union.anon* %423 to i32*
  %425 = load i32, i32* %424, align 8
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %428 = bitcast %union.anon* %427 to i32*
  %429 = load i32, i32* %428, align 8
  %430 = zext i32 %429 to i64
  %431 = shl i64 %420, 32
  %432 = ashr exact i64 %431, 32
  %433 = shl i64 %430, 32
  %434 = or i64 %433, %426
  %435 = sdiv i64 %434, %432
  %436 = shl i64 %435, 32
  %437 = ashr exact i64 %436, 32
  %438 = icmp eq i64 %435, %437
  br i1 %438, label %443, label %439

; <label>:439:                                    ; preds = %block_.L_413f04
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %441, %struct.Memory* %loadMem_413f3b)
  br label %routine_idivl__ecx.exit342

; <label>:443:                                    ; preds = %block_.L_413f04
  %444 = srem i64 %434, %432
  %445 = getelementptr inbounds %union.anon, %union.anon* %423, i64 0, i32 0
  %446 = and i64 %435, 4294967295
  store i64 %446, i64* %445, align 8
  %447 = getelementptr inbounds %union.anon, %union.anon* %427, i64 0, i32 0
  %448 = and i64 %444, 4294967295
  store i64 %448, i64* %447, align 8
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %449, align 1
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %450, align 1
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %451, align 1
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %452, align 1
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %453, align 1
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %454, align 1
  br label %routine_idivl__ecx.exit342

routine_idivl__ecx.exit342:                       ; preds = %439, %443
  %455 = phi %struct.Memory* [ %442, %439 ], [ %loadMem_413f3b, %443 ]
  store %struct.Memory* %455, %struct.Memory** %MEMORY
  %loadMem_413f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 33
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %458 to i64*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %461 to i64*
  %462 = load i64, i64* %RAX.i339
  %463 = load i64, i64* %PC.i338
  %464 = add i64 %463, 3
  store i64 %464, i64* %PC.i338
  %465 = trunc i64 %462 to i32
  %466 = sub i32 %465, 1
  %467 = zext i32 %466 to i64
  store i64 %467, i64* %RAX.i339, align 8
  %468 = icmp ult i32 %465, 1
  %469 = zext i1 %468 to i8
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %469, i8* %470, align 1
  %471 = and i32 %466, 255
  %472 = call i32 @llvm.ctpop.i32(i32 %471)
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %475, i8* %476, align 1
  %477 = xor i64 1, %462
  %478 = trunc i64 %477 to i32
  %479 = xor i32 %478, %466
  %480 = lshr i32 %479, 4
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %482, i8* %483, align 1
  %484 = icmp eq i32 %466, 0
  %485 = zext i1 %484 to i8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %485, i8* %486, align 1
  %487 = lshr i32 %466, 31
  %488 = trunc i32 %487 to i8
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %488, i8* %489, align 1
  %490 = lshr i32 %465, 31
  %491 = xor i32 %487, %490
  %492 = add i32 %491, %490
  %493 = icmp eq i32 %492, 2
  %494 = zext i1 %493 to i8
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %494, i8* %495, align 1
  store %struct.Memory* %loadMem_413f3d, %struct.Memory** %MEMORY
  %loadMem_413f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 33
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %498 to i64*
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 17
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %R8D.i336 = bitcast %union.anon* %501 to i32*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 15
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %504 to i64*
  %505 = bitcast i32* %R8D.i336 to i64*
  %506 = load i64, i64* %RBP.i337
  %507 = sub i64 %506, 4
  %508 = load i64, i64* %PC.i335
  %509 = add i64 %508, 4
  store i64 %509, i64* %PC.i335
  %510 = inttoptr i64 %507 to i32*
  %511 = load i32, i32* %510
  %512 = zext i32 %511 to i64
  store i64 %512, i64* %505, align 8
  store %struct.Memory* %loadMem_413f40, %struct.Memory** %MEMORY
  %loadMem_413f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 33
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %515 to i64*
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %EAX.i333 = bitcast %union.anon* %518 to i32*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 15
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %521 to i64*
  %522 = load i64, i64* %RBP.i334
  %523 = sub i64 %522, 1028
  %524 = load i32, i32* %EAX.i333
  %525 = zext i32 %524 to i64
  %526 = load i64, i64* %PC.i332
  %527 = add i64 %526, 6
  store i64 %527, i64* %PC.i332
  %528 = inttoptr i64 %523 to i32*
  store i32 %524, i32* %528
  store %struct.Memory* %loadMem_413f44, %struct.Memory** %MEMORY
  %loadMem_413f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 17
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %R8D.i330 = bitcast %union.anon* %534 to i32*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 1
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %537 to i64*
  %538 = load i32, i32* %R8D.i330
  %539 = zext i32 %538 to i64
  %540 = load i64, i64* %PC.i329
  %541 = add i64 %540, 3
  store i64 %541, i64* %PC.i329
  %542 = and i64 %539, 4294967295
  store i64 %542, i64* %RAX.i331, align 8
  store %struct.Memory* %loadMem_413f4a, %struct.Memory** %MEMORY
  %loadMem_413f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 33
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %545 to i64*
  %546 = load i64, i64* %PC.i328
  %547 = add i64 %546, 1
  store i64 %547, i64* %PC.i328
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %550 = bitcast %union.anon* %549 to i32*
  %551 = load i32, i32* %550, align 8
  %552 = sext i32 %551 to i64
  %553 = lshr i64 %552, 32
  store i64 %553, i64* %548, align 8
  store %struct.Memory* %loadMem_413f4d, %struct.Memory** %MEMORY
  %loadMem_413f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 33
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %556 to i64*
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 5
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %ECX.i324 = bitcast %union.anon* %559 to i32*
  %560 = load i32, i32* %ECX.i324
  %561 = zext i32 %560 to i64
  %562 = load i64, i64* %PC.i323
  %563 = add i64 %562, 2
  store i64 %563, i64* %PC.i323
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %565 = bitcast %union.anon* %564 to i32*
  %566 = load i32, i32* %565, align 8
  %567 = zext i32 %566 to i64
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %569 = bitcast %union.anon* %568 to i32*
  %570 = load i32, i32* %569, align 8
  %571 = zext i32 %570 to i64
  %572 = shl i64 %561, 32
  %573 = ashr exact i64 %572, 32
  %574 = shl i64 %571, 32
  %575 = or i64 %574, %567
  %576 = sdiv i64 %575, %573
  %577 = shl i64 %576, 32
  %578 = ashr exact i64 %577, 32
  %579 = icmp eq i64 %576, %578
  br i1 %579, label %584, label %580

; <label>:580:                                    ; preds = %routine_idivl__ecx.exit342
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %582 = load i64, i64* %581, align 8
  %583 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %582, %struct.Memory* %loadMem_413f4e)
  br label %routine_idivl__ecx.exit

; <label>:584:                                    ; preds = %routine_idivl__ecx.exit342
  %585 = srem i64 %575, %573
  %586 = getelementptr inbounds %union.anon, %union.anon* %564, i64 0, i32 0
  %587 = and i64 %576, 4294967295
  store i64 %587, i64* %586, align 8
  %588 = getelementptr inbounds %union.anon, %union.anon* %568, i64 0, i32 0
  %589 = and i64 %585, 4294967295
  store i64 %589, i64* %588, align 8
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %590, align 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %591, align 1
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %592, align 1
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %593, align 1
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %594, align 1
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %595, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %580, %584
  %596 = phi %struct.Memory* [ %583, %580 ], [ %loadMem_413f4e, %584 ]
  store %struct.Memory* %596, %struct.Memory** %MEMORY
  %loadMem_413f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 33
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 7
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RDX.i322 = bitcast %union.anon* %602 to i64*
  %603 = load i64, i64* %RDX.i322
  %604 = load i64, i64* %PC.i321
  %605 = add i64 %604, 3
  store i64 %605, i64* %PC.i321
  %606 = trunc i64 %603 to i32
  %607 = sub i32 %606, 1
  %608 = zext i32 %607 to i64
  store i64 %608, i64* %RDX.i322, align 8
  %609 = icmp ult i32 %606, 1
  %610 = zext i1 %609 to i8
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %610, i8* %611, align 1
  %612 = and i32 %607, 255
  %613 = call i32 @llvm.ctpop.i32(i32 %612)
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %616, i8* %617, align 1
  %618 = xor i64 1, %603
  %619 = trunc i64 %618 to i32
  %620 = xor i32 %619, %607
  %621 = lshr i32 %620, 4
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %623, i8* %624, align 1
  %625 = icmp eq i32 %607, 0
  %626 = zext i1 %625 to i8
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %626, i8* %627, align 1
  %628 = lshr i32 %607, 31
  %629 = trunc i32 %628 to i8
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %629, i8* %630, align 1
  %631 = lshr i32 %606, 31
  %632 = xor i32 %628, %631
  %633 = add i32 %632, %631
  %634 = icmp eq i32 %633, 2
  %635 = zext i1 %634 to i8
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %635, i8* %636, align 1
  store %struct.Memory* %loadMem_413f50, %struct.Memory** %MEMORY
  %loadMem_413f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 15
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %642 to i64*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 19
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %R9.i320 = bitcast %union.anon* %645 to i64*
  %646 = load i64, i64* %RBP.i319
  %647 = sub i64 %646, 1024
  %648 = load i64, i64* %PC.i318
  %649 = add i64 %648, 7
  store i64 %649, i64* %PC.i318
  %650 = inttoptr i64 %647 to i64*
  %651 = load i64, i64* %650
  store i64 %651, i64* %R9.i320, align 8
  store %struct.Memory* %loadMem_413f53, %struct.Memory** %MEMORY
  %loadMem_413f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 33
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %654 to i64*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 7
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %EDX.i316 = bitcast %union.anon* %657 to i32*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 15
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %660 to i64*
  %661 = load i64, i64* %RBP.i317
  %662 = sub i64 %661, 1032
  %663 = load i32, i32* %EDX.i316
  %664 = zext i32 %663 to i64
  %665 = load i64, i64* %PC.i315
  %666 = add i64 %665, 6
  store i64 %666, i64* %PC.i315
  %667 = inttoptr i64 %662 to i32*
  store i32 %663, i32* %667
  store %struct.Memory* %loadMem_413f5a, %struct.Memory** %MEMORY
  %loadMem_413f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 33
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 7
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %RDX.i314 = bitcast %union.anon* %673 to i64*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 19
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %R9.i = bitcast %union.anon* %676 to i64*
  %677 = load i64, i64* %R9.i
  %678 = load i64, i64* %PC.i313
  %679 = add i64 %678, 3
  store i64 %679, i64* %PC.i313
  store i64 %677, i64* %RDX.i314, align 8
  store %struct.Memory* %loadMem_413f60, %struct.Memory** %MEMORY
  %loadMem_413f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 33
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %682 to i64*
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 5
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %685 to i64*
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 15
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %688 to i64*
  %689 = load i64, i64* %RBP.i312
  %690 = sub i64 %689, 1028
  %691 = load i64, i64* %PC.i310
  %692 = add i64 %691, 6
  store i64 %692, i64* %PC.i310
  %693 = inttoptr i64 %690 to i32*
  %694 = load i32, i32* %693
  %695 = zext i32 %694 to i64
  store i64 %695, i64* %RCX.i311, align 8
  store %struct.Memory* %loadMem_413f63, %struct.Memory** %MEMORY
  %loadMem_413f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 33
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %698 to i64*
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 17
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %701 to i32*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 15
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %704 to i64*
  %705 = bitcast i32* %R8D.i to i64*
  %706 = load i64, i64* %RBP.i309
  %707 = sub i64 %706, 1032
  %708 = load i64, i64* %PC.i308
  %709 = add i64 %708, 7
  store i64 %709, i64* %PC.i308
  %710 = inttoptr i64 %707 to i32*
  %711 = load i32, i32* %710
  %712 = zext i32 %711 to i64
  store i64 %712, i64* %705, align 8
  store %struct.Memory* %loadMem_413f69, %struct.Memory** %MEMORY
  %loadMem1_413f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 33
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %715 to i64*
  %716 = load i64, i64* %PC.i307
  %717 = add i64 %716, 254240
  %718 = load i64, i64* %PC.i307
  %719 = add i64 %718, 5
  %720 = load i64, i64* %PC.i307
  %721 = add i64 %720, 5
  store i64 %721, i64* %PC.i307
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %723 = load i64, i64* %722, align 8
  %724 = add i64 %723, -8
  %725 = inttoptr i64 %724 to i64*
  store i64 %719, i64* %725
  store i64 %724, i64* %722, align 8
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %717, i64* %726, align 8
  store %struct.Memory* %loadMem1_413f70, %struct.Memory** %MEMORY
  %loadMem2_413f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_413f70 = load i64, i64* %3
  %call2_413f70 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_413f70, %struct.Memory* %loadMem2_413f70)
  store %struct.Memory* %call2_413f70, %struct.Memory** %MEMORY
  br label %block_.L_413f75

block_.L_413f75:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_413eff
  %loadMem_413f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 33
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %729 to i64*
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 1
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %732 to i64*
  %733 = load i64, i64* %PC.i305
  %734 = add i64 %733, 10
  store i64 %734, i64* %PC.i305
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i306, align 8
  store %struct.Memory* %loadMem_413f75, %struct.Memory** %MEMORY
  %loadMem_413f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 33
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %737 to i64*
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 5
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 15
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %743 to i64*
  %744 = load i64, i64* %RBP.i304
  %745 = sub i64 %744, 4
  %746 = load i64, i64* %PC.i302
  %747 = add i64 %746, 4
  store i64 %747, i64* %PC.i302
  %748 = inttoptr i64 %745 to i32*
  %749 = load i32, i32* %748
  %750 = sext i32 %749 to i64
  store i64 %750, i64* %RCX.i303, align 8
  store %struct.Memory* %loadMem_413f7f, %struct.Memory** %MEMORY
  %loadMem_413f83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %752 = getelementptr inbounds %struct.GPR, %struct.GPR* %751, i32 0, i32 33
  %753 = getelementptr inbounds %struct.Reg, %struct.Reg* %752, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %753 to i64*
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 5
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %756 to i64*
  %757 = load i64, i64* %RCX.i301
  %758 = mul i64 %757, 4
  %759 = add i64 %758, 11187184
  %760 = load i64, i64* %PC.i300
  %761 = add i64 %760, 8
  store i64 %761, i64* %PC.i300
  %762 = inttoptr i64 %759 to i32*
  %763 = load i32, i32* %762
  %764 = sext i32 %763 to i64
  store i64 %764, i64* %RCX.i301, align 8
  store %struct.Memory* %loadMem_413f83, %struct.Memory** %MEMORY
  %loadMem_413f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 33
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %767 to i64*
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %769 = getelementptr inbounds %struct.GPR, %struct.GPR* %768, i32 0, i32 5
  %770 = getelementptr inbounds %struct.Reg, %struct.Reg* %769, i32 0, i32 0
  %RCX.i299 = bitcast %union.anon* %770 to i64*
  %771 = load i64, i64* %RCX.i299
  %772 = load i64, i64* %PC.i298
  %773 = add i64 %772, 7
  store i64 %773, i64* %PC.i298
  %774 = sext i64 %771 to i128
  %775 = and i128 %774, -18446744073709551616
  %776 = zext i64 %771 to i128
  %777 = or i128 %775, %776
  %778 = mul i128 744, %777
  %779 = trunc i128 %778 to i64
  store i64 %779, i64* %RCX.i299, align 8
  %780 = sext i64 %779 to i128
  %781 = icmp ne i128 %780, %778
  %782 = zext i1 %781 to i8
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %782, i8* %783, align 1
  %784 = trunc i128 %778 to i32
  %785 = and i32 %784, 255
  %786 = call i32 @llvm.ctpop.i32(i32 %785)
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %789, i8* %790, align 1
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %791, align 1
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %792, align 1
  %793 = lshr i64 %779, 63
  %794 = trunc i64 %793 to i8
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %794, i8* %795, align 1
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %782, i8* %796, align 1
  store %struct.Memory* %loadMem_413f8b, %struct.Memory** %MEMORY
  %loadMem_413f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 33
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %799 to i64*
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 1
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %802 to i64*
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 5
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %805 to i64*
  %806 = load i64, i64* %RAX.i296
  %807 = load i64, i64* %RCX.i297
  %808 = load i64, i64* %PC.i295
  %809 = add i64 %808, 3
  store i64 %809, i64* %PC.i295
  %810 = add i64 %807, %806
  store i64 %810, i64* %RAX.i296, align 8
  %811 = icmp ult i64 %810, %806
  %812 = icmp ult i64 %810, %807
  %813 = or i1 %811, %812
  %814 = zext i1 %813 to i8
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %814, i8* %815, align 1
  %816 = trunc i64 %810 to i32
  %817 = and i32 %816, 255
  %818 = call i32 @llvm.ctpop.i32(i32 %817)
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = xor i8 %820, 1
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %821, i8* %822, align 1
  %823 = xor i64 %807, %806
  %824 = xor i64 %823, %810
  %825 = lshr i64 %824, 4
  %826 = trunc i64 %825 to i8
  %827 = and i8 %826, 1
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %827, i8* %828, align 1
  %829 = icmp eq i64 %810, 0
  %830 = zext i1 %829 to i8
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %830, i8* %831, align 1
  %832 = lshr i64 %810, 63
  %833 = trunc i64 %832 to i8
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %833, i8* %834, align 1
  %835 = lshr i64 %806, 63
  %836 = lshr i64 %807, 63
  %837 = xor i64 %832, %835
  %838 = xor i64 %832, %836
  %839 = add i64 %837, %838
  %840 = icmp eq i64 %839, 2
  %841 = zext i1 %840 to i8
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %841, i8* %842, align 1
  store %struct.Memory* %loadMem_413f92, %struct.Memory** %MEMORY
  %loadMem_413f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 33
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %845 to i64*
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 1
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 15
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %851 to i64*
  %852 = load i64, i64* %RBP.i294
  %853 = sub i64 %852, 32
  %854 = load i64, i64* %RAX.i293
  %855 = load i64, i64* %PC.i292
  %856 = add i64 %855, 4
  store i64 %856, i64* %PC.i292
  %857 = inttoptr i64 %853 to i64*
  store i64 %854, i64* %857
  store %struct.Memory* %loadMem_413f95, %struct.Memory** %MEMORY
  %loadMem_413f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 7
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %RDX.i291 = bitcast %union.anon* %863 to i64*
  %864 = load i64, i64* %PC.i290
  %865 = add i64 %864, 7
  store i64 %865, i64* %PC.i290
  %866 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %867 = zext i32 %866 to i64
  store i64 %867, i64* %RDX.i291, align 8
  store %struct.Memory* %loadMem_413f99, %struct.Memory** %MEMORY
  %loadMem_413fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 33
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %870 to i64*
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 7
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %RDX.i289 = bitcast %union.anon* %873 to i64*
  %874 = load i64, i64* %RDX.i289
  %875 = load i64, i64* %PC.i288
  %876 = add i64 %875, 3
  store i64 %876, i64* %PC.i288
  %877 = trunc i64 %874 to i32
  %878 = add i32 1, %877
  %879 = zext i32 %878 to i64
  store i64 %879, i64* %RDX.i289, align 8
  %880 = icmp ult i32 %878, %877
  %881 = icmp ult i32 %878, 1
  %882 = or i1 %880, %881
  %883 = zext i1 %882 to i8
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %883, i8* %884, align 1
  %885 = and i32 %878, 255
  %886 = call i32 @llvm.ctpop.i32(i32 %885)
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = xor i8 %888, 1
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %889, i8* %890, align 1
  %891 = xor i64 1, %874
  %892 = trunc i64 %891 to i32
  %893 = xor i32 %892, %878
  %894 = lshr i32 %893, 4
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %896, i8* %897, align 1
  %898 = icmp eq i32 %878, 0
  %899 = zext i1 %898 to i8
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %899, i8* %900, align 1
  %901 = lshr i32 %878, 31
  %902 = trunc i32 %901 to i8
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %902, i8* %903, align 1
  %904 = lshr i32 %877, 31
  %905 = xor i32 %901, %904
  %906 = add i32 %905, %901
  %907 = icmp eq i32 %906, 2
  %908 = zext i1 %907 to i8
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %908, i8* %909, align 1
  store %struct.Memory* %loadMem_413fa0, %struct.Memory** %MEMORY
  %loadMem_413fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 33
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %912 to i64*
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 7
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %EDX.i287 = bitcast %union.anon* %915 to i32*
  %916 = load i32, i32* %EDX.i287
  %917 = zext i32 %916 to i64
  %918 = load i64, i64* %PC.i286
  %919 = add i64 %918, 7
  store i64 %919, i64* %PC.i286
  store i32 %916, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  store %struct.Memory* %loadMem_413fa3, %struct.Memory** %MEMORY
  %loadMem_413faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 15
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %925 to i64*
  %926 = load i64, i64* %RBP.i285
  %927 = sub i64 %926, 36
  %928 = load i64, i64* %PC.i284
  %929 = add i64 %928, 7
  store i64 %929, i64* %PC.i284
  %930 = inttoptr i64 %927 to i32*
  store i32 0, i32* %930
  store %struct.Memory* %loadMem_413faa, %struct.Memory** %MEMORY
  br label %block_.L_413fb1

block_.L_413fb1:                                  ; preds = %block_413fc1, %block_.L_413f75
  %loadMem_413fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 1
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 15
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %939 to i64*
  %940 = load i64, i64* %RBP.i283
  %941 = sub i64 %940, 36
  %942 = load i64, i64* %PC.i281
  %943 = add i64 %942, 3
  store i64 %943, i64* %PC.i281
  %944 = inttoptr i64 %941 to i32*
  %945 = load i32, i32* %944
  %946 = zext i32 %945 to i64
  store i64 %946, i64* %RAX.i282, align 8
  store %struct.Memory* %loadMem_413fb1, %struct.Memory** %MEMORY
  %loadMem_413fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 33
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %949 to i64*
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 5
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %952 to i64*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 15
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %955 to i64*
  %956 = load i64, i64* %RBP.i280
  %957 = sub i64 %956, 32
  %958 = load i64, i64* %PC.i278
  %959 = add i64 %958, 4
  store i64 %959, i64* %PC.i278
  %960 = inttoptr i64 %957 to i64*
  %961 = load i64, i64* %960
  store i64 %961, i64* %RCX.i279, align 8
  store %struct.Memory* %loadMem_413fb4, %struct.Memory** %MEMORY
  %loadMem_413fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 33
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %964 to i64*
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 1
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %EAX.i276 = bitcast %union.anon* %967 to i32*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 5
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %970 to i64*
  %971 = load i32, i32* %EAX.i276
  %972 = zext i32 %971 to i64
  %973 = load i64, i64* %RCX.i277
  %974 = add i64 %973, 96
  %975 = load i64, i64* %PC.i275
  %976 = add i64 %975, 3
  store i64 %976, i64* %PC.i275
  %977 = inttoptr i64 %974 to i32*
  %978 = load i32, i32* %977
  %979 = sub i32 %971, %978
  %980 = icmp ult i32 %971, %978
  %981 = zext i1 %980 to i8
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %981, i8* %982, align 1
  %983 = and i32 %979, 255
  %984 = call i32 @llvm.ctpop.i32(i32 %983)
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  %987 = xor i8 %986, 1
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %987, i8* %988, align 1
  %989 = xor i32 %978, %971
  %990 = xor i32 %989, %979
  %991 = lshr i32 %990, 4
  %992 = trunc i32 %991 to i8
  %993 = and i8 %992, 1
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %993, i8* %994, align 1
  %995 = icmp eq i32 %979, 0
  %996 = zext i1 %995 to i8
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %996, i8* %997, align 1
  %998 = lshr i32 %979, 31
  %999 = trunc i32 %998 to i8
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %999, i8* %1000, align 1
  %1001 = lshr i32 %971, 31
  %1002 = lshr i32 %978, 31
  %1003 = xor i32 %1002, %1001
  %1004 = xor i32 %998, %1001
  %1005 = add i32 %1004, %1003
  %1006 = icmp eq i32 %1005, 2
  %1007 = zext i1 %1006 to i8
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1007, i8* %1008, align 1
  store %struct.Memory* %loadMem_413fb8, %struct.Memory** %MEMORY
  %loadMem_413fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 33
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %1011 to i64*
  %1012 = load i64, i64* %PC.i274
  %1013 = add i64 %1012, 113
  %1014 = load i64, i64* %PC.i274
  %1015 = add i64 %1014, 6
  %1016 = load i64, i64* %PC.i274
  %1017 = add i64 %1016, 6
  store i64 %1017, i64* %PC.i274
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1019 = load i8, i8* %1018, align 1
  %1020 = icmp ne i8 %1019, 0
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1022 = load i8, i8* %1021, align 1
  %1023 = icmp ne i8 %1022, 0
  %1024 = xor i1 %1020, %1023
  %1025 = xor i1 %1024, true
  %1026 = zext i1 %1025 to i8
  store i8 %1026, i8* %BRANCH_TAKEN, align 1
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1028 = select i1 %1024, i64 %1015, i64 %1013
  store i64 %1028, i64* %1027, align 8
  store %struct.Memory* %loadMem_413fbb, %struct.Memory** %MEMORY
  %loadBr_413fbb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413fbb = icmp eq i8 %loadBr_413fbb, 1
  br i1 %cmpBr_413fbb, label %block_.L_41402c, label %block_413fc1

block_413fc1:                                     ; preds = %block_.L_413fb1
  %loadMem_413fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 33
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1031 to i64*
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 1
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %1034 to i64*
  %1035 = load i64, i64* %PC.i272
  %1036 = add i64 %1035, 10
  store i64 %1036, i64* %PC.i272
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i273, align 8
  store %struct.Memory* %loadMem_413fc1, %struct.Memory** %MEMORY
  %loadMem_413fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 33
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1039 to i64*
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 5
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %1042 to i64*
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 15
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %1045 to i64*
  %1046 = load i64, i64* %RBP.i271
  %1047 = sub i64 %1046, 32
  %1048 = load i64, i64* %PC.i269
  %1049 = add i64 %1048, 4
  store i64 %1049, i64* %PC.i269
  %1050 = inttoptr i64 %1047 to i64*
  %1051 = load i64, i64* %1050
  store i64 %1051, i64* %RCX.i270, align 8
  store %struct.Memory* %loadMem_413fcb, %struct.Memory** %MEMORY
  %loadMem_413fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 33
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %1054 to i64*
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1056 = getelementptr inbounds %struct.GPR, %struct.GPR* %1055, i32 0, i32 7
  %1057 = getelementptr inbounds %struct.Reg, %struct.Reg* %1056, i32 0, i32 0
  %RDX.i267 = bitcast %union.anon* %1057 to i64*
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 15
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %1060 to i64*
  %1061 = load i64, i64* %RBP.i268
  %1062 = sub i64 %1061, 36
  %1063 = load i64, i64* %PC.i266
  %1064 = add i64 %1063, 4
  store i64 %1064, i64* %PC.i266
  %1065 = inttoptr i64 %1062 to i32*
  %1066 = load i32, i32* %1065
  %1067 = sext i32 %1066 to i64
  store i64 %1067, i64* %RDX.i267, align 8
  store %struct.Memory* %loadMem_413fcf, %struct.Memory** %MEMORY
  %loadMem_413fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 33
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 5
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %1073 to i64*
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 7
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %RDX.i265 = bitcast %union.anon* %1076 to i64*
  %1077 = load i64, i64* %RCX.i264
  %1078 = load i64, i64* %RDX.i265
  %1079 = mul i64 %1078, 4
  %1080 = add i64 %1077, 100
  %1081 = add i64 %1080, %1079
  %1082 = load i64, i64* %PC.i263
  %1083 = add i64 %1082, 5
  store i64 %1083, i64* %PC.i263
  %1084 = inttoptr i64 %1081 to i32*
  %1085 = load i32, i32* %1084
  %1086 = sext i32 %1085 to i64
  store i64 %1086, i64* %RCX.i264, align 8
  store %struct.Memory* %loadMem_413fd3, %struct.Memory** %MEMORY
  %loadMem_413fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 33
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %1089 to i64*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 5
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %1092 to i64*
  %1093 = load i64, i64* %RCX.i262
  %1094 = load i64, i64* %PC.i261
  %1095 = add i64 %1094, 7
  store i64 %1095, i64* %PC.i261
  %1096 = sext i64 %1093 to i128
  %1097 = and i128 %1096, -18446744073709551616
  %1098 = zext i64 %1093 to i128
  %1099 = or i128 %1097, %1098
  %1100 = mul i128 744, %1099
  %1101 = trunc i128 %1100 to i64
  store i64 %1101, i64* %RCX.i262, align 8
  %1102 = sext i64 %1101 to i128
  %1103 = icmp ne i128 %1102, %1100
  %1104 = zext i1 %1103 to i8
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1104, i8* %1105, align 1
  %1106 = trunc i128 %1100 to i32
  %1107 = and i32 %1106, 255
  %1108 = call i32 @llvm.ctpop.i32(i32 %1107)
  %1109 = trunc i32 %1108 to i8
  %1110 = and i8 %1109, 1
  %1111 = xor i8 %1110, 1
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1111, i8* %1112, align 1
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1113, align 1
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1114, align 1
  %1115 = lshr i64 %1101, 63
  %1116 = trunc i64 %1115 to i8
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1116, i8* %1117, align 1
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1104, i8* %1118, align 1
  store %struct.Memory* %loadMem_413fd8, %struct.Memory** %MEMORY
  %loadMem_413fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 33
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %1121 to i64*
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 1
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %1124 to i64*
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 7
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %RDX.i260 = bitcast %union.anon* %1127 to i64*
  %1128 = load i64, i64* %RAX.i259
  %1129 = load i64, i64* %PC.i258
  %1130 = add i64 %1129, 3
  store i64 %1130, i64* %PC.i258
  store i64 %1128, i64* %RDX.i260, align 8
  store %struct.Memory* %loadMem_413fdf, %struct.Memory** %MEMORY
  %loadMem_413fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 33
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %1133 to i64*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 5
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %1136 to i64*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 7
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %RDX.i257 = bitcast %union.anon* %1139 to i64*
  %1140 = load i64, i64* %RDX.i257
  %1141 = load i64, i64* %RCX.i256
  %1142 = load i64, i64* %PC.i255
  %1143 = add i64 %1142, 3
  store i64 %1143, i64* %PC.i255
  %1144 = add i64 %1141, %1140
  store i64 %1144, i64* %RDX.i257, align 8
  %1145 = icmp ult i64 %1144, %1140
  %1146 = icmp ult i64 %1144, %1141
  %1147 = or i1 %1145, %1146
  %1148 = zext i1 %1147 to i8
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1148, i8* %1149, align 1
  %1150 = trunc i64 %1144 to i32
  %1151 = and i32 %1150, 255
  %1152 = call i32 @llvm.ctpop.i32(i32 %1151)
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  %1155 = xor i8 %1154, 1
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1155, i8* %1156, align 1
  %1157 = xor i64 %1141, %1140
  %1158 = xor i64 %1157, %1144
  %1159 = lshr i64 %1158, 4
  %1160 = trunc i64 %1159 to i8
  %1161 = and i8 %1160, 1
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1161, i8* %1162, align 1
  %1163 = icmp eq i64 %1144, 0
  %1164 = zext i1 %1163 to i8
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1164, i8* %1165, align 1
  %1166 = lshr i64 %1144, 63
  %1167 = trunc i64 %1166 to i8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1167, i8* %1168, align 1
  %1169 = lshr i64 %1140, 63
  %1170 = lshr i64 %1141, 63
  %1171 = xor i64 %1166, %1169
  %1172 = xor i64 %1166, %1170
  %1173 = add i64 %1171, %1172
  %1174 = icmp eq i64 %1173, 2
  %1175 = zext i1 %1174 to i8
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1175, i8* %1176, align 1
  store %struct.Memory* %loadMem_413fe2, %struct.Memory** %MEMORY
  %loadMem_413fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 33
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %1179 to i64*
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 7
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %RDX.i253 = bitcast %union.anon* %1182 to i64*
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 9
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %RSI.i254 = bitcast %union.anon* %1185 to i64*
  %1186 = load i64, i64* %RDX.i253
  %1187 = add i64 %1186, 8
  %1188 = load i64, i64* %PC.i252
  %1189 = add i64 %1188, 3
  store i64 %1189, i64* %PC.i252
  %1190 = inttoptr i64 %1187 to i32*
  %1191 = load i32, i32* %1190
  %1192 = zext i32 %1191 to i64
  store i64 %1192, i64* %RSI.i254, align 8
  store %struct.Memory* %loadMem_413fe5, %struct.Memory** %MEMORY
  %loadMem_413fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 33
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 5
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %1198 to i64*
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 15
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %1201 to i64*
  %1202 = load i64, i64* %RBP.i251
  %1203 = sub i64 %1202, 16
  %1204 = load i64, i64* %PC.i249
  %1205 = add i64 %1204, 4
  store i64 %1205, i64* %PC.i249
  %1206 = inttoptr i64 %1203 to i64*
  %1207 = load i64, i64* %1206
  store i64 %1207, i64* %RCX.i250, align 8
  store %struct.Memory* %loadMem_413fe8, %struct.Memory** %MEMORY
  %loadMem_413fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 33
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %1210 to i64*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 7
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %RDX.i247 = bitcast %union.anon* %1213 to i64*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 15
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %1216 to i64*
  %1217 = load i64, i64* %RBP.i248
  %1218 = sub i64 %1217, 36
  %1219 = load i64, i64* %PC.i246
  %1220 = add i64 %1219, 4
  store i64 %1220, i64* %PC.i246
  %1221 = inttoptr i64 %1218 to i32*
  %1222 = load i32, i32* %1221
  %1223 = sext i32 %1222 to i64
  store i64 %1223, i64* %RDX.i247, align 8
  store %struct.Memory* %loadMem_413fec, %struct.Memory** %MEMORY
  %loadMem_413ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 33
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1226 to i64*
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 9
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %ESI.i243 = bitcast %union.anon* %1229 to i32*
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 5
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %RCX.i244 = bitcast %union.anon* %1232 to i64*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 7
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %RDX.i245 = bitcast %union.anon* %1235 to i64*
  %1236 = load i64, i64* %RCX.i244
  %1237 = load i64, i64* %RDX.i245
  %1238 = mul i64 %1237, 4
  %1239 = add i64 %1238, %1236
  %1240 = load i32, i32* %ESI.i243
  %1241 = zext i32 %1240 to i64
  %1242 = load i64, i64* %PC.i242
  %1243 = add i64 %1242, 3
  store i64 %1243, i64* %PC.i242
  %1244 = inttoptr i64 %1239 to i32*
  store i32 %1240, i32* %1244
  store %struct.Memory* %loadMem_413ff0, %struct.Memory** %MEMORY
  %loadMem_413ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 33
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %1247 to i64*
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 9
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %RSI.i241 = bitcast %union.anon* %1250 to i64*
  %1251 = load i64, i64* %PC.i240
  %1252 = add i64 %1251, 7
  store i64 %1252, i64* %PC.i240
  %1253 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %1254 = zext i32 %1253 to i64
  store i64 %1254, i64* %RSI.i241, align 8
  store %struct.Memory* %loadMem_413ff3, %struct.Memory** %MEMORY
  %loadMem_413ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 33
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1257 to i64*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 5
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %RCX.i238 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 15
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %RBP.i239
  %1265 = sub i64 %1264, 16
  %1266 = load i64, i64* %PC.i237
  %1267 = add i64 %1266, 4
  store i64 %1267, i64* %PC.i237
  %1268 = inttoptr i64 %1265 to i64*
  %1269 = load i64, i64* %1268
  store i64 %1269, i64* %RCX.i238, align 8
  store %struct.Memory* %loadMem_413ffa, %struct.Memory** %MEMORY
  %loadMem_413ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 33
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 7
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %RDX.i235 = bitcast %union.anon* %1275 to i64*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 15
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %1278 to i64*
  %1279 = load i64, i64* %RBP.i236
  %1280 = sub i64 %1279, 36
  %1281 = load i64, i64* %PC.i234
  %1282 = add i64 %1281, 4
  store i64 %1282, i64* %PC.i234
  %1283 = inttoptr i64 %1280 to i32*
  %1284 = load i32, i32* %1283
  %1285 = sext i32 %1284 to i64
  store i64 %1285, i64* %RDX.i235, align 8
  store %struct.Memory* %loadMem_413ffe, %struct.Memory** %MEMORY
  %loadMem_414002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 5
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RCX.i232 = bitcast %union.anon* %1291 to i64*
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 7
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %RDX.i233 = bitcast %union.anon* %1294 to i64*
  %1295 = load i64, i64* %RCX.i232
  %1296 = load i64, i64* %RDX.i233
  %1297 = mul i64 %1296, 4
  %1298 = add i64 %1297, %1295
  %1299 = load i64, i64* %PC.i231
  %1300 = add i64 %1299, 4
  store i64 %1300, i64* %PC.i231
  %1301 = inttoptr i64 %1298 to i32*
  %1302 = load i32, i32* %1301
  %1303 = sext i32 %1302 to i64
  store i64 %1303, i64* %RCX.i232, align 8
  store %struct.Memory* %loadMem_414002, %struct.Memory** %MEMORY
  %loadMem_414006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 33
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %1306 to i64*
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 5
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %RCX.i230 = bitcast %union.anon* %1309 to i64*
  %1310 = load i64, i64* %RCX.i230
  %1311 = mul i64 %1310, 4
  %1312 = add i64 %1311, 11187184
  %1313 = load i64, i64* %PC.i229
  %1314 = add i64 %1313, 8
  store i64 %1314, i64* %PC.i229
  %1315 = inttoptr i64 %1312 to i32*
  %1316 = load i32, i32* %1315
  %1317 = sext i32 %1316 to i64
  store i64 %1317, i64* %RCX.i230, align 8
  store %struct.Memory* %loadMem_414006, %struct.Memory** %MEMORY
  %loadMem_41400e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 33
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1320 to i64*
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 5
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %RCX.i228 = bitcast %union.anon* %1323 to i64*
  %1324 = load i64, i64* %RCX.i228
  %1325 = load i64, i64* %PC.i227
  %1326 = add i64 %1325, 7
  store i64 %1326, i64* %PC.i227
  %1327 = sext i64 %1324 to i128
  %1328 = and i128 %1327, -18446744073709551616
  %1329 = zext i64 %1324 to i128
  %1330 = or i128 %1328, %1329
  %1331 = mul i128 744, %1330
  %1332 = trunc i128 %1331 to i64
  store i64 %1332, i64* %RCX.i228, align 8
  %1333 = sext i64 %1332 to i128
  %1334 = icmp ne i128 %1333, %1331
  %1335 = zext i1 %1334 to i8
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1335, i8* %1336, align 1
  %1337 = trunc i128 %1331 to i32
  %1338 = and i32 %1337, 255
  %1339 = call i32 @llvm.ctpop.i32(i32 %1338)
  %1340 = trunc i32 %1339 to i8
  %1341 = and i8 %1340, 1
  %1342 = xor i8 %1341, 1
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1342, i8* %1343, align 1
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1344, align 1
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1345, align 1
  %1346 = lshr i64 %1332, 63
  %1347 = trunc i64 %1346 to i8
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1347, i8* %1348, align 1
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1335, i8* %1349, align 1
  store %struct.Memory* %loadMem_41400e, %struct.Memory** %MEMORY
  %loadMem_414015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 33
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1352 to i64*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 1
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %1355 to i64*
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 5
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %1358 to i64*
  %1359 = load i64, i64* %RAX.i225
  %1360 = load i64, i64* %RCX.i226
  %1361 = load i64, i64* %PC.i224
  %1362 = add i64 %1361, 3
  store i64 %1362, i64* %PC.i224
  %1363 = add i64 %1360, %1359
  store i64 %1363, i64* %RAX.i225, align 8
  %1364 = icmp ult i64 %1363, %1359
  %1365 = icmp ult i64 %1363, %1360
  %1366 = or i1 %1364, %1365
  %1367 = zext i1 %1366 to i8
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1367, i8* %1368, align 1
  %1369 = trunc i64 %1363 to i32
  %1370 = and i32 %1369, 255
  %1371 = call i32 @llvm.ctpop.i32(i32 %1370)
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  %1374 = xor i8 %1373, 1
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1374, i8* %1375, align 1
  %1376 = xor i64 %1360, %1359
  %1377 = xor i64 %1376, %1363
  %1378 = lshr i64 %1377, 4
  %1379 = trunc i64 %1378 to i8
  %1380 = and i8 %1379, 1
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1380, i8* %1381, align 1
  %1382 = icmp eq i64 %1363, 0
  %1383 = zext i1 %1382 to i8
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1383, i8* %1384, align 1
  %1385 = lshr i64 %1363, 63
  %1386 = trunc i64 %1385 to i8
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1386, i8* %1387, align 1
  %1388 = lshr i64 %1359, 63
  %1389 = lshr i64 %1360, 63
  %1390 = xor i64 %1385, %1388
  %1391 = xor i64 %1385, %1389
  %1392 = add i64 %1390, %1391
  %1393 = icmp eq i64 %1392, 2
  %1394 = zext i1 %1393 to i8
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1394, i8* %1395, align 1
  store %struct.Memory* %loadMem_414015, %struct.Memory** %MEMORY
  %loadMem_414018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 33
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %1398 to i64*
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 9
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %ESI.i222 = bitcast %union.anon* %1401 to i32*
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 1
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %1404 to i64*
  %1405 = load i64, i64* %RAX.i223
  %1406 = add i64 %1405, 740
  %1407 = load i32, i32* %ESI.i222
  %1408 = zext i32 %1407 to i64
  %1409 = load i64, i64* %PC.i221
  %1410 = add i64 %1409, 6
  store i64 %1410, i64* %PC.i221
  %1411 = inttoptr i64 %1406 to i32*
  store i32 %1407, i32* %1411
  store %struct.Memory* %loadMem_414018, %struct.Memory** %MEMORY
  %loadMem_41401e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 33
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 1
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %1417 to i64*
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 15
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %1420 to i64*
  %1421 = load i64, i64* %RBP.i220
  %1422 = sub i64 %1421, 36
  %1423 = load i64, i64* %PC.i218
  %1424 = add i64 %1423, 3
  store i64 %1424, i64* %PC.i218
  %1425 = inttoptr i64 %1422 to i32*
  %1426 = load i32, i32* %1425
  %1427 = zext i32 %1426 to i64
  store i64 %1427, i64* %RAX.i219, align 8
  store %struct.Memory* %loadMem_41401e, %struct.Memory** %MEMORY
  %loadMem_414021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 33
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1430 to i64*
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 1
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %1433 to i64*
  %1434 = load i64, i64* %RAX.i217
  %1435 = load i64, i64* %PC.i216
  %1436 = add i64 %1435, 3
  store i64 %1436, i64* %PC.i216
  %1437 = trunc i64 %1434 to i32
  %1438 = add i32 1, %1437
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RAX.i217, align 8
  %1440 = icmp ult i32 %1438, %1437
  %1441 = icmp ult i32 %1438, 1
  %1442 = or i1 %1440, %1441
  %1443 = zext i1 %1442 to i8
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1443, i8* %1444, align 1
  %1445 = and i32 %1438, 255
  %1446 = call i32 @llvm.ctpop.i32(i32 %1445)
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  %1449 = xor i8 %1448, 1
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1449, i8* %1450, align 1
  %1451 = xor i64 1, %1434
  %1452 = trunc i64 %1451 to i32
  %1453 = xor i32 %1452, %1438
  %1454 = lshr i32 %1453, 4
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1456, i8* %1457, align 1
  %1458 = icmp eq i32 %1438, 0
  %1459 = zext i1 %1458 to i8
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1459, i8* %1460, align 1
  %1461 = lshr i32 %1438, 31
  %1462 = trunc i32 %1461 to i8
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1462, i8* %1463, align 1
  %1464 = lshr i32 %1437, 31
  %1465 = xor i32 %1461, %1464
  %1466 = add i32 %1465, %1461
  %1467 = icmp eq i32 %1466, 2
  %1468 = zext i1 %1467 to i8
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1468, i8* %1469, align 1
  store %struct.Memory* %loadMem_414021, %struct.Memory** %MEMORY
  %loadMem_414024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 33
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1472 to i64*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 1
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %EAX.i214 = bitcast %union.anon* %1475 to i32*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 15
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %1478 to i64*
  %1479 = load i64, i64* %RBP.i215
  %1480 = sub i64 %1479, 36
  %1481 = load i32, i32* %EAX.i214
  %1482 = zext i32 %1481 to i64
  %1483 = load i64, i64* %PC.i213
  %1484 = add i64 %1483, 3
  store i64 %1484, i64* %PC.i213
  %1485 = inttoptr i64 %1480 to i32*
  store i32 %1481, i32* %1485
  store %struct.Memory* %loadMem_414024, %struct.Memory** %MEMORY
  %loadMem_414027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 33
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %1488 to i64*
  %1489 = load i64, i64* %PC.i212
  %1490 = add i64 %1489, -118
  %1491 = load i64, i64* %PC.i212
  %1492 = add i64 %1491, 5
  store i64 %1492, i64* %PC.i212
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1490, i64* %1493, align 8
  store %struct.Memory* %loadMem_414027, %struct.Memory** %MEMORY
  br label %block_.L_413fb1

block_.L_41402c:                                  ; preds = %block_.L_413fb1
  %loadMem_41402c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 33
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1496 to i64*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 9
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %RSI.i211 = bitcast %union.anon* %1499 to i64*
  %1500 = load i64, i64* %PC.i210
  %1501 = add i64 %1500, 5
  store i64 %1501, i64* %PC.i210
  store i64 241, i64* %RSI.i211, align 8
  store %struct.Memory* %loadMem_41402c, %struct.Memory** %MEMORY
  %loadMem_414031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 33
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %1504 to i64*
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 7
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %RDX.i208 = bitcast %union.anon* %1507 to i64*
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1509 = getelementptr inbounds %struct.GPR, %struct.GPR* %1508, i32 0, i32 15
  %1510 = getelementptr inbounds %struct.Reg, %struct.Reg* %1509, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %1510 to i64*
  %1511 = load i64, i64* %RBP.i209
  %1512 = sub i64 %1511, 1008
  %1513 = load i64, i64* %PC.i207
  %1514 = add i64 %1513, 7
  store i64 %1514, i64* %PC.i207
  store i64 %1512, i64* %RDX.i208, align 8
  store %struct.Memory* %loadMem_414031, %struct.Memory** %MEMORY
  %loadMem_414038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 33
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1517 to i64*
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1519 = getelementptr inbounds %struct.GPR, %struct.GPR* %1518, i32 0, i32 11
  %1520 = getelementptr inbounds %struct.Reg, %struct.Reg* %1519, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1520 to i64*
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 15
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %1523 to i64*
  %1524 = load i64, i64* %RBP.i206
  %1525 = sub i64 %1524, 4
  %1526 = load i64, i64* %PC.i205
  %1527 = add i64 %1526, 3
  store i64 %1527, i64* %PC.i205
  %1528 = inttoptr i64 %1525 to i32*
  %1529 = load i32, i32* %1528
  %1530 = zext i32 %1529 to i64
  store i64 %1530, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_414038, %struct.Memory** %MEMORY
  %loadMem1_41403b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 33
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %1533 to i64*
  %1534 = load i64, i64* %PC.i204
  %1535 = add i64 %1534, -18427
  %1536 = load i64, i64* %PC.i204
  %1537 = add i64 %1536, 5
  %1538 = load i64, i64* %PC.i204
  %1539 = add i64 %1538, 5
  store i64 %1539, i64* %PC.i204
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1541 = load i64, i64* %1540, align 8
  %1542 = add i64 %1541, -8
  %1543 = inttoptr i64 %1542 to i64*
  store i64 %1537, i64* %1543
  store i64 %1542, i64* %1540, align 8
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1535, i64* %1544, align 8
  store %struct.Memory* %loadMem1_41403b, %struct.Memory** %MEMORY
  %loadMem2_41403b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41403b = load i64, i64* %3
  %call2_41403b = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_41403b, %struct.Memory* %loadMem2_41403b)
  store %struct.Memory* %call2_41403b, %struct.Memory** %MEMORY
  %loadMem_414040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 33
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 1
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %EAX.i202 = bitcast %union.anon* %1550 to i32*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 15
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %1553 to i64*
  %1554 = load i64, i64* %RBP.i203
  %1555 = sub i64 %1554, 1012
  %1556 = load i32, i32* %EAX.i202
  %1557 = zext i32 %1556 to i64
  %1558 = load i64, i64* %PC.i201
  %1559 = add i64 %1558, 6
  store i64 %1559, i64* %PC.i201
  %1560 = inttoptr i64 %1555 to i32*
  store i32 %1556, i32* %1560
  store %struct.Memory* %loadMem_414040, %struct.Memory** %MEMORY
  %loadMem_414046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 33
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1563 to i64*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 15
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %1566 to i64*
  %1567 = load i64, i64* %RBP.i200
  %1568 = sub i64 %1567, 44
  %1569 = load i64, i64* %PC.i199
  %1570 = add i64 %1569, 7
  store i64 %1570, i64* %PC.i199
  %1571 = inttoptr i64 %1568 to i32*
  store i32 0, i32* %1571
  store %struct.Memory* %loadMem_414046, %struct.Memory** %MEMORY
  br label %block_.L_41404d

block_.L_41404d:                                  ; preds = %block_.L_4141c2, %block_.L_41402c
  %loadMem_41404d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 33
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 1
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 15
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %1580 to i64*
  %1581 = load i64, i64* %RBP.i198
  %1582 = sub i64 %1581, 44
  %1583 = load i64, i64* %PC.i196
  %1584 = add i64 %1583, 3
  store i64 %1584, i64* %PC.i196
  %1585 = inttoptr i64 %1582 to i32*
  %1586 = load i32, i32* %1585
  %1587 = zext i32 %1586 to i64
  store i64 %1587, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_41404d, %struct.Memory** %MEMORY
  %loadMem_414050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 33
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 1
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %EAX.i194 = bitcast %union.anon* %1593 to i32*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 15
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %1596 to i64*
  %1597 = load i32, i32* %EAX.i194
  %1598 = zext i32 %1597 to i64
  %1599 = load i64, i64* %RBP.i195
  %1600 = sub i64 %1599, 1012
  %1601 = load i64, i64* %PC.i193
  %1602 = add i64 %1601, 6
  store i64 %1602, i64* %PC.i193
  %1603 = inttoptr i64 %1600 to i32*
  %1604 = load i32, i32* %1603
  %1605 = sub i32 %1597, %1604
  %1606 = icmp ult i32 %1597, %1604
  %1607 = zext i1 %1606 to i8
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1607, i8* %1608, align 1
  %1609 = and i32 %1605, 255
  %1610 = call i32 @llvm.ctpop.i32(i32 %1609)
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  %1613 = xor i8 %1612, 1
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1613, i8* %1614, align 1
  %1615 = xor i32 %1604, %1597
  %1616 = xor i32 %1615, %1605
  %1617 = lshr i32 %1616, 4
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1619, i8* %1620, align 1
  %1621 = icmp eq i32 %1605, 0
  %1622 = zext i1 %1621 to i8
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1622, i8* %1623, align 1
  %1624 = lshr i32 %1605, 31
  %1625 = trunc i32 %1624 to i8
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1625, i8* %1626, align 1
  %1627 = lshr i32 %1597, 31
  %1628 = lshr i32 %1604, 31
  %1629 = xor i32 %1628, %1627
  %1630 = xor i32 %1624, %1627
  %1631 = add i32 %1630, %1629
  %1632 = icmp eq i32 %1631, 2
  %1633 = zext i1 %1632 to i8
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1633, i8* %1634, align 1
  store %struct.Memory* %loadMem_414050, %struct.Memory** %MEMORY
  %loadMem_414056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 33
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %1637 to i64*
  %1638 = load i64, i64* %PC.i192
  %1639 = add i64 %1638, 378
  %1640 = load i64, i64* %PC.i192
  %1641 = add i64 %1640, 6
  %1642 = load i64, i64* %PC.i192
  %1643 = add i64 %1642, 6
  store i64 %1643, i64* %PC.i192
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1645 = load i8, i8* %1644, align 1
  %1646 = icmp ne i8 %1645, 0
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1648 = load i8, i8* %1647, align 1
  %1649 = icmp ne i8 %1648, 0
  %1650 = xor i1 %1646, %1649
  %1651 = xor i1 %1650, true
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %BRANCH_TAKEN, align 1
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1654 = select i1 %1650, i64 %1641, i64 %1639
  store i64 %1654, i64* %1653, align 8
  store %struct.Memory* %loadMem_414056, %struct.Memory** %MEMORY
  %loadBr_414056 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414056 = icmp eq i8 %loadBr_414056, 1
  br i1 %cmpBr_414056, label %block_.L_4141d0, label %block_41405c

block_41405c:                                     ; preds = %block_.L_41404d
  %loadMem_41405c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 33
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %1657 to i64*
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 15
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %1660 to i64*
  %1661 = load i64, i64* %RBP.i191
  %1662 = sub i64 %1661, 40
  %1663 = load i64, i64* %PC.i190
  %1664 = add i64 %1663, 7
  store i64 %1664, i64* %PC.i190
  %1665 = inttoptr i64 %1662 to i32*
  store i32 0, i32* %1665
  store %struct.Memory* %loadMem_41405c, %struct.Memory** %MEMORY
  br label %block_.L_414063

block_.L_414063:                                  ; preds = %block_.L_4141af, %block_41405c
  %loadMem_414063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 33
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 15
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %1671 to i64*
  %1672 = load i64, i64* %RBP.i189
  %1673 = sub i64 %1672, 40
  %1674 = load i64, i64* %PC.i188
  %1675 = add i64 %1674, 4
  store i64 %1675, i64* %PC.i188
  %1676 = inttoptr i64 %1673 to i32*
  %1677 = load i32, i32* %1676
  %1678 = sub i32 %1677, 4
  %1679 = icmp ult i32 %1677, 4
  %1680 = zext i1 %1679 to i8
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1680, i8* %1681, align 1
  %1682 = and i32 %1678, 255
  %1683 = call i32 @llvm.ctpop.i32(i32 %1682)
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  %1686 = xor i8 %1685, 1
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1686, i8* %1687, align 1
  %1688 = xor i32 %1677, 4
  %1689 = xor i32 %1688, %1678
  %1690 = lshr i32 %1689, 4
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1692, i8* %1693, align 1
  %1694 = icmp eq i32 %1678, 0
  %1695 = zext i1 %1694 to i8
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1695, i8* %1696, align 1
  %1697 = lshr i32 %1678, 31
  %1698 = trunc i32 %1697 to i8
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1698, i8* %1699, align 1
  %1700 = lshr i32 %1677, 31
  %1701 = xor i32 %1697, %1700
  %1702 = add i32 %1701, %1700
  %1703 = icmp eq i32 %1702, 2
  %1704 = zext i1 %1703 to i8
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1704, i8* %1705, align 1
  store %struct.Memory* %loadMem_414063, %struct.Memory** %MEMORY
  %loadMem_414067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 33
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %1708 to i64*
  %1709 = load i64, i64* %PC.i187
  %1710 = add i64 %1709, 342
  %1711 = load i64, i64* %PC.i187
  %1712 = add i64 %1711, 6
  %1713 = load i64, i64* %PC.i187
  %1714 = add i64 %1713, 6
  store i64 %1714, i64* %PC.i187
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1716 = load i8, i8* %1715, align 1
  %1717 = icmp ne i8 %1716, 0
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1719 = load i8, i8* %1718, align 1
  %1720 = icmp ne i8 %1719, 0
  %1721 = xor i1 %1717, %1720
  %1722 = xor i1 %1721, true
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %BRANCH_TAKEN, align 1
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1725 = select i1 %1721, i64 %1712, i64 %1710
  store i64 %1725, i64* %1724, align 8
  store %struct.Memory* %loadMem_414067, %struct.Memory** %MEMORY
  %loadBr_414067 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414067 = icmp eq i8 %loadBr_414067, 1
  br i1 %cmpBr_414067, label %block_.L_4141bd, label %block_41406d

block_41406d:                                     ; preds = %block_.L_414063
  %loadMem_41406d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 33
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %1728 to i64*
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 1
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %1731 to i64*
  %1732 = load i64, i64* %PC.i185
  %1733 = add i64 %1732, 5
  store i64 %1733, i64* %PC.i185
  store i64 3, i64* %RAX.i186, align 8
  store %struct.Memory* %loadMem_41406d, %struct.Memory** %MEMORY
  %loadMem_414072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 33
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1736 to i64*
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 5
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %1739 to i64*
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 15
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %1742 to i64*
  %1743 = load i64, i64* %RBP.i184
  %1744 = sub i64 %1743, 44
  %1745 = load i64, i64* %PC.i182
  %1746 = add i64 %1745, 4
  store i64 %1746, i64* %PC.i182
  %1747 = inttoptr i64 %1744 to i32*
  %1748 = load i32, i32* %1747
  %1749 = sext i32 %1748 to i64
  store i64 %1749, i64* %RCX.i183, align 8
  store %struct.Memory* %loadMem_414072, %struct.Memory** %MEMORY
  %loadMem_414076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 33
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %1752 to i64*
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 5
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %1755 to i64*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 7
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %RDX.i180 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 15
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %1761 to i64*
  %1762 = load i64, i64* %RBP.i181
  %1763 = load i64, i64* %RCX.i179
  %1764 = mul i64 %1763, 4
  %1765 = add i64 %1762, -1008
  %1766 = add i64 %1765, %1764
  %1767 = load i64, i64* %PC.i178
  %1768 = add i64 %1767, 7
  store i64 %1768, i64* %PC.i178
  %1769 = inttoptr i64 %1766 to i32*
  %1770 = load i32, i32* %1769
  %1771 = zext i32 %1770 to i64
  store i64 %1771, i64* %RDX.i180, align 8
  store %struct.Memory* %loadMem_414076, %struct.Memory** %MEMORY
  %loadMem_41407d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 33
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %1774 to i64*
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 5
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %1777 to i64*
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 15
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %1780 to i64*
  %1781 = load i64, i64* %RBP.i177
  %1782 = sub i64 %1781, 40
  %1783 = load i64, i64* %PC.i175
  %1784 = add i64 %1783, 4
  store i64 %1784, i64* %PC.i175
  %1785 = inttoptr i64 %1782 to i32*
  %1786 = load i32, i32* %1785
  %1787 = sext i32 %1786 to i64
  store i64 %1787, i64* %RCX.i176, align 8
  store %struct.Memory* %loadMem_41407d, %struct.Memory** %MEMORY
  %loadMem_414081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 33
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %1790 to i64*
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 5
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %RCX.i173 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 7
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %RDX.i174 = bitcast %union.anon* %1796 to i64*
  %1797 = load i64, i64* %RDX.i174
  %1798 = load i64, i64* %RCX.i173
  %1799 = mul i64 %1798, 4
  %1800 = add i64 %1799, 8053168
  %1801 = load i64, i64* %PC.i172
  %1802 = add i64 %1801, 7
  store i64 %1802, i64* %PC.i172
  %1803 = trunc i64 %1797 to i32
  %1804 = inttoptr i64 %1800 to i32*
  %1805 = load i32, i32* %1804
  %1806 = add i32 %1805, %1803
  %1807 = zext i32 %1806 to i64
  store i64 %1807, i64* %RDX.i174, align 8
  %1808 = icmp ult i32 %1806, %1803
  %1809 = icmp ult i32 %1806, %1805
  %1810 = or i1 %1808, %1809
  %1811 = zext i1 %1810 to i8
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1811, i8* %1812, align 1
  %1813 = and i32 %1806, 255
  %1814 = call i32 @llvm.ctpop.i32(i32 %1813)
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1817, i8* %1818, align 1
  %1819 = xor i32 %1805, %1803
  %1820 = xor i32 %1819, %1806
  %1821 = lshr i32 %1820, 4
  %1822 = trunc i32 %1821 to i8
  %1823 = and i8 %1822, 1
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1823, i8* %1824, align 1
  %1825 = icmp eq i32 %1806, 0
  %1826 = zext i1 %1825 to i8
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1826, i8* %1827, align 1
  %1828 = lshr i32 %1806, 31
  %1829 = trunc i32 %1828 to i8
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1829, i8* %1830, align 1
  %1831 = lshr i32 %1803, 31
  %1832 = lshr i32 %1805, 31
  %1833 = xor i32 %1828, %1831
  %1834 = xor i32 %1828, %1832
  %1835 = add i32 %1833, %1834
  %1836 = icmp eq i32 %1835, 2
  %1837 = zext i1 %1836 to i8
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1837, i8* %1838, align 1
  store %struct.Memory* %loadMem_414081, %struct.Memory** %MEMORY
  %loadMem_414088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 33
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %1841 to i64*
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 7
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %EDX.i170 = bitcast %union.anon* %1844 to i32*
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 5
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %1847 to i64*
  %1848 = load i32, i32* %EDX.i170
  %1849 = zext i32 %1848 to i64
  %1850 = load i64, i64* %PC.i169
  %1851 = add i64 %1850, 3
  store i64 %1851, i64* %PC.i169
  %1852 = shl i64 %1849, 32
  %1853 = ashr exact i64 %1852, 32
  store i64 %1853, i64* %RCX.i171, align 8
  store %struct.Memory* %loadMem_414088, %struct.Memory** %MEMORY
  %loadMem_41408b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 33
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 5
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %1859 to i64*
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 7
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %RDX.i168 = bitcast %union.anon* %1862 to i64*
  %1863 = load i64, i64* %RCX.i167
  %1864 = add i64 %1863, 12099168
  %1865 = load i64, i64* %PC.i166
  %1866 = add i64 %1865, 8
  store i64 %1866, i64* %PC.i166
  %1867 = inttoptr i64 %1864 to i8*
  %1868 = load i8, i8* %1867
  %1869 = zext i8 %1868 to i64
  store i64 %1869, i64* %RDX.i168, align 8
  store %struct.Memory* %loadMem_41408b, %struct.Memory** %MEMORY
  %loadMem_414093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 33
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %1872 to i64*
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1874 = getelementptr inbounds %struct.GPR, %struct.GPR* %1873, i32 0, i32 5
  %1875 = getelementptr inbounds %struct.Reg, %struct.Reg* %1874, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %1875 to i64*
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1877 = getelementptr inbounds %struct.GPR, %struct.GPR* %1876, i32 0, i32 15
  %1878 = getelementptr inbounds %struct.Reg, %struct.Reg* %1877, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %1878 to i64*
  %1879 = load i64, i64* %RBP.i165
  %1880 = sub i64 %1879, 4
  %1881 = load i64, i64* %PC.i163
  %1882 = add i64 %1881, 4
  store i64 %1882, i64* %PC.i163
  %1883 = inttoptr i64 %1880 to i32*
  %1884 = load i32, i32* %1883
  %1885 = sext i32 %1884 to i64
  store i64 %1885, i64* %RCX.i164, align 8
  store %struct.Memory* %loadMem_414093, %struct.Memory** %MEMORY
  %loadMem_414097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 33
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %1888 to i64*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 5
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %1891 to i64*
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 9
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %RSI.i162 = bitcast %union.anon* %1894 to i64*
  %1895 = load i64, i64* %RCX.i161
  %1896 = add i64 %1895, 12099168
  %1897 = load i64, i64* %PC.i160
  %1898 = add i64 %1897, 8
  store i64 %1898, i64* %PC.i160
  %1899 = inttoptr i64 %1896 to i8*
  %1900 = load i8, i8* %1899
  %1901 = zext i8 %1900 to i64
  store i64 %1901, i64* %RSI.i162, align 8
  store %struct.Memory* %loadMem_414097, %struct.Memory** %MEMORY
  %loadMem_41409f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 33
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %1904 to i64*
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1906 = getelementptr inbounds %struct.GPR, %struct.GPR* %1905, i32 0, i32 9
  %1907 = getelementptr inbounds %struct.Reg, %struct.Reg* %1906, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %1907 to i32*
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 1
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %RAX.i159 = bitcast %union.anon* %1910 to i64*
  %1911 = load i64, i64* %RAX.i159
  %1912 = load i32, i32* %ESI.i
  %1913 = zext i32 %1912 to i64
  %1914 = load i64, i64* %PC.i158
  %1915 = add i64 %1914, 2
  store i64 %1915, i64* %PC.i158
  %1916 = trunc i64 %1911 to i32
  %1917 = sub i32 %1916, %1912
  %1918 = zext i32 %1917 to i64
  store i64 %1918, i64* %RAX.i159, align 8
  %1919 = icmp ult i32 %1916, %1912
  %1920 = zext i1 %1919 to i8
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1920, i8* %1921, align 1
  %1922 = and i32 %1917, 255
  %1923 = call i32 @llvm.ctpop.i32(i32 %1922)
  %1924 = trunc i32 %1923 to i8
  %1925 = and i8 %1924, 1
  %1926 = xor i8 %1925, 1
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1926, i8* %1927, align 1
  %1928 = xor i64 %1913, %1911
  %1929 = trunc i64 %1928 to i32
  %1930 = xor i32 %1929, %1917
  %1931 = lshr i32 %1930, 4
  %1932 = trunc i32 %1931 to i8
  %1933 = and i8 %1932, 1
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1933, i8* %1934, align 1
  %1935 = icmp eq i32 %1917, 0
  %1936 = zext i1 %1935 to i8
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1936, i8* %1937, align 1
  %1938 = lshr i32 %1917, 31
  %1939 = trunc i32 %1938 to i8
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1939, i8* %1940, align 1
  %1941 = lshr i32 %1916, 31
  %1942 = lshr i32 %1912, 31
  %1943 = xor i32 %1942, %1941
  %1944 = xor i32 %1938, %1941
  %1945 = add i32 %1944, %1943
  %1946 = icmp eq i32 %1945, 2
  %1947 = zext i1 %1946 to i8
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1947, i8* %1948, align 1
  store %struct.Memory* %loadMem_41409f, %struct.Memory** %MEMORY
  %loadMem_4140a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 33
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %1951 to i64*
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 1
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %EAX.i156 = bitcast %union.anon* %1954 to i32*
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 7
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %EDX.i157 = bitcast %union.anon* %1957 to i32*
  %1958 = load i32, i32* %EDX.i157
  %1959 = zext i32 %1958 to i64
  %1960 = load i32, i32* %EAX.i156
  %1961 = zext i32 %1960 to i64
  %1962 = load i64, i64* %PC.i155
  %1963 = add i64 %1962, 2
  store i64 %1963, i64* %PC.i155
  %1964 = sub i32 %1958, %1960
  %1965 = icmp ult i32 %1958, %1960
  %1966 = zext i1 %1965 to i8
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1966, i8* %1967, align 1
  %1968 = and i32 %1964, 255
  %1969 = call i32 @llvm.ctpop.i32(i32 %1968)
  %1970 = trunc i32 %1969 to i8
  %1971 = and i8 %1970, 1
  %1972 = xor i8 %1971, 1
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1972, i8* %1973, align 1
  %1974 = xor i64 %1961, %1959
  %1975 = trunc i64 %1974 to i32
  %1976 = xor i32 %1975, %1964
  %1977 = lshr i32 %1976, 4
  %1978 = trunc i32 %1977 to i8
  %1979 = and i8 %1978, 1
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1979, i8* %1980, align 1
  %1981 = icmp eq i32 %1964, 0
  %1982 = zext i1 %1981 to i8
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1982, i8* %1983, align 1
  %1984 = lshr i32 %1964, 31
  %1985 = trunc i32 %1984 to i8
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1985, i8* %1986, align 1
  %1987 = lshr i32 %1958, 31
  %1988 = lshr i32 %1960, 31
  %1989 = xor i32 %1988, %1987
  %1990 = xor i32 %1984, %1987
  %1991 = add i32 %1990, %1989
  %1992 = icmp eq i32 %1991, 2
  %1993 = zext i1 %1992 to i8
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1993, i8* %1994, align 1
  store %struct.Memory* %loadMem_4140a1, %struct.Memory** %MEMORY
  %loadMem_4140a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 33
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1997 to i64*
  %1998 = load i64, i64* %PC.i154
  %1999 = add i64 %1998, 69
  %2000 = load i64, i64* %PC.i154
  %2001 = add i64 %2000, 6
  %2002 = load i64, i64* %PC.i154
  %2003 = add i64 %2002, 6
  store i64 %2003, i64* %PC.i154
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2005 = load i8, i8* %2004, align 1
  store i8 %2005, i8* %BRANCH_TAKEN, align 1
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2007 = icmp ne i8 %2005, 0
  %2008 = select i1 %2007, i64 %1999, i64 %2001
  store i64 %2008, i64* %2006, align 8
  store %struct.Memory* %loadMem_4140a3, %struct.Memory** %MEMORY
  %loadBr_4140a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4140a3 = icmp eq i8 %loadBr_4140a3, 1
  br i1 %cmpBr_4140a3, label %block_.L_4140e8, label %block_4140a9

block_4140a9:                                     ; preds = %block_41406d
  %loadMem_4140a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 33
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %2011 to i64*
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 15
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %2014 to i64*
  %2015 = load i64, i64* %RBP.i153
  %2016 = sub i64 %2015, 20
  %2017 = load i64, i64* %PC.i152
  %2018 = add i64 %2017, 4
  store i64 %2018, i64* %PC.i152
  %2019 = inttoptr i64 %2016 to i32*
  %2020 = load i32, i32* %2019
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2021, align 1
  %2022 = and i32 %2020, 255
  %2023 = call i32 @llvm.ctpop.i32(i32 %2022)
  %2024 = trunc i32 %2023 to i8
  %2025 = and i8 %2024, 1
  %2026 = xor i8 %2025, 1
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2026, i8* %2027, align 1
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2028, align 1
  %2029 = icmp eq i32 %2020, 0
  %2030 = zext i1 %2029 to i8
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2030, i8* %2031, align 1
  %2032 = lshr i32 %2020, 31
  %2033 = trunc i32 %2032 to i8
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2033, i8* %2034, align 1
  %2035 = lshr i32 %2020, 31
  %2036 = xor i32 %2032, %2035
  %2037 = add i32 %2036, %2035
  %2038 = icmp eq i32 %2037, 2
  %2039 = zext i1 %2038 to i8
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2039, i8* %2040, align 1
  store %struct.Memory* %loadMem_4140a9, %struct.Memory** %MEMORY
  %loadMem_4140ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 33
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %2043 to i64*
  %2044 = load i64, i64* %PC.i151
  %2045 = add i64 %2044, 253
  %2046 = load i64, i64* %PC.i151
  %2047 = add i64 %2046, 6
  %2048 = load i64, i64* %PC.i151
  %2049 = add i64 %2048, 6
  store i64 %2049, i64* %PC.i151
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2051 = load i8, i8* %2050, align 1
  store i8 %2051, i8* %BRANCH_TAKEN, align 1
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2053 = icmp ne i8 %2051, 0
  %2054 = select i1 %2053, i64 %2045, i64 %2047
  store i64 %2054, i64* %2052, align 8
  store %struct.Memory* %loadMem_4140ad, %struct.Memory** %MEMORY
  %loadBr_4140ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4140ad = icmp eq i8 %loadBr_4140ad, 1
  br i1 %cmpBr_4140ad, label %block_.L_4141aa, label %block_4140b3

block_4140b3:                                     ; preds = %block_4140a9
  %loadMem_4140b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 33
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2057 to i64*
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 1
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %2060 to i64*
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 15
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %2063 to i64*
  %2064 = load i64, i64* %RBP.i150
  %2065 = sub i64 %2064, 44
  %2066 = load i64, i64* %PC.i148
  %2067 = add i64 %2066, 4
  store i64 %2067, i64* %PC.i148
  %2068 = inttoptr i64 %2065 to i32*
  %2069 = load i32, i32* %2068
  %2070 = sext i32 %2069 to i64
  store i64 %2070, i64* %RAX.i149, align 8
  store %struct.Memory* %loadMem_4140b3, %struct.Memory** %MEMORY
  %loadMem_4140b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 33
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %2073 to i64*
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 1
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %2076 to i64*
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 5
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 15
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %2082 to i64*
  %2083 = load i64, i64* %RBP.i147
  %2084 = load i64, i64* %RAX.i145
  %2085 = mul i64 %2084, 4
  %2086 = add i64 %2083, -1008
  %2087 = add i64 %2086, %2085
  %2088 = load i64, i64* %PC.i144
  %2089 = add i64 %2088, 7
  store i64 %2089, i64* %PC.i144
  %2090 = inttoptr i64 %2087 to i32*
  %2091 = load i32, i32* %2090
  %2092 = zext i32 %2091 to i64
  store i64 %2092, i64* %RCX.i146, align 8
  store %struct.Memory* %loadMem_4140b7, %struct.Memory** %MEMORY
  %loadMem_4140be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 33
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %2095 to i64*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 1
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %2098 to i64*
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 15
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %2101 to i64*
  %2102 = load i64, i64* %RBP.i143
  %2103 = sub i64 %2102, 40
  %2104 = load i64, i64* %PC.i141
  %2105 = add i64 %2104, 4
  store i64 %2105, i64* %PC.i141
  %2106 = inttoptr i64 %2103 to i32*
  %2107 = load i32, i32* %2106
  %2108 = sext i32 %2107 to i64
  store i64 %2108, i64* %RAX.i142, align 8
  store %struct.Memory* %loadMem_4140be, %struct.Memory** %MEMORY
  %loadMem_4140c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 33
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2111 to i64*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 1
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %2114 to i64*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 5
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %RCX.i140 = bitcast %union.anon* %2117 to i64*
  %2118 = load i64, i64* %RCX.i140
  %2119 = load i64, i64* %RAX.i139
  %2120 = mul i64 %2119, 4
  %2121 = add i64 %2120, 8053168
  %2122 = load i64, i64* %PC.i138
  %2123 = add i64 %2122, 7
  store i64 %2123, i64* %PC.i138
  %2124 = trunc i64 %2118 to i32
  %2125 = inttoptr i64 %2121 to i32*
  %2126 = load i32, i32* %2125
  %2127 = add i32 %2126, %2124
  %2128 = zext i32 %2127 to i64
  store i64 %2128, i64* %RCX.i140, align 8
  %2129 = icmp ult i32 %2127, %2124
  %2130 = icmp ult i32 %2127, %2126
  %2131 = or i1 %2129, %2130
  %2132 = zext i1 %2131 to i8
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2132, i8* %2133, align 1
  %2134 = and i32 %2127, 255
  %2135 = call i32 @llvm.ctpop.i32(i32 %2134)
  %2136 = trunc i32 %2135 to i8
  %2137 = and i8 %2136, 1
  %2138 = xor i8 %2137, 1
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2138, i8* %2139, align 1
  %2140 = xor i32 %2126, %2124
  %2141 = xor i32 %2140, %2127
  %2142 = lshr i32 %2141, 4
  %2143 = trunc i32 %2142 to i8
  %2144 = and i8 %2143, 1
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2144, i8* %2145, align 1
  %2146 = icmp eq i32 %2127, 0
  %2147 = zext i1 %2146 to i8
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2147, i8* %2148, align 1
  %2149 = lshr i32 %2127, 31
  %2150 = trunc i32 %2149 to i8
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2150, i8* %2151, align 1
  %2152 = lshr i32 %2124, 31
  %2153 = lshr i32 %2126, 31
  %2154 = xor i32 %2149, %2152
  %2155 = xor i32 %2149, %2153
  %2156 = add i32 %2154, %2155
  %2157 = icmp eq i32 %2156, 2
  %2158 = zext i1 %2157 to i8
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2158, i8* %2159, align 1
  store %struct.Memory* %loadMem_4140c2, %struct.Memory** %MEMORY
  %loadMem_4140c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 33
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %2162 to i64*
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 5
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %ECX.i136 = bitcast %union.anon* %2165 to i32*
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 1
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %2168 to i64*
  %2169 = load i32, i32* %ECX.i136
  %2170 = zext i32 %2169 to i64
  %2171 = load i64, i64* %PC.i135
  %2172 = add i64 %2171, 3
  store i64 %2172, i64* %PC.i135
  %2173 = shl i64 %2170, 32
  %2174 = ashr exact i64 %2173, 32
  store i64 %2174, i64* %RAX.i137, align 8
  store %struct.Memory* %loadMem_4140c9, %struct.Memory** %MEMORY
  %loadMem_4140cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 33
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 1
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 5
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RCX.i134 = bitcast %union.anon* %2183 to i64*
  %2184 = load i64, i64* %RAX.i133
  %2185 = add i64 %2184, 12099168
  %2186 = load i64, i64* %PC.i132
  %2187 = add i64 %2186, 8
  store i64 %2187, i64* %PC.i132
  %2188 = inttoptr i64 %2185 to i8*
  %2189 = load i8, i8* %2188
  %2190 = zext i8 %2189 to i64
  store i64 %2190, i64* %RCX.i134, align 8
  store %struct.Memory* %loadMem_4140cc, %struct.Memory** %MEMORY
  %loadMem_4140d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 33
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %2193 to i64*
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 1
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %2196 to i64*
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 15
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %2199 to i64*
  %2200 = load i64, i64* %RBP.i131
  %2201 = sub i64 %2200, 4
  %2202 = load i64, i64* %PC.i129
  %2203 = add i64 %2202, 4
  store i64 %2203, i64* %PC.i129
  %2204 = inttoptr i64 %2201 to i32*
  %2205 = load i32, i32* %2204
  %2206 = sext i32 %2205 to i64
  store i64 %2206, i64* %RAX.i130, align 8
  store %struct.Memory* %loadMem_4140d4, %struct.Memory** %MEMORY
  %loadMem_4140d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 33
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 1
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %2212 to i64*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 7
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RDX.i128 = bitcast %union.anon* %2215 to i64*
  %2216 = load i64, i64* %RAX.i127
  %2217 = add i64 %2216, 12099168
  %2218 = load i64, i64* %PC.i126
  %2219 = add i64 %2218, 8
  store i64 %2219, i64* %PC.i126
  %2220 = inttoptr i64 %2217 to i8*
  %2221 = load i8, i8* %2220
  %2222 = zext i8 %2221 to i64
  store i64 %2222, i64* %RDX.i128, align 8
  store %struct.Memory* %loadMem_4140d8, %struct.Memory** %MEMORY
  %loadMem_4140e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 33
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %2225 to i64*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 5
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2228 to i32*
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 7
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %EDX.i125 = bitcast %union.anon* %2231 to i32*
  %2232 = load i32, i32* %ECX.i
  %2233 = zext i32 %2232 to i64
  %2234 = load i32, i32* %EDX.i125
  %2235 = zext i32 %2234 to i64
  %2236 = load i64, i64* %PC.i124
  %2237 = add i64 %2236, 2
  store i64 %2237, i64* %PC.i124
  %2238 = sub i32 %2232, %2234
  %2239 = icmp ult i32 %2232, %2234
  %2240 = zext i1 %2239 to i8
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2240, i8* %2241, align 1
  %2242 = and i32 %2238, 255
  %2243 = call i32 @llvm.ctpop.i32(i32 %2242)
  %2244 = trunc i32 %2243 to i8
  %2245 = and i8 %2244, 1
  %2246 = xor i8 %2245, 1
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2246, i8* %2247, align 1
  %2248 = xor i64 %2235, %2233
  %2249 = trunc i64 %2248 to i32
  %2250 = xor i32 %2249, %2238
  %2251 = lshr i32 %2250, 4
  %2252 = trunc i32 %2251 to i8
  %2253 = and i8 %2252, 1
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2253, i8* %2254, align 1
  %2255 = icmp eq i32 %2238, 0
  %2256 = zext i1 %2255 to i8
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2256, i8* %2257, align 1
  %2258 = lshr i32 %2238, 31
  %2259 = trunc i32 %2258 to i8
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2259, i8* %2260, align 1
  %2261 = lshr i32 %2232, 31
  %2262 = lshr i32 %2234, 31
  %2263 = xor i32 %2262, %2261
  %2264 = xor i32 %2258, %2261
  %2265 = add i32 %2264, %2263
  %2266 = icmp eq i32 %2265, 2
  %2267 = zext i1 %2266 to i8
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2267, i8* %2268, align 1
  store %struct.Memory* %loadMem_4140e0, %struct.Memory** %MEMORY
  %loadMem_4140e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 33
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2271 to i64*
  %2272 = load i64, i64* %PC.i123
  %2273 = add i64 %2272, 200
  %2274 = load i64, i64* %PC.i123
  %2275 = add i64 %2274, 6
  %2276 = load i64, i64* %PC.i123
  %2277 = add i64 %2276, 6
  store i64 %2277, i64* %PC.i123
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2279 = load i8, i8* %2278, align 1
  %2280 = icmp eq i8 %2279, 0
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %BRANCH_TAKEN, align 1
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2283 = select i1 %2280, i64 %2273, i64 %2275
  store i64 %2283, i64* %2282, align 8
  store %struct.Memory* %loadMem_4140e2, %struct.Memory** %MEMORY
  %loadBr_4140e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4140e2 = icmp eq i8 %loadBr_4140e2, 1
  br i1 %cmpBr_4140e2, label %block_.L_4141aa, label %block_.L_4140e8

block_.L_4140e8:                                  ; preds = %block_4140b3, %block_41406d
  %loadMem_4140e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 33
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2286 to i64*
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 1
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %2289 to i64*
  %2290 = load i64, i64* %PC.i121
  %2291 = add i64 %2290, 10
  store i64 %2291, i64* %PC.i121
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i122, align 8
  store %struct.Memory* %loadMem_4140e8, %struct.Memory** %MEMORY
  %loadMem_4140f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 33
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2294 to i64*
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 5
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %2297 to i64*
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 15
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %2300 to i64*
  %2301 = load i64, i64* %RBP.i120
  %2302 = sub i64 %2301, 44
  %2303 = load i64, i64* %PC.i118
  %2304 = add i64 %2303, 4
  store i64 %2304, i64* %PC.i118
  %2305 = inttoptr i64 %2302 to i32*
  %2306 = load i32, i32* %2305
  %2307 = sext i32 %2306 to i64
  store i64 %2307, i64* %RCX.i119, align 8
  store %struct.Memory* %loadMem_4140f2, %struct.Memory** %MEMORY
  %loadMem_4140f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 33
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %2310 to i64*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 5
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %2313 to i64*
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 7
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %RDX.i116 = bitcast %union.anon* %2316 to i64*
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 15
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %2319 to i64*
  %2320 = load i64, i64* %RBP.i117
  %2321 = load i64, i64* %RCX.i115
  %2322 = mul i64 %2321, 4
  %2323 = add i64 %2320, -1008
  %2324 = add i64 %2323, %2322
  %2325 = load i64, i64* %PC.i114
  %2326 = add i64 %2325, 7
  store i64 %2326, i64* %PC.i114
  %2327 = inttoptr i64 %2324 to i32*
  %2328 = load i32, i32* %2327
  %2329 = zext i32 %2328 to i64
  store i64 %2329, i64* %RDX.i116, align 8
  store %struct.Memory* %loadMem_4140f6, %struct.Memory** %MEMORY
  %loadMem_4140fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 33
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2332 to i64*
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 5
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %RCX.i112 = bitcast %union.anon* %2335 to i64*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 15
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %2338 to i64*
  %2339 = load i64, i64* %RBP.i113
  %2340 = sub i64 %2339, 40
  %2341 = load i64, i64* %PC.i111
  %2342 = add i64 %2341, 4
  store i64 %2342, i64* %PC.i111
  %2343 = inttoptr i64 %2340 to i32*
  %2344 = load i32, i32* %2343
  %2345 = sext i32 %2344 to i64
  store i64 %2345, i64* %RCX.i112, align 8
  store %struct.Memory* %loadMem_4140fd, %struct.Memory** %MEMORY
  %loadMem_414101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 33
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %2348 to i64*
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2350 = getelementptr inbounds %struct.GPR, %struct.GPR* %2349, i32 0, i32 5
  %2351 = getelementptr inbounds %struct.Reg, %struct.Reg* %2350, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %2351 to i64*
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 7
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %RDX.i110 = bitcast %union.anon* %2354 to i64*
  %2355 = load i64, i64* %RDX.i110
  %2356 = load i64, i64* %RCX.i109
  %2357 = mul i64 %2356, 4
  %2358 = add i64 %2357, 8053168
  %2359 = load i64, i64* %PC.i108
  %2360 = add i64 %2359, 7
  store i64 %2360, i64* %PC.i108
  %2361 = trunc i64 %2355 to i32
  %2362 = inttoptr i64 %2358 to i32*
  %2363 = load i32, i32* %2362
  %2364 = add i32 %2363, %2361
  %2365 = zext i32 %2364 to i64
  store i64 %2365, i64* %RDX.i110, align 8
  %2366 = icmp ult i32 %2364, %2361
  %2367 = icmp ult i32 %2364, %2363
  %2368 = or i1 %2366, %2367
  %2369 = zext i1 %2368 to i8
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2369, i8* %2370, align 1
  %2371 = and i32 %2364, 255
  %2372 = call i32 @llvm.ctpop.i32(i32 %2371)
  %2373 = trunc i32 %2372 to i8
  %2374 = and i8 %2373, 1
  %2375 = xor i8 %2374, 1
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2375, i8* %2376, align 1
  %2377 = xor i32 %2363, %2361
  %2378 = xor i32 %2377, %2364
  %2379 = lshr i32 %2378, 4
  %2380 = trunc i32 %2379 to i8
  %2381 = and i8 %2380, 1
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2381, i8* %2382, align 1
  %2383 = icmp eq i32 %2364, 0
  %2384 = zext i1 %2383 to i8
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2384, i8* %2385, align 1
  %2386 = lshr i32 %2364, 31
  %2387 = trunc i32 %2386 to i8
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2387, i8* %2388, align 1
  %2389 = lshr i32 %2361, 31
  %2390 = lshr i32 %2363, 31
  %2391 = xor i32 %2386, %2389
  %2392 = xor i32 %2386, %2390
  %2393 = add i32 %2391, %2392
  %2394 = icmp eq i32 %2393, 2
  %2395 = zext i1 %2394 to i8
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2395, i8* %2396, align 1
  store %struct.Memory* %loadMem_414101, %struct.Memory** %MEMORY
  %loadMem_414108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 33
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 7
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %EDX.i106 = bitcast %union.anon* %2402 to i32*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 5
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %2405 to i64*
  %2406 = load i32, i32* %EDX.i106
  %2407 = zext i32 %2406 to i64
  %2408 = load i64, i64* %PC.i105
  %2409 = add i64 %2408, 3
  store i64 %2409, i64* %PC.i105
  %2410 = shl i64 %2407, 32
  %2411 = ashr exact i64 %2410, 32
  store i64 %2411, i64* %RCX.i107, align 8
  store %struct.Memory* %loadMem_414108, %struct.Memory** %MEMORY
  %loadMem_41410b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 33
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 5
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %RCX.i104 = bitcast %union.anon* %2417 to i64*
  %2418 = load i64, i64* %RCX.i104
  %2419 = mul i64 %2418, 4
  %2420 = add i64 %2419, 11187184
  %2421 = load i64, i64* %PC.i103
  %2422 = add i64 %2421, 8
  store i64 %2422, i64* %PC.i103
  %2423 = inttoptr i64 %2420 to i32*
  %2424 = load i32, i32* %2423
  %2425 = sext i32 %2424 to i64
  store i64 %2425, i64* %RCX.i104, align 8
  store %struct.Memory* %loadMem_41410b, %struct.Memory** %MEMORY
  %loadMem_414113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 33
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %2428 to i64*
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 5
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %2431 to i64*
  %2432 = load i64, i64* %RCX.i102
  %2433 = load i64, i64* %PC.i101
  %2434 = add i64 %2433, 7
  store i64 %2434, i64* %PC.i101
  %2435 = sext i64 %2432 to i128
  %2436 = and i128 %2435, -18446744073709551616
  %2437 = zext i64 %2432 to i128
  %2438 = or i128 %2436, %2437
  %2439 = mul i128 744, %2438
  %2440 = trunc i128 %2439 to i64
  store i64 %2440, i64* %RCX.i102, align 8
  %2441 = sext i64 %2440 to i128
  %2442 = icmp ne i128 %2441, %2439
  %2443 = zext i1 %2442 to i8
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2443, i8* %2444, align 1
  %2445 = trunc i128 %2439 to i32
  %2446 = and i32 %2445, 255
  %2447 = call i32 @llvm.ctpop.i32(i32 %2446)
  %2448 = trunc i32 %2447 to i8
  %2449 = and i8 %2448, 1
  %2450 = xor i8 %2449, 1
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2450, i8* %2451, align 1
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2452, align 1
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2453, align 1
  %2454 = lshr i64 %2440, 63
  %2455 = trunc i64 %2454 to i8
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2455, i8* %2456, align 1
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2443, i8* %2457, align 1
  store %struct.Memory* %loadMem_414113, %struct.Memory** %MEMORY
  %loadMem_41411a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 33
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %2460 to i64*
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 1
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %2463 to i64*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 5
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %2466 to i64*
  %2467 = load i64, i64* %RAX.i99
  %2468 = load i64, i64* %RCX.i100
  %2469 = load i64, i64* %PC.i98
  %2470 = add i64 %2469, 3
  store i64 %2470, i64* %PC.i98
  %2471 = add i64 %2468, %2467
  store i64 %2471, i64* %RAX.i99, align 8
  %2472 = icmp ult i64 %2471, %2467
  %2473 = icmp ult i64 %2471, %2468
  %2474 = or i1 %2472, %2473
  %2475 = zext i1 %2474 to i8
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2475, i8* %2476, align 1
  %2477 = trunc i64 %2471 to i32
  %2478 = and i32 %2477, 255
  %2479 = call i32 @llvm.ctpop.i32(i32 %2478)
  %2480 = trunc i32 %2479 to i8
  %2481 = and i8 %2480, 1
  %2482 = xor i8 %2481, 1
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2482, i8* %2483, align 1
  %2484 = xor i64 %2468, %2467
  %2485 = xor i64 %2484, %2471
  %2486 = lshr i64 %2485, 4
  %2487 = trunc i64 %2486 to i8
  %2488 = and i8 %2487, 1
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2488, i8* %2489, align 1
  %2490 = icmp eq i64 %2471, 0
  %2491 = zext i1 %2490 to i8
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2491, i8* %2492, align 1
  %2493 = lshr i64 %2471, 63
  %2494 = trunc i64 %2493 to i8
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2494, i8* %2495, align 1
  %2496 = lshr i64 %2467, 63
  %2497 = lshr i64 %2468, 63
  %2498 = xor i64 %2493, %2496
  %2499 = xor i64 %2493, %2497
  %2500 = add i64 %2498, %2499
  %2501 = icmp eq i64 %2500, 2
  %2502 = zext i1 %2501 to i8
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2502, i8* %2503, align 1
  store %struct.Memory* %loadMem_41411a, %struct.Memory** %MEMORY
  %loadMem_41411d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 33
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2506 to i64*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 1
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %2509 to i64*
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 7
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %RDX.i97 = bitcast %union.anon* %2512 to i64*
  %2513 = load i64, i64* %RAX.i96
  %2514 = add i64 %2513, 740
  %2515 = load i64, i64* %PC.i95
  %2516 = add i64 %2515, 6
  store i64 %2516, i64* %PC.i95
  %2517 = inttoptr i64 %2514 to i32*
  %2518 = load i32, i32* %2517
  %2519 = zext i32 %2518 to i64
  store i64 %2519, i64* %RDX.i97, align 8
  store %struct.Memory* %loadMem_41411d, %struct.Memory** %MEMORY
  %loadMem_414123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 33
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %2522 to i64*
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 7
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %EDX.i94 = bitcast %union.anon* %2525 to i32*
  %2526 = load i32, i32* %EDX.i94
  %2527 = zext i32 %2526 to i64
  %2528 = load i64, i64* %PC.i93
  %2529 = add i64 %2528, 7
  store i64 %2529, i64* %PC.i93
  %2530 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %2531 = sub i32 %2526, %2530
  %2532 = icmp ult i32 %2526, %2530
  %2533 = zext i1 %2532 to i8
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2533, i8* %2534, align 1
  %2535 = and i32 %2531, 255
  %2536 = call i32 @llvm.ctpop.i32(i32 %2535)
  %2537 = trunc i32 %2536 to i8
  %2538 = and i8 %2537, 1
  %2539 = xor i8 %2538, 1
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2539, i8* %2540, align 1
  %2541 = xor i32 %2530, %2526
  %2542 = xor i32 %2541, %2531
  %2543 = lshr i32 %2542, 4
  %2544 = trunc i32 %2543 to i8
  %2545 = and i8 %2544, 1
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2545, i8* %2546, align 1
  %2547 = icmp eq i32 %2531, 0
  %2548 = zext i1 %2547 to i8
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2548, i8* %2549, align 1
  %2550 = lshr i32 %2531, 31
  %2551 = trunc i32 %2550 to i8
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2551, i8* %2552, align 1
  %2553 = lshr i32 %2526, 31
  %2554 = lshr i32 %2530, 31
  %2555 = xor i32 %2554, %2553
  %2556 = xor i32 %2550, %2553
  %2557 = add i32 %2556, %2555
  %2558 = icmp eq i32 %2557, 2
  %2559 = zext i1 %2558 to i8
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2559, i8* %2560, align 1
  store %struct.Memory* %loadMem_414123, %struct.Memory** %MEMORY
  %loadMem_41412a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 33
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %2563 to i64*
  %2564 = load i64, i64* %PC.i92
  %2565 = add i64 %2564, 128
  %2566 = load i64, i64* %PC.i92
  %2567 = add i64 %2566, 6
  %2568 = load i64, i64* %PC.i92
  %2569 = add i64 %2568, 6
  store i64 %2569, i64* %PC.i92
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2571 = load i8, i8* %2570, align 1
  store i8 %2571, i8* %BRANCH_TAKEN, align 1
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2573 = icmp ne i8 %2571, 0
  %2574 = select i1 %2573, i64 %2565, i64 %2567
  store i64 %2574, i64* %2572, align 8
  store %struct.Memory* %loadMem_41412a, %struct.Memory** %MEMORY
  %loadBr_41412a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41412a = icmp eq i8 %loadBr_41412a, 1
  br i1 %cmpBr_41412a, label %block_.L_4141aa, label %block_414130

block_414130:                                     ; preds = %block_.L_4140e8
  %loadMem_414130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 33
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2577 to i64*
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 1
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %2580 to i64*
  %2581 = load i64, i64* %PC.i90
  %2582 = add i64 %2581, 10
  store i64 %2582, i64* %PC.i90
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_414130, %struct.Memory** %MEMORY
  %loadMem_41413a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 33
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 5
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 15
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %2591 to i64*
  %2592 = load i64, i64* %RBP.i89
  %2593 = sub i64 %2592, 44
  %2594 = load i64, i64* %PC.i87
  %2595 = add i64 %2594, 4
  store i64 %2595, i64* %PC.i87
  %2596 = inttoptr i64 %2593 to i32*
  %2597 = load i32, i32* %2596
  %2598 = sext i32 %2597 to i64
  store i64 %2598, i64* %RCX.i88, align 8
  store %struct.Memory* %loadMem_41413a, %struct.Memory** %MEMORY
  %loadMem_41413e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 33
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %2601 to i64*
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2603 = getelementptr inbounds %struct.GPR, %struct.GPR* %2602, i32 0, i32 5
  %2604 = getelementptr inbounds %struct.Reg, %struct.Reg* %2603, i32 0, i32 0
  %RCX.i84 = bitcast %union.anon* %2604 to i64*
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 7
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %RDX.i85 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 15
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %2610 to i64*
  %2611 = load i64, i64* %RBP.i86
  %2612 = load i64, i64* %RCX.i84
  %2613 = mul i64 %2612, 4
  %2614 = add i64 %2611, -1008
  %2615 = add i64 %2614, %2613
  %2616 = load i64, i64* %PC.i83
  %2617 = add i64 %2616, 7
  store i64 %2617, i64* %PC.i83
  %2618 = inttoptr i64 %2615 to i32*
  %2619 = load i32, i32* %2618
  %2620 = zext i32 %2619 to i64
  store i64 %2620, i64* %RDX.i85, align 8
  store %struct.Memory* %loadMem_41413e, %struct.Memory** %MEMORY
  %loadMem_414145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 33
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 5
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %2626 to i64*
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 15
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %2629 to i64*
  %2630 = load i64, i64* %RBP.i82
  %2631 = sub i64 %2630, 40
  %2632 = load i64, i64* %PC.i80
  %2633 = add i64 %2632, 4
  store i64 %2633, i64* %PC.i80
  %2634 = inttoptr i64 %2631 to i32*
  %2635 = load i32, i32* %2634
  %2636 = sext i32 %2635 to i64
  store i64 %2636, i64* %RCX.i81, align 8
  store %struct.Memory* %loadMem_414145, %struct.Memory** %MEMORY
  %loadMem_414149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 33
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %2639 to i64*
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 5
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %RCX.i78 = bitcast %union.anon* %2642 to i64*
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 7
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %RDX.i79 = bitcast %union.anon* %2645 to i64*
  %2646 = load i64, i64* %RDX.i79
  %2647 = load i64, i64* %RCX.i78
  %2648 = mul i64 %2647, 4
  %2649 = add i64 %2648, 8053168
  %2650 = load i64, i64* %PC.i77
  %2651 = add i64 %2650, 7
  store i64 %2651, i64* %PC.i77
  %2652 = trunc i64 %2646 to i32
  %2653 = inttoptr i64 %2649 to i32*
  %2654 = load i32, i32* %2653
  %2655 = add i32 %2654, %2652
  %2656 = zext i32 %2655 to i64
  store i64 %2656, i64* %RDX.i79, align 8
  %2657 = icmp ult i32 %2655, %2652
  %2658 = icmp ult i32 %2655, %2654
  %2659 = or i1 %2657, %2658
  %2660 = zext i1 %2659 to i8
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2660, i8* %2661, align 1
  %2662 = and i32 %2655, 255
  %2663 = call i32 @llvm.ctpop.i32(i32 %2662)
  %2664 = trunc i32 %2663 to i8
  %2665 = and i8 %2664, 1
  %2666 = xor i8 %2665, 1
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2666, i8* %2667, align 1
  %2668 = xor i32 %2654, %2652
  %2669 = xor i32 %2668, %2655
  %2670 = lshr i32 %2669, 4
  %2671 = trunc i32 %2670 to i8
  %2672 = and i8 %2671, 1
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2672, i8* %2673, align 1
  %2674 = icmp eq i32 %2655, 0
  %2675 = zext i1 %2674 to i8
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2675, i8* %2676, align 1
  %2677 = lshr i32 %2655, 31
  %2678 = trunc i32 %2677 to i8
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2678, i8* %2679, align 1
  %2680 = lshr i32 %2652, 31
  %2681 = lshr i32 %2654, 31
  %2682 = xor i32 %2677, %2680
  %2683 = xor i32 %2677, %2681
  %2684 = add i32 %2682, %2683
  %2685 = icmp eq i32 %2684, 2
  %2686 = zext i1 %2685 to i8
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2686, i8* %2687, align 1
  store %struct.Memory* %loadMem_414149, %struct.Memory** %MEMORY
  %loadMem_414150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 33
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %2690 to i64*
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 7
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %EDX.i75 = bitcast %union.anon* %2693 to i32*
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 5
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %2696 to i64*
  %2697 = load i32, i32* %EDX.i75
  %2698 = zext i32 %2697 to i64
  %2699 = load i64, i64* %PC.i74
  %2700 = add i64 %2699, 3
  store i64 %2700, i64* %PC.i74
  %2701 = shl i64 %2698, 32
  %2702 = ashr exact i64 %2701, 32
  store i64 %2702, i64* %RCX.i76, align 8
  store %struct.Memory* %loadMem_414150, %struct.Memory** %MEMORY
  %loadMem_414153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 33
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %2705 to i64*
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 5
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %2708 to i64*
  %2709 = load i64, i64* %RCX.i73
  %2710 = mul i64 %2709, 4
  %2711 = add i64 %2710, 11187184
  %2712 = load i64, i64* %PC.i72
  %2713 = add i64 %2712, 8
  store i64 %2713, i64* %PC.i72
  %2714 = inttoptr i64 %2711 to i32*
  %2715 = load i32, i32* %2714
  %2716 = sext i32 %2715 to i64
  store i64 %2716, i64* %RCX.i73, align 8
  store %struct.Memory* %loadMem_414153, %struct.Memory** %MEMORY
  %loadMem_41415b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 33
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 5
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %2722 to i64*
  %2723 = load i64, i64* %RCX.i71
  %2724 = load i64, i64* %PC.i70
  %2725 = add i64 %2724, 7
  store i64 %2725, i64* %PC.i70
  %2726 = sext i64 %2723 to i128
  %2727 = and i128 %2726, -18446744073709551616
  %2728 = zext i64 %2723 to i128
  %2729 = or i128 %2727, %2728
  %2730 = mul i128 744, %2729
  %2731 = trunc i128 %2730 to i64
  store i64 %2731, i64* %RCX.i71, align 8
  %2732 = sext i64 %2731 to i128
  %2733 = icmp ne i128 %2732, %2730
  %2734 = zext i1 %2733 to i8
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2734, i8* %2735, align 1
  %2736 = trunc i128 %2730 to i32
  %2737 = and i32 %2736, 255
  %2738 = call i32 @llvm.ctpop.i32(i32 %2737)
  %2739 = trunc i32 %2738 to i8
  %2740 = and i8 %2739, 1
  %2741 = xor i8 %2740, 1
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2741, i8* %2742, align 1
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2743, align 1
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2744, align 1
  %2745 = lshr i64 %2731, 63
  %2746 = trunc i64 %2745 to i8
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2746, i8* %2747, align 1
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2734, i8* %2748, align 1
  store %struct.Memory* %loadMem_41415b, %struct.Memory** %MEMORY
  %loadMem_414162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 33
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 1
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %2754 to i64*
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 9
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %RSI.i69 = bitcast %union.anon* %2757 to i64*
  %2758 = load i64, i64* %RAX.i68
  %2759 = load i64, i64* %PC.i67
  %2760 = add i64 %2759, 3
  store i64 %2760, i64* %PC.i67
  store i64 %2758, i64* %RSI.i69, align 8
  store %struct.Memory* %loadMem_414162, %struct.Memory** %MEMORY
  %loadMem_414165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 33
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2763 to i64*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 5
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %2766 to i64*
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 9
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %RSI.i66 = bitcast %union.anon* %2769 to i64*
  %2770 = load i64, i64* %RSI.i66
  %2771 = load i64, i64* %RCX.i65
  %2772 = load i64, i64* %PC.i64
  %2773 = add i64 %2772, 3
  store i64 %2773, i64* %PC.i64
  %2774 = add i64 %2771, %2770
  store i64 %2774, i64* %RSI.i66, align 8
  %2775 = icmp ult i64 %2774, %2770
  %2776 = icmp ult i64 %2774, %2771
  %2777 = or i1 %2775, %2776
  %2778 = zext i1 %2777 to i8
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2778, i8* %2779, align 1
  %2780 = trunc i64 %2774 to i32
  %2781 = and i32 %2780, 255
  %2782 = call i32 @llvm.ctpop.i32(i32 %2781)
  %2783 = trunc i32 %2782 to i8
  %2784 = and i8 %2783, 1
  %2785 = xor i8 %2784, 1
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2785, i8* %2786, align 1
  %2787 = xor i64 %2771, %2770
  %2788 = xor i64 %2787, %2774
  %2789 = lshr i64 %2788, 4
  %2790 = trunc i64 %2789 to i8
  %2791 = and i8 %2790, 1
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2791, i8* %2792, align 1
  %2793 = icmp eq i64 %2774, 0
  %2794 = zext i1 %2793 to i8
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2794, i8* %2795, align 1
  %2796 = lshr i64 %2774, 63
  %2797 = trunc i64 %2796 to i8
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2797, i8* %2798, align 1
  %2799 = lshr i64 %2770, 63
  %2800 = lshr i64 %2771, 63
  %2801 = xor i64 %2796, %2799
  %2802 = xor i64 %2796, %2800
  %2803 = add i64 %2801, %2802
  %2804 = icmp eq i64 %2803, 2
  %2805 = zext i1 %2804 to i8
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2805, i8* %2806, align 1
  store %struct.Memory* %loadMem_414165, %struct.Memory** %MEMORY
  %loadMem_414168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 33
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 7
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %RDX.i62 = bitcast %union.anon* %2812 to i64*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 9
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %RSI.i63 = bitcast %union.anon* %2815 to i64*
  %2816 = load i64, i64* %RSI.i63
  %2817 = add i64 %2816, 8
  %2818 = load i64, i64* %PC.i61
  %2819 = add i64 %2818, 3
  store i64 %2819, i64* %PC.i61
  %2820 = inttoptr i64 %2817 to i32*
  %2821 = load i32, i32* %2820
  %2822 = zext i32 %2821 to i64
  store i64 %2822, i64* %RDX.i62, align 8
  store %struct.Memory* %loadMem_414168, %struct.Memory** %MEMORY
  %loadMem_41416b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 33
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 5
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %2828 to i64*
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 15
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %2831 to i64*
  %2832 = load i64, i64* %RBP.i60
  %2833 = sub i64 %2832, 16
  %2834 = load i64, i64* %PC.i58
  %2835 = add i64 %2834, 4
  store i64 %2835, i64* %PC.i58
  %2836 = inttoptr i64 %2833 to i64*
  %2837 = load i64, i64* %2836
  store i64 %2837, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_41416b, %struct.Memory** %MEMORY
  %loadMem_41416f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2839 = getelementptr inbounds %struct.GPR, %struct.GPR* %2838, i32 0, i32 33
  %2840 = getelementptr inbounds %struct.Reg, %struct.Reg* %2839, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2840 to i64*
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 9
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %RSI.i56 = bitcast %union.anon* %2843 to i64*
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 15
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %2846 to i64*
  %2847 = load i64, i64* %RBP.i57
  %2848 = sub i64 %2847, 36
  %2849 = load i64, i64* %PC.i55
  %2850 = add i64 %2849, 4
  store i64 %2850, i64* %PC.i55
  %2851 = inttoptr i64 %2848 to i32*
  %2852 = load i32, i32* %2851
  %2853 = sext i32 %2852 to i64
  store i64 %2853, i64* %RSI.i56, align 8
  store %struct.Memory* %loadMem_41416f, %struct.Memory** %MEMORY
  %loadMem_414173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 33
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %2856 to i64*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 7
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %EDX.i52 = bitcast %union.anon* %2859 to i32*
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 5
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %2862 to i64*
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 9
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %RSI.i54 = bitcast %union.anon* %2865 to i64*
  %2866 = load i64, i64* %RCX.i53
  %2867 = load i64, i64* %RSI.i54
  %2868 = mul i64 %2867, 4
  %2869 = add i64 %2868, %2866
  %2870 = load i32, i32* %EDX.i52
  %2871 = zext i32 %2870 to i64
  %2872 = load i64, i64* %PC.i51
  %2873 = add i64 %2872, 3
  store i64 %2873, i64* %PC.i51
  %2874 = inttoptr i64 %2869 to i32*
  store i32 %2870, i32* %2874
  store %struct.Memory* %loadMem_414173, %struct.Memory** %MEMORY
  %loadMem_414176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 33
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %2877 to i64*
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 7
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %RDX.i50 = bitcast %union.anon* %2880 to i64*
  %2881 = load i64, i64* %PC.i49
  %2882 = add i64 %2881, 7
  store i64 %2882, i64* %PC.i49
  %2883 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %2884 = zext i32 %2883 to i64
  store i64 %2884, i64* %RDX.i50, align 8
  store %struct.Memory* %loadMem_414176, %struct.Memory** %MEMORY
  %loadMem_41417d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2886 = getelementptr inbounds %struct.GPR, %struct.GPR* %2885, i32 0, i32 33
  %2887 = getelementptr inbounds %struct.Reg, %struct.Reg* %2886, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %2887 to i64*
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2889 = getelementptr inbounds %struct.GPR, %struct.GPR* %2888, i32 0, i32 5
  %2890 = getelementptr inbounds %struct.Reg, %struct.Reg* %2889, i32 0, i32 0
  %RCX.i47 = bitcast %union.anon* %2890 to i64*
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 15
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %2893 to i64*
  %2894 = load i64, i64* %RBP.i48
  %2895 = sub i64 %2894, 16
  %2896 = load i64, i64* %PC.i46
  %2897 = add i64 %2896, 4
  store i64 %2897, i64* %PC.i46
  %2898 = inttoptr i64 %2895 to i64*
  %2899 = load i64, i64* %2898
  store i64 %2899, i64* %RCX.i47, align 8
  store %struct.Memory* %loadMem_41417d, %struct.Memory** %MEMORY
  %loadMem_414181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 33
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %2902 to i64*
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 9
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %RSI.i44 = bitcast %union.anon* %2905 to i64*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 15
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %2908 to i64*
  %2909 = load i64, i64* %RBP.i45
  %2910 = sub i64 %2909, 36
  %2911 = load i64, i64* %PC.i43
  %2912 = add i64 %2911, 4
  store i64 %2912, i64* %PC.i43
  %2913 = inttoptr i64 %2910 to i32*
  %2914 = load i32, i32* %2913
  %2915 = sext i32 %2914 to i64
  store i64 %2915, i64* %RSI.i44, align 8
  store %struct.Memory* %loadMem_414181, %struct.Memory** %MEMORY
  %loadMem_414185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 33
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 5
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %2921 to i64*
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 9
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2924 to i64*
  %2925 = load i64, i64* %RCX.i42
  %2926 = load i64, i64* %RSI.i
  %2927 = mul i64 %2926, 4
  %2928 = add i64 %2927, %2925
  %2929 = load i64, i64* %PC.i41
  %2930 = add i64 %2929, 4
  store i64 %2930, i64* %PC.i41
  %2931 = inttoptr i64 %2928 to i32*
  %2932 = load i32, i32* %2931
  %2933 = sext i32 %2932 to i64
  store i64 %2933, i64* %RCX.i42, align 8
  store %struct.Memory* %loadMem_414185, %struct.Memory** %MEMORY
  %loadMem_414189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 33
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %2936 to i64*
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 5
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %2939 to i64*
  %2940 = load i64, i64* %RCX.i40
  %2941 = mul i64 %2940, 4
  %2942 = add i64 %2941, 11187184
  %2943 = load i64, i64* %PC.i39
  %2944 = add i64 %2943, 8
  store i64 %2944, i64* %PC.i39
  %2945 = inttoptr i64 %2942 to i32*
  %2946 = load i32, i32* %2945
  %2947 = sext i32 %2946 to i64
  store i64 %2947, i64* %RCX.i40, align 8
  store %struct.Memory* %loadMem_414189, %struct.Memory** %MEMORY
  %loadMem_414191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 33
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %2950 to i64*
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 5
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %RCX.i38 = bitcast %union.anon* %2953 to i64*
  %2954 = load i64, i64* %RCX.i38
  %2955 = load i64, i64* %PC.i37
  %2956 = add i64 %2955, 7
  store i64 %2956, i64* %PC.i37
  %2957 = sext i64 %2954 to i128
  %2958 = and i128 %2957, -18446744073709551616
  %2959 = zext i64 %2954 to i128
  %2960 = or i128 %2958, %2959
  %2961 = mul i128 744, %2960
  %2962 = trunc i128 %2961 to i64
  store i64 %2962, i64* %RCX.i38, align 8
  %2963 = sext i64 %2962 to i128
  %2964 = icmp ne i128 %2963, %2961
  %2965 = zext i1 %2964 to i8
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2965, i8* %2966, align 1
  %2967 = trunc i128 %2961 to i32
  %2968 = and i32 %2967, 255
  %2969 = call i32 @llvm.ctpop.i32(i32 %2968)
  %2970 = trunc i32 %2969 to i8
  %2971 = and i8 %2970, 1
  %2972 = xor i8 %2971, 1
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2972, i8* %2973, align 1
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2974, align 1
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2975, align 1
  %2976 = lshr i64 %2962, 63
  %2977 = trunc i64 %2976 to i8
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2977, i8* %2978, align 1
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2965, i8* %2979, align 1
  store %struct.Memory* %loadMem_414191, %struct.Memory** %MEMORY
  %loadMem_414198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 33
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %2982 to i64*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 1
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 5
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2988 to i64*
  %2989 = load i64, i64* %RAX.i36
  %2990 = load i64, i64* %RCX.i
  %2991 = load i64, i64* %PC.i35
  %2992 = add i64 %2991, 3
  store i64 %2992, i64* %PC.i35
  %2993 = add i64 %2990, %2989
  store i64 %2993, i64* %RAX.i36, align 8
  %2994 = icmp ult i64 %2993, %2989
  %2995 = icmp ult i64 %2993, %2990
  %2996 = or i1 %2994, %2995
  %2997 = zext i1 %2996 to i8
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2997, i8* %2998, align 1
  %2999 = trunc i64 %2993 to i32
  %3000 = and i32 %2999, 255
  %3001 = call i32 @llvm.ctpop.i32(i32 %3000)
  %3002 = trunc i32 %3001 to i8
  %3003 = and i8 %3002, 1
  %3004 = xor i8 %3003, 1
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3004, i8* %3005, align 1
  %3006 = xor i64 %2990, %2989
  %3007 = xor i64 %3006, %2993
  %3008 = lshr i64 %3007, 4
  %3009 = trunc i64 %3008 to i8
  %3010 = and i8 %3009, 1
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3010, i8* %3011, align 1
  %3012 = icmp eq i64 %2993, 0
  %3013 = zext i1 %3012 to i8
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3013, i8* %3014, align 1
  %3015 = lshr i64 %2993, 63
  %3016 = trunc i64 %3015 to i8
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3016, i8* %3017, align 1
  %3018 = lshr i64 %2989, 63
  %3019 = lshr i64 %2990, 63
  %3020 = xor i64 %3015, %3018
  %3021 = xor i64 %3015, %3019
  %3022 = add i64 %3020, %3021
  %3023 = icmp eq i64 %3022, 2
  %3024 = zext i1 %3023 to i8
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3024, i8* %3025, align 1
  store %struct.Memory* %loadMem_414198, %struct.Memory** %MEMORY
  %loadMem_41419b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 33
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3028 to i64*
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 7
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %EDX.i33 = bitcast %union.anon* %3031 to i32*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 1
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %3034 to i64*
  %3035 = load i64, i64* %RAX.i34
  %3036 = add i64 %3035, 740
  %3037 = load i32, i32* %EDX.i33
  %3038 = zext i32 %3037 to i64
  %3039 = load i64, i64* %PC.i32
  %3040 = add i64 %3039, 6
  store i64 %3040, i64* %PC.i32
  %3041 = inttoptr i64 %3036 to i32*
  store i32 %3037, i32* %3041
  store %struct.Memory* %loadMem_41419b, %struct.Memory** %MEMORY
  %loadMem_4141a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 33
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3044 to i64*
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 7
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %RDX.i30 = bitcast %union.anon* %3047 to i64*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 15
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %3050 to i64*
  %3051 = load i64, i64* %RBP.i31
  %3052 = sub i64 %3051, 36
  %3053 = load i64, i64* %PC.i29
  %3054 = add i64 %3053, 3
  store i64 %3054, i64* %PC.i29
  %3055 = inttoptr i64 %3052 to i32*
  %3056 = load i32, i32* %3055
  %3057 = zext i32 %3056 to i64
  store i64 %3057, i64* %RDX.i30, align 8
  store %struct.Memory* %loadMem_4141a1, %struct.Memory** %MEMORY
  %loadMem_4141a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 33
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3060 to i64*
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 7
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3063 to i64*
  %3064 = load i64, i64* %RDX.i
  %3065 = load i64, i64* %PC.i28
  %3066 = add i64 %3065, 3
  store i64 %3066, i64* %PC.i28
  %3067 = trunc i64 %3064 to i32
  %3068 = add i32 1, %3067
  %3069 = zext i32 %3068 to i64
  store i64 %3069, i64* %RDX.i, align 8
  %3070 = icmp ult i32 %3068, %3067
  %3071 = icmp ult i32 %3068, 1
  %3072 = or i1 %3070, %3071
  %3073 = zext i1 %3072 to i8
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3073, i8* %3074, align 1
  %3075 = and i32 %3068, 255
  %3076 = call i32 @llvm.ctpop.i32(i32 %3075)
  %3077 = trunc i32 %3076 to i8
  %3078 = and i8 %3077, 1
  %3079 = xor i8 %3078, 1
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3079, i8* %3080, align 1
  %3081 = xor i64 1, %3064
  %3082 = trunc i64 %3081 to i32
  %3083 = xor i32 %3082, %3068
  %3084 = lshr i32 %3083, 4
  %3085 = trunc i32 %3084 to i8
  %3086 = and i8 %3085, 1
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3086, i8* %3087, align 1
  %3088 = icmp eq i32 %3068, 0
  %3089 = zext i1 %3088 to i8
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3089, i8* %3090, align 1
  %3091 = lshr i32 %3068, 31
  %3092 = trunc i32 %3091 to i8
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3092, i8* %3093, align 1
  %3094 = lshr i32 %3067, 31
  %3095 = xor i32 %3091, %3094
  %3096 = add i32 %3095, %3091
  %3097 = icmp eq i32 %3096, 2
  %3098 = zext i1 %3097 to i8
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3098, i8* %3099, align 1
  store %struct.Memory* %loadMem_4141a4, %struct.Memory** %MEMORY
  %loadMem_4141a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 33
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %3102 to i64*
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 7
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3105 to i32*
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 15
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %3108 to i64*
  %3109 = load i64, i64* %RBP.i27
  %3110 = sub i64 %3109, 36
  %3111 = load i32, i32* %EDX.i
  %3112 = zext i32 %3111 to i64
  %3113 = load i64, i64* %PC.i26
  %3114 = add i64 %3113, 3
  store i64 %3114, i64* %PC.i26
  %3115 = inttoptr i64 %3110 to i32*
  store i32 %3111, i32* %3115
  store %struct.Memory* %loadMem_4141a7, %struct.Memory** %MEMORY
  br label %block_.L_4141aa

block_.L_4141aa:                                  ; preds = %block_414130, %block_.L_4140e8, %block_4140b3, %block_4140a9
  %loadMem_4141aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 33
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3118 to i64*
  %3119 = load i64, i64* %PC.i25
  %3120 = add i64 %3119, 5
  %3121 = load i64, i64* %PC.i25
  %3122 = add i64 %3121, 5
  store i64 %3122, i64* %PC.i25
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3120, i64* %3123, align 8
  store %struct.Memory* %loadMem_4141aa, %struct.Memory** %MEMORY
  br label %block_.L_4141af

block_.L_4141af:                                  ; preds = %block_.L_4141aa
  %loadMem_4141af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 33
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3126 to i64*
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3128 = getelementptr inbounds %struct.GPR, %struct.GPR* %3127, i32 0, i32 1
  %3129 = getelementptr inbounds %struct.Reg, %struct.Reg* %3128, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %3129 to i64*
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 15
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %3132 to i64*
  %3133 = load i64, i64* %RBP.i24
  %3134 = sub i64 %3133, 40
  %3135 = load i64, i64* %PC.i22
  %3136 = add i64 %3135, 3
  store i64 %3136, i64* %PC.i22
  %3137 = inttoptr i64 %3134 to i32*
  %3138 = load i32, i32* %3137
  %3139 = zext i32 %3138 to i64
  store i64 %3139, i64* %RAX.i23, align 8
  store %struct.Memory* %loadMem_4141af, %struct.Memory** %MEMORY
  %loadMem_4141b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 33
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 1
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %3145 to i64*
  %3146 = load i64, i64* %RAX.i21
  %3147 = load i64, i64* %PC.i20
  %3148 = add i64 %3147, 3
  store i64 %3148, i64* %PC.i20
  %3149 = trunc i64 %3146 to i32
  %3150 = add i32 1, %3149
  %3151 = zext i32 %3150 to i64
  store i64 %3151, i64* %RAX.i21, align 8
  %3152 = icmp ult i32 %3150, %3149
  %3153 = icmp ult i32 %3150, 1
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
  %3163 = xor i64 1, %3146
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
  %3177 = xor i32 %3173, %3176
  %3178 = add i32 %3177, %3173
  %3179 = icmp eq i32 %3178, 2
  %3180 = zext i1 %3179 to i8
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3180, i8* %3181, align 1
  store %struct.Memory* %loadMem_4141b2, %struct.Memory** %MEMORY
  %loadMem_4141b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3183 = getelementptr inbounds %struct.GPR, %struct.GPR* %3182, i32 0, i32 33
  %3184 = getelementptr inbounds %struct.Reg, %struct.Reg* %3183, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3184 to i64*
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 1
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %EAX.i18 = bitcast %union.anon* %3187 to i32*
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 15
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %3190 to i64*
  %3191 = load i64, i64* %RBP.i19
  %3192 = sub i64 %3191, 40
  %3193 = load i32, i32* %EAX.i18
  %3194 = zext i32 %3193 to i64
  %3195 = load i64, i64* %PC.i17
  %3196 = add i64 %3195, 3
  store i64 %3196, i64* %PC.i17
  %3197 = inttoptr i64 %3192 to i32*
  store i32 %3193, i32* %3197
  store %struct.Memory* %loadMem_4141b5, %struct.Memory** %MEMORY
  %loadMem_4141b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 33
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3200 to i64*
  %3201 = load i64, i64* %PC.i16
  %3202 = add i64 %3201, -341
  %3203 = load i64, i64* %PC.i16
  %3204 = add i64 %3203, 5
  store i64 %3204, i64* %PC.i16
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3202, i64* %3205, align 8
  store %struct.Memory* %loadMem_4141b8, %struct.Memory** %MEMORY
  br label %block_.L_414063

block_.L_4141bd:                                  ; preds = %block_.L_414063
  %loadMem_4141bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3207 = getelementptr inbounds %struct.GPR, %struct.GPR* %3206, i32 0, i32 33
  %3208 = getelementptr inbounds %struct.Reg, %struct.Reg* %3207, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3208 to i64*
  %3209 = load i64, i64* %PC.i15
  %3210 = add i64 %3209, 5
  %3211 = load i64, i64* %PC.i15
  %3212 = add i64 %3211, 5
  store i64 %3212, i64* %PC.i15
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3210, i64* %3213, align 8
  store %struct.Memory* %loadMem_4141bd, %struct.Memory** %MEMORY
  br label %block_.L_4141c2

block_.L_4141c2:                                  ; preds = %block_.L_4141bd
  %loadMem_4141c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 33
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3216 to i64*
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 1
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %3219 to i64*
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 15
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %3222 to i64*
  %3223 = load i64, i64* %RBP.i14
  %3224 = sub i64 %3223, 44
  %3225 = load i64, i64* %PC.i12
  %3226 = add i64 %3225, 3
  store i64 %3226, i64* %PC.i12
  %3227 = inttoptr i64 %3224 to i32*
  %3228 = load i32, i32* %3227
  %3229 = zext i32 %3228 to i64
  store i64 %3229, i64* %RAX.i13, align 8
  store %struct.Memory* %loadMem_4141c2, %struct.Memory** %MEMORY
  %loadMem_4141c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 33
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %3232 to i64*
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 1
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %3235 to i64*
  %3236 = load i64, i64* %RAX.i11
  %3237 = load i64, i64* %PC.i10
  %3238 = add i64 %3237, 3
  store i64 %3238, i64* %PC.i10
  %3239 = trunc i64 %3236 to i32
  %3240 = add i32 1, %3239
  %3241 = zext i32 %3240 to i64
  store i64 %3241, i64* %RAX.i11, align 8
  %3242 = icmp ult i32 %3240, %3239
  %3243 = icmp ult i32 %3240, 1
  %3244 = or i1 %3242, %3243
  %3245 = zext i1 %3244 to i8
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3245, i8* %3246, align 1
  %3247 = and i32 %3240, 255
  %3248 = call i32 @llvm.ctpop.i32(i32 %3247)
  %3249 = trunc i32 %3248 to i8
  %3250 = and i8 %3249, 1
  %3251 = xor i8 %3250, 1
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3251, i8* %3252, align 1
  %3253 = xor i64 1, %3236
  %3254 = trunc i64 %3253 to i32
  %3255 = xor i32 %3254, %3240
  %3256 = lshr i32 %3255, 4
  %3257 = trunc i32 %3256 to i8
  %3258 = and i8 %3257, 1
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3258, i8* %3259, align 1
  %3260 = icmp eq i32 %3240, 0
  %3261 = zext i1 %3260 to i8
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3261, i8* %3262, align 1
  %3263 = lshr i32 %3240, 31
  %3264 = trunc i32 %3263 to i8
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3264, i8* %3265, align 1
  %3266 = lshr i32 %3239, 31
  %3267 = xor i32 %3263, %3266
  %3268 = add i32 %3267, %3263
  %3269 = icmp eq i32 %3268, 2
  %3270 = zext i1 %3269 to i8
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3270, i8* %3271, align 1
  store %struct.Memory* %loadMem_4141c5, %struct.Memory** %MEMORY
  %loadMem_4141c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 33
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3274 to i64*
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 1
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3277 to i32*
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 15
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %3280 to i64*
  %3281 = load i64, i64* %RBP.i9
  %3282 = sub i64 %3281, 44
  %3283 = load i32, i32* %EAX.i
  %3284 = zext i32 %3283 to i64
  %3285 = load i64, i64* %PC.i8
  %3286 = add i64 %3285, 3
  store i64 %3286, i64* %PC.i8
  %3287 = inttoptr i64 %3282 to i32*
  store i32 %3283, i32* %3287
  store %struct.Memory* %loadMem_4141c8, %struct.Memory** %MEMORY
  %loadMem_4141cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 33
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3290 to i64*
  %3291 = load i64, i64* %PC.i7
  %3292 = add i64 %3291, -382
  %3293 = load i64, i64* %PC.i7
  %3294 = add i64 %3293, 5
  store i64 %3294, i64* %PC.i7
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3292, i64* %3295, align 8
  store %struct.Memory* %loadMem_4141cb, %struct.Memory** %MEMORY
  br label %block_.L_41404d

block_.L_4141d0:                                  ; preds = %block_.L_41404d
  %loadMem_4141d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 33
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3298 to i64*
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 1
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3301 to i64*
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 15
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %3304 to i64*
  %3305 = load i64, i64* %RBP.i6
  %3306 = sub i64 %3305, 36
  %3307 = load i64, i64* %PC.i5
  %3308 = add i64 %3307, 3
  store i64 %3308, i64* %PC.i5
  %3309 = inttoptr i64 %3306 to i32*
  %3310 = load i32, i32* %3309
  %3311 = zext i32 %3310 to i64
  store i64 %3311, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4141d0, %struct.Memory** %MEMORY
  %loadMem_4141d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 33
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3314 to i64*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 13
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3317 to i64*
  %3318 = load i64, i64* %RSP.i
  %3319 = load i64, i64* %PC.i4
  %3320 = add i64 %3319, 7
  store i64 %3320, i64* %PC.i4
  %3321 = add i64 1040, %3318
  store i64 %3321, i64* %RSP.i, align 8
  %3322 = icmp ult i64 %3321, %3318
  %3323 = icmp ult i64 %3321, 1040
  %3324 = or i1 %3322, %3323
  %3325 = zext i1 %3324 to i8
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3325, i8* %3326, align 1
  %3327 = trunc i64 %3321 to i32
  %3328 = and i32 %3327, 255
  %3329 = call i32 @llvm.ctpop.i32(i32 %3328)
  %3330 = trunc i32 %3329 to i8
  %3331 = and i8 %3330, 1
  %3332 = xor i8 %3331, 1
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3332, i8* %3333, align 1
  %3334 = xor i64 1040, %3318
  %3335 = xor i64 %3334, %3321
  %3336 = lshr i64 %3335, 4
  %3337 = trunc i64 %3336 to i8
  %3338 = and i8 %3337, 1
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3338, i8* %3339, align 1
  %3340 = icmp eq i64 %3321, 0
  %3341 = zext i1 %3340 to i8
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3341, i8* %3342, align 1
  %3343 = lshr i64 %3321, 63
  %3344 = trunc i64 %3343 to i8
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3344, i8* %3345, align 1
  %3346 = lshr i64 %3318, 63
  %3347 = xor i64 %3343, %3346
  %3348 = add i64 %3347, %3343
  %3349 = icmp eq i64 %3348, 2
  %3350 = zext i1 %3349 to i8
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3350, i8* %3351, align 1
  store %struct.Memory* %loadMem_4141d3, %struct.Memory** %MEMORY
  %loadMem_4141da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3353 = getelementptr inbounds %struct.GPR, %struct.GPR* %3352, i32 0, i32 33
  %3354 = getelementptr inbounds %struct.Reg, %struct.Reg* %3353, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3354 to i64*
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 15
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3357 to i64*
  %3358 = load i64, i64* %PC.i2
  %3359 = add i64 %3358, 1
  store i64 %3359, i64* %PC.i2
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3361 = load i64, i64* %3360, align 8
  %3362 = add i64 %3361, 8
  %3363 = inttoptr i64 %3361 to i64*
  %3364 = load i64, i64* %3363
  store i64 %3364, i64* %RBP.i3, align 8
  store i64 %3362, i64* %3360, align 8
  store %struct.Memory* %loadMem_4141da, %struct.Memory** %MEMORY
  %loadMem_4141db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 33
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3367 to i64*
  %3368 = load i64, i64* %PC.i1
  %3369 = add i64 %3368, 1
  store i64 %3369, i64* %PC.i1
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3372 = load i64, i64* %3371, align 8
  %3373 = inttoptr i64 %3372 to i64*
  %3374 = load i64, i64* %3373
  store i64 %3374, i64* %3370, align 8
  %3375 = add i64 %3372, 8
  store i64 %3375, i64* %3371, align 8
  store %struct.Memory* %loadMem_4141db, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4141db
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

define %struct.Memory* @routine_subq__0x410___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 1040
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 1040
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
  %23 = xor i64 1040, %9
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
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

define %struct.Memory* @routine_cmpl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_413eff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_413f04(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_413f75(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x8b3___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2227, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a4d2___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a4d2_type* @G__0x57a4d2 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x3f8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1016
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

define %struct.Memory* @routine_movq__rdx__MINUS0x400__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1024
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

define %struct.Memory* @routine_movl_MINUS0x3f8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1016
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x404__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1028
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

define %struct.Memory* @routine_movq_MINUS0x400__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1024
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x408__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1032
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

define %struct.Memory* @routine_movl_MINUS0x404__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1028
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x408__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1032
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11187184
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 744, %15
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

define %struct.Memory* @routine_movl_0x99da08___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__0x99da08(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  store i32 %9, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
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

define %struct.Memory* @routine_cmpl_0x60__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 96
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

define %struct.Memory* @routine_jge_.L_41402c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_0x64__rcx__rdx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 100
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0x8__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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

define %struct.Memory* @routine_movl__esi____rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movl_0x99da08___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq___rcx__rdx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__0x2e4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 740
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jmpq_.L_413fb1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xf1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 241, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x3f0__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1008
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.findlib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x3f4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1012
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_cmpl_MINUS0x3f4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 1012
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

define %struct.Memory* @routine_jge_.L_4141d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 40
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

define %struct.Memory* @routine_jge_.L_4141bd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x3f0__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1008
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDX, align 8
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

define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %22, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i32 %17, %13
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %18, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %14, %12
  %30 = trunc i64 %29 to i32
  %31 = xor i32 %30, %18
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %18, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %18, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %17, 31
  %43 = lshr i32 %13, 31
  %44 = xor i32 %43, %42
  %45 = xor i32 %39, %42
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
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

define %struct.Memory* @routine_je_.L_4140e8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4141aa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3f0__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -1008
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x7ae1b0___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %22, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_jne_.L_4141aa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x2e4__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 740
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x99da08___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addq__rcx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movl_0x8__rsi____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx____rcx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movslq___rcx__rsi_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0x2e4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 740
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4141af(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_414063(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4141c2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41404d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x410___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1040, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1040
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
  %25 = xor i64 1040, %9
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
