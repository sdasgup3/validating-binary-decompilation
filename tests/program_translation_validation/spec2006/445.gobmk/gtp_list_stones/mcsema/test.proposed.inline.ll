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
%G__0x587376_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = global %G_0x7ae438_type zeroinitializer
@G__0x587376 = global %G__0x587376_type zeroinitializer

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

declare %struct.Memory* @sub_48bbb0.gtp_start_response(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_48c310.gtp_print_vertices(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_48bc30.gtp_finish_response(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @gtp_list_stones(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_495910 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_495910, %struct.Memory** %MEMORY
  %loadMem_495911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i130 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i130
  %27 = load i64, i64* %PC.i129
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i129
  store i64 %26, i64* %RBP.i131, align 8
  store %struct.Memory* %loadMem_495911, %struct.Memory** %MEMORY
  %loadMem_495914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i128 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i128
  %36 = load i64, i64* %PC.i127
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i127
  %38 = sub i64 %35, 2944
  store i64 %38, i64* %RSP.i128, align 8
  %39 = icmp ult i64 %35, 2944
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
  %49 = xor i64 2944, %35
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
  store %struct.Memory* %loadMem_495914, %struct.Memory** %MEMORY
  %loadMem_49591b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 9
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RSI.i125 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i126
  %77 = sub i64 %76, 28
  %78 = load i64, i64* %PC.i124
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC.i124
  store i64 %77, i64* %RSI.i125, align 8
  store %struct.Memory* %loadMem_49591b, %struct.Memory** %MEMORY
  %loadMem_49591f = load %struct.Memory*, %struct.Memory** %MEMORY
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 33
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %82 to i64*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 11
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %RDI.i122 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 15
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %RBP.i123
  %90 = sub i64 %89, 16
  %91 = load i64, i64* %RDI.i122
  %92 = load i64, i64* %PC.i121
  %93 = add i64 %92, 4
  store i64 %93, i64* %PC.i121
  %94 = inttoptr i64 %90 to i64*
  store i64 %91, i64* %94
  store %struct.Memory* %loadMem_49591f, %struct.Memory** %MEMORY
  %loadMem_495923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 33
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %97 to i64*
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 15
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %100 to i64*
  %101 = load i64, i64* %RBP.i120
  %102 = sub i64 %101, 28
  %103 = load i64, i64* %PC.i119
  %104 = add i64 %103, 7
  store i64 %104, i64* %PC.i119
  %105 = inttoptr i64 %102 to i32*
  store i32 0, i32* %105
  store %struct.Memory* %loadMem_495923, %struct.Memory** %MEMORY
  %loadMem_49592a = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 15
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %111 to i64*
  %112 = load i64, i64* %RBP.i118
  %113 = sub i64 %112, 2932
  %114 = load i64, i64* %PC.i117
  %115 = add i64 %114, 10
  store i64 %115, i64* %PC.i117
  %116 = inttoptr i64 %113 to i32*
  store i32 0, i32* %116
  store %struct.Memory* %loadMem_49592a, %struct.Memory** %MEMORY
  %loadMem_495934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 33
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 11
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RDI.i115 = bitcast %union.anon* %122 to i64*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 15
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %125 to i64*
  %126 = load i64, i64* %RBP.i116
  %127 = sub i64 %126, 16
  %128 = load i64, i64* %PC.i114
  %129 = add i64 %128, 4
  store i64 %129, i64* %PC.i114
  %130 = inttoptr i64 %127 to i64*
  %131 = load i64, i64* %130
  store i64 %131, i64* %RDI.i115, align 8
  store %struct.Memory* %loadMem_495934, %struct.Memory** %MEMORY
  %loadMem1_495938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 33
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %134 to i64*
  %135 = load i64, i64* %PC.i113
  %136 = add i64 %135, -37352
  %137 = load i64, i64* %PC.i113
  %138 = add i64 %137, 5
  %139 = load i64, i64* %PC.i113
  %140 = add i64 %139, 5
  store i64 %140, i64* %PC.i113
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, -8
  %144 = inttoptr i64 %143 to i64*
  store i64 %138, i64* %144
  store i64 %143, i64* %141, align 8
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %136, i64* %145, align 8
  store %struct.Memory* %loadMem1_495938, %struct.Memory** %MEMORY
  %loadMem2_495938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_495938 = load i64, i64* %3
  %call2_495938 = call %struct.Memory* @sub_48c750.gtp_decode_color(%struct.State* %0, i64 %loadPC_495938, %struct.Memory* %loadMem2_495938)
  store %struct.Memory* %call2_495938, %struct.Memory** %MEMORY
  %loadMem_49593d = load %struct.Memory*, %struct.Memory** %MEMORY
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 33
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %148 to i64*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %EAX.i112 = bitcast %union.anon* %151 to i32*
  %152 = load i32, i32* %EAX.i112
  %153 = zext i32 %152 to i64
  %154 = load i64, i64* %PC.i111
  %155 = add i64 %154, 3
  store i64 %155, i64* %PC.i111
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %156, align 1
  %157 = and i32 %152, 255
  %158 = call i32 @llvm.ctpop.i32(i32 %157)
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  %161 = xor i8 %160, 1
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %161, i8* %162, align 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %163, align 1
  %164 = icmp eq i32 %152, 0
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %165, i8* %166, align 1
  %167 = lshr i32 %152, 31
  %168 = trunc i32 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %168, i8* %169, align 1
  %170 = lshr i32 %152, 31
  %171 = xor i32 %167, %170
  %172 = add i32 %171, %170
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %174, i8* %175, align 1
  store %struct.Memory* %loadMem_49593d, %struct.Memory** %MEMORY
  %loadMem_495940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 33
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %178 to i64*
  %179 = load i64, i64* %PC.i110
  %180 = add i64 %179, 31
  %181 = load i64, i64* %PC.i110
  %182 = add i64 %181, 6
  %183 = load i64, i64* %PC.i110
  %184 = add i64 %183, 6
  store i64 %184, i64* %PC.i110
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %186 = load i8, i8* %185, align 1
  %187 = icmp eq i8 %186, 0
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %BRANCH_TAKEN, align 1
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %190 = select i1 %187, i64 %180, i64 %182
  store i64 %190, i64* %189, align 8
  store %struct.Memory* %loadMem_495940, %struct.Memory** %MEMORY
  %loadBr_495940 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_495940 = icmp eq i8 %loadBr_495940, 1
  br i1 %cmpBr_495940, label %block_.L_49595f, label %block_495946

block_495946:                                     ; preds = %entry
  %loadMem_495946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 33
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %193 to i64*
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 11
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %RDI.i109 = bitcast %union.anon* %196 to i64*
  %197 = load i64, i64* %PC.i108
  %198 = add i64 %197, 10
  store i64 %198, i64* %PC.i108
  store i64 ptrtoint (%G__0x587376_type* @G__0x587376 to i64), i64* %RDI.i109, align 8
  store %struct.Memory* %loadMem_495946, %struct.Memory** %MEMORY
  %loadMem_495950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 33
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %205 = bitcast %union.anon* %204 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %205, i32 0, i32 0
  %206 = load i64, i64* %PC.i107
  %207 = add i64 %206, 2
  store i64 %207, i64* %PC.i107
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_495950, %struct.Memory** %MEMORY
  %loadMem1_495952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 33
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %210 to i64*
  %211 = load i64, i64* %PC.i106
  %212 = add i64 %211, -41138
  %213 = load i64, i64* %PC.i106
  %214 = add i64 %213, 5
  %215 = load i64, i64* %PC.i106
  %216 = add i64 %215, 5
  store i64 %216, i64* %PC.i106
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = add i64 %218, -8
  %220 = inttoptr i64 %219 to i64*
  store i64 %214, i64* %220
  store i64 %219, i64* %217, align 8
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %212, i64* %221, align 8
  store %struct.Memory* %loadMem1_495952, %struct.Memory** %MEMORY
  %loadMem2_495952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_495952 = load i64, i64* %3
  %call2_495952 = call %struct.Memory* @sub_48b8a0.gtp_failure(%struct.State* %0, i64 %loadPC_495952, %struct.Memory* %loadMem2_495952)
  store %struct.Memory* %call2_495952, %struct.Memory** %MEMORY
  %loadMem_495957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 33
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %EAX.i104 = bitcast %union.anon* %227 to i32*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 15
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %RBP.i105
  %232 = sub i64 %231, 4
  %233 = load i32, i32* %EAX.i104
  %234 = zext i32 %233 to i64
  %235 = load i64, i64* %PC.i103
  %236 = add i64 %235, 3
  store i64 %236, i64* %PC.i103
  %237 = inttoptr i64 %232 to i32*
  store i32 %233, i32* %237
  store %struct.Memory* %loadMem_495957, %struct.Memory** %MEMORY
  %loadMem_49595a = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %240 to i64*
  %241 = load i64, i64* %PC.i102
  %242 = add i64 %241, 206
  %243 = load i64, i64* %PC.i102
  %244 = add i64 %243, 5
  store i64 %244, i64* %PC.i102
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %242, i64* %245, align 8
  store %struct.Memory* %loadMem_49595a, %struct.Memory** %MEMORY
  br label %block_.L_495a28

block_.L_49595f:                                  ; preds = %entry
  %loadMem_49595f = load %struct.Memory*, %struct.Memory** %MEMORY
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 33
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 15
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %251 to i64*
  %252 = load i64, i64* %RBP.i101
  %253 = sub i64 %252, 20
  %254 = load i64, i64* %PC.i100
  %255 = add i64 %254, 7
  store i64 %255, i64* %PC.i100
  %256 = inttoptr i64 %253 to i32*
  store i32 0, i32* %256
  store %struct.Memory* %loadMem_49595f, %struct.Memory** %MEMORY
  br label %block_.L_495966

block_.L_495966:                                  ; preds = %block_.L_4959f2, %block_.L_49595f
  %loadMem_495966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 33
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %259 to i64*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %262 to i64*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 15
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %265 to i64*
  %266 = load i64, i64* %RBP.i99
  %267 = sub i64 %266, 20
  %268 = load i64, i64* %PC.i97
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC.i97
  %270 = inttoptr i64 %267 to i32*
  %271 = load i32, i32* %270
  %272 = zext i32 %271 to i64
  store i64 %272, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_495966, %struct.Memory** %MEMORY
  %loadMem_495969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 33
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %275 to i64*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %EAX.i96 = bitcast %union.anon* %278 to i32*
  %279 = load i32, i32* %EAX.i96
  %280 = zext i32 %279 to i64
  %281 = load i64, i64* %PC.i95
  %282 = add i64 %281, 7
  store i64 %282, i64* %PC.i95
  %283 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %284 = sub i32 %279, %283
  %285 = icmp ult i32 %279, %283
  %286 = zext i1 %285 to i8
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %286, i8* %287, align 1
  %288 = and i32 %284, 255
  %289 = call i32 @llvm.ctpop.i32(i32 %288)
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  %292 = xor i8 %291, 1
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %292, i8* %293, align 1
  %294 = xor i32 %283, %279
  %295 = xor i32 %294, %284
  %296 = lshr i32 %295, 4
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %298, i8* %299, align 1
  %300 = icmp eq i32 %284, 0
  %301 = zext i1 %300 to i8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %301, i8* %302, align 1
  %303 = lshr i32 %284, 31
  %304 = trunc i32 %303 to i8
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %304, i8* %305, align 1
  %306 = lshr i32 %279, 31
  %307 = lshr i32 %283, 31
  %308 = xor i32 %307, %306
  %309 = xor i32 %303, %306
  %310 = add i32 %309, %308
  %311 = icmp eq i32 %310, 2
  %312 = zext i1 %311 to i8
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %312, i8* %313, align 1
  store %struct.Memory* %loadMem_495969, %struct.Memory** %MEMORY
  %loadMem_495970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 33
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %316 to i64*
  %317 = load i64, i64* %PC.i94
  %318 = add i64 %317, 144
  %319 = load i64, i64* %PC.i94
  %320 = add i64 %319, 6
  %321 = load i64, i64* %PC.i94
  %322 = add i64 %321, 6
  store i64 %322, i64* %PC.i94
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %324 = load i8, i8* %323, align 1
  %325 = icmp ne i8 %324, 0
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %327 = load i8, i8* %326, align 1
  %328 = icmp ne i8 %327, 0
  %329 = xor i1 %325, %328
  %330 = xor i1 %329, true
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %BRANCH_TAKEN, align 1
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %333 = select i1 %329, i64 %320, i64 %318
  store i64 %333, i64* %332, align 8
  store %struct.Memory* %loadMem_495970, %struct.Memory** %MEMORY
  %loadBr_495970 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_495970 = icmp eq i8 %loadBr_495970, 1
  br i1 %cmpBr_495970, label %block_.L_495a00, label %block_495976

block_495976:                                     ; preds = %block_.L_495966
  %loadMem_495976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 33
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %336 to i64*
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 15
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %339 to i64*
  %340 = load i64, i64* %RBP.i93
  %341 = sub i64 %340, 24
  %342 = load i64, i64* %PC.i92
  %343 = add i64 %342, 7
  store i64 %343, i64* %PC.i92
  %344 = inttoptr i64 %341 to i32*
  store i32 0, i32* %344
  store %struct.Memory* %loadMem_495976, %struct.Memory** %MEMORY
  br label %block_.L_49597d

block_.L_49597d:                                  ; preds = %block_.L_4959df, %block_495976
  %loadMem_49597d = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 15
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %353 to i64*
  %354 = load i64, i64* %RBP.i91
  %355 = sub i64 %354, 24
  %356 = load i64, i64* %PC.i89
  %357 = add i64 %356, 3
  store i64 %357, i64* %PC.i89
  %358 = inttoptr i64 %355 to i32*
  %359 = load i32, i32* %358
  %360 = zext i32 %359 to i64
  store i64 %360, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_49597d, %struct.Memory** %MEMORY
  %loadMem_495980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %EAX.i88 = bitcast %union.anon* %366 to i32*
  %367 = load i32, i32* %EAX.i88
  %368 = zext i32 %367 to i64
  %369 = load i64, i64* %PC.i87
  %370 = add i64 %369, 7
  store i64 %370, i64* %PC.i87
  %371 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %372 = sub i32 %367, %371
  %373 = icmp ult i32 %367, %371
  %374 = zext i1 %373 to i8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %374, i8* %375, align 1
  %376 = and i32 %372, 255
  %377 = call i32 @llvm.ctpop.i32(i32 %376)
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  %380 = xor i8 %379, 1
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %380, i8* %381, align 1
  %382 = xor i32 %371, %367
  %383 = xor i32 %382, %372
  %384 = lshr i32 %383, 4
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %386, i8* %387, align 1
  %388 = icmp eq i32 %372, 0
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %389, i8* %390, align 1
  %391 = lshr i32 %372, 31
  %392 = trunc i32 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %392, i8* %393, align 1
  %394 = lshr i32 %367, 31
  %395 = lshr i32 %371, 31
  %396 = xor i32 %395, %394
  %397 = xor i32 %391, %394
  %398 = add i32 %397, %396
  %399 = icmp eq i32 %398, 2
  %400 = zext i1 %399 to i8
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %400, i8* %401, align 1
  store %struct.Memory* %loadMem_495980, %struct.Memory** %MEMORY
  %loadMem_495987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 33
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %404 to i64*
  %405 = load i64, i64* %PC.i86
  %406 = add i64 %405, 102
  %407 = load i64, i64* %PC.i86
  %408 = add i64 %407, 6
  %409 = load i64, i64* %PC.i86
  %410 = add i64 %409, 6
  store i64 %410, i64* %PC.i86
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %412 = load i8, i8* %411, align 1
  %413 = icmp ne i8 %412, 0
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %415 = load i8, i8* %414, align 1
  %416 = icmp ne i8 %415, 0
  %417 = xor i1 %413, %416
  %418 = xor i1 %417, true
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %BRANCH_TAKEN, align 1
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %421 = select i1 %417, i64 %408, i64 %406
  store i64 %421, i64* %420, align 8
  store %struct.Memory* %loadMem_495987, %struct.Memory** %MEMORY
  %loadBr_495987 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_495987 = icmp eq i8 %loadBr_495987, 1
  br i1 %cmpBr_495987, label %block_.L_4959ed, label %block_49598d

block_49598d:                                     ; preds = %block_.L_49597d
  %loadMem_49598d = load %struct.Memory*, %struct.Memory** %MEMORY
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 33
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %424 to i64*
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %427 to i64*
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 15
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %430 to i64*
  %431 = load i64, i64* %RBP.i85
  %432 = sub i64 %431, 20
  %433 = load i64, i64* %PC.i83
  %434 = add i64 %433, 4
  store i64 %434, i64* %PC.i83
  %435 = inttoptr i64 %432 to i32*
  %436 = load i32, i32* %435
  %437 = sext i32 %436 to i64
  %438 = mul i64 %437, 20
  %439 = trunc i64 %438 to i32
  %440 = and i64 %438, 4294967295
  store i64 %440, i64* %RAX.i84, align 8
  %441 = shl i64 %438, 32
  %442 = ashr exact i64 %441, 32
  %443 = icmp ne i64 %442, %438
  %444 = zext i1 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %444, i8* %445, align 1
  %446 = and i32 %439, 255
  %447 = call i32 @llvm.ctpop.i32(i32 %446)
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  %450 = xor i8 %449, 1
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %450, i8* %451, align 1
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %452, align 1
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %453, align 1
  %454 = lshr i32 %439, 31
  %455 = trunc i32 %454 to i8
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %455, i8* %456, align 1
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %444, i8* %457, align 1
  store %struct.Memory* %loadMem_49598d, %struct.Memory** %MEMORY
  %loadMem_495991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 33
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %460 to i64*
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 1
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %463 to i64*
  %464 = load i64, i64* %RAX.i82
  %465 = load i64, i64* %PC.i81
  %466 = add i64 %465, 3
  store i64 %466, i64* %PC.i81
  %467 = trunc i64 %464 to i32
  %468 = add i32 21, %467
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %RAX.i82, align 8
  %470 = icmp ult i32 %468, %467
  %471 = icmp ult i32 %468, 21
  %472 = or i1 %470, %471
  %473 = zext i1 %472 to i8
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %473, i8* %474, align 1
  %475 = and i32 %468, 255
  %476 = call i32 @llvm.ctpop.i32(i32 %475)
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  %479 = xor i8 %478, 1
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %479, i8* %480, align 1
  %481 = xor i64 21, %464
  %482 = trunc i64 %481 to i32
  %483 = xor i32 %482, %468
  %484 = lshr i32 %483, 4
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %486, i8* %487, align 1
  %488 = icmp eq i32 %468, 0
  %489 = zext i1 %488 to i8
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %489, i8* %490, align 1
  %491 = lshr i32 %468, 31
  %492 = trunc i32 %491 to i8
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %492, i8* %493, align 1
  %494 = lshr i32 %467, 31
  %495 = xor i32 %491, %494
  %496 = add i32 %495, %491
  %497 = icmp eq i32 %496, 2
  %498 = zext i1 %497 to i8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %498, i8* %499, align 1
  store %struct.Memory* %loadMem_495991, %struct.Memory** %MEMORY
  %loadMem_495994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 33
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %502 to i64*
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 15
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %508 to i64*
  %509 = load i64, i64* %RAX.i79
  %510 = load i64, i64* %RBP.i80
  %511 = sub i64 %510, 24
  %512 = load i64, i64* %PC.i78
  %513 = add i64 %512, 3
  store i64 %513, i64* %PC.i78
  %514 = trunc i64 %509 to i32
  %515 = inttoptr i64 %511 to i32*
  %516 = load i32, i32* %515
  %517 = add i32 %516, %514
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %RAX.i79, align 8
  %519 = icmp ult i32 %517, %514
  %520 = icmp ult i32 %517, %516
  %521 = or i1 %519, %520
  %522 = zext i1 %521 to i8
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %522, i8* %523, align 1
  %524 = and i32 %517, 255
  %525 = call i32 @llvm.ctpop.i32(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %528, i8* %529, align 1
  %530 = xor i32 %516, %514
  %531 = xor i32 %530, %517
  %532 = lshr i32 %531, 4
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %534, i8* %535, align 1
  %536 = icmp eq i32 %517, 0
  %537 = zext i1 %536 to i8
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %537, i8* %538, align 1
  %539 = lshr i32 %517, 31
  %540 = trunc i32 %539 to i8
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %540, i8* %541, align 1
  %542 = lshr i32 %514, 31
  %543 = lshr i32 %516, 31
  %544 = xor i32 %539, %542
  %545 = xor i32 %539, %543
  %546 = add i32 %544, %545
  %547 = icmp eq i32 %546, 2
  %548 = zext i1 %547 to i8
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %548, i8* %549, align 1
  store %struct.Memory* %loadMem_495994, %struct.Memory** %MEMORY
  %loadMem_495997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 33
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %552 to i64*
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %EAX.i76 = bitcast %union.anon* %555 to i32*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 5
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %558 to i64*
  %559 = load i32, i32* %EAX.i76
  %560 = zext i32 %559 to i64
  %561 = load i64, i64* %PC.i75
  %562 = add i64 %561, 3
  store i64 %562, i64* %PC.i75
  %563 = shl i64 %560, 32
  %564 = ashr exact i64 %563, 32
  store i64 %564, i64* %RCX.i77, align 8
  store %struct.Memory* %loadMem_495997, %struct.Memory** %MEMORY
  %loadMem_49599a = load %struct.Memory*, %struct.Memory** %MEMORY
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 33
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %567 to i64*
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 1
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 5
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %573 to i64*
  %574 = load i64, i64* %RCX.i74
  %575 = add i64 %574, 12099168
  %576 = load i64, i64* %PC.i72
  %577 = add i64 %576, 8
  store i64 %577, i64* %PC.i72
  %578 = inttoptr i64 %575 to i8*
  %579 = load i8, i8* %578
  %580 = zext i8 %579 to i64
  store i64 %580, i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_49599a, %struct.Memory** %MEMORY
  %loadMem_4959a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 33
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 1
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %EAX.i70 = bitcast %union.anon* %586 to i32*
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 15
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %589 to i64*
  %590 = load i32, i32* %EAX.i70
  %591 = zext i32 %590 to i64
  %592 = load i64, i64* %RBP.i71
  %593 = sub i64 %592, 28
  %594 = load i64, i64* %PC.i69
  %595 = add i64 %594, 3
  store i64 %595, i64* %PC.i69
  %596 = inttoptr i64 %593 to i32*
  %597 = load i32, i32* %596
  %598 = sub i32 %590, %597
  %599 = icmp ult i32 %590, %597
  %600 = zext i1 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %600, i8* %601, align 1
  %602 = and i32 %598, 255
  %603 = call i32 @llvm.ctpop.i32(i32 %602)
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  %606 = xor i8 %605, 1
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %606, i8* %607, align 1
  %608 = xor i32 %597, %590
  %609 = xor i32 %608, %598
  %610 = lshr i32 %609, 4
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %612, i8* %613, align 1
  %614 = icmp eq i32 %598, 0
  %615 = zext i1 %614 to i8
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %615, i8* %616, align 1
  %617 = lshr i32 %598, 31
  %618 = trunc i32 %617 to i8
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %618, i8* %619, align 1
  %620 = lshr i32 %590, 31
  %621 = lshr i32 %597, 31
  %622 = xor i32 %621, %620
  %623 = xor i32 %617, %620
  %624 = add i32 %623, %622
  %625 = icmp eq i32 %624, 2
  %626 = zext i1 %625 to i8
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %626, i8* %627, align 1
  store %struct.Memory* %loadMem_4959a2, %struct.Memory** %MEMORY
  %loadMem_4959a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 33
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %630 to i64*
  %631 = load i64, i64* %PC.i68
  %632 = add i64 %631, 53
  %633 = load i64, i64* %PC.i68
  %634 = add i64 %633, 6
  %635 = load i64, i64* %PC.i68
  %636 = add i64 %635, 6
  store i64 %636, i64* %PC.i68
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %638 = load i8, i8* %637, align 1
  %639 = icmp eq i8 %638, 0
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %BRANCH_TAKEN, align 1
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %642 = select i1 %639, i64 %632, i64 %634
  store i64 %642, i64* %641, align 8
  store %struct.Memory* %loadMem_4959a5, %struct.Memory** %MEMORY
  %loadBr_4959a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4959a5 = icmp eq i8 %loadBr_4959a5, 1
  br i1 %cmpBr_4959a5, label %block_.L_4959da, label %block_4959ab

block_4959ab:                                     ; preds = %block_49598d
  %loadMem_4959ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 33
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %645 to i64*
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 1
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %648 to i64*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 15
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %651 to i64*
  %652 = load i64, i64* %RBP.i67
  %653 = sub i64 %652, 20
  %654 = load i64, i64* %PC.i65
  %655 = add i64 %654, 3
  store i64 %655, i64* %PC.i65
  %656 = inttoptr i64 %653 to i32*
  %657 = load i32, i32* %656
  %658 = zext i32 %657 to i64
  store i64 %658, i64* %RAX.i66, align 8
  store %struct.Memory* %loadMem_4959ab, %struct.Memory** %MEMORY
  %loadMem_4959ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 33
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %661 to i64*
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 5
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %664 to i64*
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 15
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %667 to i64*
  %668 = load i64, i64* %RBP.i64
  %669 = sub i64 %668, 2932
  %670 = load i64, i64* %PC.i62
  %671 = add i64 %670, 7
  store i64 %671, i64* %PC.i62
  %672 = inttoptr i64 %669 to i32*
  %673 = load i32, i32* %672
  %674 = sext i32 %673 to i64
  store i64 %674, i64* %RCX.i63, align 8
  store %struct.Memory* %loadMem_4959ae, %struct.Memory** %MEMORY
  %loadMem_4959b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 33
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 1
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %EAX.i59 = bitcast %union.anon* %680 to i32*
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 5
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %RCX.i60 = bitcast %union.anon* %683 to i64*
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 15
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %686 to i64*
  %687 = load i64, i64* %RBP.i61
  %688 = load i64, i64* %RCX.i60
  %689 = mul i64 %688, 4
  %690 = add i64 %687, -1472
  %691 = add i64 %690, %689
  %692 = load i32, i32* %EAX.i59
  %693 = zext i32 %692 to i64
  %694 = load i64, i64* %PC.i58
  %695 = add i64 %694, 7
  store i64 %695, i64* %PC.i58
  %696 = inttoptr i64 %691 to i32*
  store i32 %692, i32* %696
  store %struct.Memory* %loadMem_4959b5, %struct.Memory** %MEMORY
  %loadMem_4959bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 1
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 15
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %705 to i64*
  %706 = load i64, i64* %RBP.i57
  %707 = sub i64 %706, 24
  %708 = load i64, i64* %PC.i55
  %709 = add i64 %708, 3
  store i64 %709, i64* %PC.i55
  %710 = inttoptr i64 %707 to i32*
  %711 = load i32, i32* %710
  %712 = zext i32 %711 to i64
  store i64 %712, i64* %RAX.i56, align 8
  store %struct.Memory* %loadMem_4959bc, %struct.Memory** %MEMORY
  %loadMem_4959bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 33
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 7
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RDX.i53 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 15
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %721 to i64*
  %722 = load i64, i64* %RBP.i54
  %723 = sub i64 %722, 2932
  %724 = load i64, i64* %PC.i52
  %725 = add i64 %724, 6
  store i64 %725, i64* %PC.i52
  %726 = inttoptr i64 %723 to i32*
  %727 = load i32, i32* %726
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RDX.i53, align 8
  store %struct.Memory* %loadMem_4959bf, %struct.Memory** %MEMORY
  %loadMem_4959c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 7
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %EDX.i50 = bitcast %union.anon* %734 to i32*
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 9
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %RSI.i51 = bitcast %union.anon* %737 to i64*
  %738 = load i32, i32* %EDX.i50
  %739 = zext i32 %738 to i64
  %740 = load i64, i64* %PC.i49
  %741 = add i64 %740, 2
  store i64 %741, i64* %PC.i49
  %742 = and i64 %739, 4294967295
  store i64 %742, i64* %RSI.i51, align 8
  store %struct.Memory* %loadMem_4959c5, %struct.Memory** %MEMORY
  %loadMem_4959c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 33
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 9
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %RSI.i48 = bitcast %union.anon* %748 to i64*
  %749 = load i64, i64* %RSI.i48
  %750 = load i64, i64* %PC.i47
  %751 = add i64 %750, 3
  store i64 %751, i64* %PC.i47
  %752 = trunc i64 %749 to i32
  %753 = add i32 1, %752
  %754 = zext i32 %753 to i64
  store i64 %754, i64* %RSI.i48, align 8
  %755 = icmp ult i32 %753, %752
  %756 = icmp ult i32 %753, 1
  %757 = or i1 %755, %756
  %758 = zext i1 %757 to i8
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %758, i8* %759, align 1
  %760 = and i32 %753, 255
  %761 = call i32 @llvm.ctpop.i32(i32 %760)
  %762 = trunc i32 %761 to i8
  %763 = and i8 %762, 1
  %764 = xor i8 %763, 1
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %764, i8* %765, align 1
  %766 = xor i64 1, %749
  %767 = trunc i64 %766 to i32
  %768 = xor i32 %767, %753
  %769 = lshr i32 %768, 4
  %770 = trunc i32 %769 to i8
  %771 = and i8 %770, 1
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %771, i8* %772, align 1
  %773 = icmp eq i32 %753, 0
  %774 = zext i1 %773 to i8
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %774, i8* %775, align 1
  %776 = lshr i32 %753, 31
  %777 = trunc i32 %776 to i8
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %777, i8* %778, align 1
  %779 = lshr i32 %752, 31
  %780 = xor i32 %776, %779
  %781 = add i32 %780, %776
  %782 = icmp eq i32 %781, 2
  %783 = zext i1 %782 to i8
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %783, i8* %784, align 1
  store %struct.Memory* %loadMem_4959c7, %struct.Memory** %MEMORY
  %loadMem_4959ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 33
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %787 to i64*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 9
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %790 to i32*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 15
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %793 to i64*
  %794 = load i64, i64* %RBP.i46
  %795 = sub i64 %794, 2932
  %796 = load i32, i32* %ESI.i
  %797 = zext i32 %796 to i64
  %798 = load i64, i64* %PC.i45
  %799 = add i64 %798, 6
  store i64 %799, i64* %PC.i45
  %800 = inttoptr i64 %795 to i32*
  store i32 %796, i32* %800
  store %struct.Memory* %loadMem_4959ca, %struct.Memory** %MEMORY
  %loadMem_4959d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 33
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %803 to i64*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 7
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %806 to i32*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 5
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %RCX.i44 = bitcast %union.anon* %809 to i64*
  %810 = load i32, i32* %EDX.i
  %811 = zext i32 %810 to i64
  %812 = load i64, i64* %PC.i43
  %813 = add i64 %812, 3
  store i64 %813, i64* %PC.i43
  %814 = shl i64 %811, 32
  %815 = ashr exact i64 %814, 32
  store i64 %815, i64* %RCX.i44, align 8
  store %struct.Memory* %loadMem_4959d0, %struct.Memory** %MEMORY
  %loadMem_4959d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 1
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %EAX.i41 = bitcast %union.anon* %821 to i32*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 5
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %824 to i64*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 15
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %827 to i64*
  %828 = load i64, i64* %RBP.i42
  %829 = load i64, i64* %RCX.i
  %830 = mul i64 %829, 4
  %831 = add i64 %828, -2928
  %832 = add i64 %831, %830
  %833 = load i32, i32* %EAX.i41
  %834 = zext i32 %833 to i64
  %835 = load i64, i64* %PC.i40
  %836 = add i64 %835, 7
  store i64 %836, i64* %PC.i40
  %837 = inttoptr i64 %832 to i32*
  store i32 %833, i32* %837
  store %struct.Memory* %loadMem_4959d3, %struct.Memory** %MEMORY
  br label %block_.L_4959da

block_.L_4959da:                                  ; preds = %block_4959ab, %block_49598d
  %loadMem_4959da = load %struct.Memory*, %struct.Memory** %MEMORY
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 33
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %840 to i64*
  %841 = load i64, i64* %PC.i39
  %842 = add i64 %841, 5
  %843 = load i64, i64* %PC.i39
  %844 = add i64 %843, 5
  store i64 %844, i64* %PC.i39
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %842, i64* %845, align 8
  store %struct.Memory* %loadMem_4959da, %struct.Memory** %MEMORY
  br label %block_.L_4959df

block_.L_4959df:                                  ; preds = %block_.L_4959da
  %loadMem_4959df = load %struct.Memory*, %struct.Memory** %MEMORY
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 33
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 1
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 15
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %854 to i64*
  %855 = load i64, i64* %RBP.i38
  %856 = sub i64 %855, 24
  %857 = load i64, i64* %PC.i36
  %858 = add i64 %857, 3
  store i64 %858, i64* %PC.i36
  %859 = inttoptr i64 %856 to i32*
  %860 = load i32, i32* %859
  %861 = zext i32 %860 to i64
  store i64 %861, i64* %RAX.i37, align 8
  store %struct.Memory* %loadMem_4959df, %struct.Memory** %MEMORY
  %loadMem_4959e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 33
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %864 to i64*
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 1
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %867 to i64*
  %868 = load i64, i64* %RAX.i35
  %869 = load i64, i64* %PC.i34
  %870 = add i64 %869, 3
  store i64 %870, i64* %PC.i34
  %871 = trunc i64 %868 to i32
  %872 = add i32 1, %871
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RAX.i35, align 8
  %874 = icmp ult i32 %872, %871
  %875 = icmp ult i32 %872, 1
  %876 = or i1 %874, %875
  %877 = zext i1 %876 to i8
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %877, i8* %878, align 1
  %879 = and i32 %872, 255
  %880 = call i32 @llvm.ctpop.i32(i32 %879)
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = xor i8 %882, 1
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %883, i8* %884, align 1
  %885 = xor i64 1, %868
  %886 = trunc i64 %885 to i32
  %887 = xor i32 %886, %872
  %888 = lshr i32 %887, 4
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %890, i8* %891, align 1
  %892 = icmp eq i32 %872, 0
  %893 = zext i1 %892 to i8
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %893, i8* %894, align 1
  %895 = lshr i32 %872, 31
  %896 = trunc i32 %895 to i8
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %896, i8* %897, align 1
  %898 = lshr i32 %871, 31
  %899 = xor i32 %895, %898
  %900 = add i32 %899, %895
  %901 = icmp eq i32 %900, 2
  %902 = zext i1 %901 to i8
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %902, i8* %903, align 1
  store %struct.Memory* %loadMem_4959e2, %struct.Memory** %MEMORY
  %loadMem_4959e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 33
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 1
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %EAX.i32 = bitcast %union.anon* %909 to i32*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 15
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %912 to i64*
  %913 = load i64, i64* %RBP.i33
  %914 = sub i64 %913, 24
  %915 = load i32, i32* %EAX.i32
  %916 = zext i32 %915 to i64
  %917 = load i64, i64* %PC.i31
  %918 = add i64 %917, 3
  store i64 %918, i64* %PC.i31
  %919 = inttoptr i64 %914 to i32*
  store i32 %915, i32* %919
  store %struct.Memory* %loadMem_4959e5, %struct.Memory** %MEMORY
  %loadMem_4959e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %922 to i64*
  %923 = load i64, i64* %PC.i30
  %924 = add i64 %923, -107
  %925 = load i64, i64* %PC.i30
  %926 = add i64 %925, 5
  store i64 %926, i64* %PC.i30
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %924, i64* %927, align 8
  store %struct.Memory* %loadMem_4959e8, %struct.Memory** %MEMORY
  br label %block_.L_49597d

block_.L_4959ed:                                  ; preds = %block_.L_49597d
  %loadMem_4959ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 33
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %930 to i64*
  %931 = load i64, i64* %PC.i29
  %932 = add i64 %931, 5
  %933 = load i64, i64* %PC.i29
  %934 = add i64 %933, 5
  store i64 %934, i64* %PC.i29
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %932, i64* %935, align 8
  store %struct.Memory* %loadMem_4959ed, %struct.Memory** %MEMORY
  br label %block_.L_4959f2

block_.L_4959f2:                                  ; preds = %block_.L_4959ed
  %loadMem_4959f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 33
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %938 to i64*
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 1
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %941 to i64*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 15
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %944 to i64*
  %945 = load i64, i64* %RBP.i28
  %946 = sub i64 %945, 20
  %947 = load i64, i64* %PC.i26
  %948 = add i64 %947, 3
  store i64 %948, i64* %PC.i26
  %949 = inttoptr i64 %946 to i32*
  %950 = load i32, i32* %949
  %951 = zext i32 %950 to i64
  store i64 %951, i64* %RAX.i27, align 8
  store %struct.Memory* %loadMem_4959f2, %struct.Memory** %MEMORY
  %loadMem_4959f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 33
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %954 to i64*
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 1
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %957 to i64*
  %958 = load i64, i64* %RAX.i25
  %959 = load i64, i64* %PC.i24
  %960 = add i64 %959, 3
  store i64 %960, i64* %PC.i24
  %961 = trunc i64 %958 to i32
  %962 = add i32 1, %961
  %963 = zext i32 %962 to i64
  store i64 %963, i64* %RAX.i25, align 8
  %964 = icmp ult i32 %962, %961
  %965 = icmp ult i32 %962, 1
  %966 = or i1 %964, %965
  %967 = zext i1 %966 to i8
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %967, i8* %968, align 1
  %969 = and i32 %962, 255
  %970 = call i32 @llvm.ctpop.i32(i32 %969)
  %971 = trunc i32 %970 to i8
  %972 = and i8 %971, 1
  %973 = xor i8 %972, 1
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %973, i8* %974, align 1
  %975 = xor i64 1, %958
  %976 = trunc i64 %975 to i32
  %977 = xor i32 %976, %962
  %978 = lshr i32 %977, 4
  %979 = trunc i32 %978 to i8
  %980 = and i8 %979, 1
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %980, i8* %981, align 1
  %982 = icmp eq i32 %962, 0
  %983 = zext i1 %982 to i8
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %983, i8* %984, align 1
  %985 = lshr i32 %962, 31
  %986 = trunc i32 %985 to i8
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %986, i8* %987, align 1
  %988 = lshr i32 %961, 31
  %989 = xor i32 %985, %988
  %990 = add i32 %989, %985
  %991 = icmp eq i32 %990, 2
  %992 = zext i1 %991 to i8
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %992, i8* %993, align 1
  store %struct.Memory* %loadMem_4959f5, %struct.Memory** %MEMORY
  %loadMem_4959f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 33
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 1
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %EAX.i22 = bitcast %union.anon* %999 to i32*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 15
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %1002 to i64*
  %1003 = load i64, i64* %RBP.i23
  %1004 = sub i64 %1003, 20
  %1005 = load i32, i32* %EAX.i22
  %1006 = zext i32 %1005 to i64
  %1007 = load i64, i64* %PC.i21
  %1008 = add i64 %1007, 3
  store i64 %1008, i64* %PC.i21
  %1009 = inttoptr i64 %1004 to i32*
  store i32 %1005, i32* %1009
  store %struct.Memory* %loadMem_4959f8, %struct.Memory** %MEMORY
  %loadMem_4959fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 33
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %1012 to i64*
  %1013 = load i64, i64* %PC.i20
  %1014 = add i64 %1013, -149
  %1015 = load i64, i64* %PC.i20
  %1016 = add i64 %1015, 5
  store i64 %1016, i64* %PC.i20
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1014, i64* %1017, align 8
  store %struct.Memory* %loadMem_4959fb, %struct.Memory** %MEMORY
  br label %block_.L_495966

block_.L_495a00:                                  ; preds = %block_.L_495966
  %loadMem_495a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 33
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %1020 to i64*
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 11
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %1023 to i32*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 11
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RDI.i19 = bitcast %union.anon* %1026 to i64*
  %1027 = load i64, i64* %RDI.i19
  %1028 = load i32, i32* %EDI.i
  %1029 = zext i32 %1028 to i64
  %1030 = load i64, i64* %PC.i18
  %1031 = add i64 %1030, 2
  store i64 %1031, i64* %PC.i18
  %1032 = xor i64 %1029, %1027
  %1033 = trunc i64 %1032 to i32
  %1034 = and i64 %1032, 4294967295
  store i64 %1034, i64* %RDI.i19, align 8
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1035, align 1
  %1036 = and i32 %1033, 255
  %1037 = call i32 @llvm.ctpop.i32(i32 %1036)
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  %1040 = xor i8 %1039, 1
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1040, i8* %1041, align 1
  %1042 = icmp eq i32 %1033, 0
  %1043 = zext i1 %1042 to i8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1043, i8* %1044, align 1
  %1045 = lshr i32 %1033, 31
  %1046 = trunc i32 %1045 to i8
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1046, i8* %1047, align 1
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1048, align 1
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1049, align 1
  store %struct.Memory* %loadMem_495a00, %struct.Memory** %MEMORY
  %loadMem1_495a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 33
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %1052 to i64*
  %1053 = load i64, i64* %PC.i17
  %1054 = add i64 %1053, -40530
  %1055 = load i64, i64* %PC.i17
  %1056 = add i64 %1055, 5
  %1057 = load i64, i64* %PC.i17
  %1058 = add i64 %1057, 5
  store i64 %1058, i64* %PC.i17
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1060 = load i64, i64* %1059, align 8
  %1061 = add i64 %1060, -8
  %1062 = inttoptr i64 %1061 to i64*
  store i64 %1056, i64* %1062
  store i64 %1061, i64* %1059, align 8
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1054, i64* %1063, align 8
  store %struct.Memory* %loadMem1_495a02, %struct.Memory** %MEMORY
  %loadMem2_495a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_495a02 = load i64, i64* %3
  %call2_495a02 = call %struct.Memory* @sub_48bbb0.gtp_start_response(%struct.State* %0, i64 %loadPC_495a02, %struct.Memory* %loadMem2_495a02)
  store %struct.Memory* %call2_495a02, %struct.Memory** %MEMORY
  %loadMem_495a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 33
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %1066 to i64*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 7
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1069 to i64*
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 15
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %1072 to i64*
  %1073 = load i64, i64* %RBP.i16
  %1074 = sub i64 %1073, 2928
  %1075 = load i64, i64* %PC.i15
  %1076 = add i64 %1075, 7
  store i64 %1076, i64* %PC.i15
  store i64 %1074, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_495a07, %struct.Memory** %MEMORY
  %loadMem_495a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 33
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %1079 to i64*
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 9
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1082 to i64*
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 15
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %1085 to i64*
  %1086 = load i64, i64* %RBP.i14
  %1087 = sub i64 %1086, 1472
  %1088 = load i64, i64* %PC.i13
  %1089 = add i64 %1088, 7
  store i64 %1089, i64* %PC.i13
  store i64 %1087, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_495a0e, %struct.Memory** %MEMORY
  %loadMem_495a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 33
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %1092 to i64*
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 11
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 15
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %1098 to i64*
  %1099 = load i64, i64* %RBP.i12
  %1100 = sub i64 %1099, 2932
  %1101 = load i64, i64* %PC.i11
  %1102 = add i64 %1101, 6
  store i64 %1102, i64* %PC.i11
  %1103 = inttoptr i64 %1100 to i32*
  %1104 = load i32, i32* %1103
  %1105 = zext i32 %1104 to i64
  store i64 %1105, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_495a15, %struct.Memory** %MEMORY
  %loadMem1_495a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 33
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %1108 to i64*
  %1109 = load i64, i64* %PC.i10
  %1110 = add i64 %1109, -38667
  %1111 = load i64, i64* %PC.i10
  %1112 = add i64 %1111, 5
  %1113 = load i64, i64* %PC.i10
  %1114 = add i64 %1113, 5
  store i64 %1114, i64* %PC.i10
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1116 = load i64, i64* %1115, align 8
  %1117 = add i64 %1116, -8
  %1118 = inttoptr i64 %1117 to i64*
  store i64 %1112, i64* %1118
  store i64 %1117, i64* %1115, align 8
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1110, i64* %1119, align 8
  store %struct.Memory* %loadMem1_495a1b, %struct.Memory** %MEMORY
  %loadMem2_495a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_495a1b = load i64, i64* %3
  %call2_495a1b = call %struct.Memory* @sub_48c310.gtp_print_vertices(%struct.State* %0, i64 %loadPC_495a1b, %struct.Memory* %loadMem2_495a1b)
  store %struct.Memory* %call2_495a1b, %struct.Memory** %MEMORY
  %loadMem1_495a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 33
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %1122 to i64*
  %1123 = load i64, i64* %PC.i9
  %1124 = add i64 %1123, -40432
  %1125 = load i64, i64* %PC.i9
  %1126 = add i64 %1125, 5
  %1127 = load i64, i64* %PC.i9
  %1128 = add i64 %1127, 5
  store i64 %1128, i64* %PC.i9
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1130 = load i64, i64* %1129, align 8
  %1131 = add i64 %1130, -8
  %1132 = inttoptr i64 %1131 to i64*
  store i64 %1126, i64* %1132
  store i64 %1131, i64* %1129, align 8
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1124, i64* %1133, align 8
  store %struct.Memory* %loadMem1_495a20, %struct.Memory** %MEMORY
  %loadMem2_495a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_495a20 = load i64, i64* %3
  %call2_495a20 = call %struct.Memory* @sub_48bc30.gtp_finish_response(%struct.State* %0, i64 %loadPC_495a20, %struct.Memory* %loadMem2_495a20)
  store %struct.Memory* %call2_495a20, %struct.Memory** %MEMORY
  %loadMem_495a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 33
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %1136 to i64*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 1
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1139 to i32*
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 15
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %1142 to i64*
  %1143 = load i64, i64* %RBP.i8
  %1144 = sub i64 %1143, 4
  %1145 = load i32, i32* %EAX.i
  %1146 = zext i32 %1145 to i64
  %1147 = load i64, i64* %PC.i7
  %1148 = add i64 %1147, 3
  store i64 %1148, i64* %PC.i7
  %1149 = inttoptr i64 %1144 to i32*
  store i32 %1145, i32* %1149
  store %struct.Memory* %loadMem_495a25, %struct.Memory** %MEMORY
  br label %block_.L_495a28

block_.L_495a28:                                  ; preds = %block_.L_495a00, %block_495946
  %loadMem_495a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 33
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %1152 to i64*
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 1
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %1155 to i64*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 15
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %1158 to i64*
  %1159 = load i64, i64* %RBP.i6
  %1160 = sub i64 %1159, 4
  %1161 = load i64, i64* %PC.i5
  %1162 = add i64 %1161, 3
  store i64 %1162, i64* %PC.i5
  %1163 = inttoptr i64 %1160 to i32*
  %1164 = load i32, i32* %1163
  %1165 = zext i32 %1164 to i64
  store i64 %1165, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_495a28, %struct.Memory** %MEMORY
  %loadMem_495a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 33
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 13
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %1171 to i64*
  %1172 = load i64, i64* %RSP.i
  %1173 = load i64, i64* %PC.i4
  %1174 = add i64 %1173, 7
  store i64 %1174, i64* %PC.i4
  %1175 = add i64 2944, %1172
  store i64 %1175, i64* %RSP.i, align 8
  %1176 = icmp ult i64 %1175, %1172
  %1177 = icmp ult i64 %1175, 2944
  %1178 = or i1 %1176, %1177
  %1179 = zext i1 %1178 to i8
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1179, i8* %1180, align 1
  %1181 = trunc i64 %1175 to i32
  %1182 = and i32 %1181, 255
  %1183 = call i32 @llvm.ctpop.i32(i32 %1182)
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = xor i8 %1185, 1
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1186, i8* %1187, align 1
  %1188 = xor i64 2944, %1172
  %1189 = xor i64 %1188, %1175
  %1190 = lshr i64 %1189, 4
  %1191 = trunc i64 %1190 to i8
  %1192 = and i8 %1191, 1
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1192, i8* %1193, align 1
  %1194 = icmp eq i64 %1175, 0
  %1195 = zext i1 %1194 to i8
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1195, i8* %1196, align 1
  %1197 = lshr i64 %1175, 63
  %1198 = trunc i64 %1197 to i8
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1198, i8* %1199, align 1
  %1200 = lshr i64 %1172, 63
  %1201 = xor i64 %1197, %1200
  %1202 = add i64 %1201, %1197
  %1203 = icmp eq i64 %1202, 2
  %1204 = zext i1 %1203 to i8
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1204, i8* %1205, align 1
  store %struct.Memory* %loadMem_495a2b, %struct.Memory** %MEMORY
  %loadMem_495a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 33
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %1208 to i64*
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 15
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %1211 to i64*
  %1212 = load i64, i64* %PC.i2
  %1213 = add i64 %1212, 1
  store i64 %1213, i64* %PC.i2
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1215 = load i64, i64* %1214, align 8
  %1216 = add i64 %1215, 8
  %1217 = inttoptr i64 %1215 to i64*
  %1218 = load i64, i64* %1217
  store i64 %1218, i64* %RBP.i3, align 8
  store i64 %1216, i64* %1214, align 8
  store %struct.Memory* %loadMem_495a32, %struct.Memory** %MEMORY
  %loadMem_495a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 33
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %1221 to i64*
  %1222 = load i64, i64* %PC.i1
  %1223 = add i64 %1222, 1
  store i64 %1223, i64* %PC.i1
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1226 = load i64, i64* %1225, align 8
  %1227 = inttoptr i64 %1226 to i64*
  %1228 = load i64, i64* %1227
  store i64 %1228, i64* %1224, align 8
  %1229 = add i64 %1226, 8
  store i64 %1229, i64* %1225, align 8
  store %struct.Memory* %loadMem_495a33, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_495a33
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

define %struct.Memory* @routine_subq__0xb80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 2944
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 2944
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
  %23 = xor i64 2944, %9
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

define %struct.Memory* @routine_leaq_MINUS0x1c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
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

define %struct.Memory* @routine_movl__0x0__MINUS0xb74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 2932
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jne_.L_49595f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_495a28(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_495a00(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_4959ed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imull__0x14__MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4959da(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0xb74__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2932
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x5c0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -1472
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

define %struct.Memory* @routine_movl_MINUS0xb74__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2932
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0xb74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2932
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__eax__MINUS0xb70__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -2928
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

define %struct.Memory* @routine_jmpq_.L_4959df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49597d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4959f2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_495966(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_xorl__edi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.gtp_start_response(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0xb70__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2928
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x5c0__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1472
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xb74__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2932
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.gtp_print_vertices(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.gtp_finish_response(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0xb80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 2944, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 2944
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
  %25 = xor i64 2944, %9
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
