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
%G__0x58735d_type = type <{ [8 x i8] }>
%G__0x587376_type = type <{ [8 x i8] }>
%G__0x587384_type = type <{ [8 x i8] }>
%G__0x58898d_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G__0x58735d = global %G__0x58735d_type zeroinitializer
@G__0x587376 = global %G__0x587376_type zeroinitializer
@G__0x587384 = global %G__0x587384_type zeroinitializer
@G__0x58898d = global %G__0x58898d_type zeroinitializer

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

declare %struct.Memory* @sub_48c750.gtp_decode_color(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_48b8a0.gtp_failure(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_48c5d0.gtp_success(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @gtp_time_left(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_497ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_497ae0, %struct.Memory** %MEMORY
  %loadMem_497ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i25 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i25
  %27 = load i64, i64* %PC.i24
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i24
  store i64 %26, i64* %RBP.i26, align 8
  store %struct.Memory* %loadMem_497ae1, %struct.Memory** %MEMORY
  %loadMem_497ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i73 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i73
  %36 = load i64, i64* %PC.i72
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i72
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i73, align 8
  %39 = icmp ult i64 %35, 32
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
  %49 = xor i64 32, %35
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
  store %struct.Memory* %loadMem_497ae4, %struct.Memory** %MEMORY
  %loadMem_497ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 9
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RSI.i70 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i71
  %77 = sub i64 %76, 20
  %78 = load i64, i64* %PC.i69
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC.i69
  store i64 %77, i64* %RSI.i70, align 8
  store %struct.Memory* %loadMem_497ae8, %struct.Memory** %MEMORY
  %loadMem_497aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 33
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %82 to i64*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 11
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %RDI.i67 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 15
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %RBP.i68
  %90 = sub i64 %89, 16
  %91 = load i64, i64* %RDI.i67
  %92 = load i64, i64* %PC.i66
  %93 = add i64 %92, 4
  store i64 %93, i64* %PC.i66
  %94 = inttoptr i64 %90 to i64*
  store i64 %91, i64* %94
  store %struct.Memory* %loadMem_497aec, %struct.Memory** %MEMORY
  %loadMem_497af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 33
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %97 to i64*
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 11
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %RDI.i64 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 15
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %103 to i64*
  %104 = load i64, i64* %RBP.i65
  %105 = sub i64 %104, 16
  %106 = load i64, i64* %PC.i63
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC.i63
  %108 = inttoptr i64 %105 to i64*
  %109 = load i64, i64* %108
  store i64 %109, i64* %RDI.i64, align 8
  store %struct.Memory* %loadMem_497af0, %struct.Memory** %MEMORY
  %loadMem1_497af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 33
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %112 to i64*
  %113 = load i64, i64* %PC.i62
  %114 = add i64 %113, -45988
  %115 = load i64, i64* %PC.i62
  %116 = add i64 %115, 5
  %117 = load i64, i64* %PC.i62
  %118 = add i64 %117, 5
  store i64 %118, i64* %PC.i62
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, -8
  %122 = inttoptr i64 %121 to i64*
  store i64 %116, i64* %122
  store i64 %121, i64* %119, align 8
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %114, i64* %123, align 8
  store %struct.Memory* %loadMem1_497af4, %struct.Memory** %MEMORY
  %loadMem2_497af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_497af4 = load i64, i64* %3
  %call2_497af4 = call %struct.Memory* @sub_48c750.gtp_decode_color(%struct.State* %0, i64 %loadPC_497af4, %struct.Memory* %loadMem2_497af4)
  store %struct.Memory* %call2_497af4, %struct.Memory** %MEMORY
  %loadMem_497af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 33
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %EAX.i60 = bitcast %union.anon* %129 to i32*
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 15
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %132 to i64*
  %133 = load i64, i64* %RBP.i61
  %134 = sub i64 %133, 32
  %135 = load i32, i32* %EAX.i60
  %136 = zext i32 %135 to i64
  %137 = load i64, i64* %PC.i59
  %138 = add i64 %137, 3
  store i64 %138, i64* %PC.i59
  %139 = inttoptr i64 %134 to i32*
  store i32 %135, i32* %139
  store %struct.Memory* %loadMem_497af9, %struct.Memory** %MEMORY
  %loadMem_497afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 15
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %RBP.i58
  %147 = sub i64 %146, 32
  %148 = load i64, i64* %PC.i57
  %149 = add i64 %148, 4
  store i64 %149, i64* %PC.i57
  %150 = inttoptr i64 %147 to i32*
  %151 = load i32, i32* %150
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %152, align 1
  %153 = and i32 %151, 255
  %154 = call i32 @llvm.ctpop.i32(i32 %153)
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %157, i8* %158, align 1
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %159, align 1
  %160 = icmp eq i32 %151, 0
  %161 = zext i1 %160 to i8
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %161, i8* %162, align 1
  %163 = lshr i32 %151, 31
  %164 = trunc i32 %163 to i8
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %164, i8* %165, align 1
  %166 = lshr i32 %151, 31
  %167 = xor i32 %163, %166
  %168 = add i32 %167, %166
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i8
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %170, i8* %171, align 1
  store %struct.Memory* %loadMem_497afc, %struct.Memory** %MEMORY
  %loadMem_497b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 33
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %174 to i64*
  %175 = load i64, i64* %PC.i56
  %176 = add i64 %175, 31
  %177 = load i64, i64* %PC.i56
  %178 = add i64 %177, 6
  %179 = load i64, i64* %PC.i56
  %180 = add i64 %179, 6
  store i64 %180, i64* %PC.i56
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %182 = load i8, i8* %181, align 1
  %183 = icmp eq i8 %182, 0
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %BRANCH_TAKEN, align 1
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %186 = select i1 %183, i64 %176, i64 %178
  store i64 %186, i64* %185, align 8
  store %struct.Memory* %loadMem_497b00, %struct.Memory** %MEMORY
  %loadBr_497b00 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_497b00 = icmp eq i8 %loadBr_497b00, 1
  br i1 %cmpBr_497b00, label %block_.L_497b1f, label %block_497b06

block_497b06:                                     ; preds = %entry
  %loadMem_497b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 11
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RDI.i55 = bitcast %union.anon* %192 to i64*
  %193 = load i64, i64* %PC.i54
  %194 = add i64 %193, 10
  store i64 %194, i64* %PC.i54
  store i64 ptrtoint (%G__0x587376_type* @G__0x587376 to i64), i64* %RDI.i55, align 8
  store %struct.Memory* %loadMem_497b06, %struct.Memory** %MEMORY
  %loadMem_497b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 33
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %197 to i64*
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %201 = bitcast %union.anon* %200 to %struct.anon.2*
  %AL.i53 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %201, i32 0, i32 0
  %202 = load i64, i64* %PC.i52
  %203 = add i64 %202, 2
  store i64 %203, i64* %PC.i52
  store i8 0, i8* %AL.i53, align 1
  store %struct.Memory* %loadMem_497b10, %struct.Memory** %MEMORY
  %loadMem1_497b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 33
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %206 to i64*
  %207 = load i64, i64* %PC.i51
  %208 = add i64 %207, -49778
  %209 = load i64, i64* %PC.i51
  %210 = add i64 %209, 5
  %211 = load i64, i64* %PC.i51
  %212 = add i64 %211, 5
  store i64 %212, i64* %PC.i51
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = add i64 %214, -8
  %216 = inttoptr i64 %215 to i64*
  store i64 %210, i64* %216
  store i64 %215, i64* %213, align 8
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %208, i64* %217, align 8
  store %struct.Memory* %loadMem1_497b12, %struct.Memory** %MEMORY
  %loadMem2_497b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_497b12 = load i64, i64* %3
  %call2_497b12 = call %struct.Memory* @sub_48b8a0.gtp_failure(%struct.State* %0, i64 %loadPC_497b12, %struct.Memory* %loadMem2_497b12)
  store %struct.Memory* %call2_497b12, %struct.Memory** %MEMORY
  %loadMem_497b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %EAX.i49 = bitcast %union.anon* %223 to i32*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 15
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %226 to i64*
  %227 = load i64, i64* %RBP.i50
  %228 = sub i64 %227, 4
  %229 = load i32, i32* %EAX.i49
  %230 = zext i32 %229 to i64
  %231 = load i64, i64* %PC.i48
  %232 = add i64 %231, 3
  store i64 %232, i64* %PC.i48
  %233 = inttoptr i64 %228 to i32*
  store i32 %229, i32* %233
  store %struct.Memory* %loadMem_497b17, %struct.Memory** %MEMORY
  %loadMem_497b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 33
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %236 to i64*
  %237 = load i64, i64* %PC.i47
  %238 = add i64 %237, 98
  %239 = load i64, i64* %PC.i47
  %240 = add i64 %239, 5
  store i64 %240, i64* %PC.i47
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %238, i64* %241, align 8
  store %struct.Memory* %loadMem_497b1a, %struct.Memory** %MEMORY
  br label %block_.L_497b7c

block_.L_497b1f:                                  ; preds = %entry
  %loadMem_497b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 33
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 9
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %247 to i64*
  %248 = load i64, i64* %PC.i46
  %249 = add i64 %248, 10
  store i64 %249, i64* %PC.i46
  store i64 ptrtoint (%G__0x58735d_type* @G__0x58735d to i64), i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_497b1f, %struct.Memory** %MEMORY
  %loadMem_497b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 33
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %252 to i64*
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 7
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 15
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %258 to i64*
  %259 = load i64, i64* %RBP.i45
  %260 = sub i64 %259, 24
  %261 = load i64, i64* %PC.i44
  %262 = add i64 %261, 4
  store i64 %262, i64* %PC.i44
  store i64 %260, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_497b29, %struct.Memory** %MEMORY
  %loadMem_497b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 33
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 15
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %271 to i64*
  %272 = load i64, i64* %RBP.i43
  %273 = sub i64 %272, 28
  %274 = load i64, i64* %PC.i42
  %275 = add i64 %274, 4
  store i64 %275, i64* %PC.i42
  store i64 %273, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_497b2d, %struct.Memory** %MEMORY
  %loadMem_497b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 33
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %278 to i64*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %281 to i64*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 15
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %284 to i64*
  %285 = load i64, i64* %RBP.i41
  %286 = sub i64 %285, 16
  %287 = load i64, i64* %PC.i39
  %288 = add i64 %287, 4
  store i64 %288, i64* %PC.i39
  %289 = inttoptr i64 %286 to i64*
  %290 = load i64, i64* %289
  store i64 %290, i64* %RAX.i40, align 8
  store %struct.Memory* %loadMem_497b31, %struct.Memory** %MEMORY
  %loadMem_497b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 33
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %293 to i64*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 11
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %RDI.i37 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 15
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %RBP.i38
  %301 = sub i64 %300, 32
  %302 = load i64, i64* %PC.i36
  %303 = add i64 %302, 4
  store i64 %303, i64* %PC.i36
  %304 = inttoptr i64 %301 to i32*
  %305 = load i32, i32* %304
  %306 = sext i32 %305 to i64
  store i64 %306, i64* %RDI.i37, align 8
  store %struct.Memory* %loadMem_497b35, %struct.Memory** %MEMORY
  %loadMem_497b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 33
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %309 to i64*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 11
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %RDI.i35 = bitcast %union.anon* %315 to i64*
  %316 = load i64, i64* %RAX.i34
  %317 = load i64, i64* %RDI.i35
  %318 = load i64, i64* %PC.i33
  %319 = add i64 %318, 3
  store i64 %319, i64* %PC.i33
  %320 = add i64 %317, %316
  store i64 %320, i64* %RAX.i34, align 8
  %321 = icmp ult i64 %320, %316
  %322 = icmp ult i64 %320, %317
  %323 = or i1 %321, %322
  %324 = zext i1 %323 to i8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %324, i8* %325, align 1
  %326 = trunc i64 %320 to i32
  %327 = and i32 %326, 255
  %328 = call i32 @llvm.ctpop.i32(i32 %327)
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = xor i8 %330, 1
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %331, i8* %332, align 1
  %333 = xor i64 %317, %316
  %334 = xor i64 %333, %320
  %335 = lshr i64 %334, 4
  %336 = trunc i64 %335 to i8
  %337 = and i8 %336, 1
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %337, i8* %338, align 1
  %339 = icmp eq i64 %320, 0
  %340 = zext i1 %339 to i8
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %340, i8* %341, align 1
  %342 = lshr i64 %320, 63
  %343 = trunc i64 %342 to i8
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %343, i8* %344, align 1
  %345 = lshr i64 %316, 63
  %346 = lshr i64 %317, 63
  %347 = xor i64 %342, %345
  %348 = xor i64 %342, %346
  %349 = add i64 %347, %348
  %350 = icmp eq i64 %349, 2
  %351 = zext i1 %350 to i8
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %351, i8* %352, align 1
  store %struct.Memory* %loadMem_497b39, %struct.Memory** %MEMORY
  %loadMem_497b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 33
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %355 to i64*
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %358 to i64*
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 11
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %RDI.i32 = bitcast %union.anon* %361 to i64*
  %362 = load i64, i64* %RAX.i31
  %363 = load i64, i64* %PC.i30
  %364 = add i64 %363, 3
  store i64 %364, i64* %PC.i30
  store i64 %362, i64* %RDI.i32, align 8
  store %struct.Memory* %loadMem_497b3c, %struct.Memory** %MEMORY
  %loadMem_497b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 33
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %367 to i64*
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %371 = bitcast %union.anon* %370 to %struct.anon.2*
  %AL.i29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %371, i32 0, i32 0
  %372 = load i64, i64* %PC.i28
  %373 = add i64 %372, 2
  store i64 %373, i64* %PC.i28
  store i8 0, i8* %AL.i29, align 1
  store %struct.Memory* %loadMem_497b3f, %struct.Memory** %MEMORY
  %loadMem1_497b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %376 to i64*
  %377 = load i64, i64* %PC.i27
  %378 = add i64 %377, -616961
  %379 = load i64, i64* %PC.i27
  %380 = add i64 %379, 5
  %381 = load i64, i64* %PC.i27
  %382 = add i64 %381, 5
  store i64 %382, i64* %PC.i27
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = add i64 %384, -8
  %386 = inttoptr i64 %385 to i64*
  store i64 %380, i64* %386
  store i64 %385, i64* %383, align 8
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %378, i64* %387, align 8
  store %struct.Memory* %loadMem1_497b41, %struct.Memory** %MEMORY
  %loadMem2_497b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_497b41 = load i64, i64* %3
  %388 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_sscanf to i64), %struct.Memory* %loadMem2_497b41)
  store %struct.Memory* %388, %struct.Memory** %MEMORY
  %loadMem_497b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 33
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %391 to i64*
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %EAX.i23 = bitcast %union.anon* %394 to i32*
  %395 = load i32, i32* %EAX.i23
  %396 = zext i32 %395 to i64
  %397 = load i64, i64* %PC.i22
  %398 = add i64 %397, 3
  store i64 %398, i64* %PC.i22
  %399 = sub i32 %395, 2
  %400 = icmp ult i32 %395, 2
  %401 = zext i1 %400 to i8
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %401, i8* %402, align 1
  %403 = and i32 %399, 255
  %404 = call i32 @llvm.ctpop.i32(i32 %403)
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = xor i8 %406, 1
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %407, i8* %408, align 1
  %409 = xor i64 2, %396
  %410 = trunc i64 %409 to i32
  %411 = xor i32 %410, %399
  %412 = lshr i32 %411, 4
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %414, i8* %415, align 1
  %416 = icmp eq i32 %399, 0
  %417 = zext i1 %416 to i8
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %417, i8* %418, align 1
  %419 = lshr i32 %399, 31
  %420 = trunc i32 %419 to i8
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %420, i8* %421, align 1
  %422 = lshr i32 %395, 31
  %423 = xor i32 %419, %422
  %424 = add i32 %423, %422
  %425 = icmp eq i32 %424, 2
  %426 = zext i1 %425 to i8
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %426, i8* %427, align 1
  store %struct.Memory* %loadMem_497b46, %struct.Memory** %MEMORY
  %loadMem_497b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 33
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %430 to i64*
  %431 = load i64, i64* %PC.i21
  %432 = add i64 %431, 31
  %433 = load i64, i64* %PC.i21
  %434 = add i64 %433, 6
  %435 = load i64, i64* %PC.i21
  %436 = add i64 %435, 6
  store i64 %436, i64* %PC.i21
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %438 = load i8, i8* %437, align 1
  %439 = icmp ne i8 %438, 0
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %441 = load i8, i8* %440, align 1
  %442 = icmp ne i8 %441, 0
  %443 = xor i1 %439, %442
  %444 = xor i1 %443, true
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %BRANCH_TAKEN, align 1
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %447 = select i1 %443, i64 %434, i64 %432
  store i64 %447, i64* %446, align 8
  store %struct.Memory* %loadMem_497b49, %struct.Memory** %MEMORY
  %loadBr_497b49 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_497b49 = icmp eq i8 %loadBr_497b49, 1
  br i1 %cmpBr_497b49, label %block_.L_497b68, label %block_497b4f

block_497b4f:                                     ; preds = %block_.L_497b1f
  %loadMem_497b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 33
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 11
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RDI.i20 = bitcast %union.anon* %453 to i64*
  %454 = load i64, i64* %PC.i19
  %455 = add i64 %454, 10
  store i64 %455, i64* %PC.i19
  store i64 ptrtoint (%G__0x587384_type* @G__0x587384 to i64), i64* %RDI.i20, align 8
  store %struct.Memory* %loadMem_497b4f, %struct.Memory** %MEMORY
  %loadMem_497b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 33
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %458 to i64*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %462 = bitcast %union.anon* %461 to %struct.anon.2*
  %AL.i18 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %462, i32 0, i32 0
  %463 = load i64, i64* %PC.i17
  %464 = add i64 %463, 2
  store i64 %464, i64* %PC.i17
  store i8 0, i8* %AL.i18, align 1
  store %struct.Memory* %loadMem_497b59, %struct.Memory** %MEMORY
  %loadMem1_497b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %467 to i64*
  %468 = load i64, i64* %PC.i16
  %469 = add i64 %468, -49851
  %470 = load i64, i64* %PC.i16
  %471 = add i64 %470, 5
  %472 = load i64, i64* %PC.i16
  %473 = add i64 %472, 5
  store i64 %473, i64* %PC.i16
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %475 = load i64, i64* %474, align 8
  %476 = add i64 %475, -8
  %477 = inttoptr i64 %476 to i64*
  store i64 %471, i64* %477
  store i64 %476, i64* %474, align 8
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %469, i64* %478, align 8
  store %struct.Memory* %loadMem1_497b5b, %struct.Memory** %MEMORY
  %loadMem2_497b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_497b5b = load i64, i64* %3
  %call2_497b5b = call %struct.Memory* @sub_48b8a0.gtp_failure(%struct.State* %0, i64 %loadPC_497b5b, %struct.Memory* %loadMem2_497b5b)
  store %struct.Memory* %call2_497b5b, %struct.Memory** %MEMORY
  %loadMem_497b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %480 = getelementptr inbounds %struct.GPR, %struct.GPR* %479, i32 0, i32 33
  %481 = getelementptr inbounds %struct.Reg, %struct.Reg* %480, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %481 to i64*
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %484 to i32*
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 15
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %487 to i64*
  %488 = load i64, i64* %RBP.i15
  %489 = sub i64 %488, 4
  %490 = load i32, i32* %EAX.i14
  %491 = zext i32 %490 to i64
  %492 = load i64, i64* %PC.i13
  %493 = add i64 %492, 3
  store i64 %493, i64* %PC.i13
  %494 = inttoptr i64 %489 to i32*
  store i32 %490, i32* %494
  store %struct.Memory* %loadMem_497b60, %struct.Memory** %MEMORY
  %loadMem_497b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 33
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %497 to i64*
  %498 = load i64, i64* %PC.i12
  %499 = add i64 %498, 25
  %500 = load i64, i64* %PC.i12
  %501 = add i64 %500, 5
  store i64 %501, i64* %PC.i12
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %499, i64* %502, align 8
  store %struct.Memory* %loadMem_497b63, %struct.Memory** %MEMORY
  br label %block_.L_497b7c

block_.L_497b68:                                  ; preds = %block_.L_497b1f
  %loadMem_497b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 33
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 11
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %508 to i64*
  %509 = load i64, i64* %PC.i11
  %510 = add i64 %509, 10
  store i64 %510, i64* %PC.i11
  store i64 ptrtoint (%G__0x58898d_type* @G__0x58898d to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_497b68, %struct.Memory** %MEMORY
  %loadMem_497b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 33
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %513 to i64*
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 1
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %517 = bitcast %union.anon* %516 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %517, i32 0, i32 0
  %518 = load i64, i64* %PC.i10
  %519 = add i64 %518, 2
  store i64 %519, i64* %PC.i10
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_497b72, %struct.Memory** %MEMORY
  %loadMem1_497b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 33
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %522 to i64*
  %523 = load i64, i64* %PC.i9
  %524 = add i64 %523, -46500
  %525 = load i64, i64* %PC.i9
  %526 = add i64 %525, 5
  %527 = load i64, i64* %PC.i9
  %528 = add i64 %527, 5
  store i64 %528, i64* %PC.i9
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = add i64 %530, -8
  %532 = inttoptr i64 %531 to i64*
  store i64 %526, i64* %532
  store i64 %531, i64* %529, align 8
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %524, i64* %533, align 8
  store %struct.Memory* %loadMem1_497b74, %struct.Memory** %MEMORY
  %loadMem2_497b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_497b74 = load i64, i64* %3
  %call2_497b74 = call %struct.Memory* @sub_48c5d0.gtp_success(%struct.State* %0, i64 %loadPC_497b74, %struct.Memory* %loadMem2_497b74)
  store %struct.Memory* %call2_497b74, %struct.Memory** %MEMORY
  %loadMem_497b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 33
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %536 to i64*
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 1
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %539 to i32*
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 15
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %542 to i64*
  %543 = load i64, i64* %RBP.i8
  %544 = sub i64 %543, 4
  %545 = load i32, i32* %EAX.i
  %546 = zext i32 %545 to i64
  %547 = load i64, i64* %PC.i7
  %548 = add i64 %547, 3
  store i64 %548, i64* %PC.i7
  %549 = inttoptr i64 %544 to i32*
  store i32 %545, i32* %549
  store %struct.Memory* %loadMem_497b79, %struct.Memory** %MEMORY
  br label %block_.L_497b7c

block_.L_497b7c:                                  ; preds = %block_.L_497b68, %block_497b4f, %block_497b06
  %loadMem_497b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 33
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %552 to i64*
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %555 to i64*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 15
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %558 to i64*
  %559 = load i64, i64* %RBP.i6
  %560 = sub i64 %559, 4
  %561 = load i64, i64* %PC.i5
  %562 = add i64 %561, 3
  store i64 %562, i64* %PC.i5
  %563 = inttoptr i64 %560 to i32*
  %564 = load i32, i32* %563
  %565 = zext i32 %564 to i64
  store i64 %565, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_497b7c, %struct.Memory** %MEMORY
  %loadMem_497b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 33
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %568 to i64*
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 13
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %571 to i64*
  %572 = load i64, i64* %RSP.i
  %573 = load i64, i64* %PC.i4
  %574 = add i64 %573, 4
  store i64 %574, i64* %PC.i4
  %575 = add i64 32, %572
  store i64 %575, i64* %RSP.i, align 8
  %576 = icmp ult i64 %575, %572
  %577 = icmp ult i64 %575, 32
  %578 = or i1 %576, %577
  %579 = zext i1 %578 to i8
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %579, i8* %580, align 1
  %581 = trunc i64 %575 to i32
  %582 = and i32 %581, 255
  %583 = call i32 @llvm.ctpop.i32(i32 %582)
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  %586 = xor i8 %585, 1
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %586, i8* %587, align 1
  %588 = xor i64 32, %572
  %589 = xor i64 %588, %575
  %590 = lshr i64 %589, 4
  %591 = trunc i64 %590 to i8
  %592 = and i8 %591, 1
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %592, i8* %593, align 1
  %594 = icmp eq i64 %575, 0
  %595 = zext i1 %594 to i8
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %595, i8* %596, align 1
  %597 = lshr i64 %575, 63
  %598 = trunc i64 %597 to i8
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %598, i8* %599, align 1
  %600 = lshr i64 %572, 63
  %601 = xor i64 %597, %600
  %602 = add i64 %601, %597
  %603 = icmp eq i64 %602, 2
  %604 = zext i1 %603 to i8
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %604, i8* %605, align 1
  store %struct.Memory* %loadMem_497b7f, %struct.Memory** %MEMORY
  %loadMem_497b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 33
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %608 to i64*
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 15
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %611 to i64*
  %612 = load i64, i64* %PC.i2
  %613 = add i64 %612, 1
  store i64 %613, i64* %PC.i2
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %615 = load i64, i64* %614, align 8
  %616 = add i64 %615, 8
  %617 = inttoptr i64 %615 to i64*
  %618 = load i64, i64* %617
  store i64 %618, i64* %RBP.i3, align 8
  store i64 %616, i64* %614, align 8
  store %struct.Memory* %loadMem_497b83, %struct.Memory** %MEMORY
  %loadMem_497b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 33
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %621 to i64*
  %622 = load i64, i64* %PC.i1
  %623 = add i64 %622, 1
  store i64 %623, i64* %PC.i1
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %626 = load i64, i64* %625, align 8
  %627 = inttoptr i64 %626 to i64*
  %628 = load i64, i64* %627
  store i64 %628, i64* %624, align 8
  %629 = add i64 %626, 8
  store i64 %629, i64* %625, align 8
  store %struct.Memory* %loadMem_497b84, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_497b84
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

define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 32
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 32
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
  %23 = xor i64 32, %9
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

define %struct.Memory* @routine_leaq_MINUS0x14__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.gtp_decode_color(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_497b1f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x587376___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x587376_type* @G__0x587376 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.gtp_failure(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_497b7c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x58735d___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58735d_type* @G__0x58735d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x1c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdi___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
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

define %struct.Memory* @routine_callq_.__isoc99_sscanf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_497b68(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x587384___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x587384_type* @G__0x587384 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x58898d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58898d_type* @G__0x58898d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.gtp_success(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 32, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 32
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
  %25 = xor i64 32, %9
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
