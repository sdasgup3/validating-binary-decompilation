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
%G__0x45882f_type = type <{ [8 x i8] }>
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
@G__0x45882f = global %G__0x45882f_type zeroinitializer

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

declare %struct.Memory* @sub_42c710.MSAAlloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_446720.sre_strdup(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_417130.GKIStoreKey(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42d540.MSASetSeqAccession(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42d600.MSASetSeqDescription(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4036c0.MakeAlignedString(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @MSAFromAINFO(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_42f240 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_42f240, %struct.Memory** %MEMORY
  %loadMem_42f241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i820 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i821 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i820
  %27 = load i64, i64* %PC.i819
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i819
  store i64 %26, i64* %RBP.i821, align 8
  store %struct.Memory* %loadMem_42f241, %struct.Memory** %MEMORY
  %loadMem_42f244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i886 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i886
  %36 = load i64, i64* %PC.i885
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i885
  %38 = sub i64 %35, 64
  store i64 %38, i64* %RSP.i886, align 8
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
  store %struct.Memory* %loadMem_42f244, %struct.Memory** %MEMORY
  %loadMem_42f248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i883 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i884 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i884
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i883
  %79 = load i64, i64* %PC.i882
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i882
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_42f248, %struct.Memory** %MEMORY
  %loadMem_42f24c = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RSI.i880 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i881 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i881
  %92 = sub i64 %91, 16
  %93 = load i64, i64* %RSI.i880
  %94 = load i64, i64* %PC.i879
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC.i879
  %96 = inttoptr i64 %92 to i64*
  store i64 %93, i64* %96
  store %struct.Memory* %loadMem_42f24c, %struct.Memory** %MEMORY
  %loadMem_42f250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 9
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RSI.i877 = bitcast %union.anon* %102 to i64*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RBP.i878 = bitcast %union.anon* %105 to i64*
  %106 = load i64, i64* %RBP.i878
  %107 = sub i64 %106, 16
  %108 = load i64, i64* %PC.i876
  %109 = add i64 %108, 4
  store i64 %109, i64* %PC.i876
  %110 = inttoptr i64 %107 to i64*
  %111 = load i64, i64* %110
  store i64 %111, i64* %RSI.i877, align 8
  store %struct.Memory* %loadMem_42f250, %struct.Memory** %MEMORY
  %loadMem_42f254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 9
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %RSI.i874 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 11
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RDI.i875 = bitcast %union.anon* %120 to i64*
  %121 = load i64, i64* %RSI.i874
  %122 = add i64 %121, 8
  %123 = load i64, i64* %PC.i873
  %124 = add i64 %123, 3
  store i64 %124, i64* %PC.i873
  %125 = inttoptr i64 %122 to i32*
  %126 = load i32, i32* %125
  %127 = zext i32 %126 to i64
  store i64 %127, i64* %RDI.i875, align 8
  store %struct.Memory* %loadMem_42f254, %struct.Memory** %MEMORY
  %loadMem_42f257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 33
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %130 to i64*
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 9
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %RSI.i871 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 15
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RBP.i872 = bitcast %union.anon* %136 to i64*
  %137 = load i64, i64* %RBP.i872
  %138 = sub i64 %137, 16
  %139 = load i64, i64* %PC.i870
  %140 = add i64 %139, 4
  store i64 %140, i64* %PC.i870
  %141 = inttoptr i64 %138 to i64*
  %142 = load i64, i64* %141
  store i64 %142, i64* %RSI.i871, align 8
  store %struct.Memory* %loadMem_42f257, %struct.Memory** %MEMORY
  %loadMem_42f25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 9
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %RSI.i869 = bitcast %union.anon* %148 to i64*
  %149 = load i64, i64* %RSI.i869
  %150 = add i64 %149, 4
  %151 = load i64, i64* %PC.i868
  %152 = add i64 %151, 3
  store i64 %152, i64* %PC.i868
  %153 = inttoptr i64 %150 to i32*
  %154 = load i32, i32* %153
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RSI.i869, align 8
  store %struct.Memory* %loadMem_42f25b, %struct.Memory** %MEMORY
  %loadMem1_42f25e = load %struct.Memory*, %struct.Memory** %MEMORY
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 33
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %PC.i867
  %160 = add i64 %159, -11086
  %161 = load i64, i64* %PC.i867
  %162 = add i64 %161, 5
  %163 = load i64, i64* %PC.i867
  %164 = add i64 %163, 5
  store i64 %164, i64* %PC.i867
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add i64 %166, -8
  %168 = inttoptr i64 %167 to i64*
  store i64 %162, i64* %168
  store i64 %167, i64* %165, align 8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %160, i64* %169, align 8
  store %struct.Memory* %loadMem1_42f25e, %struct.Memory** %MEMORY
  %loadMem2_42f25e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f25e = load i64, i64* %3
  %call2_42f25e = call %struct.Memory* @sub_42c710.MSAAlloc(%struct.State* %0, i64 %loadPC_42f25e, %struct.Memory* %loadMem2_42f25e)
  store %struct.Memory* %call2_42f25e, %struct.Memory** %MEMORY
  %loadMem_42f263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 33
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %RAX.i865 = bitcast %union.anon* %175 to i64*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 15
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %RBP.i866 = bitcast %union.anon* %178 to i64*
  %179 = load i64, i64* %RBP.i866
  %180 = sub i64 %179, 24
  %181 = load i64, i64* %RAX.i865
  %182 = load i64, i64* %PC.i864
  %183 = add i64 %182, 4
  store i64 %183, i64* %PC.i864
  %184 = inttoptr i64 %180 to i64*
  store i64 %181, i64* %184
  store %struct.Memory* %loadMem_42f263, %struct.Memory** %MEMORY
  %loadMem_42f267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 33
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %187 to i64*
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 15
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %RBP.i863 = bitcast %union.anon* %190 to i64*
  %191 = load i64, i64* %RBP.i863
  %192 = sub i64 %191, 28
  %193 = load i64, i64* %PC.i862
  %194 = add i64 %193, 7
  store i64 %194, i64* %PC.i862
  %195 = inttoptr i64 %192 to i32*
  store i32 0, i32* %195
  store %struct.Memory* %loadMem_42f267, %struct.Memory** %MEMORY
  br label %block_.L_42f26e

block_.L_42f26e:                                  ; preds = %block_.L_42f68f, %entry
  %loadMem_42f26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %RAX.i860 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 15
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RBP.i861 = bitcast %union.anon* %204 to i64*
  %205 = load i64, i64* %RBP.i861
  %206 = sub i64 %205, 28
  %207 = load i64, i64* %PC.i859
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC.i859
  %209 = inttoptr i64 %206 to i32*
  %210 = load i32, i32* %209
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RAX.i860, align 8
  store %struct.Memory* %loadMem_42f26e, %struct.Memory** %MEMORY
  %loadMem_42f271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RCX.i857 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 15
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RBP.i858 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %RBP.i858
  %222 = sub i64 %221, 16
  %223 = load i64, i64* %PC.i856
  %224 = add i64 %223, 4
  store i64 %224, i64* %PC.i856
  %225 = inttoptr i64 %222 to i64*
  %226 = load i64, i64* %225
  store i64 %226, i64* %RCX.i857, align 8
  store %struct.Memory* %loadMem_42f271, %struct.Memory** %MEMORY
  %loadMem_42f275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 33
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %229 to i64*
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %EAX.i854 = bitcast %union.anon* %232 to i32*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RCX.i855 = bitcast %union.anon* %235 to i64*
  %236 = load i32, i32* %EAX.i854
  %237 = zext i32 %236 to i64
  %238 = load i64, i64* %RCX.i855
  %239 = add i64 %238, 8
  %240 = load i64, i64* %PC.i853
  %241 = add i64 %240, 3
  store i64 %241, i64* %PC.i853
  %242 = inttoptr i64 %239 to i32*
  %243 = load i32, i32* %242
  %244 = sub i32 %236, %243
  %245 = icmp ult i32 %236, %243
  %246 = zext i1 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %246, i8* %247, align 1
  %248 = and i32 %244, 255
  %249 = call i32 @llvm.ctpop.i32(i32 %248)
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = xor i8 %251, 1
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %252, i8* %253, align 1
  %254 = xor i32 %243, %236
  %255 = xor i32 %254, %244
  %256 = lshr i32 %255, 4
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %258, i8* %259, align 1
  %260 = icmp eq i32 %244, 0
  %261 = zext i1 %260 to i8
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %261, i8* %262, align 1
  %263 = lshr i32 %244, 31
  %264 = trunc i32 %263 to i8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %264, i8* %265, align 1
  %266 = lshr i32 %236, 31
  %267 = lshr i32 %243, 31
  %268 = xor i32 %267, %266
  %269 = xor i32 %263, %266
  %270 = add i32 %269, %268
  %271 = icmp eq i32 %270, 2
  %272 = zext i1 %271 to i8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %272, i8* %273, align 1
  store %struct.Memory* %loadMem_42f275, %struct.Memory** %MEMORY
  %loadMem_42f278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 33
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %276 to i64*
  %277 = load i64, i64* %PC.i852
  %278 = add i64 %277, 1061
  %279 = load i64, i64* %PC.i852
  %280 = add i64 %279, 6
  %281 = load i64, i64* %PC.i852
  %282 = add i64 %281, 6
  store i64 %282, i64* %PC.i852
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %284 = load i8, i8* %283, align 1
  %285 = icmp ne i8 %284, 0
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %287 = load i8, i8* %286, align 1
  %288 = icmp ne i8 %287, 0
  %289 = xor i1 %285, %288
  %290 = xor i1 %289, true
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %BRANCH_TAKEN, align 1
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %293 = select i1 %289, i64 %280, i64 %278
  store i64 %293, i64* %292, align 8
  store %struct.Memory* %loadMem_42f278, %struct.Memory** %MEMORY
  %loadBr_42f278 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f278 = icmp eq i8 %loadBr_42f278, 1
  br i1 %cmpBr_42f278, label %block_.L_42f69d, label %block_42f27e

block_42f27e:                                     ; preds = %block_.L_42f26e
  %loadMem_42f27e = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 9
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RSI.i851 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %PC.i850
  %301 = add i64 %300, 5
  store i64 %301, i64* %PC.i850
  store i64 4294967295, i64* %RSI.i851, align 8
  store %struct.Memory* %loadMem_42f27e, %struct.Memory** %MEMORY
  %loadMem_42f283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 33
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %304 to i64*
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %RAX.i848 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 15
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %RBP.i849 = bitcast %union.anon* %310 to i64*
  %311 = load i64, i64* %RBP.i849
  %312 = sub i64 %311, 24
  %313 = load i64, i64* %PC.i847
  %314 = add i64 %313, 4
  store i64 %314, i64* %PC.i847
  %315 = inttoptr i64 %312 to i64*
  %316 = load i64, i64* %315
  store i64 %316, i64* %RAX.i848, align 8
  store %struct.Memory* %loadMem_42f283, %struct.Memory** %MEMORY
  %loadMem_42f287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %319 to i64*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %RAX.i846 = bitcast %union.anon* %322 to i64*
  %323 = load i64, i64* %RAX.i846
  %324 = load i64, i64* %PC.i845
  %325 = add i64 %324, 3
  store i64 %325, i64* %PC.i845
  %326 = inttoptr i64 %323 to i64*
  %327 = load i64, i64* %326
  store i64 %327, i64* %RAX.i846, align 8
  store %struct.Memory* %loadMem_42f287, %struct.Memory** %MEMORY
  %loadMem_42f28a = load %struct.Memory*, %struct.Memory** %MEMORY
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 33
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 5
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %RCX.i843 = bitcast %union.anon* %333 to i64*
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 15
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %RBP.i844 = bitcast %union.anon* %336 to i64*
  %337 = load i64, i64* %RBP.i844
  %338 = sub i64 %337, 28
  %339 = load i64, i64* %PC.i842
  %340 = add i64 %339, 4
  store i64 %340, i64* %PC.i842
  %341 = inttoptr i64 %338 to i32*
  %342 = load i32, i32* %341
  %343 = sext i32 %342 to i64
  store i64 %343, i64* %RCX.i843, align 8
  store %struct.Memory* %loadMem_42f28a, %struct.Memory** %MEMORY
  %loadMem_42f28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 33
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %346 to i64*
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %RAX.i839 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 5
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %RCX.i840 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 11
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %RDI.i841 = bitcast %union.anon* %355 to i64*
  %356 = load i64, i64* %RAX.i839
  %357 = load i64, i64* %RCX.i840
  %358 = mul i64 %357, 8
  %359 = add i64 %358, %356
  %360 = load i64, i64* %PC.i838
  %361 = add i64 %360, 4
  store i64 %361, i64* %PC.i838
  %362 = inttoptr i64 %359 to i64*
  %363 = load i64, i64* %362
  store i64 %363, i64* %RDI.i841, align 8
  store %struct.Memory* %loadMem_42f28e, %struct.Memory** %MEMORY
  %loadMem_42f292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RAX.i836 = bitcast %union.anon* %369 to i64*
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 15
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %372 to i64*
  %373 = load i64, i64* %RBP.i837
  %374 = sub i64 %373, 8
  %375 = load i64, i64* %PC.i835
  %376 = add i64 %375, 4
  store i64 %376, i64* %PC.i835
  %377 = inttoptr i64 %374 to i64*
  %378 = load i64, i64* %377
  store i64 %378, i64* %RAX.i836, align 8
  store %struct.Memory* %loadMem_42f292, %struct.Memory** %MEMORY
  %loadMem_42f296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 33
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %381 to i64*
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 5
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %RCX.i833 = bitcast %union.anon* %384 to i64*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 15
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %RBP.i834 = bitcast %union.anon* %387 to i64*
  %388 = load i64, i64* %RBP.i834
  %389 = sub i64 %388, 28
  %390 = load i64, i64* %PC.i832
  %391 = add i64 %390, 4
  store i64 %391, i64* %PC.i832
  %392 = inttoptr i64 %389 to i32*
  %393 = load i32, i32* %392
  %394 = sext i32 %393 to i64
  store i64 %394, i64* %RCX.i833, align 8
  store %struct.Memory* %loadMem_42f296, %struct.Memory** %MEMORY
  %loadMem_42f29a = load %struct.Memory*, %struct.Memory** %MEMORY
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %396 = getelementptr inbounds %struct.GPR, %struct.GPR* %395, i32 0, i32 33
  %397 = getelementptr inbounds %struct.Reg, %struct.Reg* %396, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %397 to i64*
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %399 = getelementptr inbounds %struct.GPR, %struct.GPR* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.Reg, %struct.Reg* %399, i32 0, i32 0
  %RAX.i830 = bitcast %union.anon* %400 to i64*
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 5
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %RCX.i831 = bitcast %union.anon* %403 to i64*
  %404 = load i64, i64* %RAX.i830
  %405 = load i64, i64* %RCX.i831
  %406 = mul i64 %405, 8
  %407 = add i64 %406, %404
  %408 = load i64, i64* %PC.i829
  %409 = add i64 %408, 4
  store i64 %409, i64* %PC.i829
  %410 = inttoptr i64 %407 to i64*
  %411 = load i64, i64* %410
  store i64 %411, i64* %RAX.i830, align 8
  store %struct.Memory* %loadMem_42f29a, %struct.Memory** %MEMORY
  %loadMem_42f29e = load %struct.Memory*, %struct.Memory** %MEMORY
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 33
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %414 to i64*
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 9
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %ESI.i827 = bitcast %union.anon* %417 to i32*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 15
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %420 to i64*
  %421 = load i64, i64* %RBP.i828
  %422 = sub i64 %421, 36
  %423 = load i32, i32* %ESI.i827
  %424 = zext i32 %423 to i64
  %425 = load i64, i64* %PC.i826
  %426 = add i64 %425, 3
  store i64 %426, i64* %PC.i826
  %427 = inttoptr i64 %422 to i32*
  store i32 %423, i32* %427
  store %struct.Memory* %loadMem_42f29e, %struct.Memory** %MEMORY
  %loadMem_42f2a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 33
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RAX.i824 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 9
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %RSI.i825 = bitcast %union.anon* %436 to i64*
  %437 = load i64, i64* %RAX.i824
  %438 = load i64, i64* %PC.i823
  %439 = add i64 %438, 3
  store i64 %439, i64* %PC.i823
  store i64 %437, i64* %RSI.i825, align 8
  store %struct.Memory* %loadMem_42f2a1, %struct.Memory** %MEMORY
  %loadMem1_42f2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %442 to i64*
  %443 = load i64, i64* %PC.i822
  %444 = add i64 %443, -188100
  %445 = load i64, i64* %PC.i822
  %446 = add i64 %445, 5
  %447 = load i64, i64* %PC.i822
  %448 = add i64 %447, 5
  store i64 %448, i64* %PC.i822
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = add i64 %450, -8
  %452 = inttoptr i64 %451 to i64*
  store i64 %446, i64* %452
  store i64 %451, i64* %449, align 8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %444, i64* %453, align 8
  store %struct.Memory* %loadMem1_42f2a4, %struct.Memory** %MEMORY
  %loadMem2_42f2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f2a4 = load i64, i64* %3
  %454 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %loadMem2_42f2a4)
  store %struct.Memory* %454, %struct.Memory** %MEMORY
  %loadMem_42f2a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 33
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %457 to i64*
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 5
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %RCX.i817 = bitcast %union.anon* %460 to i64*
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 15
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %463 to i64*
  %464 = load i64, i64* %RBP.i818
  %465 = sub i64 %464, 16
  %466 = load i64, i64* %PC.i816
  %467 = add i64 %466, 4
  store i64 %467, i64* %PC.i816
  %468 = inttoptr i64 %465 to i64*
  %469 = load i64, i64* %468
  store i64 %469, i64* %RCX.i817, align 8
  store %struct.Memory* %loadMem_42f2a9, %struct.Memory** %MEMORY
  %loadMem_42f2ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 33
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %472 to i64*
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 5
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %RCX.i815 = bitcast %union.anon* %475 to i64*
  %476 = load i64, i64* %RCX.i815
  %477 = add i64 %476, 16
  %478 = load i64, i64* %PC.i814
  %479 = add i64 %478, 4
  store i64 %479, i64* %PC.i814
  %480 = inttoptr i64 %477 to i64*
  %481 = load i64, i64* %480
  store i64 %481, i64* %RCX.i815, align 8
  store %struct.Memory* %loadMem_42f2ad, %struct.Memory** %MEMORY
  %loadMem_42f2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 33
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %484 to i64*
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 9
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %RSI.i812 = bitcast %union.anon* %487 to i64*
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 15
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %RBP.i813 = bitcast %union.anon* %490 to i64*
  %491 = load i64, i64* %RBP.i813
  %492 = sub i64 %491, 28
  %493 = load i64, i64* %PC.i811
  %494 = add i64 %493, 4
  store i64 %494, i64* %PC.i811
  %495 = inttoptr i64 %492 to i32*
  %496 = load i32, i32* %495
  %497 = sext i32 %496 to i64
  store i64 %497, i64* %RSI.i812, align 8
  store %struct.Memory* %loadMem_42f2b1, %struct.Memory** %MEMORY
  %loadMem_42f2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 33
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 5
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %RCX.i808 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 9
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RSI.i809 = bitcast %union.anon* %506 to i64*
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %508 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %507, i64 0, i64 0
  %YMM0.i810 = bitcast %union.VectorReg* %508 to %"class.std::bitset"*
  %509 = bitcast %"class.std::bitset"* %YMM0.i810 to i8*
  %510 = load i64, i64* %RCX.i808
  %511 = load i64, i64* %RSI.i809
  %512 = mul i64 %511, 4
  %513 = add i64 %512, %510
  %514 = load i64, i64* %PC.i807
  %515 = add i64 %514, 5
  store i64 %515, i64* %PC.i807
  %516 = inttoptr i64 %513 to float*
  %517 = load float, float* %516
  %518 = bitcast i8* %509 to float*
  store float %517, float* %518, align 1
  %519 = getelementptr inbounds i8, i8* %509, i64 4
  %520 = bitcast i8* %519 to float*
  store float 0.000000e+00, float* %520, align 1
  %521 = getelementptr inbounds i8, i8* %509, i64 8
  %522 = bitcast i8* %521 to float*
  store float 0.000000e+00, float* %522, align 1
  %523 = getelementptr inbounds i8, i8* %509, i64 12
  %524 = bitcast i8* %523 to float*
  store float 0.000000e+00, float* %524, align 1
  store %struct.Memory* %loadMem_42f2b5, %struct.Memory** %MEMORY
  %loadMem_42f2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 33
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %527 to i64*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 5
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %RCX.i805 = bitcast %union.anon* %530 to i64*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 15
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %RBP.i806 = bitcast %union.anon* %533 to i64*
  %534 = load i64, i64* %RBP.i806
  %535 = sub i64 %534, 24
  %536 = load i64, i64* %PC.i804
  %537 = add i64 %536, 4
  store i64 %537, i64* %PC.i804
  %538 = inttoptr i64 %535 to i64*
  %539 = load i64, i64* %538
  store i64 %539, i64* %RCX.i805, align 8
  store %struct.Memory* %loadMem_42f2ba, %struct.Memory** %MEMORY
  %loadMem_42f2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 33
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %542 to i64*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 5
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %RCX.i803 = bitcast %union.anon* %545 to i64*
  %546 = load i64, i64* %RCX.i803
  %547 = add i64 %546, 16
  %548 = load i64, i64* %PC.i802
  %549 = add i64 %548, 4
  store i64 %549, i64* %PC.i802
  %550 = inttoptr i64 %547 to i64*
  %551 = load i64, i64* %550
  store i64 %551, i64* %RCX.i803, align 8
  store %struct.Memory* %loadMem_42f2be, %struct.Memory** %MEMORY
  %loadMem_42f2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 33
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %554 to i64*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 9
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %RSI.i800 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 15
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %560 to i64*
  %561 = load i64, i64* %RBP.i801
  %562 = sub i64 %561, 28
  %563 = load i64, i64* %PC.i799
  %564 = add i64 %563, 4
  store i64 %564, i64* %PC.i799
  %565 = inttoptr i64 %562 to i32*
  %566 = load i32, i32* %565
  %567 = sext i32 %566 to i64
  store i64 %567, i64* %RSI.i800, align 8
  store %struct.Memory* %loadMem_42f2c2, %struct.Memory** %MEMORY
  %loadMem_42f2c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 33
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 5
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RCX.i796 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 9
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RSI.i797 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %578 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %577, i64 0, i64 0
  %XMM0.i798 = bitcast %union.VectorReg* %578 to %union.vec128_t*
  %579 = load i64, i64* %RCX.i796
  %580 = load i64, i64* %RSI.i797
  %581 = mul i64 %580, 4
  %582 = add i64 %581, %579
  %583 = bitcast %union.vec128_t* %XMM0.i798 to i8*
  %584 = load i64, i64* %PC.i795
  %585 = add i64 %584, 5
  store i64 %585, i64* %PC.i795
  %586 = bitcast i8* %583 to <2 x float>*
  %587 = load <2 x float>, <2 x float>* %586, align 1
  %588 = extractelement <2 x float> %587, i32 0
  %589 = inttoptr i64 %582 to float*
  store float %588, float* %589
  store %struct.Memory* %loadMem_42f2c6, %struct.Memory** %MEMORY
  %loadMem_42f2cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 33
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %592 to i64*
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 5
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %RCX.i793 = bitcast %union.anon* %595 to i64*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 15
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %RBP.i794 = bitcast %union.anon* %598 to i64*
  %599 = load i64, i64* %RBP.i794
  %600 = sub i64 %599, 16
  %601 = load i64, i64* %PC.i792
  %602 = add i64 %601, 4
  store i64 %602, i64* %PC.i792
  %603 = inttoptr i64 %600 to i64*
  %604 = load i64, i64* %603
  store i64 %604, i64* %RCX.i793, align 8
  store %struct.Memory* %loadMem_42f2cb, %struct.Memory** %MEMORY
  %loadMem_42f2cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 33
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %607 to i64*
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 5
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %RCX.i791 = bitcast %union.anon* %610 to i64*
  %611 = load i64, i64* %RCX.i791
  %612 = add i64 %611, 40
  %613 = load i64, i64* %PC.i790
  %614 = add i64 %613, 4
  store i64 %614, i64* %PC.i790
  %615 = inttoptr i64 %612 to i64*
  %616 = load i64, i64* %615
  store i64 %616, i64* %RCX.i791, align 8
  store %struct.Memory* %loadMem_42f2cf, %struct.Memory** %MEMORY
  %loadMem_42f2d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 33
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %619 to i64*
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 9
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %RSI.i788 = bitcast %union.anon* %622 to i64*
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 15
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %RBP.i789 = bitcast %union.anon* %625 to i64*
  %626 = load i64, i64* %RBP.i789
  %627 = sub i64 %626, 28
  %628 = load i64, i64* %PC.i787
  %629 = add i64 %628, 4
  store i64 %629, i64* %PC.i787
  %630 = inttoptr i64 %627 to i32*
  %631 = load i32, i32* %630
  %632 = sext i32 %631 to i64
  store i64 %632, i64* %RSI.i788, align 8
  store %struct.Memory* %loadMem_42f2d3, %struct.Memory** %MEMORY
  %loadMem_42f2d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 33
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 9
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RSI.i786 = bitcast %union.anon* %638 to i64*
  %639 = load i64, i64* %RSI.i786
  %640 = load i64, i64* %PC.i785
  %641 = add i64 %640, 7
  store i64 %641, i64* %PC.i785
  %642 = sext i64 %639 to i128
  %643 = and i128 %642, -18446744073709551616
  %644 = zext i64 %639 to i128
  %645 = or i128 %643, %644
  %646 = mul i128 360, %645
  %647 = trunc i128 %646 to i64
  store i64 %647, i64* %RSI.i786, align 8
  %648 = sext i64 %647 to i128
  %649 = icmp ne i128 %648, %646
  %650 = zext i1 %649 to i8
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %650, i8* %651, align 1
  %652 = trunc i128 %646 to i32
  %653 = and i32 %652, 255
  %654 = call i32 @llvm.ctpop.i32(i32 %653)
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %657, i8* %658, align 1
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %659, align 1
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %660, align 1
  %661 = lshr i64 %647, 63
  %662 = trunc i64 %661 to i8
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %662, i8* %663, align 1
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %650, i8* %664, align 1
  store %struct.Memory* %loadMem_42f2d7, %struct.Memory** %MEMORY
  %loadMem_42f2de = load %struct.Memory*, %struct.Memory** %MEMORY
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 33
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %667 to i64*
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 5
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %RCX.i783 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 9
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %RSI.i784 = bitcast %union.anon* %673 to i64*
  %674 = load i64, i64* %RCX.i783
  %675 = load i64, i64* %RSI.i784
  %676 = load i64, i64* %PC.i782
  %677 = add i64 %676, 3
  store i64 %677, i64* %PC.i782
  %678 = add i64 %675, %674
  store i64 %678, i64* %RCX.i783, align 8
  %679 = icmp ult i64 %678, %674
  %680 = icmp ult i64 %678, %675
  %681 = or i1 %679, %680
  %682 = zext i1 %681 to i8
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %682, i8* %683, align 1
  %684 = trunc i64 %678 to i32
  %685 = and i32 %684, 255
  %686 = call i32 @llvm.ctpop.i32(i32 %685)
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %689, i8* %690, align 1
  %691 = xor i64 %675, %674
  %692 = xor i64 %691, %678
  %693 = lshr i64 %692, 4
  %694 = trunc i64 %693 to i8
  %695 = and i8 %694, 1
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %695, i8* %696, align 1
  %697 = icmp eq i64 %678, 0
  %698 = zext i1 %697 to i8
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %698, i8* %699, align 1
  %700 = lshr i64 %678, 63
  %701 = trunc i64 %700 to i8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %701, i8* %702, align 1
  %703 = lshr i64 %674, 63
  %704 = lshr i64 %675, 63
  %705 = xor i64 %700, %703
  %706 = xor i64 %700, %704
  %707 = add i64 %705, %706
  %708 = icmp eq i64 %707, 2
  %709 = zext i1 %708 to i8
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %709, i8* %710, align 1
  store %struct.Memory* %loadMem_42f2de, %struct.Memory** %MEMORY
  %loadMem_42f2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 33
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 5
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %RCX.i781 = bitcast %union.anon* %716 to i64*
  %717 = load i64, i64* %RCX.i781
  %718 = load i64, i64* %PC.i780
  %719 = add i64 %718, 4
  store i64 %719, i64* %PC.i780
  %720 = add i64 4, %717
  store i64 %720, i64* %RCX.i781, align 8
  %721 = icmp ult i64 %720, %717
  %722 = icmp ult i64 %720, 4
  %723 = or i1 %721, %722
  %724 = zext i1 %723 to i8
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %724, i8* %725, align 1
  %726 = trunc i64 %720 to i32
  %727 = and i32 %726, 255
  %728 = call i32 @llvm.ctpop.i32(i32 %727)
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  %731 = xor i8 %730, 1
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %731, i8* %732, align 1
  %733 = xor i64 4, %717
  %734 = xor i64 %733, %720
  %735 = lshr i64 %734, 4
  %736 = trunc i64 %735 to i8
  %737 = and i8 %736, 1
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %737, i8* %738, align 1
  %739 = icmp eq i64 %720, 0
  %740 = zext i1 %739 to i8
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %740, i8* %741, align 1
  %742 = lshr i64 %720, 63
  %743 = trunc i64 %742 to i8
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %743, i8* %744, align 1
  %745 = lshr i64 %717, 63
  %746 = xor i64 %742, %745
  %747 = add i64 %746, %742
  %748 = icmp eq i64 %747, 2
  %749 = zext i1 %748 to i8
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %749, i8* %750, align 1
  store %struct.Memory* %loadMem_42f2e1, %struct.Memory** %MEMORY
  %loadMem_42f2e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %752 = getelementptr inbounds %struct.GPR, %struct.GPR* %751, i32 0, i32 33
  %753 = getelementptr inbounds %struct.Reg, %struct.Reg* %752, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %753 to i64*
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 5
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %RCX.i778 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 11
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %RDI.i779 = bitcast %union.anon* %759 to i64*
  %760 = load i64, i64* %RCX.i778
  %761 = load i64, i64* %PC.i777
  %762 = add i64 %761, 3
  store i64 %762, i64* %PC.i777
  store i64 %760, i64* %RDI.i779, align 8
  store %struct.Memory* %loadMem_42f2e5, %struct.Memory** %MEMORY
  %loadMem_42f2e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 33
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %765 to i64*
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 9
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %RSI.i775 = bitcast %union.anon* %768 to i64*
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 15
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %RBP.i776 = bitcast %union.anon* %771 to i64*
  %772 = load i64, i64* %RBP.i776
  %773 = sub i64 %772, 36
  %774 = load i64, i64* %PC.i774
  %775 = add i64 %774, 3
  store i64 %775, i64* %PC.i774
  %776 = inttoptr i64 %773 to i32*
  %777 = load i32, i32* %776
  %778 = zext i32 %777 to i64
  store i64 %778, i64* %RSI.i775, align 8
  store %struct.Memory* %loadMem_42f2e8, %struct.Memory** %MEMORY
  %loadMem_42f2eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 33
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %781 to i64*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 1
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %RAX.i772 = bitcast %union.anon* %784 to i64*
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 15
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %RBP.i773 = bitcast %union.anon* %787 to i64*
  %788 = load i64, i64* %RBP.i773
  %789 = sub i64 %788, 48
  %790 = load i64, i64* %RAX.i772
  %791 = load i64, i64* %PC.i771
  %792 = add i64 %791, 4
  store i64 %792, i64* %PC.i771
  %793 = inttoptr i64 %789 to i64*
  store i64 %790, i64* %793
  store %struct.Memory* %loadMem_42f2eb, %struct.Memory** %MEMORY
  %loadMem1_42f2ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 33
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %796 to i64*
  %797 = load i64, i64* %PC.i770
  %798 = add i64 %797, 95281
  %799 = load i64, i64* %PC.i770
  %800 = add i64 %799, 5
  %801 = load i64, i64* %PC.i770
  %802 = add i64 %801, 5
  store i64 %802, i64* %PC.i770
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %804 = load i64, i64* %803, align 8
  %805 = add i64 %804, -8
  %806 = inttoptr i64 %805 to i64*
  store i64 %800, i64* %806
  store i64 %805, i64* %803, align 8
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %798, i64* %807, align 8
  store %struct.Memory* %loadMem1_42f2ef, %struct.Memory** %MEMORY
  %loadMem2_42f2ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f2ef = load i64, i64* %3
  %call2_42f2ef = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64 %loadPC_42f2ef, %struct.Memory* %loadMem2_42f2ef)
  store %struct.Memory* %call2_42f2ef, %struct.Memory** %MEMORY
  %loadMem_42f2f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 33
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %810 to i64*
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 5
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %RCX.i768 = bitcast %union.anon* %813 to i64*
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 15
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %RBP.i769 = bitcast %union.anon* %816 to i64*
  %817 = load i64, i64* %RBP.i769
  %818 = sub i64 %817, 24
  %819 = load i64, i64* %PC.i767
  %820 = add i64 %819, 4
  store i64 %820, i64* %PC.i767
  %821 = inttoptr i64 %818 to i64*
  %822 = load i64, i64* %821
  store i64 %822, i64* %RCX.i768, align 8
  store %struct.Memory* %loadMem_42f2f4, %struct.Memory** %MEMORY
  %loadMem_42f2f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 33
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %825 to i64*
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 5
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %RCX.i766 = bitcast %union.anon* %828 to i64*
  %829 = load i64, i64* %RCX.i766
  %830 = add i64 %829, 8
  %831 = load i64, i64* %PC.i765
  %832 = add i64 %831, 4
  store i64 %832, i64* %PC.i765
  %833 = inttoptr i64 %830 to i64*
  %834 = load i64, i64* %833
  store i64 %834, i64* %RCX.i766, align 8
  store %struct.Memory* %loadMem_42f2f8, %struct.Memory** %MEMORY
  %loadMem_42f2fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 33
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %837 to i64*
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 11
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %RDI.i763 = bitcast %union.anon* %840 to i64*
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 15
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %RBP.i764 = bitcast %union.anon* %843 to i64*
  %844 = load i64, i64* %RBP.i764
  %845 = sub i64 %844, 28
  %846 = load i64, i64* %PC.i762
  %847 = add i64 %846, 4
  store i64 %847, i64* %PC.i762
  %848 = inttoptr i64 %845 to i32*
  %849 = load i32, i32* %848
  %850 = sext i32 %849 to i64
  store i64 %850, i64* %RDI.i763, align 8
  store %struct.Memory* %loadMem_42f2fc, %struct.Memory** %MEMORY
  %loadMem_42f300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 33
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %853 to i64*
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 1
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %RAX.i759 = bitcast %union.anon* %856 to i64*
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 5
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %RCX.i760 = bitcast %union.anon* %859 to i64*
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 11
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %RDI.i761 = bitcast %union.anon* %862 to i64*
  %863 = load i64, i64* %RCX.i760
  %864 = load i64, i64* %RDI.i761
  %865 = mul i64 %864, 8
  %866 = add i64 %865, %863
  %867 = load i64, i64* %RAX.i759
  %868 = load i64, i64* %PC.i758
  %869 = add i64 %868, 4
  store i64 %869, i64* %PC.i758
  %870 = inttoptr i64 %866 to i64*
  store i64 %867, i64* %870
  store %struct.Memory* %loadMem_42f300, %struct.Memory** %MEMORY
  %loadMem_42f304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 33
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %873 to i64*
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 1
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %RAX.i756 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 15
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %RBP.i757 = bitcast %union.anon* %879 to i64*
  %880 = load i64, i64* %RBP.i757
  %881 = sub i64 %880, 24
  %882 = load i64, i64* %PC.i755
  %883 = add i64 %882, 4
  store i64 %883, i64* %PC.i755
  %884 = inttoptr i64 %881 to i64*
  %885 = load i64, i64* %884
  store i64 %885, i64* %RAX.i756, align 8
  store %struct.Memory* %loadMem_42f304, %struct.Memory** %MEMORY
  %loadMem_42f308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 33
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 1
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RAX.i753 = bitcast %union.anon* %891 to i64*
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 9
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %RSI.i754 = bitcast %union.anon* %894 to i64*
  %895 = load i64, i64* %RAX.i753
  %896 = add i64 %895, 24
  %897 = load i64, i64* %PC.i752
  %898 = add i64 %897, 3
  store i64 %898, i64* %PC.i752
  %899 = inttoptr i64 %896 to i32*
  %900 = load i32, i32* %899
  %901 = zext i32 %900 to i64
  store i64 %901, i64* %RSI.i754, align 8
  store %struct.Memory* %loadMem_42f308, %struct.Memory** %MEMORY
  %loadMem_42f30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 33
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %904 to i64*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 1
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %RAX.i750 = bitcast %union.anon* %907 to i64*
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 15
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %910 to i64*
  %911 = load i64, i64* %RBP.i751
  %912 = sub i64 %911, 24
  %913 = load i64, i64* %PC.i749
  %914 = add i64 %913, 4
  store i64 %914, i64* %PC.i749
  %915 = inttoptr i64 %912 to i64*
  %916 = load i64, i64* %915
  store i64 %916, i64* %RAX.i750, align 8
  store %struct.Memory* %loadMem_42f30b, %struct.Memory** %MEMORY
  %loadMem_42f30f = load %struct.Memory*, %struct.Memory** %MEMORY
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 33
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 1
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %RAX.i748 = bitcast %union.anon* %922 to i64*
  %923 = load i64, i64* %RAX.i748
  %924 = add i64 %923, 328
  %925 = load i64, i64* %PC.i747
  %926 = add i64 %925, 7
  store i64 %926, i64* %PC.i747
  %927 = inttoptr i64 %924 to i64*
  %928 = load i64, i64* %927
  store i64 %928, i64* %RAX.i748, align 8
  store %struct.Memory* %loadMem_42f30f, %struct.Memory** %MEMORY
  %loadMem_42f316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 33
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %931 to i64*
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 5
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %RCX.i745 = bitcast %union.anon* %934 to i64*
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 15
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %RBP.i746 = bitcast %union.anon* %937 to i64*
  %938 = load i64, i64* %RBP.i746
  %939 = sub i64 %938, 28
  %940 = load i64, i64* %PC.i744
  %941 = add i64 %940, 4
  store i64 %941, i64* %PC.i744
  %942 = inttoptr i64 %939 to i32*
  %943 = load i32, i32* %942
  %944 = sext i32 %943 to i64
  store i64 %944, i64* %RCX.i745, align 8
  store %struct.Memory* %loadMem_42f316, %struct.Memory** %MEMORY
  %loadMem_42f31a = load %struct.Memory*, %struct.Memory** %MEMORY
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 33
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %947 to i64*
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 9
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %ESI.i741 = bitcast %union.anon* %950 to i32*
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 1
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %RAX.i742 = bitcast %union.anon* %953 to i64*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 5
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %RCX.i743 = bitcast %union.anon* %956 to i64*
  %957 = load i64, i64* %RAX.i742
  %958 = load i64, i64* %RCX.i743
  %959 = mul i64 %958, 4
  %960 = add i64 %959, %957
  %961 = load i32, i32* %ESI.i741
  %962 = zext i32 %961 to i64
  %963 = load i64, i64* %PC.i740
  %964 = add i64 %963, 3
  store i64 %964, i64* %PC.i740
  %965 = inttoptr i64 %960 to i32*
  store i32 %961, i32* %965
  store %struct.Memory* %loadMem_42f31a, %struct.Memory** %MEMORY
  %loadMem_42f31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 33
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %968 to i64*
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 1
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %RAX.i738 = bitcast %union.anon* %971 to i64*
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 15
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %RBP.i739 = bitcast %union.anon* %974 to i64*
  %975 = load i64, i64* %RBP.i739
  %976 = sub i64 %975, 24
  %977 = load i64, i64* %PC.i737
  %978 = add i64 %977, 4
  store i64 %978, i64* %PC.i737
  %979 = inttoptr i64 %976 to i64*
  %980 = load i64, i64* %979
  store i64 %980, i64* %RAX.i738, align 8
  store %struct.Memory* %loadMem_42f31d, %struct.Memory** %MEMORY
  %loadMem_42f321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 33
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %983 to i64*
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 1
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %RAX.i735 = bitcast %union.anon* %986 to i64*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 11
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %RDI.i736 = bitcast %union.anon* %989 to i64*
  %990 = load i64, i64* %RAX.i735
  %991 = add i64 %990, 312
  %992 = load i64, i64* %PC.i734
  %993 = add i64 %992, 7
  store i64 %993, i64* %PC.i734
  %994 = inttoptr i64 %991 to i64*
  %995 = load i64, i64* %994
  store i64 %995, i64* %RDI.i736, align 8
  store %struct.Memory* %loadMem_42f321, %struct.Memory** %MEMORY
  %loadMem_42f328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 33
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %998 to i64*
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 1
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %RAX.i732 = bitcast %union.anon* %1001 to i64*
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 15
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %RBP.i733 = bitcast %union.anon* %1004 to i64*
  %1005 = load i64, i64* %RBP.i733
  %1006 = sub i64 %1005, 24
  %1007 = load i64, i64* %PC.i731
  %1008 = add i64 %1007, 4
  store i64 %1008, i64* %PC.i731
  %1009 = inttoptr i64 %1006 to i64*
  %1010 = load i64, i64* %1009
  store i64 %1010, i64* %RAX.i732, align 8
  store %struct.Memory* %loadMem_42f328, %struct.Memory** %MEMORY
  %loadMem_42f32c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 33
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %1013 to i64*
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 1
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %RAX.i730 = bitcast %union.anon* %1016 to i64*
  %1017 = load i64, i64* %RAX.i730
  %1018 = add i64 %1017, 8
  %1019 = load i64, i64* %PC.i729
  %1020 = add i64 %1019, 4
  store i64 %1020, i64* %PC.i729
  %1021 = inttoptr i64 %1018 to i64*
  %1022 = load i64, i64* %1021
  store i64 %1022, i64* %RAX.i730, align 8
  store %struct.Memory* %loadMem_42f32c, %struct.Memory** %MEMORY
  %loadMem_42f330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 33
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %1025 to i64*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 5
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %RCX.i727 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 15
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %RBP.i728 = bitcast %union.anon* %1031 to i64*
  %1032 = load i64, i64* %RBP.i728
  %1033 = sub i64 %1032, 28
  %1034 = load i64, i64* %PC.i726
  %1035 = add i64 %1034, 4
  store i64 %1035, i64* %PC.i726
  %1036 = inttoptr i64 %1033 to i32*
  %1037 = load i32, i32* %1036
  %1038 = sext i32 %1037 to i64
  store i64 %1038, i64* %RCX.i727, align 8
  store %struct.Memory* %loadMem_42f330, %struct.Memory** %MEMORY
  %loadMem_42f334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 33
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %1041 to i64*
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 1
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %RAX.i723 = bitcast %union.anon* %1044 to i64*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 5
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %RCX.i724 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 9
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RSI.i725 = bitcast %union.anon* %1050 to i64*
  %1051 = load i64, i64* %RAX.i723
  %1052 = load i64, i64* %RCX.i724
  %1053 = mul i64 %1052, 8
  %1054 = add i64 %1053, %1051
  %1055 = load i64, i64* %PC.i722
  %1056 = add i64 %1055, 4
  store i64 %1056, i64* %PC.i722
  %1057 = inttoptr i64 %1054 to i64*
  %1058 = load i64, i64* %1057
  store i64 %1058, i64* %RSI.i725, align 8
  store %struct.Memory* %loadMem_42f334, %struct.Memory** %MEMORY
  %loadMem1_42f338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 33
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %1061 to i64*
  %1062 = load i64, i64* %PC.i721
  %1063 = add i64 %1062, -98824
  %1064 = load i64, i64* %PC.i721
  %1065 = add i64 %1064, 5
  %1066 = load i64, i64* %PC.i721
  %1067 = add i64 %1066, 5
  store i64 %1067, i64* %PC.i721
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1069 = load i64, i64* %1068, align 8
  %1070 = add i64 %1069, -8
  %1071 = inttoptr i64 %1070 to i64*
  store i64 %1065, i64* %1071
  store i64 %1070, i64* %1068, align 8
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1063, i64* %1072, align 8
  store %struct.Memory* %loadMem1_42f338, %struct.Memory** %MEMORY
  %loadMem2_42f338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f338 = load i64, i64* %3
  %call2_42f338 = call %struct.Memory* @sub_417130.GKIStoreKey(%struct.State* %0, i64 %loadPC_42f338, %struct.Memory* %loadMem2_42f338)
  store %struct.Memory* %call2_42f338, %struct.Memory** %MEMORY
  %loadMem_42f33d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 33
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %1075 to i64*
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 5
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %RCX.i719 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 15
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %RBP.i720 = bitcast %union.anon* %1081 to i64*
  %1082 = load i64, i64* %RBP.i720
  %1083 = sub i64 %1082, 16
  %1084 = load i64, i64* %PC.i718
  %1085 = add i64 %1084, 4
  store i64 %1085, i64* %PC.i718
  %1086 = inttoptr i64 %1083 to i64*
  %1087 = load i64, i64* %1086
  store i64 %1087, i64* %RCX.i719, align 8
  store %struct.Memory* %loadMem_42f33d, %struct.Memory** %MEMORY
  %loadMem_42f341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 33
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %1090 to i64*
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 5
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %RCX.i717 = bitcast %union.anon* %1093 to i64*
  %1094 = load i64, i64* %RCX.i717
  %1095 = add i64 %1094, 40
  %1096 = load i64, i64* %PC.i716
  %1097 = add i64 %1096, 4
  store i64 %1097, i64* %PC.i716
  %1098 = inttoptr i64 %1095 to i64*
  %1099 = load i64, i64* %1098
  store i64 %1099, i64* %RCX.i717, align 8
  store %struct.Memory* %loadMem_42f341, %struct.Memory** %MEMORY
  %loadMem_42f345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 33
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1102 to i64*
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 9
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %RSI.i714 = bitcast %union.anon* %1105 to i64*
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 15
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %RBP.i715 = bitcast %union.anon* %1108 to i64*
  %1109 = load i64, i64* %RBP.i715
  %1110 = sub i64 %1109, 28
  %1111 = load i64, i64* %PC.i713
  %1112 = add i64 %1111, 4
  store i64 %1112, i64* %PC.i713
  %1113 = inttoptr i64 %1110 to i32*
  %1114 = load i32, i32* %1113
  %1115 = sext i32 %1114 to i64
  store i64 %1115, i64* %RSI.i714, align 8
  store %struct.Memory* %loadMem_42f345, %struct.Memory** %MEMORY
  %loadMem_42f349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 33
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %1118 to i64*
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 9
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %RSI.i712 = bitcast %union.anon* %1121 to i64*
  %1122 = load i64, i64* %RSI.i712
  %1123 = load i64, i64* %PC.i711
  %1124 = add i64 %1123, 7
  store i64 %1124, i64* %PC.i711
  %1125 = sext i64 %1122 to i128
  %1126 = and i128 %1125, -18446744073709551616
  %1127 = zext i64 %1122 to i128
  %1128 = or i128 %1126, %1127
  %1129 = mul i128 360, %1128
  %1130 = trunc i128 %1129 to i64
  store i64 %1130, i64* %RSI.i712, align 8
  %1131 = sext i64 %1130 to i128
  %1132 = icmp ne i128 %1131, %1129
  %1133 = zext i1 %1132 to i8
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1133, i8* %1134, align 1
  %1135 = trunc i128 %1129 to i32
  %1136 = and i32 %1135, 255
  %1137 = call i32 @llvm.ctpop.i32(i32 %1136)
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  %1140 = xor i8 %1139, 1
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1140, i8* %1141, align 1
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1142, align 1
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1143, align 1
  %1144 = lshr i64 %1130, 63
  %1145 = trunc i64 %1144 to i8
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1145, i8* %1146, align 1
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1133, i8* %1147, align 1
  store %struct.Memory* %loadMem_42f349, %struct.Memory** %MEMORY
  %loadMem_42f350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 33
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %1150 to i64*
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 5
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %RCX.i709 = bitcast %union.anon* %1153 to i64*
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 9
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %RSI.i710 = bitcast %union.anon* %1156 to i64*
  %1157 = load i64, i64* %RCX.i709
  %1158 = load i64, i64* %RSI.i710
  %1159 = load i64, i64* %PC.i708
  %1160 = add i64 %1159, 3
  store i64 %1160, i64* %PC.i708
  %1161 = add i64 %1158, %1157
  store i64 %1161, i64* %RCX.i709, align 8
  %1162 = icmp ult i64 %1161, %1157
  %1163 = icmp ult i64 %1161, %1158
  %1164 = or i1 %1162, %1163
  %1165 = zext i1 %1164 to i8
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1165, i8* %1166, align 1
  %1167 = trunc i64 %1161 to i32
  %1168 = and i32 %1167, 255
  %1169 = call i32 @llvm.ctpop.i32(i32 %1168)
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = xor i8 %1171, 1
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1172, i8* %1173, align 1
  %1174 = xor i64 %1158, %1157
  %1175 = xor i64 %1174, %1161
  %1176 = lshr i64 %1175, 4
  %1177 = trunc i64 %1176 to i8
  %1178 = and i8 %1177, 1
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1178, i8* %1179, align 1
  %1180 = icmp eq i64 %1161, 0
  %1181 = zext i1 %1180 to i8
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1181, i8* %1182, align 1
  %1183 = lshr i64 %1161, 63
  %1184 = trunc i64 %1183 to i8
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1184, i8* %1185, align 1
  %1186 = lshr i64 %1157, 63
  %1187 = lshr i64 %1158, 63
  %1188 = xor i64 %1183, %1186
  %1189 = xor i64 %1183, %1187
  %1190 = add i64 %1188, %1189
  %1191 = icmp eq i64 %1190, 2
  %1192 = zext i1 %1191 to i8
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1192, i8* %1193, align 1
  store %struct.Memory* %loadMem_42f350, %struct.Memory** %MEMORY
  %loadMem_42f353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 33
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %1196 to i64*
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 5
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %RCX.i706 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 7
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RDX.i707 = bitcast %union.anon* %1202 to i64*
  %1203 = load i64, i64* %RCX.i706
  %1204 = load i64, i64* %PC.i705
  %1205 = add i64 %1204, 2
  store i64 %1205, i64* %PC.i705
  %1206 = inttoptr i64 %1203 to i32*
  %1207 = load i32, i32* %1206
  %1208 = zext i32 %1207 to i64
  store i64 %1208, i64* %RDX.i707, align 8
  store %struct.Memory* %loadMem_42f353, %struct.Memory** %MEMORY
  %loadMem_42f355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 33
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 7
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %RDX.i704 = bitcast %union.anon* %1214 to i64*
  %1215 = load i64, i64* %RDX.i704
  %1216 = load i64, i64* %PC.i703
  %1217 = add i64 %1216, 3
  store i64 %1217, i64* %PC.i703
  %1218 = and i64 4, %1215
  %1219 = trunc i64 %1218 to i32
  store i64 %1218, i64* %RDX.i704, align 8
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1220, align 1
  %1221 = and i32 %1219, 255
  %1222 = call i32 @llvm.ctpop.i32(i32 %1221)
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1225, i8* %1226, align 1
  %1227 = icmp eq i32 %1219, 0
  %1228 = zext i1 %1227 to i8
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1228, i8* %1229, align 1
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1230, align 1
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1231, align 1
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1232, align 1
  store %struct.Memory* %loadMem_42f355, %struct.Memory** %MEMORY
  %loadMem_42f358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 33
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %1235 to i64*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 7
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %EDX.i702 = bitcast %union.anon* %1238 to i32*
  %1239 = load i32, i32* %EDX.i702
  %1240 = zext i32 %1239 to i64
  %1241 = load i64, i64* %PC.i701
  %1242 = add i64 %1241, 3
  store i64 %1242, i64* %PC.i701
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1243, align 1
  %1244 = and i32 %1239, 255
  %1245 = call i32 @llvm.ctpop.i32(i32 %1244)
  %1246 = trunc i32 %1245 to i8
  %1247 = and i8 %1246, 1
  %1248 = xor i8 %1247, 1
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1248, i8* %1249, align 1
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1250, align 1
  %1251 = icmp eq i32 %1239, 0
  %1252 = zext i1 %1251 to i8
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1252, i8* %1253, align 1
  %1254 = lshr i32 %1239, 31
  %1255 = trunc i32 %1254 to i8
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1255, i8* %1256, align 1
  %1257 = lshr i32 %1239, 31
  %1258 = xor i32 %1254, %1257
  %1259 = add i32 %1258, %1257
  %1260 = icmp eq i32 %1259, 2
  %1261 = zext i1 %1260 to i8
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1261, i8* %1262, align 1
  store %struct.Memory* %loadMem_42f358, %struct.Memory** %MEMORY
  %loadMem_42f35b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 33
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1265 to i64*
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 1
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %EAX.i699 = bitcast %union.anon* %1268 to i32*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 15
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %1271 to i64*
  %1272 = load i64, i64* %RBP.i700
  %1273 = sub i64 %1272, 52
  %1274 = load i32, i32* %EAX.i699
  %1275 = zext i32 %1274 to i64
  %1276 = load i64, i64* %PC.i698
  %1277 = add i64 %1276, 3
  store i64 %1277, i64* %PC.i698
  %1278 = inttoptr i64 %1273 to i32*
  store i32 %1274, i32* %1278
  store %struct.Memory* %loadMem_42f35b, %struct.Memory** %MEMORY
  %loadMem_42f35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 33
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %1281 to i64*
  %1282 = load i64, i64* %PC.i697
  %1283 = add i64 %1282, 49
  %1284 = load i64, i64* %PC.i697
  %1285 = add i64 %1284, 6
  %1286 = load i64, i64* %PC.i697
  %1287 = add i64 %1286, 6
  store i64 %1287, i64* %PC.i697
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1289 = load i8, i8* %1288, align 1
  store i8 %1289, i8* %BRANCH_TAKEN, align 1
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1291 = icmp ne i8 %1289, 0
  %1292 = select i1 %1291, i64 %1283, i64 %1285
  store i64 %1292, i64* %1290, align 8
  store %struct.Memory* %loadMem_42f35e, %struct.Memory** %MEMORY
  %loadBr_42f35e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f35e = icmp eq i8 %loadBr_42f35e, 1
  br i1 %cmpBr_42f35e, label %block_.L_42f38f, label %block_42f364

block_42f364:                                     ; preds = %block_42f27e
  %loadMem_42f364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 33
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %1295 to i64*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 11
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %RDI.i695 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 15
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RBP.i696 = bitcast %union.anon* %1301 to i64*
  %1302 = load i64, i64* %RBP.i696
  %1303 = sub i64 %1302, 24
  %1304 = load i64, i64* %PC.i694
  %1305 = add i64 %1304, 4
  store i64 %1305, i64* %PC.i694
  %1306 = inttoptr i64 %1303 to i64*
  %1307 = load i64, i64* %1306
  store i64 %1307, i64* %RDI.i695, align 8
  store %struct.Memory* %loadMem_42f364, %struct.Memory** %MEMORY
  %loadMem_42f368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 33
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %1310 to i64*
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 9
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %RSI.i692 = bitcast %union.anon* %1313 to i64*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 15
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %RBP.i693 = bitcast %union.anon* %1316 to i64*
  %1317 = load i64, i64* %RBP.i693
  %1318 = sub i64 %1317, 28
  %1319 = load i64, i64* %PC.i691
  %1320 = add i64 %1319, 3
  store i64 %1320, i64* %PC.i691
  %1321 = inttoptr i64 %1318 to i32*
  %1322 = load i32, i32* %1321
  %1323 = zext i32 %1322 to i64
  store i64 %1323, i64* %RSI.i692, align 8
  store %struct.Memory* %loadMem_42f368, %struct.Memory** %MEMORY
  %loadMem_42f36b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 33
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 1
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RAX.i689 = bitcast %union.anon* %1329 to i64*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 15
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %RBP.i690 = bitcast %union.anon* %1332 to i64*
  %1333 = load i64, i64* %RBP.i690
  %1334 = sub i64 %1333, 16
  %1335 = load i64, i64* %PC.i688
  %1336 = add i64 %1335, 4
  store i64 %1336, i64* %PC.i688
  %1337 = inttoptr i64 %1334 to i64*
  %1338 = load i64, i64* %1337
  store i64 %1338, i64* %RAX.i689, align 8
  store %struct.Memory* %loadMem_42f36b, %struct.Memory** %MEMORY
  %loadMem_42f36f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 33
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %1341 to i64*
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 1
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %RAX.i687 = bitcast %union.anon* %1344 to i64*
  %1345 = load i64, i64* %RAX.i687
  %1346 = add i64 %1345, 40
  %1347 = load i64, i64* %PC.i686
  %1348 = add i64 %1347, 4
  store i64 %1348, i64* %PC.i686
  %1349 = inttoptr i64 %1346 to i64*
  %1350 = load i64, i64* %1349
  store i64 %1350, i64* %RAX.i687, align 8
  store %struct.Memory* %loadMem_42f36f, %struct.Memory** %MEMORY
  %loadMem_42f373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 33
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %1353 to i64*
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 5
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %RCX.i684 = bitcast %union.anon* %1356 to i64*
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 15
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %RBP.i685 = bitcast %union.anon* %1359 to i64*
  %1360 = load i64, i64* %RBP.i685
  %1361 = sub i64 %1360, 28
  %1362 = load i64, i64* %PC.i683
  %1363 = add i64 %1362, 4
  store i64 %1363, i64* %PC.i683
  %1364 = inttoptr i64 %1361 to i32*
  %1365 = load i32, i32* %1364
  %1366 = sext i32 %1365 to i64
  store i64 %1366, i64* %RCX.i684, align 8
  store %struct.Memory* %loadMem_42f373, %struct.Memory** %MEMORY
  %loadMem_42f377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 33
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %1369 to i64*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 5
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %RCX.i682 = bitcast %union.anon* %1372 to i64*
  %1373 = load i64, i64* %RCX.i682
  %1374 = load i64, i64* %PC.i681
  %1375 = add i64 %1374, 7
  store i64 %1375, i64* %PC.i681
  %1376 = sext i64 %1373 to i128
  %1377 = and i128 %1376, -18446744073709551616
  %1378 = zext i64 %1373 to i128
  %1379 = or i128 %1377, %1378
  %1380 = mul i128 360, %1379
  %1381 = trunc i128 %1380 to i64
  store i64 %1381, i64* %RCX.i682, align 8
  %1382 = sext i64 %1381 to i128
  %1383 = icmp ne i128 %1382, %1380
  %1384 = zext i1 %1383 to i8
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1384, i8* %1385, align 1
  %1386 = trunc i128 %1380 to i32
  %1387 = and i32 %1386, 255
  %1388 = call i32 @llvm.ctpop.i32(i32 %1387)
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  %1391 = xor i8 %1390, 1
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1391, i8* %1392, align 1
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1393, align 1
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1394, align 1
  %1395 = lshr i64 %1381, 63
  %1396 = trunc i64 %1395 to i8
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1396, i8* %1397, align 1
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1384, i8* %1398, align 1
  store %struct.Memory* %loadMem_42f377, %struct.Memory** %MEMORY
  %loadMem_42f37e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 33
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %1401 to i64*
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 1
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %RAX.i679 = bitcast %union.anon* %1404 to i64*
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 5
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %RCX.i680 = bitcast %union.anon* %1407 to i64*
  %1408 = load i64, i64* %RAX.i679
  %1409 = load i64, i64* %RCX.i680
  %1410 = load i64, i64* %PC.i678
  %1411 = add i64 %1410, 3
  store i64 %1411, i64* %PC.i678
  %1412 = add i64 %1409, %1408
  store i64 %1412, i64* %RAX.i679, align 8
  %1413 = icmp ult i64 %1412, %1408
  %1414 = icmp ult i64 %1412, %1409
  %1415 = or i1 %1413, %1414
  %1416 = zext i1 %1415 to i8
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1416, i8* %1417, align 1
  %1418 = trunc i64 %1412 to i32
  %1419 = and i32 %1418, 255
  %1420 = call i32 @llvm.ctpop.i32(i32 %1419)
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  %1423 = xor i8 %1422, 1
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1423, i8* %1424, align 1
  %1425 = xor i64 %1409, %1408
  %1426 = xor i64 %1425, %1412
  %1427 = lshr i64 %1426, 4
  %1428 = trunc i64 %1427 to i8
  %1429 = and i8 %1428, 1
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1429, i8* %1430, align 1
  %1431 = icmp eq i64 %1412, 0
  %1432 = zext i1 %1431 to i8
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1432, i8* %1433, align 1
  %1434 = lshr i64 %1412, 63
  %1435 = trunc i64 %1434 to i8
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1435, i8* %1436, align 1
  %1437 = lshr i64 %1408, 63
  %1438 = lshr i64 %1409, 63
  %1439 = xor i64 %1434, %1437
  %1440 = xor i64 %1434, %1438
  %1441 = add i64 %1439, %1440
  %1442 = icmp eq i64 %1441, 2
  %1443 = zext i1 %1442 to i8
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1443, i8* %1444, align 1
  store %struct.Memory* %loadMem_42f37e, %struct.Memory** %MEMORY
  %loadMem_42f381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 33
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %1447 to i64*
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 1
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %RAX.i677 = bitcast %union.anon* %1450 to i64*
  %1451 = load i64, i64* %RAX.i677
  %1452 = load i64, i64* %PC.i676
  %1453 = add i64 %1452, 6
  store i64 %1453, i64* %PC.i676
  %1454 = add i64 132, %1451
  store i64 %1454, i64* %RAX.i677, align 8
  %1455 = icmp ult i64 %1454, %1451
  %1456 = icmp ult i64 %1454, 132
  %1457 = or i1 %1455, %1456
  %1458 = zext i1 %1457 to i8
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1458, i8* %1459, align 1
  %1460 = trunc i64 %1454 to i32
  %1461 = and i32 %1460, 255
  %1462 = call i32 @llvm.ctpop.i32(i32 %1461)
  %1463 = trunc i32 %1462 to i8
  %1464 = and i8 %1463, 1
  %1465 = xor i8 %1464, 1
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1465, i8* %1466, align 1
  %1467 = xor i64 132, %1451
  %1468 = xor i64 %1467, %1454
  %1469 = lshr i64 %1468, 4
  %1470 = trunc i64 %1469 to i8
  %1471 = and i8 %1470, 1
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1471, i8* %1472, align 1
  %1473 = icmp eq i64 %1454, 0
  %1474 = zext i1 %1473 to i8
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1474, i8* %1475, align 1
  %1476 = lshr i64 %1454, 63
  %1477 = trunc i64 %1476 to i8
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1477, i8* %1478, align 1
  %1479 = lshr i64 %1451, 63
  %1480 = xor i64 %1476, %1479
  %1481 = add i64 %1480, %1476
  %1482 = icmp eq i64 %1481, 2
  %1483 = zext i1 %1482 to i8
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1483, i8* %1484, align 1
  store %struct.Memory* %loadMem_42f381, %struct.Memory** %MEMORY
  %loadMem_42f387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 33
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %1487 to i64*
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1489 = getelementptr inbounds %struct.GPR, %struct.GPR* %1488, i32 0, i32 1
  %1490 = getelementptr inbounds %struct.Reg, %struct.Reg* %1489, i32 0, i32 0
  %RAX.i674 = bitcast %union.anon* %1490 to i64*
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 7
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %RDX.i675 = bitcast %union.anon* %1493 to i64*
  %1494 = load i64, i64* %RAX.i674
  %1495 = load i64, i64* %PC.i673
  %1496 = add i64 %1495, 3
  store i64 %1496, i64* %PC.i673
  store i64 %1494, i64* %RDX.i675, align 8
  store %struct.Memory* %loadMem_42f387, %struct.Memory** %MEMORY
  %loadMem1_42f38a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 33
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %1499 to i64*
  %1500 = load i64, i64* %PC.i672
  %1501 = add i64 %1500, -7754
  %1502 = load i64, i64* %PC.i672
  %1503 = add i64 %1502, 5
  %1504 = load i64, i64* %PC.i672
  %1505 = add i64 %1504, 5
  store i64 %1505, i64* %PC.i672
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1507 = load i64, i64* %1506, align 8
  %1508 = add i64 %1507, -8
  %1509 = inttoptr i64 %1508 to i64*
  store i64 %1503, i64* %1509
  store i64 %1508, i64* %1506, align 8
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1501, i64* %1510, align 8
  store %struct.Memory* %loadMem1_42f38a, %struct.Memory** %MEMORY
  %loadMem2_42f38a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f38a = load i64, i64* %3
  %call2_42f38a = call %struct.Memory* @sub_42d540.MSASetSeqAccession(%struct.State* %0, i64 %loadPC_42f38a, %struct.Memory* %loadMem2_42f38a)
  store %struct.Memory* %call2_42f38a, %struct.Memory** %MEMORY
  br label %block_.L_42f38f

block_.L_42f38f:                                  ; preds = %block_42f364, %block_42f27e
  %loadMem_42f38f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 33
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 1
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %RAX.i670 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 15
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RBP.i671 = bitcast %union.anon* %1519 to i64*
  %1520 = load i64, i64* %RBP.i671
  %1521 = sub i64 %1520, 16
  %1522 = load i64, i64* %PC.i669
  %1523 = add i64 %1522, 4
  store i64 %1523, i64* %PC.i669
  %1524 = inttoptr i64 %1521 to i64*
  %1525 = load i64, i64* %1524
  store i64 %1525, i64* %RAX.i670, align 8
  store %struct.Memory* %loadMem_42f38f, %struct.Memory** %MEMORY
  %loadMem_42f393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 33
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 1
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RAX.i668 = bitcast %union.anon* %1531 to i64*
  %1532 = load i64, i64* %RAX.i668
  %1533 = add i64 %1532, 40
  %1534 = load i64, i64* %PC.i667
  %1535 = add i64 %1534, 4
  store i64 %1535, i64* %PC.i667
  %1536 = inttoptr i64 %1533 to i64*
  %1537 = load i64, i64* %1536
  store i64 %1537, i64* %RAX.i668, align 8
  store %struct.Memory* %loadMem_42f393, %struct.Memory** %MEMORY
  %loadMem_42f397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 33
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %1540 to i64*
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 5
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %RCX.i665 = bitcast %union.anon* %1543 to i64*
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 15
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %RBP.i666 = bitcast %union.anon* %1546 to i64*
  %1547 = load i64, i64* %RBP.i666
  %1548 = sub i64 %1547, 28
  %1549 = load i64, i64* %PC.i664
  %1550 = add i64 %1549, 4
  store i64 %1550, i64* %PC.i664
  %1551 = inttoptr i64 %1548 to i32*
  %1552 = load i32, i32* %1551
  %1553 = sext i32 %1552 to i64
  store i64 %1553, i64* %RCX.i665, align 8
  store %struct.Memory* %loadMem_42f397, %struct.Memory** %MEMORY
  %loadMem_42f39b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 33
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %1556 to i64*
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 5
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %RCX.i663 = bitcast %union.anon* %1559 to i64*
  %1560 = load i64, i64* %RCX.i663
  %1561 = load i64, i64* %PC.i662
  %1562 = add i64 %1561, 7
  store i64 %1562, i64* %PC.i662
  %1563 = sext i64 %1560 to i128
  %1564 = and i128 %1563, -18446744073709551616
  %1565 = zext i64 %1560 to i128
  %1566 = or i128 %1564, %1565
  %1567 = mul i128 360, %1566
  %1568 = trunc i128 %1567 to i64
  store i64 %1568, i64* %RCX.i663, align 8
  %1569 = sext i64 %1568 to i128
  %1570 = icmp ne i128 %1569, %1567
  %1571 = zext i1 %1570 to i8
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1571, i8* %1572, align 1
  %1573 = trunc i128 %1567 to i32
  %1574 = and i32 %1573, 255
  %1575 = call i32 @llvm.ctpop.i32(i32 %1574)
  %1576 = trunc i32 %1575 to i8
  %1577 = and i8 %1576, 1
  %1578 = xor i8 %1577, 1
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1578, i8* %1579, align 1
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1580, align 1
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1581, align 1
  %1582 = lshr i64 %1568, 63
  %1583 = trunc i64 %1582 to i8
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1583, i8* %1584, align 1
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1571, i8* %1585, align 1
  store %struct.Memory* %loadMem_42f39b, %struct.Memory** %MEMORY
  %loadMem_42f3a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 33
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %1588 to i64*
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 1
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %RAX.i660 = bitcast %union.anon* %1591 to i64*
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 5
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %RCX.i661 = bitcast %union.anon* %1594 to i64*
  %1595 = load i64, i64* %RAX.i660
  %1596 = load i64, i64* %RCX.i661
  %1597 = load i64, i64* %PC.i659
  %1598 = add i64 %1597, 3
  store i64 %1598, i64* %PC.i659
  %1599 = add i64 %1596, %1595
  store i64 %1599, i64* %RAX.i660, align 8
  %1600 = icmp ult i64 %1599, %1595
  %1601 = icmp ult i64 %1599, %1596
  %1602 = or i1 %1600, %1601
  %1603 = zext i1 %1602 to i8
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1603, i8* %1604, align 1
  %1605 = trunc i64 %1599 to i32
  %1606 = and i32 %1605, 255
  %1607 = call i32 @llvm.ctpop.i32(i32 %1606)
  %1608 = trunc i32 %1607 to i8
  %1609 = and i8 %1608, 1
  %1610 = xor i8 %1609, 1
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1610, i8* %1611, align 1
  %1612 = xor i64 %1596, %1595
  %1613 = xor i64 %1612, %1599
  %1614 = lshr i64 %1613, 4
  %1615 = trunc i64 %1614 to i8
  %1616 = and i8 %1615, 1
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1616, i8* %1617, align 1
  %1618 = icmp eq i64 %1599, 0
  %1619 = zext i1 %1618 to i8
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1619, i8* %1620, align 1
  %1621 = lshr i64 %1599, 63
  %1622 = trunc i64 %1621 to i8
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1622, i8* %1623, align 1
  %1624 = lshr i64 %1595, 63
  %1625 = lshr i64 %1596, 63
  %1626 = xor i64 %1621, %1624
  %1627 = xor i64 %1621, %1625
  %1628 = add i64 %1626, %1627
  %1629 = icmp eq i64 %1628, 2
  %1630 = zext i1 %1629 to i8
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1630, i8* %1631, align 1
  store %struct.Memory* %loadMem_42f3a2, %struct.Memory** %MEMORY
  %loadMem_42f3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 33
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 1
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %1637 to i64*
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 7
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %RDX.i658 = bitcast %union.anon* %1640 to i64*
  %1641 = load i64, i64* %RAX.i657
  %1642 = load i64, i64* %PC.i656
  %1643 = add i64 %1642, 2
  store i64 %1643, i64* %PC.i656
  %1644 = inttoptr i64 %1641 to i32*
  %1645 = load i32, i32* %1644
  %1646 = zext i32 %1645 to i64
  store i64 %1646, i64* %RDX.i658, align 8
  store %struct.Memory* %loadMem_42f3a5, %struct.Memory** %MEMORY
  %loadMem_42f3a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 33
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %1649 to i64*
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 7
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %RDX.i655 = bitcast %union.anon* %1652 to i64*
  %1653 = load i64, i64* %RDX.i655
  %1654 = load i64, i64* %PC.i654
  %1655 = add i64 %1654, 3
  store i64 %1655, i64* %PC.i654
  %1656 = and i64 8, %1653
  %1657 = trunc i64 %1656 to i32
  store i64 %1656, i64* %RDX.i655, align 8
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1658, align 1
  %1659 = and i32 %1657, 255
  %1660 = call i32 @llvm.ctpop.i32(i32 %1659)
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  %1663 = xor i8 %1662, 1
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1663, i8* %1664, align 1
  %1665 = icmp eq i32 %1657, 0
  %1666 = zext i1 %1665 to i8
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1666, i8* %1667, align 1
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1668, align 1
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1669, align 1
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1670, align 1
  store %struct.Memory* %loadMem_42f3a7, %struct.Memory** %MEMORY
  %loadMem_42f3aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 33
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %1673 to i64*
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 7
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %EDX.i653 = bitcast %union.anon* %1676 to i32*
  %1677 = load i32, i32* %EDX.i653
  %1678 = zext i32 %1677 to i64
  %1679 = load i64, i64* %PC.i652
  %1680 = add i64 %1679, 3
  store i64 %1680, i64* %PC.i652
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1681, align 1
  %1682 = and i32 %1677, 255
  %1683 = call i32 @llvm.ctpop.i32(i32 %1682)
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  %1686 = xor i8 %1685, 1
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1686, i8* %1687, align 1
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1688, align 1
  %1689 = icmp eq i32 %1677, 0
  %1690 = zext i1 %1689 to i8
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1690, i8* %1691, align 1
  %1692 = lshr i32 %1677, 31
  %1693 = trunc i32 %1692 to i8
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1693, i8* %1694, align 1
  %1695 = lshr i32 %1677, 31
  %1696 = xor i32 %1692, %1695
  %1697 = add i32 %1696, %1695
  %1698 = icmp eq i32 %1697, 2
  %1699 = zext i1 %1698 to i8
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1699, i8* %1700, align 1
  store %struct.Memory* %loadMem_42f3aa, %struct.Memory** %MEMORY
  %loadMem_42f3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 33
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %1703 to i64*
  %1704 = load i64, i64* %PC.i651
  %1705 = add i64 %1704, 49
  %1706 = load i64, i64* %PC.i651
  %1707 = add i64 %1706, 6
  %1708 = load i64, i64* %PC.i651
  %1709 = add i64 %1708, 6
  store i64 %1709, i64* %PC.i651
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1711 = load i8, i8* %1710, align 1
  store i8 %1711, i8* %BRANCH_TAKEN, align 1
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1713 = icmp ne i8 %1711, 0
  %1714 = select i1 %1713, i64 %1705, i64 %1707
  store i64 %1714, i64* %1712, align 8
  store %struct.Memory* %loadMem_42f3ad, %struct.Memory** %MEMORY
  %loadBr_42f3ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f3ad = icmp eq i8 %loadBr_42f3ad, 1
  br i1 %cmpBr_42f3ad, label %block_.L_42f3de, label %block_42f3b3

block_42f3b3:                                     ; preds = %block_.L_42f38f
  %loadMem_42f3b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 33
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %1717 to i64*
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 11
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %RDI.i649 = bitcast %union.anon* %1720 to i64*
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 15
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %1723 to i64*
  %1724 = load i64, i64* %RBP.i650
  %1725 = sub i64 %1724, 24
  %1726 = load i64, i64* %PC.i648
  %1727 = add i64 %1726, 4
  store i64 %1727, i64* %PC.i648
  %1728 = inttoptr i64 %1725 to i64*
  %1729 = load i64, i64* %1728
  store i64 %1729, i64* %RDI.i649, align 8
  store %struct.Memory* %loadMem_42f3b3, %struct.Memory** %MEMORY
  %loadMem_42f3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 33
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %1732 to i64*
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 9
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %RSI.i646 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 15
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %1738 to i64*
  %1739 = load i64, i64* %RBP.i647
  %1740 = sub i64 %1739, 28
  %1741 = load i64, i64* %PC.i645
  %1742 = add i64 %1741, 3
  store i64 %1742, i64* %PC.i645
  %1743 = inttoptr i64 %1740 to i32*
  %1744 = load i32, i32* %1743
  %1745 = zext i32 %1744 to i64
  store i64 %1745, i64* %RSI.i646, align 8
  store %struct.Memory* %loadMem_42f3b7, %struct.Memory** %MEMORY
  %loadMem_42f3ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 33
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 1
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %RAX.i643 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 15
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RBP.i644 = bitcast %union.anon* %1754 to i64*
  %1755 = load i64, i64* %RBP.i644
  %1756 = sub i64 %1755, 16
  %1757 = load i64, i64* %PC.i642
  %1758 = add i64 %1757, 4
  store i64 %1758, i64* %PC.i642
  %1759 = inttoptr i64 %1756 to i64*
  %1760 = load i64, i64* %1759
  store i64 %1760, i64* %RAX.i643, align 8
  store %struct.Memory* %loadMem_42f3ba, %struct.Memory** %MEMORY
  %loadMem_42f3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 33
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %1763 to i64*
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 1
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %RAX.i641 = bitcast %union.anon* %1766 to i64*
  %1767 = load i64, i64* %RAX.i641
  %1768 = add i64 %1767, 40
  %1769 = load i64, i64* %PC.i640
  %1770 = add i64 %1769, 4
  store i64 %1770, i64* %PC.i640
  %1771 = inttoptr i64 %1768 to i64*
  %1772 = load i64, i64* %1771
  store i64 %1772, i64* %RAX.i641, align 8
  store %struct.Memory* %loadMem_42f3be, %struct.Memory** %MEMORY
  %loadMem_42f3c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 33
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %1775 to i64*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 5
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %RCX.i638 = bitcast %union.anon* %1778 to i64*
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 15
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %RBP.i639 = bitcast %union.anon* %1781 to i64*
  %1782 = load i64, i64* %RBP.i639
  %1783 = sub i64 %1782, 28
  %1784 = load i64, i64* %PC.i637
  %1785 = add i64 %1784, 4
  store i64 %1785, i64* %PC.i637
  %1786 = inttoptr i64 %1783 to i32*
  %1787 = load i32, i32* %1786
  %1788 = sext i32 %1787 to i64
  store i64 %1788, i64* %RCX.i638, align 8
  store %struct.Memory* %loadMem_42f3c2, %struct.Memory** %MEMORY
  %loadMem_42f3c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 33
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %1791 to i64*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 5
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %RCX.i636 = bitcast %union.anon* %1794 to i64*
  %1795 = load i64, i64* %RCX.i636
  %1796 = load i64, i64* %PC.i635
  %1797 = add i64 %1796, 7
  store i64 %1797, i64* %PC.i635
  %1798 = sext i64 %1795 to i128
  %1799 = and i128 %1798, -18446744073709551616
  %1800 = zext i64 %1795 to i128
  %1801 = or i128 %1799, %1800
  %1802 = mul i128 360, %1801
  %1803 = trunc i128 %1802 to i64
  store i64 %1803, i64* %RCX.i636, align 8
  %1804 = sext i64 %1803 to i128
  %1805 = icmp ne i128 %1804, %1802
  %1806 = zext i1 %1805 to i8
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1806, i8* %1807, align 1
  %1808 = trunc i128 %1802 to i32
  %1809 = and i32 %1808, 255
  %1810 = call i32 @llvm.ctpop.i32(i32 %1809)
  %1811 = trunc i32 %1810 to i8
  %1812 = and i8 %1811, 1
  %1813 = xor i8 %1812, 1
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1813, i8* %1814, align 1
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1815, align 1
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1816, align 1
  %1817 = lshr i64 %1803, 63
  %1818 = trunc i64 %1817 to i8
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1818, i8* %1819, align 1
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1806, i8* %1820, align 1
  store %struct.Memory* %loadMem_42f3c6, %struct.Memory** %MEMORY
  %loadMem_42f3cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 33
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %1823 to i64*
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 1
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %RAX.i633 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 5
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RCX.i634 = bitcast %union.anon* %1829 to i64*
  %1830 = load i64, i64* %RAX.i633
  %1831 = load i64, i64* %RCX.i634
  %1832 = load i64, i64* %PC.i632
  %1833 = add i64 %1832, 3
  store i64 %1833, i64* %PC.i632
  %1834 = add i64 %1831, %1830
  store i64 %1834, i64* %RAX.i633, align 8
  %1835 = icmp ult i64 %1834, %1830
  %1836 = icmp ult i64 %1834, %1831
  %1837 = or i1 %1835, %1836
  %1838 = zext i1 %1837 to i8
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1838, i8* %1839, align 1
  %1840 = trunc i64 %1834 to i32
  %1841 = and i32 %1840, 255
  %1842 = call i32 @llvm.ctpop.i32(i32 %1841)
  %1843 = trunc i32 %1842 to i8
  %1844 = and i8 %1843, 1
  %1845 = xor i8 %1844, 1
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1845, i8* %1846, align 1
  %1847 = xor i64 %1831, %1830
  %1848 = xor i64 %1847, %1834
  %1849 = lshr i64 %1848, 4
  %1850 = trunc i64 %1849 to i8
  %1851 = and i8 %1850, 1
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1851, i8* %1852, align 1
  %1853 = icmp eq i64 %1834, 0
  %1854 = zext i1 %1853 to i8
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1854, i8* %1855, align 1
  %1856 = lshr i64 %1834, 63
  %1857 = trunc i64 %1856 to i8
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1857, i8* %1858, align 1
  %1859 = lshr i64 %1830, 63
  %1860 = lshr i64 %1831, 63
  %1861 = xor i64 %1856, %1859
  %1862 = xor i64 %1856, %1860
  %1863 = add i64 %1861, %1862
  %1864 = icmp eq i64 %1863, 2
  %1865 = zext i1 %1864 to i8
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1865, i8* %1866, align 1
  store %struct.Memory* %loadMem_42f3cd, %struct.Memory** %MEMORY
  %loadMem_42f3d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 33
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 1
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %RAX.i631 = bitcast %union.anon* %1872 to i64*
  %1873 = load i64, i64* %RAX.i631
  %1874 = load i64, i64* %PC.i630
  %1875 = add i64 %1874, 6
  store i64 %1875, i64* %PC.i630
  %1876 = add i64 196, %1873
  store i64 %1876, i64* %RAX.i631, align 8
  %1877 = icmp ult i64 %1876, %1873
  %1878 = icmp ult i64 %1876, 196
  %1879 = or i1 %1877, %1878
  %1880 = zext i1 %1879 to i8
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1880, i8* %1881, align 1
  %1882 = trunc i64 %1876 to i32
  %1883 = and i32 %1882, 255
  %1884 = call i32 @llvm.ctpop.i32(i32 %1883)
  %1885 = trunc i32 %1884 to i8
  %1886 = and i8 %1885, 1
  %1887 = xor i8 %1886, 1
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1887, i8* %1888, align 1
  %1889 = xor i64 196, %1873
  %1890 = xor i64 %1889, %1876
  %1891 = lshr i64 %1890, 4
  %1892 = trunc i64 %1891 to i8
  %1893 = and i8 %1892, 1
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1893, i8* %1894, align 1
  %1895 = icmp eq i64 %1876, 0
  %1896 = zext i1 %1895 to i8
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1896, i8* %1897, align 1
  %1898 = lshr i64 %1876, 63
  %1899 = trunc i64 %1898 to i8
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1899, i8* %1900, align 1
  %1901 = lshr i64 %1873, 63
  %1902 = xor i64 %1898, %1901
  %1903 = add i64 %1902, %1898
  %1904 = icmp eq i64 %1903, 2
  %1905 = zext i1 %1904 to i8
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1905, i8* %1906, align 1
  store %struct.Memory* %loadMem_42f3d0, %struct.Memory** %MEMORY
  %loadMem_42f3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 33
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %1909 to i64*
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 1
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %RAX.i628 = bitcast %union.anon* %1912 to i64*
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 7
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %RDX.i629 = bitcast %union.anon* %1915 to i64*
  %1916 = load i64, i64* %RAX.i628
  %1917 = load i64, i64* %PC.i627
  %1918 = add i64 %1917, 3
  store i64 %1918, i64* %PC.i627
  store i64 %1916, i64* %RDX.i629, align 8
  store %struct.Memory* %loadMem_42f3d6, %struct.Memory** %MEMORY
  %loadMem1_42f3d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 33
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %1921 to i64*
  %1922 = load i64, i64* %PC.i626
  %1923 = add i64 %1922, -7641
  %1924 = load i64, i64* %PC.i626
  %1925 = add i64 %1924, 5
  %1926 = load i64, i64* %PC.i626
  %1927 = add i64 %1926, 5
  store i64 %1927, i64* %PC.i626
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1929 = load i64, i64* %1928, align 8
  %1930 = add i64 %1929, -8
  %1931 = inttoptr i64 %1930 to i64*
  store i64 %1925, i64* %1931
  store i64 %1930, i64* %1928, align 8
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1923, i64* %1932, align 8
  store %struct.Memory* %loadMem1_42f3d9, %struct.Memory** %MEMORY
  %loadMem2_42f3d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f3d9 = load i64, i64* %3
  %call2_42f3d9 = call %struct.Memory* @sub_42d600.MSASetSeqDescription(%struct.State* %0, i64 %loadPC_42f3d9, %struct.Memory* %loadMem2_42f3d9)
  store %struct.Memory* %call2_42f3d9, %struct.Memory** %MEMORY
  br label %block_.L_42f3de

block_.L_42f3de:                                  ; preds = %block_42f3b3, %block_.L_42f38f
  %loadMem_42f3de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 33
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %1935 to i64*
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1937 = getelementptr inbounds %struct.GPR, %struct.GPR* %1936, i32 0, i32 1
  %1938 = getelementptr inbounds %struct.Reg, %struct.Reg* %1937, i32 0, i32 0
  %RAX.i624 = bitcast %union.anon* %1938 to i64*
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 15
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %RBP.i625 = bitcast %union.anon* %1941 to i64*
  %1942 = load i64, i64* %RBP.i625
  %1943 = sub i64 %1942, 16
  %1944 = load i64, i64* %PC.i623
  %1945 = add i64 %1944, 4
  store i64 %1945, i64* %PC.i623
  %1946 = inttoptr i64 %1943 to i64*
  %1947 = load i64, i64* %1946
  store i64 %1947, i64* %RAX.i624, align 8
  store %struct.Memory* %loadMem_42f3de, %struct.Memory** %MEMORY
  %loadMem_42f3e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 33
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %1950 to i64*
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 1
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %1953 to i64*
  %1954 = load i64, i64* %RAX.i622
  %1955 = add i64 %1954, 40
  %1956 = load i64, i64* %PC.i621
  %1957 = add i64 %1956, 4
  store i64 %1957, i64* %PC.i621
  %1958 = inttoptr i64 %1955 to i64*
  %1959 = load i64, i64* %1958
  store i64 %1959, i64* %RAX.i622, align 8
  store %struct.Memory* %loadMem_42f3e2, %struct.Memory** %MEMORY
  %loadMem_42f3e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 33
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %1962 to i64*
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 5
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %RCX.i619 = bitcast %union.anon* %1965 to i64*
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 15
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %1968 to i64*
  %1969 = load i64, i64* %RBP.i620
  %1970 = sub i64 %1969, 28
  %1971 = load i64, i64* %PC.i618
  %1972 = add i64 %1971, 4
  store i64 %1972, i64* %PC.i618
  %1973 = inttoptr i64 %1970 to i32*
  %1974 = load i32, i32* %1973
  %1975 = sext i32 %1974 to i64
  store i64 %1975, i64* %RCX.i619, align 8
  store %struct.Memory* %loadMem_42f3e6, %struct.Memory** %MEMORY
  %loadMem_42f3ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 33
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 5
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %RCX.i617 = bitcast %union.anon* %1981 to i64*
  %1982 = load i64, i64* %RCX.i617
  %1983 = load i64, i64* %PC.i616
  %1984 = add i64 %1983, 7
  store i64 %1984, i64* %PC.i616
  %1985 = sext i64 %1982 to i128
  %1986 = and i128 %1985, -18446744073709551616
  %1987 = zext i64 %1982 to i128
  %1988 = or i128 %1986, %1987
  %1989 = mul i128 360, %1988
  %1990 = trunc i128 %1989 to i64
  store i64 %1990, i64* %RCX.i617, align 8
  %1991 = sext i64 %1990 to i128
  %1992 = icmp ne i128 %1991, %1989
  %1993 = zext i1 %1992 to i8
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1993, i8* %1994, align 1
  %1995 = trunc i128 %1989 to i32
  %1996 = and i32 %1995, 255
  %1997 = call i32 @llvm.ctpop.i32(i32 %1996)
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  %2000 = xor i8 %1999, 1
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2000, i8* %2001, align 1
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2002, align 1
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2003, align 1
  %2004 = lshr i64 %1990, 63
  %2005 = trunc i64 %2004 to i8
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2005, i8* %2006, align 1
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1993, i8* %2007, align 1
  store %struct.Memory* %loadMem_42f3ea, %struct.Memory** %MEMORY
  %loadMem_42f3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 33
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %2010 to i64*
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 1
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %2013 to i64*
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 5
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %RCX.i615 = bitcast %union.anon* %2016 to i64*
  %2017 = load i64, i64* %RAX.i614
  %2018 = load i64, i64* %RCX.i615
  %2019 = load i64, i64* %PC.i613
  %2020 = add i64 %2019, 3
  store i64 %2020, i64* %PC.i613
  %2021 = add i64 %2018, %2017
  store i64 %2021, i64* %RAX.i614, align 8
  %2022 = icmp ult i64 %2021, %2017
  %2023 = icmp ult i64 %2021, %2018
  %2024 = or i1 %2022, %2023
  %2025 = zext i1 %2024 to i8
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2025, i8* %2026, align 1
  %2027 = trunc i64 %2021 to i32
  %2028 = and i32 %2027, 255
  %2029 = call i32 @llvm.ctpop.i32(i32 %2028)
  %2030 = trunc i32 %2029 to i8
  %2031 = and i8 %2030, 1
  %2032 = xor i8 %2031, 1
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2032, i8* %2033, align 1
  %2034 = xor i64 %2018, %2017
  %2035 = xor i64 %2034, %2021
  %2036 = lshr i64 %2035, 4
  %2037 = trunc i64 %2036 to i8
  %2038 = and i8 %2037, 1
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2038, i8* %2039, align 1
  %2040 = icmp eq i64 %2021, 0
  %2041 = zext i1 %2040 to i8
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2041, i8* %2042, align 1
  %2043 = lshr i64 %2021, 63
  %2044 = trunc i64 %2043 to i8
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2044, i8* %2045, align 1
  %2046 = lshr i64 %2017, 63
  %2047 = lshr i64 %2018, 63
  %2048 = xor i64 %2043, %2046
  %2049 = xor i64 %2043, %2047
  %2050 = add i64 %2048, %2049
  %2051 = icmp eq i64 %2050, 2
  %2052 = zext i1 %2051 to i8
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2052, i8* %2053, align 1
  store %struct.Memory* %loadMem_42f3f1, %struct.Memory** %MEMORY
  %loadMem_42f3f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 33
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %2056 to i64*
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 1
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 7
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %RDX.i612 = bitcast %union.anon* %2062 to i64*
  %2063 = load i64, i64* %RAX.i611
  %2064 = load i64, i64* %PC.i610
  %2065 = add i64 %2064, 2
  store i64 %2065, i64* %PC.i610
  %2066 = inttoptr i64 %2063 to i32*
  %2067 = load i32, i32* %2066
  %2068 = zext i32 %2067 to i64
  store i64 %2068, i64* %RDX.i612, align 8
  store %struct.Memory* %loadMem_42f3f4, %struct.Memory** %MEMORY
  %loadMem_42f3f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 33
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %2071 to i64*
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 7
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %RDX.i609 = bitcast %union.anon* %2074 to i64*
  %2075 = load i64, i64* %RDX.i609
  %2076 = load i64, i64* %PC.i608
  %2077 = add i64 %2076, 6
  store i64 %2077, i64* %PC.i608
  %2078 = and i64 512, %2075
  %2079 = trunc i64 %2078 to i32
  store i64 %2078, i64* %RDX.i609, align 8
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2080, align 1
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2081, align 1
  %2082 = icmp eq i32 %2079, 0
  %2083 = zext i1 %2082 to i8
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2083, i8* %2084, align 1
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2085, align 1
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2086, align 1
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2087, align 1
  store %struct.Memory* %loadMem_42f3f6, %struct.Memory** %MEMORY
  %loadMem_42f3fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 33
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %2090 to i64*
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 7
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %EDX.i607 = bitcast %union.anon* %2093 to i32*
  %2094 = load i32, i32* %EDX.i607
  %2095 = zext i32 %2094 to i64
  %2096 = load i64, i64* %PC.i606
  %2097 = add i64 %2096, 3
  store i64 %2097, i64* %PC.i606
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2098, align 1
  %2099 = and i32 %2094, 255
  %2100 = call i32 @llvm.ctpop.i32(i32 %2099)
  %2101 = trunc i32 %2100 to i8
  %2102 = and i8 %2101, 1
  %2103 = xor i8 %2102, 1
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2103, i8* %2104, align 1
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2105, align 1
  %2106 = icmp eq i32 %2094, 0
  %2107 = zext i1 %2106 to i8
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2107, i8* %2108, align 1
  %2109 = lshr i32 %2094, 31
  %2110 = trunc i32 %2109 to i8
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2110, i8* %2111, align 1
  %2112 = lshr i32 %2094, 31
  %2113 = xor i32 %2109, %2112
  %2114 = add i32 %2113, %2112
  %2115 = icmp eq i32 %2114, 2
  %2116 = zext i1 %2115 to i8
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2116, i8* %2117, align 1
  store %struct.Memory* %loadMem_42f3fc, %struct.Memory** %MEMORY
  %loadMem_42f3ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 33
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %2120 to i64*
  %2121 = load i64, i64* %PC.i605
  %2122 = add i64 %2121, 309
  %2123 = load i64, i64* %PC.i605
  %2124 = add i64 %2123, 6
  %2125 = load i64, i64* %PC.i605
  %2126 = add i64 %2125, 6
  store i64 %2126, i64* %PC.i605
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2128 = load i8, i8* %2127, align 1
  store i8 %2128, i8* %BRANCH_TAKEN, align 1
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2130 = icmp ne i8 %2128, 0
  %2131 = select i1 %2130, i64 %2122, i64 %2124
  store i64 %2131, i64* %2129, align 8
  store %struct.Memory* %loadMem_42f3ff, %struct.Memory** %MEMORY
  %loadBr_42f3ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f3ff = icmp eq i8 %loadBr_42f3ff, 1
  br i1 %cmpBr_42f3ff, label %block_.L_42f534, label %block_42f405

block_42f405:                                     ; preds = %block_.L_42f3de
  %loadMem_42f405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 33
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 1
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %RAX.i603 = bitcast %union.anon* %2137 to i64*
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 15
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %2140 to i64*
  %2141 = load i64, i64* %RBP.i604
  %2142 = sub i64 %2141, 24
  %2143 = load i64, i64* %PC.i602
  %2144 = add i64 %2143, 4
  store i64 %2144, i64* %PC.i602
  %2145 = inttoptr i64 %2142 to i64*
  %2146 = load i64, i64* %2145
  store i64 %2146, i64* %RAX.i603, align 8
  store %struct.Memory* %loadMem_42f405, %struct.Memory** %MEMORY
  %loadMem_42f409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 33
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %2149 to i64*
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 1
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %RAX.i601 = bitcast %union.anon* %2152 to i64*
  %2153 = load i64, i64* %RAX.i601
  %2154 = add i64 %2153, 112
  %2155 = load i64, i64* %PC.i600
  %2156 = add i64 %2155, 5
  store i64 %2156, i64* %PC.i600
  %2157 = inttoptr i64 %2154 to i64*
  %2158 = load i64, i64* %2157
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2159, align 1
  %2160 = trunc i64 %2158 to i32
  %2161 = and i32 %2160, 255
  %2162 = call i32 @llvm.ctpop.i32(i32 %2161)
  %2163 = trunc i32 %2162 to i8
  %2164 = and i8 %2163, 1
  %2165 = xor i8 %2164, 1
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2165, i8* %2166, align 1
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2167, align 1
  %2168 = icmp eq i64 %2158, 0
  %2169 = zext i1 %2168 to i8
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2169, i8* %2170, align 1
  %2171 = lshr i64 %2158, 63
  %2172 = trunc i64 %2171 to i8
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2172, i8* %2173, align 1
  %2174 = lshr i64 %2158, 63
  %2175 = xor i64 %2171, %2174
  %2176 = add i64 %2175, %2174
  %2177 = icmp eq i64 %2176, 2
  %2178 = zext i1 %2177 to i8
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2178, i8* %2179, align 1
  store %struct.Memory* %loadMem_42f409, %struct.Memory** %MEMORY
  %loadMem_42f40e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 33
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %2182 to i64*
  %2183 = load i64, i64* %PC.i599
  %2184 = add i64 %2183, 188
  %2185 = load i64, i64* %PC.i599
  %2186 = add i64 %2185, 6
  %2187 = load i64, i64* %PC.i599
  %2188 = add i64 %2187, 6
  store i64 %2188, i64* %PC.i599
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2190 = load i8, i8* %2189, align 1
  %2191 = icmp eq i8 %2190, 0
  %2192 = zext i1 %2191 to i8
  store i8 %2192, i8* %BRANCH_TAKEN, align 1
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2194 = select i1 %2191, i64 %2184, i64 %2186
  store i64 %2194, i64* %2193, align 8
  store %struct.Memory* %loadMem_42f40e, %struct.Memory** %MEMORY
  %loadBr_42f40e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f40e = icmp eq i8 %loadBr_42f40e, 1
  br i1 %cmpBr_42f40e, label %block_.L_42f4ca, label %block_42f414

block_42f414:                                     ; preds = %block_42f405
  %loadMem_42f414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 33
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %2197 to i64*
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 11
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %RDI.i598 = bitcast %union.anon* %2200 to i64*
  %2201 = load i64, i64* %PC.i597
  %2202 = add i64 %2201, 10
  store i64 %2202, i64* %PC.i597
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i598, align 8
  store %struct.Memory* %loadMem_42f414, %struct.Memory** %MEMORY
  %loadMem_42f41e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 33
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %2205 to i64*
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 9
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %RSI.i596 = bitcast %union.anon* %2208 to i64*
  %2209 = load i64, i64* %PC.i595
  %2210 = add i64 %2209, 5
  store i64 %2210, i64* %PC.i595
  store i64 1055, i64* %RSI.i596, align 8
  store %struct.Memory* %loadMem_42f41e, %struct.Memory** %MEMORY
  %loadMem_42f423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 33
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %2213 to i64*
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2215 = getelementptr inbounds %struct.GPR, %struct.GPR* %2214, i32 0, i32 1
  %2216 = getelementptr inbounds %struct.Reg, %struct.Reg* %2215, i32 0, i32 0
  %RAX.i593 = bitcast %union.anon* %2216 to i64*
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 15
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %RBP.i594 = bitcast %union.anon* %2219 to i64*
  %2220 = load i64, i64* %RBP.i594
  %2221 = sub i64 %2220, 24
  %2222 = load i64, i64* %PC.i592
  %2223 = add i64 %2222, 4
  store i64 %2223, i64* %PC.i592
  %2224 = inttoptr i64 %2221 to i64*
  %2225 = load i64, i64* %2224
  store i64 %2225, i64* %RAX.i593, align 8
  store %struct.Memory* %loadMem_42f423, %struct.Memory** %MEMORY
  %loadMem_42f427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 33
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %2228 to i64*
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 1
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %RAX.i591 = bitcast %union.anon* %2231 to i64*
  %2232 = load i64, i64* %RAX.i591
  %2233 = add i64 %2232, 320
  %2234 = load i64, i64* %PC.i590
  %2235 = add i64 %2234, 7
  store i64 %2235, i64* %PC.i590
  %2236 = inttoptr i64 %2233 to i32*
  %2237 = load i32, i32* %2236
  %2238 = sext i32 %2237 to i64
  store i64 %2238, i64* %RAX.i591, align 8
  store %struct.Memory* %loadMem_42f427, %struct.Memory** %MEMORY
  %loadMem_42f42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 33
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %2241 to i64*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 1
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %RAX.i589 = bitcast %union.anon* %2244 to i64*
  %2245 = load i64, i64* %RAX.i589
  %2246 = load i64, i64* %PC.i588
  %2247 = add i64 %2246, 4
  store i64 %2247, i64* %PC.i588
  %2248 = shl i64 %2245, 2
  %2249 = icmp slt i64 %2248, 0
  %2250 = shl i64 %2248, 1
  store i64 %2250, i64* %RAX.i589, align 8
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2252 = zext i1 %2249 to i8
  store i8 %2252, i8* %2251, align 1
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2254 = trunc i64 %2250 to i32
  %2255 = and i32 %2254, 254
  %2256 = call i32 @llvm.ctpop.i32(i32 %2255)
  %2257 = trunc i32 %2256 to i8
  %2258 = and i8 %2257, 1
  %2259 = xor i8 %2258, 1
  store i8 %2259, i8* %2253, align 1
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2260, align 1
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2262 = icmp eq i64 %2250, 0
  %2263 = zext i1 %2262 to i8
  store i8 %2263, i8* %2261, align 1
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2265 = lshr i64 %2250, 63
  %2266 = trunc i64 %2265 to i8
  store i8 %2266, i8* %2264, align 1
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2267, align 1
  store %struct.Memory* %loadMem_42f42e, %struct.Memory** %MEMORY
  %loadMem_42f432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 33
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %2270 to i64*
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 1
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %RAX.i586 = bitcast %union.anon* %2273 to i64*
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 7
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %RDX.i587 = bitcast %union.anon* %2276 to i64*
  %2277 = load i64, i64* %RAX.i586
  %2278 = load i64, i64* %PC.i585
  %2279 = add i64 %2278, 3
  store i64 %2279, i64* %PC.i585
  store i64 %2277, i64* %RDX.i587, align 8
  store %struct.Memory* %loadMem_42f432, %struct.Memory** %MEMORY
  %loadMem1_42f435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 33
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %2282 to i64*
  %2283 = load i64, i64* %PC.i584
  %2284 = add i64 %2283, 93227
  %2285 = load i64, i64* %PC.i584
  %2286 = add i64 %2285, 5
  %2287 = load i64, i64* %PC.i584
  %2288 = add i64 %2287, 5
  store i64 %2288, i64* %PC.i584
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2290 = load i64, i64* %2289, align 8
  %2291 = add i64 %2290, -8
  %2292 = inttoptr i64 %2291 to i64*
  store i64 %2286, i64* %2292
  store i64 %2291, i64* %2289, align 8
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2284, i64* %2293, align 8
  store %struct.Memory* %loadMem1_42f435, %struct.Memory** %MEMORY
  %loadMem2_42f435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f435 = load i64, i64* %3
  %call2_42f435 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_42f435, %struct.Memory* %loadMem2_42f435)
  store %struct.Memory* %call2_42f435, %struct.Memory** %MEMORY
  %loadMem_42f43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 33
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %2296 to i64*
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 11
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %RDI.i583 = bitcast %union.anon* %2299 to i64*
  %2300 = load i64, i64* %PC.i582
  %2301 = add i64 %2300, 10
  store i64 %2301, i64* %PC.i582
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i583, align 8
  store %struct.Memory* %loadMem_42f43a, %struct.Memory** %MEMORY
  %loadMem_42f444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 33
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %2304 to i64*
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 9
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %RSI.i581 = bitcast %union.anon* %2307 to i64*
  %2308 = load i64, i64* %PC.i580
  %2309 = add i64 %2308, 5
  store i64 %2309, i64* %PC.i580
  store i64 1056, i64* %RSI.i581, align 8
  store %struct.Memory* %loadMem_42f444, %struct.Memory** %MEMORY
  %loadMem_42f449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 33
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %2312 to i64*
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 7
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %RDX.i578 = bitcast %union.anon* %2315 to i64*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 15
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %2318 to i64*
  %2319 = load i64, i64* %RBP.i579
  %2320 = sub i64 %2319, 24
  %2321 = load i64, i64* %PC.i577
  %2322 = add i64 %2321, 4
  store i64 %2322, i64* %PC.i577
  %2323 = inttoptr i64 %2320 to i64*
  %2324 = load i64, i64* %2323
  store i64 %2324, i64* %RDX.i578, align 8
  store %struct.Memory* %loadMem_42f449, %struct.Memory** %MEMORY
  %loadMem_42f44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 33
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %2327 to i64*
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2329 = getelementptr inbounds %struct.GPR, %struct.GPR* %2328, i32 0, i32 1
  %2330 = getelementptr inbounds %struct.Reg, %struct.Reg* %2329, i32 0, i32 0
  %RAX.i575 = bitcast %union.anon* %2330 to i64*
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 7
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %RDX.i576 = bitcast %union.anon* %2333 to i64*
  %2334 = load i64, i64* %RDX.i576
  %2335 = add i64 %2334, 112
  %2336 = load i64, i64* %RAX.i575
  %2337 = load i64, i64* %PC.i574
  %2338 = add i64 %2337, 4
  store i64 %2338, i64* %PC.i574
  %2339 = inttoptr i64 %2335 to i64*
  store i64 %2336, i64* %2339
  store %struct.Memory* %loadMem_42f44d, %struct.Memory** %MEMORY
  %loadMem_42f451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 33
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 1
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %RAX.i572 = bitcast %union.anon* %2345 to i64*
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 15
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %2348 to i64*
  %2349 = load i64, i64* %RBP.i573
  %2350 = sub i64 %2349, 24
  %2351 = load i64, i64* %PC.i571
  %2352 = add i64 %2351, 4
  store i64 %2352, i64* %PC.i571
  %2353 = inttoptr i64 %2350 to i64*
  %2354 = load i64, i64* %2353
  store i64 %2354, i64* %RAX.i572, align 8
  store %struct.Memory* %loadMem_42f451, %struct.Memory** %MEMORY
  %loadMem_42f455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 33
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %2357 to i64*
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 1
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %2360 to i64*
  %2361 = load i64, i64* %RAX.i570
  %2362 = add i64 %2361, 320
  %2363 = load i64, i64* %PC.i569
  %2364 = add i64 %2363, 7
  store i64 %2364, i64* %PC.i569
  %2365 = inttoptr i64 %2362 to i32*
  %2366 = load i32, i32* %2365
  %2367 = sext i32 %2366 to i64
  store i64 %2367, i64* %RAX.i570, align 8
  store %struct.Memory* %loadMem_42f455, %struct.Memory** %MEMORY
  %loadMem_42f45c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 33
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %2370 to i64*
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 1
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %RAX.i568 = bitcast %union.anon* %2373 to i64*
  %2374 = load i64, i64* %RAX.i568
  %2375 = load i64, i64* %PC.i567
  %2376 = add i64 %2375, 4
  store i64 %2376, i64* %PC.i567
  %2377 = shl i64 %2374, 1
  %2378 = icmp slt i64 %2377, 0
  %2379 = shl i64 %2377, 1
  store i64 %2379, i64* %RAX.i568, align 8
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2381 = zext i1 %2378 to i8
  store i8 %2381, i8* %2380, align 1
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2383 = trunc i64 %2379 to i32
  %2384 = and i32 %2383, 254
  %2385 = call i32 @llvm.ctpop.i32(i32 %2384)
  %2386 = trunc i32 %2385 to i8
  %2387 = and i8 %2386, 1
  %2388 = xor i8 %2387, 1
  store i8 %2388, i8* %2382, align 1
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2389, align 1
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2391 = icmp eq i64 %2379, 0
  %2392 = zext i1 %2391 to i8
  store i8 %2392, i8* %2390, align 1
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2394 = lshr i64 %2379, 63
  %2395 = trunc i64 %2394 to i8
  store i8 %2395, i8* %2393, align 1
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2396, align 1
  store %struct.Memory* %loadMem_42f45c, %struct.Memory** %MEMORY
  %loadMem_42f460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 33
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 1
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 7
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %RDX.i566 = bitcast %union.anon* %2405 to i64*
  %2406 = load i64, i64* %RAX.i565
  %2407 = load i64, i64* %PC.i564
  %2408 = add i64 %2407, 3
  store i64 %2408, i64* %PC.i564
  store i64 %2406, i64* %RDX.i566, align 8
  store %struct.Memory* %loadMem_42f460, %struct.Memory** %MEMORY
  %loadMem1_42f463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 33
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %2411 to i64*
  %2412 = load i64, i64* %PC.i563
  %2413 = add i64 %2412, 93181
  %2414 = load i64, i64* %PC.i563
  %2415 = add i64 %2414, 5
  %2416 = load i64, i64* %PC.i563
  %2417 = add i64 %2416, 5
  store i64 %2417, i64* %PC.i563
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2419 = load i64, i64* %2418, align 8
  %2420 = add i64 %2419, -8
  %2421 = inttoptr i64 %2420 to i64*
  store i64 %2415, i64* %2421
  store i64 %2420, i64* %2418, align 8
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2413, i64* %2422, align 8
  store %struct.Memory* %loadMem1_42f463, %struct.Memory** %MEMORY
  %loadMem2_42f463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f463 = load i64, i64* %3
  %call2_42f463 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_42f463, %struct.Memory* %loadMem2_42f463)
  store %struct.Memory* %call2_42f463, %struct.Memory** %MEMORY
  %loadMem_42f468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 33
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %2425 to i64*
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 7
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %RDX.i561 = bitcast %union.anon* %2428 to i64*
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 15
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %2431 to i64*
  %2432 = load i64, i64* %RBP.i562
  %2433 = sub i64 %2432, 24
  %2434 = load i64, i64* %PC.i560
  %2435 = add i64 %2434, 4
  store i64 %2435, i64* %PC.i560
  %2436 = inttoptr i64 %2433 to i64*
  %2437 = load i64, i64* %2436
  store i64 %2437, i64* %RDX.i561, align 8
  store %struct.Memory* %loadMem_42f468, %struct.Memory** %MEMORY
  %loadMem_42f46c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 33
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %2440 to i64*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 1
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %RAX.i558 = bitcast %union.anon* %2443 to i64*
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 7
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %RDX.i559 = bitcast %union.anon* %2446 to i64*
  %2447 = load i64, i64* %RDX.i559
  %2448 = add i64 %2447, 336
  %2449 = load i64, i64* %RAX.i558
  %2450 = load i64, i64* %PC.i557
  %2451 = add i64 %2450, 7
  store i64 %2451, i64* %PC.i557
  %2452 = inttoptr i64 %2448 to i64*
  store i64 %2449, i64* %2452
  store %struct.Memory* %loadMem_42f46c, %struct.Memory** %MEMORY
  %loadMem_42f473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 33
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %2455 to i64*
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 15
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %2458 to i64*
  %2459 = load i64, i64* %RBP.i556
  %2460 = sub i64 %2459, 32
  %2461 = load i64, i64* %PC.i555
  %2462 = add i64 %2461, 7
  store i64 %2462, i64* %PC.i555
  %2463 = inttoptr i64 %2460 to i32*
  store i32 0, i32* %2463
  store %struct.Memory* %loadMem_42f473, %struct.Memory** %MEMORY
  br label %block_.L_42f47a

block_.L_42f47a:                                  ; preds = %block_42f48d, %block_42f414
  %loadMem_42f47a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 33
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 1
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RAX.i553 = bitcast %union.anon* %2469 to i64*
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 15
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %2472 to i64*
  %2473 = load i64, i64* %RBP.i554
  %2474 = sub i64 %2473, 32
  %2475 = load i64, i64* %PC.i552
  %2476 = add i64 %2475, 3
  store i64 %2476, i64* %PC.i552
  %2477 = inttoptr i64 %2474 to i32*
  %2478 = load i32, i32* %2477
  %2479 = zext i32 %2478 to i64
  store i64 %2479, i64* %RAX.i553, align 8
  store %struct.Memory* %loadMem_42f47a, %struct.Memory** %MEMORY
  %loadMem_42f47d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 33
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 5
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RCX.i550 = bitcast %union.anon* %2485 to i64*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 15
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %2488 to i64*
  %2489 = load i64, i64* %RBP.i551
  %2490 = sub i64 %2489, 24
  %2491 = load i64, i64* %PC.i549
  %2492 = add i64 %2491, 4
  store i64 %2492, i64* %PC.i549
  %2493 = inttoptr i64 %2490 to i64*
  %2494 = load i64, i64* %2493
  store i64 %2494, i64* %RCX.i550, align 8
  store %struct.Memory* %loadMem_42f47d, %struct.Memory** %MEMORY
  %loadMem_42f481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 33
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 1
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %EAX.i547 = bitcast %union.anon* %2500 to i32*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 5
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %RCX.i548 = bitcast %union.anon* %2503 to i64*
  %2504 = load i32, i32* %EAX.i547
  %2505 = zext i32 %2504 to i64
  %2506 = load i64, i64* %RCX.i548
  %2507 = add i64 %2506, 320
  %2508 = load i64, i64* %PC.i546
  %2509 = add i64 %2508, 6
  store i64 %2509, i64* %PC.i546
  %2510 = inttoptr i64 %2507 to i32*
  %2511 = load i32, i32* %2510
  %2512 = sub i32 %2504, %2511
  %2513 = icmp ult i32 %2504, %2511
  %2514 = zext i1 %2513 to i8
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2514, i8* %2515, align 1
  %2516 = and i32 %2512, 255
  %2517 = call i32 @llvm.ctpop.i32(i32 %2516)
  %2518 = trunc i32 %2517 to i8
  %2519 = and i8 %2518, 1
  %2520 = xor i8 %2519, 1
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2520, i8* %2521, align 1
  %2522 = xor i32 %2511, %2504
  %2523 = xor i32 %2522, %2512
  %2524 = lshr i32 %2523, 4
  %2525 = trunc i32 %2524 to i8
  %2526 = and i8 %2525, 1
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2526, i8* %2527, align 1
  %2528 = icmp eq i32 %2512, 0
  %2529 = zext i1 %2528 to i8
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2529, i8* %2530, align 1
  %2531 = lshr i32 %2512, 31
  %2532 = trunc i32 %2531 to i8
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2532, i8* %2533, align 1
  %2534 = lshr i32 %2504, 31
  %2535 = lshr i32 %2511, 31
  %2536 = xor i32 %2535, %2534
  %2537 = xor i32 %2531, %2534
  %2538 = add i32 %2537, %2536
  %2539 = icmp eq i32 %2538, 2
  %2540 = zext i1 %2539 to i8
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2540, i8* %2541, align 1
  store %struct.Memory* %loadMem_42f481, %struct.Memory** %MEMORY
  %loadMem_42f487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 33
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %2544 to i64*
  %2545 = load i64, i64* %PC.i545
  %2546 = add i64 %2545, 62
  %2547 = load i64, i64* %PC.i545
  %2548 = add i64 %2547, 6
  %2549 = load i64, i64* %PC.i545
  %2550 = add i64 %2549, 6
  store i64 %2550, i64* %PC.i545
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2552 = load i8, i8* %2551, align 1
  %2553 = icmp ne i8 %2552, 0
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2555 = load i8, i8* %2554, align 1
  %2556 = icmp ne i8 %2555, 0
  %2557 = xor i1 %2553, %2556
  %2558 = xor i1 %2557, true
  %2559 = zext i1 %2558 to i8
  store i8 %2559, i8* %BRANCH_TAKEN, align 1
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2561 = select i1 %2557, i64 %2548, i64 %2546
  store i64 %2561, i64* %2560, align 8
  store %struct.Memory* %loadMem_42f487, %struct.Memory** %MEMORY
  %loadBr_42f487 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f487 = icmp eq i8 %loadBr_42f487, 1
  br i1 %cmpBr_42f487, label %block_.L_42f4c5, label %block_42f48d

block_42f48d:                                     ; preds = %block_.L_42f47a
  %loadMem_42f48d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 33
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 1
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %RAX.i543 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 15
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %2570 to i64*
  %2571 = load i64, i64* %RBP.i544
  %2572 = sub i64 %2571, 24
  %2573 = load i64, i64* %PC.i542
  %2574 = add i64 %2573, 4
  store i64 %2574, i64* %PC.i542
  %2575 = inttoptr i64 %2572 to i64*
  %2576 = load i64, i64* %2575
  store i64 %2576, i64* %RAX.i543, align 8
  store %struct.Memory* %loadMem_42f48d, %struct.Memory** %MEMORY
  %loadMem_42f491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 33
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %2579 to i64*
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 1
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %RAX.i541 = bitcast %union.anon* %2582 to i64*
  %2583 = load i64, i64* %RAX.i541
  %2584 = add i64 %2583, 112
  %2585 = load i64, i64* %PC.i540
  %2586 = add i64 %2585, 4
  store i64 %2586, i64* %PC.i540
  %2587 = inttoptr i64 %2584 to i64*
  %2588 = load i64, i64* %2587
  store i64 %2588, i64* %RAX.i541, align 8
  store %struct.Memory* %loadMem_42f491, %struct.Memory** %MEMORY
  %loadMem_42f495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 33
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %2591 to i64*
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 5
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %RCX.i538 = bitcast %union.anon* %2594 to i64*
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 15
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %2597 to i64*
  %2598 = load i64, i64* %RBP.i539
  %2599 = sub i64 %2598, 32
  %2600 = load i64, i64* %PC.i537
  %2601 = add i64 %2600, 4
  store i64 %2601, i64* %PC.i537
  %2602 = inttoptr i64 %2599 to i32*
  %2603 = load i32, i32* %2602
  %2604 = sext i32 %2603 to i64
  store i64 %2604, i64* %RCX.i538, align 8
  store %struct.Memory* %loadMem_42f495, %struct.Memory** %MEMORY
  %loadMem_42f499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 1
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 5
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RCX.i536 = bitcast %union.anon* %2613 to i64*
  %2614 = load i64, i64* %RAX.i535
  %2615 = load i64, i64* %RCX.i536
  %2616 = mul i64 %2615, 8
  %2617 = add i64 %2616, %2614
  %2618 = load i64, i64* %PC.i534
  %2619 = add i64 %2618, 8
  store i64 %2619, i64* %PC.i534
  %2620 = inttoptr i64 %2617 to i64*
  store i64 0, i64* %2620
  store %struct.Memory* %loadMem_42f499, %struct.Memory** %MEMORY
  %loadMem_42f4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 33
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 1
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RAX.i532 = bitcast %union.anon* %2626 to i64*
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 15
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %2629 to i64*
  %2630 = load i64, i64* %RBP.i533
  %2631 = sub i64 %2630, 24
  %2632 = load i64, i64* %PC.i531
  %2633 = add i64 %2632, 4
  store i64 %2633, i64* %PC.i531
  %2634 = inttoptr i64 %2631 to i64*
  %2635 = load i64, i64* %2634
  store i64 %2635, i64* %RAX.i532, align 8
  store %struct.Memory* %loadMem_42f4a1, %struct.Memory** %MEMORY
  %loadMem_42f4a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 33
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 1
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RAX.i530 = bitcast %union.anon* %2641 to i64*
  %2642 = load i64, i64* %RAX.i530
  %2643 = add i64 %2642, 336
  %2644 = load i64, i64* %PC.i529
  %2645 = add i64 %2644, 7
  store i64 %2645, i64* %PC.i529
  %2646 = inttoptr i64 %2643 to i64*
  %2647 = load i64, i64* %2646
  store i64 %2647, i64* %RAX.i530, align 8
  store %struct.Memory* %loadMem_42f4a5, %struct.Memory** %MEMORY
  %loadMem_42f4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 5
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %RCX.i527 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 15
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %2656 to i64*
  %2657 = load i64, i64* %RBP.i528
  %2658 = sub i64 %2657, 32
  %2659 = load i64, i64* %PC.i526
  %2660 = add i64 %2659, 4
  store i64 %2660, i64* %PC.i526
  %2661 = inttoptr i64 %2658 to i32*
  %2662 = load i32, i32* %2661
  %2663 = sext i32 %2662 to i64
  store i64 %2663, i64* %RCX.i527, align 8
  store %struct.Memory* %loadMem_42f4ac, %struct.Memory** %MEMORY
  %loadMem_42f4b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 33
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %2666 to i64*
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 1
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 5
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %2672 to i64*
  %2673 = load i64, i64* %RAX.i524
  %2674 = load i64, i64* %RCX.i525
  %2675 = mul i64 %2674, 4
  %2676 = add i64 %2675, %2673
  %2677 = load i64, i64* %PC.i523
  %2678 = add i64 %2677, 7
  store i64 %2678, i64* %PC.i523
  %2679 = inttoptr i64 %2676 to i32*
  store i32 0, i32* %2679
  store %struct.Memory* %loadMem_42f4b0, %struct.Memory** %MEMORY
  %loadMem_42f4b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 33
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 1
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %2685 to i64*
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 15
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %2688 to i64*
  %2689 = load i64, i64* %RBP.i522
  %2690 = sub i64 %2689, 32
  %2691 = load i64, i64* %PC.i520
  %2692 = add i64 %2691, 3
  store i64 %2692, i64* %PC.i520
  %2693 = inttoptr i64 %2690 to i32*
  %2694 = load i32, i32* %2693
  %2695 = zext i32 %2694 to i64
  store i64 %2695, i64* %RAX.i521, align 8
  store %struct.Memory* %loadMem_42f4b7, %struct.Memory** %MEMORY
  %loadMem_42f4ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 33
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %2698 to i64*
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 1
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %RAX.i519 = bitcast %union.anon* %2701 to i64*
  %2702 = load i64, i64* %RAX.i519
  %2703 = load i64, i64* %PC.i518
  %2704 = add i64 %2703, 3
  store i64 %2704, i64* %PC.i518
  %2705 = trunc i64 %2702 to i32
  %2706 = add i32 1, %2705
  %2707 = zext i32 %2706 to i64
  store i64 %2707, i64* %RAX.i519, align 8
  %2708 = icmp ult i32 %2706, %2705
  %2709 = icmp ult i32 %2706, 1
  %2710 = or i1 %2708, %2709
  %2711 = zext i1 %2710 to i8
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2711, i8* %2712, align 1
  %2713 = and i32 %2706, 255
  %2714 = call i32 @llvm.ctpop.i32(i32 %2713)
  %2715 = trunc i32 %2714 to i8
  %2716 = and i8 %2715, 1
  %2717 = xor i8 %2716, 1
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2717, i8* %2718, align 1
  %2719 = xor i64 1, %2702
  %2720 = trunc i64 %2719 to i32
  %2721 = xor i32 %2720, %2706
  %2722 = lshr i32 %2721, 4
  %2723 = trunc i32 %2722 to i8
  %2724 = and i8 %2723, 1
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2724, i8* %2725, align 1
  %2726 = icmp eq i32 %2706, 0
  %2727 = zext i1 %2726 to i8
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2727, i8* %2728, align 1
  %2729 = lshr i32 %2706, 31
  %2730 = trunc i32 %2729 to i8
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2730, i8* %2731, align 1
  %2732 = lshr i32 %2705, 31
  %2733 = xor i32 %2729, %2732
  %2734 = add i32 %2733, %2729
  %2735 = icmp eq i32 %2734, 2
  %2736 = zext i1 %2735 to i8
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2736, i8* %2737, align 1
  store %struct.Memory* %loadMem_42f4ba, %struct.Memory** %MEMORY
  %loadMem_42f4bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 33
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 1
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %EAX.i516 = bitcast %union.anon* %2743 to i32*
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 15
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %2746 to i64*
  %2747 = load i64, i64* %RBP.i517
  %2748 = sub i64 %2747, 32
  %2749 = load i32, i32* %EAX.i516
  %2750 = zext i32 %2749 to i64
  %2751 = load i64, i64* %PC.i515
  %2752 = add i64 %2751, 3
  store i64 %2752, i64* %PC.i515
  %2753 = inttoptr i64 %2748 to i32*
  store i32 %2749, i32* %2753
  store %struct.Memory* %loadMem_42f4bd, %struct.Memory** %MEMORY
  %loadMem_42f4c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 33
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %2756 to i64*
  %2757 = load i64, i64* %PC.i514
  %2758 = add i64 %2757, -70
  %2759 = load i64, i64* %PC.i514
  %2760 = add i64 %2759, 5
  store i64 %2760, i64* %PC.i514
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2758, i64* %2761, align 8
  store %struct.Memory* %loadMem_42f4c0, %struct.Memory** %MEMORY
  br label %block_.L_42f47a

block_.L_42f4c5:                                  ; preds = %block_.L_42f47a
  %loadMem_42f4c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 33
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %2764 to i64*
  %2765 = load i64, i64* %PC.i513
  %2766 = add i64 %2765, 5
  %2767 = load i64, i64* %PC.i513
  %2768 = add i64 %2767, 5
  store i64 %2768, i64* %PC.i513
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2766, i64* %2769, align 8
  store %struct.Memory* %loadMem_42f4c5, %struct.Memory** %MEMORY
  br label %block_.L_42f4ca

block_.L_42f4ca:                                  ; preds = %block_.L_42f4c5, %block_42f405
  %loadMem_42f4ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 33
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %2772 to i64*
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 1
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 15
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %2778 to i64*
  %2779 = load i64, i64* %RBP.i512
  %2780 = sub i64 %2779, 24
  %2781 = load i64, i64* %PC.i510
  %2782 = add i64 %2781, 4
  store i64 %2782, i64* %PC.i510
  %2783 = inttoptr i64 %2780 to i64*
  %2784 = load i64, i64* %2783
  store i64 %2784, i64* %RAX.i511, align 8
  store %struct.Memory* %loadMem_42f4ca, %struct.Memory** %MEMORY
  %loadMem_42f4ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 33
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %2787 to i64*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 1
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %2790 to i64*
  %2791 = load i64, i64* %RAX.i509
  %2792 = load i64, i64* %PC.i508
  %2793 = add i64 %2792, 3
  store i64 %2793, i64* %PC.i508
  %2794 = inttoptr i64 %2791 to i64*
  %2795 = load i64, i64* %2794
  store i64 %2795, i64* %RAX.i509, align 8
  store %struct.Memory* %loadMem_42f4ce, %struct.Memory** %MEMORY
  %loadMem_42f4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2797 = getelementptr inbounds %struct.GPR, %struct.GPR* %2796, i32 0, i32 33
  %2798 = getelementptr inbounds %struct.Reg, %struct.Reg* %2797, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %2798 to i64*
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2800 = getelementptr inbounds %struct.GPR, %struct.GPR* %2799, i32 0, i32 5
  %2801 = getelementptr inbounds %struct.Reg, %struct.Reg* %2800, i32 0, i32 0
  %RCX.i506 = bitcast %union.anon* %2801 to i64*
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2803 = getelementptr inbounds %struct.GPR, %struct.GPR* %2802, i32 0, i32 15
  %2804 = getelementptr inbounds %struct.Reg, %struct.Reg* %2803, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %2804 to i64*
  %2805 = load i64, i64* %RBP.i507
  %2806 = sub i64 %2805, 28
  %2807 = load i64, i64* %PC.i505
  %2808 = add i64 %2807, 4
  store i64 %2808, i64* %PC.i505
  %2809 = inttoptr i64 %2806 to i32*
  %2810 = load i32, i32* %2809
  %2811 = sext i32 %2810 to i64
  store i64 %2811, i64* %RCX.i506, align 8
  store %struct.Memory* %loadMem_42f4d1, %struct.Memory** %MEMORY
  %loadMem_42f4d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 33
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %2814 to i64*
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 1
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %2817 to i64*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 5
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %RCX.i503 = bitcast %union.anon* %2820 to i64*
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 11
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %RDI.i504 = bitcast %union.anon* %2823 to i64*
  %2824 = load i64, i64* %RAX.i502
  %2825 = load i64, i64* %RCX.i503
  %2826 = mul i64 %2825, 8
  %2827 = add i64 %2826, %2824
  %2828 = load i64, i64* %PC.i501
  %2829 = add i64 %2828, 4
  store i64 %2829, i64* %PC.i501
  %2830 = inttoptr i64 %2827 to i64*
  %2831 = load i64, i64* %2830
  store i64 %2831, i64* %RDI.i504, align 8
  store %struct.Memory* %loadMem_42f4d5, %struct.Memory** %MEMORY
  %loadMem_42f4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 33
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %2834 to i64*
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 1
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %2837 to i64*
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2839 = getelementptr inbounds %struct.GPR, %struct.GPR* %2838, i32 0, i32 15
  %2840 = getelementptr inbounds %struct.Reg, %struct.Reg* %2839, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %2840 to i64*
  %2841 = load i64, i64* %RBP.i500
  %2842 = sub i64 %2841, 24
  %2843 = load i64, i64* %PC.i498
  %2844 = add i64 %2843, 4
  store i64 %2844, i64* %PC.i498
  %2845 = inttoptr i64 %2842 to i64*
  %2846 = load i64, i64* %2845
  store i64 %2846, i64* %RAX.i499, align 8
  store %struct.Memory* %loadMem_42f4d9, %struct.Memory** %MEMORY
  %loadMem_42f4dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 33
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %2849 to i64*
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 1
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %2852 to i64*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 9
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %RSI.i497 = bitcast %union.anon* %2855 to i64*
  %2856 = load i64, i64* %RAX.i496
  %2857 = add i64 %2856, 24
  %2858 = load i64, i64* %PC.i495
  %2859 = add i64 %2858, 3
  store i64 %2859, i64* %PC.i495
  %2860 = inttoptr i64 %2857 to i32*
  %2861 = load i32, i32* %2860
  %2862 = zext i32 %2861 to i64
  store i64 %2862, i64* %RSI.i497, align 8
  store %struct.Memory* %loadMem_42f4dd, %struct.Memory** %MEMORY
  %loadMem_42f4e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %2865 to i64*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 1
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %RAX.i493 = bitcast %union.anon* %2868 to i64*
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 15
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %2871 to i64*
  %2872 = load i64, i64* %RBP.i494
  %2873 = sub i64 %2872, 16
  %2874 = load i64, i64* %PC.i492
  %2875 = add i64 %2874, 4
  store i64 %2875, i64* %PC.i492
  %2876 = inttoptr i64 %2873 to i64*
  %2877 = load i64, i64* %2876
  store i64 %2877, i64* %RAX.i493, align 8
  store %struct.Memory* %loadMem_42f4e0, %struct.Memory** %MEMORY
  %loadMem_42f4e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 33
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %2880 to i64*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 1
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %2883 to i64*
  %2884 = load i64, i64* %RAX.i491
  %2885 = add i64 %2884, 40
  %2886 = load i64, i64* %PC.i490
  %2887 = add i64 %2886, 4
  store i64 %2887, i64* %PC.i490
  %2888 = inttoptr i64 %2885 to i64*
  %2889 = load i64, i64* %2888
  store i64 %2889, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_42f4e4, %struct.Memory** %MEMORY
  %loadMem_42f4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 33
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %2892 to i64*
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 5
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %RCX.i488 = bitcast %union.anon* %2895 to i64*
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 15
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %2898 to i64*
  %2899 = load i64, i64* %RBP.i489
  %2900 = sub i64 %2899, 28
  %2901 = load i64, i64* %PC.i487
  %2902 = add i64 %2901, 4
  store i64 %2902, i64* %PC.i487
  %2903 = inttoptr i64 %2900 to i32*
  %2904 = load i32, i32* %2903
  %2905 = sext i32 %2904 to i64
  store i64 %2905, i64* %RCX.i488, align 8
  store %struct.Memory* %loadMem_42f4e8, %struct.Memory** %MEMORY
  %loadMem_42f4ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 33
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %2908 to i64*
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 5
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %2911 to i64*
  %2912 = load i64, i64* %RCX.i486
  %2913 = load i64, i64* %PC.i485
  %2914 = add i64 %2913, 7
  store i64 %2914, i64* %PC.i485
  %2915 = sext i64 %2912 to i128
  %2916 = and i128 %2915, -18446744073709551616
  %2917 = zext i64 %2912 to i128
  %2918 = or i128 %2916, %2917
  %2919 = mul i128 360, %2918
  %2920 = trunc i128 %2919 to i64
  store i64 %2920, i64* %RCX.i486, align 8
  %2921 = sext i64 %2920 to i128
  %2922 = icmp ne i128 %2921, %2919
  %2923 = zext i1 %2922 to i8
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2923, i8* %2924, align 1
  %2925 = trunc i128 %2919 to i32
  %2926 = and i32 %2925, 255
  %2927 = call i32 @llvm.ctpop.i32(i32 %2926)
  %2928 = trunc i32 %2927 to i8
  %2929 = and i8 %2928, 1
  %2930 = xor i8 %2929, 1
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2930, i8* %2931, align 1
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2932, align 1
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2933, align 1
  %2934 = lshr i64 %2920, 63
  %2935 = trunc i64 %2934 to i8
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2935, i8* %2936, align 1
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2923, i8* %2937, align 1
  store %struct.Memory* %loadMem_42f4ec, %struct.Memory** %MEMORY
  %loadMem_42f4f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 1
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %2943 to i64*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 5
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %RCX.i484 = bitcast %union.anon* %2946 to i64*
  %2947 = load i64, i64* %RAX.i483
  %2948 = load i64, i64* %RCX.i484
  %2949 = load i64, i64* %PC.i482
  %2950 = add i64 %2949, 3
  store i64 %2950, i64* %PC.i482
  %2951 = add i64 %2948, %2947
  store i64 %2951, i64* %RAX.i483, align 8
  %2952 = icmp ult i64 %2951, %2947
  %2953 = icmp ult i64 %2951, %2948
  %2954 = or i1 %2952, %2953
  %2955 = zext i1 %2954 to i8
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2955, i8* %2956, align 1
  %2957 = trunc i64 %2951 to i32
  %2958 = and i32 %2957, 255
  %2959 = call i32 @llvm.ctpop.i32(i32 %2958)
  %2960 = trunc i32 %2959 to i8
  %2961 = and i8 %2960, 1
  %2962 = xor i8 %2961, 1
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2962, i8* %2963, align 1
  %2964 = xor i64 %2948, %2947
  %2965 = xor i64 %2964, %2951
  %2966 = lshr i64 %2965, 4
  %2967 = trunc i64 %2966 to i8
  %2968 = and i8 %2967, 1
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2968, i8* %2969, align 1
  %2970 = icmp eq i64 %2951, 0
  %2971 = zext i1 %2970 to i8
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2971, i8* %2972, align 1
  %2973 = lshr i64 %2951, 63
  %2974 = trunc i64 %2973 to i8
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2974, i8* %2975, align 1
  %2976 = lshr i64 %2947, 63
  %2977 = lshr i64 %2948, 63
  %2978 = xor i64 %2973, %2976
  %2979 = xor i64 %2973, %2977
  %2980 = add i64 %2978, %2979
  %2981 = icmp eq i64 %2980, 2
  %2982 = zext i1 %2981 to i8
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2982, i8* %2983, align 1
  store %struct.Memory* %loadMem_42f4f3, %struct.Memory** %MEMORY
  %loadMem_42f4f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 33
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %2986 to i64*
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 1
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %2989 to i64*
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 7
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %RDX.i481 = bitcast %union.anon* %2992 to i64*
  %2993 = load i64, i64* %RAX.i480
  %2994 = add i64 %2993, 344
  %2995 = load i64, i64* %PC.i479
  %2996 = add i64 %2995, 7
  store i64 %2996, i64* %PC.i479
  %2997 = inttoptr i64 %2994 to i64*
  %2998 = load i64, i64* %2997
  store i64 %2998, i64* %RDX.i481, align 8
  store %struct.Memory* %loadMem_42f4f6, %struct.Memory** %MEMORY
  %loadMem_42f4fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 33
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 1
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %3004 to i64*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 15
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %3007 to i64*
  %3008 = load i64, i64* %RBP.i478
  %3009 = sub i64 %3008, 24
  %3010 = load i64, i64* %PC.i476
  %3011 = add i64 %3010, 4
  store i64 %3011, i64* %PC.i476
  %3012 = inttoptr i64 %3009 to i64*
  %3013 = load i64, i64* %3012
  store i64 %3013, i64* %RAX.i477, align 8
  store %struct.Memory* %loadMem_42f4fd, %struct.Memory** %MEMORY
  %loadMem_42f501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 33
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %3016 to i64*
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 1
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %RAX.i475 = bitcast %union.anon* %3019 to i64*
  %3020 = load i64, i64* %RAX.i475
  %3021 = add i64 %3020, 112
  %3022 = load i64, i64* %PC.i474
  %3023 = add i64 %3022, 4
  store i64 %3023, i64* %PC.i474
  %3024 = inttoptr i64 %3021 to i64*
  %3025 = load i64, i64* %3024
  store i64 %3025, i64* %RAX.i475, align 8
  store %struct.Memory* %loadMem_42f501, %struct.Memory** %MEMORY
  %loadMem_42f505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 33
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %3028 to i64*
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 5
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %RCX.i472 = bitcast %union.anon* %3031 to i64*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 15
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %3034 to i64*
  %3035 = load i64, i64* %RBP.i473
  %3036 = sub i64 %3035, 28
  %3037 = load i64, i64* %PC.i471
  %3038 = add i64 %3037, 4
  store i64 %3038, i64* %PC.i471
  %3039 = inttoptr i64 %3036 to i32*
  %3040 = load i32, i32* %3039
  %3041 = sext i32 %3040 to i64
  store i64 %3041, i64* %RCX.i472, align 8
  store %struct.Memory* %loadMem_42f505, %struct.Memory** %MEMORY
  %loadMem_42f509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 33
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %3044 to i64*
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 5
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %3047 to i64*
  %3048 = load i64, i64* %RCX.i470
  %3049 = load i64, i64* %PC.i469
  %3050 = add i64 %3049, 4
  store i64 %3050, i64* %PC.i469
  %3051 = shl i64 %3048, 2
  %3052 = icmp slt i64 %3051, 0
  %3053 = shl i64 %3051, 1
  store i64 %3053, i64* %RCX.i470, align 8
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3055 = zext i1 %3052 to i8
  store i8 %3055, i8* %3054, align 1
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3057 = trunc i64 %3053 to i32
  %3058 = and i32 %3057, 254
  %3059 = call i32 @llvm.ctpop.i32(i32 %3058)
  %3060 = trunc i32 %3059 to i8
  %3061 = and i8 %3060, 1
  %3062 = xor i8 %3061, 1
  store i8 %3062, i8* %3056, align 1
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3063, align 1
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3065 = icmp eq i64 %3053, 0
  %3066 = zext i1 %3065 to i8
  store i8 %3066, i8* %3064, align 1
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3068 = lshr i64 %3053, 63
  %3069 = trunc i64 %3068 to i8
  store i8 %3069, i8* %3067, align 1
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3070, align 1
  store %struct.Memory* %loadMem_42f509, %struct.Memory** %MEMORY
  %loadMem_42f50d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 33
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %3073 to i64*
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 1
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %RAX.i467 = bitcast %union.anon* %3076 to i64*
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 5
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %RCX.i468 = bitcast %union.anon* %3079 to i64*
  %3080 = load i64, i64* %RAX.i467
  %3081 = load i64, i64* %RCX.i468
  %3082 = load i64, i64* %PC.i466
  %3083 = add i64 %3082, 3
  store i64 %3083, i64* %PC.i466
  %3084 = add i64 %3081, %3080
  store i64 %3084, i64* %RAX.i467, align 8
  %3085 = icmp ult i64 %3084, %3080
  %3086 = icmp ult i64 %3084, %3081
  %3087 = or i1 %3085, %3086
  %3088 = zext i1 %3087 to i8
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3088, i8* %3089, align 1
  %3090 = trunc i64 %3084 to i32
  %3091 = and i32 %3090, 255
  %3092 = call i32 @llvm.ctpop.i32(i32 %3091)
  %3093 = trunc i32 %3092 to i8
  %3094 = and i8 %3093, 1
  %3095 = xor i8 %3094, 1
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3095, i8* %3096, align 1
  %3097 = xor i64 %3081, %3080
  %3098 = xor i64 %3097, %3084
  %3099 = lshr i64 %3098, 4
  %3100 = trunc i64 %3099 to i8
  %3101 = and i8 %3100, 1
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3101, i8* %3102, align 1
  %3103 = icmp eq i64 %3084, 0
  %3104 = zext i1 %3103 to i8
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3104, i8* %3105, align 1
  %3106 = lshr i64 %3084, 63
  %3107 = trunc i64 %3106 to i8
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3107, i8* %3108, align 1
  %3109 = lshr i64 %3080, 63
  %3110 = lshr i64 %3081, 63
  %3111 = xor i64 %3106, %3109
  %3112 = xor i64 %3106, %3110
  %3113 = add i64 %3111, %3112
  %3114 = icmp eq i64 %3113, 2
  %3115 = zext i1 %3114 to i8
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3115, i8* %3116, align 1
  store %struct.Memory* %loadMem_42f50d, %struct.Memory** %MEMORY
  %loadMem_42f510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 33
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %3119 to i64*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 1
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 5
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %RCX.i465 = bitcast %union.anon* %3125 to i64*
  %3126 = load i64, i64* %RAX.i464
  %3127 = load i64, i64* %PC.i463
  %3128 = add i64 %3127, 3
  store i64 %3128, i64* %PC.i463
  store i64 %3126, i64* %RCX.i465, align 8
  store %struct.Memory* %loadMem_42f510, %struct.Memory** %MEMORY
  %loadMem1_42f513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 33
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %3131 to i64*
  %3132 = load i64, i64* %PC.i462
  %3133 = add i64 %3132, -179795
  %3134 = load i64, i64* %PC.i462
  %3135 = add i64 %3134, 5
  %3136 = load i64, i64* %PC.i462
  %3137 = add i64 %3136, 5
  store i64 %3137, i64* %PC.i462
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3139 = load i64, i64* %3138, align 8
  %3140 = add i64 %3139, -8
  %3141 = inttoptr i64 %3140 to i64*
  store i64 %3135, i64* %3141
  store i64 %3140, i64* %3138, align 8
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3133, i64* %3142, align 8
  store %struct.Memory* %loadMem1_42f513, %struct.Memory** %MEMORY
  %loadMem2_42f513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f513 = load i64, i64* %3
  %call2_42f513 = call %struct.Memory* @sub_4036c0.MakeAlignedString(%struct.State* %0, i64 %loadPC_42f513, %struct.Memory* %loadMem2_42f513)
  store %struct.Memory* %call2_42f513, %struct.Memory** %MEMORY
  %loadMem_42f518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 33
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %3145 to i64*
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 5
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %RCX.i460 = bitcast %union.anon* %3148 to i64*
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 15
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %3151 to i64*
  %3152 = load i64, i64* %RBP.i461
  %3153 = sub i64 %3152, 24
  %3154 = load i64, i64* %PC.i459
  %3155 = add i64 %3154, 4
  store i64 %3155, i64* %PC.i459
  %3156 = inttoptr i64 %3153 to i64*
  %3157 = load i64, i64* %3156
  store i64 %3157, i64* %RCX.i460, align 8
  store %struct.Memory* %loadMem_42f518, %struct.Memory** %MEMORY
  %loadMem_42f51c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 33
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %3160 to i64*
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 5
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %RCX.i457 = bitcast %union.anon* %3163 to i64*
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 9
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %RSI.i458 = bitcast %union.anon* %3166 to i64*
  %3167 = load i64, i64* %RCX.i457
  %3168 = add i64 %3167, 24
  %3169 = load i64, i64* %PC.i456
  %3170 = add i64 %3169, 3
  store i64 %3170, i64* %PC.i456
  %3171 = inttoptr i64 %3168 to i32*
  %3172 = load i32, i32* %3171
  %3173 = zext i32 %3172 to i64
  store i64 %3173, i64* %RSI.i458, align 8
  store %struct.Memory* %loadMem_42f51c, %struct.Memory** %MEMORY
  %loadMem_42f51f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 33
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 5
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 15
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %3182 to i64*
  %3183 = load i64, i64* %RBP.i455
  %3184 = sub i64 %3183, 24
  %3185 = load i64, i64* %PC.i453
  %3186 = add i64 %3185, 4
  store i64 %3186, i64* %PC.i453
  %3187 = inttoptr i64 %3184 to i64*
  %3188 = load i64, i64* %3187
  store i64 %3188, i64* %RCX.i454, align 8
  store %struct.Memory* %loadMem_42f51f, %struct.Memory** %MEMORY
  %loadMem_42f523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 33
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %3191 to i64*
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 5
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %RCX.i452 = bitcast %union.anon* %3194 to i64*
  %3195 = load i64, i64* %RCX.i452
  %3196 = add i64 %3195, 336
  %3197 = load i64, i64* %PC.i451
  %3198 = add i64 %3197, 7
  store i64 %3198, i64* %PC.i451
  %3199 = inttoptr i64 %3196 to i64*
  %3200 = load i64, i64* %3199
  store i64 %3200, i64* %RCX.i452, align 8
  store %struct.Memory* %loadMem_42f523, %struct.Memory** %MEMORY
  %loadMem_42f52a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 33
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %3203 to i64*
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 7
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %RDX.i449 = bitcast %union.anon* %3206 to i64*
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3208 = getelementptr inbounds %struct.GPR, %struct.GPR* %3207, i32 0, i32 15
  %3209 = getelementptr inbounds %struct.Reg, %struct.Reg* %3208, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %3209 to i64*
  %3210 = load i64, i64* %RBP.i450
  %3211 = sub i64 %3210, 28
  %3212 = load i64, i64* %PC.i448
  %3213 = add i64 %3212, 4
  store i64 %3213, i64* %PC.i448
  %3214 = inttoptr i64 %3211 to i32*
  %3215 = load i32, i32* %3214
  %3216 = sext i32 %3215 to i64
  store i64 %3216, i64* %RDX.i449, align 8
  store %struct.Memory* %loadMem_42f52a, %struct.Memory** %MEMORY
  %loadMem_42f52e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 33
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %3219 to i64*
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 9
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %ESI.i445 = bitcast %union.anon* %3222 to i32*
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 5
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %RCX.i446 = bitcast %union.anon* %3225 to i64*
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 7
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %RDX.i447 = bitcast %union.anon* %3228 to i64*
  %3229 = load i64, i64* %RCX.i446
  %3230 = load i64, i64* %RDX.i447
  %3231 = mul i64 %3230, 4
  %3232 = add i64 %3231, %3229
  %3233 = load i32, i32* %ESI.i445
  %3234 = zext i32 %3233 to i64
  %3235 = load i64, i64* %PC.i444
  %3236 = add i64 %3235, 3
  store i64 %3236, i64* %PC.i444
  %3237 = inttoptr i64 %3232 to i32*
  store i32 %3233, i32* %3237
  store %struct.Memory* %loadMem_42f52e, %struct.Memory** %MEMORY
  %loadMem_42f531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 33
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %3240 to i64*
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3242 = getelementptr inbounds %struct.GPR, %struct.GPR* %3241, i32 0, i32 1
  %3243 = getelementptr inbounds %struct.Reg, %struct.Reg* %3242, i32 0, i32 0
  %EAX.i442 = bitcast %union.anon* %3243 to i32*
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 15
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %3246 to i64*
  %3247 = load i64, i64* %RBP.i443
  %3248 = sub i64 %3247, 56
  %3249 = load i32, i32* %EAX.i442
  %3250 = zext i32 %3249 to i64
  %3251 = load i64, i64* %PC.i441
  %3252 = add i64 %3251, 3
  store i64 %3252, i64* %PC.i441
  %3253 = inttoptr i64 %3248 to i32*
  store i32 %3249, i32* %3253
  store %struct.Memory* %loadMem_42f531, %struct.Memory** %MEMORY
  br label %block_.L_42f534

block_.L_42f534:                                  ; preds = %block_.L_42f4ca, %block_.L_42f3de
  %loadMem_42f534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 33
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %3256 to i64*
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 1
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %3259 to i64*
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 15
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %3262 to i64*
  %3263 = load i64, i64* %RBP.i440
  %3264 = sub i64 %3263, 16
  %3265 = load i64, i64* %PC.i438
  %3266 = add i64 %3265, 4
  store i64 %3266, i64* %PC.i438
  %3267 = inttoptr i64 %3264 to i64*
  %3268 = load i64, i64* %3267
  store i64 %3268, i64* %RAX.i439, align 8
  store %struct.Memory* %loadMem_42f534, %struct.Memory** %MEMORY
  %loadMem_42f538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3270 = getelementptr inbounds %struct.GPR, %struct.GPR* %3269, i32 0, i32 33
  %3271 = getelementptr inbounds %struct.Reg, %struct.Reg* %3270, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %3271 to i64*
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 1
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %3274 to i64*
  %3275 = load i64, i64* %RAX.i437
  %3276 = add i64 %3275, 40
  %3277 = load i64, i64* %PC.i436
  %3278 = add i64 %3277, 4
  store i64 %3278, i64* %PC.i436
  %3279 = inttoptr i64 %3276 to i64*
  %3280 = load i64, i64* %3279
  store i64 %3280, i64* %RAX.i437, align 8
  store %struct.Memory* %loadMem_42f538, %struct.Memory** %MEMORY
  %loadMem_42f53c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 33
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %3283 to i64*
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 5
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %3286 to i64*
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3288 = getelementptr inbounds %struct.GPR, %struct.GPR* %3287, i32 0, i32 15
  %3289 = getelementptr inbounds %struct.Reg, %struct.Reg* %3288, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %3289 to i64*
  %3290 = load i64, i64* %RBP.i435
  %3291 = sub i64 %3290, 28
  %3292 = load i64, i64* %PC.i433
  %3293 = add i64 %3292, 4
  store i64 %3293, i64* %PC.i433
  %3294 = inttoptr i64 %3291 to i32*
  %3295 = load i32, i32* %3294
  %3296 = sext i32 %3295 to i64
  store i64 %3296, i64* %RCX.i434, align 8
  store %struct.Memory* %loadMem_42f53c, %struct.Memory** %MEMORY
  %loadMem_42f540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 33
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %3299 to i64*
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 5
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %RCX.i432 = bitcast %union.anon* %3302 to i64*
  %3303 = load i64, i64* %RCX.i432
  %3304 = load i64, i64* %PC.i431
  %3305 = add i64 %3304, 7
  store i64 %3305, i64* %PC.i431
  %3306 = sext i64 %3303 to i128
  %3307 = and i128 %3306, -18446744073709551616
  %3308 = zext i64 %3303 to i128
  %3309 = or i128 %3307, %3308
  %3310 = mul i128 360, %3309
  %3311 = trunc i128 %3310 to i64
  store i64 %3311, i64* %RCX.i432, align 8
  %3312 = sext i64 %3311 to i128
  %3313 = icmp ne i128 %3312, %3310
  %3314 = zext i1 %3313 to i8
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3314, i8* %3315, align 1
  %3316 = trunc i128 %3310 to i32
  %3317 = and i32 %3316, 255
  %3318 = call i32 @llvm.ctpop.i32(i32 %3317)
  %3319 = trunc i32 %3318 to i8
  %3320 = and i8 %3319, 1
  %3321 = xor i8 %3320, 1
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3321, i8* %3322, align 1
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3323, align 1
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3324, align 1
  %3325 = lshr i64 %3311, 63
  %3326 = trunc i64 %3325 to i8
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3326, i8* %3327, align 1
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3314, i8* %3328, align 1
  store %struct.Memory* %loadMem_42f540, %struct.Memory** %MEMORY
  %loadMem_42f547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 33
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %3331 to i64*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 1
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %RAX.i429 = bitcast %union.anon* %3334 to i64*
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3336 = getelementptr inbounds %struct.GPR, %struct.GPR* %3335, i32 0, i32 5
  %3337 = getelementptr inbounds %struct.Reg, %struct.Reg* %3336, i32 0, i32 0
  %RCX.i430 = bitcast %union.anon* %3337 to i64*
  %3338 = load i64, i64* %RAX.i429
  %3339 = load i64, i64* %RCX.i430
  %3340 = load i64, i64* %PC.i428
  %3341 = add i64 %3340, 3
  store i64 %3341, i64* %PC.i428
  %3342 = add i64 %3339, %3338
  store i64 %3342, i64* %RAX.i429, align 8
  %3343 = icmp ult i64 %3342, %3338
  %3344 = icmp ult i64 %3342, %3339
  %3345 = or i1 %3343, %3344
  %3346 = zext i1 %3345 to i8
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3346, i8* %3347, align 1
  %3348 = trunc i64 %3342 to i32
  %3349 = and i32 %3348, 255
  %3350 = call i32 @llvm.ctpop.i32(i32 %3349)
  %3351 = trunc i32 %3350 to i8
  %3352 = and i8 %3351, 1
  %3353 = xor i8 %3352, 1
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3353, i8* %3354, align 1
  %3355 = xor i64 %3339, %3338
  %3356 = xor i64 %3355, %3342
  %3357 = lshr i64 %3356, 4
  %3358 = trunc i64 %3357 to i8
  %3359 = and i8 %3358, 1
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3359, i8* %3360, align 1
  %3361 = icmp eq i64 %3342, 0
  %3362 = zext i1 %3361 to i8
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3362, i8* %3363, align 1
  %3364 = lshr i64 %3342, 63
  %3365 = trunc i64 %3364 to i8
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3365, i8* %3366, align 1
  %3367 = lshr i64 %3338, 63
  %3368 = lshr i64 %3339, 63
  %3369 = xor i64 %3364, %3367
  %3370 = xor i64 %3364, %3368
  %3371 = add i64 %3369, %3370
  %3372 = icmp eq i64 %3371, 2
  %3373 = zext i1 %3372 to i8
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3373, i8* %3374, align 1
  store %struct.Memory* %loadMem_42f547, %struct.Memory** %MEMORY
  %loadMem_42f54a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 33
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %3377 to i64*
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3379 = getelementptr inbounds %struct.GPR, %struct.GPR* %3378, i32 0, i32 1
  %3380 = getelementptr inbounds %struct.Reg, %struct.Reg* %3379, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %3380 to i64*
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 7
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %RDX.i427 = bitcast %union.anon* %3383 to i64*
  %3384 = load i64, i64* %RAX.i426
  %3385 = load i64, i64* %PC.i425
  %3386 = add i64 %3385, 2
  store i64 %3386, i64* %PC.i425
  %3387 = inttoptr i64 %3384 to i32*
  %3388 = load i32, i32* %3387
  %3389 = zext i32 %3388 to i64
  store i64 %3389, i64* %RDX.i427, align 8
  store %struct.Memory* %loadMem_42f54a, %struct.Memory** %MEMORY
  %loadMem_42f54c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 33
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %3392 to i64*
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 7
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %RDX.i424 = bitcast %union.anon* %3395 to i64*
  %3396 = load i64, i64* %RDX.i424
  %3397 = load i64, i64* %PC.i423
  %3398 = add i64 %3397, 6
  store i64 %3398, i64* %PC.i423
  %3399 = and i64 1024, %3396
  %3400 = trunc i64 %3399 to i32
  store i64 %3399, i64* %RDX.i424, align 8
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3401, align 1
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3402, align 1
  %3403 = icmp eq i32 %3400, 0
  %3404 = zext i1 %3403 to i8
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3404, i8* %3405, align 1
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3406, align 1
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3407, align 1
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3408, align 1
  store %struct.Memory* %loadMem_42f54c, %struct.Memory** %MEMORY
  %loadMem_42f552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 33
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %3411 to i64*
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3413 = getelementptr inbounds %struct.GPR, %struct.GPR* %3412, i32 0, i32 7
  %3414 = getelementptr inbounds %struct.Reg, %struct.Reg* %3413, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3414 to i32*
  %3415 = load i32, i32* %EDX.i
  %3416 = zext i32 %3415 to i64
  %3417 = load i64, i64* %PC.i422
  %3418 = add i64 %3417, 3
  store i64 %3418, i64* %PC.i422
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3419, align 1
  %3420 = and i32 %3415, 255
  %3421 = call i32 @llvm.ctpop.i32(i32 %3420)
  %3422 = trunc i32 %3421 to i8
  %3423 = and i8 %3422, 1
  %3424 = xor i8 %3423, 1
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3424, i8* %3425, align 1
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3426, align 1
  %3427 = icmp eq i32 %3415, 0
  %3428 = zext i1 %3427 to i8
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3428, i8* %3429, align 1
  %3430 = lshr i32 %3415, 31
  %3431 = trunc i32 %3430 to i8
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3431, i8* %3432, align 1
  %3433 = lshr i32 %3415, 31
  %3434 = xor i32 %3430, %3433
  %3435 = add i32 %3434, %3433
  %3436 = icmp eq i32 %3435, 2
  %3437 = zext i1 %3436 to i8
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3437, i8* %3438, align 1
  store %struct.Memory* %loadMem_42f552, %struct.Memory** %MEMORY
  %loadMem_42f555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3440 = getelementptr inbounds %struct.GPR, %struct.GPR* %3439, i32 0, i32 33
  %3441 = getelementptr inbounds %struct.Reg, %struct.Reg* %3440, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %3441 to i64*
  %3442 = load i64, i64* %PC.i421
  %3443 = add i64 %3442, 309
  %3444 = load i64, i64* %PC.i421
  %3445 = add i64 %3444, 6
  %3446 = load i64, i64* %PC.i421
  %3447 = add i64 %3446, 6
  store i64 %3447, i64* %PC.i421
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3449 = load i8, i8* %3448, align 1
  store i8 %3449, i8* %BRANCH_TAKEN, align 1
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3451 = icmp ne i8 %3449, 0
  %3452 = select i1 %3451, i64 %3443, i64 %3445
  store i64 %3452, i64* %3450, align 8
  store %struct.Memory* %loadMem_42f555, %struct.Memory** %MEMORY
  %loadBr_42f555 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f555 = icmp eq i8 %loadBr_42f555, 1
  br i1 %cmpBr_42f555, label %block_.L_42f68a, label %block_42f55b

block_42f55b:                                     ; preds = %block_.L_42f534
  %loadMem_42f55b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 33
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %3455 to i64*
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 1
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %3458 to i64*
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 15
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %3461 to i64*
  %3462 = load i64, i64* %RBP.i420
  %3463 = sub i64 %3462, 24
  %3464 = load i64, i64* %PC.i418
  %3465 = add i64 %3464, 4
  store i64 %3465, i64* %PC.i418
  %3466 = inttoptr i64 %3463 to i64*
  %3467 = load i64, i64* %3466
  store i64 %3467, i64* %RAX.i419, align 8
  store %struct.Memory* %loadMem_42f55b, %struct.Memory** %MEMORY
  %loadMem_42f55f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 33
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %3470 to i64*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 1
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %RAX.i417 = bitcast %union.anon* %3473 to i64*
  %3474 = load i64, i64* %RAX.i417
  %3475 = add i64 %3474, 120
  %3476 = load i64, i64* %PC.i416
  %3477 = add i64 %3476, 5
  store i64 %3477, i64* %PC.i416
  %3478 = inttoptr i64 %3475 to i64*
  %3479 = load i64, i64* %3478
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3480, align 1
  %3481 = trunc i64 %3479 to i32
  %3482 = and i32 %3481, 255
  %3483 = call i32 @llvm.ctpop.i32(i32 %3482)
  %3484 = trunc i32 %3483 to i8
  %3485 = and i8 %3484, 1
  %3486 = xor i8 %3485, 1
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3486, i8* %3487, align 1
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3488, align 1
  %3489 = icmp eq i64 %3479, 0
  %3490 = zext i1 %3489 to i8
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3490, i8* %3491, align 1
  %3492 = lshr i64 %3479, 63
  %3493 = trunc i64 %3492 to i8
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3493, i8* %3494, align 1
  %3495 = lshr i64 %3479, 63
  %3496 = xor i64 %3492, %3495
  %3497 = add i64 %3496, %3495
  %3498 = icmp eq i64 %3497, 2
  %3499 = zext i1 %3498 to i8
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3499, i8* %3500, align 1
  store %struct.Memory* %loadMem_42f55f, %struct.Memory** %MEMORY
  %loadMem_42f564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 33
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %3503 to i64*
  %3504 = load i64, i64* %PC.i415
  %3505 = add i64 %3504, 188
  %3506 = load i64, i64* %PC.i415
  %3507 = add i64 %3506, 6
  %3508 = load i64, i64* %PC.i415
  %3509 = add i64 %3508, 6
  store i64 %3509, i64* %PC.i415
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3511 = load i8, i8* %3510, align 1
  %3512 = icmp eq i8 %3511, 0
  %3513 = zext i1 %3512 to i8
  store i8 %3513, i8* %BRANCH_TAKEN, align 1
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3515 = select i1 %3512, i64 %3505, i64 %3507
  store i64 %3515, i64* %3514, align 8
  store %struct.Memory* %loadMem_42f564, %struct.Memory** %MEMORY
  %loadBr_42f564 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f564 = icmp eq i8 %loadBr_42f564, 1
  br i1 %cmpBr_42f564, label %block_.L_42f620, label %block_42f56a

block_42f56a:                                     ; preds = %block_42f55b
  %loadMem_42f56a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 33
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %3518 to i64*
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 11
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %RDI.i414 = bitcast %union.anon* %3521 to i64*
  %3522 = load i64, i64* %PC.i413
  %3523 = add i64 %3522, 10
  store i64 %3523, i64* %PC.i413
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i414, align 8
  store %struct.Memory* %loadMem_42f56a, %struct.Memory** %MEMORY
  %loadMem_42f574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3525 = getelementptr inbounds %struct.GPR, %struct.GPR* %3524, i32 0, i32 33
  %3526 = getelementptr inbounds %struct.Reg, %struct.Reg* %3525, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %3526 to i64*
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 9
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %RSI.i412 = bitcast %union.anon* %3529 to i64*
  %3530 = load i64, i64* %PC.i411
  %3531 = add i64 %3530, 5
  store i64 %3531, i64* %PC.i411
  store i64 1068, i64* %RSI.i412, align 8
  store %struct.Memory* %loadMem_42f574, %struct.Memory** %MEMORY
  %loadMem_42f579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 33
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %3534 to i64*
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 1
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %3537 to i64*
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 15
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %3540 to i64*
  %3541 = load i64, i64* %RBP.i410
  %3542 = sub i64 %3541, 24
  %3543 = load i64, i64* %PC.i408
  %3544 = add i64 %3543, 4
  store i64 %3544, i64* %PC.i408
  %3545 = inttoptr i64 %3542 to i64*
  %3546 = load i64, i64* %3545
  store i64 %3546, i64* %RAX.i409, align 8
  store %struct.Memory* %loadMem_42f579, %struct.Memory** %MEMORY
  %loadMem_42f57d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 33
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %3549 to i64*
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3551 = getelementptr inbounds %struct.GPR, %struct.GPR* %3550, i32 0, i32 1
  %3552 = getelementptr inbounds %struct.Reg, %struct.Reg* %3551, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %3552 to i64*
  %3553 = load i64, i64* %RAX.i407
  %3554 = add i64 %3553, 320
  %3555 = load i64, i64* %PC.i406
  %3556 = add i64 %3555, 7
  store i64 %3556, i64* %PC.i406
  %3557 = inttoptr i64 %3554 to i32*
  %3558 = load i32, i32* %3557
  %3559 = sext i32 %3558 to i64
  store i64 %3559, i64* %RAX.i407, align 8
  store %struct.Memory* %loadMem_42f57d, %struct.Memory** %MEMORY
  %loadMem_42f584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3561 = getelementptr inbounds %struct.GPR, %struct.GPR* %3560, i32 0, i32 33
  %3562 = getelementptr inbounds %struct.Reg, %struct.Reg* %3561, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %3562 to i64*
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3564 = getelementptr inbounds %struct.GPR, %struct.GPR* %3563, i32 0, i32 1
  %3565 = getelementptr inbounds %struct.Reg, %struct.Reg* %3564, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %3565 to i64*
  %3566 = load i64, i64* %RAX.i405
  %3567 = load i64, i64* %PC.i404
  %3568 = add i64 %3567, 4
  store i64 %3568, i64* %PC.i404
  %3569 = shl i64 %3566, 2
  %3570 = icmp slt i64 %3569, 0
  %3571 = shl i64 %3569, 1
  store i64 %3571, i64* %RAX.i405, align 8
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3573 = zext i1 %3570 to i8
  store i8 %3573, i8* %3572, align 1
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3575 = trunc i64 %3571 to i32
  %3576 = and i32 %3575, 254
  %3577 = call i32 @llvm.ctpop.i32(i32 %3576)
  %3578 = trunc i32 %3577 to i8
  %3579 = and i8 %3578, 1
  %3580 = xor i8 %3579, 1
  store i8 %3580, i8* %3574, align 1
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3581, align 1
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3583 = icmp eq i64 %3571, 0
  %3584 = zext i1 %3583 to i8
  store i8 %3584, i8* %3582, align 1
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3586 = lshr i64 %3571, 63
  %3587 = trunc i64 %3586 to i8
  store i8 %3587, i8* %3585, align 1
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3588, align 1
  store %struct.Memory* %loadMem_42f584, %struct.Memory** %MEMORY
  %loadMem_42f588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 33
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %3591 to i64*
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 1
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %3594 to i64*
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 7
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %RDX.i403 = bitcast %union.anon* %3597 to i64*
  %3598 = load i64, i64* %RAX.i402
  %3599 = load i64, i64* %PC.i401
  %3600 = add i64 %3599, 3
  store i64 %3600, i64* %PC.i401
  store i64 %3598, i64* %RDX.i403, align 8
  store %struct.Memory* %loadMem_42f588, %struct.Memory** %MEMORY
  %loadMem1_42f58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 33
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %3603 to i64*
  %3604 = load i64, i64* %PC.i400
  %3605 = add i64 %3604, 92885
  %3606 = load i64, i64* %PC.i400
  %3607 = add i64 %3606, 5
  %3608 = load i64, i64* %PC.i400
  %3609 = add i64 %3608, 5
  store i64 %3609, i64* %PC.i400
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3611 = load i64, i64* %3610, align 8
  %3612 = add i64 %3611, -8
  %3613 = inttoptr i64 %3612 to i64*
  store i64 %3607, i64* %3613
  store i64 %3612, i64* %3610, align 8
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3605, i64* %3614, align 8
  store %struct.Memory* %loadMem1_42f58b, %struct.Memory** %MEMORY
  %loadMem2_42f58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f58b = load i64, i64* %3
  %call2_42f58b = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_42f58b, %struct.Memory* %loadMem2_42f58b)
  store %struct.Memory* %call2_42f58b, %struct.Memory** %MEMORY
  %loadMem_42f590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 33
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %3617 to i64*
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 11
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %RDI.i399 = bitcast %union.anon* %3620 to i64*
  %3621 = load i64, i64* %PC.i398
  %3622 = add i64 %3621, 10
  store i64 %3622, i64* %PC.i398
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i399, align 8
  store %struct.Memory* %loadMem_42f590, %struct.Memory** %MEMORY
  %loadMem_42f59a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 33
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %3625 to i64*
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 9
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %RSI.i397 = bitcast %union.anon* %3628 to i64*
  %3629 = load i64, i64* %PC.i396
  %3630 = add i64 %3629, 5
  store i64 %3630, i64* %PC.i396
  store i64 1069, i64* %RSI.i397, align 8
  store %struct.Memory* %loadMem_42f59a, %struct.Memory** %MEMORY
  %loadMem_42f59f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 33
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %3633 to i64*
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 7
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %RDX.i394 = bitcast %union.anon* %3636 to i64*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 15
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %3639 to i64*
  %3640 = load i64, i64* %RBP.i395
  %3641 = sub i64 %3640, 24
  %3642 = load i64, i64* %PC.i393
  %3643 = add i64 %3642, 4
  store i64 %3643, i64* %PC.i393
  %3644 = inttoptr i64 %3641 to i64*
  %3645 = load i64, i64* %3644
  store i64 %3645, i64* %RDX.i394, align 8
  store %struct.Memory* %loadMem_42f59f, %struct.Memory** %MEMORY
  %loadMem_42f5a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 33
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %3648 to i64*
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3650 = getelementptr inbounds %struct.GPR, %struct.GPR* %3649, i32 0, i32 1
  %3651 = getelementptr inbounds %struct.Reg, %struct.Reg* %3650, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %3651 to i64*
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 7
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %RDX.i392 = bitcast %union.anon* %3654 to i64*
  %3655 = load i64, i64* %RDX.i392
  %3656 = add i64 %3655, 120
  %3657 = load i64, i64* %RAX.i391
  %3658 = load i64, i64* %PC.i390
  %3659 = add i64 %3658, 4
  store i64 %3659, i64* %PC.i390
  %3660 = inttoptr i64 %3656 to i64*
  store i64 %3657, i64* %3660
  store %struct.Memory* %loadMem_42f5a3, %struct.Memory** %MEMORY
  %loadMem_42f5a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 33
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %3663 to i64*
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 1
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %3666 to i64*
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 15
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %3669 to i64*
  %3670 = load i64, i64* %RBP.i389
  %3671 = sub i64 %3670, 24
  %3672 = load i64, i64* %PC.i387
  %3673 = add i64 %3672, 4
  store i64 %3673, i64* %PC.i387
  %3674 = inttoptr i64 %3671 to i64*
  %3675 = load i64, i64* %3674
  store i64 %3675, i64* %RAX.i388, align 8
  store %struct.Memory* %loadMem_42f5a7, %struct.Memory** %MEMORY
  %loadMem_42f5ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 33
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %3678 to i64*
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 1
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %RAX.i386 = bitcast %union.anon* %3681 to i64*
  %3682 = load i64, i64* %RAX.i386
  %3683 = add i64 %3682, 320
  %3684 = load i64, i64* %PC.i385
  %3685 = add i64 %3684, 7
  store i64 %3685, i64* %PC.i385
  %3686 = inttoptr i64 %3683 to i32*
  %3687 = load i32, i32* %3686
  %3688 = sext i32 %3687 to i64
  store i64 %3688, i64* %RAX.i386, align 8
  store %struct.Memory* %loadMem_42f5ab, %struct.Memory** %MEMORY
  %loadMem_42f5b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3690 = getelementptr inbounds %struct.GPR, %struct.GPR* %3689, i32 0, i32 33
  %3691 = getelementptr inbounds %struct.Reg, %struct.Reg* %3690, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %3691 to i64*
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3693 = getelementptr inbounds %struct.GPR, %struct.GPR* %3692, i32 0, i32 1
  %3694 = getelementptr inbounds %struct.Reg, %struct.Reg* %3693, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %3694 to i64*
  %3695 = load i64, i64* %RAX.i384
  %3696 = load i64, i64* %PC.i383
  %3697 = add i64 %3696, 4
  store i64 %3697, i64* %PC.i383
  %3698 = shl i64 %3695, 1
  %3699 = icmp slt i64 %3698, 0
  %3700 = shl i64 %3698, 1
  store i64 %3700, i64* %RAX.i384, align 8
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3702 = zext i1 %3699 to i8
  store i8 %3702, i8* %3701, align 1
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3704 = trunc i64 %3700 to i32
  %3705 = and i32 %3704, 254
  %3706 = call i32 @llvm.ctpop.i32(i32 %3705)
  %3707 = trunc i32 %3706 to i8
  %3708 = and i8 %3707, 1
  %3709 = xor i8 %3708, 1
  store i8 %3709, i8* %3703, align 1
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3710, align 1
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3712 = icmp eq i64 %3700, 0
  %3713 = zext i1 %3712 to i8
  store i8 %3713, i8* %3711, align 1
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3715 = lshr i64 %3700, 63
  %3716 = trunc i64 %3715 to i8
  store i8 %3716, i8* %3714, align 1
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3717, align 1
  store %struct.Memory* %loadMem_42f5b2, %struct.Memory** %MEMORY
  %loadMem_42f5b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 33
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %3720 to i64*
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 1
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %3723 to i64*
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 7
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %RDX.i382 = bitcast %union.anon* %3726 to i64*
  %3727 = load i64, i64* %RAX.i381
  %3728 = load i64, i64* %PC.i380
  %3729 = add i64 %3728, 3
  store i64 %3729, i64* %PC.i380
  store i64 %3727, i64* %RDX.i382, align 8
  store %struct.Memory* %loadMem_42f5b6, %struct.Memory** %MEMORY
  %loadMem1_42f5b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 33
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %3732 to i64*
  %3733 = load i64, i64* %PC.i379
  %3734 = add i64 %3733, 92839
  %3735 = load i64, i64* %PC.i379
  %3736 = add i64 %3735, 5
  %3737 = load i64, i64* %PC.i379
  %3738 = add i64 %3737, 5
  store i64 %3738, i64* %PC.i379
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3740 = load i64, i64* %3739, align 8
  %3741 = add i64 %3740, -8
  %3742 = inttoptr i64 %3741 to i64*
  store i64 %3736, i64* %3742
  store i64 %3741, i64* %3739, align 8
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3734, i64* %3743, align 8
  store %struct.Memory* %loadMem1_42f5b9, %struct.Memory** %MEMORY
  %loadMem2_42f5b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f5b9 = load i64, i64* %3
  %call2_42f5b9 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_42f5b9, %struct.Memory* %loadMem2_42f5b9)
  store %struct.Memory* %call2_42f5b9, %struct.Memory** %MEMORY
  %loadMem_42f5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 33
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %3746 to i64*
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3748 = getelementptr inbounds %struct.GPR, %struct.GPR* %3747, i32 0, i32 7
  %3749 = getelementptr inbounds %struct.Reg, %struct.Reg* %3748, i32 0, i32 0
  %RDX.i377 = bitcast %union.anon* %3749 to i64*
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3751 = getelementptr inbounds %struct.GPR, %struct.GPR* %3750, i32 0, i32 15
  %3752 = getelementptr inbounds %struct.Reg, %struct.Reg* %3751, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %3752 to i64*
  %3753 = load i64, i64* %RBP.i378
  %3754 = sub i64 %3753, 24
  %3755 = load i64, i64* %PC.i376
  %3756 = add i64 %3755, 4
  store i64 %3756, i64* %PC.i376
  %3757 = inttoptr i64 %3754 to i64*
  %3758 = load i64, i64* %3757
  store i64 %3758, i64* %RDX.i377, align 8
  store %struct.Memory* %loadMem_42f5be, %struct.Memory** %MEMORY
  %loadMem_42f5c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3760 = getelementptr inbounds %struct.GPR, %struct.GPR* %3759, i32 0, i32 33
  %3761 = getelementptr inbounds %struct.Reg, %struct.Reg* %3760, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %3761 to i64*
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3763 = getelementptr inbounds %struct.GPR, %struct.GPR* %3762, i32 0, i32 1
  %3764 = getelementptr inbounds %struct.Reg, %struct.Reg* %3763, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %3764 to i64*
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 7
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %RDX.i375 = bitcast %union.anon* %3767 to i64*
  %3768 = load i64, i64* %RDX.i375
  %3769 = add i64 %3768, 344
  %3770 = load i64, i64* %RAX.i374
  %3771 = load i64, i64* %PC.i373
  %3772 = add i64 %3771, 7
  store i64 %3772, i64* %PC.i373
  %3773 = inttoptr i64 %3769 to i64*
  store i64 %3770, i64* %3773
  store %struct.Memory* %loadMem_42f5c2, %struct.Memory** %MEMORY
  %loadMem_42f5c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 33
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %3776 to i64*
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 15
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %3779 to i64*
  %3780 = load i64, i64* %RBP.i372
  %3781 = sub i64 %3780, 32
  %3782 = load i64, i64* %PC.i371
  %3783 = add i64 %3782, 7
  store i64 %3783, i64* %PC.i371
  %3784 = inttoptr i64 %3781 to i32*
  store i32 0, i32* %3784
  store %struct.Memory* %loadMem_42f5c9, %struct.Memory** %MEMORY
  br label %block_.L_42f5d0

block_.L_42f5d0:                                  ; preds = %block_42f5e3, %block_42f56a
  %loadMem_42f5d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 33
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %3787 to i64*
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 1
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %3790 to i64*
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 15
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %3793 to i64*
  %3794 = load i64, i64* %RBP.i370
  %3795 = sub i64 %3794, 32
  %3796 = load i64, i64* %PC.i368
  %3797 = add i64 %3796, 3
  store i64 %3797, i64* %PC.i368
  %3798 = inttoptr i64 %3795 to i32*
  %3799 = load i32, i32* %3798
  %3800 = zext i32 %3799 to i64
  store i64 %3800, i64* %RAX.i369, align 8
  store %struct.Memory* %loadMem_42f5d0, %struct.Memory** %MEMORY
  %loadMem_42f5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 33
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %3803 to i64*
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 5
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %3806 to i64*
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3808 = getelementptr inbounds %struct.GPR, %struct.GPR* %3807, i32 0, i32 15
  %3809 = getelementptr inbounds %struct.Reg, %struct.Reg* %3808, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %3809 to i64*
  %3810 = load i64, i64* %RBP.i367
  %3811 = sub i64 %3810, 24
  %3812 = load i64, i64* %PC.i365
  %3813 = add i64 %3812, 4
  store i64 %3813, i64* %PC.i365
  %3814 = inttoptr i64 %3811 to i64*
  %3815 = load i64, i64* %3814
  store i64 %3815, i64* %RCX.i366, align 8
  store %struct.Memory* %loadMem_42f5d3, %struct.Memory** %MEMORY
  %loadMem_42f5d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 33
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %3818 to i64*
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 1
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %EAX.i363 = bitcast %union.anon* %3821 to i32*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 5
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %RCX.i364 = bitcast %union.anon* %3824 to i64*
  %3825 = load i32, i32* %EAX.i363
  %3826 = zext i32 %3825 to i64
  %3827 = load i64, i64* %RCX.i364
  %3828 = add i64 %3827, 320
  %3829 = load i64, i64* %PC.i362
  %3830 = add i64 %3829, 6
  store i64 %3830, i64* %PC.i362
  %3831 = inttoptr i64 %3828 to i32*
  %3832 = load i32, i32* %3831
  %3833 = sub i32 %3825, %3832
  %3834 = icmp ult i32 %3825, %3832
  %3835 = zext i1 %3834 to i8
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3835, i8* %3836, align 1
  %3837 = and i32 %3833, 255
  %3838 = call i32 @llvm.ctpop.i32(i32 %3837)
  %3839 = trunc i32 %3838 to i8
  %3840 = and i8 %3839, 1
  %3841 = xor i8 %3840, 1
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3841, i8* %3842, align 1
  %3843 = xor i32 %3832, %3825
  %3844 = xor i32 %3843, %3833
  %3845 = lshr i32 %3844, 4
  %3846 = trunc i32 %3845 to i8
  %3847 = and i8 %3846, 1
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3847, i8* %3848, align 1
  %3849 = icmp eq i32 %3833, 0
  %3850 = zext i1 %3849 to i8
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3850, i8* %3851, align 1
  %3852 = lshr i32 %3833, 31
  %3853 = trunc i32 %3852 to i8
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3853, i8* %3854, align 1
  %3855 = lshr i32 %3825, 31
  %3856 = lshr i32 %3832, 31
  %3857 = xor i32 %3856, %3855
  %3858 = xor i32 %3852, %3855
  %3859 = add i32 %3858, %3857
  %3860 = icmp eq i32 %3859, 2
  %3861 = zext i1 %3860 to i8
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3861, i8* %3862, align 1
  store %struct.Memory* %loadMem_42f5d7, %struct.Memory** %MEMORY
  %loadMem_42f5dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 33
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %3865 to i64*
  %3866 = load i64, i64* %PC.i361
  %3867 = add i64 %3866, 62
  %3868 = load i64, i64* %PC.i361
  %3869 = add i64 %3868, 6
  %3870 = load i64, i64* %PC.i361
  %3871 = add i64 %3870, 6
  store i64 %3871, i64* %PC.i361
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3873 = load i8, i8* %3872, align 1
  %3874 = icmp ne i8 %3873, 0
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3876 = load i8, i8* %3875, align 1
  %3877 = icmp ne i8 %3876, 0
  %3878 = xor i1 %3874, %3877
  %3879 = xor i1 %3878, true
  %3880 = zext i1 %3879 to i8
  store i8 %3880, i8* %BRANCH_TAKEN, align 1
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3882 = select i1 %3878, i64 %3869, i64 %3867
  store i64 %3882, i64* %3881, align 8
  store %struct.Memory* %loadMem_42f5dd, %struct.Memory** %MEMORY
  %loadBr_42f5dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f5dd = icmp eq i8 %loadBr_42f5dd, 1
  br i1 %cmpBr_42f5dd, label %block_.L_42f61b, label %block_42f5e3

block_42f5e3:                                     ; preds = %block_.L_42f5d0
  %loadMem_42f5e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 33
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %3885 to i64*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 1
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %RAX.i359 = bitcast %union.anon* %3888 to i64*
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 15
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %3891 to i64*
  %3892 = load i64, i64* %RBP.i360
  %3893 = sub i64 %3892, 24
  %3894 = load i64, i64* %PC.i358
  %3895 = add i64 %3894, 4
  store i64 %3895, i64* %PC.i358
  %3896 = inttoptr i64 %3893 to i64*
  %3897 = load i64, i64* %3896
  store i64 %3897, i64* %RAX.i359, align 8
  store %struct.Memory* %loadMem_42f5e3, %struct.Memory** %MEMORY
  %loadMem_42f5e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 33
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %3900 to i64*
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 1
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %3903 to i64*
  %3904 = load i64, i64* %RAX.i357
  %3905 = add i64 %3904, 120
  %3906 = load i64, i64* %PC.i356
  %3907 = add i64 %3906, 4
  store i64 %3907, i64* %PC.i356
  %3908 = inttoptr i64 %3905 to i64*
  %3909 = load i64, i64* %3908
  store i64 %3909, i64* %RAX.i357, align 8
  store %struct.Memory* %loadMem_42f5e7, %struct.Memory** %MEMORY
  %loadMem_42f5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 33
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %3912 to i64*
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3914 = getelementptr inbounds %struct.GPR, %struct.GPR* %3913, i32 0, i32 5
  %3915 = getelementptr inbounds %struct.Reg, %struct.Reg* %3914, i32 0, i32 0
  %RCX.i354 = bitcast %union.anon* %3915 to i64*
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3917 = getelementptr inbounds %struct.GPR, %struct.GPR* %3916, i32 0, i32 15
  %3918 = getelementptr inbounds %struct.Reg, %struct.Reg* %3917, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %3918 to i64*
  %3919 = load i64, i64* %RBP.i355
  %3920 = sub i64 %3919, 32
  %3921 = load i64, i64* %PC.i353
  %3922 = add i64 %3921, 4
  store i64 %3922, i64* %PC.i353
  %3923 = inttoptr i64 %3920 to i32*
  %3924 = load i32, i32* %3923
  %3925 = sext i32 %3924 to i64
  store i64 %3925, i64* %RCX.i354, align 8
  store %struct.Memory* %loadMem_42f5eb, %struct.Memory** %MEMORY
  %loadMem_42f5ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 33
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %3928 to i64*
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 1
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %3931 to i64*
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 5
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %RCX.i352 = bitcast %union.anon* %3934 to i64*
  %3935 = load i64, i64* %RAX.i351
  %3936 = load i64, i64* %RCX.i352
  %3937 = mul i64 %3936, 8
  %3938 = add i64 %3937, %3935
  %3939 = load i64, i64* %PC.i350
  %3940 = add i64 %3939, 8
  store i64 %3940, i64* %PC.i350
  %3941 = inttoptr i64 %3938 to i64*
  store i64 0, i64* %3941
  store %struct.Memory* %loadMem_42f5ef, %struct.Memory** %MEMORY
  %loadMem_42f5f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 33
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %3944 to i64*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 1
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %3947 to i64*
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 15
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %3950 to i64*
  %3951 = load i64, i64* %RBP.i349
  %3952 = sub i64 %3951, 24
  %3953 = load i64, i64* %PC.i347
  %3954 = add i64 %3953, 4
  store i64 %3954, i64* %PC.i347
  %3955 = inttoptr i64 %3952 to i64*
  %3956 = load i64, i64* %3955
  store i64 %3956, i64* %RAX.i348, align 8
  store %struct.Memory* %loadMem_42f5f7, %struct.Memory** %MEMORY
  %loadMem_42f5fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 33
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %3959 to i64*
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 1
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %3962 to i64*
  %3963 = load i64, i64* %RAX.i346
  %3964 = add i64 %3963, 344
  %3965 = load i64, i64* %PC.i345
  %3966 = add i64 %3965, 7
  store i64 %3966, i64* %PC.i345
  %3967 = inttoptr i64 %3964 to i64*
  %3968 = load i64, i64* %3967
  store i64 %3968, i64* %RAX.i346, align 8
  store %struct.Memory* %loadMem_42f5fb, %struct.Memory** %MEMORY
  %loadMem_42f602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 33
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %3971 to i64*
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 5
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %3974 to i64*
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3976 = getelementptr inbounds %struct.GPR, %struct.GPR* %3975, i32 0, i32 15
  %3977 = getelementptr inbounds %struct.Reg, %struct.Reg* %3976, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %3977 to i64*
  %3978 = load i64, i64* %RBP.i344
  %3979 = sub i64 %3978, 32
  %3980 = load i64, i64* %PC.i342
  %3981 = add i64 %3980, 4
  store i64 %3981, i64* %PC.i342
  %3982 = inttoptr i64 %3979 to i32*
  %3983 = load i32, i32* %3982
  %3984 = sext i32 %3983 to i64
  store i64 %3984, i64* %RCX.i343, align 8
  store %struct.Memory* %loadMem_42f602, %struct.Memory** %MEMORY
  %loadMem_42f606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3986 = getelementptr inbounds %struct.GPR, %struct.GPR* %3985, i32 0, i32 33
  %3987 = getelementptr inbounds %struct.Reg, %struct.Reg* %3986, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %3987 to i64*
  %3988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3989 = getelementptr inbounds %struct.GPR, %struct.GPR* %3988, i32 0, i32 1
  %3990 = getelementptr inbounds %struct.Reg, %struct.Reg* %3989, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %3990 to i64*
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 5
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %3993 to i64*
  %3994 = load i64, i64* %RAX.i340
  %3995 = load i64, i64* %RCX.i341
  %3996 = mul i64 %3995, 4
  %3997 = add i64 %3996, %3994
  %3998 = load i64, i64* %PC.i339
  %3999 = add i64 %3998, 7
  store i64 %3999, i64* %PC.i339
  %4000 = inttoptr i64 %3997 to i32*
  store i32 0, i32* %4000
  store %struct.Memory* %loadMem_42f606, %struct.Memory** %MEMORY
  %loadMem_42f60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4002 = getelementptr inbounds %struct.GPR, %struct.GPR* %4001, i32 0, i32 33
  %4003 = getelementptr inbounds %struct.Reg, %struct.Reg* %4002, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %4003 to i64*
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 1
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %4006 to i64*
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 15
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %4009 to i64*
  %4010 = load i64, i64* %RBP.i338
  %4011 = sub i64 %4010, 32
  %4012 = load i64, i64* %PC.i336
  %4013 = add i64 %4012, 3
  store i64 %4013, i64* %PC.i336
  %4014 = inttoptr i64 %4011 to i32*
  %4015 = load i32, i32* %4014
  %4016 = zext i32 %4015 to i64
  store i64 %4016, i64* %RAX.i337, align 8
  store %struct.Memory* %loadMem_42f60d, %struct.Memory** %MEMORY
  %loadMem_42f610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4018 = getelementptr inbounds %struct.GPR, %struct.GPR* %4017, i32 0, i32 33
  %4019 = getelementptr inbounds %struct.Reg, %struct.Reg* %4018, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %4019 to i64*
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 1
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %RAX.i335 = bitcast %union.anon* %4022 to i64*
  %4023 = load i64, i64* %RAX.i335
  %4024 = load i64, i64* %PC.i334
  %4025 = add i64 %4024, 3
  store i64 %4025, i64* %PC.i334
  %4026 = trunc i64 %4023 to i32
  %4027 = add i32 1, %4026
  %4028 = zext i32 %4027 to i64
  store i64 %4028, i64* %RAX.i335, align 8
  %4029 = icmp ult i32 %4027, %4026
  %4030 = icmp ult i32 %4027, 1
  %4031 = or i1 %4029, %4030
  %4032 = zext i1 %4031 to i8
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4032, i8* %4033, align 1
  %4034 = and i32 %4027, 255
  %4035 = call i32 @llvm.ctpop.i32(i32 %4034)
  %4036 = trunc i32 %4035 to i8
  %4037 = and i8 %4036, 1
  %4038 = xor i8 %4037, 1
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4038, i8* %4039, align 1
  %4040 = xor i64 1, %4023
  %4041 = trunc i64 %4040 to i32
  %4042 = xor i32 %4041, %4027
  %4043 = lshr i32 %4042, 4
  %4044 = trunc i32 %4043 to i8
  %4045 = and i8 %4044, 1
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4045, i8* %4046, align 1
  %4047 = icmp eq i32 %4027, 0
  %4048 = zext i1 %4047 to i8
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4048, i8* %4049, align 1
  %4050 = lshr i32 %4027, 31
  %4051 = trunc i32 %4050 to i8
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4051, i8* %4052, align 1
  %4053 = lshr i32 %4026, 31
  %4054 = xor i32 %4050, %4053
  %4055 = add i32 %4054, %4050
  %4056 = icmp eq i32 %4055, 2
  %4057 = zext i1 %4056 to i8
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4057, i8* %4058, align 1
  store %struct.Memory* %loadMem_42f610, %struct.Memory** %MEMORY
  %loadMem_42f613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 33
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %4061 to i64*
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4063 = getelementptr inbounds %struct.GPR, %struct.GPR* %4062, i32 0, i32 1
  %4064 = getelementptr inbounds %struct.Reg, %struct.Reg* %4063, i32 0, i32 0
  %EAX.i332 = bitcast %union.anon* %4064 to i32*
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4066 = getelementptr inbounds %struct.GPR, %struct.GPR* %4065, i32 0, i32 15
  %4067 = getelementptr inbounds %struct.Reg, %struct.Reg* %4066, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %4067 to i64*
  %4068 = load i64, i64* %RBP.i333
  %4069 = sub i64 %4068, 32
  %4070 = load i32, i32* %EAX.i332
  %4071 = zext i32 %4070 to i64
  %4072 = load i64, i64* %PC.i331
  %4073 = add i64 %4072, 3
  store i64 %4073, i64* %PC.i331
  %4074 = inttoptr i64 %4069 to i32*
  store i32 %4070, i32* %4074
  store %struct.Memory* %loadMem_42f613, %struct.Memory** %MEMORY
  %loadMem_42f616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4076 = getelementptr inbounds %struct.GPR, %struct.GPR* %4075, i32 0, i32 33
  %4077 = getelementptr inbounds %struct.Reg, %struct.Reg* %4076, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %4077 to i64*
  %4078 = load i64, i64* %PC.i330
  %4079 = add i64 %4078, -70
  %4080 = load i64, i64* %PC.i330
  %4081 = add i64 %4080, 5
  store i64 %4081, i64* %PC.i330
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4079, i64* %4082, align 8
  store %struct.Memory* %loadMem_42f616, %struct.Memory** %MEMORY
  br label %block_.L_42f5d0

block_.L_42f61b:                                  ; preds = %block_.L_42f5d0
  %loadMem_42f61b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 33
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %4085 to i64*
  %4086 = load i64, i64* %PC.i329
  %4087 = add i64 %4086, 5
  %4088 = load i64, i64* %PC.i329
  %4089 = add i64 %4088, 5
  store i64 %4089, i64* %PC.i329
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4087, i64* %4090, align 8
  store %struct.Memory* %loadMem_42f61b, %struct.Memory** %MEMORY
  br label %block_.L_42f620

block_.L_42f620:                                  ; preds = %block_.L_42f61b, %block_42f55b
  %loadMem_42f620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 33
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %4093 to i64*
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4095 = getelementptr inbounds %struct.GPR, %struct.GPR* %4094, i32 0, i32 1
  %4096 = getelementptr inbounds %struct.Reg, %struct.Reg* %4095, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %4096 to i64*
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 15
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %4099 to i64*
  %4100 = load i64, i64* %RBP.i328
  %4101 = sub i64 %4100, 24
  %4102 = load i64, i64* %PC.i326
  %4103 = add i64 %4102, 4
  store i64 %4103, i64* %PC.i326
  %4104 = inttoptr i64 %4101 to i64*
  %4105 = load i64, i64* %4104
  store i64 %4105, i64* %RAX.i327, align 8
  store %struct.Memory* %loadMem_42f620, %struct.Memory** %MEMORY
  %loadMem_42f624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 33
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %4108 to i64*
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 1
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %4111 to i64*
  %4112 = load i64, i64* %RAX.i325
  %4113 = load i64, i64* %PC.i324
  %4114 = add i64 %4113, 3
  store i64 %4114, i64* %PC.i324
  %4115 = inttoptr i64 %4112 to i64*
  %4116 = load i64, i64* %4115
  store i64 %4116, i64* %RAX.i325, align 8
  store %struct.Memory* %loadMem_42f624, %struct.Memory** %MEMORY
  %loadMem_42f627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 33
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %4119 to i64*
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 5
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %RCX.i322 = bitcast %union.anon* %4122 to i64*
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 15
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %4125 to i64*
  %4126 = load i64, i64* %RBP.i323
  %4127 = sub i64 %4126, 28
  %4128 = load i64, i64* %PC.i321
  %4129 = add i64 %4128, 4
  store i64 %4129, i64* %PC.i321
  %4130 = inttoptr i64 %4127 to i32*
  %4131 = load i32, i32* %4130
  %4132 = sext i32 %4131 to i64
  store i64 %4132, i64* %RCX.i322, align 8
  store %struct.Memory* %loadMem_42f627, %struct.Memory** %MEMORY
  %loadMem_42f62b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 33
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %4135 to i64*
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 1
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %4138 to i64*
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 5
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %RCX.i319 = bitcast %union.anon* %4141 to i64*
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4143 = getelementptr inbounds %struct.GPR, %struct.GPR* %4142, i32 0, i32 11
  %4144 = getelementptr inbounds %struct.Reg, %struct.Reg* %4143, i32 0, i32 0
  %RDI.i320 = bitcast %union.anon* %4144 to i64*
  %4145 = load i64, i64* %RAX.i318
  %4146 = load i64, i64* %RCX.i319
  %4147 = mul i64 %4146, 8
  %4148 = add i64 %4147, %4145
  %4149 = load i64, i64* %PC.i317
  %4150 = add i64 %4149, 4
  store i64 %4150, i64* %PC.i317
  %4151 = inttoptr i64 %4148 to i64*
  %4152 = load i64, i64* %4151
  store i64 %4152, i64* %RDI.i320, align 8
  store %struct.Memory* %loadMem_42f62b, %struct.Memory** %MEMORY
  %loadMem_42f62f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 33
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %4155 to i64*
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4157 = getelementptr inbounds %struct.GPR, %struct.GPR* %4156, i32 0, i32 1
  %4158 = getelementptr inbounds %struct.Reg, %struct.Reg* %4157, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %4158 to i64*
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 15
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %4161 to i64*
  %4162 = load i64, i64* %RBP.i316
  %4163 = sub i64 %4162, 24
  %4164 = load i64, i64* %PC.i314
  %4165 = add i64 %4164, 4
  store i64 %4165, i64* %PC.i314
  %4166 = inttoptr i64 %4163 to i64*
  %4167 = load i64, i64* %4166
  store i64 %4167, i64* %RAX.i315, align 8
  store %struct.Memory* %loadMem_42f62f, %struct.Memory** %MEMORY
  %loadMem_42f633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4169 = getelementptr inbounds %struct.GPR, %struct.GPR* %4168, i32 0, i32 33
  %4170 = getelementptr inbounds %struct.Reg, %struct.Reg* %4169, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %4170 to i64*
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4172 = getelementptr inbounds %struct.GPR, %struct.GPR* %4171, i32 0, i32 1
  %4173 = getelementptr inbounds %struct.Reg, %struct.Reg* %4172, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %4173 to i64*
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4175 = getelementptr inbounds %struct.GPR, %struct.GPR* %4174, i32 0, i32 9
  %4176 = getelementptr inbounds %struct.Reg, %struct.Reg* %4175, i32 0, i32 0
  %RSI.i313 = bitcast %union.anon* %4176 to i64*
  %4177 = load i64, i64* %RAX.i312
  %4178 = add i64 %4177, 24
  %4179 = load i64, i64* %PC.i311
  %4180 = add i64 %4179, 3
  store i64 %4180, i64* %PC.i311
  %4181 = inttoptr i64 %4178 to i32*
  %4182 = load i32, i32* %4181
  %4183 = zext i32 %4182 to i64
  store i64 %4183, i64* %RSI.i313, align 8
  store %struct.Memory* %loadMem_42f633, %struct.Memory** %MEMORY
  %loadMem_42f636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 33
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %4186 to i64*
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 1
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %4189 to i64*
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4191 = getelementptr inbounds %struct.GPR, %struct.GPR* %4190, i32 0, i32 15
  %4192 = getelementptr inbounds %struct.Reg, %struct.Reg* %4191, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %4192 to i64*
  %4193 = load i64, i64* %RBP.i310
  %4194 = sub i64 %4193, 16
  %4195 = load i64, i64* %PC.i308
  %4196 = add i64 %4195, 4
  store i64 %4196, i64* %PC.i308
  %4197 = inttoptr i64 %4194 to i64*
  %4198 = load i64, i64* %4197
  store i64 %4198, i64* %RAX.i309, align 8
  store %struct.Memory* %loadMem_42f636, %struct.Memory** %MEMORY
  %loadMem_42f63a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 33
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %4201 to i64*
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 1
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %4204 to i64*
  %4205 = load i64, i64* %RAX.i307
  %4206 = add i64 %4205, 40
  %4207 = load i64, i64* %PC.i306
  %4208 = add i64 %4207, 4
  store i64 %4208, i64* %PC.i306
  %4209 = inttoptr i64 %4206 to i64*
  %4210 = load i64, i64* %4209
  store i64 %4210, i64* %RAX.i307, align 8
  store %struct.Memory* %loadMem_42f63a, %struct.Memory** %MEMORY
  %loadMem_42f63e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4212 = getelementptr inbounds %struct.GPR, %struct.GPR* %4211, i32 0, i32 33
  %4213 = getelementptr inbounds %struct.Reg, %struct.Reg* %4212, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %4213 to i64*
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 5
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %4216 to i64*
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 15
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %4219 to i64*
  %4220 = load i64, i64* %RBP.i305
  %4221 = sub i64 %4220, 28
  %4222 = load i64, i64* %PC.i303
  %4223 = add i64 %4222, 4
  store i64 %4223, i64* %PC.i303
  %4224 = inttoptr i64 %4221 to i32*
  %4225 = load i32, i32* %4224
  %4226 = sext i32 %4225 to i64
  store i64 %4226, i64* %RCX.i304, align 8
  store %struct.Memory* %loadMem_42f63e, %struct.Memory** %MEMORY
  %loadMem_42f642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 33
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %4229 to i64*
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 5
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %4232 to i64*
  %4233 = load i64, i64* %RCX.i302
  %4234 = load i64, i64* %PC.i301
  %4235 = add i64 %4234, 7
  store i64 %4235, i64* %PC.i301
  %4236 = sext i64 %4233 to i128
  %4237 = and i128 %4236, -18446744073709551616
  %4238 = zext i64 %4233 to i128
  %4239 = or i128 %4237, %4238
  %4240 = mul i128 360, %4239
  %4241 = trunc i128 %4240 to i64
  store i64 %4241, i64* %RCX.i302, align 8
  %4242 = sext i64 %4241 to i128
  %4243 = icmp ne i128 %4242, %4240
  %4244 = zext i1 %4243 to i8
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4244, i8* %4245, align 1
  %4246 = trunc i128 %4240 to i32
  %4247 = and i32 %4246, 255
  %4248 = call i32 @llvm.ctpop.i32(i32 %4247)
  %4249 = trunc i32 %4248 to i8
  %4250 = and i8 %4249, 1
  %4251 = xor i8 %4250, 1
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4251, i8* %4252, align 1
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4253, align 1
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4254, align 1
  %4255 = lshr i64 %4241, 63
  %4256 = trunc i64 %4255 to i8
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4256, i8* %4257, align 1
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4244, i8* %4258, align 1
  store %struct.Memory* %loadMem_42f642, %struct.Memory** %MEMORY
  %loadMem_42f649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 33
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %4261 to i64*
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4263 = getelementptr inbounds %struct.GPR, %struct.GPR* %4262, i32 0, i32 1
  %4264 = getelementptr inbounds %struct.Reg, %struct.Reg* %4263, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %4264 to i64*
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4266 = getelementptr inbounds %struct.GPR, %struct.GPR* %4265, i32 0, i32 5
  %4267 = getelementptr inbounds %struct.Reg, %struct.Reg* %4266, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %4267 to i64*
  %4268 = load i64, i64* %RAX.i299
  %4269 = load i64, i64* %RCX.i300
  %4270 = load i64, i64* %PC.i298
  %4271 = add i64 %4270, 3
  store i64 %4271, i64* %PC.i298
  %4272 = add i64 %4269, %4268
  store i64 %4272, i64* %RAX.i299, align 8
  %4273 = icmp ult i64 %4272, %4268
  %4274 = icmp ult i64 %4272, %4269
  %4275 = or i1 %4273, %4274
  %4276 = zext i1 %4275 to i8
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4276, i8* %4277, align 1
  %4278 = trunc i64 %4272 to i32
  %4279 = and i32 %4278, 255
  %4280 = call i32 @llvm.ctpop.i32(i32 %4279)
  %4281 = trunc i32 %4280 to i8
  %4282 = and i8 %4281, 1
  %4283 = xor i8 %4282, 1
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4283, i8* %4284, align 1
  %4285 = xor i64 %4269, %4268
  %4286 = xor i64 %4285, %4272
  %4287 = lshr i64 %4286, 4
  %4288 = trunc i64 %4287 to i8
  %4289 = and i8 %4288, 1
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4289, i8* %4290, align 1
  %4291 = icmp eq i64 %4272, 0
  %4292 = zext i1 %4291 to i8
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4292, i8* %4293, align 1
  %4294 = lshr i64 %4272, 63
  %4295 = trunc i64 %4294 to i8
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4295, i8* %4296, align 1
  %4297 = lshr i64 %4268, 63
  %4298 = lshr i64 %4269, 63
  %4299 = xor i64 %4294, %4297
  %4300 = xor i64 %4294, %4298
  %4301 = add i64 %4299, %4300
  %4302 = icmp eq i64 %4301, 2
  %4303 = zext i1 %4302 to i8
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4303, i8* %4304, align 1
  store %struct.Memory* %loadMem_42f649, %struct.Memory** %MEMORY
  %loadMem_42f64c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4306 = getelementptr inbounds %struct.GPR, %struct.GPR* %4305, i32 0, i32 33
  %4307 = getelementptr inbounds %struct.Reg, %struct.Reg* %4306, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %4307 to i64*
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4309 = getelementptr inbounds %struct.GPR, %struct.GPR* %4308, i32 0, i32 1
  %4310 = getelementptr inbounds %struct.Reg, %struct.Reg* %4309, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %4310 to i64*
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4312 = getelementptr inbounds %struct.GPR, %struct.GPR* %4311, i32 0, i32 7
  %4313 = getelementptr inbounds %struct.Reg, %struct.Reg* %4312, i32 0, i32 0
  %RDX.i297 = bitcast %union.anon* %4313 to i64*
  %4314 = load i64, i64* %RAX.i296
  %4315 = add i64 %4314, 352
  %4316 = load i64, i64* %PC.i295
  %4317 = add i64 %4316, 7
  store i64 %4317, i64* %PC.i295
  %4318 = inttoptr i64 %4315 to i64*
  %4319 = load i64, i64* %4318
  store i64 %4319, i64* %RDX.i297, align 8
  store %struct.Memory* %loadMem_42f64c, %struct.Memory** %MEMORY
  %loadMem_42f653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 33
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %4322 to i64*
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 1
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %4325 to i64*
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4327 = getelementptr inbounds %struct.GPR, %struct.GPR* %4326, i32 0, i32 15
  %4328 = getelementptr inbounds %struct.Reg, %struct.Reg* %4327, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %4328 to i64*
  %4329 = load i64, i64* %RBP.i294
  %4330 = sub i64 %4329, 24
  %4331 = load i64, i64* %PC.i292
  %4332 = add i64 %4331, 4
  store i64 %4332, i64* %PC.i292
  %4333 = inttoptr i64 %4330 to i64*
  %4334 = load i64, i64* %4333
  store i64 %4334, i64* %RAX.i293, align 8
  store %struct.Memory* %loadMem_42f653, %struct.Memory** %MEMORY
  %loadMem_42f657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4336 = getelementptr inbounds %struct.GPR, %struct.GPR* %4335, i32 0, i32 33
  %4337 = getelementptr inbounds %struct.Reg, %struct.Reg* %4336, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %4337 to i64*
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4339 = getelementptr inbounds %struct.GPR, %struct.GPR* %4338, i32 0, i32 1
  %4340 = getelementptr inbounds %struct.Reg, %struct.Reg* %4339, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %4340 to i64*
  %4341 = load i64, i64* %RAX.i291
  %4342 = add i64 %4341, 120
  %4343 = load i64, i64* %PC.i290
  %4344 = add i64 %4343, 4
  store i64 %4344, i64* %PC.i290
  %4345 = inttoptr i64 %4342 to i64*
  %4346 = load i64, i64* %4345
  store i64 %4346, i64* %RAX.i291, align 8
  store %struct.Memory* %loadMem_42f657, %struct.Memory** %MEMORY
  %loadMem_42f65b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 33
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %4349 to i64*
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4351 = getelementptr inbounds %struct.GPR, %struct.GPR* %4350, i32 0, i32 5
  %4352 = getelementptr inbounds %struct.Reg, %struct.Reg* %4351, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %4352 to i64*
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4354 = getelementptr inbounds %struct.GPR, %struct.GPR* %4353, i32 0, i32 15
  %4355 = getelementptr inbounds %struct.Reg, %struct.Reg* %4354, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %4355 to i64*
  %4356 = load i64, i64* %RBP.i289
  %4357 = sub i64 %4356, 28
  %4358 = load i64, i64* %PC.i287
  %4359 = add i64 %4358, 4
  store i64 %4359, i64* %PC.i287
  %4360 = inttoptr i64 %4357 to i32*
  %4361 = load i32, i32* %4360
  %4362 = sext i32 %4361 to i64
  store i64 %4362, i64* %RCX.i288, align 8
  store %struct.Memory* %loadMem_42f65b, %struct.Memory** %MEMORY
  %loadMem_42f65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4364 = getelementptr inbounds %struct.GPR, %struct.GPR* %4363, i32 0, i32 33
  %4365 = getelementptr inbounds %struct.Reg, %struct.Reg* %4364, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %4365 to i64*
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4367 = getelementptr inbounds %struct.GPR, %struct.GPR* %4366, i32 0, i32 5
  %4368 = getelementptr inbounds %struct.Reg, %struct.Reg* %4367, i32 0, i32 0
  %RCX.i286 = bitcast %union.anon* %4368 to i64*
  %4369 = load i64, i64* %RCX.i286
  %4370 = load i64, i64* %PC.i285
  %4371 = add i64 %4370, 4
  store i64 %4371, i64* %PC.i285
  %4372 = shl i64 %4369, 2
  %4373 = icmp slt i64 %4372, 0
  %4374 = shl i64 %4372, 1
  store i64 %4374, i64* %RCX.i286, align 8
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4376 = zext i1 %4373 to i8
  store i8 %4376, i8* %4375, align 1
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4378 = trunc i64 %4374 to i32
  %4379 = and i32 %4378, 254
  %4380 = call i32 @llvm.ctpop.i32(i32 %4379)
  %4381 = trunc i32 %4380 to i8
  %4382 = and i8 %4381, 1
  %4383 = xor i8 %4382, 1
  store i8 %4383, i8* %4377, align 1
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4384, align 1
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4386 = icmp eq i64 %4374, 0
  %4387 = zext i1 %4386 to i8
  store i8 %4387, i8* %4385, align 1
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4389 = lshr i64 %4374, 63
  %4390 = trunc i64 %4389 to i8
  store i8 %4390, i8* %4388, align 1
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4391, align 1
  store %struct.Memory* %loadMem_42f65f, %struct.Memory** %MEMORY
  %loadMem_42f663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 33
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %4394 to i64*
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 1
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %4397 to i64*
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4399 = getelementptr inbounds %struct.GPR, %struct.GPR* %4398, i32 0, i32 5
  %4400 = getelementptr inbounds %struct.Reg, %struct.Reg* %4399, i32 0, i32 0
  %RCX.i284 = bitcast %union.anon* %4400 to i64*
  %4401 = load i64, i64* %RAX.i283
  %4402 = load i64, i64* %RCX.i284
  %4403 = load i64, i64* %PC.i282
  %4404 = add i64 %4403, 3
  store i64 %4404, i64* %PC.i282
  %4405 = add i64 %4402, %4401
  store i64 %4405, i64* %RAX.i283, align 8
  %4406 = icmp ult i64 %4405, %4401
  %4407 = icmp ult i64 %4405, %4402
  %4408 = or i1 %4406, %4407
  %4409 = zext i1 %4408 to i8
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4409, i8* %4410, align 1
  %4411 = trunc i64 %4405 to i32
  %4412 = and i32 %4411, 255
  %4413 = call i32 @llvm.ctpop.i32(i32 %4412)
  %4414 = trunc i32 %4413 to i8
  %4415 = and i8 %4414, 1
  %4416 = xor i8 %4415, 1
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4416, i8* %4417, align 1
  %4418 = xor i64 %4402, %4401
  %4419 = xor i64 %4418, %4405
  %4420 = lshr i64 %4419, 4
  %4421 = trunc i64 %4420 to i8
  %4422 = and i8 %4421, 1
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4422, i8* %4423, align 1
  %4424 = icmp eq i64 %4405, 0
  %4425 = zext i1 %4424 to i8
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4425, i8* %4426, align 1
  %4427 = lshr i64 %4405, 63
  %4428 = trunc i64 %4427 to i8
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4428, i8* %4429, align 1
  %4430 = lshr i64 %4401, 63
  %4431 = lshr i64 %4402, 63
  %4432 = xor i64 %4427, %4430
  %4433 = xor i64 %4427, %4431
  %4434 = add i64 %4432, %4433
  %4435 = icmp eq i64 %4434, 2
  %4436 = zext i1 %4435 to i8
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4436, i8* %4437, align 1
  store %struct.Memory* %loadMem_42f663, %struct.Memory** %MEMORY
  %loadMem_42f666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4439 = getelementptr inbounds %struct.GPR, %struct.GPR* %4438, i32 0, i32 33
  %4440 = getelementptr inbounds %struct.Reg, %struct.Reg* %4439, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %4440 to i64*
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4442 = getelementptr inbounds %struct.GPR, %struct.GPR* %4441, i32 0, i32 1
  %4443 = getelementptr inbounds %struct.Reg, %struct.Reg* %4442, i32 0, i32 0
  %RAX.i280 = bitcast %union.anon* %4443 to i64*
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 5
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %RCX.i281 = bitcast %union.anon* %4446 to i64*
  %4447 = load i64, i64* %RAX.i280
  %4448 = load i64, i64* %PC.i279
  %4449 = add i64 %4448, 3
  store i64 %4449, i64* %PC.i279
  store i64 %4447, i64* %RCX.i281, align 8
  store %struct.Memory* %loadMem_42f666, %struct.Memory** %MEMORY
  %loadMem1_42f669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 33
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %4452 to i64*
  %4453 = load i64, i64* %PC.i278
  %4454 = add i64 %4453, -180137
  %4455 = load i64, i64* %PC.i278
  %4456 = add i64 %4455, 5
  %4457 = load i64, i64* %PC.i278
  %4458 = add i64 %4457, 5
  store i64 %4458, i64* %PC.i278
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4460 = load i64, i64* %4459, align 8
  %4461 = add i64 %4460, -8
  %4462 = inttoptr i64 %4461 to i64*
  store i64 %4456, i64* %4462
  store i64 %4461, i64* %4459, align 8
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4454, i64* %4463, align 8
  store %struct.Memory* %loadMem1_42f669, %struct.Memory** %MEMORY
  %loadMem2_42f669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f669 = load i64, i64* %3
  %call2_42f669 = call %struct.Memory* @sub_4036c0.MakeAlignedString(%struct.State* %0, i64 %loadPC_42f669, %struct.Memory* %loadMem2_42f669)
  store %struct.Memory* %call2_42f669, %struct.Memory** %MEMORY
  %loadMem_42f66e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 33
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %4466 to i64*
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 5
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %4469 to i64*
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 15
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %4472 to i64*
  %4473 = load i64, i64* %RBP.i277
  %4474 = sub i64 %4473, 24
  %4475 = load i64, i64* %PC.i275
  %4476 = add i64 %4475, 4
  store i64 %4476, i64* %PC.i275
  %4477 = inttoptr i64 %4474 to i64*
  %4478 = load i64, i64* %4477
  store i64 %4478, i64* %RCX.i276, align 8
  store %struct.Memory* %loadMem_42f66e, %struct.Memory** %MEMORY
  %loadMem_42f672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4480 = getelementptr inbounds %struct.GPR, %struct.GPR* %4479, i32 0, i32 33
  %4481 = getelementptr inbounds %struct.Reg, %struct.Reg* %4480, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %4481 to i64*
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4483 = getelementptr inbounds %struct.GPR, %struct.GPR* %4482, i32 0, i32 5
  %4484 = getelementptr inbounds %struct.Reg, %struct.Reg* %4483, i32 0, i32 0
  %RCX.i273 = bitcast %union.anon* %4484 to i64*
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4486 = getelementptr inbounds %struct.GPR, %struct.GPR* %4485, i32 0, i32 9
  %4487 = getelementptr inbounds %struct.Reg, %struct.Reg* %4486, i32 0, i32 0
  %RSI.i274 = bitcast %union.anon* %4487 to i64*
  %4488 = load i64, i64* %RCX.i273
  %4489 = add i64 %4488, 24
  %4490 = load i64, i64* %PC.i272
  %4491 = add i64 %4490, 3
  store i64 %4491, i64* %PC.i272
  %4492 = inttoptr i64 %4489 to i32*
  %4493 = load i32, i32* %4492
  %4494 = zext i32 %4493 to i64
  store i64 %4494, i64* %RSI.i274, align 8
  store %struct.Memory* %loadMem_42f672, %struct.Memory** %MEMORY
  %loadMem_42f675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4496 = getelementptr inbounds %struct.GPR, %struct.GPR* %4495, i32 0, i32 33
  %4497 = getelementptr inbounds %struct.Reg, %struct.Reg* %4496, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %4497 to i64*
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4499 = getelementptr inbounds %struct.GPR, %struct.GPR* %4498, i32 0, i32 5
  %4500 = getelementptr inbounds %struct.Reg, %struct.Reg* %4499, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %4500 to i64*
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 15
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %4503 to i64*
  %4504 = load i64, i64* %RBP.i271
  %4505 = sub i64 %4504, 24
  %4506 = load i64, i64* %PC.i269
  %4507 = add i64 %4506, 4
  store i64 %4507, i64* %PC.i269
  %4508 = inttoptr i64 %4505 to i64*
  %4509 = load i64, i64* %4508
  store i64 %4509, i64* %RCX.i270, align 8
  store %struct.Memory* %loadMem_42f675, %struct.Memory** %MEMORY
  %loadMem_42f679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4511 = getelementptr inbounds %struct.GPR, %struct.GPR* %4510, i32 0, i32 33
  %4512 = getelementptr inbounds %struct.Reg, %struct.Reg* %4511, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %4512 to i64*
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 5
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %4515 to i64*
  %4516 = load i64, i64* %RCX.i268
  %4517 = add i64 %4516, 344
  %4518 = load i64, i64* %PC.i267
  %4519 = add i64 %4518, 7
  store i64 %4519, i64* %PC.i267
  %4520 = inttoptr i64 %4517 to i64*
  %4521 = load i64, i64* %4520
  store i64 %4521, i64* %RCX.i268, align 8
  store %struct.Memory* %loadMem_42f679, %struct.Memory** %MEMORY
  %loadMem_42f680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4523 = getelementptr inbounds %struct.GPR, %struct.GPR* %4522, i32 0, i32 33
  %4524 = getelementptr inbounds %struct.Reg, %struct.Reg* %4523, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %4524 to i64*
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4526 = getelementptr inbounds %struct.GPR, %struct.GPR* %4525, i32 0, i32 7
  %4527 = getelementptr inbounds %struct.Reg, %struct.Reg* %4526, i32 0, i32 0
  %RDX.i265 = bitcast %union.anon* %4527 to i64*
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4529 = getelementptr inbounds %struct.GPR, %struct.GPR* %4528, i32 0, i32 15
  %4530 = getelementptr inbounds %struct.Reg, %struct.Reg* %4529, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %4530 to i64*
  %4531 = load i64, i64* %RBP.i266
  %4532 = sub i64 %4531, 28
  %4533 = load i64, i64* %PC.i264
  %4534 = add i64 %4533, 4
  store i64 %4534, i64* %PC.i264
  %4535 = inttoptr i64 %4532 to i32*
  %4536 = load i32, i32* %4535
  %4537 = sext i32 %4536 to i64
  store i64 %4537, i64* %RDX.i265, align 8
  store %struct.Memory* %loadMem_42f680, %struct.Memory** %MEMORY
  %loadMem_42f684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4539 = getelementptr inbounds %struct.GPR, %struct.GPR* %4538, i32 0, i32 33
  %4540 = getelementptr inbounds %struct.Reg, %struct.Reg* %4539, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %4540 to i64*
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 9
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %ESI.i262 = bitcast %union.anon* %4543 to i32*
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 5
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %RCX.i263 = bitcast %union.anon* %4546 to i64*
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4548 = getelementptr inbounds %struct.GPR, %struct.GPR* %4547, i32 0, i32 7
  %4549 = getelementptr inbounds %struct.Reg, %struct.Reg* %4548, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4549 to i64*
  %4550 = load i64, i64* %RCX.i263
  %4551 = load i64, i64* %RDX.i
  %4552 = mul i64 %4551, 4
  %4553 = add i64 %4552, %4550
  %4554 = load i32, i32* %ESI.i262
  %4555 = zext i32 %4554 to i64
  %4556 = load i64, i64* %PC.i261
  %4557 = add i64 %4556, 3
  store i64 %4557, i64* %PC.i261
  %4558 = inttoptr i64 %4553 to i32*
  store i32 %4554, i32* %4558
  store %struct.Memory* %loadMem_42f684, %struct.Memory** %MEMORY
  %loadMem_42f687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4560 = getelementptr inbounds %struct.GPR, %struct.GPR* %4559, i32 0, i32 33
  %4561 = getelementptr inbounds %struct.Reg, %struct.Reg* %4560, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %4561 to i64*
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4563 = getelementptr inbounds %struct.GPR, %struct.GPR* %4562, i32 0, i32 1
  %4564 = getelementptr inbounds %struct.Reg, %struct.Reg* %4563, i32 0, i32 0
  %EAX.i259 = bitcast %union.anon* %4564 to i32*
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4566 = getelementptr inbounds %struct.GPR, %struct.GPR* %4565, i32 0, i32 15
  %4567 = getelementptr inbounds %struct.Reg, %struct.Reg* %4566, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %4567 to i64*
  %4568 = load i64, i64* %RBP.i260
  %4569 = sub i64 %4568, 60
  %4570 = load i32, i32* %EAX.i259
  %4571 = zext i32 %4570 to i64
  %4572 = load i64, i64* %PC.i258
  %4573 = add i64 %4572, 3
  store i64 %4573, i64* %PC.i258
  %4574 = inttoptr i64 %4569 to i32*
  store i32 %4570, i32* %4574
  store %struct.Memory* %loadMem_42f687, %struct.Memory** %MEMORY
  br label %block_.L_42f68a

block_.L_42f68a:                                  ; preds = %block_.L_42f620, %block_.L_42f534
  %loadMem_42f68a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4576 = getelementptr inbounds %struct.GPR, %struct.GPR* %4575, i32 0, i32 33
  %4577 = getelementptr inbounds %struct.Reg, %struct.Reg* %4576, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %4577 to i64*
  %4578 = load i64, i64* %PC.i257
  %4579 = add i64 %4578, 5
  %4580 = load i64, i64* %PC.i257
  %4581 = add i64 %4580, 5
  store i64 %4581, i64* %PC.i257
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4579, i64* %4582, align 8
  store %struct.Memory* %loadMem_42f68a, %struct.Memory** %MEMORY
  br label %block_.L_42f68f

block_.L_42f68f:                                  ; preds = %block_.L_42f68a
  %loadMem_42f68f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 33
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %4585 to i64*
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4587 = getelementptr inbounds %struct.GPR, %struct.GPR* %4586, i32 0, i32 1
  %4588 = getelementptr inbounds %struct.Reg, %struct.Reg* %4587, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %4588 to i64*
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4590 = getelementptr inbounds %struct.GPR, %struct.GPR* %4589, i32 0, i32 15
  %4591 = getelementptr inbounds %struct.Reg, %struct.Reg* %4590, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %4591 to i64*
  %4592 = load i64, i64* %RBP.i256
  %4593 = sub i64 %4592, 28
  %4594 = load i64, i64* %PC.i254
  %4595 = add i64 %4594, 3
  store i64 %4595, i64* %PC.i254
  %4596 = inttoptr i64 %4593 to i32*
  %4597 = load i32, i32* %4596
  %4598 = zext i32 %4597 to i64
  store i64 %4598, i64* %RAX.i255, align 8
  store %struct.Memory* %loadMem_42f68f, %struct.Memory** %MEMORY
  %loadMem_42f692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4600 = getelementptr inbounds %struct.GPR, %struct.GPR* %4599, i32 0, i32 33
  %4601 = getelementptr inbounds %struct.Reg, %struct.Reg* %4600, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %4601 to i64*
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4603 = getelementptr inbounds %struct.GPR, %struct.GPR* %4602, i32 0, i32 1
  %4604 = getelementptr inbounds %struct.Reg, %struct.Reg* %4603, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %4604 to i64*
  %4605 = load i64, i64* %RAX.i253
  %4606 = load i64, i64* %PC.i252
  %4607 = add i64 %4606, 3
  store i64 %4607, i64* %PC.i252
  %4608 = trunc i64 %4605 to i32
  %4609 = add i32 1, %4608
  %4610 = zext i32 %4609 to i64
  store i64 %4610, i64* %RAX.i253, align 8
  %4611 = icmp ult i32 %4609, %4608
  %4612 = icmp ult i32 %4609, 1
  %4613 = or i1 %4611, %4612
  %4614 = zext i1 %4613 to i8
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4614, i8* %4615, align 1
  %4616 = and i32 %4609, 255
  %4617 = call i32 @llvm.ctpop.i32(i32 %4616)
  %4618 = trunc i32 %4617 to i8
  %4619 = and i8 %4618, 1
  %4620 = xor i8 %4619, 1
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4620, i8* %4621, align 1
  %4622 = xor i64 1, %4605
  %4623 = trunc i64 %4622 to i32
  %4624 = xor i32 %4623, %4609
  %4625 = lshr i32 %4624, 4
  %4626 = trunc i32 %4625 to i8
  %4627 = and i8 %4626, 1
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4627, i8* %4628, align 1
  %4629 = icmp eq i32 %4609, 0
  %4630 = zext i1 %4629 to i8
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4630, i8* %4631, align 1
  %4632 = lshr i32 %4609, 31
  %4633 = trunc i32 %4632 to i8
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4633, i8* %4634, align 1
  %4635 = lshr i32 %4608, 31
  %4636 = xor i32 %4632, %4635
  %4637 = add i32 %4636, %4632
  %4638 = icmp eq i32 %4637, 2
  %4639 = zext i1 %4638 to i8
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4639, i8* %4640, align 1
  store %struct.Memory* %loadMem_42f692, %struct.Memory** %MEMORY
  %loadMem_42f695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 33
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %4643 to i64*
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 1
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4646 to i32*
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 15
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %4649 to i64*
  %4650 = load i64, i64* %RBP.i251
  %4651 = sub i64 %4650, 28
  %4652 = load i32, i32* %EAX.i
  %4653 = zext i32 %4652 to i64
  %4654 = load i64, i64* %PC.i250
  %4655 = add i64 %4654, 3
  store i64 %4655, i64* %PC.i250
  %4656 = inttoptr i64 %4651 to i32*
  store i32 %4652, i32* %4656
  store %struct.Memory* %loadMem_42f695, %struct.Memory** %MEMORY
  %loadMem_42f698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4658 = getelementptr inbounds %struct.GPR, %struct.GPR* %4657, i32 0, i32 33
  %4659 = getelementptr inbounds %struct.Reg, %struct.Reg* %4658, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %4659 to i64*
  %4660 = load i64, i64* %PC.i249
  %4661 = add i64 %4660, -1066
  %4662 = load i64, i64* %PC.i249
  %4663 = add i64 %4662, 5
  store i64 %4663, i64* %PC.i249
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4661, i64* %4664, align 8
  store %struct.Memory* %loadMem_42f698, %struct.Memory** %MEMORY
  br label %block_.L_42f26e

block_.L_42f69d:                                  ; preds = %block_.L_42f26e
  %loadMem_42f69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4666 = getelementptr inbounds %struct.GPR, %struct.GPR* %4665, i32 0, i32 33
  %4667 = getelementptr inbounds %struct.Reg, %struct.Reg* %4666, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %4667 to i64*
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4669 = getelementptr inbounds %struct.GPR, %struct.GPR* %4668, i32 0, i32 9
  %4670 = getelementptr inbounds %struct.Reg, %struct.Reg* %4669, i32 0, i32 0
  %RSI.i248 = bitcast %union.anon* %4670 to i64*
  %4671 = load i64, i64* %PC.i247
  %4672 = add i64 %4671, 5
  store i64 %4672, i64* %PC.i247
  store i64 4294967295, i64* %RSI.i248, align 8
  store %struct.Memory* %loadMem_42f69d, %struct.Memory** %MEMORY
  %loadMem_42f6a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4674 = getelementptr inbounds %struct.GPR, %struct.GPR* %4673, i32 0, i32 33
  %4675 = getelementptr inbounds %struct.Reg, %struct.Reg* %4674, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %4675 to i64*
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 1
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %4678 to i64*
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4680 = getelementptr inbounds %struct.GPR, %struct.GPR* %4679, i32 0, i32 15
  %4681 = getelementptr inbounds %struct.Reg, %struct.Reg* %4680, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %4681 to i64*
  %4682 = load i64, i64* %RBP.i246
  %4683 = sub i64 %4682, 16
  %4684 = load i64, i64* %PC.i244
  %4685 = add i64 %4684, 4
  store i64 %4685, i64* %PC.i244
  %4686 = inttoptr i64 %4683 to i64*
  %4687 = load i64, i64* %4686
  store i64 %4687, i64* %RAX.i245, align 8
  store %struct.Memory* %loadMem_42f6a2, %struct.Memory** %MEMORY
  %loadMem_42f6a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 33
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %4690 to i64*
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4692 = getelementptr inbounds %struct.GPR, %struct.GPR* %4691, i32 0, i32 1
  %4693 = getelementptr inbounds %struct.Reg, %struct.Reg* %4692, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %4693 to i64*
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4695 = getelementptr inbounds %struct.GPR, %struct.GPR* %4694, i32 0, i32 11
  %4696 = getelementptr inbounds %struct.Reg, %struct.Reg* %4695, i32 0, i32 0
  %RDI.i243 = bitcast %union.anon* %4696 to i64*
  %4697 = load i64, i64* %RAX.i242
  %4698 = add i64 %4697, 48
  %4699 = load i64, i64* %PC.i241
  %4700 = add i64 %4699, 4
  store i64 %4700, i64* %PC.i241
  %4701 = inttoptr i64 %4698 to i64*
  %4702 = load i64, i64* %4701
  store i64 %4702, i64* %RDI.i243, align 8
  store %struct.Memory* %loadMem_42f6a6, %struct.Memory** %MEMORY
  %loadMem1_42f6aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4704 = getelementptr inbounds %struct.GPR, %struct.GPR* %4703, i32 0, i32 33
  %4705 = getelementptr inbounds %struct.Reg, %struct.Reg* %4704, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %4705 to i64*
  %4706 = load i64, i64* %PC.i240
  %4707 = add i64 %4706, 94326
  %4708 = load i64, i64* %PC.i240
  %4709 = add i64 %4708, 5
  %4710 = load i64, i64* %PC.i240
  %4711 = add i64 %4710, 5
  store i64 %4711, i64* %PC.i240
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4713 = load i64, i64* %4712, align 8
  %4714 = add i64 %4713, -8
  %4715 = inttoptr i64 %4714 to i64*
  store i64 %4709, i64* %4715
  store i64 %4714, i64* %4712, align 8
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4707, i64* %4716, align 8
  store %struct.Memory* %loadMem1_42f6aa, %struct.Memory** %MEMORY
  %loadMem2_42f6aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f6aa = load i64, i64* %3
  %call2_42f6aa = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64 %loadPC_42f6aa, %struct.Memory* %loadMem2_42f6aa)
  store %struct.Memory* %call2_42f6aa, %struct.Memory** %MEMORY
  %loadMem_42f6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 33
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %4719 to i64*
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4721 = getelementptr inbounds %struct.GPR, %struct.GPR* %4720, i32 0, i32 9
  %4722 = getelementptr inbounds %struct.Reg, %struct.Reg* %4721, i32 0, i32 0
  %RSI.i239 = bitcast %union.anon* %4722 to i64*
  %4723 = load i64, i64* %PC.i238
  %4724 = add i64 %4723, 5
  store i64 %4724, i64* %PC.i238
  store i64 4294967295, i64* %RSI.i239, align 8
  store %struct.Memory* %loadMem_42f6af, %struct.Memory** %MEMORY
  %loadMem_42f6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 33
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4727 to i64*
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4729 = getelementptr inbounds %struct.GPR, %struct.GPR* %4728, i32 0, i32 11
  %4730 = getelementptr inbounds %struct.Reg, %struct.Reg* %4729, i32 0, i32 0
  %RDI.i236 = bitcast %union.anon* %4730 to i64*
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4732 = getelementptr inbounds %struct.GPR, %struct.GPR* %4731, i32 0, i32 15
  %4733 = getelementptr inbounds %struct.Reg, %struct.Reg* %4732, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %4733 to i64*
  %4734 = load i64, i64* %RBP.i237
  %4735 = sub i64 %4734, 24
  %4736 = load i64, i64* %PC.i235
  %4737 = add i64 %4736, 4
  store i64 %4737, i64* %PC.i235
  %4738 = inttoptr i64 %4735 to i64*
  %4739 = load i64, i64* %4738
  store i64 %4739, i64* %RDI.i236, align 8
  store %struct.Memory* %loadMem_42f6b4, %struct.Memory** %MEMORY
  %loadMem_42f6b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4741 = getelementptr inbounds %struct.GPR, %struct.GPR* %4740, i32 0, i32 33
  %4742 = getelementptr inbounds %struct.Reg, %struct.Reg* %4741, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %4742 to i64*
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4744 = getelementptr inbounds %struct.GPR, %struct.GPR* %4743, i32 0, i32 1
  %4745 = getelementptr inbounds %struct.Reg, %struct.Reg* %4744, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %4745 to i64*
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4747 = getelementptr inbounds %struct.GPR, %struct.GPR* %4746, i32 0, i32 11
  %4748 = getelementptr inbounds %struct.Reg, %struct.Reg* %4747, i32 0, i32 0
  %RDI.i234 = bitcast %union.anon* %4748 to i64*
  %4749 = load i64, i64* %RDI.i234
  %4750 = add i64 %4749, 40
  %4751 = load i64, i64* %RAX.i233
  %4752 = load i64, i64* %PC.i232
  %4753 = add i64 %4752, 4
  store i64 %4753, i64* %PC.i232
  %4754 = inttoptr i64 %4750 to i64*
  store i64 %4751, i64* %4754
  store %struct.Memory* %loadMem_42f6b8, %struct.Memory** %MEMORY
  %loadMem_42f6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4756 = getelementptr inbounds %struct.GPR, %struct.GPR* %4755, i32 0, i32 33
  %4757 = getelementptr inbounds %struct.Reg, %struct.Reg* %4756, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %4757 to i64*
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4759 = getelementptr inbounds %struct.GPR, %struct.GPR* %4758, i32 0, i32 1
  %4760 = getelementptr inbounds %struct.Reg, %struct.Reg* %4759, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %4760 to i64*
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 15
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %4763 to i64*
  %4764 = load i64, i64* %RBP.i231
  %4765 = sub i64 %4764, 16
  %4766 = load i64, i64* %PC.i229
  %4767 = add i64 %4766, 4
  store i64 %4767, i64* %PC.i229
  %4768 = inttoptr i64 %4765 to i64*
  %4769 = load i64, i64* %4768
  store i64 %4769, i64* %RAX.i230, align 8
  store %struct.Memory* %loadMem_42f6bc, %struct.Memory** %MEMORY
  %loadMem_42f6c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 33
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %4772 to i64*
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 1
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %4775 to i64*
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4777 = getelementptr inbounds %struct.GPR, %struct.GPR* %4776, i32 0, i32 11
  %4778 = getelementptr inbounds %struct.Reg, %struct.Reg* %4777, i32 0, i32 0
  %RDI.i228 = bitcast %union.anon* %4778 to i64*
  %4779 = load i64, i64* %RAX.i227
  %4780 = add i64 %4779, 56
  %4781 = load i64, i64* %PC.i226
  %4782 = add i64 %4781, 4
  store i64 %4782, i64* %PC.i226
  %4783 = inttoptr i64 %4780 to i64*
  %4784 = load i64, i64* %4783
  store i64 %4784, i64* %RDI.i228, align 8
  store %struct.Memory* %loadMem_42f6c0, %struct.Memory** %MEMORY
  %loadMem1_42f6c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4786 = getelementptr inbounds %struct.GPR, %struct.GPR* %4785, i32 0, i32 33
  %4787 = getelementptr inbounds %struct.Reg, %struct.Reg* %4786, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %4787 to i64*
  %4788 = load i64, i64* %PC.i225
  %4789 = add i64 %4788, 94300
  %4790 = load i64, i64* %PC.i225
  %4791 = add i64 %4790, 5
  %4792 = load i64, i64* %PC.i225
  %4793 = add i64 %4792, 5
  store i64 %4793, i64* %PC.i225
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4795 = load i64, i64* %4794, align 8
  %4796 = add i64 %4795, -8
  %4797 = inttoptr i64 %4796 to i64*
  store i64 %4791, i64* %4797
  store i64 %4796, i64* %4794, align 8
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4789, i64* %4798, align 8
  store %struct.Memory* %loadMem1_42f6c4, %struct.Memory** %MEMORY
  %loadMem2_42f6c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f6c4 = load i64, i64* %3
  %call2_42f6c4 = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64 %loadPC_42f6c4, %struct.Memory* %loadMem2_42f6c4)
  store %struct.Memory* %call2_42f6c4, %struct.Memory** %MEMORY
  %loadMem_42f6c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 33
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %4801 to i64*
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 9
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %RSI.i224 = bitcast %union.anon* %4804 to i64*
  %4805 = load i64, i64* %PC.i223
  %4806 = add i64 %4805, 5
  store i64 %4806, i64* %PC.i223
  store i64 4294967295, i64* %RSI.i224, align 8
  store %struct.Memory* %loadMem_42f6c9, %struct.Memory** %MEMORY
  %loadMem_42f6ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4808 = getelementptr inbounds %struct.GPR, %struct.GPR* %4807, i32 0, i32 33
  %4809 = getelementptr inbounds %struct.Reg, %struct.Reg* %4808, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %4809 to i64*
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4811 = getelementptr inbounds %struct.GPR, %struct.GPR* %4810, i32 0, i32 11
  %4812 = getelementptr inbounds %struct.Reg, %struct.Reg* %4811, i32 0, i32 0
  %RDI.i221 = bitcast %union.anon* %4812 to i64*
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4814 = getelementptr inbounds %struct.GPR, %struct.GPR* %4813, i32 0, i32 15
  %4815 = getelementptr inbounds %struct.Reg, %struct.Reg* %4814, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %4815 to i64*
  %4816 = load i64, i64* %RBP.i222
  %4817 = sub i64 %4816, 24
  %4818 = load i64, i64* %PC.i220
  %4819 = add i64 %4818, 4
  store i64 %4819, i64* %PC.i220
  %4820 = inttoptr i64 %4817 to i64*
  %4821 = load i64, i64* %4820
  store i64 %4821, i64* %RDI.i221, align 8
  store %struct.Memory* %loadMem_42f6ce, %struct.Memory** %MEMORY
  %loadMem_42f6d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4823 = getelementptr inbounds %struct.GPR, %struct.GPR* %4822, i32 0, i32 33
  %4824 = getelementptr inbounds %struct.Reg, %struct.Reg* %4823, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %4824 to i64*
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 1
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %4827 to i64*
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4829 = getelementptr inbounds %struct.GPR, %struct.GPR* %4828, i32 0, i32 11
  %4830 = getelementptr inbounds %struct.Reg, %struct.Reg* %4829, i32 0, i32 0
  %RDI.i219 = bitcast %union.anon* %4830 to i64*
  %4831 = load i64, i64* %RDI.i219
  %4832 = add i64 %4831, 48
  %4833 = load i64, i64* %RAX.i218
  %4834 = load i64, i64* %PC.i217
  %4835 = add i64 %4834, 4
  store i64 %4835, i64* %PC.i217
  %4836 = inttoptr i64 %4832 to i64*
  store i64 %4833, i64* %4836
  store %struct.Memory* %loadMem_42f6d2, %struct.Memory** %MEMORY
  %loadMem_42f6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4838 = getelementptr inbounds %struct.GPR, %struct.GPR* %4837, i32 0, i32 33
  %4839 = getelementptr inbounds %struct.Reg, %struct.Reg* %4838, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %4839 to i64*
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4841 = getelementptr inbounds %struct.GPR, %struct.GPR* %4840, i32 0, i32 1
  %4842 = getelementptr inbounds %struct.Reg, %struct.Reg* %4841, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %4842 to i64*
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4844 = getelementptr inbounds %struct.GPR, %struct.GPR* %4843, i32 0, i32 15
  %4845 = getelementptr inbounds %struct.Reg, %struct.Reg* %4844, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %4845 to i64*
  %4846 = load i64, i64* %RBP.i216
  %4847 = sub i64 %4846, 16
  %4848 = load i64, i64* %PC.i214
  %4849 = add i64 %4848, 4
  store i64 %4849, i64* %PC.i214
  %4850 = inttoptr i64 %4847 to i64*
  %4851 = load i64, i64* %4850
  store i64 %4851, i64* %RAX.i215, align 8
  store %struct.Memory* %loadMem_42f6d6, %struct.Memory** %MEMORY
  %loadMem_42f6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4853 = getelementptr inbounds %struct.GPR, %struct.GPR* %4852, i32 0, i32 33
  %4854 = getelementptr inbounds %struct.Reg, %struct.Reg* %4853, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %4854 to i64*
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 1
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %4857 to i64*
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4859 = getelementptr inbounds %struct.GPR, %struct.GPR* %4858, i32 0, i32 11
  %4860 = getelementptr inbounds %struct.Reg, %struct.Reg* %4859, i32 0, i32 0
  %RDI.i213 = bitcast %union.anon* %4860 to i64*
  %4861 = load i64, i64* %RAX.i212
  %4862 = add i64 %4861, 64
  %4863 = load i64, i64* %PC.i211
  %4864 = add i64 %4863, 4
  store i64 %4864, i64* %PC.i211
  %4865 = inttoptr i64 %4862 to i64*
  %4866 = load i64, i64* %4865
  store i64 %4866, i64* %RDI.i213, align 8
  store %struct.Memory* %loadMem_42f6da, %struct.Memory** %MEMORY
  %loadMem1_42f6de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4868 = getelementptr inbounds %struct.GPR, %struct.GPR* %4867, i32 0, i32 33
  %4869 = getelementptr inbounds %struct.Reg, %struct.Reg* %4868, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %4869 to i64*
  %4870 = load i64, i64* %PC.i210
  %4871 = add i64 %4870, 94274
  %4872 = load i64, i64* %PC.i210
  %4873 = add i64 %4872, 5
  %4874 = load i64, i64* %PC.i210
  %4875 = add i64 %4874, 5
  store i64 %4875, i64* %PC.i210
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4877 = load i64, i64* %4876, align 8
  %4878 = add i64 %4877, -8
  %4879 = inttoptr i64 %4878 to i64*
  store i64 %4873, i64* %4879
  store i64 %4878, i64* %4876, align 8
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4871, i64* %4880, align 8
  store %struct.Memory* %loadMem1_42f6de, %struct.Memory** %MEMORY
  %loadMem2_42f6de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f6de = load i64, i64* %3
  %call2_42f6de = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64 %loadPC_42f6de, %struct.Memory* %loadMem2_42f6de)
  store %struct.Memory* %call2_42f6de, %struct.Memory** %MEMORY
  %loadMem_42f6e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4882 = getelementptr inbounds %struct.GPR, %struct.GPR* %4881, i32 0, i32 33
  %4883 = getelementptr inbounds %struct.Reg, %struct.Reg* %4882, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %4883 to i64*
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 9
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %RSI.i209 = bitcast %union.anon* %4886 to i64*
  %4887 = load i64, i64* %PC.i208
  %4888 = add i64 %4887, 5
  store i64 %4888, i64* %PC.i208
  store i64 4294967295, i64* %RSI.i209, align 8
  store %struct.Memory* %loadMem_42f6e3, %struct.Memory** %MEMORY
  %loadMem_42f6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4890 = getelementptr inbounds %struct.GPR, %struct.GPR* %4889, i32 0, i32 33
  %4891 = getelementptr inbounds %struct.Reg, %struct.Reg* %4890, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %4891 to i64*
  %4892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4893 = getelementptr inbounds %struct.GPR, %struct.GPR* %4892, i32 0, i32 11
  %4894 = getelementptr inbounds %struct.Reg, %struct.Reg* %4893, i32 0, i32 0
  %RDI.i206 = bitcast %union.anon* %4894 to i64*
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4896 = getelementptr inbounds %struct.GPR, %struct.GPR* %4895, i32 0, i32 15
  %4897 = getelementptr inbounds %struct.Reg, %struct.Reg* %4896, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %4897 to i64*
  %4898 = load i64, i64* %RBP.i207
  %4899 = sub i64 %4898, 24
  %4900 = load i64, i64* %PC.i205
  %4901 = add i64 %4900, 4
  store i64 %4901, i64* %PC.i205
  %4902 = inttoptr i64 %4899 to i64*
  %4903 = load i64, i64* %4902
  store i64 %4903, i64* %RDI.i206, align 8
  store %struct.Memory* %loadMem_42f6e8, %struct.Memory** %MEMORY
  %loadMem_42f6ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4905 = getelementptr inbounds %struct.GPR, %struct.GPR* %4904, i32 0, i32 33
  %4906 = getelementptr inbounds %struct.Reg, %struct.Reg* %4905, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %4906 to i64*
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4908 = getelementptr inbounds %struct.GPR, %struct.GPR* %4907, i32 0, i32 1
  %4909 = getelementptr inbounds %struct.Reg, %struct.Reg* %4908, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %4909 to i64*
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4911 = getelementptr inbounds %struct.GPR, %struct.GPR* %4910, i32 0, i32 11
  %4912 = getelementptr inbounds %struct.Reg, %struct.Reg* %4911, i32 0, i32 0
  %RDI.i204 = bitcast %union.anon* %4912 to i64*
  %4913 = load i64, i64* %RDI.i204
  %4914 = add i64 %4913, 56
  %4915 = load i64, i64* %RAX.i203
  %4916 = load i64, i64* %PC.i202
  %4917 = add i64 %4916, 4
  store i64 %4917, i64* %PC.i202
  %4918 = inttoptr i64 %4914 to i64*
  store i64 %4915, i64* %4918
  store %struct.Memory* %loadMem_42f6ec, %struct.Memory** %MEMORY
  %loadMem_42f6f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 33
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %4921 to i64*
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 1
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %4924 to i64*
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 15
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %4927 to i64*
  %4928 = load i64, i64* %RBP.i201
  %4929 = sub i64 %4928, 16
  %4930 = load i64, i64* %PC.i199
  %4931 = add i64 %4930, 4
  store i64 %4931, i64* %PC.i199
  %4932 = inttoptr i64 %4929 to i64*
  %4933 = load i64, i64* %4932
  store i64 %4933, i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_42f6f0, %struct.Memory** %MEMORY
  %loadMem_42f6f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4935 = getelementptr inbounds %struct.GPR, %struct.GPR* %4934, i32 0, i32 33
  %4936 = getelementptr inbounds %struct.Reg, %struct.Reg* %4935, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %4936 to i64*
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4938 = getelementptr inbounds %struct.GPR, %struct.GPR* %4937, i32 0, i32 1
  %4939 = getelementptr inbounds %struct.Reg, %struct.Reg* %4938, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %4939 to i64*
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4941 = getelementptr inbounds %struct.GPR, %struct.GPR* %4940, i32 0, i32 11
  %4942 = getelementptr inbounds %struct.Reg, %struct.Reg* %4941, i32 0, i32 0
  %RDI.i198 = bitcast %union.anon* %4942 to i64*
  %4943 = load i64, i64* %RAX.i197
  %4944 = add i64 %4943, 72
  %4945 = load i64, i64* %PC.i196
  %4946 = add i64 %4945, 4
  store i64 %4946, i64* %PC.i196
  %4947 = inttoptr i64 %4944 to i64*
  %4948 = load i64, i64* %4947
  store i64 %4948, i64* %RDI.i198, align 8
  store %struct.Memory* %loadMem_42f6f4, %struct.Memory** %MEMORY
  %loadMem1_42f6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4950 = getelementptr inbounds %struct.GPR, %struct.GPR* %4949, i32 0, i32 33
  %4951 = getelementptr inbounds %struct.Reg, %struct.Reg* %4950, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %4951 to i64*
  %4952 = load i64, i64* %PC.i195
  %4953 = add i64 %4952, 94248
  %4954 = load i64, i64* %PC.i195
  %4955 = add i64 %4954, 5
  %4956 = load i64, i64* %PC.i195
  %4957 = add i64 %4956, 5
  store i64 %4957, i64* %PC.i195
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4959 = load i64, i64* %4958, align 8
  %4960 = add i64 %4959, -8
  %4961 = inttoptr i64 %4960 to i64*
  store i64 %4955, i64* %4961
  store i64 %4960, i64* %4958, align 8
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4953, i64* %4962, align 8
  store %struct.Memory* %loadMem1_42f6f8, %struct.Memory** %MEMORY
  %loadMem2_42f6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f6f8 = load i64, i64* %3
  %call2_42f6f8 = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64 %loadPC_42f6f8, %struct.Memory* %loadMem2_42f6f8)
  store %struct.Memory* %call2_42f6f8, %struct.Memory** %MEMORY
  %loadMem_42f6fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 33
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %4965 to i64*
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 9
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %RSI.i194 = bitcast %union.anon* %4968 to i64*
  %4969 = load i64, i64* %PC.i193
  %4970 = add i64 %4969, 5
  store i64 %4970, i64* %PC.i193
  store i64 4294967295, i64* %RSI.i194, align 8
  store %struct.Memory* %loadMem_42f6fd, %struct.Memory** %MEMORY
  %loadMem_42f702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4972 = getelementptr inbounds %struct.GPR, %struct.GPR* %4971, i32 0, i32 33
  %4973 = getelementptr inbounds %struct.Reg, %struct.Reg* %4972, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %4973 to i64*
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4975 = getelementptr inbounds %struct.GPR, %struct.GPR* %4974, i32 0, i32 11
  %4976 = getelementptr inbounds %struct.Reg, %struct.Reg* %4975, i32 0, i32 0
  %RDI.i191 = bitcast %union.anon* %4976 to i64*
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 15
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %4979 to i64*
  %4980 = load i64, i64* %RBP.i192
  %4981 = sub i64 %4980, 24
  %4982 = load i64, i64* %PC.i190
  %4983 = add i64 %4982, 4
  store i64 %4983, i64* %PC.i190
  %4984 = inttoptr i64 %4981 to i64*
  %4985 = load i64, i64* %4984
  store i64 %4985, i64* %RDI.i191, align 8
  store %struct.Memory* %loadMem_42f702, %struct.Memory** %MEMORY
  %loadMem_42f706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4987 = getelementptr inbounds %struct.GPR, %struct.GPR* %4986, i32 0, i32 33
  %4988 = getelementptr inbounds %struct.Reg, %struct.Reg* %4987, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %4988 to i64*
  %4989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4990 = getelementptr inbounds %struct.GPR, %struct.GPR* %4989, i32 0, i32 1
  %4991 = getelementptr inbounds %struct.Reg, %struct.Reg* %4990, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %4991 to i64*
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 11
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %RDI.i189 = bitcast %union.anon* %4994 to i64*
  %4995 = load i64, i64* %RDI.i189
  %4996 = add i64 %4995, 64
  %4997 = load i64, i64* %RAX.i188
  %4998 = load i64, i64* %PC.i187
  %4999 = add i64 %4998, 4
  store i64 %4999, i64* %PC.i187
  %5000 = inttoptr i64 %4996 to i64*
  store i64 %4997, i64* %5000
  store %struct.Memory* %loadMem_42f706, %struct.Memory** %MEMORY
  %loadMem_42f70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5002 = getelementptr inbounds %struct.GPR, %struct.GPR* %5001, i32 0, i32 33
  %5003 = getelementptr inbounds %struct.Reg, %struct.Reg* %5002, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %5003 to i64*
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5005 = getelementptr inbounds %struct.GPR, %struct.GPR* %5004, i32 0, i32 1
  %5006 = getelementptr inbounds %struct.Reg, %struct.Reg* %5005, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %5006 to i64*
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 15
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %5009 to i64*
  %5010 = load i64, i64* %RBP.i186
  %5011 = sub i64 %5010, 16
  %5012 = load i64, i64* %PC.i184
  %5013 = add i64 %5012, 4
  store i64 %5013, i64* %PC.i184
  %5014 = inttoptr i64 %5011 to i64*
  %5015 = load i64, i64* %5014
  store i64 %5015, i64* %RAX.i185, align 8
  store %struct.Memory* %loadMem_42f70a, %struct.Memory** %MEMORY
  %loadMem_42f70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5017 = getelementptr inbounds %struct.GPR, %struct.GPR* %5016, i32 0, i32 33
  %5018 = getelementptr inbounds %struct.Reg, %struct.Reg* %5017, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %5018 to i64*
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5020 = getelementptr inbounds %struct.GPR, %struct.GPR* %5019, i32 0, i32 1
  %5021 = getelementptr inbounds %struct.Reg, %struct.Reg* %5020, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %5021 to i64*
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5023 = getelementptr inbounds %struct.GPR, %struct.GPR* %5022, i32 0, i32 11
  %5024 = getelementptr inbounds %struct.Reg, %struct.Reg* %5023, i32 0, i32 0
  %RDI.i183 = bitcast %union.anon* %5024 to i64*
  %5025 = load i64, i64* %RAX.i182
  %5026 = add i64 %5025, 24
  %5027 = load i64, i64* %PC.i181
  %5028 = add i64 %5027, 4
  store i64 %5028, i64* %PC.i181
  %5029 = inttoptr i64 %5026 to i64*
  %5030 = load i64, i64* %5029
  store i64 %5030, i64* %RDI.i183, align 8
  store %struct.Memory* %loadMem_42f70e, %struct.Memory** %MEMORY
  %loadMem1_42f712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5032 = getelementptr inbounds %struct.GPR, %struct.GPR* %5031, i32 0, i32 33
  %5033 = getelementptr inbounds %struct.Reg, %struct.Reg* %5032, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %5033 to i64*
  %5034 = load i64, i64* %PC.i180
  %5035 = add i64 %5034, 94222
  %5036 = load i64, i64* %PC.i180
  %5037 = add i64 %5036, 5
  %5038 = load i64, i64* %PC.i180
  %5039 = add i64 %5038, 5
  store i64 %5039, i64* %PC.i180
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5041 = load i64, i64* %5040, align 8
  %5042 = add i64 %5041, -8
  %5043 = inttoptr i64 %5042 to i64*
  store i64 %5037, i64* %5043
  store i64 %5042, i64* %5040, align 8
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5035, i64* %5044, align 8
  store %struct.Memory* %loadMem1_42f712, %struct.Memory** %MEMORY
  %loadMem2_42f712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f712 = load i64, i64* %3
  %call2_42f712 = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64 %loadPC_42f712, %struct.Memory* %loadMem2_42f712)
  store %struct.Memory* %call2_42f712, %struct.Memory** %MEMORY
  %loadMem_42f717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5046 = getelementptr inbounds %struct.GPR, %struct.GPR* %5045, i32 0, i32 33
  %5047 = getelementptr inbounds %struct.Reg, %struct.Reg* %5046, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %5047 to i64*
  %5048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5049 = getelementptr inbounds %struct.GPR, %struct.GPR* %5048, i32 0, i32 9
  %5050 = getelementptr inbounds %struct.Reg, %struct.Reg* %5049, i32 0, i32 0
  %RSI.i179 = bitcast %union.anon* %5050 to i64*
  %5051 = load i64, i64* %PC.i178
  %5052 = add i64 %5051, 5
  store i64 %5052, i64* %PC.i178
  store i64 4294967295, i64* %RSI.i179, align 8
  store %struct.Memory* %loadMem_42f717, %struct.Memory** %MEMORY
  %loadMem_42f71c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5054 = getelementptr inbounds %struct.GPR, %struct.GPR* %5053, i32 0, i32 33
  %5055 = getelementptr inbounds %struct.Reg, %struct.Reg* %5054, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %5055 to i64*
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 11
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %RDI.i176 = bitcast %union.anon* %5058 to i64*
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5060 = getelementptr inbounds %struct.GPR, %struct.GPR* %5059, i32 0, i32 15
  %5061 = getelementptr inbounds %struct.Reg, %struct.Reg* %5060, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %5061 to i64*
  %5062 = load i64, i64* %RBP.i177
  %5063 = sub i64 %5062, 24
  %5064 = load i64, i64* %PC.i175
  %5065 = add i64 %5064, 4
  store i64 %5065, i64* %PC.i175
  %5066 = inttoptr i64 %5063 to i64*
  %5067 = load i64, i64* %5066
  store i64 %5067, i64* %RDI.i176, align 8
  store %struct.Memory* %loadMem_42f71c, %struct.Memory** %MEMORY
  %loadMem_42f720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5069 = getelementptr inbounds %struct.GPR, %struct.GPR* %5068, i32 0, i32 33
  %5070 = getelementptr inbounds %struct.Reg, %struct.Reg* %5069, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %5070 to i64*
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 1
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %5073 to i64*
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 11
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %RDI.i174 = bitcast %union.anon* %5076 to i64*
  %5077 = load i64, i64* %RDI.i174
  %5078 = add i64 %5077, 72
  %5079 = load i64, i64* %RAX.i173
  %5080 = load i64, i64* %PC.i172
  %5081 = add i64 %5080, 4
  store i64 %5081, i64* %PC.i172
  %5082 = inttoptr i64 %5078 to i64*
  store i64 %5079, i64* %5082
  store %struct.Memory* %loadMem_42f720, %struct.Memory** %MEMORY
  %loadMem_42f724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 33
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %5085 to i64*
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5087 = getelementptr inbounds %struct.GPR, %struct.GPR* %5086, i32 0, i32 1
  %5088 = getelementptr inbounds %struct.Reg, %struct.Reg* %5087, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %5088 to i64*
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5090 = getelementptr inbounds %struct.GPR, %struct.GPR* %5089, i32 0, i32 15
  %5091 = getelementptr inbounds %struct.Reg, %struct.Reg* %5090, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %5091 to i64*
  %5092 = load i64, i64* %RBP.i171
  %5093 = sub i64 %5092, 16
  %5094 = load i64, i64* %PC.i169
  %5095 = add i64 %5094, 4
  store i64 %5095, i64* %PC.i169
  %5096 = inttoptr i64 %5093 to i64*
  %5097 = load i64, i64* %5096
  store i64 %5097, i64* %RAX.i170, align 8
  store %struct.Memory* %loadMem_42f724, %struct.Memory** %MEMORY
  %loadMem_42f728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5099 = getelementptr inbounds %struct.GPR, %struct.GPR* %5098, i32 0, i32 33
  %5100 = getelementptr inbounds %struct.Reg, %struct.Reg* %5099, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %5100 to i64*
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5102 = getelementptr inbounds %struct.GPR, %struct.GPR* %5101, i32 0, i32 1
  %5103 = getelementptr inbounds %struct.Reg, %struct.Reg* %5102, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %5103 to i64*
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 11
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %RDI.i168 = bitcast %union.anon* %5106 to i64*
  %5107 = load i64, i64* %RAX.i167
  %5108 = add i64 %5107, 32
  %5109 = load i64, i64* %PC.i166
  %5110 = add i64 %5109, 4
  store i64 %5110, i64* %PC.i166
  %5111 = inttoptr i64 %5108 to i64*
  %5112 = load i64, i64* %5111
  store i64 %5112, i64* %RDI.i168, align 8
  store %struct.Memory* %loadMem_42f728, %struct.Memory** %MEMORY
  %loadMem1_42f72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5114 = getelementptr inbounds %struct.GPR, %struct.GPR* %5113, i32 0, i32 33
  %5115 = getelementptr inbounds %struct.Reg, %struct.Reg* %5114, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %5115 to i64*
  %5116 = load i64, i64* %PC.i165
  %5117 = add i64 %5116, 94196
  %5118 = load i64, i64* %PC.i165
  %5119 = add i64 %5118, 5
  %5120 = load i64, i64* %PC.i165
  %5121 = add i64 %5120, 5
  store i64 %5121, i64* %PC.i165
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5123 = load i64, i64* %5122, align 8
  %5124 = add i64 %5123, -8
  %5125 = inttoptr i64 %5124 to i64*
  store i64 %5119, i64* %5125
  store i64 %5124, i64* %5122, align 8
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5117, i64* %5126, align 8
  store %struct.Memory* %loadMem1_42f72c, %struct.Memory** %MEMORY
  %loadMem2_42f72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f72c = load i64, i64* %3
  %call2_42f72c = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64 %loadPC_42f72c, %struct.Memory* %loadMem2_42f72c)
  store %struct.Memory* %call2_42f72c, %struct.Memory** %MEMORY
  %loadMem_42f731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5128 = getelementptr inbounds %struct.GPR, %struct.GPR* %5127, i32 0, i32 33
  %5129 = getelementptr inbounds %struct.Reg, %struct.Reg* %5128, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %5129 to i64*
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5131 = getelementptr inbounds %struct.GPR, %struct.GPR* %5130, i32 0, i32 11
  %5132 = getelementptr inbounds %struct.Reg, %struct.Reg* %5131, i32 0, i32 0
  %RDI.i163 = bitcast %union.anon* %5132 to i64*
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5134 = getelementptr inbounds %struct.GPR, %struct.GPR* %5133, i32 0, i32 15
  %5135 = getelementptr inbounds %struct.Reg, %struct.Reg* %5134, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %5135 to i64*
  %5136 = load i64, i64* %RBP.i164
  %5137 = sub i64 %5136, 24
  %5138 = load i64, i64* %PC.i162
  %5139 = add i64 %5138, 4
  store i64 %5139, i64* %PC.i162
  %5140 = inttoptr i64 %5137 to i64*
  %5141 = load i64, i64* %5140
  store i64 %5141, i64* %RDI.i163, align 8
  store %struct.Memory* %loadMem_42f731, %struct.Memory** %MEMORY
  %loadMem_42f735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5143 = getelementptr inbounds %struct.GPR, %struct.GPR* %5142, i32 0, i32 33
  %5144 = getelementptr inbounds %struct.Reg, %struct.Reg* %5143, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %5144 to i64*
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5146 = getelementptr inbounds %struct.GPR, %struct.GPR* %5145, i32 0, i32 1
  %5147 = getelementptr inbounds %struct.Reg, %struct.Reg* %5146, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %5147 to i64*
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5149 = getelementptr inbounds %struct.GPR, %struct.GPR* %5148, i32 0, i32 11
  %5150 = getelementptr inbounds %struct.Reg, %struct.Reg* %5149, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5150 to i64*
  %5151 = load i64, i64* %RDI.i
  %5152 = add i64 %5151, 88
  %5153 = load i64, i64* %RAX.i161
  %5154 = load i64, i64* %PC.i160
  %5155 = add i64 %5154, 4
  store i64 %5155, i64* %PC.i160
  %5156 = inttoptr i64 %5152 to i64*
  store i64 %5153, i64* %5156
  store %struct.Memory* %loadMem_42f735, %struct.Memory** %MEMORY
  %loadMem_42f739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5158 = getelementptr inbounds %struct.GPR, %struct.GPR* %5157, i32 0, i32 33
  %5159 = getelementptr inbounds %struct.Reg, %struct.Reg* %5158, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %5159 to i64*
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5161 = getelementptr inbounds %struct.GPR, %struct.GPR* %5160, i32 0, i32 1
  %5162 = getelementptr inbounds %struct.Reg, %struct.Reg* %5161, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %5162 to i64*
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5164 = getelementptr inbounds %struct.GPR, %struct.GPR* %5163, i32 0, i32 15
  %5165 = getelementptr inbounds %struct.Reg, %struct.Reg* %5164, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %5165 to i64*
  %5166 = load i64, i64* %RBP.i159
  %5167 = sub i64 %5166, 16
  %5168 = load i64, i64* %PC.i157
  %5169 = add i64 %5168, 4
  store i64 %5169, i64* %PC.i157
  %5170 = inttoptr i64 %5167 to i64*
  %5171 = load i64, i64* %5170
  store i64 %5171, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_42f739, %struct.Memory** %MEMORY
  %loadMem_42f73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5173 = getelementptr inbounds %struct.GPR, %struct.GPR* %5172, i32 0, i32 33
  %5174 = getelementptr inbounds %struct.Reg, %struct.Reg* %5173, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %5174 to i64*
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5176 = getelementptr inbounds %struct.GPR, %struct.GPR* %5175, i32 0, i32 1
  %5177 = getelementptr inbounds %struct.Reg, %struct.Reg* %5176, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %5177 to i64*
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5179 = getelementptr inbounds %struct.GPR, %struct.GPR* %5178, i32 0, i32 9
  %5180 = getelementptr inbounds %struct.Reg, %struct.Reg* %5179, i32 0, i32 0
  %RSI.i156 = bitcast %union.anon* %5180 to i64*
  %5181 = load i64, i64* %RAX.i155
  %5182 = load i64, i64* %PC.i154
  %5183 = add i64 %5182, 2
  store i64 %5183, i64* %PC.i154
  %5184 = inttoptr i64 %5181 to i32*
  %5185 = load i32, i32* %5184
  %5186 = zext i32 %5185 to i64
  store i64 %5186, i64* %RSI.i156, align 8
  store %struct.Memory* %loadMem_42f73d, %struct.Memory** %MEMORY
  %loadMem_42f73f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5188 = getelementptr inbounds %struct.GPR, %struct.GPR* %5187, i32 0, i32 33
  %5189 = getelementptr inbounds %struct.Reg, %struct.Reg* %5188, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %5189 to i64*
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5191 = getelementptr inbounds %struct.GPR, %struct.GPR* %5190, i32 0, i32 9
  %5192 = getelementptr inbounds %struct.Reg, %struct.Reg* %5191, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5192 to i64*
  %5193 = load i64, i64* %RSI.i
  %5194 = load i64, i64* %PC.i153
  %5195 = add i64 %5194, 3
  store i64 %5195, i64* %PC.i153
  %5196 = and i64 1, %5193
  %5197 = trunc i64 %5196 to i32
  store i64 %5196, i64* %RSI.i, align 8
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5198, align 1
  %5199 = and i32 %5197, 255
  %5200 = call i32 @llvm.ctpop.i32(i32 %5199)
  %5201 = trunc i32 %5200 to i8
  %5202 = and i8 %5201, 1
  %5203 = xor i8 %5202, 1
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5203, i8* %5204, align 1
  %5205 = icmp eq i32 %5197, 0
  %5206 = zext i1 %5205 to i8
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5206, i8* %5207, align 1
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5208, align 1
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5209, align 1
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5210, align 1
  store %struct.Memory* %loadMem_42f73f, %struct.Memory** %MEMORY
  %loadMem_42f742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5212 = getelementptr inbounds %struct.GPR, %struct.GPR* %5211, i32 0, i32 33
  %5213 = getelementptr inbounds %struct.Reg, %struct.Reg* %5212, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %5213 to i64*
  %5214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5215 = getelementptr inbounds %struct.GPR, %struct.GPR* %5214, i32 0, i32 9
  %5216 = getelementptr inbounds %struct.Reg, %struct.Reg* %5215, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %5216 to i32*
  %5217 = load i32, i32* %ESI.i
  %5218 = zext i32 %5217 to i64
  %5219 = load i64, i64* %PC.i152
  %5220 = add i64 %5219, 3
  store i64 %5220, i64* %PC.i152
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5221, align 1
  %5222 = and i32 %5217, 255
  %5223 = call i32 @llvm.ctpop.i32(i32 %5222)
  %5224 = trunc i32 %5223 to i8
  %5225 = and i8 %5224, 1
  %5226 = xor i8 %5225, 1
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5226, i8* %5227, align 1
  %5228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5228, align 1
  %5229 = icmp eq i32 %5217, 0
  %5230 = zext i1 %5229 to i8
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5230, i8* %5231, align 1
  %5232 = lshr i32 %5217, 31
  %5233 = trunc i32 %5232 to i8
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5233, i8* %5234, align 1
  %5235 = lshr i32 %5217, 31
  %5236 = xor i32 %5232, %5235
  %5237 = add i32 %5236, %5235
  %5238 = icmp eq i32 %5237, 2
  %5239 = zext i1 %5238 to i8
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5239, i8* %5240, align 1
  store %struct.Memory* %loadMem_42f742, %struct.Memory** %MEMORY
  %loadMem_42f745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5242 = getelementptr inbounds %struct.GPR, %struct.GPR* %5241, i32 0, i32 33
  %5243 = getelementptr inbounds %struct.Reg, %struct.Reg* %5242, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %5243 to i64*
  %5244 = load i64, i64* %PC.i151
  %5245 = add i64 %5244, 76
  %5246 = load i64, i64* %PC.i151
  %5247 = add i64 %5246, 6
  %5248 = load i64, i64* %PC.i151
  %5249 = add i64 %5248, 6
  store i64 %5249, i64* %PC.i151
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5251 = load i8, i8* %5250, align 1
  store i8 %5251, i8* %BRANCH_TAKEN, align 1
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5253 = icmp ne i8 %5251, 0
  %5254 = select i1 %5253, i64 %5245, i64 %5247
  store i64 %5254, i64* %5252, align 8
  store %struct.Memory* %loadMem_42f745, %struct.Memory** %MEMORY
  %loadBr_42f745 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f745 = icmp eq i8 %loadBr_42f745, 1
  br i1 %cmpBr_42f745, label %block_.L_42f791, label %block_42f74b

block_42f74b:                                     ; preds = %block_.L_42f69d
  %loadMem_42f74b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 33
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %5257 to i64*
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 1
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %5260 to i64*
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5262 = getelementptr inbounds %struct.GPR, %struct.GPR* %5261, i32 0, i32 15
  %5263 = getelementptr inbounds %struct.Reg, %struct.Reg* %5262, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %5263 to i64*
  %5264 = load i64, i64* %RBP.i150
  %5265 = sub i64 %5264, 16
  %5266 = load i64, i64* %PC.i148
  %5267 = add i64 %5266, 4
  store i64 %5267, i64* %PC.i148
  %5268 = inttoptr i64 %5265 to i64*
  %5269 = load i64, i64* %5268
  store i64 %5269, i64* %RAX.i149, align 8
  store %struct.Memory* %loadMem_42f74b, %struct.Memory** %MEMORY
  %loadMem_42f74f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 33
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %5272 to i64*
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5274 = getelementptr inbounds %struct.GPR, %struct.GPR* %5273, i32 0, i32 1
  %5275 = getelementptr inbounds %struct.Reg, %struct.Reg* %5274, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %5275 to i64*
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5276, i64 0, i64 0
  %YMM0.i147 = bitcast %union.VectorReg* %5277 to %"class.std::bitset"*
  %5278 = bitcast %"class.std::bitset"* %YMM0.i147 to i8*
  %5279 = load i64, i64* %RAX.i146
  %5280 = add i64 %5279, 80
  %5281 = load i64, i64* %PC.i145
  %5282 = add i64 %5281, 5
  store i64 %5282, i64* %PC.i145
  %5283 = inttoptr i64 %5280 to float*
  %5284 = load float, float* %5283
  %5285 = bitcast i8* %5278 to float*
  store float %5284, float* %5285, align 1
  %5286 = getelementptr inbounds i8, i8* %5278, i64 4
  %5287 = bitcast i8* %5286 to float*
  store float 0.000000e+00, float* %5287, align 1
  %5288 = getelementptr inbounds i8, i8* %5278, i64 8
  %5289 = bitcast i8* %5288 to float*
  store float 0.000000e+00, float* %5289, align 1
  %5290 = getelementptr inbounds i8, i8* %5278, i64 12
  %5291 = bitcast i8* %5290 to float*
  store float 0.000000e+00, float* %5291, align 1
  store %struct.Memory* %loadMem_42f74f, %struct.Memory** %MEMORY
  %loadMem_42f754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5293 = getelementptr inbounds %struct.GPR, %struct.GPR* %5292, i32 0, i32 33
  %5294 = getelementptr inbounds %struct.Reg, %struct.Reg* %5293, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %5294 to i64*
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5296 = getelementptr inbounds %struct.GPR, %struct.GPR* %5295, i32 0, i32 1
  %5297 = getelementptr inbounds %struct.Reg, %struct.Reg* %5296, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %5297 to i64*
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5299 = getelementptr inbounds %struct.GPR, %struct.GPR* %5298, i32 0, i32 15
  %5300 = getelementptr inbounds %struct.Reg, %struct.Reg* %5299, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %5300 to i64*
  %5301 = load i64, i64* %RBP.i144
  %5302 = sub i64 %5301, 24
  %5303 = load i64, i64* %PC.i142
  %5304 = add i64 %5303, 4
  store i64 %5304, i64* %PC.i142
  %5305 = inttoptr i64 %5302 to i64*
  %5306 = load i64, i64* %5305
  store i64 %5306, i64* %RAX.i143, align 8
  store %struct.Memory* %loadMem_42f754, %struct.Memory** %MEMORY
  %loadMem_42f758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5308 = getelementptr inbounds %struct.GPR, %struct.GPR* %5307, i32 0, i32 33
  %5309 = getelementptr inbounds %struct.Reg, %struct.Reg* %5308, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %5309 to i64*
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5311 = getelementptr inbounds %struct.GPR, %struct.GPR* %5310, i32 0, i32 1
  %5312 = getelementptr inbounds %struct.Reg, %struct.Reg* %5311, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %5312 to i64*
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5314 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5313, i64 0, i64 0
  %XMM0.i141 = bitcast %union.VectorReg* %5314 to %union.vec128_t*
  %5315 = load i64, i64* %RAX.i140
  %5316 = add i64 %5315, 128
  %5317 = bitcast %union.vec128_t* %XMM0.i141 to i8*
  %5318 = load i64, i64* %PC.i139
  %5319 = add i64 %5318, 8
  store i64 %5319, i64* %PC.i139
  %5320 = bitcast i8* %5317 to <2 x float>*
  %5321 = load <2 x float>, <2 x float>* %5320, align 1
  %5322 = extractelement <2 x float> %5321, i32 0
  %5323 = inttoptr i64 %5316 to float*
  store float %5322, float* %5323
  store %struct.Memory* %loadMem_42f758, %struct.Memory** %MEMORY
  %loadMem_42f760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5325 = getelementptr inbounds %struct.GPR, %struct.GPR* %5324, i32 0, i32 33
  %5326 = getelementptr inbounds %struct.Reg, %struct.Reg* %5325, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %5326 to i64*
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5328 = getelementptr inbounds %struct.GPR, %struct.GPR* %5327, i32 0, i32 1
  %5329 = getelementptr inbounds %struct.Reg, %struct.Reg* %5328, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %5329 to i64*
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5331 = getelementptr inbounds %struct.GPR, %struct.GPR* %5330, i32 0, i32 15
  %5332 = getelementptr inbounds %struct.Reg, %struct.Reg* %5331, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %5332 to i64*
  %5333 = load i64, i64* %RBP.i138
  %5334 = sub i64 %5333, 24
  %5335 = load i64, i64* %PC.i136
  %5336 = add i64 %5335, 4
  store i64 %5336, i64* %PC.i136
  %5337 = inttoptr i64 %5334 to i64*
  %5338 = load i64, i64* %5337
  store i64 %5338, i64* %RAX.i137, align 8
  store %struct.Memory* %loadMem_42f760, %struct.Memory** %MEMORY
  %loadMem_42f764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5340 = getelementptr inbounds %struct.GPR, %struct.GPR* %5339, i32 0, i32 33
  %5341 = getelementptr inbounds %struct.Reg, %struct.Reg* %5340, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %5341 to i64*
  %5342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5343 = getelementptr inbounds %struct.GPR, %struct.GPR* %5342, i32 0, i32 1
  %5344 = getelementptr inbounds %struct.Reg, %struct.Reg* %5343, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %5344 to i64*
  %5345 = load i64, i64* %RAX.i135
  %5346 = add i64 %5345, 152
  %5347 = load i64, i64* %PC.i134
  %5348 = add i64 %5347, 10
  store i64 %5348, i64* %PC.i134
  %5349 = inttoptr i64 %5346 to i32*
  store i32 1, i32* %5349
  store %struct.Memory* %loadMem_42f764, %struct.Memory** %MEMORY
  %loadMem_42f76e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5351 = getelementptr inbounds %struct.GPR, %struct.GPR* %5350, i32 0, i32 33
  %5352 = getelementptr inbounds %struct.Reg, %struct.Reg* %5351, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %5352 to i64*
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5354 = getelementptr inbounds %struct.GPR, %struct.GPR* %5353, i32 0, i32 1
  %5355 = getelementptr inbounds %struct.Reg, %struct.Reg* %5354, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %5355 to i64*
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5357 = getelementptr inbounds %struct.GPR, %struct.GPR* %5356, i32 0, i32 15
  %5358 = getelementptr inbounds %struct.Reg, %struct.Reg* %5357, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %5358 to i64*
  %5359 = load i64, i64* %RBP.i133
  %5360 = sub i64 %5359, 16
  %5361 = load i64, i64* %PC.i131
  %5362 = add i64 %5361, 4
  store i64 %5362, i64* %PC.i131
  %5363 = inttoptr i64 %5360 to i64*
  %5364 = load i64, i64* %5363
  store i64 %5364, i64* %RAX.i132, align 8
  store %struct.Memory* %loadMem_42f76e, %struct.Memory** %MEMORY
  %loadMem_42f772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 33
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %5367 to i64*
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 1
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %5370 to i64*
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5372 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5371, i64 0, i64 0
  %YMM0.i130 = bitcast %union.VectorReg* %5372 to %"class.std::bitset"*
  %5373 = bitcast %"class.std::bitset"* %YMM0.i130 to i8*
  %5374 = load i64, i64* %RAX.i129
  %5375 = add i64 %5374, 84
  %5376 = load i64, i64* %PC.i128
  %5377 = add i64 %5376, 5
  store i64 %5377, i64* %PC.i128
  %5378 = inttoptr i64 %5375 to float*
  %5379 = load float, float* %5378
  %5380 = bitcast i8* %5373 to float*
  store float %5379, float* %5380, align 1
  %5381 = getelementptr inbounds i8, i8* %5373, i64 4
  %5382 = bitcast i8* %5381 to float*
  store float 0.000000e+00, float* %5382, align 1
  %5383 = getelementptr inbounds i8, i8* %5373, i64 8
  %5384 = bitcast i8* %5383 to float*
  store float 0.000000e+00, float* %5384, align 1
  %5385 = getelementptr inbounds i8, i8* %5373, i64 12
  %5386 = bitcast i8* %5385 to float*
  store float 0.000000e+00, float* %5386, align 1
  store %struct.Memory* %loadMem_42f772, %struct.Memory** %MEMORY
  %loadMem_42f777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5388 = getelementptr inbounds %struct.GPR, %struct.GPR* %5387, i32 0, i32 33
  %5389 = getelementptr inbounds %struct.Reg, %struct.Reg* %5388, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %5389 to i64*
  %5390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5391 = getelementptr inbounds %struct.GPR, %struct.GPR* %5390, i32 0, i32 1
  %5392 = getelementptr inbounds %struct.Reg, %struct.Reg* %5391, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %5392 to i64*
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5394 = getelementptr inbounds %struct.GPR, %struct.GPR* %5393, i32 0, i32 15
  %5395 = getelementptr inbounds %struct.Reg, %struct.Reg* %5394, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %5395 to i64*
  %5396 = load i64, i64* %RBP.i127
  %5397 = sub i64 %5396, 24
  %5398 = load i64, i64* %PC.i125
  %5399 = add i64 %5398, 4
  store i64 %5399, i64* %PC.i125
  %5400 = inttoptr i64 %5397 to i64*
  %5401 = load i64, i64* %5400
  store i64 %5401, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_42f777, %struct.Memory** %MEMORY
  %loadMem_42f77b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5403 = getelementptr inbounds %struct.GPR, %struct.GPR* %5402, i32 0, i32 33
  %5404 = getelementptr inbounds %struct.Reg, %struct.Reg* %5403, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %5404 to i64*
  %5405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5406 = getelementptr inbounds %struct.GPR, %struct.GPR* %5405, i32 0, i32 1
  %5407 = getelementptr inbounds %struct.Reg, %struct.Reg* %5406, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %5407 to i64*
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5409 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5408, i64 0, i64 0
  %XMM0.i124 = bitcast %union.VectorReg* %5409 to %union.vec128_t*
  %5410 = load i64, i64* %RAX.i123
  %5411 = add i64 %5410, 132
  %5412 = bitcast %union.vec128_t* %XMM0.i124 to i8*
  %5413 = load i64, i64* %PC.i122
  %5414 = add i64 %5413, 8
  store i64 %5414, i64* %PC.i122
  %5415 = bitcast i8* %5412 to <2 x float>*
  %5416 = load <2 x float>, <2 x float>* %5415, align 1
  %5417 = extractelement <2 x float> %5416, i32 0
  %5418 = inttoptr i64 %5411 to float*
  store float %5417, float* %5418
  store %struct.Memory* %loadMem_42f77b, %struct.Memory** %MEMORY
  %loadMem_42f783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5420 = getelementptr inbounds %struct.GPR, %struct.GPR* %5419, i32 0, i32 33
  %5421 = getelementptr inbounds %struct.Reg, %struct.Reg* %5420, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %5421 to i64*
  %5422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5423 = getelementptr inbounds %struct.GPR, %struct.GPR* %5422, i32 0, i32 1
  %5424 = getelementptr inbounds %struct.Reg, %struct.Reg* %5423, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %5424 to i64*
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5426 = getelementptr inbounds %struct.GPR, %struct.GPR* %5425, i32 0, i32 15
  %5427 = getelementptr inbounds %struct.Reg, %struct.Reg* %5426, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %5427 to i64*
  %5428 = load i64, i64* %RBP.i121
  %5429 = sub i64 %5428, 24
  %5430 = load i64, i64* %PC.i119
  %5431 = add i64 %5430, 4
  store i64 %5431, i64* %PC.i119
  %5432 = inttoptr i64 %5429 to i64*
  %5433 = load i64, i64* %5432
  store i64 %5433, i64* %RAX.i120, align 8
  store %struct.Memory* %loadMem_42f783, %struct.Memory** %MEMORY
  %loadMem_42f787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5435 = getelementptr inbounds %struct.GPR, %struct.GPR* %5434, i32 0, i32 33
  %5436 = getelementptr inbounds %struct.Reg, %struct.Reg* %5435, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %5436 to i64*
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5438 = getelementptr inbounds %struct.GPR, %struct.GPR* %5437, i32 0, i32 1
  %5439 = getelementptr inbounds %struct.Reg, %struct.Reg* %5438, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %5439 to i64*
  %5440 = load i64, i64* %RAX.i118
  %5441 = add i64 %5440, 156
  %5442 = load i64, i64* %PC.i117
  %5443 = add i64 %5442, 10
  store i64 %5443, i64* %PC.i117
  %5444 = inttoptr i64 %5441 to i32*
  store i32 1, i32* %5444
  store %struct.Memory* %loadMem_42f787, %struct.Memory** %MEMORY
  br label %block_.L_42f791

block_.L_42f791:                                  ; preds = %block_42f74b, %block_.L_42f69d
  %loadMem_42f791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5446 = getelementptr inbounds %struct.GPR, %struct.GPR* %5445, i32 0, i32 33
  %5447 = getelementptr inbounds %struct.Reg, %struct.Reg* %5446, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %5447 to i64*
  %5448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5449 = getelementptr inbounds %struct.GPR, %struct.GPR* %5448, i32 0, i32 1
  %5450 = getelementptr inbounds %struct.Reg, %struct.Reg* %5449, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %5450 to i64*
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5452 = getelementptr inbounds %struct.GPR, %struct.GPR* %5451, i32 0, i32 15
  %5453 = getelementptr inbounds %struct.Reg, %struct.Reg* %5452, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %5453 to i64*
  %5454 = load i64, i64* %RBP.i116
  %5455 = sub i64 %5454, 16
  %5456 = load i64, i64* %PC.i114
  %5457 = add i64 %5456, 4
  store i64 %5457, i64* %PC.i114
  %5458 = inttoptr i64 %5455 to i64*
  %5459 = load i64, i64* %5458
  store i64 %5459, i64* %RAX.i115, align 8
  store %struct.Memory* %loadMem_42f791, %struct.Memory** %MEMORY
  %loadMem_42f795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5461 = getelementptr inbounds %struct.GPR, %struct.GPR* %5460, i32 0, i32 33
  %5462 = getelementptr inbounds %struct.Reg, %struct.Reg* %5461, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %5462 to i64*
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5464 = getelementptr inbounds %struct.GPR, %struct.GPR* %5463, i32 0, i32 1
  %5465 = getelementptr inbounds %struct.Reg, %struct.Reg* %5464, i32 0, i32 0
  %RAX.i112 = bitcast %union.anon* %5465 to i64*
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 5
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %RCX.i113 = bitcast %union.anon* %5468 to i64*
  %5469 = load i64, i64* %RAX.i112
  %5470 = load i64, i64* %PC.i111
  %5471 = add i64 %5470, 2
  store i64 %5471, i64* %PC.i111
  %5472 = inttoptr i64 %5469 to i32*
  %5473 = load i32, i32* %5472
  %5474 = zext i32 %5473 to i64
  store i64 %5474, i64* %RCX.i113, align 8
  store %struct.Memory* %loadMem_42f795, %struct.Memory** %MEMORY
  %loadMem_42f797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5476 = getelementptr inbounds %struct.GPR, %struct.GPR* %5475, i32 0, i32 33
  %5477 = getelementptr inbounds %struct.Reg, %struct.Reg* %5476, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %5477 to i64*
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5479 = getelementptr inbounds %struct.GPR, %struct.GPR* %5478, i32 0, i32 5
  %5480 = getelementptr inbounds %struct.Reg, %struct.Reg* %5479, i32 0, i32 0
  %RCX.i110 = bitcast %union.anon* %5480 to i64*
  %5481 = load i64, i64* %RCX.i110
  %5482 = load i64, i64* %PC.i109
  %5483 = add i64 %5482, 3
  store i64 %5483, i64* %PC.i109
  %5484 = and i64 2, %5481
  %5485 = trunc i64 %5484 to i32
  store i64 %5484, i64* %RCX.i110, align 8
  %5486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5486, align 1
  %5487 = and i32 %5485, 255
  %5488 = call i32 @llvm.ctpop.i32(i32 %5487)
  %5489 = trunc i32 %5488 to i8
  %5490 = and i8 %5489, 1
  %5491 = xor i8 %5490, 1
  %5492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5491, i8* %5492, align 1
  %5493 = icmp eq i32 %5485, 0
  %5494 = zext i1 %5493 to i8
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5494, i8* %5495, align 1
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5496, align 1
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5497, align 1
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5498, align 1
  store %struct.Memory* %loadMem_42f797, %struct.Memory** %MEMORY
  %loadMem_42f79a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5500 = getelementptr inbounds %struct.GPR, %struct.GPR* %5499, i32 0, i32 33
  %5501 = getelementptr inbounds %struct.Reg, %struct.Reg* %5500, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %5501 to i64*
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5503 = getelementptr inbounds %struct.GPR, %struct.GPR* %5502, i32 0, i32 5
  %5504 = getelementptr inbounds %struct.Reg, %struct.Reg* %5503, i32 0, i32 0
  %ECX.i108 = bitcast %union.anon* %5504 to i32*
  %5505 = load i32, i32* %ECX.i108
  %5506 = zext i32 %5505 to i64
  %5507 = load i64, i64* %PC.i107
  %5508 = add i64 %5507, 3
  store i64 %5508, i64* %PC.i107
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5509, align 1
  %5510 = and i32 %5505, 255
  %5511 = call i32 @llvm.ctpop.i32(i32 %5510)
  %5512 = trunc i32 %5511 to i8
  %5513 = and i8 %5512, 1
  %5514 = xor i8 %5513, 1
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5514, i8* %5515, align 1
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5516, align 1
  %5517 = icmp eq i32 %5505, 0
  %5518 = zext i1 %5517 to i8
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5518, i8* %5519, align 1
  %5520 = lshr i32 %5505, 31
  %5521 = trunc i32 %5520 to i8
  %5522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5521, i8* %5522, align 1
  %5523 = lshr i32 %5505, 31
  %5524 = xor i32 %5520, %5523
  %5525 = add i32 %5524, %5523
  %5526 = icmp eq i32 %5525, 2
  %5527 = zext i1 %5526 to i8
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5527, i8* %5528, align 1
  store %struct.Memory* %loadMem_42f79a, %struct.Memory** %MEMORY
  %loadMem_42f79d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5530 = getelementptr inbounds %struct.GPR, %struct.GPR* %5529, i32 0, i32 33
  %5531 = getelementptr inbounds %struct.Reg, %struct.Reg* %5530, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %5531 to i64*
  %5532 = load i64, i64* %PC.i106
  %5533 = add i64 %5532, 76
  %5534 = load i64, i64* %PC.i106
  %5535 = add i64 %5534, 6
  %5536 = load i64, i64* %PC.i106
  %5537 = add i64 %5536, 6
  store i64 %5537, i64* %PC.i106
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5539 = load i8, i8* %5538, align 1
  store i8 %5539, i8* %BRANCH_TAKEN, align 1
  %5540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5541 = icmp ne i8 %5539, 0
  %5542 = select i1 %5541, i64 %5533, i64 %5535
  store i64 %5542, i64* %5540, align 8
  store %struct.Memory* %loadMem_42f79d, %struct.Memory** %MEMORY
  %loadBr_42f79d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f79d = icmp eq i8 %loadBr_42f79d, 1
  br i1 %cmpBr_42f79d, label %block_.L_42f7e9, label %block_42f7a3

block_42f7a3:                                     ; preds = %block_.L_42f791
  %loadMem_42f7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5544 = getelementptr inbounds %struct.GPR, %struct.GPR* %5543, i32 0, i32 33
  %5545 = getelementptr inbounds %struct.Reg, %struct.Reg* %5544, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %5545 to i64*
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5547 = getelementptr inbounds %struct.GPR, %struct.GPR* %5546, i32 0, i32 1
  %5548 = getelementptr inbounds %struct.Reg, %struct.Reg* %5547, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %5548 to i64*
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5550 = getelementptr inbounds %struct.GPR, %struct.GPR* %5549, i32 0, i32 15
  %5551 = getelementptr inbounds %struct.Reg, %struct.Reg* %5550, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %5551 to i64*
  %5552 = load i64, i64* %RBP.i105
  %5553 = sub i64 %5552, 16
  %5554 = load i64, i64* %PC.i103
  %5555 = add i64 %5554, 4
  store i64 %5555, i64* %PC.i103
  %5556 = inttoptr i64 %5553 to i64*
  %5557 = load i64, i64* %5556
  store i64 %5557, i64* %RAX.i104, align 8
  store %struct.Memory* %loadMem_42f7a3, %struct.Memory** %MEMORY
  %loadMem_42f7a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5559 = getelementptr inbounds %struct.GPR, %struct.GPR* %5558, i32 0, i32 33
  %5560 = getelementptr inbounds %struct.Reg, %struct.Reg* %5559, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %5560 to i64*
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5562 = getelementptr inbounds %struct.GPR, %struct.GPR* %5561, i32 0, i32 1
  %5563 = getelementptr inbounds %struct.Reg, %struct.Reg* %5562, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %5563 to i64*
  %5564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5565 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5564, i64 0, i64 0
  %YMM0.i102 = bitcast %union.VectorReg* %5565 to %"class.std::bitset"*
  %5566 = bitcast %"class.std::bitset"* %YMM0.i102 to i8*
  %5567 = load i64, i64* %RAX.i101
  %5568 = add i64 %5567, 88
  %5569 = load i64, i64* %PC.i100
  %5570 = add i64 %5569, 5
  store i64 %5570, i64* %PC.i100
  %5571 = inttoptr i64 %5568 to float*
  %5572 = load float, float* %5571
  %5573 = bitcast i8* %5566 to float*
  store float %5572, float* %5573, align 1
  %5574 = getelementptr inbounds i8, i8* %5566, i64 4
  %5575 = bitcast i8* %5574 to float*
  store float 0.000000e+00, float* %5575, align 1
  %5576 = getelementptr inbounds i8, i8* %5566, i64 8
  %5577 = bitcast i8* %5576 to float*
  store float 0.000000e+00, float* %5577, align 1
  %5578 = getelementptr inbounds i8, i8* %5566, i64 12
  %5579 = bitcast i8* %5578 to float*
  store float 0.000000e+00, float* %5579, align 1
  store %struct.Memory* %loadMem_42f7a7, %struct.Memory** %MEMORY
  %loadMem_42f7ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5581 = getelementptr inbounds %struct.GPR, %struct.GPR* %5580, i32 0, i32 33
  %5582 = getelementptr inbounds %struct.Reg, %struct.Reg* %5581, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %5582 to i64*
  %5583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5584 = getelementptr inbounds %struct.GPR, %struct.GPR* %5583, i32 0, i32 1
  %5585 = getelementptr inbounds %struct.Reg, %struct.Reg* %5584, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %5585 to i64*
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5587 = getelementptr inbounds %struct.GPR, %struct.GPR* %5586, i32 0, i32 15
  %5588 = getelementptr inbounds %struct.Reg, %struct.Reg* %5587, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %5588 to i64*
  %5589 = load i64, i64* %RBP.i99
  %5590 = sub i64 %5589, 24
  %5591 = load i64, i64* %PC.i97
  %5592 = add i64 %5591, 4
  store i64 %5592, i64* %PC.i97
  %5593 = inttoptr i64 %5590 to i64*
  %5594 = load i64, i64* %5593
  store i64 %5594, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_42f7ac, %struct.Memory** %MEMORY
  %loadMem_42f7b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5596 = getelementptr inbounds %struct.GPR, %struct.GPR* %5595, i32 0, i32 33
  %5597 = getelementptr inbounds %struct.Reg, %struct.Reg* %5596, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %5597 to i64*
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5599 = getelementptr inbounds %struct.GPR, %struct.GPR* %5598, i32 0, i32 1
  %5600 = getelementptr inbounds %struct.Reg, %struct.Reg* %5599, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %5600 to i64*
  %5601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5602 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5601, i64 0, i64 0
  %XMM0.i96 = bitcast %union.VectorReg* %5602 to %union.vec128_t*
  %5603 = load i64, i64* %RAX.i95
  %5604 = add i64 %5603, 144
  %5605 = bitcast %union.vec128_t* %XMM0.i96 to i8*
  %5606 = load i64, i64* %PC.i94
  %5607 = add i64 %5606, 8
  store i64 %5607, i64* %PC.i94
  %5608 = bitcast i8* %5605 to <2 x float>*
  %5609 = load <2 x float>, <2 x float>* %5608, align 1
  %5610 = extractelement <2 x float> %5609, i32 0
  %5611 = inttoptr i64 %5604 to float*
  store float %5610, float* %5611
  store %struct.Memory* %loadMem_42f7b0, %struct.Memory** %MEMORY
  %loadMem_42f7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5613 = getelementptr inbounds %struct.GPR, %struct.GPR* %5612, i32 0, i32 33
  %5614 = getelementptr inbounds %struct.Reg, %struct.Reg* %5613, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %5614 to i64*
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5616 = getelementptr inbounds %struct.GPR, %struct.GPR* %5615, i32 0, i32 1
  %5617 = getelementptr inbounds %struct.Reg, %struct.Reg* %5616, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %5617 to i64*
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5619 = getelementptr inbounds %struct.GPR, %struct.GPR* %5618, i32 0, i32 15
  %5620 = getelementptr inbounds %struct.Reg, %struct.Reg* %5619, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %5620 to i64*
  %5621 = load i64, i64* %RBP.i93
  %5622 = sub i64 %5621, 24
  %5623 = load i64, i64* %PC.i91
  %5624 = add i64 %5623, 4
  store i64 %5624, i64* %PC.i91
  %5625 = inttoptr i64 %5622 to i64*
  %5626 = load i64, i64* %5625
  store i64 %5626, i64* %RAX.i92, align 8
  store %struct.Memory* %loadMem_42f7b8, %struct.Memory** %MEMORY
  %loadMem_42f7bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 33
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %5629 to i64*
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5631 = getelementptr inbounds %struct.GPR, %struct.GPR* %5630, i32 0, i32 1
  %5632 = getelementptr inbounds %struct.Reg, %struct.Reg* %5631, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %5632 to i64*
  %5633 = load i64, i64* %RAX.i90
  %5634 = add i64 %5633, 168
  %5635 = load i64, i64* %PC.i89
  %5636 = add i64 %5635, 10
  store i64 %5636, i64* %PC.i89
  %5637 = inttoptr i64 %5634 to i32*
  store i32 1, i32* %5637
  store %struct.Memory* %loadMem_42f7bc, %struct.Memory** %MEMORY
  %loadMem_42f7c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5639 = getelementptr inbounds %struct.GPR, %struct.GPR* %5638, i32 0, i32 33
  %5640 = getelementptr inbounds %struct.Reg, %struct.Reg* %5639, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %5640 to i64*
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5642 = getelementptr inbounds %struct.GPR, %struct.GPR* %5641, i32 0, i32 1
  %5643 = getelementptr inbounds %struct.Reg, %struct.Reg* %5642, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %5643 to i64*
  %5644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5645 = getelementptr inbounds %struct.GPR, %struct.GPR* %5644, i32 0, i32 15
  %5646 = getelementptr inbounds %struct.Reg, %struct.Reg* %5645, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %5646 to i64*
  %5647 = load i64, i64* %RBP.i88
  %5648 = sub i64 %5647, 16
  %5649 = load i64, i64* %PC.i86
  %5650 = add i64 %5649, 4
  store i64 %5650, i64* %PC.i86
  %5651 = inttoptr i64 %5648 to i64*
  %5652 = load i64, i64* %5651
  store i64 %5652, i64* %RAX.i87, align 8
  store %struct.Memory* %loadMem_42f7c6, %struct.Memory** %MEMORY
  %loadMem_42f7ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5654 = getelementptr inbounds %struct.GPR, %struct.GPR* %5653, i32 0, i32 33
  %5655 = getelementptr inbounds %struct.Reg, %struct.Reg* %5654, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %5655 to i64*
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5657 = getelementptr inbounds %struct.GPR, %struct.GPR* %5656, i32 0, i32 1
  %5658 = getelementptr inbounds %struct.Reg, %struct.Reg* %5657, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %5658 to i64*
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5660 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5659, i64 0, i64 0
  %YMM0.i85 = bitcast %union.VectorReg* %5660 to %"class.std::bitset"*
  %5661 = bitcast %"class.std::bitset"* %YMM0.i85 to i8*
  %5662 = load i64, i64* %RAX.i84
  %5663 = add i64 %5662, 92
  %5664 = load i64, i64* %PC.i83
  %5665 = add i64 %5664, 5
  store i64 %5665, i64* %PC.i83
  %5666 = inttoptr i64 %5663 to float*
  %5667 = load float, float* %5666
  %5668 = bitcast i8* %5661 to float*
  store float %5667, float* %5668, align 1
  %5669 = getelementptr inbounds i8, i8* %5661, i64 4
  %5670 = bitcast i8* %5669 to float*
  store float 0.000000e+00, float* %5670, align 1
  %5671 = getelementptr inbounds i8, i8* %5661, i64 8
  %5672 = bitcast i8* %5671 to float*
  store float 0.000000e+00, float* %5672, align 1
  %5673 = getelementptr inbounds i8, i8* %5661, i64 12
  %5674 = bitcast i8* %5673 to float*
  store float 0.000000e+00, float* %5674, align 1
  store %struct.Memory* %loadMem_42f7ca, %struct.Memory** %MEMORY
  %loadMem_42f7cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5676 = getelementptr inbounds %struct.GPR, %struct.GPR* %5675, i32 0, i32 33
  %5677 = getelementptr inbounds %struct.Reg, %struct.Reg* %5676, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %5677 to i64*
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5679 = getelementptr inbounds %struct.GPR, %struct.GPR* %5678, i32 0, i32 1
  %5680 = getelementptr inbounds %struct.Reg, %struct.Reg* %5679, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %5680 to i64*
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5682 = getelementptr inbounds %struct.GPR, %struct.GPR* %5681, i32 0, i32 15
  %5683 = getelementptr inbounds %struct.Reg, %struct.Reg* %5682, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %5683 to i64*
  %5684 = load i64, i64* %RBP.i82
  %5685 = sub i64 %5684, 24
  %5686 = load i64, i64* %PC.i80
  %5687 = add i64 %5686, 4
  store i64 %5687, i64* %PC.i80
  %5688 = inttoptr i64 %5685 to i64*
  %5689 = load i64, i64* %5688
  store i64 %5689, i64* %RAX.i81, align 8
  store %struct.Memory* %loadMem_42f7cf, %struct.Memory** %MEMORY
  %loadMem_42f7d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5691 = getelementptr inbounds %struct.GPR, %struct.GPR* %5690, i32 0, i32 33
  %5692 = getelementptr inbounds %struct.Reg, %struct.Reg* %5691, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %5692 to i64*
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5694 = getelementptr inbounds %struct.GPR, %struct.GPR* %5693, i32 0, i32 1
  %5695 = getelementptr inbounds %struct.Reg, %struct.Reg* %5694, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %5695 to i64*
  %5696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5697 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5696, i64 0, i64 0
  %XMM0.i79 = bitcast %union.VectorReg* %5697 to %union.vec128_t*
  %5698 = load i64, i64* %RAX.i78
  %5699 = add i64 %5698, 148
  %5700 = bitcast %union.vec128_t* %XMM0.i79 to i8*
  %5701 = load i64, i64* %PC.i77
  %5702 = add i64 %5701, 8
  store i64 %5702, i64* %PC.i77
  %5703 = bitcast i8* %5700 to <2 x float>*
  %5704 = load <2 x float>, <2 x float>* %5703, align 1
  %5705 = extractelement <2 x float> %5704, i32 0
  %5706 = inttoptr i64 %5699 to float*
  store float %5705, float* %5706
  store %struct.Memory* %loadMem_42f7d3, %struct.Memory** %MEMORY
  %loadMem_42f7db = load %struct.Memory*, %struct.Memory** %MEMORY
  %5707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5708 = getelementptr inbounds %struct.GPR, %struct.GPR* %5707, i32 0, i32 33
  %5709 = getelementptr inbounds %struct.Reg, %struct.Reg* %5708, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %5709 to i64*
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5711 = getelementptr inbounds %struct.GPR, %struct.GPR* %5710, i32 0, i32 1
  %5712 = getelementptr inbounds %struct.Reg, %struct.Reg* %5711, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %5712 to i64*
  %5713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5714 = getelementptr inbounds %struct.GPR, %struct.GPR* %5713, i32 0, i32 15
  %5715 = getelementptr inbounds %struct.Reg, %struct.Reg* %5714, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %5715 to i64*
  %5716 = load i64, i64* %RBP.i76
  %5717 = sub i64 %5716, 24
  %5718 = load i64, i64* %PC.i74
  %5719 = add i64 %5718, 4
  store i64 %5719, i64* %PC.i74
  %5720 = inttoptr i64 %5717 to i64*
  %5721 = load i64, i64* %5720
  store i64 %5721, i64* %RAX.i75, align 8
  store %struct.Memory* %loadMem_42f7db, %struct.Memory** %MEMORY
  %loadMem_42f7df = load %struct.Memory*, %struct.Memory** %MEMORY
  %5722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5723 = getelementptr inbounds %struct.GPR, %struct.GPR* %5722, i32 0, i32 33
  %5724 = getelementptr inbounds %struct.Reg, %struct.Reg* %5723, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %5724 to i64*
  %5725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5726 = getelementptr inbounds %struct.GPR, %struct.GPR* %5725, i32 0, i32 1
  %5727 = getelementptr inbounds %struct.Reg, %struct.Reg* %5726, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %5727 to i64*
  %5728 = load i64, i64* %RAX.i73
  %5729 = add i64 %5728, 172
  %5730 = load i64, i64* %PC.i72
  %5731 = add i64 %5730, 10
  store i64 %5731, i64* %PC.i72
  %5732 = inttoptr i64 %5729 to i32*
  store i32 1, i32* %5732
  store %struct.Memory* %loadMem_42f7df, %struct.Memory** %MEMORY
  br label %block_.L_42f7e9

block_.L_42f7e9:                                  ; preds = %block_42f7a3, %block_.L_42f791
  %loadMem_42f7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5734 = getelementptr inbounds %struct.GPR, %struct.GPR* %5733, i32 0, i32 33
  %5735 = getelementptr inbounds %struct.Reg, %struct.Reg* %5734, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %5735 to i64*
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5737 = getelementptr inbounds %struct.GPR, %struct.GPR* %5736, i32 0, i32 1
  %5738 = getelementptr inbounds %struct.Reg, %struct.Reg* %5737, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %5738 to i64*
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5740 = getelementptr inbounds %struct.GPR, %struct.GPR* %5739, i32 0, i32 15
  %5741 = getelementptr inbounds %struct.Reg, %struct.Reg* %5740, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %5741 to i64*
  %5742 = load i64, i64* %RBP.i71
  %5743 = sub i64 %5742, 16
  %5744 = load i64, i64* %PC.i69
  %5745 = add i64 %5744, 4
  store i64 %5745, i64* %PC.i69
  %5746 = inttoptr i64 %5743 to i64*
  %5747 = load i64, i64* %5746
  store i64 %5747, i64* %RAX.i70, align 8
  store %struct.Memory* %loadMem_42f7e9, %struct.Memory** %MEMORY
  %loadMem_42f7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5749 = getelementptr inbounds %struct.GPR, %struct.GPR* %5748, i32 0, i32 33
  %5750 = getelementptr inbounds %struct.Reg, %struct.Reg* %5749, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %5750 to i64*
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5752 = getelementptr inbounds %struct.GPR, %struct.GPR* %5751, i32 0, i32 1
  %5753 = getelementptr inbounds %struct.Reg, %struct.Reg* %5752, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %5753 to i64*
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5755 = getelementptr inbounds %struct.GPR, %struct.GPR* %5754, i32 0, i32 5
  %5756 = getelementptr inbounds %struct.Reg, %struct.Reg* %5755, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %5756 to i64*
  %5757 = load i64, i64* %RAX.i67
  %5758 = load i64, i64* %PC.i66
  %5759 = add i64 %5758, 2
  store i64 %5759, i64* %PC.i66
  %5760 = inttoptr i64 %5757 to i32*
  %5761 = load i32, i32* %5760
  %5762 = zext i32 %5761 to i64
  store i64 %5762, i64* %RCX.i68, align 8
  store %struct.Memory* %loadMem_42f7ed, %struct.Memory** %MEMORY
  %loadMem_42f7ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5764 = getelementptr inbounds %struct.GPR, %struct.GPR* %5763, i32 0, i32 33
  %5765 = getelementptr inbounds %struct.Reg, %struct.Reg* %5764, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %5765 to i64*
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5767 = getelementptr inbounds %struct.GPR, %struct.GPR* %5766, i32 0, i32 5
  %5768 = getelementptr inbounds %struct.Reg, %struct.Reg* %5767, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %5768 to i64*
  %5769 = load i64, i64* %RCX.i65
  %5770 = load i64, i64* %PC.i64
  %5771 = add i64 %5770, 3
  store i64 %5771, i64* %PC.i64
  %5772 = and i64 4, %5769
  %5773 = trunc i64 %5772 to i32
  store i64 %5772, i64* %RCX.i65, align 8
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5774, align 1
  %5775 = and i32 %5773, 255
  %5776 = call i32 @llvm.ctpop.i32(i32 %5775)
  %5777 = trunc i32 %5776 to i8
  %5778 = and i8 %5777, 1
  %5779 = xor i8 %5778, 1
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5779, i8* %5780, align 1
  %5781 = icmp eq i32 %5773, 0
  %5782 = zext i1 %5781 to i8
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5782, i8* %5783, align 1
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5784, align 1
  %5785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5785, align 1
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5786, align 1
  store %struct.Memory* %loadMem_42f7ef, %struct.Memory** %MEMORY
  %loadMem_42f7f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5788 = getelementptr inbounds %struct.GPR, %struct.GPR* %5787, i32 0, i32 33
  %5789 = getelementptr inbounds %struct.Reg, %struct.Reg* %5788, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %5789 to i64*
  %5790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5791 = getelementptr inbounds %struct.GPR, %struct.GPR* %5790, i32 0, i32 5
  %5792 = getelementptr inbounds %struct.Reg, %struct.Reg* %5791, i32 0, i32 0
  %ECX.i63 = bitcast %union.anon* %5792 to i32*
  %5793 = load i32, i32* %ECX.i63
  %5794 = zext i32 %5793 to i64
  %5795 = load i64, i64* %PC.i62
  %5796 = add i64 %5795, 3
  store i64 %5796, i64* %PC.i62
  %5797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5797, align 1
  %5798 = and i32 %5793, 255
  %5799 = call i32 @llvm.ctpop.i32(i32 %5798)
  %5800 = trunc i32 %5799 to i8
  %5801 = and i8 %5800, 1
  %5802 = xor i8 %5801, 1
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5802, i8* %5803, align 1
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5804, align 1
  %5805 = icmp eq i32 %5793, 0
  %5806 = zext i1 %5805 to i8
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5806, i8* %5807, align 1
  %5808 = lshr i32 %5793, 31
  %5809 = trunc i32 %5808 to i8
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5809, i8* %5810, align 1
  %5811 = lshr i32 %5793, 31
  %5812 = xor i32 %5808, %5811
  %5813 = add i32 %5812, %5811
  %5814 = icmp eq i32 %5813, 2
  %5815 = zext i1 %5814 to i8
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5815, i8* %5816, align 1
  store %struct.Memory* %loadMem_42f7f2, %struct.Memory** %MEMORY
  %loadMem_42f7f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5818 = getelementptr inbounds %struct.GPR, %struct.GPR* %5817, i32 0, i32 33
  %5819 = getelementptr inbounds %struct.Reg, %struct.Reg* %5818, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %5819 to i64*
  %5820 = load i64, i64* %PC.i61
  %5821 = add i64 %5820, 76
  %5822 = load i64, i64* %PC.i61
  %5823 = add i64 %5822, 6
  %5824 = load i64, i64* %PC.i61
  %5825 = add i64 %5824, 6
  store i64 %5825, i64* %PC.i61
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5827 = load i8, i8* %5826, align 1
  store i8 %5827, i8* %BRANCH_TAKEN, align 1
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5829 = icmp ne i8 %5827, 0
  %5830 = select i1 %5829, i64 %5821, i64 %5823
  store i64 %5830, i64* %5828, align 8
  store %struct.Memory* %loadMem_42f7f5, %struct.Memory** %MEMORY
  %loadBr_42f7f5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f7f5 = icmp eq i8 %loadBr_42f7f5, 1
  br i1 %cmpBr_42f7f5, label %block_.L_42f841, label %block_42f7fb

block_42f7fb:                                     ; preds = %block_.L_42f7e9
  %loadMem_42f7fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 33
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %5833 to i64*
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5835 = getelementptr inbounds %struct.GPR, %struct.GPR* %5834, i32 0, i32 1
  %5836 = getelementptr inbounds %struct.Reg, %struct.Reg* %5835, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %5836 to i64*
  %5837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5838 = getelementptr inbounds %struct.GPR, %struct.GPR* %5837, i32 0, i32 15
  %5839 = getelementptr inbounds %struct.Reg, %struct.Reg* %5838, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %5839 to i64*
  %5840 = load i64, i64* %RBP.i60
  %5841 = sub i64 %5840, 16
  %5842 = load i64, i64* %PC.i58
  %5843 = add i64 %5842, 4
  store i64 %5843, i64* %PC.i58
  %5844 = inttoptr i64 %5841 to i64*
  %5845 = load i64, i64* %5844
  store i64 %5845, i64* %RAX.i59, align 8
  store %struct.Memory* %loadMem_42f7fb, %struct.Memory** %MEMORY
  %loadMem_42f7ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5847 = getelementptr inbounds %struct.GPR, %struct.GPR* %5846, i32 0, i32 33
  %5848 = getelementptr inbounds %struct.Reg, %struct.Reg* %5847, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %5848 to i64*
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5850 = getelementptr inbounds %struct.GPR, %struct.GPR* %5849, i32 0, i32 1
  %5851 = getelementptr inbounds %struct.Reg, %struct.Reg* %5850, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %5851 to i64*
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5853 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5852, i64 0, i64 0
  %YMM0.i57 = bitcast %union.VectorReg* %5853 to %"class.std::bitset"*
  %5854 = bitcast %"class.std::bitset"* %YMM0.i57 to i8*
  %5855 = load i64, i64* %RAX.i56
  %5856 = add i64 %5855, 96
  %5857 = load i64, i64* %PC.i55
  %5858 = add i64 %5857, 5
  store i64 %5858, i64* %PC.i55
  %5859 = inttoptr i64 %5856 to float*
  %5860 = load float, float* %5859
  %5861 = bitcast i8* %5854 to float*
  store float %5860, float* %5861, align 1
  %5862 = getelementptr inbounds i8, i8* %5854, i64 4
  %5863 = bitcast i8* %5862 to float*
  store float 0.000000e+00, float* %5863, align 1
  %5864 = getelementptr inbounds i8, i8* %5854, i64 8
  %5865 = bitcast i8* %5864 to float*
  store float 0.000000e+00, float* %5865, align 1
  %5866 = getelementptr inbounds i8, i8* %5854, i64 12
  %5867 = bitcast i8* %5866 to float*
  store float 0.000000e+00, float* %5867, align 1
  store %struct.Memory* %loadMem_42f7ff, %struct.Memory** %MEMORY
  %loadMem_42f804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5869 = getelementptr inbounds %struct.GPR, %struct.GPR* %5868, i32 0, i32 33
  %5870 = getelementptr inbounds %struct.Reg, %struct.Reg* %5869, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %5870 to i64*
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 1
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %5873 to i64*
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 15
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %5876 to i64*
  %5877 = load i64, i64* %RBP.i54
  %5878 = sub i64 %5877, 24
  %5879 = load i64, i64* %PC.i52
  %5880 = add i64 %5879, 4
  store i64 %5880, i64* %PC.i52
  %5881 = inttoptr i64 %5878 to i64*
  %5882 = load i64, i64* %5881
  store i64 %5882, i64* %RAX.i53, align 8
  store %struct.Memory* %loadMem_42f804, %struct.Memory** %MEMORY
  %loadMem_42f808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5884 = getelementptr inbounds %struct.GPR, %struct.GPR* %5883, i32 0, i32 33
  %5885 = getelementptr inbounds %struct.Reg, %struct.Reg* %5884, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %5885 to i64*
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5887 = getelementptr inbounds %struct.GPR, %struct.GPR* %5886, i32 0, i32 1
  %5888 = getelementptr inbounds %struct.Reg, %struct.Reg* %5887, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %5888 to i64*
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5890 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5889, i64 0, i64 0
  %XMM0.i51 = bitcast %union.VectorReg* %5890 to %union.vec128_t*
  %5891 = load i64, i64* %RAX.i50
  %5892 = add i64 %5891, 136
  %5893 = bitcast %union.vec128_t* %XMM0.i51 to i8*
  %5894 = load i64, i64* %PC.i49
  %5895 = add i64 %5894, 8
  store i64 %5895, i64* %PC.i49
  %5896 = bitcast i8* %5893 to <2 x float>*
  %5897 = load <2 x float>, <2 x float>* %5896, align 1
  %5898 = extractelement <2 x float> %5897, i32 0
  %5899 = inttoptr i64 %5892 to float*
  store float %5898, float* %5899
  store %struct.Memory* %loadMem_42f808, %struct.Memory** %MEMORY
  %loadMem_42f810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5901 = getelementptr inbounds %struct.GPR, %struct.GPR* %5900, i32 0, i32 33
  %5902 = getelementptr inbounds %struct.Reg, %struct.Reg* %5901, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %5902 to i64*
  %5903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5904 = getelementptr inbounds %struct.GPR, %struct.GPR* %5903, i32 0, i32 1
  %5905 = getelementptr inbounds %struct.Reg, %struct.Reg* %5904, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %5905 to i64*
  %5906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5907 = getelementptr inbounds %struct.GPR, %struct.GPR* %5906, i32 0, i32 15
  %5908 = getelementptr inbounds %struct.Reg, %struct.Reg* %5907, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %5908 to i64*
  %5909 = load i64, i64* %RBP.i48
  %5910 = sub i64 %5909, 24
  %5911 = load i64, i64* %PC.i46
  %5912 = add i64 %5911, 4
  store i64 %5912, i64* %PC.i46
  %5913 = inttoptr i64 %5910 to i64*
  %5914 = load i64, i64* %5913
  store i64 %5914, i64* %RAX.i47, align 8
  store %struct.Memory* %loadMem_42f810, %struct.Memory** %MEMORY
  %loadMem_42f814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5916 = getelementptr inbounds %struct.GPR, %struct.GPR* %5915, i32 0, i32 33
  %5917 = getelementptr inbounds %struct.Reg, %struct.Reg* %5916, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %5917 to i64*
  %5918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5919 = getelementptr inbounds %struct.GPR, %struct.GPR* %5918, i32 0, i32 1
  %5920 = getelementptr inbounds %struct.Reg, %struct.Reg* %5919, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %5920 to i64*
  %5921 = load i64, i64* %RAX.i45
  %5922 = add i64 %5921, 160
  %5923 = load i64, i64* %PC.i44
  %5924 = add i64 %5923, 10
  store i64 %5924, i64* %PC.i44
  %5925 = inttoptr i64 %5922 to i32*
  store i32 1, i32* %5925
  store %struct.Memory* %loadMem_42f814, %struct.Memory** %MEMORY
  %loadMem_42f81e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5927 = getelementptr inbounds %struct.GPR, %struct.GPR* %5926, i32 0, i32 33
  %5928 = getelementptr inbounds %struct.Reg, %struct.Reg* %5927, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %5928 to i64*
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5930 = getelementptr inbounds %struct.GPR, %struct.GPR* %5929, i32 0, i32 1
  %5931 = getelementptr inbounds %struct.Reg, %struct.Reg* %5930, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %5931 to i64*
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5933 = getelementptr inbounds %struct.GPR, %struct.GPR* %5932, i32 0, i32 15
  %5934 = getelementptr inbounds %struct.Reg, %struct.Reg* %5933, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %5934 to i64*
  %5935 = load i64, i64* %RBP.i43
  %5936 = sub i64 %5935, 16
  %5937 = load i64, i64* %PC.i41
  %5938 = add i64 %5937, 4
  store i64 %5938, i64* %PC.i41
  %5939 = inttoptr i64 %5936 to i64*
  %5940 = load i64, i64* %5939
  store i64 %5940, i64* %RAX.i42, align 8
  store %struct.Memory* %loadMem_42f81e, %struct.Memory** %MEMORY
  %loadMem_42f822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5942 = getelementptr inbounds %struct.GPR, %struct.GPR* %5941, i32 0, i32 33
  %5943 = getelementptr inbounds %struct.Reg, %struct.Reg* %5942, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5943 to i64*
  %5944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5945 = getelementptr inbounds %struct.GPR, %struct.GPR* %5944, i32 0, i32 1
  %5946 = getelementptr inbounds %struct.Reg, %struct.Reg* %5945, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %5946 to i64*
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5948 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5947, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %5948 to %"class.std::bitset"*
  %5949 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5950 = load i64, i64* %RAX.i40
  %5951 = add i64 %5950, 100
  %5952 = load i64, i64* %PC.i39
  %5953 = add i64 %5952, 5
  store i64 %5953, i64* %PC.i39
  %5954 = inttoptr i64 %5951 to float*
  %5955 = load float, float* %5954
  %5956 = bitcast i8* %5949 to float*
  store float %5955, float* %5956, align 1
  %5957 = getelementptr inbounds i8, i8* %5949, i64 4
  %5958 = bitcast i8* %5957 to float*
  store float 0.000000e+00, float* %5958, align 1
  %5959 = getelementptr inbounds i8, i8* %5949, i64 8
  %5960 = bitcast i8* %5959 to float*
  store float 0.000000e+00, float* %5960, align 1
  %5961 = getelementptr inbounds i8, i8* %5949, i64 12
  %5962 = bitcast i8* %5961 to float*
  store float 0.000000e+00, float* %5962, align 1
  store %struct.Memory* %loadMem_42f822, %struct.Memory** %MEMORY
  %loadMem_42f827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5964 = getelementptr inbounds %struct.GPR, %struct.GPR* %5963, i32 0, i32 33
  %5965 = getelementptr inbounds %struct.Reg, %struct.Reg* %5964, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %5965 to i64*
  %5966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5967 = getelementptr inbounds %struct.GPR, %struct.GPR* %5966, i32 0, i32 1
  %5968 = getelementptr inbounds %struct.Reg, %struct.Reg* %5967, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %5968 to i64*
  %5969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5970 = getelementptr inbounds %struct.GPR, %struct.GPR* %5969, i32 0, i32 15
  %5971 = getelementptr inbounds %struct.Reg, %struct.Reg* %5970, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %5971 to i64*
  %5972 = load i64, i64* %RBP.i38
  %5973 = sub i64 %5972, 24
  %5974 = load i64, i64* %PC.i36
  %5975 = add i64 %5974, 4
  store i64 %5975, i64* %PC.i36
  %5976 = inttoptr i64 %5973 to i64*
  %5977 = load i64, i64* %5976
  store i64 %5977, i64* %RAX.i37, align 8
  store %struct.Memory* %loadMem_42f827, %struct.Memory** %MEMORY
  %loadMem_42f82b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5979 = getelementptr inbounds %struct.GPR, %struct.GPR* %5978, i32 0, i32 33
  %5980 = getelementptr inbounds %struct.Reg, %struct.Reg* %5979, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5980 to i64*
  %5981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5982 = getelementptr inbounds %struct.GPR, %struct.GPR* %5981, i32 0, i32 1
  %5983 = getelementptr inbounds %struct.Reg, %struct.Reg* %5982, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %5983 to i64*
  %5984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5985 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5984, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %5985 to %union.vec128_t*
  %5986 = load i64, i64* %RAX.i35
  %5987 = add i64 %5986, 140
  %5988 = bitcast %union.vec128_t* %XMM0.i to i8*
  %5989 = load i64, i64* %PC.i34
  %5990 = add i64 %5989, 8
  store i64 %5990, i64* %PC.i34
  %5991 = bitcast i8* %5988 to <2 x float>*
  %5992 = load <2 x float>, <2 x float>* %5991, align 1
  %5993 = extractelement <2 x float> %5992, i32 0
  %5994 = inttoptr i64 %5987 to float*
  store float %5993, float* %5994
  store %struct.Memory* %loadMem_42f82b, %struct.Memory** %MEMORY
  %loadMem_42f833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5996 = getelementptr inbounds %struct.GPR, %struct.GPR* %5995, i32 0, i32 33
  %5997 = getelementptr inbounds %struct.Reg, %struct.Reg* %5996, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5997 to i64*
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5999 = getelementptr inbounds %struct.GPR, %struct.GPR* %5998, i32 0, i32 1
  %6000 = getelementptr inbounds %struct.Reg, %struct.Reg* %5999, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %6000 to i64*
  %6001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6002 = getelementptr inbounds %struct.GPR, %struct.GPR* %6001, i32 0, i32 15
  %6003 = getelementptr inbounds %struct.Reg, %struct.Reg* %6002, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %6003 to i64*
  %6004 = load i64, i64* %RBP.i33
  %6005 = sub i64 %6004, 24
  %6006 = load i64, i64* %PC.i31
  %6007 = add i64 %6006, 4
  store i64 %6007, i64* %PC.i31
  %6008 = inttoptr i64 %6005 to i64*
  %6009 = load i64, i64* %6008
  store i64 %6009, i64* %RAX.i32, align 8
  store %struct.Memory* %loadMem_42f833, %struct.Memory** %MEMORY
  %loadMem_42f837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6011 = getelementptr inbounds %struct.GPR, %struct.GPR* %6010, i32 0, i32 33
  %6012 = getelementptr inbounds %struct.Reg, %struct.Reg* %6011, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %6012 to i64*
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6014 = getelementptr inbounds %struct.GPR, %struct.GPR* %6013, i32 0, i32 1
  %6015 = getelementptr inbounds %struct.Reg, %struct.Reg* %6014, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %6015 to i64*
  %6016 = load i64, i64* %RAX.i30
  %6017 = add i64 %6016, 164
  %6018 = load i64, i64* %PC.i29
  %6019 = add i64 %6018, 10
  store i64 %6019, i64* %PC.i29
  %6020 = inttoptr i64 %6017 to i32*
  store i32 1, i32* %6020
  store %struct.Memory* %loadMem_42f837, %struct.Memory** %MEMORY
  br label %block_.L_42f841

block_.L_42f841:                                  ; preds = %block_42f7fb, %block_.L_42f7e9
  %loadMem_42f841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6022 = getelementptr inbounds %struct.GPR, %struct.GPR* %6021, i32 0, i32 33
  %6023 = getelementptr inbounds %struct.Reg, %struct.Reg* %6022, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %6023 to i64*
  %6024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6025 = getelementptr inbounds %struct.GPR, %struct.GPR* %6024, i32 0, i32 1
  %6026 = getelementptr inbounds %struct.Reg, %struct.Reg* %6025, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %6026 to i64*
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6028 = getelementptr inbounds %struct.GPR, %struct.GPR* %6027, i32 0, i32 15
  %6029 = getelementptr inbounds %struct.Reg, %struct.Reg* %6028, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %6029 to i64*
  %6030 = load i64, i64* %RBP.i28
  %6031 = sub i64 %6030, 16
  %6032 = load i64, i64* %PC.i26
  %6033 = add i64 %6032, 4
  store i64 %6033, i64* %PC.i26
  %6034 = inttoptr i64 %6031 to i64*
  %6035 = load i64, i64* %6034
  store i64 %6035, i64* %RAX.i27, align 8
  store %struct.Memory* %loadMem_42f841, %struct.Memory** %MEMORY
  %loadMem_42f845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6037 = getelementptr inbounds %struct.GPR, %struct.GPR* %6036, i32 0, i32 33
  %6038 = getelementptr inbounds %struct.Reg, %struct.Reg* %6037, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %6038 to i64*
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6040 = getelementptr inbounds %struct.GPR, %struct.GPR* %6039, i32 0, i32 1
  %6041 = getelementptr inbounds %struct.Reg, %struct.Reg* %6040, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %6041 to i64*
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6043 = getelementptr inbounds %struct.GPR, %struct.GPR* %6042, i32 0, i32 5
  %6044 = getelementptr inbounds %struct.Reg, %struct.Reg* %6043, i32 0, i32 0
  %RCX.i25 = bitcast %union.anon* %6044 to i64*
  %6045 = load i64, i64* %RAX.i24
  %6046 = add i64 %6045, 8
  %6047 = load i64, i64* %PC.i23
  %6048 = add i64 %6047, 3
  store i64 %6048, i64* %PC.i23
  %6049 = inttoptr i64 %6046 to i32*
  %6050 = load i32, i32* %6049
  %6051 = zext i32 %6050 to i64
  store i64 %6051, i64* %RCX.i25, align 8
  store %struct.Memory* %loadMem_42f845, %struct.Memory** %MEMORY
  %loadMem_42f848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6053 = getelementptr inbounds %struct.GPR, %struct.GPR* %6052, i32 0, i32 33
  %6054 = getelementptr inbounds %struct.Reg, %struct.Reg* %6053, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %6054 to i64*
  %6055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6056 = getelementptr inbounds %struct.GPR, %struct.GPR* %6055, i32 0, i32 1
  %6057 = getelementptr inbounds %struct.Reg, %struct.Reg* %6056, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %6057 to i64*
  %6058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6059 = getelementptr inbounds %struct.GPR, %struct.GPR* %6058, i32 0, i32 15
  %6060 = getelementptr inbounds %struct.Reg, %struct.Reg* %6059, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %6060 to i64*
  %6061 = load i64, i64* %RBP.i22
  %6062 = sub i64 %6061, 24
  %6063 = load i64, i64* %PC.i20
  %6064 = add i64 %6063, 4
  store i64 %6064, i64* %PC.i20
  %6065 = inttoptr i64 %6062 to i64*
  %6066 = load i64, i64* %6065
  store i64 %6066, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_42f848, %struct.Memory** %MEMORY
  %loadMem_42f84c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6068 = getelementptr inbounds %struct.GPR, %struct.GPR* %6067, i32 0, i32 33
  %6069 = getelementptr inbounds %struct.Reg, %struct.Reg* %6068, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %6069 to i64*
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6071 = getelementptr inbounds %struct.GPR, %struct.GPR* %6070, i32 0, i32 5
  %6072 = getelementptr inbounds %struct.Reg, %struct.Reg* %6071, i32 0, i32 0
  %ECX.i18 = bitcast %union.anon* %6072 to i32*
  %6073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6074 = getelementptr inbounds %struct.GPR, %struct.GPR* %6073, i32 0, i32 1
  %6075 = getelementptr inbounds %struct.Reg, %struct.Reg* %6074, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %6075 to i64*
  %6076 = load i64, i64* %RAX.i19
  %6077 = add i64 %6076, 28
  %6078 = load i32, i32* %ECX.i18
  %6079 = zext i32 %6078 to i64
  %6080 = load i64, i64* %PC.i17
  %6081 = add i64 %6080, 3
  store i64 %6081, i64* %PC.i17
  %6082 = inttoptr i64 %6077 to i32*
  store i32 %6078, i32* %6082
  store %struct.Memory* %loadMem_42f84c, %struct.Memory** %MEMORY
  %loadMem_42f84f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6084 = getelementptr inbounds %struct.GPR, %struct.GPR* %6083, i32 0, i32 33
  %6085 = getelementptr inbounds %struct.Reg, %struct.Reg* %6084, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %6085 to i64*
  %6086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6087 = getelementptr inbounds %struct.GPR, %struct.GPR* %6086, i32 0, i32 1
  %6088 = getelementptr inbounds %struct.Reg, %struct.Reg* %6087, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %6088 to i64*
  %6089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6090 = getelementptr inbounds %struct.GPR, %struct.GPR* %6089, i32 0, i32 15
  %6091 = getelementptr inbounds %struct.Reg, %struct.Reg* %6090, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %6091 to i64*
  %6092 = load i64, i64* %RBP.i16
  %6093 = sub i64 %6092, 16
  %6094 = load i64, i64* %PC.i14
  %6095 = add i64 %6094, 4
  store i64 %6095, i64* %PC.i14
  %6096 = inttoptr i64 %6093 to i64*
  %6097 = load i64, i64* %6096
  store i64 %6097, i64* %RAX.i15, align 8
  store %struct.Memory* %loadMem_42f84f, %struct.Memory** %MEMORY
  %loadMem_42f853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6099 = getelementptr inbounds %struct.GPR, %struct.GPR* %6098, i32 0, i32 33
  %6100 = getelementptr inbounds %struct.Reg, %struct.Reg* %6099, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %6100 to i64*
  %6101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6102 = getelementptr inbounds %struct.GPR, %struct.GPR* %6101, i32 0, i32 1
  %6103 = getelementptr inbounds %struct.Reg, %struct.Reg* %6102, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %6103 to i64*
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6105 = getelementptr inbounds %struct.GPR, %struct.GPR* %6104, i32 0, i32 5
  %6106 = getelementptr inbounds %struct.Reg, %struct.Reg* %6105, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6106 to i64*
  %6107 = load i64, i64* %RAX.i13
  %6108 = add i64 %6107, 4
  %6109 = load i64, i64* %PC.i12
  %6110 = add i64 %6109, 3
  store i64 %6110, i64* %PC.i12
  %6111 = inttoptr i64 %6108 to i32*
  %6112 = load i32, i32* %6111
  %6113 = zext i32 %6112 to i64
  store i64 %6113, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_42f853, %struct.Memory** %MEMORY
  %loadMem_42f856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6115 = getelementptr inbounds %struct.GPR, %struct.GPR* %6114, i32 0, i32 33
  %6116 = getelementptr inbounds %struct.Reg, %struct.Reg* %6115, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6116 to i64*
  %6117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6118 = getelementptr inbounds %struct.GPR, %struct.GPR* %6117, i32 0, i32 1
  %6119 = getelementptr inbounds %struct.Reg, %struct.Reg* %6118, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %6119 to i64*
  %6120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6121 = getelementptr inbounds %struct.GPR, %struct.GPR* %6120, i32 0, i32 15
  %6122 = getelementptr inbounds %struct.Reg, %struct.Reg* %6121, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %6122 to i64*
  %6123 = load i64, i64* %RBP.i11
  %6124 = sub i64 %6123, 24
  %6125 = load i64, i64* %PC.i9
  %6126 = add i64 %6125, 4
  store i64 %6126, i64* %PC.i9
  %6127 = inttoptr i64 %6124 to i64*
  %6128 = load i64, i64* %6127
  store i64 %6128, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_42f856, %struct.Memory** %MEMORY
  %loadMem_42f85a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6130 = getelementptr inbounds %struct.GPR, %struct.GPR* %6129, i32 0, i32 33
  %6131 = getelementptr inbounds %struct.Reg, %struct.Reg* %6130, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %6131 to i64*
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6133 = getelementptr inbounds %struct.GPR, %struct.GPR* %6132, i32 0, i32 5
  %6134 = getelementptr inbounds %struct.Reg, %struct.Reg* %6133, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %6134 to i32*
  %6135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6136 = getelementptr inbounds %struct.GPR, %struct.GPR* %6135, i32 0, i32 1
  %6137 = getelementptr inbounds %struct.Reg, %struct.Reg* %6136, i32 0, i32 0
  %RAX.i8 = bitcast %union.anon* %6137 to i64*
  %6138 = load i64, i64* %RAX.i8
  %6139 = add i64 %6138, 24
  %6140 = load i32, i32* %ECX.i
  %6141 = zext i32 %6140 to i64
  %6142 = load i64, i64* %PC.i7
  %6143 = add i64 %6142, 3
  store i64 %6143, i64* %PC.i7
  %6144 = inttoptr i64 %6139 to i32*
  store i32 %6140, i32* %6144
  store %struct.Memory* %loadMem_42f85a, %struct.Memory** %MEMORY
  %loadMem_42f85d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6146 = getelementptr inbounds %struct.GPR, %struct.GPR* %6145, i32 0, i32 33
  %6147 = getelementptr inbounds %struct.Reg, %struct.Reg* %6146, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6147 to i64*
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6149 = getelementptr inbounds %struct.GPR, %struct.GPR* %6148, i32 0, i32 1
  %6150 = getelementptr inbounds %struct.Reg, %struct.Reg* %6149, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6150 to i64*
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 15
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %6153 to i64*
  %6154 = load i64, i64* %RBP.i6
  %6155 = sub i64 %6154, 24
  %6156 = load i64, i64* %PC.i5
  %6157 = add i64 %6156, 4
  store i64 %6157, i64* %PC.i5
  %6158 = inttoptr i64 %6155 to i64*
  %6159 = load i64, i64* %6158
  store i64 %6159, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_42f85d, %struct.Memory** %MEMORY
  %loadMem_42f861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6161 = getelementptr inbounds %struct.GPR, %struct.GPR* %6160, i32 0, i32 33
  %6162 = getelementptr inbounds %struct.Reg, %struct.Reg* %6161, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6162 to i64*
  %6163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6164 = getelementptr inbounds %struct.GPR, %struct.GPR* %6163, i32 0, i32 13
  %6165 = getelementptr inbounds %struct.Reg, %struct.Reg* %6164, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6165 to i64*
  %6166 = load i64, i64* %RSP.i
  %6167 = load i64, i64* %PC.i4
  %6168 = add i64 %6167, 4
  store i64 %6168, i64* %PC.i4
  %6169 = add i64 64, %6166
  store i64 %6169, i64* %RSP.i, align 8
  %6170 = icmp ult i64 %6169, %6166
  %6171 = icmp ult i64 %6169, 64
  %6172 = or i1 %6170, %6171
  %6173 = zext i1 %6172 to i8
  %6174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6173, i8* %6174, align 1
  %6175 = trunc i64 %6169 to i32
  %6176 = and i32 %6175, 255
  %6177 = call i32 @llvm.ctpop.i32(i32 %6176)
  %6178 = trunc i32 %6177 to i8
  %6179 = and i8 %6178, 1
  %6180 = xor i8 %6179, 1
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6180, i8* %6181, align 1
  %6182 = xor i64 64, %6166
  %6183 = xor i64 %6182, %6169
  %6184 = lshr i64 %6183, 4
  %6185 = trunc i64 %6184 to i8
  %6186 = and i8 %6185, 1
  %6187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6186, i8* %6187, align 1
  %6188 = icmp eq i64 %6169, 0
  %6189 = zext i1 %6188 to i8
  %6190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6189, i8* %6190, align 1
  %6191 = lshr i64 %6169, 63
  %6192 = trunc i64 %6191 to i8
  %6193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6192, i8* %6193, align 1
  %6194 = lshr i64 %6166, 63
  %6195 = xor i64 %6191, %6194
  %6196 = add i64 %6195, %6191
  %6197 = icmp eq i64 %6196, 2
  %6198 = zext i1 %6197 to i8
  %6199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6198, i8* %6199, align 1
  store %struct.Memory* %loadMem_42f861, %struct.Memory** %MEMORY
  %loadMem_42f865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6201 = getelementptr inbounds %struct.GPR, %struct.GPR* %6200, i32 0, i32 33
  %6202 = getelementptr inbounds %struct.Reg, %struct.Reg* %6201, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6202 to i64*
  %6203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6204 = getelementptr inbounds %struct.GPR, %struct.GPR* %6203, i32 0, i32 15
  %6205 = getelementptr inbounds %struct.Reg, %struct.Reg* %6204, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6205 to i64*
  %6206 = load i64, i64* %PC.i2
  %6207 = add i64 %6206, 1
  store i64 %6207, i64* %PC.i2
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6209 = load i64, i64* %6208, align 8
  %6210 = add i64 %6209, 8
  %6211 = inttoptr i64 %6209 to i64*
  %6212 = load i64, i64* %6211
  store i64 %6212, i64* %RBP.i3, align 8
  store i64 %6210, i64* %6208, align 8
  store %struct.Memory* %loadMem_42f865, %struct.Memory** %MEMORY
  %loadMem_42f866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6214 = getelementptr inbounds %struct.GPR, %struct.GPR* %6213, i32 0, i32 33
  %6215 = getelementptr inbounds %struct.Reg, %struct.Reg* %6214, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6215 to i64*
  %6216 = load i64, i64* %PC.i1
  %6217 = add i64 %6216, 1
  store i64 %6217, i64* %PC.i1
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6220 = load i64, i64* %6219, align 8
  %6221 = inttoptr i64 %6220 to i64*
  %6222 = load i64, i64* %6221
  store i64 %6222, i64* %6218, align 8
  %6223 = add i64 %6220, 8
  store i64 %6223, i64* %6219, align 8
  store %struct.Memory* %loadMem_42f866, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_42f866
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rsi____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rsi____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.MSAAlloc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
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

define %struct.Memory* @routine_cmpl_0x8__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_jge_.L_42f69d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4294967295, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq___rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i64*
  %22 = load i64, i64* %21
  store i64 %22, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rcx__rsi_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to float*
  %22 = load float, float* %21
  %23 = bitcast i8* %14 to float*
  store float %22, float* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 4
  %25 = bitcast i8* %24 to float*
  store float 0.000000e+00, float* %25, align 1
  %26 = getelementptr inbounds i8, i8* %14, i64 8
  %27 = bitcast i8* %26 to float*
  store float 0.000000e+00, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %14, i64 12
  %29 = bitcast i8* %28 to float*
  store float 0.000000e+00, float* %29, align 1
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

define %struct.Memory* @routine_movss__xmm0____rcx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %RSI
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to <2 x float>*
  %22 = load <2 x float>, <2 x float>* %21, align 1
  %23 = extractelement <2 x float> %22, i32 0
  %24 = inttoptr i64 %17 to float*
  store float %23, float* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x168___rsi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 360, %15
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

define %struct.Memory* @routine_addq__0x4___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 4, %9
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 4
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
  %25 = xor i64 4, %9
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

define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sre_strdup(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rcx__rdi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x18__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_0x138__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 312
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq___rax__rcx_8____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i64*
  %22 = load i64, i64* %21
  store i64 %22, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.GKIStoreKey(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl___rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x4___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 4, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_je_.L_42f38f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x168___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 360, %15
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

define %struct.Memory* @routine_addq__0x84___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 132, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 132
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
  %25 = xor i64 132, %9
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

define %struct.Memory* @routine_callq_.MSASetSeqAccession(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_andl__0x8___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 8, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_je_.L_42f3de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0xc4___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 196, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 196
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
  %25 = xor i64 196, %9
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

define %struct.Memory* @routine_callq_.MSASetSeqDescription(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42f534(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__0x70__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 112
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

define %struct.Memory* @routine_jne_.L_42f4ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x41f___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1055, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x140__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x3___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 2
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_callq_.sre_malloc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x420___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1056, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x70__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 112
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x2___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 1
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rax__0x150__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 336
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_cmpl_0x140__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 320
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

define %struct.Memory* @routine_jge_.L_42f4c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__0x0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  store i64 0, i64* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x150__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 336
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_42f47a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42f4ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x158__rax____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 344
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 2
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

define %struct.Memory* @routine_movq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.MakeAlignedString(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x18__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x150__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 336
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_andl__0x400___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 1024, %9
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

define %struct.Memory* @routine_je_.L_42f68a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 120
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

define %struct.Memory* @routine_jne_.L_42f620(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x42c___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1068, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x42d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1069, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x78__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 120
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x158__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 344
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_42f61b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x158__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 344
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42f5d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42f620(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x160__rax____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 352
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x158__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 344
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42f68f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42f26e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x30__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x28__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 40
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x38__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x30__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 48
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x40__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x38__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 56
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x48__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x40__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 64
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x48__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 72
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x58__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 88
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_je_.L_42f791(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0x50__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 80
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

define %struct.Memory* @routine_movss__xmm0__0x80__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 128
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x98__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x54__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 84
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

define %struct.Memory* @routine_movss__xmm0__0x84__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 132
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x9c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 2, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_je_.L_42f7e9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0x58__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 88
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

define %struct.Memory* @routine_movss__xmm0__0x90__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0xa8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x5c__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 92
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

define %struct.Memory* @routine_movss__xmm0__0x94__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 148
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0xac__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 172
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x4___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 4, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_je_.L_42f841(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0x60__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 96
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

define %struct.Memory* @routine_movss__xmm0__0x88__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 136
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0xa0__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x64__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 100
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

define %struct.Memory* @routine_movss__xmm0__0x8c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 140
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0xa4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 164
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x1c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 28
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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
