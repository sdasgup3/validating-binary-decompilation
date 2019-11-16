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
%G_0x99da04_type = type <{ [4 x i8] }>
%G__0x57a16e_type = type <{ [8 x i8] }>
%G__0x57a4e7_type = type <{ [8 x i8] }>
%G__0x57a504_type = type <{ [8 x i8] }>
%G__0x57a514_type = type <{ [8 x i8] }>
%G__0x57a524_type = type <{ [8 x i8] }>
%G__0x57a53a_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x99da04 = global %G_0x99da04_type zeroinitializer
@G__0x57a16e = global %G__0x57a16e_type zeroinitializer
@G__0x57a4e7 = global %G__0x57a4e7_type zeroinitializer
@G__0x57a504 = global %G__0x57a504_type zeroinitializer
@G__0x57a514 = global %G__0x57a514_type zeroinitializer
@G__0x57a524 = global %G__0x57a524_type zeroinitializer
@G__0x57a53a = global %G__0x57a53a_type zeroinitializer
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
define %struct.Memory* @find_common_libs(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_412aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_412aa0, %struct.Memory** %MEMORY
  %loadMem_412aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i588 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i588
  %27 = load i64, i64* %PC.i587
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i587
  store i64 %26, i64* %RBP.i589, align 8
  store %struct.Memory* %loadMem_412aa1, %struct.Memory** %MEMORY
  %loadMem_412aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i606 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i606
  %36 = load i64, i64* %PC.i605
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i605
  %38 = sub i64 %35, 1152
  store i64 %38, i64* %RSP.i606, align 8
  %39 = icmp ult i64 %35, 1152
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
  %49 = xor i64 1152, %35
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
  store %struct.Memory* %loadMem_412aa4, %struct.Memory** %MEMORY
  %loadMem_412aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i657
  %77 = sub i64 %76, 8
  %78 = load i32, i32* %EDI.i
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i656
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i656
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_412aab, %struct.Memory** %MEMORY
  %loadMem_412aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %ESI.i674 = bitcast %union.anon* %88 to i32*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i675 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i675
  %93 = sub i64 %92, 12
  %94 = load i32, i32* %ESI.i674
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %PC.i673
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC.i673
  %98 = inttoptr i64 %93 to i32*
  store i32 %94, i32* %98
  store %struct.Memory* %loadMem_412aae, %struct.Memory** %MEMORY
  %loadMem_412ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %EDX.i741 = bitcast %union.anon* %104 to i32*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 15
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RBP.i742 = bitcast %union.anon* %107 to i64*
  %108 = load i64, i64* %RBP.i742
  %109 = sub i64 %108, 16
  %110 = load i32, i32* %EDX.i741
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* %PC.i740
  %113 = add i64 %112, 3
  store i64 %113, i64* %PC.i740
  %114 = inttoptr i64 %109 to i32*
  store i32 %110, i32* %114
  store %struct.Memory* %loadMem_412ab1, %struct.Memory** %MEMORY
  %loadMem_412ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RCX.i759 = bitcast %union.anon* %120 to i64*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 15
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %RBP.i760 = bitcast %union.anon* %123 to i64*
  %124 = load i64, i64* %RBP.i760
  %125 = sub i64 %124, 24
  %126 = load i64, i64* %RCX.i759
  %127 = load i64, i64* %PC.i758
  %128 = add i64 %127, 4
  store i64 %128, i64* %PC.i758
  %129 = inttoptr i64 %125 to i64*
  store i64 %126, i64* %129
  store %struct.Memory* %loadMem_412ab4, %struct.Memory** %MEMORY
  %loadMem_412ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 33
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %132 to i64*
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 15
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %RBP.i826 = bitcast %union.anon* %135 to i64*
  %136 = load i64, i64* %RBP.i826
  %137 = sub i64 %136, 1012
  %138 = load i64, i64* %PC.i825
  %139 = add i64 %138, 10
  store i64 %139, i64* %PC.i825
  %140 = inttoptr i64 %137 to i32*
  store i32 0, i32* %140
  store %struct.Memory* %loadMem_412ab8, %struct.Memory** %MEMORY
  %loadMem_412ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 33
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 15
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RBP.i843 = bitcast %union.anon* %146 to i64*
  %147 = load i64, i64* %RBP.i843
  %148 = sub i64 %147, 8
  %149 = load i64, i64* %PC.i842
  %150 = add i64 %149, 7
  store i64 %150, i64* %PC.i842
  %151 = inttoptr i64 %148 to i32*
  %152 = load i32, i32* %151
  %153 = sub i32 %152, 421
  %154 = icmp ult i32 %152, 421
  %155 = zext i1 %154 to i8
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %155, i8* %156, align 1
  %157 = and i32 %153, 255
  %158 = call i32 @llvm.ctpop.i32(i32 %157)
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  %161 = xor i8 %160, 1
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %161, i8* %162, align 1
  %163 = xor i32 %152, 421
  %164 = xor i32 %163, %153
  %165 = lshr i32 %164, 4
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %167, i8* %168, align 1
  %169 = icmp eq i32 %153, 0
  %170 = zext i1 %169 to i8
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %170, i8* %171, align 1
  %172 = lshr i32 %153, 31
  %173 = trunc i32 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %173, i8* %174, align 1
  %175 = lshr i32 %152, 31
  %176 = xor i32 %172, %175
  %177 = add i32 %176, %175
  %178 = icmp eq i32 %177, 2
  %179 = zext i1 %178 to i8
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %179, i8* %180, align 1
  store %struct.Memory* %loadMem_412ac2, %struct.Memory** %MEMORY
  %loadMem_412ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 33
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %183 to i64*
  %184 = load i64, i64* %PC.i902
  %185 = add i64 %184, 32
  %186 = load i64, i64* %PC.i902
  %187 = add i64 %186, 6
  %188 = load i64, i64* %PC.i902
  %189 = add i64 %188, 6
  store i64 %189, i64* %PC.i902
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %191 = load i8, i8* %190, align 1
  %192 = icmp eq i8 %191, 0
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %BRANCH_TAKEN, align 1
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %195 = select i1 %192, i64 %185, i64 %187
  store i64 %195, i64* %194, align 8
  store %struct.Memory* %loadMem_412ac9, %struct.Memory** %MEMORY
  %loadBr_412ac9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412ac9 = icmp eq i8 %loadBr_412ac9, 1
  br i1 %cmpBr_412ac9, label %block_.L_412ae9, label %block_412acf

block_412acf:                                     ; preds = %entry
  %loadMem_412acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %RAX.i919 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 15
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RBP.i920 = bitcast %union.anon* %204 to i64*
  %205 = load i64, i64* %RBP.i920
  %206 = sub i64 %205, 8
  %207 = load i64, i64* %PC.i918
  %208 = add i64 %207, 4
  store i64 %208, i64* %PC.i918
  %209 = inttoptr i64 %206 to i32*
  %210 = load i32, i32* %209
  %211 = sext i32 %210 to i64
  store i64 %211, i64* %RAX.i919, align 8
  store %struct.Memory* %loadMem_412acf, %struct.Memory** %MEMORY
  %loadMem_412ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i949 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RAX.i950 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RCX.i951 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %RAX.i950
  %222 = add i64 %221, 12099168
  %223 = load i64, i64* %PC.i949
  %224 = add i64 %223, 8
  store i64 %224, i64* %PC.i949
  %225 = inttoptr i64 %222 to i8*
  %226 = load i8, i8* %225
  %227 = zext i8 %226 to i64
  store i64 %227, i64* %RCX.i951, align 8
  store %struct.Memory* %loadMem_412ad3, %struct.Memory** %MEMORY
  %loadMem_412adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 33
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %PC.i947 = bitcast %union.anon* %230 to i64*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %ECX.i948 = bitcast %union.anon* %233 to i32*
  %234 = load i32, i32* %ECX.i948
  %235 = zext i32 %234 to i64
  %236 = load i64, i64* %PC.i947
  %237 = add i64 %236, 3
  store i64 %237, i64* %PC.i947
  %238 = sub i32 %234, 3
  %239 = icmp ult i32 %234, 3
  %240 = zext i1 %239 to i8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %240, i8* %241, align 1
  %242 = and i32 %238, 255
  %243 = call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %246, i8* %247, align 1
  %248 = xor i64 3, %235
  %249 = trunc i64 %248 to i32
  %250 = xor i32 %249, %238
  %251 = lshr i32 %250, 4
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %253, i8* %254, align 1
  %255 = icmp eq i32 %238, 0
  %256 = zext i1 %255 to i8
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %256, i8* %257, align 1
  %258 = lshr i32 %238, 31
  %259 = trunc i32 %258 to i8
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %259, i8* %260, align 1
  %261 = lshr i32 %234, 31
  %262 = xor i32 %258, %261
  %263 = add i32 %262, %261
  %264 = icmp eq i32 %263, 2
  %265 = zext i1 %264 to i8
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %265, i8* %266, align 1
  store %struct.Memory* %loadMem_412adb, %struct.Memory** %MEMORY
  %loadMem_412ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 33
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %PC.i946 = bitcast %union.anon* %269 to i64*
  %270 = load i64, i64* %PC.i946
  %271 = add i64 %270, 11
  %272 = load i64, i64* %PC.i946
  %273 = add i64 %272, 6
  %274 = load i64, i64* %PC.i946
  %275 = add i64 %274, 6
  store i64 %275, i64* %PC.i946
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %277 = load i8, i8* %276, align 1
  store i8 %277, i8* %BRANCH_TAKEN, align 1
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %279 = icmp ne i8 %277, 0
  %280 = select i1 %279, i64 %271, i64 %273
  store i64 %280, i64* %278, align 8
  store %struct.Memory* %loadMem_412ade, %struct.Memory** %MEMORY
  %loadBr_412ade = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412ade = icmp eq i8 %loadBr_412ade, 1
  br i1 %cmpBr_412ade, label %block_.L_412ae9, label %block_412ae4

block_412ae4:                                     ; preds = %block_412acf
  %loadMem_412ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 33
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %PC.i945 = bitcast %union.anon* %283 to i64*
  %284 = load i64, i64* %PC.i945
  %285 = add i64 %284, 118
  %286 = load i64, i64* %PC.i945
  %287 = add i64 %286, 5
  store i64 %287, i64* %PC.i945
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %285, i64* %288, align 8
  store %struct.Memory* %loadMem_412ae4, %struct.Memory** %MEMORY
  br label %block_.L_412b5a

block_.L_412ae9:                                  ; preds = %block_412acf, %entry
  %loadMem_412ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 33
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %PC.i943 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 11
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %RDI.i944 = bitcast %union.anon* %294 to i64*
  %295 = load i64, i64* %PC.i943
  %296 = add i64 %295, 10
  store i64 %296, i64* %PC.i943
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i944, align 8
  store %struct.Memory* %loadMem_412ae9, %struct.Memory** %MEMORY
  %loadMem_412af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i941 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 9
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RSI.i942 = bitcast %union.anon* %302 to i64*
  %303 = load i64, i64* %PC.i941
  %304 = add i64 %303, 5
  store i64 %304, i64* %PC.i941
  store i64 1981, i64* %RSI.i942, align 8
  store %struct.Memory* %loadMem_412af3, %struct.Memory** %MEMORY
  %loadMem_412af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i939 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 7
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %RDX.i940 = bitcast %union.anon* %310 to i64*
  %311 = load i64, i64* %PC.i939
  %312 = add i64 %311, 10
  store i64 %312, i64* %PC.i939
  store i64 ptrtoint (%G__0x57a504_type* @G__0x57a504 to i64), i64* %RDX.i940, align 8
  store %struct.Memory* %loadMem_412af8, %struct.Memory** %MEMORY
  %loadMem_412b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 33
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %PC.i937 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %RAX.i938 = bitcast %union.anon* %318 to i64*
  %319 = load i64, i64* %PC.i937
  %320 = add i64 %319, 5
  store i64 %320, i64* %PC.i937
  store i64 20, i64* %RAX.i938, align 8
  store %struct.Memory* %loadMem_412b02, %struct.Memory** %MEMORY
  %loadMem_412b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 33
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %323 to i64*
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 5
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %RCX.i935 = bitcast %union.anon* %326 to i64*
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 15
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %RBP.i936 = bitcast %union.anon* %329 to i64*
  %330 = load i64, i64* %RBP.i936
  %331 = sub i64 %330, 8
  %332 = load i64, i64* %PC.i934
  %333 = add i64 %332, 3
  store i64 %333, i64* %PC.i934
  %334 = inttoptr i64 %331 to i32*
  %335 = load i32, i32* %334
  %336 = zext i32 %335 to i64
  store i64 %336, i64* %RCX.i935, align 8
  store %struct.Memory* %loadMem_412b07, %struct.Memory** %MEMORY
  %loadMem_412b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 33
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %PC.i931 = bitcast %union.anon* %339 to i64*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %EAX.i932 = bitcast %union.anon* %342 to i32*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 15
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RBP.i933 = bitcast %union.anon* %345 to i64*
  %346 = load i64, i64* %RBP.i933
  %347 = sub i64 %346, 1028
  %348 = load i32, i32* %EAX.i932
  %349 = zext i32 %348 to i64
  %350 = load i64, i64* %PC.i931
  %351 = add i64 %350, 6
  store i64 %351, i64* %PC.i931
  %352 = inttoptr i64 %347 to i32*
  store i32 %348, i32* %352
  store %struct.Memory* %loadMem_412b0a, %struct.Memory** %MEMORY
  %loadMem_412b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 33
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %355 to i64*
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 5
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %ECX.i929 = bitcast %union.anon* %358 to i32*
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %RAX.i930 = bitcast %union.anon* %361 to i64*
  %362 = load i32, i32* %ECX.i929
  %363 = zext i32 %362 to i64
  %364 = load i64, i64* %PC.i928
  %365 = add i64 %364, 2
  store i64 %365, i64* %PC.i928
  %366 = and i64 %363, 4294967295
  store i64 %366, i64* %RAX.i930, align 8
  store %struct.Memory* %loadMem_412b10, %struct.Memory** %MEMORY
  %loadMem_412b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 33
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %369 to i64*
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 7
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %RDX.i926 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 15
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %RBP.i927 = bitcast %union.anon* %375 to i64*
  %376 = load i64, i64* %RBP.i927
  %377 = sub i64 %376, 1040
  %378 = load i64, i64* %RDX.i926
  %379 = load i64, i64* %PC.i925
  %380 = add i64 %379, 7
  store i64 %380, i64* %PC.i925
  %381 = inttoptr i64 %377 to i64*
  store i64 %378, i64* %381
  store %struct.Memory* %loadMem_412b12, %struct.Memory** %MEMORY
  %loadMem_412b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 33
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %PC.i924 = bitcast %union.anon* %384 to i64*
  %385 = load i64, i64* %PC.i924
  %386 = add i64 %385, 1
  store i64 %386, i64* %PC.i924
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %389 = bitcast %union.anon* %388 to i32*
  %390 = load i32, i32* %389, align 8
  %391 = sext i32 %390 to i64
  %392 = lshr i64 %391, 32
  store i64 %392, i64* %387, align 8
  store %struct.Memory* %loadMem_412b19, %struct.Memory** %MEMORY
  %loadMem_412b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 33
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %395 to i64*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 5
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %RCX.i922 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 15
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %RBP.i923 = bitcast %union.anon* %401 to i64*
  %402 = load i64, i64* %RBP.i923
  %403 = sub i64 %402, 1028
  %404 = load i64, i64* %PC.i921
  %405 = add i64 %404, 6
  store i64 %405, i64* %PC.i921
  %406 = inttoptr i64 %403 to i32*
  %407 = load i32, i32* %406
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RCX.i922, align 8
  store %struct.Memory* %loadMem_412b1a, %struct.Memory** %MEMORY
  %loadMem_412b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i915 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 5
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %ECX.i916 = bitcast %union.anon* %414 to i32*
  %415 = load i32, i32* %ECX.i916
  %416 = zext i32 %415 to i64
  %417 = load i64, i64* %PC.i915
  %418 = add i64 %417, 2
  store i64 %418, i64* %PC.i915
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %420 = bitcast %union.anon* %419 to i32*
  %421 = load i32, i32* %420, align 8
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %424 = bitcast %union.anon* %423 to i32*
  %425 = load i32, i32* %424, align 8
  %426 = zext i32 %425 to i64
  %427 = shl i64 %416, 32
  %428 = ashr exact i64 %427, 32
  %429 = shl i64 %426, 32
  %430 = or i64 %429, %422
  %431 = sdiv i64 %430, %428
  %432 = shl i64 %431, 32
  %433 = ashr exact i64 %432, 32
  %434 = icmp eq i64 %431, %433
  br i1 %434, label %439, label %435

; <label>:435:                                    ; preds = %block_.L_412ae9
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %437, %struct.Memory* %loadMem_412b20)
  br label %routine_idivl__ecx.exit917

; <label>:439:                                    ; preds = %block_.L_412ae9
  %440 = srem i64 %430, %428
  %441 = getelementptr inbounds %union.anon, %union.anon* %419, i64 0, i32 0
  %442 = and i64 %431, 4294967295
  store i64 %442, i64* %441, align 8
  %443 = getelementptr inbounds %union.anon, %union.anon* %423, i64 0, i32 0
  %444 = and i64 %440, 4294967295
  store i64 %444, i64* %443, align 8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %445, align 1
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %446, align 1
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %447, align 1
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %448, align 1
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %449, align 1
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %450, align 1
  br label %routine_idivl__ecx.exit917

routine_idivl__ecx.exit917:                       ; preds = %435, %439
  %451 = phi %struct.Memory* [ %438, %435 ], [ %loadMem_412b20, %439 ]
  store %struct.Memory* %451, %struct.Memory** %MEMORY
  %loadMem_412b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 33
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %454 to i64*
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %RAX.i914 = bitcast %union.anon* %457 to i64*
  %458 = load i64, i64* %RAX.i914
  %459 = load i64, i64* %PC.i913
  %460 = add i64 %459, 3
  store i64 %460, i64* %PC.i913
  %461 = trunc i64 %458 to i32
  %462 = sub i32 %461, 1
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RAX.i914, align 8
  %464 = icmp ult i32 %461, 1
  %465 = zext i1 %464 to i8
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %465, i8* %466, align 1
  %467 = and i32 %462, 255
  %468 = call i32 @llvm.ctpop.i32(i32 %467)
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %471, i8* %472, align 1
  %473 = xor i64 1, %458
  %474 = trunc i64 %473 to i32
  %475 = xor i32 %474, %462
  %476 = lshr i32 %475, 4
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %478, i8* %479, align 1
  %480 = icmp eq i32 %462, 0
  %481 = zext i1 %480 to i8
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %481, i8* %482, align 1
  %483 = lshr i32 %462, 31
  %484 = trunc i32 %483 to i8
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %484, i8* %485, align 1
  %486 = lshr i32 %461, 31
  %487 = xor i32 %483, %486
  %488 = add i32 %487, %486
  %489 = icmp eq i32 %488, 2
  %490 = zext i1 %489 to i8
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %490, i8* %491, align 1
  store %struct.Memory* %loadMem_412b22, %struct.Memory** %MEMORY
  %loadMem_412b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 33
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %494 to i64*
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 17
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %R8D.i911 = bitcast %union.anon* %497 to i32*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 15
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %RBP.i912 = bitcast %union.anon* %500 to i64*
  %501 = bitcast i32* %R8D.i911 to i64*
  %502 = load i64, i64* %RBP.i912
  %503 = sub i64 %502, 8
  %504 = load i64, i64* %PC.i910
  %505 = add i64 %504, 4
  store i64 %505, i64* %PC.i910
  %506 = inttoptr i64 %503 to i32*
  %507 = load i32, i32* %506
  %508 = zext i32 %507 to i64
  store i64 %508, i64* %501, align 8
  store %struct.Memory* %loadMem_412b25, %struct.Memory** %MEMORY
  %loadMem_412b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 33
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 1
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %EAX.i908 = bitcast %union.anon* %514 to i32*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 15
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %RBP.i909 = bitcast %union.anon* %517 to i64*
  %518 = load i64, i64* %RBP.i909
  %519 = sub i64 %518, 1044
  %520 = load i32, i32* %EAX.i908
  %521 = zext i32 %520 to i64
  %522 = load i64, i64* %PC.i907
  %523 = add i64 %522, 6
  store i64 %523, i64* %PC.i907
  %524 = inttoptr i64 %519 to i32*
  store i32 %520, i32* %524
  store %struct.Memory* %loadMem_412b29, %struct.Memory** %MEMORY
  %loadMem_412b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 33
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %PC.i904 = bitcast %union.anon* %527 to i64*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 17
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %R8D.i905 = bitcast %union.anon* %530 to i32*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 1
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %RAX.i906 = bitcast %union.anon* %533 to i64*
  %534 = load i32, i32* %R8D.i905
  %535 = zext i32 %534 to i64
  %536 = load i64, i64* %PC.i904
  %537 = add i64 %536, 3
  store i64 %537, i64* %PC.i904
  %538 = and i64 %535, 4294967295
  store i64 %538, i64* %RAX.i906, align 8
  store %struct.Memory* %loadMem_412b2f, %struct.Memory** %MEMORY
  %loadMem_412b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 33
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %541 to i64*
  %542 = load i64, i64* %PC.i903
  %543 = add i64 %542, 1
  store i64 %543, i64* %PC.i903
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %546 = bitcast %union.anon* %545 to i32*
  %547 = load i32, i32* %546, align 8
  %548 = sext i32 %547 to i64
  %549 = lshr i64 %548, 32
  store i64 %549, i64* %544, align 8
  store %struct.Memory* %loadMem_412b32, %struct.Memory** %MEMORY
  %loadMem_412b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 33
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %552 to i64*
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 5
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %ECX.i900 = bitcast %union.anon* %555 to i32*
  %556 = load i32, i32* %ECX.i900
  %557 = zext i32 %556 to i64
  %558 = load i64, i64* %PC.i899
  %559 = add i64 %558, 2
  store i64 %559, i64* %PC.i899
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %561 = bitcast %union.anon* %560 to i32*
  %562 = load i32, i32* %561, align 8
  %563 = zext i32 %562 to i64
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %565 = bitcast %union.anon* %564 to i32*
  %566 = load i32, i32* %565, align 8
  %567 = zext i32 %566 to i64
  %568 = shl i64 %557, 32
  %569 = ashr exact i64 %568, 32
  %570 = shl i64 %567, 32
  %571 = or i64 %570, %563
  %572 = sdiv i64 %571, %569
  %573 = shl i64 %572, 32
  %574 = ashr exact i64 %573, 32
  %575 = icmp eq i64 %572, %574
  br i1 %575, label %580, label %576

; <label>:576:                                    ; preds = %routine_idivl__ecx.exit917
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %578 = load i64, i64* %577, align 8
  %579 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %578, %struct.Memory* %loadMem_412b33)
  br label %routine_idivl__ecx.exit901

; <label>:580:                                    ; preds = %routine_idivl__ecx.exit917
  %581 = srem i64 %571, %569
  %582 = getelementptr inbounds %union.anon, %union.anon* %560, i64 0, i32 0
  %583 = and i64 %572, 4294967295
  store i64 %583, i64* %582, align 8
  %584 = getelementptr inbounds %union.anon, %union.anon* %564, i64 0, i32 0
  %585 = and i64 %581, 4294967295
  store i64 %585, i64* %584, align 8
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %586, align 1
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %587, align 1
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %588, align 1
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %589, align 1
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %590, align 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %591, align 1
  br label %routine_idivl__ecx.exit901

routine_idivl__ecx.exit901:                       ; preds = %576, %580
  %592 = phi %struct.Memory* [ %579, %576 ], [ %loadMem_412b33, %580 ]
  store %struct.Memory* %592, %struct.Memory** %MEMORY
  %loadMem_412b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 33
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %595 to i64*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 7
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %RDX.i898 = bitcast %union.anon* %598 to i64*
  %599 = load i64, i64* %RDX.i898
  %600 = load i64, i64* %PC.i897
  %601 = add i64 %600, 3
  store i64 %601, i64* %PC.i897
  %602 = trunc i64 %599 to i32
  %603 = sub i32 %602, 1
  %604 = zext i32 %603 to i64
  store i64 %604, i64* %RDX.i898, align 8
  %605 = icmp ult i32 %602, 1
  %606 = zext i1 %605 to i8
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %606, i8* %607, align 1
  %608 = and i32 %603, 255
  %609 = call i32 @llvm.ctpop.i32(i32 %608)
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  %612 = xor i8 %611, 1
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %612, i8* %613, align 1
  %614 = xor i64 1, %599
  %615 = trunc i64 %614 to i32
  %616 = xor i32 %615, %603
  %617 = lshr i32 %616, 4
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %619, i8* %620, align 1
  %621 = icmp eq i32 %603, 0
  %622 = zext i1 %621 to i8
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %622, i8* %623, align 1
  %624 = lshr i32 %603, 31
  %625 = trunc i32 %624 to i8
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %625, i8* %626, align 1
  %627 = lshr i32 %602, 31
  %628 = xor i32 %624, %627
  %629 = add i32 %628, %627
  %630 = icmp eq i32 %629, 2
  %631 = zext i1 %630 to i8
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %631, i8* %632, align 1
  store %struct.Memory* %loadMem_412b35, %struct.Memory** %MEMORY
  %loadMem_412b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 33
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 15
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RBP.i895 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 19
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %R9.i896 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %RBP.i895
  %643 = sub i64 %642, 1040
  %644 = load i64, i64* %PC.i894
  %645 = add i64 %644, 7
  store i64 %645, i64* %PC.i894
  %646 = inttoptr i64 %643 to i64*
  %647 = load i64, i64* %646
  store i64 %647, i64* %R9.i896, align 8
  store %struct.Memory* %loadMem_412b38, %struct.Memory** %MEMORY
  %loadMem_412b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 33
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %650 to i64*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 7
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %EDX.i892 = bitcast %union.anon* %653 to i32*
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 15
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %RBP.i893 = bitcast %union.anon* %656 to i64*
  %657 = load i64, i64* %RBP.i893
  %658 = sub i64 %657, 1048
  %659 = load i32, i32* %EDX.i892
  %660 = zext i32 %659 to i64
  %661 = load i64, i64* %PC.i891
  %662 = add i64 %661, 6
  store i64 %662, i64* %PC.i891
  %663 = inttoptr i64 %658 to i32*
  store i32 %659, i32* %663
  store %struct.Memory* %loadMem_412b3f, %struct.Memory** %MEMORY
  %loadMem_412b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 33
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %666 to i64*
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 7
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %RDX.i889 = bitcast %union.anon* %669 to i64*
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 19
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %R9.i890 = bitcast %union.anon* %672 to i64*
  %673 = load i64, i64* %R9.i890
  %674 = load i64, i64* %PC.i888
  %675 = add i64 %674, 3
  store i64 %675, i64* %PC.i888
  store i64 %673, i64* %RDX.i889, align 8
  store %struct.Memory* %loadMem_412b45, %struct.Memory** %MEMORY
  %loadMem_412b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 33
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %678 to i64*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 5
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %RCX.i886 = bitcast %union.anon* %681 to i64*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 15
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %RBP.i887 = bitcast %union.anon* %684 to i64*
  %685 = load i64, i64* %RBP.i887
  %686 = sub i64 %685, 1044
  %687 = load i64, i64* %PC.i885
  %688 = add i64 %687, 6
  store i64 %688, i64* %PC.i885
  %689 = inttoptr i64 %686 to i32*
  %690 = load i32, i32* %689
  %691 = zext i32 %690 to i64
  store i64 %691, i64* %RCX.i886, align 8
  store %struct.Memory* %loadMem_412b48, %struct.Memory** %MEMORY
  %loadMem_412b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 33
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %694 to i64*
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 17
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %R8D.i883 = bitcast %union.anon* %697 to i32*
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 15
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %RBP.i884 = bitcast %union.anon* %700 to i64*
  %701 = bitcast i32* %R8D.i883 to i64*
  %702 = load i64, i64* %RBP.i884
  %703 = sub i64 %702, 1048
  %704 = load i64, i64* %PC.i882
  %705 = add i64 %704, 7
  store i64 %705, i64* %PC.i882
  %706 = inttoptr i64 %703 to i32*
  %707 = load i32, i32* %706
  %708 = zext i32 %707 to i64
  store i64 %708, i64* %701, align 8
  store %struct.Memory* %loadMem_412b4e, %struct.Memory** %MEMORY
  %loadMem1_412b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 33
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %711 to i64*
  %712 = load i64, i64* %PC.i881
  %713 = add i64 %712, 259387
  %714 = load i64, i64* %PC.i881
  %715 = add i64 %714, 5
  %716 = load i64, i64* %PC.i881
  %717 = add i64 %716, 5
  store i64 %717, i64* %PC.i881
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %719 = load i64, i64* %718, align 8
  %720 = add i64 %719, -8
  %721 = inttoptr i64 %720 to i64*
  store i64 %715, i64* %721
  store i64 %720, i64* %718, align 8
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %713, i64* %722, align 8
  store %struct.Memory* %loadMem1_412b55, %struct.Memory** %MEMORY
  %loadMem2_412b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412b55 = load i64, i64* %3
  %call2_412b55 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_412b55, %struct.Memory* %loadMem2_412b55)
  store %struct.Memory* %call2_412b55, %struct.Memory** %MEMORY
  br label %block_.L_412b5a

block_.L_412b5a:                                  ; preds = %routine_idivl__ecx.exit901, %block_412ae4
  %loadMem_412b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 33
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %725 to i64*
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 15
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %RBP.i880 = bitcast %union.anon* %728 to i64*
  %729 = load i64, i64* %RBP.i880
  %730 = sub i64 %729, 12
  %731 = load i64, i64* %PC.i879
  %732 = add i64 %731, 7
  store i64 %732, i64* %PC.i879
  %733 = inttoptr i64 %730 to i32*
  %734 = load i32, i32* %733
  %735 = sub i32 %734, 421
  %736 = icmp ult i32 %734, 421
  %737 = zext i1 %736 to i8
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %737, i8* %738, align 1
  %739 = and i32 %735, 255
  %740 = call i32 @llvm.ctpop.i32(i32 %739)
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  %743 = xor i8 %742, 1
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %743, i8* %744, align 1
  %745 = xor i32 %734, 421
  %746 = xor i32 %745, %735
  %747 = lshr i32 %746, 4
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %749, i8* %750, align 1
  %751 = icmp eq i32 %735, 0
  %752 = zext i1 %751 to i8
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %752, i8* %753, align 1
  %754 = lshr i32 %735, 31
  %755 = trunc i32 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %755, i8* %756, align 1
  %757 = lshr i32 %734, 31
  %758 = xor i32 %754, %757
  %759 = add i32 %758, %757
  %760 = icmp eq i32 %759, 2
  %761 = zext i1 %760 to i8
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %761, i8* %762, align 1
  store %struct.Memory* %loadMem_412b5a, %struct.Memory** %MEMORY
  %loadMem_412b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 33
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %765 to i64*
  %766 = load i64, i64* %PC.i878
  %767 = add i64 %766, 32
  %768 = load i64, i64* %PC.i878
  %769 = add i64 %768, 6
  %770 = load i64, i64* %PC.i878
  %771 = add i64 %770, 6
  store i64 %771, i64* %PC.i878
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %773 = load i8, i8* %772, align 1
  %774 = icmp eq i8 %773, 0
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %BRANCH_TAKEN, align 1
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %777 = select i1 %774, i64 %767, i64 %769
  store i64 %777, i64* %776, align 8
  store %struct.Memory* %loadMem_412b61, %struct.Memory** %MEMORY
  %loadBr_412b61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412b61 = icmp eq i8 %loadBr_412b61, 1
  br i1 %cmpBr_412b61, label %block_.L_412b81, label %block_412b67

block_412b67:                                     ; preds = %block_.L_412b5a
  %loadMem_412b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 33
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %PC.i875 = bitcast %union.anon* %780 to i64*
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 1
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %RAX.i876 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 15
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %RBP.i877 = bitcast %union.anon* %786 to i64*
  %787 = load i64, i64* %RBP.i877
  %788 = sub i64 %787, 12
  %789 = load i64, i64* %PC.i875
  %790 = add i64 %789, 4
  store i64 %790, i64* %PC.i875
  %791 = inttoptr i64 %788 to i32*
  %792 = load i32, i32* %791
  %793 = sext i32 %792 to i64
  store i64 %793, i64* %RAX.i876, align 8
  store %struct.Memory* %loadMem_412b67, %struct.Memory** %MEMORY
  %loadMem_412b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 33
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %796 to i64*
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 1
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %RAX.i873 = bitcast %union.anon* %799 to i64*
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 5
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %RCX.i874 = bitcast %union.anon* %802 to i64*
  %803 = load i64, i64* %RAX.i873
  %804 = add i64 %803, 12099168
  %805 = load i64, i64* %PC.i872
  %806 = add i64 %805, 8
  store i64 %806, i64* %PC.i872
  %807 = inttoptr i64 %804 to i8*
  %808 = load i8, i8* %807
  %809 = zext i8 %808 to i64
  store i64 %809, i64* %RCX.i874, align 8
  store %struct.Memory* %loadMem_412b6b, %struct.Memory** %MEMORY
  %loadMem_412b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 33
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %812 to i64*
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 5
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %ECX.i871 = bitcast %union.anon* %815 to i32*
  %816 = load i32, i32* %ECX.i871
  %817 = zext i32 %816 to i64
  %818 = load i64, i64* %PC.i870
  %819 = add i64 %818, 3
  store i64 %819, i64* %PC.i870
  %820 = sub i32 %816, 3
  %821 = icmp ult i32 %816, 3
  %822 = zext i1 %821 to i8
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %822, i8* %823, align 1
  %824 = and i32 %820, 255
  %825 = call i32 @llvm.ctpop.i32(i32 %824)
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  %828 = xor i8 %827, 1
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %828, i8* %829, align 1
  %830 = xor i64 3, %817
  %831 = trunc i64 %830 to i32
  %832 = xor i32 %831, %820
  %833 = lshr i32 %832, 4
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %835, i8* %836, align 1
  %837 = icmp eq i32 %820, 0
  %838 = zext i1 %837 to i8
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %838, i8* %839, align 1
  %840 = lshr i32 %820, 31
  %841 = trunc i32 %840 to i8
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %841, i8* %842, align 1
  %843 = lshr i32 %816, 31
  %844 = xor i32 %840, %843
  %845 = add i32 %844, %843
  %846 = icmp eq i32 %845, 2
  %847 = zext i1 %846 to i8
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %847, i8* %848, align 1
  store %struct.Memory* %loadMem_412b73, %struct.Memory** %MEMORY
  %loadMem_412b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 33
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %851 to i64*
  %852 = load i64, i64* %PC.i869
  %853 = add i64 %852, 11
  %854 = load i64, i64* %PC.i869
  %855 = add i64 %854, 6
  %856 = load i64, i64* %PC.i869
  %857 = add i64 %856, 6
  store i64 %857, i64* %PC.i869
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %859 = load i8, i8* %858, align 1
  store i8 %859, i8* %BRANCH_TAKEN, align 1
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %861 = icmp ne i8 %859, 0
  %862 = select i1 %861, i64 %853, i64 %855
  store i64 %862, i64* %860, align 8
  store %struct.Memory* %loadMem_412b76, %struct.Memory** %MEMORY
  %loadBr_412b76 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412b76 = icmp eq i8 %loadBr_412b76, 1
  br i1 %cmpBr_412b76, label %block_.L_412b81, label %block_412b7c

block_412b7c:                                     ; preds = %block_412b67
  %loadMem_412b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 33
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %865 to i64*
  %866 = load i64, i64* %PC.i868
  %867 = add i64 %866, 118
  %868 = load i64, i64* %PC.i868
  %869 = add i64 %868, 5
  store i64 %869, i64* %PC.i868
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %867, i64* %870, align 8
  store %struct.Memory* %loadMem_412b7c, %struct.Memory** %MEMORY
  br label %block_.L_412bf2

block_.L_412b81:                                  ; preds = %block_412b67, %block_.L_412b5a
  %loadMem_412b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 33
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %873 to i64*
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 11
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %RDI.i867 = bitcast %union.anon* %876 to i64*
  %877 = load i64, i64* %PC.i866
  %878 = add i64 %877, 10
  store i64 %878, i64* %PC.i866
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i867, align 8
  store %struct.Memory* %loadMem_412b81, %struct.Memory** %MEMORY
  %loadMem_412b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 33
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 9
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %RSI.i865 = bitcast %union.anon* %884 to i64*
  %885 = load i64, i64* %PC.i864
  %886 = add i64 %885, 5
  store i64 %886, i64* %PC.i864
  store i64 1982, i64* %RSI.i865, align 8
  store %struct.Memory* %loadMem_412b8b, %struct.Memory** %MEMORY
  %loadMem_412b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 33
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %889 to i64*
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 7
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %RDX.i863 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %PC.i862
  %894 = add i64 %893, 10
  store i64 %894, i64* %PC.i862
  store i64 ptrtoint (%G__0x57a514_type* @G__0x57a514 to i64), i64* %RDX.i863, align 8
  store %struct.Memory* %loadMem_412b90, %struct.Memory** %MEMORY
  %loadMem_412b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 33
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %897 to i64*
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 1
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %RAX.i861 = bitcast %union.anon* %900 to i64*
  %901 = load i64, i64* %PC.i860
  %902 = add i64 %901, 5
  store i64 %902, i64* %PC.i860
  store i64 20, i64* %RAX.i861, align 8
  store %struct.Memory* %loadMem_412b9a, %struct.Memory** %MEMORY
  %loadMem_412b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 33
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %905 to i64*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %907 = getelementptr inbounds %struct.GPR, %struct.GPR* %906, i32 0, i32 5
  %908 = getelementptr inbounds %struct.Reg, %struct.Reg* %907, i32 0, i32 0
  %RCX.i858 = bitcast %union.anon* %908 to i64*
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %910 = getelementptr inbounds %struct.GPR, %struct.GPR* %909, i32 0, i32 15
  %911 = getelementptr inbounds %struct.Reg, %struct.Reg* %910, i32 0, i32 0
  %RBP.i859 = bitcast %union.anon* %911 to i64*
  %912 = load i64, i64* %RBP.i859
  %913 = sub i64 %912, 12
  %914 = load i64, i64* %PC.i857
  %915 = add i64 %914, 3
  store i64 %915, i64* %PC.i857
  %916 = inttoptr i64 %913 to i32*
  %917 = load i32, i32* %916
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %RCX.i858, align 8
  store %struct.Memory* %loadMem_412b9f, %struct.Memory** %MEMORY
  %loadMem_412ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 33
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 1
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %EAX.i855 = bitcast %union.anon* %924 to i32*
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 15
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %RBP.i856 = bitcast %union.anon* %927 to i64*
  %928 = load i64, i64* %RBP.i856
  %929 = sub i64 %928, 1052
  %930 = load i32, i32* %EAX.i855
  %931 = zext i32 %930 to i64
  %932 = load i64, i64* %PC.i854
  %933 = add i64 %932, 6
  store i64 %933, i64* %PC.i854
  %934 = inttoptr i64 %929 to i32*
  store i32 %930, i32* %934
  store %struct.Memory* %loadMem_412ba2, %struct.Memory** %MEMORY
  %loadMem_412ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 33
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %937 to i64*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 5
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %ECX.i852 = bitcast %union.anon* %940 to i32*
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 1
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %RAX.i853 = bitcast %union.anon* %943 to i64*
  %944 = load i32, i32* %ECX.i852
  %945 = zext i32 %944 to i64
  %946 = load i64, i64* %PC.i851
  %947 = add i64 %946, 2
  store i64 %947, i64* %PC.i851
  %948 = and i64 %945, 4294967295
  store i64 %948, i64* %RAX.i853, align 8
  store %struct.Memory* %loadMem_412ba8, %struct.Memory** %MEMORY
  %loadMem_412baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 33
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %951 to i64*
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 7
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %RDX.i849 = bitcast %union.anon* %954 to i64*
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 15
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %RBP.i850 = bitcast %union.anon* %957 to i64*
  %958 = load i64, i64* %RBP.i850
  %959 = sub i64 %958, 1064
  %960 = load i64, i64* %RDX.i849
  %961 = load i64, i64* %PC.i848
  %962 = add i64 %961, 7
  store i64 %962, i64* %PC.i848
  %963 = inttoptr i64 %959 to i64*
  store i64 %960, i64* %963
  store %struct.Memory* %loadMem_412baa, %struct.Memory** %MEMORY
  %loadMem_412bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 33
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %966 to i64*
  %967 = load i64, i64* %PC.i847
  %968 = add i64 %967, 1
  store i64 %968, i64* %PC.i847
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %971 = bitcast %union.anon* %970 to i32*
  %972 = load i32, i32* %971, align 8
  %973 = sext i32 %972 to i64
  %974 = lshr i64 %973, 32
  store i64 %974, i64* %969, align 8
  store %struct.Memory* %loadMem_412bb1, %struct.Memory** %MEMORY
  %loadMem_412bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 5
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %RCX.i845 = bitcast %union.anon* %980 to i64*
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 15
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %RBP.i846 = bitcast %union.anon* %983 to i64*
  %984 = load i64, i64* %RBP.i846
  %985 = sub i64 %984, 1052
  %986 = load i64, i64* %PC.i844
  %987 = add i64 %986, 6
  store i64 %987, i64* %PC.i844
  %988 = inttoptr i64 %985 to i32*
  %989 = load i32, i32* %988
  %990 = zext i32 %989 to i64
  store i64 %990, i64* %RCX.i845, align 8
  store %struct.Memory* %loadMem_412bb2, %struct.Memory** %MEMORY
  %loadMem_412bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 33
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 5
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %ECX.i840 = bitcast %union.anon* %996 to i32*
  %997 = load i32, i32* %ECX.i840
  %998 = zext i32 %997 to i64
  %999 = load i64, i64* %PC.i839
  %1000 = add i64 %999, 2
  store i64 %1000, i64* %PC.i839
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

; <label>:1017:                                   ; preds = %block_.L_412b81
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1019 = load i64, i64* %1018, align 8
  %1020 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1019, %struct.Memory* %loadMem_412bb8)
  br label %routine_idivl__ecx.exit841

; <label>:1021:                                   ; preds = %block_.L_412b81
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
  br label %routine_idivl__ecx.exit841

routine_idivl__ecx.exit841:                       ; preds = %1017, %1021
  %1033 = phi %struct.Memory* [ %1020, %1017 ], [ %loadMem_412bb8, %1021 ]
  store %struct.Memory* %1033, %struct.Memory** %MEMORY
  %loadMem_412bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 33
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %1036 to i64*
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 1
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %RAX.i838 = bitcast %union.anon* %1039 to i64*
  %1040 = load i64, i64* %RAX.i838
  %1041 = load i64, i64* %PC.i837
  %1042 = add i64 %1041, 3
  store i64 %1042, i64* %PC.i837
  %1043 = trunc i64 %1040 to i32
  %1044 = sub i32 %1043, 1
  %1045 = zext i32 %1044 to i64
  store i64 %1045, i64* %RAX.i838, align 8
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
  store %struct.Memory* %loadMem_412bba, %struct.Memory** %MEMORY
  %loadMem_412bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 33
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %PC.i834 = bitcast %union.anon* %1076 to i64*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 17
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %R8D.i835 = bitcast %union.anon* %1079 to i32*
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 15
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %RBP.i836 = bitcast %union.anon* %1082 to i64*
  %1083 = bitcast i32* %R8D.i835 to i64*
  %1084 = load i64, i64* %RBP.i836
  %1085 = sub i64 %1084, 12
  %1086 = load i64, i64* %PC.i834
  %1087 = add i64 %1086, 4
  store i64 %1087, i64* %PC.i834
  %1088 = inttoptr i64 %1085 to i32*
  %1089 = load i32, i32* %1088
  %1090 = zext i32 %1089 to i64
  store i64 %1090, i64* %1083, align 8
  store %struct.Memory* %loadMem_412bbd, %struct.Memory** %MEMORY
  %loadMem_412bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 33
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %PC.i831 = bitcast %union.anon* %1093 to i64*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 1
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %EAX.i832 = bitcast %union.anon* %1096 to i32*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 15
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %RBP.i833 = bitcast %union.anon* %1099 to i64*
  %1100 = load i64, i64* %RBP.i833
  %1101 = sub i64 %1100, 1068
  %1102 = load i32, i32* %EAX.i832
  %1103 = zext i32 %1102 to i64
  %1104 = load i64, i64* %PC.i831
  %1105 = add i64 %1104, 6
  store i64 %1105, i64* %PC.i831
  %1106 = inttoptr i64 %1101 to i32*
  store i32 %1102, i32* %1106
  store %struct.Memory* %loadMem_412bc1, %struct.Memory** %MEMORY
  %loadMem_412bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 33
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %1109 to i64*
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 17
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %R8D.i829 = bitcast %union.anon* %1112 to i32*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 1
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %RAX.i830 = bitcast %union.anon* %1115 to i64*
  %1116 = load i32, i32* %R8D.i829
  %1117 = zext i32 %1116 to i64
  %1118 = load i64, i64* %PC.i828
  %1119 = add i64 %1118, 3
  store i64 %1119, i64* %PC.i828
  %1120 = and i64 %1117, 4294967295
  store i64 %1120, i64* %RAX.i830, align 8
  store %struct.Memory* %loadMem_412bc7, %struct.Memory** %MEMORY
  %loadMem_412bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 33
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %1123 to i64*
  %1124 = load i64, i64* %PC.i827
  %1125 = add i64 %1124, 1
  store i64 %1125, i64* %PC.i827
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1128 = bitcast %union.anon* %1127 to i32*
  %1129 = load i32, i32* %1128, align 8
  %1130 = sext i32 %1129 to i64
  %1131 = lshr i64 %1130, 32
  store i64 %1131, i64* %1126, align 8
  store %struct.Memory* %loadMem_412bca, %struct.Memory** %MEMORY
  %loadMem_412bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 33
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %1134 to i64*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 5
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %ECX.i823 = bitcast %union.anon* %1137 to i32*
  %1138 = load i32, i32* %ECX.i823
  %1139 = zext i32 %1138 to i64
  %1140 = load i64, i64* %PC.i822
  %1141 = add i64 %1140, 2
  store i64 %1141, i64* %PC.i822
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

; <label>:1158:                                   ; preds = %routine_idivl__ecx.exit841
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1160 = load i64, i64* %1159, align 8
  %1161 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1160, %struct.Memory* %loadMem_412bcb)
  br label %routine_idivl__ecx.exit824

; <label>:1162:                                   ; preds = %routine_idivl__ecx.exit841
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
  br label %routine_idivl__ecx.exit824

routine_idivl__ecx.exit824:                       ; preds = %1158, %1162
  %1174 = phi %struct.Memory* [ %1161, %1158 ], [ %loadMem_412bcb, %1162 ]
  store %struct.Memory* %1174, %struct.Memory** %MEMORY
  %loadMem_412bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 33
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %1177 to i64*
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 7
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %RDX.i821 = bitcast %union.anon* %1180 to i64*
  %1181 = load i64, i64* %RDX.i821
  %1182 = load i64, i64* %PC.i820
  %1183 = add i64 %1182, 3
  store i64 %1183, i64* %PC.i820
  %1184 = trunc i64 %1181 to i32
  %1185 = sub i32 %1184, 1
  %1186 = zext i32 %1185 to i64
  store i64 %1186, i64* %RDX.i821, align 8
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
  store %struct.Memory* %loadMem_412bcd, %struct.Memory** %MEMORY
  %loadMem_412bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 33
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %1217 to i64*
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 15
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %1220 to i64*
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 19
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %R9.i819 = bitcast %union.anon* %1223 to i64*
  %1224 = load i64, i64* %RBP.i818
  %1225 = sub i64 %1224, 1064
  %1226 = load i64, i64* %PC.i817
  %1227 = add i64 %1226, 7
  store i64 %1227, i64* %PC.i817
  %1228 = inttoptr i64 %1225 to i64*
  %1229 = load i64, i64* %1228
  store i64 %1229, i64* %R9.i819, align 8
  store %struct.Memory* %loadMem_412bd0, %struct.Memory** %MEMORY
  %loadMem_412bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 33
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %1232 to i64*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 7
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %EDX.i815 = bitcast %union.anon* %1235 to i32*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 15
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %RBP.i816 = bitcast %union.anon* %1238 to i64*
  %1239 = load i64, i64* %RBP.i816
  %1240 = sub i64 %1239, 1072
  %1241 = load i32, i32* %EDX.i815
  %1242 = zext i32 %1241 to i64
  %1243 = load i64, i64* %PC.i814
  %1244 = add i64 %1243, 6
  store i64 %1244, i64* %PC.i814
  %1245 = inttoptr i64 %1240 to i32*
  store i32 %1241, i32* %1245
  store %struct.Memory* %loadMem_412bd7, %struct.Memory** %MEMORY
  %loadMem_412bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 7
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RDX.i812 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 19
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %R9.i813 = bitcast %union.anon* %1254 to i64*
  %1255 = load i64, i64* %R9.i813
  %1256 = load i64, i64* %PC.i811
  %1257 = add i64 %1256, 3
  store i64 %1257, i64* %PC.i811
  store i64 %1255, i64* %RDX.i812, align 8
  store %struct.Memory* %loadMem_412bdd, %struct.Memory** %MEMORY
  %loadMem_412be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 33
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 5
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RCX.i809 = bitcast %union.anon* %1263 to i64*
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 15
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %RBP.i810 = bitcast %union.anon* %1266 to i64*
  %1267 = load i64, i64* %RBP.i810
  %1268 = sub i64 %1267, 1068
  %1269 = load i64, i64* %PC.i808
  %1270 = add i64 %1269, 6
  store i64 %1270, i64* %PC.i808
  %1271 = inttoptr i64 %1268 to i32*
  %1272 = load i32, i32* %1271
  %1273 = zext i32 %1272 to i64
  store i64 %1273, i64* %RCX.i809, align 8
  store %struct.Memory* %loadMem_412be0, %struct.Memory** %MEMORY
  %loadMem_412be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 33
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %1276 to i64*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 17
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %R8D.i806 = bitcast %union.anon* %1279 to i32*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 15
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RBP.i807 = bitcast %union.anon* %1282 to i64*
  %1283 = bitcast i32* %R8D.i806 to i64*
  %1284 = load i64, i64* %RBP.i807
  %1285 = sub i64 %1284, 1072
  %1286 = load i64, i64* %PC.i805
  %1287 = add i64 %1286, 7
  store i64 %1287, i64* %PC.i805
  %1288 = inttoptr i64 %1285 to i32*
  %1289 = load i32, i32* %1288
  %1290 = zext i32 %1289 to i64
  store i64 %1290, i64* %1283, align 8
  store %struct.Memory* %loadMem_412be6, %struct.Memory** %MEMORY
  %loadMem1_412bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 33
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %1293 to i64*
  %1294 = load i64, i64* %PC.i804
  %1295 = add i64 %1294, 259235
  %1296 = load i64, i64* %PC.i804
  %1297 = add i64 %1296, 5
  %1298 = load i64, i64* %PC.i804
  %1299 = add i64 %1298, 5
  store i64 %1299, i64* %PC.i804
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1301 = load i64, i64* %1300, align 8
  %1302 = add i64 %1301, -8
  %1303 = inttoptr i64 %1302 to i64*
  store i64 %1297, i64* %1303
  store i64 %1302, i64* %1300, align 8
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1295, i64* %1304, align 8
  store %struct.Memory* %loadMem1_412bed, %struct.Memory** %MEMORY
  %loadMem2_412bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412bed = load i64, i64* %3
  %call2_412bed = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_412bed, %struct.Memory* %loadMem2_412bed)
  store %struct.Memory* %call2_412bed, %struct.Memory** %MEMORY
  br label %block_.L_412bf2

block_.L_412bf2:                                  ; preds = %routine_idivl__ecx.exit824, %block_412b7c
  %loadMem_412bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 33
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %1307 to i64*
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 1
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %RAX.i802 = bitcast %union.anon* %1310 to i64*
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 15
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %RBP.i803 = bitcast %union.anon* %1313 to i64*
  %1314 = load i64, i64* %RBP.i803
  %1315 = sub i64 %1314, 8
  %1316 = load i64, i64* %PC.i801
  %1317 = add i64 %1316, 4
  store i64 %1317, i64* %PC.i801
  %1318 = inttoptr i64 %1315 to i32*
  %1319 = load i32, i32* %1318
  %1320 = sext i32 %1319 to i64
  store i64 %1320, i64* %RAX.i802, align 8
  store %struct.Memory* %loadMem_412bf2, %struct.Memory** %MEMORY
  %loadMem_412bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 33
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %1323 to i64*
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 1
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %RAX.i799 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 5
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RCX.i800 = bitcast %union.anon* %1329 to i64*
  %1330 = load i64, i64* %RAX.i799
  %1331 = add i64 %1330, 12099168
  %1332 = load i64, i64* %PC.i798
  %1333 = add i64 %1332, 8
  store i64 %1333, i64* %PC.i798
  %1334 = inttoptr i64 %1331 to i8*
  %1335 = load i8, i8* %1334
  %1336 = zext i8 %1335 to i64
  store i64 %1336, i64* %RCX.i800, align 8
  store %struct.Memory* %loadMem_412bf6, %struct.Memory** %MEMORY
  %loadMem_412bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 33
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %1339 to i64*
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 5
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %ECX.i797 = bitcast %union.anon* %1342 to i32*
  %1343 = load i32, i32* %ECX.i797
  %1344 = zext i32 %1343 to i64
  %1345 = load i64, i64* %PC.i796
  %1346 = add i64 %1345, 3
  store i64 %1346, i64* %PC.i796
  %1347 = sub i32 %1343, 1
  %1348 = icmp ult i32 %1343, 1
  %1349 = zext i1 %1348 to i8
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1349, i8* %1350, align 1
  %1351 = and i32 %1347, 255
  %1352 = call i32 @llvm.ctpop.i32(i32 %1351)
  %1353 = trunc i32 %1352 to i8
  %1354 = and i8 %1353, 1
  %1355 = xor i8 %1354, 1
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1355, i8* %1356, align 1
  %1357 = xor i64 1, %1344
  %1358 = trunc i64 %1357 to i32
  %1359 = xor i32 %1358, %1347
  %1360 = lshr i32 %1359, 4
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1362, i8* %1363, align 1
  %1364 = icmp eq i32 %1347, 0
  %1365 = zext i1 %1364 to i8
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1365, i8* %1366, align 1
  %1367 = lshr i32 %1347, 31
  %1368 = trunc i32 %1367 to i8
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1368, i8* %1369, align 1
  %1370 = lshr i32 %1343, 31
  %1371 = xor i32 %1367, %1370
  %1372 = add i32 %1371, %1370
  %1373 = icmp eq i32 %1372, 2
  %1374 = zext i1 %1373 to i8
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1374, i8* %1375, align 1
  store %struct.Memory* %loadMem_412bfe, %struct.Memory** %MEMORY
  %loadMem_412c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 33
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %1378 to i64*
  %1379 = load i64, i64* %PC.i795
  %1380 = add i64 %1379, 27
  %1381 = load i64, i64* %PC.i795
  %1382 = add i64 %1381, 6
  %1383 = load i64, i64* %PC.i795
  %1384 = add i64 %1383, 6
  store i64 %1384, i64* %PC.i795
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1386 = load i8, i8* %1385, align 1
  store i8 %1386, i8* %BRANCH_TAKEN, align 1
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1388 = icmp ne i8 %1386, 0
  %1389 = select i1 %1388, i64 %1380, i64 %1382
  store i64 %1389, i64* %1387, align 8
  store %struct.Memory* %loadMem_412c01, %struct.Memory** %MEMORY
  %loadBr_412c01 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412c01 = icmp eq i8 %loadBr_412c01, 1
  br i1 %cmpBr_412c01, label %block_.L_412c1c, label %block_412c07

block_412c07:                                     ; preds = %block_.L_412bf2
  %loadMem_412c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 33
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %1392 to i64*
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 1
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %RAX.i793 = bitcast %union.anon* %1395 to i64*
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 15
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %RBP.i794 = bitcast %union.anon* %1398 to i64*
  %1399 = load i64, i64* %RBP.i794
  %1400 = sub i64 %1399, 8
  %1401 = load i64, i64* %PC.i792
  %1402 = add i64 %1401, 4
  store i64 %1402, i64* %PC.i792
  %1403 = inttoptr i64 %1400 to i32*
  %1404 = load i32, i32* %1403
  %1405 = sext i32 %1404 to i64
  store i64 %1405, i64* %RAX.i793, align 8
  store %struct.Memory* %loadMem_412c07, %struct.Memory** %MEMORY
  %loadMem_412c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 33
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %1408 to i64*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 1
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %RAX.i790 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 5
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %RCX.i791 = bitcast %union.anon* %1414 to i64*
  %1415 = load i64, i64* %RAX.i790
  %1416 = add i64 %1415, 12099168
  %1417 = load i64, i64* %PC.i789
  %1418 = add i64 %1417, 8
  store i64 %1418, i64* %PC.i789
  %1419 = inttoptr i64 %1416 to i8*
  %1420 = load i8, i8* %1419
  %1421 = zext i8 %1420 to i64
  store i64 %1421, i64* %RCX.i791, align 8
  store %struct.Memory* %loadMem_412c0b, %struct.Memory** %MEMORY
  %loadMem_412c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 33
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %1424 to i64*
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 5
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %ECX.i788 = bitcast %union.anon* %1427 to i32*
  %1428 = load i32, i32* %ECX.i788
  %1429 = zext i32 %1428 to i64
  %1430 = load i64, i64* %PC.i787
  %1431 = add i64 %1430, 3
  store i64 %1431, i64* %PC.i787
  %1432 = sub i32 %1428, 2
  %1433 = icmp ult i32 %1428, 2
  %1434 = zext i1 %1433 to i8
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1434, i8* %1435, align 1
  %1436 = and i32 %1432, 255
  %1437 = call i32 @llvm.ctpop.i32(i32 %1436)
  %1438 = trunc i32 %1437 to i8
  %1439 = and i8 %1438, 1
  %1440 = xor i8 %1439, 1
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1440, i8* %1441, align 1
  %1442 = xor i64 2, %1429
  %1443 = trunc i64 %1442 to i32
  %1444 = xor i32 %1443, %1432
  %1445 = lshr i32 %1444, 4
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1447, i8* %1448, align 1
  %1449 = icmp eq i32 %1432, 0
  %1450 = zext i1 %1449 to i8
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1450, i8* %1451, align 1
  %1452 = lshr i32 %1432, 31
  %1453 = trunc i32 %1452 to i8
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1453, i8* %1454, align 1
  %1455 = lshr i32 %1428, 31
  %1456 = xor i32 %1452, %1455
  %1457 = add i32 %1456, %1455
  %1458 = icmp eq i32 %1457, 2
  %1459 = zext i1 %1458 to i8
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1459, i8* %1460, align 1
  store %struct.Memory* %loadMem_412c13, %struct.Memory** %MEMORY
  %loadMem_412c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %PC.i786
  %1465 = add i64 %1464, 11
  %1466 = load i64, i64* %PC.i786
  %1467 = add i64 %1466, 6
  %1468 = load i64, i64* %PC.i786
  %1469 = add i64 %1468, 6
  store i64 %1469, i64* %PC.i786
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1471 = load i8, i8* %1470, align 1
  %1472 = icmp eq i8 %1471, 0
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %BRANCH_TAKEN, align 1
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1475 = select i1 %1472, i64 %1465, i64 %1467
  store i64 %1475, i64* %1474, align 8
  store %struct.Memory* %loadMem_412c16, %struct.Memory** %MEMORY
  %loadBr_412c16 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412c16 = icmp eq i8 %loadBr_412c16, 1
  br i1 %cmpBr_412c16, label %block_.L_412c21, label %block_.L_412c1c

block_.L_412c1c:                                  ; preds = %block_412c07, %block_.L_412bf2
  %loadMem_412c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 33
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %1478 to i64*
  %1479 = load i64, i64* %PC.i785
  %1480 = add i64 %1479, 118
  %1481 = load i64, i64* %PC.i785
  %1482 = add i64 %1481, 5
  store i64 %1482, i64* %PC.i785
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1480, i64* %1483, align 8
  store %struct.Memory* %loadMem_412c1c, %struct.Memory** %MEMORY
  br label %block_.L_412c92

block_.L_412c21:                                  ; preds = %block_412c07
  %loadMem_412c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 11
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %RDI.i784 = bitcast %union.anon* %1489 to i64*
  %1490 = load i64, i64* %PC.i783
  %1491 = add i64 %1490, 10
  store i64 %1491, i64* %PC.i783
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i784, align 8
  store %struct.Memory* %loadMem_412c21, %struct.Memory** %MEMORY
  %loadMem_412c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 33
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %1494 to i64*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 9
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %RSI.i782 = bitcast %union.anon* %1497 to i64*
  %1498 = load i64, i64* %PC.i781
  %1499 = add i64 %1498, 5
  store i64 %1499, i64* %PC.i781
  store i64 1983, i64* %RSI.i782, align 8
  store %struct.Memory* %loadMem_412c2b, %struct.Memory** %MEMORY
  %loadMem_412c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 33
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %1502 to i64*
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 7
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %RDX.i780 = bitcast %union.anon* %1505 to i64*
  %1506 = load i64, i64* %PC.i779
  %1507 = add i64 %1506, 10
  store i64 %1507, i64* %PC.i779
  store i64 ptrtoint (%G__0x57a524_type* @G__0x57a524 to i64), i64* %RDX.i780, align 8
  store %struct.Memory* %loadMem_412c30, %struct.Memory** %MEMORY
  %loadMem_412c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1509 = getelementptr inbounds %struct.GPR, %struct.GPR* %1508, i32 0, i32 33
  %1510 = getelementptr inbounds %struct.Reg, %struct.Reg* %1509, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %1510 to i64*
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 1
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %RAX.i778 = bitcast %union.anon* %1513 to i64*
  %1514 = load i64, i64* %PC.i777
  %1515 = add i64 %1514, 5
  store i64 %1515, i64* %PC.i777
  store i64 20, i64* %RAX.i778, align 8
  store %struct.Memory* %loadMem_412c3a, %struct.Memory** %MEMORY
  %loadMem_412c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 33
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %1518 to i64*
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 5
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %RCX.i775 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 15
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %RBP.i776 = bitcast %union.anon* %1524 to i64*
  %1525 = load i64, i64* %RBP.i776
  %1526 = sub i64 %1525, 8
  %1527 = load i64, i64* %PC.i774
  %1528 = add i64 %1527, 3
  store i64 %1528, i64* %PC.i774
  %1529 = inttoptr i64 %1526 to i32*
  %1530 = load i32, i32* %1529
  %1531 = zext i32 %1530 to i64
  store i64 %1531, i64* %RCX.i775, align 8
  store %struct.Memory* %loadMem_412c3f, %struct.Memory** %MEMORY
  %loadMem_412c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 33
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 1
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %EAX.i772 = bitcast %union.anon* %1537 to i32*
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 15
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %RBP.i773 = bitcast %union.anon* %1540 to i64*
  %1541 = load i64, i64* %RBP.i773
  %1542 = sub i64 %1541, 1076
  %1543 = load i32, i32* %EAX.i772
  %1544 = zext i32 %1543 to i64
  %1545 = load i64, i64* %PC.i771
  %1546 = add i64 %1545, 6
  store i64 %1546, i64* %PC.i771
  %1547 = inttoptr i64 %1542 to i32*
  store i32 %1543, i32* %1547
  store %struct.Memory* %loadMem_412c42, %struct.Memory** %MEMORY
  %loadMem_412c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 33
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 5
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %ECX.i769 = bitcast %union.anon* %1553 to i32*
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 1
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %RAX.i770 = bitcast %union.anon* %1556 to i64*
  %1557 = load i32, i32* %ECX.i769
  %1558 = zext i32 %1557 to i64
  %1559 = load i64, i64* %PC.i768
  %1560 = add i64 %1559, 2
  store i64 %1560, i64* %PC.i768
  %1561 = and i64 %1558, 4294967295
  store i64 %1561, i64* %RAX.i770, align 8
  store %struct.Memory* %loadMem_412c48, %struct.Memory** %MEMORY
  %loadMem_412c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 33
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %1564 to i64*
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 7
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %RDX.i766 = bitcast %union.anon* %1567 to i64*
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 15
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %RBP.i767 = bitcast %union.anon* %1570 to i64*
  %1571 = load i64, i64* %RBP.i767
  %1572 = sub i64 %1571, 1088
  %1573 = load i64, i64* %RDX.i766
  %1574 = load i64, i64* %PC.i765
  %1575 = add i64 %1574, 7
  store i64 %1575, i64* %PC.i765
  %1576 = inttoptr i64 %1572 to i64*
  store i64 %1573, i64* %1576
  store %struct.Memory* %loadMem_412c4a, %struct.Memory** %MEMORY
  %loadMem_412c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 33
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %1579 to i64*
  %1580 = load i64, i64* %PC.i764
  %1581 = add i64 %1580, 1
  store i64 %1581, i64* %PC.i764
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1584 = bitcast %union.anon* %1583 to i32*
  %1585 = load i32, i32* %1584, align 8
  %1586 = sext i32 %1585 to i64
  %1587 = lshr i64 %1586, 32
  store i64 %1587, i64* %1582, align 8
  store %struct.Memory* %loadMem_412c51, %struct.Memory** %MEMORY
  %loadMem_412c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 33
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 5
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %RCX.i762 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 15
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %RBP.i763 = bitcast %union.anon* %1596 to i64*
  %1597 = load i64, i64* %RBP.i763
  %1598 = sub i64 %1597, 1076
  %1599 = load i64, i64* %PC.i761
  %1600 = add i64 %1599, 6
  store i64 %1600, i64* %PC.i761
  %1601 = inttoptr i64 %1598 to i32*
  %1602 = load i32, i32* %1601
  %1603 = zext i32 %1602 to i64
  store i64 %1603, i64* %RCX.i762, align 8
  store %struct.Memory* %loadMem_412c52, %struct.Memory** %MEMORY
  %loadMem_412c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 33
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %1606 to i64*
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 5
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %ECX.i756 = bitcast %union.anon* %1609 to i32*
  %1610 = load i32, i32* %ECX.i756
  %1611 = zext i32 %1610 to i64
  %1612 = load i64, i64* %PC.i755
  %1613 = add i64 %1612, 2
  store i64 %1613, i64* %PC.i755
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1615 = bitcast %union.anon* %1614 to i32*
  %1616 = load i32, i32* %1615, align 8
  %1617 = zext i32 %1616 to i64
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1619 = bitcast %union.anon* %1618 to i32*
  %1620 = load i32, i32* %1619, align 8
  %1621 = zext i32 %1620 to i64
  %1622 = shl i64 %1611, 32
  %1623 = ashr exact i64 %1622, 32
  %1624 = shl i64 %1621, 32
  %1625 = or i64 %1624, %1617
  %1626 = sdiv i64 %1625, %1623
  %1627 = shl i64 %1626, 32
  %1628 = ashr exact i64 %1627, 32
  %1629 = icmp eq i64 %1626, %1628
  br i1 %1629, label %1634, label %1630

; <label>:1630:                                   ; preds = %block_.L_412c21
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1632 = load i64, i64* %1631, align 8
  %1633 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1632, %struct.Memory* %loadMem_412c58)
  br label %routine_idivl__ecx.exit757

; <label>:1634:                                   ; preds = %block_.L_412c21
  %1635 = srem i64 %1625, %1623
  %1636 = getelementptr inbounds %union.anon, %union.anon* %1614, i64 0, i32 0
  %1637 = and i64 %1626, 4294967295
  store i64 %1637, i64* %1636, align 8
  %1638 = getelementptr inbounds %union.anon, %union.anon* %1618, i64 0, i32 0
  %1639 = and i64 %1635, 4294967295
  store i64 %1639, i64* %1638, align 8
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1640, align 1
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1641, align 1
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1642, align 1
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1643, align 1
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1644, align 1
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1645, align 1
  br label %routine_idivl__ecx.exit757

routine_idivl__ecx.exit757:                       ; preds = %1630, %1634
  %1646 = phi %struct.Memory* [ %1633, %1630 ], [ %loadMem_412c58, %1634 ]
  store %struct.Memory* %1646, %struct.Memory** %MEMORY
  %loadMem_412c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 33
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %1649 to i64*
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 1
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %RAX.i754 = bitcast %union.anon* %1652 to i64*
  %1653 = load i64, i64* %RAX.i754
  %1654 = load i64, i64* %PC.i753
  %1655 = add i64 %1654, 3
  store i64 %1655, i64* %PC.i753
  %1656 = trunc i64 %1653 to i32
  %1657 = sub i32 %1656, 1
  %1658 = zext i32 %1657 to i64
  store i64 %1658, i64* %RAX.i754, align 8
  %1659 = icmp ult i32 %1656, 1
  %1660 = zext i1 %1659 to i8
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1660, i8* %1661, align 1
  %1662 = and i32 %1657, 255
  %1663 = call i32 @llvm.ctpop.i32(i32 %1662)
  %1664 = trunc i32 %1663 to i8
  %1665 = and i8 %1664, 1
  %1666 = xor i8 %1665, 1
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1666, i8* %1667, align 1
  %1668 = xor i64 1, %1653
  %1669 = trunc i64 %1668 to i32
  %1670 = xor i32 %1669, %1657
  %1671 = lshr i32 %1670, 4
  %1672 = trunc i32 %1671 to i8
  %1673 = and i8 %1672, 1
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1673, i8* %1674, align 1
  %1675 = icmp eq i32 %1657, 0
  %1676 = zext i1 %1675 to i8
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1676, i8* %1677, align 1
  %1678 = lshr i32 %1657, 31
  %1679 = trunc i32 %1678 to i8
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1679, i8* %1680, align 1
  %1681 = lshr i32 %1656, 31
  %1682 = xor i32 %1678, %1681
  %1683 = add i32 %1682, %1681
  %1684 = icmp eq i32 %1683, 2
  %1685 = zext i1 %1684 to i8
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1685, i8* %1686, align 1
  store %struct.Memory* %loadMem_412c5a, %struct.Memory** %MEMORY
  %loadMem_412c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 33
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %1689 to i64*
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 17
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %R8D.i751 = bitcast %union.anon* %1692 to i32*
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 15
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %RBP.i752 = bitcast %union.anon* %1695 to i64*
  %1696 = bitcast i32* %R8D.i751 to i64*
  %1697 = load i64, i64* %RBP.i752
  %1698 = sub i64 %1697, 8
  %1699 = load i64, i64* %PC.i750
  %1700 = add i64 %1699, 4
  store i64 %1700, i64* %PC.i750
  %1701 = inttoptr i64 %1698 to i32*
  %1702 = load i32, i32* %1701
  %1703 = zext i32 %1702 to i64
  store i64 %1703, i64* %1696, align 8
  store %struct.Memory* %loadMem_412c5d, %struct.Memory** %MEMORY
  %loadMem_412c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 33
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %1706 to i64*
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 1
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %EAX.i748 = bitcast %union.anon* %1709 to i32*
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 15
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %RBP.i749 = bitcast %union.anon* %1712 to i64*
  %1713 = load i64, i64* %RBP.i749
  %1714 = sub i64 %1713, 1092
  %1715 = load i32, i32* %EAX.i748
  %1716 = zext i32 %1715 to i64
  %1717 = load i64, i64* %PC.i747
  %1718 = add i64 %1717, 6
  store i64 %1718, i64* %PC.i747
  %1719 = inttoptr i64 %1714 to i32*
  store i32 %1715, i32* %1719
  store %struct.Memory* %loadMem_412c61, %struct.Memory** %MEMORY
  %loadMem_412c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 33
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %1722 to i64*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 17
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %R8D.i745 = bitcast %union.anon* %1725 to i32*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 1
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %RAX.i746 = bitcast %union.anon* %1728 to i64*
  %1729 = load i32, i32* %R8D.i745
  %1730 = zext i32 %1729 to i64
  %1731 = load i64, i64* %PC.i744
  %1732 = add i64 %1731, 3
  store i64 %1732, i64* %PC.i744
  %1733 = and i64 %1730, 4294967295
  store i64 %1733, i64* %RAX.i746, align 8
  store %struct.Memory* %loadMem_412c67, %struct.Memory** %MEMORY
  %loadMem_412c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 33
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %1736 to i64*
  %1737 = load i64, i64* %PC.i743
  %1738 = add i64 %1737, 1
  store i64 %1738, i64* %PC.i743
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1741 = bitcast %union.anon* %1740 to i32*
  %1742 = load i32, i32* %1741, align 8
  %1743 = sext i32 %1742 to i64
  %1744 = lshr i64 %1743, 32
  store i64 %1744, i64* %1739, align 8
  store %struct.Memory* %loadMem_412c6a, %struct.Memory** %MEMORY
  %loadMem_412c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 33
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 5
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %ECX.i738 = bitcast %union.anon* %1750 to i32*
  %1751 = load i32, i32* %ECX.i738
  %1752 = zext i32 %1751 to i64
  %1753 = load i64, i64* %PC.i737
  %1754 = add i64 %1753, 2
  store i64 %1754, i64* %PC.i737
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1756 = bitcast %union.anon* %1755 to i32*
  %1757 = load i32, i32* %1756, align 8
  %1758 = zext i32 %1757 to i64
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1760 = bitcast %union.anon* %1759 to i32*
  %1761 = load i32, i32* %1760, align 8
  %1762 = zext i32 %1761 to i64
  %1763 = shl i64 %1752, 32
  %1764 = ashr exact i64 %1763, 32
  %1765 = shl i64 %1762, 32
  %1766 = or i64 %1765, %1758
  %1767 = sdiv i64 %1766, %1764
  %1768 = shl i64 %1767, 32
  %1769 = ashr exact i64 %1768, 32
  %1770 = icmp eq i64 %1767, %1769
  br i1 %1770, label %1775, label %1771

; <label>:1771:                                   ; preds = %routine_idivl__ecx.exit757
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1773 = load i64, i64* %1772, align 8
  %1774 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1773, %struct.Memory* %loadMem_412c6b)
  br label %routine_idivl__ecx.exit739

; <label>:1775:                                   ; preds = %routine_idivl__ecx.exit757
  %1776 = srem i64 %1766, %1764
  %1777 = getelementptr inbounds %union.anon, %union.anon* %1755, i64 0, i32 0
  %1778 = and i64 %1767, 4294967295
  store i64 %1778, i64* %1777, align 8
  %1779 = getelementptr inbounds %union.anon, %union.anon* %1759, i64 0, i32 0
  %1780 = and i64 %1776, 4294967295
  store i64 %1780, i64* %1779, align 8
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1781, align 1
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1782, align 1
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1783, align 1
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1784, align 1
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1785, align 1
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1786, align 1
  br label %routine_idivl__ecx.exit739

routine_idivl__ecx.exit739:                       ; preds = %1771, %1775
  %1787 = phi %struct.Memory* [ %1774, %1771 ], [ %loadMem_412c6b, %1775 ]
  store %struct.Memory* %1787, %struct.Memory** %MEMORY
  %loadMem_412c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 33
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %1790 to i64*
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 7
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %RDX.i736 = bitcast %union.anon* %1793 to i64*
  %1794 = load i64, i64* %RDX.i736
  %1795 = load i64, i64* %PC.i735
  %1796 = add i64 %1795, 3
  store i64 %1796, i64* %PC.i735
  %1797 = trunc i64 %1794 to i32
  %1798 = sub i32 %1797, 1
  %1799 = zext i32 %1798 to i64
  store i64 %1799, i64* %RDX.i736, align 8
  %1800 = icmp ult i32 %1797, 1
  %1801 = zext i1 %1800 to i8
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1801, i8* %1802, align 1
  %1803 = and i32 %1798, 255
  %1804 = call i32 @llvm.ctpop.i32(i32 %1803)
  %1805 = trunc i32 %1804 to i8
  %1806 = and i8 %1805, 1
  %1807 = xor i8 %1806, 1
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1807, i8* %1808, align 1
  %1809 = xor i64 1, %1794
  %1810 = trunc i64 %1809 to i32
  %1811 = xor i32 %1810, %1798
  %1812 = lshr i32 %1811, 4
  %1813 = trunc i32 %1812 to i8
  %1814 = and i8 %1813, 1
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1814, i8* %1815, align 1
  %1816 = icmp eq i32 %1798, 0
  %1817 = zext i1 %1816 to i8
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1817, i8* %1818, align 1
  %1819 = lshr i32 %1798, 31
  %1820 = trunc i32 %1819 to i8
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1820, i8* %1821, align 1
  %1822 = lshr i32 %1797, 31
  %1823 = xor i32 %1819, %1822
  %1824 = add i32 %1823, %1822
  %1825 = icmp eq i32 %1824, 2
  %1826 = zext i1 %1825 to i8
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1826, i8* %1827, align 1
  store %struct.Memory* %loadMem_412c6d, %struct.Memory** %MEMORY
  %loadMem_412c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 33
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %1830 to i64*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 15
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %RBP.i733 = bitcast %union.anon* %1833 to i64*
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 19
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %R9.i734 = bitcast %union.anon* %1836 to i64*
  %1837 = load i64, i64* %RBP.i733
  %1838 = sub i64 %1837, 1088
  %1839 = load i64, i64* %PC.i732
  %1840 = add i64 %1839, 7
  store i64 %1840, i64* %PC.i732
  %1841 = inttoptr i64 %1838 to i64*
  %1842 = load i64, i64* %1841
  store i64 %1842, i64* %R9.i734, align 8
  store %struct.Memory* %loadMem_412c70, %struct.Memory** %MEMORY
  %loadMem_412c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 33
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %1845 to i64*
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 7
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %EDX.i730 = bitcast %union.anon* %1848 to i32*
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 15
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %RBP.i731 = bitcast %union.anon* %1851 to i64*
  %1852 = load i64, i64* %RBP.i731
  %1853 = sub i64 %1852, 1096
  %1854 = load i32, i32* %EDX.i730
  %1855 = zext i32 %1854 to i64
  %1856 = load i64, i64* %PC.i729
  %1857 = add i64 %1856, 6
  store i64 %1857, i64* %PC.i729
  %1858 = inttoptr i64 %1853 to i32*
  store i32 %1854, i32* %1858
  store %struct.Memory* %loadMem_412c77, %struct.Memory** %MEMORY
  %loadMem_412c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 33
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %1861 to i64*
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 7
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %RDX.i727 = bitcast %union.anon* %1864 to i64*
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 19
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %R9.i728 = bitcast %union.anon* %1867 to i64*
  %1868 = load i64, i64* %R9.i728
  %1869 = load i64, i64* %PC.i726
  %1870 = add i64 %1869, 3
  store i64 %1870, i64* %PC.i726
  store i64 %1868, i64* %RDX.i727, align 8
  store %struct.Memory* %loadMem_412c7d, %struct.Memory** %MEMORY
  %loadMem_412c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 33
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %1873 to i64*
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 5
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %RCX.i724 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 15
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RBP.i725 = bitcast %union.anon* %1879 to i64*
  %1880 = load i64, i64* %RBP.i725
  %1881 = sub i64 %1880, 1092
  %1882 = load i64, i64* %PC.i723
  %1883 = add i64 %1882, 6
  store i64 %1883, i64* %PC.i723
  %1884 = inttoptr i64 %1881 to i32*
  %1885 = load i32, i32* %1884
  %1886 = zext i32 %1885 to i64
  store i64 %1886, i64* %RCX.i724, align 8
  store %struct.Memory* %loadMem_412c80, %struct.Memory** %MEMORY
  %loadMem_412c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 33
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %1889 to i64*
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 17
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %R8D.i721 = bitcast %union.anon* %1892 to i32*
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 15
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %1895 to i64*
  %1896 = bitcast i32* %R8D.i721 to i64*
  %1897 = load i64, i64* %RBP.i722
  %1898 = sub i64 %1897, 1096
  %1899 = load i64, i64* %PC.i720
  %1900 = add i64 %1899, 7
  store i64 %1900, i64* %PC.i720
  %1901 = inttoptr i64 %1898 to i32*
  %1902 = load i32, i32* %1901
  %1903 = zext i32 %1902 to i64
  store i64 %1903, i64* %1896, align 8
  store %struct.Memory* %loadMem_412c86, %struct.Memory** %MEMORY
  %loadMem1_412c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 33
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %1906 to i64*
  %1907 = load i64, i64* %PC.i719
  %1908 = add i64 %1907, 259075
  %1909 = load i64, i64* %PC.i719
  %1910 = add i64 %1909, 5
  %1911 = load i64, i64* %PC.i719
  %1912 = add i64 %1911, 5
  store i64 %1912, i64* %PC.i719
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1914 = load i64, i64* %1913, align 8
  %1915 = add i64 %1914, -8
  %1916 = inttoptr i64 %1915 to i64*
  store i64 %1910, i64* %1916
  store i64 %1915, i64* %1913, align 8
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1908, i64* %1917, align 8
  store %struct.Memory* %loadMem1_412c8d, %struct.Memory** %MEMORY
  %loadMem2_412c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412c8d = load i64, i64* %3
  %call2_412c8d = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_412c8d, %struct.Memory* %loadMem2_412c8d)
  store %struct.Memory* %call2_412c8d, %struct.Memory** %MEMORY
  br label %block_.L_412c92

block_.L_412c92:                                  ; preds = %routine_idivl__ecx.exit739, %block_.L_412c1c
  %loadMem_412c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 33
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 1
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %RAX.i717 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 15
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RBP.i718 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %RBP.i718
  %1928 = sub i64 %1927, 12
  %1929 = load i64, i64* %PC.i716
  %1930 = add i64 %1929, 4
  store i64 %1930, i64* %PC.i716
  %1931 = inttoptr i64 %1928 to i32*
  %1932 = load i32, i32* %1931
  %1933 = sext i32 %1932 to i64
  store i64 %1933, i64* %RAX.i717, align 8
  store %struct.Memory* %loadMem_412c92, %struct.Memory** %MEMORY
  %loadMem_412c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 1
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RAX.i714 = bitcast %union.anon* %1939 to i64*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 5
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %RCX.i715 = bitcast %union.anon* %1942 to i64*
  %1943 = load i64, i64* %RAX.i714
  %1944 = add i64 %1943, 12099168
  %1945 = load i64, i64* %PC.i713
  %1946 = add i64 %1945, 8
  store i64 %1946, i64* %PC.i713
  %1947 = inttoptr i64 %1944 to i8*
  %1948 = load i8, i8* %1947
  %1949 = zext i8 %1948 to i64
  store i64 %1949, i64* %RCX.i715, align 8
  store %struct.Memory* %loadMem_412c96, %struct.Memory** %MEMORY
  %loadMem_412c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 33
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %1952 to i64*
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 5
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %ECX.i712 = bitcast %union.anon* %1955 to i32*
  %1956 = load i32, i32* %ECX.i712
  %1957 = zext i32 %1956 to i64
  %1958 = load i64, i64* %PC.i711
  %1959 = add i64 %1958, 3
  store i64 %1959, i64* %PC.i711
  %1960 = sub i32 %1956, 1
  %1961 = icmp ult i32 %1956, 1
  %1962 = zext i1 %1961 to i8
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1962, i8* %1963, align 1
  %1964 = and i32 %1960, 255
  %1965 = call i32 @llvm.ctpop.i32(i32 %1964)
  %1966 = trunc i32 %1965 to i8
  %1967 = and i8 %1966, 1
  %1968 = xor i8 %1967, 1
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1968, i8* %1969, align 1
  %1970 = xor i64 1, %1957
  %1971 = trunc i64 %1970 to i32
  %1972 = xor i32 %1971, %1960
  %1973 = lshr i32 %1972, 4
  %1974 = trunc i32 %1973 to i8
  %1975 = and i8 %1974, 1
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1975, i8* %1976, align 1
  %1977 = icmp eq i32 %1960, 0
  %1978 = zext i1 %1977 to i8
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1978, i8* %1979, align 1
  %1980 = lshr i32 %1960, 31
  %1981 = trunc i32 %1980 to i8
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1981, i8* %1982, align 1
  %1983 = lshr i32 %1956, 31
  %1984 = xor i32 %1980, %1983
  %1985 = add i32 %1984, %1983
  %1986 = icmp eq i32 %1985, 2
  %1987 = zext i1 %1986 to i8
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1987, i8* %1988, align 1
  store %struct.Memory* %loadMem_412c9e, %struct.Memory** %MEMORY
  %loadMem_412ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 33
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %1991 to i64*
  %1992 = load i64, i64* %PC.i710
  %1993 = add i64 %1992, 27
  %1994 = load i64, i64* %PC.i710
  %1995 = add i64 %1994, 6
  %1996 = load i64, i64* %PC.i710
  %1997 = add i64 %1996, 6
  store i64 %1997, i64* %PC.i710
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1999 = load i8, i8* %1998, align 1
  store i8 %1999, i8* %BRANCH_TAKEN, align 1
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2001 = icmp ne i8 %1999, 0
  %2002 = select i1 %2001, i64 %1993, i64 %1995
  store i64 %2002, i64* %2000, align 8
  store %struct.Memory* %loadMem_412ca1, %struct.Memory** %MEMORY
  %loadBr_412ca1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412ca1 = icmp eq i8 %loadBr_412ca1, 1
  br i1 %cmpBr_412ca1, label %block_.L_412cbc, label %block_412ca7

block_412ca7:                                     ; preds = %block_.L_412c92
  %loadMem_412ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 33
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %2005 to i64*
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 1
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %RAX.i708 = bitcast %union.anon* %2008 to i64*
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 15
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %RBP.i709 = bitcast %union.anon* %2011 to i64*
  %2012 = load i64, i64* %RBP.i709
  %2013 = sub i64 %2012, 12
  %2014 = load i64, i64* %PC.i707
  %2015 = add i64 %2014, 4
  store i64 %2015, i64* %PC.i707
  %2016 = inttoptr i64 %2013 to i32*
  %2017 = load i32, i32* %2016
  %2018 = sext i32 %2017 to i64
  store i64 %2018, i64* %RAX.i708, align 8
  store %struct.Memory* %loadMem_412ca7, %struct.Memory** %MEMORY
  %loadMem_412cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 33
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %2021 to i64*
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 1
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %RAX.i705 = bitcast %union.anon* %2024 to i64*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 5
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %RCX.i706 = bitcast %union.anon* %2027 to i64*
  %2028 = load i64, i64* %RAX.i705
  %2029 = add i64 %2028, 12099168
  %2030 = load i64, i64* %PC.i704
  %2031 = add i64 %2030, 8
  store i64 %2031, i64* %PC.i704
  %2032 = inttoptr i64 %2029 to i8*
  %2033 = load i8, i8* %2032
  %2034 = zext i8 %2033 to i64
  store i64 %2034, i64* %RCX.i706, align 8
  store %struct.Memory* %loadMem_412cab, %struct.Memory** %MEMORY
  %loadMem_412cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 33
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %2037 to i64*
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 5
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %ECX.i703 = bitcast %union.anon* %2040 to i32*
  %2041 = load i32, i32* %ECX.i703
  %2042 = zext i32 %2041 to i64
  %2043 = load i64, i64* %PC.i702
  %2044 = add i64 %2043, 3
  store i64 %2044, i64* %PC.i702
  %2045 = sub i32 %2041, 2
  %2046 = icmp ult i32 %2041, 2
  %2047 = zext i1 %2046 to i8
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2047, i8* %2048, align 1
  %2049 = and i32 %2045, 255
  %2050 = call i32 @llvm.ctpop.i32(i32 %2049)
  %2051 = trunc i32 %2050 to i8
  %2052 = and i8 %2051, 1
  %2053 = xor i8 %2052, 1
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2053, i8* %2054, align 1
  %2055 = xor i64 2, %2042
  %2056 = trunc i64 %2055 to i32
  %2057 = xor i32 %2056, %2045
  %2058 = lshr i32 %2057, 4
  %2059 = trunc i32 %2058 to i8
  %2060 = and i8 %2059, 1
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2060, i8* %2061, align 1
  %2062 = icmp eq i32 %2045, 0
  %2063 = zext i1 %2062 to i8
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2063, i8* %2064, align 1
  %2065 = lshr i32 %2045, 31
  %2066 = trunc i32 %2065 to i8
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2066, i8* %2067, align 1
  %2068 = lshr i32 %2041, 31
  %2069 = xor i32 %2065, %2068
  %2070 = add i32 %2069, %2068
  %2071 = icmp eq i32 %2070, 2
  %2072 = zext i1 %2071 to i8
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2072, i8* %2073, align 1
  store %struct.Memory* %loadMem_412cb3, %struct.Memory** %MEMORY
  %loadMem_412cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 33
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %2076 to i64*
  %2077 = load i64, i64* %PC.i701
  %2078 = add i64 %2077, 11
  %2079 = load i64, i64* %PC.i701
  %2080 = add i64 %2079, 6
  %2081 = load i64, i64* %PC.i701
  %2082 = add i64 %2081, 6
  store i64 %2082, i64* %PC.i701
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2084 = load i8, i8* %2083, align 1
  %2085 = icmp eq i8 %2084, 0
  %2086 = zext i1 %2085 to i8
  store i8 %2086, i8* %BRANCH_TAKEN, align 1
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2088 = select i1 %2085, i64 %2078, i64 %2080
  store i64 %2088, i64* %2087, align 8
  store %struct.Memory* %loadMem_412cb6, %struct.Memory** %MEMORY
  %loadBr_412cb6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412cb6 = icmp eq i8 %loadBr_412cb6, 1
  br i1 %cmpBr_412cb6, label %block_.L_412cc1, label %block_.L_412cbc

block_.L_412cbc:                                  ; preds = %block_412ca7, %block_.L_412c92
  %loadMem_412cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 33
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %2091 to i64*
  %2092 = load i64, i64* %PC.i700
  %2093 = add i64 %2092, 118
  %2094 = load i64, i64* %PC.i700
  %2095 = add i64 %2094, 5
  store i64 %2095, i64* %PC.i700
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2093, i64* %2096, align 8
  store %struct.Memory* %loadMem_412cbc, %struct.Memory** %MEMORY
  br label %block_.L_412d32

block_.L_412cc1:                                  ; preds = %block_412ca7
  %loadMem_412cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 33
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 11
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %RDI.i699 = bitcast %union.anon* %2102 to i64*
  %2103 = load i64, i64* %PC.i698
  %2104 = add i64 %2103, 10
  store i64 %2104, i64* %PC.i698
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i699, align 8
  store %struct.Memory* %loadMem_412cc1, %struct.Memory** %MEMORY
  %loadMem_412ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 33
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 9
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %RSI.i697 = bitcast %union.anon* %2110 to i64*
  %2111 = load i64, i64* %PC.i696
  %2112 = add i64 %2111, 5
  store i64 %2112, i64* %PC.i696
  store i64 1984, i64* %RSI.i697, align 8
  store %struct.Memory* %loadMem_412ccb, %struct.Memory** %MEMORY
  %loadMem_412cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 33
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %2115 to i64*
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 7
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %RDX.i695 = bitcast %union.anon* %2118 to i64*
  %2119 = load i64, i64* %PC.i694
  %2120 = add i64 %2119, 10
  store i64 %2120, i64* %PC.i694
  store i64 ptrtoint (%G__0x57a53a_type* @G__0x57a53a to i64), i64* %RDX.i695, align 8
  store %struct.Memory* %loadMem_412cd0, %struct.Memory** %MEMORY
  %loadMem_412cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 33
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 1
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %RAX.i693 = bitcast %union.anon* %2126 to i64*
  %2127 = load i64, i64* %PC.i692
  %2128 = add i64 %2127, 5
  store i64 %2128, i64* %PC.i692
  store i64 20, i64* %RAX.i693, align 8
  store %struct.Memory* %loadMem_412cda, %struct.Memory** %MEMORY
  %loadMem_412cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 33
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 5
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RCX.i690 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 15
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %RBP.i691 = bitcast %union.anon* %2137 to i64*
  %2138 = load i64, i64* %RBP.i691
  %2139 = sub i64 %2138, 12
  %2140 = load i64, i64* %PC.i689
  %2141 = add i64 %2140, 3
  store i64 %2141, i64* %PC.i689
  %2142 = inttoptr i64 %2139 to i32*
  %2143 = load i32, i32* %2142
  %2144 = zext i32 %2143 to i64
  store i64 %2144, i64* %RCX.i690, align 8
  store %struct.Memory* %loadMem_412cdf, %struct.Memory** %MEMORY
  %loadMem_412ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 33
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %2147 to i64*
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 1
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %EAX.i687 = bitcast %union.anon* %2150 to i32*
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 15
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %RBP.i688 = bitcast %union.anon* %2153 to i64*
  %2154 = load i64, i64* %RBP.i688
  %2155 = sub i64 %2154, 1100
  %2156 = load i32, i32* %EAX.i687
  %2157 = zext i32 %2156 to i64
  %2158 = load i64, i64* %PC.i686
  %2159 = add i64 %2158, 6
  store i64 %2159, i64* %PC.i686
  %2160 = inttoptr i64 %2155 to i32*
  store i32 %2156, i32* %2160
  store %struct.Memory* %loadMem_412ce2, %struct.Memory** %MEMORY
  %loadMem_412ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 33
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 5
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %ECX.i684 = bitcast %union.anon* %2166 to i32*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 1
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %RAX.i685 = bitcast %union.anon* %2169 to i64*
  %2170 = load i32, i32* %ECX.i684
  %2171 = zext i32 %2170 to i64
  %2172 = load i64, i64* %PC.i683
  %2173 = add i64 %2172, 2
  store i64 %2173, i64* %PC.i683
  %2174 = and i64 %2171, 4294967295
  store i64 %2174, i64* %RAX.i685, align 8
  store %struct.Memory* %loadMem_412ce8, %struct.Memory** %MEMORY
  %loadMem_412cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 33
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 7
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %RDX.i681 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 15
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RBP.i682 = bitcast %union.anon* %2183 to i64*
  %2184 = load i64, i64* %RBP.i682
  %2185 = sub i64 %2184, 1112
  %2186 = load i64, i64* %RDX.i681
  %2187 = load i64, i64* %PC.i680
  %2188 = add i64 %2187, 7
  store i64 %2188, i64* %PC.i680
  %2189 = inttoptr i64 %2185 to i64*
  store i64 %2186, i64* %2189
  store %struct.Memory* %loadMem_412cea, %struct.Memory** %MEMORY
  %loadMem_412cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2191 = getelementptr inbounds %struct.GPR, %struct.GPR* %2190, i32 0, i32 33
  %2192 = getelementptr inbounds %struct.Reg, %struct.Reg* %2191, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2192 to i64*
  %2193 = load i64, i64* %PC.i679
  %2194 = add i64 %2193, 1
  store i64 %2194, i64* %PC.i679
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2197 = bitcast %union.anon* %2196 to i32*
  %2198 = load i32, i32* %2197, align 8
  %2199 = sext i32 %2198 to i64
  %2200 = lshr i64 %2199, 32
  store i64 %2200, i64* %2195, align 8
  store %struct.Memory* %loadMem_412cf1, %struct.Memory** %MEMORY
  %loadMem_412cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 33
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 5
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %RCX.i677 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 15
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %RBP.i678 = bitcast %union.anon* %2209 to i64*
  %2210 = load i64, i64* %RBP.i678
  %2211 = sub i64 %2210, 1100
  %2212 = load i64, i64* %PC.i676
  %2213 = add i64 %2212, 6
  store i64 %2213, i64* %PC.i676
  %2214 = inttoptr i64 %2211 to i32*
  %2215 = load i32, i32* %2214
  %2216 = zext i32 %2215 to i64
  store i64 %2216, i64* %RCX.i677, align 8
  store %struct.Memory* %loadMem_412cf2, %struct.Memory** %MEMORY
  %loadMem_412cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 33
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %2219 to i64*
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 5
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %ECX.i671 = bitcast %union.anon* %2222 to i32*
  %2223 = load i32, i32* %ECX.i671
  %2224 = zext i32 %2223 to i64
  %2225 = load i64, i64* %PC.i670
  %2226 = add i64 %2225, 2
  store i64 %2226, i64* %PC.i670
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2228 = bitcast %union.anon* %2227 to i32*
  %2229 = load i32, i32* %2228, align 8
  %2230 = zext i32 %2229 to i64
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2232 = bitcast %union.anon* %2231 to i32*
  %2233 = load i32, i32* %2232, align 8
  %2234 = zext i32 %2233 to i64
  %2235 = shl i64 %2224, 32
  %2236 = ashr exact i64 %2235, 32
  %2237 = shl i64 %2234, 32
  %2238 = or i64 %2237, %2230
  %2239 = sdiv i64 %2238, %2236
  %2240 = shl i64 %2239, 32
  %2241 = ashr exact i64 %2240, 32
  %2242 = icmp eq i64 %2239, %2241
  br i1 %2242, label %2247, label %2243

; <label>:2243:                                   ; preds = %block_.L_412cc1
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2245 = load i64, i64* %2244, align 8
  %2246 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2245, %struct.Memory* %loadMem_412cf8)
  br label %routine_idivl__ecx.exit672

; <label>:2247:                                   ; preds = %block_.L_412cc1
  %2248 = srem i64 %2238, %2236
  %2249 = getelementptr inbounds %union.anon, %union.anon* %2227, i64 0, i32 0
  %2250 = and i64 %2239, 4294967295
  store i64 %2250, i64* %2249, align 8
  %2251 = getelementptr inbounds %union.anon, %union.anon* %2231, i64 0, i32 0
  %2252 = and i64 %2248, 4294967295
  store i64 %2252, i64* %2251, align 8
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2253, align 1
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2254, align 1
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2255, align 1
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2256, align 1
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2257, align 1
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2258, align 1
  br label %routine_idivl__ecx.exit672

routine_idivl__ecx.exit672:                       ; preds = %2243, %2247
  %2259 = phi %struct.Memory* [ %2246, %2243 ], [ %loadMem_412cf8, %2247 ]
  store %struct.Memory* %2259, %struct.Memory** %MEMORY
  %loadMem_412cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 33
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 1
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %RAX.i669 = bitcast %union.anon* %2265 to i64*
  %2266 = load i64, i64* %RAX.i669
  %2267 = load i64, i64* %PC.i668
  %2268 = add i64 %2267, 3
  store i64 %2268, i64* %PC.i668
  %2269 = trunc i64 %2266 to i32
  %2270 = sub i32 %2269, 1
  %2271 = zext i32 %2270 to i64
  store i64 %2271, i64* %RAX.i669, align 8
  %2272 = icmp ult i32 %2269, 1
  %2273 = zext i1 %2272 to i8
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2273, i8* %2274, align 1
  %2275 = and i32 %2270, 255
  %2276 = call i32 @llvm.ctpop.i32(i32 %2275)
  %2277 = trunc i32 %2276 to i8
  %2278 = and i8 %2277, 1
  %2279 = xor i8 %2278, 1
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2279, i8* %2280, align 1
  %2281 = xor i64 1, %2266
  %2282 = trunc i64 %2281 to i32
  %2283 = xor i32 %2282, %2270
  %2284 = lshr i32 %2283, 4
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2286, i8* %2287, align 1
  %2288 = icmp eq i32 %2270, 0
  %2289 = zext i1 %2288 to i8
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2289, i8* %2290, align 1
  %2291 = lshr i32 %2270, 31
  %2292 = trunc i32 %2291 to i8
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2292, i8* %2293, align 1
  %2294 = lshr i32 %2269, 31
  %2295 = xor i32 %2291, %2294
  %2296 = add i32 %2295, %2294
  %2297 = icmp eq i32 %2296, 2
  %2298 = zext i1 %2297 to i8
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2298, i8* %2299, align 1
  store %struct.Memory* %loadMem_412cfa, %struct.Memory** %MEMORY
  %loadMem_412cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 33
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %2302 to i64*
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 17
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %R8D.i666 = bitcast %union.anon* %2305 to i32*
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2307 = getelementptr inbounds %struct.GPR, %struct.GPR* %2306, i32 0, i32 15
  %2308 = getelementptr inbounds %struct.Reg, %struct.Reg* %2307, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %2308 to i64*
  %2309 = bitcast i32* %R8D.i666 to i64*
  %2310 = load i64, i64* %RBP.i667
  %2311 = sub i64 %2310, 12
  %2312 = load i64, i64* %PC.i665
  %2313 = add i64 %2312, 4
  store i64 %2313, i64* %PC.i665
  %2314 = inttoptr i64 %2311 to i32*
  %2315 = load i32, i32* %2314
  %2316 = zext i32 %2315 to i64
  store i64 %2316, i64* %2309, align 8
  store %struct.Memory* %loadMem_412cfd, %struct.Memory** %MEMORY
  %loadMem_412d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 33
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %2319 to i64*
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 1
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %EAX.i663 = bitcast %union.anon* %2322 to i32*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 15
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %RBP.i664 = bitcast %union.anon* %2325 to i64*
  %2326 = load i64, i64* %RBP.i664
  %2327 = sub i64 %2326, 1116
  %2328 = load i32, i32* %EAX.i663
  %2329 = zext i32 %2328 to i64
  %2330 = load i64, i64* %PC.i662
  %2331 = add i64 %2330, 6
  store i64 %2331, i64* %PC.i662
  %2332 = inttoptr i64 %2327 to i32*
  store i32 %2328, i32* %2332
  store %struct.Memory* %loadMem_412d01, %struct.Memory** %MEMORY
  %loadMem_412d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 33
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %2335 to i64*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 17
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %R8D.i660 = bitcast %union.anon* %2338 to i32*
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 1
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %RAX.i661 = bitcast %union.anon* %2341 to i64*
  %2342 = load i32, i32* %R8D.i660
  %2343 = zext i32 %2342 to i64
  %2344 = load i64, i64* %PC.i659
  %2345 = add i64 %2344, 3
  store i64 %2345, i64* %PC.i659
  %2346 = and i64 %2343, 4294967295
  store i64 %2346, i64* %RAX.i661, align 8
  store %struct.Memory* %loadMem_412d07, %struct.Memory** %MEMORY
  %loadMem_412d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 33
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %2349 to i64*
  %2350 = load i64, i64* %PC.i658
  %2351 = add i64 %2350, 1
  store i64 %2351, i64* %PC.i658
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2354 = bitcast %union.anon* %2353 to i32*
  %2355 = load i32, i32* %2354, align 8
  %2356 = sext i32 %2355 to i64
  %2357 = lshr i64 %2356, 32
  store i64 %2357, i64* %2352, align 8
  store %struct.Memory* %loadMem_412d0a, %struct.Memory** %MEMORY
  %loadMem_412d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 33
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %2360 to i64*
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2362 = getelementptr inbounds %struct.GPR, %struct.GPR* %2361, i32 0, i32 5
  %2363 = getelementptr inbounds %struct.Reg, %struct.Reg* %2362, i32 0, i32 0
  %ECX.i654 = bitcast %union.anon* %2363 to i32*
  %2364 = load i32, i32* %ECX.i654
  %2365 = zext i32 %2364 to i64
  %2366 = load i64, i64* %PC.i653
  %2367 = add i64 %2366, 2
  store i64 %2367, i64* %PC.i653
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2369 = bitcast %union.anon* %2368 to i32*
  %2370 = load i32, i32* %2369, align 8
  %2371 = zext i32 %2370 to i64
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2373 = bitcast %union.anon* %2372 to i32*
  %2374 = load i32, i32* %2373, align 8
  %2375 = zext i32 %2374 to i64
  %2376 = shl i64 %2365, 32
  %2377 = ashr exact i64 %2376, 32
  %2378 = shl i64 %2375, 32
  %2379 = or i64 %2378, %2371
  %2380 = sdiv i64 %2379, %2377
  %2381 = shl i64 %2380, 32
  %2382 = ashr exact i64 %2381, 32
  %2383 = icmp eq i64 %2380, %2382
  br i1 %2383, label %2388, label %2384

; <label>:2384:                                   ; preds = %routine_idivl__ecx.exit672
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2386 = load i64, i64* %2385, align 8
  %2387 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2386, %struct.Memory* %loadMem_412d0b)
  br label %routine_idivl__ecx.exit655

; <label>:2388:                                   ; preds = %routine_idivl__ecx.exit672
  %2389 = srem i64 %2379, %2377
  %2390 = getelementptr inbounds %union.anon, %union.anon* %2368, i64 0, i32 0
  %2391 = and i64 %2380, 4294967295
  store i64 %2391, i64* %2390, align 8
  %2392 = getelementptr inbounds %union.anon, %union.anon* %2372, i64 0, i32 0
  %2393 = and i64 %2389, 4294967295
  store i64 %2393, i64* %2392, align 8
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2394, align 1
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2395, align 1
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2396, align 1
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2397, align 1
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2398, align 1
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2399, align 1
  br label %routine_idivl__ecx.exit655

routine_idivl__ecx.exit655:                       ; preds = %2384, %2388
  %2400 = phi %struct.Memory* [ %2387, %2384 ], [ %loadMem_412d0b, %2388 ]
  store %struct.Memory* %2400, %struct.Memory** %MEMORY
  %loadMem_412d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 33
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 7
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %RDX.i652 = bitcast %union.anon* %2406 to i64*
  %2407 = load i64, i64* %RDX.i652
  %2408 = load i64, i64* %PC.i651
  %2409 = add i64 %2408, 3
  store i64 %2409, i64* %PC.i651
  %2410 = trunc i64 %2407 to i32
  %2411 = sub i32 %2410, 1
  %2412 = zext i32 %2411 to i64
  store i64 %2412, i64* %RDX.i652, align 8
  %2413 = icmp ult i32 %2410, 1
  %2414 = zext i1 %2413 to i8
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2414, i8* %2415, align 1
  %2416 = and i32 %2411, 255
  %2417 = call i32 @llvm.ctpop.i32(i32 %2416)
  %2418 = trunc i32 %2417 to i8
  %2419 = and i8 %2418, 1
  %2420 = xor i8 %2419, 1
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2420, i8* %2421, align 1
  %2422 = xor i64 1, %2407
  %2423 = trunc i64 %2422 to i32
  %2424 = xor i32 %2423, %2411
  %2425 = lshr i32 %2424, 4
  %2426 = trunc i32 %2425 to i8
  %2427 = and i8 %2426, 1
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2427, i8* %2428, align 1
  %2429 = icmp eq i32 %2411, 0
  %2430 = zext i1 %2429 to i8
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2430, i8* %2431, align 1
  %2432 = lshr i32 %2411, 31
  %2433 = trunc i32 %2432 to i8
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2433, i8* %2434, align 1
  %2435 = lshr i32 %2410, 31
  %2436 = xor i32 %2432, %2435
  %2437 = add i32 %2436, %2435
  %2438 = icmp eq i32 %2437, 2
  %2439 = zext i1 %2438 to i8
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2439, i8* %2440, align 1
  store %struct.Memory* %loadMem_412d0d, %struct.Memory** %MEMORY
  %loadMem_412d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 33
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %2443 to i64*
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 15
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %RBP.i649 = bitcast %union.anon* %2446 to i64*
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 19
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %R9.i650 = bitcast %union.anon* %2449 to i64*
  %2450 = load i64, i64* %RBP.i649
  %2451 = sub i64 %2450, 1112
  %2452 = load i64, i64* %PC.i648
  %2453 = add i64 %2452, 7
  store i64 %2453, i64* %PC.i648
  %2454 = inttoptr i64 %2451 to i64*
  %2455 = load i64, i64* %2454
  store i64 %2455, i64* %R9.i650, align 8
  store %struct.Memory* %loadMem_412d10, %struct.Memory** %MEMORY
  %loadMem_412d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 33
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %2458 to i64*
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 7
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %EDX.i646 = bitcast %union.anon* %2461 to i32*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 15
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %2464 to i64*
  %2465 = load i64, i64* %RBP.i647
  %2466 = sub i64 %2465, 1120
  %2467 = load i32, i32* %EDX.i646
  %2468 = zext i32 %2467 to i64
  %2469 = load i64, i64* %PC.i645
  %2470 = add i64 %2469, 6
  store i64 %2470, i64* %PC.i645
  %2471 = inttoptr i64 %2466 to i32*
  store i32 %2467, i32* %2471
  store %struct.Memory* %loadMem_412d17, %struct.Memory** %MEMORY
  %loadMem_412d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 33
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %2474 to i64*
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 7
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %RDX.i643 = bitcast %union.anon* %2477 to i64*
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 19
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %R9.i644 = bitcast %union.anon* %2480 to i64*
  %2481 = load i64, i64* %R9.i644
  %2482 = load i64, i64* %PC.i642
  %2483 = add i64 %2482, 3
  store i64 %2483, i64* %PC.i642
  store i64 %2481, i64* %RDX.i643, align 8
  store %struct.Memory* %loadMem_412d1d, %struct.Memory** %MEMORY
  %loadMem_412d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 33
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 5
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RCX.i640 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 15
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RBP.i641 = bitcast %union.anon* %2492 to i64*
  %2493 = load i64, i64* %RBP.i641
  %2494 = sub i64 %2493, 1116
  %2495 = load i64, i64* %PC.i639
  %2496 = add i64 %2495, 6
  store i64 %2496, i64* %PC.i639
  %2497 = inttoptr i64 %2494 to i32*
  %2498 = load i32, i32* %2497
  %2499 = zext i32 %2498 to i64
  store i64 %2499, i64* %RCX.i640, align 8
  store %struct.Memory* %loadMem_412d20, %struct.Memory** %MEMORY
  %loadMem_412d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 33
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %2502 to i64*
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 17
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %R8D.i637 = bitcast %union.anon* %2505 to i32*
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 15
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %2508 to i64*
  %2509 = bitcast i32* %R8D.i637 to i64*
  %2510 = load i64, i64* %RBP.i638
  %2511 = sub i64 %2510, 1120
  %2512 = load i64, i64* %PC.i636
  %2513 = add i64 %2512, 7
  store i64 %2513, i64* %PC.i636
  %2514 = inttoptr i64 %2511 to i32*
  %2515 = load i32, i32* %2514
  %2516 = zext i32 %2515 to i64
  store i64 %2516, i64* %2509, align 8
  store %struct.Memory* %loadMem_412d26, %struct.Memory** %MEMORY
  %loadMem1_412d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 33
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %2519 to i64*
  %2520 = load i64, i64* %PC.i635
  %2521 = add i64 %2520, 258915
  %2522 = load i64, i64* %PC.i635
  %2523 = add i64 %2522, 5
  %2524 = load i64, i64* %PC.i635
  %2525 = add i64 %2524, 5
  store i64 %2525, i64* %PC.i635
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2527 = load i64, i64* %2526, align 8
  %2528 = add i64 %2527, -8
  %2529 = inttoptr i64 %2528 to i64*
  store i64 %2523, i64* %2529
  store i64 %2528, i64* %2526, align 8
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2521, i64* %2530, align 8
  store %struct.Memory* %loadMem1_412d2d, %struct.Memory** %MEMORY
  %loadMem2_412d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412d2d = load i64, i64* %3
  %call2_412d2d = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_412d2d, %struct.Memory* %loadMem2_412d2d)
  store %struct.Memory* %call2_412d2d, %struct.Memory** %MEMORY
  br label %block_.L_412d32

block_.L_412d32:                                  ; preds = %routine_idivl__ecx.exit655, %block_.L_412cbc
  %loadMem_412d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 33
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %2533 to i64*
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 15
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %2536 to i64*
  %2537 = load i64, i64* %RBP.i634
  %2538 = sub i64 %2537, 24
  %2539 = load i64, i64* %PC.i633
  %2540 = add i64 %2539, 5
  store i64 %2540, i64* %PC.i633
  %2541 = inttoptr i64 %2538 to i64*
  %2542 = load i64, i64* %2541
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2543, align 1
  %2544 = trunc i64 %2542 to i32
  %2545 = and i32 %2544, 255
  %2546 = call i32 @llvm.ctpop.i32(i32 %2545)
  %2547 = trunc i32 %2546 to i8
  %2548 = and i8 %2547, 1
  %2549 = xor i8 %2548, 1
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2549, i8* %2550, align 1
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2551, align 1
  %2552 = icmp eq i64 %2542, 0
  %2553 = zext i1 %2552 to i8
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2553, i8* %2554, align 1
  %2555 = lshr i64 %2542, 63
  %2556 = trunc i64 %2555 to i8
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2556, i8* %2557, align 1
  %2558 = lshr i64 %2542, 63
  %2559 = xor i64 %2555, %2558
  %2560 = add i64 %2559, %2558
  %2561 = icmp eq i64 %2560, 2
  %2562 = zext i1 %2561 to i8
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2562, i8* %2563, align 1
  store %struct.Memory* %loadMem_412d32, %struct.Memory** %MEMORY
  %loadMem_412d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 33
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %2566 to i64*
  %2567 = load i64, i64* %PC.i632
  %2568 = add i64 %2567, 11
  %2569 = load i64, i64* %PC.i632
  %2570 = add i64 %2569, 6
  %2571 = load i64, i64* %PC.i632
  %2572 = add i64 %2571, 6
  store i64 %2572, i64* %PC.i632
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2574 = load i8, i8* %2573, align 1
  store i8 %2574, i8* %BRANCH_TAKEN, align 1
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2576 = icmp ne i8 %2574, 0
  %2577 = select i1 %2576, i64 %2568, i64 %2570
  store i64 %2577, i64* %2575, align 8
  store %struct.Memory* %loadMem_412d37, %struct.Memory** %MEMORY
  %loadBr_412d37 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412d37 = icmp eq i8 %loadBr_412d37, 1
  br i1 %cmpBr_412d37, label %block_.L_412d42, label %block_412d3d

block_412d3d:                                     ; preds = %block_.L_412d32
  %loadMem_412d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 33
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %2580 to i64*
  %2581 = load i64, i64* %PC.i631
  %2582 = add i64 %2581, 118
  %2583 = load i64, i64* %PC.i631
  %2584 = add i64 %2583, 5
  store i64 %2584, i64* %PC.i631
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2582, i64* %2585, align 8
  store %struct.Memory* %loadMem_412d3d, %struct.Memory** %MEMORY
  br label %block_.L_412db3

block_.L_412d42:                                  ; preds = %block_.L_412d32
  %loadMem_412d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 33
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 11
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %RDI.i630 = bitcast %union.anon* %2591 to i64*
  %2592 = load i64, i64* %PC.i629
  %2593 = add i64 %2592, 10
  store i64 %2593, i64* %PC.i629
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i630, align 8
  store %struct.Memory* %loadMem_412d42, %struct.Memory** %MEMORY
  %loadMem_412d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 33
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %2596 to i64*
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 9
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %RSI.i628 = bitcast %union.anon* %2599 to i64*
  %2600 = load i64, i64* %PC.i627
  %2601 = add i64 %2600, 5
  store i64 %2601, i64* %PC.i627
  store i64 1985, i64* %RSI.i628, align 8
  store %struct.Memory* %loadMem_412d4c, %struct.Memory** %MEMORY
  %loadMem_412d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2603 = getelementptr inbounds %struct.GPR, %struct.GPR* %2602, i32 0, i32 33
  %2604 = getelementptr inbounds %struct.Reg, %struct.Reg* %2603, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %2604 to i64*
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 7
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %RDX.i626 = bitcast %union.anon* %2607 to i64*
  %2608 = load i64, i64* %PC.i625
  %2609 = add i64 %2608, 10
  store i64 %2609, i64* %PC.i625
  store i64 ptrtoint (%G__0x57a4e7_type* @G__0x57a4e7 to i64), i64* %RDX.i626, align 8
  store %struct.Memory* %loadMem_412d51, %struct.Memory** %MEMORY
  %loadMem_412d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 33
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %2612 to i64*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 1
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %RAX.i624 = bitcast %union.anon* %2615 to i64*
  %2616 = load i64, i64* %PC.i623
  %2617 = add i64 %2616, 5
  store i64 %2617, i64* %PC.i623
  store i64 20, i64* %RAX.i624, align 8
  store %struct.Memory* %loadMem_412d5b, %struct.Memory** %MEMORY
  %loadMem_412d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 33
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %2620 to i64*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 5
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %RCX.i621 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 15
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %2626 to i64*
  %2627 = load i64, i64* %RBP.i622
  %2628 = sub i64 %2627, 8
  %2629 = load i64, i64* %PC.i620
  %2630 = add i64 %2629, 3
  store i64 %2630, i64* %PC.i620
  %2631 = inttoptr i64 %2628 to i32*
  %2632 = load i32, i32* %2631
  %2633 = zext i32 %2632 to i64
  store i64 %2633, i64* %RCX.i621, align 8
  store %struct.Memory* %loadMem_412d60, %struct.Memory** %MEMORY
  %loadMem_412d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 33
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %2636 to i64*
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 1
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %EAX.i618 = bitcast %union.anon* %2639 to i32*
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 15
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %2642 to i64*
  %2643 = load i64, i64* %RBP.i619
  %2644 = sub i64 %2643, 1124
  %2645 = load i32, i32* %EAX.i618
  %2646 = zext i32 %2645 to i64
  %2647 = load i64, i64* %PC.i617
  %2648 = add i64 %2647, 6
  store i64 %2648, i64* %PC.i617
  %2649 = inttoptr i64 %2644 to i32*
  store i32 %2645, i32* %2649
  store %struct.Memory* %loadMem_412d63, %struct.Memory** %MEMORY
  %loadMem_412d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 33
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %2652 to i64*
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 5
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %ECX.i615 = bitcast %union.anon* %2655 to i32*
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 1
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %RAX.i616 = bitcast %union.anon* %2658 to i64*
  %2659 = load i32, i32* %ECX.i615
  %2660 = zext i32 %2659 to i64
  %2661 = load i64, i64* %PC.i614
  %2662 = add i64 %2661, 2
  store i64 %2662, i64* %PC.i614
  %2663 = and i64 %2660, 4294967295
  store i64 %2663, i64* %RAX.i616, align 8
  store %struct.Memory* %loadMem_412d69, %struct.Memory** %MEMORY
  %loadMem_412d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 33
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %2666 to i64*
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 7
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %RDX.i612 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 15
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %RBP.i613 = bitcast %union.anon* %2672 to i64*
  %2673 = load i64, i64* %RBP.i613
  %2674 = sub i64 %2673, 1136
  %2675 = load i64, i64* %RDX.i612
  %2676 = load i64, i64* %PC.i611
  %2677 = add i64 %2676, 7
  store i64 %2677, i64* %PC.i611
  %2678 = inttoptr i64 %2674 to i64*
  store i64 %2675, i64* %2678
  store %struct.Memory* %loadMem_412d6b, %struct.Memory** %MEMORY
  %loadMem_412d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 33
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %2681 to i64*
  %2682 = load i64, i64* %PC.i610
  %2683 = add i64 %2682, 1
  store i64 %2683, i64* %PC.i610
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2686 = bitcast %union.anon* %2685 to i32*
  %2687 = load i32, i32* %2686, align 8
  %2688 = sext i32 %2687 to i64
  %2689 = lshr i64 %2688, 32
  store i64 %2689, i64* %2684, align 8
  store %struct.Memory* %loadMem_412d72, %struct.Memory** %MEMORY
  %loadMem_412d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 33
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %2692 to i64*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 5
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %RCX.i608 = bitcast %union.anon* %2695 to i64*
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 15
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %RBP.i609 = bitcast %union.anon* %2698 to i64*
  %2699 = load i64, i64* %RBP.i609
  %2700 = sub i64 %2699, 1124
  %2701 = load i64, i64* %PC.i607
  %2702 = add i64 %2701, 6
  store i64 %2702, i64* %PC.i607
  %2703 = inttoptr i64 %2700 to i32*
  %2704 = load i32, i32* %2703
  %2705 = zext i32 %2704 to i64
  store i64 %2705, i64* %RCX.i608, align 8
  store %struct.Memory* %loadMem_412d73, %struct.Memory** %MEMORY
  %loadMem_412d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 33
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %2708 to i64*
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 5
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %ECX.i603 = bitcast %union.anon* %2711 to i32*
  %2712 = load i32, i32* %ECX.i603
  %2713 = zext i32 %2712 to i64
  %2714 = load i64, i64* %PC.i602
  %2715 = add i64 %2714, 2
  store i64 %2715, i64* %PC.i602
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2717 = bitcast %union.anon* %2716 to i32*
  %2718 = load i32, i32* %2717, align 8
  %2719 = zext i32 %2718 to i64
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2721 = bitcast %union.anon* %2720 to i32*
  %2722 = load i32, i32* %2721, align 8
  %2723 = zext i32 %2722 to i64
  %2724 = shl i64 %2713, 32
  %2725 = ashr exact i64 %2724, 32
  %2726 = shl i64 %2723, 32
  %2727 = or i64 %2726, %2719
  %2728 = sdiv i64 %2727, %2725
  %2729 = shl i64 %2728, 32
  %2730 = ashr exact i64 %2729, 32
  %2731 = icmp eq i64 %2728, %2730
  br i1 %2731, label %2736, label %2732

; <label>:2732:                                   ; preds = %block_.L_412d42
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2734 = load i64, i64* %2733, align 8
  %2735 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2734, %struct.Memory* %loadMem_412d79)
  br label %routine_idivl__ecx.exit604

; <label>:2736:                                   ; preds = %block_.L_412d42
  %2737 = srem i64 %2727, %2725
  %2738 = getelementptr inbounds %union.anon, %union.anon* %2716, i64 0, i32 0
  %2739 = and i64 %2728, 4294967295
  store i64 %2739, i64* %2738, align 8
  %2740 = getelementptr inbounds %union.anon, %union.anon* %2720, i64 0, i32 0
  %2741 = and i64 %2737, 4294967295
  store i64 %2741, i64* %2740, align 8
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2742, align 1
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2743, align 1
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2744, align 1
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2745, align 1
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2746, align 1
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2747, align 1
  br label %routine_idivl__ecx.exit604

routine_idivl__ecx.exit604:                       ; preds = %2732, %2736
  %2748 = phi %struct.Memory* [ %2735, %2732 ], [ %loadMem_412d79, %2736 ]
  store %struct.Memory* %2748, %struct.Memory** %MEMORY
  %loadMem_412d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 33
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 1
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %RAX.i601 = bitcast %union.anon* %2754 to i64*
  %2755 = load i64, i64* %RAX.i601
  %2756 = load i64, i64* %PC.i600
  %2757 = add i64 %2756, 3
  store i64 %2757, i64* %PC.i600
  %2758 = trunc i64 %2755 to i32
  %2759 = sub i32 %2758, 1
  %2760 = zext i32 %2759 to i64
  store i64 %2760, i64* %RAX.i601, align 8
  %2761 = icmp ult i32 %2758, 1
  %2762 = zext i1 %2761 to i8
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2762, i8* %2763, align 1
  %2764 = and i32 %2759, 255
  %2765 = call i32 @llvm.ctpop.i32(i32 %2764)
  %2766 = trunc i32 %2765 to i8
  %2767 = and i8 %2766, 1
  %2768 = xor i8 %2767, 1
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2768, i8* %2769, align 1
  %2770 = xor i64 1, %2755
  %2771 = trunc i64 %2770 to i32
  %2772 = xor i32 %2771, %2759
  %2773 = lshr i32 %2772, 4
  %2774 = trunc i32 %2773 to i8
  %2775 = and i8 %2774, 1
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2775, i8* %2776, align 1
  %2777 = icmp eq i32 %2759, 0
  %2778 = zext i1 %2777 to i8
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2778, i8* %2779, align 1
  %2780 = lshr i32 %2759, 31
  %2781 = trunc i32 %2780 to i8
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2781, i8* %2782, align 1
  %2783 = lshr i32 %2758, 31
  %2784 = xor i32 %2780, %2783
  %2785 = add i32 %2784, %2783
  %2786 = icmp eq i32 %2785, 2
  %2787 = zext i1 %2786 to i8
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2787, i8* %2788, align 1
  store %struct.Memory* %loadMem_412d7b, %struct.Memory** %MEMORY
  %loadMem_412d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 33
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 17
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %R8D.i598 = bitcast %union.anon* %2794 to i32*
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2796 = getelementptr inbounds %struct.GPR, %struct.GPR* %2795, i32 0, i32 15
  %2797 = getelementptr inbounds %struct.Reg, %struct.Reg* %2796, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %2797 to i64*
  %2798 = bitcast i32* %R8D.i598 to i64*
  %2799 = load i64, i64* %RBP.i599
  %2800 = sub i64 %2799, 8
  %2801 = load i64, i64* %PC.i597
  %2802 = add i64 %2801, 4
  store i64 %2802, i64* %PC.i597
  %2803 = inttoptr i64 %2800 to i32*
  %2804 = load i32, i32* %2803
  %2805 = zext i32 %2804 to i64
  store i64 %2805, i64* %2798, align 8
  store %struct.Memory* %loadMem_412d7e, %struct.Memory** %MEMORY
  %loadMem_412d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 33
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %2808 to i64*
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2810 = getelementptr inbounds %struct.GPR, %struct.GPR* %2809, i32 0, i32 1
  %2811 = getelementptr inbounds %struct.Reg, %struct.Reg* %2810, i32 0, i32 0
  %EAX.i595 = bitcast %union.anon* %2811 to i32*
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 15
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %2814 to i64*
  %2815 = load i64, i64* %RBP.i596
  %2816 = sub i64 %2815, 1140
  %2817 = load i32, i32* %EAX.i595
  %2818 = zext i32 %2817 to i64
  %2819 = load i64, i64* %PC.i594
  %2820 = add i64 %2819, 6
  store i64 %2820, i64* %PC.i594
  %2821 = inttoptr i64 %2816 to i32*
  store i32 %2817, i32* %2821
  store %struct.Memory* %loadMem_412d82, %struct.Memory** %MEMORY
  %loadMem_412d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 33
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %2824 to i64*
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 17
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %R8D.i592 = bitcast %union.anon* %2827 to i32*
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 1
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %RAX.i593 = bitcast %union.anon* %2830 to i64*
  %2831 = load i32, i32* %R8D.i592
  %2832 = zext i32 %2831 to i64
  %2833 = load i64, i64* %PC.i591
  %2834 = add i64 %2833, 3
  store i64 %2834, i64* %PC.i591
  %2835 = and i64 %2832, 4294967295
  store i64 %2835, i64* %RAX.i593, align 8
  store %struct.Memory* %loadMem_412d88, %struct.Memory** %MEMORY
  %loadMem_412d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 33
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %2838 to i64*
  %2839 = load i64, i64* %PC.i590
  %2840 = add i64 %2839, 1
  store i64 %2840, i64* %PC.i590
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2843 = bitcast %union.anon* %2842 to i32*
  %2844 = load i32, i32* %2843, align 8
  %2845 = sext i32 %2844 to i64
  %2846 = lshr i64 %2845, 32
  store i64 %2846, i64* %2841, align 8
  store %struct.Memory* %loadMem_412d8b, %struct.Memory** %MEMORY
  %loadMem_412d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 33
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %2849 to i64*
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 5
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2852 to i32*
  %2853 = load i32, i32* %ECX.i
  %2854 = zext i32 %2853 to i64
  %2855 = load i64, i64* %PC.i586
  %2856 = add i64 %2855, 2
  store i64 %2856, i64* %PC.i586
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2858 = bitcast %union.anon* %2857 to i32*
  %2859 = load i32, i32* %2858, align 8
  %2860 = zext i32 %2859 to i64
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2862 = bitcast %union.anon* %2861 to i32*
  %2863 = load i32, i32* %2862, align 8
  %2864 = zext i32 %2863 to i64
  %2865 = shl i64 %2854, 32
  %2866 = ashr exact i64 %2865, 32
  %2867 = shl i64 %2864, 32
  %2868 = or i64 %2867, %2860
  %2869 = sdiv i64 %2868, %2866
  %2870 = shl i64 %2869, 32
  %2871 = ashr exact i64 %2870, 32
  %2872 = icmp eq i64 %2869, %2871
  br i1 %2872, label %2877, label %2873

; <label>:2873:                                   ; preds = %routine_idivl__ecx.exit604
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2875 = load i64, i64* %2874, align 8
  %2876 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2875, %struct.Memory* %loadMem_412d8c)
  br label %routine_idivl__ecx.exit

; <label>:2877:                                   ; preds = %routine_idivl__ecx.exit604
  %2878 = srem i64 %2868, %2866
  %2879 = getelementptr inbounds %union.anon, %union.anon* %2857, i64 0, i32 0
  %2880 = and i64 %2869, 4294967295
  store i64 %2880, i64* %2879, align 8
  %2881 = getelementptr inbounds %union.anon, %union.anon* %2861, i64 0, i32 0
  %2882 = and i64 %2878, 4294967295
  store i64 %2882, i64* %2881, align 8
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2883, align 1
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2884, align 1
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2885, align 1
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2886, align 1
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2887, align 1
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2888, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %2873, %2877
  %2889 = phi %struct.Memory* [ %2876, %2873 ], [ %loadMem_412d8c, %2877 ]
  store %struct.Memory* %2889, %struct.Memory** %MEMORY
  %loadMem_412d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 33
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %2892 to i64*
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 7
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %RDX.i585 = bitcast %union.anon* %2895 to i64*
  %2896 = load i64, i64* %RDX.i585
  %2897 = load i64, i64* %PC.i584
  %2898 = add i64 %2897, 3
  store i64 %2898, i64* %PC.i584
  %2899 = trunc i64 %2896 to i32
  %2900 = sub i32 %2899, 1
  %2901 = zext i32 %2900 to i64
  store i64 %2901, i64* %RDX.i585, align 8
  %2902 = icmp ult i32 %2899, 1
  %2903 = zext i1 %2902 to i8
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2903, i8* %2904, align 1
  %2905 = and i32 %2900, 255
  %2906 = call i32 @llvm.ctpop.i32(i32 %2905)
  %2907 = trunc i32 %2906 to i8
  %2908 = and i8 %2907, 1
  %2909 = xor i8 %2908, 1
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2909, i8* %2910, align 1
  %2911 = xor i64 1, %2896
  %2912 = trunc i64 %2911 to i32
  %2913 = xor i32 %2912, %2900
  %2914 = lshr i32 %2913, 4
  %2915 = trunc i32 %2914 to i8
  %2916 = and i8 %2915, 1
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2916, i8* %2917, align 1
  %2918 = icmp eq i32 %2900, 0
  %2919 = zext i1 %2918 to i8
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2919, i8* %2920, align 1
  %2921 = lshr i32 %2900, 31
  %2922 = trunc i32 %2921 to i8
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2922, i8* %2923, align 1
  %2924 = lshr i32 %2899, 31
  %2925 = xor i32 %2921, %2924
  %2926 = add i32 %2925, %2924
  %2927 = icmp eq i32 %2926, 2
  %2928 = zext i1 %2927 to i8
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2928, i8* %2929, align 1
  store %struct.Memory* %loadMem_412d8e, %struct.Memory** %MEMORY
  %loadMem_412d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 33
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %2932 to i64*
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 15
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %2935 to i64*
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 19
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %R9.i583 = bitcast %union.anon* %2938 to i64*
  %2939 = load i64, i64* %RBP.i582
  %2940 = sub i64 %2939, 1136
  %2941 = load i64, i64* %PC.i581
  %2942 = add i64 %2941, 7
  store i64 %2942, i64* %PC.i581
  %2943 = inttoptr i64 %2940 to i64*
  %2944 = load i64, i64* %2943
  store i64 %2944, i64* %R9.i583, align 8
  store %struct.Memory* %loadMem_412d91, %struct.Memory** %MEMORY
  %loadMem_412d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 33
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %2947 to i64*
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 7
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %EDX.i579 = bitcast %union.anon* %2950 to i32*
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 15
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %2953 to i64*
  %2954 = load i64, i64* %RBP.i580
  %2955 = sub i64 %2954, 1144
  %2956 = load i32, i32* %EDX.i579
  %2957 = zext i32 %2956 to i64
  %2958 = load i64, i64* %PC.i578
  %2959 = add i64 %2958, 6
  store i64 %2959, i64* %PC.i578
  %2960 = inttoptr i64 %2955 to i32*
  store i32 %2956, i32* %2960
  store %struct.Memory* %loadMem_412d98, %struct.Memory** %MEMORY
  %loadMem_412d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 33
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %2963 to i64*
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 7
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %RDX.i577 = bitcast %union.anon* %2966 to i64*
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 19
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %R9.i = bitcast %union.anon* %2969 to i64*
  %2970 = load i64, i64* %R9.i
  %2971 = load i64, i64* %PC.i576
  %2972 = add i64 %2971, 3
  store i64 %2972, i64* %PC.i576
  store i64 %2970, i64* %RDX.i577, align 8
  store %struct.Memory* %loadMem_412d9e, %struct.Memory** %MEMORY
  %loadMem_412da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 33
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %2975 to i64*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 5
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %RCX.i574 = bitcast %union.anon* %2978 to i64*
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 15
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %2981 to i64*
  %2982 = load i64, i64* %RBP.i575
  %2983 = sub i64 %2982, 1140
  %2984 = load i64, i64* %PC.i573
  %2985 = add i64 %2984, 6
  store i64 %2985, i64* %PC.i573
  %2986 = inttoptr i64 %2983 to i32*
  %2987 = load i32, i32* %2986
  %2988 = zext i32 %2987 to i64
  store i64 %2988, i64* %RCX.i574, align 8
  store %struct.Memory* %loadMem_412da1, %struct.Memory** %MEMORY
  %loadMem_412da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 33
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 17
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %2994 to i32*
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 15
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %2997 to i64*
  %2998 = bitcast i32* %R8D.i to i64*
  %2999 = load i64, i64* %RBP.i572
  %3000 = sub i64 %2999, 1144
  %3001 = load i64, i64* %PC.i571
  %3002 = add i64 %3001, 7
  store i64 %3002, i64* %PC.i571
  %3003 = inttoptr i64 %3000 to i32*
  %3004 = load i32, i32* %3003
  %3005 = zext i32 %3004 to i64
  store i64 %3005, i64* %2998, align 8
  store %struct.Memory* %loadMem_412da7, %struct.Memory** %MEMORY
  %loadMem1_412dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 33
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %3008 to i64*
  %3009 = load i64, i64* %PC.i570
  %3010 = add i64 %3009, 258786
  %3011 = load i64, i64* %PC.i570
  %3012 = add i64 %3011, 5
  %3013 = load i64, i64* %PC.i570
  %3014 = add i64 %3013, 5
  store i64 %3014, i64* %PC.i570
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3016 = load i64, i64* %3015, align 8
  %3017 = add i64 %3016, -8
  %3018 = inttoptr i64 %3017 to i64*
  store i64 %3012, i64* %3018
  store i64 %3017, i64* %3015, align 8
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3010, i64* %3019, align 8
  store %struct.Memory* %loadMem1_412dae, %struct.Memory** %MEMORY
  %loadMem2_412dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412dae = load i64, i64* %3
  %call2_412dae = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_412dae, %struct.Memory* %loadMem2_412dae)
  store %struct.Memory* %call2_412dae, %struct.Memory** %MEMORY
  br label %block_.L_412db3

block_.L_412db3:                                  ; preds = %routine_idivl__ecx.exit, %block_412d3d
  %loadMem_412db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 33
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %3022 to i64*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 1
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %RAX.i569 = bitcast %union.anon* %3025 to i64*
  %3026 = load i64, i64* %PC.i568
  %3027 = add i64 %3026, 10
  store i64 %3027, i64* %PC.i568
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i569, align 8
  store %struct.Memory* %loadMem_412db3, %struct.Memory** %MEMORY
  %loadMem_412dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 33
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %3030 to i64*
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 5
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %3033 to i64*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 15
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %RBP.i567 = bitcast %union.anon* %3036 to i64*
  %3037 = load i64, i64* %RBP.i567
  %3038 = sub i64 %3037, 8
  %3039 = load i64, i64* %PC.i565
  %3040 = add i64 %3039, 4
  store i64 %3040, i64* %PC.i565
  %3041 = inttoptr i64 %3038 to i32*
  %3042 = load i32, i32* %3041
  %3043 = sext i32 %3042 to i64
  store i64 %3043, i64* %RCX.i566, align 8
  store %struct.Memory* %loadMem_412dbd, %struct.Memory** %MEMORY
  %loadMem_412dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 33
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %3046 to i64*
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 5
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %RCX.i563 = bitcast %union.anon* %3049 to i64*
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 7
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %RDX.i564 = bitcast %union.anon* %3052 to i64*
  %3053 = load i64, i64* %RCX.i563
  %3054 = mul i64 %3053, 4
  %3055 = add i64 %3054, 11187184
  %3056 = load i64, i64* %PC.i562
  %3057 = add i64 %3056, 7
  store i64 %3057, i64* %PC.i562
  %3058 = inttoptr i64 %3055 to i32*
  %3059 = load i32, i32* %3058
  %3060 = zext i32 %3059 to i64
  store i64 %3060, i64* %RDX.i564, align 8
  store %struct.Memory* %loadMem_412dc1, %struct.Memory** %MEMORY
  %loadMem_412dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 33
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %3063 to i64*
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 7
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %EDX.i560 = bitcast %union.anon* %3066 to i32*
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 15
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %3069 to i64*
  %3070 = load i64, i64* %RBP.i561
  %3071 = sub i64 %3070, 1020
  %3072 = load i32, i32* %EDX.i560
  %3073 = zext i32 %3072 to i64
  %3074 = load i64, i64* %PC.i559
  %3075 = add i64 %3074, 6
  store i64 %3075, i64* %PC.i559
  %3076 = inttoptr i64 %3071 to i32*
  store i32 %3072, i32* %3076
  store %struct.Memory* %loadMem_412dc8, %struct.Memory** %MEMORY
  %loadMem_412dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 33
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 5
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %RCX.i557 = bitcast %union.anon* %3082 to i64*
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 15
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %3085 to i64*
  %3086 = load i64, i64* %RBP.i558
  %3087 = sub i64 %3086, 1020
  %3088 = load i64, i64* %PC.i556
  %3089 = add i64 %3088, 7
  store i64 %3089, i64* %PC.i556
  %3090 = inttoptr i64 %3087 to i32*
  %3091 = load i32, i32* %3090
  %3092 = sext i32 %3091 to i64
  store i64 %3092, i64* %RCX.i557, align 8
  store %struct.Memory* %loadMem_412dce, %struct.Memory** %MEMORY
  %loadMem_412dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 33
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 5
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RCX.i555 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %RCX.i555
  %3100 = load i64, i64* %PC.i554
  %3101 = add i64 %3100, 7
  store i64 %3101, i64* %PC.i554
  %3102 = sext i64 %3099 to i128
  %3103 = and i128 %3102, -18446744073709551616
  %3104 = zext i64 %3099 to i128
  %3105 = or i128 %3103, %3104
  %3106 = mul i128 744, %3105
  %3107 = trunc i128 %3106 to i64
  store i64 %3107, i64* %RCX.i555, align 8
  %3108 = sext i64 %3107 to i128
  %3109 = icmp ne i128 %3108, %3106
  %3110 = zext i1 %3109 to i8
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3110, i8* %3111, align 1
  %3112 = trunc i128 %3106 to i32
  %3113 = and i32 %3112, 255
  %3114 = call i32 @llvm.ctpop.i32(i32 %3113)
  %3115 = trunc i32 %3114 to i8
  %3116 = and i8 %3115, 1
  %3117 = xor i8 %3116, 1
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3117, i8* %3118, align 1
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3119, align 1
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3120, align 1
  %3121 = lshr i64 %3107, 63
  %3122 = trunc i64 %3121 to i8
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3122, i8* %3123, align 1
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3110, i8* %3124, align 1
  store %struct.Memory* %loadMem_412dd5, %struct.Memory** %MEMORY
  %loadMem_412ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 33
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %3127 to i64*
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 1
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %RAX.i552 = bitcast %union.anon* %3130 to i64*
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 9
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %RSI.i553 = bitcast %union.anon* %3133 to i64*
  %3134 = load i64, i64* %RAX.i552
  %3135 = load i64, i64* %PC.i551
  %3136 = add i64 %3135, 3
  store i64 %3136, i64* %PC.i551
  store i64 %3134, i64* %RSI.i553, align 8
  store %struct.Memory* %loadMem_412ddc, %struct.Memory** %MEMORY
  %loadMem_412ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %3139 to i64*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 5
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %RCX.i549 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 9
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %RSI.i550 = bitcast %union.anon* %3145 to i64*
  %3146 = load i64, i64* %RSI.i550
  %3147 = load i64, i64* %RCX.i549
  %3148 = load i64, i64* %PC.i548
  %3149 = add i64 %3148, 3
  store i64 %3149, i64* %PC.i548
  %3150 = add i64 %3147, %3146
  store i64 %3150, i64* %RSI.i550, align 8
  %3151 = icmp ult i64 %3150, %3146
  %3152 = icmp ult i64 %3150, %3147
  %3153 = or i1 %3151, %3152
  %3154 = zext i1 %3153 to i8
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3154, i8* %3155, align 1
  %3156 = trunc i64 %3150 to i32
  %3157 = and i32 %3156, 255
  %3158 = call i32 @llvm.ctpop.i32(i32 %3157)
  %3159 = trunc i32 %3158 to i8
  %3160 = and i8 %3159, 1
  %3161 = xor i8 %3160, 1
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3161, i8* %3162, align 1
  %3163 = xor i64 %3147, %3146
  %3164 = xor i64 %3163, %3150
  %3165 = lshr i64 %3164, 4
  %3166 = trunc i64 %3165 to i8
  %3167 = and i8 %3166, 1
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3167, i8* %3168, align 1
  %3169 = icmp eq i64 %3150, 0
  %3170 = zext i1 %3169 to i8
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3170, i8* %3171, align 1
  %3172 = lshr i64 %3150, 63
  %3173 = trunc i64 %3172 to i8
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3173, i8* %3174, align 1
  %3175 = lshr i64 %3146, 63
  %3176 = lshr i64 %3147, 63
  %3177 = xor i64 %3172, %3175
  %3178 = xor i64 %3172, %3176
  %3179 = add i64 %3177, %3178
  %3180 = icmp eq i64 %3179, 2
  %3181 = zext i1 %3180 to i8
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3181, i8* %3182, align 1
  store %struct.Memory* %loadMem_412ddf, %struct.Memory** %MEMORY
  %loadMem_412de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 33
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 7
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %RDX.i546 = bitcast %union.anon* %3188 to i64*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 9
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %RSI.i547 = bitcast %union.anon* %3191 to i64*
  %3192 = load i64, i64* %RSI.i547
  %3193 = add i64 %3192, 12
  %3194 = load i64, i64* %PC.i545
  %3195 = add i64 %3194, 3
  store i64 %3195, i64* %PC.i545
  %3196 = inttoptr i64 %3193 to i32*
  %3197 = load i32, i32* %3196
  %3198 = zext i32 %3197 to i64
  store i64 %3198, i64* %RDX.i546, align 8
  store %struct.Memory* %loadMem_412de2, %struct.Memory** %MEMORY
  %loadMem_412de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 33
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %3201 to i64*
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 7
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %EDX.i543 = bitcast %union.anon* %3204 to i32*
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 15
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %3207 to i64*
  %3208 = load i64, i64* %RBP.i544
  %3209 = sub i64 %3208, 1004
  %3210 = load i32, i32* %EDX.i543
  %3211 = zext i32 %3210 to i64
  %3212 = load i64, i64* %PC.i542
  %3213 = add i64 %3212, 6
  store i64 %3213, i64* %PC.i542
  %3214 = inttoptr i64 %3209 to i32*
  store i32 %3210, i32* %3214
  store %struct.Memory* %loadMem_412de5, %struct.Memory** %MEMORY
  %loadMem_412deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 33
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %3217 to i64*
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3219 = getelementptr inbounds %struct.GPR, %struct.GPR* %3218, i32 0, i32 7
  %3220 = getelementptr inbounds %struct.Reg, %struct.Reg* %3219, i32 0, i32 0
  %RDX.i540 = bitcast %union.anon* %3220 to i64*
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 15
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %3223 to i64*
  %3224 = load i64, i64* %RBP.i541
  %3225 = sub i64 %3224, 1004
  %3226 = load i64, i64* %PC.i539
  %3227 = add i64 %3226, 6
  store i64 %3227, i64* %PC.i539
  %3228 = inttoptr i64 %3225 to i32*
  %3229 = load i32, i32* %3228
  %3230 = zext i32 %3229 to i64
  store i64 %3230, i64* %RDX.i540, align 8
  store %struct.Memory* %loadMem_412deb, %struct.Memory** %MEMORY
  %loadMem_412df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 33
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %3233 to i64*
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 5
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %RCX.i537 = bitcast %union.anon* %3236 to i64*
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 15
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %3239 to i64*
  %3240 = load i64, i64* %RBP.i538
  %3241 = sub i64 %3240, 12
  %3242 = load i64, i64* %PC.i536
  %3243 = add i64 %3242, 4
  store i64 %3243, i64* %PC.i536
  %3244 = inttoptr i64 %3241 to i32*
  %3245 = load i32, i32* %3244
  %3246 = sext i32 %3245 to i64
  store i64 %3246, i64* %RCX.i537, align 8
  store %struct.Memory* %loadMem_412df1, %struct.Memory** %MEMORY
  %loadMem_412df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 33
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3249 to i64*
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 5
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %3252 to i64*
  %3253 = load i64, i64* %RCX.i535
  %3254 = mul i64 %3253, 4
  %3255 = add i64 %3254, 11187184
  %3256 = load i64, i64* %PC.i534
  %3257 = add i64 %3256, 8
  store i64 %3257, i64* %PC.i534
  %3258 = inttoptr i64 %3255 to i32*
  %3259 = load i32, i32* %3258
  %3260 = sext i32 %3259 to i64
  store i64 %3260, i64* %RCX.i535, align 8
  store %struct.Memory* %loadMem_412df5, %struct.Memory** %MEMORY
  %loadMem_412dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3262 = getelementptr inbounds %struct.GPR, %struct.GPR* %3261, i32 0, i32 33
  %3263 = getelementptr inbounds %struct.Reg, %struct.Reg* %3262, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %3263 to i64*
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 5
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %RCX.i533 = bitcast %union.anon* %3266 to i64*
  %3267 = load i64, i64* %RCX.i533
  %3268 = load i64, i64* %PC.i532
  %3269 = add i64 %3268, 7
  store i64 %3269, i64* %PC.i532
  %3270 = sext i64 %3267 to i128
  %3271 = and i128 %3270, -18446744073709551616
  %3272 = zext i64 %3267 to i128
  %3273 = or i128 %3271, %3272
  %3274 = mul i128 744, %3273
  %3275 = trunc i128 %3274 to i64
  store i64 %3275, i64* %RCX.i533, align 8
  %3276 = sext i64 %3275 to i128
  %3277 = icmp ne i128 %3276, %3274
  %3278 = zext i1 %3277 to i8
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3278, i8* %3279, align 1
  %3280 = trunc i128 %3274 to i32
  %3281 = and i32 %3280, 255
  %3282 = call i32 @llvm.ctpop.i32(i32 %3281)
  %3283 = trunc i32 %3282 to i8
  %3284 = and i8 %3283, 1
  %3285 = xor i8 %3284, 1
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3285, i8* %3286, align 1
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3287, align 1
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3288, align 1
  %3289 = lshr i64 %3275, 63
  %3290 = trunc i64 %3289 to i8
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3290, i8* %3291, align 1
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3278, i8* %3292, align 1
  store %struct.Memory* %loadMem_412dfd, %struct.Memory** %MEMORY
  %loadMem_412e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3294 = getelementptr inbounds %struct.GPR, %struct.GPR* %3293, i32 0, i32 33
  %3295 = getelementptr inbounds %struct.Reg, %struct.Reg* %3294, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %3295 to i64*
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 1
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %RAX.i530 = bitcast %union.anon* %3298 to i64*
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 5
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %RCX.i531 = bitcast %union.anon* %3301 to i64*
  %3302 = load i64, i64* %RAX.i530
  %3303 = load i64, i64* %RCX.i531
  %3304 = load i64, i64* %PC.i529
  %3305 = add i64 %3304, 3
  store i64 %3305, i64* %PC.i529
  %3306 = add i64 %3303, %3302
  store i64 %3306, i64* %RAX.i530, align 8
  %3307 = icmp ult i64 %3306, %3302
  %3308 = icmp ult i64 %3306, %3303
  %3309 = or i1 %3307, %3308
  %3310 = zext i1 %3309 to i8
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3310, i8* %3311, align 1
  %3312 = trunc i64 %3306 to i32
  %3313 = and i32 %3312, 255
  %3314 = call i32 @llvm.ctpop.i32(i32 %3313)
  %3315 = trunc i32 %3314 to i8
  %3316 = and i8 %3315, 1
  %3317 = xor i8 %3316, 1
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3317, i8* %3318, align 1
  %3319 = xor i64 %3303, %3302
  %3320 = xor i64 %3319, %3306
  %3321 = lshr i64 %3320, 4
  %3322 = trunc i64 %3321 to i8
  %3323 = and i8 %3322, 1
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3323, i8* %3324, align 1
  %3325 = icmp eq i64 %3306, 0
  %3326 = zext i1 %3325 to i8
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3326, i8* %3327, align 1
  %3328 = lshr i64 %3306, 63
  %3329 = trunc i64 %3328 to i8
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3329, i8* %3330, align 1
  %3331 = lshr i64 %3302, 63
  %3332 = lshr i64 %3303, 63
  %3333 = xor i64 %3328, %3331
  %3334 = xor i64 %3328, %3332
  %3335 = add i64 %3333, %3334
  %3336 = icmp eq i64 %3335, 2
  %3337 = zext i1 %3336 to i8
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3337, i8* %3338, align 1
  store %struct.Memory* %loadMem_412e04, %struct.Memory** %MEMORY
  %loadMem_412e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 33
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %3341 to i64*
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 7
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %EDX.i527 = bitcast %union.anon* %3344 to i32*
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3346 = getelementptr inbounds %struct.GPR, %struct.GPR* %3345, i32 0, i32 1
  %3347 = getelementptr inbounds %struct.Reg, %struct.Reg* %3346, i32 0, i32 0
  %RAX.i528 = bitcast %union.anon* %3347 to i64*
  %3348 = load i32, i32* %EDX.i527
  %3349 = zext i32 %3348 to i64
  %3350 = load i64, i64* %RAX.i528
  %3351 = add i64 %3350, 12
  %3352 = load i64, i64* %PC.i526
  %3353 = add i64 %3352, 3
  store i64 %3353, i64* %PC.i526
  %3354 = inttoptr i64 %3351 to i32*
  %3355 = load i32, i32* %3354
  %3356 = sub i32 %3348, %3355
  %3357 = icmp ult i32 %3348, %3355
  %3358 = zext i1 %3357 to i8
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3358, i8* %3359, align 1
  %3360 = and i32 %3356, 255
  %3361 = call i32 @llvm.ctpop.i32(i32 %3360)
  %3362 = trunc i32 %3361 to i8
  %3363 = and i8 %3362, 1
  %3364 = xor i8 %3363, 1
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3364, i8* %3365, align 1
  %3366 = xor i32 %3355, %3348
  %3367 = xor i32 %3366, %3356
  %3368 = lshr i32 %3367, 4
  %3369 = trunc i32 %3368 to i8
  %3370 = and i8 %3369, 1
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3370, i8* %3371, align 1
  %3372 = icmp eq i32 %3356, 0
  %3373 = zext i1 %3372 to i8
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3373, i8* %3374, align 1
  %3375 = lshr i32 %3356, 31
  %3376 = trunc i32 %3375 to i8
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3376, i8* %3377, align 1
  %3378 = lshr i32 %3348, 31
  %3379 = lshr i32 %3355, 31
  %3380 = xor i32 %3379, %3378
  %3381 = xor i32 %3375, %3378
  %3382 = add i32 %3381, %3380
  %3383 = icmp eq i32 %3382, 2
  %3384 = zext i1 %3383 to i8
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3384, i8* %3385, align 1
  store %struct.Memory* %loadMem_412e07, %struct.Memory** %MEMORY
  %loadMem_412e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 33
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %3388 to i64*
  %3389 = load i64, i64* %PC.i525
  %3390 = add i64 %3389, 83
  %3391 = load i64, i64* %PC.i525
  %3392 = add i64 %3391, 6
  %3393 = load i64, i64* %PC.i525
  %3394 = add i64 %3393, 6
  store i64 %3394, i64* %PC.i525
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3396 = load i8, i8* %3395, align 1
  %3397 = icmp ne i8 %3396, 0
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3399 = load i8, i8* %3398, align 1
  %3400 = icmp ne i8 %3399, 0
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3402 = load i8, i8* %3401, align 1
  %3403 = icmp ne i8 %3402, 0
  %3404 = xor i1 %3400, %3403
  %3405 = or i1 %3397, %3404
  %3406 = zext i1 %3405 to i8
  store i8 %3406, i8* %BRANCH_TAKEN, align 1
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3408 = select i1 %3405, i64 %3390, i64 %3392
  store i64 %3408, i64* %3407, align 8
  store %struct.Memory* %loadMem_412e0a, %struct.Memory** %MEMORY
  %loadBr_412e0a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412e0a = icmp eq i8 %loadBr_412e0a, 1
  br i1 %cmpBr_412e0a, label %block_.L_412e5d, label %block_412e10

block_412e10:                                     ; preds = %block_.L_412db3
  %loadMem_412e10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 33
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %3411 to i64*
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3413 = getelementptr inbounds %struct.GPR, %struct.GPR* %3412, i32 0, i32 1
  %3414 = getelementptr inbounds %struct.Reg, %struct.Reg* %3413, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %3414 to i64*
  %3415 = load i64, i64* %PC.i523
  %3416 = add i64 %3415, 10
  store i64 %3416, i64* %PC.i523
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i524, align 8
  store %struct.Memory* %loadMem_412e10, %struct.Memory** %MEMORY
  %loadMem_412e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 33
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %3419 to i64*
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3421 = getelementptr inbounds %struct.GPR, %struct.GPR* %3420, i32 0, i32 5
  %3422 = getelementptr inbounds %struct.Reg, %struct.Reg* %3421, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %3422 to i64*
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 15
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %3425 to i64*
  %3426 = load i64, i64* %RBP.i522
  %3427 = sub i64 %3426, 12
  %3428 = load i64, i64* %PC.i520
  %3429 = add i64 %3428, 4
  store i64 %3429, i64* %PC.i520
  %3430 = inttoptr i64 %3427 to i32*
  %3431 = load i32, i32* %3430
  %3432 = sext i32 %3431 to i64
  store i64 %3432, i64* %RCX.i521, align 8
  store %struct.Memory* %loadMem_412e1a, %struct.Memory** %MEMORY
  %loadMem_412e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3434 = getelementptr inbounds %struct.GPR, %struct.GPR* %3433, i32 0, i32 33
  %3435 = getelementptr inbounds %struct.Reg, %struct.Reg* %3434, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %3435 to i64*
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3437 = getelementptr inbounds %struct.GPR, %struct.GPR* %3436, i32 0, i32 5
  %3438 = getelementptr inbounds %struct.Reg, %struct.Reg* %3437, i32 0, i32 0
  %RCX.i518 = bitcast %union.anon* %3438 to i64*
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3440 = getelementptr inbounds %struct.GPR, %struct.GPR* %3439, i32 0, i32 7
  %3441 = getelementptr inbounds %struct.Reg, %struct.Reg* %3440, i32 0, i32 0
  %RDX.i519 = bitcast %union.anon* %3441 to i64*
  %3442 = load i64, i64* %RCX.i518
  %3443 = mul i64 %3442, 4
  %3444 = add i64 %3443, 11187184
  %3445 = load i64, i64* %PC.i517
  %3446 = add i64 %3445, 7
  store i64 %3446, i64* %PC.i517
  %3447 = inttoptr i64 %3444 to i32*
  %3448 = load i32, i32* %3447
  %3449 = zext i32 %3448 to i64
  store i64 %3449, i64* %RDX.i519, align 8
  store %struct.Memory* %loadMem_412e1e, %struct.Memory** %MEMORY
  %loadMem_412e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 33
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %3452 to i64*
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 7
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %EDX.i515 = bitcast %union.anon* %3455 to i32*
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 15
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %3458 to i64*
  %3459 = load i64, i64* %RBP.i516
  %3460 = sub i64 %3459, 1020
  %3461 = load i32, i32* %EDX.i515
  %3462 = zext i32 %3461 to i64
  %3463 = load i64, i64* %PC.i514
  %3464 = add i64 %3463, 6
  store i64 %3464, i64* %PC.i514
  %3465 = inttoptr i64 %3460 to i32*
  store i32 %3461, i32* %3465
  store %struct.Memory* %loadMem_412e25, %struct.Memory** %MEMORY
  %loadMem_412e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 33
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %3468 to i64*
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 5
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %RCX.i512 = bitcast %union.anon* %3471 to i64*
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 15
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %3474 to i64*
  %3475 = load i64, i64* %RBP.i513
  %3476 = sub i64 %3475, 1020
  %3477 = load i64, i64* %PC.i511
  %3478 = add i64 %3477, 7
  store i64 %3478, i64* %PC.i511
  %3479 = inttoptr i64 %3476 to i32*
  %3480 = load i32, i32* %3479
  %3481 = sext i32 %3480 to i64
  store i64 %3481, i64* %RCX.i512, align 8
  store %struct.Memory* %loadMem_412e2b, %struct.Memory** %MEMORY
  %loadMem_412e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 33
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %3484 to i64*
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 5
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %RCX.i510 = bitcast %union.anon* %3487 to i64*
  %3488 = load i64, i64* %RCX.i510
  %3489 = load i64, i64* %PC.i509
  %3490 = add i64 %3489, 7
  store i64 %3490, i64* %PC.i509
  %3491 = sext i64 %3488 to i128
  %3492 = and i128 %3491, -18446744073709551616
  %3493 = zext i64 %3488 to i128
  %3494 = or i128 %3492, %3493
  %3495 = mul i128 744, %3494
  %3496 = trunc i128 %3495 to i64
  store i64 %3496, i64* %RCX.i510, align 8
  %3497 = sext i64 %3496 to i128
  %3498 = icmp ne i128 %3497, %3495
  %3499 = zext i1 %3498 to i8
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3499, i8* %3500, align 1
  %3501 = trunc i128 %3495 to i32
  %3502 = and i32 %3501, 255
  %3503 = call i32 @llvm.ctpop.i32(i32 %3502)
  %3504 = trunc i32 %3503 to i8
  %3505 = and i8 %3504, 1
  %3506 = xor i8 %3505, 1
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3506, i8* %3507, align 1
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3508, align 1
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3509, align 1
  %3510 = lshr i64 %3496, 63
  %3511 = trunc i64 %3510 to i8
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3511, i8* %3512, align 1
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3499, i8* %3513, align 1
  store %struct.Memory* %loadMem_412e32, %struct.Memory** %MEMORY
  %loadMem_412e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 33
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %3516 to i64*
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 1
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %RAX.i507 = bitcast %union.anon* %3519 to i64*
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 5
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %RCX.i508 = bitcast %union.anon* %3522 to i64*
  %3523 = load i64, i64* %RAX.i507
  %3524 = load i64, i64* %RCX.i508
  %3525 = load i64, i64* %PC.i506
  %3526 = add i64 %3525, 3
  store i64 %3526, i64* %PC.i506
  %3527 = add i64 %3524, %3523
  store i64 %3527, i64* %RAX.i507, align 8
  %3528 = icmp ult i64 %3527, %3523
  %3529 = icmp ult i64 %3527, %3524
  %3530 = or i1 %3528, %3529
  %3531 = zext i1 %3530 to i8
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3531, i8* %3532, align 1
  %3533 = trunc i64 %3527 to i32
  %3534 = and i32 %3533, 255
  %3535 = call i32 @llvm.ctpop.i32(i32 %3534)
  %3536 = trunc i32 %3535 to i8
  %3537 = and i8 %3536, 1
  %3538 = xor i8 %3537, 1
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3538, i8* %3539, align 1
  %3540 = xor i64 %3524, %3523
  %3541 = xor i64 %3540, %3527
  %3542 = lshr i64 %3541, 4
  %3543 = trunc i64 %3542 to i8
  %3544 = and i8 %3543, 1
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3544, i8* %3545, align 1
  %3546 = icmp eq i64 %3527, 0
  %3547 = zext i1 %3546 to i8
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3547, i8* %3548, align 1
  %3549 = lshr i64 %3527, 63
  %3550 = trunc i64 %3549 to i8
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3550, i8* %3551, align 1
  %3552 = lshr i64 %3523, 63
  %3553 = lshr i64 %3524, 63
  %3554 = xor i64 %3549, %3552
  %3555 = xor i64 %3549, %3553
  %3556 = add i64 %3554, %3555
  %3557 = icmp eq i64 %3556, 2
  %3558 = zext i1 %3557 to i8
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3558, i8* %3559, align 1
  store %struct.Memory* %loadMem_412e39, %struct.Memory** %MEMORY
  %loadMem_412e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3561 = getelementptr inbounds %struct.GPR, %struct.GPR* %3560, i32 0, i32 33
  %3562 = getelementptr inbounds %struct.Reg, %struct.Reg* %3561, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %3562 to i64*
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3564 = getelementptr inbounds %struct.GPR, %struct.GPR* %3563, i32 0, i32 1
  %3565 = getelementptr inbounds %struct.Reg, %struct.Reg* %3564, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %3565 to i64*
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 7
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %RDX.i505 = bitcast %union.anon* %3568 to i64*
  %3569 = load i64, i64* %RAX.i504
  %3570 = add i64 %3569, 12
  %3571 = load i64, i64* %PC.i503
  %3572 = add i64 %3571, 3
  store i64 %3572, i64* %PC.i503
  %3573 = inttoptr i64 %3570 to i32*
  %3574 = load i32, i32* %3573
  %3575 = zext i32 %3574 to i64
  store i64 %3575, i64* %RDX.i505, align 8
  store %struct.Memory* %loadMem_412e3c, %struct.Memory** %MEMORY
  %loadMem_412e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 33
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %3578 to i64*
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 7
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %EDX.i501 = bitcast %union.anon* %3581 to i32*
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 15
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %3584 to i64*
  %3585 = load i64, i64* %RBP.i502
  %3586 = sub i64 %3585, 1004
  %3587 = load i32, i32* %EDX.i501
  %3588 = zext i32 %3587 to i64
  %3589 = load i64, i64* %PC.i500
  %3590 = add i64 %3589, 6
  store i64 %3590, i64* %PC.i500
  %3591 = inttoptr i64 %3586 to i32*
  store i32 %3587, i32* %3591
  store %struct.Memory* %loadMem_412e3f, %struct.Memory** %MEMORY
  %loadMem_412e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 33
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %3594 to i64*
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 7
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %RDX.i498 = bitcast %union.anon* %3597 to i64*
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 15
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %3600 to i64*
  %3601 = load i64, i64* %RBP.i499
  %3602 = sub i64 %3601, 8
  %3603 = load i64, i64* %PC.i497
  %3604 = add i64 %3603, 3
  store i64 %3604, i64* %PC.i497
  %3605 = inttoptr i64 %3602 to i32*
  %3606 = load i32, i32* %3605
  %3607 = zext i32 %3606 to i64
  store i64 %3607, i64* %RDX.i498, align 8
  store %struct.Memory* %loadMem_412e45, %struct.Memory** %MEMORY
  %loadMem_412e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3609 = getelementptr inbounds %struct.GPR, %struct.GPR* %3608, i32 0, i32 33
  %3610 = getelementptr inbounds %struct.Reg, %struct.Reg* %3609, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %3610 to i64*
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 7
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %EDX.i495 = bitcast %union.anon* %3613 to i32*
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 15
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %3616 to i64*
  %3617 = load i64, i64* %RBP.i496
  %3618 = sub i64 %3617, 1024
  %3619 = load i32, i32* %EDX.i495
  %3620 = zext i32 %3619 to i64
  %3621 = load i64, i64* %PC.i494
  %3622 = add i64 %3621, 6
  store i64 %3622, i64* %PC.i494
  %3623 = inttoptr i64 %3618 to i32*
  store i32 %3619, i32* %3623
  store %struct.Memory* %loadMem_412e48, %struct.Memory** %MEMORY
  %loadMem_412e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3625 = getelementptr inbounds %struct.GPR, %struct.GPR* %3624, i32 0, i32 33
  %3626 = getelementptr inbounds %struct.Reg, %struct.Reg* %3625, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %3626 to i64*
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 7
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %RDX.i492 = bitcast %union.anon* %3629 to i64*
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 15
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %3632 to i64*
  %3633 = load i64, i64* %RBP.i493
  %3634 = sub i64 %3633, 12
  %3635 = load i64, i64* %PC.i491
  %3636 = add i64 %3635, 3
  store i64 %3636, i64* %PC.i491
  %3637 = inttoptr i64 %3634 to i32*
  %3638 = load i32, i32* %3637
  %3639 = zext i32 %3638 to i64
  store i64 %3639, i64* %RDX.i492, align 8
  store %struct.Memory* %loadMem_412e4e, %struct.Memory** %MEMORY
  %loadMem_412e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3641 = getelementptr inbounds %struct.GPR, %struct.GPR* %3640, i32 0, i32 33
  %3642 = getelementptr inbounds %struct.Reg, %struct.Reg* %3641, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %3642 to i64*
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3644 = getelementptr inbounds %struct.GPR, %struct.GPR* %3643, i32 0, i32 7
  %3645 = getelementptr inbounds %struct.Reg, %struct.Reg* %3644, i32 0, i32 0
  %EDX.i489 = bitcast %union.anon* %3645 to i32*
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 15
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %3648 to i64*
  %3649 = load i64, i64* %RBP.i490
  %3650 = sub i64 %3649, 8
  %3651 = load i32, i32* %EDX.i489
  %3652 = zext i32 %3651 to i64
  %3653 = load i64, i64* %PC.i488
  %3654 = add i64 %3653, 3
  store i64 %3654, i64* %PC.i488
  %3655 = inttoptr i64 %3650 to i32*
  store i32 %3651, i32* %3655
  store %struct.Memory* %loadMem_412e51, %struct.Memory** %MEMORY
  %loadMem_412e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3657 = getelementptr inbounds %struct.GPR, %struct.GPR* %3656, i32 0, i32 33
  %3658 = getelementptr inbounds %struct.Reg, %struct.Reg* %3657, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %3658 to i64*
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 7
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %RDX.i486 = bitcast %union.anon* %3661 to i64*
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 15
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %3664 to i64*
  %3665 = load i64, i64* %RBP.i487
  %3666 = sub i64 %3665, 1024
  %3667 = load i64, i64* %PC.i485
  %3668 = add i64 %3667, 6
  store i64 %3668, i64* %PC.i485
  %3669 = inttoptr i64 %3666 to i32*
  %3670 = load i32, i32* %3669
  %3671 = zext i32 %3670 to i64
  store i64 %3671, i64* %RDX.i486, align 8
  store %struct.Memory* %loadMem_412e54, %struct.Memory** %MEMORY
  %loadMem_412e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3673 = getelementptr inbounds %struct.GPR, %struct.GPR* %3672, i32 0, i32 33
  %3674 = getelementptr inbounds %struct.Reg, %struct.Reg* %3673, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %3674 to i64*
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 7
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %EDX.i483 = bitcast %union.anon* %3677 to i32*
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 15
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %3680 to i64*
  %3681 = load i64, i64* %RBP.i484
  %3682 = sub i64 %3681, 12
  %3683 = load i32, i32* %EDX.i483
  %3684 = zext i32 %3683 to i64
  %3685 = load i64, i64* %PC.i482
  %3686 = add i64 %3685, 3
  store i64 %3686, i64* %PC.i482
  %3687 = inttoptr i64 %3682 to i32*
  store i32 %3683, i32* %3687
  store %struct.Memory* %loadMem_412e5a, %struct.Memory** %MEMORY
  br label %block_.L_412e5d

block_.L_412e5d:                                  ; preds = %block_412e10, %block_.L_412db3
  %loadMem_412e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 33
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %3690 to i64*
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 15
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %3693 to i64*
  %3694 = load i64, i64* %RBP.i481
  %3695 = sub i64 %3694, 1004
  %3696 = load i64, i64* %PC.i480
  %3697 = add i64 %3696, 7
  store i64 %3697, i64* %PC.i480
  %3698 = inttoptr i64 %3695 to i32*
  %3699 = load i32, i32* %3698
  %3700 = sub i32 %3699, 20
  %3701 = icmp ult i32 %3699, 20
  %3702 = zext i1 %3701 to i8
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3702, i8* %3703, align 1
  %3704 = and i32 %3700, 255
  %3705 = call i32 @llvm.ctpop.i32(i32 %3704)
  %3706 = trunc i32 %3705 to i8
  %3707 = and i8 %3706, 1
  %3708 = xor i8 %3707, 1
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3708, i8* %3709, align 1
  %3710 = xor i32 %3699, 20
  %3711 = xor i32 %3710, %3700
  %3712 = lshr i32 %3711, 4
  %3713 = trunc i32 %3712 to i8
  %3714 = and i8 %3713, 1
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3714, i8* %3715, align 1
  %3716 = icmp eq i32 %3700, 0
  %3717 = zext i1 %3716 to i8
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3717, i8* %3718, align 1
  %3719 = lshr i32 %3700, 31
  %3720 = trunc i32 %3719 to i8
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3720, i8* %3721, align 1
  %3722 = lshr i32 %3699, 31
  %3723 = xor i32 %3719, %3722
  %3724 = add i32 %3723, %3722
  %3725 = icmp eq i32 %3724, 2
  %3726 = zext i1 %3725 to i8
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3726, i8* %3727, align 1
  store %struct.Memory* %loadMem_412e5d, %struct.Memory** %MEMORY
  %loadMem_412e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 33
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %3730 to i64*
  %3731 = load i64, i64* %PC.i479
  %3732 = add i64 %3731, 444
  %3733 = load i64, i64* %PC.i479
  %3734 = add i64 %3733, 6
  %3735 = load i64, i64* %PC.i479
  %3736 = add i64 %3735, 6
  store i64 %3736, i64* %PC.i479
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3738 = load i8, i8* %3737, align 1
  %3739 = icmp eq i8 %3738, 0
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3741 = load i8, i8* %3740, align 1
  %3742 = icmp ne i8 %3741, 0
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3744 = load i8, i8* %3743, align 1
  %3745 = icmp ne i8 %3744, 0
  %3746 = xor i1 %3742, %3745
  %3747 = xor i1 %3746, true
  %3748 = and i1 %3739, %3747
  %3749 = zext i1 %3748 to i8
  store i8 %3749, i8* %BRANCH_TAKEN, align 1
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3751 = select i1 %3748, i64 %3732, i64 %3734
  store i64 %3751, i64* %3750, align 8
  store %struct.Memory* %loadMem_412e64, %struct.Memory** %MEMORY
  %loadBr_412e64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412e64 = icmp eq i8 %loadBr_412e64, 1
  br i1 %cmpBr_412e64, label %block_.L_413020, label %block_412e6a

block_412e6a:                                     ; preds = %block_.L_412e5d
  %loadMem_412e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 33
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %3754 to i64*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 1
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %RAX.i478 = bitcast %union.anon* %3757 to i64*
  %3758 = load i64, i64* %PC.i477
  %3759 = add i64 %3758, 10
  store i64 %3759, i64* %PC.i477
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i478, align 8
  store %struct.Memory* %loadMem_412e6a, %struct.Memory** %MEMORY
  %loadMem_412e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 33
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %3762 to i64*
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3764 = getelementptr inbounds %struct.GPR, %struct.GPR* %3763, i32 0, i32 5
  %3765 = getelementptr inbounds %struct.Reg, %struct.Reg* %3764, i32 0, i32 0
  %RCX.i475 = bitcast %union.anon* %3765 to i64*
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 15
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %3768 to i64*
  %3769 = load i64, i64* %RBP.i476
  %3770 = sub i64 %3769, 1020
  %3771 = load i64, i64* %PC.i474
  %3772 = add i64 %3771, 7
  store i64 %3772, i64* %PC.i474
  %3773 = inttoptr i64 %3770 to i32*
  %3774 = load i32, i32* %3773
  %3775 = sext i32 %3774 to i64
  store i64 %3775, i64* %RCX.i475, align 8
  store %struct.Memory* %loadMem_412e74, %struct.Memory** %MEMORY
  %loadMem_412e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 33
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %3778 to i64*
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 5
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %RCX.i473 = bitcast %union.anon* %3781 to i64*
  %3782 = load i64, i64* %RCX.i473
  %3783 = load i64, i64* %PC.i472
  %3784 = add i64 %3783, 7
  store i64 %3784, i64* %PC.i472
  %3785 = sext i64 %3782 to i128
  %3786 = and i128 %3785, -18446744073709551616
  %3787 = zext i64 %3782 to i128
  %3788 = or i128 %3786, %3787
  %3789 = mul i128 744, %3788
  %3790 = trunc i128 %3789 to i64
  store i64 %3790, i64* %RCX.i473, align 8
  %3791 = sext i64 %3790 to i128
  %3792 = icmp ne i128 %3791, %3789
  %3793 = zext i1 %3792 to i8
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3793, i8* %3794, align 1
  %3795 = trunc i128 %3789 to i32
  %3796 = and i32 %3795, 255
  %3797 = call i32 @llvm.ctpop.i32(i32 %3796)
  %3798 = trunc i32 %3797 to i8
  %3799 = and i8 %3798, 1
  %3800 = xor i8 %3799, 1
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3800, i8* %3801, align 1
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3802, align 1
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3803, align 1
  %3804 = lshr i64 %3790, 63
  %3805 = trunc i64 %3804 to i8
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3805, i8* %3806, align 1
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3793, i8* %3807, align 1
  store %struct.Memory* %loadMem_412e7b, %struct.Memory** %MEMORY
  %loadMem_412e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 33
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %3810 to i64*
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 1
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %RAX.i470 = bitcast %union.anon* %3813 to i64*
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 7
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %RDX.i471 = bitcast %union.anon* %3816 to i64*
  %3817 = load i64, i64* %RAX.i470
  %3818 = load i64, i64* %PC.i469
  %3819 = add i64 %3818, 3
  store i64 %3819, i64* %PC.i469
  store i64 %3817, i64* %RDX.i471, align 8
  store %struct.Memory* %loadMem_412e82, %struct.Memory** %MEMORY
  %loadMem_412e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 33
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %3822 to i64*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 5
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %RCX.i467 = bitcast %union.anon* %3825 to i64*
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 7
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %RDX.i468 = bitcast %union.anon* %3828 to i64*
  %3829 = load i64, i64* %RDX.i468
  %3830 = load i64, i64* %RCX.i467
  %3831 = load i64, i64* %PC.i466
  %3832 = add i64 %3831, 3
  store i64 %3832, i64* %PC.i466
  %3833 = add i64 %3830, %3829
  store i64 %3833, i64* %RDX.i468, align 8
  %3834 = icmp ult i64 %3833, %3829
  %3835 = icmp ult i64 %3833, %3830
  %3836 = or i1 %3834, %3835
  %3837 = zext i1 %3836 to i8
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3837, i8* %3838, align 1
  %3839 = trunc i64 %3833 to i32
  %3840 = and i32 %3839, 255
  %3841 = call i32 @llvm.ctpop.i32(i32 %3840)
  %3842 = trunc i32 %3841 to i8
  %3843 = and i8 %3842, 1
  %3844 = xor i8 %3843, 1
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3844, i8* %3845, align 1
  %3846 = xor i64 %3830, %3829
  %3847 = xor i64 %3846, %3833
  %3848 = lshr i64 %3847, 4
  %3849 = trunc i64 %3848 to i8
  %3850 = and i8 %3849, 1
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3850, i8* %3851, align 1
  %3852 = icmp eq i64 %3833, 0
  %3853 = zext i1 %3852 to i8
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3853, i8* %3854, align 1
  %3855 = lshr i64 %3833, 63
  %3856 = trunc i64 %3855 to i8
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3856, i8* %3857, align 1
  %3858 = lshr i64 %3829, 63
  %3859 = lshr i64 %3830, 63
  %3860 = xor i64 %3855, %3858
  %3861 = xor i64 %3855, %3859
  %3862 = add i64 %3860, %3861
  %3863 = icmp eq i64 %3862, 2
  %3864 = zext i1 %3863 to i8
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3864, i8* %3865, align 1
  store %struct.Memory* %loadMem_412e85, %struct.Memory** %MEMORY
  %loadMem_412e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 33
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %3868 to i64*
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3870 = getelementptr inbounds %struct.GPR, %struct.GPR* %3869, i32 0, i32 7
  %3871 = getelementptr inbounds %struct.Reg, %struct.Reg* %3870, i32 0, i32 0
  %RDX.i465 = bitcast %union.anon* %3871 to i64*
  %3872 = load i64, i64* %RDX.i465
  %3873 = load i64, i64* %PC.i464
  %3874 = add i64 %3873, 4
  store i64 %3874, i64* %PC.i464
  %3875 = add i64 16, %3872
  store i64 %3875, i64* %RDX.i465, align 8
  %3876 = icmp ult i64 %3875, %3872
  %3877 = icmp ult i64 %3875, 16
  %3878 = or i1 %3876, %3877
  %3879 = zext i1 %3878 to i8
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3879, i8* %3880, align 1
  %3881 = trunc i64 %3875 to i32
  %3882 = and i32 %3881, 255
  %3883 = call i32 @llvm.ctpop.i32(i32 %3882)
  %3884 = trunc i32 %3883 to i8
  %3885 = and i8 %3884, 1
  %3886 = xor i8 %3885, 1
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3886, i8* %3887, align 1
  %3888 = xor i64 16, %3872
  %3889 = xor i64 %3888, %3875
  %3890 = lshr i64 %3889, 4
  %3891 = trunc i64 %3890 to i8
  %3892 = and i8 %3891, 1
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3892, i8* %3893, align 1
  %3894 = icmp eq i64 %3875, 0
  %3895 = zext i1 %3894 to i8
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3895, i8* %3896, align 1
  %3897 = lshr i64 %3875, 63
  %3898 = trunc i64 %3897 to i8
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3898, i8* %3899, align 1
  %3900 = lshr i64 %3872, 63
  %3901 = xor i64 %3897, %3900
  %3902 = add i64 %3901, %3897
  %3903 = icmp eq i64 %3902, 2
  %3904 = zext i1 %3903 to i8
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3904, i8* %3905, align 1
  store %struct.Memory* %loadMem_412e88, %struct.Memory** %MEMORY
  %loadMem_412e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3907 = getelementptr inbounds %struct.GPR, %struct.GPR* %3906, i32 0, i32 33
  %3908 = getelementptr inbounds %struct.Reg, %struct.Reg* %3907, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %3908 to i64*
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3910 = getelementptr inbounds %struct.GPR, %struct.GPR* %3909, i32 0, i32 7
  %3911 = getelementptr inbounds %struct.Reg, %struct.Reg* %3910, i32 0, i32 0
  %RDX.i462 = bitcast %union.anon* %3911 to i64*
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 15
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %3914 to i64*
  %3915 = load i64, i64* %RBP.i463
  %3916 = sub i64 %3915, 1000
  %3917 = load i64, i64* %RDX.i462
  %3918 = load i64, i64* %PC.i461
  %3919 = add i64 %3918, 7
  store i64 %3919, i64* %PC.i461
  %3920 = inttoptr i64 %3916 to i64*
  store i64 %3917, i64* %3920
  store %struct.Memory* %loadMem_412e8c, %struct.Memory** %MEMORY
  %loadMem_412e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 33
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %3923 to i64*
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 5
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %RCX.i459 = bitcast %union.anon* %3926 to i64*
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3928 = getelementptr inbounds %struct.GPR, %struct.GPR* %3927, i32 0, i32 15
  %3929 = getelementptr inbounds %struct.Reg, %struct.Reg* %3928, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %3929 to i64*
  %3930 = load i64, i64* %RBP.i460
  %3931 = sub i64 %3930, 12
  %3932 = load i64, i64* %PC.i458
  %3933 = add i64 %3932, 4
  store i64 %3933, i64* %PC.i458
  %3934 = inttoptr i64 %3931 to i32*
  %3935 = load i32, i32* %3934
  %3936 = sext i32 %3935 to i64
  store i64 %3936, i64* %RCX.i459, align 8
  store %struct.Memory* %loadMem_412e93, %struct.Memory** %MEMORY
  %loadMem_412e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3938 = getelementptr inbounds %struct.GPR, %struct.GPR* %3937, i32 0, i32 33
  %3939 = getelementptr inbounds %struct.Reg, %struct.Reg* %3938, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %3939 to i64*
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3941 = getelementptr inbounds %struct.GPR, %struct.GPR* %3940, i32 0, i32 5
  %3942 = getelementptr inbounds %struct.Reg, %struct.Reg* %3941, i32 0, i32 0
  %RCX.i456 = bitcast %union.anon* %3942 to i64*
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3944 = getelementptr inbounds %struct.GPR, %struct.GPR* %3943, i32 0, i32 9
  %3945 = getelementptr inbounds %struct.Reg, %struct.Reg* %3944, i32 0, i32 0
  %RSI.i457 = bitcast %union.anon* %3945 to i64*
  %3946 = load i64, i64* %RCX.i456
  %3947 = mul i64 %3946, 4
  %3948 = add i64 %3947, 11187184
  %3949 = load i64, i64* %PC.i455
  %3950 = add i64 %3949, 7
  store i64 %3950, i64* %PC.i455
  %3951 = inttoptr i64 %3948 to i32*
  %3952 = load i32, i32* %3951
  %3953 = zext i32 %3952 to i64
  store i64 %3953, i64* %RSI.i457, align 8
  store %struct.Memory* %loadMem_412e97, %struct.Memory** %MEMORY
  %loadMem_412e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 33
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %3956 to i64*
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 9
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %ESI.i453 = bitcast %union.anon* %3959 to i32*
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 15
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %3962 to i64*
  %3963 = load i64, i64* %RBP.i454
  %3964 = sub i64 %3963, 1020
  %3965 = load i32, i32* %ESI.i453
  %3966 = zext i32 %3965 to i64
  %3967 = load i64, i64* %PC.i452
  %3968 = add i64 %3967, 6
  store i64 %3968, i64* %PC.i452
  %3969 = inttoptr i64 %3964 to i32*
  store i32 %3965, i32* %3969
  store %struct.Memory* %loadMem_412e9e, %struct.Memory** %MEMORY
  %loadMem_412ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 33
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %3972 to i64*
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 5
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %RCX.i450 = bitcast %union.anon* %3975 to i64*
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3977 = getelementptr inbounds %struct.GPR, %struct.GPR* %3976, i32 0, i32 15
  %3978 = getelementptr inbounds %struct.Reg, %struct.Reg* %3977, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %3978 to i64*
  %3979 = load i64, i64* %RBP.i451
  %3980 = sub i64 %3979, 1020
  %3981 = load i64, i64* %PC.i449
  %3982 = add i64 %3981, 7
  store i64 %3982, i64* %PC.i449
  %3983 = inttoptr i64 %3980 to i32*
  %3984 = load i32, i32* %3983
  %3985 = sext i32 %3984 to i64
  store i64 %3985, i64* %RCX.i450, align 8
  store %struct.Memory* %loadMem_412ea4, %struct.Memory** %MEMORY
  %loadMem_412eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 33
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %3988 to i64*
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 5
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %RCX.i448 = bitcast %union.anon* %3991 to i64*
  %3992 = load i64, i64* %RCX.i448
  %3993 = load i64, i64* %PC.i447
  %3994 = add i64 %3993, 7
  store i64 %3994, i64* %PC.i447
  %3995 = sext i64 %3992 to i128
  %3996 = and i128 %3995, -18446744073709551616
  %3997 = zext i64 %3992 to i128
  %3998 = or i128 %3996, %3997
  %3999 = mul i128 744, %3998
  %4000 = trunc i128 %3999 to i64
  store i64 %4000, i64* %RCX.i448, align 8
  %4001 = sext i64 %4000 to i128
  %4002 = icmp ne i128 %4001, %3999
  %4003 = zext i1 %4002 to i8
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4003, i8* %4004, align 1
  %4005 = trunc i128 %3999 to i32
  %4006 = and i32 %4005, 255
  %4007 = call i32 @llvm.ctpop.i32(i32 %4006)
  %4008 = trunc i32 %4007 to i8
  %4009 = and i8 %4008, 1
  %4010 = xor i8 %4009, 1
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4010, i8* %4011, align 1
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4012, align 1
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4013, align 1
  %4014 = lshr i64 %4000, 63
  %4015 = trunc i64 %4014 to i8
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4015, i8* %4016, align 1
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4003, i8* %4017, align 1
  store %struct.Memory* %loadMem_412eab, %struct.Memory** %MEMORY
  %loadMem_412eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 33
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %4020 to i64*
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 1
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %4023 to i64*
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 5
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %RCX.i446 = bitcast %union.anon* %4026 to i64*
  %4027 = load i64, i64* %RAX.i445
  %4028 = load i64, i64* %RCX.i446
  %4029 = load i64, i64* %PC.i444
  %4030 = add i64 %4029, 3
  store i64 %4030, i64* %PC.i444
  %4031 = add i64 %4028, %4027
  store i64 %4031, i64* %RAX.i445, align 8
  %4032 = icmp ult i64 %4031, %4027
  %4033 = icmp ult i64 %4031, %4028
  %4034 = or i1 %4032, %4033
  %4035 = zext i1 %4034 to i8
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4035, i8* %4036, align 1
  %4037 = trunc i64 %4031 to i32
  %4038 = and i32 %4037, 255
  %4039 = call i32 @llvm.ctpop.i32(i32 %4038)
  %4040 = trunc i32 %4039 to i8
  %4041 = and i8 %4040, 1
  %4042 = xor i8 %4041, 1
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4042, i8* %4043, align 1
  %4044 = xor i64 %4028, %4027
  %4045 = xor i64 %4044, %4031
  %4046 = lshr i64 %4045, 4
  %4047 = trunc i64 %4046 to i8
  %4048 = and i8 %4047, 1
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4048, i8* %4049, align 1
  %4050 = icmp eq i64 %4031, 0
  %4051 = zext i1 %4050 to i8
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4051, i8* %4052, align 1
  %4053 = lshr i64 %4031, 63
  %4054 = trunc i64 %4053 to i8
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4054, i8* %4055, align 1
  %4056 = lshr i64 %4027, 63
  %4057 = lshr i64 %4028, 63
  %4058 = xor i64 %4053, %4056
  %4059 = xor i64 %4053, %4057
  %4060 = add i64 %4058, %4059
  %4061 = icmp eq i64 %4060, 2
  %4062 = zext i1 %4061 to i8
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4062, i8* %4063, align 1
  store %struct.Memory* %loadMem_412eb2, %struct.Memory** %MEMORY
  %loadMem_412eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 33
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %4066 to i64*
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 1
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %4069 to i64*
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 9
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %RSI.i443 = bitcast %union.anon* %4072 to i64*
  %4073 = load i64, i64* %RAX.i442
  %4074 = add i64 %4073, 12
  %4075 = load i64, i64* %PC.i441
  %4076 = add i64 %4075, 3
  store i64 %4076, i64* %PC.i441
  %4077 = inttoptr i64 %4074 to i32*
  %4078 = load i32, i32* %4077
  %4079 = zext i32 %4078 to i64
  store i64 %4079, i64* %RSI.i443, align 8
  store %struct.Memory* %loadMem_412eb5, %struct.Memory** %MEMORY
  %loadMem_412eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 33
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %4082 to i64*
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 9
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %ESI.i439 = bitcast %union.anon* %4085 to i32*
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4087 = getelementptr inbounds %struct.GPR, %struct.GPR* %4086, i32 0, i32 15
  %4088 = getelementptr inbounds %struct.Reg, %struct.Reg* %4087, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %4088 to i64*
  %4089 = load i64, i64* %RBP.i440
  %4090 = sub i64 %4089, 1008
  %4091 = load i32, i32* %ESI.i439
  %4092 = zext i32 %4091 to i64
  %4093 = load i64, i64* %PC.i438
  %4094 = add i64 %4093, 6
  store i64 %4094, i64* %PC.i438
  %4095 = inttoptr i64 %4090 to i32*
  store i32 %4091, i32* %4095
  store %struct.Memory* %loadMem_412eb8, %struct.Memory** %MEMORY
  %loadMem_412ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4097 = getelementptr inbounds %struct.GPR, %struct.GPR* %4096, i32 0, i32 33
  %4098 = getelementptr inbounds %struct.Reg, %struct.Reg* %4097, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %4098 to i64*
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4100 = getelementptr inbounds %struct.GPR, %struct.GPR* %4099, i32 0, i32 15
  %4101 = getelementptr inbounds %struct.Reg, %struct.Reg* %4100, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %4101 to i64*
  %4102 = load i64, i64* %RBP.i437
  %4103 = sub i64 %4102, 1008
  %4104 = load i64, i64* %PC.i436
  %4105 = add i64 %4104, 7
  store i64 %4105, i64* %PC.i436
  %4106 = inttoptr i64 %4103 to i32*
  %4107 = load i32, i32* %4106
  %4108 = sub i32 %4107, 20
  %4109 = icmp ult i32 %4107, 20
  %4110 = zext i1 %4109 to i8
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4110, i8* %4111, align 1
  %4112 = and i32 %4108, 255
  %4113 = call i32 @llvm.ctpop.i32(i32 %4112)
  %4114 = trunc i32 %4113 to i8
  %4115 = and i8 %4114, 1
  %4116 = xor i8 %4115, 1
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4116, i8* %4117, align 1
  %4118 = xor i32 %4107, 20
  %4119 = xor i32 %4118, %4108
  %4120 = lshr i32 %4119, 4
  %4121 = trunc i32 %4120 to i8
  %4122 = and i8 %4121, 1
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4122, i8* %4123, align 1
  %4124 = icmp eq i32 %4108, 0
  %4125 = zext i1 %4124 to i8
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4125, i8* %4126, align 1
  %4127 = lshr i32 %4108, 31
  %4128 = trunc i32 %4127 to i8
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4128, i8* %4129, align 1
  %4130 = lshr i32 %4107, 31
  %4131 = xor i32 %4127, %4130
  %4132 = add i32 %4131, %4130
  %4133 = icmp eq i32 %4132, 2
  %4134 = zext i1 %4133 to i8
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4134, i8* %4135, align 1
  store %struct.Memory* %loadMem_412ebe, %struct.Memory** %MEMORY
  %loadMem_412ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 33
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %4138 to i64*
  %4139 = load i64, i64* %PC.i435
  %4140 = add i64 %4139, 342
  %4141 = load i64, i64* %PC.i435
  %4142 = add i64 %4141, 6
  %4143 = load i64, i64* %PC.i435
  %4144 = add i64 %4143, 6
  store i64 %4144, i64* %PC.i435
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4146 = load i8, i8* %4145, align 1
  %4147 = icmp eq i8 %4146, 0
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4149 = load i8, i8* %4148, align 1
  %4150 = icmp ne i8 %4149, 0
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4152 = load i8, i8* %4151, align 1
  %4153 = icmp ne i8 %4152, 0
  %4154 = xor i1 %4150, %4153
  %4155 = xor i1 %4154, true
  %4156 = and i1 %4147, %4155
  %4157 = zext i1 %4156 to i8
  store i8 %4157, i8* %BRANCH_TAKEN, align 1
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4159 = select i1 %4156, i64 %4140, i64 %4142
  store i64 %4159, i64* %4158, align 8
  store %struct.Memory* %loadMem_412ec5, %struct.Memory** %MEMORY
  %loadBr_412ec5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412ec5 = icmp eq i8 %loadBr_412ec5, 1
  br i1 %cmpBr_412ec5, label %block_.L_41301b, label %block_412ecb

block_412ecb:                                     ; preds = %block_412e6a
  %loadMem_412ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4161 = getelementptr inbounds %struct.GPR, %struct.GPR* %4160, i32 0, i32 33
  %4162 = getelementptr inbounds %struct.Reg, %struct.Reg* %4161, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %4162 to i64*
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 1
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %4165 to i64*
  %4166 = load i64, i64* %PC.i433
  %4167 = add i64 %4166, 7
  store i64 %4167, i64* %PC.i433
  %4168 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %4169 = zext i32 %4168 to i64
  store i64 %4169, i64* %RAX.i434, align 8
  store %struct.Memory* %loadMem_412ecb, %struct.Memory** %MEMORY
  %loadMem_412ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4171 = getelementptr inbounds %struct.GPR, %struct.GPR* %4170, i32 0, i32 33
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %4172 to i64*
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 1
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %4175 to i64*
  %4176 = load i64, i64* %RAX.i432
  %4177 = load i64, i64* %PC.i431
  %4178 = add i64 %4177, 3
  store i64 %4178, i64* %PC.i431
  %4179 = trunc i64 %4176 to i32
  %4180 = add i32 1, %4179
  %4181 = zext i32 %4180 to i64
  store i64 %4181, i64* %RAX.i432, align 8
  %4182 = icmp ult i32 %4180, %4179
  %4183 = icmp ult i32 %4180, 1
  %4184 = or i1 %4182, %4183
  %4185 = zext i1 %4184 to i8
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4185, i8* %4186, align 1
  %4187 = and i32 %4180, 255
  %4188 = call i32 @llvm.ctpop.i32(i32 %4187)
  %4189 = trunc i32 %4188 to i8
  %4190 = and i8 %4189, 1
  %4191 = xor i8 %4190, 1
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4191, i8* %4192, align 1
  %4193 = xor i64 1, %4176
  %4194 = trunc i64 %4193 to i32
  %4195 = xor i32 %4194, %4180
  %4196 = lshr i32 %4195, 4
  %4197 = trunc i32 %4196 to i8
  %4198 = and i8 %4197, 1
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4198, i8* %4199, align 1
  %4200 = icmp eq i32 %4180, 0
  %4201 = zext i1 %4200 to i8
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4201, i8* %4202, align 1
  %4203 = lshr i32 %4180, 31
  %4204 = trunc i32 %4203 to i8
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4204, i8* %4205, align 1
  %4206 = lshr i32 %4179, 31
  %4207 = xor i32 %4203, %4206
  %4208 = add i32 %4207, %4203
  %4209 = icmp eq i32 %4208, 2
  %4210 = zext i1 %4209 to i8
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4210, i8* %4211, align 1
  store %struct.Memory* %loadMem_412ed2, %struct.Memory** %MEMORY
  %loadMem_412ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4213 = getelementptr inbounds %struct.GPR, %struct.GPR* %4212, i32 0, i32 33
  %4214 = getelementptr inbounds %struct.Reg, %struct.Reg* %4213, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %4214 to i64*
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4216 = getelementptr inbounds %struct.GPR, %struct.GPR* %4215, i32 0, i32 1
  %4217 = getelementptr inbounds %struct.Reg, %struct.Reg* %4216, i32 0, i32 0
  %EAX.i430 = bitcast %union.anon* %4217 to i32*
  %4218 = load i32, i32* %EAX.i430
  %4219 = zext i32 %4218 to i64
  %4220 = load i64, i64* %PC.i429
  %4221 = add i64 %4220, 7
  store i64 %4221, i64* %PC.i429
  store i32 %4218, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  store %struct.Memory* %loadMem_412ed5, %struct.Memory** %MEMORY
  %loadMem_412edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4223 = getelementptr inbounds %struct.GPR, %struct.GPR* %4222, i32 0, i32 33
  %4224 = getelementptr inbounds %struct.Reg, %struct.Reg* %4223, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %4224 to i64*
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4226 = getelementptr inbounds %struct.GPR, %struct.GPR* %4225, i32 0, i32 15
  %4227 = getelementptr inbounds %struct.Reg, %struct.Reg* %4226, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %4227 to i64*
  %4228 = load i64, i64* %RBP.i428
  %4229 = sub i64 %4228, 1016
  %4230 = load i64, i64* %PC.i427
  %4231 = add i64 %4230, 10
  store i64 %4231, i64* %PC.i427
  %4232 = inttoptr i64 %4229 to i32*
  store i32 0, i32* %4232
  store %struct.Memory* %loadMem_412edc, %struct.Memory** %MEMORY
  br label %block_.L_412ee6

block_.L_412ee6:                                  ; preds = %block_412ef8, %block_412ecb
  %loadMem_412ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 33
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %4235 to i64*
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4237 = getelementptr inbounds %struct.GPR, %struct.GPR* %4236, i32 0, i32 1
  %4238 = getelementptr inbounds %struct.Reg, %struct.Reg* %4237, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %4238 to i64*
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4240 = getelementptr inbounds %struct.GPR, %struct.GPR* %4239, i32 0, i32 15
  %4241 = getelementptr inbounds %struct.Reg, %struct.Reg* %4240, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %4241 to i64*
  %4242 = load i64, i64* %RBP.i426
  %4243 = sub i64 %4242, 1016
  %4244 = load i64, i64* %PC.i424
  %4245 = add i64 %4244, 6
  store i64 %4245, i64* %PC.i424
  %4246 = inttoptr i64 %4243 to i32*
  %4247 = load i32, i32* %4246
  %4248 = zext i32 %4247 to i64
  store i64 %4248, i64* %RAX.i425, align 8
  store %struct.Memory* %loadMem_412ee6, %struct.Memory** %MEMORY
  %loadMem_412eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4250 = getelementptr inbounds %struct.GPR, %struct.GPR* %4249, i32 0, i32 33
  %4251 = getelementptr inbounds %struct.Reg, %struct.Reg* %4250, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %4251 to i64*
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4253 = getelementptr inbounds %struct.GPR, %struct.GPR* %4252, i32 0, i32 1
  %4254 = getelementptr inbounds %struct.Reg, %struct.Reg* %4253, i32 0, i32 0
  %EAX.i422 = bitcast %union.anon* %4254 to i32*
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4256 = getelementptr inbounds %struct.GPR, %struct.GPR* %4255, i32 0, i32 15
  %4257 = getelementptr inbounds %struct.Reg, %struct.Reg* %4256, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %4257 to i64*
  %4258 = load i32, i32* %EAX.i422
  %4259 = zext i32 %4258 to i64
  %4260 = load i64, i64* %RBP.i423
  %4261 = sub i64 %4260, 1004
  %4262 = load i64, i64* %PC.i421
  %4263 = add i64 %4262, 6
  store i64 %4263, i64* %PC.i421
  %4264 = inttoptr i64 %4261 to i32*
  %4265 = load i32, i32* %4264
  %4266 = sub i32 %4258, %4265
  %4267 = icmp ult i32 %4258, %4265
  %4268 = zext i1 %4267 to i8
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4268, i8* %4269, align 1
  %4270 = and i32 %4266, 255
  %4271 = call i32 @llvm.ctpop.i32(i32 %4270)
  %4272 = trunc i32 %4271 to i8
  %4273 = and i8 %4272, 1
  %4274 = xor i8 %4273, 1
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4274, i8* %4275, align 1
  %4276 = xor i32 %4265, %4258
  %4277 = xor i32 %4276, %4266
  %4278 = lshr i32 %4277, 4
  %4279 = trunc i32 %4278 to i8
  %4280 = and i8 %4279, 1
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4280, i8* %4281, align 1
  %4282 = icmp eq i32 %4266, 0
  %4283 = zext i1 %4282 to i8
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4283, i8* %4284, align 1
  %4285 = lshr i32 %4266, 31
  %4286 = trunc i32 %4285 to i8
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4286, i8* %4287, align 1
  %4288 = lshr i32 %4258, 31
  %4289 = lshr i32 %4265, 31
  %4290 = xor i32 %4289, %4288
  %4291 = xor i32 %4285, %4288
  %4292 = add i32 %4291, %4290
  %4293 = icmp eq i32 %4292, 2
  %4294 = zext i1 %4293 to i8
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4294, i8* %4295, align 1
  store %struct.Memory* %loadMem_412eec, %struct.Memory** %MEMORY
  %loadMem_412ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 33
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %4298 to i64*
  %4299 = load i64, i64* %PC.i420
  %4300 = add i64 %4299, 58
  %4301 = load i64, i64* %PC.i420
  %4302 = add i64 %4301, 6
  %4303 = load i64, i64* %PC.i420
  %4304 = add i64 %4303, 6
  store i64 %4304, i64* %PC.i420
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4306 = load i8, i8* %4305, align 1
  %4307 = icmp ne i8 %4306, 0
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4309 = load i8, i8* %4308, align 1
  %4310 = icmp ne i8 %4309, 0
  %4311 = xor i1 %4307, %4310
  %4312 = xor i1 %4311, true
  %4313 = zext i1 %4312 to i8
  store i8 %4313, i8* %BRANCH_TAKEN, align 1
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4315 = select i1 %4311, i64 %4302, i64 %4300
  store i64 %4315, i64* %4314, align 8
  store %struct.Memory* %loadMem_412ef2, %struct.Memory** %MEMORY
  %loadBr_412ef2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412ef2 = icmp eq i8 %loadBr_412ef2, 1
  br i1 %cmpBr_412ef2, label %block_.L_412f2c, label %block_412ef8

block_412ef8:                                     ; preds = %block_.L_412ee6
  %loadMem_412ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 33
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %4318 to i64*
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 1
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %4321 to i64*
  %4322 = load i64, i64* %PC.i418
  %4323 = add i64 %4322, 7
  store i64 %4323, i64* %PC.i418
  %4324 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %4325 = zext i32 %4324 to i64
  store i64 %4325, i64* %RAX.i419, align 8
  store %struct.Memory* %loadMem_412ef8, %struct.Memory** %MEMORY
  %loadMem_412eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4327 = getelementptr inbounds %struct.GPR, %struct.GPR* %4326, i32 0, i32 33
  %4328 = getelementptr inbounds %struct.Reg, %struct.Reg* %4327, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %4328 to i64*
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4330 = getelementptr inbounds %struct.GPR, %struct.GPR* %4329, i32 0, i32 5
  %4331 = getelementptr inbounds %struct.Reg, %struct.Reg* %4330, i32 0, i32 0
  %RCX.i416 = bitcast %union.anon* %4331 to i64*
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4333 = getelementptr inbounds %struct.GPR, %struct.GPR* %4332, i32 0, i32 15
  %4334 = getelementptr inbounds %struct.Reg, %struct.Reg* %4333, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %4334 to i64*
  %4335 = load i64, i64* %RBP.i417
  %4336 = sub i64 %4335, 1000
  %4337 = load i64, i64* %PC.i415
  %4338 = add i64 %4337, 7
  store i64 %4338, i64* %PC.i415
  %4339 = inttoptr i64 %4336 to i64*
  %4340 = load i64, i64* %4339
  store i64 %4340, i64* %RCX.i416, align 8
  store %struct.Memory* %loadMem_412eff, %struct.Memory** %MEMORY
  %loadMem_412f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4342 = getelementptr inbounds %struct.GPR, %struct.GPR* %4341, i32 0, i32 33
  %4343 = getelementptr inbounds %struct.Reg, %struct.Reg* %4342, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %4343 to i64*
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 7
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %RDX.i413 = bitcast %union.anon* %4346 to i64*
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 15
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %4349 to i64*
  %4350 = load i64, i64* %RBP.i414
  %4351 = sub i64 %4350, 1016
  %4352 = load i64, i64* %PC.i412
  %4353 = add i64 %4352, 7
  store i64 %4353, i64* %PC.i412
  %4354 = inttoptr i64 %4351 to i32*
  %4355 = load i32, i32* %4354
  %4356 = sext i32 %4355 to i64
  store i64 %4356, i64* %RDX.i413, align 8
  store %struct.Memory* %loadMem_412f06, %struct.Memory** %MEMORY
  %loadMem_412f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 33
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %4359 to i64*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 5
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %4362 to i64*
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4364 = getelementptr inbounds %struct.GPR, %struct.GPR* %4363, i32 0, i32 7
  %4365 = getelementptr inbounds %struct.Reg, %struct.Reg* %4364, i32 0, i32 0
  %RDX.i411 = bitcast %union.anon* %4365 to i64*
  %4366 = load i64, i64* %RCX.i410
  %4367 = load i64, i64* %RDX.i411
  %4368 = mul i64 %4367, 4
  %4369 = add i64 %4368, %4366
  %4370 = load i64, i64* %PC.i409
  %4371 = add i64 %4370, 4
  store i64 %4371, i64* %PC.i409
  %4372 = inttoptr i64 %4369 to i32*
  %4373 = load i32, i32* %4372
  %4374 = sext i32 %4373 to i64
  store i64 %4374, i64* %RCX.i410, align 8
  store %struct.Memory* %loadMem_412f0d, %struct.Memory** %MEMORY
  %loadMem_412f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 33
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %4377 to i64*
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 1
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %EAX.i407 = bitcast %union.anon* %4380 to i32*
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 5
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %4383 to i64*
  %4384 = load i64, i64* %RCX.i408
  %4385 = mul i64 %4384, 4
  %4386 = add i64 %4385, 11185584
  %4387 = load i32, i32* %EAX.i407
  %4388 = zext i32 %4387 to i64
  %4389 = load i64, i64* %PC.i406
  %4390 = add i64 %4389, 7
  store i64 %4390, i64* %PC.i406
  %4391 = inttoptr i64 %4386 to i32*
  store i32 %4387, i32* %4391
  store %struct.Memory* %loadMem_412f11, %struct.Memory** %MEMORY
  %loadMem_412f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 33
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %4394 to i64*
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 1
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %4397 to i64*
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4399 = getelementptr inbounds %struct.GPR, %struct.GPR* %4398, i32 0, i32 15
  %4400 = getelementptr inbounds %struct.Reg, %struct.Reg* %4399, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %4400 to i64*
  %4401 = load i64, i64* %RBP.i405
  %4402 = sub i64 %4401, 1016
  %4403 = load i64, i64* %PC.i403
  %4404 = add i64 %4403, 6
  store i64 %4404, i64* %PC.i403
  %4405 = inttoptr i64 %4402 to i32*
  %4406 = load i32, i32* %4405
  %4407 = zext i32 %4406 to i64
  store i64 %4407, i64* %RAX.i404, align 8
  store %struct.Memory* %loadMem_412f18, %struct.Memory** %MEMORY
  %loadMem_412f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4409 = getelementptr inbounds %struct.GPR, %struct.GPR* %4408, i32 0, i32 33
  %4410 = getelementptr inbounds %struct.Reg, %struct.Reg* %4409, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %4410 to i64*
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 1
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %4413 to i64*
  %4414 = load i64, i64* %RAX.i402
  %4415 = load i64, i64* %PC.i401
  %4416 = add i64 %4415, 3
  store i64 %4416, i64* %PC.i401
  %4417 = trunc i64 %4414 to i32
  %4418 = add i32 1, %4417
  %4419 = zext i32 %4418 to i64
  store i64 %4419, i64* %RAX.i402, align 8
  %4420 = icmp ult i32 %4418, %4417
  %4421 = icmp ult i32 %4418, 1
  %4422 = or i1 %4420, %4421
  %4423 = zext i1 %4422 to i8
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4423, i8* %4424, align 1
  %4425 = and i32 %4418, 255
  %4426 = call i32 @llvm.ctpop.i32(i32 %4425)
  %4427 = trunc i32 %4426 to i8
  %4428 = and i8 %4427, 1
  %4429 = xor i8 %4428, 1
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4429, i8* %4430, align 1
  %4431 = xor i64 1, %4414
  %4432 = trunc i64 %4431 to i32
  %4433 = xor i32 %4432, %4418
  %4434 = lshr i32 %4433, 4
  %4435 = trunc i32 %4434 to i8
  %4436 = and i8 %4435, 1
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4436, i8* %4437, align 1
  %4438 = icmp eq i32 %4418, 0
  %4439 = zext i1 %4438 to i8
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4439, i8* %4440, align 1
  %4441 = lshr i32 %4418, 31
  %4442 = trunc i32 %4441 to i8
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4442, i8* %4443, align 1
  %4444 = lshr i32 %4417, 31
  %4445 = xor i32 %4441, %4444
  %4446 = add i32 %4445, %4441
  %4447 = icmp eq i32 %4446, 2
  %4448 = zext i1 %4447 to i8
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4448, i8* %4449, align 1
  store %struct.Memory* %loadMem_412f1e, %struct.Memory** %MEMORY
  %loadMem_412f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 33
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %4452 to i64*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 1
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %EAX.i399 = bitcast %union.anon* %4455 to i32*
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 15
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %4458 to i64*
  %4459 = load i64, i64* %RBP.i400
  %4460 = sub i64 %4459, 1016
  %4461 = load i32, i32* %EAX.i399
  %4462 = zext i32 %4461 to i64
  %4463 = load i64, i64* %PC.i398
  %4464 = add i64 %4463, 6
  store i64 %4464, i64* %PC.i398
  %4465 = inttoptr i64 %4460 to i32*
  store i32 %4461, i32* %4465
  store %struct.Memory* %loadMem_412f21, %struct.Memory** %MEMORY
  %loadMem_412f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4467 = getelementptr inbounds %struct.GPR, %struct.GPR* %4466, i32 0, i32 33
  %4468 = getelementptr inbounds %struct.Reg, %struct.Reg* %4467, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %4468 to i64*
  %4469 = load i64, i64* %PC.i397
  %4470 = add i64 %4469, -65
  %4471 = load i64, i64* %PC.i397
  %4472 = add i64 %4471, 5
  store i64 %4472, i64* %PC.i397
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4470, i64* %4473, align 8
  store %struct.Memory* %loadMem_412f27, %struct.Memory** %MEMORY
  br label %block_.L_412ee6

block_.L_412f2c:                                  ; preds = %block_.L_412ee6
  %loadMem_412f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 33
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %4476 to i64*
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 1
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %4479 to i64*
  %4480 = load i64, i64* %PC.i395
  %4481 = add i64 %4480, 10
  store i64 %4481, i64* %PC.i395
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_412f2c, %struct.Memory** %MEMORY
  %loadMem_412f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4483 = getelementptr inbounds %struct.GPR, %struct.GPR* %4482, i32 0, i32 33
  %4484 = getelementptr inbounds %struct.Reg, %struct.Reg* %4483, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4484 to i64*
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4486 = getelementptr inbounds %struct.GPR, %struct.GPR* %4485, i32 0, i32 5
  %4487 = getelementptr inbounds %struct.Reg, %struct.Reg* %4486, i32 0, i32 0
  %RCX.i393 = bitcast %union.anon* %4487 to i64*
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4489 = getelementptr inbounds %struct.GPR, %struct.GPR* %4488, i32 0, i32 15
  %4490 = getelementptr inbounds %struct.Reg, %struct.Reg* %4489, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %4490 to i64*
  %4491 = load i64, i64* %RBP.i394
  %4492 = sub i64 %4491, 1020
  %4493 = load i64, i64* %PC.i392
  %4494 = add i64 %4493, 7
  store i64 %4494, i64* %PC.i392
  %4495 = inttoptr i64 %4492 to i32*
  %4496 = load i32, i32* %4495
  %4497 = sext i32 %4496 to i64
  store i64 %4497, i64* %RCX.i393, align 8
  store %struct.Memory* %loadMem_412f36, %struct.Memory** %MEMORY
  %loadMem_412f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4499 = getelementptr inbounds %struct.GPR, %struct.GPR* %4498, i32 0, i32 33
  %4500 = getelementptr inbounds %struct.Reg, %struct.Reg* %4499, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %4500 to i64*
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 5
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %RCX.i391 = bitcast %union.anon* %4503 to i64*
  %4504 = load i64, i64* %RCX.i391
  %4505 = load i64, i64* %PC.i390
  %4506 = add i64 %4505, 7
  store i64 %4506, i64* %PC.i390
  %4507 = sext i64 %4504 to i128
  %4508 = and i128 %4507, -18446744073709551616
  %4509 = zext i64 %4504 to i128
  %4510 = or i128 %4508, %4509
  %4511 = mul i128 744, %4510
  %4512 = trunc i128 %4511 to i64
  store i64 %4512, i64* %RCX.i391, align 8
  %4513 = sext i64 %4512 to i128
  %4514 = icmp ne i128 %4513, %4511
  %4515 = zext i1 %4514 to i8
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4515, i8* %4516, align 1
  %4517 = trunc i128 %4511 to i32
  %4518 = and i32 %4517, 255
  %4519 = call i32 @llvm.ctpop.i32(i32 %4518)
  %4520 = trunc i32 %4519 to i8
  %4521 = and i8 %4520, 1
  %4522 = xor i8 %4521, 1
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4522, i8* %4523, align 1
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4524, align 1
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4525, align 1
  %4526 = lshr i64 %4512, 63
  %4527 = trunc i64 %4526 to i8
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4527, i8* %4528, align 1
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4515, i8* %4529, align 1
  store %struct.Memory* %loadMem_412f3d, %struct.Memory** %MEMORY
  %loadMem_412f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 33
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %4532 to i64*
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 1
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %4535 to i64*
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4537 = getelementptr inbounds %struct.GPR, %struct.GPR* %4536, i32 0, i32 5
  %4538 = getelementptr inbounds %struct.Reg, %struct.Reg* %4537, i32 0, i32 0
  %RCX.i389 = bitcast %union.anon* %4538 to i64*
  %4539 = load i64, i64* %RAX.i388
  %4540 = load i64, i64* %RCX.i389
  %4541 = load i64, i64* %PC.i387
  %4542 = add i64 %4541, 3
  store i64 %4542, i64* %PC.i387
  %4543 = add i64 %4540, %4539
  store i64 %4543, i64* %RAX.i388, align 8
  %4544 = icmp ult i64 %4543, %4539
  %4545 = icmp ult i64 %4543, %4540
  %4546 = or i1 %4544, %4545
  %4547 = zext i1 %4546 to i8
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4547, i8* %4548, align 1
  %4549 = trunc i64 %4543 to i32
  %4550 = and i32 %4549, 255
  %4551 = call i32 @llvm.ctpop.i32(i32 %4550)
  %4552 = trunc i32 %4551 to i8
  %4553 = and i8 %4552, 1
  %4554 = xor i8 %4553, 1
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4554, i8* %4555, align 1
  %4556 = xor i64 %4540, %4539
  %4557 = xor i64 %4556, %4543
  %4558 = lshr i64 %4557, 4
  %4559 = trunc i64 %4558 to i8
  %4560 = and i8 %4559, 1
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4560, i8* %4561, align 1
  %4562 = icmp eq i64 %4543, 0
  %4563 = zext i1 %4562 to i8
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4563, i8* %4564, align 1
  %4565 = lshr i64 %4543, 63
  %4566 = trunc i64 %4565 to i8
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4566, i8* %4567, align 1
  %4568 = lshr i64 %4539, 63
  %4569 = lshr i64 %4540, 63
  %4570 = xor i64 %4565, %4568
  %4571 = xor i64 %4565, %4569
  %4572 = add i64 %4570, %4571
  %4573 = icmp eq i64 %4572, 2
  %4574 = zext i1 %4573 to i8
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4574, i8* %4575, align 1
  store %struct.Memory* %loadMem_412f44, %struct.Memory** %MEMORY
  %loadMem_412f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4577 = getelementptr inbounds %struct.GPR, %struct.GPR* %4576, i32 0, i32 33
  %4578 = getelementptr inbounds %struct.Reg, %struct.Reg* %4577, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4578 to i64*
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4580 = getelementptr inbounds %struct.GPR, %struct.GPR* %4579, i32 0, i32 1
  %4581 = getelementptr inbounds %struct.Reg, %struct.Reg* %4580, i32 0, i32 0
  %RAX.i386 = bitcast %union.anon* %4581 to i64*
  %4582 = load i64, i64* %RAX.i386
  %4583 = load i64, i64* %PC.i385
  %4584 = add i64 %4583, 4
  store i64 %4584, i64* %PC.i385
  %4585 = add i64 16, %4582
  store i64 %4585, i64* %RAX.i386, align 8
  %4586 = icmp ult i64 %4585, %4582
  %4587 = icmp ult i64 %4585, 16
  %4588 = or i1 %4586, %4587
  %4589 = zext i1 %4588 to i8
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4589, i8* %4590, align 1
  %4591 = trunc i64 %4585 to i32
  %4592 = and i32 %4591, 255
  %4593 = call i32 @llvm.ctpop.i32(i32 %4592)
  %4594 = trunc i32 %4593 to i8
  %4595 = and i8 %4594, 1
  %4596 = xor i8 %4595, 1
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4596, i8* %4597, align 1
  %4598 = xor i64 16, %4582
  %4599 = xor i64 %4598, %4585
  %4600 = lshr i64 %4599, 4
  %4601 = trunc i64 %4600 to i8
  %4602 = and i8 %4601, 1
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4602, i8* %4603, align 1
  %4604 = icmp eq i64 %4585, 0
  %4605 = zext i1 %4604 to i8
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4605, i8* %4606, align 1
  %4607 = lshr i64 %4585, 63
  %4608 = trunc i64 %4607 to i8
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4608, i8* %4609, align 1
  %4610 = lshr i64 %4582, 63
  %4611 = xor i64 %4607, %4610
  %4612 = add i64 %4611, %4607
  %4613 = icmp eq i64 %4612, 2
  %4614 = zext i1 %4613 to i8
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4614, i8* %4615, align 1
  store %struct.Memory* %loadMem_412f47, %struct.Memory** %MEMORY
  %loadMem_412f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4617 = getelementptr inbounds %struct.GPR, %struct.GPR* %4616, i32 0, i32 33
  %4618 = getelementptr inbounds %struct.Reg, %struct.Reg* %4617, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4618 to i64*
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4620 = getelementptr inbounds %struct.GPR, %struct.GPR* %4619, i32 0, i32 1
  %4621 = getelementptr inbounds %struct.Reg, %struct.Reg* %4620, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %4621 to i64*
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 15
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %4624 to i64*
  %4625 = load i64, i64* %RBP.i384
  %4626 = sub i64 %4625, 1000
  %4627 = load i64, i64* %RAX.i383
  %4628 = load i64, i64* %PC.i382
  %4629 = add i64 %4628, 7
  store i64 %4629, i64* %PC.i382
  %4630 = inttoptr i64 %4626 to i64*
  store i64 %4627, i64* %4630
  store %struct.Memory* %loadMem_412f4b, %struct.Memory** %MEMORY
  %loadMem_412f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4632 = getelementptr inbounds %struct.GPR, %struct.GPR* %4631, i32 0, i32 33
  %4633 = getelementptr inbounds %struct.Reg, %struct.Reg* %4632, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %4633 to i64*
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4635 = getelementptr inbounds %struct.GPR, %struct.GPR* %4634, i32 0, i32 15
  %4636 = getelementptr inbounds %struct.Reg, %struct.Reg* %4635, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %4636 to i64*
  %4637 = load i64, i64* %RBP.i381
  %4638 = sub i64 %4637, 1016
  %4639 = load i64, i64* %PC.i380
  %4640 = add i64 %4639, 10
  store i64 %4640, i64* %PC.i380
  %4641 = inttoptr i64 %4638 to i32*
  store i32 0, i32* %4641
  store %struct.Memory* %loadMem_412f52, %struct.Memory** %MEMORY
  br label %block_.L_412f5c

block_.L_412f5c:                                  ; preds = %block_.L_412ff9, %block_.L_412f2c
  %loadMem_412f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4643 = getelementptr inbounds %struct.GPR, %struct.GPR* %4642, i32 0, i32 33
  %4644 = getelementptr inbounds %struct.Reg, %struct.Reg* %4643, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %4644 to i64*
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4646 = getelementptr inbounds %struct.GPR, %struct.GPR* %4645, i32 0, i32 1
  %4647 = getelementptr inbounds %struct.Reg, %struct.Reg* %4646, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %4647 to i64*
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4649 = getelementptr inbounds %struct.GPR, %struct.GPR* %4648, i32 0, i32 15
  %4650 = getelementptr inbounds %struct.Reg, %struct.Reg* %4649, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %4650 to i64*
  %4651 = load i64, i64* %RBP.i379
  %4652 = sub i64 %4651, 1016
  %4653 = load i64, i64* %PC.i377
  %4654 = add i64 %4653, 6
  store i64 %4654, i64* %PC.i377
  %4655 = inttoptr i64 %4652 to i32*
  %4656 = load i32, i32* %4655
  %4657 = zext i32 %4656 to i64
  store i64 %4657, i64* %RAX.i378, align 8
  store %struct.Memory* %loadMem_412f5c, %struct.Memory** %MEMORY
  %loadMem_412f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4659 = getelementptr inbounds %struct.GPR, %struct.GPR* %4658, i32 0, i32 33
  %4660 = getelementptr inbounds %struct.Reg, %struct.Reg* %4659, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %4660 to i64*
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 1
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %EAX.i375 = bitcast %union.anon* %4663 to i32*
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4665 = getelementptr inbounds %struct.GPR, %struct.GPR* %4664, i32 0, i32 15
  %4666 = getelementptr inbounds %struct.Reg, %struct.Reg* %4665, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %4666 to i64*
  %4667 = load i32, i32* %EAX.i375
  %4668 = zext i32 %4667 to i64
  %4669 = load i64, i64* %RBP.i376
  %4670 = sub i64 %4669, 1008
  %4671 = load i64, i64* %PC.i374
  %4672 = add i64 %4671, 6
  store i64 %4672, i64* %PC.i374
  %4673 = inttoptr i64 %4670 to i32*
  %4674 = load i32, i32* %4673
  %4675 = sub i32 %4667, %4674
  %4676 = icmp ult i32 %4667, %4674
  %4677 = zext i1 %4676 to i8
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4677, i8* %4678, align 1
  %4679 = and i32 %4675, 255
  %4680 = call i32 @llvm.ctpop.i32(i32 %4679)
  %4681 = trunc i32 %4680 to i8
  %4682 = and i8 %4681, 1
  %4683 = xor i8 %4682, 1
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4683, i8* %4684, align 1
  %4685 = xor i32 %4674, %4667
  %4686 = xor i32 %4685, %4675
  %4687 = lshr i32 %4686, 4
  %4688 = trunc i32 %4687 to i8
  %4689 = and i8 %4688, 1
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4689, i8* %4690, align 1
  %4691 = icmp eq i32 %4675, 0
  %4692 = zext i1 %4691 to i8
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4692, i8* %4693, align 1
  %4694 = lshr i32 %4675, 31
  %4695 = trunc i32 %4694 to i8
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4695, i8* %4696, align 1
  %4697 = lshr i32 %4667, 31
  %4698 = lshr i32 %4674, 31
  %4699 = xor i32 %4698, %4697
  %4700 = xor i32 %4694, %4697
  %4701 = add i32 %4700, %4699
  %4702 = icmp eq i32 %4701, 2
  %4703 = zext i1 %4702 to i8
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4703, i8* %4704, align 1
  store %struct.Memory* %loadMem_412f62, %struct.Memory** %MEMORY
  %loadMem_412f68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4706 = getelementptr inbounds %struct.GPR, %struct.GPR* %4705, i32 0, i32 33
  %4707 = getelementptr inbounds %struct.Reg, %struct.Reg* %4706, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %4707 to i64*
  %4708 = load i64, i64* %PC.i373
  %4709 = add i64 %4708, 165
  %4710 = load i64, i64* %PC.i373
  %4711 = add i64 %4710, 6
  %4712 = load i64, i64* %PC.i373
  %4713 = add i64 %4712, 6
  store i64 %4713, i64* %PC.i373
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4715 = load i8, i8* %4714, align 1
  %4716 = icmp ne i8 %4715, 0
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4718 = load i8, i8* %4717, align 1
  %4719 = icmp ne i8 %4718, 0
  %4720 = xor i1 %4716, %4719
  %4721 = xor i1 %4720, true
  %4722 = zext i1 %4721 to i8
  store i8 %4722, i8* %BRANCH_TAKEN, align 1
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4724 = select i1 %4720, i64 %4711, i64 %4709
  store i64 %4724, i64* %4723, align 8
  store %struct.Memory* %loadMem_412f68, %struct.Memory** %MEMORY
  %loadBr_412f68 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412f68 = icmp eq i8 %loadBr_412f68, 1
  br i1 %cmpBr_412f68, label %block_.L_41300d, label %block_412f6e

block_412f6e:                                     ; preds = %block_.L_412f5c
  %loadMem_412f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 33
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %4727 to i64*
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4729 = getelementptr inbounds %struct.GPR, %struct.GPR* %4728, i32 0, i32 1
  %4730 = getelementptr inbounds %struct.Reg, %struct.Reg* %4729, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %4730 to i64*
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4732 = getelementptr inbounds %struct.GPR, %struct.GPR* %4731, i32 0, i32 15
  %4733 = getelementptr inbounds %struct.Reg, %struct.Reg* %4732, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %4733 to i64*
  %4734 = load i64, i64* %RBP.i372
  %4735 = sub i64 %4734, 1000
  %4736 = load i64, i64* %PC.i370
  %4737 = add i64 %4736, 7
  store i64 %4737, i64* %PC.i370
  %4738 = inttoptr i64 %4735 to i64*
  %4739 = load i64, i64* %4738
  store i64 %4739, i64* %RAX.i371, align 8
  store %struct.Memory* %loadMem_412f6e, %struct.Memory** %MEMORY
  %loadMem_412f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4741 = getelementptr inbounds %struct.GPR, %struct.GPR* %4740, i32 0, i32 33
  %4742 = getelementptr inbounds %struct.Reg, %struct.Reg* %4741, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %4742 to i64*
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4744 = getelementptr inbounds %struct.GPR, %struct.GPR* %4743, i32 0, i32 5
  %4745 = getelementptr inbounds %struct.Reg, %struct.Reg* %4744, i32 0, i32 0
  %RCX.i368 = bitcast %union.anon* %4745 to i64*
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4747 = getelementptr inbounds %struct.GPR, %struct.GPR* %4746, i32 0, i32 15
  %4748 = getelementptr inbounds %struct.Reg, %struct.Reg* %4747, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %4748 to i64*
  %4749 = load i64, i64* %RBP.i369
  %4750 = sub i64 %4749, 1016
  %4751 = load i64, i64* %PC.i367
  %4752 = add i64 %4751, 7
  store i64 %4752, i64* %PC.i367
  %4753 = inttoptr i64 %4750 to i32*
  %4754 = load i32, i32* %4753
  %4755 = sext i32 %4754 to i64
  store i64 %4755, i64* %RCX.i368, align 8
  store %struct.Memory* %loadMem_412f75, %struct.Memory** %MEMORY
  %loadMem_412f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4757 = getelementptr inbounds %struct.GPR, %struct.GPR* %4756, i32 0, i32 33
  %4758 = getelementptr inbounds %struct.Reg, %struct.Reg* %4757, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %4758 to i64*
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4760 = getelementptr inbounds %struct.GPR, %struct.GPR* %4759, i32 0, i32 1
  %4761 = getelementptr inbounds %struct.Reg, %struct.Reg* %4760, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %4761 to i64*
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4763 = getelementptr inbounds %struct.GPR, %struct.GPR* %4762, i32 0, i32 5
  %4764 = getelementptr inbounds %struct.Reg, %struct.Reg* %4763, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %4764 to i64*
  %4765 = load i64, i64* %RAX.i365
  %4766 = load i64, i64* %RCX.i366
  %4767 = mul i64 %4766, 4
  %4768 = add i64 %4767, %4765
  %4769 = load i64, i64* %PC.i364
  %4770 = add i64 %4769, 4
  store i64 %4770, i64* %PC.i364
  %4771 = inttoptr i64 %4768 to i32*
  %4772 = load i32, i32* %4771
  %4773 = sext i32 %4772 to i64
  store i64 %4773, i64* %RAX.i365, align 8
  store %struct.Memory* %loadMem_412f7c, %struct.Memory** %MEMORY
  %loadMem_412f80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 33
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %4776 to i64*
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 1
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %RAX.i362 = bitcast %union.anon* %4779 to i64*
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4781 = getelementptr inbounds %struct.GPR, %struct.GPR* %4780, i32 0, i32 7
  %4782 = getelementptr inbounds %struct.Reg, %struct.Reg* %4781, i32 0, i32 0
  %RDX.i363 = bitcast %union.anon* %4782 to i64*
  %4783 = load i64, i64* %RAX.i362
  %4784 = add i64 %4783, 12099168
  %4785 = load i64, i64* %PC.i361
  %4786 = add i64 %4785, 8
  store i64 %4786, i64* %PC.i361
  %4787 = inttoptr i64 %4784 to i8*
  %4788 = load i8, i8* %4787
  %4789 = zext i8 %4788 to i64
  store i64 %4789, i64* %RDX.i363, align 8
  store %struct.Memory* %loadMem_412f80, %struct.Memory** %MEMORY
  %loadMem_412f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4791 = getelementptr inbounds %struct.GPR, %struct.GPR* %4790, i32 0, i32 33
  %4792 = getelementptr inbounds %struct.Reg, %struct.Reg* %4791, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %4792 to i64*
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4794 = getelementptr inbounds %struct.GPR, %struct.GPR* %4793, i32 0, i32 7
  %4795 = getelementptr inbounds %struct.Reg, %struct.Reg* %4794, i32 0, i32 0
  %EDX.i360 = bitcast %union.anon* %4795 to i32*
  %4796 = load i32, i32* %EDX.i360
  %4797 = zext i32 %4796 to i64
  %4798 = load i64, i64* %PC.i359
  %4799 = add i64 %4798, 3
  store i64 %4799, i64* %PC.i359
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4800, align 1
  %4801 = and i32 %4796, 255
  %4802 = call i32 @llvm.ctpop.i32(i32 %4801)
  %4803 = trunc i32 %4802 to i8
  %4804 = and i8 %4803, 1
  %4805 = xor i8 %4804, 1
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4805, i8* %4806, align 1
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4807, align 1
  %4808 = icmp eq i32 %4796, 0
  %4809 = zext i1 %4808 to i8
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4809, i8* %4810, align 1
  %4811 = lshr i32 %4796, 31
  %4812 = trunc i32 %4811 to i8
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4812, i8* %4813, align 1
  %4814 = lshr i32 %4796, 31
  %4815 = xor i32 %4811, %4814
  %4816 = add i32 %4815, %4814
  %4817 = icmp eq i32 %4816, 2
  %4818 = zext i1 %4817 to i8
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4818, i8* %4819, align 1
  store %struct.Memory* %loadMem_412f88, %struct.Memory** %MEMORY
  %loadMem_412f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4821 = getelementptr inbounds %struct.GPR, %struct.GPR* %4820, i32 0, i32 33
  %4822 = getelementptr inbounds %struct.Reg, %struct.Reg* %4821, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %4822 to i64*
  %4823 = load i64, i64* %PC.i358
  %4824 = add i64 %4823, 44
  %4825 = load i64, i64* %PC.i358
  %4826 = add i64 %4825, 6
  %4827 = load i64, i64* %PC.i358
  %4828 = add i64 %4827, 6
  store i64 %4828, i64* %PC.i358
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4830 = load i8, i8* %4829, align 1
  %4831 = icmp eq i8 %4830, 0
  %4832 = zext i1 %4831 to i8
  store i8 %4832, i8* %BRANCH_TAKEN, align 1
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4834 = select i1 %4831, i64 %4824, i64 %4826
  store i64 %4834, i64* %4833, align 8
  store %struct.Memory* %loadMem_412f8b, %struct.Memory** %MEMORY
  %loadBr_412f8b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412f8b = icmp eq i8 %loadBr_412f8b, 1
  br i1 %cmpBr_412f8b, label %block_.L_412fb7, label %block_412f91

block_412f91:                                     ; preds = %block_412f6e
  %loadMem_412f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4836 = getelementptr inbounds %struct.GPR, %struct.GPR* %4835, i32 0, i32 33
  %4837 = getelementptr inbounds %struct.Reg, %struct.Reg* %4836, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %4837 to i64*
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4839 = getelementptr inbounds %struct.GPR, %struct.GPR* %4838, i32 0, i32 1
  %4840 = getelementptr inbounds %struct.Reg, %struct.Reg* %4839, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %4840 to i64*
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4842 = getelementptr inbounds %struct.GPR, %struct.GPR* %4841, i32 0, i32 15
  %4843 = getelementptr inbounds %struct.Reg, %struct.Reg* %4842, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %4843 to i64*
  %4844 = load i64, i64* %RBP.i357
  %4845 = sub i64 %4844, 1000
  %4846 = load i64, i64* %PC.i355
  %4847 = add i64 %4846, 7
  store i64 %4847, i64* %PC.i355
  %4848 = inttoptr i64 %4845 to i64*
  %4849 = load i64, i64* %4848
  store i64 %4849, i64* %RAX.i356, align 8
  store %struct.Memory* %loadMem_412f91, %struct.Memory** %MEMORY
  %loadMem_412f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4851 = getelementptr inbounds %struct.GPR, %struct.GPR* %4850, i32 0, i32 33
  %4852 = getelementptr inbounds %struct.Reg, %struct.Reg* %4851, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %4852 to i64*
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4854 = getelementptr inbounds %struct.GPR, %struct.GPR* %4853, i32 0, i32 5
  %4855 = getelementptr inbounds %struct.Reg, %struct.Reg* %4854, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %4855 to i64*
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4857 = getelementptr inbounds %struct.GPR, %struct.GPR* %4856, i32 0, i32 15
  %4858 = getelementptr inbounds %struct.Reg, %struct.Reg* %4857, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %4858 to i64*
  %4859 = load i64, i64* %RBP.i354
  %4860 = sub i64 %4859, 1016
  %4861 = load i64, i64* %PC.i352
  %4862 = add i64 %4861, 7
  store i64 %4862, i64* %PC.i352
  %4863 = inttoptr i64 %4860 to i32*
  %4864 = load i32, i32* %4863
  %4865 = sext i32 %4864 to i64
  store i64 %4865, i64* %RCX.i353, align 8
  store %struct.Memory* %loadMem_412f98, %struct.Memory** %MEMORY
  %loadMem_412f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4867 = getelementptr inbounds %struct.GPR, %struct.GPR* %4866, i32 0, i32 33
  %4868 = getelementptr inbounds %struct.Reg, %struct.Reg* %4867, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %4868 to i64*
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4870 = getelementptr inbounds %struct.GPR, %struct.GPR* %4869, i32 0, i32 1
  %4871 = getelementptr inbounds %struct.Reg, %struct.Reg* %4870, i32 0, i32 0
  %RAX.i350 = bitcast %union.anon* %4871 to i64*
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4873 = getelementptr inbounds %struct.GPR, %struct.GPR* %4872, i32 0, i32 5
  %4874 = getelementptr inbounds %struct.Reg, %struct.Reg* %4873, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %4874 to i64*
  %4875 = load i64, i64* %RAX.i350
  %4876 = load i64, i64* %RCX.i351
  %4877 = mul i64 %4876, 4
  %4878 = add i64 %4877, %4875
  %4879 = load i64, i64* %PC.i349
  %4880 = add i64 %4879, 4
  store i64 %4880, i64* %PC.i349
  %4881 = inttoptr i64 %4878 to i32*
  %4882 = load i32, i32* %4881
  %4883 = sext i32 %4882 to i64
  store i64 %4883, i64* %RAX.i350, align 8
  store %struct.Memory* %loadMem_412f9f, %struct.Memory** %MEMORY
  %loadMem_412fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 33
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %4886 to i64*
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4888 = getelementptr inbounds %struct.GPR, %struct.GPR* %4887, i32 0, i32 1
  %4889 = getelementptr inbounds %struct.Reg, %struct.Reg* %4888, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %4889 to i64*
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4891 = getelementptr inbounds %struct.GPR, %struct.GPR* %4890, i32 0, i32 7
  %4892 = getelementptr inbounds %struct.Reg, %struct.Reg* %4891, i32 0, i32 0
  %RDX.i348 = bitcast %union.anon* %4892 to i64*
  %4893 = load i64, i64* %RAX.i347
  %4894 = mul i64 %4893, 4
  %4895 = add i64 %4894, 11185584
  %4896 = load i64, i64* %PC.i346
  %4897 = add i64 %4896, 7
  store i64 %4897, i64* %PC.i346
  %4898 = inttoptr i64 %4895 to i32*
  %4899 = load i32, i32* %4898
  %4900 = zext i32 %4899 to i64
  store i64 %4900, i64* %RDX.i348, align 8
  store %struct.Memory* %loadMem_412fa3, %struct.Memory** %MEMORY
  %loadMem_412faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4902 = getelementptr inbounds %struct.GPR, %struct.GPR* %4901, i32 0, i32 33
  %4903 = getelementptr inbounds %struct.Reg, %struct.Reg* %4902, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %4903 to i64*
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4905 = getelementptr inbounds %struct.GPR, %struct.GPR* %4904, i32 0, i32 7
  %4906 = getelementptr inbounds %struct.Reg, %struct.Reg* %4905, i32 0, i32 0
  %EDX.i345 = bitcast %union.anon* %4906 to i32*
  %4907 = load i32, i32* %EDX.i345
  %4908 = zext i32 %4907 to i64
  %4909 = load i64, i64* %PC.i344
  %4910 = add i64 %4909, 7
  store i64 %4910, i64* %PC.i344
  %4911 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %4912 = sub i32 %4907, %4911
  %4913 = icmp ult i32 %4907, %4911
  %4914 = zext i1 %4913 to i8
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4914, i8* %4915, align 1
  %4916 = and i32 %4912, 255
  %4917 = call i32 @llvm.ctpop.i32(i32 %4916)
  %4918 = trunc i32 %4917 to i8
  %4919 = and i8 %4918, 1
  %4920 = xor i8 %4919, 1
  %4921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4920, i8* %4921, align 1
  %4922 = xor i32 %4911, %4907
  %4923 = xor i32 %4922, %4912
  %4924 = lshr i32 %4923, 4
  %4925 = trunc i32 %4924 to i8
  %4926 = and i8 %4925, 1
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4926, i8* %4927, align 1
  %4928 = icmp eq i32 %4912, 0
  %4929 = zext i1 %4928 to i8
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4929, i8* %4930, align 1
  %4931 = lshr i32 %4912, 31
  %4932 = trunc i32 %4931 to i8
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4932, i8* %4933, align 1
  %4934 = lshr i32 %4907, 31
  %4935 = lshr i32 %4911, 31
  %4936 = xor i32 %4935, %4934
  %4937 = xor i32 %4931, %4934
  %4938 = add i32 %4937, %4936
  %4939 = icmp eq i32 %4938, 2
  %4940 = zext i1 %4939 to i8
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4940, i8* %4941, align 1
  store %struct.Memory* %loadMem_412faa, %struct.Memory** %MEMORY
  %loadMem_412fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4943 = getelementptr inbounds %struct.GPR, %struct.GPR* %4942, i32 0, i32 33
  %4944 = getelementptr inbounds %struct.Reg, %struct.Reg* %4943, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %4944 to i64*
  %4945 = load i64, i64* %PC.i343
  %4946 = add i64 %4945, 67
  %4947 = load i64, i64* %PC.i343
  %4948 = add i64 %4947, 6
  %4949 = load i64, i64* %PC.i343
  %4950 = add i64 %4949, 6
  store i64 %4950, i64* %PC.i343
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4952 = load i8, i8* %4951, align 1
  %4953 = icmp eq i8 %4952, 0
  %4954 = zext i1 %4953 to i8
  store i8 %4954, i8* %BRANCH_TAKEN, align 1
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4956 = select i1 %4953, i64 %4946, i64 %4948
  store i64 %4956, i64* %4955, align 8
  store %struct.Memory* %loadMem_412fb1, %struct.Memory** %MEMORY
  %loadBr_412fb1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412fb1 = icmp eq i8 %loadBr_412fb1, 1
  br i1 %cmpBr_412fb1, label %block_.L_412ff4, label %block_.L_412fb7

block_.L_412fb7:                                  ; preds = %block_412f91, %block_412f6e
  %loadMem_412fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 33
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %4959 to i64*
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4961 = getelementptr inbounds %struct.GPR, %struct.GPR* %4960, i32 0, i32 1
  %4962 = getelementptr inbounds %struct.Reg, %struct.Reg* %4961, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %4962 to i64*
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 15
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %4965 to i64*
  %4966 = load i64, i64* %RBP.i342
  %4967 = sub i64 %4966, 1012
  %4968 = load i64, i64* %PC.i340
  %4969 = add i64 %4968, 6
  store i64 %4969, i64* %PC.i340
  %4970 = inttoptr i64 %4967 to i32*
  %4971 = load i32, i32* %4970
  %4972 = zext i32 %4971 to i64
  store i64 %4972, i64* %RAX.i341, align 8
  store %struct.Memory* %loadMem_412fb7, %struct.Memory** %MEMORY
  %loadMem_412fbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4974 = getelementptr inbounds %struct.GPR, %struct.GPR* %4973, i32 0, i32 33
  %4975 = getelementptr inbounds %struct.Reg, %struct.Reg* %4974, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %4975 to i64*
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4977 = getelementptr inbounds %struct.GPR, %struct.GPR* %4976, i32 0, i32 1
  %4978 = getelementptr inbounds %struct.Reg, %struct.Reg* %4977, i32 0, i32 0
  %EAX.i338 = bitcast %union.anon* %4978 to i32*
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4980 = getelementptr inbounds %struct.GPR, %struct.GPR* %4979, i32 0, i32 15
  %4981 = getelementptr inbounds %struct.Reg, %struct.Reg* %4980, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %4981 to i64*
  %4982 = load i32, i32* %EAX.i338
  %4983 = zext i32 %4982 to i64
  %4984 = load i64, i64* %RBP.i339
  %4985 = sub i64 %4984, 16
  %4986 = load i64, i64* %PC.i337
  %4987 = add i64 %4986, 3
  store i64 %4987, i64* %PC.i337
  %4988 = inttoptr i64 %4985 to i32*
  %4989 = load i32, i32* %4988
  %4990 = sub i32 %4982, %4989
  %4991 = icmp ult i32 %4982, %4989
  %4992 = zext i1 %4991 to i8
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4992, i8* %4993, align 1
  %4994 = and i32 %4990, 255
  %4995 = call i32 @llvm.ctpop.i32(i32 %4994)
  %4996 = trunc i32 %4995 to i8
  %4997 = and i8 %4996, 1
  %4998 = xor i8 %4997, 1
  %4999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4998, i8* %4999, align 1
  %5000 = xor i32 %4989, %4982
  %5001 = xor i32 %5000, %4990
  %5002 = lshr i32 %5001, 4
  %5003 = trunc i32 %5002 to i8
  %5004 = and i8 %5003, 1
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5004, i8* %5005, align 1
  %5006 = icmp eq i32 %4990, 0
  %5007 = zext i1 %5006 to i8
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5007, i8* %5008, align 1
  %5009 = lshr i32 %4990, 31
  %5010 = trunc i32 %5009 to i8
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5010, i8* %5011, align 1
  %5012 = lshr i32 %4982, 31
  %5013 = lshr i32 %4989, 31
  %5014 = xor i32 %5013, %5012
  %5015 = xor i32 %5009, %5012
  %5016 = add i32 %5015, %5014
  %5017 = icmp eq i32 %5016, 2
  %5018 = zext i1 %5017 to i8
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5018, i8* %5019, align 1
  store %struct.Memory* %loadMem_412fbd, %struct.Memory** %MEMORY
  %loadMem_412fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5021 = getelementptr inbounds %struct.GPR, %struct.GPR* %5020, i32 0, i32 33
  %5022 = getelementptr inbounds %struct.Reg, %struct.Reg* %5021, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %5022 to i64*
  %5023 = load i64, i64* %PC.i336
  %5024 = add i64 %5023, 37
  %5025 = load i64, i64* %PC.i336
  %5026 = add i64 %5025, 6
  %5027 = load i64, i64* %PC.i336
  %5028 = add i64 %5027, 6
  store i64 %5028, i64* %PC.i336
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5030 = load i8, i8* %5029, align 1
  %5031 = icmp ne i8 %5030, 0
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5033 = load i8, i8* %5032, align 1
  %5034 = icmp ne i8 %5033, 0
  %5035 = xor i1 %5031, %5034
  %5036 = xor i1 %5035, true
  %5037 = zext i1 %5036 to i8
  store i8 %5037, i8* %BRANCH_TAKEN, align 1
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5039 = select i1 %5035, i64 %5026, i64 %5024
  store i64 %5039, i64* %5038, align 8
  store %struct.Memory* %loadMem_412fc0, %struct.Memory** %MEMORY
  %loadBr_412fc0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412fc0 = icmp eq i8 %loadBr_412fc0, 1
  br i1 %cmpBr_412fc0, label %block_.L_412fe5, label %block_412fc6

block_412fc6:                                     ; preds = %block_.L_412fb7
  %loadMem_412fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 33
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %5042 to i64*
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 1
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %5045 to i64*
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 15
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %5048 to i64*
  %5049 = load i64, i64* %RBP.i335
  %5050 = sub i64 %5049, 1000
  %5051 = load i64, i64* %PC.i333
  %5052 = add i64 %5051, 7
  store i64 %5052, i64* %PC.i333
  %5053 = inttoptr i64 %5050 to i64*
  %5054 = load i64, i64* %5053
  store i64 %5054, i64* %RAX.i334, align 8
  store %struct.Memory* %loadMem_412fc6, %struct.Memory** %MEMORY
  %loadMem_412fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5056 = getelementptr inbounds %struct.GPR, %struct.GPR* %5055, i32 0, i32 33
  %5057 = getelementptr inbounds %struct.Reg, %struct.Reg* %5056, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %5057 to i64*
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5059 = getelementptr inbounds %struct.GPR, %struct.GPR* %5058, i32 0, i32 5
  %5060 = getelementptr inbounds %struct.Reg, %struct.Reg* %5059, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %5060 to i64*
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5062 = getelementptr inbounds %struct.GPR, %struct.GPR* %5061, i32 0, i32 15
  %5063 = getelementptr inbounds %struct.Reg, %struct.Reg* %5062, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %5063 to i64*
  %5064 = load i64, i64* %RBP.i332
  %5065 = sub i64 %5064, 1016
  %5066 = load i64, i64* %PC.i330
  %5067 = add i64 %5066, 7
  store i64 %5067, i64* %PC.i330
  %5068 = inttoptr i64 %5065 to i32*
  %5069 = load i32, i32* %5068
  %5070 = sext i32 %5069 to i64
  store i64 %5070, i64* %RCX.i331, align 8
  store %struct.Memory* %loadMem_412fcd, %struct.Memory** %MEMORY
  %loadMem_412fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 33
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %5073 to i64*
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 1
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %5076 to i64*
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 5
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %RCX.i328 = bitcast %union.anon* %5079 to i64*
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 7
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %RDX.i329 = bitcast %union.anon* %5082 to i64*
  %5083 = load i64, i64* %RAX.i327
  %5084 = load i64, i64* %RCX.i328
  %5085 = mul i64 %5084, 4
  %5086 = add i64 %5085, %5083
  %5087 = load i64, i64* %PC.i326
  %5088 = add i64 %5087, 3
  store i64 %5088, i64* %PC.i326
  %5089 = inttoptr i64 %5086 to i32*
  %5090 = load i32, i32* %5089
  %5091 = zext i32 %5090 to i64
  store i64 %5091, i64* %RDX.i329, align 8
  store %struct.Memory* %loadMem_412fd4, %struct.Memory** %MEMORY
  %loadMem_412fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5093 = getelementptr inbounds %struct.GPR, %struct.GPR* %5092, i32 0, i32 33
  %5094 = getelementptr inbounds %struct.Reg, %struct.Reg* %5093, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %5094 to i64*
  %5095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5096 = getelementptr inbounds %struct.GPR, %struct.GPR* %5095, i32 0, i32 1
  %5097 = getelementptr inbounds %struct.Reg, %struct.Reg* %5096, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %5097 to i64*
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5099 = getelementptr inbounds %struct.GPR, %struct.GPR* %5098, i32 0, i32 15
  %5100 = getelementptr inbounds %struct.Reg, %struct.Reg* %5099, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %5100 to i64*
  %5101 = load i64, i64* %RBP.i325
  %5102 = sub i64 %5101, 24
  %5103 = load i64, i64* %PC.i323
  %5104 = add i64 %5103, 4
  store i64 %5104, i64* %PC.i323
  %5105 = inttoptr i64 %5102 to i64*
  %5106 = load i64, i64* %5105
  store i64 %5106, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_412fd7, %struct.Memory** %MEMORY
  %loadMem_412fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 33
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %5109 to i64*
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5111 = getelementptr inbounds %struct.GPR, %struct.GPR* %5110, i32 0, i32 5
  %5112 = getelementptr inbounds %struct.Reg, %struct.Reg* %5111, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %5112 to i64*
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5114 = getelementptr inbounds %struct.GPR, %struct.GPR* %5113, i32 0, i32 15
  %5115 = getelementptr inbounds %struct.Reg, %struct.Reg* %5114, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %5115 to i64*
  %5116 = load i64, i64* %RBP.i322
  %5117 = sub i64 %5116, 1012
  %5118 = load i64, i64* %PC.i320
  %5119 = add i64 %5118, 7
  store i64 %5119, i64* %PC.i320
  %5120 = inttoptr i64 %5117 to i32*
  %5121 = load i32, i32* %5120
  %5122 = sext i32 %5121 to i64
  store i64 %5122, i64* %RCX.i321, align 8
  store %struct.Memory* %loadMem_412fdb, %struct.Memory** %MEMORY
  %loadMem_412fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5124 = getelementptr inbounds %struct.GPR, %struct.GPR* %5123, i32 0, i32 33
  %5125 = getelementptr inbounds %struct.Reg, %struct.Reg* %5124, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %5125 to i64*
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5127 = getelementptr inbounds %struct.GPR, %struct.GPR* %5126, i32 0, i32 7
  %5128 = getelementptr inbounds %struct.Reg, %struct.Reg* %5127, i32 0, i32 0
  %EDX.i317 = bitcast %union.anon* %5128 to i32*
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5130 = getelementptr inbounds %struct.GPR, %struct.GPR* %5129, i32 0, i32 1
  %5131 = getelementptr inbounds %struct.Reg, %struct.Reg* %5130, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %5131 to i64*
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5133 = getelementptr inbounds %struct.GPR, %struct.GPR* %5132, i32 0, i32 5
  %5134 = getelementptr inbounds %struct.Reg, %struct.Reg* %5133, i32 0, i32 0
  %RCX.i319 = bitcast %union.anon* %5134 to i64*
  %5135 = load i64, i64* %RAX.i318
  %5136 = load i64, i64* %RCX.i319
  %5137 = mul i64 %5136, 4
  %5138 = add i64 %5137, %5135
  %5139 = load i32, i32* %EDX.i317
  %5140 = zext i32 %5139 to i64
  %5141 = load i64, i64* %PC.i316
  %5142 = add i64 %5141, 3
  store i64 %5142, i64* %PC.i316
  %5143 = inttoptr i64 %5138 to i32*
  store i32 %5139, i32* %5143
  store %struct.Memory* %loadMem_412fe2, %struct.Memory** %MEMORY
  br label %block_.L_412fe5

block_.L_412fe5:                                  ; preds = %block_412fc6, %block_.L_412fb7
  %loadMem_412fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5145 = getelementptr inbounds %struct.GPR, %struct.GPR* %5144, i32 0, i32 33
  %5146 = getelementptr inbounds %struct.Reg, %struct.Reg* %5145, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %5146 to i64*
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5148 = getelementptr inbounds %struct.GPR, %struct.GPR* %5147, i32 0, i32 1
  %5149 = getelementptr inbounds %struct.Reg, %struct.Reg* %5148, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %5149 to i64*
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5151 = getelementptr inbounds %struct.GPR, %struct.GPR* %5150, i32 0, i32 15
  %5152 = getelementptr inbounds %struct.Reg, %struct.Reg* %5151, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %5152 to i64*
  %5153 = load i64, i64* %RBP.i315
  %5154 = sub i64 %5153, 1012
  %5155 = load i64, i64* %PC.i313
  %5156 = add i64 %5155, 6
  store i64 %5156, i64* %PC.i313
  %5157 = inttoptr i64 %5154 to i32*
  %5158 = load i32, i32* %5157
  %5159 = zext i32 %5158 to i64
  store i64 %5159, i64* %RAX.i314, align 8
  store %struct.Memory* %loadMem_412fe5, %struct.Memory** %MEMORY
  %loadMem_412feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5161 = getelementptr inbounds %struct.GPR, %struct.GPR* %5160, i32 0, i32 33
  %5162 = getelementptr inbounds %struct.Reg, %struct.Reg* %5161, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %5162 to i64*
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5164 = getelementptr inbounds %struct.GPR, %struct.GPR* %5163, i32 0, i32 1
  %5165 = getelementptr inbounds %struct.Reg, %struct.Reg* %5164, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %5165 to i64*
  %5166 = load i64, i64* %RAX.i312
  %5167 = load i64, i64* %PC.i311
  %5168 = add i64 %5167, 3
  store i64 %5168, i64* %PC.i311
  %5169 = trunc i64 %5166 to i32
  %5170 = add i32 1, %5169
  %5171 = zext i32 %5170 to i64
  store i64 %5171, i64* %RAX.i312, align 8
  %5172 = icmp ult i32 %5170, %5169
  %5173 = icmp ult i32 %5170, 1
  %5174 = or i1 %5172, %5173
  %5175 = zext i1 %5174 to i8
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5175, i8* %5176, align 1
  %5177 = and i32 %5170, 255
  %5178 = call i32 @llvm.ctpop.i32(i32 %5177)
  %5179 = trunc i32 %5178 to i8
  %5180 = and i8 %5179, 1
  %5181 = xor i8 %5180, 1
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5181, i8* %5182, align 1
  %5183 = xor i64 1, %5166
  %5184 = trunc i64 %5183 to i32
  %5185 = xor i32 %5184, %5170
  %5186 = lshr i32 %5185, 4
  %5187 = trunc i32 %5186 to i8
  %5188 = and i8 %5187, 1
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5188, i8* %5189, align 1
  %5190 = icmp eq i32 %5170, 0
  %5191 = zext i1 %5190 to i8
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5191, i8* %5192, align 1
  %5193 = lshr i32 %5170, 31
  %5194 = trunc i32 %5193 to i8
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5194, i8* %5195, align 1
  %5196 = lshr i32 %5169, 31
  %5197 = xor i32 %5193, %5196
  %5198 = add i32 %5197, %5193
  %5199 = icmp eq i32 %5198, 2
  %5200 = zext i1 %5199 to i8
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5200, i8* %5201, align 1
  store %struct.Memory* %loadMem_412feb, %struct.Memory** %MEMORY
  %loadMem_412fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5203 = getelementptr inbounds %struct.GPR, %struct.GPR* %5202, i32 0, i32 33
  %5204 = getelementptr inbounds %struct.Reg, %struct.Reg* %5203, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %5204 to i64*
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5206 = getelementptr inbounds %struct.GPR, %struct.GPR* %5205, i32 0, i32 1
  %5207 = getelementptr inbounds %struct.Reg, %struct.Reg* %5206, i32 0, i32 0
  %EAX.i309 = bitcast %union.anon* %5207 to i32*
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5209 = getelementptr inbounds %struct.GPR, %struct.GPR* %5208, i32 0, i32 15
  %5210 = getelementptr inbounds %struct.Reg, %struct.Reg* %5209, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %5210 to i64*
  %5211 = load i64, i64* %RBP.i310
  %5212 = sub i64 %5211, 1012
  %5213 = load i32, i32* %EAX.i309
  %5214 = zext i32 %5213 to i64
  %5215 = load i64, i64* %PC.i308
  %5216 = add i64 %5215, 6
  store i64 %5216, i64* %PC.i308
  %5217 = inttoptr i64 %5212 to i32*
  store i32 %5213, i32* %5217
  store %struct.Memory* %loadMem_412fee, %struct.Memory** %MEMORY
  br label %block_.L_412ff4

block_.L_412ff4:                                  ; preds = %block_.L_412fe5, %block_412f91
  %loadMem_412ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5219 = getelementptr inbounds %struct.GPR, %struct.GPR* %5218, i32 0, i32 33
  %5220 = getelementptr inbounds %struct.Reg, %struct.Reg* %5219, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %5220 to i64*
  %5221 = load i64, i64* %PC.i307
  %5222 = add i64 %5221, 5
  %5223 = load i64, i64* %PC.i307
  %5224 = add i64 %5223, 5
  store i64 %5224, i64* %PC.i307
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5222, i64* %5225, align 8
  store %struct.Memory* %loadMem_412ff4, %struct.Memory** %MEMORY
  br label %block_.L_412ff9

block_.L_412ff9:                                  ; preds = %block_.L_412ff4
  %loadMem_412ff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5227 = getelementptr inbounds %struct.GPR, %struct.GPR* %5226, i32 0, i32 33
  %5228 = getelementptr inbounds %struct.Reg, %struct.Reg* %5227, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %5228 to i64*
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5230 = getelementptr inbounds %struct.GPR, %struct.GPR* %5229, i32 0, i32 1
  %5231 = getelementptr inbounds %struct.Reg, %struct.Reg* %5230, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %5231 to i64*
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5233 = getelementptr inbounds %struct.GPR, %struct.GPR* %5232, i32 0, i32 15
  %5234 = getelementptr inbounds %struct.Reg, %struct.Reg* %5233, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %5234 to i64*
  %5235 = load i64, i64* %RBP.i306
  %5236 = sub i64 %5235, 1016
  %5237 = load i64, i64* %PC.i304
  %5238 = add i64 %5237, 6
  store i64 %5238, i64* %PC.i304
  %5239 = inttoptr i64 %5236 to i32*
  %5240 = load i32, i32* %5239
  %5241 = zext i32 %5240 to i64
  store i64 %5241, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_412ff9, %struct.Memory** %MEMORY
  %loadMem_412fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5243 = getelementptr inbounds %struct.GPR, %struct.GPR* %5242, i32 0, i32 33
  %5244 = getelementptr inbounds %struct.Reg, %struct.Reg* %5243, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %5244 to i64*
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5246 = getelementptr inbounds %struct.GPR, %struct.GPR* %5245, i32 0, i32 1
  %5247 = getelementptr inbounds %struct.Reg, %struct.Reg* %5246, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %5247 to i64*
  %5248 = load i64, i64* %RAX.i303
  %5249 = load i64, i64* %PC.i302
  %5250 = add i64 %5249, 3
  store i64 %5250, i64* %PC.i302
  %5251 = trunc i64 %5248 to i32
  %5252 = add i32 1, %5251
  %5253 = zext i32 %5252 to i64
  store i64 %5253, i64* %RAX.i303, align 8
  %5254 = icmp ult i32 %5252, %5251
  %5255 = icmp ult i32 %5252, 1
  %5256 = or i1 %5254, %5255
  %5257 = zext i1 %5256 to i8
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5257, i8* %5258, align 1
  %5259 = and i32 %5252, 255
  %5260 = call i32 @llvm.ctpop.i32(i32 %5259)
  %5261 = trunc i32 %5260 to i8
  %5262 = and i8 %5261, 1
  %5263 = xor i8 %5262, 1
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5263, i8* %5264, align 1
  %5265 = xor i64 1, %5248
  %5266 = trunc i64 %5265 to i32
  %5267 = xor i32 %5266, %5252
  %5268 = lshr i32 %5267, 4
  %5269 = trunc i32 %5268 to i8
  %5270 = and i8 %5269, 1
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5270, i8* %5271, align 1
  %5272 = icmp eq i32 %5252, 0
  %5273 = zext i1 %5272 to i8
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5273, i8* %5274, align 1
  %5275 = lshr i32 %5252, 31
  %5276 = trunc i32 %5275 to i8
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5276, i8* %5277, align 1
  %5278 = lshr i32 %5251, 31
  %5279 = xor i32 %5275, %5278
  %5280 = add i32 %5279, %5275
  %5281 = icmp eq i32 %5280, 2
  %5282 = zext i1 %5281 to i8
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5282, i8* %5283, align 1
  store %struct.Memory* %loadMem_412fff, %struct.Memory** %MEMORY
  %loadMem_413002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5285 = getelementptr inbounds %struct.GPR, %struct.GPR* %5284, i32 0, i32 33
  %5286 = getelementptr inbounds %struct.Reg, %struct.Reg* %5285, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %5286 to i64*
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 1
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %EAX.i300 = bitcast %union.anon* %5289 to i32*
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 15
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %5292 to i64*
  %5293 = load i64, i64* %RBP.i301
  %5294 = sub i64 %5293, 1016
  %5295 = load i32, i32* %EAX.i300
  %5296 = zext i32 %5295 to i64
  %5297 = load i64, i64* %PC.i299
  %5298 = add i64 %5297, 6
  store i64 %5298, i64* %PC.i299
  %5299 = inttoptr i64 %5294 to i32*
  store i32 %5295, i32* %5299
  store %struct.Memory* %loadMem_413002, %struct.Memory** %MEMORY
  %loadMem_413008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5301 = getelementptr inbounds %struct.GPR, %struct.GPR* %5300, i32 0, i32 33
  %5302 = getelementptr inbounds %struct.Reg, %struct.Reg* %5301, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %5302 to i64*
  %5303 = load i64, i64* %PC.i298
  %5304 = add i64 %5303, -172
  %5305 = load i64, i64* %PC.i298
  %5306 = add i64 %5305, 5
  store i64 %5306, i64* %PC.i298
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5304, i64* %5307, align 8
  store %struct.Memory* %loadMem_413008, %struct.Memory** %MEMORY
  br label %block_.L_412f5c

block_.L_41300d:                                  ; preds = %block_.L_412f5c
  %loadMem_41300d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5309 = getelementptr inbounds %struct.GPR, %struct.GPR* %5308, i32 0, i32 33
  %5310 = getelementptr inbounds %struct.Reg, %struct.Reg* %5309, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %5310 to i64*
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5312 = getelementptr inbounds %struct.GPR, %struct.GPR* %5311, i32 0, i32 1
  %5313 = getelementptr inbounds %struct.Reg, %struct.Reg* %5312, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %5313 to i64*
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5315 = getelementptr inbounds %struct.GPR, %struct.GPR* %5314, i32 0, i32 15
  %5316 = getelementptr inbounds %struct.Reg, %struct.Reg* %5315, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %5316 to i64*
  %5317 = load i64, i64* %RBP.i297
  %5318 = sub i64 %5317, 1012
  %5319 = load i64, i64* %PC.i295
  %5320 = add i64 %5319, 6
  store i64 %5320, i64* %PC.i295
  %5321 = inttoptr i64 %5318 to i32*
  %5322 = load i32, i32* %5321
  %5323 = zext i32 %5322 to i64
  store i64 %5323, i64* %RAX.i296, align 8
  store %struct.Memory* %loadMem_41300d, %struct.Memory** %MEMORY
  %loadMem_413013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5325 = getelementptr inbounds %struct.GPR, %struct.GPR* %5324, i32 0, i32 33
  %5326 = getelementptr inbounds %struct.Reg, %struct.Reg* %5325, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %5326 to i64*
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5328 = getelementptr inbounds %struct.GPR, %struct.GPR* %5327, i32 0, i32 1
  %5329 = getelementptr inbounds %struct.Reg, %struct.Reg* %5328, i32 0, i32 0
  %EAX.i293 = bitcast %union.anon* %5329 to i32*
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5331 = getelementptr inbounds %struct.GPR, %struct.GPR* %5330, i32 0, i32 15
  %5332 = getelementptr inbounds %struct.Reg, %struct.Reg* %5331, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %5332 to i64*
  %5333 = load i64, i64* %RBP.i294
  %5334 = sub i64 %5333, 4
  %5335 = load i32, i32* %EAX.i293
  %5336 = zext i32 %5335 to i64
  %5337 = load i64, i64* %PC.i292
  %5338 = add i64 %5337, 3
  store i64 %5338, i64* %PC.i292
  %5339 = inttoptr i64 %5334 to i32*
  store i32 %5335, i32* %5339
  store %struct.Memory* %loadMem_413013, %struct.Memory** %MEMORY
  %loadMem_413016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5341 = getelementptr inbounds %struct.GPR, %struct.GPR* %5340, i32 0, i32 33
  %5342 = getelementptr inbounds %struct.Reg, %struct.Reg* %5341, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %5342 to i64*
  %5343 = load i64, i64* %PC.i291
  %5344 = add i64 %5343, 565
  %5345 = load i64, i64* %PC.i291
  %5346 = add i64 %5345, 5
  store i64 %5346, i64* %PC.i291
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5344, i64* %5347, align 8
  store %struct.Memory* %loadMem_413016, %struct.Memory** %MEMORY
  br label %block_.L_41324b

block_.L_41301b:                                  ; preds = %block_412e6a
  %loadMem_41301b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5349 = getelementptr inbounds %struct.GPR, %struct.GPR* %5348, i32 0, i32 33
  %5350 = getelementptr inbounds %struct.Reg, %struct.Reg* %5349, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %5350 to i64*
  %5351 = load i64, i64* %PC.i290
  %5352 = add i64 %5351, 45
  %5353 = load i64, i64* %PC.i290
  %5354 = add i64 %5353, 5
  store i64 %5354, i64* %PC.i290
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5352, i64* %5355, align 8
  store %struct.Memory* %loadMem_41301b, %struct.Memory** %MEMORY
  br label %block_.L_413048

block_.L_413020:                                  ; preds = %block_.L_412e5d
  %loadMem_413020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5357 = getelementptr inbounds %struct.GPR, %struct.GPR* %5356, i32 0, i32 33
  %5358 = getelementptr inbounds %struct.Reg, %struct.Reg* %5357, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %5358 to i64*
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5360 = getelementptr inbounds %struct.GPR, %struct.GPR* %5359, i32 0, i32 9
  %5361 = getelementptr inbounds %struct.Reg, %struct.Reg* %5360, i32 0, i32 0
  %RSI.i289 = bitcast %union.anon* %5361 to i64*
  %5362 = load i64, i64* %PC.i288
  %5363 = add i64 %5362, 5
  store i64 %5363, i64* %PC.i288
  store i64 241, i64* %RSI.i289, align 8
  store %struct.Memory* %loadMem_413020, %struct.Memory** %MEMORY
  %loadMem_413025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5365 = getelementptr inbounds %struct.GPR, %struct.GPR* %5364, i32 0, i32 33
  %5366 = getelementptr inbounds %struct.Reg, %struct.Reg* %5365, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %5366 to i64*
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5368 = getelementptr inbounds %struct.GPR, %struct.GPR* %5367, i32 0, i32 7
  %5369 = getelementptr inbounds %struct.Reg, %struct.Reg* %5368, i32 0, i32 0
  %RDX.i286 = bitcast %union.anon* %5369 to i64*
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5371 = getelementptr inbounds %struct.GPR, %struct.GPR* %5370, i32 0, i32 15
  %5372 = getelementptr inbounds %struct.Reg, %struct.Reg* %5371, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %5372 to i64*
  %5373 = load i64, i64* %RBP.i287
  %5374 = sub i64 %5373, 992
  %5375 = load i64, i64* %PC.i285
  %5376 = add i64 %5375, 7
  store i64 %5376, i64* %PC.i285
  store i64 %5374, i64* %RDX.i286, align 8
  store %struct.Memory* %loadMem_413025, %struct.Memory** %MEMORY
  %loadMem_41302c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5378 = getelementptr inbounds %struct.GPR, %struct.GPR* %5377, i32 0, i32 33
  %5379 = getelementptr inbounds %struct.Reg, %struct.Reg* %5378, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %5379 to i64*
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5381 = getelementptr inbounds %struct.GPR, %struct.GPR* %5380, i32 0, i32 11
  %5382 = getelementptr inbounds %struct.Reg, %struct.Reg* %5381, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5382 to i64*
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5384 = getelementptr inbounds %struct.GPR, %struct.GPR* %5383, i32 0, i32 15
  %5385 = getelementptr inbounds %struct.Reg, %struct.Reg* %5384, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %5385 to i64*
  %5386 = load i64, i64* %RBP.i284
  %5387 = sub i64 %5386, 8
  %5388 = load i64, i64* %PC.i283
  %5389 = add i64 %5388, 3
  store i64 %5389, i64* %PC.i283
  %5390 = inttoptr i64 %5387 to i32*
  %5391 = load i32, i32* %5390
  %5392 = zext i32 %5391 to i64
  store i64 %5392, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_41302c, %struct.Memory** %MEMORY
  %loadMem1_41302f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5394 = getelementptr inbounds %struct.GPR, %struct.GPR* %5393, i32 0, i32 33
  %5395 = getelementptr inbounds %struct.Reg, %struct.Reg* %5394, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %5395 to i64*
  %5396 = load i64, i64* %PC.i282
  %5397 = add i64 %5396, -14319
  %5398 = load i64, i64* %PC.i282
  %5399 = add i64 %5398, 5
  %5400 = load i64, i64* %PC.i282
  %5401 = add i64 %5400, 5
  store i64 %5401, i64* %PC.i282
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5403 = load i64, i64* %5402, align 8
  %5404 = add i64 %5403, -8
  %5405 = inttoptr i64 %5404 to i64*
  store i64 %5399, i64* %5405
  store i64 %5404, i64* %5402, align 8
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5397, i64* %5406, align 8
  store %struct.Memory* %loadMem1_41302f, %struct.Memory** %MEMORY
  %loadMem2_41302f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41302f = load i64, i64* %3
  %call2_41302f = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_41302f, %struct.Memory* %loadMem2_41302f)
  store %struct.Memory* %call2_41302f, %struct.Memory** %MEMORY
  %loadMem_413034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5408 = getelementptr inbounds %struct.GPR, %struct.GPR* %5407, i32 0, i32 33
  %5409 = getelementptr inbounds %struct.Reg, %struct.Reg* %5408, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %5409 to i64*
  %5410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5411 = getelementptr inbounds %struct.GPR, %struct.GPR* %5410, i32 0, i32 7
  %5412 = getelementptr inbounds %struct.Reg, %struct.Reg* %5411, i32 0, i32 0
  %RDX.i280 = bitcast %union.anon* %5412 to i64*
  %5413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5414 = getelementptr inbounds %struct.GPR, %struct.GPR* %5413, i32 0, i32 15
  %5415 = getelementptr inbounds %struct.Reg, %struct.Reg* %5414, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %5415 to i64*
  %5416 = load i64, i64* %RBP.i281
  %5417 = sub i64 %5416, 992
  %5418 = load i64, i64* %PC.i279
  %5419 = add i64 %5418, 7
  store i64 %5419, i64* %PC.i279
  store i64 %5417, i64* %RDX.i280, align 8
  store %struct.Memory* %loadMem_413034, %struct.Memory** %MEMORY
  %loadMem_41303b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5421 = getelementptr inbounds %struct.GPR, %struct.GPR* %5420, i32 0, i32 33
  %5422 = getelementptr inbounds %struct.Reg, %struct.Reg* %5421, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %5422 to i64*
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5424 = getelementptr inbounds %struct.GPR, %struct.GPR* %5423, i32 0, i32 7
  %5425 = getelementptr inbounds %struct.Reg, %struct.Reg* %5424, i32 0, i32 0
  %RDX.i277 = bitcast %union.anon* %5425 to i64*
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5427 = getelementptr inbounds %struct.GPR, %struct.GPR* %5426, i32 0, i32 15
  %5428 = getelementptr inbounds %struct.Reg, %struct.Reg* %5427, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %5428 to i64*
  %5429 = load i64, i64* %RBP.i278
  %5430 = sub i64 %5429, 1000
  %5431 = load i64, i64* %RDX.i277
  %5432 = load i64, i64* %PC.i276
  %5433 = add i64 %5432, 7
  store i64 %5433, i64* %PC.i276
  %5434 = inttoptr i64 %5430 to i64*
  store i64 %5431, i64* %5434
  store %struct.Memory* %loadMem_41303b, %struct.Memory** %MEMORY
  %loadMem_413042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5436 = getelementptr inbounds %struct.GPR, %struct.GPR* %5435, i32 0, i32 33
  %5437 = getelementptr inbounds %struct.Reg, %struct.Reg* %5436, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %5437 to i64*
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5439 = getelementptr inbounds %struct.GPR, %struct.GPR* %5438, i32 0, i32 1
  %5440 = getelementptr inbounds %struct.Reg, %struct.Reg* %5439, i32 0, i32 0
  %EAX.i274 = bitcast %union.anon* %5440 to i32*
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5442 = getelementptr inbounds %struct.GPR, %struct.GPR* %5441, i32 0, i32 15
  %5443 = getelementptr inbounds %struct.Reg, %struct.Reg* %5442, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %5443 to i64*
  %5444 = load i64, i64* %RBP.i275
  %5445 = sub i64 %5444, 1148
  %5446 = load i32, i32* %EAX.i274
  %5447 = zext i32 %5446 to i64
  %5448 = load i64, i64* %PC.i273
  %5449 = add i64 %5448, 6
  store i64 %5449, i64* %PC.i273
  %5450 = inttoptr i64 %5445 to i32*
  store i32 %5446, i32* %5450
  store %struct.Memory* %loadMem_413042, %struct.Memory** %MEMORY
  br label %block_.L_413048

block_.L_413048:                                  ; preds = %block_.L_413020, %block_.L_41301b
  %loadMem_413048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5452 = getelementptr inbounds %struct.GPR, %struct.GPR* %5451, i32 0, i32 33
  %5453 = getelementptr inbounds %struct.Reg, %struct.Reg* %5452, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %5453 to i64*
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5455 = getelementptr inbounds %struct.GPR, %struct.GPR* %5454, i32 0, i32 15
  %5456 = getelementptr inbounds %struct.Reg, %struct.Reg* %5455, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %5456 to i64*
  %5457 = load i64, i64* %RBP.i272
  %5458 = sub i64 %5457, 1016
  %5459 = load i64, i64* %PC.i271
  %5460 = add i64 %5459, 10
  store i64 %5460, i64* %PC.i271
  %5461 = inttoptr i64 %5458 to i32*
  store i32 0, i32* %5461
  store %struct.Memory* %loadMem_413048, %struct.Memory** %MEMORY
  br label %block_.L_413052

block_.L_413052:                                  ; preds = %block_.L_41322e, %block_.L_413048
  %loadMem_413052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5463 = getelementptr inbounds %struct.GPR, %struct.GPR* %5462, i32 0, i32 33
  %5464 = getelementptr inbounds %struct.Reg, %struct.Reg* %5463, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %5464 to i64*
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5466 = getelementptr inbounds %struct.GPR, %struct.GPR* %5465, i32 0, i32 1
  %5467 = getelementptr inbounds %struct.Reg, %struct.Reg* %5466, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %5467 to i64*
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5469 = getelementptr inbounds %struct.GPR, %struct.GPR* %5468, i32 0, i32 15
  %5470 = getelementptr inbounds %struct.Reg, %struct.Reg* %5469, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %5470 to i64*
  %5471 = load i64, i64* %RBP.i270
  %5472 = sub i64 %5471, 1016
  %5473 = load i64, i64* %PC.i268
  %5474 = add i64 %5473, 6
  store i64 %5474, i64* %PC.i268
  %5475 = inttoptr i64 %5472 to i32*
  %5476 = load i32, i32* %5475
  %5477 = zext i32 %5476 to i64
  store i64 %5477, i64* %RAX.i269, align 8
  store %struct.Memory* %loadMem_413052, %struct.Memory** %MEMORY
  %loadMem_413058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5479 = getelementptr inbounds %struct.GPR, %struct.GPR* %5478, i32 0, i32 33
  %5480 = getelementptr inbounds %struct.Reg, %struct.Reg* %5479, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %5480 to i64*
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5482 = getelementptr inbounds %struct.GPR, %struct.GPR* %5481, i32 0, i32 1
  %5483 = getelementptr inbounds %struct.Reg, %struct.Reg* %5482, i32 0, i32 0
  %EAX.i266 = bitcast %union.anon* %5483 to i32*
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5485 = getelementptr inbounds %struct.GPR, %struct.GPR* %5484, i32 0, i32 15
  %5486 = getelementptr inbounds %struct.Reg, %struct.Reg* %5485, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %5486 to i64*
  %5487 = load i32, i32* %EAX.i266
  %5488 = zext i32 %5487 to i64
  %5489 = load i64, i64* %RBP.i267
  %5490 = sub i64 %5489, 1004
  %5491 = load i64, i64* %PC.i265
  %5492 = add i64 %5491, 6
  store i64 %5492, i64* %PC.i265
  %5493 = inttoptr i64 %5490 to i32*
  %5494 = load i32, i32* %5493
  %5495 = sub i32 %5487, %5494
  %5496 = icmp ult i32 %5487, %5494
  %5497 = zext i1 %5496 to i8
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5497, i8* %5498, align 1
  %5499 = and i32 %5495, 255
  %5500 = call i32 @llvm.ctpop.i32(i32 %5499)
  %5501 = trunc i32 %5500 to i8
  %5502 = and i8 %5501, 1
  %5503 = xor i8 %5502, 1
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5503, i8* %5504, align 1
  %5505 = xor i32 %5494, %5487
  %5506 = xor i32 %5505, %5495
  %5507 = lshr i32 %5506, 4
  %5508 = trunc i32 %5507 to i8
  %5509 = and i8 %5508, 1
  %5510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5509, i8* %5510, align 1
  %5511 = icmp eq i32 %5495, 0
  %5512 = zext i1 %5511 to i8
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5512, i8* %5513, align 1
  %5514 = lshr i32 %5495, 31
  %5515 = trunc i32 %5514 to i8
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5515, i8* %5516, align 1
  %5517 = lshr i32 %5487, 31
  %5518 = lshr i32 %5494, 31
  %5519 = xor i32 %5518, %5517
  %5520 = xor i32 %5514, %5517
  %5521 = add i32 %5520, %5519
  %5522 = icmp eq i32 %5521, 2
  %5523 = zext i1 %5522 to i8
  %5524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5523, i8* %5524, align 1
  store %struct.Memory* %loadMem_413058, %struct.Memory** %MEMORY
  %loadMem_41305e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5526 = getelementptr inbounds %struct.GPR, %struct.GPR* %5525, i32 0, i32 33
  %5527 = getelementptr inbounds %struct.Reg, %struct.Reg* %5526, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %5527 to i64*
  %5528 = load i64, i64* %PC.i264
  %5529 = add i64 %5528, 484
  %5530 = load i64, i64* %PC.i264
  %5531 = add i64 %5530, 6
  %5532 = load i64, i64* %PC.i264
  %5533 = add i64 %5532, 6
  store i64 %5533, i64* %PC.i264
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5535 = load i8, i8* %5534, align 1
  %5536 = icmp ne i8 %5535, 0
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5538 = load i8, i8* %5537, align 1
  %5539 = icmp ne i8 %5538, 0
  %5540 = xor i1 %5536, %5539
  %5541 = xor i1 %5540, true
  %5542 = zext i1 %5541 to i8
  store i8 %5542, i8* %BRANCH_TAKEN, align 1
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5544 = select i1 %5540, i64 %5531, i64 %5529
  store i64 %5544, i64* %5543, align 8
  store %struct.Memory* %loadMem_41305e, %struct.Memory** %MEMORY
  %loadBr_41305e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41305e = icmp eq i8 %loadBr_41305e, 1
  br i1 %cmpBr_41305e, label %block_.L_413242, label %block_413064

block_413064:                                     ; preds = %block_.L_413052
  %loadMem_413064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5546 = getelementptr inbounds %struct.GPR, %struct.GPR* %5545, i32 0, i32 33
  %5547 = getelementptr inbounds %struct.Reg, %struct.Reg* %5546, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %5547 to i64*
  %5548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5549 = getelementptr inbounds %struct.GPR, %struct.GPR* %5548, i32 0, i32 1
  %5550 = getelementptr inbounds %struct.Reg, %struct.Reg* %5549, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %5550 to i64*
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5552 = getelementptr inbounds %struct.GPR, %struct.GPR* %5551, i32 0, i32 15
  %5553 = getelementptr inbounds %struct.Reg, %struct.Reg* %5552, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %5553 to i64*
  %5554 = load i64, i64* %RBP.i263
  %5555 = sub i64 %5554, 1000
  %5556 = load i64, i64* %PC.i261
  %5557 = add i64 %5556, 7
  store i64 %5557, i64* %PC.i261
  %5558 = inttoptr i64 %5555 to i64*
  %5559 = load i64, i64* %5558
  store i64 %5559, i64* %RAX.i262, align 8
  store %struct.Memory* %loadMem_413064, %struct.Memory** %MEMORY
  %loadMem_41306b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5561 = getelementptr inbounds %struct.GPR, %struct.GPR* %5560, i32 0, i32 33
  %5562 = getelementptr inbounds %struct.Reg, %struct.Reg* %5561, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %5562 to i64*
  %5563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5564 = getelementptr inbounds %struct.GPR, %struct.GPR* %5563, i32 0, i32 5
  %5565 = getelementptr inbounds %struct.Reg, %struct.Reg* %5564, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %5565 to i64*
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5567 = getelementptr inbounds %struct.GPR, %struct.GPR* %5566, i32 0, i32 15
  %5568 = getelementptr inbounds %struct.Reg, %struct.Reg* %5567, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %5568 to i64*
  %5569 = load i64, i64* %RBP.i260
  %5570 = sub i64 %5569, 1016
  %5571 = load i64, i64* %PC.i258
  %5572 = add i64 %5571, 7
  store i64 %5572, i64* %PC.i258
  %5573 = inttoptr i64 %5570 to i32*
  %5574 = load i32, i32* %5573
  %5575 = sext i32 %5574 to i64
  store i64 %5575, i64* %RCX.i259, align 8
  store %struct.Memory* %loadMem_41306b, %struct.Memory** %MEMORY
  %loadMem_413072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5577 = getelementptr inbounds %struct.GPR, %struct.GPR* %5576, i32 0, i32 33
  %5578 = getelementptr inbounds %struct.Reg, %struct.Reg* %5577, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %5578 to i64*
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5580 = getelementptr inbounds %struct.GPR, %struct.GPR* %5579, i32 0, i32 1
  %5581 = getelementptr inbounds %struct.Reg, %struct.Reg* %5580, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %5581 to i64*
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5583 = getelementptr inbounds %struct.GPR, %struct.GPR* %5582, i32 0, i32 5
  %5584 = getelementptr inbounds %struct.Reg, %struct.Reg* %5583, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %5584 to i64*
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5586 = getelementptr inbounds %struct.GPR, %struct.GPR* %5585, i32 0, i32 7
  %5587 = getelementptr inbounds %struct.Reg, %struct.Reg* %5586, i32 0, i32 0
  %RDX.i257 = bitcast %union.anon* %5587 to i64*
  %5588 = load i64, i64* %RAX.i255
  %5589 = load i64, i64* %RCX.i256
  %5590 = mul i64 %5589, 4
  %5591 = add i64 %5590, %5588
  %5592 = load i64, i64* %PC.i254
  %5593 = add i64 %5592, 3
  store i64 %5593, i64* %PC.i254
  %5594 = inttoptr i64 %5591 to i32*
  %5595 = load i32, i32* %5594
  %5596 = zext i32 %5595 to i64
  store i64 %5596, i64* %RDX.i257, align 8
  store %struct.Memory* %loadMem_413072, %struct.Memory** %MEMORY
  %loadMem_413075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5598 = getelementptr inbounds %struct.GPR, %struct.GPR* %5597, i32 0, i32 33
  %5599 = getelementptr inbounds %struct.Reg, %struct.Reg* %5598, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %5599 to i64*
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5601 = getelementptr inbounds %struct.GPR, %struct.GPR* %5600, i32 0, i32 7
  %5602 = getelementptr inbounds %struct.Reg, %struct.Reg* %5601, i32 0, i32 0
  %RDX.i253 = bitcast %union.anon* %5602 to i64*
  %5603 = load i64, i64* %RDX.i253
  %5604 = load i64, i64* %PC.i252
  %5605 = add i64 %5604, 3
  store i64 %5605, i64* %PC.i252
  %5606 = trunc i64 %5603 to i32
  %5607 = add i32 20, %5606
  %5608 = zext i32 %5607 to i64
  store i64 %5608, i64* %RDX.i253, align 8
  %5609 = icmp ult i32 %5607, %5606
  %5610 = icmp ult i32 %5607, 20
  %5611 = or i1 %5609, %5610
  %5612 = zext i1 %5611 to i8
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5612, i8* %5613, align 1
  %5614 = and i32 %5607, 255
  %5615 = call i32 @llvm.ctpop.i32(i32 %5614)
  %5616 = trunc i32 %5615 to i8
  %5617 = and i8 %5616, 1
  %5618 = xor i8 %5617, 1
  %5619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5618, i8* %5619, align 1
  %5620 = xor i64 20, %5603
  %5621 = trunc i64 %5620 to i32
  %5622 = xor i32 %5621, %5607
  %5623 = lshr i32 %5622, 4
  %5624 = trunc i32 %5623 to i8
  %5625 = and i8 %5624, 1
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5625, i8* %5626, align 1
  %5627 = icmp eq i32 %5607, 0
  %5628 = zext i1 %5627 to i8
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5628, i8* %5629, align 1
  %5630 = lshr i32 %5607, 31
  %5631 = trunc i32 %5630 to i8
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5631, i8* %5632, align 1
  %5633 = lshr i32 %5606, 31
  %5634 = xor i32 %5630, %5633
  %5635 = add i32 %5634, %5630
  %5636 = icmp eq i32 %5635, 2
  %5637 = zext i1 %5636 to i8
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5637, i8* %5638, align 1
  store %struct.Memory* %loadMem_413075, %struct.Memory** %MEMORY
  %loadMem_413078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5640 = getelementptr inbounds %struct.GPR, %struct.GPR* %5639, i32 0, i32 33
  %5641 = getelementptr inbounds %struct.Reg, %struct.Reg* %5640, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %5641 to i64*
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5643 = getelementptr inbounds %struct.GPR, %struct.GPR* %5642, i32 0, i32 7
  %5644 = getelementptr inbounds %struct.Reg, %struct.Reg* %5643, i32 0, i32 0
  %EDX.i250 = bitcast %union.anon* %5644 to i32*
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 1
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %5647 to i64*
  %5648 = load i32, i32* %EDX.i250
  %5649 = zext i32 %5648 to i64
  %5650 = load i64, i64* %PC.i249
  %5651 = add i64 %5650, 3
  store i64 %5651, i64* %PC.i249
  %5652 = shl i64 %5649, 32
  %5653 = ashr exact i64 %5652, 32
  store i64 %5653, i64* %RAX.i251, align 8
  store %struct.Memory* %loadMem_413078, %struct.Memory** %MEMORY
  %loadMem_41307b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5655 = getelementptr inbounds %struct.GPR, %struct.GPR* %5654, i32 0, i32 33
  %5656 = getelementptr inbounds %struct.Reg, %struct.Reg* %5655, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %5656 to i64*
  %5657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5658 = getelementptr inbounds %struct.GPR, %struct.GPR* %5657, i32 0, i32 1
  %5659 = getelementptr inbounds %struct.Reg, %struct.Reg* %5658, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %5659 to i64*
  %5660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5661 = getelementptr inbounds %struct.GPR, %struct.GPR* %5660, i32 0, i32 7
  %5662 = getelementptr inbounds %struct.Reg, %struct.Reg* %5661, i32 0, i32 0
  %RDX.i248 = bitcast %union.anon* %5662 to i64*
  %5663 = load i64, i64* %RAX.i247
  %5664 = add i64 %5663, 12099168
  %5665 = load i64, i64* %PC.i246
  %5666 = add i64 %5665, 8
  store i64 %5666, i64* %PC.i246
  %5667 = inttoptr i64 %5664 to i8*
  %5668 = load i8, i8* %5667
  %5669 = zext i8 %5668 to i64
  store i64 %5669, i64* %RDX.i248, align 8
  store %struct.Memory* %loadMem_41307b, %struct.Memory** %MEMORY
  %loadMem_413083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5671 = getelementptr inbounds %struct.GPR, %struct.GPR* %5670, i32 0, i32 33
  %5672 = getelementptr inbounds %struct.Reg, %struct.Reg* %5671, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %5672 to i64*
  %5673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5674 = getelementptr inbounds %struct.GPR, %struct.GPR* %5673, i32 0, i32 1
  %5675 = getelementptr inbounds %struct.Reg, %struct.Reg* %5674, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %5675 to i64*
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5677 = getelementptr inbounds %struct.GPR, %struct.GPR* %5676, i32 0, i32 15
  %5678 = getelementptr inbounds %struct.Reg, %struct.Reg* %5677, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %5678 to i64*
  %5679 = load i64, i64* %RBP.i245
  %5680 = sub i64 %5679, 12
  %5681 = load i64, i64* %PC.i243
  %5682 = add i64 %5681, 4
  store i64 %5682, i64* %PC.i243
  %5683 = inttoptr i64 %5680 to i32*
  %5684 = load i32, i32* %5683
  %5685 = sext i32 %5684 to i64
  store i64 %5685, i64* %RAX.i244, align 8
  store %struct.Memory* %loadMem_413083, %struct.Memory** %MEMORY
  %loadMem_413087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5687 = getelementptr inbounds %struct.GPR, %struct.GPR* %5686, i32 0, i32 33
  %5688 = getelementptr inbounds %struct.Reg, %struct.Reg* %5687, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5688 to i64*
  %5689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5690 = getelementptr inbounds %struct.GPR, %struct.GPR* %5689, i32 0, i32 1
  %5691 = getelementptr inbounds %struct.Reg, %struct.Reg* %5690, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %5691 to i64*
  %5692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5693 = getelementptr inbounds %struct.GPR, %struct.GPR* %5692, i32 0, i32 9
  %5694 = getelementptr inbounds %struct.Reg, %struct.Reg* %5693, i32 0, i32 0
  %RSI.i242 = bitcast %union.anon* %5694 to i64*
  %5695 = load i64, i64* %RAX.i241
  %5696 = add i64 %5695, 12099168
  %5697 = load i64, i64* %PC.i240
  %5698 = add i64 %5697, 8
  store i64 %5698, i64* %PC.i240
  %5699 = inttoptr i64 %5696 to i8*
  %5700 = load i8, i8* %5699
  %5701 = zext i8 %5700 to i64
  store i64 %5701, i64* %RSI.i242, align 8
  store %struct.Memory* %loadMem_413087, %struct.Memory** %MEMORY
  %loadMem_41308f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5703 = getelementptr inbounds %struct.GPR, %struct.GPR* %5702, i32 0, i32 33
  %5704 = getelementptr inbounds %struct.Reg, %struct.Reg* %5703, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %5704 to i64*
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5706 = getelementptr inbounds %struct.GPR, %struct.GPR* %5705, i32 0, i32 7
  %5707 = getelementptr inbounds %struct.Reg, %struct.Reg* %5706, i32 0, i32 0
  %EDX.i238 = bitcast %union.anon* %5707 to i32*
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5709 = getelementptr inbounds %struct.GPR, %struct.GPR* %5708, i32 0, i32 9
  %5710 = getelementptr inbounds %struct.Reg, %struct.Reg* %5709, i32 0, i32 0
  %ESI.i239 = bitcast %union.anon* %5710 to i32*
  %5711 = load i32, i32* %EDX.i238
  %5712 = zext i32 %5711 to i64
  %5713 = load i32, i32* %ESI.i239
  %5714 = zext i32 %5713 to i64
  %5715 = load i64, i64* %PC.i237
  %5716 = add i64 %5715, 2
  store i64 %5716, i64* %PC.i237
  %5717 = sub i32 %5711, %5713
  %5718 = icmp ult i32 %5711, %5713
  %5719 = zext i1 %5718 to i8
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5719, i8* %5720, align 1
  %5721 = and i32 %5717, 255
  %5722 = call i32 @llvm.ctpop.i32(i32 %5721)
  %5723 = trunc i32 %5722 to i8
  %5724 = and i8 %5723, 1
  %5725 = xor i8 %5724, 1
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5725, i8* %5726, align 1
  %5727 = xor i64 %5714, %5712
  %5728 = trunc i64 %5727 to i32
  %5729 = xor i32 %5728, %5717
  %5730 = lshr i32 %5729, 4
  %5731 = trunc i32 %5730 to i8
  %5732 = and i8 %5731, 1
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5732, i8* %5733, align 1
  %5734 = icmp eq i32 %5717, 0
  %5735 = zext i1 %5734 to i8
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5735, i8* %5736, align 1
  %5737 = lshr i32 %5717, 31
  %5738 = trunc i32 %5737 to i8
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5738, i8* %5739, align 1
  %5740 = lshr i32 %5711, 31
  %5741 = lshr i32 %5713, 31
  %5742 = xor i32 %5741, %5740
  %5743 = xor i32 %5737, %5740
  %5744 = add i32 %5743, %5742
  %5745 = icmp eq i32 %5744, 2
  %5746 = zext i1 %5745 to i8
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5746, i8* %5747, align 1
  store %struct.Memory* %loadMem_41308f, %struct.Memory** %MEMORY
  %loadMem_413091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5749 = getelementptr inbounds %struct.GPR, %struct.GPR* %5748, i32 0, i32 33
  %5750 = getelementptr inbounds %struct.Reg, %struct.Reg* %5749, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %5750 to i64*
  %5751 = load i64, i64* %PC.i236
  %5752 = add i64 %5751, 53
  %5753 = load i64, i64* %PC.i236
  %5754 = add i64 %5753, 6
  %5755 = load i64, i64* %PC.i236
  %5756 = add i64 %5755, 6
  store i64 %5756, i64* %PC.i236
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5758 = load i8, i8* %5757, align 1
  %5759 = icmp eq i8 %5758, 0
  %5760 = zext i1 %5759 to i8
  store i8 %5760, i8* %BRANCH_TAKEN, align 1
  %5761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5762 = select i1 %5759, i64 %5752, i64 %5754
  store i64 %5762, i64* %5761, align 8
  store %struct.Memory* %loadMem_413091, %struct.Memory** %MEMORY
  %loadBr_413091 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413091 = icmp eq i8 %loadBr_413091, 1
  br i1 %cmpBr_413091, label %block_.L_4130c6, label %block_413097

block_413097:                                     ; preds = %block_413064
  %loadMem_413097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5764 = getelementptr inbounds %struct.GPR, %struct.GPR* %5763, i32 0, i32 33
  %5765 = getelementptr inbounds %struct.Reg, %struct.Reg* %5764, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %5765 to i64*
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5767 = getelementptr inbounds %struct.GPR, %struct.GPR* %5766, i32 0, i32 1
  %5768 = getelementptr inbounds %struct.Reg, %struct.Reg* %5767, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %5768 to i64*
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5770 = getelementptr inbounds %struct.GPR, %struct.GPR* %5769, i32 0, i32 15
  %5771 = getelementptr inbounds %struct.Reg, %struct.Reg* %5770, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %5771 to i64*
  %5772 = load i64, i64* %RBP.i235
  %5773 = sub i64 %5772, 1000
  %5774 = load i64, i64* %PC.i233
  %5775 = add i64 %5774, 7
  store i64 %5775, i64* %PC.i233
  %5776 = inttoptr i64 %5773 to i64*
  %5777 = load i64, i64* %5776
  store i64 %5777, i64* %RAX.i234, align 8
  store %struct.Memory* %loadMem_413097, %struct.Memory** %MEMORY
  %loadMem_41309e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5779 = getelementptr inbounds %struct.GPR, %struct.GPR* %5778, i32 0, i32 33
  %5780 = getelementptr inbounds %struct.Reg, %struct.Reg* %5779, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %5780 to i64*
  %5781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5782 = getelementptr inbounds %struct.GPR, %struct.GPR* %5781, i32 0, i32 5
  %5783 = getelementptr inbounds %struct.Reg, %struct.Reg* %5782, i32 0, i32 0
  %RCX.i231 = bitcast %union.anon* %5783 to i64*
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5785 = getelementptr inbounds %struct.GPR, %struct.GPR* %5784, i32 0, i32 15
  %5786 = getelementptr inbounds %struct.Reg, %struct.Reg* %5785, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %5786 to i64*
  %5787 = load i64, i64* %RBP.i232
  %5788 = sub i64 %5787, 1016
  %5789 = load i64, i64* %PC.i230
  %5790 = add i64 %5789, 7
  store i64 %5790, i64* %PC.i230
  %5791 = inttoptr i64 %5788 to i32*
  %5792 = load i32, i32* %5791
  %5793 = sext i32 %5792 to i64
  store i64 %5793, i64* %RCX.i231, align 8
  store %struct.Memory* %loadMem_41309e, %struct.Memory** %MEMORY
  %loadMem_4130a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5795 = getelementptr inbounds %struct.GPR, %struct.GPR* %5794, i32 0, i32 33
  %5796 = getelementptr inbounds %struct.Reg, %struct.Reg* %5795, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %5796 to i64*
  %5797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5798 = getelementptr inbounds %struct.GPR, %struct.GPR* %5797, i32 0, i32 1
  %5799 = getelementptr inbounds %struct.Reg, %struct.Reg* %5798, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %5799 to i64*
  %5800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5801 = getelementptr inbounds %struct.GPR, %struct.GPR* %5800, i32 0, i32 5
  %5802 = getelementptr inbounds %struct.Reg, %struct.Reg* %5801, i32 0, i32 0
  %RCX.i228 = bitcast %union.anon* %5802 to i64*
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5804 = getelementptr inbounds %struct.GPR, %struct.GPR* %5803, i32 0, i32 7
  %5805 = getelementptr inbounds %struct.Reg, %struct.Reg* %5804, i32 0, i32 0
  %RDX.i229 = bitcast %union.anon* %5805 to i64*
  %5806 = load i64, i64* %RAX.i227
  %5807 = load i64, i64* %RCX.i228
  %5808 = mul i64 %5807, 4
  %5809 = add i64 %5808, %5806
  %5810 = load i64, i64* %PC.i226
  %5811 = add i64 %5810, 3
  store i64 %5811, i64* %PC.i226
  %5812 = inttoptr i64 %5809 to i32*
  %5813 = load i32, i32* %5812
  %5814 = zext i32 %5813 to i64
  store i64 %5814, i64* %RDX.i229, align 8
  store %struct.Memory* %loadMem_4130a5, %struct.Memory** %MEMORY
  %loadMem_4130a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5816 = getelementptr inbounds %struct.GPR, %struct.GPR* %5815, i32 0, i32 33
  %5817 = getelementptr inbounds %struct.Reg, %struct.Reg* %5816, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %5817 to i64*
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5819 = getelementptr inbounds %struct.GPR, %struct.GPR* %5818, i32 0, i32 7
  %5820 = getelementptr inbounds %struct.Reg, %struct.Reg* %5819, i32 0, i32 0
  %RDX.i225 = bitcast %union.anon* %5820 to i64*
  %5821 = load i64, i64* %RDX.i225
  %5822 = load i64, i64* %PC.i224
  %5823 = add i64 %5822, 3
  store i64 %5823, i64* %PC.i224
  %5824 = trunc i64 %5821 to i32
  %5825 = add i32 20, %5824
  %5826 = zext i32 %5825 to i64
  store i64 %5826, i64* %RDX.i225, align 8
  %5827 = icmp ult i32 %5825, %5824
  %5828 = icmp ult i32 %5825, 20
  %5829 = or i1 %5827, %5828
  %5830 = zext i1 %5829 to i8
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5830, i8* %5831, align 1
  %5832 = and i32 %5825, 255
  %5833 = call i32 @llvm.ctpop.i32(i32 %5832)
  %5834 = trunc i32 %5833 to i8
  %5835 = and i8 %5834, 1
  %5836 = xor i8 %5835, 1
  %5837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5836, i8* %5837, align 1
  %5838 = xor i64 20, %5821
  %5839 = trunc i64 %5838 to i32
  %5840 = xor i32 %5839, %5825
  %5841 = lshr i32 %5840, 4
  %5842 = trunc i32 %5841 to i8
  %5843 = and i8 %5842, 1
  %5844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5843, i8* %5844, align 1
  %5845 = icmp eq i32 %5825, 0
  %5846 = zext i1 %5845 to i8
  %5847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5846, i8* %5847, align 1
  %5848 = lshr i32 %5825, 31
  %5849 = trunc i32 %5848 to i8
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5849, i8* %5850, align 1
  %5851 = lshr i32 %5824, 31
  %5852 = xor i32 %5848, %5851
  %5853 = add i32 %5852, %5848
  %5854 = icmp eq i32 %5853, 2
  %5855 = zext i1 %5854 to i8
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5855, i8* %5856, align 1
  store %struct.Memory* %loadMem_4130a8, %struct.Memory** %MEMORY
  %loadMem_4130ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5858 = getelementptr inbounds %struct.GPR, %struct.GPR* %5857, i32 0, i32 33
  %5859 = getelementptr inbounds %struct.Reg, %struct.Reg* %5858, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %5859 to i64*
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5861 = getelementptr inbounds %struct.GPR, %struct.GPR* %5860, i32 0, i32 7
  %5862 = getelementptr inbounds %struct.Reg, %struct.Reg* %5861, i32 0, i32 0
  %EDX.i222 = bitcast %union.anon* %5862 to i32*
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5864 = getelementptr inbounds %struct.GPR, %struct.GPR* %5863, i32 0, i32 1
  %5865 = getelementptr inbounds %struct.Reg, %struct.Reg* %5864, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %5865 to i64*
  %5866 = load i32, i32* %EDX.i222
  %5867 = zext i32 %5866 to i64
  %5868 = load i64, i64* %PC.i221
  %5869 = add i64 %5868, 3
  store i64 %5869, i64* %PC.i221
  %5870 = shl i64 %5867, 32
  %5871 = ashr exact i64 %5870, 32
  store i64 %5871, i64* %RAX.i223, align 8
  store %struct.Memory* %loadMem_4130ab, %struct.Memory** %MEMORY
  %loadMem_4130ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5873 = getelementptr inbounds %struct.GPR, %struct.GPR* %5872, i32 0, i32 33
  %5874 = getelementptr inbounds %struct.Reg, %struct.Reg* %5873, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %5874 to i64*
  %5875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5876 = getelementptr inbounds %struct.GPR, %struct.GPR* %5875, i32 0, i32 1
  %5877 = getelementptr inbounds %struct.Reg, %struct.Reg* %5876, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %5877 to i64*
  %5878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5879 = getelementptr inbounds %struct.GPR, %struct.GPR* %5878, i32 0, i32 7
  %5880 = getelementptr inbounds %struct.Reg, %struct.Reg* %5879, i32 0, i32 0
  %RDX.i220 = bitcast %union.anon* %5880 to i64*
  %5881 = load i64, i64* %RAX.i219
  %5882 = mul i64 %5881, 4
  %5883 = add i64 %5882, 11187184
  %5884 = load i64, i64* %PC.i218
  %5885 = add i64 %5884, 7
  store i64 %5885, i64* %PC.i218
  %5886 = inttoptr i64 %5883 to i32*
  %5887 = load i32, i32* %5886
  %5888 = zext i32 %5887 to i64
  store i64 %5888, i64* %RDX.i220, align 8
  store %struct.Memory* %loadMem_4130ae, %struct.Memory** %MEMORY
  %loadMem_4130b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5890 = getelementptr inbounds %struct.GPR, %struct.GPR* %5889, i32 0, i32 33
  %5891 = getelementptr inbounds %struct.Reg, %struct.Reg* %5890, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %5891 to i64*
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5893 = getelementptr inbounds %struct.GPR, %struct.GPR* %5892, i32 0, i32 1
  %5894 = getelementptr inbounds %struct.Reg, %struct.Reg* %5893, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %5894 to i64*
  %5895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5896 = getelementptr inbounds %struct.GPR, %struct.GPR* %5895, i32 0, i32 15
  %5897 = getelementptr inbounds %struct.Reg, %struct.Reg* %5896, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %5897 to i64*
  %5898 = load i64, i64* %RBP.i217
  %5899 = sub i64 %5898, 12
  %5900 = load i64, i64* %PC.i215
  %5901 = add i64 %5900, 4
  store i64 %5901, i64* %PC.i215
  %5902 = inttoptr i64 %5899 to i32*
  %5903 = load i32, i32* %5902
  %5904 = sext i32 %5903 to i64
  store i64 %5904, i64* %RAX.i216, align 8
  store %struct.Memory* %loadMem_4130b5, %struct.Memory** %MEMORY
  %loadMem_4130b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5906 = getelementptr inbounds %struct.GPR, %struct.GPR* %5905, i32 0, i32 33
  %5907 = getelementptr inbounds %struct.Reg, %struct.Reg* %5906, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %5907 to i64*
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5909 = getelementptr inbounds %struct.GPR, %struct.GPR* %5908, i32 0, i32 7
  %5910 = getelementptr inbounds %struct.Reg, %struct.Reg* %5909, i32 0, i32 0
  %EDX.i213 = bitcast %union.anon* %5910 to i32*
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5912 = getelementptr inbounds %struct.GPR, %struct.GPR* %5911, i32 0, i32 1
  %5913 = getelementptr inbounds %struct.Reg, %struct.Reg* %5912, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %5913 to i64*
  %5914 = load i32, i32* %EDX.i213
  %5915 = zext i32 %5914 to i64
  %5916 = load i64, i64* %RAX.i214
  %5917 = mul i64 %5916, 4
  %5918 = add i64 %5917, 11187184
  %5919 = load i64, i64* %PC.i212
  %5920 = add i64 %5919, 7
  store i64 %5920, i64* %PC.i212
  %5921 = inttoptr i64 %5918 to i32*
  %5922 = load i32, i32* %5921
  %5923 = sub i32 %5914, %5922
  %5924 = icmp ult i32 %5914, %5922
  %5925 = zext i1 %5924 to i8
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5925, i8* %5926, align 1
  %5927 = and i32 %5923, 255
  %5928 = call i32 @llvm.ctpop.i32(i32 %5927)
  %5929 = trunc i32 %5928 to i8
  %5930 = and i8 %5929, 1
  %5931 = xor i8 %5930, 1
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5931, i8* %5932, align 1
  %5933 = xor i32 %5922, %5914
  %5934 = xor i32 %5933, %5923
  %5935 = lshr i32 %5934, 4
  %5936 = trunc i32 %5935 to i8
  %5937 = and i8 %5936, 1
  %5938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5937, i8* %5938, align 1
  %5939 = icmp eq i32 %5923, 0
  %5940 = zext i1 %5939 to i8
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5940, i8* %5941, align 1
  %5942 = lshr i32 %5923, 31
  %5943 = trunc i32 %5942 to i8
  %5944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5943, i8* %5944, align 1
  %5945 = lshr i32 %5914, 31
  %5946 = lshr i32 %5922, 31
  %5947 = xor i32 %5946, %5945
  %5948 = xor i32 %5942, %5945
  %5949 = add i32 %5948, %5947
  %5950 = icmp eq i32 %5949, 2
  %5951 = zext i1 %5950 to i8
  %5952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5951, i8* %5952, align 1
  store %struct.Memory* %loadMem_4130b9, %struct.Memory** %MEMORY
  %loadMem_4130c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5954 = getelementptr inbounds %struct.GPR, %struct.GPR* %5953, i32 0, i32 33
  %5955 = getelementptr inbounds %struct.Reg, %struct.Reg* %5954, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %5955 to i64*
  %5956 = load i64, i64* %PC.i211
  %5957 = add i64 %5956, 300
  %5958 = load i64, i64* %PC.i211
  %5959 = add i64 %5958, 6
  %5960 = load i64, i64* %PC.i211
  %5961 = add i64 %5960, 6
  store i64 %5961, i64* %PC.i211
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5963 = load i8, i8* %5962, align 1
  store i8 %5963, i8* %BRANCH_TAKEN, align 1
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5965 = icmp ne i8 %5963, 0
  %5966 = select i1 %5965, i64 %5957, i64 %5959
  store i64 %5966, i64* %5964, align 8
  store %struct.Memory* %loadMem_4130c0, %struct.Memory** %MEMORY
  %loadBr_4130c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4130c0 = icmp eq i8 %loadBr_4130c0, 1
  br i1 %cmpBr_4130c0, label %block_.L_4131ec, label %block_.L_4130c6

block_.L_4130c6:                                  ; preds = %block_413097, %block_413064
  %loadMem_4130c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5968 = getelementptr inbounds %struct.GPR, %struct.GPR* %5967, i32 0, i32 33
  %5969 = getelementptr inbounds %struct.Reg, %struct.Reg* %5968, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %5969 to i64*
  %5970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5971 = getelementptr inbounds %struct.GPR, %struct.GPR* %5970, i32 0, i32 1
  %5972 = getelementptr inbounds %struct.Reg, %struct.Reg* %5971, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %5972 to i64*
  %5973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5974 = getelementptr inbounds %struct.GPR, %struct.GPR* %5973, i32 0, i32 15
  %5975 = getelementptr inbounds %struct.Reg, %struct.Reg* %5974, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %5975 to i64*
  %5976 = load i64, i64* %RBP.i210
  %5977 = sub i64 %5976, 1000
  %5978 = load i64, i64* %PC.i208
  %5979 = add i64 %5978, 7
  store i64 %5979, i64* %PC.i208
  %5980 = inttoptr i64 %5977 to i64*
  %5981 = load i64, i64* %5980
  store i64 %5981, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_4130c6, %struct.Memory** %MEMORY
  %loadMem_4130cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5983 = getelementptr inbounds %struct.GPR, %struct.GPR* %5982, i32 0, i32 33
  %5984 = getelementptr inbounds %struct.Reg, %struct.Reg* %5983, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %5984 to i64*
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5986 = getelementptr inbounds %struct.GPR, %struct.GPR* %5985, i32 0, i32 5
  %5987 = getelementptr inbounds %struct.Reg, %struct.Reg* %5986, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %5987 to i64*
  %5988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5989 = getelementptr inbounds %struct.GPR, %struct.GPR* %5988, i32 0, i32 15
  %5990 = getelementptr inbounds %struct.Reg, %struct.Reg* %5989, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %5990 to i64*
  %5991 = load i64, i64* %RBP.i207
  %5992 = sub i64 %5991, 1016
  %5993 = load i64, i64* %PC.i205
  %5994 = add i64 %5993, 7
  store i64 %5994, i64* %PC.i205
  %5995 = inttoptr i64 %5992 to i32*
  %5996 = load i32, i32* %5995
  %5997 = sext i32 %5996 to i64
  store i64 %5997, i64* %RCX.i206, align 8
  store %struct.Memory* %loadMem_4130cd, %struct.Memory** %MEMORY
  %loadMem_4130d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5999 = getelementptr inbounds %struct.GPR, %struct.GPR* %5998, i32 0, i32 33
  %6000 = getelementptr inbounds %struct.Reg, %struct.Reg* %5999, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %6000 to i64*
  %6001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6002 = getelementptr inbounds %struct.GPR, %struct.GPR* %6001, i32 0, i32 1
  %6003 = getelementptr inbounds %struct.Reg, %struct.Reg* %6002, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %6003 to i64*
  %6004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6005 = getelementptr inbounds %struct.GPR, %struct.GPR* %6004, i32 0, i32 5
  %6006 = getelementptr inbounds %struct.Reg, %struct.Reg* %6005, i32 0, i32 0
  %RCX.i203 = bitcast %union.anon* %6006 to i64*
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6008 = getelementptr inbounds %struct.GPR, %struct.GPR* %6007, i32 0, i32 7
  %6009 = getelementptr inbounds %struct.Reg, %struct.Reg* %6008, i32 0, i32 0
  %RDX.i204 = bitcast %union.anon* %6009 to i64*
  %6010 = load i64, i64* %RAX.i202
  %6011 = load i64, i64* %RCX.i203
  %6012 = mul i64 %6011, 4
  %6013 = add i64 %6012, %6010
  %6014 = load i64, i64* %PC.i201
  %6015 = add i64 %6014, 3
  store i64 %6015, i64* %PC.i201
  %6016 = inttoptr i64 %6013 to i32*
  %6017 = load i32, i32* %6016
  %6018 = zext i32 %6017 to i64
  store i64 %6018, i64* %RDX.i204, align 8
  store %struct.Memory* %loadMem_4130d4, %struct.Memory** %MEMORY
  %loadMem_4130d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6020 = getelementptr inbounds %struct.GPR, %struct.GPR* %6019, i32 0, i32 33
  %6021 = getelementptr inbounds %struct.Reg, %struct.Reg* %6020, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %6021 to i64*
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6023 = getelementptr inbounds %struct.GPR, %struct.GPR* %6022, i32 0, i32 7
  %6024 = getelementptr inbounds %struct.Reg, %struct.Reg* %6023, i32 0, i32 0
  %RDX.i200 = bitcast %union.anon* %6024 to i64*
  %6025 = load i64, i64* %RDX.i200
  %6026 = load i64, i64* %PC.i199
  %6027 = add i64 %6026, 3
  store i64 %6027, i64* %PC.i199
  %6028 = trunc i64 %6025 to i32
  %6029 = sub i32 %6028, 1
  %6030 = zext i32 %6029 to i64
  store i64 %6030, i64* %RDX.i200, align 8
  %6031 = icmp ult i32 %6028, 1
  %6032 = zext i1 %6031 to i8
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6032, i8* %6033, align 1
  %6034 = and i32 %6029, 255
  %6035 = call i32 @llvm.ctpop.i32(i32 %6034)
  %6036 = trunc i32 %6035 to i8
  %6037 = and i8 %6036, 1
  %6038 = xor i8 %6037, 1
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6038, i8* %6039, align 1
  %6040 = xor i64 1, %6025
  %6041 = trunc i64 %6040 to i32
  %6042 = xor i32 %6041, %6029
  %6043 = lshr i32 %6042, 4
  %6044 = trunc i32 %6043 to i8
  %6045 = and i8 %6044, 1
  %6046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6045, i8* %6046, align 1
  %6047 = icmp eq i32 %6029, 0
  %6048 = zext i1 %6047 to i8
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6048, i8* %6049, align 1
  %6050 = lshr i32 %6029, 31
  %6051 = trunc i32 %6050 to i8
  %6052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6051, i8* %6052, align 1
  %6053 = lshr i32 %6028, 31
  %6054 = xor i32 %6050, %6053
  %6055 = add i32 %6054, %6053
  %6056 = icmp eq i32 %6055, 2
  %6057 = zext i1 %6056 to i8
  %6058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6057, i8* %6058, align 1
  store %struct.Memory* %loadMem_4130d7, %struct.Memory** %MEMORY
  %loadMem_4130da = load %struct.Memory*, %struct.Memory** %MEMORY
  %6059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6060 = getelementptr inbounds %struct.GPR, %struct.GPR* %6059, i32 0, i32 33
  %6061 = getelementptr inbounds %struct.Reg, %struct.Reg* %6060, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %6061 to i64*
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6063 = getelementptr inbounds %struct.GPR, %struct.GPR* %6062, i32 0, i32 7
  %6064 = getelementptr inbounds %struct.Reg, %struct.Reg* %6063, i32 0, i32 0
  %EDX.i197 = bitcast %union.anon* %6064 to i32*
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6066 = getelementptr inbounds %struct.GPR, %struct.GPR* %6065, i32 0, i32 1
  %6067 = getelementptr inbounds %struct.Reg, %struct.Reg* %6066, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %6067 to i64*
  %6068 = load i32, i32* %EDX.i197
  %6069 = zext i32 %6068 to i64
  %6070 = load i64, i64* %PC.i196
  %6071 = add i64 %6070, 3
  store i64 %6071, i64* %PC.i196
  %6072 = shl i64 %6069, 32
  %6073 = ashr exact i64 %6072, 32
  store i64 %6073, i64* %RAX.i198, align 8
  store %struct.Memory* %loadMem_4130da, %struct.Memory** %MEMORY
  %loadMem_4130dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6075 = getelementptr inbounds %struct.GPR, %struct.GPR* %6074, i32 0, i32 33
  %6076 = getelementptr inbounds %struct.Reg, %struct.Reg* %6075, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %6076 to i64*
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6078 = getelementptr inbounds %struct.GPR, %struct.GPR* %6077, i32 0, i32 1
  %6079 = getelementptr inbounds %struct.Reg, %struct.Reg* %6078, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %6079 to i64*
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6081 = getelementptr inbounds %struct.GPR, %struct.GPR* %6080, i32 0, i32 7
  %6082 = getelementptr inbounds %struct.Reg, %struct.Reg* %6081, i32 0, i32 0
  %RDX.i195 = bitcast %union.anon* %6082 to i64*
  %6083 = load i64, i64* %RAX.i194
  %6084 = add i64 %6083, 12099168
  %6085 = load i64, i64* %PC.i193
  %6086 = add i64 %6085, 8
  store i64 %6086, i64* %PC.i193
  %6087 = inttoptr i64 %6084 to i8*
  %6088 = load i8, i8* %6087
  %6089 = zext i8 %6088 to i64
  store i64 %6089, i64* %RDX.i195, align 8
  store %struct.Memory* %loadMem_4130dd, %struct.Memory** %MEMORY
  %loadMem_4130e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6091 = getelementptr inbounds %struct.GPR, %struct.GPR* %6090, i32 0, i32 33
  %6092 = getelementptr inbounds %struct.Reg, %struct.Reg* %6091, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %6092 to i64*
  %6093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6094 = getelementptr inbounds %struct.GPR, %struct.GPR* %6093, i32 0, i32 1
  %6095 = getelementptr inbounds %struct.Reg, %struct.Reg* %6094, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %6095 to i64*
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6097 = getelementptr inbounds %struct.GPR, %struct.GPR* %6096, i32 0, i32 15
  %6098 = getelementptr inbounds %struct.Reg, %struct.Reg* %6097, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %6098 to i64*
  %6099 = load i64, i64* %RBP.i192
  %6100 = sub i64 %6099, 12
  %6101 = load i64, i64* %PC.i190
  %6102 = add i64 %6101, 4
  store i64 %6102, i64* %PC.i190
  %6103 = inttoptr i64 %6100 to i32*
  %6104 = load i32, i32* %6103
  %6105 = sext i32 %6104 to i64
  store i64 %6105, i64* %RAX.i191, align 8
  store %struct.Memory* %loadMem_4130e5, %struct.Memory** %MEMORY
  %loadMem_4130e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6107 = getelementptr inbounds %struct.GPR, %struct.GPR* %6106, i32 0, i32 33
  %6108 = getelementptr inbounds %struct.Reg, %struct.Reg* %6107, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %6108 to i64*
  %6109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6110 = getelementptr inbounds %struct.GPR, %struct.GPR* %6109, i32 0, i32 1
  %6111 = getelementptr inbounds %struct.Reg, %struct.Reg* %6110, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %6111 to i64*
  %6112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6113 = getelementptr inbounds %struct.GPR, %struct.GPR* %6112, i32 0, i32 9
  %6114 = getelementptr inbounds %struct.Reg, %struct.Reg* %6113, i32 0, i32 0
  %RSI.i189 = bitcast %union.anon* %6114 to i64*
  %6115 = load i64, i64* %RAX.i188
  %6116 = add i64 %6115, 12099168
  %6117 = load i64, i64* %PC.i187
  %6118 = add i64 %6117, 8
  store i64 %6118, i64* %PC.i187
  %6119 = inttoptr i64 %6116 to i8*
  %6120 = load i8, i8* %6119
  %6121 = zext i8 %6120 to i64
  store i64 %6121, i64* %RSI.i189, align 8
  store %struct.Memory* %loadMem_4130e9, %struct.Memory** %MEMORY
  %loadMem_4130f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6123 = getelementptr inbounds %struct.GPR, %struct.GPR* %6122, i32 0, i32 33
  %6124 = getelementptr inbounds %struct.Reg, %struct.Reg* %6123, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %6124 to i64*
  %6125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6126 = getelementptr inbounds %struct.GPR, %struct.GPR* %6125, i32 0, i32 7
  %6127 = getelementptr inbounds %struct.Reg, %struct.Reg* %6126, i32 0, i32 0
  %EDX.i185 = bitcast %union.anon* %6127 to i32*
  %6128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6129 = getelementptr inbounds %struct.GPR, %struct.GPR* %6128, i32 0, i32 9
  %6130 = getelementptr inbounds %struct.Reg, %struct.Reg* %6129, i32 0, i32 0
  %ESI.i186 = bitcast %union.anon* %6130 to i32*
  %6131 = load i32, i32* %EDX.i185
  %6132 = zext i32 %6131 to i64
  %6133 = load i32, i32* %ESI.i186
  %6134 = zext i32 %6133 to i64
  %6135 = load i64, i64* %PC.i184
  %6136 = add i64 %6135, 2
  store i64 %6136, i64* %PC.i184
  %6137 = sub i32 %6131, %6133
  %6138 = icmp ult i32 %6131, %6133
  %6139 = zext i1 %6138 to i8
  %6140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6139, i8* %6140, align 1
  %6141 = and i32 %6137, 255
  %6142 = call i32 @llvm.ctpop.i32(i32 %6141)
  %6143 = trunc i32 %6142 to i8
  %6144 = and i8 %6143, 1
  %6145 = xor i8 %6144, 1
  %6146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6145, i8* %6146, align 1
  %6147 = xor i64 %6134, %6132
  %6148 = trunc i64 %6147 to i32
  %6149 = xor i32 %6148, %6137
  %6150 = lshr i32 %6149, 4
  %6151 = trunc i32 %6150 to i8
  %6152 = and i8 %6151, 1
  %6153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6152, i8* %6153, align 1
  %6154 = icmp eq i32 %6137, 0
  %6155 = zext i1 %6154 to i8
  %6156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6155, i8* %6156, align 1
  %6157 = lshr i32 %6137, 31
  %6158 = trunc i32 %6157 to i8
  %6159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6158, i8* %6159, align 1
  %6160 = lshr i32 %6131, 31
  %6161 = lshr i32 %6133, 31
  %6162 = xor i32 %6161, %6160
  %6163 = xor i32 %6157, %6160
  %6164 = add i32 %6163, %6162
  %6165 = icmp eq i32 %6164, 2
  %6166 = zext i1 %6165 to i8
  %6167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6166, i8* %6167, align 1
  store %struct.Memory* %loadMem_4130f1, %struct.Memory** %MEMORY
  %loadMem_4130f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6169 = getelementptr inbounds %struct.GPR, %struct.GPR* %6168, i32 0, i32 33
  %6170 = getelementptr inbounds %struct.Reg, %struct.Reg* %6169, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %6170 to i64*
  %6171 = load i64, i64* %PC.i183
  %6172 = add i64 %6171, 53
  %6173 = load i64, i64* %PC.i183
  %6174 = add i64 %6173, 6
  %6175 = load i64, i64* %PC.i183
  %6176 = add i64 %6175, 6
  store i64 %6176, i64* %PC.i183
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6178 = load i8, i8* %6177, align 1
  %6179 = icmp eq i8 %6178, 0
  %6180 = zext i1 %6179 to i8
  store i8 %6180, i8* %BRANCH_TAKEN, align 1
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6182 = select i1 %6179, i64 %6172, i64 %6174
  store i64 %6182, i64* %6181, align 8
  store %struct.Memory* %loadMem_4130f3, %struct.Memory** %MEMORY
  %loadBr_4130f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4130f3 = icmp eq i8 %loadBr_4130f3, 1
  br i1 %cmpBr_4130f3, label %block_.L_413128, label %block_4130f9

block_4130f9:                                     ; preds = %block_.L_4130c6
  %loadMem_4130f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6184 = getelementptr inbounds %struct.GPR, %struct.GPR* %6183, i32 0, i32 33
  %6185 = getelementptr inbounds %struct.Reg, %struct.Reg* %6184, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %6185 to i64*
  %6186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6187 = getelementptr inbounds %struct.GPR, %struct.GPR* %6186, i32 0, i32 1
  %6188 = getelementptr inbounds %struct.Reg, %struct.Reg* %6187, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %6188 to i64*
  %6189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6190 = getelementptr inbounds %struct.GPR, %struct.GPR* %6189, i32 0, i32 15
  %6191 = getelementptr inbounds %struct.Reg, %struct.Reg* %6190, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %6191 to i64*
  %6192 = load i64, i64* %RBP.i182
  %6193 = sub i64 %6192, 1000
  %6194 = load i64, i64* %PC.i180
  %6195 = add i64 %6194, 7
  store i64 %6195, i64* %PC.i180
  %6196 = inttoptr i64 %6193 to i64*
  %6197 = load i64, i64* %6196
  store i64 %6197, i64* %RAX.i181, align 8
  store %struct.Memory* %loadMem_4130f9, %struct.Memory** %MEMORY
  %loadMem_413100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6199 = getelementptr inbounds %struct.GPR, %struct.GPR* %6198, i32 0, i32 33
  %6200 = getelementptr inbounds %struct.Reg, %struct.Reg* %6199, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %6200 to i64*
  %6201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6202 = getelementptr inbounds %struct.GPR, %struct.GPR* %6201, i32 0, i32 5
  %6203 = getelementptr inbounds %struct.Reg, %struct.Reg* %6202, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %6203 to i64*
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6205 = getelementptr inbounds %struct.GPR, %struct.GPR* %6204, i32 0, i32 15
  %6206 = getelementptr inbounds %struct.Reg, %struct.Reg* %6205, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %6206 to i64*
  %6207 = load i64, i64* %RBP.i179
  %6208 = sub i64 %6207, 1016
  %6209 = load i64, i64* %PC.i177
  %6210 = add i64 %6209, 7
  store i64 %6210, i64* %PC.i177
  %6211 = inttoptr i64 %6208 to i32*
  %6212 = load i32, i32* %6211
  %6213 = sext i32 %6212 to i64
  store i64 %6213, i64* %RCX.i178, align 8
  store %struct.Memory* %loadMem_413100, %struct.Memory** %MEMORY
  %loadMem_413107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6215 = getelementptr inbounds %struct.GPR, %struct.GPR* %6214, i32 0, i32 33
  %6216 = getelementptr inbounds %struct.Reg, %struct.Reg* %6215, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %6216 to i64*
  %6217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6218 = getelementptr inbounds %struct.GPR, %struct.GPR* %6217, i32 0, i32 1
  %6219 = getelementptr inbounds %struct.Reg, %struct.Reg* %6218, i32 0, i32 0
  %RAX.i174 = bitcast %union.anon* %6219 to i64*
  %6220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6221 = getelementptr inbounds %struct.GPR, %struct.GPR* %6220, i32 0, i32 5
  %6222 = getelementptr inbounds %struct.Reg, %struct.Reg* %6221, i32 0, i32 0
  %RCX.i175 = bitcast %union.anon* %6222 to i64*
  %6223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6224 = getelementptr inbounds %struct.GPR, %struct.GPR* %6223, i32 0, i32 7
  %6225 = getelementptr inbounds %struct.Reg, %struct.Reg* %6224, i32 0, i32 0
  %RDX.i176 = bitcast %union.anon* %6225 to i64*
  %6226 = load i64, i64* %RAX.i174
  %6227 = load i64, i64* %RCX.i175
  %6228 = mul i64 %6227, 4
  %6229 = add i64 %6228, %6226
  %6230 = load i64, i64* %PC.i173
  %6231 = add i64 %6230, 3
  store i64 %6231, i64* %PC.i173
  %6232 = inttoptr i64 %6229 to i32*
  %6233 = load i32, i32* %6232
  %6234 = zext i32 %6233 to i64
  store i64 %6234, i64* %RDX.i176, align 8
  store %struct.Memory* %loadMem_413107, %struct.Memory** %MEMORY
  %loadMem_41310a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6236 = getelementptr inbounds %struct.GPR, %struct.GPR* %6235, i32 0, i32 33
  %6237 = getelementptr inbounds %struct.Reg, %struct.Reg* %6236, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %6237 to i64*
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6239 = getelementptr inbounds %struct.GPR, %struct.GPR* %6238, i32 0, i32 7
  %6240 = getelementptr inbounds %struct.Reg, %struct.Reg* %6239, i32 0, i32 0
  %RDX.i172 = bitcast %union.anon* %6240 to i64*
  %6241 = load i64, i64* %RDX.i172
  %6242 = load i64, i64* %PC.i171
  %6243 = add i64 %6242, 3
  store i64 %6243, i64* %PC.i171
  %6244 = trunc i64 %6241 to i32
  %6245 = sub i32 %6244, 1
  %6246 = zext i32 %6245 to i64
  store i64 %6246, i64* %RDX.i172, align 8
  %6247 = icmp ult i32 %6244, 1
  %6248 = zext i1 %6247 to i8
  %6249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6248, i8* %6249, align 1
  %6250 = and i32 %6245, 255
  %6251 = call i32 @llvm.ctpop.i32(i32 %6250)
  %6252 = trunc i32 %6251 to i8
  %6253 = and i8 %6252, 1
  %6254 = xor i8 %6253, 1
  %6255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6254, i8* %6255, align 1
  %6256 = xor i64 1, %6241
  %6257 = trunc i64 %6256 to i32
  %6258 = xor i32 %6257, %6245
  %6259 = lshr i32 %6258, 4
  %6260 = trunc i32 %6259 to i8
  %6261 = and i8 %6260, 1
  %6262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6261, i8* %6262, align 1
  %6263 = icmp eq i32 %6245, 0
  %6264 = zext i1 %6263 to i8
  %6265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6264, i8* %6265, align 1
  %6266 = lshr i32 %6245, 31
  %6267 = trunc i32 %6266 to i8
  %6268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6267, i8* %6268, align 1
  %6269 = lshr i32 %6244, 31
  %6270 = xor i32 %6266, %6269
  %6271 = add i32 %6270, %6269
  %6272 = icmp eq i32 %6271, 2
  %6273 = zext i1 %6272 to i8
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6273, i8* %6274, align 1
  store %struct.Memory* %loadMem_41310a, %struct.Memory** %MEMORY
  %loadMem_41310d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6276 = getelementptr inbounds %struct.GPR, %struct.GPR* %6275, i32 0, i32 33
  %6277 = getelementptr inbounds %struct.Reg, %struct.Reg* %6276, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %6277 to i64*
  %6278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6279 = getelementptr inbounds %struct.GPR, %struct.GPR* %6278, i32 0, i32 7
  %6280 = getelementptr inbounds %struct.Reg, %struct.Reg* %6279, i32 0, i32 0
  %EDX.i169 = bitcast %union.anon* %6280 to i32*
  %6281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6282 = getelementptr inbounds %struct.GPR, %struct.GPR* %6281, i32 0, i32 1
  %6283 = getelementptr inbounds %struct.Reg, %struct.Reg* %6282, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %6283 to i64*
  %6284 = load i32, i32* %EDX.i169
  %6285 = zext i32 %6284 to i64
  %6286 = load i64, i64* %PC.i168
  %6287 = add i64 %6286, 3
  store i64 %6287, i64* %PC.i168
  %6288 = shl i64 %6285, 32
  %6289 = ashr exact i64 %6288, 32
  store i64 %6289, i64* %RAX.i170, align 8
  store %struct.Memory* %loadMem_41310d, %struct.Memory** %MEMORY
  %loadMem_413110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6291 = getelementptr inbounds %struct.GPR, %struct.GPR* %6290, i32 0, i32 33
  %6292 = getelementptr inbounds %struct.Reg, %struct.Reg* %6291, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %6292 to i64*
  %6293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6294 = getelementptr inbounds %struct.GPR, %struct.GPR* %6293, i32 0, i32 1
  %6295 = getelementptr inbounds %struct.Reg, %struct.Reg* %6294, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %6295 to i64*
  %6296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6297 = getelementptr inbounds %struct.GPR, %struct.GPR* %6296, i32 0, i32 7
  %6298 = getelementptr inbounds %struct.Reg, %struct.Reg* %6297, i32 0, i32 0
  %RDX.i167 = bitcast %union.anon* %6298 to i64*
  %6299 = load i64, i64* %RAX.i166
  %6300 = mul i64 %6299, 4
  %6301 = add i64 %6300, 11187184
  %6302 = load i64, i64* %PC.i165
  %6303 = add i64 %6302, 7
  store i64 %6303, i64* %PC.i165
  %6304 = inttoptr i64 %6301 to i32*
  %6305 = load i32, i32* %6304
  %6306 = zext i32 %6305 to i64
  store i64 %6306, i64* %RDX.i167, align 8
  store %struct.Memory* %loadMem_413110, %struct.Memory** %MEMORY
  %loadMem_413117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6308 = getelementptr inbounds %struct.GPR, %struct.GPR* %6307, i32 0, i32 33
  %6309 = getelementptr inbounds %struct.Reg, %struct.Reg* %6308, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %6309 to i64*
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6311 = getelementptr inbounds %struct.GPR, %struct.GPR* %6310, i32 0, i32 1
  %6312 = getelementptr inbounds %struct.Reg, %struct.Reg* %6311, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %6312 to i64*
  %6313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6314 = getelementptr inbounds %struct.GPR, %struct.GPR* %6313, i32 0, i32 15
  %6315 = getelementptr inbounds %struct.Reg, %struct.Reg* %6314, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %6315 to i64*
  %6316 = load i64, i64* %RBP.i164
  %6317 = sub i64 %6316, 12
  %6318 = load i64, i64* %PC.i162
  %6319 = add i64 %6318, 4
  store i64 %6319, i64* %PC.i162
  %6320 = inttoptr i64 %6317 to i32*
  %6321 = load i32, i32* %6320
  %6322 = sext i32 %6321 to i64
  store i64 %6322, i64* %RAX.i163, align 8
  store %struct.Memory* %loadMem_413117, %struct.Memory** %MEMORY
  %loadMem_41311b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6324 = getelementptr inbounds %struct.GPR, %struct.GPR* %6323, i32 0, i32 33
  %6325 = getelementptr inbounds %struct.Reg, %struct.Reg* %6324, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %6325 to i64*
  %6326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6327 = getelementptr inbounds %struct.GPR, %struct.GPR* %6326, i32 0, i32 7
  %6328 = getelementptr inbounds %struct.Reg, %struct.Reg* %6327, i32 0, i32 0
  %EDX.i160 = bitcast %union.anon* %6328 to i32*
  %6329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6330 = getelementptr inbounds %struct.GPR, %struct.GPR* %6329, i32 0, i32 1
  %6331 = getelementptr inbounds %struct.Reg, %struct.Reg* %6330, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %6331 to i64*
  %6332 = load i32, i32* %EDX.i160
  %6333 = zext i32 %6332 to i64
  %6334 = load i64, i64* %RAX.i161
  %6335 = mul i64 %6334, 4
  %6336 = add i64 %6335, 11187184
  %6337 = load i64, i64* %PC.i159
  %6338 = add i64 %6337, 7
  store i64 %6338, i64* %PC.i159
  %6339 = inttoptr i64 %6336 to i32*
  %6340 = load i32, i32* %6339
  %6341 = sub i32 %6332, %6340
  %6342 = icmp ult i32 %6332, %6340
  %6343 = zext i1 %6342 to i8
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6343, i8* %6344, align 1
  %6345 = and i32 %6341, 255
  %6346 = call i32 @llvm.ctpop.i32(i32 %6345)
  %6347 = trunc i32 %6346 to i8
  %6348 = and i8 %6347, 1
  %6349 = xor i8 %6348, 1
  %6350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6349, i8* %6350, align 1
  %6351 = xor i32 %6340, %6332
  %6352 = xor i32 %6351, %6341
  %6353 = lshr i32 %6352, 4
  %6354 = trunc i32 %6353 to i8
  %6355 = and i8 %6354, 1
  %6356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6355, i8* %6356, align 1
  %6357 = icmp eq i32 %6341, 0
  %6358 = zext i1 %6357 to i8
  %6359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6358, i8* %6359, align 1
  %6360 = lshr i32 %6341, 31
  %6361 = trunc i32 %6360 to i8
  %6362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6361, i8* %6362, align 1
  %6363 = lshr i32 %6332, 31
  %6364 = lshr i32 %6340, 31
  %6365 = xor i32 %6364, %6363
  %6366 = xor i32 %6360, %6363
  %6367 = add i32 %6366, %6365
  %6368 = icmp eq i32 %6367, 2
  %6369 = zext i1 %6368 to i8
  %6370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6369, i8* %6370, align 1
  store %struct.Memory* %loadMem_41311b, %struct.Memory** %MEMORY
  %loadMem_413122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6372 = getelementptr inbounds %struct.GPR, %struct.GPR* %6371, i32 0, i32 33
  %6373 = getelementptr inbounds %struct.Reg, %struct.Reg* %6372, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %6373 to i64*
  %6374 = load i64, i64* %PC.i158
  %6375 = add i64 %6374, 202
  %6376 = load i64, i64* %PC.i158
  %6377 = add i64 %6376, 6
  %6378 = load i64, i64* %PC.i158
  %6379 = add i64 %6378, 6
  store i64 %6379, i64* %PC.i158
  %6380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6381 = load i8, i8* %6380, align 1
  store i8 %6381, i8* %BRANCH_TAKEN, align 1
  %6382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6383 = icmp ne i8 %6381, 0
  %6384 = select i1 %6383, i64 %6375, i64 %6377
  store i64 %6384, i64* %6382, align 8
  store %struct.Memory* %loadMem_413122, %struct.Memory** %MEMORY
  %loadBr_413122 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413122 = icmp eq i8 %loadBr_413122, 1
  br i1 %cmpBr_413122, label %block_.L_4131ec, label %block_.L_413128

block_.L_413128:                                  ; preds = %block_4130f9, %block_.L_4130c6
  %loadMem_413128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6386 = getelementptr inbounds %struct.GPR, %struct.GPR* %6385, i32 0, i32 33
  %6387 = getelementptr inbounds %struct.Reg, %struct.Reg* %6386, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %6387 to i64*
  %6388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6389 = getelementptr inbounds %struct.GPR, %struct.GPR* %6388, i32 0, i32 1
  %6390 = getelementptr inbounds %struct.Reg, %struct.Reg* %6389, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %6390 to i64*
  %6391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6392 = getelementptr inbounds %struct.GPR, %struct.GPR* %6391, i32 0, i32 15
  %6393 = getelementptr inbounds %struct.Reg, %struct.Reg* %6392, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %6393 to i64*
  %6394 = load i64, i64* %RBP.i157
  %6395 = sub i64 %6394, 1000
  %6396 = load i64, i64* %PC.i155
  %6397 = add i64 %6396, 7
  store i64 %6397, i64* %PC.i155
  %6398 = inttoptr i64 %6395 to i64*
  %6399 = load i64, i64* %6398
  store i64 %6399, i64* %RAX.i156, align 8
  store %struct.Memory* %loadMem_413128, %struct.Memory** %MEMORY
  %loadMem_41312f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6401 = getelementptr inbounds %struct.GPR, %struct.GPR* %6400, i32 0, i32 33
  %6402 = getelementptr inbounds %struct.Reg, %struct.Reg* %6401, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %6402 to i64*
  %6403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6404 = getelementptr inbounds %struct.GPR, %struct.GPR* %6403, i32 0, i32 5
  %6405 = getelementptr inbounds %struct.Reg, %struct.Reg* %6404, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %6405 to i64*
  %6406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6407 = getelementptr inbounds %struct.GPR, %struct.GPR* %6406, i32 0, i32 15
  %6408 = getelementptr inbounds %struct.Reg, %struct.Reg* %6407, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %6408 to i64*
  %6409 = load i64, i64* %RBP.i154
  %6410 = sub i64 %6409, 1016
  %6411 = load i64, i64* %PC.i152
  %6412 = add i64 %6411, 7
  store i64 %6412, i64* %PC.i152
  %6413 = inttoptr i64 %6410 to i32*
  %6414 = load i32, i32* %6413
  %6415 = sext i32 %6414 to i64
  store i64 %6415, i64* %RCX.i153, align 8
  store %struct.Memory* %loadMem_41312f, %struct.Memory** %MEMORY
  %loadMem_413136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6417 = getelementptr inbounds %struct.GPR, %struct.GPR* %6416, i32 0, i32 33
  %6418 = getelementptr inbounds %struct.Reg, %struct.Reg* %6417, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %6418 to i64*
  %6419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6420 = getelementptr inbounds %struct.GPR, %struct.GPR* %6419, i32 0, i32 1
  %6421 = getelementptr inbounds %struct.Reg, %struct.Reg* %6420, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %6421 to i64*
  %6422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6423 = getelementptr inbounds %struct.GPR, %struct.GPR* %6422, i32 0, i32 5
  %6424 = getelementptr inbounds %struct.Reg, %struct.Reg* %6423, i32 0, i32 0
  %RCX.i150 = bitcast %union.anon* %6424 to i64*
  %6425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6426 = getelementptr inbounds %struct.GPR, %struct.GPR* %6425, i32 0, i32 7
  %6427 = getelementptr inbounds %struct.Reg, %struct.Reg* %6426, i32 0, i32 0
  %RDX.i151 = bitcast %union.anon* %6427 to i64*
  %6428 = load i64, i64* %RAX.i149
  %6429 = load i64, i64* %RCX.i150
  %6430 = mul i64 %6429, 4
  %6431 = add i64 %6430, %6428
  %6432 = load i64, i64* %PC.i148
  %6433 = add i64 %6432, 3
  store i64 %6433, i64* %PC.i148
  %6434 = inttoptr i64 %6431 to i32*
  %6435 = load i32, i32* %6434
  %6436 = zext i32 %6435 to i64
  store i64 %6436, i64* %RDX.i151, align 8
  store %struct.Memory* %loadMem_413136, %struct.Memory** %MEMORY
  %loadMem_413139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6438 = getelementptr inbounds %struct.GPR, %struct.GPR* %6437, i32 0, i32 33
  %6439 = getelementptr inbounds %struct.Reg, %struct.Reg* %6438, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %6439 to i64*
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6441 = getelementptr inbounds %struct.GPR, %struct.GPR* %6440, i32 0, i32 7
  %6442 = getelementptr inbounds %struct.Reg, %struct.Reg* %6441, i32 0, i32 0
  %RDX.i147 = bitcast %union.anon* %6442 to i64*
  %6443 = load i64, i64* %RDX.i147
  %6444 = load i64, i64* %PC.i146
  %6445 = add i64 %6444, 3
  store i64 %6445, i64* %PC.i146
  %6446 = trunc i64 %6443 to i32
  %6447 = sub i32 %6446, 20
  %6448 = zext i32 %6447 to i64
  store i64 %6448, i64* %RDX.i147, align 8
  %6449 = icmp ult i32 %6446, 20
  %6450 = zext i1 %6449 to i8
  %6451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6450, i8* %6451, align 1
  %6452 = and i32 %6447, 255
  %6453 = call i32 @llvm.ctpop.i32(i32 %6452)
  %6454 = trunc i32 %6453 to i8
  %6455 = and i8 %6454, 1
  %6456 = xor i8 %6455, 1
  %6457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6456, i8* %6457, align 1
  %6458 = xor i64 20, %6443
  %6459 = trunc i64 %6458 to i32
  %6460 = xor i32 %6459, %6447
  %6461 = lshr i32 %6460, 4
  %6462 = trunc i32 %6461 to i8
  %6463 = and i8 %6462, 1
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6463, i8* %6464, align 1
  %6465 = icmp eq i32 %6447, 0
  %6466 = zext i1 %6465 to i8
  %6467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6466, i8* %6467, align 1
  %6468 = lshr i32 %6447, 31
  %6469 = trunc i32 %6468 to i8
  %6470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6469, i8* %6470, align 1
  %6471 = lshr i32 %6446, 31
  %6472 = xor i32 %6468, %6471
  %6473 = add i32 %6472, %6471
  %6474 = icmp eq i32 %6473, 2
  %6475 = zext i1 %6474 to i8
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6475, i8* %6476, align 1
  store %struct.Memory* %loadMem_413139, %struct.Memory** %MEMORY
  %loadMem_41313c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6478 = getelementptr inbounds %struct.GPR, %struct.GPR* %6477, i32 0, i32 33
  %6479 = getelementptr inbounds %struct.Reg, %struct.Reg* %6478, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6479 to i64*
  %6480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6481 = getelementptr inbounds %struct.GPR, %struct.GPR* %6480, i32 0, i32 7
  %6482 = getelementptr inbounds %struct.Reg, %struct.Reg* %6481, i32 0, i32 0
  %EDX.i144 = bitcast %union.anon* %6482 to i32*
  %6483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6484 = getelementptr inbounds %struct.GPR, %struct.GPR* %6483, i32 0, i32 1
  %6485 = getelementptr inbounds %struct.Reg, %struct.Reg* %6484, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %6485 to i64*
  %6486 = load i32, i32* %EDX.i144
  %6487 = zext i32 %6486 to i64
  %6488 = load i64, i64* %PC.i143
  %6489 = add i64 %6488, 3
  store i64 %6489, i64* %PC.i143
  %6490 = shl i64 %6487, 32
  %6491 = ashr exact i64 %6490, 32
  store i64 %6491, i64* %RAX.i145, align 8
  store %struct.Memory* %loadMem_41313c, %struct.Memory** %MEMORY
  %loadMem_41313f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6493 = getelementptr inbounds %struct.GPR, %struct.GPR* %6492, i32 0, i32 33
  %6494 = getelementptr inbounds %struct.Reg, %struct.Reg* %6493, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %6494 to i64*
  %6495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6496 = getelementptr inbounds %struct.GPR, %struct.GPR* %6495, i32 0, i32 1
  %6497 = getelementptr inbounds %struct.Reg, %struct.Reg* %6496, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %6497 to i64*
  %6498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6499 = getelementptr inbounds %struct.GPR, %struct.GPR* %6498, i32 0, i32 7
  %6500 = getelementptr inbounds %struct.Reg, %struct.Reg* %6499, i32 0, i32 0
  %RDX.i142 = bitcast %union.anon* %6500 to i64*
  %6501 = load i64, i64* %RAX.i141
  %6502 = add i64 %6501, 12099168
  %6503 = load i64, i64* %PC.i140
  %6504 = add i64 %6503, 8
  store i64 %6504, i64* %PC.i140
  %6505 = inttoptr i64 %6502 to i8*
  %6506 = load i8, i8* %6505
  %6507 = zext i8 %6506 to i64
  store i64 %6507, i64* %RDX.i142, align 8
  store %struct.Memory* %loadMem_41313f, %struct.Memory** %MEMORY
  %loadMem_413147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6509 = getelementptr inbounds %struct.GPR, %struct.GPR* %6508, i32 0, i32 33
  %6510 = getelementptr inbounds %struct.Reg, %struct.Reg* %6509, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %6510 to i64*
  %6511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6512 = getelementptr inbounds %struct.GPR, %struct.GPR* %6511, i32 0, i32 1
  %6513 = getelementptr inbounds %struct.Reg, %struct.Reg* %6512, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %6513 to i64*
  %6514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6515 = getelementptr inbounds %struct.GPR, %struct.GPR* %6514, i32 0, i32 15
  %6516 = getelementptr inbounds %struct.Reg, %struct.Reg* %6515, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %6516 to i64*
  %6517 = load i64, i64* %RBP.i139
  %6518 = sub i64 %6517, 12
  %6519 = load i64, i64* %PC.i137
  %6520 = add i64 %6519, 4
  store i64 %6520, i64* %PC.i137
  %6521 = inttoptr i64 %6518 to i32*
  %6522 = load i32, i32* %6521
  %6523 = sext i32 %6522 to i64
  store i64 %6523, i64* %RAX.i138, align 8
  store %struct.Memory* %loadMem_413147, %struct.Memory** %MEMORY
  %loadMem_41314b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 33
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %6526 to i64*
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6528 = getelementptr inbounds %struct.GPR, %struct.GPR* %6527, i32 0, i32 1
  %6529 = getelementptr inbounds %struct.Reg, %struct.Reg* %6528, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %6529 to i64*
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6531 = getelementptr inbounds %struct.GPR, %struct.GPR* %6530, i32 0, i32 9
  %6532 = getelementptr inbounds %struct.Reg, %struct.Reg* %6531, i32 0, i32 0
  %RSI.i136 = bitcast %union.anon* %6532 to i64*
  %6533 = load i64, i64* %RAX.i135
  %6534 = add i64 %6533, 12099168
  %6535 = load i64, i64* %PC.i134
  %6536 = add i64 %6535, 8
  store i64 %6536, i64* %PC.i134
  %6537 = inttoptr i64 %6534 to i8*
  %6538 = load i8, i8* %6537
  %6539 = zext i8 %6538 to i64
  store i64 %6539, i64* %RSI.i136, align 8
  store %struct.Memory* %loadMem_41314b, %struct.Memory** %MEMORY
  %loadMem_413153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6541 = getelementptr inbounds %struct.GPR, %struct.GPR* %6540, i32 0, i32 33
  %6542 = getelementptr inbounds %struct.Reg, %struct.Reg* %6541, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %6542 to i64*
  %6543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6544 = getelementptr inbounds %struct.GPR, %struct.GPR* %6543, i32 0, i32 7
  %6545 = getelementptr inbounds %struct.Reg, %struct.Reg* %6544, i32 0, i32 0
  %EDX.i132 = bitcast %union.anon* %6545 to i32*
  %6546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6547 = getelementptr inbounds %struct.GPR, %struct.GPR* %6546, i32 0, i32 9
  %6548 = getelementptr inbounds %struct.Reg, %struct.Reg* %6547, i32 0, i32 0
  %ESI.i133 = bitcast %union.anon* %6548 to i32*
  %6549 = load i32, i32* %EDX.i132
  %6550 = zext i32 %6549 to i64
  %6551 = load i32, i32* %ESI.i133
  %6552 = zext i32 %6551 to i64
  %6553 = load i64, i64* %PC.i131
  %6554 = add i64 %6553, 2
  store i64 %6554, i64* %PC.i131
  %6555 = sub i32 %6549, %6551
  %6556 = icmp ult i32 %6549, %6551
  %6557 = zext i1 %6556 to i8
  %6558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6557, i8* %6558, align 1
  %6559 = and i32 %6555, 255
  %6560 = call i32 @llvm.ctpop.i32(i32 %6559)
  %6561 = trunc i32 %6560 to i8
  %6562 = and i8 %6561, 1
  %6563 = xor i8 %6562, 1
  %6564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6563, i8* %6564, align 1
  %6565 = xor i64 %6552, %6550
  %6566 = trunc i64 %6565 to i32
  %6567 = xor i32 %6566, %6555
  %6568 = lshr i32 %6567, 4
  %6569 = trunc i32 %6568 to i8
  %6570 = and i8 %6569, 1
  %6571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6570, i8* %6571, align 1
  %6572 = icmp eq i32 %6555, 0
  %6573 = zext i1 %6572 to i8
  %6574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6573, i8* %6574, align 1
  %6575 = lshr i32 %6555, 31
  %6576 = trunc i32 %6575 to i8
  %6577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6576, i8* %6577, align 1
  %6578 = lshr i32 %6549, 31
  %6579 = lshr i32 %6551, 31
  %6580 = xor i32 %6579, %6578
  %6581 = xor i32 %6575, %6578
  %6582 = add i32 %6581, %6580
  %6583 = icmp eq i32 %6582, 2
  %6584 = zext i1 %6583 to i8
  %6585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6584, i8* %6585, align 1
  store %struct.Memory* %loadMem_413153, %struct.Memory** %MEMORY
  %loadMem_413155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6587 = getelementptr inbounds %struct.GPR, %struct.GPR* %6586, i32 0, i32 33
  %6588 = getelementptr inbounds %struct.Reg, %struct.Reg* %6587, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %6588 to i64*
  %6589 = load i64, i64* %PC.i130
  %6590 = add i64 %6589, 53
  %6591 = load i64, i64* %PC.i130
  %6592 = add i64 %6591, 6
  %6593 = load i64, i64* %PC.i130
  %6594 = add i64 %6593, 6
  store i64 %6594, i64* %PC.i130
  %6595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6596 = load i8, i8* %6595, align 1
  %6597 = icmp eq i8 %6596, 0
  %6598 = zext i1 %6597 to i8
  store i8 %6598, i8* %BRANCH_TAKEN, align 1
  %6599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6600 = select i1 %6597, i64 %6590, i64 %6592
  store i64 %6600, i64* %6599, align 8
  store %struct.Memory* %loadMem_413155, %struct.Memory** %MEMORY
  %loadBr_413155 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413155 = icmp eq i8 %loadBr_413155, 1
  br i1 %cmpBr_413155, label %block_.L_41318a, label %block_41315b

block_41315b:                                     ; preds = %block_.L_413128
  %loadMem_41315b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6602 = getelementptr inbounds %struct.GPR, %struct.GPR* %6601, i32 0, i32 33
  %6603 = getelementptr inbounds %struct.Reg, %struct.Reg* %6602, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %6603 to i64*
  %6604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6605 = getelementptr inbounds %struct.GPR, %struct.GPR* %6604, i32 0, i32 1
  %6606 = getelementptr inbounds %struct.Reg, %struct.Reg* %6605, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %6606 to i64*
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6608 = getelementptr inbounds %struct.GPR, %struct.GPR* %6607, i32 0, i32 15
  %6609 = getelementptr inbounds %struct.Reg, %struct.Reg* %6608, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %6609 to i64*
  %6610 = load i64, i64* %RBP.i129
  %6611 = sub i64 %6610, 1000
  %6612 = load i64, i64* %PC.i127
  %6613 = add i64 %6612, 7
  store i64 %6613, i64* %PC.i127
  %6614 = inttoptr i64 %6611 to i64*
  %6615 = load i64, i64* %6614
  store i64 %6615, i64* %RAX.i128, align 8
  store %struct.Memory* %loadMem_41315b, %struct.Memory** %MEMORY
  %loadMem_413162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6617 = getelementptr inbounds %struct.GPR, %struct.GPR* %6616, i32 0, i32 33
  %6618 = getelementptr inbounds %struct.Reg, %struct.Reg* %6617, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %6618 to i64*
  %6619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6620 = getelementptr inbounds %struct.GPR, %struct.GPR* %6619, i32 0, i32 5
  %6621 = getelementptr inbounds %struct.Reg, %struct.Reg* %6620, i32 0, i32 0
  %RCX.i125 = bitcast %union.anon* %6621 to i64*
  %6622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6623 = getelementptr inbounds %struct.GPR, %struct.GPR* %6622, i32 0, i32 15
  %6624 = getelementptr inbounds %struct.Reg, %struct.Reg* %6623, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %6624 to i64*
  %6625 = load i64, i64* %RBP.i126
  %6626 = sub i64 %6625, 1016
  %6627 = load i64, i64* %PC.i124
  %6628 = add i64 %6627, 7
  store i64 %6628, i64* %PC.i124
  %6629 = inttoptr i64 %6626 to i32*
  %6630 = load i32, i32* %6629
  %6631 = sext i32 %6630 to i64
  store i64 %6631, i64* %RCX.i125, align 8
  store %struct.Memory* %loadMem_413162, %struct.Memory** %MEMORY
  %loadMem_413169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6633 = getelementptr inbounds %struct.GPR, %struct.GPR* %6632, i32 0, i32 33
  %6634 = getelementptr inbounds %struct.Reg, %struct.Reg* %6633, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %6634 to i64*
  %6635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6636 = getelementptr inbounds %struct.GPR, %struct.GPR* %6635, i32 0, i32 1
  %6637 = getelementptr inbounds %struct.Reg, %struct.Reg* %6636, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %6637 to i64*
  %6638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6639 = getelementptr inbounds %struct.GPR, %struct.GPR* %6638, i32 0, i32 5
  %6640 = getelementptr inbounds %struct.Reg, %struct.Reg* %6639, i32 0, i32 0
  %RCX.i122 = bitcast %union.anon* %6640 to i64*
  %6641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6642 = getelementptr inbounds %struct.GPR, %struct.GPR* %6641, i32 0, i32 7
  %6643 = getelementptr inbounds %struct.Reg, %struct.Reg* %6642, i32 0, i32 0
  %RDX.i123 = bitcast %union.anon* %6643 to i64*
  %6644 = load i64, i64* %RAX.i121
  %6645 = load i64, i64* %RCX.i122
  %6646 = mul i64 %6645, 4
  %6647 = add i64 %6646, %6644
  %6648 = load i64, i64* %PC.i120
  %6649 = add i64 %6648, 3
  store i64 %6649, i64* %PC.i120
  %6650 = inttoptr i64 %6647 to i32*
  %6651 = load i32, i32* %6650
  %6652 = zext i32 %6651 to i64
  store i64 %6652, i64* %RDX.i123, align 8
  store %struct.Memory* %loadMem_413169, %struct.Memory** %MEMORY
  %loadMem_41316c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6654 = getelementptr inbounds %struct.GPR, %struct.GPR* %6653, i32 0, i32 33
  %6655 = getelementptr inbounds %struct.Reg, %struct.Reg* %6654, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %6655 to i64*
  %6656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6657 = getelementptr inbounds %struct.GPR, %struct.GPR* %6656, i32 0, i32 7
  %6658 = getelementptr inbounds %struct.Reg, %struct.Reg* %6657, i32 0, i32 0
  %RDX.i119 = bitcast %union.anon* %6658 to i64*
  %6659 = load i64, i64* %RDX.i119
  %6660 = load i64, i64* %PC.i118
  %6661 = add i64 %6660, 3
  store i64 %6661, i64* %PC.i118
  %6662 = trunc i64 %6659 to i32
  %6663 = sub i32 %6662, 20
  %6664 = zext i32 %6663 to i64
  store i64 %6664, i64* %RDX.i119, align 8
  %6665 = icmp ult i32 %6662, 20
  %6666 = zext i1 %6665 to i8
  %6667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6666, i8* %6667, align 1
  %6668 = and i32 %6663, 255
  %6669 = call i32 @llvm.ctpop.i32(i32 %6668)
  %6670 = trunc i32 %6669 to i8
  %6671 = and i8 %6670, 1
  %6672 = xor i8 %6671, 1
  %6673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6672, i8* %6673, align 1
  %6674 = xor i64 20, %6659
  %6675 = trunc i64 %6674 to i32
  %6676 = xor i32 %6675, %6663
  %6677 = lshr i32 %6676, 4
  %6678 = trunc i32 %6677 to i8
  %6679 = and i8 %6678, 1
  %6680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6679, i8* %6680, align 1
  %6681 = icmp eq i32 %6663, 0
  %6682 = zext i1 %6681 to i8
  %6683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6682, i8* %6683, align 1
  %6684 = lshr i32 %6663, 31
  %6685 = trunc i32 %6684 to i8
  %6686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6685, i8* %6686, align 1
  %6687 = lshr i32 %6662, 31
  %6688 = xor i32 %6684, %6687
  %6689 = add i32 %6688, %6687
  %6690 = icmp eq i32 %6689, 2
  %6691 = zext i1 %6690 to i8
  %6692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6691, i8* %6692, align 1
  store %struct.Memory* %loadMem_41316c, %struct.Memory** %MEMORY
  %loadMem_41316f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6694 = getelementptr inbounds %struct.GPR, %struct.GPR* %6693, i32 0, i32 33
  %6695 = getelementptr inbounds %struct.Reg, %struct.Reg* %6694, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %6695 to i64*
  %6696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6697 = getelementptr inbounds %struct.GPR, %struct.GPR* %6696, i32 0, i32 7
  %6698 = getelementptr inbounds %struct.Reg, %struct.Reg* %6697, i32 0, i32 0
  %EDX.i116 = bitcast %union.anon* %6698 to i32*
  %6699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6700 = getelementptr inbounds %struct.GPR, %struct.GPR* %6699, i32 0, i32 1
  %6701 = getelementptr inbounds %struct.Reg, %struct.Reg* %6700, i32 0, i32 0
  %RAX.i117 = bitcast %union.anon* %6701 to i64*
  %6702 = load i32, i32* %EDX.i116
  %6703 = zext i32 %6702 to i64
  %6704 = load i64, i64* %PC.i115
  %6705 = add i64 %6704, 3
  store i64 %6705, i64* %PC.i115
  %6706 = shl i64 %6703, 32
  %6707 = ashr exact i64 %6706, 32
  store i64 %6707, i64* %RAX.i117, align 8
  store %struct.Memory* %loadMem_41316f, %struct.Memory** %MEMORY
  %loadMem_413172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6709 = getelementptr inbounds %struct.GPR, %struct.GPR* %6708, i32 0, i32 33
  %6710 = getelementptr inbounds %struct.Reg, %struct.Reg* %6709, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %6710 to i64*
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6712 = getelementptr inbounds %struct.GPR, %struct.GPR* %6711, i32 0, i32 1
  %6713 = getelementptr inbounds %struct.Reg, %struct.Reg* %6712, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %6713 to i64*
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6715 = getelementptr inbounds %struct.GPR, %struct.GPR* %6714, i32 0, i32 7
  %6716 = getelementptr inbounds %struct.Reg, %struct.Reg* %6715, i32 0, i32 0
  %RDX.i114 = bitcast %union.anon* %6716 to i64*
  %6717 = load i64, i64* %RAX.i113
  %6718 = mul i64 %6717, 4
  %6719 = add i64 %6718, 11187184
  %6720 = load i64, i64* %PC.i112
  %6721 = add i64 %6720, 7
  store i64 %6721, i64* %PC.i112
  %6722 = inttoptr i64 %6719 to i32*
  %6723 = load i32, i32* %6722
  %6724 = zext i32 %6723 to i64
  store i64 %6724, i64* %RDX.i114, align 8
  store %struct.Memory* %loadMem_413172, %struct.Memory** %MEMORY
  %loadMem_413179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6726 = getelementptr inbounds %struct.GPR, %struct.GPR* %6725, i32 0, i32 33
  %6727 = getelementptr inbounds %struct.Reg, %struct.Reg* %6726, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %6727 to i64*
  %6728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6729 = getelementptr inbounds %struct.GPR, %struct.GPR* %6728, i32 0, i32 1
  %6730 = getelementptr inbounds %struct.Reg, %struct.Reg* %6729, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %6730 to i64*
  %6731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6732 = getelementptr inbounds %struct.GPR, %struct.GPR* %6731, i32 0, i32 15
  %6733 = getelementptr inbounds %struct.Reg, %struct.Reg* %6732, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %6733 to i64*
  %6734 = load i64, i64* %RBP.i111
  %6735 = sub i64 %6734, 12
  %6736 = load i64, i64* %PC.i109
  %6737 = add i64 %6736, 4
  store i64 %6737, i64* %PC.i109
  %6738 = inttoptr i64 %6735 to i32*
  %6739 = load i32, i32* %6738
  %6740 = sext i32 %6739 to i64
  store i64 %6740, i64* %RAX.i110, align 8
  store %struct.Memory* %loadMem_413179, %struct.Memory** %MEMORY
  %loadMem_41317d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6742 = getelementptr inbounds %struct.GPR, %struct.GPR* %6741, i32 0, i32 33
  %6743 = getelementptr inbounds %struct.Reg, %struct.Reg* %6742, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %6743 to i64*
  %6744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6745 = getelementptr inbounds %struct.GPR, %struct.GPR* %6744, i32 0, i32 7
  %6746 = getelementptr inbounds %struct.Reg, %struct.Reg* %6745, i32 0, i32 0
  %EDX.i107 = bitcast %union.anon* %6746 to i32*
  %6747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6748 = getelementptr inbounds %struct.GPR, %struct.GPR* %6747, i32 0, i32 1
  %6749 = getelementptr inbounds %struct.Reg, %struct.Reg* %6748, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %6749 to i64*
  %6750 = load i32, i32* %EDX.i107
  %6751 = zext i32 %6750 to i64
  %6752 = load i64, i64* %RAX.i108
  %6753 = mul i64 %6752, 4
  %6754 = add i64 %6753, 11187184
  %6755 = load i64, i64* %PC.i106
  %6756 = add i64 %6755, 7
  store i64 %6756, i64* %PC.i106
  %6757 = inttoptr i64 %6754 to i32*
  %6758 = load i32, i32* %6757
  %6759 = sub i32 %6750, %6758
  %6760 = icmp ult i32 %6750, %6758
  %6761 = zext i1 %6760 to i8
  %6762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6761, i8* %6762, align 1
  %6763 = and i32 %6759, 255
  %6764 = call i32 @llvm.ctpop.i32(i32 %6763)
  %6765 = trunc i32 %6764 to i8
  %6766 = and i8 %6765, 1
  %6767 = xor i8 %6766, 1
  %6768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6767, i8* %6768, align 1
  %6769 = xor i32 %6758, %6750
  %6770 = xor i32 %6769, %6759
  %6771 = lshr i32 %6770, 4
  %6772 = trunc i32 %6771 to i8
  %6773 = and i8 %6772, 1
  %6774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6773, i8* %6774, align 1
  %6775 = icmp eq i32 %6759, 0
  %6776 = zext i1 %6775 to i8
  %6777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6776, i8* %6777, align 1
  %6778 = lshr i32 %6759, 31
  %6779 = trunc i32 %6778 to i8
  %6780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6779, i8* %6780, align 1
  %6781 = lshr i32 %6750, 31
  %6782 = lshr i32 %6758, 31
  %6783 = xor i32 %6782, %6781
  %6784 = xor i32 %6778, %6781
  %6785 = add i32 %6784, %6783
  %6786 = icmp eq i32 %6785, 2
  %6787 = zext i1 %6786 to i8
  %6788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6787, i8* %6788, align 1
  store %struct.Memory* %loadMem_41317d, %struct.Memory** %MEMORY
  %loadMem_413184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6790 = getelementptr inbounds %struct.GPR, %struct.GPR* %6789, i32 0, i32 33
  %6791 = getelementptr inbounds %struct.Reg, %struct.Reg* %6790, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %6791 to i64*
  %6792 = load i64, i64* %PC.i105
  %6793 = add i64 %6792, 104
  %6794 = load i64, i64* %PC.i105
  %6795 = add i64 %6794, 6
  %6796 = load i64, i64* %PC.i105
  %6797 = add i64 %6796, 6
  store i64 %6797, i64* %PC.i105
  %6798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6799 = load i8, i8* %6798, align 1
  store i8 %6799, i8* %BRANCH_TAKEN, align 1
  %6800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6801 = icmp ne i8 %6799, 0
  %6802 = select i1 %6801, i64 %6793, i64 %6795
  store i64 %6802, i64* %6800, align 8
  store %struct.Memory* %loadMem_413184, %struct.Memory** %MEMORY
  %loadBr_413184 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413184 = icmp eq i8 %loadBr_413184, 1
  br i1 %cmpBr_413184, label %block_.L_4131ec, label %block_.L_41318a

block_.L_41318a:                                  ; preds = %block_41315b, %block_.L_413128
  %loadMem_41318a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6804 = getelementptr inbounds %struct.GPR, %struct.GPR* %6803, i32 0, i32 33
  %6805 = getelementptr inbounds %struct.Reg, %struct.Reg* %6804, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %6805 to i64*
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6807 = getelementptr inbounds %struct.GPR, %struct.GPR* %6806, i32 0, i32 1
  %6808 = getelementptr inbounds %struct.Reg, %struct.Reg* %6807, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %6808 to i64*
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6810 = getelementptr inbounds %struct.GPR, %struct.GPR* %6809, i32 0, i32 15
  %6811 = getelementptr inbounds %struct.Reg, %struct.Reg* %6810, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %6811 to i64*
  %6812 = load i64, i64* %RBP.i104
  %6813 = sub i64 %6812, 1000
  %6814 = load i64, i64* %PC.i102
  %6815 = add i64 %6814, 7
  store i64 %6815, i64* %PC.i102
  %6816 = inttoptr i64 %6813 to i64*
  %6817 = load i64, i64* %6816
  store i64 %6817, i64* %RAX.i103, align 8
  store %struct.Memory* %loadMem_41318a, %struct.Memory** %MEMORY
  %loadMem_413191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6819 = getelementptr inbounds %struct.GPR, %struct.GPR* %6818, i32 0, i32 33
  %6820 = getelementptr inbounds %struct.Reg, %struct.Reg* %6819, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %6820 to i64*
  %6821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6822 = getelementptr inbounds %struct.GPR, %struct.GPR* %6821, i32 0, i32 5
  %6823 = getelementptr inbounds %struct.Reg, %struct.Reg* %6822, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %6823 to i64*
  %6824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6825 = getelementptr inbounds %struct.GPR, %struct.GPR* %6824, i32 0, i32 15
  %6826 = getelementptr inbounds %struct.Reg, %struct.Reg* %6825, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %6826 to i64*
  %6827 = load i64, i64* %RBP.i101
  %6828 = sub i64 %6827, 1016
  %6829 = load i64, i64* %PC.i99
  %6830 = add i64 %6829, 7
  store i64 %6830, i64* %PC.i99
  %6831 = inttoptr i64 %6828 to i32*
  %6832 = load i32, i32* %6831
  %6833 = sext i32 %6832 to i64
  store i64 %6833, i64* %RCX.i100, align 8
  store %struct.Memory* %loadMem_413191, %struct.Memory** %MEMORY
  %loadMem_413198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6835 = getelementptr inbounds %struct.GPR, %struct.GPR* %6834, i32 0, i32 33
  %6836 = getelementptr inbounds %struct.Reg, %struct.Reg* %6835, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %6836 to i64*
  %6837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6838 = getelementptr inbounds %struct.GPR, %struct.GPR* %6837, i32 0, i32 1
  %6839 = getelementptr inbounds %struct.Reg, %struct.Reg* %6838, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %6839 to i64*
  %6840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6841 = getelementptr inbounds %struct.GPR, %struct.GPR* %6840, i32 0, i32 5
  %6842 = getelementptr inbounds %struct.Reg, %struct.Reg* %6841, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %6842 to i64*
  %6843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6844 = getelementptr inbounds %struct.GPR, %struct.GPR* %6843, i32 0, i32 7
  %6845 = getelementptr inbounds %struct.Reg, %struct.Reg* %6844, i32 0, i32 0
  %RDX.i98 = bitcast %union.anon* %6845 to i64*
  %6846 = load i64, i64* %RAX.i96
  %6847 = load i64, i64* %RCX.i97
  %6848 = mul i64 %6847, 4
  %6849 = add i64 %6848, %6846
  %6850 = load i64, i64* %PC.i95
  %6851 = add i64 %6850, 3
  store i64 %6851, i64* %PC.i95
  %6852 = inttoptr i64 %6849 to i32*
  %6853 = load i32, i32* %6852
  %6854 = zext i32 %6853 to i64
  store i64 %6854, i64* %RDX.i98, align 8
  store %struct.Memory* %loadMem_413198, %struct.Memory** %MEMORY
  %loadMem_41319b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6856 = getelementptr inbounds %struct.GPR, %struct.GPR* %6855, i32 0, i32 33
  %6857 = getelementptr inbounds %struct.Reg, %struct.Reg* %6856, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %6857 to i64*
  %6858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6859 = getelementptr inbounds %struct.GPR, %struct.GPR* %6858, i32 0, i32 7
  %6860 = getelementptr inbounds %struct.Reg, %struct.Reg* %6859, i32 0, i32 0
  %RDX.i94 = bitcast %union.anon* %6860 to i64*
  %6861 = load i64, i64* %RDX.i94
  %6862 = load i64, i64* %PC.i93
  %6863 = add i64 %6862, 3
  store i64 %6863, i64* %PC.i93
  %6864 = trunc i64 %6861 to i32
  %6865 = add i32 1, %6864
  %6866 = zext i32 %6865 to i64
  store i64 %6866, i64* %RDX.i94, align 8
  %6867 = icmp ult i32 %6865, %6864
  %6868 = icmp ult i32 %6865, 1
  %6869 = or i1 %6867, %6868
  %6870 = zext i1 %6869 to i8
  %6871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6870, i8* %6871, align 1
  %6872 = and i32 %6865, 255
  %6873 = call i32 @llvm.ctpop.i32(i32 %6872)
  %6874 = trunc i32 %6873 to i8
  %6875 = and i8 %6874, 1
  %6876 = xor i8 %6875, 1
  %6877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6876, i8* %6877, align 1
  %6878 = xor i64 1, %6861
  %6879 = trunc i64 %6878 to i32
  %6880 = xor i32 %6879, %6865
  %6881 = lshr i32 %6880, 4
  %6882 = trunc i32 %6881 to i8
  %6883 = and i8 %6882, 1
  %6884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6883, i8* %6884, align 1
  %6885 = icmp eq i32 %6865, 0
  %6886 = zext i1 %6885 to i8
  %6887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6886, i8* %6887, align 1
  %6888 = lshr i32 %6865, 31
  %6889 = trunc i32 %6888 to i8
  %6890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6889, i8* %6890, align 1
  %6891 = lshr i32 %6864, 31
  %6892 = xor i32 %6888, %6891
  %6893 = add i32 %6892, %6888
  %6894 = icmp eq i32 %6893, 2
  %6895 = zext i1 %6894 to i8
  %6896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6895, i8* %6896, align 1
  store %struct.Memory* %loadMem_41319b, %struct.Memory** %MEMORY
  %loadMem_41319e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6898 = getelementptr inbounds %struct.GPR, %struct.GPR* %6897, i32 0, i32 33
  %6899 = getelementptr inbounds %struct.Reg, %struct.Reg* %6898, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %6899 to i64*
  %6900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6901 = getelementptr inbounds %struct.GPR, %struct.GPR* %6900, i32 0, i32 7
  %6902 = getelementptr inbounds %struct.Reg, %struct.Reg* %6901, i32 0, i32 0
  %EDX.i91 = bitcast %union.anon* %6902 to i32*
  %6903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6904 = getelementptr inbounds %struct.GPR, %struct.GPR* %6903, i32 0, i32 1
  %6905 = getelementptr inbounds %struct.Reg, %struct.Reg* %6904, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %6905 to i64*
  %6906 = load i32, i32* %EDX.i91
  %6907 = zext i32 %6906 to i64
  %6908 = load i64, i64* %PC.i90
  %6909 = add i64 %6908, 3
  store i64 %6909, i64* %PC.i90
  %6910 = shl i64 %6907, 32
  %6911 = ashr exact i64 %6910, 32
  store i64 %6911, i64* %RAX.i92, align 8
  store %struct.Memory* %loadMem_41319e, %struct.Memory** %MEMORY
  %loadMem_4131a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6913 = getelementptr inbounds %struct.GPR, %struct.GPR* %6912, i32 0, i32 33
  %6914 = getelementptr inbounds %struct.Reg, %struct.Reg* %6913, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %6914 to i64*
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6916 = getelementptr inbounds %struct.GPR, %struct.GPR* %6915, i32 0, i32 1
  %6917 = getelementptr inbounds %struct.Reg, %struct.Reg* %6916, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %6917 to i64*
  %6918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6919 = getelementptr inbounds %struct.GPR, %struct.GPR* %6918, i32 0, i32 7
  %6920 = getelementptr inbounds %struct.Reg, %struct.Reg* %6919, i32 0, i32 0
  %RDX.i89 = bitcast %union.anon* %6920 to i64*
  %6921 = load i64, i64* %RAX.i88
  %6922 = add i64 %6921, 12099168
  %6923 = load i64, i64* %PC.i87
  %6924 = add i64 %6923, 8
  store i64 %6924, i64* %PC.i87
  %6925 = inttoptr i64 %6922 to i8*
  %6926 = load i8, i8* %6925
  %6927 = zext i8 %6926 to i64
  store i64 %6927, i64* %RDX.i89, align 8
  store %struct.Memory* %loadMem_4131a1, %struct.Memory** %MEMORY
  %loadMem_4131a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6929 = getelementptr inbounds %struct.GPR, %struct.GPR* %6928, i32 0, i32 33
  %6930 = getelementptr inbounds %struct.Reg, %struct.Reg* %6929, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %6930 to i64*
  %6931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6932 = getelementptr inbounds %struct.GPR, %struct.GPR* %6931, i32 0, i32 1
  %6933 = getelementptr inbounds %struct.Reg, %struct.Reg* %6932, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %6933 to i64*
  %6934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6935 = getelementptr inbounds %struct.GPR, %struct.GPR* %6934, i32 0, i32 15
  %6936 = getelementptr inbounds %struct.Reg, %struct.Reg* %6935, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %6936 to i64*
  %6937 = load i64, i64* %RBP.i86
  %6938 = sub i64 %6937, 12
  %6939 = load i64, i64* %PC.i84
  %6940 = add i64 %6939, 4
  store i64 %6940, i64* %PC.i84
  %6941 = inttoptr i64 %6938 to i32*
  %6942 = load i32, i32* %6941
  %6943 = sext i32 %6942 to i64
  store i64 %6943, i64* %RAX.i85, align 8
  store %struct.Memory* %loadMem_4131a9, %struct.Memory** %MEMORY
  %loadMem_4131ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %6944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6945 = getelementptr inbounds %struct.GPR, %struct.GPR* %6944, i32 0, i32 33
  %6946 = getelementptr inbounds %struct.Reg, %struct.Reg* %6945, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %6946 to i64*
  %6947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6948 = getelementptr inbounds %struct.GPR, %struct.GPR* %6947, i32 0, i32 1
  %6949 = getelementptr inbounds %struct.Reg, %struct.Reg* %6948, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %6949 to i64*
  %6950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6951 = getelementptr inbounds %struct.GPR, %struct.GPR* %6950, i32 0, i32 9
  %6952 = getelementptr inbounds %struct.Reg, %struct.Reg* %6951, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6952 to i64*
  %6953 = load i64, i64* %RAX.i83
  %6954 = add i64 %6953, 12099168
  %6955 = load i64, i64* %PC.i82
  %6956 = add i64 %6955, 8
  store i64 %6956, i64* %PC.i82
  %6957 = inttoptr i64 %6954 to i8*
  %6958 = load i8, i8* %6957
  %6959 = zext i8 %6958 to i64
  store i64 %6959, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4131ad, %struct.Memory** %MEMORY
  %loadMem_4131b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6961 = getelementptr inbounds %struct.GPR, %struct.GPR* %6960, i32 0, i32 33
  %6962 = getelementptr inbounds %struct.Reg, %struct.Reg* %6961, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %6962 to i64*
  %6963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6964 = getelementptr inbounds %struct.GPR, %struct.GPR* %6963, i32 0, i32 7
  %6965 = getelementptr inbounds %struct.Reg, %struct.Reg* %6964, i32 0, i32 0
  %EDX.i81 = bitcast %union.anon* %6965 to i32*
  %6966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6967 = getelementptr inbounds %struct.GPR, %struct.GPR* %6966, i32 0, i32 9
  %6968 = getelementptr inbounds %struct.Reg, %struct.Reg* %6967, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %6968 to i32*
  %6969 = load i32, i32* %EDX.i81
  %6970 = zext i32 %6969 to i64
  %6971 = load i32, i32* %ESI.i
  %6972 = zext i32 %6971 to i64
  %6973 = load i64, i64* %PC.i80
  %6974 = add i64 %6973, 2
  store i64 %6974, i64* %PC.i80
  %6975 = sub i32 %6969, %6971
  %6976 = icmp ult i32 %6969, %6971
  %6977 = zext i1 %6976 to i8
  %6978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6977, i8* %6978, align 1
  %6979 = and i32 %6975, 255
  %6980 = call i32 @llvm.ctpop.i32(i32 %6979)
  %6981 = trunc i32 %6980 to i8
  %6982 = and i8 %6981, 1
  %6983 = xor i8 %6982, 1
  %6984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6983, i8* %6984, align 1
  %6985 = xor i64 %6972, %6970
  %6986 = trunc i64 %6985 to i32
  %6987 = xor i32 %6986, %6975
  %6988 = lshr i32 %6987, 4
  %6989 = trunc i32 %6988 to i8
  %6990 = and i8 %6989, 1
  %6991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6990, i8* %6991, align 1
  %6992 = icmp eq i32 %6975, 0
  %6993 = zext i1 %6992 to i8
  %6994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6993, i8* %6994, align 1
  %6995 = lshr i32 %6975, 31
  %6996 = trunc i32 %6995 to i8
  %6997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6996, i8* %6997, align 1
  %6998 = lshr i32 %6969, 31
  %6999 = lshr i32 %6971, 31
  %7000 = xor i32 %6999, %6998
  %7001 = xor i32 %6995, %6998
  %7002 = add i32 %7001, %7000
  %7003 = icmp eq i32 %7002, 2
  %7004 = zext i1 %7003 to i8
  %7005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7004, i8* %7005, align 1
  store %struct.Memory* %loadMem_4131b5, %struct.Memory** %MEMORY
  %loadMem_4131b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7007 = getelementptr inbounds %struct.GPR, %struct.GPR* %7006, i32 0, i32 33
  %7008 = getelementptr inbounds %struct.Reg, %struct.Reg* %7007, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %7008 to i64*
  %7009 = load i64, i64* %PC.i79
  %7010 = add i64 %7009, 114
  %7011 = load i64, i64* %PC.i79
  %7012 = add i64 %7011, 6
  %7013 = load i64, i64* %PC.i79
  %7014 = add i64 %7013, 6
  store i64 %7014, i64* %PC.i79
  %7015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7016 = load i8, i8* %7015, align 1
  %7017 = icmp eq i8 %7016, 0
  %7018 = zext i1 %7017 to i8
  store i8 %7018, i8* %BRANCH_TAKEN, align 1
  %7019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7020 = select i1 %7017, i64 %7010, i64 %7012
  store i64 %7020, i64* %7019, align 8
  store %struct.Memory* %loadMem_4131b7, %struct.Memory** %MEMORY
  %loadBr_4131b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4131b7 = icmp eq i8 %loadBr_4131b7, 1
  br i1 %cmpBr_4131b7, label %block_.L_413229, label %block_4131bd

block_4131bd:                                     ; preds = %block_.L_41318a
  %loadMem_4131bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7022 = getelementptr inbounds %struct.GPR, %struct.GPR* %7021, i32 0, i32 33
  %7023 = getelementptr inbounds %struct.Reg, %struct.Reg* %7022, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %7023 to i64*
  %7024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7025 = getelementptr inbounds %struct.GPR, %struct.GPR* %7024, i32 0, i32 1
  %7026 = getelementptr inbounds %struct.Reg, %struct.Reg* %7025, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %7026 to i64*
  %7027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7028 = getelementptr inbounds %struct.GPR, %struct.GPR* %7027, i32 0, i32 15
  %7029 = getelementptr inbounds %struct.Reg, %struct.Reg* %7028, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %7029 to i64*
  %7030 = load i64, i64* %RBP.i78
  %7031 = sub i64 %7030, 1000
  %7032 = load i64, i64* %PC.i76
  %7033 = add i64 %7032, 7
  store i64 %7033, i64* %PC.i76
  %7034 = inttoptr i64 %7031 to i64*
  %7035 = load i64, i64* %7034
  store i64 %7035, i64* %RAX.i77, align 8
  store %struct.Memory* %loadMem_4131bd, %struct.Memory** %MEMORY
  %loadMem_4131c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7037 = getelementptr inbounds %struct.GPR, %struct.GPR* %7036, i32 0, i32 33
  %7038 = getelementptr inbounds %struct.Reg, %struct.Reg* %7037, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %7038 to i64*
  %7039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7040 = getelementptr inbounds %struct.GPR, %struct.GPR* %7039, i32 0, i32 5
  %7041 = getelementptr inbounds %struct.Reg, %struct.Reg* %7040, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %7041 to i64*
  %7042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7043 = getelementptr inbounds %struct.GPR, %struct.GPR* %7042, i32 0, i32 15
  %7044 = getelementptr inbounds %struct.Reg, %struct.Reg* %7043, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %7044 to i64*
  %7045 = load i64, i64* %RBP.i75
  %7046 = sub i64 %7045, 1016
  %7047 = load i64, i64* %PC.i73
  %7048 = add i64 %7047, 7
  store i64 %7048, i64* %PC.i73
  %7049 = inttoptr i64 %7046 to i32*
  %7050 = load i32, i32* %7049
  %7051 = sext i32 %7050 to i64
  store i64 %7051, i64* %RCX.i74, align 8
  store %struct.Memory* %loadMem_4131c4, %struct.Memory** %MEMORY
  %loadMem_4131cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7053 = getelementptr inbounds %struct.GPR, %struct.GPR* %7052, i32 0, i32 33
  %7054 = getelementptr inbounds %struct.Reg, %struct.Reg* %7053, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %7054 to i64*
  %7055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7056 = getelementptr inbounds %struct.GPR, %struct.GPR* %7055, i32 0, i32 1
  %7057 = getelementptr inbounds %struct.Reg, %struct.Reg* %7056, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %7057 to i64*
  %7058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7059 = getelementptr inbounds %struct.GPR, %struct.GPR* %7058, i32 0, i32 5
  %7060 = getelementptr inbounds %struct.Reg, %struct.Reg* %7059, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %7060 to i64*
  %7061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7062 = getelementptr inbounds %struct.GPR, %struct.GPR* %7061, i32 0, i32 7
  %7063 = getelementptr inbounds %struct.Reg, %struct.Reg* %7062, i32 0, i32 0
  %RDX.i72 = bitcast %union.anon* %7063 to i64*
  %7064 = load i64, i64* %RAX.i70
  %7065 = load i64, i64* %RCX.i71
  %7066 = mul i64 %7065, 4
  %7067 = add i64 %7066, %7064
  %7068 = load i64, i64* %PC.i69
  %7069 = add i64 %7068, 3
  store i64 %7069, i64* %PC.i69
  %7070 = inttoptr i64 %7067 to i32*
  %7071 = load i32, i32* %7070
  %7072 = zext i32 %7071 to i64
  store i64 %7072, i64* %RDX.i72, align 8
  store %struct.Memory* %loadMem_4131cb, %struct.Memory** %MEMORY
  %loadMem_4131ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %7073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7074 = getelementptr inbounds %struct.GPR, %struct.GPR* %7073, i32 0, i32 33
  %7075 = getelementptr inbounds %struct.Reg, %struct.Reg* %7074, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %7075 to i64*
  %7076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7077 = getelementptr inbounds %struct.GPR, %struct.GPR* %7076, i32 0, i32 7
  %7078 = getelementptr inbounds %struct.Reg, %struct.Reg* %7077, i32 0, i32 0
  %RDX.i68 = bitcast %union.anon* %7078 to i64*
  %7079 = load i64, i64* %RDX.i68
  %7080 = load i64, i64* %PC.i67
  %7081 = add i64 %7080, 3
  store i64 %7081, i64* %PC.i67
  %7082 = trunc i64 %7079 to i32
  %7083 = add i32 1, %7082
  %7084 = zext i32 %7083 to i64
  store i64 %7084, i64* %RDX.i68, align 8
  %7085 = icmp ult i32 %7083, %7082
  %7086 = icmp ult i32 %7083, 1
  %7087 = or i1 %7085, %7086
  %7088 = zext i1 %7087 to i8
  %7089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7088, i8* %7089, align 1
  %7090 = and i32 %7083, 255
  %7091 = call i32 @llvm.ctpop.i32(i32 %7090)
  %7092 = trunc i32 %7091 to i8
  %7093 = and i8 %7092, 1
  %7094 = xor i8 %7093, 1
  %7095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7094, i8* %7095, align 1
  %7096 = xor i64 1, %7079
  %7097 = trunc i64 %7096 to i32
  %7098 = xor i32 %7097, %7083
  %7099 = lshr i32 %7098, 4
  %7100 = trunc i32 %7099 to i8
  %7101 = and i8 %7100, 1
  %7102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7101, i8* %7102, align 1
  %7103 = icmp eq i32 %7083, 0
  %7104 = zext i1 %7103 to i8
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7104, i8* %7105, align 1
  %7106 = lshr i32 %7083, 31
  %7107 = trunc i32 %7106 to i8
  %7108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7107, i8* %7108, align 1
  %7109 = lshr i32 %7082, 31
  %7110 = xor i32 %7106, %7109
  %7111 = add i32 %7110, %7106
  %7112 = icmp eq i32 %7111, 2
  %7113 = zext i1 %7112 to i8
  %7114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7113, i8* %7114, align 1
  store %struct.Memory* %loadMem_4131ce, %struct.Memory** %MEMORY
  %loadMem_4131d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7116 = getelementptr inbounds %struct.GPR, %struct.GPR* %7115, i32 0, i32 33
  %7117 = getelementptr inbounds %struct.Reg, %struct.Reg* %7116, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %7117 to i64*
  %7118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7119 = getelementptr inbounds %struct.GPR, %struct.GPR* %7118, i32 0, i32 7
  %7120 = getelementptr inbounds %struct.Reg, %struct.Reg* %7119, i32 0, i32 0
  %EDX.i65 = bitcast %union.anon* %7120 to i32*
  %7121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7122 = getelementptr inbounds %struct.GPR, %struct.GPR* %7121, i32 0, i32 1
  %7123 = getelementptr inbounds %struct.Reg, %struct.Reg* %7122, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %7123 to i64*
  %7124 = load i32, i32* %EDX.i65
  %7125 = zext i32 %7124 to i64
  %7126 = load i64, i64* %PC.i64
  %7127 = add i64 %7126, 3
  store i64 %7127, i64* %PC.i64
  %7128 = shl i64 %7125, 32
  %7129 = ashr exact i64 %7128, 32
  store i64 %7129, i64* %RAX.i66, align 8
  store %struct.Memory* %loadMem_4131d1, %struct.Memory** %MEMORY
  %loadMem_4131d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7131 = getelementptr inbounds %struct.GPR, %struct.GPR* %7130, i32 0, i32 33
  %7132 = getelementptr inbounds %struct.Reg, %struct.Reg* %7131, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %7132 to i64*
  %7133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7134 = getelementptr inbounds %struct.GPR, %struct.GPR* %7133, i32 0, i32 1
  %7135 = getelementptr inbounds %struct.Reg, %struct.Reg* %7134, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %7135 to i64*
  %7136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7137 = getelementptr inbounds %struct.GPR, %struct.GPR* %7136, i32 0, i32 7
  %7138 = getelementptr inbounds %struct.Reg, %struct.Reg* %7137, i32 0, i32 0
  %RDX.i63 = bitcast %union.anon* %7138 to i64*
  %7139 = load i64, i64* %RAX.i62
  %7140 = mul i64 %7139, 4
  %7141 = add i64 %7140, 11187184
  %7142 = load i64, i64* %PC.i61
  %7143 = add i64 %7142, 7
  store i64 %7143, i64* %PC.i61
  %7144 = inttoptr i64 %7141 to i32*
  %7145 = load i32, i32* %7144
  %7146 = zext i32 %7145 to i64
  store i64 %7146, i64* %RDX.i63, align 8
  store %struct.Memory* %loadMem_4131d4, %struct.Memory** %MEMORY
  %loadMem_4131db = load %struct.Memory*, %struct.Memory** %MEMORY
  %7147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7148 = getelementptr inbounds %struct.GPR, %struct.GPR* %7147, i32 0, i32 33
  %7149 = getelementptr inbounds %struct.Reg, %struct.Reg* %7148, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %7149 to i64*
  %7150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7151 = getelementptr inbounds %struct.GPR, %struct.GPR* %7150, i32 0, i32 1
  %7152 = getelementptr inbounds %struct.Reg, %struct.Reg* %7151, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %7152 to i64*
  %7153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7154 = getelementptr inbounds %struct.GPR, %struct.GPR* %7153, i32 0, i32 15
  %7155 = getelementptr inbounds %struct.Reg, %struct.Reg* %7154, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %7155 to i64*
  %7156 = load i64, i64* %RBP.i60
  %7157 = sub i64 %7156, 12
  %7158 = load i64, i64* %PC.i58
  %7159 = add i64 %7158, 4
  store i64 %7159, i64* %PC.i58
  %7160 = inttoptr i64 %7157 to i32*
  %7161 = load i32, i32* %7160
  %7162 = sext i32 %7161 to i64
  store i64 %7162, i64* %RAX.i59, align 8
  store %struct.Memory* %loadMem_4131db, %struct.Memory** %MEMORY
  %loadMem_4131df = load %struct.Memory*, %struct.Memory** %MEMORY
  %7163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7164 = getelementptr inbounds %struct.GPR, %struct.GPR* %7163, i32 0, i32 33
  %7165 = getelementptr inbounds %struct.Reg, %struct.Reg* %7164, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %7165 to i64*
  %7166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7167 = getelementptr inbounds %struct.GPR, %struct.GPR* %7166, i32 0, i32 7
  %7168 = getelementptr inbounds %struct.Reg, %struct.Reg* %7167, i32 0, i32 0
  %EDX.i56 = bitcast %union.anon* %7168 to i32*
  %7169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7170 = getelementptr inbounds %struct.GPR, %struct.GPR* %7169, i32 0, i32 1
  %7171 = getelementptr inbounds %struct.Reg, %struct.Reg* %7170, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %7171 to i64*
  %7172 = load i32, i32* %EDX.i56
  %7173 = zext i32 %7172 to i64
  %7174 = load i64, i64* %RAX.i57
  %7175 = mul i64 %7174, 4
  %7176 = add i64 %7175, 11187184
  %7177 = load i64, i64* %PC.i55
  %7178 = add i64 %7177, 7
  store i64 %7178, i64* %PC.i55
  %7179 = inttoptr i64 %7176 to i32*
  %7180 = load i32, i32* %7179
  %7181 = sub i32 %7172, %7180
  %7182 = icmp ult i32 %7172, %7180
  %7183 = zext i1 %7182 to i8
  %7184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7183, i8* %7184, align 1
  %7185 = and i32 %7181, 255
  %7186 = call i32 @llvm.ctpop.i32(i32 %7185)
  %7187 = trunc i32 %7186 to i8
  %7188 = and i8 %7187, 1
  %7189 = xor i8 %7188, 1
  %7190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7189, i8* %7190, align 1
  %7191 = xor i32 %7180, %7172
  %7192 = xor i32 %7191, %7181
  %7193 = lshr i32 %7192, 4
  %7194 = trunc i32 %7193 to i8
  %7195 = and i8 %7194, 1
  %7196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7195, i8* %7196, align 1
  %7197 = icmp eq i32 %7181, 0
  %7198 = zext i1 %7197 to i8
  %7199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7198, i8* %7199, align 1
  %7200 = lshr i32 %7181, 31
  %7201 = trunc i32 %7200 to i8
  %7202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7201, i8* %7202, align 1
  %7203 = lshr i32 %7172, 31
  %7204 = lshr i32 %7180, 31
  %7205 = xor i32 %7204, %7203
  %7206 = xor i32 %7200, %7203
  %7207 = add i32 %7206, %7205
  %7208 = icmp eq i32 %7207, 2
  %7209 = zext i1 %7208 to i8
  %7210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7209, i8* %7210, align 1
  store %struct.Memory* %loadMem_4131df, %struct.Memory** %MEMORY
  %loadMem_4131e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7212 = getelementptr inbounds %struct.GPR, %struct.GPR* %7211, i32 0, i32 33
  %7213 = getelementptr inbounds %struct.Reg, %struct.Reg* %7212, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %7213 to i64*
  %7214 = load i64, i64* %PC.i54
  %7215 = add i64 %7214, 67
  %7216 = load i64, i64* %PC.i54
  %7217 = add i64 %7216, 6
  %7218 = load i64, i64* %PC.i54
  %7219 = add i64 %7218, 6
  store i64 %7219, i64* %PC.i54
  %7220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7221 = load i8, i8* %7220, align 1
  %7222 = icmp eq i8 %7221, 0
  %7223 = zext i1 %7222 to i8
  store i8 %7223, i8* %BRANCH_TAKEN, align 1
  %7224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7225 = select i1 %7222, i64 %7215, i64 %7217
  store i64 %7225, i64* %7224, align 8
  store %struct.Memory* %loadMem_4131e6, %struct.Memory** %MEMORY
  %loadBr_4131e6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4131e6 = icmp eq i8 %loadBr_4131e6, 1
  br i1 %cmpBr_4131e6, label %block_.L_413229, label %block_.L_4131ec

block_.L_4131ec:                                  ; preds = %block_4131bd, %block_41315b, %block_4130f9, %block_413097
  %loadMem_4131ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %7226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7227 = getelementptr inbounds %struct.GPR, %struct.GPR* %7226, i32 0, i32 33
  %7228 = getelementptr inbounds %struct.Reg, %struct.Reg* %7227, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %7228 to i64*
  %7229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7230 = getelementptr inbounds %struct.GPR, %struct.GPR* %7229, i32 0, i32 1
  %7231 = getelementptr inbounds %struct.Reg, %struct.Reg* %7230, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %7231 to i64*
  %7232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7233 = getelementptr inbounds %struct.GPR, %struct.GPR* %7232, i32 0, i32 15
  %7234 = getelementptr inbounds %struct.Reg, %struct.Reg* %7233, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %7234 to i64*
  %7235 = load i64, i64* %RBP.i53
  %7236 = sub i64 %7235, 1012
  %7237 = load i64, i64* %PC.i51
  %7238 = add i64 %7237, 6
  store i64 %7238, i64* %PC.i51
  %7239 = inttoptr i64 %7236 to i32*
  %7240 = load i32, i32* %7239
  %7241 = zext i32 %7240 to i64
  store i64 %7241, i64* %RAX.i52, align 8
  store %struct.Memory* %loadMem_4131ec, %struct.Memory** %MEMORY
  %loadMem_4131f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7243 = getelementptr inbounds %struct.GPR, %struct.GPR* %7242, i32 0, i32 33
  %7244 = getelementptr inbounds %struct.Reg, %struct.Reg* %7243, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %7244 to i64*
  %7245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7246 = getelementptr inbounds %struct.GPR, %struct.GPR* %7245, i32 0, i32 1
  %7247 = getelementptr inbounds %struct.Reg, %struct.Reg* %7246, i32 0, i32 0
  %EAX.i49 = bitcast %union.anon* %7247 to i32*
  %7248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7249 = getelementptr inbounds %struct.GPR, %struct.GPR* %7248, i32 0, i32 15
  %7250 = getelementptr inbounds %struct.Reg, %struct.Reg* %7249, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %7250 to i64*
  %7251 = load i32, i32* %EAX.i49
  %7252 = zext i32 %7251 to i64
  %7253 = load i64, i64* %RBP.i50
  %7254 = sub i64 %7253, 16
  %7255 = load i64, i64* %PC.i48
  %7256 = add i64 %7255, 3
  store i64 %7256, i64* %PC.i48
  %7257 = inttoptr i64 %7254 to i32*
  %7258 = load i32, i32* %7257
  %7259 = sub i32 %7251, %7258
  %7260 = icmp ult i32 %7251, %7258
  %7261 = zext i1 %7260 to i8
  %7262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7261, i8* %7262, align 1
  %7263 = and i32 %7259, 255
  %7264 = call i32 @llvm.ctpop.i32(i32 %7263)
  %7265 = trunc i32 %7264 to i8
  %7266 = and i8 %7265, 1
  %7267 = xor i8 %7266, 1
  %7268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7267, i8* %7268, align 1
  %7269 = xor i32 %7258, %7251
  %7270 = xor i32 %7269, %7259
  %7271 = lshr i32 %7270, 4
  %7272 = trunc i32 %7271 to i8
  %7273 = and i8 %7272, 1
  %7274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7273, i8* %7274, align 1
  %7275 = icmp eq i32 %7259, 0
  %7276 = zext i1 %7275 to i8
  %7277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7276, i8* %7277, align 1
  %7278 = lshr i32 %7259, 31
  %7279 = trunc i32 %7278 to i8
  %7280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7279, i8* %7280, align 1
  %7281 = lshr i32 %7251, 31
  %7282 = lshr i32 %7258, 31
  %7283 = xor i32 %7282, %7281
  %7284 = xor i32 %7278, %7281
  %7285 = add i32 %7284, %7283
  %7286 = icmp eq i32 %7285, 2
  %7287 = zext i1 %7286 to i8
  %7288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7287, i8* %7288, align 1
  store %struct.Memory* %loadMem_4131f2, %struct.Memory** %MEMORY
  %loadMem_4131f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7290 = getelementptr inbounds %struct.GPR, %struct.GPR* %7289, i32 0, i32 33
  %7291 = getelementptr inbounds %struct.Reg, %struct.Reg* %7290, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %7291 to i64*
  %7292 = load i64, i64* %PC.i47
  %7293 = add i64 %7292, 37
  %7294 = load i64, i64* %PC.i47
  %7295 = add i64 %7294, 6
  %7296 = load i64, i64* %PC.i47
  %7297 = add i64 %7296, 6
  store i64 %7297, i64* %PC.i47
  %7298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7299 = load i8, i8* %7298, align 1
  %7300 = icmp ne i8 %7299, 0
  %7301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7302 = load i8, i8* %7301, align 1
  %7303 = icmp ne i8 %7302, 0
  %7304 = xor i1 %7300, %7303
  %7305 = xor i1 %7304, true
  %7306 = zext i1 %7305 to i8
  store i8 %7306, i8* %BRANCH_TAKEN, align 1
  %7307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7308 = select i1 %7304, i64 %7295, i64 %7293
  store i64 %7308, i64* %7307, align 8
  store %struct.Memory* %loadMem_4131f5, %struct.Memory** %MEMORY
  %loadBr_4131f5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4131f5 = icmp eq i8 %loadBr_4131f5, 1
  br i1 %cmpBr_4131f5, label %block_.L_41321a, label %block_4131fb

block_4131fb:                                     ; preds = %block_.L_4131ec
  %loadMem_4131fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7310 = getelementptr inbounds %struct.GPR, %struct.GPR* %7309, i32 0, i32 33
  %7311 = getelementptr inbounds %struct.Reg, %struct.Reg* %7310, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %7311 to i64*
  %7312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7313 = getelementptr inbounds %struct.GPR, %struct.GPR* %7312, i32 0, i32 1
  %7314 = getelementptr inbounds %struct.Reg, %struct.Reg* %7313, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %7314 to i64*
  %7315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7316 = getelementptr inbounds %struct.GPR, %struct.GPR* %7315, i32 0, i32 15
  %7317 = getelementptr inbounds %struct.Reg, %struct.Reg* %7316, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %7317 to i64*
  %7318 = load i64, i64* %RBP.i46
  %7319 = sub i64 %7318, 1000
  %7320 = load i64, i64* %PC.i44
  %7321 = add i64 %7320, 7
  store i64 %7321, i64* %PC.i44
  %7322 = inttoptr i64 %7319 to i64*
  %7323 = load i64, i64* %7322
  store i64 %7323, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_4131fb, %struct.Memory** %MEMORY
  %loadMem_413202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7325 = getelementptr inbounds %struct.GPR, %struct.GPR* %7324, i32 0, i32 33
  %7326 = getelementptr inbounds %struct.Reg, %struct.Reg* %7325, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %7326 to i64*
  %7327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7328 = getelementptr inbounds %struct.GPR, %struct.GPR* %7327, i32 0, i32 5
  %7329 = getelementptr inbounds %struct.Reg, %struct.Reg* %7328, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %7329 to i64*
  %7330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7331 = getelementptr inbounds %struct.GPR, %struct.GPR* %7330, i32 0, i32 15
  %7332 = getelementptr inbounds %struct.Reg, %struct.Reg* %7331, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %7332 to i64*
  %7333 = load i64, i64* %RBP.i43
  %7334 = sub i64 %7333, 1016
  %7335 = load i64, i64* %PC.i41
  %7336 = add i64 %7335, 7
  store i64 %7336, i64* %PC.i41
  %7337 = inttoptr i64 %7334 to i32*
  %7338 = load i32, i32* %7337
  %7339 = sext i32 %7338 to i64
  store i64 %7339, i64* %RCX.i42, align 8
  store %struct.Memory* %loadMem_413202, %struct.Memory** %MEMORY
  %loadMem_413209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7341 = getelementptr inbounds %struct.GPR, %struct.GPR* %7340, i32 0, i32 33
  %7342 = getelementptr inbounds %struct.Reg, %struct.Reg* %7341, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %7342 to i64*
  %7343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7344 = getelementptr inbounds %struct.GPR, %struct.GPR* %7343, i32 0, i32 1
  %7345 = getelementptr inbounds %struct.Reg, %struct.Reg* %7344, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %7345 to i64*
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7347 = getelementptr inbounds %struct.GPR, %struct.GPR* %7346, i32 0, i32 5
  %7348 = getelementptr inbounds %struct.Reg, %struct.Reg* %7347, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %7348 to i64*
  %7349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7350 = getelementptr inbounds %struct.GPR, %struct.GPR* %7349, i32 0, i32 7
  %7351 = getelementptr inbounds %struct.Reg, %struct.Reg* %7350, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7351 to i64*
  %7352 = load i64, i64* %RAX.i39
  %7353 = load i64, i64* %RCX.i40
  %7354 = mul i64 %7353, 4
  %7355 = add i64 %7354, %7352
  %7356 = load i64, i64* %PC.i38
  %7357 = add i64 %7356, 3
  store i64 %7357, i64* %PC.i38
  %7358 = inttoptr i64 %7355 to i32*
  %7359 = load i32, i32* %7358
  %7360 = zext i32 %7359 to i64
  store i64 %7360, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_413209, %struct.Memory** %MEMORY
  %loadMem_41320c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7362 = getelementptr inbounds %struct.GPR, %struct.GPR* %7361, i32 0, i32 33
  %7363 = getelementptr inbounds %struct.Reg, %struct.Reg* %7362, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %7363 to i64*
  %7364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7365 = getelementptr inbounds %struct.GPR, %struct.GPR* %7364, i32 0, i32 1
  %7366 = getelementptr inbounds %struct.Reg, %struct.Reg* %7365, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %7366 to i64*
  %7367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7368 = getelementptr inbounds %struct.GPR, %struct.GPR* %7367, i32 0, i32 15
  %7369 = getelementptr inbounds %struct.Reg, %struct.Reg* %7368, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %7369 to i64*
  %7370 = load i64, i64* %RBP.i37
  %7371 = sub i64 %7370, 24
  %7372 = load i64, i64* %PC.i35
  %7373 = add i64 %7372, 4
  store i64 %7373, i64* %PC.i35
  %7374 = inttoptr i64 %7371 to i64*
  %7375 = load i64, i64* %7374
  store i64 %7375, i64* %RAX.i36, align 8
  store %struct.Memory* %loadMem_41320c, %struct.Memory** %MEMORY
  %loadMem_413210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7377 = getelementptr inbounds %struct.GPR, %struct.GPR* %7376, i32 0, i32 33
  %7378 = getelementptr inbounds %struct.Reg, %struct.Reg* %7377, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %7378 to i64*
  %7379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7380 = getelementptr inbounds %struct.GPR, %struct.GPR* %7379, i32 0, i32 5
  %7381 = getelementptr inbounds %struct.Reg, %struct.Reg* %7380, i32 0, i32 0
  %RCX.i33 = bitcast %union.anon* %7381 to i64*
  %7382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7383 = getelementptr inbounds %struct.GPR, %struct.GPR* %7382, i32 0, i32 15
  %7384 = getelementptr inbounds %struct.Reg, %struct.Reg* %7383, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %7384 to i64*
  %7385 = load i64, i64* %RBP.i34
  %7386 = sub i64 %7385, 1012
  %7387 = load i64, i64* %PC.i32
  %7388 = add i64 %7387, 7
  store i64 %7388, i64* %PC.i32
  %7389 = inttoptr i64 %7386 to i32*
  %7390 = load i32, i32* %7389
  %7391 = sext i32 %7390 to i64
  store i64 %7391, i64* %RCX.i33, align 8
  store %struct.Memory* %loadMem_413210, %struct.Memory** %MEMORY
  %loadMem_413217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7393 = getelementptr inbounds %struct.GPR, %struct.GPR* %7392, i32 0, i32 33
  %7394 = getelementptr inbounds %struct.Reg, %struct.Reg* %7393, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %7394 to i64*
  %7395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7396 = getelementptr inbounds %struct.GPR, %struct.GPR* %7395, i32 0, i32 7
  %7397 = getelementptr inbounds %struct.Reg, %struct.Reg* %7396, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %7397 to i32*
  %7398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7399 = getelementptr inbounds %struct.GPR, %struct.GPR* %7398, i32 0, i32 1
  %7400 = getelementptr inbounds %struct.Reg, %struct.Reg* %7399, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %7400 to i64*
  %7401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7402 = getelementptr inbounds %struct.GPR, %struct.GPR* %7401, i32 0, i32 5
  %7403 = getelementptr inbounds %struct.Reg, %struct.Reg* %7402, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7403 to i64*
  %7404 = load i64, i64* %RAX.i31
  %7405 = load i64, i64* %RCX.i
  %7406 = mul i64 %7405, 4
  %7407 = add i64 %7406, %7404
  %7408 = load i32, i32* %EDX.i
  %7409 = zext i32 %7408 to i64
  %7410 = load i64, i64* %PC.i30
  %7411 = add i64 %7410, 3
  store i64 %7411, i64* %PC.i30
  %7412 = inttoptr i64 %7407 to i32*
  store i32 %7408, i32* %7412
  store %struct.Memory* %loadMem_413217, %struct.Memory** %MEMORY
  br label %block_.L_41321a

block_.L_41321a:                                  ; preds = %block_4131fb, %block_.L_4131ec
  %loadMem_41321a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7414 = getelementptr inbounds %struct.GPR, %struct.GPR* %7413, i32 0, i32 33
  %7415 = getelementptr inbounds %struct.Reg, %struct.Reg* %7414, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %7415 to i64*
  %7416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7417 = getelementptr inbounds %struct.GPR, %struct.GPR* %7416, i32 0, i32 1
  %7418 = getelementptr inbounds %struct.Reg, %struct.Reg* %7417, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %7418 to i64*
  %7419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7420 = getelementptr inbounds %struct.GPR, %struct.GPR* %7419, i32 0, i32 15
  %7421 = getelementptr inbounds %struct.Reg, %struct.Reg* %7420, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %7421 to i64*
  %7422 = load i64, i64* %RBP.i29
  %7423 = sub i64 %7422, 1012
  %7424 = load i64, i64* %PC.i27
  %7425 = add i64 %7424, 6
  store i64 %7425, i64* %PC.i27
  %7426 = inttoptr i64 %7423 to i32*
  %7427 = load i32, i32* %7426
  %7428 = zext i32 %7427 to i64
  store i64 %7428, i64* %RAX.i28, align 8
  store %struct.Memory* %loadMem_41321a, %struct.Memory** %MEMORY
  %loadMem_413220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7430 = getelementptr inbounds %struct.GPR, %struct.GPR* %7429, i32 0, i32 33
  %7431 = getelementptr inbounds %struct.Reg, %struct.Reg* %7430, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %7431 to i64*
  %7432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7433 = getelementptr inbounds %struct.GPR, %struct.GPR* %7432, i32 0, i32 1
  %7434 = getelementptr inbounds %struct.Reg, %struct.Reg* %7433, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %7434 to i64*
  %7435 = load i64, i64* %RAX.i26
  %7436 = load i64, i64* %PC.i25
  %7437 = add i64 %7436, 3
  store i64 %7437, i64* %PC.i25
  %7438 = trunc i64 %7435 to i32
  %7439 = add i32 1, %7438
  %7440 = zext i32 %7439 to i64
  store i64 %7440, i64* %RAX.i26, align 8
  %7441 = icmp ult i32 %7439, %7438
  %7442 = icmp ult i32 %7439, 1
  %7443 = or i1 %7441, %7442
  %7444 = zext i1 %7443 to i8
  %7445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7444, i8* %7445, align 1
  %7446 = and i32 %7439, 255
  %7447 = call i32 @llvm.ctpop.i32(i32 %7446)
  %7448 = trunc i32 %7447 to i8
  %7449 = and i8 %7448, 1
  %7450 = xor i8 %7449, 1
  %7451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7450, i8* %7451, align 1
  %7452 = xor i64 1, %7435
  %7453 = trunc i64 %7452 to i32
  %7454 = xor i32 %7453, %7439
  %7455 = lshr i32 %7454, 4
  %7456 = trunc i32 %7455 to i8
  %7457 = and i8 %7456, 1
  %7458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7457, i8* %7458, align 1
  %7459 = icmp eq i32 %7439, 0
  %7460 = zext i1 %7459 to i8
  %7461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7460, i8* %7461, align 1
  %7462 = lshr i32 %7439, 31
  %7463 = trunc i32 %7462 to i8
  %7464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7463, i8* %7464, align 1
  %7465 = lshr i32 %7438, 31
  %7466 = xor i32 %7462, %7465
  %7467 = add i32 %7466, %7462
  %7468 = icmp eq i32 %7467, 2
  %7469 = zext i1 %7468 to i8
  %7470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7469, i8* %7470, align 1
  store %struct.Memory* %loadMem_413220, %struct.Memory** %MEMORY
  %loadMem_413223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7472 = getelementptr inbounds %struct.GPR, %struct.GPR* %7471, i32 0, i32 33
  %7473 = getelementptr inbounds %struct.Reg, %struct.Reg* %7472, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %7473 to i64*
  %7474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7475 = getelementptr inbounds %struct.GPR, %struct.GPR* %7474, i32 0, i32 1
  %7476 = getelementptr inbounds %struct.Reg, %struct.Reg* %7475, i32 0, i32 0
  %EAX.i23 = bitcast %union.anon* %7476 to i32*
  %7477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7478 = getelementptr inbounds %struct.GPR, %struct.GPR* %7477, i32 0, i32 15
  %7479 = getelementptr inbounds %struct.Reg, %struct.Reg* %7478, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %7479 to i64*
  %7480 = load i64, i64* %RBP.i24
  %7481 = sub i64 %7480, 1012
  %7482 = load i32, i32* %EAX.i23
  %7483 = zext i32 %7482 to i64
  %7484 = load i64, i64* %PC.i22
  %7485 = add i64 %7484, 6
  store i64 %7485, i64* %PC.i22
  %7486 = inttoptr i64 %7481 to i32*
  store i32 %7482, i32* %7486
  store %struct.Memory* %loadMem_413223, %struct.Memory** %MEMORY
  br label %block_.L_413229

block_.L_413229:                                  ; preds = %block_.L_41321a, %block_4131bd, %block_.L_41318a
  %loadMem_413229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7488 = getelementptr inbounds %struct.GPR, %struct.GPR* %7487, i32 0, i32 33
  %7489 = getelementptr inbounds %struct.Reg, %struct.Reg* %7488, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %7489 to i64*
  %7490 = load i64, i64* %PC.i21
  %7491 = add i64 %7490, 5
  %7492 = load i64, i64* %PC.i21
  %7493 = add i64 %7492, 5
  store i64 %7493, i64* %PC.i21
  %7494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7491, i64* %7494, align 8
  store %struct.Memory* %loadMem_413229, %struct.Memory** %MEMORY
  br label %block_.L_41322e

block_.L_41322e:                                  ; preds = %block_.L_413229
  %loadMem_41322e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7496 = getelementptr inbounds %struct.GPR, %struct.GPR* %7495, i32 0, i32 33
  %7497 = getelementptr inbounds %struct.Reg, %struct.Reg* %7496, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %7497 to i64*
  %7498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7499 = getelementptr inbounds %struct.GPR, %struct.GPR* %7498, i32 0, i32 1
  %7500 = getelementptr inbounds %struct.Reg, %struct.Reg* %7499, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %7500 to i64*
  %7501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7502 = getelementptr inbounds %struct.GPR, %struct.GPR* %7501, i32 0, i32 15
  %7503 = getelementptr inbounds %struct.Reg, %struct.Reg* %7502, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %7503 to i64*
  %7504 = load i64, i64* %RBP.i20
  %7505 = sub i64 %7504, 1016
  %7506 = load i64, i64* %PC.i18
  %7507 = add i64 %7506, 6
  store i64 %7507, i64* %PC.i18
  %7508 = inttoptr i64 %7505 to i32*
  %7509 = load i32, i32* %7508
  %7510 = zext i32 %7509 to i64
  store i64 %7510, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_41322e, %struct.Memory** %MEMORY
  %loadMem_413234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7512 = getelementptr inbounds %struct.GPR, %struct.GPR* %7511, i32 0, i32 33
  %7513 = getelementptr inbounds %struct.Reg, %struct.Reg* %7512, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %7513 to i64*
  %7514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7515 = getelementptr inbounds %struct.GPR, %struct.GPR* %7514, i32 0, i32 1
  %7516 = getelementptr inbounds %struct.Reg, %struct.Reg* %7515, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %7516 to i64*
  %7517 = load i64, i64* %RAX.i17
  %7518 = load i64, i64* %PC.i16
  %7519 = add i64 %7518, 3
  store i64 %7519, i64* %PC.i16
  %7520 = trunc i64 %7517 to i32
  %7521 = add i32 1, %7520
  %7522 = zext i32 %7521 to i64
  store i64 %7522, i64* %RAX.i17, align 8
  %7523 = icmp ult i32 %7521, %7520
  %7524 = icmp ult i32 %7521, 1
  %7525 = or i1 %7523, %7524
  %7526 = zext i1 %7525 to i8
  %7527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7526, i8* %7527, align 1
  %7528 = and i32 %7521, 255
  %7529 = call i32 @llvm.ctpop.i32(i32 %7528)
  %7530 = trunc i32 %7529 to i8
  %7531 = and i8 %7530, 1
  %7532 = xor i8 %7531, 1
  %7533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7532, i8* %7533, align 1
  %7534 = xor i64 1, %7517
  %7535 = trunc i64 %7534 to i32
  %7536 = xor i32 %7535, %7521
  %7537 = lshr i32 %7536, 4
  %7538 = trunc i32 %7537 to i8
  %7539 = and i8 %7538, 1
  %7540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7539, i8* %7540, align 1
  %7541 = icmp eq i32 %7521, 0
  %7542 = zext i1 %7541 to i8
  %7543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7542, i8* %7543, align 1
  %7544 = lshr i32 %7521, 31
  %7545 = trunc i32 %7544 to i8
  %7546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7545, i8* %7546, align 1
  %7547 = lshr i32 %7520, 31
  %7548 = xor i32 %7544, %7547
  %7549 = add i32 %7548, %7544
  %7550 = icmp eq i32 %7549, 2
  %7551 = zext i1 %7550 to i8
  %7552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7551, i8* %7552, align 1
  store %struct.Memory* %loadMem_413234, %struct.Memory** %MEMORY
  %loadMem_413237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7554 = getelementptr inbounds %struct.GPR, %struct.GPR* %7553, i32 0, i32 33
  %7555 = getelementptr inbounds %struct.Reg, %struct.Reg* %7554, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %7555 to i64*
  %7556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7557 = getelementptr inbounds %struct.GPR, %struct.GPR* %7556, i32 0, i32 1
  %7558 = getelementptr inbounds %struct.Reg, %struct.Reg* %7557, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %7558 to i32*
  %7559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7560 = getelementptr inbounds %struct.GPR, %struct.GPR* %7559, i32 0, i32 15
  %7561 = getelementptr inbounds %struct.Reg, %struct.Reg* %7560, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %7561 to i64*
  %7562 = load i64, i64* %RBP.i15
  %7563 = sub i64 %7562, 1016
  %7564 = load i32, i32* %EAX.i14
  %7565 = zext i32 %7564 to i64
  %7566 = load i64, i64* %PC.i13
  %7567 = add i64 %7566, 6
  store i64 %7567, i64* %PC.i13
  %7568 = inttoptr i64 %7563 to i32*
  store i32 %7564, i32* %7568
  store %struct.Memory* %loadMem_413237, %struct.Memory** %MEMORY
  %loadMem_41323d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7570 = getelementptr inbounds %struct.GPR, %struct.GPR* %7569, i32 0, i32 33
  %7571 = getelementptr inbounds %struct.Reg, %struct.Reg* %7570, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %7571 to i64*
  %7572 = load i64, i64* %PC.i12
  %7573 = add i64 %7572, -491
  %7574 = load i64, i64* %PC.i12
  %7575 = add i64 %7574, 5
  store i64 %7575, i64* %PC.i12
  %7576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7573, i64* %7576, align 8
  store %struct.Memory* %loadMem_41323d, %struct.Memory** %MEMORY
  br label %block_.L_413052

block_.L_413242:                                  ; preds = %block_.L_413052
  %loadMem_413242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7578 = getelementptr inbounds %struct.GPR, %struct.GPR* %7577, i32 0, i32 33
  %7579 = getelementptr inbounds %struct.Reg, %struct.Reg* %7578, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7579 to i64*
  %7580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7581 = getelementptr inbounds %struct.GPR, %struct.GPR* %7580, i32 0, i32 1
  %7582 = getelementptr inbounds %struct.Reg, %struct.Reg* %7581, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %7582 to i64*
  %7583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7584 = getelementptr inbounds %struct.GPR, %struct.GPR* %7583, i32 0, i32 15
  %7585 = getelementptr inbounds %struct.Reg, %struct.Reg* %7584, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %7585 to i64*
  %7586 = load i64, i64* %RBP.i11
  %7587 = sub i64 %7586, 1012
  %7588 = load i64, i64* %PC.i9
  %7589 = add i64 %7588, 6
  store i64 %7589, i64* %PC.i9
  %7590 = inttoptr i64 %7587 to i32*
  %7591 = load i32, i32* %7590
  %7592 = zext i32 %7591 to i64
  store i64 %7592, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_413242, %struct.Memory** %MEMORY
  %loadMem_413248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7594 = getelementptr inbounds %struct.GPR, %struct.GPR* %7593, i32 0, i32 33
  %7595 = getelementptr inbounds %struct.Reg, %struct.Reg* %7594, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %7595 to i64*
  %7596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7597 = getelementptr inbounds %struct.GPR, %struct.GPR* %7596, i32 0, i32 1
  %7598 = getelementptr inbounds %struct.Reg, %struct.Reg* %7597, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7598 to i32*
  %7599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7600 = getelementptr inbounds %struct.GPR, %struct.GPR* %7599, i32 0, i32 15
  %7601 = getelementptr inbounds %struct.Reg, %struct.Reg* %7600, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %7601 to i64*
  %7602 = load i64, i64* %RBP.i8
  %7603 = sub i64 %7602, 4
  %7604 = load i32, i32* %EAX.i
  %7605 = zext i32 %7604 to i64
  %7606 = load i64, i64* %PC.i7
  %7607 = add i64 %7606, 3
  store i64 %7607, i64* %PC.i7
  %7608 = inttoptr i64 %7603 to i32*
  store i32 %7604, i32* %7608
  store %struct.Memory* %loadMem_413248, %struct.Memory** %MEMORY
  br label %block_.L_41324b

block_.L_41324b:                                  ; preds = %block_.L_413242, %block_.L_41300d
  %loadMem_41324b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7610 = getelementptr inbounds %struct.GPR, %struct.GPR* %7609, i32 0, i32 33
  %7611 = getelementptr inbounds %struct.Reg, %struct.Reg* %7610, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7611 to i64*
  %7612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7613 = getelementptr inbounds %struct.GPR, %struct.GPR* %7612, i32 0, i32 1
  %7614 = getelementptr inbounds %struct.Reg, %struct.Reg* %7613, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7614 to i64*
  %7615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7616 = getelementptr inbounds %struct.GPR, %struct.GPR* %7615, i32 0, i32 15
  %7617 = getelementptr inbounds %struct.Reg, %struct.Reg* %7616, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %7617 to i64*
  %7618 = load i64, i64* %RBP.i6
  %7619 = sub i64 %7618, 4
  %7620 = load i64, i64* %PC.i5
  %7621 = add i64 %7620, 3
  store i64 %7621, i64* %PC.i5
  %7622 = inttoptr i64 %7619 to i32*
  %7623 = load i32, i32* %7622
  %7624 = zext i32 %7623 to i64
  store i64 %7624, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_41324b, %struct.Memory** %MEMORY
  %loadMem_41324e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7626 = getelementptr inbounds %struct.GPR, %struct.GPR* %7625, i32 0, i32 33
  %7627 = getelementptr inbounds %struct.Reg, %struct.Reg* %7626, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7627 to i64*
  %7628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7629 = getelementptr inbounds %struct.GPR, %struct.GPR* %7628, i32 0, i32 13
  %7630 = getelementptr inbounds %struct.Reg, %struct.Reg* %7629, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7630 to i64*
  %7631 = load i64, i64* %RSP.i
  %7632 = load i64, i64* %PC.i4
  %7633 = add i64 %7632, 7
  store i64 %7633, i64* %PC.i4
  %7634 = add i64 1152, %7631
  store i64 %7634, i64* %RSP.i, align 8
  %7635 = icmp ult i64 %7634, %7631
  %7636 = icmp ult i64 %7634, 1152
  %7637 = or i1 %7635, %7636
  %7638 = zext i1 %7637 to i8
  %7639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7638, i8* %7639, align 1
  %7640 = trunc i64 %7634 to i32
  %7641 = and i32 %7640, 255
  %7642 = call i32 @llvm.ctpop.i32(i32 %7641)
  %7643 = trunc i32 %7642 to i8
  %7644 = and i8 %7643, 1
  %7645 = xor i8 %7644, 1
  %7646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7645, i8* %7646, align 1
  %7647 = xor i64 1152, %7631
  %7648 = xor i64 %7647, %7634
  %7649 = lshr i64 %7648, 4
  %7650 = trunc i64 %7649 to i8
  %7651 = and i8 %7650, 1
  %7652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7651, i8* %7652, align 1
  %7653 = icmp eq i64 %7634, 0
  %7654 = zext i1 %7653 to i8
  %7655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7654, i8* %7655, align 1
  %7656 = lshr i64 %7634, 63
  %7657 = trunc i64 %7656 to i8
  %7658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7657, i8* %7658, align 1
  %7659 = lshr i64 %7631, 63
  %7660 = xor i64 %7656, %7659
  %7661 = add i64 %7660, %7656
  %7662 = icmp eq i64 %7661, 2
  %7663 = zext i1 %7662 to i8
  %7664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7663, i8* %7664, align 1
  store %struct.Memory* %loadMem_41324e, %struct.Memory** %MEMORY
  %loadMem_413255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7666 = getelementptr inbounds %struct.GPR, %struct.GPR* %7665, i32 0, i32 33
  %7667 = getelementptr inbounds %struct.Reg, %struct.Reg* %7666, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7667 to i64*
  %7668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7669 = getelementptr inbounds %struct.GPR, %struct.GPR* %7668, i32 0, i32 15
  %7670 = getelementptr inbounds %struct.Reg, %struct.Reg* %7669, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7670 to i64*
  %7671 = load i64, i64* %PC.i2
  %7672 = add i64 %7671, 1
  store i64 %7672, i64* %PC.i2
  %7673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7674 = load i64, i64* %7673, align 8
  %7675 = add i64 %7674, 8
  %7676 = inttoptr i64 %7674 to i64*
  %7677 = load i64, i64* %7676
  store i64 %7677, i64* %RBP.i3, align 8
  store i64 %7675, i64* %7673, align 8
  store %struct.Memory* %loadMem_413255, %struct.Memory** %MEMORY
  %loadMem_413256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7679 = getelementptr inbounds %struct.GPR, %struct.GPR* %7678, i32 0, i32 33
  %7680 = getelementptr inbounds %struct.Reg, %struct.Reg* %7679, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7680 to i64*
  %7681 = load i64, i64* %PC.i1
  %7682 = add i64 %7681, 1
  store i64 %7682, i64* %PC.i1
  %7683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7685 = load i64, i64* %7684, align 8
  %7686 = inttoptr i64 %7685 to i64*
  %7687 = load i64, i64* %7686
  store i64 %7687, i64* %7683, align 8
  %7688 = add i64 %7685, 8
  store i64 %7688, i64* %7684, align 8
  store %struct.Memory* %loadMem_413256, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_413256
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

define %struct.Memory* @routine_subq__0x480___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 1152
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 1152
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
  %23 = xor i64 1152, %9
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

define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x3f4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1012
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
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

define %struct.Memory* @routine_jae_.L_412ae9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_412ae9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_412b5a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x7bd___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1981, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a504___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a504_type* @G__0x57a504 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movq__rdx__MINUS0x410__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1040
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

define %struct.Memory* @routine_movl__eax__MINUS0x414__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1044
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

define %struct.Memory* @routine_movq_MINUS0x410__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1040
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x418__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1048
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

define %struct.Memory* @routine_movl_MINUS0x414__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1044
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x418__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1048
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

define %struct.Memory* @routine_cmpl__0x1a5__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jae_.L_412b81(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_412b81(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_412bf2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x7be___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1982, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a514___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a514_type* @G__0x57a514 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1052
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x428__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1064
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x41c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1052
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x42c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1068
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x428__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1064
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x430__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1072
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x42c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1068
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x430__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1072
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_je_.L_412c1c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_412c21(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_412c92(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x7bf___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1983, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a524___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a524_type* @G__0x57a524 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x434__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1076
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x440__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1088
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x434__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1076
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x444__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1092
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x440__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1088
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x448__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1096
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x444__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1092
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x448__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1096
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_412cbc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_412cc1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_412d32(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x7c0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1984, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a53a___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a53a_type* @G__0x57a53a to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x44c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x458__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1112
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x45c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1116
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x458__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x460__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1120
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x45c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x460__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_412d42(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_412db3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x7c1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1985, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a4e7___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a4e7_type* @G__0x57a4e7 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x464__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1124
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x470__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1136
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x464__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x474__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1140
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x470__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x478__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1144
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x474__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x478__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1144
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x3fc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1020
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3fc__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1020
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0xc__rsi____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x3ec__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1004
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3ec__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1004
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
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

define %struct.Memory* @routine_jle_.L_412e5d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x400__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1024
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x400__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_cmpl__0x14__MINUS0x3ec__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1004
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 20
  %16 = icmp ult i32 %14, 20
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
  %25 = xor i32 %14, 20
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

define %struct.Memory* @routine_jg_.L_413020(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x10___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 16, %9
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 16
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
  %25 = xor i64 16, %9
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

define %struct.Memory* @routine_movq__rdx__MINUS0x3e8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1000
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x3fc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1020
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__esi__MINUS0x3f0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1008
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x14__MINUS0x3f0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1008
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 20
  %16 = icmp ult i32 %14, 20
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
  %25 = xor i32 %14, 20
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

define %struct.Memory* @routine_jg_.L_41301b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x99da04___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
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

define %struct.Memory* @routine_movl__eax__0x99da04(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x3f8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1016
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3f8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x3ec__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 1004
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

define %struct.Memory* @routine_jge_.L_412f2c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x3e8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1000
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax__0xaaadb0___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11185584
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
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

define %struct.Memory* @routine_jmpq_.L_412ee6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x10___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 16, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 16
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
  %25 = xor i64 16, %9
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

define %struct.Memory* @routine_movq__rax__MINUS0x3e8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1000
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x3f0__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 1008
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

define %struct.Memory* @routine_jge_.L_41300d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x3e8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1000
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %RAX, align 8
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

define %struct.Memory* @routine_jne_.L_412fb7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xaaadb0___rax_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11185584
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x99da04___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
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

define %struct.Memory* @routine_jne_.L_412ff4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x3f4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1012
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jge_.L_412fe5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x3f4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1012
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_412ff9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_412f5c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41324b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_413048(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x3e0__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 992
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x47c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1148
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_413242(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq__edx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4130c6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xaab3f0___rax_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xaab3f0___rax_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = mul i64 %14, 4
  %16 = add i64 %15, 11187184
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %12, %20
  %22 = icmp ult i32 %12, %20
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
  %31 = xor i32 %20, %12
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
  %43 = lshr i32 %12, 31
  %44 = lshr i32 %20, 31
  %45 = xor i32 %44, %43
  %46 = xor i32 %40, %43
  %47 = add i32 %46, %45
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4131ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_413128(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_41318a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_413229(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_41321a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41322e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_413052(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x480___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1152, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1152
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
  %25 = xor i64 1152, %9
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
