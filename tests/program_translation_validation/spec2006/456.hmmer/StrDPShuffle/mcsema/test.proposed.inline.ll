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
%G__0x459d41_type = type <{ [8 x i8] }>
%G__0x459df0_type = type <{ [8 x i8] }>
%G__0x459e0c_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G__0x459d41 = global %G__0x459d41_type zeroinitializer
@G__0x459df0 = global %G__0x459df0_type zeroinitializer
@G__0x459e0c = global %G__0x459e0c_type zeroinitializer

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

declare %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4013f0.toupper_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_445400.sre_random(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_446110.Free2DArray(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @StrDPShuffle(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_43d450 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_43d450, %struct.Memory** %MEMORY
  %loadMem_43d451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i10 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i10
  %27 = load i64, i64* %PC.i9
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i9
  store i64 %26, i64* %RBP.i11, align 8
  store %struct.Memory* %loadMem_43d451, %struct.Memory** %MEMORY
  %loadMem_43d454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i16 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i16
  %36 = load i64, i64* %PC.i15
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i15
  %38 = sub i64 %35, 112
  store i64 %38, i64* %RSP.i16, align 8
  %39 = icmp ult i64 %35, 112
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
  %49 = xor i64 112, %35
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
  store %struct.Memory* %loadMem_43d454, %struct.Memory** %MEMORY
  %loadMem_43d458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i945 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i946 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i947 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i947
  %77 = sub i64 %76, 16
  %78 = load i64, i64* %RDI.i946
  %79 = load i64, i64* %PC.i945
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i945
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_43d458, %struct.Memory** %MEMORY
  %loadMem_43d45c = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RSI.i953 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i954 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i954
  %92 = sub i64 %91, 24
  %93 = load i64, i64* %RSI.i953
  %94 = load i64, i64* %PC.i952
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC.i952
  %96 = inttoptr i64 %92 to i64*
  store i64 %93, i64* %96
  store %struct.Memory* %loadMem_43d45c, %struct.Memory** %MEMORY
  %loadMem_43d460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i949 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 11
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RDI.i950 = bitcast %union.anon* %102 to i64*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RBP.i951 = bitcast %union.anon* %105 to i64*
  %106 = load i64, i64* %RBP.i951
  %107 = sub i64 %106, 24
  %108 = load i64, i64* %PC.i949
  %109 = add i64 %108, 4
  store i64 %109, i64* %PC.i949
  %110 = inttoptr i64 %107 to i64*
  %111 = load i64, i64* %110
  store i64 %111, i64* %RDI.i950, align 8
  store %struct.Memory* %loadMem_43d460, %struct.Memory** %MEMORY
  %loadMem1_43d464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i948 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %PC.i948
  %116 = add i64 %115, -245764
  %117 = load i64, i64* %PC.i948
  %118 = add i64 %117, 5
  %119 = load i64, i64* %PC.i948
  %120 = add i64 %119, 5
  store i64 %120, i64* %PC.i948
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, -8
  %124 = inttoptr i64 %123 to i64*
  store i64 %118, i64* %124
  store i64 %123, i64* %121, align 8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %116, i64* %125, align 8
  store %struct.Memory* %loadMem1_43d464, %struct.Memory** %MEMORY
  %loadMem2_43d464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43d464 = load i64, i64* %3
  %126 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_43d464)
  store %struct.Memory* %126, %struct.Memory** %MEMORY
  %loadMem_43d469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 33
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %129 to i64*
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %EAX.i943 = bitcast %union.anon* %132 to i32*
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %RCX.i944 = bitcast %union.anon* %135 to i64*
  %136 = load i32, i32* %EAX.i943
  %137 = zext i32 %136 to i64
  %138 = load i64, i64* %PC.i942
  %139 = add i64 %138, 2
  store i64 %139, i64* %PC.i942
  %140 = and i64 %137, 4294967295
  store i64 %140, i64* %RCX.i944, align 8
  store %struct.Memory* %loadMem_43d469, %struct.Memory** %MEMORY
  %loadMem_43d46b = load %struct.Memory*, %struct.Memory** %MEMORY
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 33
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %PC.i939 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %ECX.i940 = bitcast %union.anon* %146 to i32*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 15
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %RBP.i941 = bitcast %union.anon* %149 to i64*
  %150 = load i64, i64* %RBP.i941
  %151 = sub i64 %150, 28
  %152 = load i32, i32* %ECX.i940
  %153 = zext i32 %152 to i64
  %154 = load i64, i64* %PC.i939
  %155 = add i64 %154, 3
  store i64 %155, i64* %PC.i939
  %156 = inttoptr i64 %151 to i32*
  store i32 %152, i32* %156
  store %struct.Memory* %loadMem_43d46b, %struct.Memory** %MEMORY
  %loadMem_43d46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 33
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %PC.i937 = bitcast %union.anon* %159 to i64*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 15
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %RBP.i938 = bitcast %union.anon* %162 to i64*
  %163 = load i64, i64* %RBP.i938
  %164 = sub i64 %163, 32
  %165 = load i64, i64* %PC.i937
  %166 = add i64 %165, 7
  store i64 %166, i64* %PC.i937
  %167 = inttoptr i64 %164 to i32*
  store i32 0, i32* %167
  store %struct.Memory* %loadMem_43d46e, %struct.Memory** %MEMORY
  br label %block_.L_43d475

block_.L_43d475:                                  ; preds = %block_.L_43d4bc, %entry
  %loadMem_43d475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 33
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %RAX.i935 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 15
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RBP.i936 = bitcast %union.anon* %176 to i64*
  %177 = load i64, i64* %RBP.i936
  %178 = sub i64 %177, 32
  %179 = load i64, i64* %PC.i934
  %180 = add i64 %179, 3
  store i64 %180, i64* %PC.i934
  %181 = inttoptr i64 %178 to i32*
  %182 = load i32, i32* %181
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RAX.i935, align 8
  store %struct.Memory* %loadMem_43d475, %struct.Memory** %MEMORY
  %loadMem_43d478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i931 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %EAX.i932 = bitcast %union.anon* %189 to i32*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 15
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RBP.i933 = bitcast %union.anon* %192 to i64*
  %193 = load i32, i32* %EAX.i932
  %194 = zext i32 %193 to i64
  %195 = load i64, i64* %RBP.i933
  %196 = sub i64 %195, 28
  %197 = load i64, i64* %PC.i931
  %198 = add i64 %197, 3
  store i64 %198, i64* %PC.i931
  %199 = inttoptr i64 %196 to i32*
  %200 = load i32, i32* %199
  %201 = sub i32 %193, %200
  %202 = icmp ult i32 %193, %200
  %203 = zext i1 %202 to i8
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %203, i8* %204, align 1
  %205 = and i32 %201, 255
  %206 = call i32 @llvm.ctpop.i32(i32 %205)
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  %209 = xor i8 %208, 1
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %209, i8* %210, align 1
  %211 = xor i32 %200, %193
  %212 = xor i32 %211, %201
  %213 = lshr i32 %212, 4
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %215, i8* %216, align 1
  %217 = icmp eq i32 %201, 0
  %218 = zext i1 %217 to i8
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %218, i8* %219, align 1
  %220 = lshr i32 %201, 31
  %221 = trunc i32 %220 to i8
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %221, i8* %222, align 1
  %223 = lshr i32 %193, 31
  %224 = lshr i32 %200, 31
  %225 = xor i32 %224, %223
  %226 = xor i32 %220, %223
  %227 = add i32 %226, %225
  %228 = icmp eq i32 %227, 2
  %229 = zext i1 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %229, i8* %230, align 1
  store %struct.Memory* %loadMem_43d478, %struct.Memory** %MEMORY
  %loadMem_43d47b = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %233 to i64*
  %234 = load i64, i64* %PC.i930
  %235 = add i64 %234, 79
  %236 = load i64, i64* %PC.i930
  %237 = add i64 %236, 6
  %238 = load i64, i64* %PC.i930
  %239 = add i64 %238, 6
  store i64 %239, i64* %PC.i930
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %241 = load i8, i8* %240, align 1
  %242 = icmp ne i8 %241, 0
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %244 = load i8, i8* %243, align 1
  %245 = icmp ne i8 %244, 0
  %246 = xor i1 %242, %245
  %247 = xor i1 %246, true
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %BRANCH_TAKEN, align 1
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %250 = select i1 %246, i64 %237, i64 %235
  store i64 %250, i64* %249, align 8
  store %struct.Memory* %loadMem_43d47b, %struct.Memory** %MEMORY
  %loadBr_43d47b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d47b = icmp eq i8 %loadBr_43d47b, 1
  br i1 %cmpBr_43d47b, label %block_.L_43d4ca, label %block_43d481

block_43d481:                                     ; preds = %block_.L_43d475
  %loadMem1_43d481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 33
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %253 to i64*
  %254 = load i64, i64* %PC.i929
  %255 = add i64 %254, -245105
  %256 = load i64, i64* %PC.i929
  %257 = add i64 %256, 5
  %258 = load i64, i64* %PC.i929
  %259 = add i64 %258, 5
  store i64 %259, i64* %PC.i929
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = add i64 %261, -8
  %263 = inttoptr i64 %262 to i64*
  store i64 %257, i64* %263
  store i64 %262, i64* %260, align 8
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %255, i64* %264, align 8
  store %struct.Memory* %loadMem1_43d481, %struct.Memory** %MEMORY
  %loadMem2_43d481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43d481 = load i64, i64* %3
  %call2_43d481 = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64 %loadPC_43d481, %struct.Memory* %loadMem2_43d481)
  store %struct.Memory* %call2_43d481, %struct.Memory** %MEMORY
  %loadMem_43d486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i927 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %RAX.i928 = bitcast %union.anon* %270 to i64*
  %271 = load i64, i64* %RAX.i928
  %272 = load i64, i64* %PC.i927
  %273 = add i64 %272, 3
  store i64 %273, i64* %PC.i927
  %274 = inttoptr i64 %271 to i64*
  %275 = load i64, i64* %274
  store i64 %275, i64* %RAX.i928, align 8
  store %struct.Memory* %loadMem_43d486, %struct.Memory** %MEMORY
  %loadMem_43d489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 33
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %PC.i924 = bitcast %union.anon* %278 to i64*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 5
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %RCX.i925 = bitcast %union.anon* %281 to i64*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 15
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %RBP.i926 = bitcast %union.anon* %284 to i64*
  %285 = load i64, i64* %RBP.i926
  %286 = sub i64 %285, 24
  %287 = load i64, i64* %PC.i924
  %288 = add i64 %287, 4
  store i64 %288, i64* %PC.i924
  %289 = inttoptr i64 %286 to i64*
  %290 = load i64, i64* %289
  store i64 %290, i64* %RCX.i925, align 8
  store %struct.Memory* %loadMem_43d489, %struct.Memory** %MEMORY
  %loadMem_43d48d = load %struct.Memory*, %struct.Memory** %MEMORY
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 33
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %293 to i64*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 7
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %RDX.i922 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 15
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RBP.i923 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %RBP.i923
  %301 = sub i64 %300, 32
  %302 = load i64, i64* %PC.i921
  %303 = add i64 %302, 4
  store i64 %303, i64* %PC.i921
  %304 = inttoptr i64 %301 to i32*
  %305 = load i32, i32* %304
  %306 = sext i32 %305 to i64
  store i64 %306, i64* %RDX.i922, align 8
  store %struct.Memory* %loadMem_43d48d, %struct.Memory** %MEMORY
  %loadMem_43d491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 33
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %PC.i917 = bitcast %union.anon* %309 to i64*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 5
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %RCX.i918 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 7
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %RDX.i919 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 9
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %RSI.i920 = bitcast %union.anon* %318 to i64*
  %319 = load i64, i64* %RCX.i918
  %320 = load i64, i64* %RDX.i919
  %321 = add i64 %320, %319
  %322 = load i64, i64* %PC.i917
  %323 = add i64 %322, 4
  store i64 %323, i64* %PC.i917
  %324 = inttoptr i64 %321 to i8*
  %325 = load i8, i8* %324
  %326 = sext i8 %325 to i64
  %327 = and i64 %326, 4294967295
  store i64 %327, i64* %RSI.i920, align 8
  store %struct.Memory* %loadMem_43d491, %struct.Memory** %MEMORY
  %loadMem_43d495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 33
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 9
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %ESI.i915 = bitcast %union.anon* %333 to i32*
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 5
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %RCX.i916 = bitcast %union.anon* %336 to i64*
  %337 = load i32, i32* %ESI.i915
  %338 = zext i32 %337 to i64
  %339 = load i64, i64* %PC.i914
  %340 = add i64 %339, 3
  store i64 %340, i64* %PC.i914
  %341 = shl i64 %338, 32
  %342 = ashr exact i64 %341, 32
  store i64 %342, i64* %RCX.i916, align 8
  store %struct.Memory* %loadMem_43d495, %struct.Memory** %MEMORY
  %loadMem_43d498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 33
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %345 to i64*
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %RAX.i911 = bitcast %union.anon* %348 to i64*
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 5
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %RCX.i912 = bitcast %union.anon* %351 to i64*
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 9
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %RSI.i913 = bitcast %union.anon* %354 to i64*
  %355 = load i64, i64* %RAX.i911
  %356 = load i64, i64* %RCX.i912
  %357 = mul i64 %356, 2
  %358 = add i64 %357, %355
  %359 = load i64, i64* %PC.i910
  %360 = add i64 %359, 4
  store i64 %360, i64* %PC.i910
  %361 = inttoptr i64 %358 to i16*
  %362 = load i16, i16* %361
  %363 = zext i16 %362 to i64
  store i64 %363, i64* %RSI.i913, align 8
  store %struct.Memory* %loadMem_43d498, %struct.Memory** %MEMORY
  %loadMem_43d49c = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i908 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 9
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RSI.i909 = bitcast %union.anon* %369 to i64*
  %370 = load i64, i64* %RSI.i909
  %371 = load i64, i64* %PC.i908
  %372 = add i64 %371, 6
  store i64 %372, i64* %PC.i908
  %373 = and i64 1024, %370
  %374 = trunc i64 %373 to i32
  store i64 %373, i64* %RSI.i909, align 8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %375, align 1
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %376, align 1
  %377 = icmp eq i32 %374, 0
  %378 = zext i1 %377 to i8
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %378, i8* %379, align 1
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %380, align 1
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %381, align 1
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %382, align 1
  store %struct.Memory* %loadMem_43d49c, %struct.Memory** %MEMORY
  %loadMem_43d4a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i906 = bitcast %union.anon* %385 to i64*
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 9
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %ESI.i907 = bitcast %union.anon* %388 to i32*
  %389 = load i32, i32* %ESI.i907
  %390 = zext i32 %389 to i64
  %391 = load i64, i64* %PC.i906
  %392 = add i64 %391, 3
  store i64 %392, i64* %PC.i906
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %393, align 1
  %394 = and i32 %389, 255
  %395 = call i32 @llvm.ctpop.i32(i32 %394)
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = xor i8 %397, 1
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %398, i8* %399, align 1
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %400, align 1
  %401 = icmp eq i32 %389, 0
  %402 = zext i1 %401 to i8
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %402, i8* %403, align 1
  %404 = lshr i32 %389, 31
  %405 = trunc i32 %404 to i8
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %405, i8* %406, align 1
  %407 = lshr i32 %389, 31
  %408 = xor i32 %404, %407
  %409 = add i32 %408, %407
  %410 = icmp eq i32 %409, 2
  %411 = zext i1 %410 to i8
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %411, i8* %412, align 1
  store %struct.Memory* %loadMem_43d4a2, %struct.Memory** %MEMORY
  %loadMem_43d4a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 33
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %415 to i64*
  %416 = load i64, i64* %PC.i905
  %417 = add i64 %416, 18
  %418 = load i64, i64* %PC.i905
  %419 = add i64 %418, 6
  %420 = load i64, i64* %PC.i905
  %421 = add i64 %420, 6
  store i64 %421, i64* %PC.i905
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %423 = load i8, i8* %422, align 1
  %424 = icmp eq i8 %423, 0
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %BRANCH_TAKEN, align 1
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %427 = select i1 %424, i64 %417, i64 %419
  store i64 %427, i64* %426, align 8
  store %struct.Memory* %loadMem_43d4a5, %struct.Memory** %MEMORY
  %loadBr_43d4a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d4a5 = icmp eq i8 %loadBr_43d4a5, 1
  br i1 %cmpBr_43d4a5, label %block_.L_43d4b7, label %block_43d4ab

block_43d4ab:                                     ; preds = %block_43d481
  %loadMem_43d4ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 33
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 15
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RBP.i904 = bitcast %union.anon* %433 to i64*
  %434 = load i64, i64* %RBP.i904
  %435 = sub i64 %434, 4
  %436 = load i64, i64* %PC.i903
  %437 = add i64 %436, 7
  store i64 %437, i64* %PC.i903
  %438 = inttoptr i64 %435 to i32*
  store i32 0, i32* %438
  store %struct.Memory* %loadMem_43d4ab, %struct.Memory** %MEMORY
  %loadMem_43d4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 33
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %441 to i64*
  %442 = load i64, i64* %PC.i902
  %443 = add i64 %442, 1472
  %444 = load i64, i64* %PC.i902
  %445 = add i64 %444, 5
  store i64 %445, i64* %PC.i902
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %443, i64* %446, align 8
  store %struct.Memory* %loadMem_43d4b2, %struct.Memory** %MEMORY
  br label %block_.L_43da72

block_.L_43d4b7:                                  ; preds = %block_43d481
  %loadMem_43d4b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 33
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %PC.i901 = bitcast %union.anon* %449 to i64*
  %450 = load i64, i64* %PC.i901
  %451 = add i64 %450, 5
  %452 = load i64, i64* %PC.i901
  %453 = add i64 %452, 5
  store i64 %453, i64* %PC.i901
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %451, i64* %454, align 8
  store %struct.Memory* %loadMem_43d4b7, %struct.Memory** %MEMORY
  br label %block_.L_43d4bc

block_.L_43d4bc:                                  ; preds = %block_.L_43d4b7
  %loadMem_43d4bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 33
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %457 to i64*
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 1
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %RAX.i899 = bitcast %union.anon* %460 to i64*
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 15
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %RBP.i900 = bitcast %union.anon* %463 to i64*
  %464 = load i64, i64* %RBP.i900
  %465 = sub i64 %464, 32
  %466 = load i64, i64* %PC.i898
  %467 = add i64 %466, 3
  store i64 %467, i64* %PC.i898
  %468 = inttoptr i64 %465 to i32*
  %469 = load i32, i32* %468
  %470 = zext i32 %469 to i64
  store i64 %470, i64* %RAX.i899, align 8
  store %struct.Memory* %loadMem_43d4bc, %struct.Memory** %MEMORY
  %loadMem_43d4bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 33
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %473 to i64*
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 1
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %RAX.i897 = bitcast %union.anon* %476 to i64*
  %477 = load i64, i64* %RAX.i897
  %478 = load i64, i64* %PC.i896
  %479 = add i64 %478, 3
  store i64 %479, i64* %PC.i896
  %480 = trunc i64 %477 to i32
  %481 = add i32 1, %480
  %482 = zext i32 %481 to i64
  store i64 %482, i64* %RAX.i897, align 8
  %483 = icmp ult i32 %481, %480
  %484 = icmp ult i32 %481, 1
  %485 = or i1 %483, %484
  %486 = zext i1 %485 to i8
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %486, i8* %487, align 1
  %488 = and i32 %481, 255
  %489 = call i32 @llvm.ctpop.i32(i32 %488)
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %492, i8* %493, align 1
  %494 = xor i64 1, %477
  %495 = trunc i64 %494 to i32
  %496 = xor i32 %495, %481
  %497 = lshr i32 %496, 4
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %499, i8* %500, align 1
  %501 = icmp eq i32 %481, 0
  %502 = zext i1 %501 to i8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %502, i8* %503, align 1
  %504 = lshr i32 %481, 31
  %505 = trunc i32 %504 to i8
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %505, i8* %506, align 1
  %507 = lshr i32 %480, 31
  %508 = xor i32 %504, %507
  %509 = add i32 %508, %504
  %510 = icmp eq i32 %509, 2
  %511 = zext i1 %510 to i8
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %511, i8* %512, align 1
  store %struct.Memory* %loadMem_43d4bf, %struct.Memory** %MEMORY
  %loadMem_43d4c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 33
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %515 to i64*
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %EAX.i894 = bitcast %union.anon* %518 to i32*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 15
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %RBP.i895 = bitcast %union.anon* %521 to i64*
  %522 = load i64, i64* %RBP.i895
  %523 = sub i64 %522, 32
  %524 = load i32, i32* %EAX.i894
  %525 = zext i32 %524 to i64
  %526 = load i64, i64* %PC.i893
  %527 = add i64 %526, 3
  store i64 %527, i64* %PC.i893
  %528 = inttoptr i64 %523 to i32*
  store i32 %524, i32* %528
  store %struct.Memory* %loadMem_43d4c2, %struct.Memory** %MEMORY
  %loadMem_43d4c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %531 to i64*
  %532 = load i64, i64* %PC.i892
  %533 = add i64 %532, -80
  %534 = load i64, i64* %PC.i892
  %535 = add i64 %534, 5
  store i64 %535, i64* %PC.i892
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %533, i64* %536, align 8
  store %struct.Memory* %loadMem_43d4c5, %struct.Memory** %MEMORY
  br label %block_.L_43d475

block_.L_43d4ca:                                  ; preds = %block_.L_43d475
  %loadMem_43d4ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 33
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %539 to i64*
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 11
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %RDI.i891 = bitcast %union.anon* %542 to i64*
  %543 = load i64, i64* %PC.i890
  %544 = add i64 %543, 10
  store i64 %544, i64* %PC.i890
  store i64 ptrtoint (%G__0x459d41_type* @G__0x459d41 to i64), i64* %RDI.i891, align 8
  store %struct.Memory* %loadMem_43d4ca, %struct.Memory** %MEMORY
  %loadMem_43d4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 33
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 9
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %RSI.i889 = bitcast %union.anon* %550 to i64*
  %551 = load i64, i64* %PC.i888
  %552 = add i64 %551, 5
  store i64 %552, i64* %PC.i888
  store i64 127, i64* %RSI.i889, align 8
  store %struct.Memory* %loadMem_43d4d4, %struct.Memory** %MEMORY
  %loadMem_43d4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 33
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %555 to i64*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 1
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %RAX.i887 = bitcast %union.anon* %558 to i64*
  %559 = load i64, i64* %PC.i886
  %560 = add i64 %559, 5
  store i64 %560, i64* %PC.i886
  store i64 208, i64* %RAX.i887, align 8
  store %struct.Memory* %loadMem_43d4d9, %struct.Memory** %MEMORY
  %loadMem_43d4de = load %struct.Memory*, %struct.Memory** %MEMORY
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 33
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %PC.i883 = bitcast %union.anon* %563 to i64*
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 1
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %EAX.i884 = bitcast %union.anon* %566 to i32*
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 7
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %RDX.i885 = bitcast %union.anon* %569 to i64*
  %570 = load i32, i32* %EAX.i884
  %571 = zext i32 %570 to i64
  %572 = load i64, i64* %PC.i883
  %573 = add i64 %572, 2
  store i64 %573, i64* %PC.i883
  %574 = and i64 %571, 4294967295
  store i64 %574, i64* %RDX.i885, align 8
  store %struct.Memory* %loadMem_43d4de, %struct.Memory** %MEMORY
  %loadMem1_43d4e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 33
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %577 to i64*
  %578 = load i64, i64* %PC.i882
  %579 = add i64 %578, 35712
  %580 = load i64, i64* %PC.i882
  %581 = add i64 %580, 5
  %582 = load i64, i64* %PC.i882
  %583 = add i64 %582, 5
  store i64 %583, i64* %PC.i882
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %585 = load i64, i64* %584, align 8
  %586 = add i64 %585, -8
  %587 = inttoptr i64 %586 to i64*
  store i64 %581, i64* %587
  store i64 %586, i64* %584, align 8
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %579, i64* %588, align 8
  store %struct.Memory* %loadMem1_43d4e0, %struct.Memory** %MEMORY
  %loadMem2_43d4e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43d4e0 = load i64, i64* %3
  %call2_43d4e0 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_43d4e0, %struct.Memory* %loadMem2_43d4e0)
  store %struct.Memory* %call2_43d4e0, %struct.Memory** %MEMORY
  %loadMem_43d4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 33
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 11
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %RDI.i881 = bitcast %union.anon* %594 to i64*
  %595 = load i64, i64* %PC.i880
  %596 = add i64 %595, 10
  store i64 %596, i64* %PC.i880
  store i64 ptrtoint (%G__0x459d41_type* @G__0x459d41 to i64), i64* %RDI.i881, align 8
  store %struct.Memory* %loadMem_43d4e5, %struct.Memory** %MEMORY
  %loadMem_43d4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 33
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 9
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RSI.i879 = bitcast %union.anon* %602 to i64*
  %603 = load i64, i64* %PC.i878
  %604 = add i64 %603, 5
  store i64 %604, i64* %PC.i878
  store i64 128, i64* %RSI.i879, align 8
  store %struct.Memory* %loadMem_43d4ef, %struct.Memory** %MEMORY
  %loadMem_43d4f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 33
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %607 to i64*
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 5
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %RCX.i877 = bitcast %union.anon* %610 to i64*
  %611 = load i64, i64* %PC.i876
  %612 = add i64 %611, 5
  store i64 %612, i64* %PC.i876
  store i64 104, i64* %RCX.i877, align 8
  store %struct.Memory* %loadMem_43d4f4, %struct.Memory** %MEMORY
  %loadMem_43d4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 33
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %615 to i64*
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 5
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %ECX.i874 = bitcast %union.anon* %618 to i32*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 7
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %RDX.i875 = bitcast %union.anon* %621 to i64*
  %622 = load i32, i32* %ECX.i874
  %623 = zext i32 %622 to i64
  %624 = load i64, i64* %PC.i873
  %625 = add i64 %624, 2
  store i64 %625, i64* %PC.i873
  %626 = and i64 %623, 4294967295
  store i64 %626, i64* %RDX.i875, align 8
  store %struct.Memory* %loadMem_43d4f9, %struct.Memory** %MEMORY
  %loadMem_43d4fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 33
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %629 to i64*
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 1
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %RAX.i871 = bitcast %union.anon* %632 to i64*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 15
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %RBP.i872 = bitcast %union.anon* %635 to i64*
  %636 = load i64, i64* %RBP.i872
  %637 = sub i64 %636, 48
  %638 = load i64, i64* %RAX.i871
  %639 = load i64, i64* %PC.i870
  %640 = add i64 %639, 4
  store i64 %640, i64* %PC.i870
  %641 = inttoptr i64 %637 to i64*
  store i64 %638, i64* %641
  store %struct.Memory* %loadMem_43d4fb, %struct.Memory** %MEMORY
  %loadMem1_43d4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 33
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %644 to i64*
  %645 = load i64, i64* %PC.i869
  %646 = add i64 %645, 35681
  %647 = load i64, i64* %PC.i869
  %648 = add i64 %647, 5
  %649 = load i64, i64* %PC.i869
  %650 = add i64 %649, 5
  store i64 %650, i64* %PC.i869
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %652 = load i64, i64* %651, align 8
  %653 = add i64 %652, -8
  %654 = inttoptr i64 %653 to i64*
  store i64 %648, i64* %654
  store i64 %653, i64* %651, align 8
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %646, i64* %655, align 8
  store %struct.Memory* %loadMem1_43d4ff, %struct.Memory** %MEMORY
  %loadMem2_43d4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43d4ff = load i64, i64* %3
  %call2_43d4ff = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_43d4ff, %struct.Memory* %loadMem2_43d4ff)
  store %struct.Memory* %call2_43d4ff, %struct.Memory** %MEMORY
  %loadMem_43d504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 33
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %658 to i64*
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 1
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %RAX.i867 = bitcast %union.anon* %661 to i64*
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 15
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %RBP.i868 = bitcast %union.anon* %664 to i64*
  %665 = load i64, i64* %RBP.i868
  %666 = sub i64 %665, 56
  %667 = load i64, i64* %RAX.i867
  %668 = load i64, i64* %PC.i866
  %669 = add i64 %668, 4
  store i64 %669, i64* %PC.i866
  %670 = inttoptr i64 %666 to i64*
  store i64 %667, i64* %670
  store %struct.Memory* %loadMem_43d504, %struct.Memory** %MEMORY
  %loadMem_43d508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 33
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %673 to i64*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 15
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %RBP.i865 = bitcast %union.anon* %676 to i64*
  %677 = load i64, i64* %RBP.i865
  %678 = sub i64 %677, 36
  %679 = load i64, i64* %PC.i864
  %680 = add i64 %679, 7
  store i64 %680, i64* %PC.i864
  %681 = inttoptr i64 %678 to i32*
  store i32 0, i32* %681
  store %struct.Memory* %loadMem_43d508, %struct.Memory** %MEMORY
  br label %block_.L_43d50f

block_.L_43d50f:                                  ; preds = %block_43d519, %block_.L_43d4ca
  %loadMem_43d50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 33
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %684 to i64*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 15
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %RBP.i863 = bitcast %union.anon* %687 to i64*
  %688 = load i64, i64* %RBP.i863
  %689 = sub i64 %688, 36
  %690 = load i64, i64* %PC.i862
  %691 = add i64 %690, 4
  store i64 %691, i64* %PC.i862
  %692 = inttoptr i64 %689 to i32*
  %693 = load i32, i32* %692
  %694 = sub i32 %693, 26
  %695 = icmp ult i32 %693, 26
  %696 = zext i1 %695 to i8
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %696, i8* %697, align 1
  %698 = and i32 %694, 255
  %699 = call i32 @llvm.ctpop.i32(i32 %698)
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = xor i8 %701, 1
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %702, i8* %703, align 1
  %704 = xor i32 %693, 26
  %705 = xor i32 %704, %694
  %706 = lshr i32 %705, 4
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %708, i8* %709, align 1
  %710 = icmp eq i32 %694, 0
  %711 = zext i1 %710 to i8
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %711, i8* %712, align 1
  %713 = lshr i32 %694, 31
  %714 = trunc i32 %713 to i8
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %714, i8* %715, align 1
  %716 = lshr i32 %693, 31
  %717 = xor i32 %713, %716
  %718 = add i32 %717, %716
  %719 = icmp eq i32 %718, 2
  %720 = zext i1 %719 to i8
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %720, i8* %721, align 1
  store %struct.Memory* %loadMem_43d50f, %struct.Memory** %MEMORY
  %loadMem_43d513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 33
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %724 to i64*
  %725 = load i64, i64* %PC.i861
  %726 = add i64 %725, 83
  %727 = load i64, i64* %PC.i861
  %728 = add i64 %727, 6
  %729 = load i64, i64* %PC.i861
  %730 = add i64 %729, 6
  store i64 %730, i64* %PC.i861
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %732 = load i8, i8* %731, align 1
  %733 = icmp ne i8 %732, 0
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %735 = load i8, i8* %734, align 1
  %736 = icmp ne i8 %735, 0
  %737 = xor i1 %733, %736
  %738 = xor i1 %737, true
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %BRANCH_TAKEN, align 1
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %741 = select i1 %737, i64 %728, i64 %726
  store i64 %741, i64* %740, align 8
  store %struct.Memory* %loadMem_43d513, %struct.Memory** %MEMORY
  %loadBr_43d513 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d513 = icmp eq i8 %loadBr_43d513, 1
  br i1 %cmpBr_43d513, label %block_.L_43d566, label %block_43d519

block_43d519:                                     ; preds = %block_.L_43d50f
  %loadMem_43d519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 33
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 11
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %RDI.i860 = bitcast %union.anon* %747 to i64*
  %748 = load i64, i64* %PC.i859
  %749 = add i64 %748, 10
  store i64 %749, i64* %PC.i859
  store i64 ptrtoint (%G__0x459d41_type* @G__0x459d41 to i64), i64* %RDI.i860, align 8
  store %struct.Memory* %loadMem_43d519, %struct.Memory** %MEMORY
  %loadMem_43d523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 33
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %752 to i64*
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 9
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %RSI.i858 = bitcast %union.anon* %755 to i64*
  %756 = load i64, i64* %PC.i857
  %757 = add i64 %756, 5
  store i64 %757, i64* %PC.i857
  store i64 131, i64* %RSI.i858, align 8
  store %struct.Memory* %loadMem_43d523, %struct.Memory** %MEMORY
  %loadMem_43d528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 33
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %760 to i64*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 1
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %RAX.i855 = bitcast %union.anon* %763 to i64*
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 15
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %RBP.i856 = bitcast %union.anon* %766 to i64*
  %767 = load i64, i64* %RBP.i856
  %768 = sub i64 %767, 28
  %769 = load i64, i64* %PC.i854
  %770 = add i64 %769, 3
  store i64 %770, i64* %PC.i854
  %771 = inttoptr i64 %768 to i32*
  %772 = load i32, i32* %771
  %773 = zext i32 %772 to i64
  store i64 %773, i64* %RAX.i855, align 8
  store %struct.Memory* %loadMem_43d528, %struct.Memory** %MEMORY
  %loadMem_43d52b = load %struct.Memory*, %struct.Memory** %MEMORY
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 33
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 1
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %RAX.i853 = bitcast %union.anon* %779 to i64*
  %780 = load i64, i64* %RAX.i853
  %781 = load i64, i64* %PC.i852
  %782 = add i64 %781, 3
  store i64 %782, i64* %PC.i852
  %783 = trunc i64 %780 to i32
  %784 = sub i32 %783, 1
  %785 = zext i32 %784 to i64
  store i64 %785, i64* %RAX.i853, align 8
  %786 = icmp ult i32 %783, 1
  %787 = zext i1 %786 to i8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %787, i8* %788, align 1
  %789 = and i32 %784, 255
  %790 = call i32 @llvm.ctpop.i32(i32 %789)
  %791 = trunc i32 %790 to i8
  %792 = and i8 %791, 1
  %793 = xor i8 %792, 1
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %793, i8* %794, align 1
  %795 = xor i64 1, %780
  %796 = trunc i64 %795 to i32
  %797 = xor i32 %796, %784
  %798 = lshr i32 %797, 4
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %800, i8* %801, align 1
  %802 = icmp eq i32 %784, 0
  %803 = zext i1 %802 to i8
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %803, i8* %804, align 1
  %805 = lshr i32 %784, 31
  %806 = trunc i32 %805 to i8
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %806, i8* %807, align 1
  %808 = lshr i32 %783, 31
  %809 = xor i32 %805, %808
  %810 = add i32 %809, %808
  %811 = icmp eq i32 %810, 2
  %812 = zext i1 %811 to i8
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %812, i8* %813, align 1
  store %struct.Memory* %loadMem_43d52b, %struct.Memory** %MEMORY
  %loadMem_43d52e = load %struct.Memory*, %struct.Memory** %MEMORY
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 33
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 1
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %EAX.i850 = bitcast %union.anon* %819 to i32*
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 5
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %RCX.i851 = bitcast %union.anon* %822 to i64*
  %823 = load i32, i32* %EAX.i850
  %824 = zext i32 %823 to i64
  %825 = load i64, i64* %PC.i849
  %826 = add i64 %825, 3
  store i64 %826, i64* %PC.i849
  %827 = shl i64 %824, 32
  %828 = ashr exact i64 %827, 32
  store i64 %828, i64* %RCX.i851, align 8
  store %struct.Memory* %loadMem_43d52e, %struct.Memory** %MEMORY
  %loadMem_43d531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 33
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 5
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RCX.i848 = bitcast %union.anon* %834 to i64*
  %835 = load i64, i64* %RCX.i848
  %836 = load i64, i64* %PC.i847
  %837 = add i64 %836, 4
  store i64 %837, i64* %PC.i847
  store %struct.Memory* %loadMem_43d531, %struct.Memory** %MEMORY
  %loadMem_43d535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 33
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %840 to i64*
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 5
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %RCX.i845 = bitcast %union.anon* %843 to i64*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 7
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %RDX.i846 = bitcast %union.anon* %846 to i64*
  %847 = load i64, i64* %RCX.i845
  %848 = load i64, i64* %PC.i844
  %849 = add i64 %848, 3
  store i64 %849, i64* %PC.i844
  store i64 %847, i64* %RDX.i846, align 8
  store %struct.Memory* %loadMem_43d535, %struct.Memory** %MEMORY
  %loadMem1_43d538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 33
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %852 to i64*
  %853 = load i64, i64* %PC.i843
  %854 = add i64 %853, 35624
  %855 = load i64, i64* %PC.i843
  %856 = add i64 %855, 5
  %857 = load i64, i64* %PC.i843
  %858 = add i64 %857, 5
  store i64 %858, i64* %PC.i843
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %860 = load i64, i64* %859, align 8
  %861 = add i64 %860, -8
  %862 = inttoptr i64 %861 to i64*
  store i64 %856, i64* %862
  store i64 %861, i64* %859, align 8
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %854, i64* %863, align 8
  store %struct.Memory* %loadMem1_43d538, %struct.Memory** %MEMORY
  %loadMem2_43d538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43d538 = load i64, i64* %3
  %call2_43d538 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_43d538, %struct.Memory* %loadMem2_43d538)
  store %struct.Memory* %call2_43d538, %struct.Memory** %MEMORY
  %loadMem_43d53d = load %struct.Memory*, %struct.Memory** %MEMORY
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 33
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %PC.i840 = bitcast %union.anon* %866 to i64*
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 5
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %RCX.i841 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 15
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RBP.i842 = bitcast %union.anon* %872 to i64*
  %873 = load i64, i64* %RBP.i842
  %874 = sub i64 %873, 48
  %875 = load i64, i64* %PC.i840
  %876 = add i64 %875, 4
  store i64 %876, i64* %PC.i840
  %877 = inttoptr i64 %874 to i64*
  %878 = load i64, i64* %877
  store i64 %878, i64* %RCX.i841, align 8
  store %struct.Memory* %loadMem_43d53d, %struct.Memory** %MEMORY
  %loadMem_43d541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 33
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 7
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %RDX.i838 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 15
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %RBP.i839 = bitcast %union.anon* %887 to i64*
  %888 = load i64, i64* %RBP.i839
  %889 = sub i64 %888, 36
  %890 = load i64, i64* %PC.i837
  %891 = add i64 %890, 4
  store i64 %891, i64* %PC.i837
  %892 = inttoptr i64 %889 to i32*
  %893 = load i32, i32* %892
  %894 = sext i32 %893 to i64
  store i64 %894, i64* %RDX.i838, align 8
  store %struct.Memory* %loadMem_43d541, %struct.Memory** %MEMORY
  %loadMem_43d545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 33
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %897 to i64*
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 1
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %RAX.i834 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 5
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RCX.i835 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 7
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RDX.i836 = bitcast %union.anon* %906 to i64*
  %907 = load i64, i64* %RCX.i835
  %908 = load i64, i64* %RDX.i836
  %909 = mul i64 %908, 8
  %910 = add i64 %909, %907
  %911 = load i64, i64* %RAX.i834
  %912 = load i64, i64* %PC.i833
  %913 = add i64 %912, 4
  store i64 %913, i64* %PC.i833
  %914 = inttoptr i64 %910 to i64*
  store i64 %911, i64* %914
  store %struct.Memory* %loadMem_43d545, %struct.Memory** %MEMORY
  %loadMem_43d549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 1
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %RAX.i831 = bitcast %union.anon* %920 to i64*
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 15
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %RBP.i832 = bitcast %union.anon* %923 to i64*
  %924 = load i64, i64* %RBP.i832
  %925 = sub i64 %924, 56
  %926 = load i64, i64* %PC.i830
  %927 = add i64 %926, 4
  store i64 %927, i64* %PC.i830
  %928 = inttoptr i64 %925 to i64*
  %929 = load i64, i64* %928
  store i64 %929, i64* %RAX.i831, align 8
  store %struct.Memory* %loadMem_43d549, %struct.Memory** %MEMORY
  %loadMem_43d54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %931 = getelementptr inbounds %struct.GPR, %struct.GPR* %930, i32 0, i32 33
  %932 = getelementptr inbounds %struct.Reg, %struct.Reg* %931, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %932 to i64*
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 5
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %RCX.i828 = bitcast %union.anon* %935 to i64*
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 15
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %RBP.i829 = bitcast %union.anon* %938 to i64*
  %939 = load i64, i64* %RBP.i829
  %940 = sub i64 %939, 36
  %941 = load i64, i64* %PC.i827
  %942 = add i64 %941, 4
  store i64 %942, i64* %PC.i827
  %943 = inttoptr i64 %940 to i32*
  %944 = load i32, i32* %943
  %945 = sext i32 %944 to i64
  store i64 %945, i64* %RCX.i828, align 8
  store %struct.Memory* %loadMem_43d54d, %struct.Memory** %MEMORY
  %loadMem_43d551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 33
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 1
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %RAX.i825 = bitcast %union.anon* %951 to i64*
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 5
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %RCX.i826 = bitcast %union.anon* %954 to i64*
  %955 = load i64, i64* %RAX.i825
  %956 = load i64, i64* %RCX.i826
  %957 = mul i64 %956, 4
  %958 = add i64 %957, %955
  %959 = load i64, i64* %PC.i824
  %960 = add i64 %959, 7
  store i64 %960, i64* %PC.i824
  %961 = inttoptr i64 %958 to i32*
  store i32 0, i32* %961
  store %struct.Memory* %loadMem_43d551, %struct.Memory** %MEMORY
  %loadMem_43d558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 33
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %964 to i64*
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 1
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %RAX.i822 = bitcast %union.anon* %967 to i64*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 15
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %RBP.i823 = bitcast %union.anon* %970 to i64*
  %971 = load i64, i64* %RBP.i823
  %972 = sub i64 %971, 36
  %973 = load i64, i64* %PC.i821
  %974 = add i64 %973, 3
  store i64 %974, i64* %PC.i821
  %975 = inttoptr i64 %972 to i32*
  %976 = load i32, i32* %975
  %977 = zext i32 %976 to i64
  store i64 %977, i64* %RAX.i822, align 8
  store %struct.Memory* %loadMem_43d558, %struct.Memory** %MEMORY
  %loadMem_43d55b = load %struct.Memory*, %struct.Memory** %MEMORY
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 33
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %980 to i64*
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 1
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %RAX.i820 = bitcast %union.anon* %983 to i64*
  %984 = load i64, i64* %RAX.i820
  %985 = load i64, i64* %PC.i819
  %986 = add i64 %985, 3
  store i64 %986, i64* %PC.i819
  %987 = trunc i64 %984 to i32
  %988 = add i32 1, %987
  %989 = zext i32 %988 to i64
  store i64 %989, i64* %RAX.i820, align 8
  %990 = icmp ult i32 %988, %987
  %991 = icmp ult i32 %988, 1
  %992 = or i1 %990, %991
  %993 = zext i1 %992 to i8
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %993, i8* %994, align 1
  %995 = and i32 %988, 255
  %996 = call i32 @llvm.ctpop.i32(i32 %995)
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  %999 = xor i8 %998, 1
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %999, i8* %1000, align 1
  %1001 = xor i64 1, %984
  %1002 = trunc i64 %1001 to i32
  %1003 = xor i32 %1002, %988
  %1004 = lshr i32 %1003, 4
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1006, i8* %1007, align 1
  %1008 = icmp eq i32 %988, 0
  %1009 = zext i1 %1008 to i8
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1009, i8* %1010, align 1
  %1011 = lshr i32 %988, 31
  %1012 = trunc i32 %1011 to i8
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1012, i8* %1013, align 1
  %1014 = lshr i32 %987, 31
  %1015 = xor i32 %1011, %1014
  %1016 = add i32 %1015, %1011
  %1017 = icmp eq i32 %1016, 2
  %1018 = zext i1 %1017 to i8
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1018, i8* %1019, align 1
  store %struct.Memory* %loadMem_43d55b, %struct.Memory** %MEMORY
  %loadMem_43d55e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 33
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 1
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %EAX.i817 = bitcast %union.anon* %1025 to i32*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 15
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %1028 to i64*
  %1029 = load i64, i64* %RBP.i818
  %1030 = sub i64 %1029, 36
  %1031 = load i32, i32* %EAX.i817
  %1032 = zext i32 %1031 to i64
  %1033 = load i64, i64* %PC.i816
  %1034 = add i64 %1033, 3
  store i64 %1034, i64* %PC.i816
  %1035 = inttoptr i64 %1030 to i32*
  store i32 %1031, i32* %1035
  store %struct.Memory* %loadMem_43d55e, %struct.Memory** %MEMORY
  %loadMem_43d561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 33
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %1038 to i64*
  %1039 = load i64, i64* %PC.i815
  %1040 = add i64 %1039, -82
  %1041 = load i64, i64* %PC.i815
  %1042 = add i64 %1041, 5
  store i64 %1042, i64* %PC.i815
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1040, i64* %1043, align 8
  store %struct.Memory* %loadMem_43d561, %struct.Memory** %MEMORY
  br label %block_.L_43d50f

block_.L_43d566:                                  ; preds = %block_.L_43d50f
  %loadMem_43d566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 33
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %1046 to i64*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 1
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %RAX.i813 = bitcast %union.anon* %1049 to i64*
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 15
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %RBP.i814 = bitcast %union.anon* %1052 to i64*
  %1053 = load i64, i64* %RBP.i814
  %1054 = sub i64 %1053, 24
  %1055 = load i64, i64* %PC.i812
  %1056 = add i64 %1055, 4
  store i64 %1056, i64* %PC.i812
  %1057 = inttoptr i64 %1054 to i64*
  %1058 = load i64, i64* %1057
  store i64 %1058, i64* %RAX.i813, align 8
  store %struct.Memory* %loadMem_43d566, %struct.Memory** %MEMORY
  %loadMem_43d56a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 33
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 1
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %RAX.i810 = bitcast %union.anon* %1064 to i64*
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 11
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %RDI.i811 = bitcast %union.anon* %1067 to i64*
  %1068 = load i64, i64* %RAX.i810
  %1069 = load i64, i64* %PC.i809
  %1070 = add i64 %1069, 3
  store i64 %1070, i64* %PC.i809
  %1071 = inttoptr i64 %1068 to i8*
  %1072 = load i8, i8* %1071
  %1073 = sext i8 %1072 to i64
  %1074 = and i64 %1073, 4294967295
  store i64 %1074, i64* %RDI.i811, align 8
  store %struct.Memory* %loadMem_43d56a, %struct.Memory** %MEMORY
  %loadMem1_43d56d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 33
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %1077 to i64*
  %1078 = load i64, i64* %PC.i808
  %1079 = add i64 %1078, -246141
  %1080 = load i64, i64* %PC.i808
  %1081 = add i64 %1080, 5
  %1082 = load i64, i64* %PC.i808
  %1083 = add i64 %1082, 5
  store i64 %1083, i64* %PC.i808
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1085 = load i64, i64* %1084, align 8
  %1086 = add i64 %1085, -8
  %1087 = inttoptr i64 %1086 to i64*
  store i64 %1081, i64* %1087
  store i64 %1086, i64* %1084, align 8
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1079, i64* %1088, align 8
  store %struct.Memory* %loadMem1_43d56d, %struct.Memory** %MEMORY
  %loadMem2_43d56d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43d56d = load i64, i64* %3
  %call2_43d56d = call %struct.Memory* @sub_4013f0.toupper_plt(%struct.State* %0, i64 %loadPC_43d56d, %struct.Memory* %loadMem2_43d56d)
  store %struct.Memory* %call2_43d56d, %struct.Memory** %MEMORY
  %loadMem_43d572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 33
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %1091 to i64*
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 1
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %RAX.i807 = bitcast %union.anon* %1094 to i64*
  %1095 = load i64, i64* %RAX.i807
  %1096 = load i64, i64* %PC.i806
  %1097 = add i64 %1096, 3
  store i64 %1097, i64* %PC.i806
  %1098 = trunc i64 %1095 to i32
  %1099 = sub i32 %1098, 65
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RAX.i807, align 8
  %1101 = icmp ult i32 %1098, 65
  %1102 = zext i1 %1101 to i8
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1102, i8* %1103, align 1
  %1104 = and i32 %1099, 255
  %1105 = call i32 @llvm.ctpop.i32(i32 %1104)
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = xor i8 %1107, 1
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1108, i8* %1109, align 1
  %1110 = xor i64 65, %1095
  %1111 = trunc i64 %1110 to i32
  %1112 = xor i32 %1111, %1099
  %1113 = lshr i32 %1112, 4
  %1114 = trunc i32 %1113 to i8
  %1115 = and i8 %1114, 1
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1115, i8* %1116, align 1
  %1117 = icmp eq i32 %1099, 0
  %1118 = zext i1 %1117 to i8
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1118, i8* %1119, align 1
  %1120 = lshr i32 %1099, 31
  %1121 = trunc i32 %1120 to i8
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1121, i8* %1122, align 1
  %1123 = lshr i32 %1098, 31
  %1124 = xor i32 %1120, %1123
  %1125 = add i32 %1124, %1123
  %1126 = icmp eq i32 %1125, 2
  %1127 = zext i1 %1126 to i8
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1127, i8* %1128, align 1
  store %struct.Memory* %loadMem_43d572, %struct.Memory** %MEMORY
  %loadMem_43d575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 33
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %1131 to i64*
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 1
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %EAX.i804 = bitcast %union.anon* %1134 to i32*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 15
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %RBP.i805 = bitcast %union.anon* %1137 to i64*
  %1138 = load i64, i64* %RBP.i805
  %1139 = sub i64 %1138, 36
  %1140 = load i32, i32* %EAX.i804
  %1141 = zext i32 %1140 to i64
  %1142 = load i64, i64* %PC.i803
  %1143 = add i64 %1142, 3
  store i64 %1143, i64* %PC.i803
  %1144 = inttoptr i64 %1139 to i32*
  store i32 %1140, i32* %1144
  store %struct.Memory* %loadMem_43d575, %struct.Memory** %MEMORY
  %loadMem_43d578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 33
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %1147 to i64*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 15
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %RBP.i802 = bitcast %union.anon* %1150 to i64*
  %1151 = load i64, i64* %RBP.i802
  %1152 = sub i64 %1151, 32
  %1153 = load i64, i64* %PC.i801
  %1154 = add i64 %1153, 7
  store i64 %1154, i64* %PC.i801
  %1155 = inttoptr i64 %1152 to i32*
  store i32 1, i32* %1155
  store %struct.Memory* %loadMem_43d578, %struct.Memory** %MEMORY
  br label %block_.L_43d57f

block_.L_43d57f:                                  ; preds = %block_43d58b, %block_.L_43d566
  %loadMem_43d57f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 33
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 1
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RAX.i799 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 15
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %RBP.i800 = bitcast %union.anon* %1164 to i64*
  %1165 = load i64, i64* %RBP.i800
  %1166 = sub i64 %1165, 32
  %1167 = load i64, i64* %PC.i798
  %1168 = add i64 %1167, 3
  store i64 %1168, i64* %PC.i798
  %1169 = inttoptr i64 %1166 to i32*
  %1170 = load i32, i32* %1169
  %1171 = zext i32 %1170 to i64
  store i64 %1171, i64* %RAX.i799, align 8
  store %struct.Memory* %loadMem_43d57f, %struct.Memory** %MEMORY
  %loadMem_43d582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 33
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %1174 to i64*
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 1
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %EAX.i796 = bitcast %union.anon* %1177 to i32*
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 15
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %RBP.i797 = bitcast %union.anon* %1180 to i64*
  %1181 = load i32, i32* %EAX.i796
  %1182 = zext i32 %1181 to i64
  %1183 = load i64, i64* %RBP.i797
  %1184 = sub i64 %1183, 28
  %1185 = load i64, i64* %PC.i795
  %1186 = add i64 %1185, 3
  store i64 %1186, i64* %PC.i795
  %1187 = inttoptr i64 %1184 to i32*
  %1188 = load i32, i32* %1187
  %1189 = sub i32 %1181, %1188
  %1190 = icmp ult i32 %1181, %1188
  %1191 = zext i1 %1190 to i8
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1191, i8* %1192, align 1
  %1193 = and i32 %1189, 255
  %1194 = call i32 @llvm.ctpop.i32(i32 %1193)
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  %1197 = xor i8 %1196, 1
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1197, i8* %1198, align 1
  %1199 = xor i32 %1188, %1181
  %1200 = xor i32 %1199, %1189
  %1201 = lshr i32 %1200, 4
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1203, i8* %1204, align 1
  %1205 = icmp eq i32 %1189, 0
  %1206 = zext i1 %1205 to i8
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1206, i8* %1207, align 1
  %1208 = lshr i32 %1189, 31
  %1209 = trunc i32 %1208 to i8
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1209, i8* %1210, align 1
  %1211 = lshr i32 %1181, 31
  %1212 = lshr i32 %1188, 31
  %1213 = xor i32 %1212, %1211
  %1214 = xor i32 %1208, %1211
  %1215 = add i32 %1214, %1213
  %1216 = icmp eq i32 %1215, 2
  %1217 = zext i1 %1216 to i8
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1217, i8* %1218, align 1
  store %struct.Memory* %loadMem_43d582, %struct.Memory** %MEMORY
  %loadMem_43d585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 33
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %1221 to i64*
  %1222 = load i64, i64* %PC.i794
  %1223 = add i64 %1222, 98
  %1224 = load i64, i64* %PC.i794
  %1225 = add i64 %1224, 6
  %1226 = load i64, i64* %PC.i794
  %1227 = add i64 %1226, 6
  store i64 %1227, i64* %PC.i794
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1229 = load i8, i8* %1228, align 1
  %1230 = icmp ne i8 %1229, 0
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1232 = load i8, i8* %1231, align 1
  %1233 = icmp ne i8 %1232, 0
  %1234 = xor i1 %1230, %1233
  %1235 = xor i1 %1234, true
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %BRANCH_TAKEN, align 1
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1238 = select i1 %1234, i64 %1225, i64 %1223
  store i64 %1238, i64* %1237, align 8
  store %struct.Memory* %loadMem_43d585, %struct.Memory** %MEMORY
  %loadBr_43d585 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d585 = icmp eq i8 %loadBr_43d585, 1
  br i1 %cmpBr_43d585, label %block_.L_43d5e7, label %block_43d58b

block_43d58b:                                     ; preds = %block_.L_43d57f
  %loadMem_43d58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 33
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %1241 to i64*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 1
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %RAX.i792 = bitcast %union.anon* %1244 to i64*
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 15
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %RBP.i793 = bitcast %union.anon* %1247 to i64*
  %1248 = load i64, i64* %RBP.i793
  %1249 = sub i64 %1248, 24
  %1250 = load i64, i64* %PC.i791
  %1251 = add i64 %1250, 4
  store i64 %1251, i64* %PC.i791
  %1252 = inttoptr i64 %1249 to i64*
  %1253 = load i64, i64* %1252
  store i64 %1253, i64* %RAX.i792, align 8
  store %struct.Memory* %loadMem_43d58b, %struct.Memory** %MEMORY
  %loadMem_43d58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 5
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %RCX.i789 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 15
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RBP.i790 = bitcast %union.anon* %1262 to i64*
  %1263 = load i64, i64* %RBP.i790
  %1264 = sub i64 %1263, 32
  %1265 = load i64, i64* %PC.i788
  %1266 = add i64 %1265, 4
  store i64 %1266, i64* %PC.i788
  %1267 = inttoptr i64 %1264 to i32*
  %1268 = load i32, i32* %1267
  %1269 = sext i32 %1268 to i64
  store i64 %1269, i64* %RCX.i789, align 8
  store %struct.Memory* %loadMem_43d58f, %struct.Memory** %MEMORY
  %loadMem_43d593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 33
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 1
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %RAX.i785 = bitcast %union.anon* %1275 to i64*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 5
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RCX.i786 = bitcast %union.anon* %1278 to i64*
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 11
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %RDI.i787 = bitcast %union.anon* %1281 to i64*
  %1282 = load i64, i64* %RAX.i785
  %1283 = load i64, i64* %RCX.i786
  %1284 = add i64 %1283, %1282
  %1285 = load i64, i64* %PC.i784
  %1286 = add i64 %1285, 4
  store i64 %1286, i64* %PC.i784
  %1287 = inttoptr i64 %1284 to i8*
  %1288 = load i8, i8* %1287
  %1289 = sext i8 %1288 to i64
  %1290 = and i64 %1289, 4294967295
  store i64 %1290, i64* %RDI.i787, align 8
  store %struct.Memory* %loadMem_43d593, %struct.Memory** %MEMORY
  %loadMem1_43d597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 33
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %1293 to i64*
  %1294 = load i64, i64* %PC.i783
  %1295 = add i64 %1294, -246183
  %1296 = load i64, i64* %PC.i783
  %1297 = add i64 %1296, 5
  %1298 = load i64, i64* %PC.i783
  %1299 = add i64 %1298, 5
  store i64 %1299, i64* %PC.i783
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1301 = load i64, i64* %1300, align 8
  %1302 = add i64 %1301, -8
  %1303 = inttoptr i64 %1302 to i64*
  store i64 %1297, i64* %1303
  store i64 %1302, i64* %1300, align 8
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1295, i64* %1304, align 8
  store %struct.Memory* %loadMem1_43d597, %struct.Memory** %MEMORY
  %loadMem2_43d597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43d597 = load i64, i64* %3
  %call2_43d597 = call %struct.Memory* @sub_4013f0.toupper_plt(%struct.State* %0, i64 %loadPC_43d597, %struct.Memory* %loadMem2_43d597)
  store %struct.Memory* %call2_43d597, %struct.Memory** %MEMORY
  %loadMem_43d59c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 33
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %1307 to i64*
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 1
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %RAX.i782 = bitcast %union.anon* %1310 to i64*
  %1311 = load i64, i64* %RAX.i782
  %1312 = load i64, i64* %PC.i781
  %1313 = add i64 %1312, 3
  store i64 %1313, i64* %PC.i781
  %1314 = trunc i64 %1311 to i32
  %1315 = sub i32 %1314, 65
  %1316 = zext i32 %1315 to i64
  store i64 %1316, i64* %RAX.i782, align 8
  %1317 = icmp ult i32 %1314, 65
  %1318 = zext i1 %1317 to i8
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1318, i8* %1319, align 1
  %1320 = and i32 %1315, 255
  %1321 = call i32 @llvm.ctpop.i32(i32 %1320)
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1324, i8* %1325, align 1
  %1326 = xor i64 65, %1311
  %1327 = trunc i64 %1326 to i32
  %1328 = xor i32 %1327, %1315
  %1329 = lshr i32 %1328, 4
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1331, i8* %1332, align 1
  %1333 = icmp eq i32 %1315, 0
  %1334 = zext i1 %1333 to i8
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1334, i8* %1335, align 1
  %1336 = lshr i32 %1315, 31
  %1337 = trunc i32 %1336 to i8
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1337, i8* %1338, align 1
  %1339 = lshr i32 %1314, 31
  %1340 = xor i32 %1336, %1339
  %1341 = add i32 %1340, %1339
  %1342 = icmp eq i32 %1341, 2
  %1343 = zext i1 %1342 to i8
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1343, i8* %1344, align 1
  store %struct.Memory* %loadMem_43d59c, %struct.Memory** %MEMORY
  %loadMem_43d59f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 33
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %1347 to i64*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 1
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %EAX.i779 = bitcast %union.anon* %1350 to i32*
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 15
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %RBP.i780 = bitcast %union.anon* %1353 to i64*
  %1354 = load i64, i64* %RBP.i780
  %1355 = sub i64 %1354, 40
  %1356 = load i32, i32* %EAX.i779
  %1357 = zext i32 %1356 to i64
  %1358 = load i64, i64* %PC.i778
  %1359 = add i64 %1358, 3
  store i64 %1359, i64* %PC.i778
  %1360 = inttoptr i64 %1355 to i32*
  store i32 %1356, i32* %1360
  store %struct.Memory* %loadMem_43d59f, %struct.Memory** %MEMORY
  %loadMem_43d5a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 33
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1363 to i64*
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 1
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %RAX.i776 = bitcast %union.anon* %1366 to i64*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 15
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %RBP.i777 = bitcast %union.anon* %1369 to i64*
  %1370 = load i64, i64* %RBP.i777
  %1371 = sub i64 %1370, 40
  %1372 = load i64, i64* %PC.i775
  %1373 = add i64 %1372, 3
  store i64 %1373, i64* %PC.i775
  %1374 = inttoptr i64 %1371 to i32*
  %1375 = load i32, i32* %1374
  %1376 = zext i32 %1375 to i64
  store i64 %1376, i64* %RAX.i776, align 8
  store %struct.Memory* %loadMem_43d5a2, %struct.Memory** %MEMORY
  %loadMem_43d5a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 33
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %1379 to i64*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 1
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %1383 = bitcast %union.anon* %1382 to %struct.anon.2*
  %AL.i773 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1383, i32 0, i32 0
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 7
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %1387 = bitcast %union.anon* %1386 to %struct.anon.2*
  %DL.i774 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1387, i32 0, i32 0
  %1388 = load i8, i8* %AL.i773
  %1389 = zext i8 %1388 to i64
  %1390 = load i64, i64* %PC.i772
  %1391 = add i64 %1390, 2
  store i64 %1391, i64* %PC.i772
  store i8 %1388, i8* %DL.i774, align 1
  store %struct.Memory* %loadMem_43d5a5, %struct.Memory** %MEMORY
  %loadMem_43d5a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 33
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 5
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %RCX.i770 = bitcast %union.anon* %1397 to i64*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 15
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %RBP.i771 = bitcast %union.anon* %1400 to i64*
  %1401 = load i64, i64* %RBP.i771
  %1402 = sub i64 %1401, 48
  %1403 = load i64, i64* %PC.i769
  %1404 = add i64 %1403, 4
  store i64 %1404, i64* %PC.i769
  %1405 = inttoptr i64 %1402 to i64*
  %1406 = load i64, i64* %1405
  store i64 %1406, i64* %RCX.i770, align 8
  store %struct.Memory* %loadMem_43d5a7, %struct.Memory** %MEMORY
  %loadMem_43d5ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 33
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %1409 to i64*
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 9
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %RSI.i767 = bitcast %union.anon* %1412 to i64*
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 15
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %RBP.i768 = bitcast %union.anon* %1415 to i64*
  %1416 = load i64, i64* %RBP.i768
  %1417 = sub i64 %1416, 36
  %1418 = load i64, i64* %PC.i766
  %1419 = add i64 %1418, 4
  store i64 %1419, i64* %PC.i766
  %1420 = inttoptr i64 %1417 to i32*
  %1421 = load i32, i32* %1420
  %1422 = sext i32 %1421 to i64
  store i64 %1422, i64* %RSI.i767, align 8
  store %struct.Memory* %loadMem_43d5ab, %struct.Memory** %MEMORY
  %loadMem_43d5af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1424 = getelementptr inbounds %struct.GPR, %struct.GPR* %1423, i32 0, i32 33
  %1425 = getelementptr inbounds %struct.Reg, %struct.Reg* %1424, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %1425 to i64*
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 5
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %RCX.i764 = bitcast %union.anon* %1428 to i64*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 9
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %RSI.i765 = bitcast %union.anon* %1431 to i64*
  %1432 = load i64, i64* %RCX.i764
  %1433 = load i64, i64* %RSI.i765
  %1434 = mul i64 %1433, 8
  %1435 = add i64 %1434, %1432
  %1436 = load i64, i64* %PC.i763
  %1437 = add i64 %1436, 4
  store i64 %1437, i64* %PC.i763
  %1438 = inttoptr i64 %1435 to i64*
  %1439 = load i64, i64* %1438
  store i64 %1439, i64* %RCX.i764, align 8
  store %struct.Memory* %loadMem_43d5af, %struct.Memory** %MEMORY
  %loadMem_43d5b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 33
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %1442 to i64*
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 9
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %RSI.i761 = bitcast %union.anon* %1445 to i64*
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 15
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %RBP.i762 = bitcast %union.anon* %1448 to i64*
  %1449 = load i64, i64* %RBP.i762
  %1450 = sub i64 %1449, 56
  %1451 = load i64, i64* %PC.i760
  %1452 = add i64 %1451, 4
  store i64 %1452, i64* %PC.i760
  %1453 = inttoptr i64 %1450 to i64*
  %1454 = load i64, i64* %1453
  store i64 %1454, i64* %RSI.i761, align 8
  store %struct.Memory* %loadMem_43d5b3, %struct.Memory** %MEMORY
  %loadMem_43d5b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 33
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1457 to i64*
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 15
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %RBP.i758 = bitcast %union.anon* %1460 to i64*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 17
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %R8.i759 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %RBP.i758
  %1465 = sub i64 %1464, 36
  %1466 = load i64, i64* %PC.i757
  %1467 = add i64 %1466, 4
  store i64 %1467, i64* %PC.i757
  %1468 = inttoptr i64 %1465 to i32*
  %1469 = load i32, i32* %1468
  %1470 = sext i32 %1469 to i64
  store i64 %1470, i64* %R8.i759, align 8
  store %struct.Memory* %loadMem_43d5b7, %struct.Memory** %MEMORY
  %loadMem_43d5bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 33
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 9
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %RSI.i755 = bitcast %union.anon* %1476 to i64*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 17
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %R8.i756 = bitcast %union.anon* %1479 to i64*
  %1480 = load i64, i64* %RSI.i755
  %1481 = load i64, i64* %R8.i756
  %1482 = mul i64 %1481, 4
  %1483 = add i64 %1482, %1480
  %1484 = load i64, i64* %PC.i754
  %1485 = add i64 %1484, 4
  store i64 %1485, i64* %PC.i754
  %1486 = inttoptr i64 %1483 to i32*
  %1487 = load i32, i32* %1486
  %1488 = sext i32 %1487 to i64
  store i64 %1488, i64* %RSI.i755, align 8
  store %struct.Memory* %loadMem_43d5bb, %struct.Memory** %MEMORY
  %loadMem_43d5bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 33
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %1491 to i64*
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 7
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %1495 = bitcast %union.anon* %1494 to %struct.anon.2*
  %DL.i751 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1495, i32 0, i32 0
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 5
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %RCX.i752 = bitcast %union.anon* %1498 to i64*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 9
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %RSI.i753 = bitcast %union.anon* %1501 to i64*
  %1502 = load i64, i64* %RCX.i752
  %1503 = load i64, i64* %RSI.i753
  %1504 = add i64 %1503, %1502
  %1505 = load i8, i8* %DL.i751
  %1506 = zext i8 %1505 to i64
  %1507 = load i64, i64* %PC.i750
  %1508 = add i64 %1507, 3
  store i64 %1508, i64* %PC.i750
  %1509 = inttoptr i64 %1504 to i8*
  store i8 %1505, i8* %1509
  store %struct.Memory* %loadMem_43d5bf, %struct.Memory** %MEMORY
  %loadMem_43d5c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 5
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RCX.i748 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 15
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RBP.i749 = bitcast %union.anon* %1518 to i64*
  %1519 = load i64, i64* %RBP.i749
  %1520 = sub i64 %1519, 56
  %1521 = load i64, i64* %PC.i747
  %1522 = add i64 %1521, 4
  store i64 %1522, i64* %PC.i747
  %1523 = inttoptr i64 %1520 to i64*
  %1524 = load i64, i64* %1523
  store i64 %1524, i64* %RCX.i748, align 8
  store %struct.Memory* %loadMem_43d5c2, %struct.Memory** %MEMORY
  %loadMem_43d5c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 33
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %1527 to i64*
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 9
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %RSI.i745 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 15
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %RBP.i746 = bitcast %union.anon* %1533 to i64*
  %1534 = load i64, i64* %RBP.i746
  %1535 = sub i64 %1534, 36
  %1536 = load i64, i64* %PC.i744
  %1537 = add i64 %1536, 4
  store i64 %1537, i64* %PC.i744
  %1538 = inttoptr i64 %1535 to i32*
  %1539 = load i32, i32* %1538
  %1540 = sext i32 %1539 to i64
  store i64 %1540, i64* %RSI.i745, align 8
  store %struct.Memory* %loadMem_43d5c6, %struct.Memory** %MEMORY
  %loadMem_43d5ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 33
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %1543 to i64*
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 1
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %RAX.i741 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 5
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RCX.i742 = bitcast %union.anon* %1549 to i64*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 9
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %RSI.i743 = bitcast %union.anon* %1552 to i64*
  %1553 = load i64, i64* %RCX.i742
  %1554 = load i64, i64* %RSI.i743
  %1555 = mul i64 %1554, 4
  %1556 = add i64 %1555, %1553
  %1557 = load i64, i64* %PC.i740
  %1558 = add i64 %1557, 3
  store i64 %1558, i64* %PC.i740
  %1559 = inttoptr i64 %1556 to i32*
  %1560 = load i32, i32* %1559
  %1561 = zext i32 %1560 to i64
  store i64 %1561, i64* %RAX.i741, align 8
  store %struct.Memory* %loadMem_43d5ca, %struct.Memory** %MEMORY
  %loadMem_43d5cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 33
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %1564 to i64*
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 1
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %RAX.i739 = bitcast %union.anon* %1567 to i64*
  %1568 = load i64, i64* %RAX.i739
  %1569 = load i64, i64* %PC.i738
  %1570 = add i64 %1569, 3
  store i64 %1570, i64* %PC.i738
  %1571 = trunc i64 %1568 to i32
  %1572 = add i32 1, %1571
  %1573 = zext i32 %1572 to i64
  store i64 %1573, i64* %RAX.i739, align 8
  %1574 = icmp ult i32 %1572, %1571
  %1575 = icmp ult i32 %1572, 1
  %1576 = or i1 %1574, %1575
  %1577 = zext i1 %1576 to i8
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1577, i8* %1578, align 1
  %1579 = and i32 %1572, 255
  %1580 = call i32 @llvm.ctpop.i32(i32 %1579)
  %1581 = trunc i32 %1580 to i8
  %1582 = and i8 %1581, 1
  %1583 = xor i8 %1582, 1
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1583, i8* %1584, align 1
  %1585 = xor i64 1, %1568
  %1586 = trunc i64 %1585 to i32
  %1587 = xor i32 %1586, %1572
  %1588 = lshr i32 %1587, 4
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1590, i8* %1591, align 1
  %1592 = icmp eq i32 %1572, 0
  %1593 = zext i1 %1592 to i8
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1593, i8* %1594, align 1
  %1595 = lshr i32 %1572, 31
  %1596 = trunc i32 %1595 to i8
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1596, i8* %1597, align 1
  %1598 = lshr i32 %1571, 31
  %1599 = xor i32 %1595, %1598
  %1600 = add i32 %1599, %1595
  %1601 = icmp eq i32 %1600, 2
  %1602 = zext i1 %1601 to i8
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1602, i8* %1603, align 1
  store %struct.Memory* %loadMem_43d5cd, %struct.Memory** %MEMORY
  %loadMem_43d5d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 33
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %1606 to i64*
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 1
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %EAX.i735 = bitcast %union.anon* %1609 to i32*
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 5
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %RCX.i736 = bitcast %union.anon* %1612 to i64*
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1614 = getelementptr inbounds %struct.GPR, %struct.GPR* %1613, i32 0, i32 9
  %1615 = getelementptr inbounds %struct.Reg, %struct.Reg* %1614, i32 0, i32 0
  %RSI.i737 = bitcast %union.anon* %1615 to i64*
  %1616 = load i64, i64* %RCX.i736
  %1617 = load i64, i64* %RSI.i737
  %1618 = mul i64 %1617, 4
  %1619 = add i64 %1618, %1616
  %1620 = load i32, i32* %EAX.i735
  %1621 = zext i32 %1620 to i64
  %1622 = load i64, i64* %PC.i734
  %1623 = add i64 %1622, 3
  store i64 %1623, i64* %PC.i734
  %1624 = inttoptr i64 %1619 to i32*
  store i32 %1620, i32* %1624
  store %struct.Memory* %loadMem_43d5d0, %struct.Memory** %MEMORY
  %loadMem_43d5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 33
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 1
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %RAX.i732 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 15
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %RBP.i733 = bitcast %union.anon* %1633 to i64*
  %1634 = load i64, i64* %RBP.i733
  %1635 = sub i64 %1634, 40
  %1636 = load i64, i64* %PC.i731
  %1637 = add i64 %1636, 3
  store i64 %1637, i64* %PC.i731
  %1638 = inttoptr i64 %1635 to i32*
  %1639 = load i32, i32* %1638
  %1640 = zext i32 %1639 to i64
  store i64 %1640, i64* %RAX.i732, align 8
  store %struct.Memory* %loadMem_43d5d3, %struct.Memory** %MEMORY
  %loadMem_43d5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 33
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %1643 to i64*
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 1
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %EAX.i729 = bitcast %union.anon* %1646 to i32*
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 15
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %RBP.i730 = bitcast %union.anon* %1649 to i64*
  %1650 = load i64, i64* %RBP.i730
  %1651 = sub i64 %1650, 36
  %1652 = load i32, i32* %EAX.i729
  %1653 = zext i32 %1652 to i64
  %1654 = load i64, i64* %PC.i728
  %1655 = add i64 %1654, 3
  store i64 %1655, i64* %PC.i728
  %1656 = inttoptr i64 %1651 to i32*
  store i32 %1652, i32* %1656
  store %struct.Memory* %loadMem_43d5d6, %struct.Memory** %MEMORY
  %loadMem_43d5d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 33
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 1
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %RAX.i726 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 15
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %RBP.i727 = bitcast %union.anon* %1665 to i64*
  %1666 = load i64, i64* %RBP.i727
  %1667 = sub i64 %1666, 32
  %1668 = load i64, i64* %PC.i725
  %1669 = add i64 %1668, 3
  store i64 %1669, i64* %PC.i725
  %1670 = inttoptr i64 %1667 to i32*
  %1671 = load i32, i32* %1670
  %1672 = zext i32 %1671 to i64
  store i64 %1672, i64* %RAX.i726, align 8
  store %struct.Memory* %loadMem_43d5d9, %struct.Memory** %MEMORY
  %loadMem_43d5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 33
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %1675 to i64*
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 1
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %RAX.i724 = bitcast %union.anon* %1678 to i64*
  %1679 = load i64, i64* %RAX.i724
  %1680 = load i64, i64* %PC.i723
  %1681 = add i64 %1680, 3
  store i64 %1681, i64* %PC.i723
  %1682 = trunc i64 %1679 to i32
  %1683 = add i32 1, %1682
  %1684 = zext i32 %1683 to i64
  store i64 %1684, i64* %RAX.i724, align 8
  %1685 = icmp ult i32 %1683, %1682
  %1686 = icmp ult i32 %1683, 1
  %1687 = or i1 %1685, %1686
  %1688 = zext i1 %1687 to i8
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1688, i8* %1689, align 1
  %1690 = and i32 %1683, 255
  %1691 = call i32 @llvm.ctpop.i32(i32 %1690)
  %1692 = trunc i32 %1691 to i8
  %1693 = and i8 %1692, 1
  %1694 = xor i8 %1693, 1
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1694, i8* %1695, align 1
  %1696 = xor i64 1, %1679
  %1697 = trunc i64 %1696 to i32
  %1698 = xor i32 %1697, %1683
  %1699 = lshr i32 %1698, 4
  %1700 = trunc i32 %1699 to i8
  %1701 = and i8 %1700, 1
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1701, i8* %1702, align 1
  %1703 = icmp eq i32 %1683, 0
  %1704 = zext i1 %1703 to i8
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1704, i8* %1705, align 1
  %1706 = lshr i32 %1683, 31
  %1707 = trunc i32 %1706 to i8
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1707, i8* %1708, align 1
  %1709 = lshr i32 %1682, 31
  %1710 = xor i32 %1706, %1709
  %1711 = add i32 %1710, %1706
  %1712 = icmp eq i32 %1711, 2
  %1713 = zext i1 %1712 to i8
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1713, i8* %1714, align 1
  store %struct.Memory* %loadMem_43d5dc, %struct.Memory** %MEMORY
  %loadMem_43d5df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 33
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %1717 to i64*
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 1
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %EAX.i721 = bitcast %union.anon* %1720 to i32*
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 15
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %1723 to i64*
  %1724 = load i64, i64* %RBP.i722
  %1725 = sub i64 %1724, 32
  %1726 = load i32, i32* %EAX.i721
  %1727 = zext i32 %1726 to i64
  %1728 = load i64, i64* %PC.i720
  %1729 = add i64 %1728, 3
  store i64 %1729, i64* %PC.i720
  %1730 = inttoptr i64 %1725 to i32*
  store i32 %1726, i32* %1730
  store %struct.Memory* %loadMem_43d5df, %struct.Memory** %MEMORY
  %loadMem_43d5e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 33
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %1733 to i64*
  %1734 = load i64, i64* %PC.i719
  %1735 = add i64 %1734, -99
  %1736 = load i64, i64* %PC.i719
  %1737 = add i64 %1736, 5
  store i64 %1737, i64* %PC.i719
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1735, i64* %1738, align 8
  store %struct.Memory* %loadMem_43d5e2, %struct.Memory** %MEMORY
  br label %block_.L_43d57f

block_.L_43d5e7:                                  ; preds = %block_.L_43d57f
  %loadMem_43d5e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 33
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %1741 to i64*
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 1
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %RAX.i717 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 15
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %RBP.i718 = bitcast %union.anon* %1747 to i64*
  %1748 = load i64, i64* %RBP.i718
  %1749 = sub i64 %1748, 24
  %1750 = load i64, i64* %PC.i716
  %1751 = add i64 %1750, 4
  store i64 %1751, i64* %PC.i716
  %1752 = inttoptr i64 %1749 to i64*
  %1753 = load i64, i64* %1752
  store i64 %1753, i64* %RAX.i717, align 8
  store %struct.Memory* %loadMem_43d5e7, %struct.Memory** %MEMORY
  %loadMem_43d5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 33
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1756 to i64*
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 5
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %RCX.i714 = bitcast %union.anon* %1759 to i64*
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 15
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %RBP.i715 = bitcast %union.anon* %1762 to i64*
  %1763 = load i64, i64* %RBP.i715
  %1764 = sub i64 %1763, 28
  %1765 = load i64, i64* %PC.i713
  %1766 = add i64 %1765, 3
  store i64 %1766, i64* %PC.i713
  %1767 = inttoptr i64 %1764 to i32*
  %1768 = load i32, i32* %1767
  %1769 = zext i32 %1768 to i64
  store i64 %1769, i64* %RCX.i714, align 8
  store %struct.Memory* %loadMem_43d5eb, %struct.Memory** %MEMORY
  %loadMem_43d5ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 33
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %1772 to i64*
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 5
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %RCX.i712 = bitcast %union.anon* %1775 to i64*
  %1776 = load i64, i64* %RCX.i712
  %1777 = load i64, i64* %PC.i711
  %1778 = add i64 %1777, 3
  store i64 %1778, i64* %PC.i711
  %1779 = trunc i64 %1776 to i32
  %1780 = sub i32 %1779, 1
  %1781 = zext i32 %1780 to i64
  store i64 %1781, i64* %RCX.i712, align 8
  %1782 = icmp ult i32 %1779, 1
  %1783 = zext i1 %1782 to i8
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1783, i8* %1784, align 1
  %1785 = and i32 %1780, 255
  %1786 = call i32 @llvm.ctpop.i32(i32 %1785)
  %1787 = trunc i32 %1786 to i8
  %1788 = and i8 %1787, 1
  %1789 = xor i8 %1788, 1
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1789, i8* %1790, align 1
  %1791 = xor i64 1, %1776
  %1792 = trunc i64 %1791 to i32
  %1793 = xor i32 %1792, %1780
  %1794 = lshr i32 %1793, 4
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1796, i8* %1797, align 1
  %1798 = icmp eq i32 %1780, 0
  %1799 = zext i1 %1798 to i8
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1799, i8* %1800, align 1
  %1801 = lshr i32 %1780, 31
  %1802 = trunc i32 %1801 to i8
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1802, i8* %1803, align 1
  %1804 = lshr i32 %1779, 31
  %1805 = xor i32 %1801, %1804
  %1806 = add i32 %1805, %1804
  %1807 = icmp eq i32 %1806, 2
  %1808 = zext i1 %1807 to i8
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1808, i8* %1809, align 1
  store %struct.Memory* %loadMem_43d5ee, %struct.Memory** %MEMORY
  %loadMem_43d5f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 33
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %1812 to i64*
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 5
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %ECX.i709 = bitcast %union.anon* %1815 to i32*
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 7
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %RDX.i710 = bitcast %union.anon* %1818 to i64*
  %1819 = load i32, i32* %ECX.i709
  %1820 = zext i32 %1819 to i64
  %1821 = load i64, i64* %PC.i708
  %1822 = add i64 %1821, 3
  store i64 %1822, i64* %PC.i708
  %1823 = shl i64 %1820, 32
  %1824 = ashr exact i64 %1823, 32
  store i64 %1824, i64* %RDX.i710, align 8
  store %struct.Memory* %loadMem_43d5f1, %struct.Memory** %MEMORY
  %loadMem_43d5f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 33
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %1827 to i64*
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 1
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %RAX.i705 = bitcast %union.anon* %1830 to i64*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 7
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %RDX.i706 = bitcast %union.anon* %1833 to i64*
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 11
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %RDI.i707 = bitcast %union.anon* %1836 to i64*
  %1837 = load i64, i64* %RAX.i705
  %1838 = load i64, i64* %RDX.i706
  %1839 = add i64 %1838, %1837
  %1840 = load i64, i64* %PC.i704
  %1841 = add i64 %1840, 4
  store i64 %1841, i64* %PC.i704
  %1842 = inttoptr i64 %1839 to i8*
  %1843 = load i8, i8* %1842
  %1844 = sext i8 %1843 to i64
  %1845 = and i64 %1844, 4294967295
  store i64 %1845, i64* %RDI.i707, align 8
  store %struct.Memory* %loadMem_43d5f4, %struct.Memory** %MEMORY
  %loadMem1_43d5f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 33
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %1848 to i64*
  %1849 = load i64, i64* %PC.i703
  %1850 = add i64 %1849, -246280
  %1851 = load i64, i64* %PC.i703
  %1852 = add i64 %1851, 5
  %1853 = load i64, i64* %PC.i703
  %1854 = add i64 %1853, 5
  store i64 %1854, i64* %PC.i703
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1856 = load i64, i64* %1855, align 8
  %1857 = add i64 %1856, -8
  %1858 = inttoptr i64 %1857 to i64*
  store i64 %1852, i64* %1858
  store i64 %1857, i64* %1855, align 8
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1850, i64* %1859, align 8
  store %struct.Memory* %loadMem1_43d5f8, %struct.Memory** %MEMORY
  %loadMem2_43d5f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43d5f8 = load i64, i64* %3
  %call2_43d5f8 = call %struct.Memory* @sub_4013f0.toupper_plt(%struct.State* %0, i64 %loadPC_43d5f8, %struct.Memory* %loadMem2_43d5f8)
  store %struct.Memory* %call2_43d5f8, %struct.Memory** %MEMORY
  %loadMem_43d5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 33
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %1862 to i64*
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 1
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %RAX.i702 = bitcast %union.anon* %1865 to i64*
  %1866 = load i64, i64* %RAX.i702
  %1867 = load i64, i64* %PC.i701
  %1868 = add i64 %1867, 3
  store i64 %1868, i64* %PC.i701
  %1869 = trunc i64 %1866 to i32
  %1870 = sub i32 %1869, 65
  %1871 = zext i32 %1870 to i64
  store i64 %1871, i64* %RAX.i702, align 8
  %1872 = icmp ult i32 %1869, 65
  %1873 = zext i1 %1872 to i8
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1873, i8* %1874, align 1
  %1875 = and i32 %1870, 255
  %1876 = call i32 @llvm.ctpop.i32(i32 %1875)
  %1877 = trunc i32 %1876 to i8
  %1878 = and i8 %1877, 1
  %1879 = xor i8 %1878, 1
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1879, i8* %1880, align 1
  %1881 = xor i64 65, %1866
  %1882 = trunc i64 %1881 to i32
  %1883 = xor i32 %1882, %1870
  %1884 = lshr i32 %1883, 4
  %1885 = trunc i32 %1884 to i8
  %1886 = and i8 %1885, 1
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1886, i8* %1887, align 1
  %1888 = icmp eq i32 %1870, 0
  %1889 = zext i1 %1888 to i8
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1889, i8* %1890, align 1
  %1891 = lshr i32 %1870, 31
  %1892 = trunc i32 %1891 to i8
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1892, i8* %1893, align 1
  %1894 = lshr i32 %1869, 31
  %1895 = xor i32 %1891, %1894
  %1896 = add i32 %1895, %1894
  %1897 = icmp eq i32 %1896, 2
  %1898 = zext i1 %1897 to i8
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1898, i8* %1899, align 1
  store %struct.Memory* %loadMem_43d5fd, %struct.Memory** %MEMORY
  %loadMem_43d600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 33
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1902 to i64*
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 1
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %1906 = bitcast %union.anon* %1905 to %struct.anon.2*
  %AL.i699 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1906, i32 0, i32 0
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 9
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %1910 = bitcast %union.anon* %1909 to %struct.anon.2*
  %SIL.i700 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1910, i32 0, i32 0
  %1911 = load i8, i8* %AL.i699
  %1912 = zext i8 %1911 to i64
  %1913 = load i64, i64* %PC.i698
  %1914 = add i64 %1913, 3
  store i64 %1914, i64* %PC.i698
  store i8 %1911, i8* %SIL.i700, align 1
  store %struct.Memory* %loadMem_43d600, %struct.Memory** %MEMORY
  %loadMem_43d603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 33
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %1917 to i64*
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 9
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %1921 = bitcast %union.anon* %1920 to %struct.anon.2*
  %SIL.i696 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1921, i32 0, i32 0
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 15
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %1924 to i64*
  %1925 = load i64, i64* %RBP.i697
  %1926 = sub i64 %1925, 69
  %1927 = load i8, i8* %SIL.i696
  %1928 = zext i8 %1927 to i64
  %1929 = load i64, i64* %PC.i695
  %1930 = add i64 %1929, 4
  store i64 %1930, i64* %PC.i695
  %1931 = inttoptr i64 %1926 to i8*
  store i8 %1927, i8* %1931
  store %struct.Memory* %loadMem_43d603, %struct.Memory** %MEMORY
  %loadMem_43d607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 33
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 15
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %RBP.i694 = bitcast %union.anon* %1937 to i64*
  %1938 = load i64, i64* %RBP.i694
  %1939 = sub i64 %1938, 104
  %1940 = load i64, i64* %PC.i693
  %1941 = add i64 %1940, 7
  store i64 %1941, i64* %PC.i693
  %1942 = inttoptr i64 %1939 to i32*
  store i32 0, i32* %1942
  store %struct.Memory* %loadMem_43d607, %struct.Memory** %MEMORY
  br label %block_.L_43d60e

block_.L_43d60e:                                  ; preds = %block_.L_43d835, %block_.L_43d5e7
  %loadMem_43d60e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 33
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %1945 to i64*
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 15
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %RBP.i692 = bitcast %union.anon* %1948 to i64*
  %1949 = load i64, i64* %RBP.i692
  %1950 = sub i64 %1949, 104
  %1951 = load i64, i64* %PC.i691
  %1952 = add i64 %1951, 4
  store i64 %1952, i64* %PC.i691
  %1953 = inttoptr i64 %1950 to i32*
  %1954 = load i32, i32* %1953
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1955, align 1
  %1956 = and i32 %1954, 255
  %1957 = call i32 @llvm.ctpop.i32(i32 %1956)
  %1958 = trunc i32 %1957 to i8
  %1959 = and i8 %1958, 1
  %1960 = xor i8 %1959, 1
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1960, i8* %1961, align 1
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1962, align 1
  %1963 = icmp eq i32 %1954, 0
  %1964 = zext i1 %1963 to i8
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1964, i8* %1965, align 1
  %1966 = lshr i32 %1954, 31
  %1967 = trunc i32 %1966 to i8
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1967, i8* %1968, align 1
  %1969 = lshr i32 %1954, 31
  %1970 = xor i32 %1966, %1969
  %1971 = add i32 %1970, %1969
  %1972 = icmp eq i32 %1971, 2
  %1973 = zext i1 %1972 to i8
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1973, i8* %1974, align 1
  store %struct.Memory* %loadMem_43d60e, %struct.Memory** %MEMORY
  %loadMem_43d612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 33
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %1977 to i64*
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 1
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %1981 = bitcast %union.anon* %1980 to %struct.anon.2*
  %AL.i690 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1981, i32 0, i32 0
  %1982 = load i64, i64* %PC.i689
  %1983 = add i64 %1982, 3
  store i64 %1983, i64* %PC.i689
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1985 = load i8, i8* %1984, align 1
  %1986 = icmp eq i8 %1985, 0
  %1987 = zext i1 %1986 to i8
  store i8 %1987, i8* %AL.i690, align 1
  store %struct.Memory* %loadMem_43d612, %struct.Memory** %MEMORY
  %loadMem_43d615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 33
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %1990 to i64*
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 1
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %1994 = bitcast %union.anon* %1993 to %struct.anon.2*
  %AL.i688 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1994, i32 0, i32 0
  %1995 = load i8, i8* %AL.i688
  %1996 = zext i8 %1995 to i64
  %1997 = load i64, i64* %PC.i687
  %1998 = add i64 %1997, 2
  store i64 %1998, i64* %PC.i687
  %1999 = xor i64 255, %1996
  %2000 = trunc i64 %1999 to i8
  store i8 %2000, i8* %AL.i688, align 1
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2001, align 1
  %2002 = trunc i64 %1999 to i32
  %2003 = and i32 %2002, 255
  %2004 = call i32 @llvm.ctpop.i32(i32 %2003)
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  %2007 = xor i8 %2006, 1
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2007, i8* %2008, align 1
  %2009 = icmp eq i8 %2000, 0
  %2010 = zext i1 %2009 to i8
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2010, i8* %2011, align 1
  %2012 = lshr i8 %2000, 7
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2012, i8* %2013, align 1
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2014, align 1
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2015, align 1
  store %struct.Memory* %loadMem_43d615, %struct.Memory** %MEMORY
  %loadMem_43d617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 33
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %2018 to i64*
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 1
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %2022 = bitcast %union.anon* %2021 to %struct.anon.2*
  %AL.i686 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2022, i32 0, i32 0
  %2023 = load i8, i8* %AL.i686
  %2024 = zext i8 %2023 to i64
  %2025 = load i64, i64* %PC.i685
  %2026 = add i64 %2025, 2
  store i64 %2026, i64* %PC.i685
  %2027 = and i64 1, %2024
  %2028 = trunc i64 %2027 to i8
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2029, align 1
  %2030 = trunc i64 %2027 to i32
  %2031 = and i32 %2030, 255
  %2032 = call i32 @llvm.ctpop.i32(i32 %2031)
  %2033 = trunc i32 %2032 to i8
  %2034 = and i8 %2033, 1
  %2035 = xor i8 %2034, 1
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2035, i8* %2036, align 1
  %2037 = icmp eq i8 %2028, 0
  %2038 = zext i1 %2037 to i8
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2038, i8* %2039, align 1
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2040, align 1
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2041, align 1
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2042, align 1
  store %struct.Memory* %loadMem_43d617, %struct.Memory** %MEMORY
  %loadMem_43d619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 33
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %2045 to i64*
  %2046 = load i64, i64* %PC.i684
  %2047 = add i64 %2046, 11
  %2048 = load i64, i64* %PC.i684
  %2049 = add i64 %2048, 6
  %2050 = load i64, i64* %PC.i684
  %2051 = add i64 %2050, 6
  store i64 %2051, i64* %PC.i684
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2053 = load i8, i8* %2052, align 1
  %2054 = icmp eq i8 %2053, 0
  %2055 = zext i1 %2054 to i8
  store i8 %2055, i8* %BRANCH_TAKEN, align 1
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2057 = select i1 %2054, i64 %2047, i64 %2049
  store i64 %2057, i64* %2056, align 8
  store %struct.Memory* %loadMem_43d619, %struct.Memory** %MEMORY
  %loadBr_43d619 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d619 = icmp eq i8 %loadBr_43d619, 1
  br i1 %cmpBr_43d619, label %block_.L_43d624, label %block_43d61f

block_43d61f:                                     ; preds = %block_.L_43d60e
  %loadMem_43d61f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 33
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %2060 to i64*
  %2061 = load i64, i64* %PC.i683
  %2062 = add i64 %2061, 539
  %2063 = load i64, i64* %PC.i683
  %2064 = add i64 %2063, 5
  store i64 %2064, i64* %PC.i683
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2062, i64* %2065, align 8
  store %struct.Memory* %loadMem_43d61f, %struct.Memory** %MEMORY
  br label %block_.L_43d83a

block_.L_43d624:                                  ; preds = %block_.L_43d60e
  %loadMem_43d624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 33
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2068 to i64*
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 15
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %RBP.i682 = bitcast %union.anon* %2071 to i64*
  %2072 = load i64, i64* %RBP.i682
  %2073 = sub i64 %2072, 36
  %2074 = load i64, i64* %PC.i681
  %2075 = add i64 %2074, 7
  store i64 %2075, i64* %PC.i681
  %2076 = inttoptr i64 %2073 to i32*
  store i32 0, i32* %2076
  store %struct.Memory* %loadMem_43d624, %struct.Memory** %MEMORY
  br label %block_.L_43d62b

block_.L_43d62b:                                  ; preds = %block_.L_43d6eb, %block_.L_43d624
  %loadMem_43d62b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 33
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 15
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %2082 to i64*
  %2083 = load i64, i64* %RBP.i680
  %2084 = sub i64 %2083, 36
  %2085 = load i64, i64* %PC.i679
  %2086 = add i64 %2085, 4
  store i64 %2086, i64* %PC.i679
  %2087 = inttoptr i64 %2084 to i32*
  %2088 = load i32, i32* %2087
  %2089 = sub i32 %2088, 26
  %2090 = icmp ult i32 %2088, 26
  %2091 = zext i1 %2090 to i8
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2091, i8* %2092, align 1
  %2093 = and i32 %2089, 255
  %2094 = call i32 @llvm.ctpop.i32(i32 %2093)
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  %2097 = xor i8 %2096, 1
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2097, i8* %2098, align 1
  %2099 = xor i32 %2088, 26
  %2100 = xor i32 %2099, %2089
  %2101 = lshr i32 %2100, 4
  %2102 = trunc i32 %2101 to i8
  %2103 = and i8 %2102, 1
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2103, i8* %2104, align 1
  %2105 = icmp eq i32 %2089, 0
  %2106 = zext i1 %2105 to i8
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2106, i8* %2107, align 1
  %2108 = lshr i32 %2089, 31
  %2109 = trunc i32 %2108 to i8
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2109, i8* %2110, align 1
  %2111 = lshr i32 %2088, 31
  %2112 = xor i32 %2108, %2111
  %2113 = add i32 %2112, %2111
  %2114 = icmp eq i32 %2113, 2
  %2115 = zext i1 %2114 to i8
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2115, i8* %2116, align 1
  store %struct.Memory* %loadMem_43d62b, %struct.Memory** %MEMORY
  %loadMem_43d62f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 33
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %2119 to i64*
  %2120 = load i64, i64* %PC.i678
  %2121 = add i64 %2120, 202
  %2122 = load i64, i64* %PC.i678
  %2123 = add i64 %2122, 6
  %2124 = load i64, i64* %PC.i678
  %2125 = add i64 %2124, 6
  store i64 %2125, i64* %PC.i678
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2127 = load i8, i8* %2126, align 1
  %2128 = icmp ne i8 %2127, 0
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2130 = load i8, i8* %2129, align 1
  %2131 = icmp ne i8 %2130, 0
  %2132 = xor i1 %2128, %2131
  %2133 = xor i1 %2132, true
  %2134 = zext i1 %2133 to i8
  store i8 %2134, i8* %BRANCH_TAKEN, align 1
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2136 = select i1 %2132, i64 %2123, i64 %2121
  store i64 %2136, i64* %2135, align 8
  store %struct.Memory* %loadMem_43d62f, %struct.Memory** %MEMORY
  %loadBr_43d62f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d62f = icmp eq i8 %loadBr_43d62f, 1
  br i1 %cmpBr_43d62f, label %block_.L_43d6f9, label %block_43d635

block_43d635:                                     ; preds = %block_.L_43d62b
  %loadMem_43d635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 33
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %2139 to i64*
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 1
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %RAX.i676 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 15
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %2145 to i64*
  %2146 = load i64, i64* %RBP.i677
  %2147 = sub i64 %2146, 56
  %2148 = load i64, i64* %PC.i675
  %2149 = add i64 %2148, 4
  store i64 %2149, i64* %PC.i675
  %2150 = inttoptr i64 %2147 to i64*
  %2151 = load i64, i64* %2150
  store i64 %2151, i64* %RAX.i676, align 8
  store %struct.Memory* %loadMem_43d635, %struct.Memory** %MEMORY
  %loadMem_43d639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 33
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %2154 to i64*
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 5
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %RCX.i673 = bitcast %union.anon* %2157 to i64*
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 15
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %2160 to i64*
  %2161 = load i64, i64* %RBP.i674
  %2162 = sub i64 %2161, 36
  %2163 = load i64, i64* %PC.i672
  %2164 = add i64 %2163, 4
  store i64 %2164, i64* %PC.i672
  %2165 = inttoptr i64 %2162 to i32*
  %2166 = load i32, i32* %2165
  %2167 = sext i32 %2166 to i64
  store i64 %2167, i64* %RCX.i673, align 8
  store %struct.Memory* %loadMem_43d639, %struct.Memory** %MEMORY
  %loadMem_43d63d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 33
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %2170 to i64*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 1
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %RAX.i670 = bitcast %union.anon* %2173 to i64*
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 5
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %RCX.i671 = bitcast %union.anon* %2176 to i64*
  %2177 = load i64, i64* %RAX.i670
  %2178 = load i64, i64* %RCX.i671
  %2179 = mul i64 %2178, 4
  %2180 = add i64 %2179, %2177
  %2181 = load i64, i64* %PC.i669
  %2182 = add i64 %2181, 4
  store i64 %2182, i64* %PC.i669
  %2183 = inttoptr i64 %2180 to i32*
  %2184 = load i32, i32* %2183
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2185, align 1
  %2186 = and i32 %2184, 255
  %2187 = call i32 @llvm.ctpop.i32(i32 %2186)
  %2188 = trunc i32 %2187 to i8
  %2189 = and i8 %2188, 1
  %2190 = xor i8 %2189, 1
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2190, i8* %2191, align 1
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2192, align 1
  %2193 = icmp eq i32 %2184, 0
  %2194 = zext i1 %2193 to i8
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2194, i8* %2195, align 1
  %2196 = lshr i32 %2184, 31
  %2197 = trunc i32 %2196 to i8
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2197, i8* %2198, align 1
  %2199 = lshr i32 %2184, 31
  %2200 = xor i32 %2196, %2199
  %2201 = add i32 %2200, %2199
  %2202 = icmp eq i32 %2201, 2
  %2203 = zext i1 %2202 to i8
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2203, i8* %2204, align 1
  store %struct.Memory* %loadMem_43d63d, %struct.Memory** %MEMORY
  %loadMem_43d641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 33
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %2207 to i64*
  %2208 = load i64, i64* %PC.i668
  %2209 = add i64 %2208, 21
  %2210 = load i64, i64* %PC.i668
  %2211 = add i64 %2210, 6
  %2212 = load i64, i64* %PC.i668
  %2213 = add i64 %2212, 6
  store i64 %2213, i64* %PC.i668
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2215 = load i8, i8* %2214, align 1
  store i8 %2215, i8* %BRANCH_TAKEN, align 1
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2217 = icmp ne i8 %2215, 0
  %2218 = select i1 %2217, i64 %2209, i64 %2211
  store i64 %2218, i64* %2216, align 8
  store %struct.Memory* %loadMem_43d641, %struct.Memory** %MEMORY
  %loadBr_43d641 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d641 = icmp eq i8 %loadBr_43d641, 1
  br i1 %cmpBr_43d641, label %block_.L_43d656, label %block_43d647

block_43d647:                                     ; preds = %block_43d635
  %loadMem_43d647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 33
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 1
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %RAX.i666 = bitcast %union.anon* %2224 to i64*
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 15
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %2227 to i64*
  %2228 = load i64, i64* %RBP.i667
  %2229 = sub i64 %2228, 36
  %2230 = load i64, i64* %PC.i665
  %2231 = add i64 %2230, 3
  store i64 %2231, i64* %PC.i665
  %2232 = inttoptr i64 %2229 to i32*
  %2233 = load i32, i32* %2232
  %2234 = zext i32 %2233 to i64
  store i64 %2234, i64* %RAX.i666, align 8
  store %struct.Memory* %loadMem_43d647, %struct.Memory** %MEMORY
  %loadMem_43d64a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 33
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 5
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %RCX.i663 = bitcast %union.anon* %2240 to i64*
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 15
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %RBP.i664 = bitcast %union.anon* %2243 to i64*
  %2244 = load i64, i64* %RBP.i664
  %2245 = sub i64 %2244, 69
  %2246 = load i64, i64* %PC.i662
  %2247 = add i64 %2246, 4
  store i64 %2247, i64* %PC.i662
  %2248 = inttoptr i64 %2245 to i8*
  %2249 = load i8, i8* %2248
  %2250 = sext i8 %2249 to i64
  %2251 = and i64 %2250, 4294967295
  store i64 %2251, i64* %RCX.i663, align 8
  store %struct.Memory* %loadMem_43d64a, %struct.Memory** %MEMORY
  %loadMem_43d64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 33
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 1
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %EAX.i660 = bitcast %union.anon* %2257 to i32*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 5
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %ECX.i661 = bitcast %union.anon* %2260 to i32*
  %2261 = load i32, i32* %EAX.i660
  %2262 = zext i32 %2261 to i64
  %2263 = load i32, i32* %ECX.i661
  %2264 = zext i32 %2263 to i64
  %2265 = load i64, i64* %PC.i659
  %2266 = add i64 %2265, 2
  store i64 %2266, i64* %PC.i659
  %2267 = sub i32 %2261, %2263
  %2268 = icmp ult i32 %2261, %2263
  %2269 = zext i1 %2268 to i8
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2269, i8* %2270, align 1
  %2271 = and i32 %2267, 255
  %2272 = call i32 @llvm.ctpop.i32(i32 %2271)
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  %2275 = xor i8 %2274, 1
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2275, i8* %2276, align 1
  %2277 = xor i64 %2264, %2262
  %2278 = trunc i64 %2277 to i32
  %2279 = xor i32 %2278, %2267
  %2280 = lshr i32 %2279, 4
  %2281 = trunc i32 %2280 to i8
  %2282 = and i8 %2281, 1
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2282, i8* %2283, align 1
  %2284 = icmp eq i32 %2267, 0
  %2285 = zext i1 %2284 to i8
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2285, i8* %2286, align 1
  %2287 = lshr i32 %2267, 31
  %2288 = trunc i32 %2287 to i8
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2288, i8* %2289, align 1
  %2290 = lshr i32 %2261, 31
  %2291 = lshr i32 %2263, 31
  %2292 = xor i32 %2291, %2290
  %2293 = xor i32 %2287, %2290
  %2294 = add i32 %2293, %2292
  %2295 = icmp eq i32 %2294, 2
  %2296 = zext i1 %2295 to i8
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2296, i8* %2297, align 1
  store %struct.Memory* %loadMem_43d64e, %struct.Memory** %MEMORY
  %loadMem_43d650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 33
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %2300 to i64*
  %2301 = load i64, i64* %PC.i658
  %2302 = add i64 %2301, 11
  %2303 = load i64, i64* %PC.i658
  %2304 = add i64 %2303, 6
  %2305 = load i64, i64* %PC.i658
  %2306 = add i64 %2305, 6
  store i64 %2306, i64* %PC.i658
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2308 = load i8, i8* %2307, align 1
  %2309 = icmp eq i8 %2308, 0
  %2310 = zext i1 %2309 to i8
  store i8 %2310, i8* %BRANCH_TAKEN, align 1
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2312 = select i1 %2309, i64 %2302, i64 %2304
  store i64 %2312, i64* %2311, align 8
  store %struct.Memory* %loadMem_43d650, %struct.Memory** %MEMORY
  %loadBr_43d650 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d650 = icmp eq i8 %loadBr_43d650, 1
  br i1 %cmpBr_43d650, label %block_.L_43d65b, label %block_.L_43d656

block_.L_43d656:                                  ; preds = %block_43d647, %block_43d635
  %loadMem_43d656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 33
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %2315 to i64*
  %2316 = load i64, i64* %PC.i657
  %2317 = add i64 %2316, 149
  %2318 = load i64, i64* %PC.i657
  %2319 = add i64 %2318, 5
  store i64 %2319, i64* %PC.i657
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2317, i64* %2320, align 8
  store %struct.Memory* %loadMem_43d656, %struct.Memory** %MEMORY
  br label %block_.L_43d6eb

block_.L_43d65b:                                  ; preds = %block_43d647
  %loadMem1_43d65b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 33
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %2323 to i64*
  %2324 = load i64, i64* %PC.i656
  %2325 = add i64 %2324, 32165
  %2326 = load i64, i64* %PC.i656
  %2327 = add i64 %2326, 5
  %2328 = load i64, i64* %PC.i656
  %2329 = add i64 %2328, 5
  store i64 %2329, i64* %PC.i656
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2331 = load i64, i64* %2330, align 8
  %2332 = add i64 %2331, -8
  %2333 = inttoptr i64 %2332 to i64*
  store i64 %2327, i64* %2333
  store i64 %2332, i64* %2330, align 8
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2325, i64* %2334, align 8
  store %struct.Memory* %loadMem1_43d65b, %struct.Memory** %MEMORY
  %loadMem2_43d65b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43d65b = load i64, i64* %3
  %call2_43d65b = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64 %loadPC_43d65b, %struct.Memory* %loadMem2_43d65b)
  store %struct.Memory* %call2_43d65b, %struct.Memory** %MEMORY
  %loadMem_43d660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 33
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 1
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %RAX.i654 = bitcast %union.anon* %2340 to i64*
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 15
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %RBP.i655 = bitcast %union.anon* %2343 to i64*
  %2344 = load i64, i64* %RBP.i655
  %2345 = sub i64 %2344, 56
  %2346 = load i64, i64* %PC.i653
  %2347 = add i64 %2346, 4
  store i64 %2347, i64* %PC.i653
  %2348 = inttoptr i64 %2345 to i64*
  %2349 = load i64, i64* %2348
  store i64 %2349, i64* %RAX.i654, align 8
  store %struct.Memory* %loadMem_43d660, %struct.Memory** %MEMORY
  %loadMem_43d664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 33
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %2352 to i64*
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 5
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %RCX.i651 = bitcast %union.anon* %2355 to i64*
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 15
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %RBP.i652 = bitcast %union.anon* %2358 to i64*
  %2359 = load i64, i64* %RBP.i652
  %2360 = sub i64 %2359, 36
  %2361 = load i64, i64* %PC.i650
  %2362 = add i64 %2361, 4
  store i64 %2362, i64* %PC.i650
  %2363 = inttoptr i64 %2360 to i32*
  %2364 = load i32, i32* %2363
  %2365 = sext i32 %2364 to i64
  store i64 %2365, i64* %RCX.i651, align 8
  store %struct.Memory* %loadMem_43d664, %struct.Memory** %MEMORY
  %loadMem_43d668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 33
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %2368 to i64*
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 1
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %2371 to i64*
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 5
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %RCX.i648 = bitcast %union.anon* %2374 to i64*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2376 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2375, i64 0, i64 1
  %YMM1.i649 = bitcast %union.VectorReg* %2376 to %"class.std::bitset"*
  %2377 = bitcast %"class.std::bitset"* %YMM1.i649 to i8*
  %2378 = load i64, i64* %RAX.i647
  %2379 = load i64, i64* %RCX.i648
  %2380 = mul i64 %2379, 4
  %2381 = add i64 %2380, %2378
  %2382 = load i64, i64* %PC.i646
  %2383 = add i64 %2382, 5
  store i64 %2383, i64* %PC.i646
  %2384 = inttoptr i64 %2381 to i32*
  %2385 = load i32, i32* %2384
  %2386 = sitofp i32 %2385 to double
  %2387 = bitcast i8* %2377 to double*
  store double %2386, double* %2387, align 1
  store %struct.Memory* %loadMem_43d668, %struct.Memory** %MEMORY
  %loadMem_43d66d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 33
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %2390 to i64*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2392 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2391, i64 0, i64 0
  %YMM0.i644 = bitcast %union.VectorReg* %2392 to %"class.std::bitset"*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2394 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2393, i64 0, i64 1
  %XMM1.i645 = bitcast %union.VectorReg* %2394 to %union.vec128_t*
  %2395 = bitcast %"class.std::bitset"* %YMM0.i644 to i8*
  %2396 = bitcast %"class.std::bitset"* %YMM0.i644 to i8*
  %2397 = bitcast %union.vec128_t* %XMM1.i645 to i8*
  %2398 = load i64, i64* %PC.i643
  %2399 = add i64 %2398, 4
  store i64 %2399, i64* %PC.i643
  %2400 = bitcast i8* %2396 to double*
  %2401 = load double, double* %2400, align 1
  %2402 = getelementptr inbounds i8, i8* %2396, i64 8
  %2403 = bitcast i8* %2402 to i64*
  %2404 = load i64, i64* %2403, align 1
  %2405 = bitcast i8* %2397 to double*
  %2406 = load double, double* %2405, align 1
  %2407 = fmul double %2401, %2406
  %2408 = bitcast i8* %2395 to double*
  store double %2407, double* %2408, align 1
  %2409 = getelementptr inbounds i8, i8* %2395, i64 8
  %2410 = bitcast i8* %2409 to i64*
  store i64 %2404, i64* %2410, align 1
  store %struct.Memory* %loadMem_43d66d, %struct.Memory** %MEMORY
  %loadMem_43d671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 33
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 7
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %RDX.i641 = bitcast %union.anon* %2416 to i64*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2418 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2417, i64 0, i64 0
  %XMM0.i642 = bitcast %union.VectorReg* %2418 to %union.vec128_t*
  %2419 = bitcast %union.vec128_t* %XMM0.i642 to i8*
  %2420 = load i64, i64* %PC.i640
  %2421 = add i64 %2420, 4
  store i64 %2421, i64* %PC.i640
  %2422 = bitcast i8* %2419 to double*
  %2423 = load double, double* %2422, align 1
  %2424 = call double @llvm.trunc.f64(double %2423)
  %2425 = call double @llvm.fabs.f64(double %2424)
  %2426 = fcmp ogt double %2425, 0x41DFFFFFFFC00000
  %2427 = fptosi double %2424 to i32
  %2428 = zext i32 %2427 to i64
  %2429 = select i1 %2426, i64 2147483648, i64 %2428
  store i64 %2429, i64* %RDX.i641, align 8
  store %struct.Memory* %loadMem_43d671, %struct.Memory** %MEMORY
  %loadMem_43d675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 33
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %2432 to i64*
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2434 = getelementptr inbounds %struct.GPR, %struct.GPR* %2433, i32 0, i32 7
  %2435 = getelementptr inbounds %struct.Reg, %struct.Reg* %2434, i32 0, i32 0
  %EDX.i638 = bitcast %union.anon* %2435 to i32*
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2437 = getelementptr inbounds %struct.GPR, %struct.GPR* %2436, i32 0, i32 15
  %2438 = getelementptr inbounds %struct.Reg, %struct.Reg* %2437, i32 0, i32 0
  %RBP.i639 = bitcast %union.anon* %2438 to i64*
  %2439 = load i64, i64* %RBP.i639
  %2440 = sub i64 %2439, 32
  %2441 = load i32, i32* %EDX.i638
  %2442 = zext i32 %2441 to i64
  %2443 = load i64, i64* %PC.i637
  %2444 = add i64 %2443, 3
  store i64 %2444, i64* %PC.i637
  %2445 = inttoptr i64 %2440 to i32*
  store i32 %2441, i32* %2445
  store %struct.Memory* %loadMem_43d675, %struct.Memory** %MEMORY
  %loadMem_43d678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 33
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 1
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %RAX.i635 = bitcast %union.anon* %2451 to i64*
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 15
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %2454 to i64*
  %2455 = load i64, i64* %RBP.i636
  %2456 = sub i64 %2455, 48
  %2457 = load i64, i64* %PC.i634
  %2458 = add i64 %2457, 4
  store i64 %2458, i64* %PC.i634
  %2459 = inttoptr i64 %2456 to i64*
  %2460 = load i64, i64* %2459
  store i64 %2460, i64* %RAX.i635, align 8
  store %struct.Memory* %loadMem_43d678, %struct.Memory** %MEMORY
  %loadMem_43d67c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 33
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %2463 to i64*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 5
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %RCX.i632 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 15
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RBP.i633 = bitcast %union.anon* %2469 to i64*
  %2470 = load i64, i64* %RBP.i633
  %2471 = sub i64 %2470, 36
  %2472 = load i64, i64* %PC.i631
  %2473 = add i64 %2472, 4
  store i64 %2473, i64* %PC.i631
  %2474 = inttoptr i64 %2471 to i32*
  %2475 = load i32, i32* %2474
  %2476 = sext i32 %2475 to i64
  store i64 %2476, i64* %RCX.i632, align 8
  store %struct.Memory* %loadMem_43d67c, %struct.Memory** %MEMORY
  %loadMem_43d680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 33
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %2479 to i64*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 1
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %RAX.i629 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 5
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RCX.i630 = bitcast %union.anon* %2485 to i64*
  %2486 = load i64, i64* %RAX.i629
  %2487 = load i64, i64* %RCX.i630
  %2488 = mul i64 %2487, 8
  %2489 = add i64 %2488, %2486
  %2490 = load i64, i64* %PC.i628
  %2491 = add i64 %2490, 4
  store i64 %2491, i64* %PC.i628
  %2492 = inttoptr i64 %2489 to i64*
  %2493 = load i64, i64* %2492
  store i64 %2493, i64* %RAX.i629, align 8
  store %struct.Memory* %loadMem_43d680, %struct.Memory** %MEMORY
  %loadMem_43d684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2495 = getelementptr inbounds %struct.GPR, %struct.GPR* %2494, i32 0, i32 33
  %2496 = getelementptr inbounds %struct.Reg, %struct.Reg* %2495, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %2496 to i64*
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 5
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %RCX.i626 = bitcast %union.anon* %2499 to i64*
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 15
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %2502 to i64*
  %2503 = load i64, i64* %RBP.i627
  %2504 = sub i64 %2503, 32
  %2505 = load i64, i64* %PC.i625
  %2506 = add i64 %2505, 4
  store i64 %2506, i64* %PC.i625
  %2507 = inttoptr i64 %2504 to i32*
  %2508 = load i32, i32* %2507
  %2509 = sext i32 %2508 to i64
  store i64 %2509, i64* %RCX.i626, align 8
  store %struct.Memory* %loadMem_43d684, %struct.Memory** %MEMORY
  %loadMem_43d688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 33
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %2512 to i64*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 1
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 5
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RCX.i623 = bitcast %union.anon* %2518 to i64*
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 7
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %RDX.i624 = bitcast %union.anon* %2521 to i64*
  %2522 = load i64, i64* %RAX.i622
  %2523 = load i64, i64* %RCX.i623
  %2524 = add i64 %2523, %2522
  %2525 = load i64, i64* %PC.i621
  %2526 = add i64 %2525, 4
  store i64 %2526, i64* %PC.i621
  %2527 = inttoptr i64 %2524 to i8*
  %2528 = load i8, i8* %2527
  %2529 = sext i8 %2528 to i64
  %2530 = and i64 %2529, 4294967295
  store i64 %2530, i64* %RDX.i624, align 8
  store %struct.Memory* %loadMem_43d688, %struct.Memory** %MEMORY
  %loadMem_43d68c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 33
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %2533 to i64*
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 7
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %EDX.i619 = bitcast %union.anon* %2536 to i32*
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 15
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %2539 to i64*
  %2540 = load i64, i64* %RBP.i620
  %2541 = sub i64 %2540, 40
  %2542 = load i32, i32* %EDX.i619
  %2543 = zext i32 %2542 to i64
  %2544 = load i64, i64* %PC.i618
  %2545 = add i64 %2544, 3
  store i64 %2545, i64* %PC.i618
  %2546 = inttoptr i64 %2541 to i32*
  store i32 %2542, i32* %2546
  store %struct.Memory* %loadMem_43d68c, %struct.Memory** %MEMORY
  %loadMem_43d68f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2548 = getelementptr inbounds %struct.GPR, %struct.GPR* %2547, i32 0, i32 33
  %2549 = getelementptr inbounds %struct.Reg, %struct.Reg* %2548, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %2549 to i64*
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2551 = getelementptr inbounds %struct.GPR, %struct.GPR* %2550, i32 0, i32 1
  %2552 = getelementptr inbounds %struct.Reg, %struct.Reg* %2551, i32 0, i32 0
  %RAX.i616 = bitcast %union.anon* %2552 to i64*
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 15
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %2555 to i64*
  %2556 = load i64, i64* %RBP.i617
  %2557 = sub i64 %2556, 48
  %2558 = load i64, i64* %PC.i615
  %2559 = add i64 %2558, 4
  store i64 %2559, i64* %PC.i615
  %2560 = inttoptr i64 %2557 to i64*
  %2561 = load i64, i64* %2560
  store i64 %2561, i64* %RAX.i616, align 8
  store %struct.Memory* %loadMem_43d68f, %struct.Memory** %MEMORY
  %loadMem_43d693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 33
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 5
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %RCX.i613 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 15
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %2570 to i64*
  %2571 = load i64, i64* %RBP.i614
  %2572 = sub i64 %2571, 36
  %2573 = load i64, i64* %PC.i612
  %2574 = add i64 %2573, 4
  store i64 %2574, i64* %PC.i612
  %2575 = inttoptr i64 %2572 to i32*
  %2576 = load i32, i32* %2575
  %2577 = sext i32 %2576 to i64
  store i64 %2577, i64* %RCX.i613, align 8
  store %struct.Memory* %loadMem_43d693, %struct.Memory** %MEMORY
  %loadMem_43d697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 33
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %2580 to i64*
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2582 = getelementptr inbounds %struct.GPR, %struct.GPR* %2581, i32 0, i32 1
  %2583 = getelementptr inbounds %struct.Reg, %struct.Reg* %2582, i32 0, i32 0
  %RAX.i610 = bitcast %union.anon* %2583 to i64*
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2585 = getelementptr inbounds %struct.GPR, %struct.GPR* %2584, i32 0, i32 5
  %2586 = getelementptr inbounds %struct.Reg, %struct.Reg* %2585, i32 0, i32 0
  %RCX.i611 = bitcast %union.anon* %2586 to i64*
  %2587 = load i64, i64* %RAX.i610
  %2588 = load i64, i64* %RCX.i611
  %2589 = mul i64 %2588, 8
  %2590 = add i64 %2589, %2587
  %2591 = load i64, i64* %PC.i609
  %2592 = add i64 %2591, 4
  store i64 %2592, i64* %PC.i609
  %2593 = inttoptr i64 %2590 to i64*
  %2594 = load i64, i64* %2593
  store i64 %2594, i64* %RAX.i610, align 8
  store %struct.Memory* %loadMem_43d697, %struct.Memory** %MEMORY
  %loadMem_43d69b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 33
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %2597 to i64*
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 5
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %RCX.i607 = bitcast %union.anon* %2600 to i64*
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 15
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %2603 to i64*
  %2604 = load i64, i64* %RBP.i608
  %2605 = sub i64 %2604, 56
  %2606 = load i64, i64* %PC.i606
  %2607 = add i64 %2606, 4
  store i64 %2607, i64* %PC.i606
  %2608 = inttoptr i64 %2605 to i64*
  %2609 = load i64, i64* %2608
  store i64 %2609, i64* %RCX.i607, align 8
  store %struct.Memory* %loadMem_43d69b, %struct.Memory** %MEMORY
  %loadMem_43d69f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 33
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %2612 to i64*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 9
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %RSI.i604 = bitcast %union.anon* %2615 to i64*
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 15
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %RBP.i605 = bitcast %union.anon* %2618 to i64*
  %2619 = load i64, i64* %RBP.i605
  %2620 = sub i64 %2619, 36
  %2621 = load i64, i64* %PC.i603
  %2622 = add i64 %2621, 4
  store i64 %2622, i64* %PC.i603
  %2623 = inttoptr i64 %2620 to i32*
  %2624 = load i32, i32* %2623
  %2625 = sext i32 %2624 to i64
  store i64 %2625, i64* %RSI.i604, align 8
  store %struct.Memory* %loadMem_43d69f, %struct.Memory** %MEMORY
  %loadMem_43d6a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 33
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 5
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %RCX.i600 = bitcast %union.anon* %2631 to i64*
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2633 = getelementptr inbounds %struct.GPR, %struct.GPR* %2632, i32 0, i32 7
  %2634 = getelementptr inbounds %struct.Reg, %struct.Reg* %2633, i32 0, i32 0
  %RDX.i601 = bitcast %union.anon* %2634 to i64*
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 9
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %RSI.i602 = bitcast %union.anon* %2637 to i64*
  %2638 = load i64, i64* %RCX.i600
  %2639 = load i64, i64* %RSI.i602
  %2640 = mul i64 %2639, 4
  %2641 = add i64 %2640, %2638
  %2642 = load i64, i64* %PC.i599
  %2643 = add i64 %2642, 3
  store i64 %2643, i64* %PC.i599
  %2644 = inttoptr i64 %2641 to i32*
  %2645 = load i32, i32* %2644
  %2646 = zext i32 %2645 to i64
  store i64 %2646, i64* %RDX.i601, align 8
  store %struct.Memory* %loadMem_43d6a3, %struct.Memory** %MEMORY
  %loadMem_43d6a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2648 = getelementptr inbounds %struct.GPR, %struct.GPR* %2647, i32 0, i32 33
  %2649 = getelementptr inbounds %struct.Reg, %struct.Reg* %2648, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %2649 to i64*
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 7
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %RDX.i598 = bitcast %union.anon* %2652 to i64*
  %2653 = load i64, i64* %RDX.i598
  %2654 = load i64, i64* %PC.i597
  %2655 = add i64 %2654, 3
  store i64 %2655, i64* %PC.i597
  %2656 = trunc i64 %2653 to i32
  %2657 = sub i32 %2656, 1
  %2658 = zext i32 %2657 to i64
  store i64 %2658, i64* %RDX.i598, align 8
  %2659 = icmp ult i32 %2656, 1
  %2660 = zext i1 %2659 to i8
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2660, i8* %2661, align 1
  %2662 = and i32 %2657, 255
  %2663 = call i32 @llvm.ctpop.i32(i32 %2662)
  %2664 = trunc i32 %2663 to i8
  %2665 = and i8 %2664, 1
  %2666 = xor i8 %2665, 1
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2666, i8* %2667, align 1
  %2668 = xor i64 1, %2653
  %2669 = trunc i64 %2668 to i32
  %2670 = xor i32 %2669, %2657
  %2671 = lshr i32 %2670, 4
  %2672 = trunc i32 %2671 to i8
  %2673 = and i8 %2672, 1
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2673, i8* %2674, align 1
  %2675 = icmp eq i32 %2657, 0
  %2676 = zext i1 %2675 to i8
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2676, i8* %2677, align 1
  %2678 = lshr i32 %2657, 31
  %2679 = trunc i32 %2678 to i8
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2679, i8* %2680, align 1
  %2681 = lshr i32 %2656, 31
  %2682 = xor i32 %2678, %2681
  %2683 = add i32 %2682, %2681
  %2684 = icmp eq i32 %2683, 2
  %2685 = zext i1 %2684 to i8
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2685, i8* %2686, align 1
  store %struct.Memory* %loadMem_43d6a6, %struct.Memory** %MEMORY
  %loadMem_43d6a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2688 = getelementptr inbounds %struct.GPR, %struct.GPR* %2687, i32 0, i32 33
  %2689 = getelementptr inbounds %struct.Reg, %struct.Reg* %2688, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %2689 to i64*
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 7
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %EDX.i595 = bitcast %union.anon* %2692 to i32*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 5
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %RCX.i596 = bitcast %union.anon* %2695 to i64*
  %2696 = load i32, i32* %EDX.i595
  %2697 = zext i32 %2696 to i64
  %2698 = load i64, i64* %PC.i594
  %2699 = add i64 %2698, 3
  store i64 %2699, i64* %PC.i594
  %2700 = shl i64 %2697, 32
  %2701 = ashr exact i64 %2700, 32
  store i64 %2701, i64* %RCX.i596, align 8
  store %struct.Memory* %loadMem_43d6a9, %struct.Memory** %MEMORY
  %loadMem_43d6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 33
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %2704 to i64*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 11
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %2708 = bitcast %union.anon* %2707 to %struct.anon.2*
  %DIL.i591 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2708, i32 0, i32 0
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 1
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %RAX.i592 = bitcast %union.anon* %2711 to i64*
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 5
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %RCX.i593 = bitcast %union.anon* %2714 to i64*
  %2715 = load i64, i64* %RAX.i592
  %2716 = load i64, i64* %RCX.i593
  %2717 = add i64 %2716, %2715
  %2718 = load i64, i64* %PC.i590
  %2719 = add i64 %2718, 4
  store i64 %2719, i64* %PC.i590
  %2720 = inttoptr i64 %2717 to i8*
  %2721 = load i8, i8* %2720
  store i8 %2721, i8* %DIL.i591, align 1
  store %struct.Memory* %loadMem_43d6ac, %struct.Memory** %MEMORY
  %loadMem_43d6b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 33
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %2724 to i64*
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 1
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %RAX.i588 = bitcast %union.anon* %2727 to i64*
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 15
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %2730 to i64*
  %2731 = load i64, i64* %RBP.i589
  %2732 = sub i64 %2731, 48
  %2733 = load i64, i64* %PC.i587
  %2734 = add i64 %2733, 4
  store i64 %2734, i64* %PC.i587
  %2735 = inttoptr i64 %2732 to i64*
  %2736 = load i64, i64* %2735
  store i64 %2736, i64* %RAX.i588, align 8
  store %struct.Memory* %loadMem_43d6b0, %struct.Memory** %MEMORY
  %loadMem_43d6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2738 = getelementptr inbounds %struct.GPR, %struct.GPR* %2737, i32 0, i32 33
  %2739 = getelementptr inbounds %struct.Reg, %struct.Reg* %2738, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %2739 to i64*
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 5
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %RCX.i585 = bitcast %union.anon* %2742 to i64*
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 15
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %2745 to i64*
  %2746 = load i64, i64* %RBP.i586
  %2747 = sub i64 %2746, 36
  %2748 = load i64, i64* %PC.i584
  %2749 = add i64 %2748, 4
  store i64 %2749, i64* %PC.i584
  %2750 = inttoptr i64 %2747 to i32*
  %2751 = load i32, i32* %2750
  %2752 = sext i32 %2751 to i64
  store i64 %2752, i64* %RCX.i585, align 8
  store %struct.Memory* %loadMem_43d6b4, %struct.Memory** %MEMORY
  %loadMem_43d6b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 33
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %2755 to i64*
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 1
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %RAX.i582 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 5
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RCX.i583 = bitcast %union.anon* %2761 to i64*
  %2762 = load i64, i64* %RAX.i582
  %2763 = load i64, i64* %RCX.i583
  %2764 = mul i64 %2763, 8
  %2765 = add i64 %2764, %2762
  %2766 = load i64, i64* %PC.i581
  %2767 = add i64 %2766, 4
  store i64 %2767, i64* %PC.i581
  %2768 = inttoptr i64 %2765 to i64*
  %2769 = load i64, i64* %2768
  store i64 %2769, i64* %RAX.i582, align 8
  store %struct.Memory* %loadMem_43d6b8, %struct.Memory** %MEMORY
  %loadMem_43d6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 33
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %2772 to i64*
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 5
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %RCX.i579 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 15
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %2778 to i64*
  %2779 = load i64, i64* %RBP.i580
  %2780 = sub i64 %2779, 32
  %2781 = load i64, i64* %PC.i578
  %2782 = add i64 %2781, 4
  store i64 %2782, i64* %PC.i578
  %2783 = inttoptr i64 %2780 to i32*
  %2784 = load i32, i32* %2783
  %2785 = sext i32 %2784 to i64
  store i64 %2785, i64* %RCX.i579, align 8
  store %struct.Memory* %loadMem_43d6bc, %struct.Memory** %MEMORY
  %loadMem_43d6c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 33
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %2788 to i64*
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 11
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %2792 = bitcast %union.anon* %2791 to %struct.anon.2*
  %DIL.i575 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2792, i32 0, i32 0
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2794 = getelementptr inbounds %struct.GPR, %struct.GPR* %2793, i32 0, i32 1
  %2795 = getelementptr inbounds %struct.Reg, %struct.Reg* %2794, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %2795 to i64*
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2797 = getelementptr inbounds %struct.GPR, %struct.GPR* %2796, i32 0, i32 5
  %2798 = getelementptr inbounds %struct.Reg, %struct.Reg* %2797, i32 0, i32 0
  %RCX.i577 = bitcast %union.anon* %2798 to i64*
  %2799 = load i64, i64* %RAX.i576
  %2800 = load i64, i64* %RCX.i577
  %2801 = add i64 %2800, %2799
  %2802 = load i8, i8* %DIL.i575
  %2803 = zext i8 %2802 to i64
  %2804 = load i64, i64* %PC.i574
  %2805 = add i64 %2804, 4
  store i64 %2805, i64* %PC.i574
  %2806 = inttoptr i64 %2801 to i8*
  store i8 %2802, i8* %2806
  store %struct.Memory* %loadMem_43d6c0, %struct.Memory** %MEMORY
  %loadMem_43d6c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 33
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 7
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %RDX.i572 = bitcast %union.anon* %2812 to i64*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 15
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %2815 to i64*
  %2816 = load i64, i64* %RBP.i573
  %2817 = sub i64 %2816, 40
  %2818 = load i64, i64* %PC.i571
  %2819 = add i64 %2818, 3
  store i64 %2819, i64* %PC.i571
  %2820 = inttoptr i64 %2817 to i32*
  %2821 = load i32, i32* %2820
  %2822 = zext i32 %2821 to i64
  store i64 %2822, i64* %RDX.i572, align 8
  store %struct.Memory* %loadMem_43d6c4, %struct.Memory** %MEMORY
  %loadMem_43d6c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 33
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 7
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %2829 = bitcast %union.anon* %2828 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2829, i32 0, i32 0
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 11
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %2833 = bitcast %union.anon* %2832 to %struct.anon.2*
  %DIL.i570 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2833, i32 0, i32 0
  %2834 = load i8, i8* %DL.i
  %2835 = zext i8 %2834 to i64
  %2836 = load i64, i64* %PC.i569
  %2837 = add i64 %2836, 3
  store i64 %2837, i64* %PC.i569
  store i8 %2834, i8* %DIL.i570, align 1
  store %struct.Memory* %loadMem_43d6c7, %struct.Memory** %MEMORY
  %loadMem_43d6ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2839 = getelementptr inbounds %struct.GPR, %struct.GPR* %2838, i32 0, i32 33
  %2840 = getelementptr inbounds %struct.Reg, %struct.Reg* %2839, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %2840 to i64*
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 1
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %RAX.i567 = bitcast %union.anon* %2843 to i64*
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 15
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %2846 to i64*
  %2847 = load i64, i64* %RBP.i568
  %2848 = sub i64 %2847, 48
  %2849 = load i64, i64* %PC.i566
  %2850 = add i64 %2849, 4
  store i64 %2850, i64* %PC.i566
  %2851 = inttoptr i64 %2848 to i64*
  %2852 = load i64, i64* %2851
  store i64 %2852, i64* %RAX.i567, align 8
  store %struct.Memory* %loadMem_43d6ca, %struct.Memory** %MEMORY
  %loadMem_43d6ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 33
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %2855 to i64*
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 5
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %RCX.i564 = bitcast %union.anon* %2858 to i64*
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 15
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %2861 to i64*
  %2862 = load i64, i64* %RBP.i565
  %2863 = sub i64 %2862, 36
  %2864 = load i64, i64* %PC.i563
  %2865 = add i64 %2864, 4
  store i64 %2865, i64* %PC.i563
  %2866 = inttoptr i64 %2863 to i32*
  %2867 = load i32, i32* %2866
  %2868 = sext i32 %2867 to i64
  store i64 %2868, i64* %RCX.i564, align 8
  store %struct.Memory* %loadMem_43d6ce, %struct.Memory** %MEMORY
  %loadMem_43d6d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 33
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %2871 to i64*
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2873 = getelementptr inbounds %struct.GPR, %struct.GPR* %2872, i32 0, i32 1
  %2874 = getelementptr inbounds %struct.Reg, %struct.Reg* %2873, i32 0, i32 0
  %RAX.i561 = bitcast %union.anon* %2874 to i64*
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 5
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %RCX.i562 = bitcast %union.anon* %2877 to i64*
  %2878 = load i64, i64* %RAX.i561
  %2879 = load i64, i64* %RCX.i562
  %2880 = mul i64 %2879, 8
  %2881 = add i64 %2880, %2878
  %2882 = load i64, i64* %PC.i560
  %2883 = add i64 %2882, 4
  store i64 %2883, i64* %PC.i560
  %2884 = inttoptr i64 %2881 to i64*
  %2885 = load i64, i64* %2884
  store i64 %2885, i64* %RAX.i561, align 8
  store %struct.Memory* %loadMem_43d6d2, %struct.Memory** %MEMORY
  %loadMem_43d6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 33
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %2888 to i64*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 5
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %RCX.i558 = bitcast %union.anon* %2891 to i64*
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 15
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %RBP.i559 = bitcast %union.anon* %2894 to i64*
  %2895 = load i64, i64* %RBP.i559
  %2896 = sub i64 %2895, 56
  %2897 = load i64, i64* %PC.i557
  %2898 = add i64 %2897, 4
  store i64 %2898, i64* %PC.i557
  %2899 = inttoptr i64 %2896 to i64*
  %2900 = load i64, i64* %2899
  store i64 %2900, i64* %RCX.i558, align 8
  store %struct.Memory* %loadMem_43d6d6, %struct.Memory** %MEMORY
  %loadMem_43d6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 33
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %2903 to i64*
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 9
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %RSI.i555 = bitcast %union.anon* %2906 to i64*
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 15
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %2909 to i64*
  %2910 = load i64, i64* %RBP.i556
  %2911 = sub i64 %2910, 36
  %2912 = load i64, i64* %PC.i554
  %2913 = add i64 %2912, 4
  store i64 %2913, i64* %PC.i554
  %2914 = inttoptr i64 %2911 to i32*
  %2915 = load i32, i32* %2914
  %2916 = sext i32 %2915 to i64
  store i64 %2916, i64* %RSI.i555, align 8
  store %struct.Memory* %loadMem_43d6da, %struct.Memory** %MEMORY
  %loadMem_43d6de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 33
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %2919 to i64*
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 5
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %RCX.i551 = bitcast %union.anon* %2922 to i64*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 7
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %RDX.i552 = bitcast %union.anon* %2925 to i64*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 9
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %RSI.i553 = bitcast %union.anon* %2928 to i64*
  %2929 = load i64, i64* %RCX.i551
  %2930 = load i64, i64* %RSI.i553
  %2931 = mul i64 %2930, 4
  %2932 = add i64 %2931, %2929
  %2933 = load i64, i64* %PC.i550
  %2934 = add i64 %2933, 3
  store i64 %2934, i64* %PC.i550
  %2935 = inttoptr i64 %2932 to i32*
  %2936 = load i32, i32* %2935
  %2937 = zext i32 %2936 to i64
  store i64 %2937, i64* %RDX.i552, align 8
  store %struct.Memory* %loadMem_43d6de, %struct.Memory** %MEMORY
  %loadMem_43d6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 7
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %RDX.i549 = bitcast %union.anon* %2943 to i64*
  %2944 = load i64, i64* %RDX.i549
  %2945 = load i64, i64* %PC.i548
  %2946 = add i64 %2945, 3
  store i64 %2946, i64* %PC.i548
  %2947 = trunc i64 %2944 to i32
  %2948 = sub i32 %2947, 1
  %2949 = zext i32 %2948 to i64
  store i64 %2949, i64* %RDX.i549, align 8
  %2950 = icmp ult i32 %2947, 1
  %2951 = zext i1 %2950 to i8
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2951, i8* %2952, align 1
  %2953 = and i32 %2948, 255
  %2954 = call i32 @llvm.ctpop.i32(i32 %2953)
  %2955 = trunc i32 %2954 to i8
  %2956 = and i8 %2955, 1
  %2957 = xor i8 %2956, 1
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2957, i8* %2958, align 1
  %2959 = xor i64 1, %2944
  %2960 = trunc i64 %2959 to i32
  %2961 = xor i32 %2960, %2948
  %2962 = lshr i32 %2961, 4
  %2963 = trunc i32 %2962 to i8
  %2964 = and i8 %2963, 1
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2964, i8* %2965, align 1
  %2966 = icmp eq i32 %2948, 0
  %2967 = zext i1 %2966 to i8
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2967, i8* %2968, align 1
  %2969 = lshr i32 %2948, 31
  %2970 = trunc i32 %2969 to i8
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2970, i8* %2971, align 1
  %2972 = lshr i32 %2947, 31
  %2973 = xor i32 %2969, %2972
  %2974 = add i32 %2973, %2972
  %2975 = icmp eq i32 %2974, 2
  %2976 = zext i1 %2975 to i8
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2976, i8* %2977, align 1
  store %struct.Memory* %loadMem_43d6e1, %struct.Memory** %MEMORY
  %loadMem_43d6e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 33
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %2980 to i64*
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 7
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %EDX.i546 = bitcast %union.anon* %2983 to i32*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 5
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %RCX.i547 = bitcast %union.anon* %2986 to i64*
  %2987 = load i32, i32* %EDX.i546
  %2988 = zext i32 %2987 to i64
  %2989 = load i64, i64* %PC.i545
  %2990 = add i64 %2989, 3
  store i64 %2990, i64* %PC.i545
  %2991 = shl i64 %2988, 32
  %2992 = ashr exact i64 %2991, 32
  store i64 %2992, i64* %RCX.i547, align 8
  store %struct.Memory* %loadMem_43d6e4, %struct.Memory** %MEMORY
  %loadMem_43d6e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 33
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %2995 to i64*
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 11
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %2999 = bitcast %union.anon* %2998 to %struct.anon.2*
  %DIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2999, i32 0, i32 0
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 1
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %RAX.i543 = bitcast %union.anon* %3002 to i64*
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 5
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %RCX.i544 = bitcast %union.anon* %3005 to i64*
  %3006 = load i64, i64* %RAX.i543
  %3007 = load i64, i64* %RCX.i544
  %3008 = add i64 %3007, %3006
  %3009 = load i8, i8* %DIL.i
  %3010 = zext i8 %3009 to i64
  %3011 = load i64, i64* %PC.i542
  %3012 = add i64 %3011, 4
  store i64 %3012, i64* %PC.i542
  %3013 = inttoptr i64 %3008 to i8*
  store i8 %3009, i8* %3013
  store %struct.Memory* %loadMem_43d6e7, %struct.Memory** %MEMORY
  br label %block_.L_43d6eb

block_.L_43d6eb:                                  ; preds = %block_.L_43d65b, %block_.L_43d656
  %loadMem_43d6eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 33
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %3016 to i64*
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 1
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %3019 to i64*
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 15
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %3022 to i64*
  %3023 = load i64, i64* %RBP.i541
  %3024 = sub i64 %3023, 36
  %3025 = load i64, i64* %PC.i539
  %3026 = add i64 %3025, 3
  store i64 %3026, i64* %PC.i539
  %3027 = inttoptr i64 %3024 to i32*
  %3028 = load i32, i32* %3027
  %3029 = zext i32 %3028 to i64
  store i64 %3029, i64* %RAX.i540, align 8
  store %struct.Memory* %loadMem_43d6eb, %struct.Memory** %MEMORY
  %loadMem_43d6ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3031 = getelementptr inbounds %struct.GPR, %struct.GPR* %3030, i32 0, i32 33
  %3032 = getelementptr inbounds %struct.Reg, %struct.Reg* %3031, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %3032 to i64*
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 1
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %3035 to i64*
  %3036 = load i64, i64* %RAX.i538
  %3037 = load i64, i64* %PC.i537
  %3038 = add i64 %3037, 3
  store i64 %3038, i64* %PC.i537
  %3039 = trunc i64 %3036 to i32
  %3040 = add i32 1, %3039
  %3041 = zext i32 %3040 to i64
  store i64 %3041, i64* %RAX.i538, align 8
  %3042 = icmp ult i32 %3040, %3039
  %3043 = icmp ult i32 %3040, 1
  %3044 = or i1 %3042, %3043
  %3045 = zext i1 %3044 to i8
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3045, i8* %3046, align 1
  %3047 = and i32 %3040, 255
  %3048 = call i32 @llvm.ctpop.i32(i32 %3047)
  %3049 = trunc i32 %3048 to i8
  %3050 = and i8 %3049, 1
  %3051 = xor i8 %3050, 1
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3051, i8* %3052, align 1
  %3053 = xor i64 1, %3036
  %3054 = trunc i64 %3053 to i32
  %3055 = xor i32 %3054, %3040
  %3056 = lshr i32 %3055, 4
  %3057 = trunc i32 %3056 to i8
  %3058 = and i8 %3057, 1
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3058, i8* %3059, align 1
  %3060 = icmp eq i32 %3040, 0
  %3061 = zext i1 %3060 to i8
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3061, i8* %3062, align 1
  %3063 = lshr i32 %3040, 31
  %3064 = trunc i32 %3063 to i8
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3064, i8* %3065, align 1
  %3066 = lshr i32 %3039, 31
  %3067 = xor i32 %3063, %3066
  %3068 = add i32 %3067, %3063
  %3069 = icmp eq i32 %3068, 2
  %3070 = zext i1 %3069 to i8
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3070, i8* %3071, align 1
  store %struct.Memory* %loadMem_43d6ee, %struct.Memory** %MEMORY
  %loadMem_43d6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 33
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3074 to i64*
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 1
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %EAX.i535 = bitcast %union.anon* %3077 to i32*
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 15
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %3080 to i64*
  %3081 = load i64, i64* %RBP.i536
  %3082 = sub i64 %3081, 36
  %3083 = load i32, i32* %EAX.i535
  %3084 = zext i32 %3083 to i64
  %3085 = load i64, i64* %PC.i534
  %3086 = add i64 %3085, 3
  store i64 %3086, i64* %PC.i534
  %3087 = inttoptr i64 %3082 to i32*
  store i32 %3083, i32* %3087
  store %struct.Memory* %loadMem_43d6f1, %struct.Memory** %MEMORY
  %loadMem_43d6f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 33
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %3090 to i64*
  %3091 = load i64, i64* %PC.i533
  %3092 = add i64 %3091, -201
  %3093 = load i64, i64* %PC.i533
  %3094 = add i64 %3093, 5
  store i64 %3094, i64* %PC.i533
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3092, i64* %3095, align 8
  store %struct.Memory* %loadMem_43d6f4, %struct.Memory** %MEMORY
  br label %block_.L_43d62b

block_.L_43d6f9:                                  ; preds = %block_.L_43d62b
  %loadMem_43d6f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 33
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %3098 to i64*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 15
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %3101 to i64*
  %3102 = load i64, i64* %RBP.i532
  %3103 = sub i64 %3102, 36
  %3104 = load i64, i64* %PC.i531
  %3105 = add i64 %3104, 7
  store i64 %3105, i64* %PC.i531
  %3106 = inttoptr i64 %3103 to i32*
  store i32 0, i32* %3106
  store %struct.Memory* %loadMem_43d6f9, %struct.Memory** %MEMORY
  br label %block_.L_43d700

block_.L_43d700:                                  ; preds = %block_43d70a, %block_.L_43d6f9
  %loadMem_43d700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 33
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %3109 to i64*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 15
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %3112 to i64*
  %3113 = load i64, i64* %RBP.i530
  %3114 = sub i64 %3113, 36
  %3115 = load i64, i64* %PC.i529
  %3116 = add i64 %3115, 4
  store i64 %3116, i64* %PC.i529
  %3117 = inttoptr i64 %3114 to i32*
  %3118 = load i32, i32* %3117
  %3119 = sub i32 %3118, 26
  %3120 = icmp ult i32 %3118, 26
  %3121 = zext i1 %3120 to i8
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3121, i8* %3122, align 1
  %3123 = and i32 %3119, 255
  %3124 = call i32 @llvm.ctpop.i32(i32 %3123)
  %3125 = trunc i32 %3124 to i8
  %3126 = and i8 %3125, 1
  %3127 = xor i8 %3126, 1
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3127, i8* %3128, align 1
  %3129 = xor i32 %3118, 26
  %3130 = xor i32 %3129, %3119
  %3131 = lshr i32 %3130, 4
  %3132 = trunc i32 %3131 to i8
  %3133 = and i8 %3132, 1
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3133, i8* %3134, align 1
  %3135 = icmp eq i32 %3119, 0
  %3136 = zext i1 %3135 to i8
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3136, i8* %3137, align 1
  %3138 = lshr i32 %3119, 31
  %3139 = trunc i32 %3138 to i8
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3139, i8* %3140, align 1
  %3141 = lshr i32 %3118, 31
  %3142 = xor i32 %3138, %3141
  %3143 = add i32 %3142, %3141
  %3144 = icmp eq i32 %3143, 2
  %3145 = zext i1 %3144 to i8
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3145, i8* %3146, align 1
  store %struct.Memory* %loadMem_43d700, %struct.Memory** %MEMORY
  %loadMem_43d704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3148 = getelementptr inbounds %struct.GPR, %struct.GPR* %3147, i32 0, i32 33
  %3149 = getelementptr inbounds %struct.Reg, %struct.Reg* %3148, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %3149 to i64*
  %3150 = load i64, i64* %PC.i528
  %3151 = add i64 %3150, 29
  %3152 = load i64, i64* %PC.i528
  %3153 = add i64 %3152, 6
  %3154 = load i64, i64* %PC.i528
  %3155 = add i64 %3154, 6
  store i64 %3155, i64* %PC.i528
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3157 = load i8, i8* %3156, align 1
  %3158 = icmp ne i8 %3157, 0
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3160 = load i8, i8* %3159, align 1
  %3161 = icmp ne i8 %3160, 0
  %3162 = xor i1 %3158, %3161
  %3163 = xor i1 %3162, true
  %3164 = zext i1 %3163 to i8
  store i8 %3164, i8* %BRANCH_TAKEN, align 1
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3166 = select i1 %3162, i64 %3153, i64 %3151
  store i64 %3166, i64* %3165, align 8
  store %struct.Memory* %loadMem_43d704, %struct.Memory** %MEMORY
  %loadBr_43d704 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d704 = icmp eq i8 %loadBr_43d704, 1
  br i1 %cmpBr_43d704, label %block_.L_43d721, label %block_43d70a

block_43d70a:                                     ; preds = %block_.L_43d700
  %loadMem_43d70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 33
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %3169 to i64*
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 1
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %3172 to i64*
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 15
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %3175 to i64*
  %3176 = load i64, i64* %RBP.i527
  %3177 = sub i64 %3176, 36
  %3178 = load i64, i64* %PC.i525
  %3179 = add i64 %3178, 4
  store i64 %3179, i64* %PC.i525
  %3180 = inttoptr i64 %3177 to i32*
  %3181 = load i32, i32* %3180
  %3182 = sext i32 %3181 to i64
  store i64 %3182, i64* %RAX.i526, align 8
  store %struct.Memory* %loadMem_43d70a, %struct.Memory** %MEMORY
  %loadMem_43d70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 33
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 1
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %RAX.i523 = bitcast %union.anon* %3188 to i64*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 15
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %RBP.i524 = bitcast %union.anon* %3191 to i64*
  %3192 = load i64, i64* %RBP.i524
  %3193 = load i64, i64* %RAX.i523
  %3194 = add i64 %3192, -96
  %3195 = add i64 %3194, %3193
  %3196 = load i64, i64* %PC.i522
  %3197 = add i64 %3196, 5
  store i64 %3197, i64* %PC.i522
  %3198 = inttoptr i64 %3195 to i8*
  store i8 0, i8* %3198
  store %struct.Memory* %loadMem_43d70e, %struct.Memory** %MEMORY
  %loadMem_43d713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 33
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %3201 to i64*
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 1
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %RAX.i520 = bitcast %union.anon* %3204 to i64*
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 15
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %3207 to i64*
  %3208 = load i64, i64* %RBP.i521
  %3209 = sub i64 %3208, 36
  %3210 = load i64, i64* %PC.i519
  %3211 = add i64 %3210, 3
  store i64 %3211, i64* %PC.i519
  %3212 = inttoptr i64 %3209 to i32*
  %3213 = load i32, i32* %3212
  %3214 = zext i32 %3213 to i64
  store i64 %3214, i64* %RAX.i520, align 8
  store %struct.Memory* %loadMem_43d713, %struct.Memory** %MEMORY
  %loadMem_43d716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 33
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %3217 to i64*
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3219 = getelementptr inbounds %struct.GPR, %struct.GPR* %3218, i32 0, i32 1
  %3220 = getelementptr inbounds %struct.Reg, %struct.Reg* %3219, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %3220 to i64*
  %3221 = load i64, i64* %RAX.i518
  %3222 = load i64, i64* %PC.i517
  %3223 = add i64 %3222, 3
  store i64 %3223, i64* %PC.i517
  %3224 = trunc i64 %3221 to i32
  %3225 = add i32 1, %3224
  %3226 = zext i32 %3225 to i64
  store i64 %3226, i64* %RAX.i518, align 8
  %3227 = icmp ult i32 %3225, %3224
  %3228 = icmp ult i32 %3225, 1
  %3229 = or i1 %3227, %3228
  %3230 = zext i1 %3229 to i8
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3230, i8* %3231, align 1
  %3232 = and i32 %3225, 255
  %3233 = call i32 @llvm.ctpop.i32(i32 %3232)
  %3234 = trunc i32 %3233 to i8
  %3235 = and i8 %3234, 1
  %3236 = xor i8 %3235, 1
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3236, i8* %3237, align 1
  %3238 = xor i64 1, %3221
  %3239 = trunc i64 %3238 to i32
  %3240 = xor i32 %3239, %3225
  %3241 = lshr i32 %3240, 4
  %3242 = trunc i32 %3241 to i8
  %3243 = and i8 %3242, 1
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3243, i8* %3244, align 1
  %3245 = icmp eq i32 %3225, 0
  %3246 = zext i1 %3245 to i8
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3246, i8* %3247, align 1
  %3248 = lshr i32 %3225, 31
  %3249 = trunc i32 %3248 to i8
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3249, i8* %3250, align 1
  %3251 = lshr i32 %3224, 31
  %3252 = xor i32 %3248, %3251
  %3253 = add i32 %3252, %3248
  %3254 = icmp eq i32 %3253, 2
  %3255 = zext i1 %3254 to i8
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3255, i8* %3256, align 1
  store %struct.Memory* %loadMem_43d716, %struct.Memory** %MEMORY
  %loadMem_43d719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 33
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %3259 to i64*
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 1
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %EAX.i515 = bitcast %union.anon* %3262 to i32*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 15
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %3265 to i64*
  %3266 = load i64, i64* %RBP.i516
  %3267 = sub i64 %3266, 36
  %3268 = load i32, i32* %EAX.i515
  %3269 = zext i32 %3268 to i64
  %3270 = load i64, i64* %PC.i514
  %3271 = add i64 %3270, 3
  store i64 %3271, i64* %PC.i514
  %3272 = inttoptr i64 %3267 to i32*
  store i32 %3268, i32* %3272
  store %struct.Memory* %loadMem_43d719, %struct.Memory** %MEMORY
  %loadMem_43d71c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 33
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %3275 to i64*
  %3276 = load i64, i64* %PC.i513
  %3277 = add i64 %3276, -28
  %3278 = load i64, i64* %PC.i513
  %3279 = add i64 %3278, 5
  store i64 %3279, i64* %PC.i513
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3277, i64* %3280, align 8
  store %struct.Memory* %loadMem_43d71c, %struct.Memory** %MEMORY
  br label %block_.L_43d700

block_.L_43d721:                                  ; preds = %block_.L_43d700
  %loadMem_43d721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 33
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %3283 to i64*
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 15
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %3286 to i64*
  %3287 = load i64, i64* %RBP.i512
  %3288 = sub i64 %3287, 100
  %3289 = load i64, i64* %PC.i511
  %3290 = add i64 %3289, 7
  store i64 %3290, i64* %PC.i511
  %3291 = inttoptr i64 %3288 to i32*
  store i32 1, i32* %3291
  store %struct.Memory* %loadMem_43d721, %struct.Memory** %MEMORY
  %loadMem_43d728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 33
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %3294 to i64*
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 1
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %3297 to i64*
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 15
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %3300 to i64*
  %3301 = load i64, i64* %RBP.i510
  %3302 = sub i64 %3301, 69
  %3303 = load i64, i64* %PC.i508
  %3304 = add i64 %3303, 4
  store i64 %3304, i64* %PC.i508
  %3305 = inttoptr i64 %3302 to i8*
  %3306 = load i8, i8* %3305
  %3307 = sext i8 %3306 to i64
  %3308 = and i64 %3307, 4294967295
  store i64 %3308, i64* %RAX.i509, align 8
  store %struct.Memory* %loadMem_43d728, %struct.Memory** %MEMORY
  %loadMem_43d72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 33
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %3311 to i64*
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 1
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %EAX.i506 = bitcast %union.anon* %3314 to i32*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 5
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %RCX.i507 = bitcast %union.anon* %3317 to i64*
  %3318 = load i32, i32* %EAX.i506
  %3319 = zext i32 %3318 to i64
  %3320 = load i64, i64* %PC.i505
  %3321 = add i64 %3320, 3
  store i64 %3321, i64* %PC.i505
  %3322 = shl i64 %3319, 32
  %3323 = ashr exact i64 %3322, 32
  store i64 %3323, i64* %RCX.i507, align 8
  store %struct.Memory* %loadMem_43d72c, %struct.Memory** %MEMORY
  %loadMem_43d72f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 33
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 5
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RCX.i503 = bitcast %union.anon* %3329 to i64*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 15
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %3332 to i64*
  %3333 = load i64, i64* %RBP.i504
  %3334 = load i64, i64* %RCX.i503
  %3335 = add i64 %3333, -96
  %3336 = add i64 %3335, %3334
  %3337 = load i64, i64* %PC.i502
  %3338 = add i64 %3337, 5
  store i64 %3338, i64* %PC.i502
  %3339 = inttoptr i64 %3336 to i8*
  store i8 1, i8* %3339
  store %struct.Memory* %loadMem_43d72f, %struct.Memory** %MEMORY
  br label %block_.L_43d734

block_.L_43d734:                                  ; preds = %block_.L_43d7c1, %block_.L_43d721
  %loadMem_43d734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 33
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %3342 to i64*
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 15
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %3345 to i64*
  %3346 = load i64, i64* %RBP.i501
  %3347 = sub i64 %3346, 100
  %3348 = load i64, i64* %PC.i500
  %3349 = add i64 %3348, 4
  store i64 %3349, i64* %PC.i500
  %3350 = inttoptr i64 %3347 to i32*
  %3351 = load i32, i32* %3350
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3352, align 1
  %3353 = and i32 %3351, 255
  %3354 = call i32 @llvm.ctpop.i32(i32 %3353)
  %3355 = trunc i32 %3354 to i8
  %3356 = and i8 %3355, 1
  %3357 = xor i8 %3356, 1
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3357, i8* %3358, align 1
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3359, align 1
  %3360 = icmp eq i32 %3351, 0
  %3361 = zext i1 %3360 to i8
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3361, i8* %3362, align 1
  %3363 = lshr i32 %3351, 31
  %3364 = trunc i32 %3363 to i8
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3364, i8* %3365, align 1
  %3366 = lshr i32 %3351, 31
  %3367 = xor i32 %3363, %3366
  %3368 = add i32 %3367, %3366
  %3369 = icmp eq i32 %3368, 2
  %3370 = zext i1 %3369 to i8
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3370, i8* %3371, align 1
  store %struct.Memory* %loadMem_43d734, %struct.Memory** %MEMORY
  %loadMem_43d738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 33
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %3374 to i64*
  %3375 = load i64, i64* %PC.i499
  %3376 = add i64 %3375, 142
  %3377 = load i64, i64* %PC.i499
  %3378 = add i64 %3377, 6
  %3379 = load i64, i64* %PC.i499
  %3380 = add i64 %3379, 6
  store i64 %3380, i64* %PC.i499
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3382 = load i8, i8* %3381, align 1
  store i8 %3382, i8* %BRANCH_TAKEN, align 1
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3384 = icmp ne i8 %3382, 0
  %3385 = select i1 %3384, i64 %3376, i64 %3378
  store i64 %3385, i64* %3383, align 8
  store %struct.Memory* %loadMem_43d738, %struct.Memory** %MEMORY
  %loadBr_43d738 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d738 = icmp eq i8 %loadBr_43d738, 1
  br i1 %cmpBr_43d738, label %block_.L_43d7c6, label %block_43d73e

block_43d73e:                                     ; preds = %block_.L_43d734
  %loadMem_43d73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 33
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %3388 to i64*
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 15
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %3391 to i64*
  %3392 = load i64, i64* %RBP.i498
  %3393 = sub i64 %3392, 100
  %3394 = load i64, i64* %PC.i497
  %3395 = add i64 %3394, 7
  store i64 %3395, i64* %PC.i497
  %3396 = inttoptr i64 %3393 to i32*
  store i32 0, i32* %3396
  store %struct.Memory* %loadMem_43d73e, %struct.Memory** %MEMORY
  %loadMem_43d745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 33
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %3399 to i64*
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 15
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %3402 to i64*
  %3403 = load i64, i64* %RBP.i496
  %3404 = sub i64 %3403, 36
  %3405 = load i64, i64* %PC.i495
  %3406 = add i64 %3405, 7
  store i64 %3406, i64* %PC.i495
  %3407 = inttoptr i64 %3404 to i32*
  store i32 0, i32* %3407
  store %struct.Memory* %loadMem_43d745, %struct.Memory** %MEMORY
  br label %block_.L_43d74c

block_.L_43d74c:                                  ; preds = %block_.L_43d7b3, %block_43d73e
  %loadMem_43d74c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 33
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 15
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %3413 to i64*
  %3414 = load i64, i64* %RBP.i494
  %3415 = sub i64 %3414, 36
  %3416 = load i64, i64* %PC.i493
  %3417 = add i64 %3416, 4
  store i64 %3417, i64* %PC.i493
  %3418 = inttoptr i64 %3415 to i32*
  %3419 = load i32, i32* %3418
  %3420 = sub i32 %3419, 26
  %3421 = icmp ult i32 %3419, 26
  %3422 = zext i1 %3421 to i8
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3422, i8* %3423, align 1
  %3424 = and i32 %3420, 255
  %3425 = call i32 @llvm.ctpop.i32(i32 %3424)
  %3426 = trunc i32 %3425 to i8
  %3427 = and i8 %3426, 1
  %3428 = xor i8 %3427, 1
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3428, i8* %3429, align 1
  %3430 = xor i32 %3419, 26
  %3431 = xor i32 %3430, %3420
  %3432 = lshr i32 %3431, 4
  %3433 = trunc i32 %3432 to i8
  %3434 = and i8 %3433, 1
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3434, i8* %3435, align 1
  %3436 = icmp eq i32 %3420, 0
  %3437 = zext i1 %3436 to i8
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3437, i8* %3438, align 1
  %3439 = lshr i32 %3420, 31
  %3440 = trunc i32 %3439 to i8
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3440, i8* %3441, align 1
  %3442 = lshr i32 %3419, 31
  %3443 = xor i32 %3439, %3442
  %3444 = add i32 %3443, %3442
  %3445 = icmp eq i32 %3444, 2
  %3446 = zext i1 %3445 to i8
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3446, i8* %3447, align 1
  store %struct.Memory* %loadMem_43d74c, %struct.Memory** %MEMORY
  %loadMem_43d750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 33
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %3450 to i64*
  %3451 = load i64, i64* %PC.i492
  %3452 = add i64 %3451, 113
  %3453 = load i64, i64* %PC.i492
  %3454 = add i64 %3453, 6
  %3455 = load i64, i64* %PC.i492
  %3456 = add i64 %3455, 6
  store i64 %3456, i64* %PC.i492
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3458 = load i8, i8* %3457, align 1
  %3459 = icmp ne i8 %3458, 0
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3461 = load i8, i8* %3460, align 1
  %3462 = icmp ne i8 %3461, 0
  %3463 = xor i1 %3459, %3462
  %3464 = xor i1 %3463, true
  %3465 = zext i1 %3464 to i8
  store i8 %3465, i8* %BRANCH_TAKEN, align 1
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3467 = select i1 %3463, i64 %3454, i64 %3452
  store i64 %3467, i64* %3466, align 8
  store %struct.Memory* %loadMem_43d750, %struct.Memory** %MEMORY
  %loadBr_43d750 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d750 = icmp eq i8 %loadBr_43d750, 1
  br i1 %cmpBr_43d750, label %block_.L_43d7c1, label %block_43d756

block_43d756:                                     ; preds = %block_.L_43d74c
  %loadMem_43d756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 33
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %3470 to i64*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 1
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %RAX.i490 = bitcast %union.anon* %3473 to i64*
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3475 = getelementptr inbounds %struct.GPR, %struct.GPR* %3474, i32 0, i32 15
  %3476 = getelementptr inbounds %struct.Reg, %struct.Reg* %3475, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %3476 to i64*
  %3477 = load i64, i64* %RBP.i491
  %3478 = sub i64 %3477, 48
  %3479 = load i64, i64* %PC.i489
  %3480 = add i64 %3479, 4
  store i64 %3480, i64* %PC.i489
  %3481 = inttoptr i64 %3478 to i64*
  %3482 = load i64, i64* %3481
  store i64 %3482, i64* %RAX.i490, align 8
  store %struct.Memory* %loadMem_43d756, %struct.Memory** %MEMORY
  %loadMem_43d75a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3484 = getelementptr inbounds %struct.GPR, %struct.GPR* %3483, i32 0, i32 33
  %3485 = getelementptr inbounds %struct.Reg, %struct.Reg* %3484, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %3485 to i64*
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3487 = getelementptr inbounds %struct.GPR, %struct.GPR* %3486, i32 0, i32 5
  %3488 = getelementptr inbounds %struct.Reg, %struct.Reg* %3487, i32 0, i32 0
  %RCX.i487 = bitcast %union.anon* %3488 to i64*
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 15
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %3491 to i64*
  %3492 = load i64, i64* %RBP.i488
  %3493 = sub i64 %3492, 36
  %3494 = load i64, i64* %PC.i486
  %3495 = add i64 %3494, 4
  store i64 %3495, i64* %PC.i486
  %3496 = inttoptr i64 %3493 to i32*
  %3497 = load i32, i32* %3496
  %3498 = sext i32 %3497 to i64
  store i64 %3498, i64* %RCX.i487, align 8
  store %struct.Memory* %loadMem_43d75a, %struct.Memory** %MEMORY
  %loadMem_43d75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 33
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %3501 to i64*
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 1
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %RAX.i484 = bitcast %union.anon* %3504 to i64*
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3506 = getelementptr inbounds %struct.GPR, %struct.GPR* %3505, i32 0, i32 5
  %3507 = getelementptr inbounds %struct.Reg, %struct.Reg* %3506, i32 0, i32 0
  %RCX.i485 = bitcast %union.anon* %3507 to i64*
  %3508 = load i64, i64* %RAX.i484
  %3509 = load i64, i64* %RCX.i485
  %3510 = mul i64 %3509, 8
  %3511 = add i64 %3510, %3508
  %3512 = load i64, i64* %PC.i483
  %3513 = add i64 %3512, 4
  store i64 %3513, i64* %PC.i483
  %3514 = inttoptr i64 %3511 to i64*
  %3515 = load i64, i64* %3514
  store i64 %3515, i64* %RAX.i484, align 8
  store %struct.Memory* %loadMem_43d75e, %struct.Memory** %MEMORY
  %loadMem_43d762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 33
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %3518 to i64*
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 5
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %RCX.i481 = bitcast %union.anon* %3521 to i64*
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 15
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %3524 to i64*
  %3525 = load i64, i64* %RBP.i482
  %3526 = sub i64 %3525, 56
  %3527 = load i64, i64* %PC.i480
  %3528 = add i64 %3527, 4
  store i64 %3528, i64* %PC.i480
  %3529 = inttoptr i64 %3526 to i64*
  %3530 = load i64, i64* %3529
  store i64 %3530, i64* %RCX.i481, align 8
  store %struct.Memory* %loadMem_43d762, %struct.Memory** %MEMORY
  %loadMem_43d766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 33
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %3533 to i64*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 7
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %RDX.i478 = bitcast %union.anon* %3536 to i64*
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 15
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %3539 to i64*
  %3540 = load i64, i64* %RBP.i479
  %3541 = sub i64 %3540, 36
  %3542 = load i64, i64* %PC.i477
  %3543 = add i64 %3542, 4
  store i64 %3543, i64* %PC.i477
  %3544 = inttoptr i64 %3541 to i32*
  %3545 = load i32, i32* %3544
  %3546 = sext i32 %3545 to i64
  store i64 %3546, i64* %RDX.i478, align 8
  store %struct.Memory* %loadMem_43d766, %struct.Memory** %MEMORY
  %loadMem_43d76a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 33
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %3549 to i64*
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3551 = getelementptr inbounds %struct.GPR, %struct.GPR* %3550, i32 0, i32 5
  %3552 = getelementptr inbounds %struct.Reg, %struct.Reg* %3551, i32 0, i32 0
  %RCX.i474 = bitcast %union.anon* %3552 to i64*
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3554 = getelementptr inbounds %struct.GPR, %struct.GPR* %3553, i32 0, i32 7
  %3555 = getelementptr inbounds %struct.Reg, %struct.Reg* %3554, i32 0, i32 0
  %RDX.i475 = bitcast %union.anon* %3555 to i64*
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 9
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %RSI.i476 = bitcast %union.anon* %3558 to i64*
  %3559 = load i64, i64* %RCX.i474
  %3560 = load i64, i64* %RDX.i475
  %3561 = mul i64 %3560, 4
  %3562 = add i64 %3561, %3559
  %3563 = load i64, i64* %PC.i473
  %3564 = add i64 %3563, 3
  store i64 %3564, i64* %PC.i473
  %3565 = inttoptr i64 %3562 to i32*
  %3566 = load i32, i32* %3565
  %3567 = zext i32 %3566 to i64
  store i64 %3567, i64* %RSI.i476, align 8
  store %struct.Memory* %loadMem_43d76a, %struct.Memory** %MEMORY
  %loadMem_43d76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 33
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %3570 to i64*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 9
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RSI.i472 = bitcast %union.anon* %3573 to i64*
  %3574 = load i64, i64* %RSI.i472
  %3575 = load i64, i64* %PC.i471
  %3576 = add i64 %3575, 3
  store i64 %3576, i64* %PC.i471
  %3577 = trunc i64 %3574 to i32
  %3578 = sub i32 %3577, 1
  %3579 = zext i32 %3578 to i64
  store i64 %3579, i64* %RSI.i472, align 8
  %3580 = icmp ult i32 %3577, 1
  %3581 = zext i1 %3580 to i8
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3581, i8* %3582, align 1
  %3583 = and i32 %3578, 255
  %3584 = call i32 @llvm.ctpop.i32(i32 %3583)
  %3585 = trunc i32 %3584 to i8
  %3586 = and i8 %3585, 1
  %3587 = xor i8 %3586, 1
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3587, i8* %3588, align 1
  %3589 = xor i64 1, %3574
  %3590 = trunc i64 %3589 to i32
  %3591 = xor i32 %3590, %3578
  %3592 = lshr i32 %3591, 4
  %3593 = trunc i32 %3592 to i8
  %3594 = and i8 %3593, 1
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3594, i8* %3595, align 1
  %3596 = icmp eq i32 %3578, 0
  %3597 = zext i1 %3596 to i8
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3597, i8* %3598, align 1
  %3599 = lshr i32 %3578, 31
  %3600 = trunc i32 %3599 to i8
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3600, i8* %3601, align 1
  %3602 = lshr i32 %3577, 31
  %3603 = xor i32 %3599, %3602
  %3604 = add i32 %3603, %3602
  %3605 = icmp eq i32 %3604, 2
  %3606 = zext i1 %3605 to i8
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3606, i8* %3607, align 1
  store %struct.Memory* %loadMem_43d76d, %struct.Memory** %MEMORY
  %loadMem_43d770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3609 = getelementptr inbounds %struct.GPR, %struct.GPR* %3608, i32 0, i32 33
  %3610 = getelementptr inbounds %struct.Reg, %struct.Reg* %3609, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %3610 to i64*
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 9
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %ESI.i469 = bitcast %union.anon* %3613 to i32*
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 5
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %3616 to i64*
  %3617 = load i32, i32* %ESI.i469
  %3618 = zext i32 %3617 to i64
  %3619 = load i64, i64* %PC.i468
  %3620 = add i64 %3619, 3
  store i64 %3620, i64* %PC.i468
  %3621 = shl i64 %3618, 32
  %3622 = ashr exact i64 %3621, 32
  store i64 %3622, i64* %RCX.i470, align 8
  store %struct.Memory* %loadMem_43d770, %struct.Memory** %MEMORY
  %loadMem_43d773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 33
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %3625 to i64*
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 1
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %3628 to i64*
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 5
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %3631 to i64*
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3633 = getelementptr inbounds %struct.GPR, %struct.GPR* %3632, i32 0, i32 9
  %3634 = getelementptr inbounds %struct.Reg, %struct.Reg* %3633, i32 0, i32 0
  %RSI.i467 = bitcast %union.anon* %3634 to i64*
  %3635 = load i64, i64* %RAX.i465
  %3636 = load i64, i64* %RCX.i466
  %3637 = add i64 %3636, %3635
  %3638 = load i64, i64* %PC.i464
  %3639 = add i64 %3638, 4
  store i64 %3639, i64* %PC.i464
  %3640 = inttoptr i64 %3637 to i8*
  %3641 = load i8, i8* %3640
  %3642 = sext i8 %3641 to i64
  %3643 = and i64 %3642, 4294967295
  store i64 %3643, i64* %RSI.i467, align 8
  store %struct.Memory* %loadMem_43d773, %struct.Memory** %MEMORY
  %loadMem_43d777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 33
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %3646 to i64*
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 9
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %ESI.i462 = bitcast %union.anon* %3649 to i32*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 15
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %3652 to i64*
  %3653 = load i64, i64* %RBP.i463
  %3654 = sub i64 %3653, 40
  %3655 = load i32, i32* %ESI.i462
  %3656 = zext i32 %3655 to i64
  %3657 = load i64, i64* %PC.i461
  %3658 = add i64 %3657, 3
  store i64 %3658, i64* %PC.i461
  %3659 = inttoptr i64 %3654 to i32*
  store i32 %3655, i32* %3659
  store %struct.Memory* %loadMem_43d777, %struct.Memory** %MEMORY
  %loadMem_43d77a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3661 = getelementptr inbounds %struct.GPR, %struct.GPR* %3660, i32 0, i32 33
  %3662 = getelementptr inbounds %struct.Reg, %struct.Reg* %3661, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %3662 to i64*
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3664 = getelementptr inbounds %struct.GPR, %struct.GPR* %3663, i32 0, i32 1
  %3665 = getelementptr inbounds %struct.Reg, %struct.Reg* %3664, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %3665 to i64*
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 15
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %3668 to i64*
  %3669 = load i64, i64* %RBP.i460
  %3670 = sub i64 %3669, 36
  %3671 = load i64, i64* %PC.i458
  %3672 = add i64 %3671, 4
  store i64 %3672, i64* %PC.i458
  %3673 = inttoptr i64 %3670 to i32*
  %3674 = load i32, i32* %3673
  %3675 = sext i32 %3674 to i64
  store i64 %3675, i64* %RAX.i459, align 8
  store %struct.Memory* %loadMem_43d77a, %struct.Memory** %MEMORY
  %loadMem_43d77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 33
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %3678 to i64*
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 1
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %3681 to i64*
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 9
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %RSI.i456 = bitcast %union.anon* %3684 to i64*
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 15
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %3687 to i64*
  %3688 = load i64, i64* %RBP.i457
  %3689 = load i64, i64* %RAX.i455
  %3690 = add i64 %3688, -96
  %3691 = add i64 %3690, %3689
  %3692 = load i64, i64* %PC.i454
  %3693 = add i64 %3692, 5
  store i64 %3693, i64* %PC.i454
  %3694 = inttoptr i64 %3691 to i8*
  %3695 = load i8, i8* %3694
  %3696 = sext i8 %3695 to i64
  %3697 = and i64 %3696, 4294967295
  store i64 %3697, i64* %RSI.i456, align 8
  store %struct.Memory* %loadMem_43d77e, %struct.Memory** %MEMORY
  %loadMem_43d783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3699 = getelementptr inbounds %struct.GPR, %struct.GPR* %3698, i32 0, i32 33
  %3700 = getelementptr inbounds %struct.Reg, %struct.Reg* %3699, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %3700 to i64*
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 9
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %ESI.i453 = bitcast %union.anon* %3703 to i32*
  %3704 = load i32, i32* %ESI.i453
  %3705 = zext i32 %3704 to i64
  %3706 = load i64, i64* %PC.i452
  %3707 = add i64 %3706, 3
  store i64 %3707, i64* %PC.i452
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3708, align 1
  %3709 = and i32 %3704, 255
  %3710 = call i32 @llvm.ctpop.i32(i32 %3709)
  %3711 = trunc i32 %3710 to i8
  %3712 = and i8 %3711, 1
  %3713 = xor i8 %3712, 1
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3713, i8* %3714, align 1
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3715, align 1
  %3716 = icmp eq i32 %3704, 0
  %3717 = zext i1 %3716 to i8
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3717, i8* %3718, align 1
  %3719 = lshr i32 %3704, 31
  %3720 = trunc i32 %3719 to i8
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3720, i8* %3721, align 1
  %3722 = lshr i32 %3704, 31
  %3723 = xor i32 %3719, %3722
  %3724 = add i32 %3723, %3722
  %3725 = icmp eq i32 %3724, 2
  %3726 = zext i1 %3725 to i8
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3726, i8* %3727, align 1
  store %struct.Memory* %loadMem_43d783, %struct.Memory** %MEMORY
  %loadMem_43d786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 33
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %3730 to i64*
  %3731 = load i64, i64* %PC.i451
  %3732 = add i64 %3731, 40
  %3733 = load i64, i64* %PC.i451
  %3734 = add i64 %3733, 6
  %3735 = load i64, i64* %PC.i451
  %3736 = add i64 %3735, 6
  store i64 %3736, i64* %PC.i451
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3738 = load i8, i8* %3737, align 1
  %3739 = icmp eq i8 %3738, 0
  %3740 = zext i1 %3739 to i8
  store i8 %3740, i8* %BRANCH_TAKEN, align 1
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3742 = select i1 %3739, i64 %3732, i64 %3734
  store i64 %3742, i64* %3741, align 8
  store %struct.Memory* %loadMem_43d786, %struct.Memory** %MEMORY
  %loadBr_43d786 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d786 = icmp eq i8 %loadBr_43d786, 1
  br i1 %cmpBr_43d786, label %block_.L_43d7ae, label %block_43d78c

block_43d78c:                                     ; preds = %block_43d756
  %loadMem_43d78c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 33
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %3745 to i64*
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 1
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %RAX.i449 = bitcast %union.anon* %3748 to i64*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 15
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %3751 to i64*
  %3752 = load i64, i64* %RBP.i450
  %3753 = sub i64 %3752, 40
  %3754 = load i64, i64* %PC.i448
  %3755 = add i64 %3754, 4
  store i64 %3755, i64* %PC.i448
  %3756 = inttoptr i64 %3753 to i32*
  %3757 = load i32, i32* %3756
  %3758 = sext i32 %3757 to i64
  store i64 %3758, i64* %RAX.i449, align 8
  store %struct.Memory* %loadMem_43d78c, %struct.Memory** %MEMORY
  %loadMem_43d790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3760 = getelementptr inbounds %struct.GPR, %struct.GPR* %3759, i32 0, i32 33
  %3761 = getelementptr inbounds %struct.Reg, %struct.Reg* %3760, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %3761 to i64*
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3763 = getelementptr inbounds %struct.GPR, %struct.GPR* %3762, i32 0, i32 1
  %3764 = getelementptr inbounds %struct.Reg, %struct.Reg* %3763, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %3764 to i64*
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 5
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %RCX.i446 = bitcast %union.anon* %3767 to i64*
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 15
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %3770 to i64*
  %3771 = load i64, i64* %RBP.i447
  %3772 = load i64, i64* %RAX.i445
  %3773 = add i64 %3771, -96
  %3774 = add i64 %3773, %3772
  %3775 = load i64, i64* %PC.i444
  %3776 = add i64 %3775, 5
  store i64 %3776, i64* %PC.i444
  %3777 = inttoptr i64 %3774 to i8*
  %3778 = load i8, i8* %3777
  %3779 = sext i8 %3778 to i64
  %3780 = and i64 %3779, 4294967295
  store i64 %3780, i64* %RCX.i446, align 8
  store %struct.Memory* %loadMem_43d790, %struct.Memory** %MEMORY
  %loadMem_43d795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 33
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %3783 to i64*
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 5
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %ECX.i443 = bitcast %union.anon* %3786 to i32*
  %3787 = load i32, i32* %ECX.i443
  %3788 = zext i32 %3787 to i64
  %3789 = load i64, i64* %PC.i442
  %3790 = add i64 %3789, 3
  store i64 %3790, i64* %PC.i442
  %3791 = sub i32 %3787, 1
  %3792 = icmp ult i32 %3787, 1
  %3793 = zext i1 %3792 to i8
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3793, i8* %3794, align 1
  %3795 = and i32 %3791, 255
  %3796 = call i32 @llvm.ctpop.i32(i32 %3795)
  %3797 = trunc i32 %3796 to i8
  %3798 = and i8 %3797, 1
  %3799 = xor i8 %3798, 1
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3799, i8* %3800, align 1
  %3801 = xor i64 1, %3788
  %3802 = trunc i64 %3801 to i32
  %3803 = xor i32 %3802, %3791
  %3804 = lshr i32 %3803, 4
  %3805 = trunc i32 %3804 to i8
  %3806 = and i8 %3805, 1
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3806, i8* %3807, align 1
  %3808 = icmp eq i32 %3791, 0
  %3809 = zext i1 %3808 to i8
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3809, i8* %3810, align 1
  %3811 = lshr i32 %3791, 31
  %3812 = trunc i32 %3811 to i8
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3812, i8* %3813, align 1
  %3814 = lshr i32 %3787, 31
  %3815 = xor i32 %3811, %3814
  %3816 = add i32 %3815, %3814
  %3817 = icmp eq i32 %3816, 2
  %3818 = zext i1 %3817 to i8
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3818, i8* %3819, align 1
  store %struct.Memory* %loadMem_43d795, %struct.Memory** %MEMORY
  %loadMem_43d798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 33
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %3822 to i64*
  %3823 = load i64, i64* %PC.i441
  %3824 = add i64 %3823, 22
  %3825 = load i64, i64* %PC.i441
  %3826 = add i64 %3825, 6
  %3827 = load i64, i64* %PC.i441
  %3828 = add i64 %3827, 6
  store i64 %3828, i64* %PC.i441
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3830 = load i8, i8* %3829, align 1
  %3831 = icmp eq i8 %3830, 0
  %3832 = zext i1 %3831 to i8
  store i8 %3832, i8* %BRANCH_TAKEN, align 1
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3834 = select i1 %3831, i64 %3824, i64 %3826
  store i64 %3834, i64* %3833, align 8
  store %struct.Memory* %loadMem_43d798, %struct.Memory** %MEMORY
  %loadBr_43d798 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d798 = icmp eq i8 %loadBr_43d798, 1
  br i1 %cmpBr_43d798, label %block_.L_43d7ae, label %block_43d79e

block_43d79e:                                     ; preds = %block_43d78c
  %loadMem_43d79e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 33
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %3837 to i64*
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 1
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %3840 to i64*
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 15
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %3843 to i64*
  %3844 = load i64, i64* %RBP.i440
  %3845 = sub i64 %3844, 36
  %3846 = load i64, i64* %PC.i438
  %3847 = add i64 %3846, 4
  store i64 %3847, i64* %PC.i438
  %3848 = inttoptr i64 %3845 to i32*
  %3849 = load i32, i32* %3848
  %3850 = sext i32 %3849 to i64
  store i64 %3850, i64* %RAX.i439, align 8
  store %struct.Memory* %loadMem_43d79e, %struct.Memory** %MEMORY
  %loadMem_43d7a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 33
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %3853 to i64*
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 1
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %3856 to i64*
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3858 = getelementptr inbounds %struct.GPR, %struct.GPR* %3857, i32 0, i32 15
  %3859 = getelementptr inbounds %struct.Reg, %struct.Reg* %3858, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %3859 to i64*
  %3860 = load i64, i64* %RBP.i437
  %3861 = load i64, i64* %RAX.i436
  %3862 = add i64 %3860, -96
  %3863 = add i64 %3862, %3861
  %3864 = load i64, i64* %PC.i435
  %3865 = add i64 %3864, 5
  store i64 %3865, i64* %PC.i435
  %3866 = inttoptr i64 %3863 to i8*
  store i8 1, i8* %3866
  store %struct.Memory* %loadMem_43d7a2, %struct.Memory** %MEMORY
  %loadMem_43d7a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 33
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %3869 to i64*
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3871 = getelementptr inbounds %struct.GPR, %struct.GPR* %3870, i32 0, i32 15
  %3872 = getelementptr inbounds %struct.Reg, %struct.Reg* %3871, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %3872 to i64*
  %3873 = load i64, i64* %RBP.i434
  %3874 = sub i64 %3873, 100
  %3875 = load i64, i64* %PC.i433
  %3876 = add i64 %3875, 7
  store i64 %3876, i64* %PC.i433
  %3877 = inttoptr i64 %3874 to i32*
  store i32 1, i32* %3877
  store %struct.Memory* %loadMem_43d7a7, %struct.Memory** %MEMORY
  br label %block_.L_43d7ae

block_.L_43d7ae:                                  ; preds = %block_43d79e, %block_43d78c, %block_43d756
  %loadMem_43d7ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 33
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %3880 to i64*
  %3881 = load i64, i64* %PC.i432
  %3882 = add i64 %3881, 5
  %3883 = load i64, i64* %PC.i432
  %3884 = add i64 %3883, 5
  store i64 %3884, i64* %PC.i432
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3882, i64* %3885, align 8
  store %struct.Memory* %loadMem_43d7ae, %struct.Memory** %MEMORY
  br label %block_.L_43d7b3

block_.L_43d7b3:                                  ; preds = %block_.L_43d7ae
  %loadMem_43d7b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 33
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %3888 to i64*
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 1
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %3891 to i64*
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 15
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %3894 to i64*
  %3895 = load i64, i64* %RBP.i431
  %3896 = sub i64 %3895, 36
  %3897 = load i64, i64* %PC.i429
  %3898 = add i64 %3897, 3
  store i64 %3898, i64* %PC.i429
  %3899 = inttoptr i64 %3896 to i32*
  %3900 = load i32, i32* %3899
  %3901 = zext i32 %3900 to i64
  store i64 %3901, i64* %RAX.i430, align 8
  store %struct.Memory* %loadMem_43d7b3, %struct.Memory** %MEMORY
  %loadMem_43d7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 33
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %3904 to i64*
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 1
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %RAX.i428 = bitcast %union.anon* %3907 to i64*
  %3908 = load i64, i64* %RAX.i428
  %3909 = load i64, i64* %PC.i427
  %3910 = add i64 %3909, 3
  store i64 %3910, i64* %PC.i427
  %3911 = trunc i64 %3908 to i32
  %3912 = add i32 1, %3911
  %3913 = zext i32 %3912 to i64
  store i64 %3913, i64* %RAX.i428, align 8
  %3914 = icmp ult i32 %3912, %3911
  %3915 = icmp ult i32 %3912, 1
  %3916 = or i1 %3914, %3915
  %3917 = zext i1 %3916 to i8
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3917, i8* %3918, align 1
  %3919 = and i32 %3912, 255
  %3920 = call i32 @llvm.ctpop.i32(i32 %3919)
  %3921 = trunc i32 %3920 to i8
  %3922 = and i8 %3921, 1
  %3923 = xor i8 %3922, 1
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3923, i8* %3924, align 1
  %3925 = xor i64 1, %3908
  %3926 = trunc i64 %3925 to i32
  %3927 = xor i32 %3926, %3912
  %3928 = lshr i32 %3927, 4
  %3929 = trunc i32 %3928 to i8
  %3930 = and i8 %3929, 1
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3930, i8* %3931, align 1
  %3932 = icmp eq i32 %3912, 0
  %3933 = zext i1 %3932 to i8
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3933, i8* %3934, align 1
  %3935 = lshr i32 %3912, 31
  %3936 = trunc i32 %3935 to i8
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3936, i8* %3937, align 1
  %3938 = lshr i32 %3911, 31
  %3939 = xor i32 %3935, %3938
  %3940 = add i32 %3939, %3935
  %3941 = icmp eq i32 %3940, 2
  %3942 = zext i1 %3941 to i8
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3942, i8* %3943, align 1
  store %struct.Memory* %loadMem_43d7b6, %struct.Memory** %MEMORY
  %loadMem_43d7b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 33
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %3946 to i64*
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3948 = getelementptr inbounds %struct.GPR, %struct.GPR* %3947, i32 0, i32 1
  %3949 = getelementptr inbounds %struct.Reg, %struct.Reg* %3948, i32 0, i32 0
  %EAX.i425 = bitcast %union.anon* %3949 to i32*
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3951 = getelementptr inbounds %struct.GPR, %struct.GPR* %3950, i32 0, i32 15
  %3952 = getelementptr inbounds %struct.Reg, %struct.Reg* %3951, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %3952 to i64*
  %3953 = load i64, i64* %RBP.i426
  %3954 = sub i64 %3953, 36
  %3955 = load i32, i32* %EAX.i425
  %3956 = zext i32 %3955 to i64
  %3957 = load i64, i64* %PC.i424
  %3958 = add i64 %3957, 3
  store i64 %3958, i64* %PC.i424
  %3959 = inttoptr i64 %3954 to i32*
  store i32 %3955, i32* %3959
  store %struct.Memory* %loadMem_43d7b9, %struct.Memory** %MEMORY
  %loadMem_43d7bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 33
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %3962 to i64*
  %3963 = load i64, i64* %PC.i423
  %3964 = add i64 %3963, -112
  %3965 = load i64, i64* %PC.i423
  %3966 = add i64 %3965, 5
  store i64 %3966, i64* %PC.i423
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3964, i64* %3967, align 8
  store %struct.Memory* %loadMem_43d7bc, %struct.Memory** %MEMORY
  br label %block_.L_43d74c

block_.L_43d7c1:                                  ; preds = %block_.L_43d74c
  %loadMem_43d7c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 33
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %3970 to i64*
  %3971 = load i64, i64* %PC.i422
  %3972 = add i64 %3971, -141
  %3973 = load i64, i64* %PC.i422
  %3974 = add i64 %3973, 5
  store i64 %3974, i64* %PC.i422
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3972, i64* %3975, align 8
  store %struct.Memory* %loadMem_43d7c1, %struct.Memory** %MEMORY
  br label %block_.L_43d734

block_.L_43d7c6:                                  ; preds = %block_.L_43d734
  %loadMem_43d7c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3977 = getelementptr inbounds %struct.GPR, %struct.GPR* %3976, i32 0, i32 33
  %3978 = getelementptr inbounds %struct.Reg, %struct.Reg* %3977, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %3978 to i64*
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 15
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %3981 to i64*
  %3982 = load i64, i64* %RBP.i421
  %3983 = sub i64 %3982, 104
  %3984 = load i64, i64* %PC.i420
  %3985 = add i64 %3984, 7
  store i64 %3985, i64* %PC.i420
  %3986 = inttoptr i64 %3983 to i32*
  store i32 1, i32* %3986
  store %struct.Memory* %loadMem_43d7c6, %struct.Memory** %MEMORY
  %loadMem_43d7cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3988 = getelementptr inbounds %struct.GPR, %struct.GPR* %3987, i32 0, i32 33
  %3989 = getelementptr inbounds %struct.Reg, %struct.Reg* %3988, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %3989 to i64*
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 15
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %3992 to i64*
  %3993 = load i64, i64* %RBP.i419
  %3994 = sub i64 %3993, 36
  %3995 = load i64, i64* %PC.i418
  %3996 = add i64 %3995, 7
  store i64 %3996, i64* %PC.i418
  %3997 = inttoptr i64 %3994 to i32*
  store i32 0, i32* %3997
  store %struct.Memory* %loadMem_43d7cd, %struct.Memory** %MEMORY
  br label %block_.L_43d7d4

block_.L_43d7d4:                                  ; preds = %block_.L_43d827, %block_.L_43d7c6
  %loadMem_43d7d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3999 = getelementptr inbounds %struct.GPR, %struct.GPR* %3998, i32 0, i32 33
  %4000 = getelementptr inbounds %struct.Reg, %struct.Reg* %3999, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %4000 to i64*
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4002 = getelementptr inbounds %struct.GPR, %struct.GPR* %4001, i32 0, i32 15
  %4003 = getelementptr inbounds %struct.Reg, %struct.Reg* %4002, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %4003 to i64*
  %4004 = load i64, i64* %RBP.i417
  %4005 = sub i64 %4004, 36
  %4006 = load i64, i64* %PC.i416
  %4007 = add i64 %4006, 4
  store i64 %4007, i64* %PC.i416
  %4008 = inttoptr i64 %4005 to i32*
  %4009 = load i32, i32* %4008
  %4010 = sub i32 %4009, 26
  %4011 = icmp ult i32 %4009, 26
  %4012 = zext i1 %4011 to i8
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4012, i8* %4013, align 1
  %4014 = and i32 %4010, 255
  %4015 = call i32 @llvm.ctpop.i32(i32 %4014)
  %4016 = trunc i32 %4015 to i8
  %4017 = and i8 %4016, 1
  %4018 = xor i8 %4017, 1
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4018, i8* %4019, align 1
  %4020 = xor i32 %4009, 26
  %4021 = xor i32 %4020, %4010
  %4022 = lshr i32 %4021, 4
  %4023 = trunc i32 %4022 to i8
  %4024 = and i8 %4023, 1
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4024, i8* %4025, align 1
  %4026 = icmp eq i32 %4010, 0
  %4027 = zext i1 %4026 to i8
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4027, i8* %4028, align 1
  %4029 = lshr i32 %4010, 31
  %4030 = trunc i32 %4029 to i8
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4030, i8* %4031, align 1
  %4032 = lshr i32 %4009, 31
  %4033 = xor i32 %4029, %4032
  %4034 = add i32 %4033, %4032
  %4035 = icmp eq i32 %4034, 2
  %4036 = zext i1 %4035 to i8
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4036, i8* %4037, align 1
  store %struct.Memory* %loadMem_43d7d4, %struct.Memory** %MEMORY
  %loadMem_43d7d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 33
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %4040 to i64*
  %4041 = load i64, i64* %PC.i415
  %4042 = add i64 %4041, 93
  %4043 = load i64, i64* %PC.i415
  %4044 = add i64 %4043, 6
  %4045 = load i64, i64* %PC.i415
  %4046 = add i64 %4045, 6
  store i64 %4046, i64* %PC.i415
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4048 = load i8, i8* %4047, align 1
  %4049 = icmp ne i8 %4048, 0
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4051 = load i8, i8* %4050, align 1
  %4052 = icmp ne i8 %4051, 0
  %4053 = xor i1 %4049, %4052
  %4054 = xor i1 %4053, true
  %4055 = zext i1 %4054 to i8
  store i8 %4055, i8* %BRANCH_TAKEN, align 1
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4057 = select i1 %4053, i64 %4044, i64 %4042
  store i64 %4057, i64* %4056, align 8
  store %struct.Memory* %loadMem_43d7d8, %struct.Memory** %MEMORY
  %loadBr_43d7d8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d7d8 = icmp eq i8 %loadBr_43d7d8, 1
  br i1 %cmpBr_43d7d8, label %block_.L_43d835, label %block_43d7de

block_43d7de:                                     ; preds = %block_.L_43d7d4
  %loadMem_43d7de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 33
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %4060 to i64*
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 1
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %4063 to i64*
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 15
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %4066 to i64*
  %4067 = load i64, i64* %RBP.i414
  %4068 = sub i64 %4067, 56
  %4069 = load i64, i64* %PC.i412
  %4070 = add i64 %4069, 4
  store i64 %4070, i64* %PC.i412
  %4071 = inttoptr i64 %4068 to i64*
  %4072 = load i64, i64* %4071
  store i64 %4072, i64* %RAX.i413, align 8
  store %struct.Memory* %loadMem_43d7de, %struct.Memory** %MEMORY
  %loadMem_43d7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 33
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %4075 to i64*
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4077 = getelementptr inbounds %struct.GPR, %struct.GPR* %4076, i32 0, i32 5
  %4078 = getelementptr inbounds %struct.Reg, %struct.Reg* %4077, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %4078 to i64*
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 15
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %4081 to i64*
  %4082 = load i64, i64* %RBP.i411
  %4083 = sub i64 %4082, 36
  %4084 = load i64, i64* %PC.i409
  %4085 = add i64 %4084, 4
  store i64 %4085, i64* %PC.i409
  %4086 = inttoptr i64 %4083 to i32*
  %4087 = load i32, i32* %4086
  %4088 = sext i32 %4087 to i64
  store i64 %4088, i64* %RCX.i410, align 8
  store %struct.Memory* %loadMem_43d7e2, %struct.Memory** %MEMORY
  %loadMem_43d7e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4090 = getelementptr inbounds %struct.GPR, %struct.GPR* %4089, i32 0, i32 33
  %4091 = getelementptr inbounds %struct.Reg, %struct.Reg* %4090, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %4091 to i64*
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4093 = getelementptr inbounds %struct.GPR, %struct.GPR* %4092, i32 0, i32 1
  %4094 = getelementptr inbounds %struct.Reg, %struct.Reg* %4093, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %4094 to i64*
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 5
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %4097 to i64*
  %4098 = load i64, i64* %RAX.i407
  %4099 = load i64, i64* %RCX.i408
  %4100 = mul i64 %4099, 4
  %4101 = add i64 %4100, %4098
  %4102 = load i64, i64* %PC.i406
  %4103 = add i64 %4102, 4
  store i64 %4103, i64* %PC.i406
  %4104 = inttoptr i64 %4101 to i32*
  %4105 = load i32, i32* %4104
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4106, align 1
  %4107 = and i32 %4105, 255
  %4108 = call i32 @llvm.ctpop.i32(i32 %4107)
  %4109 = trunc i32 %4108 to i8
  %4110 = and i8 %4109, 1
  %4111 = xor i8 %4110, 1
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4111, i8* %4112, align 1
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4113, align 1
  %4114 = icmp eq i32 %4105, 0
  %4115 = zext i1 %4114 to i8
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4115, i8* %4116, align 1
  %4117 = lshr i32 %4105, 31
  %4118 = trunc i32 %4117 to i8
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4118, i8* %4119, align 1
  %4120 = lshr i32 %4105, 31
  %4121 = xor i32 %4117, %4120
  %4122 = add i32 %4121, %4120
  %4123 = icmp eq i32 %4122, 2
  %4124 = zext i1 %4123 to i8
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4124, i8* %4125, align 1
  store %struct.Memory* %loadMem_43d7e6, %struct.Memory** %MEMORY
  %loadMem_43d7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4127 = getelementptr inbounds %struct.GPR, %struct.GPR* %4126, i32 0, i32 33
  %4128 = getelementptr inbounds %struct.Reg, %struct.Reg* %4127, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %4128 to i64*
  %4129 = load i64, i64* %PC.i405
  %4130 = add i64 %4129, 21
  %4131 = load i64, i64* %PC.i405
  %4132 = add i64 %4131, 6
  %4133 = load i64, i64* %PC.i405
  %4134 = add i64 %4133, 6
  store i64 %4134, i64* %PC.i405
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4136 = load i8, i8* %4135, align 1
  store i8 %4136, i8* %BRANCH_TAKEN, align 1
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4138 = icmp ne i8 %4136, 0
  %4139 = select i1 %4138, i64 %4130, i64 %4132
  store i64 %4139, i64* %4137, align 8
  store %struct.Memory* %loadMem_43d7ea, %struct.Memory** %MEMORY
  %loadBr_43d7ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d7ea = icmp eq i8 %loadBr_43d7ea, 1
  br i1 %cmpBr_43d7ea, label %block_.L_43d7ff, label %block_43d7f0

block_43d7f0:                                     ; preds = %block_43d7de
  %loadMem_43d7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4141 = getelementptr inbounds %struct.GPR, %struct.GPR* %4140, i32 0, i32 33
  %4142 = getelementptr inbounds %struct.Reg, %struct.Reg* %4141, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %4142 to i64*
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4144 = getelementptr inbounds %struct.GPR, %struct.GPR* %4143, i32 0, i32 1
  %4145 = getelementptr inbounds %struct.Reg, %struct.Reg* %4144, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %4145 to i64*
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4147 = getelementptr inbounds %struct.GPR, %struct.GPR* %4146, i32 0, i32 15
  %4148 = getelementptr inbounds %struct.Reg, %struct.Reg* %4147, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %4148 to i64*
  %4149 = load i64, i64* %RBP.i404
  %4150 = sub i64 %4149, 36
  %4151 = load i64, i64* %PC.i402
  %4152 = add i64 %4151, 3
  store i64 %4152, i64* %PC.i402
  %4153 = inttoptr i64 %4150 to i32*
  %4154 = load i32, i32* %4153
  %4155 = zext i32 %4154 to i64
  store i64 %4155, i64* %RAX.i403, align 8
  store %struct.Memory* %loadMem_43d7f0, %struct.Memory** %MEMORY
  %loadMem_43d7f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4157 = getelementptr inbounds %struct.GPR, %struct.GPR* %4156, i32 0, i32 33
  %4158 = getelementptr inbounds %struct.Reg, %struct.Reg* %4157, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %4158 to i64*
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 5
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %4161 to i64*
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4163 = getelementptr inbounds %struct.GPR, %struct.GPR* %4162, i32 0, i32 15
  %4164 = getelementptr inbounds %struct.Reg, %struct.Reg* %4163, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %4164 to i64*
  %4165 = load i64, i64* %RBP.i401
  %4166 = sub i64 %4165, 69
  %4167 = load i64, i64* %PC.i399
  %4168 = add i64 %4167, 4
  store i64 %4168, i64* %PC.i399
  %4169 = inttoptr i64 %4166 to i8*
  %4170 = load i8, i8* %4169
  %4171 = sext i8 %4170 to i64
  %4172 = and i64 %4171, 4294967295
  store i64 %4172, i64* %RCX.i400, align 8
  store %struct.Memory* %loadMem_43d7f3, %struct.Memory** %MEMORY
  %loadMem_43d7f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 33
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %4175 to i64*
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 1
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %EAX.i397 = bitcast %union.anon* %4178 to i32*
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4180 = getelementptr inbounds %struct.GPR, %struct.GPR* %4179, i32 0, i32 5
  %4181 = getelementptr inbounds %struct.Reg, %struct.Reg* %4180, i32 0, i32 0
  %ECX.i398 = bitcast %union.anon* %4181 to i32*
  %4182 = load i32, i32* %EAX.i397
  %4183 = zext i32 %4182 to i64
  %4184 = load i32, i32* %ECX.i398
  %4185 = zext i32 %4184 to i64
  %4186 = load i64, i64* %PC.i396
  %4187 = add i64 %4186, 2
  store i64 %4187, i64* %PC.i396
  %4188 = sub i32 %4182, %4184
  %4189 = icmp ult i32 %4182, %4184
  %4190 = zext i1 %4189 to i8
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4190, i8* %4191, align 1
  %4192 = and i32 %4188, 255
  %4193 = call i32 @llvm.ctpop.i32(i32 %4192)
  %4194 = trunc i32 %4193 to i8
  %4195 = and i8 %4194, 1
  %4196 = xor i8 %4195, 1
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4196, i8* %4197, align 1
  %4198 = xor i64 %4185, %4183
  %4199 = trunc i64 %4198 to i32
  %4200 = xor i32 %4199, %4188
  %4201 = lshr i32 %4200, 4
  %4202 = trunc i32 %4201 to i8
  %4203 = and i8 %4202, 1
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4203, i8* %4204, align 1
  %4205 = icmp eq i32 %4188, 0
  %4206 = zext i1 %4205 to i8
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4206, i8* %4207, align 1
  %4208 = lshr i32 %4188, 31
  %4209 = trunc i32 %4208 to i8
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4209, i8* %4210, align 1
  %4211 = lshr i32 %4182, 31
  %4212 = lshr i32 %4184, 31
  %4213 = xor i32 %4212, %4211
  %4214 = xor i32 %4208, %4211
  %4215 = add i32 %4214, %4213
  %4216 = icmp eq i32 %4215, 2
  %4217 = zext i1 %4216 to i8
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4217, i8* %4218, align 1
  store %struct.Memory* %loadMem_43d7f7, %struct.Memory** %MEMORY
  %loadMem_43d7f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 33
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %4221 to i64*
  %4222 = load i64, i64* %PC.i395
  %4223 = add i64 %4222, 11
  %4224 = load i64, i64* %PC.i395
  %4225 = add i64 %4224, 6
  %4226 = load i64, i64* %PC.i395
  %4227 = add i64 %4226, 6
  store i64 %4227, i64* %PC.i395
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4229 = load i8, i8* %4228, align 1
  %4230 = icmp eq i8 %4229, 0
  %4231 = zext i1 %4230 to i8
  store i8 %4231, i8* %BRANCH_TAKEN, align 1
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4233 = select i1 %4230, i64 %4223, i64 %4225
  store i64 %4233, i64* %4232, align 8
  store %struct.Memory* %loadMem_43d7f9, %struct.Memory** %MEMORY
  %loadBr_43d7f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d7f9 = icmp eq i8 %loadBr_43d7f9, 1
  br i1 %cmpBr_43d7f9, label %block_.L_43d804, label %block_.L_43d7ff

block_.L_43d7ff:                                  ; preds = %block_43d7f0, %block_43d7de
  %loadMem_43d7ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 33
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %4236 to i64*
  %4237 = load i64, i64* %PC.i394
  %4238 = add i64 %4237, 40
  %4239 = load i64, i64* %PC.i394
  %4240 = add i64 %4239, 5
  store i64 %4240, i64* %PC.i394
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4238, i64* %4241, align 8
  store %struct.Memory* %loadMem_43d7ff, %struct.Memory** %MEMORY
  br label %block_.L_43d827

block_.L_43d804:                                  ; preds = %block_43d7f0
  %loadMem_43d804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4243 = getelementptr inbounds %struct.GPR, %struct.GPR* %4242, i32 0, i32 33
  %4244 = getelementptr inbounds %struct.Reg, %struct.Reg* %4243, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %4244 to i64*
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 1
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %4247 to i64*
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 15
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %4250 to i64*
  %4251 = load i64, i64* %RBP.i393
  %4252 = sub i64 %4251, 36
  %4253 = load i64, i64* %PC.i391
  %4254 = add i64 %4253, 4
  store i64 %4254, i64* %PC.i391
  %4255 = inttoptr i64 %4252 to i32*
  %4256 = load i32, i32* %4255
  %4257 = sext i32 %4256 to i64
  store i64 %4257, i64* %RAX.i392, align 8
  store %struct.Memory* %loadMem_43d804, %struct.Memory** %MEMORY
  %loadMem_43d808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4259 = getelementptr inbounds %struct.GPR, %struct.GPR* %4258, i32 0, i32 33
  %4260 = getelementptr inbounds %struct.Reg, %struct.Reg* %4259, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %4260 to i64*
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4262 = getelementptr inbounds %struct.GPR, %struct.GPR* %4261, i32 0, i32 1
  %4263 = getelementptr inbounds %struct.Reg, %struct.Reg* %4262, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %4263 to i64*
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4265 = getelementptr inbounds %struct.GPR, %struct.GPR* %4264, i32 0, i32 5
  %4266 = getelementptr inbounds %struct.Reg, %struct.Reg* %4265, i32 0, i32 0
  %RCX.i389 = bitcast %union.anon* %4266 to i64*
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 15
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %4269 to i64*
  %4270 = load i64, i64* %RBP.i390
  %4271 = load i64, i64* %RAX.i388
  %4272 = add i64 %4270, -96
  %4273 = add i64 %4272, %4271
  %4274 = load i64, i64* %PC.i387
  %4275 = add i64 %4274, 5
  store i64 %4275, i64* %PC.i387
  %4276 = inttoptr i64 %4273 to i8*
  %4277 = load i8, i8* %4276
  %4278 = sext i8 %4277 to i64
  %4279 = and i64 %4278, 4294967295
  store i64 %4279, i64* %RCX.i389, align 8
  store %struct.Memory* %loadMem_43d808, %struct.Memory** %MEMORY
  %loadMem_43d80d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4281 = getelementptr inbounds %struct.GPR, %struct.GPR* %4280, i32 0, i32 33
  %4282 = getelementptr inbounds %struct.Reg, %struct.Reg* %4281, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %4282 to i64*
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4284 = getelementptr inbounds %struct.GPR, %struct.GPR* %4283, i32 0, i32 5
  %4285 = getelementptr inbounds %struct.Reg, %struct.Reg* %4284, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4285 to i32*
  %4286 = load i32, i32* %ECX.i
  %4287 = zext i32 %4286 to i64
  %4288 = load i64, i64* %PC.i386
  %4289 = add i64 %4288, 3
  store i64 %4289, i64* %PC.i386
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4290, align 1
  %4291 = and i32 %4286, 255
  %4292 = call i32 @llvm.ctpop.i32(i32 %4291)
  %4293 = trunc i32 %4292 to i8
  %4294 = and i8 %4293, 1
  %4295 = xor i8 %4294, 1
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4295, i8* %4296, align 1
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4297, align 1
  %4298 = icmp eq i32 %4286, 0
  %4299 = zext i1 %4298 to i8
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4299, i8* %4300, align 1
  %4301 = lshr i32 %4286, 31
  %4302 = trunc i32 %4301 to i8
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4302, i8* %4303, align 1
  %4304 = lshr i32 %4286, 31
  %4305 = xor i32 %4301, %4304
  %4306 = add i32 %4305, %4304
  %4307 = icmp eq i32 %4306, 2
  %4308 = zext i1 %4307 to i8
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4308, i8* %4309, align 1
  store %struct.Memory* %loadMem_43d80d, %struct.Memory** %MEMORY
  %loadMem_43d810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4311 = getelementptr inbounds %struct.GPR, %struct.GPR* %4310, i32 0, i32 33
  %4312 = getelementptr inbounds %struct.Reg, %struct.Reg* %4311, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4312 to i64*
  %4313 = load i64, i64* %PC.i385
  %4314 = add i64 %4313, 18
  %4315 = load i64, i64* %PC.i385
  %4316 = add i64 %4315, 6
  %4317 = load i64, i64* %PC.i385
  %4318 = add i64 %4317, 6
  store i64 %4318, i64* %PC.i385
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4320 = load i8, i8* %4319, align 1
  %4321 = icmp eq i8 %4320, 0
  %4322 = zext i1 %4321 to i8
  store i8 %4322, i8* %BRANCH_TAKEN, align 1
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4324 = select i1 %4321, i64 %4314, i64 %4316
  store i64 %4324, i64* %4323, align 8
  store %struct.Memory* %loadMem_43d810, %struct.Memory** %MEMORY
  %loadBr_43d810 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d810 = icmp eq i8 %loadBr_43d810, 1
  br i1 %cmpBr_43d810, label %block_.L_43d822, label %block_43d816

block_43d816:                                     ; preds = %block_.L_43d804
  %loadMem_43d816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4326 = getelementptr inbounds %struct.GPR, %struct.GPR* %4325, i32 0, i32 33
  %4327 = getelementptr inbounds %struct.Reg, %struct.Reg* %4326, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %4327 to i64*
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4329 = getelementptr inbounds %struct.GPR, %struct.GPR* %4328, i32 0, i32 15
  %4330 = getelementptr inbounds %struct.Reg, %struct.Reg* %4329, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %4330 to i64*
  %4331 = load i64, i64* %RBP.i384
  %4332 = sub i64 %4331, 104
  %4333 = load i64, i64* %PC.i383
  %4334 = add i64 %4333, 7
  store i64 %4334, i64* %PC.i383
  %4335 = inttoptr i64 %4332 to i32*
  store i32 0, i32* %4335
  store %struct.Memory* %loadMem_43d816, %struct.Memory** %MEMORY
  %loadMem_43d81d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 33
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4338 to i64*
  %4339 = load i64, i64* %PC.i382
  %4340 = add i64 %4339, 24
  %4341 = load i64, i64* %PC.i382
  %4342 = add i64 %4341, 5
  store i64 %4342, i64* %PC.i382
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4340, i64* %4343, align 8
  store %struct.Memory* %loadMem_43d81d, %struct.Memory** %MEMORY
  br label %block_.L_43d835

block_.L_43d822:                                  ; preds = %block_.L_43d804
  %loadMem_43d822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 33
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %4346 to i64*
  %4347 = load i64, i64* %PC.i381
  %4348 = add i64 %4347, 5
  %4349 = load i64, i64* %PC.i381
  %4350 = add i64 %4349, 5
  store i64 %4350, i64* %PC.i381
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4348, i64* %4351, align 8
  store %struct.Memory* %loadMem_43d822, %struct.Memory** %MEMORY
  br label %block_.L_43d827

block_.L_43d827:                                  ; preds = %block_.L_43d822, %block_.L_43d7ff
  %loadMem_43d827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4353 = getelementptr inbounds %struct.GPR, %struct.GPR* %4352, i32 0, i32 33
  %4354 = getelementptr inbounds %struct.Reg, %struct.Reg* %4353, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %4354 to i64*
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 1
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %4357 to i64*
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 15
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %4360 to i64*
  %4361 = load i64, i64* %RBP.i380
  %4362 = sub i64 %4361, 36
  %4363 = load i64, i64* %PC.i378
  %4364 = add i64 %4363, 3
  store i64 %4364, i64* %PC.i378
  %4365 = inttoptr i64 %4362 to i32*
  %4366 = load i32, i32* %4365
  %4367 = zext i32 %4366 to i64
  store i64 %4367, i64* %RAX.i379, align 8
  store %struct.Memory* %loadMem_43d827, %struct.Memory** %MEMORY
  %loadMem_43d82a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 33
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %4370 to i64*
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 1
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %4373 to i64*
  %4374 = load i64, i64* %RAX.i377
  %4375 = load i64, i64* %PC.i376
  %4376 = add i64 %4375, 3
  store i64 %4376, i64* %PC.i376
  %4377 = trunc i64 %4374 to i32
  %4378 = add i32 1, %4377
  %4379 = zext i32 %4378 to i64
  store i64 %4379, i64* %RAX.i377, align 8
  %4380 = icmp ult i32 %4378, %4377
  %4381 = icmp ult i32 %4378, 1
  %4382 = or i1 %4380, %4381
  %4383 = zext i1 %4382 to i8
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4383, i8* %4384, align 1
  %4385 = and i32 %4378, 255
  %4386 = call i32 @llvm.ctpop.i32(i32 %4385)
  %4387 = trunc i32 %4386 to i8
  %4388 = and i8 %4387, 1
  %4389 = xor i8 %4388, 1
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4389, i8* %4390, align 1
  %4391 = xor i64 1, %4374
  %4392 = trunc i64 %4391 to i32
  %4393 = xor i32 %4392, %4378
  %4394 = lshr i32 %4393, 4
  %4395 = trunc i32 %4394 to i8
  %4396 = and i8 %4395, 1
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4396, i8* %4397, align 1
  %4398 = icmp eq i32 %4378, 0
  %4399 = zext i1 %4398 to i8
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4399, i8* %4400, align 1
  %4401 = lshr i32 %4378, 31
  %4402 = trunc i32 %4401 to i8
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4402, i8* %4403, align 1
  %4404 = lshr i32 %4377, 31
  %4405 = xor i32 %4401, %4404
  %4406 = add i32 %4405, %4401
  %4407 = icmp eq i32 %4406, 2
  %4408 = zext i1 %4407 to i8
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4408, i8* %4409, align 1
  store %struct.Memory* %loadMem_43d82a, %struct.Memory** %MEMORY
  %loadMem_43d82d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4411 = getelementptr inbounds %struct.GPR, %struct.GPR* %4410, i32 0, i32 33
  %4412 = getelementptr inbounds %struct.Reg, %struct.Reg* %4411, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %4412 to i64*
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4414 = getelementptr inbounds %struct.GPR, %struct.GPR* %4413, i32 0, i32 1
  %4415 = getelementptr inbounds %struct.Reg, %struct.Reg* %4414, i32 0, i32 0
  %EAX.i374 = bitcast %union.anon* %4415 to i32*
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4417 = getelementptr inbounds %struct.GPR, %struct.GPR* %4416, i32 0, i32 15
  %4418 = getelementptr inbounds %struct.Reg, %struct.Reg* %4417, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %4418 to i64*
  %4419 = load i64, i64* %RBP.i375
  %4420 = sub i64 %4419, 36
  %4421 = load i32, i32* %EAX.i374
  %4422 = zext i32 %4421 to i64
  %4423 = load i64, i64* %PC.i373
  %4424 = add i64 %4423, 3
  store i64 %4424, i64* %PC.i373
  %4425 = inttoptr i64 %4420 to i32*
  store i32 %4421, i32* %4425
  store %struct.Memory* %loadMem_43d82d, %struct.Memory** %MEMORY
  %loadMem_43d830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 33
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %4428 to i64*
  %4429 = load i64, i64* %PC.i372
  %4430 = add i64 %4429, -92
  %4431 = load i64, i64* %PC.i372
  %4432 = add i64 %4431, 5
  store i64 %4432, i64* %PC.i372
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4430, i64* %4433, align 8
  store %struct.Memory* %loadMem_43d830, %struct.Memory** %MEMORY
  br label %block_.L_43d7d4

block_.L_43d835:                                  ; preds = %block_43d816, %block_.L_43d7d4
  %loadMem_43d835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4435 = getelementptr inbounds %struct.GPR, %struct.GPR* %4434, i32 0, i32 33
  %4436 = getelementptr inbounds %struct.Reg, %struct.Reg* %4435, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %4436 to i64*
  %4437 = load i64, i64* %PC.i371
  %4438 = add i64 %4437, -551
  %4439 = load i64, i64* %PC.i371
  %4440 = add i64 %4439, 5
  store i64 %4440, i64* %PC.i371
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4438, i64* %4441, align 8
  store %struct.Memory* %loadMem_43d835, %struct.Memory** %MEMORY
  br label %block_.L_43d60e

block_.L_43d83a:                                  ; preds = %block_43d61f
  %loadMem_43d83a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 33
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %4444 to i64*
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 15
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %4447 to i64*
  %4448 = load i64, i64* %RBP.i370
  %4449 = sub i64 %4448, 36
  %4450 = load i64, i64* %PC.i369
  %4451 = add i64 %4450, 7
  store i64 %4451, i64* %PC.i369
  %4452 = inttoptr i64 %4449 to i32*
  store i32 0, i32* %4452
  store %struct.Memory* %loadMem_43d83a, %struct.Memory** %MEMORY
  br label %block_.L_43d841

block_.L_43d841:                                  ; preds = %block_.L_43d8f1, %block_.L_43d83a
  %loadMem_43d841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 33
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %4455 to i64*
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 15
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %4458 to i64*
  %4459 = load i64, i64* %RBP.i368
  %4460 = sub i64 %4459, 36
  %4461 = load i64, i64* %PC.i367
  %4462 = add i64 %4461, 4
  store i64 %4462, i64* %PC.i367
  %4463 = inttoptr i64 %4460 to i32*
  %4464 = load i32, i32* %4463
  %4465 = sub i32 %4464, 26
  %4466 = icmp ult i32 %4464, 26
  %4467 = zext i1 %4466 to i8
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4467, i8* %4468, align 1
  %4469 = and i32 %4465, 255
  %4470 = call i32 @llvm.ctpop.i32(i32 %4469)
  %4471 = trunc i32 %4470 to i8
  %4472 = and i8 %4471, 1
  %4473 = xor i8 %4472, 1
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4473, i8* %4474, align 1
  %4475 = xor i32 %4464, 26
  %4476 = xor i32 %4475, %4465
  %4477 = lshr i32 %4476, 4
  %4478 = trunc i32 %4477 to i8
  %4479 = and i8 %4478, 1
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4479, i8* %4480, align 1
  %4481 = icmp eq i32 %4465, 0
  %4482 = zext i1 %4481 to i8
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4482, i8* %4483, align 1
  %4484 = lshr i32 %4465, 31
  %4485 = trunc i32 %4484 to i8
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4485, i8* %4486, align 1
  %4487 = lshr i32 %4464, 31
  %4488 = xor i32 %4484, %4487
  %4489 = add i32 %4488, %4487
  %4490 = icmp eq i32 %4489, 2
  %4491 = zext i1 %4490 to i8
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4491, i8* %4492, align 1
  store %struct.Memory* %loadMem_43d841, %struct.Memory** %MEMORY
  %loadMem_43d845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 33
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %4495 to i64*
  %4496 = load i64, i64* %PC.i366
  %4497 = add i64 %4496, 186
  %4498 = load i64, i64* %PC.i366
  %4499 = add i64 %4498, 6
  %4500 = load i64, i64* %PC.i366
  %4501 = add i64 %4500, 6
  store i64 %4501, i64* %PC.i366
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4503 = load i8, i8* %4502, align 1
  %4504 = icmp ne i8 %4503, 0
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4506 = load i8, i8* %4505, align 1
  %4507 = icmp ne i8 %4506, 0
  %4508 = xor i1 %4504, %4507
  %4509 = xor i1 %4508, true
  %4510 = zext i1 %4509 to i8
  store i8 %4510, i8* %BRANCH_TAKEN, align 1
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4512 = select i1 %4508, i64 %4499, i64 %4497
  store i64 %4512, i64* %4511, align 8
  store %struct.Memory* %loadMem_43d845, %struct.Memory** %MEMORY
  %loadBr_43d845 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d845 = icmp eq i8 %loadBr_43d845, 1
  br i1 %cmpBr_43d845, label %block_.L_43d8ff, label %block_43d84b

block_43d84b:                                     ; preds = %block_.L_43d841
  %loadMem_43d84b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 33
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %4515 to i64*
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4517 = getelementptr inbounds %struct.GPR, %struct.GPR* %4516, i32 0, i32 1
  %4518 = getelementptr inbounds %struct.Reg, %struct.Reg* %4517, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %4518 to i64*
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4520 = getelementptr inbounds %struct.GPR, %struct.GPR* %4519, i32 0, i32 15
  %4521 = getelementptr inbounds %struct.Reg, %struct.Reg* %4520, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %4521 to i64*
  %4522 = load i64, i64* %RBP.i365
  %4523 = sub i64 %4522, 56
  %4524 = load i64, i64* %PC.i363
  %4525 = add i64 %4524, 4
  store i64 %4525, i64* %PC.i363
  %4526 = inttoptr i64 %4523 to i64*
  %4527 = load i64, i64* %4526
  store i64 %4527, i64* %RAX.i364, align 8
  store %struct.Memory* %loadMem_43d84b, %struct.Memory** %MEMORY
  %loadMem_43d84f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4529 = getelementptr inbounds %struct.GPR, %struct.GPR* %4528, i32 0, i32 33
  %4530 = getelementptr inbounds %struct.Reg, %struct.Reg* %4529, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %4530 to i64*
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4532 = getelementptr inbounds %struct.GPR, %struct.GPR* %4531, i32 0, i32 5
  %4533 = getelementptr inbounds %struct.Reg, %struct.Reg* %4532, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %4533 to i64*
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4535 = getelementptr inbounds %struct.GPR, %struct.GPR* %4534, i32 0, i32 15
  %4536 = getelementptr inbounds %struct.Reg, %struct.Reg* %4535, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %4536 to i64*
  %4537 = load i64, i64* %RBP.i362
  %4538 = sub i64 %4537, 36
  %4539 = load i64, i64* %PC.i360
  %4540 = add i64 %4539, 4
  store i64 %4540, i64* %PC.i360
  %4541 = inttoptr i64 %4538 to i32*
  %4542 = load i32, i32* %4541
  %4543 = sext i32 %4542 to i64
  store i64 %4543, i64* %RCX.i361, align 8
  store %struct.Memory* %loadMem_43d84f, %struct.Memory** %MEMORY
  %loadMem_43d853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 33
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %4546 to i64*
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4548 = getelementptr inbounds %struct.GPR, %struct.GPR* %4547, i32 0, i32 1
  %4549 = getelementptr inbounds %struct.Reg, %struct.Reg* %4548, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %4549 to i64*
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4551 = getelementptr inbounds %struct.GPR, %struct.GPR* %4550, i32 0, i32 5
  %4552 = getelementptr inbounds %struct.Reg, %struct.Reg* %4551, i32 0, i32 0
  %RCX.i358 = bitcast %union.anon* %4552 to i64*
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4554 = getelementptr inbounds %struct.GPR, %struct.GPR* %4553, i32 0, i32 7
  %4555 = getelementptr inbounds %struct.Reg, %struct.Reg* %4554, i32 0, i32 0
  %RDX.i359 = bitcast %union.anon* %4555 to i64*
  %4556 = load i64, i64* %RAX.i357
  %4557 = load i64, i64* %RCX.i358
  %4558 = mul i64 %4557, 4
  %4559 = add i64 %4558, %4556
  %4560 = load i64, i64* %PC.i356
  %4561 = add i64 %4560, 3
  store i64 %4561, i64* %PC.i356
  %4562 = inttoptr i64 %4559 to i32*
  %4563 = load i32, i32* %4562
  %4564 = zext i32 %4563 to i64
  store i64 %4564, i64* %RDX.i359, align 8
  store %struct.Memory* %loadMem_43d853, %struct.Memory** %MEMORY
  %loadMem_43d856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4566 = getelementptr inbounds %struct.GPR, %struct.GPR* %4565, i32 0, i32 33
  %4567 = getelementptr inbounds %struct.Reg, %struct.Reg* %4566, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %4567 to i64*
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 7
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %RDX.i355 = bitcast %union.anon* %4570 to i64*
  %4571 = load i64, i64* %RDX.i355
  %4572 = load i64, i64* %PC.i354
  %4573 = add i64 %4572, 3
  store i64 %4573, i64* %PC.i354
  %4574 = trunc i64 %4571 to i32
  %4575 = sub i32 %4574, 1
  %4576 = zext i32 %4575 to i64
  store i64 %4576, i64* %RDX.i355, align 8
  %4577 = icmp ult i32 %4574, 1
  %4578 = zext i1 %4577 to i8
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4578, i8* %4579, align 1
  %4580 = and i32 %4575, 255
  %4581 = call i32 @llvm.ctpop.i32(i32 %4580)
  %4582 = trunc i32 %4581 to i8
  %4583 = and i8 %4582, 1
  %4584 = xor i8 %4583, 1
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4584, i8* %4585, align 1
  %4586 = xor i64 1, %4571
  %4587 = trunc i64 %4586 to i32
  %4588 = xor i32 %4587, %4575
  %4589 = lshr i32 %4588, 4
  %4590 = trunc i32 %4589 to i8
  %4591 = and i8 %4590, 1
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4591, i8* %4592, align 1
  %4593 = icmp eq i32 %4575, 0
  %4594 = zext i1 %4593 to i8
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4594, i8* %4595, align 1
  %4596 = lshr i32 %4575, 31
  %4597 = trunc i32 %4596 to i8
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4597, i8* %4598, align 1
  %4599 = lshr i32 %4574, 31
  %4600 = xor i32 %4596, %4599
  %4601 = add i32 %4600, %4599
  %4602 = icmp eq i32 %4601, 2
  %4603 = zext i1 %4602 to i8
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4603, i8* %4604, align 1
  store %struct.Memory* %loadMem_43d856, %struct.Memory** %MEMORY
  %loadMem_43d859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 33
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %4607 to i64*
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 7
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4610 to i32*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 15
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %4613 to i64*
  %4614 = load i64, i64* %RBP.i353
  %4615 = sub i64 %4614, 68
  %4616 = load i32, i32* %EDX.i
  %4617 = zext i32 %4616 to i64
  %4618 = load i64, i64* %PC.i352
  %4619 = add i64 %4618, 3
  store i64 %4619, i64* %PC.i352
  %4620 = inttoptr i64 %4615 to i32*
  store i32 %4616, i32* %4620
  store %struct.Memory* %loadMem_43d859, %struct.Memory** %MEMORY
  br label %block_.L_43d85c

block_.L_43d85c:                                  ; preds = %block_43d866, %block_43d84b
  %loadMem_43d85c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 33
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %4623 to i64*
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4625 = getelementptr inbounds %struct.GPR, %struct.GPR* %4624, i32 0, i32 15
  %4626 = getelementptr inbounds %struct.Reg, %struct.Reg* %4625, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %4626 to i64*
  %4627 = load i64, i64* %RBP.i351
  %4628 = sub i64 %4627, 68
  %4629 = load i64, i64* %PC.i350
  %4630 = add i64 %4629, 4
  store i64 %4630, i64* %PC.i350
  %4631 = inttoptr i64 %4628 to i32*
  %4632 = load i32, i32* %4631
  %4633 = sub i32 %4632, 1
  %4634 = icmp ult i32 %4632, 1
  %4635 = zext i1 %4634 to i8
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4635, i8* %4636, align 1
  %4637 = and i32 %4633, 255
  %4638 = call i32 @llvm.ctpop.i32(i32 %4637)
  %4639 = trunc i32 %4638 to i8
  %4640 = and i8 %4639, 1
  %4641 = xor i8 %4640, 1
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4641, i8* %4642, align 1
  %4643 = xor i32 %4632, 1
  %4644 = xor i32 %4643, %4633
  %4645 = lshr i32 %4644, 4
  %4646 = trunc i32 %4645 to i8
  %4647 = and i8 %4646, 1
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4647, i8* %4648, align 1
  %4649 = icmp eq i32 %4633, 0
  %4650 = zext i1 %4649 to i8
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4650, i8* %4651, align 1
  %4652 = lshr i32 %4633, 31
  %4653 = trunc i32 %4652 to i8
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4653, i8* %4654, align 1
  %4655 = lshr i32 %4632, 31
  %4656 = xor i32 %4652, %4655
  %4657 = add i32 %4656, %4655
  %4658 = icmp eq i32 %4657, 2
  %4659 = zext i1 %4658 to i8
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4659, i8* %4660, align 1
  store %struct.Memory* %loadMem_43d85c, %struct.Memory** %MEMORY
  %loadMem_43d860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 33
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %4663 to i64*
  %4664 = load i64, i64* %PC.i349
  %4665 = add i64 %4664, 140
  %4666 = load i64, i64* %PC.i349
  %4667 = add i64 %4666, 6
  %4668 = load i64, i64* %PC.i349
  %4669 = add i64 %4668, 6
  store i64 %4669, i64* %PC.i349
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4671 = load i8, i8* %4670, align 1
  %4672 = icmp ne i8 %4671, 0
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4674 = load i8, i8* %4673, align 1
  %4675 = icmp ne i8 %4674, 0
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4677 = load i8, i8* %4676, align 1
  %4678 = icmp ne i8 %4677, 0
  %4679 = xor i1 %4675, %4678
  %4680 = or i1 %4672, %4679
  %4681 = zext i1 %4680 to i8
  store i8 %4681, i8* %BRANCH_TAKEN, align 1
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4683 = select i1 %4680, i64 %4665, i64 %4667
  store i64 %4683, i64* %4682, align 8
  store %struct.Memory* %loadMem_43d860, %struct.Memory** %MEMORY
  %loadBr_43d860 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d860 = icmp eq i8 %loadBr_43d860, 1
  br i1 %cmpBr_43d860, label %block_.L_43d8ec, label %block_43d866

block_43d866:                                     ; preds = %block_.L_43d85c
  %loadMem1_43d866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4685 = getelementptr inbounds %struct.GPR, %struct.GPR* %4684, i32 0, i32 33
  %4686 = getelementptr inbounds %struct.Reg, %struct.Reg* %4685, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %4686 to i64*
  %4687 = load i64, i64* %PC.i348
  %4688 = add i64 %4687, 31642
  %4689 = load i64, i64* %PC.i348
  %4690 = add i64 %4689, 5
  %4691 = load i64, i64* %PC.i348
  %4692 = add i64 %4691, 5
  store i64 %4692, i64* %PC.i348
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4694 = load i64, i64* %4693, align 8
  %4695 = add i64 %4694, -8
  %4696 = inttoptr i64 %4695 to i64*
  store i64 %4690, i64* %4696
  store i64 %4695, i64* %4693, align 8
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4688, i64* %4697, align 8
  store %struct.Memory* %loadMem1_43d866, %struct.Memory** %MEMORY
  %loadMem2_43d866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43d866 = load i64, i64* %3
  %call2_43d866 = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64 %loadPC_43d866, %struct.Memory* %loadMem2_43d866)
  store %struct.Memory* %call2_43d866, %struct.Memory** %MEMORY
  %loadMem_43d86b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4699 = getelementptr inbounds %struct.GPR, %struct.GPR* %4698, i32 0, i32 33
  %4700 = getelementptr inbounds %struct.Reg, %struct.Reg* %4699, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %4700 to i64*
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4702 = getelementptr inbounds %struct.GPR, %struct.GPR* %4701, i32 0, i32 15
  %4703 = getelementptr inbounds %struct.Reg, %struct.Reg* %4702, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %4703 to i64*
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4705 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4704, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %4705 to %"class.std::bitset"*
  %4706 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4707 = load i64, i64* %RBP.i347
  %4708 = sub i64 %4707, 68
  %4709 = load i64, i64* %PC.i346
  %4710 = add i64 %4709, 5
  store i64 %4710, i64* %PC.i346
  %4711 = inttoptr i64 %4708 to i32*
  %4712 = load i32, i32* %4711
  %4713 = sitofp i32 %4712 to double
  %4714 = bitcast i8* %4706 to double*
  store double %4713, double* %4714, align 1
  store %struct.Memory* %loadMem_43d86b, %struct.Memory** %MEMORY
  %loadMem_43d870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 33
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %4717 to i64*
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4719 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4718, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %4719 to %"class.std::bitset"*
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4721 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4720, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4721 to %union.vec128_t*
  %4722 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4723 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4724 = bitcast %union.vec128_t* %XMM1.i to i8*
  %4725 = load i64, i64* %PC.i345
  %4726 = add i64 %4725, 4
  store i64 %4726, i64* %PC.i345
  %4727 = bitcast i8* %4723 to double*
  %4728 = load double, double* %4727, align 1
  %4729 = getelementptr inbounds i8, i8* %4723, i64 8
  %4730 = bitcast i8* %4729 to i64*
  %4731 = load i64, i64* %4730, align 1
  %4732 = bitcast i8* %4724 to double*
  %4733 = load double, double* %4732, align 1
  %4734 = fmul double %4728, %4733
  %4735 = bitcast i8* %4722 to double*
  store double %4734, double* %4735, align 1
  %4736 = getelementptr inbounds i8, i8* %4722, i64 8
  %4737 = bitcast i8* %4736 to i64*
  store i64 %4731, i64* %4737, align 1
  store %struct.Memory* %loadMem_43d870, %struct.Memory** %MEMORY
  %loadMem_43d874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 33
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %4740 to i64*
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 1
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %4743 to i64*
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4745 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4744, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %4745 to %union.vec128_t*
  %4746 = bitcast %union.vec128_t* %XMM0.i to i8*
  %4747 = load i64, i64* %PC.i343
  %4748 = add i64 %4747, 4
  store i64 %4748, i64* %PC.i343
  %4749 = bitcast i8* %4746 to double*
  %4750 = load double, double* %4749, align 1
  %4751 = call double @llvm.trunc.f64(double %4750)
  %4752 = call double @llvm.fabs.f64(double %4751)
  %4753 = fcmp ogt double %4752, 0x41DFFFFFFFC00000
  %4754 = fptosi double %4751 to i32
  %4755 = zext i32 %4754 to i64
  %4756 = select i1 %4753, i64 2147483648, i64 %4755
  store i64 %4756, i64* %RAX.i344, align 8
  store %struct.Memory* %loadMem_43d874, %struct.Memory** %MEMORY
  %loadMem_43d878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 33
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %4759 to i64*
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4761 = getelementptr inbounds %struct.GPR, %struct.GPR* %4760, i32 0, i32 1
  %4762 = getelementptr inbounds %struct.Reg, %struct.Reg* %4761, i32 0, i32 0
  %EAX.i341 = bitcast %union.anon* %4762 to i32*
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4764 = getelementptr inbounds %struct.GPR, %struct.GPR* %4763, i32 0, i32 15
  %4765 = getelementptr inbounds %struct.Reg, %struct.Reg* %4764, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %4765 to i64*
  %4766 = load i64, i64* %RBP.i342
  %4767 = sub i64 %4766, 32
  %4768 = load i32, i32* %EAX.i341
  %4769 = zext i32 %4768 to i64
  %4770 = load i64, i64* %PC.i340
  %4771 = add i64 %4770, 3
  store i64 %4771, i64* %PC.i340
  %4772 = inttoptr i64 %4767 to i32*
  store i32 %4768, i32* %4772
  store %struct.Memory* %loadMem_43d878, %struct.Memory** %MEMORY
  %loadMem_43d87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 33
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %4775 to i64*
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4777 = getelementptr inbounds %struct.GPR, %struct.GPR* %4776, i32 0, i32 5
  %4778 = getelementptr inbounds %struct.Reg, %struct.Reg* %4777, i32 0, i32 0
  %RCX.i338 = bitcast %union.anon* %4778 to i64*
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4780 = getelementptr inbounds %struct.GPR, %struct.GPR* %4779, i32 0, i32 15
  %4781 = getelementptr inbounds %struct.Reg, %struct.Reg* %4780, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %4781 to i64*
  %4782 = load i64, i64* %RBP.i339
  %4783 = sub i64 %4782, 48
  %4784 = load i64, i64* %PC.i337
  %4785 = add i64 %4784, 4
  store i64 %4785, i64* %PC.i337
  %4786 = inttoptr i64 %4783 to i64*
  %4787 = load i64, i64* %4786
  store i64 %4787, i64* %RCX.i338, align 8
  store %struct.Memory* %loadMem_43d87b, %struct.Memory** %MEMORY
  %loadMem_43d87f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 33
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %4790 to i64*
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4792 = getelementptr inbounds %struct.GPR, %struct.GPR* %4791, i32 0, i32 7
  %4793 = getelementptr inbounds %struct.Reg, %struct.Reg* %4792, i32 0, i32 0
  %RDX.i335 = bitcast %union.anon* %4793 to i64*
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4795 = getelementptr inbounds %struct.GPR, %struct.GPR* %4794, i32 0, i32 15
  %4796 = getelementptr inbounds %struct.Reg, %struct.Reg* %4795, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %4796 to i64*
  %4797 = load i64, i64* %RBP.i336
  %4798 = sub i64 %4797, 36
  %4799 = load i64, i64* %PC.i334
  %4800 = add i64 %4799, 4
  store i64 %4800, i64* %PC.i334
  %4801 = inttoptr i64 %4798 to i32*
  %4802 = load i32, i32* %4801
  %4803 = sext i32 %4802 to i64
  store i64 %4803, i64* %RDX.i335, align 8
  store %struct.Memory* %loadMem_43d87f, %struct.Memory** %MEMORY
  %loadMem_43d883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4805 = getelementptr inbounds %struct.GPR, %struct.GPR* %4804, i32 0, i32 33
  %4806 = getelementptr inbounds %struct.Reg, %struct.Reg* %4805, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %4806 to i64*
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4808 = getelementptr inbounds %struct.GPR, %struct.GPR* %4807, i32 0, i32 5
  %4809 = getelementptr inbounds %struct.Reg, %struct.Reg* %4808, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %4809 to i64*
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4811 = getelementptr inbounds %struct.GPR, %struct.GPR* %4810, i32 0, i32 7
  %4812 = getelementptr inbounds %struct.Reg, %struct.Reg* %4811, i32 0, i32 0
  %RDX.i333 = bitcast %union.anon* %4812 to i64*
  %4813 = load i64, i64* %RCX.i332
  %4814 = load i64, i64* %RDX.i333
  %4815 = mul i64 %4814, 8
  %4816 = add i64 %4815, %4813
  %4817 = load i64, i64* %PC.i331
  %4818 = add i64 %4817, 4
  store i64 %4818, i64* %PC.i331
  %4819 = inttoptr i64 %4816 to i64*
  %4820 = load i64, i64* %4819
  store i64 %4820, i64* %RCX.i332, align 8
  store %struct.Memory* %loadMem_43d883, %struct.Memory** %MEMORY
  %loadMem_43d887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4822 = getelementptr inbounds %struct.GPR, %struct.GPR* %4821, i32 0, i32 33
  %4823 = getelementptr inbounds %struct.Reg, %struct.Reg* %4822, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %4823 to i64*
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4825 = getelementptr inbounds %struct.GPR, %struct.GPR* %4824, i32 0, i32 7
  %4826 = getelementptr inbounds %struct.Reg, %struct.Reg* %4825, i32 0, i32 0
  %RDX.i329 = bitcast %union.anon* %4826 to i64*
  %4827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4828 = getelementptr inbounds %struct.GPR, %struct.GPR* %4827, i32 0, i32 15
  %4829 = getelementptr inbounds %struct.Reg, %struct.Reg* %4828, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %4829 to i64*
  %4830 = load i64, i64* %RBP.i330
  %4831 = sub i64 %4830, 32
  %4832 = load i64, i64* %PC.i328
  %4833 = add i64 %4832, 4
  store i64 %4833, i64* %PC.i328
  %4834 = inttoptr i64 %4831 to i32*
  %4835 = load i32, i32* %4834
  %4836 = sext i32 %4835 to i64
  store i64 %4836, i64* %RDX.i329, align 8
  store %struct.Memory* %loadMem_43d887, %struct.Memory** %MEMORY
  %loadMem_43d88b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4838 = getelementptr inbounds %struct.GPR, %struct.GPR* %4837, i32 0, i32 33
  %4839 = getelementptr inbounds %struct.Reg, %struct.Reg* %4838, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %4839 to i64*
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4841 = getelementptr inbounds %struct.GPR, %struct.GPR* %4840, i32 0, i32 1
  %4842 = getelementptr inbounds %struct.Reg, %struct.Reg* %4841, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %4842 to i64*
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4844 = getelementptr inbounds %struct.GPR, %struct.GPR* %4843, i32 0, i32 5
  %4845 = getelementptr inbounds %struct.Reg, %struct.Reg* %4844, i32 0, i32 0
  %RCX.i326 = bitcast %union.anon* %4845 to i64*
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4847 = getelementptr inbounds %struct.GPR, %struct.GPR* %4846, i32 0, i32 7
  %4848 = getelementptr inbounds %struct.Reg, %struct.Reg* %4847, i32 0, i32 0
  %RDX.i327 = bitcast %union.anon* %4848 to i64*
  %4849 = load i64, i64* %RCX.i326
  %4850 = load i64, i64* %RDX.i327
  %4851 = add i64 %4850, %4849
  %4852 = load i64, i64* %PC.i324
  %4853 = add i64 %4852, 4
  store i64 %4853, i64* %PC.i324
  %4854 = inttoptr i64 %4851 to i8*
  %4855 = load i8, i8* %4854
  %4856 = sext i8 %4855 to i64
  %4857 = and i64 %4856, 4294967295
  store i64 %4857, i64* %RAX.i325, align 8
  store %struct.Memory* %loadMem_43d88b, %struct.Memory** %MEMORY
  %loadMem_43d88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4859 = getelementptr inbounds %struct.GPR, %struct.GPR* %4858, i32 0, i32 33
  %4860 = getelementptr inbounds %struct.Reg, %struct.Reg* %4859, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %4860 to i64*
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 1
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %EAX.i322 = bitcast %union.anon* %4863 to i32*
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 15
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %4866 to i64*
  %4867 = load i64, i64* %RBP.i323
  %4868 = sub i64 %4867, 40
  %4869 = load i32, i32* %EAX.i322
  %4870 = zext i32 %4869 to i64
  %4871 = load i64, i64* %PC.i321
  %4872 = add i64 %4871, 3
  store i64 %4872, i64* %PC.i321
  %4873 = inttoptr i64 %4868 to i32*
  store i32 %4869, i32* %4873
  store %struct.Memory* %loadMem_43d88f, %struct.Memory** %MEMORY
  %loadMem_43d892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4875 = getelementptr inbounds %struct.GPR, %struct.GPR* %4874, i32 0, i32 33
  %4876 = getelementptr inbounds %struct.Reg, %struct.Reg* %4875, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %4876 to i64*
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 5
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %RCX.i319 = bitcast %union.anon* %4879 to i64*
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 15
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %4882 to i64*
  %4883 = load i64, i64* %RBP.i320
  %4884 = sub i64 %4883, 48
  %4885 = load i64, i64* %PC.i318
  %4886 = add i64 %4885, 4
  store i64 %4886, i64* %PC.i318
  %4887 = inttoptr i64 %4884 to i64*
  %4888 = load i64, i64* %4887
  store i64 %4888, i64* %RCX.i319, align 8
  store %struct.Memory* %loadMem_43d892, %struct.Memory** %MEMORY
  %loadMem_43d896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4890 = getelementptr inbounds %struct.GPR, %struct.GPR* %4889, i32 0, i32 33
  %4891 = getelementptr inbounds %struct.Reg, %struct.Reg* %4890, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %4891 to i64*
  %4892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4893 = getelementptr inbounds %struct.GPR, %struct.GPR* %4892, i32 0, i32 7
  %4894 = getelementptr inbounds %struct.Reg, %struct.Reg* %4893, i32 0, i32 0
  %RDX.i316 = bitcast %union.anon* %4894 to i64*
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4896 = getelementptr inbounds %struct.GPR, %struct.GPR* %4895, i32 0, i32 15
  %4897 = getelementptr inbounds %struct.Reg, %struct.Reg* %4896, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %4897 to i64*
  %4898 = load i64, i64* %RBP.i317
  %4899 = sub i64 %4898, 36
  %4900 = load i64, i64* %PC.i315
  %4901 = add i64 %4900, 4
  store i64 %4901, i64* %PC.i315
  %4902 = inttoptr i64 %4899 to i32*
  %4903 = load i32, i32* %4902
  %4904 = sext i32 %4903 to i64
  store i64 %4904, i64* %RDX.i316, align 8
  store %struct.Memory* %loadMem_43d896, %struct.Memory** %MEMORY
  %loadMem_43d89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4906 = getelementptr inbounds %struct.GPR, %struct.GPR* %4905, i32 0, i32 33
  %4907 = getelementptr inbounds %struct.Reg, %struct.Reg* %4906, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %4907 to i64*
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4909 = getelementptr inbounds %struct.GPR, %struct.GPR* %4908, i32 0, i32 5
  %4910 = getelementptr inbounds %struct.Reg, %struct.Reg* %4909, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %4910 to i64*
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 7
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %RDX.i314 = bitcast %union.anon* %4913 to i64*
  %4914 = load i64, i64* %RCX.i313
  %4915 = load i64, i64* %RDX.i314
  %4916 = mul i64 %4915, 8
  %4917 = add i64 %4916, %4914
  %4918 = load i64, i64* %PC.i312
  %4919 = add i64 %4918, 4
  store i64 %4919, i64* %PC.i312
  %4920 = inttoptr i64 %4917 to i64*
  %4921 = load i64, i64* %4920
  store i64 %4921, i64* %RCX.i313, align 8
  store %struct.Memory* %loadMem_43d89a, %struct.Memory** %MEMORY
  %loadMem_43d89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 33
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %4924 to i64*
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 1
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %4927 to i64*
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4929 = getelementptr inbounds %struct.GPR, %struct.GPR* %4928, i32 0, i32 15
  %4930 = getelementptr inbounds %struct.Reg, %struct.Reg* %4929, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %4930 to i64*
  %4931 = load i64, i64* %RBP.i311
  %4932 = sub i64 %4931, 68
  %4933 = load i64, i64* %PC.i309
  %4934 = add i64 %4933, 3
  store i64 %4934, i64* %PC.i309
  %4935 = inttoptr i64 %4932 to i32*
  %4936 = load i32, i32* %4935
  %4937 = zext i32 %4936 to i64
  store i64 %4937, i64* %RAX.i310, align 8
  store %struct.Memory* %loadMem_43d89e, %struct.Memory** %MEMORY
  %loadMem_43d8a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4939 = getelementptr inbounds %struct.GPR, %struct.GPR* %4938, i32 0, i32 33
  %4940 = getelementptr inbounds %struct.Reg, %struct.Reg* %4939, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %4940 to i64*
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4942 = getelementptr inbounds %struct.GPR, %struct.GPR* %4941, i32 0, i32 1
  %4943 = getelementptr inbounds %struct.Reg, %struct.Reg* %4942, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %4943 to i64*
  %4944 = load i64, i64* %RAX.i308
  %4945 = load i64, i64* %PC.i307
  %4946 = add i64 %4945, 3
  store i64 %4946, i64* %PC.i307
  %4947 = trunc i64 %4944 to i32
  %4948 = sub i32 %4947, 1
  %4949 = zext i32 %4948 to i64
  store i64 %4949, i64* %RAX.i308, align 8
  %4950 = icmp ult i32 %4947, 1
  %4951 = zext i1 %4950 to i8
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4951, i8* %4952, align 1
  %4953 = and i32 %4948, 255
  %4954 = call i32 @llvm.ctpop.i32(i32 %4953)
  %4955 = trunc i32 %4954 to i8
  %4956 = and i8 %4955, 1
  %4957 = xor i8 %4956, 1
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4957, i8* %4958, align 1
  %4959 = xor i64 1, %4944
  %4960 = trunc i64 %4959 to i32
  %4961 = xor i32 %4960, %4948
  %4962 = lshr i32 %4961, 4
  %4963 = trunc i32 %4962 to i8
  %4964 = and i8 %4963, 1
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4964, i8* %4965, align 1
  %4966 = icmp eq i32 %4948, 0
  %4967 = zext i1 %4966 to i8
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4967, i8* %4968, align 1
  %4969 = lshr i32 %4948, 31
  %4970 = trunc i32 %4969 to i8
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4970, i8* %4971, align 1
  %4972 = lshr i32 %4947, 31
  %4973 = xor i32 %4969, %4972
  %4974 = add i32 %4973, %4972
  %4975 = icmp eq i32 %4974, 2
  %4976 = zext i1 %4975 to i8
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4976, i8* %4977, align 1
  store %struct.Memory* %loadMem_43d8a1, %struct.Memory** %MEMORY
  %loadMem_43d8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 33
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %4980 to i64*
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 1
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %EAX.i305 = bitcast %union.anon* %4983 to i32*
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 7
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %RDX.i306 = bitcast %union.anon* %4986 to i64*
  %4987 = load i32, i32* %EAX.i305
  %4988 = zext i32 %4987 to i64
  %4989 = load i64, i64* %PC.i304
  %4990 = add i64 %4989, 3
  store i64 %4990, i64* %PC.i304
  %4991 = shl i64 %4988, 32
  %4992 = ashr exact i64 %4991, 32
  store i64 %4992, i64* %RDX.i306, align 8
  store %struct.Memory* %loadMem_43d8a4, %struct.Memory** %MEMORY
  %loadMem_43d8a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4994 = getelementptr inbounds %struct.GPR, %struct.GPR* %4993, i32 0, i32 33
  %4995 = getelementptr inbounds %struct.Reg, %struct.Reg* %4994, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %4995 to i64*
  %4996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4997 = getelementptr inbounds %struct.GPR, %struct.GPR* %4996, i32 0, i32 9
  %4998 = getelementptr inbounds %struct.Reg, %struct.Reg* %4997, i32 0, i32 0
  %4999 = bitcast %union.anon* %4998 to %struct.anon.2*
  %SIL.i301 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4999, i32 0, i32 0
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 5
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %5002 to i64*
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5004 = getelementptr inbounds %struct.GPR, %struct.GPR* %5003, i32 0, i32 7
  %5005 = getelementptr inbounds %struct.Reg, %struct.Reg* %5004, i32 0, i32 0
  %RDX.i303 = bitcast %union.anon* %5005 to i64*
  %5006 = load i64, i64* %RCX.i302
  %5007 = load i64, i64* %RDX.i303
  %5008 = add i64 %5007, %5006
  %5009 = load i64, i64* %PC.i300
  %5010 = add i64 %5009, 4
  store i64 %5010, i64* %PC.i300
  %5011 = inttoptr i64 %5008 to i8*
  %5012 = load i8, i8* %5011
  store i8 %5012, i8* %SIL.i301, align 1
  store %struct.Memory* %loadMem_43d8a7, %struct.Memory** %MEMORY
  %loadMem_43d8ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5014 = getelementptr inbounds %struct.GPR, %struct.GPR* %5013, i32 0, i32 33
  %5015 = getelementptr inbounds %struct.Reg, %struct.Reg* %5014, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %5015 to i64*
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5017 = getelementptr inbounds %struct.GPR, %struct.GPR* %5016, i32 0, i32 5
  %5018 = getelementptr inbounds %struct.Reg, %struct.Reg* %5017, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %5018 to i64*
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5020 = getelementptr inbounds %struct.GPR, %struct.GPR* %5019, i32 0, i32 15
  %5021 = getelementptr inbounds %struct.Reg, %struct.Reg* %5020, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %5021 to i64*
  %5022 = load i64, i64* %RBP.i299
  %5023 = sub i64 %5022, 48
  %5024 = load i64, i64* %PC.i297
  %5025 = add i64 %5024, 4
  store i64 %5025, i64* %PC.i297
  %5026 = inttoptr i64 %5023 to i64*
  %5027 = load i64, i64* %5026
  store i64 %5027, i64* %RCX.i298, align 8
  store %struct.Memory* %loadMem_43d8ab, %struct.Memory** %MEMORY
  %loadMem_43d8af = load %struct.Memory*, %struct.Memory** %MEMORY
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5029 = getelementptr inbounds %struct.GPR, %struct.GPR* %5028, i32 0, i32 33
  %5030 = getelementptr inbounds %struct.Reg, %struct.Reg* %5029, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %5030 to i64*
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5032 = getelementptr inbounds %struct.GPR, %struct.GPR* %5031, i32 0, i32 7
  %5033 = getelementptr inbounds %struct.Reg, %struct.Reg* %5032, i32 0, i32 0
  %RDX.i295 = bitcast %union.anon* %5033 to i64*
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5035 = getelementptr inbounds %struct.GPR, %struct.GPR* %5034, i32 0, i32 15
  %5036 = getelementptr inbounds %struct.Reg, %struct.Reg* %5035, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %5036 to i64*
  %5037 = load i64, i64* %RBP.i296
  %5038 = sub i64 %5037, 36
  %5039 = load i64, i64* %PC.i294
  %5040 = add i64 %5039, 4
  store i64 %5040, i64* %PC.i294
  %5041 = inttoptr i64 %5038 to i32*
  %5042 = load i32, i32* %5041
  %5043 = sext i32 %5042 to i64
  store i64 %5043, i64* %RDX.i295, align 8
  store %struct.Memory* %loadMem_43d8af, %struct.Memory** %MEMORY
  %loadMem_43d8b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5045 = getelementptr inbounds %struct.GPR, %struct.GPR* %5044, i32 0, i32 33
  %5046 = getelementptr inbounds %struct.Reg, %struct.Reg* %5045, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %5046 to i64*
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5048 = getelementptr inbounds %struct.GPR, %struct.GPR* %5047, i32 0, i32 5
  %5049 = getelementptr inbounds %struct.Reg, %struct.Reg* %5048, i32 0, i32 0
  %RCX.i292 = bitcast %union.anon* %5049 to i64*
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5051 = getelementptr inbounds %struct.GPR, %struct.GPR* %5050, i32 0, i32 7
  %5052 = getelementptr inbounds %struct.Reg, %struct.Reg* %5051, i32 0, i32 0
  %RDX.i293 = bitcast %union.anon* %5052 to i64*
  %5053 = load i64, i64* %RCX.i292
  %5054 = load i64, i64* %RDX.i293
  %5055 = mul i64 %5054, 8
  %5056 = add i64 %5055, %5053
  %5057 = load i64, i64* %PC.i291
  %5058 = add i64 %5057, 4
  store i64 %5058, i64* %PC.i291
  %5059 = inttoptr i64 %5056 to i64*
  %5060 = load i64, i64* %5059
  store i64 %5060, i64* %RCX.i292, align 8
  store %struct.Memory* %loadMem_43d8b3, %struct.Memory** %MEMORY
  %loadMem_43d8b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5062 = getelementptr inbounds %struct.GPR, %struct.GPR* %5061, i32 0, i32 33
  %5063 = getelementptr inbounds %struct.Reg, %struct.Reg* %5062, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %5063 to i64*
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5065 = getelementptr inbounds %struct.GPR, %struct.GPR* %5064, i32 0, i32 7
  %5066 = getelementptr inbounds %struct.Reg, %struct.Reg* %5065, i32 0, i32 0
  %RDX.i289 = bitcast %union.anon* %5066 to i64*
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5068 = getelementptr inbounds %struct.GPR, %struct.GPR* %5067, i32 0, i32 15
  %5069 = getelementptr inbounds %struct.Reg, %struct.Reg* %5068, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %5069 to i64*
  %5070 = load i64, i64* %RBP.i290
  %5071 = sub i64 %5070, 32
  %5072 = load i64, i64* %PC.i288
  %5073 = add i64 %5072, 4
  store i64 %5073, i64* %PC.i288
  %5074 = inttoptr i64 %5071 to i32*
  %5075 = load i32, i32* %5074
  %5076 = sext i32 %5075 to i64
  store i64 %5076, i64* %RDX.i289, align 8
  store %struct.Memory* %loadMem_43d8b7, %struct.Memory** %MEMORY
  %loadMem_43d8bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 33
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %5079 to i64*
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 9
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %5083 = bitcast %union.anon* %5082 to %struct.anon.2*
  %SIL.i285 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5083, i32 0, i32 0
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 5
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %RCX.i286 = bitcast %union.anon* %5086 to i64*
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 7
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %RDX.i287 = bitcast %union.anon* %5089 to i64*
  %5090 = load i64, i64* %RCX.i286
  %5091 = load i64, i64* %RDX.i287
  %5092 = add i64 %5091, %5090
  %5093 = load i8, i8* %SIL.i285
  %5094 = zext i8 %5093 to i64
  %5095 = load i64, i64* %PC.i284
  %5096 = add i64 %5095, 4
  store i64 %5096, i64* %PC.i284
  %5097 = inttoptr i64 %5092 to i8*
  store i8 %5093, i8* %5097
  store %struct.Memory* %loadMem_43d8bb, %struct.Memory** %MEMORY
  %loadMem_43d8bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5099 = getelementptr inbounds %struct.GPR, %struct.GPR* %5098, i32 0, i32 33
  %5100 = getelementptr inbounds %struct.Reg, %struct.Reg* %5099, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %5100 to i64*
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5102 = getelementptr inbounds %struct.GPR, %struct.GPR* %5101, i32 0, i32 1
  %5103 = getelementptr inbounds %struct.Reg, %struct.Reg* %5102, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %5103 to i64*
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 15
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %5106 to i64*
  %5107 = load i64, i64* %RBP.i283
  %5108 = sub i64 %5107, 40
  %5109 = load i64, i64* %PC.i281
  %5110 = add i64 %5109, 3
  store i64 %5110, i64* %PC.i281
  %5111 = inttoptr i64 %5108 to i32*
  %5112 = load i32, i32* %5111
  %5113 = zext i32 %5112 to i64
  store i64 %5113, i64* %RAX.i282, align 8
  store %struct.Memory* %loadMem_43d8bf, %struct.Memory** %MEMORY
  %loadMem_43d8c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5115 = getelementptr inbounds %struct.GPR, %struct.GPR* %5114, i32 0, i32 33
  %5116 = getelementptr inbounds %struct.Reg, %struct.Reg* %5115, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %5116 to i64*
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 1
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %5120 = bitcast %union.anon* %5119 to %struct.anon.2*
  %AL.i279 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5120, i32 0, i32 0
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5122 = getelementptr inbounds %struct.GPR, %struct.GPR* %5121, i32 0, i32 9
  %5123 = getelementptr inbounds %struct.Reg, %struct.Reg* %5122, i32 0, i32 0
  %5124 = bitcast %union.anon* %5123 to %struct.anon.2*
  %SIL.i280 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5124, i32 0, i32 0
  %5125 = load i8, i8* %AL.i279
  %5126 = zext i8 %5125 to i64
  %5127 = load i64, i64* %PC.i278
  %5128 = add i64 %5127, 3
  store i64 %5128, i64* %PC.i278
  store i8 %5125, i8* %SIL.i280, align 1
  store %struct.Memory* %loadMem_43d8c2, %struct.Memory** %MEMORY
  %loadMem_43d8c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5130 = getelementptr inbounds %struct.GPR, %struct.GPR* %5129, i32 0, i32 33
  %5131 = getelementptr inbounds %struct.Reg, %struct.Reg* %5130, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %5131 to i64*
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5133 = getelementptr inbounds %struct.GPR, %struct.GPR* %5132, i32 0, i32 5
  %5134 = getelementptr inbounds %struct.Reg, %struct.Reg* %5133, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %5134 to i64*
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5136 = getelementptr inbounds %struct.GPR, %struct.GPR* %5135, i32 0, i32 15
  %5137 = getelementptr inbounds %struct.Reg, %struct.Reg* %5136, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %5137 to i64*
  %5138 = load i64, i64* %RBP.i277
  %5139 = sub i64 %5138, 48
  %5140 = load i64, i64* %PC.i275
  %5141 = add i64 %5140, 4
  store i64 %5141, i64* %PC.i275
  %5142 = inttoptr i64 %5139 to i64*
  %5143 = load i64, i64* %5142
  store i64 %5143, i64* %RCX.i276, align 8
  store %struct.Memory* %loadMem_43d8c5, %struct.Memory** %MEMORY
  %loadMem_43d8c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5145 = getelementptr inbounds %struct.GPR, %struct.GPR* %5144, i32 0, i32 33
  %5146 = getelementptr inbounds %struct.Reg, %struct.Reg* %5145, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %5146 to i64*
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5148 = getelementptr inbounds %struct.GPR, %struct.GPR* %5147, i32 0, i32 7
  %5149 = getelementptr inbounds %struct.Reg, %struct.Reg* %5148, i32 0, i32 0
  %RDX.i273 = bitcast %union.anon* %5149 to i64*
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5151 = getelementptr inbounds %struct.GPR, %struct.GPR* %5150, i32 0, i32 15
  %5152 = getelementptr inbounds %struct.Reg, %struct.Reg* %5151, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %5152 to i64*
  %5153 = load i64, i64* %RBP.i274
  %5154 = sub i64 %5153, 36
  %5155 = load i64, i64* %PC.i272
  %5156 = add i64 %5155, 4
  store i64 %5156, i64* %PC.i272
  %5157 = inttoptr i64 %5154 to i32*
  %5158 = load i32, i32* %5157
  %5159 = sext i32 %5158 to i64
  store i64 %5159, i64* %RDX.i273, align 8
  store %struct.Memory* %loadMem_43d8c9, %struct.Memory** %MEMORY
  %loadMem_43d8cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5161 = getelementptr inbounds %struct.GPR, %struct.GPR* %5160, i32 0, i32 33
  %5162 = getelementptr inbounds %struct.Reg, %struct.Reg* %5161, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %5162 to i64*
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5164 = getelementptr inbounds %struct.GPR, %struct.GPR* %5163, i32 0, i32 5
  %5165 = getelementptr inbounds %struct.Reg, %struct.Reg* %5164, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %5165 to i64*
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5167 = getelementptr inbounds %struct.GPR, %struct.GPR* %5166, i32 0, i32 7
  %5168 = getelementptr inbounds %struct.Reg, %struct.Reg* %5167, i32 0, i32 0
  %RDX.i271 = bitcast %union.anon* %5168 to i64*
  %5169 = load i64, i64* %RCX.i270
  %5170 = load i64, i64* %RDX.i271
  %5171 = mul i64 %5170, 8
  %5172 = add i64 %5171, %5169
  %5173 = load i64, i64* %PC.i269
  %5174 = add i64 %5173, 4
  store i64 %5174, i64* %PC.i269
  %5175 = inttoptr i64 %5172 to i64*
  %5176 = load i64, i64* %5175
  store i64 %5176, i64* %RCX.i270, align 8
  store %struct.Memory* %loadMem_43d8cd, %struct.Memory** %MEMORY
  %loadMem_43d8d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5178 = getelementptr inbounds %struct.GPR, %struct.GPR* %5177, i32 0, i32 33
  %5179 = getelementptr inbounds %struct.Reg, %struct.Reg* %5178, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %5179 to i64*
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5181 = getelementptr inbounds %struct.GPR, %struct.GPR* %5180, i32 0, i32 1
  %5182 = getelementptr inbounds %struct.Reg, %struct.Reg* %5181, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %5182 to i64*
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5184 = getelementptr inbounds %struct.GPR, %struct.GPR* %5183, i32 0, i32 15
  %5185 = getelementptr inbounds %struct.Reg, %struct.Reg* %5184, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %5185 to i64*
  %5186 = load i64, i64* %RBP.i268
  %5187 = sub i64 %5186, 68
  %5188 = load i64, i64* %PC.i266
  %5189 = add i64 %5188, 3
  store i64 %5189, i64* %PC.i266
  %5190 = inttoptr i64 %5187 to i32*
  %5191 = load i32, i32* %5190
  %5192 = zext i32 %5191 to i64
  store i64 %5192, i64* %RAX.i267, align 8
  store %struct.Memory* %loadMem_43d8d1, %struct.Memory** %MEMORY
  %loadMem_43d8d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5194 = getelementptr inbounds %struct.GPR, %struct.GPR* %5193, i32 0, i32 33
  %5195 = getelementptr inbounds %struct.Reg, %struct.Reg* %5194, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %5195 to i64*
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 1
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %RAX.i265 = bitcast %union.anon* %5198 to i64*
  %5199 = load i64, i64* %RAX.i265
  %5200 = load i64, i64* %PC.i264
  %5201 = add i64 %5200, 3
  store i64 %5201, i64* %PC.i264
  %5202 = trunc i64 %5199 to i32
  %5203 = sub i32 %5202, 1
  %5204 = zext i32 %5203 to i64
  store i64 %5204, i64* %RAX.i265, align 8
  %5205 = icmp ult i32 %5202, 1
  %5206 = zext i1 %5205 to i8
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5206, i8* %5207, align 1
  %5208 = and i32 %5203, 255
  %5209 = call i32 @llvm.ctpop.i32(i32 %5208)
  %5210 = trunc i32 %5209 to i8
  %5211 = and i8 %5210, 1
  %5212 = xor i8 %5211, 1
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5212, i8* %5213, align 1
  %5214 = xor i64 1, %5199
  %5215 = trunc i64 %5214 to i32
  %5216 = xor i32 %5215, %5203
  %5217 = lshr i32 %5216, 4
  %5218 = trunc i32 %5217 to i8
  %5219 = and i8 %5218, 1
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5219, i8* %5220, align 1
  %5221 = icmp eq i32 %5203, 0
  %5222 = zext i1 %5221 to i8
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5222, i8* %5223, align 1
  %5224 = lshr i32 %5203, 31
  %5225 = trunc i32 %5224 to i8
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5225, i8* %5226, align 1
  %5227 = lshr i32 %5202, 31
  %5228 = xor i32 %5224, %5227
  %5229 = add i32 %5228, %5227
  %5230 = icmp eq i32 %5229, 2
  %5231 = zext i1 %5230 to i8
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5231, i8* %5232, align 1
  store %struct.Memory* %loadMem_43d8d4, %struct.Memory** %MEMORY
  %loadMem_43d8d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5234 = getelementptr inbounds %struct.GPR, %struct.GPR* %5233, i32 0, i32 33
  %5235 = getelementptr inbounds %struct.Reg, %struct.Reg* %5234, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %5235 to i64*
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5237 = getelementptr inbounds %struct.GPR, %struct.GPR* %5236, i32 0, i32 1
  %5238 = getelementptr inbounds %struct.Reg, %struct.Reg* %5237, i32 0, i32 0
  %EAX.i262 = bitcast %union.anon* %5238 to i32*
  %5239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5240 = getelementptr inbounds %struct.GPR, %struct.GPR* %5239, i32 0, i32 7
  %5241 = getelementptr inbounds %struct.Reg, %struct.Reg* %5240, i32 0, i32 0
  %RDX.i263 = bitcast %union.anon* %5241 to i64*
  %5242 = load i32, i32* %EAX.i262
  %5243 = zext i32 %5242 to i64
  %5244 = load i64, i64* %PC.i261
  %5245 = add i64 %5244, 3
  store i64 %5245, i64* %PC.i261
  %5246 = shl i64 %5243, 32
  %5247 = ashr exact i64 %5246, 32
  store i64 %5247, i64* %RDX.i263, align 8
  store %struct.Memory* %loadMem_43d8d7, %struct.Memory** %MEMORY
  %loadMem_43d8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %5248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5249 = getelementptr inbounds %struct.GPR, %struct.GPR* %5248, i32 0, i32 33
  %5250 = getelementptr inbounds %struct.Reg, %struct.Reg* %5249, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %5250 to i64*
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5252 = getelementptr inbounds %struct.GPR, %struct.GPR* %5251, i32 0, i32 9
  %5253 = getelementptr inbounds %struct.Reg, %struct.Reg* %5252, i32 0, i32 0
  %5254 = bitcast %union.anon* %5253 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5254, i32 0, i32 0
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 5
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %5257 to i64*
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 7
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %RDX.i260 = bitcast %union.anon* %5260 to i64*
  %5261 = load i64, i64* %RCX.i259
  %5262 = load i64, i64* %RDX.i260
  %5263 = add i64 %5262, %5261
  %5264 = load i8, i8* %SIL.i
  %5265 = zext i8 %5264 to i64
  %5266 = load i64, i64* %PC.i258
  %5267 = add i64 %5266, 4
  store i64 %5267, i64* %PC.i258
  %5268 = inttoptr i64 %5263 to i8*
  store i8 %5264, i8* %5268
  store %struct.Memory* %loadMem_43d8da, %struct.Memory** %MEMORY
  %loadMem_43d8de = load %struct.Memory*, %struct.Memory** %MEMORY
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5270 = getelementptr inbounds %struct.GPR, %struct.GPR* %5269, i32 0, i32 33
  %5271 = getelementptr inbounds %struct.Reg, %struct.Reg* %5270, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %5271 to i64*
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 1
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %5274 to i64*
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5276 = getelementptr inbounds %struct.GPR, %struct.GPR* %5275, i32 0, i32 15
  %5277 = getelementptr inbounds %struct.Reg, %struct.Reg* %5276, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %5277 to i64*
  %5278 = load i64, i64* %RBP.i257
  %5279 = sub i64 %5278, 68
  %5280 = load i64, i64* %PC.i255
  %5281 = add i64 %5280, 3
  store i64 %5281, i64* %PC.i255
  %5282 = inttoptr i64 %5279 to i32*
  %5283 = load i32, i32* %5282
  %5284 = zext i32 %5283 to i64
  store i64 %5284, i64* %RAX.i256, align 8
  store %struct.Memory* %loadMem_43d8de, %struct.Memory** %MEMORY
  %loadMem_43d8e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5286 = getelementptr inbounds %struct.GPR, %struct.GPR* %5285, i32 0, i32 33
  %5287 = getelementptr inbounds %struct.Reg, %struct.Reg* %5286, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %5287 to i64*
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5289 = getelementptr inbounds %struct.GPR, %struct.GPR* %5288, i32 0, i32 1
  %5290 = getelementptr inbounds %struct.Reg, %struct.Reg* %5289, i32 0, i32 0
  %RAX.i254 = bitcast %union.anon* %5290 to i64*
  %5291 = load i64, i64* %RAX.i254
  %5292 = load i64, i64* %PC.i253
  %5293 = add i64 %5292, 3
  store i64 %5293, i64* %PC.i253
  %5294 = trunc i64 %5291 to i32
  %5295 = add i32 -1, %5294
  %5296 = zext i32 %5295 to i64
  store i64 %5296, i64* %RAX.i254, align 8
  %5297 = icmp ult i32 %5295, %5294
  %5298 = icmp ult i32 %5295, -1
  %5299 = or i1 %5297, %5298
  %5300 = zext i1 %5299 to i8
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5300, i8* %5301, align 1
  %5302 = and i32 %5295, 255
  %5303 = call i32 @llvm.ctpop.i32(i32 %5302)
  %5304 = trunc i32 %5303 to i8
  %5305 = and i8 %5304, 1
  %5306 = xor i8 %5305, 1
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5306, i8* %5307, align 1
  %5308 = xor i64 -1, %5291
  %5309 = trunc i64 %5308 to i32
  %5310 = xor i32 %5309, %5295
  %5311 = lshr i32 %5310, 4
  %5312 = trunc i32 %5311 to i8
  %5313 = and i8 %5312, 1
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5313, i8* %5314, align 1
  %5315 = icmp eq i32 %5295, 0
  %5316 = zext i1 %5315 to i8
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5316, i8* %5317, align 1
  %5318 = lshr i32 %5295, 31
  %5319 = trunc i32 %5318 to i8
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5319, i8* %5320, align 1
  %5321 = lshr i32 %5294, 31
  %5322 = xor i32 %5318, %5321
  %5323 = xor i32 %5318, 1
  %5324 = add i32 %5322, %5323
  %5325 = icmp eq i32 %5324, 2
  %5326 = zext i1 %5325 to i8
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5326, i8* %5327, align 1
  store %struct.Memory* %loadMem_43d8e1, %struct.Memory** %MEMORY
  %loadMem_43d8e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5329 = getelementptr inbounds %struct.GPR, %struct.GPR* %5328, i32 0, i32 33
  %5330 = getelementptr inbounds %struct.Reg, %struct.Reg* %5329, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %5330 to i64*
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5332 = getelementptr inbounds %struct.GPR, %struct.GPR* %5331, i32 0, i32 1
  %5333 = getelementptr inbounds %struct.Reg, %struct.Reg* %5332, i32 0, i32 0
  %EAX.i251 = bitcast %union.anon* %5333 to i32*
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5335 = getelementptr inbounds %struct.GPR, %struct.GPR* %5334, i32 0, i32 15
  %5336 = getelementptr inbounds %struct.Reg, %struct.Reg* %5335, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %5336 to i64*
  %5337 = load i64, i64* %RBP.i252
  %5338 = sub i64 %5337, 68
  %5339 = load i32, i32* %EAX.i251
  %5340 = zext i32 %5339 to i64
  %5341 = load i64, i64* %PC.i250
  %5342 = add i64 %5341, 3
  store i64 %5342, i64* %PC.i250
  %5343 = inttoptr i64 %5338 to i32*
  store i32 %5339, i32* %5343
  store %struct.Memory* %loadMem_43d8e4, %struct.Memory** %MEMORY
  %loadMem_43d8e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5345 = getelementptr inbounds %struct.GPR, %struct.GPR* %5344, i32 0, i32 33
  %5346 = getelementptr inbounds %struct.Reg, %struct.Reg* %5345, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %5346 to i64*
  %5347 = load i64, i64* %PC.i249
  %5348 = add i64 %5347, -139
  %5349 = load i64, i64* %PC.i249
  %5350 = add i64 %5349, 5
  store i64 %5350, i64* %PC.i249
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5348, i64* %5351, align 8
  store %struct.Memory* %loadMem_43d8e7, %struct.Memory** %MEMORY
  br label %block_.L_43d85c

block_.L_43d8ec:                                  ; preds = %block_.L_43d85c
  %loadMem_43d8ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5353 = getelementptr inbounds %struct.GPR, %struct.GPR* %5352, i32 0, i32 33
  %5354 = getelementptr inbounds %struct.Reg, %struct.Reg* %5353, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %5354 to i64*
  %5355 = load i64, i64* %PC.i248
  %5356 = add i64 %5355, 5
  %5357 = load i64, i64* %PC.i248
  %5358 = add i64 %5357, 5
  store i64 %5358, i64* %PC.i248
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5356, i64* %5359, align 8
  store %struct.Memory* %loadMem_43d8ec, %struct.Memory** %MEMORY
  br label %block_.L_43d8f1

block_.L_43d8f1:                                  ; preds = %block_.L_43d8ec
  %loadMem_43d8f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5361 = getelementptr inbounds %struct.GPR, %struct.GPR* %5360, i32 0, i32 33
  %5362 = getelementptr inbounds %struct.Reg, %struct.Reg* %5361, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %5362 to i64*
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5364 = getelementptr inbounds %struct.GPR, %struct.GPR* %5363, i32 0, i32 1
  %5365 = getelementptr inbounds %struct.Reg, %struct.Reg* %5364, i32 0, i32 0
  %RAX.i246 = bitcast %union.anon* %5365 to i64*
  %5366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5367 = getelementptr inbounds %struct.GPR, %struct.GPR* %5366, i32 0, i32 15
  %5368 = getelementptr inbounds %struct.Reg, %struct.Reg* %5367, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %5368 to i64*
  %5369 = load i64, i64* %RBP.i247
  %5370 = sub i64 %5369, 36
  %5371 = load i64, i64* %PC.i245
  %5372 = add i64 %5371, 3
  store i64 %5372, i64* %PC.i245
  %5373 = inttoptr i64 %5370 to i32*
  %5374 = load i32, i32* %5373
  %5375 = zext i32 %5374 to i64
  store i64 %5375, i64* %RAX.i246, align 8
  store %struct.Memory* %loadMem_43d8f1, %struct.Memory** %MEMORY
  %loadMem_43d8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5377 = getelementptr inbounds %struct.GPR, %struct.GPR* %5376, i32 0, i32 33
  %5378 = getelementptr inbounds %struct.Reg, %struct.Reg* %5377, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %5378 to i64*
  %5379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5380 = getelementptr inbounds %struct.GPR, %struct.GPR* %5379, i32 0, i32 1
  %5381 = getelementptr inbounds %struct.Reg, %struct.Reg* %5380, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %5381 to i64*
  %5382 = load i64, i64* %RAX.i244
  %5383 = load i64, i64* %PC.i243
  %5384 = add i64 %5383, 3
  store i64 %5384, i64* %PC.i243
  %5385 = trunc i64 %5382 to i32
  %5386 = add i32 1, %5385
  %5387 = zext i32 %5386 to i64
  store i64 %5387, i64* %RAX.i244, align 8
  %5388 = icmp ult i32 %5386, %5385
  %5389 = icmp ult i32 %5386, 1
  %5390 = or i1 %5388, %5389
  %5391 = zext i1 %5390 to i8
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5391, i8* %5392, align 1
  %5393 = and i32 %5386, 255
  %5394 = call i32 @llvm.ctpop.i32(i32 %5393)
  %5395 = trunc i32 %5394 to i8
  %5396 = and i8 %5395, 1
  %5397 = xor i8 %5396, 1
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5397, i8* %5398, align 1
  %5399 = xor i64 1, %5382
  %5400 = trunc i64 %5399 to i32
  %5401 = xor i32 %5400, %5386
  %5402 = lshr i32 %5401, 4
  %5403 = trunc i32 %5402 to i8
  %5404 = and i8 %5403, 1
  %5405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5404, i8* %5405, align 1
  %5406 = icmp eq i32 %5386, 0
  %5407 = zext i1 %5406 to i8
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5407, i8* %5408, align 1
  %5409 = lshr i32 %5386, 31
  %5410 = trunc i32 %5409 to i8
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5410, i8* %5411, align 1
  %5412 = lshr i32 %5385, 31
  %5413 = xor i32 %5409, %5412
  %5414 = add i32 %5413, %5409
  %5415 = icmp eq i32 %5414, 2
  %5416 = zext i1 %5415 to i8
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5416, i8* %5417, align 1
  store %struct.Memory* %loadMem_43d8f4, %struct.Memory** %MEMORY
  %loadMem_43d8f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5419 = getelementptr inbounds %struct.GPR, %struct.GPR* %5418, i32 0, i32 33
  %5420 = getelementptr inbounds %struct.Reg, %struct.Reg* %5419, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5420 to i64*
  %5421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5422 = getelementptr inbounds %struct.GPR, %struct.GPR* %5421, i32 0, i32 1
  %5423 = getelementptr inbounds %struct.Reg, %struct.Reg* %5422, i32 0, i32 0
  %EAX.i241 = bitcast %union.anon* %5423 to i32*
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5425 = getelementptr inbounds %struct.GPR, %struct.GPR* %5424, i32 0, i32 15
  %5426 = getelementptr inbounds %struct.Reg, %struct.Reg* %5425, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %5426 to i64*
  %5427 = load i64, i64* %RBP.i242
  %5428 = sub i64 %5427, 36
  %5429 = load i32, i32* %EAX.i241
  %5430 = zext i32 %5429 to i64
  %5431 = load i64, i64* %PC.i240
  %5432 = add i64 %5431, 3
  store i64 %5432, i64* %PC.i240
  %5433 = inttoptr i64 %5428 to i32*
  store i32 %5429, i32* %5433
  store %struct.Memory* %loadMem_43d8f7, %struct.Memory** %MEMORY
  %loadMem_43d8fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5435 = getelementptr inbounds %struct.GPR, %struct.GPR* %5434, i32 0, i32 33
  %5436 = getelementptr inbounds %struct.Reg, %struct.Reg* %5435, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %5436 to i64*
  %5437 = load i64, i64* %PC.i239
  %5438 = add i64 %5437, -185
  %5439 = load i64, i64* %PC.i239
  %5440 = add i64 %5439, 5
  store i64 %5440, i64* %PC.i239
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5438, i64* %5441, align 8
  store %struct.Memory* %loadMem_43d8fa, %struct.Memory** %MEMORY
  br label %block_.L_43d841

block_.L_43d8ff:                                  ; preds = %block_.L_43d841
  %loadMem_43d8ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5443 = getelementptr inbounds %struct.GPR, %struct.GPR* %5442, i32 0, i32 33
  %5444 = getelementptr inbounds %struct.Reg, %struct.Reg* %5443, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %5444 to i64*
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5446 = getelementptr inbounds %struct.GPR, %struct.GPR* %5445, i32 0, i32 11
  %5447 = getelementptr inbounds %struct.Reg, %struct.Reg* %5446, i32 0, i32 0
  %RDI.i238 = bitcast %union.anon* %5447 to i64*
  %5448 = load i64, i64* %PC.i237
  %5449 = add i64 %5448, 10
  store i64 %5449, i64* %PC.i237
  store i64 ptrtoint (%G__0x459d41_type* @G__0x459d41 to i64), i64* %RDI.i238, align 8
  store %struct.Memory* %loadMem_43d8ff, %struct.Memory** %MEMORY
  %loadMem_43d909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5451 = getelementptr inbounds %struct.GPR, %struct.GPR* %5450, i32 0, i32 33
  %5452 = getelementptr inbounds %struct.Reg, %struct.Reg* %5451, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %5452 to i64*
  %5453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5454 = getelementptr inbounds %struct.GPR, %struct.GPR* %5453, i32 0, i32 9
  %5455 = getelementptr inbounds %struct.Reg, %struct.Reg* %5454, i32 0, i32 0
  %RSI.i236 = bitcast %union.anon* %5455 to i64*
  %5456 = load i64, i64* %PC.i235
  %5457 = add i64 %5456, 5
  store i64 %5457, i64* %PC.i235
  store i64 240, i64* %RSI.i236, align 8
  store %struct.Memory* %loadMem_43d909, %struct.Memory** %MEMORY
  %loadMem_43d90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5459 = getelementptr inbounds %struct.GPR, %struct.GPR* %5458, i32 0, i32 33
  %5460 = getelementptr inbounds %struct.Reg, %struct.Reg* %5459, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %5460 to i64*
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5462 = getelementptr inbounds %struct.GPR, %struct.GPR* %5461, i32 0, i32 1
  %5463 = getelementptr inbounds %struct.Reg, %struct.Reg* %5462, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %5463 to i64*
  %5464 = load i64, i64* %PC.i233
  %5465 = add i64 %5464, 5
  store i64 %5465, i64* %PC.i233
  store i64 104, i64* %RAX.i234, align 8
  store %struct.Memory* %loadMem_43d90e, %struct.Memory** %MEMORY
  %loadMem_43d913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 33
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %5468 to i64*
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5470 = getelementptr inbounds %struct.GPR, %struct.GPR* %5469, i32 0, i32 1
  %5471 = getelementptr inbounds %struct.Reg, %struct.Reg* %5470, i32 0, i32 0
  %EAX.i231 = bitcast %union.anon* %5471 to i32*
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5473 = getelementptr inbounds %struct.GPR, %struct.GPR* %5472, i32 0, i32 7
  %5474 = getelementptr inbounds %struct.Reg, %struct.Reg* %5473, i32 0, i32 0
  %RDX.i232 = bitcast %union.anon* %5474 to i64*
  %5475 = load i32, i32* %EAX.i231
  %5476 = zext i32 %5475 to i64
  %5477 = load i64, i64* %PC.i230
  %5478 = add i64 %5477, 2
  store i64 %5478, i64* %PC.i230
  %5479 = and i64 %5476, 4294967295
  store i64 %5479, i64* %RDX.i232, align 8
  store %struct.Memory* %loadMem_43d913, %struct.Memory** %MEMORY
  %loadMem1_43d915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5481 = getelementptr inbounds %struct.GPR, %struct.GPR* %5480, i32 0, i32 33
  %5482 = getelementptr inbounds %struct.Reg, %struct.Reg* %5481, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %5482 to i64*
  %5483 = load i64, i64* %PC.i229
  %5484 = add i64 %5483, 34635
  %5485 = load i64, i64* %PC.i229
  %5486 = add i64 %5485, 5
  %5487 = load i64, i64* %PC.i229
  %5488 = add i64 %5487, 5
  store i64 %5488, i64* %PC.i229
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5490 = load i64, i64* %5489, align 8
  %5491 = add i64 %5490, -8
  %5492 = inttoptr i64 %5491 to i64*
  store i64 %5486, i64* %5492
  store i64 %5491, i64* %5489, align 8
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5484, i64* %5493, align 8
  store %struct.Memory* %loadMem1_43d915, %struct.Memory** %MEMORY
  %loadMem2_43d915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43d915 = load i64, i64* %3
  %call2_43d915 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_43d915, %struct.Memory* %loadMem2_43d915)
  store %struct.Memory* %call2_43d915, %struct.Memory** %MEMORY
  %loadMem_43d91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5495 = getelementptr inbounds %struct.GPR, %struct.GPR* %5494, i32 0, i32 33
  %5496 = getelementptr inbounds %struct.Reg, %struct.Reg* %5495, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %5496 to i64*
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5498 = getelementptr inbounds %struct.GPR, %struct.GPR* %5497, i32 0, i32 1
  %5499 = getelementptr inbounds %struct.Reg, %struct.Reg* %5498, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %5499 to i64*
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5501 = getelementptr inbounds %struct.GPR, %struct.GPR* %5500, i32 0, i32 15
  %5502 = getelementptr inbounds %struct.Reg, %struct.Reg* %5501, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %5502 to i64*
  %5503 = load i64, i64* %RBP.i228
  %5504 = sub i64 %5503, 64
  %5505 = load i64, i64* %RAX.i227
  %5506 = load i64, i64* %PC.i226
  %5507 = add i64 %5506, 4
  store i64 %5507, i64* %PC.i226
  %5508 = inttoptr i64 %5504 to i64*
  store i64 %5505, i64* %5508
  store %struct.Memory* %loadMem_43d91a, %struct.Memory** %MEMORY
  %loadMem_43d91e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5510 = getelementptr inbounds %struct.GPR, %struct.GPR* %5509, i32 0, i32 33
  %5511 = getelementptr inbounds %struct.Reg, %struct.Reg* %5510, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %5511 to i64*
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5513 = getelementptr inbounds %struct.GPR, %struct.GPR* %5512, i32 0, i32 15
  %5514 = getelementptr inbounds %struct.Reg, %struct.Reg* %5513, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %5514 to i64*
  %5515 = load i64, i64* %RBP.i225
  %5516 = sub i64 %5515, 36
  %5517 = load i64, i64* %PC.i224
  %5518 = add i64 %5517, 7
  store i64 %5518, i64* %PC.i224
  %5519 = inttoptr i64 %5516 to i32*
  store i32 0, i32* %5519
  store %struct.Memory* %loadMem_43d91e, %struct.Memory** %MEMORY
  br label %block_.L_43d925

block_.L_43d925:                                  ; preds = %block_43d92f, %block_.L_43d8ff
  %loadMem_43d925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5521 = getelementptr inbounds %struct.GPR, %struct.GPR* %5520, i32 0, i32 33
  %5522 = getelementptr inbounds %struct.Reg, %struct.Reg* %5521, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %5522 to i64*
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5524 = getelementptr inbounds %struct.GPR, %struct.GPR* %5523, i32 0, i32 15
  %5525 = getelementptr inbounds %struct.Reg, %struct.Reg* %5524, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %5525 to i64*
  %5526 = load i64, i64* %RBP.i223
  %5527 = sub i64 %5526, 36
  %5528 = load i64, i64* %PC.i222
  %5529 = add i64 %5528, 4
  store i64 %5529, i64* %PC.i222
  %5530 = inttoptr i64 %5527 to i32*
  %5531 = load i32, i32* %5530
  %5532 = sub i32 %5531, 26
  %5533 = icmp ult i32 %5531, 26
  %5534 = zext i1 %5533 to i8
  %5535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5534, i8* %5535, align 1
  %5536 = and i32 %5532, 255
  %5537 = call i32 @llvm.ctpop.i32(i32 %5536)
  %5538 = trunc i32 %5537 to i8
  %5539 = and i8 %5538, 1
  %5540 = xor i8 %5539, 1
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5540, i8* %5541, align 1
  %5542 = xor i32 %5531, 26
  %5543 = xor i32 %5542, %5532
  %5544 = lshr i32 %5543, 4
  %5545 = trunc i32 %5544 to i8
  %5546 = and i8 %5545, 1
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5546, i8* %5547, align 1
  %5548 = icmp eq i32 %5532, 0
  %5549 = zext i1 %5548 to i8
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5549, i8* %5550, align 1
  %5551 = lshr i32 %5532, 31
  %5552 = trunc i32 %5551 to i8
  %5553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5552, i8* %5553, align 1
  %5554 = lshr i32 %5531, 31
  %5555 = xor i32 %5551, %5554
  %5556 = add i32 %5555, %5554
  %5557 = icmp eq i32 %5556, 2
  %5558 = zext i1 %5557 to i8
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5558, i8* %5559, align 1
  store %struct.Memory* %loadMem_43d925, %struct.Memory** %MEMORY
  %loadMem_43d929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5561 = getelementptr inbounds %struct.GPR, %struct.GPR* %5560, i32 0, i32 33
  %5562 = getelementptr inbounds %struct.Reg, %struct.Reg* %5561, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %5562 to i64*
  %5563 = load i64, i64* %PC.i221
  %5564 = add i64 %5563, 35
  %5565 = load i64, i64* %PC.i221
  %5566 = add i64 %5565, 6
  %5567 = load i64, i64* %PC.i221
  %5568 = add i64 %5567, 6
  store i64 %5568, i64* %PC.i221
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5570 = load i8, i8* %5569, align 1
  %5571 = icmp ne i8 %5570, 0
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5573 = load i8, i8* %5572, align 1
  %5574 = icmp ne i8 %5573, 0
  %5575 = xor i1 %5571, %5574
  %5576 = xor i1 %5575, true
  %5577 = zext i1 %5576 to i8
  store i8 %5577, i8* %BRANCH_TAKEN, align 1
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5579 = select i1 %5575, i64 %5566, i64 %5564
  store i64 %5579, i64* %5578, align 8
  store %struct.Memory* %loadMem_43d929, %struct.Memory** %MEMORY
  %loadBr_43d929 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d929 = icmp eq i8 %loadBr_43d929, 1
  br i1 %cmpBr_43d929, label %block_.L_43d94c, label %block_43d92f

block_43d92f:                                     ; preds = %block_.L_43d925
  %loadMem_43d92f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5581 = getelementptr inbounds %struct.GPR, %struct.GPR* %5580, i32 0, i32 33
  %5582 = getelementptr inbounds %struct.Reg, %struct.Reg* %5581, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %5582 to i64*
  %5583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5584 = getelementptr inbounds %struct.GPR, %struct.GPR* %5583, i32 0, i32 1
  %5585 = getelementptr inbounds %struct.Reg, %struct.Reg* %5584, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %5585 to i64*
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5587 = getelementptr inbounds %struct.GPR, %struct.GPR* %5586, i32 0, i32 15
  %5588 = getelementptr inbounds %struct.Reg, %struct.Reg* %5587, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %5588 to i64*
  %5589 = load i64, i64* %RBP.i220
  %5590 = sub i64 %5589, 64
  %5591 = load i64, i64* %PC.i218
  %5592 = add i64 %5591, 4
  store i64 %5592, i64* %PC.i218
  %5593 = inttoptr i64 %5590 to i64*
  %5594 = load i64, i64* %5593
  store i64 %5594, i64* %RAX.i219, align 8
  store %struct.Memory* %loadMem_43d92f, %struct.Memory** %MEMORY
  %loadMem_43d933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5596 = getelementptr inbounds %struct.GPR, %struct.GPR* %5595, i32 0, i32 33
  %5597 = getelementptr inbounds %struct.Reg, %struct.Reg* %5596, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %5597 to i64*
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5599 = getelementptr inbounds %struct.GPR, %struct.GPR* %5598, i32 0, i32 5
  %5600 = getelementptr inbounds %struct.Reg, %struct.Reg* %5599, i32 0, i32 0
  %RCX.i216 = bitcast %union.anon* %5600 to i64*
  %5601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5602 = getelementptr inbounds %struct.GPR, %struct.GPR* %5601, i32 0, i32 15
  %5603 = getelementptr inbounds %struct.Reg, %struct.Reg* %5602, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %5603 to i64*
  %5604 = load i64, i64* %RBP.i217
  %5605 = sub i64 %5604, 36
  %5606 = load i64, i64* %PC.i215
  %5607 = add i64 %5606, 4
  store i64 %5607, i64* %PC.i215
  %5608 = inttoptr i64 %5605 to i32*
  %5609 = load i32, i32* %5608
  %5610 = sext i32 %5609 to i64
  store i64 %5610, i64* %RCX.i216, align 8
  store %struct.Memory* %loadMem_43d933, %struct.Memory** %MEMORY
  %loadMem_43d937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5612 = getelementptr inbounds %struct.GPR, %struct.GPR* %5611, i32 0, i32 33
  %5613 = getelementptr inbounds %struct.Reg, %struct.Reg* %5612, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %5613 to i64*
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5615 = getelementptr inbounds %struct.GPR, %struct.GPR* %5614, i32 0, i32 1
  %5616 = getelementptr inbounds %struct.Reg, %struct.Reg* %5615, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %5616 to i64*
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5618 = getelementptr inbounds %struct.GPR, %struct.GPR* %5617, i32 0, i32 5
  %5619 = getelementptr inbounds %struct.Reg, %struct.Reg* %5618, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5619 to i64*
  %5620 = load i64, i64* %RAX.i214
  %5621 = load i64, i64* %RCX.i
  %5622 = mul i64 %5621, 4
  %5623 = add i64 %5622, %5620
  %5624 = load i64, i64* %PC.i213
  %5625 = add i64 %5624, 7
  store i64 %5625, i64* %PC.i213
  %5626 = inttoptr i64 %5623 to i32*
  store i32 0, i32* %5626
  store %struct.Memory* %loadMem_43d937, %struct.Memory** %MEMORY
  %loadMem_43d93e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 33
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %5629 to i64*
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5631 = getelementptr inbounds %struct.GPR, %struct.GPR* %5630, i32 0, i32 1
  %5632 = getelementptr inbounds %struct.Reg, %struct.Reg* %5631, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %5632 to i64*
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 15
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %5635 to i64*
  %5636 = load i64, i64* %RBP.i212
  %5637 = sub i64 %5636, 36
  %5638 = load i64, i64* %PC.i210
  %5639 = add i64 %5638, 3
  store i64 %5639, i64* %PC.i210
  %5640 = inttoptr i64 %5637 to i32*
  %5641 = load i32, i32* %5640
  %5642 = zext i32 %5641 to i64
  store i64 %5642, i64* %RAX.i211, align 8
  store %struct.Memory* %loadMem_43d93e, %struct.Memory** %MEMORY
  %loadMem_43d941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5644 = getelementptr inbounds %struct.GPR, %struct.GPR* %5643, i32 0, i32 33
  %5645 = getelementptr inbounds %struct.Reg, %struct.Reg* %5644, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %5645 to i64*
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5647 = getelementptr inbounds %struct.GPR, %struct.GPR* %5646, i32 0, i32 1
  %5648 = getelementptr inbounds %struct.Reg, %struct.Reg* %5647, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %5648 to i64*
  %5649 = load i64, i64* %RAX.i209
  %5650 = load i64, i64* %PC.i208
  %5651 = add i64 %5650, 3
  store i64 %5651, i64* %PC.i208
  %5652 = trunc i64 %5649 to i32
  %5653 = add i32 1, %5652
  %5654 = zext i32 %5653 to i64
  store i64 %5654, i64* %RAX.i209, align 8
  %5655 = icmp ult i32 %5653, %5652
  %5656 = icmp ult i32 %5653, 1
  %5657 = or i1 %5655, %5656
  %5658 = zext i1 %5657 to i8
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5658, i8* %5659, align 1
  %5660 = and i32 %5653, 255
  %5661 = call i32 @llvm.ctpop.i32(i32 %5660)
  %5662 = trunc i32 %5661 to i8
  %5663 = and i8 %5662, 1
  %5664 = xor i8 %5663, 1
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5664, i8* %5665, align 1
  %5666 = xor i64 1, %5649
  %5667 = trunc i64 %5666 to i32
  %5668 = xor i32 %5667, %5653
  %5669 = lshr i32 %5668, 4
  %5670 = trunc i32 %5669 to i8
  %5671 = and i8 %5670, 1
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5671, i8* %5672, align 1
  %5673 = icmp eq i32 %5653, 0
  %5674 = zext i1 %5673 to i8
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5674, i8* %5675, align 1
  %5676 = lshr i32 %5653, 31
  %5677 = trunc i32 %5676 to i8
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5677, i8* %5678, align 1
  %5679 = lshr i32 %5652, 31
  %5680 = xor i32 %5676, %5679
  %5681 = add i32 %5680, %5676
  %5682 = icmp eq i32 %5681, 2
  %5683 = zext i1 %5682 to i8
  %5684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5683, i8* %5684, align 1
  store %struct.Memory* %loadMem_43d941, %struct.Memory** %MEMORY
  %loadMem_43d944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5686 = getelementptr inbounds %struct.GPR, %struct.GPR* %5685, i32 0, i32 33
  %5687 = getelementptr inbounds %struct.Reg, %struct.Reg* %5686, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %5687 to i64*
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5689 = getelementptr inbounds %struct.GPR, %struct.GPR* %5688, i32 0, i32 1
  %5690 = getelementptr inbounds %struct.Reg, %struct.Reg* %5689, i32 0, i32 0
  %EAX.i206 = bitcast %union.anon* %5690 to i32*
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5692 = getelementptr inbounds %struct.GPR, %struct.GPR* %5691, i32 0, i32 15
  %5693 = getelementptr inbounds %struct.Reg, %struct.Reg* %5692, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %5693 to i64*
  %5694 = load i64, i64* %RBP.i207
  %5695 = sub i64 %5694, 36
  %5696 = load i32, i32* %EAX.i206
  %5697 = zext i32 %5696 to i64
  %5698 = load i64, i64* %PC.i205
  %5699 = add i64 %5698, 3
  store i64 %5699, i64* %PC.i205
  %5700 = inttoptr i64 %5695 to i32*
  store i32 %5696, i32* %5700
  store %struct.Memory* %loadMem_43d944, %struct.Memory** %MEMORY
  %loadMem_43d947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5702 = getelementptr inbounds %struct.GPR, %struct.GPR* %5701, i32 0, i32 33
  %5703 = getelementptr inbounds %struct.Reg, %struct.Reg* %5702, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %5703 to i64*
  %5704 = load i64, i64* %PC.i204
  %5705 = add i64 %5704, -34
  %5706 = load i64, i64* %PC.i204
  %5707 = add i64 %5706, 5
  store i64 %5707, i64* %PC.i204
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5705, i64* %5708, align 8
  store %struct.Memory* %loadMem_43d947, %struct.Memory** %MEMORY
  br label %block_.L_43d925

block_.L_43d94c:                                  ; preds = %block_.L_43d925
  %loadMem_43d94c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5710 = getelementptr inbounds %struct.GPR, %struct.GPR* %5709, i32 0, i32 33
  %5711 = getelementptr inbounds %struct.Reg, %struct.Reg* %5710, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %5711 to i64*
  %5712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5713 = getelementptr inbounds %struct.GPR, %struct.GPR* %5712, i32 0, i32 15
  %5714 = getelementptr inbounds %struct.Reg, %struct.Reg* %5713, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %5714 to i64*
  %5715 = load i64, i64* %RBP.i203
  %5716 = sub i64 %5715, 32
  %5717 = load i64, i64* %PC.i202
  %5718 = add i64 %5717, 7
  store i64 %5718, i64* %PC.i202
  %5719 = inttoptr i64 %5716 to i32*
  store i32 0, i32* %5719
  store %struct.Memory* %loadMem_43d94c, %struct.Memory** %MEMORY
  %loadMem_43d953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5721 = getelementptr inbounds %struct.GPR, %struct.GPR* %5720, i32 0, i32 33
  %5722 = getelementptr inbounds %struct.Reg, %struct.Reg* %5721, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %5722 to i64*
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5724 = getelementptr inbounds %struct.GPR, %struct.GPR* %5723, i32 0, i32 1
  %5725 = getelementptr inbounds %struct.Reg, %struct.Reg* %5724, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %5725 to i64*
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5727 = getelementptr inbounds %struct.GPR, %struct.GPR* %5726, i32 0, i32 15
  %5728 = getelementptr inbounds %struct.Reg, %struct.Reg* %5727, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %5728 to i64*
  %5729 = load i64, i64* %RBP.i201
  %5730 = sub i64 %5729, 24
  %5731 = load i64, i64* %PC.i199
  %5732 = add i64 %5731, 4
  store i64 %5732, i64* %PC.i199
  %5733 = inttoptr i64 %5730 to i64*
  %5734 = load i64, i64* %5733
  store i64 %5734, i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_43d953, %struct.Memory** %MEMORY
  %loadMem_43d957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5736 = getelementptr inbounds %struct.GPR, %struct.GPR* %5735, i32 0, i32 33
  %5737 = getelementptr inbounds %struct.Reg, %struct.Reg* %5736, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %5737 to i64*
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5739 = getelementptr inbounds %struct.GPR, %struct.GPR* %5738, i32 0, i32 1
  %5740 = getelementptr inbounds %struct.Reg, %struct.Reg* %5739, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %5740 to i64*
  %5741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5742 = getelementptr inbounds %struct.GPR, %struct.GPR* %5741, i32 0, i32 11
  %5743 = getelementptr inbounds %struct.Reg, %struct.Reg* %5742, i32 0, i32 0
  %RDI.i198 = bitcast %union.anon* %5743 to i64*
  %5744 = load i64, i64* %RAX.i197
  %5745 = load i64, i64* %PC.i196
  %5746 = add i64 %5745, 3
  store i64 %5746, i64* %PC.i196
  %5747 = inttoptr i64 %5744 to i8*
  %5748 = load i8, i8* %5747
  %5749 = sext i8 %5748 to i64
  %5750 = and i64 %5749, 4294967295
  store i64 %5750, i64* %RDI.i198, align 8
  store %struct.Memory* %loadMem_43d957, %struct.Memory** %MEMORY
  %loadMem1_43d95a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5752 = getelementptr inbounds %struct.GPR, %struct.GPR* %5751, i32 0, i32 33
  %5753 = getelementptr inbounds %struct.Reg, %struct.Reg* %5752, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %5753 to i64*
  %5754 = load i64, i64* %PC.i195
  %5755 = add i64 %5754, -247146
  %5756 = load i64, i64* %PC.i195
  %5757 = add i64 %5756, 5
  %5758 = load i64, i64* %PC.i195
  %5759 = add i64 %5758, 5
  store i64 %5759, i64* %PC.i195
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5761 = load i64, i64* %5760, align 8
  %5762 = add i64 %5761, -8
  %5763 = inttoptr i64 %5762 to i64*
  store i64 %5757, i64* %5763
  store i64 %5762, i64* %5760, align 8
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5755, i64* %5764, align 8
  store %struct.Memory* %loadMem1_43d95a, %struct.Memory** %MEMORY
  %loadMem2_43d95a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43d95a = load i64, i64* %3
  %call2_43d95a = call %struct.Memory* @sub_4013f0.toupper_plt(%struct.State* %0, i64 %loadPC_43d95a, %struct.Memory* %loadMem2_43d95a)
  store %struct.Memory* %call2_43d95a, %struct.Memory** %MEMORY
  %loadMem_43d95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5766 = getelementptr inbounds %struct.GPR, %struct.GPR* %5765, i32 0, i32 33
  %5767 = getelementptr inbounds %struct.Reg, %struct.Reg* %5766, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %5767 to i64*
  %5768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5769 = getelementptr inbounds %struct.GPR, %struct.GPR* %5768, i32 0, i32 1
  %5770 = getelementptr inbounds %struct.Reg, %struct.Reg* %5769, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %5770 to i64*
  %5771 = load i64, i64* %RAX.i194
  %5772 = load i64, i64* %PC.i193
  %5773 = add i64 %5772, 3
  store i64 %5773, i64* %PC.i193
  %5774 = trunc i64 %5771 to i32
  %5775 = sub i32 %5774, 65
  %5776 = zext i32 %5775 to i64
  store i64 %5776, i64* %RAX.i194, align 8
  %5777 = icmp ult i32 %5774, 65
  %5778 = zext i1 %5777 to i8
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5778, i8* %5779, align 1
  %5780 = and i32 %5775, 255
  %5781 = call i32 @llvm.ctpop.i32(i32 %5780)
  %5782 = trunc i32 %5781 to i8
  %5783 = and i8 %5782, 1
  %5784 = xor i8 %5783, 1
  %5785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5784, i8* %5785, align 1
  %5786 = xor i64 65, %5771
  %5787 = trunc i64 %5786 to i32
  %5788 = xor i32 %5787, %5775
  %5789 = lshr i32 %5788, 4
  %5790 = trunc i32 %5789 to i8
  %5791 = and i8 %5790, 1
  %5792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5791, i8* %5792, align 1
  %5793 = icmp eq i32 %5775, 0
  %5794 = zext i1 %5793 to i8
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5794, i8* %5795, align 1
  %5796 = lshr i32 %5775, 31
  %5797 = trunc i32 %5796 to i8
  %5798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5797, i8* %5798, align 1
  %5799 = lshr i32 %5774, 31
  %5800 = xor i32 %5796, %5799
  %5801 = add i32 %5800, %5799
  %5802 = icmp eq i32 %5801, 2
  %5803 = zext i1 %5802 to i8
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5803, i8* %5804, align 1
  store %struct.Memory* %loadMem_43d95f, %struct.Memory** %MEMORY
  %loadMem_43d962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5806 = getelementptr inbounds %struct.GPR, %struct.GPR* %5805, i32 0, i32 33
  %5807 = getelementptr inbounds %struct.Reg, %struct.Reg* %5806, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %5807 to i64*
  %5808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5809 = getelementptr inbounds %struct.GPR, %struct.GPR* %5808, i32 0, i32 1
  %5810 = getelementptr inbounds %struct.Reg, %struct.Reg* %5809, i32 0, i32 0
  %EAX.i191 = bitcast %union.anon* %5810 to i32*
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5812 = getelementptr inbounds %struct.GPR, %struct.GPR* %5811, i32 0, i32 15
  %5813 = getelementptr inbounds %struct.Reg, %struct.Reg* %5812, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %5813 to i64*
  %5814 = load i64, i64* %RBP.i192
  %5815 = sub i64 %5814, 36
  %5816 = load i32, i32* %EAX.i191
  %5817 = zext i32 %5816 to i64
  %5818 = load i64, i64* %PC.i190
  %5819 = add i64 %5818, 3
  store i64 %5819, i64* %PC.i190
  %5820 = inttoptr i64 %5815 to i32*
  store i32 %5816, i32* %5820
  store %struct.Memory* %loadMem_43d962, %struct.Memory** %MEMORY
  br label %block_.L_43d965

block_.L_43d965:                                  ; preds = %block_.L_43d9d9, %block_.L_43d94c
  %loadMem_43d965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5822 = getelementptr inbounds %struct.GPR, %struct.GPR* %5821, i32 0, i32 33
  %5823 = getelementptr inbounds %struct.Reg, %struct.Reg* %5822, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %5823 to i64*
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5825 = getelementptr inbounds %struct.GPR, %struct.GPR* %5824, i32 0, i32 1
  %5826 = getelementptr inbounds %struct.Reg, %struct.Reg* %5825, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %5826 to i64*
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5828 = getelementptr inbounds %struct.GPR, %struct.GPR* %5827, i32 0, i32 15
  %5829 = getelementptr inbounds %struct.Reg, %struct.Reg* %5828, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %5829 to i64*
  %5830 = load i64, i64* %RBP.i189
  %5831 = sub i64 %5830, 36
  %5832 = load i64, i64* %PC.i187
  %5833 = add i64 %5832, 3
  store i64 %5833, i64* %PC.i187
  %5834 = inttoptr i64 %5831 to i32*
  %5835 = load i32, i32* %5834
  %5836 = zext i32 %5835 to i64
  store i64 %5836, i64* %RAX.i188, align 8
  store %struct.Memory* %loadMem_43d965, %struct.Memory** %MEMORY
  %loadMem_43d968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5838 = getelementptr inbounds %struct.GPR, %struct.GPR* %5837, i32 0, i32 33
  %5839 = getelementptr inbounds %struct.Reg, %struct.Reg* %5838, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %5839 to i64*
  %5840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5841 = getelementptr inbounds %struct.GPR, %struct.GPR* %5840, i32 0, i32 1
  %5842 = getelementptr inbounds %struct.Reg, %struct.Reg* %5841, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %5842 to i64*
  %5843 = load i64, i64* %RAX.i186
  %5844 = load i64, i64* %PC.i185
  %5845 = add i64 %5844, 3
  store i64 %5845, i64* %PC.i185
  %5846 = trunc i64 %5843 to i32
  %5847 = add i32 65, %5846
  %5848 = zext i32 %5847 to i64
  store i64 %5848, i64* %RAX.i186, align 8
  %5849 = icmp ult i32 %5847, %5846
  %5850 = icmp ult i32 %5847, 65
  %5851 = or i1 %5849, %5850
  %5852 = zext i1 %5851 to i8
  %5853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5852, i8* %5853, align 1
  %5854 = and i32 %5847, 255
  %5855 = call i32 @llvm.ctpop.i32(i32 %5854)
  %5856 = trunc i32 %5855 to i8
  %5857 = and i8 %5856, 1
  %5858 = xor i8 %5857, 1
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5858, i8* %5859, align 1
  %5860 = xor i64 65, %5843
  %5861 = trunc i64 %5860 to i32
  %5862 = xor i32 %5861, %5847
  %5863 = lshr i32 %5862, 4
  %5864 = trunc i32 %5863 to i8
  %5865 = and i8 %5864, 1
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5865, i8* %5866, align 1
  %5867 = icmp eq i32 %5847, 0
  %5868 = zext i1 %5867 to i8
  %5869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5868, i8* %5869, align 1
  %5870 = lshr i32 %5847, 31
  %5871 = trunc i32 %5870 to i8
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5871, i8* %5872, align 1
  %5873 = lshr i32 %5846, 31
  %5874 = xor i32 %5870, %5873
  %5875 = add i32 %5874, %5870
  %5876 = icmp eq i32 %5875, 2
  %5877 = zext i1 %5876 to i8
  %5878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5877, i8* %5878, align 1
  store %struct.Memory* %loadMem_43d968, %struct.Memory** %MEMORY
  %loadMem_43d96b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5880 = getelementptr inbounds %struct.GPR, %struct.GPR* %5879, i32 0, i32 33
  %5881 = getelementptr inbounds %struct.Reg, %struct.Reg* %5880, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %5881 to i64*
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5883 = getelementptr inbounds %struct.GPR, %struct.GPR* %5882, i32 0, i32 1
  %5884 = getelementptr inbounds %struct.Reg, %struct.Reg* %5883, i32 0, i32 0
  %5885 = bitcast %union.anon* %5884 to %struct.anon.2*
  %AL.i183 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5885, i32 0, i32 0
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5887 = getelementptr inbounds %struct.GPR, %struct.GPR* %5886, i32 0, i32 5
  %5888 = getelementptr inbounds %struct.Reg, %struct.Reg* %5887, i32 0, i32 0
  %5889 = bitcast %union.anon* %5888 to %struct.anon.2*
  %CL.i184 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5889, i32 0, i32 0
  %5890 = load i8, i8* %AL.i183
  %5891 = zext i8 %5890 to i64
  %5892 = load i64, i64* %PC.i182
  %5893 = add i64 %5892, 2
  store i64 %5893, i64* %PC.i182
  store i8 %5890, i8* %CL.i184, align 1
  store %struct.Memory* %loadMem_43d96b, %struct.Memory** %MEMORY
  %loadMem_43d96d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5895 = getelementptr inbounds %struct.GPR, %struct.GPR* %5894, i32 0, i32 33
  %5896 = getelementptr inbounds %struct.Reg, %struct.Reg* %5895, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %5896 to i64*
  %5897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5898 = getelementptr inbounds %struct.GPR, %struct.GPR* %5897, i32 0, i32 7
  %5899 = getelementptr inbounds %struct.Reg, %struct.Reg* %5898, i32 0, i32 0
  %RDX.i180 = bitcast %union.anon* %5899 to i64*
  %5900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5901 = getelementptr inbounds %struct.GPR, %struct.GPR* %5900, i32 0, i32 15
  %5902 = getelementptr inbounds %struct.Reg, %struct.Reg* %5901, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %5902 to i64*
  %5903 = load i64, i64* %RBP.i181
  %5904 = sub i64 %5903, 16
  %5905 = load i64, i64* %PC.i179
  %5906 = add i64 %5905, 4
  store i64 %5906, i64* %PC.i179
  %5907 = inttoptr i64 %5904 to i64*
  %5908 = load i64, i64* %5907
  store i64 %5908, i64* %RDX.i180, align 8
  store %struct.Memory* %loadMem_43d96d, %struct.Memory** %MEMORY
  %loadMem_43d971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5910 = getelementptr inbounds %struct.GPR, %struct.GPR* %5909, i32 0, i32 33
  %5911 = getelementptr inbounds %struct.Reg, %struct.Reg* %5910, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %5911 to i64*
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5913 = getelementptr inbounds %struct.GPR, %struct.GPR* %5912, i32 0, i32 1
  %5914 = getelementptr inbounds %struct.Reg, %struct.Reg* %5913, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %5914 to i64*
  %5915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5916 = getelementptr inbounds %struct.GPR, %struct.GPR* %5915, i32 0, i32 15
  %5917 = getelementptr inbounds %struct.Reg, %struct.Reg* %5916, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %5917 to i64*
  %5918 = load i64, i64* %RBP.i178
  %5919 = sub i64 %5918, 32
  %5920 = load i64, i64* %PC.i176
  %5921 = add i64 %5920, 3
  store i64 %5921, i64* %PC.i176
  %5922 = inttoptr i64 %5919 to i32*
  %5923 = load i32, i32* %5922
  %5924 = zext i32 %5923 to i64
  store i64 %5924, i64* %RAX.i177, align 8
  store %struct.Memory* %loadMem_43d971, %struct.Memory** %MEMORY
  %loadMem_43d974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5926 = getelementptr inbounds %struct.GPR, %struct.GPR* %5925, i32 0, i32 33
  %5927 = getelementptr inbounds %struct.Reg, %struct.Reg* %5926, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %5927 to i64*
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5929 = getelementptr inbounds %struct.GPR, %struct.GPR* %5928, i32 0, i32 1
  %5930 = getelementptr inbounds %struct.Reg, %struct.Reg* %5929, i32 0, i32 0
  %EAX.i174 = bitcast %union.anon* %5930 to i32*
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5932 = getelementptr inbounds %struct.GPR, %struct.GPR* %5931, i32 0, i32 9
  %5933 = getelementptr inbounds %struct.Reg, %struct.Reg* %5932, i32 0, i32 0
  %RSI.i175 = bitcast %union.anon* %5933 to i64*
  %5934 = load i32, i32* %EAX.i174
  %5935 = zext i32 %5934 to i64
  %5936 = load i64, i64* %PC.i173
  %5937 = add i64 %5936, 2
  store i64 %5937, i64* %PC.i173
  %5938 = and i64 %5935, 4294967295
  store i64 %5938, i64* %RSI.i175, align 8
  store %struct.Memory* %loadMem_43d974, %struct.Memory** %MEMORY
  %loadMem_43d976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5940 = getelementptr inbounds %struct.GPR, %struct.GPR* %5939, i32 0, i32 33
  %5941 = getelementptr inbounds %struct.Reg, %struct.Reg* %5940, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %5941 to i64*
  %5942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5943 = getelementptr inbounds %struct.GPR, %struct.GPR* %5942, i32 0, i32 9
  %5944 = getelementptr inbounds %struct.Reg, %struct.Reg* %5943, i32 0, i32 0
  %RSI.i172 = bitcast %union.anon* %5944 to i64*
  %5945 = load i64, i64* %RSI.i172
  %5946 = load i64, i64* %PC.i171
  %5947 = add i64 %5946, 3
  store i64 %5947, i64* %PC.i171
  %5948 = trunc i64 %5945 to i32
  %5949 = add i32 1, %5948
  %5950 = zext i32 %5949 to i64
  store i64 %5950, i64* %RSI.i172, align 8
  %5951 = icmp ult i32 %5949, %5948
  %5952 = icmp ult i32 %5949, 1
  %5953 = or i1 %5951, %5952
  %5954 = zext i1 %5953 to i8
  %5955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5954, i8* %5955, align 1
  %5956 = and i32 %5949, 255
  %5957 = call i32 @llvm.ctpop.i32(i32 %5956)
  %5958 = trunc i32 %5957 to i8
  %5959 = and i8 %5958, 1
  %5960 = xor i8 %5959, 1
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5960, i8* %5961, align 1
  %5962 = xor i64 1, %5945
  %5963 = trunc i64 %5962 to i32
  %5964 = xor i32 %5963, %5949
  %5965 = lshr i32 %5964, 4
  %5966 = trunc i32 %5965 to i8
  %5967 = and i8 %5966, 1
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5967, i8* %5968, align 1
  %5969 = icmp eq i32 %5949, 0
  %5970 = zext i1 %5969 to i8
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5970, i8* %5971, align 1
  %5972 = lshr i32 %5949, 31
  %5973 = trunc i32 %5972 to i8
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5973, i8* %5974, align 1
  %5975 = lshr i32 %5948, 31
  %5976 = xor i32 %5972, %5975
  %5977 = add i32 %5976, %5972
  %5978 = icmp eq i32 %5977, 2
  %5979 = zext i1 %5978 to i8
  %5980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5979, i8* %5980, align 1
  store %struct.Memory* %loadMem_43d976, %struct.Memory** %MEMORY
  %loadMem_43d979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5982 = getelementptr inbounds %struct.GPR, %struct.GPR* %5981, i32 0, i32 33
  %5983 = getelementptr inbounds %struct.Reg, %struct.Reg* %5982, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %5983 to i64*
  %5984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5985 = getelementptr inbounds %struct.GPR, %struct.GPR* %5984, i32 0, i32 9
  %5986 = getelementptr inbounds %struct.Reg, %struct.Reg* %5985, i32 0, i32 0
  %ESI.i169 = bitcast %union.anon* %5986 to i32*
  %5987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5988 = getelementptr inbounds %struct.GPR, %struct.GPR* %5987, i32 0, i32 15
  %5989 = getelementptr inbounds %struct.Reg, %struct.Reg* %5988, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %5989 to i64*
  %5990 = load i64, i64* %RBP.i170
  %5991 = sub i64 %5990, 32
  %5992 = load i32, i32* %ESI.i169
  %5993 = zext i32 %5992 to i64
  %5994 = load i64, i64* %PC.i168
  %5995 = add i64 %5994, 3
  store i64 %5995, i64* %PC.i168
  %5996 = inttoptr i64 %5991 to i32*
  store i32 %5992, i32* %5996
  store %struct.Memory* %loadMem_43d979, %struct.Memory** %MEMORY
  %loadMem_43d97c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5998 = getelementptr inbounds %struct.GPR, %struct.GPR* %5997, i32 0, i32 33
  %5999 = getelementptr inbounds %struct.Reg, %struct.Reg* %5998, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %5999 to i64*
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6001 = getelementptr inbounds %struct.GPR, %struct.GPR* %6000, i32 0, i32 1
  %6002 = getelementptr inbounds %struct.Reg, %struct.Reg* %6001, i32 0, i32 0
  %EAX.i166 = bitcast %union.anon* %6002 to i32*
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6004 = getelementptr inbounds %struct.GPR, %struct.GPR* %6003, i32 0, i32 11
  %6005 = getelementptr inbounds %struct.Reg, %struct.Reg* %6004, i32 0, i32 0
  %RDI.i167 = bitcast %union.anon* %6005 to i64*
  %6006 = load i32, i32* %EAX.i166
  %6007 = zext i32 %6006 to i64
  %6008 = load i64, i64* %PC.i165
  %6009 = add i64 %6008, 3
  store i64 %6009, i64* %PC.i165
  %6010 = shl i64 %6007, 32
  %6011 = ashr exact i64 %6010, 32
  store i64 %6011, i64* %RDI.i167, align 8
  store %struct.Memory* %loadMem_43d97c, %struct.Memory** %MEMORY
  %loadMem_43d97f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6013 = getelementptr inbounds %struct.GPR, %struct.GPR* %6012, i32 0, i32 33
  %6014 = getelementptr inbounds %struct.Reg, %struct.Reg* %6013, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %6014 to i64*
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6016 = getelementptr inbounds %struct.GPR, %struct.GPR* %6015, i32 0, i32 5
  %6017 = getelementptr inbounds %struct.Reg, %struct.Reg* %6016, i32 0, i32 0
  %6018 = bitcast %union.anon* %6017 to %struct.anon.2*
  %CL.i162 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6018, i32 0, i32 0
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6020 = getelementptr inbounds %struct.GPR, %struct.GPR* %6019, i32 0, i32 7
  %6021 = getelementptr inbounds %struct.Reg, %struct.Reg* %6020, i32 0, i32 0
  %RDX.i163 = bitcast %union.anon* %6021 to i64*
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6023 = getelementptr inbounds %struct.GPR, %struct.GPR* %6022, i32 0, i32 11
  %6024 = getelementptr inbounds %struct.Reg, %struct.Reg* %6023, i32 0, i32 0
  %RDI.i164 = bitcast %union.anon* %6024 to i64*
  %6025 = load i64, i64* %RDX.i163
  %6026 = load i64, i64* %RDI.i164
  %6027 = add i64 %6026, %6025
  %6028 = load i8, i8* %CL.i162
  %6029 = zext i8 %6028 to i64
  %6030 = load i64, i64* %PC.i161
  %6031 = add i64 %6030, 3
  store i64 %6031, i64* %PC.i161
  %6032 = inttoptr i64 %6027 to i8*
  store i8 %6028, i8* %6032
  store %struct.Memory* %loadMem_43d97f, %struct.Memory** %MEMORY
  %loadMem_43d982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6034 = getelementptr inbounds %struct.GPR, %struct.GPR* %6033, i32 0, i32 33
  %6035 = getelementptr inbounds %struct.Reg, %struct.Reg* %6034, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %6035 to i64*
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6037 = getelementptr inbounds %struct.GPR, %struct.GPR* %6036, i32 0, i32 7
  %6038 = getelementptr inbounds %struct.Reg, %struct.Reg* %6037, i32 0, i32 0
  %RDX.i159 = bitcast %union.anon* %6038 to i64*
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6040 = getelementptr inbounds %struct.GPR, %struct.GPR* %6039, i32 0, i32 15
  %6041 = getelementptr inbounds %struct.Reg, %struct.Reg* %6040, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %6041 to i64*
  %6042 = load i64, i64* %RBP.i160
  %6043 = sub i64 %6042, 48
  %6044 = load i64, i64* %PC.i158
  %6045 = add i64 %6044, 4
  store i64 %6045, i64* %PC.i158
  %6046 = inttoptr i64 %6043 to i64*
  %6047 = load i64, i64* %6046
  store i64 %6047, i64* %RDX.i159, align 8
  store %struct.Memory* %loadMem_43d982, %struct.Memory** %MEMORY
  %loadMem_43d986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6049 = getelementptr inbounds %struct.GPR, %struct.GPR* %6048, i32 0, i32 33
  %6050 = getelementptr inbounds %struct.Reg, %struct.Reg* %6049, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %6050 to i64*
  %6051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6052 = getelementptr inbounds %struct.GPR, %struct.GPR* %6051, i32 0, i32 11
  %6053 = getelementptr inbounds %struct.Reg, %struct.Reg* %6052, i32 0, i32 0
  %RDI.i156 = bitcast %union.anon* %6053 to i64*
  %6054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6055 = getelementptr inbounds %struct.GPR, %struct.GPR* %6054, i32 0, i32 15
  %6056 = getelementptr inbounds %struct.Reg, %struct.Reg* %6055, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %6056 to i64*
  %6057 = load i64, i64* %RBP.i157
  %6058 = sub i64 %6057, 36
  %6059 = load i64, i64* %PC.i155
  %6060 = add i64 %6059, 4
  store i64 %6060, i64* %PC.i155
  %6061 = inttoptr i64 %6058 to i32*
  %6062 = load i32, i32* %6061
  %6063 = sext i32 %6062 to i64
  store i64 %6063, i64* %RDI.i156, align 8
  store %struct.Memory* %loadMem_43d986, %struct.Memory** %MEMORY
  %loadMem_43d98a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6065 = getelementptr inbounds %struct.GPR, %struct.GPR* %6064, i32 0, i32 33
  %6066 = getelementptr inbounds %struct.Reg, %struct.Reg* %6065, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %6066 to i64*
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6068 = getelementptr inbounds %struct.GPR, %struct.GPR* %6067, i32 0, i32 7
  %6069 = getelementptr inbounds %struct.Reg, %struct.Reg* %6068, i32 0, i32 0
  %RDX.i153 = bitcast %union.anon* %6069 to i64*
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6071 = getelementptr inbounds %struct.GPR, %struct.GPR* %6070, i32 0, i32 11
  %6072 = getelementptr inbounds %struct.Reg, %struct.Reg* %6071, i32 0, i32 0
  %RDI.i154 = bitcast %union.anon* %6072 to i64*
  %6073 = load i64, i64* %RDX.i153
  %6074 = load i64, i64* %RDI.i154
  %6075 = mul i64 %6074, 8
  %6076 = add i64 %6075, %6073
  %6077 = load i64, i64* %PC.i152
  %6078 = add i64 %6077, 4
  store i64 %6078, i64* %PC.i152
  %6079 = inttoptr i64 %6076 to i64*
  %6080 = load i64, i64* %6079
  store i64 %6080, i64* %RDX.i153, align 8
  store %struct.Memory* %loadMem_43d98a, %struct.Memory** %MEMORY
  %loadMem_43d98e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6082 = getelementptr inbounds %struct.GPR, %struct.GPR* %6081, i32 0, i32 33
  %6083 = getelementptr inbounds %struct.Reg, %struct.Reg* %6082, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %6083 to i64*
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6085 = getelementptr inbounds %struct.GPR, %struct.GPR* %6084, i32 0, i32 11
  %6086 = getelementptr inbounds %struct.Reg, %struct.Reg* %6085, i32 0, i32 0
  %RDI.i150 = bitcast %union.anon* %6086 to i64*
  %6087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6088 = getelementptr inbounds %struct.GPR, %struct.GPR* %6087, i32 0, i32 15
  %6089 = getelementptr inbounds %struct.Reg, %struct.Reg* %6088, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %6089 to i64*
  %6090 = load i64, i64* %RBP.i151
  %6091 = sub i64 %6090, 64
  %6092 = load i64, i64* %PC.i149
  %6093 = add i64 %6092, 4
  store i64 %6093, i64* %PC.i149
  %6094 = inttoptr i64 %6091 to i64*
  %6095 = load i64, i64* %6094
  store i64 %6095, i64* %RDI.i150, align 8
  store %struct.Memory* %loadMem_43d98e, %struct.Memory** %MEMORY
  %loadMem_43d992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6097 = getelementptr inbounds %struct.GPR, %struct.GPR* %6096, i32 0, i32 33
  %6098 = getelementptr inbounds %struct.Reg, %struct.Reg* %6097, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %6098 to i64*
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6100 = getelementptr inbounds %struct.GPR, %struct.GPR* %6099, i32 0, i32 15
  %6101 = getelementptr inbounds %struct.Reg, %struct.Reg* %6100, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %6101 to i64*
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6103 = getelementptr inbounds %struct.GPR, %struct.GPR* %6102, i32 0, i32 17
  %6104 = getelementptr inbounds %struct.Reg, %struct.Reg* %6103, i32 0, i32 0
  %R8.i148 = bitcast %union.anon* %6104 to i64*
  %6105 = load i64, i64* %RBP.i147
  %6106 = sub i64 %6105, 36
  %6107 = load i64, i64* %PC.i146
  %6108 = add i64 %6107, 4
  store i64 %6108, i64* %PC.i146
  %6109 = inttoptr i64 %6106 to i32*
  %6110 = load i32, i32* %6109
  %6111 = sext i32 %6110 to i64
  store i64 %6111, i64* %R8.i148, align 8
  store %struct.Memory* %loadMem_43d992, %struct.Memory** %MEMORY
  %loadMem_43d996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6113 = getelementptr inbounds %struct.GPR, %struct.GPR* %6112, i32 0, i32 33
  %6114 = getelementptr inbounds %struct.Reg, %struct.Reg* %6113, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %6114 to i64*
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6116 = getelementptr inbounds %struct.GPR, %struct.GPR* %6115, i32 0, i32 11
  %6117 = getelementptr inbounds %struct.Reg, %struct.Reg* %6116, i32 0, i32 0
  %RDI.i145 = bitcast %union.anon* %6117 to i64*
  %6118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6119 = getelementptr inbounds %struct.GPR, %struct.GPR* %6118, i32 0, i32 17
  %6120 = getelementptr inbounds %struct.Reg, %struct.Reg* %6119, i32 0, i32 0
  %R8.i = bitcast %union.anon* %6120 to i64*
  %6121 = load i64, i64* %RDI.i145
  %6122 = load i64, i64* %R8.i
  %6123 = mul i64 %6122, 4
  %6124 = add i64 %6123, %6121
  %6125 = load i64, i64* %PC.i144
  %6126 = add i64 %6125, 4
  store i64 %6126, i64* %PC.i144
  %6127 = inttoptr i64 %6124 to i32*
  %6128 = load i32, i32* %6127
  %6129 = sext i32 %6128 to i64
  store i64 %6129, i64* %RDI.i145, align 8
  store %struct.Memory* %loadMem_43d996, %struct.Memory** %MEMORY
  %loadMem_43d99a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6131 = getelementptr inbounds %struct.GPR, %struct.GPR* %6130, i32 0, i32 33
  %6132 = getelementptr inbounds %struct.Reg, %struct.Reg* %6131, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %6132 to i64*
  %6133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6134 = getelementptr inbounds %struct.GPR, %struct.GPR* %6133, i32 0, i32 1
  %6135 = getelementptr inbounds %struct.Reg, %struct.Reg* %6134, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %6135 to i64*
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6137 = getelementptr inbounds %struct.GPR, %struct.GPR* %6136, i32 0, i32 7
  %6138 = getelementptr inbounds %struct.Reg, %struct.Reg* %6137, i32 0, i32 0
  %RDX.i142 = bitcast %union.anon* %6138 to i64*
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6140 = getelementptr inbounds %struct.GPR, %struct.GPR* %6139, i32 0, i32 11
  %6141 = getelementptr inbounds %struct.Reg, %struct.Reg* %6140, i32 0, i32 0
  %RDI.i143 = bitcast %union.anon* %6141 to i64*
  %6142 = load i64, i64* %RDX.i142
  %6143 = load i64, i64* %RDI.i143
  %6144 = add i64 %6143, %6142
  %6145 = load i64, i64* %PC.i140
  %6146 = add i64 %6145, 4
  store i64 %6146, i64* %PC.i140
  %6147 = inttoptr i64 %6144 to i8*
  %6148 = load i8, i8* %6147
  %6149 = sext i8 %6148 to i64
  %6150 = and i64 %6149, 4294967295
  store i64 %6150, i64* %RAX.i141, align 8
  store %struct.Memory* %loadMem_43d99a, %struct.Memory** %MEMORY
  %loadMem_43d99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 33
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %6153 to i64*
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6155 = getelementptr inbounds %struct.GPR, %struct.GPR* %6154, i32 0, i32 1
  %6156 = getelementptr inbounds %struct.Reg, %struct.Reg* %6155, i32 0, i32 0
  %EAX.i138 = bitcast %union.anon* %6156 to i32*
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6158 = getelementptr inbounds %struct.GPR, %struct.GPR* %6157, i32 0, i32 15
  %6159 = getelementptr inbounds %struct.Reg, %struct.Reg* %6158, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %6159 to i64*
  %6160 = load i64, i64* %RBP.i139
  %6161 = sub i64 %6160, 40
  %6162 = load i32, i32* %EAX.i138
  %6163 = zext i32 %6162 to i64
  %6164 = load i64, i64* %PC.i137
  %6165 = add i64 %6164, 3
  store i64 %6165, i64* %PC.i137
  %6166 = inttoptr i64 %6161 to i32*
  store i32 %6162, i32* %6166
  store %struct.Memory* %loadMem_43d99e, %struct.Memory** %MEMORY
  %loadMem_43d9a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6168 = getelementptr inbounds %struct.GPR, %struct.GPR* %6167, i32 0, i32 33
  %6169 = getelementptr inbounds %struct.Reg, %struct.Reg* %6168, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %6169 to i64*
  %6170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6171 = getelementptr inbounds %struct.GPR, %struct.GPR* %6170, i32 0, i32 7
  %6172 = getelementptr inbounds %struct.Reg, %struct.Reg* %6171, i32 0, i32 0
  %RDX.i135 = bitcast %union.anon* %6172 to i64*
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6174 = getelementptr inbounds %struct.GPR, %struct.GPR* %6173, i32 0, i32 15
  %6175 = getelementptr inbounds %struct.Reg, %struct.Reg* %6174, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %6175 to i64*
  %6176 = load i64, i64* %RBP.i136
  %6177 = sub i64 %6176, 64
  %6178 = load i64, i64* %PC.i134
  %6179 = add i64 %6178, 4
  store i64 %6179, i64* %PC.i134
  %6180 = inttoptr i64 %6177 to i64*
  %6181 = load i64, i64* %6180
  store i64 %6181, i64* %RDX.i135, align 8
  store %struct.Memory* %loadMem_43d9a1, %struct.Memory** %MEMORY
  %loadMem_43d9a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6183 = getelementptr inbounds %struct.GPR, %struct.GPR* %6182, i32 0, i32 33
  %6184 = getelementptr inbounds %struct.Reg, %struct.Reg* %6183, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %6184 to i64*
  %6185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6186 = getelementptr inbounds %struct.GPR, %struct.GPR* %6185, i32 0, i32 11
  %6187 = getelementptr inbounds %struct.Reg, %struct.Reg* %6186, i32 0, i32 0
  %RDI.i132 = bitcast %union.anon* %6187 to i64*
  %6188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6189 = getelementptr inbounds %struct.GPR, %struct.GPR* %6188, i32 0, i32 15
  %6190 = getelementptr inbounds %struct.Reg, %struct.Reg* %6189, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %6190 to i64*
  %6191 = load i64, i64* %RBP.i133
  %6192 = sub i64 %6191, 36
  %6193 = load i64, i64* %PC.i131
  %6194 = add i64 %6193, 4
  store i64 %6194, i64* %PC.i131
  %6195 = inttoptr i64 %6192 to i32*
  %6196 = load i32, i32* %6195
  %6197 = sext i32 %6196 to i64
  store i64 %6197, i64* %RDI.i132, align 8
  store %struct.Memory* %loadMem_43d9a5, %struct.Memory** %MEMORY
  %loadMem_43d9a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6199 = getelementptr inbounds %struct.GPR, %struct.GPR* %6198, i32 0, i32 33
  %6200 = getelementptr inbounds %struct.Reg, %struct.Reg* %6199, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %6200 to i64*
  %6201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6202 = getelementptr inbounds %struct.GPR, %struct.GPR* %6201, i32 0, i32 1
  %6203 = getelementptr inbounds %struct.Reg, %struct.Reg* %6202, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %6203 to i64*
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6205 = getelementptr inbounds %struct.GPR, %struct.GPR* %6204, i32 0, i32 7
  %6206 = getelementptr inbounds %struct.Reg, %struct.Reg* %6205, i32 0, i32 0
  %RDX.i129 = bitcast %union.anon* %6206 to i64*
  %6207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6208 = getelementptr inbounds %struct.GPR, %struct.GPR* %6207, i32 0, i32 11
  %6209 = getelementptr inbounds %struct.Reg, %struct.Reg* %6208, i32 0, i32 0
  %RDI.i130 = bitcast %union.anon* %6209 to i64*
  %6210 = load i64, i64* %RDX.i129
  %6211 = load i64, i64* %RDI.i130
  %6212 = mul i64 %6211, 4
  %6213 = add i64 %6212, %6210
  %6214 = load i64, i64* %PC.i127
  %6215 = add i64 %6214, 3
  store i64 %6215, i64* %PC.i127
  %6216 = inttoptr i64 %6213 to i32*
  %6217 = load i32, i32* %6216
  %6218 = zext i32 %6217 to i64
  store i64 %6218, i64* %RAX.i128, align 8
  store %struct.Memory* %loadMem_43d9a9, %struct.Memory** %MEMORY
  %loadMem_43d9ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6220 = getelementptr inbounds %struct.GPR, %struct.GPR* %6219, i32 0, i32 33
  %6221 = getelementptr inbounds %struct.Reg, %struct.Reg* %6220, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %6221 to i64*
  %6222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6223 = getelementptr inbounds %struct.GPR, %struct.GPR* %6222, i32 0, i32 1
  %6224 = getelementptr inbounds %struct.Reg, %struct.Reg* %6223, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %6224 to i64*
  %6225 = load i64, i64* %RAX.i126
  %6226 = load i64, i64* %PC.i125
  %6227 = add i64 %6226, 3
  store i64 %6227, i64* %PC.i125
  %6228 = trunc i64 %6225 to i32
  %6229 = add i32 1, %6228
  %6230 = zext i32 %6229 to i64
  store i64 %6230, i64* %RAX.i126, align 8
  %6231 = icmp ult i32 %6229, %6228
  %6232 = icmp ult i32 %6229, 1
  %6233 = or i1 %6231, %6232
  %6234 = zext i1 %6233 to i8
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6234, i8* %6235, align 1
  %6236 = and i32 %6229, 255
  %6237 = call i32 @llvm.ctpop.i32(i32 %6236)
  %6238 = trunc i32 %6237 to i8
  %6239 = and i8 %6238, 1
  %6240 = xor i8 %6239, 1
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6240, i8* %6241, align 1
  %6242 = xor i64 1, %6225
  %6243 = trunc i64 %6242 to i32
  %6244 = xor i32 %6243, %6229
  %6245 = lshr i32 %6244, 4
  %6246 = trunc i32 %6245 to i8
  %6247 = and i8 %6246, 1
  %6248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6247, i8* %6248, align 1
  %6249 = icmp eq i32 %6229, 0
  %6250 = zext i1 %6249 to i8
  %6251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6250, i8* %6251, align 1
  %6252 = lshr i32 %6229, 31
  %6253 = trunc i32 %6252 to i8
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6253, i8* %6254, align 1
  %6255 = lshr i32 %6228, 31
  %6256 = xor i32 %6252, %6255
  %6257 = add i32 %6256, %6252
  %6258 = icmp eq i32 %6257, 2
  %6259 = zext i1 %6258 to i8
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6259, i8* %6260, align 1
  store %struct.Memory* %loadMem_43d9ac, %struct.Memory** %MEMORY
  %loadMem_43d9af = load %struct.Memory*, %struct.Memory** %MEMORY
  %6261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6262 = getelementptr inbounds %struct.GPR, %struct.GPR* %6261, i32 0, i32 33
  %6263 = getelementptr inbounds %struct.Reg, %struct.Reg* %6262, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %6263 to i64*
  %6264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6265 = getelementptr inbounds %struct.GPR, %struct.GPR* %6264, i32 0, i32 1
  %6266 = getelementptr inbounds %struct.Reg, %struct.Reg* %6265, i32 0, i32 0
  %EAX.i122 = bitcast %union.anon* %6266 to i32*
  %6267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6268 = getelementptr inbounds %struct.GPR, %struct.GPR* %6267, i32 0, i32 7
  %6269 = getelementptr inbounds %struct.Reg, %struct.Reg* %6268, i32 0, i32 0
  %RDX.i123 = bitcast %union.anon* %6269 to i64*
  %6270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6271 = getelementptr inbounds %struct.GPR, %struct.GPR* %6270, i32 0, i32 11
  %6272 = getelementptr inbounds %struct.Reg, %struct.Reg* %6271, i32 0, i32 0
  %RDI.i124 = bitcast %union.anon* %6272 to i64*
  %6273 = load i64, i64* %RDX.i123
  %6274 = load i64, i64* %RDI.i124
  %6275 = mul i64 %6274, 4
  %6276 = add i64 %6275, %6273
  %6277 = load i32, i32* %EAX.i122
  %6278 = zext i32 %6277 to i64
  %6279 = load i64, i64* %PC.i121
  %6280 = add i64 %6279, 3
  store i64 %6280, i64* %PC.i121
  %6281 = inttoptr i64 %6276 to i32*
  store i32 %6277, i32* %6281
  store %struct.Memory* %loadMem_43d9af, %struct.Memory** %MEMORY
  %loadMem_43d9b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6283 = getelementptr inbounds %struct.GPR, %struct.GPR* %6282, i32 0, i32 33
  %6284 = getelementptr inbounds %struct.Reg, %struct.Reg* %6283, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %6284 to i64*
  %6285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6286 = getelementptr inbounds %struct.GPR, %struct.GPR* %6285, i32 0, i32 1
  %6287 = getelementptr inbounds %struct.Reg, %struct.Reg* %6286, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %6287 to i64*
  %6288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6289 = getelementptr inbounds %struct.GPR, %struct.GPR* %6288, i32 0, i32 15
  %6290 = getelementptr inbounds %struct.Reg, %struct.Reg* %6289, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %6290 to i64*
  %6291 = load i64, i64* %RBP.i120
  %6292 = sub i64 %6291, 40
  %6293 = load i64, i64* %PC.i118
  %6294 = add i64 %6293, 3
  store i64 %6294, i64* %PC.i118
  %6295 = inttoptr i64 %6292 to i32*
  %6296 = load i32, i32* %6295
  %6297 = zext i32 %6296 to i64
  store i64 %6297, i64* %RAX.i119, align 8
  store %struct.Memory* %loadMem_43d9b2, %struct.Memory** %MEMORY
  %loadMem_43d9b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6299 = getelementptr inbounds %struct.GPR, %struct.GPR* %6298, i32 0, i32 33
  %6300 = getelementptr inbounds %struct.Reg, %struct.Reg* %6299, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %6300 to i64*
  %6301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6302 = getelementptr inbounds %struct.GPR, %struct.GPR* %6301, i32 0, i32 1
  %6303 = getelementptr inbounds %struct.Reg, %struct.Reg* %6302, i32 0, i32 0
  %EAX.i116 = bitcast %union.anon* %6303 to i32*
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6305 = getelementptr inbounds %struct.GPR, %struct.GPR* %6304, i32 0, i32 15
  %6306 = getelementptr inbounds %struct.Reg, %struct.Reg* %6305, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %6306 to i64*
  %6307 = load i64, i64* %RBP.i117
  %6308 = sub i64 %6307, 36
  %6309 = load i32, i32* %EAX.i116
  %6310 = zext i32 %6309 to i64
  %6311 = load i64, i64* %PC.i115
  %6312 = add i64 %6311, 3
  store i64 %6312, i64* %PC.i115
  %6313 = inttoptr i64 %6308 to i32*
  store i32 %6309, i32* %6313
  store %struct.Memory* %loadMem_43d9b5, %struct.Memory** %MEMORY
  %loadMem_43d9b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6315 = getelementptr inbounds %struct.GPR, %struct.GPR* %6314, i32 0, i32 33
  %6316 = getelementptr inbounds %struct.Reg, %struct.Reg* %6315, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %6316 to i64*
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6318 = getelementptr inbounds %struct.GPR, %struct.GPR* %6317, i32 0, i32 7
  %6319 = getelementptr inbounds %struct.Reg, %struct.Reg* %6318, i32 0, i32 0
  %RDX.i113 = bitcast %union.anon* %6319 to i64*
  %6320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6321 = getelementptr inbounds %struct.GPR, %struct.GPR* %6320, i32 0, i32 15
  %6322 = getelementptr inbounds %struct.Reg, %struct.Reg* %6321, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %6322 to i64*
  %6323 = load i64, i64* %RBP.i114
  %6324 = sub i64 %6323, 64
  %6325 = load i64, i64* %PC.i112
  %6326 = add i64 %6325, 4
  store i64 %6326, i64* %PC.i112
  %6327 = inttoptr i64 %6324 to i64*
  %6328 = load i64, i64* %6327
  store i64 %6328, i64* %RDX.i113, align 8
  store %struct.Memory* %loadMem_43d9b8, %struct.Memory** %MEMORY
  %loadMem_43d9bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6330 = getelementptr inbounds %struct.GPR, %struct.GPR* %6329, i32 0, i32 33
  %6331 = getelementptr inbounds %struct.Reg, %struct.Reg* %6330, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %6331 to i64*
  %6332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6333 = getelementptr inbounds %struct.GPR, %struct.GPR* %6332, i32 0, i32 11
  %6334 = getelementptr inbounds %struct.Reg, %struct.Reg* %6333, i32 0, i32 0
  %RDI.i110 = bitcast %union.anon* %6334 to i64*
  %6335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6336 = getelementptr inbounds %struct.GPR, %struct.GPR* %6335, i32 0, i32 15
  %6337 = getelementptr inbounds %struct.Reg, %struct.Reg* %6336, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %6337 to i64*
  %6338 = load i64, i64* %RBP.i111
  %6339 = sub i64 %6338, 36
  %6340 = load i64, i64* %PC.i109
  %6341 = add i64 %6340, 4
  store i64 %6341, i64* %PC.i109
  %6342 = inttoptr i64 %6339 to i32*
  %6343 = load i32, i32* %6342
  %6344 = sext i32 %6343 to i64
  store i64 %6344, i64* %RDI.i110, align 8
  store %struct.Memory* %loadMem_43d9bc, %struct.Memory** %MEMORY
  %loadMem_43d9c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6346 = getelementptr inbounds %struct.GPR, %struct.GPR* %6345, i32 0, i32 33
  %6347 = getelementptr inbounds %struct.Reg, %struct.Reg* %6346, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %6347 to i64*
  %6348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6349 = getelementptr inbounds %struct.GPR, %struct.GPR* %6348, i32 0, i32 1
  %6350 = getelementptr inbounds %struct.Reg, %struct.Reg* %6349, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %6350 to i64*
  %6351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6352 = getelementptr inbounds %struct.GPR, %struct.GPR* %6351, i32 0, i32 7
  %6353 = getelementptr inbounds %struct.Reg, %struct.Reg* %6352, i32 0, i32 0
  %RDX.i107 = bitcast %union.anon* %6353 to i64*
  %6354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6355 = getelementptr inbounds %struct.GPR, %struct.GPR* %6354, i32 0, i32 11
  %6356 = getelementptr inbounds %struct.Reg, %struct.Reg* %6355, i32 0, i32 0
  %RDI.i108 = bitcast %union.anon* %6356 to i64*
  %6357 = load i64, i64* %RDX.i107
  %6358 = load i64, i64* %RDI.i108
  %6359 = mul i64 %6358, 4
  %6360 = add i64 %6359, %6357
  %6361 = load i64, i64* %PC.i105
  %6362 = add i64 %6361, 3
  store i64 %6362, i64* %PC.i105
  %6363 = inttoptr i64 %6360 to i32*
  %6364 = load i32, i32* %6363
  %6365 = zext i32 %6364 to i64
  store i64 %6365, i64* %RAX.i106, align 8
  store %struct.Memory* %loadMem_43d9c0, %struct.Memory** %MEMORY
  %loadMem_43d9c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6367 = getelementptr inbounds %struct.GPR, %struct.GPR* %6366, i32 0, i32 33
  %6368 = getelementptr inbounds %struct.Reg, %struct.Reg* %6367, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %6368 to i64*
  %6369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6370 = getelementptr inbounds %struct.GPR, %struct.GPR* %6369, i32 0, i32 7
  %6371 = getelementptr inbounds %struct.Reg, %struct.Reg* %6370, i32 0, i32 0
  %RDX.i103 = bitcast %union.anon* %6371 to i64*
  %6372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6373 = getelementptr inbounds %struct.GPR, %struct.GPR* %6372, i32 0, i32 15
  %6374 = getelementptr inbounds %struct.Reg, %struct.Reg* %6373, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %6374 to i64*
  %6375 = load i64, i64* %RBP.i104
  %6376 = sub i64 %6375, 56
  %6377 = load i64, i64* %PC.i102
  %6378 = add i64 %6377, 4
  store i64 %6378, i64* %PC.i102
  %6379 = inttoptr i64 %6376 to i64*
  %6380 = load i64, i64* %6379
  store i64 %6380, i64* %RDX.i103, align 8
  store %struct.Memory* %loadMem_43d9c3, %struct.Memory** %MEMORY
  %loadMem_43d9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6382 = getelementptr inbounds %struct.GPR, %struct.GPR* %6381, i32 0, i32 33
  %6383 = getelementptr inbounds %struct.Reg, %struct.Reg* %6382, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %6383 to i64*
  %6384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6385 = getelementptr inbounds %struct.GPR, %struct.GPR* %6384, i32 0, i32 11
  %6386 = getelementptr inbounds %struct.Reg, %struct.Reg* %6385, i32 0, i32 0
  %RDI.i100 = bitcast %union.anon* %6386 to i64*
  %6387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6388 = getelementptr inbounds %struct.GPR, %struct.GPR* %6387, i32 0, i32 15
  %6389 = getelementptr inbounds %struct.Reg, %struct.Reg* %6388, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %6389 to i64*
  %6390 = load i64, i64* %RBP.i101
  %6391 = sub i64 %6390, 36
  %6392 = load i64, i64* %PC.i99
  %6393 = add i64 %6392, 4
  store i64 %6393, i64* %PC.i99
  %6394 = inttoptr i64 %6391 to i32*
  %6395 = load i32, i32* %6394
  %6396 = sext i32 %6395 to i64
  store i64 %6396, i64* %RDI.i100, align 8
  store %struct.Memory* %loadMem_43d9c7, %struct.Memory** %MEMORY
  %loadMem_43d9cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6398 = getelementptr inbounds %struct.GPR, %struct.GPR* %6397, i32 0, i32 33
  %6399 = getelementptr inbounds %struct.Reg, %struct.Reg* %6398, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %6399 to i64*
  %6400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6401 = getelementptr inbounds %struct.GPR, %struct.GPR* %6400, i32 0, i32 1
  %6402 = getelementptr inbounds %struct.Reg, %struct.Reg* %6401, i32 0, i32 0
  %EAX.i96 = bitcast %union.anon* %6402 to i32*
  %6403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6404 = getelementptr inbounds %struct.GPR, %struct.GPR* %6403, i32 0, i32 7
  %6405 = getelementptr inbounds %struct.Reg, %struct.Reg* %6404, i32 0, i32 0
  %RDX.i97 = bitcast %union.anon* %6405 to i64*
  %6406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6407 = getelementptr inbounds %struct.GPR, %struct.GPR* %6406, i32 0, i32 11
  %6408 = getelementptr inbounds %struct.Reg, %struct.Reg* %6407, i32 0, i32 0
  %RDI.i98 = bitcast %union.anon* %6408 to i64*
  %6409 = load i32, i32* %EAX.i96
  %6410 = zext i32 %6409 to i64
  %6411 = load i64, i64* %RDX.i97
  %6412 = load i64, i64* %RDI.i98
  %6413 = mul i64 %6412, 4
  %6414 = add i64 %6413, %6411
  %6415 = load i64, i64* %PC.i95
  %6416 = add i64 %6415, 3
  store i64 %6416, i64* %PC.i95
  %6417 = inttoptr i64 %6414 to i32*
  %6418 = load i32, i32* %6417
  %6419 = sub i32 %6409, %6418
  %6420 = icmp ult i32 %6409, %6418
  %6421 = zext i1 %6420 to i8
  %6422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6421, i8* %6422, align 1
  %6423 = and i32 %6419, 255
  %6424 = call i32 @llvm.ctpop.i32(i32 %6423)
  %6425 = trunc i32 %6424 to i8
  %6426 = and i8 %6425, 1
  %6427 = xor i8 %6426, 1
  %6428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6427, i8* %6428, align 1
  %6429 = xor i32 %6418, %6409
  %6430 = xor i32 %6429, %6419
  %6431 = lshr i32 %6430, 4
  %6432 = trunc i32 %6431 to i8
  %6433 = and i8 %6432, 1
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6433, i8* %6434, align 1
  %6435 = icmp eq i32 %6419, 0
  %6436 = zext i1 %6435 to i8
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6436, i8* %6437, align 1
  %6438 = lshr i32 %6419, 31
  %6439 = trunc i32 %6438 to i8
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6439, i8* %6440, align 1
  %6441 = lshr i32 %6409, 31
  %6442 = lshr i32 %6418, 31
  %6443 = xor i32 %6442, %6441
  %6444 = xor i32 %6438, %6441
  %6445 = add i32 %6444, %6443
  %6446 = icmp eq i32 %6445, 2
  %6447 = zext i1 %6446 to i8
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6447, i8* %6448, align 1
  store %struct.Memory* %loadMem_43d9cb, %struct.Memory** %MEMORY
  %loadMem_43d9ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %6449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6450 = getelementptr inbounds %struct.GPR, %struct.GPR* %6449, i32 0, i32 33
  %6451 = getelementptr inbounds %struct.Reg, %struct.Reg* %6450, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %6451 to i64*
  %6452 = load i64, i64* %PC.i94
  %6453 = add i64 %6452, 11
  %6454 = load i64, i64* %PC.i94
  %6455 = add i64 %6454, 6
  %6456 = load i64, i64* %PC.i94
  %6457 = add i64 %6456, 6
  store i64 %6457, i64* %PC.i94
  %6458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6459 = load i8, i8* %6458, align 1
  %6460 = icmp eq i8 %6459, 0
  %6461 = zext i1 %6460 to i8
  store i8 %6461, i8* %BRANCH_TAKEN, align 1
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6463 = select i1 %6460, i64 %6453, i64 %6455
  store i64 %6463, i64* %6462, align 8
  store %struct.Memory* %loadMem_43d9ce, %struct.Memory** %MEMORY
  %loadBr_43d9ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d9ce = icmp eq i8 %loadBr_43d9ce, 1
  br i1 %cmpBr_43d9ce, label %block_.L_43d9d9, label %block_43d9d4

block_43d9d4:                                     ; preds = %block_.L_43d965
  %loadMem_43d9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6465 = getelementptr inbounds %struct.GPR, %struct.GPR* %6464, i32 0, i32 33
  %6466 = getelementptr inbounds %struct.Reg, %struct.Reg* %6465, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %6466 to i64*
  %6467 = load i64, i64* %PC.i93
  %6468 = add i64 %6467, 10
  %6469 = load i64, i64* %PC.i93
  %6470 = add i64 %6469, 5
  store i64 %6470, i64* %PC.i93
  %6471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6468, i64* %6471, align 8
  store %struct.Memory* %loadMem_43d9d4, %struct.Memory** %MEMORY
  br label %block_.L_43d9de

block_.L_43d9d9:                                  ; preds = %block_.L_43d965
  %loadMem_43d9d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6473 = getelementptr inbounds %struct.GPR, %struct.GPR* %6472, i32 0, i32 33
  %6474 = getelementptr inbounds %struct.Reg, %struct.Reg* %6473, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %6474 to i64*
  %6475 = load i64, i64* %PC.i92
  %6476 = add i64 %6475, -116
  %6477 = load i64, i64* %PC.i92
  %6478 = add i64 %6477, 5
  store i64 %6478, i64* %PC.i92
  %6479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6476, i64* %6479, align 8
  store %struct.Memory* %loadMem_43d9d9, %struct.Memory** %MEMORY
  br label %block_.L_43d965

block_.L_43d9de:                                  ; preds = %block_43d9d4
  %loadMem_43d9de = load %struct.Memory*, %struct.Memory** %MEMORY
  %6480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6481 = getelementptr inbounds %struct.GPR, %struct.GPR* %6480, i32 0, i32 33
  %6482 = getelementptr inbounds %struct.Reg, %struct.Reg* %6481, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %6482 to i64*
  %6483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6484 = getelementptr inbounds %struct.GPR, %struct.GPR* %6483, i32 0, i32 1
  %6485 = getelementptr inbounds %struct.Reg, %struct.Reg* %6484, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %6485 to i64*
  %6486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6487 = getelementptr inbounds %struct.GPR, %struct.GPR* %6486, i32 0, i32 15
  %6488 = getelementptr inbounds %struct.Reg, %struct.Reg* %6487, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %6488 to i64*
  %6489 = load i64, i64* %RBP.i91
  %6490 = sub i64 %6489, 69
  %6491 = load i64, i64* %PC.i89
  %6492 = add i64 %6491, 4
  store i64 %6492, i64* %PC.i89
  %6493 = inttoptr i64 %6490 to i8*
  %6494 = load i8, i8* %6493
  %6495 = sext i8 %6494 to i64
  %6496 = and i64 %6495, 4294967295
  store i64 %6496, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_43d9de, %struct.Memory** %MEMORY
  %loadMem_43d9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6498 = getelementptr inbounds %struct.GPR, %struct.GPR* %6497, i32 0, i32 33
  %6499 = getelementptr inbounds %struct.Reg, %struct.Reg* %6498, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %6499 to i64*
  %6500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6501 = getelementptr inbounds %struct.GPR, %struct.GPR* %6500, i32 0, i32 1
  %6502 = getelementptr inbounds %struct.Reg, %struct.Reg* %6501, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %6502 to i64*
  %6503 = load i64, i64* %RAX.i88
  %6504 = load i64, i64* %PC.i87
  %6505 = add i64 %6504, 3
  store i64 %6505, i64* %PC.i87
  %6506 = trunc i64 %6503 to i32
  %6507 = add i32 65, %6506
  %6508 = zext i32 %6507 to i64
  store i64 %6508, i64* %RAX.i88, align 8
  %6509 = icmp ult i32 %6507, %6506
  %6510 = icmp ult i32 %6507, 65
  %6511 = or i1 %6509, %6510
  %6512 = zext i1 %6511 to i8
  %6513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6512, i8* %6513, align 1
  %6514 = and i32 %6507, 255
  %6515 = call i32 @llvm.ctpop.i32(i32 %6514)
  %6516 = trunc i32 %6515 to i8
  %6517 = and i8 %6516, 1
  %6518 = xor i8 %6517, 1
  %6519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6518, i8* %6519, align 1
  %6520 = xor i64 65, %6503
  %6521 = trunc i64 %6520 to i32
  %6522 = xor i32 %6521, %6507
  %6523 = lshr i32 %6522, 4
  %6524 = trunc i32 %6523 to i8
  %6525 = and i8 %6524, 1
  %6526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6525, i8* %6526, align 1
  %6527 = icmp eq i32 %6507, 0
  %6528 = zext i1 %6527 to i8
  %6529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6528, i8* %6529, align 1
  %6530 = lshr i32 %6507, 31
  %6531 = trunc i32 %6530 to i8
  %6532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6531, i8* %6532, align 1
  %6533 = lshr i32 %6506, 31
  %6534 = xor i32 %6530, %6533
  %6535 = add i32 %6534, %6530
  %6536 = icmp eq i32 %6535, 2
  %6537 = zext i1 %6536 to i8
  %6538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6537, i8* %6538, align 1
  store %struct.Memory* %loadMem_43d9e2, %struct.Memory** %MEMORY
  %loadMem_43d9e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6540 = getelementptr inbounds %struct.GPR, %struct.GPR* %6539, i32 0, i32 33
  %6541 = getelementptr inbounds %struct.Reg, %struct.Reg* %6540, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %6541 to i64*
  %6542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6543 = getelementptr inbounds %struct.GPR, %struct.GPR* %6542, i32 0, i32 1
  %6544 = getelementptr inbounds %struct.Reg, %struct.Reg* %6543, i32 0, i32 0
  %6545 = bitcast %union.anon* %6544 to %struct.anon.2*
  %AL.i85 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6545, i32 0, i32 0
  %6546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6547 = getelementptr inbounds %struct.GPR, %struct.GPR* %6546, i32 0, i32 5
  %6548 = getelementptr inbounds %struct.Reg, %struct.Reg* %6547, i32 0, i32 0
  %6549 = bitcast %union.anon* %6548 to %struct.anon.2*
  %CL.i86 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6549, i32 0, i32 0
  %6550 = load i8, i8* %AL.i85
  %6551 = zext i8 %6550 to i64
  %6552 = load i64, i64* %PC.i84
  %6553 = add i64 %6552, 2
  store i64 %6553, i64* %PC.i84
  store i8 %6550, i8* %CL.i86, align 1
  store %struct.Memory* %loadMem_43d9e5, %struct.Memory** %MEMORY
  %loadMem_43d9e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6555 = getelementptr inbounds %struct.GPR, %struct.GPR* %6554, i32 0, i32 33
  %6556 = getelementptr inbounds %struct.Reg, %struct.Reg* %6555, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %6556 to i64*
  %6557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6558 = getelementptr inbounds %struct.GPR, %struct.GPR* %6557, i32 0, i32 7
  %6559 = getelementptr inbounds %struct.Reg, %struct.Reg* %6558, i32 0, i32 0
  %RDX.i82 = bitcast %union.anon* %6559 to i64*
  %6560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6561 = getelementptr inbounds %struct.GPR, %struct.GPR* %6560, i32 0, i32 15
  %6562 = getelementptr inbounds %struct.Reg, %struct.Reg* %6561, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %6562 to i64*
  %6563 = load i64, i64* %RBP.i83
  %6564 = sub i64 %6563, 16
  %6565 = load i64, i64* %PC.i81
  %6566 = add i64 %6565, 4
  store i64 %6566, i64* %PC.i81
  %6567 = inttoptr i64 %6564 to i64*
  %6568 = load i64, i64* %6567
  store i64 %6568, i64* %RDX.i82, align 8
  store %struct.Memory* %loadMem_43d9e7, %struct.Memory** %MEMORY
  %loadMem_43d9eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6570 = getelementptr inbounds %struct.GPR, %struct.GPR* %6569, i32 0, i32 33
  %6571 = getelementptr inbounds %struct.Reg, %struct.Reg* %6570, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %6571 to i64*
  %6572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6573 = getelementptr inbounds %struct.GPR, %struct.GPR* %6572, i32 0, i32 1
  %6574 = getelementptr inbounds %struct.Reg, %struct.Reg* %6573, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %6574 to i64*
  %6575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6576 = getelementptr inbounds %struct.GPR, %struct.GPR* %6575, i32 0, i32 15
  %6577 = getelementptr inbounds %struct.Reg, %struct.Reg* %6576, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %6577 to i64*
  %6578 = load i64, i64* %RBP.i80
  %6579 = sub i64 %6578, 32
  %6580 = load i64, i64* %PC.i78
  %6581 = add i64 %6580, 3
  store i64 %6581, i64* %PC.i78
  %6582 = inttoptr i64 %6579 to i32*
  %6583 = load i32, i32* %6582
  %6584 = zext i32 %6583 to i64
  store i64 %6584, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_43d9eb, %struct.Memory** %MEMORY
  %loadMem_43d9ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6586 = getelementptr inbounds %struct.GPR, %struct.GPR* %6585, i32 0, i32 33
  %6587 = getelementptr inbounds %struct.Reg, %struct.Reg* %6586, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %6587 to i64*
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6589 = getelementptr inbounds %struct.GPR, %struct.GPR* %6588, i32 0, i32 1
  %6590 = getelementptr inbounds %struct.Reg, %struct.Reg* %6589, i32 0, i32 0
  %EAX.i76 = bitcast %union.anon* %6590 to i32*
  %6591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6592 = getelementptr inbounds %struct.GPR, %struct.GPR* %6591, i32 0, i32 9
  %6593 = getelementptr inbounds %struct.Reg, %struct.Reg* %6592, i32 0, i32 0
  %RSI.i77 = bitcast %union.anon* %6593 to i64*
  %6594 = load i32, i32* %EAX.i76
  %6595 = zext i32 %6594 to i64
  %6596 = load i64, i64* %PC.i75
  %6597 = add i64 %6596, 2
  store i64 %6597, i64* %PC.i75
  %6598 = and i64 %6595, 4294967295
  store i64 %6598, i64* %RSI.i77, align 8
  store %struct.Memory* %loadMem_43d9ee, %struct.Memory** %MEMORY
  %loadMem_43d9f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6600 = getelementptr inbounds %struct.GPR, %struct.GPR* %6599, i32 0, i32 33
  %6601 = getelementptr inbounds %struct.Reg, %struct.Reg* %6600, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %6601 to i64*
  %6602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6603 = getelementptr inbounds %struct.GPR, %struct.GPR* %6602, i32 0, i32 9
  %6604 = getelementptr inbounds %struct.Reg, %struct.Reg* %6603, i32 0, i32 0
  %RSI.i74 = bitcast %union.anon* %6604 to i64*
  %6605 = load i64, i64* %RSI.i74
  %6606 = load i64, i64* %PC.i73
  %6607 = add i64 %6606, 3
  store i64 %6607, i64* %PC.i73
  %6608 = trunc i64 %6605 to i32
  %6609 = add i32 1, %6608
  %6610 = zext i32 %6609 to i64
  store i64 %6610, i64* %RSI.i74, align 8
  %6611 = icmp ult i32 %6609, %6608
  %6612 = icmp ult i32 %6609, 1
  %6613 = or i1 %6611, %6612
  %6614 = zext i1 %6613 to i8
  %6615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6614, i8* %6615, align 1
  %6616 = and i32 %6609, 255
  %6617 = call i32 @llvm.ctpop.i32(i32 %6616)
  %6618 = trunc i32 %6617 to i8
  %6619 = and i8 %6618, 1
  %6620 = xor i8 %6619, 1
  %6621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6620, i8* %6621, align 1
  %6622 = xor i64 1, %6605
  %6623 = trunc i64 %6622 to i32
  %6624 = xor i32 %6623, %6609
  %6625 = lshr i32 %6624, 4
  %6626 = trunc i32 %6625 to i8
  %6627 = and i8 %6626, 1
  %6628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6627, i8* %6628, align 1
  %6629 = icmp eq i32 %6609, 0
  %6630 = zext i1 %6629 to i8
  %6631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6630, i8* %6631, align 1
  %6632 = lshr i32 %6609, 31
  %6633 = trunc i32 %6632 to i8
  %6634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6633, i8* %6634, align 1
  %6635 = lshr i32 %6608, 31
  %6636 = xor i32 %6632, %6635
  %6637 = add i32 %6636, %6632
  %6638 = icmp eq i32 %6637, 2
  %6639 = zext i1 %6638 to i8
  %6640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6639, i8* %6640, align 1
  store %struct.Memory* %loadMem_43d9f0, %struct.Memory** %MEMORY
  %loadMem_43d9f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6642 = getelementptr inbounds %struct.GPR, %struct.GPR* %6641, i32 0, i32 33
  %6643 = getelementptr inbounds %struct.Reg, %struct.Reg* %6642, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %6643 to i64*
  %6644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6645 = getelementptr inbounds %struct.GPR, %struct.GPR* %6644, i32 0, i32 9
  %6646 = getelementptr inbounds %struct.Reg, %struct.Reg* %6645, i32 0, i32 0
  %ESI.i71 = bitcast %union.anon* %6646 to i32*
  %6647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6648 = getelementptr inbounds %struct.GPR, %struct.GPR* %6647, i32 0, i32 15
  %6649 = getelementptr inbounds %struct.Reg, %struct.Reg* %6648, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %6649 to i64*
  %6650 = load i64, i64* %RBP.i72
  %6651 = sub i64 %6650, 32
  %6652 = load i32, i32* %ESI.i71
  %6653 = zext i32 %6652 to i64
  %6654 = load i64, i64* %PC.i70
  %6655 = add i64 %6654, 3
  store i64 %6655, i64* %PC.i70
  %6656 = inttoptr i64 %6651 to i32*
  store i32 %6652, i32* %6656
  store %struct.Memory* %loadMem_43d9f3, %struct.Memory** %MEMORY
  %loadMem_43d9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6658 = getelementptr inbounds %struct.GPR, %struct.GPR* %6657, i32 0, i32 33
  %6659 = getelementptr inbounds %struct.Reg, %struct.Reg* %6658, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %6659 to i64*
  %6660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6661 = getelementptr inbounds %struct.GPR, %struct.GPR* %6660, i32 0, i32 1
  %6662 = getelementptr inbounds %struct.Reg, %struct.Reg* %6661, i32 0, i32 0
  %EAX.i68 = bitcast %union.anon* %6662 to i32*
  %6663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6664 = getelementptr inbounds %struct.GPR, %struct.GPR* %6663, i32 0, i32 11
  %6665 = getelementptr inbounds %struct.Reg, %struct.Reg* %6664, i32 0, i32 0
  %RDI.i69 = bitcast %union.anon* %6665 to i64*
  %6666 = load i32, i32* %EAX.i68
  %6667 = zext i32 %6666 to i64
  %6668 = load i64, i64* %PC.i67
  %6669 = add i64 %6668, 3
  store i64 %6669, i64* %PC.i67
  %6670 = shl i64 %6667, 32
  %6671 = ashr exact i64 %6670, 32
  store i64 %6671, i64* %RDI.i69, align 8
  store %struct.Memory* %loadMem_43d9f6, %struct.Memory** %MEMORY
  %loadMem_43d9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6673 = getelementptr inbounds %struct.GPR, %struct.GPR* %6672, i32 0, i32 33
  %6674 = getelementptr inbounds %struct.Reg, %struct.Reg* %6673, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %6674 to i64*
  %6675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6676 = getelementptr inbounds %struct.GPR, %struct.GPR* %6675, i32 0, i32 5
  %6677 = getelementptr inbounds %struct.Reg, %struct.Reg* %6676, i32 0, i32 0
  %6678 = bitcast %union.anon* %6677 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6678, i32 0, i32 0
  %6679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6680 = getelementptr inbounds %struct.GPR, %struct.GPR* %6679, i32 0, i32 7
  %6681 = getelementptr inbounds %struct.Reg, %struct.Reg* %6680, i32 0, i32 0
  %RDX.i65 = bitcast %union.anon* %6681 to i64*
  %6682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6683 = getelementptr inbounds %struct.GPR, %struct.GPR* %6682, i32 0, i32 11
  %6684 = getelementptr inbounds %struct.Reg, %struct.Reg* %6683, i32 0, i32 0
  %RDI.i66 = bitcast %union.anon* %6684 to i64*
  %6685 = load i64, i64* %RDX.i65
  %6686 = load i64, i64* %RDI.i66
  %6687 = add i64 %6686, %6685
  %6688 = load i8, i8* %CL.i
  %6689 = zext i8 %6688 to i64
  %6690 = load i64, i64* %PC.i64
  %6691 = add i64 %6690, 3
  store i64 %6691, i64* %PC.i64
  %6692 = inttoptr i64 %6687 to i8*
  store i8 %6688, i8* %6692
  store %struct.Memory* %loadMem_43d9f9, %struct.Memory** %MEMORY
  %loadMem_43d9fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6694 = getelementptr inbounds %struct.GPR, %struct.GPR* %6693, i32 0, i32 33
  %6695 = getelementptr inbounds %struct.Reg, %struct.Reg* %6694, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %6695 to i64*
  %6696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6697 = getelementptr inbounds %struct.GPR, %struct.GPR* %6696, i32 0, i32 7
  %6698 = getelementptr inbounds %struct.Reg, %struct.Reg* %6697, i32 0, i32 0
  %RDX.i62 = bitcast %union.anon* %6698 to i64*
  %6699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6700 = getelementptr inbounds %struct.GPR, %struct.GPR* %6699, i32 0, i32 15
  %6701 = getelementptr inbounds %struct.Reg, %struct.Reg* %6700, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %6701 to i64*
  %6702 = load i64, i64* %RBP.i63
  %6703 = sub i64 %6702, 16
  %6704 = load i64, i64* %PC.i61
  %6705 = add i64 %6704, 4
  store i64 %6705, i64* %PC.i61
  %6706 = inttoptr i64 %6703 to i64*
  %6707 = load i64, i64* %6706
  store i64 %6707, i64* %RDX.i62, align 8
  store %struct.Memory* %loadMem_43d9fc, %struct.Memory** %MEMORY
  %loadMem_43da00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6709 = getelementptr inbounds %struct.GPR, %struct.GPR* %6708, i32 0, i32 33
  %6710 = getelementptr inbounds %struct.Reg, %struct.Reg* %6709, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %6710 to i64*
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6712 = getelementptr inbounds %struct.GPR, %struct.GPR* %6711, i32 0, i32 11
  %6713 = getelementptr inbounds %struct.Reg, %struct.Reg* %6712, i32 0, i32 0
  %RDI.i59 = bitcast %union.anon* %6713 to i64*
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6715 = getelementptr inbounds %struct.GPR, %struct.GPR* %6714, i32 0, i32 15
  %6716 = getelementptr inbounds %struct.Reg, %struct.Reg* %6715, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %6716 to i64*
  %6717 = load i64, i64* %RBP.i60
  %6718 = sub i64 %6717, 32
  %6719 = load i64, i64* %PC.i58
  %6720 = add i64 %6719, 4
  store i64 %6720, i64* %PC.i58
  %6721 = inttoptr i64 %6718 to i32*
  %6722 = load i32, i32* %6721
  %6723 = sext i32 %6722 to i64
  store i64 %6723, i64* %RDI.i59, align 8
  store %struct.Memory* %loadMem_43da00, %struct.Memory** %MEMORY
  %loadMem_43da04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6725 = getelementptr inbounds %struct.GPR, %struct.GPR* %6724, i32 0, i32 33
  %6726 = getelementptr inbounds %struct.Reg, %struct.Reg* %6725, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %6726 to i64*
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6728 = getelementptr inbounds %struct.GPR, %struct.GPR* %6727, i32 0, i32 7
  %6729 = getelementptr inbounds %struct.Reg, %struct.Reg* %6728, i32 0, i32 0
  %RDX.i56 = bitcast %union.anon* %6729 to i64*
  %6730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6731 = getelementptr inbounds %struct.GPR, %struct.GPR* %6730, i32 0, i32 11
  %6732 = getelementptr inbounds %struct.Reg, %struct.Reg* %6731, i32 0, i32 0
  %RDI.i57 = bitcast %union.anon* %6732 to i64*
  %6733 = load i64, i64* %RDX.i56
  %6734 = load i64, i64* %RDI.i57
  %6735 = add i64 %6734, %6733
  %6736 = load i64, i64* %PC.i55
  %6737 = add i64 %6736, 4
  store i64 %6737, i64* %PC.i55
  %6738 = inttoptr i64 %6735 to i8*
  store i8 0, i8* %6738
  store %struct.Memory* %loadMem_43da04, %struct.Memory** %MEMORY
  %loadMem_43da08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6740 = getelementptr inbounds %struct.GPR, %struct.GPR* %6739, i32 0, i32 33
  %6741 = getelementptr inbounds %struct.Reg, %struct.Reg* %6740, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %6741 to i64*
  %6742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6743 = getelementptr inbounds %struct.GPR, %struct.GPR* %6742, i32 0, i32 1
  %6744 = getelementptr inbounds %struct.Reg, %struct.Reg* %6743, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %6744 to i64*
  %6745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6746 = getelementptr inbounds %struct.GPR, %struct.GPR* %6745, i32 0, i32 15
  %6747 = getelementptr inbounds %struct.Reg, %struct.Reg* %6746, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %6747 to i64*
  %6748 = load i64, i64* %RBP.i54
  %6749 = sub i64 %6748, 36
  %6750 = load i64, i64* %PC.i52
  %6751 = add i64 %6750, 3
  store i64 %6751, i64* %PC.i52
  %6752 = inttoptr i64 %6749 to i32*
  %6753 = load i32, i32* %6752
  %6754 = zext i32 %6753 to i64
  store i64 %6754, i64* %RAX.i53, align 8
  store %struct.Memory* %loadMem_43da08, %struct.Memory** %MEMORY
  %loadMem_43da0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6756 = getelementptr inbounds %struct.GPR, %struct.GPR* %6755, i32 0, i32 33
  %6757 = getelementptr inbounds %struct.Reg, %struct.Reg* %6756, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %6757 to i64*
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6759 = getelementptr inbounds %struct.GPR, %struct.GPR* %6758, i32 0, i32 9
  %6760 = getelementptr inbounds %struct.Reg, %struct.Reg* %6759, i32 0, i32 0
  %RSI.i50 = bitcast %union.anon* %6760 to i64*
  %6761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6762 = getelementptr inbounds %struct.GPR, %struct.GPR* %6761, i32 0, i32 15
  %6763 = getelementptr inbounds %struct.Reg, %struct.Reg* %6762, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %6763 to i64*
  %6764 = load i64, i64* %RBP.i51
  %6765 = sub i64 %6764, 69
  %6766 = load i64, i64* %PC.i49
  %6767 = add i64 %6766, 4
  store i64 %6767, i64* %PC.i49
  %6768 = inttoptr i64 %6765 to i8*
  %6769 = load i8, i8* %6768
  %6770 = sext i8 %6769 to i64
  %6771 = and i64 %6770, 4294967295
  store i64 %6771, i64* %RSI.i50, align 8
  store %struct.Memory* %loadMem_43da0b, %struct.Memory** %MEMORY
  %loadMem_43da0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6773 = getelementptr inbounds %struct.GPR, %struct.GPR* %6772, i32 0, i32 33
  %6774 = getelementptr inbounds %struct.Reg, %struct.Reg* %6773, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %6774 to i64*
  %6775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6776 = getelementptr inbounds %struct.GPR, %struct.GPR* %6775, i32 0, i32 1
  %6777 = getelementptr inbounds %struct.Reg, %struct.Reg* %6776, i32 0, i32 0
  %EAX.i48 = bitcast %union.anon* %6777 to i32*
  %6778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6779 = getelementptr inbounds %struct.GPR, %struct.GPR* %6778, i32 0, i32 9
  %6780 = getelementptr inbounds %struct.Reg, %struct.Reg* %6779, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %6780 to i32*
  %6781 = load i32, i32* %EAX.i48
  %6782 = zext i32 %6781 to i64
  %6783 = load i32, i32* %ESI.i
  %6784 = zext i32 %6783 to i64
  %6785 = load i64, i64* %PC.i47
  %6786 = add i64 %6785, 2
  store i64 %6786, i64* %PC.i47
  %6787 = sub i32 %6781, %6783
  %6788 = icmp ult i32 %6781, %6783
  %6789 = zext i1 %6788 to i8
  %6790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6789, i8* %6790, align 1
  %6791 = and i32 %6787, 255
  %6792 = call i32 @llvm.ctpop.i32(i32 %6791)
  %6793 = trunc i32 %6792 to i8
  %6794 = and i8 %6793, 1
  %6795 = xor i8 %6794, 1
  %6796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6795, i8* %6796, align 1
  %6797 = xor i64 %6784, %6782
  %6798 = trunc i64 %6797 to i32
  %6799 = xor i32 %6798, %6787
  %6800 = lshr i32 %6799, 4
  %6801 = trunc i32 %6800 to i8
  %6802 = and i8 %6801, 1
  %6803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6802, i8* %6803, align 1
  %6804 = icmp eq i32 %6787, 0
  %6805 = zext i1 %6804 to i8
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6805, i8* %6806, align 1
  %6807 = lshr i32 %6787, 31
  %6808 = trunc i32 %6807 to i8
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6808, i8* %6809, align 1
  %6810 = lshr i32 %6781, 31
  %6811 = lshr i32 %6783, 31
  %6812 = xor i32 %6811, %6810
  %6813 = xor i32 %6807, %6810
  %6814 = add i32 %6813, %6812
  %6815 = icmp eq i32 %6814, 2
  %6816 = zext i1 %6815 to i8
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6816, i8* %6817, align 1
  store %struct.Memory* %loadMem_43da0f, %struct.Memory** %MEMORY
  %loadMem_43da11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6819 = getelementptr inbounds %struct.GPR, %struct.GPR* %6818, i32 0, i32 33
  %6820 = getelementptr inbounds %struct.Reg, %struct.Reg* %6819, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %6820 to i64*
  %6821 = load i64, i64* %PC.i46
  %6822 = add i64 %6821, 23
  %6823 = load i64, i64* %PC.i46
  %6824 = add i64 %6823, 6
  %6825 = load i64, i64* %PC.i46
  %6826 = add i64 %6825, 6
  store i64 %6826, i64* %PC.i46
  %6827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6828 = load i8, i8* %6827, align 1
  store i8 %6828, i8* %BRANCH_TAKEN, align 1
  %6829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6830 = icmp ne i8 %6828, 0
  %6831 = select i1 %6830, i64 %6822, i64 %6824
  store i64 %6831, i64* %6829, align 8
  store %struct.Memory* %loadMem_43da11, %struct.Memory** %MEMORY
  %loadBr_43da11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43da11 = icmp eq i8 %loadBr_43da11, 1
  br i1 %cmpBr_43da11, label %block_.L_43da28, label %block_43da17

block_43da17:                                     ; preds = %block_.L_43d9de
  %loadMem_43da17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6833 = getelementptr inbounds %struct.GPR, %struct.GPR* %6832, i32 0, i32 33
  %6834 = getelementptr inbounds %struct.Reg, %struct.Reg* %6833, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %6834 to i64*
  %6835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6836 = getelementptr inbounds %struct.GPR, %struct.GPR* %6835, i32 0, i32 11
  %6837 = getelementptr inbounds %struct.Reg, %struct.Reg* %6836, i32 0, i32 0
  %RDI.i45 = bitcast %union.anon* %6837 to i64*
  %6838 = load i64, i64* %PC.i44
  %6839 = add i64 %6838, 10
  store i64 %6839, i64* %PC.i44
  store i64 ptrtoint (%G__0x459df0_type* @G__0x459df0 to i64), i64* %RDI.i45, align 8
  store %struct.Memory* %loadMem_43da17, %struct.Memory** %MEMORY
  %loadMem_43da21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6841 = getelementptr inbounds %struct.GPR, %struct.GPR* %6840, i32 0, i32 33
  %6842 = getelementptr inbounds %struct.Reg, %struct.Reg* %6841, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %6842 to i64*
  %6843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6844 = getelementptr inbounds %struct.GPR, %struct.GPR* %6843, i32 0, i32 1
  %6845 = getelementptr inbounds %struct.Reg, %struct.Reg* %6844, i32 0, i32 0
  %6846 = bitcast %union.anon* %6845 to %struct.anon.2*
  %AL.i43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6846, i32 0, i32 0
  %6847 = load i64, i64* %PC.i42
  %6848 = add i64 %6847, 2
  store i64 %6848, i64* %PC.i42
  store i8 0, i8* %AL.i43, align 1
  store %struct.Memory* %loadMem_43da21, %struct.Memory** %MEMORY
  %loadMem1_43da23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6850 = getelementptr inbounds %struct.GPR, %struct.GPR* %6849, i32 0, i32 33
  %6851 = getelementptr inbounds %struct.Reg, %struct.Reg* %6850, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %6851 to i64*
  %6852 = load i64, i64* %PC.i41
  %6853 = add i64 %6852, 4077
  %6854 = load i64, i64* %PC.i41
  %6855 = add i64 %6854, 5
  %6856 = load i64, i64* %PC.i41
  %6857 = add i64 %6856, 5
  store i64 %6857, i64* %PC.i41
  %6858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6859 = load i64, i64* %6858, align 8
  %6860 = add i64 %6859, -8
  %6861 = inttoptr i64 %6860 to i64*
  store i64 %6855, i64* %6861
  store i64 %6860, i64* %6858, align 8
  %6862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6853, i64* %6862, align 8
  store %struct.Memory* %loadMem1_43da23, %struct.Memory** %MEMORY
  %loadMem2_43da23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43da23 = load i64, i64* %3
  %call2_43da23 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_43da23, %struct.Memory* %loadMem2_43da23)
  store %struct.Memory* %call2_43da23, %struct.Memory** %MEMORY
  br label %block_.L_43da28

block_.L_43da28:                                  ; preds = %block_43da17, %block_.L_43d9de
  %loadMem_43da28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6864 = getelementptr inbounds %struct.GPR, %struct.GPR* %6863, i32 0, i32 33
  %6865 = getelementptr inbounds %struct.Reg, %struct.Reg* %6864, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %6865 to i64*
  %6866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6867 = getelementptr inbounds %struct.GPR, %struct.GPR* %6866, i32 0, i32 1
  %6868 = getelementptr inbounds %struct.Reg, %struct.Reg* %6867, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %6868 to i64*
  %6869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6870 = getelementptr inbounds %struct.GPR, %struct.GPR* %6869, i32 0, i32 15
  %6871 = getelementptr inbounds %struct.Reg, %struct.Reg* %6870, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %6871 to i64*
  %6872 = load i64, i64* %RBP.i40
  %6873 = sub i64 %6872, 32
  %6874 = load i64, i64* %PC.i38
  %6875 = add i64 %6874, 3
  store i64 %6875, i64* %PC.i38
  %6876 = inttoptr i64 %6873 to i32*
  %6877 = load i32, i32* %6876
  %6878 = zext i32 %6877 to i64
  store i64 %6878, i64* %RAX.i39, align 8
  store %struct.Memory* %loadMem_43da28, %struct.Memory** %MEMORY
  %loadMem_43da2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6880 = getelementptr inbounds %struct.GPR, %struct.GPR* %6879, i32 0, i32 33
  %6881 = getelementptr inbounds %struct.Reg, %struct.Reg* %6880, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %6881 to i64*
  %6882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6883 = getelementptr inbounds %struct.GPR, %struct.GPR* %6882, i32 0, i32 1
  %6884 = getelementptr inbounds %struct.Reg, %struct.Reg* %6883, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6884 to i32*
  %6885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6886 = getelementptr inbounds %struct.GPR, %struct.GPR* %6885, i32 0, i32 15
  %6887 = getelementptr inbounds %struct.Reg, %struct.Reg* %6886, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %6887 to i64*
  %6888 = load i32, i32* %EAX.i
  %6889 = zext i32 %6888 to i64
  %6890 = load i64, i64* %RBP.i37
  %6891 = sub i64 %6890, 28
  %6892 = load i64, i64* %PC.i36
  %6893 = add i64 %6892, 3
  store i64 %6893, i64* %PC.i36
  %6894 = inttoptr i64 %6891 to i32*
  %6895 = load i32, i32* %6894
  %6896 = sub i32 %6888, %6895
  %6897 = icmp ult i32 %6888, %6895
  %6898 = zext i1 %6897 to i8
  %6899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6898, i8* %6899, align 1
  %6900 = and i32 %6896, 255
  %6901 = call i32 @llvm.ctpop.i32(i32 %6900)
  %6902 = trunc i32 %6901 to i8
  %6903 = and i8 %6902, 1
  %6904 = xor i8 %6903, 1
  %6905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6904, i8* %6905, align 1
  %6906 = xor i32 %6895, %6888
  %6907 = xor i32 %6906, %6896
  %6908 = lshr i32 %6907, 4
  %6909 = trunc i32 %6908 to i8
  %6910 = and i8 %6909, 1
  %6911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6910, i8* %6911, align 1
  %6912 = icmp eq i32 %6896, 0
  %6913 = zext i1 %6912 to i8
  %6914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6913, i8* %6914, align 1
  %6915 = lshr i32 %6896, 31
  %6916 = trunc i32 %6915 to i8
  %6917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6916, i8* %6917, align 1
  %6918 = lshr i32 %6888, 31
  %6919 = lshr i32 %6895, 31
  %6920 = xor i32 %6919, %6918
  %6921 = xor i32 %6915, %6918
  %6922 = add i32 %6921, %6920
  %6923 = icmp eq i32 %6922, 2
  %6924 = zext i1 %6923 to i8
  %6925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6924, i8* %6925, align 1
  store %struct.Memory* %loadMem_43da2b, %struct.Memory** %MEMORY
  %loadMem_43da2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6927 = getelementptr inbounds %struct.GPR, %struct.GPR* %6926, i32 0, i32 33
  %6928 = getelementptr inbounds %struct.Reg, %struct.Reg* %6927, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %6928 to i64*
  %6929 = load i64, i64* %PC.i35
  %6930 = add i64 %6929, 29
  %6931 = load i64, i64* %PC.i35
  %6932 = add i64 %6931, 6
  %6933 = load i64, i64* %PC.i35
  %6934 = add i64 %6933, 6
  store i64 %6934, i64* %PC.i35
  %6935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6936 = load i8, i8* %6935, align 1
  store i8 %6936, i8* %BRANCH_TAKEN, align 1
  %6937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6938 = icmp ne i8 %6936, 0
  %6939 = select i1 %6938, i64 %6930, i64 %6932
  store i64 %6939, i64* %6937, align 8
  store %struct.Memory* %loadMem_43da2e, %struct.Memory** %MEMORY
  %loadBr_43da2e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43da2e = icmp eq i8 %loadBr_43da2e, 1
  br i1 %cmpBr_43da2e, label %block_.L_43da4b, label %block_43da34

block_43da34:                                     ; preds = %block_.L_43da28
  %loadMem_43da34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6941 = getelementptr inbounds %struct.GPR, %struct.GPR* %6940, i32 0, i32 33
  %6942 = getelementptr inbounds %struct.Reg, %struct.Reg* %6941, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %6942 to i64*
  %6943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6944 = getelementptr inbounds %struct.GPR, %struct.GPR* %6943, i32 0, i32 11
  %6945 = getelementptr inbounds %struct.Reg, %struct.Reg* %6944, i32 0, i32 0
  %RDI.i34 = bitcast %union.anon* %6945 to i64*
  %6946 = load i64, i64* %PC.i33
  %6947 = add i64 %6946, 10
  store i64 %6947, i64* %PC.i33
  store i64 ptrtoint (%G__0x459e0c_type* @G__0x459e0c to i64), i64* %RDI.i34, align 8
  store %struct.Memory* %loadMem_43da34, %struct.Memory** %MEMORY
  %loadMem_43da3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6949 = getelementptr inbounds %struct.GPR, %struct.GPR* %6948, i32 0, i32 33
  %6950 = getelementptr inbounds %struct.Reg, %struct.Reg* %6949, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %6950 to i64*
  %6951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6952 = getelementptr inbounds %struct.GPR, %struct.GPR* %6951, i32 0, i32 9
  %6953 = getelementptr inbounds %struct.Reg, %struct.Reg* %6952, i32 0, i32 0
  %RSI.i31 = bitcast %union.anon* %6953 to i64*
  %6954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6955 = getelementptr inbounds %struct.GPR, %struct.GPR* %6954, i32 0, i32 15
  %6956 = getelementptr inbounds %struct.Reg, %struct.Reg* %6955, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %6956 to i64*
  %6957 = load i64, i64* %RBP.i32
  %6958 = sub i64 %6957, 32
  %6959 = load i64, i64* %PC.i30
  %6960 = add i64 %6959, 3
  store i64 %6960, i64* %PC.i30
  %6961 = inttoptr i64 %6958 to i32*
  %6962 = load i32, i32* %6961
  %6963 = zext i32 %6962 to i64
  store i64 %6963, i64* %RSI.i31, align 8
  store %struct.Memory* %loadMem_43da3e, %struct.Memory** %MEMORY
  %loadMem_43da41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6965 = getelementptr inbounds %struct.GPR, %struct.GPR* %6964, i32 0, i32 33
  %6966 = getelementptr inbounds %struct.Reg, %struct.Reg* %6965, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %6966 to i64*
  %6967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6968 = getelementptr inbounds %struct.GPR, %struct.GPR* %6967, i32 0, i32 7
  %6969 = getelementptr inbounds %struct.Reg, %struct.Reg* %6968, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6969 to i64*
  %6970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6971 = getelementptr inbounds %struct.GPR, %struct.GPR* %6970, i32 0, i32 15
  %6972 = getelementptr inbounds %struct.Reg, %struct.Reg* %6971, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %6972 to i64*
  %6973 = load i64, i64* %RBP.i29
  %6974 = sub i64 %6973, 28
  %6975 = load i64, i64* %PC.i28
  %6976 = add i64 %6975, 3
  store i64 %6976, i64* %PC.i28
  %6977 = inttoptr i64 %6974 to i32*
  %6978 = load i32, i32* %6977
  %6979 = zext i32 %6978 to i64
  store i64 %6979, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_43da41, %struct.Memory** %MEMORY
  %loadMem_43da44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6981 = getelementptr inbounds %struct.GPR, %struct.GPR* %6980, i32 0, i32 33
  %6982 = getelementptr inbounds %struct.Reg, %struct.Reg* %6981, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %6982 to i64*
  %6983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6984 = getelementptr inbounds %struct.GPR, %struct.GPR* %6983, i32 0, i32 1
  %6985 = getelementptr inbounds %struct.Reg, %struct.Reg* %6984, i32 0, i32 0
  %6986 = bitcast %union.anon* %6985 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6986, i32 0, i32 0
  %6987 = load i64, i64* %PC.i27
  %6988 = add i64 %6987, 2
  store i64 %6988, i64* %PC.i27
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_43da44, %struct.Memory** %MEMORY
  %loadMem1_43da46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6990 = getelementptr inbounds %struct.GPR, %struct.GPR* %6989, i32 0, i32 33
  %6991 = getelementptr inbounds %struct.Reg, %struct.Reg* %6990, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %6991 to i64*
  %6992 = load i64, i64* %PC.i26
  %6993 = add i64 %6992, 4042
  %6994 = load i64, i64* %PC.i26
  %6995 = add i64 %6994, 5
  %6996 = load i64, i64* %PC.i26
  %6997 = add i64 %6996, 5
  store i64 %6997, i64* %PC.i26
  %6998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6999 = load i64, i64* %6998, align 8
  %7000 = add i64 %6999, -8
  %7001 = inttoptr i64 %7000 to i64*
  store i64 %6995, i64* %7001
  store i64 %7000, i64* %6998, align 8
  %7002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6993, i64* %7002, align 8
  store %struct.Memory* %loadMem1_43da46, %struct.Memory** %MEMORY
  %loadMem2_43da46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43da46 = load i64, i64* %3
  %call2_43da46 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_43da46, %struct.Memory* %loadMem2_43da46)
  store %struct.Memory* %call2_43da46, %struct.Memory** %MEMORY
  br label %block_.L_43da4b

block_.L_43da4b:                                  ; preds = %block_43da34, %block_.L_43da28
  %loadMem_43da4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7004 = getelementptr inbounds %struct.GPR, %struct.GPR* %7003, i32 0, i32 33
  %7005 = getelementptr inbounds %struct.Reg, %struct.Reg* %7004, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %7005 to i64*
  %7006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7007 = getelementptr inbounds %struct.GPR, %struct.GPR* %7006, i32 0, i32 9
  %7008 = getelementptr inbounds %struct.Reg, %struct.Reg* %7007, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7008 to i64*
  %7009 = load i64, i64* %PC.i25
  %7010 = add i64 %7009, 5
  store i64 %7010, i64* %PC.i25
  store i64 26, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_43da4b, %struct.Memory** %MEMORY
  %loadMem_43da50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7012 = getelementptr inbounds %struct.GPR, %struct.GPR* %7011, i32 0, i32 33
  %7013 = getelementptr inbounds %struct.Reg, %struct.Reg* %7012, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %7013 to i64*
  %7014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7015 = getelementptr inbounds %struct.GPR, %struct.GPR* %7014, i32 0, i32 11
  %7016 = getelementptr inbounds %struct.Reg, %struct.Reg* %7015, i32 0, i32 0
  %RDI.i23 = bitcast %union.anon* %7016 to i64*
  %7017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7018 = getelementptr inbounds %struct.GPR, %struct.GPR* %7017, i32 0, i32 15
  %7019 = getelementptr inbounds %struct.Reg, %struct.Reg* %7018, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %7019 to i64*
  %7020 = load i64, i64* %RBP.i24
  %7021 = sub i64 %7020, 48
  %7022 = load i64, i64* %PC.i22
  %7023 = add i64 %7022, 4
  store i64 %7023, i64* %PC.i22
  %7024 = inttoptr i64 %7021 to i64*
  %7025 = load i64, i64* %7024
  store i64 %7025, i64* %RDI.i23, align 8
  store %struct.Memory* %loadMem_43da50, %struct.Memory** %MEMORY
  %loadMem1_43da54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7027 = getelementptr inbounds %struct.GPR, %struct.GPR* %7026, i32 0, i32 33
  %7028 = getelementptr inbounds %struct.Reg, %struct.Reg* %7027, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %7028 to i64*
  %7029 = load i64, i64* %PC.i21
  %7030 = add i64 %7029, 34492
  %7031 = load i64, i64* %PC.i21
  %7032 = add i64 %7031, 5
  %7033 = load i64, i64* %PC.i21
  %7034 = add i64 %7033, 5
  store i64 %7034, i64* %PC.i21
  %7035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7036 = load i64, i64* %7035, align 8
  %7037 = add i64 %7036, -8
  %7038 = inttoptr i64 %7037 to i64*
  store i64 %7032, i64* %7038
  store i64 %7037, i64* %7035, align 8
  %7039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7030, i64* %7039, align 8
  store %struct.Memory* %loadMem1_43da54, %struct.Memory** %MEMORY
  %loadMem2_43da54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43da54 = load i64, i64* %3
  %call2_43da54 = call %struct.Memory* @sub_446110.Free2DArray(%struct.State* %0, i64 %loadPC_43da54, %struct.Memory* %loadMem2_43da54)
  store %struct.Memory* %call2_43da54, %struct.Memory** %MEMORY
  %loadMem_43da59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7041 = getelementptr inbounds %struct.GPR, %struct.GPR* %7040, i32 0, i32 33
  %7042 = getelementptr inbounds %struct.Reg, %struct.Reg* %7041, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %7042 to i64*
  %7043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7044 = getelementptr inbounds %struct.GPR, %struct.GPR* %7043, i32 0, i32 11
  %7045 = getelementptr inbounds %struct.Reg, %struct.Reg* %7044, i32 0, i32 0
  %RDI.i19 = bitcast %union.anon* %7045 to i64*
  %7046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7047 = getelementptr inbounds %struct.GPR, %struct.GPR* %7046, i32 0, i32 15
  %7048 = getelementptr inbounds %struct.Reg, %struct.Reg* %7047, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %7048 to i64*
  %7049 = load i64, i64* %RBP.i20
  %7050 = sub i64 %7049, 56
  %7051 = load i64, i64* %PC.i18
  %7052 = add i64 %7051, 4
  store i64 %7052, i64* %PC.i18
  %7053 = inttoptr i64 %7050 to i64*
  %7054 = load i64, i64* %7053
  store i64 %7054, i64* %RDI.i19, align 8
  store %struct.Memory* %loadMem_43da59, %struct.Memory** %MEMORY
  %loadMem1_43da5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7056 = getelementptr inbounds %struct.GPR, %struct.GPR* %7055, i32 0, i32 33
  %7057 = getelementptr inbounds %struct.Reg, %struct.Reg* %7056, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %7057 to i64*
  %7058 = load i64, i64* %PC.i17
  %7059 = add i64 %7058, -247517
  %7060 = load i64, i64* %PC.i17
  %7061 = add i64 %7060, 5
  %7062 = load i64, i64* %PC.i17
  %7063 = add i64 %7062, 5
  store i64 %7063, i64* %PC.i17
  %7064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7065 = load i64, i64* %7064, align 8
  %7066 = add i64 %7065, -8
  %7067 = inttoptr i64 %7066 to i64*
  store i64 %7061, i64* %7067
  store i64 %7066, i64* %7064, align 8
  %7068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7059, i64* %7068, align 8
  store %struct.Memory* %loadMem1_43da5d, %struct.Memory** %MEMORY
  %loadMem2_43da5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43da5d = load i64, i64* %3
  %7069 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_43da5d)
  store %struct.Memory* %7069, %struct.Memory** %MEMORY
  %loadMem_43da62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7071 = getelementptr inbounds %struct.GPR, %struct.GPR* %7070, i32 0, i32 33
  %7072 = getelementptr inbounds %struct.Reg, %struct.Reg* %7071, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %7072 to i64*
  %7073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7074 = getelementptr inbounds %struct.GPR, %struct.GPR* %7073, i32 0, i32 11
  %7075 = getelementptr inbounds %struct.Reg, %struct.Reg* %7074, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7075 to i64*
  %7076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7077 = getelementptr inbounds %struct.GPR, %struct.GPR* %7076, i32 0, i32 15
  %7078 = getelementptr inbounds %struct.Reg, %struct.Reg* %7077, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %7078 to i64*
  %7079 = load i64, i64* %RBP.i14
  %7080 = sub i64 %7079, 64
  %7081 = load i64, i64* %PC.i13
  %7082 = add i64 %7081, 4
  store i64 %7082, i64* %PC.i13
  %7083 = inttoptr i64 %7080 to i64*
  %7084 = load i64, i64* %7083
  store i64 %7084, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_43da62, %struct.Memory** %MEMORY
  %loadMem1_43da66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7086 = getelementptr inbounds %struct.GPR, %struct.GPR* %7085, i32 0, i32 33
  %7087 = getelementptr inbounds %struct.Reg, %struct.Reg* %7086, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %7087 to i64*
  %7088 = load i64, i64* %PC.i12
  %7089 = add i64 %7088, -247526
  %7090 = load i64, i64* %PC.i12
  %7091 = add i64 %7090, 5
  %7092 = load i64, i64* %PC.i12
  %7093 = add i64 %7092, 5
  store i64 %7093, i64* %PC.i12
  %7094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7095 = load i64, i64* %7094, align 8
  %7096 = add i64 %7095, -8
  %7097 = inttoptr i64 %7096 to i64*
  store i64 %7091, i64* %7097
  store i64 %7096, i64* %7094, align 8
  %7098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7089, i64* %7098, align 8
  store %struct.Memory* %loadMem1_43da66, %struct.Memory** %MEMORY
  %loadMem2_43da66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43da66 = load i64, i64* %3
  %7099 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_43da66)
  store %struct.Memory* %7099, %struct.Memory** %MEMORY
  %loadMem_43da6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7101 = getelementptr inbounds %struct.GPR, %struct.GPR* %7100, i32 0, i32 33
  %7102 = getelementptr inbounds %struct.Reg, %struct.Reg* %7101, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %7102 to i64*
  %7103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7104 = getelementptr inbounds %struct.GPR, %struct.GPR* %7103, i32 0, i32 15
  %7105 = getelementptr inbounds %struct.Reg, %struct.Reg* %7104, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %7105 to i64*
  %7106 = load i64, i64* %RBP.i8
  %7107 = sub i64 %7106, 4
  %7108 = load i64, i64* %PC.i7
  %7109 = add i64 %7108, 7
  store i64 %7109, i64* %PC.i7
  %7110 = inttoptr i64 %7107 to i32*
  store i32 1, i32* %7110
  store %struct.Memory* %loadMem_43da6b, %struct.Memory** %MEMORY
  br label %block_.L_43da72

block_.L_43da72:                                  ; preds = %block_.L_43da4b, %block_43d4ab
  %loadMem_43da72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7112 = getelementptr inbounds %struct.GPR, %struct.GPR* %7111, i32 0, i32 33
  %7113 = getelementptr inbounds %struct.Reg, %struct.Reg* %7112, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7113 to i64*
  %7114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7115 = getelementptr inbounds %struct.GPR, %struct.GPR* %7114, i32 0, i32 1
  %7116 = getelementptr inbounds %struct.Reg, %struct.Reg* %7115, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7116 to i64*
  %7117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7118 = getelementptr inbounds %struct.GPR, %struct.GPR* %7117, i32 0, i32 15
  %7119 = getelementptr inbounds %struct.Reg, %struct.Reg* %7118, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %7119 to i64*
  %7120 = load i64, i64* %RBP.i6
  %7121 = sub i64 %7120, 4
  %7122 = load i64, i64* %PC.i5
  %7123 = add i64 %7122, 3
  store i64 %7123, i64* %PC.i5
  %7124 = inttoptr i64 %7121 to i32*
  %7125 = load i32, i32* %7124
  %7126 = zext i32 %7125 to i64
  store i64 %7126, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_43da72, %struct.Memory** %MEMORY
  %loadMem_43da75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7128 = getelementptr inbounds %struct.GPR, %struct.GPR* %7127, i32 0, i32 33
  %7129 = getelementptr inbounds %struct.Reg, %struct.Reg* %7128, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7129 to i64*
  %7130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7131 = getelementptr inbounds %struct.GPR, %struct.GPR* %7130, i32 0, i32 13
  %7132 = getelementptr inbounds %struct.Reg, %struct.Reg* %7131, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7132 to i64*
  %7133 = load i64, i64* %RSP.i
  %7134 = load i64, i64* %PC.i4
  %7135 = add i64 %7134, 4
  store i64 %7135, i64* %PC.i4
  %7136 = add i64 112, %7133
  store i64 %7136, i64* %RSP.i, align 8
  %7137 = icmp ult i64 %7136, %7133
  %7138 = icmp ult i64 %7136, 112
  %7139 = or i1 %7137, %7138
  %7140 = zext i1 %7139 to i8
  %7141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7140, i8* %7141, align 1
  %7142 = trunc i64 %7136 to i32
  %7143 = and i32 %7142, 255
  %7144 = call i32 @llvm.ctpop.i32(i32 %7143)
  %7145 = trunc i32 %7144 to i8
  %7146 = and i8 %7145, 1
  %7147 = xor i8 %7146, 1
  %7148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7147, i8* %7148, align 1
  %7149 = xor i64 112, %7133
  %7150 = xor i64 %7149, %7136
  %7151 = lshr i64 %7150, 4
  %7152 = trunc i64 %7151 to i8
  %7153 = and i8 %7152, 1
  %7154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7153, i8* %7154, align 1
  %7155 = icmp eq i64 %7136, 0
  %7156 = zext i1 %7155 to i8
  %7157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7156, i8* %7157, align 1
  %7158 = lshr i64 %7136, 63
  %7159 = trunc i64 %7158 to i8
  %7160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7159, i8* %7160, align 1
  %7161 = lshr i64 %7133, 63
  %7162 = xor i64 %7158, %7161
  %7163 = add i64 %7162, %7158
  %7164 = icmp eq i64 %7163, 2
  %7165 = zext i1 %7164 to i8
  %7166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7165, i8* %7166, align 1
  store %struct.Memory* %loadMem_43da75, %struct.Memory** %MEMORY
  %loadMem_43da79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7168 = getelementptr inbounds %struct.GPR, %struct.GPR* %7167, i32 0, i32 33
  %7169 = getelementptr inbounds %struct.Reg, %struct.Reg* %7168, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7169 to i64*
  %7170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7171 = getelementptr inbounds %struct.GPR, %struct.GPR* %7170, i32 0, i32 15
  %7172 = getelementptr inbounds %struct.Reg, %struct.Reg* %7171, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7172 to i64*
  %7173 = load i64, i64* %PC.i2
  %7174 = add i64 %7173, 1
  store i64 %7174, i64* %PC.i2
  %7175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7176 = load i64, i64* %7175, align 8
  %7177 = add i64 %7176, 8
  %7178 = inttoptr i64 %7176 to i64*
  %7179 = load i64, i64* %7178
  store i64 %7179, i64* %RBP.i3, align 8
  store i64 %7177, i64* %7175, align 8
  store %struct.Memory* %loadMem_43da79, %struct.Memory** %MEMORY
  %loadMem_43da7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7181 = getelementptr inbounds %struct.GPR, %struct.GPR* %7180, i32 0, i32 33
  %7182 = getelementptr inbounds %struct.Reg, %struct.Reg* %7181, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7182 to i64*
  %7183 = load i64, i64* %PC.i1
  %7184 = add i64 %7183, 1
  store i64 %7184, i64* %PC.i1
  %7185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7187 = load i64, i64* %7186, align 8
  %7188 = inttoptr i64 %7187 to i64*
  %7189 = load i64, i64* %7188
  store i64 %7189, i64* %7185, align 8
  %7190 = add i64 %7187, 8
  store i64 %7190, i64* %7186, align 8
  store %struct.Memory* %loadMem_43da7a, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_43da7a
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

define %struct.Memory* @routine_subq__0x70___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 112
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 112
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
  %23 = xor i64 112, %9
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

define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_callq_.strlen_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_43d4ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RSI, align 8
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

define %struct.Memory* @routine_movzwl___rax__rcx_2____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i16*
  %22 = load i16, i16* %21
  %23 = zext i16 %22 to i64
  store i64 %23, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x400___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = and i64 1024, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RSI, align 8
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

define %struct.Memory* @routine_jne_.L_43d4b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43da72(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43d4bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43d475(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x459d41___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459d41_type* @G__0x459d41 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x7f___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 127, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xd0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 208, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__0x80___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 128, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x68___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 104, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_cmpl__0x1a__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 26
  %16 = icmp ult i32 %14, 26
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
  %25 = xor i32 %14, 26
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

define %struct.Memory* @routine_jge_.L_43d566(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x83___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 131, i64* %RSI, align 8
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

define %struct.Memory* @routine_shlq__0x0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_43d50f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsbl___rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i8*
  %16 = load i8, i8* %15
  %17 = sext i8 %16 to i64
  %18 = and i64 %17, 4294967295
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.toupper_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x41___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 65
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 65
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
  %24 = xor i64 65, %9
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

define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_43d5e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsbl___rax__rcx_1____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RDI, align 8
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

define %struct.Memory* @routine_movb__al___dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %DL, align 1
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

define %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq___rsi__r8_4____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl____rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = add i64 %17, %16
  %19 = load i8, i8* %DL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i8*
  store i8 %19, i8* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx__rsi_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43d57f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsbl___rax__rdx_1____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al___sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %SIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__sil__MINUS0x45__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 69
  %15 = load i8, i8* %SIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 104
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

define %struct.Memory* @routine_setne__al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorb__0xff___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = xor i64 255, %11
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
  %27 = lshr i8 %15, 7
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
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

define %struct.Memory* @routine_jne_.L_43d624(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43d83a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_43d6f9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = and i32 %19, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = icmp eq i32 %19, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %19, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %19, 31
  %35 = xor i32 %31, %34
  %36 = add i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_43d656(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsbl_MINUS0x45__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 69
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_jne_.L_43d65b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43d6eb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.sre_random(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtsi2sdl___rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = sitofp i32 %22 to double
  %24 = bitcast i8* %14 to double*
  store double %23, double* %24, align 1
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

define %struct.Memory* @routine_cvttsd2si__xmm0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to double*
  %15 = load double, double* %14, align 1
  %16 = call double @llvm.trunc.f64(double %15)
  %17 = call double @llvm.fabs.f64(double %16)
  %18 = fcmp ogt double %17, 0x41DFFFFFFFC00000
  %19 = fptosi double %16 to i32
  %20 = zext i32 %19 to i64
  %21 = select i1 %18, i64 2147483648, i64 %20
  store i64 %21, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx__rsi_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movb___rax__rcx_1____dil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RCX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  store i8 %22, i8* %DIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dil____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RCX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = add i64 %17, %16
  %19 = load i8, i8* %DIL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i8*
  store i8 %19, i8* %23
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

define %struct.Memory* @routine_movb__dl___dil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %DL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %DIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43d62b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_43d721(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x0__MINUS0x60__rbp__rax_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %12, -96
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  store i8 0, i8* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43d700(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 100
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x45__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 69
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x1__MINUS0x60__rbp__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %12, -96
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  store i8 1, i8* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 100
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

define %struct.Memory* @routine_je_.L_43d7c6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 100
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_43d7c1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movsbl___rax__rcx_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x60__rbp__rax_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %15, -96
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  %23 = sext i8 %22 to i64
  %24 = and i64 %23, 4294967295
  store i64 %24, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_43d7ae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsbl_MINUS0x60__rbp__rax_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %15, -96
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  %23 = sext i8 %22 to i64
  %24 = and i64 %23, 4294967295
  store i64 %24, i64* %RCX, align 8
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

define %struct.Memory* @routine_movb__0x1__MINUS0x60__rbp__rax_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %12, -96
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  store i8 1, i8* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43d7b3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43d74c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43d734(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_43d835(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_43d7ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_43d804(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43d827(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_43d822(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43d835(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43d7d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43d60e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_43d8ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 68
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

define %struct.Memory* @routine_jle_.L_43d8ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x44__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to double*
  %15 = load double, double* %14, align 1
  %16 = call double @llvm.trunc.f64(double %15)
  %17 = call double @llvm.fabs.f64(double %16)
  %18 = fcmp ogt double %17, 0x41DFFFFFFFC00000
  %19 = fptosi double %16 to i32
  %20 = zext i32 %19 to i64
  %21 = select i1 %18, i64 2147483648, i64 %20
  store i64 %21, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rcx__rdx_1____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb___rcx__rdx_1____sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  store i8 %22, i8* %SIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__sil____rcx__rdx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = add i64 %17, %16
  %19 = load i8, i8* %SIL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i8*
  store i8 %19, i8* %23
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

define %struct.Memory* @routine_jmpq_.L_43d85c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43d8f1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43d841(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xf0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 240, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x68___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 104, i64* %RAX, align 8
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

define %struct.Memory* @routine_jge_.L_43d94c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43d925(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl__0x41___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 65, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 65
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
  %26 = xor i64 65, %9
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

define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__eax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl____rdx__rdi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 11
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RDI
  %18 = add i64 %17, %16
  %19 = load i8, i8* %CL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i8*
  store i8 %19, i8* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rdx__rdi_8____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq___rdi__r8_4____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rdx__rdi_1____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RDI
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl___rdx__rdi_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rdx__rdi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl___rdx__rdi_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RDX
  %18 = load i64, i64* %RDI
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

define %struct.Memory* @routine_jne_.L_43d9d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43d9de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43d965(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movb__0x0____rdx__rdi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 0, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x45__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 69
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
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

define %struct.Memory* @routine_je_.L_43da28(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459df0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459df0_type* @G__0x459df0 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.Die(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_43da4b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459e0c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459e0c_type* @G__0x459e0c to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1a___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 26, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.Free2DArray(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.free_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x70___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 112, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 112
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
  %25 = xor i64 112, %9
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
