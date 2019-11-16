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
%G__0x455f2a_type = type <{ [8 x i8] }>
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
@G__0x455f2a = global %G__0x455f2a_type zeroinitializer

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

declare %struct.Memory* @sub_409b60.P7ParsingViterbi(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_44d730.P7FreeTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_407da0.P7ViterbiSize(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40aae0.P7WeeViterbi(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_415920.P7Viterbi(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_44d5c0.P7AllocTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @P7SmallViterbi(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_409550 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_409550, %struct.Memory** %MEMORY
  %loadMem_409551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i24 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i24
  %27 = load i64, i64* %PC.i23
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i23
  store i64 %26, i64* %RBP.i25, align 8
  store %struct.Memory* %loadMem_409551, %struct.Memory** %MEMORY
  %loadMem_409554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i931 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i931
  %36 = load i64, i64* %PC.i930
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i930
  %38 = sub i64 %35, 144
  store i64 %38, i64* %RSP.i931, align 8
  %39 = icmp ult i64 %35, 144
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
  %49 = xor i64 144, %35
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
  store %struct.Memory* %loadMem_409554, %struct.Memory** %MEMORY
  %loadMem_40955b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i1002 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i1003 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i1004 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i1004
  %77 = sub i64 %76, 56
  %78 = load i64, i64* %PC.i1002
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC.i1002
  store i64 %77, i64* %RAX.i1003, align 8
  store %struct.Memory* %loadMem_40955b, %struct.Memory** %MEMORY
  %loadMem_40955f = load %struct.Memory*, %struct.Memory** %MEMORY
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 33
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %PC.i999 = bitcast %union.anon* %82 to i64*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 11
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %RDI.i1000 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 15
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RBP.i1001 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %RBP.i1001
  %90 = sub i64 %89, 16
  %91 = load i64, i64* %RDI.i1000
  %92 = load i64, i64* %PC.i999
  %93 = add i64 %92, 4
  store i64 %93, i64* %PC.i999
  %94 = inttoptr i64 %90 to i64*
  store i64 %91, i64* %94
  store %struct.Memory* %loadMem_40955f, %struct.Memory** %MEMORY
  %loadMem_409563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 33
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %PC.i996 = bitcast %union.anon* %97 to i64*
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 9
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %ESI.i997 = bitcast %union.anon* %100 to i32*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 15
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RBP.i998 = bitcast %union.anon* %103 to i64*
  %104 = load i64, i64* %RBP.i998
  %105 = sub i64 %104, 20
  %106 = load i32, i32* %ESI.i997
  %107 = zext i32 %106 to i64
  %108 = load i64, i64* %PC.i996
  %109 = add i64 %108, 3
  store i64 %109, i64* %PC.i996
  %110 = inttoptr i64 %105 to i32*
  store i32 %106, i32* %110
  store %struct.Memory* %loadMem_409563, %struct.Memory** %MEMORY
  %loadMem_409566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 33
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %PC.i993 = bitcast %union.anon* %113 to i64*
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %RDX.i994 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 15
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RBP.i995 = bitcast %union.anon* %119 to i64*
  %120 = load i64, i64* %RBP.i995
  %121 = sub i64 %120, 32
  %122 = load i64, i64* %RDX.i994
  %123 = load i64, i64* %PC.i993
  %124 = add i64 %123, 4
  store i64 %124, i64* %PC.i993
  %125 = inttoptr i64 %121 to i64*
  store i64 %122, i64* %125
  store %struct.Memory* %loadMem_409566, %struct.Memory** %MEMORY
  %loadMem_40956a = load %struct.Memory*, %struct.Memory** %MEMORY
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 33
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %PC.i990 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RCX.i991 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 15
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RBP.i992 = bitcast %union.anon* %134 to i64*
  %135 = load i64, i64* %RBP.i992
  %136 = sub i64 %135, 40
  %137 = load i64, i64* %RCX.i991
  %138 = load i64, i64* %PC.i990
  %139 = add i64 %138, 4
  store i64 %139, i64* %PC.i990
  %140 = inttoptr i64 %136 to i64*
  store i64 %137, i64* %140
  store %struct.Memory* %loadMem_40956a, %struct.Memory** %MEMORY
  %loadMem_40956e = load %struct.Memory*, %struct.Memory** %MEMORY
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 33
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %PC.i987 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 15
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RBP.i988 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 17
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %R8.i989 = bitcast %union.anon* %149 to i64*
  %150 = load i64, i64* %RBP.i988
  %151 = sub i64 %150, 48
  %152 = load i64, i64* %R8.i989
  %153 = load i64, i64* %PC.i987
  %154 = add i64 %153, 4
  store i64 %154, i64* %PC.i987
  %155 = inttoptr i64 %151 to i64*
  store i64 %152, i64* %155
  store %struct.Memory* %loadMem_40956e, %struct.Memory** %MEMORY
  %loadMem_409572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 33
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %PC.i984 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 11
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %RDI.i985 = bitcast %union.anon* %161 to i64*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 15
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %RBP.i986 = bitcast %union.anon* %164 to i64*
  %165 = load i64, i64* %RBP.i986
  %166 = sub i64 %165, 16
  %167 = load i64, i64* %PC.i984
  %168 = add i64 %167, 4
  store i64 %168, i64* %PC.i984
  %169 = inttoptr i64 %166 to i64*
  %170 = load i64, i64* %169
  store i64 %170, i64* %RDI.i985, align 8
  store %struct.Memory* %loadMem_409572, %struct.Memory** %MEMORY
  %loadMem_409576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 33
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %PC.i981 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 9
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RSI.i982 = bitcast %union.anon* %176 to i64*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 15
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %RBP.i983 = bitcast %union.anon* %179 to i64*
  %180 = load i64, i64* %RBP.i983
  %181 = sub i64 %180, 20
  %182 = load i64, i64* %PC.i981
  %183 = add i64 %182, 3
  store i64 %183, i64* %PC.i981
  %184 = inttoptr i64 %181 to i32*
  %185 = load i32, i32* %184
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %RSI.i982, align 8
  store %struct.Memory* %loadMem_409576, %struct.Memory** %MEMORY
  %loadMem_409579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i978 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 7
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RDX.i979 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 15
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %RBP.i980 = bitcast %union.anon* %195 to i64*
  %196 = load i64, i64* %RBP.i980
  %197 = sub i64 %196, 32
  %198 = load i64, i64* %PC.i978
  %199 = add i64 %198, 4
  store i64 %199, i64* %PC.i978
  %200 = inttoptr i64 %197 to i64*
  %201 = load i64, i64* %200
  store i64 %201, i64* %RDX.i979, align 8
  store %struct.Memory* %loadMem_409579, %struct.Memory** %MEMORY
  %loadMem_40957d = load %struct.Memory*, %struct.Memory** %MEMORY
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 33
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %PC.i975 = bitcast %union.anon* %204 to i64*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %RAX.i976 = bitcast %union.anon* %207 to i64*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %RCX.i977 = bitcast %union.anon* %210 to i64*
  %211 = load i64, i64* %RAX.i976
  %212 = load i64, i64* %PC.i975
  %213 = add i64 %212, 3
  store i64 %213, i64* %PC.i975
  store i64 %211, i64* %RCX.i977, align 8
  store %struct.Memory* %loadMem_40957d, %struct.Memory** %MEMORY
  %loadMem1_409580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 33
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %PC.i974 = bitcast %union.anon* %216 to i64*
  %217 = load i64, i64* %PC.i974
  %218 = add i64 %217, 1504
  %219 = load i64, i64* %PC.i974
  %220 = add i64 %219, 5
  %221 = load i64, i64* %PC.i974
  %222 = add i64 %221, 5
  store i64 %222, i64* %PC.i974
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = add i64 %224, -8
  %226 = inttoptr i64 %225 to i64*
  store i64 %220, i64* %226
  store i64 %225, i64* %223, align 8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %218, i64* %227, align 8
  store %struct.Memory* %loadMem1_409580, %struct.Memory** %MEMORY
  %loadMem2_409580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409580 = load i64, i64* %3
  %call2_409580 = call %struct.Memory* @sub_409b60.P7ParsingViterbi(%struct.State* %0, i64 %loadPC_409580, %struct.Memory* %loadMem2_409580)
  store %struct.Memory* %call2_409580, %struct.Memory** %MEMORY
  %loadMem_409585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 33
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %PC.i971 = bitcast %union.anon* %230 to i64*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 15
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %RBP.i972 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %234, i64 0, i64 0
  %XMM0.i973 = bitcast %union.VectorReg* %235 to %union.vec128_t*
  %236 = load i64, i64* %RBP.i972
  %237 = sub i64 %236, 104
  %238 = bitcast %union.vec128_t* %XMM0.i973 to i8*
  %239 = load i64, i64* %PC.i971
  %240 = add i64 %239, 5
  store i64 %240, i64* %PC.i971
  %241 = bitcast i8* %238 to <2 x float>*
  %242 = load <2 x float>, <2 x float>* %241, align 1
  %243 = extractelement <2 x float> %242, i32 0
  %244 = inttoptr i64 %237 to float*
  store float %243, float* %244
  store %struct.Memory* %loadMem_409585, %struct.Memory** %MEMORY
  %loadMem_40958a = load %struct.Memory*, %struct.Memory** %MEMORY
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 33
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %PC.i969 = bitcast %union.anon* %247 to i64*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 15
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %RBP.i970 = bitcast %union.anon* %250 to i64*
  %251 = load i64, i64* %RBP.i970
  %252 = sub i64 %251, 56
  %253 = load i64, i64* %PC.i969
  %254 = add i64 %253, 5
  store i64 %254, i64* %PC.i969
  %255 = inttoptr i64 %252 to i64*
  %256 = load i64, i64* %255
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %257, align 1
  %258 = trunc i64 %256 to i32
  %259 = and i32 %258, 255
  %260 = call i32 @llvm.ctpop.i32(i32 %259)
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %263, i8* %264, align 1
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %265, align 1
  %266 = icmp eq i64 %256, 0
  %267 = zext i1 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %267, i8* %268, align 1
  %269 = lshr i64 %256, 63
  %270 = trunc i64 %269 to i8
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %270, i8* %271, align 1
  %272 = lshr i64 %256, 63
  %273 = xor i64 %269, %272
  %274 = add i64 %273, %272
  %275 = icmp eq i64 %274, 2
  %276 = zext i1 %275 to i8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %276, i8* %277, align 1
  store %struct.Memory* %loadMem_40958a, %struct.Memory** %MEMORY
  %loadMem_40958f = load %struct.Memory*, %struct.Memory** %MEMORY
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 33
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %PC.i968 = bitcast %union.anon* %280 to i64*
  %281 = load i64, i64* %PC.i968
  %282 = add i64 %281, 17
  %283 = load i64, i64* %PC.i968
  %284 = add i64 %283, 6
  %285 = load i64, i64* %PC.i968
  %286 = add i64 %285, 6
  store i64 %286, i64* %PC.i968
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %288 = load i8, i8* %287, align 1
  store i8 %288, i8* %BRANCH_TAKEN, align 1
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %290 = icmp ne i8 %288, 0
  %291 = select i1 %290, i64 %282, i64 %284
  store i64 %291, i64* %289, align 8
  store %struct.Memory* %loadMem_40958f, %struct.Memory** %MEMORY
  %loadBr_40958f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40958f = icmp eq i8 %loadBr_40958f, 1
  br i1 %cmpBr_40958f, label %block_.L_4095a0, label %block_409595

block_409595:                                     ; preds = %entry
  %loadMem_409595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 33
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %PC.i966 = bitcast %union.anon* %294 to i64*
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 15
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %RBP.i967 = bitcast %union.anon* %297 to i64*
  %298 = load i64, i64* %RBP.i967
  %299 = sub i64 %298, 48
  %300 = load i64, i64* %PC.i966
  %301 = add i64 %300, 5
  store i64 %301, i64* %PC.i966
  %302 = inttoptr i64 %299 to i64*
  %303 = load i64, i64* %302
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %304, align 1
  %305 = trunc i64 %303 to i32
  %306 = and i32 %305, 255
  %307 = call i32 @llvm.ctpop.i32(i32 %306)
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  %310 = xor i8 %309, 1
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %310, i8* %311, align 1
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %312, align 1
  %313 = icmp eq i64 %303, 0
  %314 = zext i1 %313 to i8
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %314, i8* %315, align 1
  %316 = lshr i64 %303, 63
  %317 = trunc i64 %316 to i8
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %317, i8* %318, align 1
  %319 = lshr i64 %303, 63
  %320 = xor i64 %316, %319
  %321 = add i64 %320, %319
  %322 = icmp eq i64 %321, 2
  %323 = zext i1 %322 to i8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %323, i8* %324, align 1
  store %struct.Memory* %loadMem_409595, %struct.Memory** %MEMORY
  %loadMem_40959a = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i965 = bitcast %union.anon* %327 to i64*
  %328 = load i64, i64* %PC.i965
  %329 = add i64 %328, 30
  %330 = load i64, i64* %PC.i965
  %331 = add i64 %330, 6
  %332 = load i64, i64* %PC.i965
  %333 = add i64 %332, 6
  store i64 %333, i64* %PC.i965
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %335 = load i8, i8* %334, align 1
  %336 = icmp eq i8 %335, 0
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %BRANCH_TAKEN, align 1
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %339 = select i1 %336, i64 %329, i64 %331
  store i64 %339, i64* %338, align 8
  store %struct.Memory* %loadMem_40959a, %struct.Memory** %MEMORY
  %loadBr_40959a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40959a = icmp eq i8 %loadBr_40959a, 1
  br i1 %cmpBr_40959a, label %block_.L_4095b8, label %block_.L_4095a0

block_.L_4095a0:                                  ; preds = %block_409595, %entry
  %loadMem_4095a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i962 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 11
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RDI.i963 = bitcast %union.anon* %345 to i64*
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 15
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %RBP.i964 = bitcast %union.anon* %348 to i64*
  %349 = load i64, i64* %RBP.i964
  %350 = sub i64 %349, 56
  %351 = load i64, i64* %PC.i962
  %352 = add i64 %351, 4
  store i64 %352, i64* %PC.i962
  %353 = inttoptr i64 %350 to i64*
  %354 = load i64, i64* %353
  store i64 %354, i64* %RDI.i963, align 8
  store %struct.Memory* %loadMem_4095a0, %struct.Memory** %MEMORY
  %loadMem1_4095a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 33
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %PC.i961 = bitcast %union.anon* %357 to i64*
  %358 = load i64, i64* %PC.i961
  %359 = add i64 %358, 278924
  %360 = load i64, i64* %PC.i961
  %361 = add i64 %360, 5
  %362 = load i64, i64* %PC.i961
  %363 = add i64 %362, 5
  store i64 %363, i64* %PC.i961
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = add i64 %365, -8
  %367 = inttoptr i64 %366 to i64*
  store i64 %361, i64* %367
  store i64 %366, i64* %364, align 8
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %359, i64* %368, align 8
  store %struct.Memory* %loadMem1_4095a4, %struct.Memory** %MEMORY
  %loadMem2_4095a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4095a4 = load i64, i64* %3
  %call2_4095a4 = call %struct.Memory* @sub_44d730.P7FreeTrace(%struct.State* %0, i64 %loadPC_4095a4, %struct.Memory* %loadMem2_4095a4)
  store %struct.Memory* %call2_4095a4, %struct.Memory** %MEMORY
  %loadMem_4095a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 33
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %PC.i958 = bitcast %union.anon* %371 to i64*
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 15
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %RBP.i959 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %376 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %375, i64 0, i64 0
  %YMM0.i960 = bitcast %union.VectorReg* %376 to %"class.std::bitset"*
  %377 = bitcast %"class.std::bitset"* %YMM0.i960 to i8*
  %378 = load i64, i64* %RBP.i959
  %379 = sub i64 %378, 104
  %380 = load i64, i64* %PC.i958
  %381 = add i64 %380, 5
  store i64 %381, i64* %PC.i958
  %382 = inttoptr i64 %379 to float*
  %383 = load float, float* %382
  %384 = bitcast i8* %377 to float*
  store float %383, float* %384, align 1
  %385 = getelementptr inbounds i8, i8* %377, i64 4
  %386 = bitcast i8* %385 to float*
  store float 0.000000e+00, float* %386, align 1
  %387 = getelementptr inbounds i8, i8* %377, i64 8
  %388 = bitcast i8* %387 to float*
  store float 0.000000e+00, float* %388, align 1
  %389 = getelementptr inbounds i8, i8* %377, i64 12
  %390 = bitcast i8* %389 to float*
  store float 0.000000e+00, float* %390, align 1
  store %struct.Memory* %loadMem_4095a9, %struct.Memory** %MEMORY
  %loadMem_4095ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i955 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 15
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %RBP.i956 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %398 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %397, i64 0, i64 0
  %XMM0.i957 = bitcast %union.VectorReg* %398 to %union.vec128_t*
  %399 = load i64, i64* %RBP.i956
  %400 = sub i64 %399, 4
  %401 = bitcast %union.vec128_t* %XMM0.i957 to i8*
  %402 = load i64, i64* %PC.i955
  %403 = add i64 %402, 5
  store i64 %403, i64* %PC.i955
  %404 = bitcast i8* %401 to <2 x float>*
  %405 = load <2 x float>, <2 x float>* %404, align 1
  %406 = extractelement <2 x float> %405, i32 0
  %407 = inttoptr i64 %400 to float*
  store float %406, float* %407
  store %struct.Memory* %loadMem_4095ae, %struct.Memory** %MEMORY
  %loadMem_4095b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 33
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %PC.i954 = bitcast %union.anon* %410 to i64*
  %411 = load i64, i64* %PC.i954
  %412 = add i64 %411, 1424
  %413 = load i64, i64* %PC.i954
  %414 = add i64 %413, 5
  store i64 %414, i64* %PC.i954
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %412, i64* %415, align 8
  store %struct.Memory* %loadMem_4095b3, %struct.Memory** %MEMORY
  br label %block_.L_409b43

block_.L_4095b8:                                  ; preds = %block_409595
  %loadMem_4095b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %417 = getelementptr inbounds %struct.GPR, %struct.GPR* %416, i32 0, i32 33
  %418 = getelementptr inbounds %struct.Reg, %struct.Reg* %417, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %418 to i64*
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 11
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %RDI.i953 = bitcast %union.anon* %421 to i64*
  %422 = load i64, i64* %PC.i952
  %423 = add i64 %422, 10
  store i64 %423, i64* %PC.i952
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i953, align 8
  store %struct.Memory* %loadMem_4095b8, %struct.Memory** %MEMORY
  %loadMem_4095c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 33
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %PC.i950 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 9
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %RSI.i951 = bitcast %union.anon* %429 to i64*
  %430 = load i64, i64* %PC.i950
  %431 = add i64 %430, 5
  store i64 %431, i64* %PC.i950
  store i64 930, i64* %RSI.i951, align 8
  store %struct.Memory* %loadMem_4095c2, %struct.Memory** %MEMORY
  %loadMem_4095c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 33
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %PC.i948 = bitcast %union.anon* %434 to i64*
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %RAX.i949 = bitcast %union.anon* %437 to i64*
  %438 = load i64, i64* %PC.i948
  %439 = add i64 %438, 5
  store i64 %439, i64* %PC.i948
  store i64 2, i64* %RAX.i949, align 8
  store %struct.Memory* %loadMem_4095c7, %struct.Memory** %MEMORY
  %loadMem_4095cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i945 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 5
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RCX.i946 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 15
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RBP.i947 = bitcast %union.anon* %448 to i64*
  %449 = load i64, i64* %RBP.i947
  %450 = sub i64 %449, 56
  %451 = load i64, i64* %PC.i945
  %452 = add i64 %451, 4
  store i64 %452, i64* %PC.i945
  %453 = inttoptr i64 %450 to i64*
  %454 = load i64, i64* %453
  store i64 %454, i64* %RCX.i946, align 8
  store %struct.Memory* %loadMem_4095cc, %struct.Memory** %MEMORY
  %loadMem_4095d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 33
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %457 to i64*
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 5
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %RCX.i943 = bitcast %union.anon* %460 to i64*
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 7
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %RDX.i944 = bitcast %union.anon* %463 to i64*
  %464 = load i64, i64* %RCX.i943
  %465 = load i64, i64* %PC.i942
  %466 = add i64 %465, 2
  store i64 %466, i64* %PC.i942
  %467 = inttoptr i64 %464 to i32*
  %468 = load i32, i32* %467
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %RDX.i944, align 8
  store %struct.Memory* %loadMem_4095d0, %struct.Memory** %MEMORY
  %loadMem_4095d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 33
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %PC.i939 = bitcast %union.anon* %472 to i64*
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %EAX.i940 = bitcast %union.anon* %475 to i32*
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 15
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %RBP.i941 = bitcast %union.anon* %478 to i64*
  %479 = load i64, i64* %RBP.i941
  %480 = sub i64 %479, 112
  %481 = load i32, i32* %EAX.i940
  %482 = zext i32 %481 to i64
  %483 = load i64, i64* %PC.i939
  %484 = add i64 %483, 3
  store i64 %484, i64* %PC.i939
  %485 = inttoptr i64 %480 to i32*
  store i32 %481, i32* %485
  store %struct.Memory* %loadMem_4095d2, %struct.Memory** %MEMORY
  %loadMem_4095d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 33
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %PC.i936 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 7
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %EDX.i937 = bitcast %union.anon* %491 to i32*
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %RAX.i938 = bitcast %union.anon* %494 to i64*
  %495 = load i32, i32* %EDX.i937
  %496 = zext i32 %495 to i64
  %497 = load i64, i64* %PC.i936
  %498 = add i64 %497, 2
  store i64 %498, i64* %PC.i936
  %499 = and i64 %496, 4294967295
  store i64 %499, i64* %RAX.i938, align 8
  store %struct.Memory* %loadMem_4095d5, %struct.Memory** %MEMORY
  %loadMem_4095d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 33
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %PC.i935 = bitcast %union.anon* %502 to i64*
  %503 = load i64, i64* %PC.i935
  %504 = add i64 %503, 1
  store i64 %504, i64* %PC.i935
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %507 = bitcast %union.anon* %506 to i32*
  %508 = load i32, i32* %507, align 8
  %509 = sext i32 %508 to i64
  %510 = lshr i64 %509, 32
  store i64 %510, i64* %505, align 8
  store %struct.Memory* %loadMem_4095d7, %struct.Memory** %MEMORY
  %loadMem_4095d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 33
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %513 to i64*
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 17
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %R8D.i933 = bitcast %union.anon* %516 to i32*
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 15
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %RBP.i934 = bitcast %union.anon* %519 to i64*
  %520 = bitcast i32* %R8D.i933 to i64*
  %521 = load i64, i64* %RBP.i934
  %522 = sub i64 %521, 112
  %523 = load i64, i64* %PC.i932
  %524 = add i64 %523, 4
  store i64 %524, i64* %PC.i932
  %525 = inttoptr i64 %522 to i32*
  %526 = load i32, i32* %525
  %527 = zext i32 %526 to i64
  store i64 %527, i64* %520, align 8
  store %struct.Memory* %loadMem_4095d8, %struct.Memory** %MEMORY
  %loadMem_4095dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 33
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %530 to i64*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 17
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %533 to i32*
  %534 = load i32, i32* %R8D.i
  %535 = zext i32 %534 to i64
  %536 = load i64, i64* %PC.i929
  %537 = add i64 %536, 3
  store i64 %537, i64* %PC.i929
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %539 = bitcast %union.anon* %538 to i32*
  %540 = load i32, i32* %539, align 8
  %541 = zext i32 %540 to i64
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %543 = bitcast %union.anon* %542 to i32*
  %544 = load i32, i32* %543, align 8
  %545 = zext i32 %544 to i64
  %546 = shl i64 %535, 32
  %547 = ashr exact i64 %546, 32
  %548 = shl i64 %545, 32
  %549 = or i64 %548, %541
  %550 = sdiv i64 %549, %547
  %551 = shl i64 %550, 32
  %552 = ashr exact i64 %551, 32
  %553 = icmp eq i64 %550, %552
  br i1 %553, label %558, label %554

; <label>:554:                                    ; preds = %block_.L_4095b8
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %556 = load i64, i64* %555, align 8
  %557 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %556, %struct.Memory* %loadMem_4095dc)
  br label %routine_idivl__r8d.exit

; <label>:558:                                    ; preds = %block_.L_4095b8
  %559 = srem i64 %549, %547
  %560 = getelementptr inbounds %union.anon, %union.anon* %538, i64 0, i32 0
  %561 = and i64 %550, 4294967295
  store i64 %561, i64* %560, align 8
  %562 = getelementptr inbounds %union.anon, %union.anon* %542, i64 0, i32 0
  %563 = and i64 %559, 4294967295
  store i64 %563, i64* %562, align 8
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %564, align 1
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %565, align 1
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %566, align 1
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %567, align 1
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %568, align 1
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %569, align 1
  br label %routine_idivl__r8d.exit

routine_idivl__r8d.exit:                          ; preds = %554, %558
  %570 = phi %struct.Memory* [ %557, %554 ], [ %loadMem_4095dc, %558 ]
  store %struct.Memory* %570, %struct.Memory** %MEMORY
  %loadMem_4095df = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i927 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RAX.i928 = bitcast %union.anon* %576 to i64*
  %577 = load i64, i64* %RAX.i928
  %578 = load i64, i64* %PC.i927
  %579 = add i64 %578, 3
  store i64 %579, i64* %PC.i927
  %580 = trunc i64 %577 to i32
  %581 = sub i32 %580, 1
  %582 = zext i32 %581 to i64
  store i64 %582, i64* %RAX.i928, align 8
  %583 = icmp ult i32 %580, 1
  %584 = zext i1 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %584, i8* %585, align 1
  %586 = and i32 %581, 255
  %587 = call i32 @llvm.ctpop.i32(i32 %586)
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  %590 = xor i8 %589, 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %590, i8* %591, align 1
  %592 = xor i64 1, %577
  %593 = trunc i64 %592 to i32
  %594 = xor i32 %593, %581
  %595 = lshr i32 %594, 4
  %596 = trunc i32 %595 to i8
  %597 = and i8 %596, 1
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %597, i8* %598, align 1
  %599 = icmp eq i32 %581, 0
  %600 = zext i1 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %600, i8* %601, align 1
  %602 = lshr i32 %581, 31
  %603 = trunc i32 %602 to i8
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %603, i8* %604, align 1
  %605 = lshr i32 %580, 31
  %606 = xor i32 %602, %605
  %607 = add i32 %606, %605
  %608 = icmp eq i32 %607, 2
  %609 = zext i1 %608 to i8
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %609, i8* %610, align 1
  store %struct.Memory* %loadMem_4095df, %struct.Memory** %MEMORY
  %loadMem_4095e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 33
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %PC.i924 = bitcast %union.anon* %613 to i64*
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 1
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %EAX.i925 = bitcast %union.anon* %616 to i32*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 15
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %RBP.i926 = bitcast %union.anon* %619 to i64*
  %620 = load i64, i64* %RBP.i926
  %621 = sub i64 %620, 76
  %622 = load i32, i32* %EAX.i925
  %623 = zext i32 %622 to i64
  %624 = load i64, i64* %PC.i924
  %625 = add i64 %624, 3
  store i64 %625, i64* %PC.i924
  %626 = inttoptr i64 %621 to i32*
  store i32 %622, i32* %626
  store %struct.Memory* %loadMem_4095e2, %struct.Memory** %MEMORY
  %loadMem_4095e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 33
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %629 to i64*
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 5
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %RCX.i922 = bitcast %union.anon* %632 to i64*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 15
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %RBP.i923 = bitcast %union.anon* %635 to i64*
  %636 = load i64, i64* %RBP.i923
  %637 = sub i64 %636, 76
  %638 = load i64, i64* %PC.i921
  %639 = add i64 %638, 4
  store i64 %639, i64* %PC.i921
  %640 = inttoptr i64 %637 to i32*
  %641 = load i32, i32* %640
  %642 = sext i32 %641 to i64
  store i64 %642, i64* %RCX.i922, align 8
  store %struct.Memory* %loadMem_4095e5, %struct.Memory** %MEMORY
  %loadMem_4095e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 33
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %645 to i64*
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 5
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %RCX.i920 = bitcast %union.anon* %648 to i64*
  %649 = load i64, i64* %RCX.i920
  %650 = load i64, i64* %PC.i919
  %651 = add i64 %650, 4
  store i64 %651, i64* %PC.i919
  %652 = shl i64 %649, 2
  %653 = icmp slt i64 %652, 0
  %654 = shl i64 %652, 1
  store i64 %654, i64* %RCX.i920, align 8
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %656 = zext i1 %653 to i8
  store i8 %656, i8* %655, align 1
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %658 = trunc i64 %654 to i32
  %659 = and i32 %658, 254
  %660 = call i32 @llvm.ctpop.i32(i32 %659)
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  %663 = xor i8 %662, 1
  store i8 %663, i8* %657, align 1
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %664, align 1
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %666 = icmp eq i64 %654, 0
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %665, align 1
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %669 = lshr i64 %654, 63
  %670 = trunc i64 %669 to i8
  store i8 %670, i8* %668, align 1
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %671, align 1
  store %struct.Memory* %loadMem_4095e9, %struct.Memory** %MEMORY
  %loadMem_4095ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 5
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %RCX.i917 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 7
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %RDX.i918 = bitcast %union.anon* %680 to i64*
  %681 = load i64, i64* %RCX.i917
  %682 = load i64, i64* %PC.i916
  %683 = add i64 %682, 3
  store i64 %683, i64* %PC.i916
  store i64 %681, i64* %RDX.i918, align 8
  store %struct.Memory* %loadMem_4095ed, %struct.Memory** %MEMORY
  %loadMem1_4095f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 33
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %PC.i915 = bitcast %union.anon* %686 to i64*
  %687 = load i64, i64* %PC.i915
  %688 = add i64 %687, 248432
  %689 = load i64, i64* %PC.i915
  %690 = add i64 %689, 5
  %691 = load i64, i64* %PC.i915
  %692 = add i64 %691, 5
  store i64 %692, i64* %PC.i915
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %694 = load i64, i64* %693, align 8
  %695 = add i64 %694, -8
  %696 = inttoptr i64 %695 to i64*
  store i64 %690, i64* %696
  store i64 %695, i64* %693, align 8
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %688, i64* %697, align 8
  store %struct.Memory* %loadMem1_4095f0, %struct.Memory** %MEMORY
  %loadMem2_4095f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4095f0 = load i64, i64* %3
  %call2_4095f0 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_4095f0, %struct.Memory* %loadMem2_4095f0)
  store %struct.Memory* %call2_4095f0, %struct.Memory** %MEMORY
  %loadMem_4095f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 33
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %PC.i912 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 1
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %RAX.i913 = bitcast %union.anon* %703 to i64*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 15
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %RBP.i914 = bitcast %union.anon* %706 to i64*
  %707 = load i64, i64* %RBP.i914
  %708 = sub i64 %707, 72
  %709 = load i64, i64* %RAX.i913
  %710 = load i64, i64* %PC.i912
  %711 = add i64 %710, 4
  store i64 %711, i64* %PC.i912
  %712 = inttoptr i64 %708 to i64*
  store i64 %709, i64* %712
  store %struct.Memory* %loadMem_4095f5, %struct.Memory** %MEMORY
  %loadMem_4095f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 33
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 15
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RBP.i911 = bitcast %union.anon* %718 to i64*
  %719 = load i64, i64* %RBP.i911
  %720 = sub i64 %719, 100
  %721 = load i64, i64* %PC.i910
  %722 = add i64 %721, 7
  store i64 %722, i64* %PC.i910
  %723 = inttoptr i64 %720 to i32*
  store i32 0, i32* %723
  store %struct.Memory* %loadMem_4095f9, %struct.Memory** %MEMORY
  %loadMem_409600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i908 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 15
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %RBP.i909 = bitcast %union.anon* %729 to i64*
  %730 = load i64, i64* %RBP.i909
  %731 = sub i64 %730, 92
  %732 = load i64, i64* %PC.i908
  %733 = add i64 %732, 7
  store i64 %733, i64* %PC.i908
  %734 = inttoptr i64 %731 to i32*
  store i32 0, i32* %734
  store %struct.Memory* %loadMem_409600, %struct.Memory** %MEMORY
  %loadMem_409607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 33
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %PC.i906 = bitcast %union.anon* %737 to i64*
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 15
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %RBP.i907 = bitcast %union.anon* %740 to i64*
  %741 = load i64, i64* %RBP.i907
  %742 = sub i64 %741, 80
  %743 = load i64, i64* %PC.i906
  %744 = add i64 %743, 7
  store i64 %744, i64* %PC.i906
  %745 = inttoptr i64 %742 to i32*
  store i32 0, i32* %745
  store %struct.Memory* %loadMem_409607, %struct.Memory** %MEMORY
  br label %block_.L_40960e

block_.L_40960e:                                  ; preds = %block_.L_409700, %routine_idivl__r8d.exit
  %loadMem_40960e = load %struct.Memory*, %struct.Memory** %MEMORY
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 33
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %748 to i64*
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 1
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %RAX.i904 = bitcast %union.anon* %751 to i64*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 15
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %RBP.i905 = bitcast %union.anon* %754 to i64*
  %755 = load i64, i64* %RBP.i905
  %756 = sub i64 %755, 80
  %757 = load i64, i64* %PC.i903
  %758 = add i64 %757, 3
  store i64 %758, i64* %PC.i903
  %759 = inttoptr i64 %756 to i32*
  %760 = load i32, i32* %759
  %761 = zext i32 %760 to i64
  store i64 %761, i64* %RAX.i904, align 8
  store %struct.Memory* %loadMem_40960e, %struct.Memory** %MEMORY
  %loadMem_409611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 33
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %764 to i64*
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 1
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %EAX.i901 = bitcast %union.anon* %767 to i32*
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %769 = getelementptr inbounds %struct.GPR, %struct.GPR* %768, i32 0, i32 15
  %770 = getelementptr inbounds %struct.Reg, %struct.Reg* %769, i32 0, i32 0
  %RBP.i902 = bitcast %union.anon* %770 to i64*
  %771 = load i32, i32* %EAX.i901
  %772 = zext i32 %771 to i64
  %773 = load i64, i64* %RBP.i902
  %774 = sub i64 %773, 76
  %775 = load i64, i64* %PC.i900
  %776 = add i64 %775, 3
  store i64 %776, i64* %PC.i900
  %777 = inttoptr i64 %774 to i32*
  %778 = load i32, i32* %777
  %779 = sub i32 %771, %778
  %780 = icmp ult i32 %771, %778
  %781 = zext i1 %780 to i8
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %781, i8* %782, align 1
  %783 = and i32 %779, 255
  %784 = call i32 @llvm.ctpop.i32(i32 %783)
  %785 = trunc i32 %784 to i8
  %786 = and i8 %785, 1
  %787 = xor i8 %786, 1
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %787, i8* %788, align 1
  %789 = xor i32 %778, %771
  %790 = xor i32 %789, %779
  %791 = lshr i32 %790, 4
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %793, i8* %794, align 1
  %795 = icmp eq i32 %779, 0
  %796 = zext i1 %795 to i8
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %796, i8* %797, align 1
  %798 = lshr i32 %779, 31
  %799 = trunc i32 %798 to i8
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %799, i8* %800, align 1
  %801 = lshr i32 %771, 31
  %802 = lshr i32 %778, 31
  %803 = xor i32 %802, %801
  %804 = xor i32 %798, %801
  %805 = add i32 %804, %803
  %806 = icmp eq i32 %805, 2
  %807 = zext i1 %806 to i8
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %807, i8* %808, align 1
  store %struct.Memory* %loadMem_409611, %struct.Memory** %MEMORY
  %loadMem_409614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %810 = getelementptr inbounds %struct.GPR, %struct.GPR* %809, i32 0, i32 33
  %811 = getelementptr inbounds %struct.Reg, %struct.Reg* %810, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %811 to i64*
  %812 = load i64, i64* %PC.i899
  %813 = add i64 %812, 282
  %814 = load i64, i64* %PC.i899
  %815 = add i64 %814, 6
  %816 = load i64, i64* %PC.i899
  %817 = add i64 %816, 6
  store i64 %817, i64* %PC.i899
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %819 = load i8, i8* %818, align 1
  %820 = icmp ne i8 %819, 0
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %822 = load i8, i8* %821, align 1
  %823 = icmp ne i8 %822, 0
  %824 = xor i1 %820, %823
  %825 = xor i1 %824, true
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %BRANCH_TAKEN, align 1
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %828 = select i1 %824, i64 %815, i64 %813
  store i64 %828, i64* %827, align 8
  store %struct.Memory* %loadMem_409614, %struct.Memory** %MEMORY
  %loadBr_409614 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409614 = icmp eq i8 %loadBr_409614, 1
  br i1 %cmpBr_409614, label %block_.L_40972e, label %block_40961a

block_40961a:                                     ; preds = %block_.L_40960e
  %loadMem_40961a = load %struct.Memory*, %struct.Memory** %MEMORY
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 33
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 1
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RAX.i897 = bitcast %union.anon* %834 to i64*
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 15
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %RBP.i898 = bitcast %union.anon* %837 to i64*
  %838 = load i64, i64* %RBP.i898
  %839 = sub i64 %838, 56
  %840 = load i64, i64* %PC.i896
  %841 = add i64 %840, 4
  store i64 %841, i64* %PC.i896
  %842 = inttoptr i64 %839 to i64*
  %843 = load i64, i64* %842
  store i64 %843, i64* %RAX.i897, align 8
  store %struct.Memory* %loadMem_40961a, %struct.Memory** %MEMORY
  %loadMem_40961e = load %struct.Memory*, %struct.Memory** %MEMORY
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 33
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 1
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RAX.i895 = bitcast %union.anon* %849 to i64*
  %850 = load i64, i64* %RAX.i895
  %851 = add i64 %850, 24
  %852 = load i64, i64* %PC.i894
  %853 = add i64 %852, 4
  store i64 %853, i64* %PC.i894
  %854 = inttoptr i64 %851 to i64*
  %855 = load i64, i64* %854
  store i64 %855, i64* %RAX.i895, align 8
  store %struct.Memory* %loadMem_40961e, %struct.Memory** %MEMORY
  %loadMem_409622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 33
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %858 to i64*
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 5
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %RCX.i892 = bitcast %union.anon* %861 to i64*
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 15
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %RBP.i893 = bitcast %union.anon* %864 to i64*
  %865 = load i64, i64* %RBP.i893
  %866 = sub i64 %865, 80
  %867 = load i64, i64* %PC.i891
  %868 = add i64 %867, 3
  store i64 %868, i64* %PC.i891
  %869 = inttoptr i64 %866 to i32*
  %870 = load i32, i32* %869
  %871 = zext i32 %870 to i64
  store i64 %871, i64* %RCX.i892, align 8
  store %struct.Memory* %loadMem_409622, %struct.Memory** %MEMORY
  %loadMem_409625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 33
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %874 to i64*
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 5
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %RCX.i890 = bitcast %union.anon* %877 to i64*
  %878 = load i64, i64* %RCX.i890
  %879 = load i64, i64* %PC.i889
  %880 = add i64 %879, 2
  store i64 %880, i64* %PC.i889
  %881 = trunc i64 %878 to i32
  %882 = shl i32 %881, 1
  %883 = icmp slt i32 %881, 0
  %884 = icmp slt i32 %882, 0
  %885 = xor i1 %883, %884
  %886 = zext i32 %882 to i64
  store i64 %886, i64* %RCX.i890, align 8
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %888 = zext i1 %883 to i8
  store i8 %888, i8* %887, align 1
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %890 = and i32 %882, 254
  %891 = call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %889, align 1
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %895, align 1
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %897 = icmp eq i32 %882, 0
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %896, align 1
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %900 = lshr i32 %882, 31
  %901 = trunc i32 %900 to i8
  store i8 %901, i8* %899, align 1
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %903 = zext i1 %885 to i8
  store i8 %903, i8* %902, align 1
  store %struct.Memory* %loadMem_409625, %struct.Memory** %MEMORY
  %loadMem_409628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 33
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %PC.i887 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 5
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RCX.i888 = bitcast %union.anon* %909 to i64*
  %910 = load i64, i64* %RCX.i888
  %911 = load i64, i64* %PC.i887
  %912 = add i64 %911, 3
  store i64 %912, i64* %PC.i887
  %913 = trunc i64 %910 to i32
  %914 = add i32 2, %913
  %915 = zext i32 %914 to i64
  store i64 %915, i64* %RCX.i888, align 8
  %916 = icmp ult i32 %914, %913
  %917 = icmp ult i32 %914, 2
  %918 = or i1 %916, %917
  %919 = zext i1 %918 to i8
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %919, i8* %920, align 1
  %921 = and i32 %914, 255
  %922 = call i32 @llvm.ctpop.i32(i32 %921)
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = xor i8 %924, 1
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %925, i8* %926, align 1
  %927 = xor i64 2, %910
  %928 = trunc i64 %927 to i32
  %929 = xor i32 %928, %914
  %930 = lshr i32 %929, 4
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %932, i8* %933, align 1
  %934 = icmp eq i32 %914, 0
  %935 = zext i1 %934 to i8
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %935, i8* %936, align 1
  %937 = lshr i32 %914, 31
  %938 = trunc i32 %937 to i8
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %938, i8* %939, align 1
  %940 = lshr i32 %913, 31
  %941 = xor i32 %937, %940
  %942 = add i32 %941, %937
  %943 = icmp eq i32 %942, 2
  %944 = zext i1 %943 to i8
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %944, i8* %945, align 1
  store %struct.Memory* %loadMem_409628, %struct.Memory** %MEMORY
  %loadMem_40962b = load %struct.Memory*, %struct.Memory** %MEMORY
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 33
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 5
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %ECX.i885 = bitcast %union.anon* %951 to i32*
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 7
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %RDX.i886 = bitcast %union.anon* %954 to i64*
  %955 = load i32, i32* %ECX.i885
  %956 = zext i32 %955 to i64
  %957 = load i64, i64* %PC.i884
  %958 = add i64 %957, 3
  store i64 %958, i64* %PC.i884
  %959 = shl i64 %956, 32
  %960 = ashr exact i64 %959, 32
  store i64 %960, i64* %RDX.i886, align 8
  store %struct.Memory* %loadMem_40962b, %struct.Memory** %MEMORY
  %loadMem_40962e = load %struct.Memory*, %struct.Memory** %MEMORY
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 33
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %963 to i64*
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 1
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %RAX.i881 = bitcast %union.anon* %966 to i64*
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 5
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %RCX.i882 = bitcast %union.anon* %969 to i64*
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 7
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %RDX.i883 = bitcast %union.anon* %972 to i64*
  %973 = load i64, i64* %RAX.i881
  %974 = load i64, i64* %RDX.i883
  %975 = mul i64 %974, 4
  %976 = add i64 %975, %973
  %977 = load i64, i64* %PC.i880
  %978 = add i64 %977, 3
  store i64 %978, i64* %PC.i880
  %979 = inttoptr i64 %976 to i32*
  %980 = load i32, i32* %979
  %981 = zext i32 %980 to i64
  store i64 %981, i64* %RCX.i882, align 8
  store %struct.Memory* %loadMem_40962e, %struct.Memory** %MEMORY
  %loadMem_409631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 33
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %984 to i64*
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 1
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %RAX.i878 = bitcast %union.anon* %987 to i64*
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 15
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %RBP.i879 = bitcast %union.anon* %990 to i64*
  %991 = load i64, i64* %RBP.i879
  %992 = sub i64 %991, 56
  %993 = load i64, i64* %PC.i877
  %994 = add i64 %993, 4
  store i64 %994, i64* %PC.i877
  %995 = inttoptr i64 %992 to i64*
  %996 = load i64, i64* %995
  store i64 %996, i64* %RAX.i878, align 8
  store %struct.Memory* %loadMem_409631, %struct.Memory** %MEMORY
  %loadMem_409635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i875 = bitcast %union.anon* %999 to i64*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 1
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RAX.i876 = bitcast %union.anon* %1002 to i64*
  %1003 = load i64, i64* %RAX.i876
  %1004 = add i64 %1003, 24
  %1005 = load i64, i64* %PC.i875
  %1006 = add i64 %1005, 4
  store i64 %1006, i64* %PC.i875
  %1007 = inttoptr i64 %1004 to i64*
  %1008 = load i64, i64* %1007
  store i64 %1008, i64* %RAX.i876, align 8
  store %struct.Memory* %loadMem_409635, %struct.Memory** %MEMORY
  %loadMem_409639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 33
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %1011 to i64*
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 9
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %RSI.i873 = bitcast %union.anon* %1014 to i64*
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 15
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %RBP.i874 = bitcast %union.anon* %1017 to i64*
  %1018 = load i64, i64* %RBP.i874
  %1019 = sub i64 %1018, 80
  %1020 = load i64, i64* %PC.i872
  %1021 = add i64 %1020, 3
  store i64 %1021, i64* %PC.i872
  %1022 = inttoptr i64 %1019 to i32*
  %1023 = load i32, i32* %1022
  %1024 = zext i32 %1023 to i64
  store i64 %1024, i64* %RSI.i873, align 8
  store %struct.Memory* %loadMem_409639, %struct.Memory** %MEMORY
  %loadMem_40963c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 33
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %1027 to i64*
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 9
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %RSI.i871 = bitcast %union.anon* %1030 to i64*
  %1031 = load i64, i64* %RSI.i871
  %1032 = load i64, i64* %PC.i870
  %1033 = add i64 %1032, 2
  store i64 %1033, i64* %PC.i870
  %1034 = trunc i64 %1031 to i32
  %1035 = shl i32 %1034, 1
  %1036 = icmp slt i32 %1034, 0
  %1037 = icmp slt i32 %1035, 0
  %1038 = xor i1 %1036, %1037
  %1039 = zext i32 %1035 to i64
  store i64 %1039, i64* %RSI.i871, align 8
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1041 = zext i1 %1036 to i8
  store i8 %1041, i8* %1040, align 1
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1043 = and i32 %1035, 254
  %1044 = call i32 @llvm.ctpop.i32(i32 %1043)
  %1045 = trunc i32 %1044 to i8
  %1046 = and i8 %1045, 1
  %1047 = xor i8 %1046, 1
  store i8 %1047, i8* %1042, align 1
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1048, align 1
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1050 = icmp eq i32 %1035, 0
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %1049, align 1
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1053 = lshr i32 %1035, 31
  %1054 = trunc i32 %1053 to i8
  store i8 %1054, i8* %1052, align 1
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1056 = zext i1 %1038 to i8
  store i8 %1056, i8* %1055, align 1
  store %struct.Memory* %loadMem_40963c, %struct.Memory** %MEMORY
  %loadMem_40963f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 33
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %1059 to i64*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 9
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %RSI.i869 = bitcast %union.anon* %1062 to i64*
  %1063 = load i64, i64* %RSI.i869
  %1064 = load i64, i64* %PC.i868
  %1065 = add i64 %1064, 3
  store i64 %1065, i64* %PC.i868
  %1066 = trunc i64 %1063 to i32
  %1067 = add i32 1, %1066
  %1068 = zext i32 %1067 to i64
  store i64 %1068, i64* %RSI.i869, align 8
  %1069 = icmp ult i32 %1067, %1066
  %1070 = icmp ult i32 %1067, 1
  %1071 = or i1 %1069, %1070
  %1072 = zext i1 %1071 to i8
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1072, i8* %1073, align 1
  %1074 = and i32 %1067, 255
  %1075 = call i32 @llvm.ctpop.i32(i32 %1074)
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = xor i8 %1077, 1
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1078, i8* %1079, align 1
  %1080 = xor i64 1, %1063
  %1081 = trunc i64 %1080 to i32
  %1082 = xor i32 %1081, %1067
  %1083 = lshr i32 %1082, 4
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1085, i8* %1086, align 1
  %1087 = icmp eq i32 %1067, 0
  %1088 = zext i1 %1087 to i8
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1088, i8* %1089, align 1
  %1090 = lshr i32 %1067, 31
  %1091 = trunc i32 %1090 to i8
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1091, i8* %1092, align 1
  %1093 = lshr i32 %1066, 31
  %1094 = xor i32 %1090, %1093
  %1095 = add i32 %1094, %1090
  %1096 = icmp eq i32 %1095, 2
  %1097 = zext i1 %1096 to i8
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1097, i8* %1098, align 1
  store %struct.Memory* %loadMem_40963f, %struct.Memory** %MEMORY
  %loadMem_409642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 33
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %1101 to i64*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 9
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %ESI.i866 = bitcast %union.anon* %1104 to i32*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 7
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %RDX.i867 = bitcast %union.anon* %1107 to i64*
  %1108 = load i32, i32* %ESI.i866
  %1109 = zext i32 %1108 to i64
  %1110 = load i64, i64* %PC.i865
  %1111 = add i64 %1110, 3
  store i64 %1111, i64* %PC.i865
  %1112 = shl i64 %1109, 32
  %1113 = ashr exact i64 %1112, 32
  store i64 %1113, i64* %RDX.i867, align 8
  store %struct.Memory* %loadMem_409642, %struct.Memory** %MEMORY
  %loadMem_409645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 33
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 1
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %RAX.i862 = bitcast %union.anon* %1119 to i64*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 5
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %RCX.i863 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 7
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %RDX.i864 = bitcast %union.anon* %1125 to i64*
  %1126 = load i64, i64* %RCX.i863
  %1127 = load i64, i64* %RAX.i862
  %1128 = load i64, i64* %RDX.i864
  %1129 = mul i64 %1128, 4
  %1130 = add i64 %1129, %1127
  %1131 = load i64, i64* %PC.i861
  %1132 = add i64 %1131, 3
  store i64 %1132, i64* %PC.i861
  %1133 = trunc i64 %1126 to i32
  %1134 = inttoptr i64 %1130 to i32*
  %1135 = load i32, i32* %1134
  %1136 = sub i32 %1133, %1135
  %1137 = zext i32 %1136 to i64
  store i64 %1137, i64* %RCX.i863, align 8
  %1138 = icmp ult i32 %1133, %1135
  %1139 = zext i1 %1138 to i8
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1139, i8* %1140, align 1
  %1141 = and i32 %1136, 255
  %1142 = call i32 @llvm.ctpop.i32(i32 %1141)
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  %1145 = xor i8 %1144, 1
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1145, i8* %1146, align 1
  %1147 = xor i32 %1135, %1133
  %1148 = xor i32 %1147, %1136
  %1149 = lshr i32 %1148, 4
  %1150 = trunc i32 %1149 to i8
  %1151 = and i8 %1150, 1
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1151, i8* %1152, align 1
  %1153 = icmp eq i32 %1136, 0
  %1154 = zext i1 %1153 to i8
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1154, i8* %1155, align 1
  %1156 = lshr i32 %1136, 31
  %1157 = trunc i32 %1156 to i8
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1157, i8* %1158, align 1
  %1159 = lshr i32 %1133, 31
  %1160 = lshr i32 %1135, 31
  %1161 = xor i32 %1160, %1159
  %1162 = xor i32 %1156, %1159
  %1163 = add i32 %1162, %1161
  %1164 = icmp eq i32 %1163, 2
  %1165 = zext i1 %1164 to i8
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1165, i8* %1166, align 1
  store %struct.Memory* %loadMem_409645, %struct.Memory** %MEMORY
  %loadMem_409648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 33
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %1169 to i64*
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 5
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %ECX.i859 = bitcast %union.anon* %1172 to i32*
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 15
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %1175 to i64*
  %1176 = load i64, i64* %RBP.i860
  %1177 = sub i64 %1176, 96
  %1178 = load i32, i32* %ECX.i859
  %1179 = zext i32 %1178 to i64
  %1180 = load i64, i64* %PC.i858
  %1181 = add i64 %1180, 3
  store i64 %1181, i64* %PC.i858
  %1182 = inttoptr i64 %1177 to i32*
  store i32 %1178, i32* %1182
  store %struct.Memory* %loadMem_409648, %struct.Memory** %MEMORY
  %loadMem_40964b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 33
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %1185 to i64*
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 11
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %RDI.i856 = bitcast %union.anon* %1188 to i64*
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.GPR, %struct.GPR* %1189, i32 0, i32 15
  %1191 = getelementptr inbounds %struct.Reg, %struct.Reg* %1190, i32 0, i32 0
  %RBP.i857 = bitcast %union.anon* %1191 to i64*
  %1192 = load i64, i64* %RBP.i857
  %1193 = sub i64 %1192, 96
  %1194 = load i64, i64* %PC.i855
  %1195 = add i64 %1194, 3
  store i64 %1195, i64* %PC.i855
  %1196 = inttoptr i64 %1193 to i32*
  %1197 = load i32, i32* %1196
  %1198 = zext i32 %1197 to i64
  store i64 %1198, i64* %RDI.i856, align 8
  store %struct.Memory* %loadMem_40964b, %struct.Memory** %MEMORY
  %loadMem_40964e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 33
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %1201 to i64*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 1
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %RAX.i853 = bitcast %union.anon* %1204 to i64*
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 15
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %RBP.i854 = bitcast %union.anon* %1207 to i64*
  %1208 = load i64, i64* %RBP.i854
  %1209 = sub i64 %1208, 32
  %1210 = load i64, i64* %PC.i852
  %1211 = add i64 %1210, 4
  store i64 %1211, i64* %PC.i852
  %1212 = inttoptr i64 %1209 to i64*
  %1213 = load i64, i64* %1212
  store i64 %1213, i64* %RAX.i853, align 8
  store %struct.Memory* %loadMem_40964e, %struct.Memory** %MEMORY
  %loadMem_409652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 33
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %1216 to i64*
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 1
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %RAX.i850 = bitcast %union.anon* %1219 to i64*
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 9
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %RSI.i851 = bitcast %union.anon* %1222 to i64*
  %1223 = load i64, i64* %RAX.i850
  %1224 = add i64 %1223, 136
  %1225 = load i64, i64* %PC.i849
  %1226 = add i64 %1225, 6
  store i64 %1226, i64* %PC.i849
  %1227 = inttoptr i64 %1224 to i32*
  %1228 = load i32, i32* %1227
  %1229 = zext i32 %1228 to i64
  store i64 %1229, i64* %RSI.i851, align 8
  store %struct.Memory* %loadMem_409652, %struct.Memory** %MEMORY
  %loadMem1_409658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 33
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %1232 to i64*
  %1233 = load i64, i64* %PC.i848
  %1234 = add i64 %1233, -6328
  %1235 = load i64, i64* %PC.i848
  %1236 = add i64 %1235, 5
  %1237 = load i64, i64* %PC.i848
  %1238 = add i64 %1237, 5
  store i64 %1238, i64* %PC.i848
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1240 = load i64, i64* %1239, align 8
  %1241 = add i64 %1240, -8
  %1242 = inttoptr i64 %1241 to i64*
  store i64 %1236, i64* %1242
  store i64 %1241, i64* %1239, align 8
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1234, i64* %1243, align 8
  store %struct.Memory* %loadMem1_409658, %struct.Memory** %MEMORY
  %loadMem2_409658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409658 = load i64, i64* %3
  %call2_409658 = call %struct.Memory* @sub_407da0.P7ViterbiSize(%struct.State* %0, i64 %loadPC_409658, %struct.Memory* %loadMem2_409658)
  store %struct.Memory* %call2_409658, %struct.Memory** %MEMORY
  %loadMem_40965d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 33
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %1246 to i64*
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 1
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %EAX.i847 = bitcast %union.anon* %1249 to i32*
  %1250 = load i32, i32* %EAX.i847
  %1251 = zext i32 %1250 to i64
  %1252 = load i64, i64* %PC.i846
  %1253 = add i64 %1252, 5
  store i64 %1253, i64* %PC.i846
  %1254 = sub i32 %1250, 1000
  %1255 = icmp ult i32 %1250, 1000
  %1256 = zext i1 %1255 to i8
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1256, i8* %1257, align 1
  %1258 = and i32 %1254, 255
  %1259 = call i32 @llvm.ctpop.i32(i32 %1258)
  %1260 = trunc i32 %1259 to i8
  %1261 = and i8 %1260, 1
  %1262 = xor i8 %1261, 1
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1262, i8* %1263, align 1
  %1264 = xor i64 1000, %1251
  %1265 = trunc i64 %1264 to i32
  %1266 = xor i32 %1265, %1254
  %1267 = lshr i32 %1266, 4
  %1268 = trunc i32 %1267 to i8
  %1269 = and i8 %1268, 1
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1269, i8* %1270, align 1
  %1271 = icmp eq i32 %1254, 0
  %1272 = zext i1 %1271 to i8
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1272, i8* %1273, align 1
  %1274 = lshr i32 %1254, 31
  %1275 = trunc i32 %1274 to i8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1275, i8* %1276, align 1
  %1277 = lshr i32 %1250, 31
  %1278 = xor i32 %1274, %1277
  %1279 = add i32 %1278, %1277
  %1280 = icmp eq i32 %1279, 2
  %1281 = zext i1 %1280 to i8
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1281, i8* %1282, align 1
  store %struct.Memory* %loadMem_40965d, %struct.Memory** %MEMORY
  %loadMem_409662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 33
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %1285 to i64*
  %1286 = load i64, i64* %PC.i845
  %1287 = add i64 %1286, 77
  %1288 = load i64, i64* %PC.i845
  %1289 = add i64 %1288, 6
  %1290 = load i64, i64* %PC.i845
  %1291 = add i64 %1290, 6
  store i64 %1291, i64* %PC.i845
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1293 = load i8, i8* %1292, align 1
  %1294 = icmp ne i8 %1293, 0
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1296 = load i8, i8* %1295, align 1
  %1297 = icmp ne i8 %1296, 0
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1299 = load i8, i8* %1298, align 1
  %1300 = icmp ne i8 %1299, 0
  %1301 = xor i1 %1297, %1300
  %1302 = or i1 %1294, %1301
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %BRANCH_TAKEN, align 1
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1305 = select i1 %1302, i64 %1287, i64 %1289
  store i64 %1305, i64* %1304, align 8
  store %struct.Memory* %loadMem_409662, %struct.Memory** %MEMORY
  %loadBr_409662 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409662 = icmp eq i8 %loadBr_409662, 1
  br i1 %cmpBr_409662, label %block_.L_4096af, label %block_409668

block_409668:                                     ; preds = %block_40961a
  %loadMem_409668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 33
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %1308 to i64*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 1
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %RAX.i843 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 15
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RBP.i844 = bitcast %union.anon* %1314 to i64*
  %1315 = load i64, i64* %RBP.i844
  %1316 = sub i64 %1315, 16
  %1317 = load i64, i64* %PC.i842
  %1318 = add i64 %1317, 4
  store i64 %1318, i64* %PC.i842
  %1319 = inttoptr i64 %1316 to i64*
  %1320 = load i64, i64* %1319
  store i64 %1320, i64* %RAX.i843, align 8
  store %struct.Memory* %loadMem_409668, %struct.Memory** %MEMORY
  %loadMem_40966c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 33
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %1323 to i64*
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 5
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %RCX.i840 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 15
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RBP.i841 = bitcast %union.anon* %1329 to i64*
  %1330 = load i64, i64* %RBP.i841
  %1331 = sub i64 %1330, 56
  %1332 = load i64, i64* %PC.i839
  %1333 = add i64 %1332, 4
  store i64 %1333, i64* %PC.i839
  %1334 = inttoptr i64 %1331 to i64*
  %1335 = load i64, i64* %1334
  store i64 %1335, i64* %RCX.i840, align 8
  store %struct.Memory* %loadMem_40966c, %struct.Memory** %MEMORY
  %loadMem_409670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 33
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %1338 to i64*
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 5
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %RCX.i838 = bitcast %union.anon* %1341 to i64*
  %1342 = load i64, i64* %RCX.i838
  %1343 = add i64 %1342, 24
  %1344 = load i64, i64* %PC.i837
  %1345 = add i64 %1344, 4
  store i64 %1345, i64* %PC.i837
  %1346 = inttoptr i64 %1343 to i64*
  %1347 = load i64, i64* %1346
  store i64 %1347, i64* %RCX.i838, align 8
  store %struct.Memory* %loadMem_409670, %struct.Memory** %MEMORY
  %loadMem_409674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 33
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %PC.i834 = bitcast %union.anon* %1350 to i64*
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 7
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %RDX.i835 = bitcast %union.anon* %1353 to i64*
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 15
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %RBP.i836 = bitcast %union.anon* %1356 to i64*
  %1357 = load i64, i64* %RBP.i836
  %1358 = sub i64 %1357, 80
  %1359 = load i64, i64* %PC.i834
  %1360 = add i64 %1359, 3
  store i64 %1360, i64* %PC.i834
  %1361 = inttoptr i64 %1358 to i32*
  %1362 = load i32, i32* %1361
  %1363 = zext i32 %1362 to i64
  store i64 %1363, i64* %RDX.i835, align 8
  store %struct.Memory* %loadMem_409674, %struct.Memory** %MEMORY
  %loadMem_409677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 33
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %1366 to i64*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 7
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %RDX.i833 = bitcast %union.anon* %1369 to i64*
  %1370 = load i64, i64* %RDX.i833
  %1371 = load i64, i64* %PC.i832
  %1372 = add i64 %1371, 2
  store i64 %1372, i64* %PC.i832
  %1373 = trunc i64 %1370 to i32
  %1374 = shl i32 %1373, 1
  %1375 = icmp slt i32 %1373, 0
  %1376 = icmp slt i32 %1374, 0
  %1377 = xor i1 %1375, %1376
  %1378 = zext i32 %1374 to i64
  store i64 %1378, i64* %RDX.i833, align 8
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1380 = zext i1 %1375 to i8
  store i8 %1380, i8* %1379, align 1
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1382 = and i32 %1374, 254
  %1383 = call i32 @llvm.ctpop.i32(i32 %1382)
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  %1386 = xor i8 %1385, 1
  store i8 %1386, i8* %1381, align 1
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1387, align 1
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1389 = icmp eq i32 %1374, 0
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %1388, align 1
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1392 = lshr i32 %1374, 31
  %1393 = trunc i32 %1392 to i8
  store i8 %1393, i8* %1391, align 1
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1395 = zext i1 %1377 to i8
  store i8 %1395, i8* %1394, align 1
  store %struct.Memory* %loadMem_409677, %struct.Memory** %MEMORY
  %loadMem_40967a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 33
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %1398 to i64*
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 7
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %RDX.i831 = bitcast %union.anon* %1401 to i64*
  %1402 = load i64, i64* %RDX.i831
  %1403 = load i64, i64* %PC.i830
  %1404 = add i64 %1403, 3
  store i64 %1404, i64* %PC.i830
  %1405 = trunc i64 %1402 to i32
  %1406 = add i32 1, %1405
  %1407 = zext i32 %1406 to i64
  store i64 %1407, i64* %RDX.i831, align 8
  %1408 = icmp ult i32 %1406, %1405
  %1409 = icmp ult i32 %1406, 1
  %1410 = or i1 %1408, %1409
  %1411 = zext i1 %1410 to i8
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1411, i8* %1412, align 1
  %1413 = and i32 %1406, 255
  %1414 = call i32 @llvm.ctpop.i32(i32 %1413)
  %1415 = trunc i32 %1414 to i8
  %1416 = and i8 %1415, 1
  %1417 = xor i8 %1416, 1
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1417, i8* %1418, align 1
  %1419 = xor i64 1, %1402
  %1420 = trunc i64 %1419 to i32
  %1421 = xor i32 %1420, %1406
  %1422 = lshr i32 %1421, 4
  %1423 = trunc i32 %1422 to i8
  %1424 = and i8 %1423, 1
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1424, i8* %1425, align 1
  %1426 = icmp eq i32 %1406, 0
  %1427 = zext i1 %1426 to i8
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1427, i8* %1428, align 1
  %1429 = lshr i32 %1406, 31
  %1430 = trunc i32 %1429 to i8
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1430, i8* %1431, align 1
  %1432 = lshr i32 %1405, 31
  %1433 = xor i32 %1429, %1432
  %1434 = add i32 %1433, %1429
  %1435 = icmp eq i32 %1434, 2
  %1436 = zext i1 %1435 to i8
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1436, i8* %1437, align 1
  store %struct.Memory* %loadMem_40967a, %struct.Memory** %MEMORY
  %loadMem_40967d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 33
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 7
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %EDX.i828 = bitcast %union.anon* %1443 to i32*
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 9
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %RSI.i829 = bitcast %union.anon* %1446 to i64*
  %1447 = load i32, i32* %EDX.i828
  %1448 = zext i32 %1447 to i64
  %1449 = load i64, i64* %PC.i827
  %1450 = add i64 %1449, 3
  store i64 %1450, i64* %PC.i827
  %1451 = shl i64 %1448, 32
  %1452 = ashr exact i64 %1451, 32
  store i64 %1452, i64* %RSI.i829, align 8
  store %struct.Memory* %loadMem_40967d, %struct.Memory** %MEMORY
  %loadMem_409680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 33
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %1455 to i64*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 5
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %RCX.i825 = bitcast %union.anon* %1458 to i64*
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 9
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %RSI.i826 = bitcast %union.anon* %1461 to i64*
  %1462 = load i64, i64* %RCX.i825
  %1463 = load i64, i64* %RSI.i826
  %1464 = mul i64 %1463, 4
  %1465 = add i64 %1464, %1462
  %1466 = load i64, i64* %PC.i824
  %1467 = add i64 %1466, 4
  store i64 %1467, i64* %PC.i824
  %1468 = inttoptr i64 %1465 to i32*
  %1469 = load i32, i32* %1468
  %1470 = sext i32 %1469 to i64
  store i64 %1470, i64* %RCX.i825, align 8
  store %struct.Memory* %loadMem_409680, %struct.Memory** %MEMORY
  %loadMem_409684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 33
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 1
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %RAX.i822 = bitcast %union.anon* %1476 to i64*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 5
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %RCX.i823 = bitcast %union.anon* %1479 to i64*
  %1480 = load i64, i64* %RAX.i822
  %1481 = load i64, i64* %RCX.i823
  %1482 = load i64, i64* %PC.i821
  %1483 = add i64 %1482, 3
  store i64 %1483, i64* %PC.i821
  %1484 = add i64 %1481, %1480
  store i64 %1484, i64* %RAX.i822, align 8
  %1485 = icmp ult i64 %1484, %1480
  %1486 = icmp ult i64 %1484, %1481
  %1487 = or i1 %1485, %1486
  %1488 = zext i1 %1487 to i8
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1488, i8* %1489, align 1
  %1490 = trunc i64 %1484 to i32
  %1491 = and i32 %1490, 255
  %1492 = call i32 @llvm.ctpop.i32(i32 %1491)
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = xor i8 %1494, 1
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1495, i8* %1496, align 1
  %1497 = xor i64 %1481, %1480
  %1498 = xor i64 %1497, %1484
  %1499 = lshr i64 %1498, 4
  %1500 = trunc i64 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1501, i8* %1502, align 1
  %1503 = icmp eq i64 %1484, 0
  %1504 = zext i1 %1503 to i8
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1504, i8* %1505, align 1
  %1506 = lshr i64 %1484, 63
  %1507 = trunc i64 %1506 to i8
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1507, i8* %1508, align 1
  %1509 = lshr i64 %1480, 63
  %1510 = lshr i64 %1481, 63
  %1511 = xor i64 %1506, %1509
  %1512 = xor i64 %1506, %1510
  %1513 = add i64 %1511, %1512
  %1514 = icmp eq i64 %1513, 2
  %1515 = zext i1 %1514 to i8
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1515, i8* %1516, align 1
  store %struct.Memory* %loadMem_409684, %struct.Memory** %MEMORY
  %loadMem_409687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 33
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 9
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RSI.i819 = bitcast %union.anon* %1522 to i64*
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 15
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %RBP.i820 = bitcast %union.anon* %1525 to i64*
  %1526 = load i64, i64* %RBP.i820
  %1527 = sub i64 %1526, 96
  %1528 = load i64, i64* %PC.i818
  %1529 = add i64 %1528, 3
  store i64 %1529, i64* %PC.i818
  %1530 = inttoptr i64 %1527 to i32*
  %1531 = load i32, i32* %1530
  %1532 = zext i32 %1531 to i64
  store i64 %1532, i64* %RSI.i819, align 8
  store %struct.Memory* %loadMem_409687, %struct.Memory** %MEMORY
  %loadMem_40968a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 33
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %1535 to i64*
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 7
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %RDX.i816 = bitcast %union.anon* %1538 to i64*
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 15
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %RBP.i817 = bitcast %union.anon* %1541 to i64*
  %1542 = load i64, i64* %RBP.i817
  %1543 = sub i64 %1542, 32
  %1544 = load i64, i64* %PC.i815
  %1545 = add i64 %1544, 4
  store i64 %1545, i64* %PC.i815
  %1546 = inttoptr i64 %1543 to i64*
  %1547 = load i64, i64* %1546
  store i64 %1547, i64* %RDX.i816, align 8
  store %struct.Memory* %loadMem_40968a, %struct.Memory** %MEMORY
  %loadMem_40968e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 33
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 5
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %RCX.i813 = bitcast %union.anon* %1553 to i64*
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 15
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %RBP.i814 = bitcast %union.anon* %1556 to i64*
  %1557 = load i64, i64* %RBP.i814
  %1558 = sub i64 %1557, 72
  %1559 = load i64, i64* %PC.i812
  %1560 = add i64 %1559, 4
  store i64 %1560, i64* %PC.i812
  %1561 = inttoptr i64 %1558 to i64*
  %1562 = load i64, i64* %1561
  store i64 %1562, i64* %RCX.i813, align 8
  store %struct.Memory* %loadMem_40968e, %struct.Memory** %MEMORY
  %loadMem_409692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 33
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %1565 to i64*
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 11
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %RDI.i810 = bitcast %union.anon* %1568 to i64*
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 15
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %RBP.i811 = bitcast %union.anon* %1571 to i64*
  %1572 = load i64, i64* %RBP.i811
  %1573 = sub i64 %1572, 80
  %1574 = load i64, i64* %PC.i809
  %1575 = add i64 %1574, 4
  store i64 %1575, i64* %PC.i809
  %1576 = inttoptr i64 %1573 to i32*
  %1577 = load i32, i32* %1576
  %1578 = sext i32 %1577 to i64
  store i64 %1578, i64* %RDI.i810, align 8
  store %struct.Memory* %loadMem_409692, %struct.Memory** %MEMORY
  %loadMem_409696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 33
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %1581 to i64*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 11
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %RDI.i808 = bitcast %union.anon* %1584 to i64*
  %1585 = load i64, i64* %RDI.i808
  %1586 = load i64, i64* %PC.i807
  %1587 = add i64 %1586, 4
  store i64 %1587, i64* %PC.i807
  %1588 = shl i64 %1585, 2
  %1589 = icmp slt i64 %1588, 0
  %1590 = shl i64 %1588, 1
  store i64 %1590, i64* %RDI.i808, align 8
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1592 = zext i1 %1589 to i8
  store i8 %1592, i8* %1591, align 1
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1594 = trunc i64 %1590 to i32
  %1595 = and i32 %1594, 254
  %1596 = call i32 @llvm.ctpop.i32(i32 %1595)
  %1597 = trunc i32 %1596 to i8
  %1598 = and i8 %1597, 1
  %1599 = xor i8 %1598, 1
  store i8 %1599, i8* %1593, align 1
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1600, align 1
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1602 = icmp eq i64 %1590, 0
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %1601, align 1
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1605 = lshr i64 %1590, 63
  %1606 = trunc i64 %1605 to i8
  store i8 %1606, i8* %1604, align 1
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1607, align 1
  store %struct.Memory* %loadMem_409696, %struct.Memory** %MEMORY
  %loadMem_40969a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 33
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %1610 to i64*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 5
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %RCX.i805 = bitcast %union.anon* %1613 to i64*
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 11
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %RDI.i806 = bitcast %union.anon* %1616 to i64*
  %1617 = load i64, i64* %RCX.i805
  %1618 = load i64, i64* %RDI.i806
  %1619 = load i64, i64* %PC.i804
  %1620 = add i64 %1619, 3
  store i64 %1620, i64* %PC.i804
  %1621 = add i64 %1618, %1617
  store i64 %1621, i64* %RCX.i805, align 8
  %1622 = icmp ult i64 %1621, %1617
  %1623 = icmp ult i64 %1621, %1618
  %1624 = or i1 %1622, %1623
  %1625 = zext i1 %1624 to i8
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1625, i8* %1626, align 1
  %1627 = trunc i64 %1621 to i32
  %1628 = and i32 %1627, 255
  %1629 = call i32 @llvm.ctpop.i32(i32 %1628)
  %1630 = trunc i32 %1629 to i8
  %1631 = and i8 %1630, 1
  %1632 = xor i8 %1631, 1
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1632, i8* %1633, align 1
  %1634 = xor i64 %1618, %1617
  %1635 = xor i64 %1634, %1621
  %1636 = lshr i64 %1635, 4
  %1637 = trunc i64 %1636 to i8
  %1638 = and i8 %1637, 1
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1638, i8* %1639, align 1
  %1640 = icmp eq i64 %1621, 0
  %1641 = zext i1 %1640 to i8
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1641, i8* %1642, align 1
  %1643 = lshr i64 %1621, 63
  %1644 = trunc i64 %1643 to i8
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1644, i8* %1645, align 1
  %1646 = lshr i64 %1617, 63
  %1647 = lshr i64 %1618, 63
  %1648 = xor i64 %1643, %1646
  %1649 = xor i64 %1643, %1647
  %1650 = add i64 %1648, %1649
  %1651 = icmp eq i64 %1650, 2
  %1652 = zext i1 %1651 to i8
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1652, i8* %1653, align 1
  store %struct.Memory* %loadMem_40969a, %struct.Memory** %MEMORY
  %loadMem_40969d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 33
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %1656 to i64*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 1
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %RAX.i802 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 11
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %RDI.i803 = bitcast %union.anon* %1662 to i64*
  %1663 = load i64, i64* %RAX.i802
  %1664 = load i64, i64* %PC.i801
  %1665 = add i64 %1664, 3
  store i64 %1665, i64* %PC.i801
  store i64 %1663, i64* %RDI.i803, align 8
  store %struct.Memory* %loadMem_40969d, %struct.Memory** %MEMORY
  %loadMem1_4096a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 33
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %1668 to i64*
  %1669 = load i64, i64* %PC.i800
  %1670 = add i64 %1669, 5184
  %1671 = load i64, i64* %PC.i800
  %1672 = add i64 %1671, 5
  %1673 = load i64, i64* %PC.i800
  %1674 = add i64 %1673, 5
  store i64 %1674, i64* %PC.i800
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1676 = load i64, i64* %1675, align 8
  %1677 = add i64 %1676, -8
  %1678 = inttoptr i64 %1677 to i64*
  store i64 %1672, i64* %1678
  store i64 %1677, i64* %1675, align 8
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1670, i64* %1679, align 8
  store %struct.Memory* %loadMem1_4096a0, %struct.Memory** %MEMORY
  %loadMem2_4096a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4096a0 = load i64, i64* %3
  %call2_4096a0 = call %struct.Memory* @sub_40aae0.P7WeeViterbi(%struct.State* %0, i64 %loadPC_4096a0, %struct.Memory* %loadMem2_4096a0)
  store %struct.Memory* %call2_4096a0, %struct.Memory** %MEMORY
  %loadMem_4096a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 33
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %1682 to i64*
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 15
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %RBP.i798 = bitcast %union.anon* %1685 to i64*
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1687 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1686, i64 0, i64 0
  %XMM0.i799 = bitcast %union.VectorReg* %1687 to %union.vec128_t*
  %1688 = load i64, i64* %RBP.i798
  %1689 = sub i64 %1688, 116
  %1690 = bitcast %union.vec128_t* %XMM0.i799 to i8*
  %1691 = load i64, i64* %PC.i797
  %1692 = add i64 %1691, 5
  store i64 %1692, i64* %PC.i797
  %1693 = bitcast i8* %1690 to <2 x float>*
  %1694 = load <2 x float>, <2 x float>* %1693, align 1
  %1695 = extractelement <2 x float> %1694, i32 0
  %1696 = inttoptr i64 %1689 to float*
  store float %1695, float* %1696
  store %struct.Memory* %loadMem_4096a5, %struct.Memory** %MEMORY
  %loadMem_4096aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 33
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %1699 to i64*
  %1700 = load i64, i64* %PC.i796
  %1701 = add i64 %1700, 86
  %1702 = load i64, i64* %PC.i796
  %1703 = add i64 %1702, 5
  store i64 %1703, i64* %PC.i796
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1701, i64* %1704, align 8
  store %struct.Memory* %loadMem_4096aa, %struct.Memory** %MEMORY
  br label %block_.L_409700

block_.L_4096af:                                  ; preds = %block_40961a
  %loadMem_4096af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 33
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 1
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %RAX.i794 = bitcast %union.anon* %1710 to i64*
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1712 = getelementptr inbounds %struct.GPR, %struct.GPR* %1711, i32 0, i32 15
  %1713 = getelementptr inbounds %struct.Reg, %struct.Reg* %1712, i32 0, i32 0
  %RBP.i795 = bitcast %union.anon* %1713 to i64*
  %1714 = load i64, i64* %RBP.i795
  %1715 = sub i64 %1714, 16
  %1716 = load i64, i64* %PC.i793
  %1717 = add i64 %1716, 4
  store i64 %1717, i64* %PC.i793
  %1718 = inttoptr i64 %1715 to i64*
  %1719 = load i64, i64* %1718
  store i64 %1719, i64* %RAX.i794, align 8
  store %struct.Memory* %loadMem_4096af, %struct.Memory** %MEMORY
  %loadMem_4096b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 33
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %1722 to i64*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 5
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %RCX.i791 = bitcast %union.anon* %1725 to i64*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 15
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %RBP.i792 = bitcast %union.anon* %1728 to i64*
  %1729 = load i64, i64* %RBP.i792
  %1730 = sub i64 %1729, 56
  %1731 = load i64, i64* %PC.i790
  %1732 = add i64 %1731, 4
  store i64 %1732, i64* %PC.i790
  %1733 = inttoptr i64 %1730 to i64*
  %1734 = load i64, i64* %1733
  store i64 %1734, i64* %RCX.i791, align 8
  store %struct.Memory* %loadMem_4096b3, %struct.Memory** %MEMORY
  %loadMem_4096b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 33
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 5
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %RCX.i789 = bitcast %union.anon* %1740 to i64*
  %1741 = load i64, i64* %RCX.i789
  %1742 = add i64 %1741, 24
  %1743 = load i64, i64* %PC.i788
  %1744 = add i64 %1743, 4
  store i64 %1744, i64* %PC.i788
  %1745 = inttoptr i64 %1742 to i64*
  %1746 = load i64, i64* %1745
  store i64 %1746, i64* %RCX.i789, align 8
  store %struct.Memory* %loadMem_4096b7, %struct.Memory** %MEMORY
  %loadMem_4096bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 33
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %1749 to i64*
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 7
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %RDX.i786 = bitcast %union.anon* %1752 to i64*
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 15
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %RBP.i787 = bitcast %union.anon* %1755 to i64*
  %1756 = load i64, i64* %RBP.i787
  %1757 = sub i64 %1756, 80
  %1758 = load i64, i64* %PC.i785
  %1759 = add i64 %1758, 3
  store i64 %1759, i64* %PC.i785
  %1760 = inttoptr i64 %1757 to i32*
  %1761 = load i32, i32* %1760
  %1762 = zext i32 %1761 to i64
  store i64 %1762, i64* %RDX.i786, align 8
  store %struct.Memory* %loadMem_4096bb, %struct.Memory** %MEMORY
  %loadMem_4096be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 33
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %1765 to i64*
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 7
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %RDX.i784 = bitcast %union.anon* %1768 to i64*
  %1769 = load i64, i64* %RDX.i784
  %1770 = load i64, i64* %PC.i783
  %1771 = add i64 %1770, 2
  store i64 %1771, i64* %PC.i783
  %1772 = trunc i64 %1769 to i32
  %1773 = shl i32 %1772, 1
  %1774 = icmp slt i32 %1772, 0
  %1775 = icmp slt i32 %1773, 0
  %1776 = xor i1 %1774, %1775
  %1777 = zext i32 %1773 to i64
  store i64 %1777, i64* %RDX.i784, align 8
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1779 = zext i1 %1774 to i8
  store i8 %1779, i8* %1778, align 1
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1781 = and i32 %1773, 254
  %1782 = call i32 @llvm.ctpop.i32(i32 %1781)
  %1783 = trunc i32 %1782 to i8
  %1784 = and i8 %1783, 1
  %1785 = xor i8 %1784, 1
  store i8 %1785, i8* %1780, align 1
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1786, align 1
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1788 = icmp eq i32 %1773, 0
  %1789 = zext i1 %1788 to i8
  store i8 %1789, i8* %1787, align 1
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1791 = lshr i32 %1773, 31
  %1792 = trunc i32 %1791 to i8
  store i8 %1792, i8* %1790, align 1
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1794 = zext i1 %1776 to i8
  store i8 %1794, i8* %1793, align 1
  store %struct.Memory* %loadMem_4096be, %struct.Memory** %MEMORY
  %loadMem_4096c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 33
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %1797 to i64*
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 7
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %RDX.i782 = bitcast %union.anon* %1800 to i64*
  %1801 = load i64, i64* %RDX.i782
  %1802 = load i64, i64* %PC.i781
  %1803 = add i64 %1802, 3
  store i64 %1803, i64* %PC.i781
  %1804 = trunc i64 %1801 to i32
  %1805 = add i32 1, %1804
  %1806 = zext i32 %1805 to i64
  store i64 %1806, i64* %RDX.i782, align 8
  %1807 = icmp ult i32 %1805, %1804
  %1808 = icmp ult i32 %1805, 1
  %1809 = or i1 %1807, %1808
  %1810 = zext i1 %1809 to i8
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1810, i8* %1811, align 1
  %1812 = and i32 %1805, 255
  %1813 = call i32 @llvm.ctpop.i32(i32 %1812)
  %1814 = trunc i32 %1813 to i8
  %1815 = and i8 %1814, 1
  %1816 = xor i8 %1815, 1
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1816, i8* %1817, align 1
  %1818 = xor i64 1, %1801
  %1819 = trunc i64 %1818 to i32
  %1820 = xor i32 %1819, %1805
  %1821 = lshr i32 %1820, 4
  %1822 = trunc i32 %1821 to i8
  %1823 = and i8 %1822, 1
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1823, i8* %1824, align 1
  %1825 = icmp eq i32 %1805, 0
  %1826 = zext i1 %1825 to i8
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1826, i8* %1827, align 1
  %1828 = lshr i32 %1805, 31
  %1829 = trunc i32 %1828 to i8
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1829, i8* %1830, align 1
  %1831 = lshr i32 %1804, 31
  %1832 = xor i32 %1828, %1831
  %1833 = add i32 %1832, %1828
  %1834 = icmp eq i32 %1833, 2
  %1835 = zext i1 %1834 to i8
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1835, i8* %1836, align 1
  store %struct.Memory* %loadMem_4096c1, %struct.Memory** %MEMORY
  %loadMem_4096c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 33
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 7
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %EDX.i779 = bitcast %union.anon* %1842 to i32*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 9
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %RSI.i780 = bitcast %union.anon* %1845 to i64*
  %1846 = load i32, i32* %EDX.i779
  %1847 = zext i32 %1846 to i64
  %1848 = load i64, i64* %PC.i778
  %1849 = add i64 %1848, 3
  store i64 %1849, i64* %PC.i778
  %1850 = shl i64 %1847, 32
  %1851 = ashr exact i64 %1850, 32
  store i64 %1851, i64* %RSI.i780, align 8
  store %struct.Memory* %loadMem_4096c4, %struct.Memory** %MEMORY
  %loadMem_4096c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 5
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %RCX.i776 = bitcast %union.anon* %1857 to i64*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 9
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %RSI.i777 = bitcast %union.anon* %1860 to i64*
  %1861 = load i64, i64* %RCX.i776
  %1862 = load i64, i64* %RSI.i777
  %1863 = mul i64 %1862, 4
  %1864 = add i64 %1863, %1861
  %1865 = load i64, i64* %PC.i775
  %1866 = add i64 %1865, 4
  store i64 %1866, i64* %PC.i775
  %1867 = inttoptr i64 %1864 to i32*
  %1868 = load i32, i32* %1867
  %1869 = sext i32 %1868 to i64
  store i64 %1869, i64* %RCX.i776, align 8
  store %struct.Memory* %loadMem_4096c7, %struct.Memory** %MEMORY
  %loadMem_4096cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 33
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %1872 to i64*
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1874 = getelementptr inbounds %struct.GPR, %struct.GPR* %1873, i32 0, i32 1
  %1875 = getelementptr inbounds %struct.Reg, %struct.Reg* %1874, i32 0, i32 0
  %RAX.i773 = bitcast %union.anon* %1875 to i64*
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1877 = getelementptr inbounds %struct.GPR, %struct.GPR* %1876, i32 0, i32 5
  %1878 = getelementptr inbounds %struct.Reg, %struct.Reg* %1877, i32 0, i32 0
  %RCX.i774 = bitcast %union.anon* %1878 to i64*
  %1879 = load i64, i64* %RAX.i773
  %1880 = load i64, i64* %RCX.i774
  %1881 = load i64, i64* %PC.i772
  %1882 = add i64 %1881, 3
  store i64 %1882, i64* %PC.i772
  %1883 = add i64 %1880, %1879
  store i64 %1883, i64* %RAX.i773, align 8
  %1884 = icmp ult i64 %1883, %1879
  %1885 = icmp ult i64 %1883, %1880
  %1886 = or i1 %1884, %1885
  %1887 = zext i1 %1886 to i8
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1887, i8* %1888, align 1
  %1889 = trunc i64 %1883 to i32
  %1890 = and i32 %1889, 255
  %1891 = call i32 @llvm.ctpop.i32(i32 %1890)
  %1892 = trunc i32 %1891 to i8
  %1893 = and i8 %1892, 1
  %1894 = xor i8 %1893, 1
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1894, i8* %1895, align 1
  %1896 = xor i64 %1880, %1879
  %1897 = xor i64 %1896, %1883
  %1898 = lshr i64 %1897, 4
  %1899 = trunc i64 %1898 to i8
  %1900 = and i8 %1899, 1
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1900, i8* %1901, align 1
  %1902 = icmp eq i64 %1883, 0
  %1903 = zext i1 %1902 to i8
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1903, i8* %1904, align 1
  %1905 = lshr i64 %1883, 63
  %1906 = trunc i64 %1905 to i8
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1906, i8* %1907, align 1
  %1908 = lshr i64 %1879, 63
  %1909 = lshr i64 %1880, 63
  %1910 = xor i64 %1905, %1908
  %1911 = xor i64 %1905, %1909
  %1912 = add i64 %1910, %1911
  %1913 = icmp eq i64 %1912, 2
  %1914 = zext i1 %1913 to i8
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1914, i8* %1915, align 1
  store %struct.Memory* %loadMem_4096cb, %struct.Memory** %MEMORY
  %loadMem_4096ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 33
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 9
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %RSI.i770 = bitcast %union.anon* %1921 to i64*
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 15
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %RBP.i771 = bitcast %union.anon* %1924 to i64*
  %1925 = load i64, i64* %RBP.i771
  %1926 = sub i64 %1925, 96
  %1927 = load i64, i64* %PC.i769
  %1928 = add i64 %1927, 3
  store i64 %1928, i64* %PC.i769
  %1929 = inttoptr i64 %1926 to i32*
  %1930 = load i32, i32* %1929
  %1931 = zext i32 %1930 to i64
  store i64 %1931, i64* %RSI.i770, align 8
  store %struct.Memory* %loadMem_4096ce, %struct.Memory** %MEMORY
  %loadMem_4096d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 33
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 7
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %RDX.i767 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 15
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %RBP.i768 = bitcast %union.anon* %1940 to i64*
  %1941 = load i64, i64* %RBP.i768
  %1942 = sub i64 %1941, 32
  %1943 = load i64, i64* %PC.i766
  %1944 = add i64 %1943, 4
  store i64 %1944, i64* %PC.i766
  %1945 = inttoptr i64 %1942 to i64*
  %1946 = load i64, i64* %1945
  store i64 %1946, i64* %RDX.i767, align 8
  store %struct.Memory* %loadMem_4096d1, %struct.Memory** %MEMORY
  %loadMem_4096d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 33
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 5
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RCX.i764 = bitcast %union.anon* %1952 to i64*
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 15
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %RBP.i765 = bitcast %union.anon* %1955 to i64*
  %1956 = load i64, i64* %RBP.i765
  %1957 = sub i64 %1956, 40
  %1958 = load i64, i64* %PC.i763
  %1959 = add i64 %1958, 4
  store i64 %1959, i64* %PC.i763
  %1960 = inttoptr i64 %1957 to i64*
  %1961 = load i64, i64* %1960
  store i64 %1961, i64* %RCX.i764, align 8
  store %struct.Memory* %loadMem_4096d5, %struct.Memory** %MEMORY
  %loadMem_4096d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 33
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 11
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %RDI.i761 = bitcast %union.anon* %1967 to i64*
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 15
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %RBP.i762 = bitcast %union.anon* %1970 to i64*
  %1971 = load i64, i64* %RBP.i762
  %1972 = sub i64 %1971, 72
  %1973 = load i64, i64* %PC.i760
  %1974 = add i64 %1973, 4
  store i64 %1974, i64* %PC.i760
  %1975 = inttoptr i64 %1972 to i64*
  %1976 = load i64, i64* %1975
  store i64 %1976, i64* %RDI.i761, align 8
  store %struct.Memory* %loadMem_4096d9, %struct.Memory** %MEMORY
  %loadMem_4096dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 33
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1979 to i64*
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 15
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %RBP.i758 = bitcast %union.anon* %1982 to i64*
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 17
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %R8.i759 = bitcast %union.anon* %1985 to i64*
  %1986 = load i64, i64* %RBP.i758
  %1987 = sub i64 %1986, 80
  %1988 = load i64, i64* %PC.i757
  %1989 = add i64 %1988, 4
  store i64 %1989, i64* %PC.i757
  %1990 = inttoptr i64 %1987 to i32*
  %1991 = load i32, i32* %1990
  %1992 = sext i32 %1991 to i64
  store i64 %1992, i64* %R8.i759, align 8
  store %struct.Memory* %loadMem_4096dd, %struct.Memory** %MEMORY
  %loadMem_4096e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 33
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %1995 to i64*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 17
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %R8.i756 = bitcast %union.anon* %1998 to i64*
  %1999 = load i64, i64* %R8.i756
  %2000 = load i64, i64* %PC.i755
  %2001 = add i64 %2000, 4
  store i64 %2001, i64* %PC.i755
  %2002 = shl i64 %1999, 2
  %2003 = icmp slt i64 %2002, 0
  %2004 = shl i64 %2002, 1
  store i64 %2004, i64* %R8.i756, align 8
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2006 = zext i1 %2003 to i8
  store i8 %2006, i8* %2005, align 1
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2008 = trunc i64 %2004 to i32
  %2009 = and i32 %2008, 254
  %2010 = call i32 @llvm.ctpop.i32(i32 %2009)
  %2011 = trunc i32 %2010 to i8
  %2012 = and i8 %2011, 1
  %2013 = xor i8 %2012, 1
  store i8 %2013, i8* %2007, align 1
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2014, align 1
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2016 = icmp eq i64 %2004, 0
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %2015, align 1
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2019 = lshr i64 %2004, 63
  %2020 = trunc i64 %2019 to i8
  store i8 %2020, i8* %2018, align 1
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2021, align 1
  store %struct.Memory* %loadMem_4096e1, %struct.Memory** %MEMORY
  %loadMem_4096e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 33
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %2024 to i64*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 11
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %RDI.i753 = bitcast %union.anon* %2027 to i64*
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 17
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %R8.i754 = bitcast %union.anon* %2030 to i64*
  %2031 = load i64, i64* %RDI.i753
  %2032 = load i64, i64* %R8.i754
  %2033 = load i64, i64* %PC.i752
  %2034 = add i64 %2033, 3
  store i64 %2034, i64* %PC.i752
  %2035 = add i64 %2032, %2031
  store i64 %2035, i64* %RDI.i753, align 8
  %2036 = icmp ult i64 %2035, %2031
  %2037 = icmp ult i64 %2035, %2032
  %2038 = or i1 %2036, %2037
  %2039 = zext i1 %2038 to i8
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2039, i8* %2040, align 1
  %2041 = trunc i64 %2035 to i32
  %2042 = and i32 %2041, 255
  %2043 = call i32 @llvm.ctpop.i32(i32 %2042)
  %2044 = trunc i32 %2043 to i8
  %2045 = and i8 %2044, 1
  %2046 = xor i8 %2045, 1
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2046, i8* %2047, align 1
  %2048 = xor i64 %2032, %2031
  %2049 = xor i64 %2048, %2035
  %2050 = lshr i64 %2049, 4
  %2051 = trunc i64 %2050 to i8
  %2052 = and i8 %2051, 1
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2052, i8* %2053, align 1
  %2054 = icmp eq i64 %2035, 0
  %2055 = zext i1 %2054 to i8
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2055, i8* %2056, align 1
  %2057 = lshr i64 %2035, 63
  %2058 = trunc i64 %2057 to i8
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2058, i8* %2059, align 1
  %2060 = lshr i64 %2031, 63
  %2061 = lshr i64 %2032, 63
  %2062 = xor i64 %2057, %2060
  %2063 = xor i64 %2057, %2061
  %2064 = add i64 %2062, %2063
  %2065 = icmp eq i64 %2064, 2
  %2066 = zext i1 %2065 to i8
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2066, i8* %2067, align 1
  store %struct.Memory* %loadMem_4096e5, %struct.Memory** %MEMORY
  %loadMem_4096e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 33
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %2070 to i64*
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 11
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %RDI.i750 = bitcast %union.anon* %2073 to i64*
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 15
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %2076 to i64*
  %2077 = load i64, i64* %RBP.i751
  %2078 = sub i64 %2077, 128
  %2079 = load i64, i64* %RDI.i750
  %2080 = load i64, i64* %PC.i749
  %2081 = add i64 %2080, 4
  store i64 %2081, i64* %PC.i749
  %2082 = inttoptr i64 %2078 to i64*
  store i64 %2079, i64* %2082
  store %struct.Memory* %loadMem_4096e8, %struct.Memory** %MEMORY
  %loadMem_4096ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 33
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 1
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %RAX.i747 = bitcast %union.anon* %2088 to i64*
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 11
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %RDI.i748 = bitcast %union.anon* %2091 to i64*
  %2092 = load i64, i64* %RAX.i747
  %2093 = load i64, i64* %PC.i746
  %2094 = add i64 %2093, 3
  store i64 %2094, i64* %PC.i746
  store i64 %2092, i64* %RDI.i748, align 8
  store %struct.Memory* %loadMem_4096ec, %struct.Memory** %MEMORY
  %loadMem_4096ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 33
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %2097 to i64*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 15
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %RBP.i744 = bitcast %union.anon* %2100 to i64*
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 17
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %R8.i745 = bitcast %union.anon* %2103 to i64*
  %2104 = load i64, i64* %RBP.i744
  %2105 = sub i64 %2104, 128
  %2106 = load i64, i64* %PC.i743
  %2107 = add i64 %2106, 4
  store i64 %2107, i64* %PC.i743
  %2108 = inttoptr i64 %2105 to i64*
  %2109 = load i64, i64* %2108
  store i64 %2109, i64* %R8.i745, align 8
  store %struct.Memory* %loadMem_4096ef, %struct.Memory** %MEMORY
  %loadMem1_4096f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 33
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %2112 to i64*
  %2113 = load i64, i64* %PC.i742
  %2114 = add i64 %2113, 49709
  %2115 = load i64, i64* %PC.i742
  %2116 = add i64 %2115, 5
  %2117 = load i64, i64* %PC.i742
  %2118 = add i64 %2117, 5
  store i64 %2118, i64* %PC.i742
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2120 = load i64, i64* %2119, align 8
  %2121 = add i64 %2120, -8
  %2122 = inttoptr i64 %2121 to i64*
  store i64 %2116, i64* %2122
  store i64 %2121, i64* %2119, align 8
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2114, i64* %2123, align 8
  store %struct.Memory* %loadMem1_4096f3, %struct.Memory** %MEMORY
  %loadMem2_4096f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4096f3 = load i64, i64* %3
  %call2_4096f3 = call %struct.Memory* @sub_415920.P7Viterbi(%struct.State* %0, i64 %loadPC_4096f3, %struct.Memory* %loadMem2_4096f3)
  store %struct.Memory* %call2_4096f3, %struct.Memory** %MEMORY
  %loadMem_4096f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 15
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RBP.i740 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2131 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2130, i64 0, i64 0
  %XMM0.i741 = bitcast %union.VectorReg* %2131 to %union.vec128_t*
  %2132 = load i64, i64* %RBP.i740
  %2133 = sub i64 %2132, 132
  %2134 = bitcast %union.vec128_t* %XMM0.i741 to i8*
  %2135 = load i64, i64* %PC.i739
  %2136 = add i64 %2135, 8
  store i64 %2136, i64* %PC.i739
  %2137 = bitcast i8* %2134 to <2 x float>*
  %2138 = load <2 x float>, <2 x float>* %2137, align 1
  %2139 = extractelement <2 x float> %2138, i32 0
  %2140 = inttoptr i64 %2133 to float*
  store float %2139, float* %2140
  store %struct.Memory* %loadMem_4096f8, %struct.Memory** %MEMORY
  br label %block_.L_409700

block_.L_409700:                                  ; preds = %block_.L_4096af, %block_409668
  %loadMem_409700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 33
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %2143 to i64*
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 1
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %RAX.i737 = bitcast %union.anon* %2146 to i64*
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 15
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %RBP.i738 = bitcast %union.anon* %2149 to i64*
  %2150 = load i64, i64* %RBP.i738
  %2151 = sub i64 %2150, 72
  %2152 = load i64, i64* %PC.i736
  %2153 = add i64 %2152, 4
  store i64 %2153, i64* %PC.i736
  %2154 = inttoptr i64 %2151 to i64*
  %2155 = load i64, i64* %2154
  store i64 %2155, i64* %RAX.i737, align 8
  store %struct.Memory* %loadMem_409700, %struct.Memory** %MEMORY
  %loadMem_409704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 33
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %2158 to i64*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 5
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %RCX.i734 = bitcast %union.anon* %2161 to i64*
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 15
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %2164 to i64*
  %2165 = load i64, i64* %RBP.i735
  %2166 = sub i64 %2165, 80
  %2167 = load i64, i64* %PC.i733
  %2168 = add i64 %2167, 4
  store i64 %2168, i64* %PC.i733
  %2169 = inttoptr i64 %2166 to i32*
  %2170 = load i32, i32* %2169
  %2171 = sext i32 %2170 to i64
  store i64 %2171, i64* %RCX.i734, align 8
  store %struct.Memory* %loadMem_409704, %struct.Memory** %MEMORY
  %loadMem_409708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 33
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %2174 to i64*
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 1
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %RAX.i731 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 5
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %RCX.i732 = bitcast %union.anon* %2180 to i64*
  %2181 = load i64, i64* %RAX.i731
  %2182 = load i64, i64* %RCX.i732
  %2183 = mul i64 %2182, 8
  %2184 = add i64 %2183, %2181
  %2185 = load i64, i64* %PC.i730
  %2186 = add i64 %2185, 4
  store i64 %2186, i64* %PC.i730
  %2187 = inttoptr i64 %2184 to i64*
  %2188 = load i64, i64* %2187
  store i64 %2188, i64* %RAX.i731, align 8
  store %struct.Memory* %loadMem_409708, %struct.Memory** %MEMORY
  %loadMem_40970c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 33
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 1
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %RAX.i728 = bitcast %union.anon* %2194 to i64*
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 7
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %RDX.i729 = bitcast %union.anon* %2197 to i64*
  %2198 = load i64, i64* %RAX.i728
  %2199 = load i64, i64* %PC.i727
  %2200 = add i64 %2199, 2
  store i64 %2200, i64* %PC.i727
  %2201 = inttoptr i64 %2198 to i32*
  %2202 = load i32, i32* %2201
  %2203 = zext i32 %2202 to i64
  store i64 %2203, i64* %RDX.i729, align 8
  store %struct.Memory* %loadMem_40970c, %struct.Memory** %MEMORY
  %loadMem_40970e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 33
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 7
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %RDX.i726 = bitcast %union.anon* %2209 to i64*
  %2210 = load i64, i64* %RDX.i726
  %2211 = load i64, i64* %PC.i725
  %2212 = add i64 %2211, 3
  store i64 %2212, i64* %PC.i725
  %2213 = trunc i64 %2210 to i32
  %2214 = sub i32 %2213, 4
  %2215 = zext i32 %2214 to i64
  store i64 %2215, i64* %RDX.i726, align 8
  %2216 = icmp ult i32 %2213, 4
  %2217 = zext i1 %2216 to i8
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2217, i8* %2218, align 1
  %2219 = and i32 %2214, 255
  %2220 = call i32 @llvm.ctpop.i32(i32 %2219)
  %2221 = trunc i32 %2220 to i8
  %2222 = and i8 %2221, 1
  %2223 = xor i8 %2222, 1
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2223, i8* %2224, align 1
  %2225 = xor i64 4, %2210
  %2226 = trunc i64 %2225 to i32
  %2227 = xor i32 %2226, %2214
  %2228 = lshr i32 %2227, 4
  %2229 = trunc i32 %2228 to i8
  %2230 = and i8 %2229, 1
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2230, i8* %2231, align 1
  %2232 = icmp eq i32 %2214, 0
  %2233 = zext i1 %2232 to i8
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2233, i8* %2234, align 1
  %2235 = lshr i32 %2214, 31
  %2236 = trunc i32 %2235 to i8
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2236, i8* %2237, align 1
  %2238 = lshr i32 %2213, 31
  %2239 = xor i32 %2235, %2238
  %2240 = add i32 %2239, %2238
  %2241 = icmp eq i32 %2240, 2
  %2242 = zext i1 %2241 to i8
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2242, i8* %2243, align 1
  store %struct.Memory* %loadMem_40970e, %struct.Memory** %MEMORY
  %loadMem_409711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 33
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %2246 to i64*
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 7
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %RDX.i723 = bitcast %union.anon* %2249 to i64*
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 15
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %RBP.i724 = bitcast %union.anon* %2252 to i64*
  %2253 = load i64, i64* %RDX.i723
  %2254 = load i64, i64* %RBP.i724
  %2255 = sub i64 %2254, 92
  %2256 = load i64, i64* %PC.i722
  %2257 = add i64 %2256, 3
  store i64 %2257, i64* %PC.i722
  %2258 = trunc i64 %2253 to i32
  %2259 = inttoptr i64 %2255 to i32*
  %2260 = load i32, i32* %2259
  %2261 = add i32 %2260, %2258
  %2262 = zext i32 %2261 to i64
  store i64 %2262, i64* %RDX.i723, align 8
  %2263 = icmp ult i32 %2261, %2258
  %2264 = icmp ult i32 %2261, %2260
  %2265 = or i1 %2263, %2264
  %2266 = zext i1 %2265 to i8
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2266, i8* %2267, align 1
  %2268 = and i32 %2261, 255
  %2269 = call i32 @llvm.ctpop.i32(i32 %2268)
  %2270 = trunc i32 %2269 to i8
  %2271 = and i8 %2270, 1
  %2272 = xor i8 %2271, 1
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2272, i8* %2273, align 1
  %2274 = xor i32 %2260, %2258
  %2275 = xor i32 %2274, %2261
  %2276 = lshr i32 %2275, 4
  %2277 = trunc i32 %2276 to i8
  %2278 = and i8 %2277, 1
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2278, i8* %2279, align 1
  %2280 = icmp eq i32 %2261, 0
  %2281 = zext i1 %2280 to i8
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2281, i8* %2282, align 1
  %2283 = lshr i32 %2261, 31
  %2284 = trunc i32 %2283 to i8
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2284, i8* %2285, align 1
  %2286 = lshr i32 %2258, 31
  %2287 = lshr i32 %2260, 31
  %2288 = xor i32 %2283, %2286
  %2289 = xor i32 %2283, %2287
  %2290 = add i32 %2288, %2289
  %2291 = icmp eq i32 %2290, 2
  %2292 = zext i1 %2291 to i8
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2292, i8* %2293, align 1
  store %struct.Memory* %loadMem_409711, %struct.Memory** %MEMORY
  %loadMem_409714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 33
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %2296 to i64*
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 7
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %EDX.i720 = bitcast %union.anon* %2299 to i32*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 15
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %RBP.i721 = bitcast %union.anon* %2302 to i64*
  %2303 = load i64, i64* %RBP.i721
  %2304 = sub i64 %2303, 92
  %2305 = load i32, i32* %EDX.i720
  %2306 = zext i32 %2305 to i64
  %2307 = load i64, i64* %PC.i719
  %2308 = add i64 %2307, 3
  store i64 %2308, i64* %PC.i719
  %2309 = inttoptr i64 %2304 to i32*
  store i32 %2305, i32* %2309
  store %struct.Memory* %loadMem_409714, %struct.Memory** %MEMORY
  %loadMem_409717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 33
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %2312 to i64*
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 7
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %RDX.i717 = bitcast %union.anon* %2315 to i64*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 15
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %RBP.i718 = bitcast %union.anon* %2318 to i64*
  %2319 = load i64, i64* %RBP.i718
  %2320 = sub i64 %2319, 96
  %2321 = load i64, i64* %PC.i716
  %2322 = add i64 %2321, 3
  store i64 %2322, i64* %PC.i716
  %2323 = inttoptr i64 %2320 to i32*
  %2324 = load i32, i32* %2323
  %2325 = zext i32 %2324 to i64
  store i64 %2325, i64* %RDX.i717, align 8
  store %struct.Memory* %loadMem_409717, %struct.Memory** %MEMORY
  %loadMem_40971a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 33
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %2328 to i64*
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 7
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %RDX.i714 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 15
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %RBP.i715 = bitcast %union.anon* %2334 to i64*
  %2335 = load i64, i64* %RDX.i714
  %2336 = load i64, i64* %RBP.i715
  %2337 = sub i64 %2336, 100
  %2338 = load i64, i64* %PC.i713
  %2339 = add i64 %2338, 3
  store i64 %2339, i64* %PC.i713
  %2340 = trunc i64 %2335 to i32
  %2341 = inttoptr i64 %2337 to i32*
  %2342 = load i32, i32* %2341
  %2343 = add i32 %2342, %2340
  %2344 = zext i32 %2343 to i64
  store i64 %2344, i64* %RDX.i714, align 8
  %2345 = icmp ult i32 %2343, %2340
  %2346 = icmp ult i32 %2343, %2342
  %2347 = or i1 %2345, %2346
  %2348 = zext i1 %2347 to i8
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2348, i8* %2349, align 1
  %2350 = and i32 %2343, 255
  %2351 = call i32 @llvm.ctpop.i32(i32 %2350)
  %2352 = trunc i32 %2351 to i8
  %2353 = and i8 %2352, 1
  %2354 = xor i8 %2353, 1
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2354, i8* %2355, align 1
  %2356 = xor i32 %2342, %2340
  %2357 = xor i32 %2356, %2343
  %2358 = lshr i32 %2357, 4
  %2359 = trunc i32 %2358 to i8
  %2360 = and i8 %2359, 1
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2360, i8* %2361, align 1
  %2362 = icmp eq i32 %2343, 0
  %2363 = zext i1 %2362 to i8
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2363, i8* %2364, align 1
  %2365 = lshr i32 %2343, 31
  %2366 = trunc i32 %2365 to i8
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2366, i8* %2367, align 1
  %2368 = lshr i32 %2340, 31
  %2369 = lshr i32 %2342, 31
  %2370 = xor i32 %2365, %2368
  %2371 = xor i32 %2365, %2369
  %2372 = add i32 %2370, %2371
  %2373 = icmp eq i32 %2372, 2
  %2374 = zext i1 %2373 to i8
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2374, i8* %2375, align 1
  store %struct.Memory* %loadMem_40971a, %struct.Memory** %MEMORY
  %loadMem_40971d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 33
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %2378 to i64*
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 7
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %EDX.i711 = bitcast %union.anon* %2381 to i32*
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 15
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %RBP.i712 = bitcast %union.anon* %2384 to i64*
  %2385 = load i64, i64* %RBP.i712
  %2386 = sub i64 %2385, 100
  %2387 = load i32, i32* %EDX.i711
  %2388 = zext i32 %2387 to i64
  %2389 = load i64, i64* %PC.i710
  %2390 = add i64 %2389, 3
  store i64 %2390, i64* %PC.i710
  %2391 = inttoptr i64 %2386 to i32*
  store i32 %2387, i32* %2391
  store %struct.Memory* %loadMem_40971d, %struct.Memory** %MEMORY
  %loadMem_409720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 33
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %2394 to i64*
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 1
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %RAX.i708 = bitcast %union.anon* %2397 to i64*
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 15
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %RBP.i709 = bitcast %union.anon* %2400 to i64*
  %2401 = load i64, i64* %RBP.i709
  %2402 = sub i64 %2401, 80
  %2403 = load i64, i64* %PC.i707
  %2404 = add i64 %2403, 3
  store i64 %2404, i64* %PC.i707
  %2405 = inttoptr i64 %2402 to i32*
  %2406 = load i32, i32* %2405
  %2407 = zext i32 %2406 to i64
  store i64 %2407, i64* %RAX.i708, align 8
  store %struct.Memory* %loadMem_409720, %struct.Memory** %MEMORY
  %loadMem_409723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 33
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %2410 to i64*
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 1
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %RAX.i706 = bitcast %union.anon* %2413 to i64*
  %2414 = load i64, i64* %RAX.i706
  %2415 = load i64, i64* %PC.i705
  %2416 = add i64 %2415, 3
  store i64 %2416, i64* %PC.i705
  %2417 = trunc i64 %2414 to i32
  %2418 = add i32 1, %2417
  %2419 = zext i32 %2418 to i64
  store i64 %2419, i64* %RAX.i706, align 8
  %2420 = icmp ult i32 %2418, %2417
  %2421 = icmp ult i32 %2418, 1
  %2422 = or i1 %2420, %2421
  %2423 = zext i1 %2422 to i8
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2423, i8* %2424, align 1
  %2425 = and i32 %2418, 255
  %2426 = call i32 @llvm.ctpop.i32(i32 %2425)
  %2427 = trunc i32 %2426 to i8
  %2428 = and i8 %2427, 1
  %2429 = xor i8 %2428, 1
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2429, i8* %2430, align 1
  %2431 = xor i64 1, %2414
  %2432 = trunc i64 %2431 to i32
  %2433 = xor i32 %2432, %2418
  %2434 = lshr i32 %2433, 4
  %2435 = trunc i32 %2434 to i8
  %2436 = and i8 %2435, 1
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2436, i8* %2437, align 1
  %2438 = icmp eq i32 %2418, 0
  %2439 = zext i1 %2438 to i8
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2439, i8* %2440, align 1
  %2441 = lshr i32 %2418, 31
  %2442 = trunc i32 %2441 to i8
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2442, i8* %2443, align 1
  %2444 = lshr i32 %2417, 31
  %2445 = xor i32 %2441, %2444
  %2446 = add i32 %2445, %2441
  %2447 = icmp eq i32 %2446, 2
  %2448 = zext i1 %2447 to i8
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2448, i8* %2449, align 1
  store %struct.Memory* %loadMem_409723, %struct.Memory** %MEMORY
  %loadMem_409726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 33
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %2452 to i64*
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 1
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %EAX.i703 = bitcast %union.anon* %2455 to i32*
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 15
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %RBP.i704 = bitcast %union.anon* %2458 to i64*
  %2459 = load i64, i64* %RBP.i704
  %2460 = sub i64 %2459, 80
  %2461 = load i32, i32* %EAX.i703
  %2462 = zext i32 %2461 to i64
  %2463 = load i64, i64* %PC.i702
  %2464 = add i64 %2463, 3
  store i64 %2464, i64* %PC.i702
  %2465 = inttoptr i64 %2460 to i32*
  store i32 %2461, i32* %2465
  store %struct.Memory* %loadMem_409726, %struct.Memory** %MEMORY
  %loadMem_409729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 33
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %2468 to i64*
  %2469 = load i64, i64* %PC.i701
  %2470 = add i64 %2469, -283
  %2471 = load i64, i64* %PC.i701
  %2472 = add i64 %2471, 5
  store i64 %2472, i64* %PC.i701
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2470, i64* %2473, align 8
  store %struct.Memory* %loadMem_409729, %struct.Memory** %MEMORY
  br label %block_.L_40960e

block_.L_40972e:                                  ; preds = %block_.L_40960e
  %loadMem_40972e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 33
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %2476 to i64*
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 9
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %RSI.i699 = bitcast %union.anon* %2479 to i64*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 15
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %2482 to i64*
  %2483 = load i64, i64* %RBP.i700
  %2484 = sub i64 %2483, 64
  %2485 = load i64, i64* %PC.i698
  %2486 = add i64 %2485, 4
  store i64 %2486, i64* %PC.i698
  store i64 %2484, i64* %RSI.i699, align 8
  store %struct.Memory* %loadMem_40972e, %struct.Memory** %MEMORY
  %loadMem_409732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 1
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RAX.i696 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 15
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %2495 to i64*
  %2496 = load i64, i64* %RBP.i697
  %2497 = sub i64 %2496, 76
  %2498 = load i64, i64* %PC.i695
  %2499 = add i64 %2498, 3
  store i64 %2499, i64* %PC.i695
  %2500 = inttoptr i64 %2497 to i32*
  %2501 = load i32, i32* %2500
  %2502 = zext i32 %2501 to i64
  store i64 %2502, i64* %RAX.i696, align 8
  store %struct.Memory* %loadMem_409732, %struct.Memory** %MEMORY
  %loadMem_409735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 33
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %2505 to i64*
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 1
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %RAX.i694 = bitcast %union.anon* %2508 to i64*
  %2509 = load i64, i64* %RAX.i694
  %2510 = load i64, i64* %PC.i693
  %2511 = add i64 %2510, 3
  store i64 %2511, i64* %PC.i693
  %2512 = trunc i64 %2509 to i32
  %2513 = sub i32 %2512, 1
  %2514 = zext i32 %2513 to i64
  store i64 %2514, i64* %RAX.i694, align 8
  %2515 = icmp ult i32 %2512, 1
  %2516 = zext i1 %2515 to i8
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2516, i8* %2517, align 1
  %2518 = and i32 %2513, 255
  %2519 = call i32 @llvm.ctpop.i32(i32 %2518)
  %2520 = trunc i32 %2519 to i8
  %2521 = and i8 %2520, 1
  %2522 = xor i8 %2521, 1
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2522, i8* %2523, align 1
  %2524 = xor i64 1, %2509
  %2525 = trunc i64 %2524 to i32
  %2526 = xor i32 %2525, %2513
  %2527 = lshr i32 %2526, 4
  %2528 = trunc i32 %2527 to i8
  %2529 = and i8 %2528, 1
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2529, i8* %2530, align 1
  %2531 = icmp eq i32 %2513, 0
  %2532 = zext i1 %2531 to i8
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2532, i8* %2533, align 1
  %2534 = lshr i32 %2513, 31
  %2535 = trunc i32 %2534 to i8
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2535, i8* %2536, align 1
  %2537 = lshr i32 %2512, 31
  %2538 = xor i32 %2534, %2537
  %2539 = add i32 %2538, %2537
  %2540 = icmp eq i32 %2539, 2
  %2541 = zext i1 %2540 to i8
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2541, i8* %2542, align 1
  store %struct.Memory* %loadMem_409735, %struct.Memory** %MEMORY
  %loadMem_409738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 33
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %2545 to i64*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 1
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %RAX.i692 = bitcast %union.anon* %2548 to i64*
  %2549 = load i64, i64* %RAX.i692
  %2550 = load i64, i64* %PC.i691
  %2551 = add i64 %2550, 3
  store i64 %2551, i64* %PC.i691
  %2552 = trunc i64 %2549 to i32
  %2553 = add i32 4, %2552
  %2554 = zext i32 %2553 to i64
  store i64 %2554, i64* %RAX.i692, align 8
  %2555 = icmp ult i32 %2553, %2552
  %2556 = icmp ult i32 %2553, 4
  %2557 = or i1 %2555, %2556
  %2558 = zext i1 %2557 to i8
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2558, i8* %2559, align 1
  %2560 = and i32 %2553, 255
  %2561 = call i32 @llvm.ctpop.i32(i32 %2560)
  %2562 = trunc i32 %2561 to i8
  %2563 = and i8 %2562, 1
  %2564 = xor i8 %2563, 1
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2564, i8* %2565, align 1
  %2566 = xor i64 4, %2549
  %2567 = trunc i64 %2566 to i32
  %2568 = xor i32 %2567, %2553
  %2569 = lshr i32 %2568, 4
  %2570 = trunc i32 %2569 to i8
  %2571 = and i8 %2570, 1
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2571, i8* %2572, align 1
  %2573 = icmp eq i32 %2553, 0
  %2574 = zext i1 %2573 to i8
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2574, i8* %2575, align 1
  %2576 = lshr i32 %2553, 31
  %2577 = trunc i32 %2576 to i8
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2577, i8* %2578, align 1
  %2579 = lshr i32 %2552, 31
  %2580 = xor i32 %2576, %2579
  %2581 = add i32 %2580, %2576
  %2582 = icmp eq i32 %2581, 2
  %2583 = zext i1 %2582 to i8
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2583, i8* %2584, align 1
  store %struct.Memory* %loadMem_409738, %struct.Memory** %MEMORY
  %loadMem_40973b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 33
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %2587 to i64*
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 5
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %RCX.i689 = bitcast %union.anon* %2590 to i64*
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 15
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %RBP.i690 = bitcast %union.anon* %2593 to i64*
  %2594 = load i64, i64* %RBP.i690
  %2595 = sub i64 %2594, 20
  %2596 = load i64, i64* %PC.i688
  %2597 = add i64 %2596, 3
  store i64 %2597, i64* %PC.i688
  %2598 = inttoptr i64 %2595 to i32*
  %2599 = load i32, i32* %2598
  %2600 = zext i32 %2599 to i64
  store i64 %2600, i64* %RCX.i689, align 8
  store %struct.Memory* %loadMem_40973b, %struct.Memory** %MEMORY
  %loadMem_40973e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 33
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %2603 to i64*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 5
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %RCX.i686 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 15
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %RBP.i687 = bitcast %union.anon* %2609 to i64*
  %2610 = load i64, i64* %RCX.i686
  %2611 = load i64, i64* %RBP.i687
  %2612 = sub i64 %2611, 100
  %2613 = load i64, i64* %PC.i685
  %2614 = add i64 %2613, 3
  store i64 %2614, i64* %PC.i685
  %2615 = trunc i64 %2610 to i32
  %2616 = inttoptr i64 %2612 to i32*
  %2617 = load i32, i32* %2616
  %2618 = sub i32 %2615, %2617
  %2619 = zext i32 %2618 to i64
  store i64 %2619, i64* %RCX.i686, align 8
  %2620 = icmp ult i32 %2615, %2617
  %2621 = zext i1 %2620 to i8
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2621, i8* %2622, align 1
  %2623 = and i32 %2618, 255
  %2624 = call i32 @llvm.ctpop.i32(i32 %2623)
  %2625 = trunc i32 %2624 to i8
  %2626 = and i8 %2625, 1
  %2627 = xor i8 %2626, 1
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2627, i8* %2628, align 1
  %2629 = xor i32 %2617, %2615
  %2630 = xor i32 %2629, %2618
  %2631 = lshr i32 %2630, 4
  %2632 = trunc i32 %2631 to i8
  %2633 = and i8 %2632, 1
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2633, i8* %2634, align 1
  %2635 = icmp eq i32 %2618, 0
  %2636 = zext i1 %2635 to i8
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2636, i8* %2637, align 1
  %2638 = lshr i32 %2618, 31
  %2639 = trunc i32 %2638 to i8
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2639, i8* %2640, align 1
  %2641 = lshr i32 %2615, 31
  %2642 = lshr i32 %2617, 31
  %2643 = xor i32 %2642, %2641
  %2644 = xor i32 %2638, %2641
  %2645 = add i32 %2644, %2643
  %2646 = icmp eq i32 %2645, 2
  %2647 = zext i1 %2646 to i8
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2647, i8* %2648, align 1
  store %struct.Memory* %loadMem_40973e, %struct.Memory** %MEMORY
  %loadMem_409741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 33
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %2651 to i64*
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 5
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %ECX.i683 = bitcast %union.anon* %2654 to i32*
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 1
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %RAX.i684 = bitcast %union.anon* %2657 to i64*
  %2658 = load i64, i64* %RAX.i684
  %2659 = load i32, i32* %ECX.i683
  %2660 = zext i32 %2659 to i64
  %2661 = load i64, i64* %PC.i682
  %2662 = add i64 %2661, 2
  store i64 %2662, i64* %PC.i682
  %2663 = trunc i64 %2658 to i32
  %2664 = add i32 %2659, %2663
  %2665 = zext i32 %2664 to i64
  store i64 %2665, i64* %RAX.i684, align 8
  %2666 = icmp ult i32 %2664, %2663
  %2667 = icmp ult i32 %2664, %2659
  %2668 = or i1 %2666, %2667
  %2669 = zext i1 %2668 to i8
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2669, i8* %2670, align 1
  %2671 = and i32 %2664, 255
  %2672 = call i32 @llvm.ctpop.i32(i32 %2671)
  %2673 = trunc i32 %2672 to i8
  %2674 = and i8 %2673, 1
  %2675 = xor i8 %2674, 1
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2675, i8* %2676, align 1
  %2677 = xor i64 %2660, %2658
  %2678 = trunc i64 %2677 to i32
  %2679 = xor i32 %2678, %2664
  %2680 = lshr i32 %2679, 4
  %2681 = trunc i32 %2680 to i8
  %2682 = and i8 %2681, 1
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2682, i8* %2683, align 1
  %2684 = icmp eq i32 %2664, 0
  %2685 = zext i1 %2684 to i8
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2685, i8* %2686, align 1
  %2687 = lshr i32 %2664, 31
  %2688 = trunc i32 %2687 to i8
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2688, i8* %2689, align 1
  %2690 = lshr i32 %2663, 31
  %2691 = lshr i32 %2659, 31
  %2692 = xor i32 %2687, %2690
  %2693 = xor i32 %2687, %2691
  %2694 = add i32 %2692, %2693
  %2695 = icmp eq i32 %2694, 2
  %2696 = zext i1 %2695 to i8
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2696, i8* %2697, align 1
  store %struct.Memory* %loadMem_409741, %struct.Memory** %MEMORY
  %loadMem_409743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 1
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RAX.i680 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 15
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RBP.i681 = bitcast %union.anon* %2706 to i64*
  %2707 = load i64, i64* %RAX.i680
  %2708 = load i64, i64* %RBP.i681
  %2709 = sub i64 %2708, 92
  %2710 = load i64, i64* %PC.i679
  %2711 = add i64 %2710, 3
  store i64 %2711, i64* %PC.i679
  %2712 = trunc i64 %2707 to i32
  %2713 = inttoptr i64 %2709 to i32*
  %2714 = load i32, i32* %2713
  %2715 = add i32 %2714, %2712
  %2716 = zext i32 %2715 to i64
  store i64 %2716, i64* %RAX.i680, align 8
  %2717 = icmp ult i32 %2715, %2712
  %2718 = icmp ult i32 %2715, %2714
  %2719 = or i1 %2717, %2718
  %2720 = zext i1 %2719 to i8
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2720, i8* %2721, align 1
  %2722 = and i32 %2715, 255
  %2723 = call i32 @llvm.ctpop.i32(i32 %2722)
  %2724 = trunc i32 %2723 to i8
  %2725 = and i8 %2724, 1
  %2726 = xor i8 %2725, 1
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2726, i8* %2727, align 1
  %2728 = xor i32 %2714, %2712
  %2729 = xor i32 %2728, %2715
  %2730 = lshr i32 %2729, 4
  %2731 = trunc i32 %2730 to i8
  %2732 = and i8 %2731, 1
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2732, i8* %2733, align 1
  %2734 = icmp eq i32 %2715, 0
  %2735 = zext i1 %2734 to i8
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2735, i8* %2736, align 1
  %2737 = lshr i32 %2715, 31
  %2738 = trunc i32 %2737 to i8
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2738, i8* %2739, align 1
  %2740 = lshr i32 %2712, 31
  %2741 = lshr i32 %2714, 31
  %2742 = xor i32 %2737, %2740
  %2743 = xor i32 %2737, %2741
  %2744 = add i32 %2742, %2743
  %2745 = icmp eq i32 %2744, 2
  %2746 = zext i1 %2745 to i8
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2746, i8* %2747, align 1
  store %struct.Memory* %loadMem_409743, %struct.Memory** %MEMORY
  %loadMem_409746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 33
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %2750 to i64*
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 1
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %EAX.i677 = bitcast %union.anon* %2753 to i32*
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 15
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %RBP.i678 = bitcast %union.anon* %2756 to i64*
  %2757 = load i64, i64* %RBP.i678
  %2758 = sub i64 %2757, 92
  %2759 = load i32, i32* %EAX.i677
  %2760 = zext i32 %2759 to i64
  %2761 = load i64, i64* %PC.i676
  %2762 = add i64 %2761, 3
  store i64 %2762, i64* %PC.i676
  %2763 = inttoptr i64 %2758 to i32*
  store i32 %2759, i32* %2763
  store %struct.Memory* %loadMem_409746, %struct.Memory** %MEMORY
  %loadMem_409749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 33
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %2766 to i64*
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 11
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %RDI.i674 = bitcast %union.anon* %2769 to i64*
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 15
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %RBP.i675 = bitcast %union.anon* %2772 to i64*
  %2773 = load i64, i64* %RBP.i675
  %2774 = sub i64 %2773, 92
  %2775 = load i64, i64* %PC.i673
  %2776 = add i64 %2775, 3
  store i64 %2776, i64* %PC.i673
  %2777 = inttoptr i64 %2774 to i32*
  %2778 = load i32, i32* %2777
  %2779 = zext i32 %2778 to i64
  store i64 %2779, i64* %RDI.i674, align 8
  store %struct.Memory* %loadMem_409749, %struct.Memory** %MEMORY
  %loadMem1_40974c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 33
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %2782 to i64*
  %2783 = load i64, i64* %PC.i672
  %2784 = add i64 %2783, 278132
  %2785 = load i64, i64* %PC.i672
  %2786 = add i64 %2785, 5
  %2787 = load i64, i64* %PC.i672
  %2788 = add i64 %2787, 5
  store i64 %2788, i64* %PC.i672
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2790 = load i64, i64* %2789, align 8
  %2791 = add i64 %2790, -8
  %2792 = inttoptr i64 %2791 to i64*
  store i64 %2786, i64* %2792
  store i64 %2791, i64* %2789, align 8
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2784, i64* %2793, align 8
  store %struct.Memory* %loadMem1_40974c, %struct.Memory** %MEMORY
  %loadMem2_40974c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40974c = load i64, i64* %3
  %call2_40974c = call %struct.Memory* @sub_44d5c0.P7AllocTrace(%struct.State* %0, i64 %loadPC_40974c, %struct.Memory* %loadMem2_40974c)
  store %struct.Memory* %call2_40974c, %struct.Memory** %MEMORY
  %loadMem_409751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 33
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %2796 to i64*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 1
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %RAX.i670 = bitcast %union.anon* %2799 to i64*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 15
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %RBP.i671 = bitcast %union.anon* %2802 to i64*
  %2803 = load i64, i64* %RBP.i671
  %2804 = sub i64 %2803, 92
  %2805 = load i64, i64* %PC.i669
  %2806 = add i64 %2805, 3
  store i64 %2806, i64* %PC.i669
  %2807 = inttoptr i64 %2804 to i32*
  %2808 = load i32, i32* %2807
  %2809 = zext i32 %2808 to i64
  store i64 %2809, i64* %RAX.i670, align 8
  store %struct.Memory* %loadMem_409751, %struct.Memory** %MEMORY
  %loadMem_409754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 33
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %2812 to i64*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 9
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %RSI.i667 = bitcast %union.anon* %2815 to i64*
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 15
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %2818 to i64*
  %2819 = load i64, i64* %RBP.i668
  %2820 = sub i64 %2819, 64
  %2821 = load i64, i64* %PC.i666
  %2822 = add i64 %2821, 4
  store i64 %2822, i64* %PC.i666
  %2823 = inttoptr i64 %2820 to i64*
  %2824 = load i64, i64* %2823
  store i64 %2824, i64* %RSI.i667, align 8
  store %struct.Memory* %loadMem_409754, %struct.Memory** %MEMORY
  %loadMem_409758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 33
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %2827 to i64*
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 1
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %EAX.i664 = bitcast %union.anon* %2830 to i32*
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 9
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %RSI.i665 = bitcast %union.anon* %2833 to i64*
  %2834 = load i64, i64* %RSI.i665
  %2835 = load i32, i32* %EAX.i664
  %2836 = zext i32 %2835 to i64
  %2837 = load i64, i64* %PC.i663
  %2838 = add i64 %2837, 2
  store i64 %2838, i64* %PC.i663
  %2839 = inttoptr i64 %2834 to i32*
  store i32 %2835, i32* %2839
  store %struct.Memory* %loadMem_409758, %struct.Memory** %MEMORY
  %loadMem_40975a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 33
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %2842 to i64*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 9
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %RSI.i661 = bitcast %union.anon* %2845 to i64*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 15
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %RBP.i662 = bitcast %union.anon* %2848 to i64*
  %2849 = load i64, i64* %RBP.i662
  %2850 = sub i64 %2849, 64
  %2851 = load i64, i64* %PC.i660
  %2852 = add i64 %2851, 4
  store i64 %2852, i64* %PC.i660
  %2853 = inttoptr i64 %2850 to i64*
  %2854 = load i64, i64* %2853
  store i64 %2854, i64* %RSI.i661, align 8
  store %struct.Memory* %loadMem_40975a, %struct.Memory** %MEMORY
  %loadMem_40975e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 33
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %2857 to i64*
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 9
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %RSI.i659 = bitcast %union.anon* %2860 to i64*
  %2861 = load i64, i64* %RSI.i659
  %2862 = add i64 %2861, 8
  %2863 = load i64, i64* %PC.i658
  %2864 = add i64 %2863, 4
  store i64 %2864, i64* %PC.i658
  %2865 = inttoptr i64 %2862 to i64*
  %2866 = load i64, i64* %2865
  store i64 %2866, i64* %RSI.i659, align 8
  store %struct.Memory* %loadMem_40975e, %struct.Memory** %MEMORY
  %loadMem_409762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 33
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %2869 to i64*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 9
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %RSI.i657 = bitcast %union.anon* %2872 to i64*
  %2873 = load i64, i64* %RSI.i657
  %2874 = load i64, i64* %PC.i656
  %2875 = add i64 %2874, 3
  store i64 %2875, i64* %PC.i656
  %2876 = inttoptr i64 %2873 to i8*
  store i8 4, i8* %2876
  store %struct.Memory* %loadMem_409762, %struct.Memory** %MEMORY
  %loadMem_409765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 33
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %2879 to i64*
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 9
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %RSI.i654 = bitcast %union.anon* %2882 to i64*
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 15
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %RBP.i655 = bitcast %union.anon* %2885 to i64*
  %2886 = load i64, i64* %RBP.i655
  %2887 = sub i64 %2886, 64
  %2888 = load i64, i64* %PC.i653
  %2889 = add i64 %2888, 4
  store i64 %2889, i64* %PC.i653
  %2890 = inttoptr i64 %2887 to i64*
  %2891 = load i64, i64* %2890
  store i64 %2891, i64* %RSI.i654, align 8
  store %struct.Memory* %loadMem_409765, %struct.Memory** %MEMORY
  %loadMem_409769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 33
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %2894 to i64*
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 9
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %RSI.i652 = bitcast %union.anon* %2897 to i64*
  %2898 = load i64, i64* %RSI.i652
  %2899 = add i64 %2898, 16
  %2900 = load i64, i64* %PC.i651
  %2901 = add i64 %2900, 4
  store i64 %2901, i64* %PC.i651
  %2902 = inttoptr i64 %2899 to i64*
  %2903 = load i64, i64* %2902
  store i64 %2903, i64* %RSI.i652, align 8
  store %struct.Memory* %loadMem_409769, %struct.Memory** %MEMORY
  %loadMem_40976d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 33
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %2906 to i64*
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 9
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %RSI.i650 = bitcast %union.anon* %2909 to i64*
  %2910 = load i64, i64* %RSI.i650
  %2911 = load i64, i64* %PC.i649
  %2912 = add i64 %2911, 6
  store i64 %2912, i64* %PC.i649
  %2913 = inttoptr i64 %2910 to i32*
  store i32 0, i32* %2913
  store %struct.Memory* %loadMem_40976d, %struct.Memory** %MEMORY
  %loadMem_409773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 33
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %2916 to i64*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 9
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %RSI.i647 = bitcast %union.anon* %2919 to i64*
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 15
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %2922 to i64*
  %2923 = load i64, i64* %RBP.i648
  %2924 = sub i64 %2923, 64
  %2925 = load i64, i64* %PC.i646
  %2926 = add i64 %2925, 4
  store i64 %2926, i64* %PC.i646
  %2927 = inttoptr i64 %2924 to i64*
  %2928 = load i64, i64* %2927
  store i64 %2928, i64* %RSI.i647, align 8
  store %struct.Memory* %loadMem_409773, %struct.Memory** %MEMORY
  %loadMem_409777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 33
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %2931 to i64*
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 9
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %RSI.i645 = bitcast %union.anon* %2934 to i64*
  %2935 = load i64, i64* %RSI.i645
  %2936 = add i64 %2935, 24
  %2937 = load i64, i64* %PC.i644
  %2938 = add i64 %2937, 4
  store i64 %2938, i64* %PC.i644
  %2939 = inttoptr i64 %2936 to i64*
  %2940 = load i64, i64* %2939
  store i64 %2940, i64* %RSI.i645, align 8
  store %struct.Memory* %loadMem_409777, %struct.Memory** %MEMORY
  %loadMem_40977b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 33
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %2943 to i64*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 9
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %RSI.i643 = bitcast %union.anon* %2946 to i64*
  %2947 = load i64, i64* %RSI.i643
  %2948 = load i64, i64* %PC.i642
  %2949 = add i64 %2948, 6
  store i64 %2949, i64* %PC.i642
  %2950 = inttoptr i64 %2947 to i32*
  store i32 0, i32* %2950
  store %struct.Memory* %loadMem_40977b, %struct.Memory** %MEMORY
  %loadMem_409781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 33
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %2953 to i64*
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 9
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %RSI.i640 = bitcast %union.anon* %2956 to i64*
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 15
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %RBP.i641 = bitcast %union.anon* %2959 to i64*
  %2960 = load i64, i64* %RBP.i641
  %2961 = sub i64 %2960, 64
  %2962 = load i64, i64* %PC.i639
  %2963 = add i64 %2962, 4
  store i64 %2963, i64* %PC.i639
  %2964 = inttoptr i64 %2961 to i64*
  %2965 = load i64, i64* %2964
  store i64 %2965, i64* %RSI.i640, align 8
  store %struct.Memory* %loadMem_409781, %struct.Memory** %MEMORY
  %loadMem_409785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 33
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %2968 to i64*
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2970 = getelementptr inbounds %struct.GPR, %struct.GPR* %2969, i32 0, i32 9
  %2971 = getelementptr inbounds %struct.Reg, %struct.Reg* %2970, i32 0, i32 0
  %RSI.i638 = bitcast %union.anon* %2971 to i64*
  %2972 = load i64, i64* %RSI.i638
  %2973 = add i64 %2972, 8
  %2974 = load i64, i64* %PC.i637
  %2975 = add i64 %2974, 4
  store i64 %2975, i64* %PC.i637
  %2976 = inttoptr i64 %2973 to i64*
  %2977 = load i64, i64* %2976
  store i64 %2977, i64* %RSI.i638, align 8
  store %struct.Memory* %loadMem_409785, %struct.Memory** %MEMORY
  %loadMem_409789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 33
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %2980 to i64*
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 9
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %RSI.i636 = bitcast %union.anon* %2983 to i64*
  %2984 = load i64, i64* %RSI.i636
  %2985 = add i64 %2984, 1
  %2986 = load i64, i64* %PC.i635
  %2987 = add i64 %2986, 4
  store i64 %2987, i64* %PC.i635
  %2988 = inttoptr i64 %2985 to i8*
  store i8 5, i8* %2988
  store %struct.Memory* %loadMem_409789, %struct.Memory** %MEMORY
  %loadMem_40978d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 33
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 9
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %RSI.i633 = bitcast %union.anon* %2994 to i64*
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 15
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %2997 to i64*
  %2998 = load i64, i64* %RBP.i634
  %2999 = sub i64 %2998, 64
  %3000 = load i64, i64* %PC.i632
  %3001 = add i64 %3000, 4
  store i64 %3001, i64* %PC.i632
  %3002 = inttoptr i64 %2999 to i64*
  %3003 = load i64, i64* %3002
  store i64 %3003, i64* %RSI.i633, align 8
  store %struct.Memory* %loadMem_40978d, %struct.Memory** %MEMORY
  %loadMem_409791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 33
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 9
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RSI.i631 = bitcast %union.anon* %3009 to i64*
  %3010 = load i64, i64* %RSI.i631
  %3011 = add i64 %3010, 16
  %3012 = load i64, i64* %PC.i630
  %3013 = add i64 %3012, 4
  store i64 %3013, i64* %PC.i630
  %3014 = inttoptr i64 %3011 to i64*
  %3015 = load i64, i64* %3014
  store i64 %3015, i64* %RSI.i631, align 8
  store %struct.Memory* %loadMem_409791, %struct.Memory** %MEMORY
  %loadMem_409795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 33
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %3018 to i64*
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 9
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %RSI.i629 = bitcast %union.anon* %3021 to i64*
  %3022 = load i64, i64* %RSI.i629
  %3023 = add i64 %3022, 4
  %3024 = load i64, i64* %PC.i628
  %3025 = add i64 %3024, 7
  store i64 %3025, i64* %PC.i628
  %3026 = inttoptr i64 %3023 to i32*
  store i32 0, i32* %3026
  store %struct.Memory* %loadMem_409795, %struct.Memory** %MEMORY
  %loadMem_40979c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 33
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %3029 to i64*
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3031 = getelementptr inbounds %struct.GPR, %struct.GPR* %3030, i32 0, i32 9
  %3032 = getelementptr inbounds %struct.Reg, %struct.Reg* %3031, i32 0, i32 0
  %RSI.i626 = bitcast %union.anon* %3032 to i64*
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 15
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %3035 to i64*
  %3036 = load i64, i64* %RBP.i627
  %3037 = sub i64 %3036, 64
  %3038 = load i64, i64* %PC.i625
  %3039 = add i64 %3038, 4
  store i64 %3039, i64* %PC.i625
  %3040 = inttoptr i64 %3037 to i64*
  %3041 = load i64, i64* %3040
  store i64 %3041, i64* %RSI.i626, align 8
  store %struct.Memory* %loadMem_40979c, %struct.Memory** %MEMORY
  %loadMem_4097a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 33
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %3044 to i64*
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 9
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %RSI.i624 = bitcast %union.anon* %3047 to i64*
  %3048 = load i64, i64* %RSI.i624
  %3049 = add i64 %3048, 24
  %3050 = load i64, i64* %PC.i623
  %3051 = add i64 %3050, 4
  store i64 %3051, i64* %PC.i623
  %3052 = inttoptr i64 %3049 to i64*
  %3053 = load i64, i64* %3052
  store i64 %3053, i64* %RSI.i624, align 8
  store %struct.Memory* %loadMem_4097a0, %struct.Memory** %MEMORY
  %loadMem_4097a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 33
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %3056 to i64*
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 9
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %RSI.i622 = bitcast %union.anon* %3059 to i64*
  %3060 = load i64, i64* %RSI.i622
  %3061 = add i64 %3060, 4
  %3062 = load i64, i64* %PC.i621
  %3063 = add i64 %3062, 7
  store i64 %3063, i64* %PC.i621
  %3064 = inttoptr i64 %3061 to i32*
  store i32 0, i32* %3064
  store %struct.Memory* %loadMem_4097a4, %struct.Memory** %MEMORY
  %loadMem_4097ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 33
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %3067 to i64*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 15
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %3070 to i64*
  %3071 = load i64, i64* %RBP.i620
  %3072 = sub i64 %3071, 88
  %3073 = load i64, i64* %PC.i619
  %3074 = add i64 %3073, 7
  store i64 %3074, i64* %PC.i619
  %3075 = inttoptr i64 %3072 to i32*
  store i32 2, i32* %3075
  store %struct.Memory* %loadMem_4097ab, %struct.Memory** %MEMORY
  %loadMem_4097b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 33
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %3078 to i64*
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3080 = getelementptr inbounds %struct.GPR, %struct.GPR* %3079, i32 0, i32 15
  %3081 = getelementptr inbounds %struct.Reg, %struct.Reg* %3080, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %3081 to i64*
  %3082 = load i64, i64* %RBP.i618
  %3083 = sub i64 %3082, 84
  %3084 = load i64, i64* %PC.i617
  %3085 = add i64 %3084, 7
  store i64 %3085, i64* %PC.i617
  %3086 = inttoptr i64 %3083 to i32*
  store i32 1, i32* %3086
  store %struct.Memory* %loadMem_4097b2, %struct.Memory** %MEMORY
  br label %block_.L_4097b9

block_.L_4097b9:                                  ; preds = %block_4097cd, %block_.L_40972e
  %loadMem_4097b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 33
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %3089 to i64*
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 1
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %RAX.i615 = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 15
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %RBP.i616 = bitcast %union.anon* %3095 to i64*
  %3096 = load i64, i64* %RBP.i616
  %3097 = sub i64 %3096, 84
  %3098 = load i64, i64* %PC.i614
  %3099 = add i64 %3098, 3
  store i64 %3099, i64* %PC.i614
  %3100 = inttoptr i64 %3097 to i32*
  %3101 = load i32, i32* %3100
  %3102 = zext i32 %3101 to i64
  store i64 %3102, i64* %RAX.i615, align 8
  store %struct.Memory* %loadMem_4097b9, %struct.Memory** %MEMORY
  %loadMem_4097bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 33
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %3105 to i64*
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 5
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %RCX.i612 = bitcast %union.anon* %3108 to i64*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 15
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %RBP.i613 = bitcast %union.anon* %3111 to i64*
  %3112 = load i64, i64* %RBP.i613
  %3113 = sub i64 %3112, 56
  %3114 = load i64, i64* %PC.i611
  %3115 = add i64 %3114, 4
  store i64 %3115, i64* %PC.i611
  %3116 = inttoptr i64 %3113 to i64*
  %3117 = load i64, i64* %3116
  store i64 %3117, i64* %RCX.i612, align 8
  store %struct.Memory* %loadMem_4097bc, %struct.Memory** %MEMORY
  %loadMem_4097c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 33
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %3120 to i64*
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 5
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %RCX.i610 = bitcast %union.anon* %3123 to i64*
  %3124 = load i64, i64* %RCX.i610
  %3125 = add i64 %3124, 24
  %3126 = load i64, i64* %PC.i609
  %3127 = add i64 %3126, 4
  store i64 %3127, i64* %PC.i609
  %3128 = inttoptr i64 %3125 to i64*
  %3129 = load i64, i64* %3128
  store i64 %3129, i64* %RCX.i610, align 8
  store %struct.Memory* %loadMem_4097c0, %struct.Memory** %MEMORY
  %loadMem_4097c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 33
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %3132 to i64*
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 1
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %EAX.i607 = bitcast %union.anon* %3135 to i32*
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 5
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %RCX.i608 = bitcast %union.anon* %3138 to i64*
  %3139 = load i32, i32* %EAX.i607
  %3140 = zext i32 %3139 to i64
  %3141 = load i64, i64* %RCX.i608
  %3142 = add i64 %3141, 4
  %3143 = load i64, i64* %PC.i606
  %3144 = add i64 %3143, 3
  store i64 %3144, i64* %PC.i606
  %3145 = inttoptr i64 %3142 to i32*
  %3146 = load i32, i32* %3145
  %3147 = sub i32 %3139, %3146
  %3148 = icmp ult i32 %3139, %3146
  %3149 = zext i1 %3148 to i8
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3149, i8* %3150, align 1
  %3151 = and i32 %3147, 255
  %3152 = call i32 @llvm.ctpop.i32(i32 %3151)
  %3153 = trunc i32 %3152 to i8
  %3154 = and i8 %3153, 1
  %3155 = xor i8 %3154, 1
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3155, i8* %3156, align 1
  %3157 = xor i32 %3146, %3139
  %3158 = xor i32 %3157, %3147
  %3159 = lshr i32 %3158, 4
  %3160 = trunc i32 %3159 to i8
  %3161 = and i8 %3160, 1
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3161, i8* %3162, align 1
  %3163 = icmp eq i32 %3147, 0
  %3164 = zext i1 %3163 to i8
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3164, i8* %3165, align 1
  %3166 = lshr i32 %3147, 31
  %3167 = trunc i32 %3166 to i8
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3167, i8* %3168, align 1
  %3169 = lshr i32 %3139, 31
  %3170 = lshr i32 %3146, 31
  %3171 = xor i32 %3170, %3169
  %3172 = xor i32 %3166, %3169
  %3173 = add i32 %3172, %3171
  %3174 = icmp eq i32 %3173, 2
  %3175 = zext i1 %3174 to i8
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3175, i8* %3176, align 1
  store %struct.Memory* %loadMem_4097c4, %struct.Memory** %MEMORY
  %loadMem_4097c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 33
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %3179 to i64*
  %3180 = load i64, i64* %PC.i605
  %3181 = add i64 %3180, 82
  %3182 = load i64, i64* %PC.i605
  %3183 = add i64 %3182, 6
  %3184 = load i64, i64* %PC.i605
  %3185 = add i64 %3184, 6
  store i64 %3185, i64* %PC.i605
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3187 = load i8, i8* %3186, align 1
  %3188 = icmp eq i8 %3187, 0
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3190 = load i8, i8* %3189, align 1
  %3191 = icmp ne i8 %3190, 0
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3193 = load i8, i8* %3192, align 1
  %3194 = icmp ne i8 %3193, 0
  %3195 = xor i1 %3191, %3194
  %3196 = xor i1 %3195, true
  %3197 = and i1 %3188, %3196
  %3198 = zext i1 %3197 to i8
  store i8 %3198, i8* %BRANCH_TAKEN, align 1
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3200 = select i1 %3197, i64 %3181, i64 %3183
  store i64 %3200, i64* %3199, align 8
  store %struct.Memory* %loadMem_4097c7, %struct.Memory** %MEMORY
  %loadBr_4097c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4097c7 = icmp eq i8 %loadBr_4097c7, 1
  br i1 %cmpBr_4097c7, label %block_.L_409819, label %block_4097cd

block_4097cd:                                     ; preds = %block_.L_4097b9
  %loadMem_4097cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 33
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %3203 to i64*
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 1
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %RAX.i603 = bitcast %union.anon* %3206 to i64*
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3208 = getelementptr inbounds %struct.GPR, %struct.GPR* %3207, i32 0, i32 15
  %3209 = getelementptr inbounds %struct.Reg, %struct.Reg* %3208, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %3209 to i64*
  %3210 = load i64, i64* %RBP.i604
  %3211 = sub i64 %3210, 64
  %3212 = load i64, i64* %PC.i602
  %3213 = add i64 %3212, 4
  store i64 %3213, i64* %PC.i602
  %3214 = inttoptr i64 %3211 to i64*
  %3215 = load i64, i64* %3214
  store i64 %3215, i64* %RAX.i603, align 8
  store %struct.Memory* %loadMem_4097cd, %struct.Memory** %MEMORY
  %loadMem_4097d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 33
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %3218 to i64*
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 1
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %RAX.i601 = bitcast %union.anon* %3221 to i64*
  %3222 = load i64, i64* %RAX.i601
  %3223 = add i64 %3222, 8
  %3224 = load i64, i64* %PC.i600
  %3225 = add i64 %3224, 4
  store i64 %3225, i64* %PC.i600
  %3226 = inttoptr i64 %3223 to i64*
  %3227 = load i64, i64* %3226
  store i64 %3227, i64* %RAX.i601, align 8
  store %struct.Memory* %loadMem_4097d1, %struct.Memory** %MEMORY
  %loadMem_4097d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 33
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %3230 to i64*
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 5
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %RCX.i598 = bitcast %union.anon* %3233 to i64*
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 15
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %3236 to i64*
  %3237 = load i64, i64* %RBP.i599
  %3238 = sub i64 %3237, 88
  %3239 = load i64, i64* %PC.i597
  %3240 = add i64 %3239, 4
  store i64 %3240, i64* %PC.i597
  %3241 = inttoptr i64 %3238 to i32*
  %3242 = load i32, i32* %3241
  %3243 = sext i32 %3242 to i64
  store i64 %3243, i64* %RCX.i598, align 8
  store %struct.Memory* %loadMem_4097d5, %struct.Memory** %MEMORY
  %loadMem_4097d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 33
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %3246 to i64*
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 1
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %3249 to i64*
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 5
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %RCX.i596 = bitcast %union.anon* %3252 to i64*
  %3253 = load i64, i64* %RAX.i595
  %3254 = load i64, i64* %RCX.i596
  %3255 = add i64 %3254, %3253
  %3256 = load i64, i64* %PC.i594
  %3257 = add i64 %3256, 4
  store i64 %3257, i64* %PC.i594
  %3258 = inttoptr i64 %3255 to i8*
  store i8 5, i8* %3258
  store %struct.Memory* %loadMem_4097d9, %struct.Memory** %MEMORY
  %loadMem_4097dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 33
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %3261 to i64*
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 1
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %RAX.i592 = bitcast %union.anon* %3264 to i64*
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 15
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %3267 to i64*
  %3268 = load i64, i64* %RBP.i593
  %3269 = sub i64 %3268, 64
  %3270 = load i64, i64* %PC.i591
  %3271 = add i64 %3270, 4
  store i64 %3271, i64* %PC.i591
  %3272 = inttoptr i64 %3269 to i64*
  %3273 = load i64, i64* %3272
  store i64 %3273, i64* %RAX.i592, align 8
  store %struct.Memory* %loadMem_4097dd, %struct.Memory** %MEMORY
  %loadMem_4097e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 33
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %3276 to i64*
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 1
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %RAX.i590 = bitcast %union.anon* %3279 to i64*
  %3280 = load i64, i64* %RAX.i590
  %3281 = add i64 %3280, 16
  %3282 = load i64, i64* %PC.i589
  %3283 = add i64 %3282, 4
  store i64 %3283, i64* %PC.i589
  %3284 = inttoptr i64 %3281 to i64*
  %3285 = load i64, i64* %3284
  store i64 %3285, i64* %RAX.i590, align 8
  store %struct.Memory* %loadMem_4097e1, %struct.Memory** %MEMORY
  %loadMem_4097e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 33
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %3288 to i64*
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 5
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %RCX.i587 = bitcast %union.anon* %3291 to i64*
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 15
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %3294 to i64*
  %3295 = load i64, i64* %RBP.i588
  %3296 = sub i64 %3295, 88
  %3297 = load i64, i64* %PC.i586
  %3298 = add i64 %3297, 4
  store i64 %3298, i64* %PC.i586
  %3299 = inttoptr i64 %3296 to i32*
  %3300 = load i32, i32* %3299
  %3301 = sext i32 %3300 to i64
  store i64 %3301, i64* %RCX.i587, align 8
  store %struct.Memory* %loadMem_4097e5, %struct.Memory** %MEMORY
  %loadMem_4097e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 33
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %3304 to i64*
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 1
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %3307 to i64*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 5
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %RCX.i585 = bitcast %union.anon* %3310 to i64*
  %3311 = load i64, i64* %RAX.i584
  %3312 = load i64, i64* %RCX.i585
  %3313 = mul i64 %3312, 4
  %3314 = add i64 %3313, %3311
  %3315 = load i64, i64* %PC.i583
  %3316 = add i64 %3315, 7
  store i64 %3316, i64* %PC.i583
  %3317 = inttoptr i64 %3314 to i32*
  store i32 0, i32* %3317
  store %struct.Memory* %loadMem_4097e9, %struct.Memory** %MEMORY
  %loadMem_4097f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 33
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %3320 to i64*
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 7
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %RDX.i581 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 15
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %3326 to i64*
  %3327 = load i64, i64* %RBP.i582
  %3328 = sub i64 %3327, 84
  %3329 = load i64, i64* %PC.i580
  %3330 = add i64 %3329, 3
  store i64 %3330, i64* %PC.i580
  %3331 = inttoptr i64 %3328 to i32*
  %3332 = load i32, i32* %3331
  %3333 = zext i32 %3332 to i64
  store i64 %3333, i64* %RDX.i581, align 8
  store %struct.Memory* %loadMem_4097f0, %struct.Memory** %MEMORY
  %loadMem_4097f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 33
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %3336 to i64*
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 1
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %3339 to i64*
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 15
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %3342 to i64*
  %3343 = load i64, i64* %RBP.i579
  %3344 = sub i64 %3343, 64
  %3345 = load i64, i64* %PC.i577
  %3346 = add i64 %3345, 4
  store i64 %3346, i64* %PC.i577
  %3347 = inttoptr i64 %3344 to i64*
  %3348 = load i64, i64* %3347
  store i64 %3348, i64* %RAX.i578, align 8
  store %struct.Memory* %loadMem_4097f3, %struct.Memory** %MEMORY
  %loadMem_4097f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3350 = getelementptr inbounds %struct.GPR, %struct.GPR* %3349, i32 0, i32 33
  %3351 = getelementptr inbounds %struct.Reg, %struct.Reg* %3350, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3351 to i64*
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3353 = getelementptr inbounds %struct.GPR, %struct.GPR* %3352, i32 0, i32 1
  %3354 = getelementptr inbounds %struct.Reg, %struct.Reg* %3353, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %3354 to i64*
  %3355 = load i64, i64* %RAX.i576
  %3356 = add i64 %3355, 24
  %3357 = load i64, i64* %PC.i575
  %3358 = add i64 %3357, 4
  store i64 %3358, i64* %PC.i575
  %3359 = inttoptr i64 %3356 to i64*
  %3360 = load i64, i64* %3359
  store i64 %3360, i64* %RAX.i576, align 8
  store %struct.Memory* %loadMem_4097f7, %struct.Memory** %MEMORY
  %loadMem_4097fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 33
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %3363 to i64*
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3365 = getelementptr inbounds %struct.GPR, %struct.GPR* %3364, i32 0, i32 5
  %3366 = getelementptr inbounds %struct.Reg, %struct.Reg* %3365, i32 0, i32 0
  %RCX.i573 = bitcast %union.anon* %3366 to i64*
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 15
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %3369 to i64*
  %3370 = load i64, i64* %RBP.i574
  %3371 = sub i64 %3370, 88
  %3372 = load i64, i64* %PC.i572
  %3373 = add i64 %3372, 4
  store i64 %3373, i64* %PC.i572
  %3374 = inttoptr i64 %3371 to i32*
  %3375 = load i32, i32* %3374
  %3376 = sext i32 %3375 to i64
  store i64 %3376, i64* %RCX.i573, align 8
  store %struct.Memory* %loadMem_4097fb, %struct.Memory** %MEMORY
  %loadMem_4097ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 33
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %3379 to i64*
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 7
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %EDX.i569 = bitcast %union.anon* %3382 to i32*
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 1
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %3385 to i64*
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 5
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %RCX.i571 = bitcast %union.anon* %3388 to i64*
  %3389 = load i64, i64* %RAX.i570
  %3390 = load i64, i64* %RCX.i571
  %3391 = mul i64 %3390, 4
  %3392 = add i64 %3391, %3389
  %3393 = load i32, i32* %EDX.i569
  %3394 = zext i32 %3393 to i64
  %3395 = load i64, i64* %PC.i568
  %3396 = add i64 %3395, 3
  store i64 %3396, i64* %PC.i568
  %3397 = inttoptr i64 %3392 to i32*
  store i32 %3393, i32* %3397
  store %struct.Memory* %loadMem_4097ff, %struct.Memory** %MEMORY
  %loadMem_409802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3399 = getelementptr inbounds %struct.GPR, %struct.GPR* %3398, i32 0, i32 33
  %3400 = getelementptr inbounds %struct.Reg, %struct.Reg* %3399, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %3400 to i64*
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 7
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %RDX.i566 = bitcast %union.anon* %3403 to i64*
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 15
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %RBP.i567 = bitcast %union.anon* %3406 to i64*
  %3407 = load i64, i64* %RBP.i567
  %3408 = sub i64 %3407, 88
  %3409 = load i64, i64* %PC.i565
  %3410 = add i64 %3409, 3
  store i64 %3410, i64* %PC.i565
  %3411 = inttoptr i64 %3408 to i32*
  %3412 = load i32, i32* %3411
  %3413 = zext i32 %3412 to i64
  store i64 %3413, i64* %RDX.i566, align 8
  store %struct.Memory* %loadMem_409802, %struct.Memory** %MEMORY
  %loadMem_409805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 33
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %3416 to i64*
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 7
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %RDX.i564 = bitcast %union.anon* %3419 to i64*
  %3420 = load i64, i64* %RDX.i564
  %3421 = load i64, i64* %PC.i563
  %3422 = add i64 %3421, 3
  store i64 %3422, i64* %PC.i563
  %3423 = trunc i64 %3420 to i32
  %3424 = add i32 1, %3423
  %3425 = zext i32 %3424 to i64
  store i64 %3425, i64* %RDX.i564, align 8
  %3426 = icmp ult i32 %3424, %3423
  %3427 = icmp ult i32 %3424, 1
  %3428 = or i1 %3426, %3427
  %3429 = zext i1 %3428 to i8
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3429, i8* %3430, align 1
  %3431 = and i32 %3424, 255
  %3432 = call i32 @llvm.ctpop.i32(i32 %3431)
  %3433 = trunc i32 %3432 to i8
  %3434 = and i8 %3433, 1
  %3435 = xor i8 %3434, 1
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3435, i8* %3436, align 1
  %3437 = xor i64 1, %3420
  %3438 = trunc i64 %3437 to i32
  %3439 = xor i32 %3438, %3424
  %3440 = lshr i32 %3439, 4
  %3441 = trunc i32 %3440 to i8
  %3442 = and i8 %3441, 1
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3442, i8* %3443, align 1
  %3444 = icmp eq i32 %3424, 0
  %3445 = zext i1 %3444 to i8
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3445, i8* %3446, align 1
  %3447 = lshr i32 %3424, 31
  %3448 = trunc i32 %3447 to i8
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3448, i8* %3449, align 1
  %3450 = lshr i32 %3423, 31
  %3451 = xor i32 %3447, %3450
  %3452 = add i32 %3451, %3447
  %3453 = icmp eq i32 %3452, 2
  %3454 = zext i1 %3453 to i8
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3454, i8* %3455, align 1
  store %struct.Memory* %loadMem_409805, %struct.Memory** %MEMORY
  %loadMem_409808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 33
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %3458 to i64*
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 7
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %EDX.i561 = bitcast %union.anon* %3461 to i32*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 15
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %3464 to i64*
  %3465 = load i64, i64* %RBP.i562
  %3466 = sub i64 %3465, 88
  %3467 = load i32, i32* %EDX.i561
  %3468 = zext i32 %3467 to i64
  %3469 = load i64, i64* %PC.i560
  %3470 = add i64 %3469, 3
  store i64 %3470, i64* %PC.i560
  %3471 = inttoptr i64 %3466 to i32*
  store i32 %3467, i32* %3471
  store %struct.Memory* %loadMem_409808, %struct.Memory** %MEMORY
  %loadMem_40980b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 33
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %3474 to i64*
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 1
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %RAX.i558 = bitcast %union.anon* %3477 to i64*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 15
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %RBP.i559 = bitcast %union.anon* %3480 to i64*
  %3481 = load i64, i64* %RBP.i559
  %3482 = sub i64 %3481, 84
  %3483 = load i64, i64* %PC.i557
  %3484 = add i64 %3483, 3
  store i64 %3484, i64* %PC.i557
  %3485 = inttoptr i64 %3482 to i32*
  %3486 = load i32, i32* %3485
  %3487 = zext i32 %3486 to i64
  store i64 %3487, i64* %RAX.i558, align 8
  store %struct.Memory* %loadMem_40980b, %struct.Memory** %MEMORY
  %loadMem_40980e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 33
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %3490 to i64*
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 1
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %RAX.i556 = bitcast %union.anon* %3493 to i64*
  %3494 = load i64, i64* %RAX.i556
  %3495 = load i64, i64* %PC.i555
  %3496 = add i64 %3495, 3
  store i64 %3496, i64* %PC.i555
  %3497 = trunc i64 %3494 to i32
  %3498 = add i32 1, %3497
  %3499 = zext i32 %3498 to i64
  store i64 %3499, i64* %RAX.i556, align 8
  %3500 = icmp ult i32 %3498, %3497
  %3501 = icmp ult i32 %3498, 1
  %3502 = or i1 %3500, %3501
  %3503 = zext i1 %3502 to i8
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3503, i8* %3504, align 1
  %3505 = and i32 %3498, 255
  %3506 = call i32 @llvm.ctpop.i32(i32 %3505)
  %3507 = trunc i32 %3506 to i8
  %3508 = and i8 %3507, 1
  %3509 = xor i8 %3508, 1
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3509, i8* %3510, align 1
  %3511 = xor i64 1, %3494
  %3512 = trunc i64 %3511 to i32
  %3513 = xor i32 %3512, %3498
  %3514 = lshr i32 %3513, 4
  %3515 = trunc i32 %3514 to i8
  %3516 = and i8 %3515, 1
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3516, i8* %3517, align 1
  %3518 = icmp eq i32 %3498, 0
  %3519 = zext i1 %3518 to i8
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3519, i8* %3520, align 1
  %3521 = lshr i32 %3498, 31
  %3522 = trunc i32 %3521 to i8
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3522, i8* %3523, align 1
  %3524 = lshr i32 %3497, 31
  %3525 = xor i32 %3521, %3524
  %3526 = add i32 %3525, %3521
  %3527 = icmp eq i32 %3526, 2
  %3528 = zext i1 %3527 to i8
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3528, i8* %3529, align 1
  store %struct.Memory* %loadMem_40980e, %struct.Memory** %MEMORY
  %loadMem_409811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 33
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %3532 to i64*
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3534 = getelementptr inbounds %struct.GPR, %struct.GPR* %3533, i32 0, i32 1
  %3535 = getelementptr inbounds %struct.Reg, %struct.Reg* %3534, i32 0, i32 0
  %EAX.i553 = bitcast %union.anon* %3535 to i32*
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 15
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %3538 to i64*
  %3539 = load i64, i64* %RBP.i554
  %3540 = sub i64 %3539, 84
  %3541 = load i32, i32* %EAX.i553
  %3542 = zext i32 %3541 to i64
  %3543 = load i64, i64* %PC.i552
  %3544 = add i64 %3543, 3
  store i64 %3544, i64* %PC.i552
  %3545 = inttoptr i64 %3540 to i32*
  store i32 %3541, i32* %3545
  store %struct.Memory* %loadMem_409811, %struct.Memory** %MEMORY
  %loadMem_409814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 33
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %3548 to i64*
  %3549 = load i64, i64* %PC.i551
  %3550 = add i64 %3549, -91
  %3551 = load i64, i64* %PC.i551
  %3552 = add i64 %3551, 5
  store i64 %3552, i64* %PC.i551
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3550, i64* %3553, align 8
  store %struct.Memory* %loadMem_409814, %struct.Memory** %MEMORY
  br label %block_.L_4097b9

block_.L_409819:                                  ; preds = %block_.L_4097b9
  %loadMem_409819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 33
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %3556 to i64*
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3558 = getelementptr inbounds %struct.GPR, %struct.GPR* %3557, i32 0, i32 15
  %3559 = getelementptr inbounds %struct.Reg, %struct.Reg* %3558, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %3559 to i64*
  %3560 = load i64, i64* %RBP.i550
  %3561 = sub i64 %3560, 80
  %3562 = load i64, i64* %PC.i549
  %3563 = add i64 %3562, 7
  store i64 %3563, i64* %PC.i549
  %3564 = inttoptr i64 %3561 to i32*
  store i32 0, i32* %3564
  store %struct.Memory* %loadMem_409819, %struct.Memory** %MEMORY
  br label %block_.L_409820

block_.L_409820:                                  ; preds = %block_.L_409a28, %block_.L_409819
  %loadMem_409820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 1
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %RAX.i547 = bitcast %union.anon* %3570 to i64*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 15
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %3573 to i64*
  %3574 = load i64, i64* %RBP.i548
  %3575 = sub i64 %3574, 80
  %3576 = load i64, i64* %PC.i546
  %3577 = add i64 %3576, 3
  store i64 %3577, i64* %PC.i546
  %3578 = inttoptr i64 %3575 to i32*
  %3579 = load i32, i32* %3578
  %3580 = zext i32 %3579 to i64
  store i64 %3580, i64* %RAX.i547, align 8
  store %struct.Memory* %loadMem_409820, %struct.Memory** %MEMORY
  %loadMem_409823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 33
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %3583 to i64*
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 1
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %EAX.i544 = bitcast %union.anon* %3586 to i32*
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3588 = getelementptr inbounds %struct.GPR, %struct.GPR* %3587, i32 0, i32 15
  %3589 = getelementptr inbounds %struct.Reg, %struct.Reg* %3588, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %3589 to i64*
  %3590 = load i32, i32* %EAX.i544
  %3591 = zext i32 %3590 to i64
  %3592 = load i64, i64* %RBP.i545
  %3593 = sub i64 %3592, 76
  %3594 = load i64, i64* %PC.i543
  %3595 = add i64 %3594, 3
  store i64 %3595, i64* %PC.i543
  %3596 = inttoptr i64 %3593 to i32*
  %3597 = load i32, i32* %3596
  %3598 = sub i32 %3590, %3597
  %3599 = icmp ult i32 %3590, %3597
  %3600 = zext i1 %3599 to i8
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3600, i8* %3601, align 1
  %3602 = and i32 %3598, 255
  %3603 = call i32 @llvm.ctpop.i32(i32 %3602)
  %3604 = trunc i32 %3603 to i8
  %3605 = and i8 %3604, 1
  %3606 = xor i8 %3605, 1
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3606, i8* %3607, align 1
  %3608 = xor i32 %3597, %3590
  %3609 = xor i32 %3608, %3598
  %3610 = lshr i32 %3609, 4
  %3611 = trunc i32 %3610 to i8
  %3612 = and i8 %3611, 1
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3612, i8* %3613, align 1
  %3614 = icmp eq i32 %3598, 0
  %3615 = zext i1 %3614 to i8
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3615, i8* %3616, align 1
  %3617 = lshr i32 %3598, 31
  %3618 = trunc i32 %3617 to i8
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3618, i8* %3619, align 1
  %3620 = lshr i32 %3590, 31
  %3621 = lshr i32 %3597, 31
  %3622 = xor i32 %3621, %3620
  %3623 = xor i32 %3617, %3620
  %3624 = add i32 %3623, %3622
  %3625 = icmp eq i32 %3624, 2
  %3626 = zext i1 %3625 to i8
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3626, i8* %3627, align 1
  store %struct.Memory* %loadMem_409823, %struct.Memory** %MEMORY
  %loadMem_409826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 33
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %3630 to i64*
  %3631 = load i64, i64* %PC.i542
  %3632 = add i64 %3631, 528
  %3633 = load i64, i64* %PC.i542
  %3634 = add i64 %3633, 6
  %3635 = load i64, i64* %PC.i542
  %3636 = add i64 %3635, 6
  store i64 %3636, i64* %PC.i542
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3638 = load i8, i8* %3637, align 1
  %3639 = icmp ne i8 %3638, 0
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3641 = load i8, i8* %3640, align 1
  %3642 = icmp ne i8 %3641, 0
  %3643 = xor i1 %3639, %3642
  %3644 = xor i1 %3643, true
  %3645 = zext i1 %3644 to i8
  store i8 %3645, i8* %BRANCH_TAKEN, align 1
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3647 = select i1 %3643, i64 %3634, i64 %3632
  store i64 %3647, i64* %3646, align 8
  store %struct.Memory* %loadMem_409826, %struct.Memory** %MEMORY
  %loadBr_409826 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409826 = icmp eq i8 %loadBr_409826, 1
  br i1 %cmpBr_409826, label %block_.L_409a36, label %block_40982c

block_40982c:                                     ; preds = %block_.L_409820
  %loadMem_40982c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3649 = getelementptr inbounds %struct.GPR, %struct.GPR* %3648, i32 0, i32 33
  %3650 = getelementptr inbounds %struct.Reg, %struct.Reg* %3649, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %3650 to i64*
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3652 = getelementptr inbounds %struct.GPR, %struct.GPR* %3651, i32 0, i32 15
  %3653 = getelementptr inbounds %struct.Reg, %struct.Reg* %3652, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %3653 to i64*
  %3654 = load i64, i64* %RBP.i541
  %3655 = sub i64 %3654, 108
  %3656 = load i64, i64* %PC.i540
  %3657 = add i64 %3656, 7
  store i64 %3657, i64* %PC.i540
  %3658 = inttoptr i64 %3655 to i32*
  store i32 2, i32* %3658
  store %struct.Memory* %loadMem_40982c, %struct.Memory** %MEMORY
  br label %block_.L_409833

block_.L_409833:                                  ; preds = %block_.L_40990e, %block_40982c
  %loadMem_409833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 33
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %3661 to i64*
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 1
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %3664 to i64*
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3666 = getelementptr inbounds %struct.GPR, %struct.GPR* %3665, i32 0, i32 15
  %3667 = getelementptr inbounds %struct.Reg, %struct.Reg* %3666, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %3667 to i64*
  %3668 = load i64, i64* %RBP.i539
  %3669 = sub i64 %3668, 108
  %3670 = load i64, i64* %PC.i537
  %3671 = add i64 %3670, 3
  store i64 %3671, i64* %PC.i537
  %3672 = inttoptr i64 %3669 to i32*
  %3673 = load i32, i32* %3672
  %3674 = zext i32 %3673 to i64
  store i64 %3674, i64* %RAX.i538, align 8
  store %struct.Memory* %loadMem_409833, %struct.Memory** %MEMORY
  %loadMem_409836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 33
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3677 to i64*
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 5
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %3680 to i64*
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3682 = getelementptr inbounds %struct.GPR, %struct.GPR* %3681, i32 0, i32 15
  %3683 = getelementptr inbounds %struct.Reg, %struct.Reg* %3682, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %3683 to i64*
  %3684 = load i64, i64* %RBP.i536
  %3685 = sub i64 %3684, 72
  %3686 = load i64, i64* %PC.i534
  %3687 = add i64 %3686, 4
  store i64 %3687, i64* %PC.i534
  %3688 = inttoptr i64 %3685 to i64*
  %3689 = load i64, i64* %3688
  store i64 %3689, i64* %RCX.i535, align 8
  store %struct.Memory* %loadMem_409836, %struct.Memory** %MEMORY
  %loadMem_40983a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 33
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %3692 to i64*
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3694 = getelementptr inbounds %struct.GPR, %struct.GPR* %3693, i32 0, i32 7
  %3695 = getelementptr inbounds %struct.Reg, %struct.Reg* %3694, i32 0, i32 0
  %RDX.i532 = bitcast %union.anon* %3695 to i64*
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3697 = getelementptr inbounds %struct.GPR, %struct.GPR* %3696, i32 0, i32 15
  %3698 = getelementptr inbounds %struct.Reg, %struct.Reg* %3697, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %3698 to i64*
  %3699 = load i64, i64* %RBP.i533
  %3700 = sub i64 %3699, 80
  %3701 = load i64, i64* %PC.i531
  %3702 = add i64 %3701, 4
  store i64 %3702, i64* %PC.i531
  %3703 = inttoptr i64 %3700 to i32*
  %3704 = load i32, i32* %3703
  %3705 = sext i32 %3704 to i64
  store i64 %3705, i64* %RDX.i532, align 8
  store %struct.Memory* %loadMem_40983a, %struct.Memory** %MEMORY
  %loadMem_40983e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 33
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %3708 to i64*
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 5
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %RCX.i529 = bitcast %union.anon* %3711 to i64*
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 7
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %RDX.i530 = bitcast %union.anon* %3714 to i64*
  %3715 = load i64, i64* %RCX.i529
  %3716 = load i64, i64* %RDX.i530
  %3717 = mul i64 %3716, 8
  %3718 = add i64 %3717, %3715
  %3719 = load i64, i64* %PC.i528
  %3720 = add i64 %3719, 4
  store i64 %3720, i64* %PC.i528
  %3721 = inttoptr i64 %3718 to i64*
  %3722 = load i64, i64* %3721
  store i64 %3722, i64* %RCX.i529, align 8
  store %struct.Memory* %loadMem_40983e, %struct.Memory** %MEMORY
  %loadMem_409842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3724 = getelementptr inbounds %struct.GPR, %struct.GPR* %3723, i32 0, i32 33
  %3725 = getelementptr inbounds %struct.Reg, %struct.Reg* %3724, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %3725 to i64*
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 5
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %RCX.i526 = bitcast %union.anon* %3728 to i64*
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 9
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %RSI.i527 = bitcast %union.anon* %3731 to i64*
  %3732 = load i64, i64* %RCX.i526
  %3733 = load i64, i64* %PC.i525
  %3734 = add i64 %3733, 2
  store i64 %3734, i64* %PC.i525
  %3735 = inttoptr i64 %3732 to i32*
  %3736 = load i32, i32* %3735
  %3737 = zext i32 %3736 to i64
  store i64 %3737, i64* %RSI.i527, align 8
  store %struct.Memory* %loadMem_409842, %struct.Memory** %MEMORY
  %loadMem_409844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 33
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %3740 to i64*
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3742 = getelementptr inbounds %struct.GPR, %struct.GPR* %3741, i32 0, i32 9
  %3743 = getelementptr inbounds %struct.Reg, %struct.Reg* %3742, i32 0, i32 0
  %RSI.i524 = bitcast %union.anon* %3743 to i64*
  %3744 = load i64, i64* %RSI.i524
  %3745 = load i64, i64* %PC.i523
  %3746 = add i64 %3745, 3
  store i64 %3746, i64* %PC.i523
  %3747 = trunc i64 %3744 to i32
  %3748 = sub i32 %3747, 2
  %3749 = zext i32 %3748 to i64
  store i64 %3749, i64* %RSI.i524, align 8
  %3750 = icmp ult i32 %3747, 2
  %3751 = zext i1 %3750 to i8
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3751, i8* %3752, align 1
  %3753 = and i32 %3748, 255
  %3754 = call i32 @llvm.ctpop.i32(i32 %3753)
  %3755 = trunc i32 %3754 to i8
  %3756 = and i8 %3755, 1
  %3757 = xor i8 %3756, 1
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3757, i8* %3758, align 1
  %3759 = xor i64 2, %3744
  %3760 = trunc i64 %3759 to i32
  %3761 = xor i32 %3760, %3748
  %3762 = lshr i32 %3761, 4
  %3763 = trunc i32 %3762 to i8
  %3764 = and i8 %3763, 1
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3764, i8* %3765, align 1
  %3766 = icmp eq i32 %3748, 0
  %3767 = zext i1 %3766 to i8
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3767, i8* %3768, align 1
  %3769 = lshr i32 %3748, 31
  %3770 = trunc i32 %3769 to i8
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3770, i8* %3771, align 1
  %3772 = lshr i32 %3747, 31
  %3773 = xor i32 %3769, %3772
  %3774 = add i32 %3773, %3772
  %3775 = icmp eq i32 %3774, 2
  %3776 = zext i1 %3775 to i8
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3776, i8* %3777, align 1
  store %struct.Memory* %loadMem_409844, %struct.Memory** %MEMORY
  %loadMem_409847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 33
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %3780 to i64*
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 1
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %EAX.i521 = bitcast %union.anon* %3783 to i32*
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 9
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %ESI.i522 = bitcast %union.anon* %3786 to i32*
  %3787 = load i32, i32* %EAX.i521
  %3788 = zext i32 %3787 to i64
  %3789 = load i32, i32* %ESI.i522
  %3790 = zext i32 %3789 to i64
  %3791 = load i64, i64* %PC.i520
  %3792 = add i64 %3791, 2
  store i64 %3792, i64* %PC.i520
  %3793 = sub i32 %3787, %3789
  %3794 = icmp ult i32 %3787, %3789
  %3795 = zext i1 %3794 to i8
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3795, i8* %3796, align 1
  %3797 = and i32 %3793, 255
  %3798 = call i32 @llvm.ctpop.i32(i32 %3797)
  %3799 = trunc i32 %3798 to i8
  %3800 = and i8 %3799, 1
  %3801 = xor i8 %3800, 1
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3801, i8* %3802, align 1
  %3803 = xor i64 %3790, %3788
  %3804 = trunc i64 %3803 to i32
  %3805 = xor i32 %3804, %3793
  %3806 = lshr i32 %3805, 4
  %3807 = trunc i32 %3806 to i8
  %3808 = and i8 %3807, 1
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3808, i8* %3809, align 1
  %3810 = icmp eq i32 %3793, 0
  %3811 = zext i1 %3810 to i8
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3811, i8* %3812, align 1
  %3813 = lshr i32 %3793, 31
  %3814 = trunc i32 %3813 to i8
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3814, i8* %3815, align 1
  %3816 = lshr i32 %3787, 31
  %3817 = lshr i32 %3789, 31
  %3818 = xor i32 %3817, %3816
  %3819 = xor i32 %3813, %3816
  %3820 = add i32 %3819, %3818
  %3821 = icmp eq i32 %3820, 2
  %3822 = zext i1 %3821 to i8
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3822, i8* %3823, align 1
  store %struct.Memory* %loadMem_409847, %struct.Memory** %MEMORY
  %loadMem_409849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3825 = getelementptr inbounds %struct.GPR, %struct.GPR* %3824, i32 0, i32 33
  %3826 = getelementptr inbounds %struct.Reg, %struct.Reg* %3825, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %3826 to i64*
  %3827 = load i64, i64* %PC.i519
  %3828 = add i64 %3827, 220
  %3829 = load i64, i64* %PC.i519
  %3830 = add i64 %3829, 6
  %3831 = load i64, i64* %PC.i519
  %3832 = add i64 %3831, 6
  store i64 %3832, i64* %PC.i519
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3834 = load i8, i8* %3833, align 1
  %3835 = icmp ne i8 %3834, 0
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3837 = load i8, i8* %3836, align 1
  %3838 = icmp ne i8 %3837, 0
  %3839 = xor i1 %3835, %3838
  %3840 = xor i1 %3839, true
  %3841 = zext i1 %3840 to i8
  store i8 %3841, i8* %BRANCH_TAKEN, align 1
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3843 = select i1 %3839, i64 %3830, i64 %3828
  store i64 %3843, i64* %3842, align 8
  store %struct.Memory* %loadMem_409849, %struct.Memory** %MEMORY
  %loadBr_409849 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409849 = icmp eq i8 %loadBr_409849, 1
  br i1 %cmpBr_409849, label %block_.L_409925, label %block_40984f

block_40984f:                                     ; preds = %block_.L_409833
  %loadMem_40984f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 33
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %3846 to i64*
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 1
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %3849 to i64*
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 15
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %3852 to i64*
  %3853 = load i64, i64* %RBP.i518
  %3854 = sub i64 %3853, 72
  %3855 = load i64, i64* %PC.i516
  %3856 = add i64 %3855, 4
  store i64 %3856, i64* %PC.i516
  %3857 = inttoptr i64 %3854 to i64*
  %3858 = load i64, i64* %3857
  store i64 %3858, i64* %RAX.i517, align 8
  store %struct.Memory* %loadMem_40984f, %struct.Memory** %MEMORY
  %loadMem_409853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3860 = getelementptr inbounds %struct.GPR, %struct.GPR* %3859, i32 0, i32 33
  %3861 = getelementptr inbounds %struct.Reg, %struct.Reg* %3860, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %3861 to i64*
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3863 = getelementptr inbounds %struct.GPR, %struct.GPR* %3862, i32 0, i32 5
  %3864 = getelementptr inbounds %struct.Reg, %struct.Reg* %3863, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %3864 to i64*
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 15
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %3867 to i64*
  %3868 = load i64, i64* %RBP.i515
  %3869 = sub i64 %3868, 80
  %3870 = load i64, i64* %PC.i513
  %3871 = add i64 %3870, 4
  store i64 %3871, i64* %PC.i513
  %3872 = inttoptr i64 %3869 to i32*
  %3873 = load i32, i32* %3872
  %3874 = sext i32 %3873 to i64
  store i64 %3874, i64* %RCX.i514, align 8
  store %struct.Memory* %loadMem_409853, %struct.Memory** %MEMORY
  %loadMem_409857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3876 = getelementptr inbounds %struct.GPR, %struct.GPR* %3875, i32 0, i32 33
  %3877 = getelementptr inbounds %struct.Reg, %struct.Reg* %3876, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %3877 to i64*
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 1
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %3880 to i64*
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 5
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %RCX.i512 = bitcast %union.anon* %3883 to i64*
  %3884 = load i64, i64* %RAX.i511
  %3885 = load i64, i64* %RCX.i512
  %3886 = mul i64 %3885, 8
  %3887 = add i64 %3886, %3884
  %3888 = load i64, i64* %PC.i510
  %3889 = add i64 %3888, 4
  store i64 %3889, i64* %PC.i510
  %3890 = inttoptr i64 %3887 to i64*
  %3891 = load i64, i64* %3890
  store i64 %3891, i64* %RAX.i511, align 8
  store %struct.Memory* %loadMem_409857, %struct.Memory** %MEMORY
  %loadMem_40985b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 33
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %3894 to i64*
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 1
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %3897 to i64*
  %3898 = load i64, i64* %RAX.i509
  %3899 = add i64 %3898, 8
  %3900 = load i64, i64* %PC.i508
  %3901 = add i64 %3900, 4
  store i64 %3901, i64* %PC.i508
  %3902 = inttoptr i64 %3899 to i64*
  %3903 = load i64, i64* %3902
  store i64 %3903, i64* %RAX.i509, align 8
  store %struct.Memory* %loadMem_40985b, %struct.Memory** %MEMORY
  %loadMem_40985f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 33
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %3906 to i64*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 5
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %RCX.i506 = bitcast %union.anon* %3909 to i64*
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 15
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %3912 to i64*
  %3913 = load i64, i64* %RBP.i507
  %3914 = sub i64 %3913, 108
  %3915 = load i64, i64* %PC.i505
  %3916 = add i64 %3915, 4
  store i64 %3916, i64* %PC.i505
  %3917 = inttoptr i64 %3914 to i32*
  %3918 = load i32, i32* %3917
  %3919 = sext i32 %3918 to i64
  store i64 %3919, i64* %RCX.i506, align 8
  store %struct.Memory* %loadMem_40985f, %struct.Memory** %MEMORY
  %loadMem_409863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 33
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %3922 to i64*
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 7
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %3926 = bitcast %union.anon* %3925 to %struct.anon.2*
  %DL.i502 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3926, i32 0, i32 0
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3928 = getelementptr inbounds %struct.GPR, %struct.GPR* %3927, i32 0, i32 1
  %3929 = getelementptr inbounds %struct.Reg, %struct.Reg* %3928, i32 0, i32 0
  %RAX.i503 = bitcast %union.anon* %3929 to i64*
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3931 = getelementptr inbounds %struct.GPR, %struct.GPR* %3930, i32 0, i32 5
  %3932 = getelementptr inbounds %struct.Reg, %struct.Reg* %3931, i32 0, i32 0
  %RCX.i504 = bitcast %union.anon* %3932 to i64*
  %3933 = load i64, i64* %RAX.i503
  %3934 = load i64, i64* %RCX.i504
  %3935 = add i64 %3934, %3933
  %3936 = load i64, i64* %PC.i501
  %3937 = add i64 %3936, 3
  store i64 %3937, i64* %PC.i501
  %3938 = inttoptr i64 %3935 to i8*
  %3939 = load i8, i8* %3938
  store i8 %3939, i8* %DL.i502, align 1
  store %struct.Memory* %loadMem_409863, %struct.Memory** %MEMORY
  %loadMem_409866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3941 = getelementptr inbounds %struct.GPR, %struct.GPR* %3940, i32 0, i32 33
  %3942 = getelementptr inbounds %struct.Reg, %struct.Reg* %3941, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %3942 to i64*
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3944 = getelementptr inbounds %struct.GPR, %struct.GPR* %3943, i32 0, i32 1
  %3945 = getelementptr inbounds %struct.Reg, %struct.Reg* %3944, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %3945 to i64*
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 15
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %3948 to i64*
  %3949 = load i64, i64* %RBP.i500
  %3950 = sub i64 %3949, 64
  %3951 = load i64, i64* %PC.i498
  %3952 = add i64 %3951, 4
  store i64 %3952, i64* %PC.i498
  %3953 = inttoptr i64 %3950 to i64*
  %3954 = load i64, i64* %3953
  store i64 %3954, i64* %RAX.i499, align 8
  store %struct.Memory* %loadMem_409866, %struct.Memory** %MEMORY
  %loadMem_40986a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 33
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %3957 to i64*
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 1
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %3960 to i64*
  %3961 = load i64, i64* %RAX.i497
  %3962 = add i64 %3961, 8
  %3963 = load i64, i64* %PC.i496
  %3964 = add i64 %3963, 4
  store i64 %3964, i64* %PC.i496
  %3965 = inttoptr i64 %3962 to i64*
  %3966 = load i64, i64* %3965
  store i64 %3966, i64* %RAX.i497, align 8
  store %struct.Memory* %loadMem_40986a, %struct.Memory** %MEMORY
  %loadMem_40986e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 33
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %3969 to i64*
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 5
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %RCX.i494 = bitcast %union.anon* %3972 to i64*
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 15
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %3975 to i64*
  %3976 = load i64, i64* %RBP.i495
  %3977 = sub i64 %3976, 88
  %3978 = load i64, i64* %PC.i493
  %3979 = add i64 %3978, 4
  store i64 %3979, i64* %PC.i493
  %3980 = inttoptr i64 %3977 to i32*
  %3981 = load i32, i32* %3980
  %3982 = sext i32 %3981 to i64
  store i64 %3982, i64* %RCX.i494, align 8
  store %struct.Memory* %loadMem_40986e, %struct.Memory** %MEMORY
  %loadMem_409872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 33
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %3985 to i64*
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 7
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %3989 = bitcast %union.anon* %3988 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3989, i32 0, i32 0
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 1
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %3992 to i64*
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 5
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %RCX.i492 = bitcast %union.anon* %3995 to i64*
  %3996 = load i64, i64* %RAX.i491
  %3997 = load i64, i64* %RCX.i492
  %3998 = add i64 %3997, %3996
  %3999 = load i8, i8* %DL.i
  %4000 = zext i8 %3999 to i64
  %4001 = load i64, i64* %PC.i490
  %4002 = add i64 %4001, 3
  store i64 %4002, i64* %PC.i490
  %4003 = inttoptr i64 %3998 to i8*
  store i8 %3999, i8* %4003
  store %struct.Memory* %loadMem_409872, %struct.Memory** %MEMORY
  %loadMem_409875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 33
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %4006 to i64*
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 1
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %RAX.i488 = bitcast %union.anon* %4009 to i64*
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 15
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %4012 to i64*
  %4013 = load i64, i64* %RBP.i489
  %4014 = sub i64 %4013, 72
  %4015 = load i64, i64* %PC.i487
  %4016 = add i64 %4015, 4
  store i64 %4016, i64* %PC.i487
  %4017 = inttoptr i64 %4014 to i64*
  %4018 = load i64, i64* %4017
  store i64 %4018, i64* %RAX.i488, align 8
  store %struct.Memory* %loadMem_409875, %struct.Memory** %MEMORY
  %loadMem_409879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4020 = getelementptr inbounds %struct.GPR, %struct.GPR* %4019, i32 0, i32 33
  %4021 = getelementptr inbounds %struct.Reg, %struct.Reg* %4020, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %4021 to i64*
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4023 = getelementptr inbounds %struct.GPR, %struct.GPR* %4022, i32 0, i32 5
  %4024 = getelementptr inbounds %struct.Reg, %struct.Reg* %4023, i32 0, i32 0
  %RCX.i485 = bitcast %union.anon* %4024 to i64*
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4026 = getelementptr inbounds %struct.GPR, %struct.GPR* %4025, i32 0, i32 15
  %4027 = getelementptr inbounds %struct.Reg, %struct.Reg* %4026, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %4027 to i64*
  %4028 = load i64, i64* %RBP.i486
  %4029 = sub i64 %4028, 80
  %4030 = load i64, i64* %PC.i484
  %4031 = add i64 %4030, 4
  store i64 %4031, i64* %PC.i484
  %4032 = inttoptr i64 %4029 to i32*
  %4033 = load i32, i32* %4032
  %4034 = sext i32 %4033 to i64
  store i64 %4034, i64* %RCX.i485, align 8
  store %struct.Memory* %loadMem_409879, %struct.Memory** %MEMORY
  %loadMem_40987d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4036 = getelementptr inbounds %struct.GPR, %struct.GPR* %4035, i32 0, i32 33
  %4037 = getelementptr inbounds %struct.Reg, %struct.Reg* %4036, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %4037 to i64*
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 1
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %4040 to i64*
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 5
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %RCX.i483 = bitcast %union.anon* %4043 to i64*
  %4044 = load i64, i64* %RAX.i482
  %4045 = load i64, i64* %RCX.i483
  %4046 = mul i64 %4045, 8
  %4047 = add i64 %4046, %4044
  %4048 = load i64, i64* %PC.i481
  %4049 = add i64 %4048, 4
  store i64 %4049, i64* %PC.i481
  %4050 = inttoptr i64 %4047 to i64*
  %4051 = load i64, i64* %4050
  store i64 %4051, i64* %RAX.i482, align 8
  store %struct.Memory* %loadMem_40987d, %struct.Memory** %MEMORY
  %loadMem_409881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4053 = getelementptr inbounds %struct.GPR, %struct.GPR* %4052, i32 0, i32 33
  %4054 = getelementptr inbounds %struct.Reg, %struct.Reg* %4053, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %4054 to i64*
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4056 = getelementptr inbounds %struct.GPR, %struct.GPR* %4055, i32 0, i32 1
  %4057 = getelementptr inbounds %struct.Reg, %struct.Reg* %4056, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %4057 to i64*
  %4058 = load i64, i64* %RAX.i480
  %4059 = add i64 %4058, 16
  %4060 = load i64, i64* %PC.i479
  %4061 = add i64 %4060, 4
  store i64 %4061, i64* %PC.i479
  %4062 = inttoptr i64 %4059 to i64*
  %4063 = load i64, i64* %4062
  store i64 %4063, i64* %RAX.i480, align 8
  store %struct.Memory* %loadMem_409881, %struct.Memory** %MEMORY
  %loadMem_409885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 33
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %4066 to i64*
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 5
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %RCX.i477 = bitcast %union.anon* %4069 to i64*
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 15
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %4072 to i64*
  %4073 = load i64, i64* %RBP.i478
  %4074 = sub i64 %4073, 108
  %4075 = load i64, i64* %PC.i476
  %4076 = add i64 %4075, 4
  store i64 %4076, i64* %PC.i476
  %4077 = inttoptr i64 %4074 to i32*
  %4078 = load i32, i32* %4077
  %4079 = sext i32 %4078 to i64
  store i64 %4079, i64* %RCX.i477, align 8
  store %struct.Memory* %loadMem_409885, %struct.Memory** %MEMORY
  %loadMem_409889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 33
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %4082 to i64*
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 1
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %4085 to i64*
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4087 = getelementptr inbounds %struct.GPR, %struct.GPR* %4086, i32 0, i32 5
  %4088 = getelementptr inbounds %struct.Reg, %struct.Reg* %4087, i32 0, i32 0
  %RCX.i474 = bitcast %union.anon* %4088 to i64*
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4090 = getelementptr inbounds %struct.GPR, %struct.GPR* %4089, i32 0, i32 9
  %4091 = getelementptr inbounds %struct.Reg, %struct.Reg* %4090, i32 0, i32 0
  %RSI.i475 = bitcast %union.anon* %4091 to i64*
  %4092 = load i64, i64* %RAX.i473
  %4093 = load i64, i64* %RCX.i474
  %4094 = mul i64 %4093, 4
  %4095 = add i64 %4094, %4092
  %4096 = load i64, i64* %PC.i472
  %4097 = add i64 %4096, 3
  store i64 %4097, i64* %PC.i472
  %4098 = inttoptr i64 %4095 to i32*
  %4099 = load i32, i32* %4098
  %4100 = zext i32 %4099 to i64
  store i64 %4100, i64* %RSI.i475, align 8
  store %struct.Memory* %loadMem_409889, %struct.Memory** %MEMORY
  %loadMem_40988c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4102 = getelementptr inbounds %struct.GPR, %struct.GPR* %4101, i32 0, i32 33
  %4103 = getelementptr inbounds %struct.Reg, %struct.Reg* %4102, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %4103 to i64*
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 1
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %RAX.i470 = bitcast %union.anon* %4106 to i64*
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 15
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %4109 to i64*
  %4110 = load i64, i64* %RBP.i471
  %4111 = sub i64 %4110, 64
  %4112 = load i64, i64* %PC.i469
  %4113 = add i64 %4112, 4
  store i64 %4113, i64* %PC.i469
  %4114 = inttoptr i64 %4111 to i64*
  %4115 = load i64, i64* %4114
  store i64 %4115, i64* %RAX.i470, align 8
  store %struct.Memory* %loadMem_40988c, %struct.Memory** %MEMORY
  %loadMem_409890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 33
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %4118 to i64*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 1
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %4121 to i64*
  %4122 = load i64, i64* %RAX.i468
  %4123 = add i64 %4122, 16
  %4124 = load i64, i64* %PC.i467
  %4125 = add i64 %4124, 4
  store i64 %4125, i64* %PC.i467
  %4126 = inttoptr i64 %4123 to i64*
  %4127 = load i64, i64* %4126
  store i64 %4127, i64* %RAX.i468, align 8
  store %struct.Memory* %loadMem_409890, %struct.Memory** %MEMORY
  %loadMem_409894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 33
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %4130 to i64*
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 5
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %RCX.i465 = bitcast %union.anon* %4133 to i64*
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4135 = getelementptr inbounds %struct.GPR, %struct.GPR* %4134, i32 0, i32 15
  %4136 = getelementptr inbounds %struct.Reg, %struct.Reg* %4135, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %4136 to i64*
  %4137 = load i64, i64* %RBP.i466
  %4138 = sub i64 %4137, 88
  %4139 = load i64, i64* %PC.i464
  %4140 = add i64 %4139, 4
  store i64 %4140, i64* %PC.i464
  %4141 = inttoptr i64 %4138 to i32*
  %4142 = load i32, i32* %4141
  %4143 = sext i32 %4142 to i64
  store i64 %4143, i64* %RCX.i465, align 8
  store %struct.Memory* %loadMem_409894, %struct.Memory** %MEMORY
  %loadMem_409898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 33
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %4146 to i64*
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 9
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %ESI.i461 = bitcast %union.anon* %4149 to i32*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 1
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %4152 to i64*
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 5
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %RCX.i463 = bitcast %union.anon* %4155 to i64*
  %4156 = load i64, i64* %RAX.i462
  %4157 = load i64, i64* %RCX.i463
  %4158 = mul i64 %4157, 4
  %4159 = add i64 %4158, %4156
  %4160 = load i32, i32* %ESI.i461
  %4161 = zext i32 %4160 to i64
  %4162 = load i64, i64* %PC.i460
  %4163 = add i64 %4162, 3
  store i64 %4163, i64* %PC.i460
  %4164 = inttoptr i64 %4159 to i32*
  store i32 %4160, i32* %4164
  store %struct.Memory* %loadMem_409898, %struct.Memory** %MEMORY
  %loadMem_40989b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 33
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %4167 to i64*
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4169 = getelementptr inbounds %struct.GPR, %struct.GPR* %4168, i32 0, i32 1
  %4170 = getelementptr inbounds %struct.Reg, %struct.Reg* %4169, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %4170 to i64*
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4172 = getelementptr inbounds %struct.GPR, %struct.GPR* %4171, i32 0, i32 15
  %4173 = getelementptr inbounds %struct.Reg, %struct.Reg* %4172, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %4173 to i64*
  %4174 = load i64, i64* %RBP.i459
  %4175 = sub i64 %4174, 72
  %4176 = load i64, i64* %PC.i457
  %4177 = add i64 %4176, 4
  store i64 %4177, i64* %PC.i457
  %4178 = inttoptr i64 %4175 to i64*
  %4179 = load i64, i64* %4178
  store i64 %4179, i64* %RAX.i458, align 8
  store %struct.Memory* %loadMem_40989b, %struct.Memory** %MEMORY
  %loadMem_40989f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4181 = getelementptr inbounds %struct.GPR, %struct.GPR* %4180, i32 0, i32 33
  %4182 = getelementptr inbounds %struct.Reg, %struct.Reg* %4181, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %4182 to i64*
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4184 = getelementptr inbounds %struct.GPR, %struct.GPR* %4183, i32 0, i32 5
  %4185 = getelementptr inbounds %struct.Reg, %struct.Reg* %4184, i32 0, i32 0
  %RCX.i455 = bitcast %union.anon* %4185 to i64*
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 15
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %4188 to i64*
  %4189 = load i64, i64* %RBP.i456
  %4190 = sub i64 %4189, 80
  %4191 = load i64, i64* %PC.i454
  %4192 = add i64 %4191, 4
  store i64 %4192, i64* %PC.i454
  %4193 = inttoptr i64 %4190 to i32*
  %4194 = load i32, i32* %4193
  %4195 = sext i32 %4194 to i64
  store i64 %4195, i64* %RCX.i455, align 8
  store %struct.Memory* %loadMem_40989f, %struct.Memory** %MEMORY
  %loadMem_4098a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4197 = getelementptr inbounds %struct.GPR, %struct.GPR* %4196, i32 0, i32 33
  %4198 = getelementptr inbounds %struct.Reg, %struct.Reg* %4197, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %4198 to i64*
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 1
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %4201 to i64*
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 5
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %RCX.i453 = bitcast %union.anon* %4204 to i64*
  %4205 = load i64, i64* %RAX.i452
  %4206 = load i64, i64* %RCX.i453
  %4207 = mul i64 %4206, 8
  %4208 = add i64 %4207, %4205
  %4209 = load i64, i64* %PC.i451
  %4210 = add i64 %4209, 4
  store i64 %4210, i64* %PC.i451
  %4211 = inttoptr i64 %4208 to i64*
  %4212 = load i64, i64* %4211
  store i64 %4212, i64* %RAX.i452, align 8
  store %struct.Memory* %loadMem_4098a3, %struct.Memory** %MEMORY
  %loadMem_4098a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4214 = getelementptr inbounds %struct.GPR, %struct.GPR* %4213, i32 0, i32 33
  %4215 = getelementptr inbounds %struct.Reg, %struct.Reg* %4214, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %4215 to i64*
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4217 = getelementptr inbounds %struct.GPR, %struct.GPR* %4216, i32 0, i32 1
  %4218 = getelementptr inbounds %struct.Reg, %struct.Reg* %4217, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %4218 to i64*
  %4219 = load i64, i64* %RAX.i450
  %4220 = add i64 %4219, 24
  %4221 = load i64, i64* %PC.i449
  %4222 = add i64 %4221, 4
  store i64 %4222, i64* %PC.i449
  %4223 = inttoptr i64 %4220 to i64*
  %4224 = load i64, i64* %4223
  store i64 %4224, i64* %RAX.i450, align 8
  store %struct.Memory* %loadMem_4098a7, %struct.Memory** %MEMORY
  %loadMem_4098ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4226 = getelementptr inbounds %struct.GPR, %struct.GPR* %4225, i32 0, i32 33
  %4227 = getelementptr inbounds %struct.Reg, %struct.Reg* %4226, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %4227 to i64*
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4229 = getelementptr inbounds %struct.GPR, %struct.GPR* %4228, i32 0, i32 5
  %4230 = getelementptr inbounds %struct.Reg, %struct.Reg* %4229, i32 0, i32 0
  %RCX.i447 = bitcast %union.anon* %4230 to i64*
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4232 = getelementptr inbounds %struct.GPR, %struct.GPR* %4231, i32 0, i32 15
  %4233 = getelementptr inbounds %struct.Reg, %struct.Reg* %4232, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %4233 to i64*
  %4234 = load i64, i64* %RBP.i448
  %4235 = sub i64 %4234, 108
  %4236 = load i64, i64* %PC.i446
  %4237 = add i64 %4236, 4
  store i64 %4237, i64* %PC.i446
  %4238 = inttoptr i64 %4235 to i32*
  %4239 = load i32, i32* %4238
  %4240 = sext i32 %4239 to i64
  store i64 %4240, i64* %RCX.i447, align 8
  store %struct.Memory* %loadMem_4098ab, %struct.Memory** %MEMORY
  %loadMem_4098af = load %struct.Memory*, %struct.Memory** %MEMORY
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4242 = getelementptr inbounds %struct.GPR, %struct.GPR* %4241, i32 0, i32 33
  %4243 = getelementptr inbounds %struct.Reg, %struct.Reg* %4242, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %4243 to i64*
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4245 = getelementptr inbounds %struct.GPR, %struct.GPR* %4244, i32 0, i32 1
  %4246 = getelementptr inbounds %struct.Reg, %struct.Reg* %4245, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %4246 to i64*
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4248 = getelementptr inbounds %struct.GPR, %struct.GPR* %4247, i32 0, i32 5
  %4249 = getelementptr inbounds %struct.Reg, %struct.Reg* %4248, i32 0, i32 0
  %RCX.i445 = bitcast %union.anon* %4249 to i64*
  %4250 = load i64, i64* %RAX.i444
  %4251 = load i64, i64* %RCX.i445
  %4252 = mul i64 %4251, 4
  %4253 = add i64 %4252, %4250
  %4254 = load i64, i64* %PC.i443
  %4255 = add i64 %4254, 4
  store i64 %4255, i64* %PC.i443
  %4256 = inttoptr i64 %4253 to i32*
  %4257 = load i32, i32* %4256
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4258, align 1
  %4259 = and i32 %4257, 255
  %4260 = call i32 @llvm.ctpop.i32(i32 %4259)
  %4261 = trunc i32 %4260 to i8
  %4262 = and i8 %4261, 1
  %4263 = xor i8 %4262, 1
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4263, i8* %4264, align 1
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4265, align 1
  %4266 = icmp eq i32 %4257, 0
  %4267 = zext i1 %4266 to i8
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4267, i8* %4268, align 1
  %4269 = lshr i32 %4257, 31
  %4270 = trunc i32 %4269 to i8
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4270, i8* %4271, align 1
  %4272 = lshr i32 %4257, 31
  %4273 = xor i32 %4269, %4272
  %4274 = add i32 %4273, %4272
  %4275 = icmp eq i32 %4274, 2
  %4276 = zext i1 %4275 to i8
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4276, i8* %4277, align 1
  store %struct.Memory* %loadMem_4098af, %struct.Memory** %MEMORY
  %loadMem_4098b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4279 = getelementptr inbounds %struct.GPR, %struct.GPR* %4278, i32 0, i32 33
  %4280 = getelementptr inbounds %struct.Reg, %struct.Reg* %4279, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %4280 to i64*
  %4281 = load i64, i64* %PC.i442
  %4282 = add i64 %4281, 72
  %4283 = load i64, i64* %PC.i442
  %4284 = add i64 %4283, 6
  %4285 = load i64, i64* %PC.i442
  %4286 = add i64 %4285, 6
  store i64 %4286, i64* %PC.i442
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4288 = load i8, i8* %4287, align 1
  %4289 = icmp ne i8 %4288, 0
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4291 = load i8, i8* %4290, align 1
  %4292 = icmp ne i8 %4291, 0
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4294 = load i8, i8* %4293, align 1
  %4295 = icmp ne i8 %4294, 0
  %4296 = xor i1 %4292, %4295
  %4297 = or i1 %4289, %4296
  %4298 = zext i1 %4297 to i8
  store i8 %4298, i8* %BRANCH_TAKEN, align 1
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4300 = select i1 %4297, i64 %4282, i64 %4284
  store i64 %4300, i64* %4299, align 8
  store %struct.Memory* %loadMem_4098b3, %struct.Memory** %MEMORY
  %loadBr_4098b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4098b3 = icmp eq i8 %loadBr_4098b3, 1
  br i1 %cmpBr_4098b3, label %block_.L_4098fb, label %block_4098b9

block_4098b9:                                     ; preds = %block_40984f
  %loadMem_4098b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 33
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %4303 to i64*
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4305 = getelementptr inbounds %struct.GPR, %struct.GPR* %4304, i32 0, i32 1
  %4306 = getelementptr inbounds %struct.Reg, %struct.Reg* %4305, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %4306 to i64*
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 15
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %4309 to i64*
  %4310 = load i64, i64* %RBP.i441
  %4311 = sub i64 %4310, 72
  %4312 = load i64, i64* %PC.i439
  %4313 = add i64 %4312, 4
  store i64 %4313, i64* %PC.i439
  %4314 = inttoptr i64 %4311 to i64*
  %4315 = load i64, i64* %4314
  store i64 %4315, i64* %RAX.i440, align 8
  store %struct.Memory* %loadMem_4098b9, %struct.Memory** %MEMORY
  %loadMem_4098bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 33
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %4318 to i64*
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 5
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %4321 to i64*
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4323 = getelementptr inbounds %struct.GPR, %struct.GPR* %4322, i32 0, i32 15
  %4324 = getelementptr inbounds %struct.Reg, %struct.Reg* %4323, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %4324 to i64*
  %4325 = load i64, i64* %RBP.i438
  %4326 = sub i64 %4325, 80
  %4327 = load i64, i64* %PC.i436
  %4328 = add i64 %4327, 4
  store i64 %4328, i64* %PC.i436
  %4329 = inttoptr i64 %4326 to i32*
  %4330 = load i32, i32* %4329
  %4331 = sext i32 %4330 to i64
  store i64 %4331, i64* %RCX.i437, align 8
  store %struct.Memory* %loadMem_4098bd, %struct.Memory** %MEMORY
  %loadMem_4098c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4333 = getelementptr inbounds %struct.GPR, %struct.GPR* %4332, i32 0, i32 33
  %4334 = getelementptr inbounds %struct.Reg, %struct.Reg* %4333, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %4334 to i64*
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4336 = getelementptr inbounds %struct.GPR, %struct.GPR* %4335, i32 0, i32 1
  %4337 = getelementptr inbounds %struct.Reg, %struct.Reg* %4336, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %4337 to i64*
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4339 = getelementptr inbounds %struct.GPR, %struct.GPR* %4338, i32 0, i32 5
  %4340 = getelementptr inbounds %struct.Reg, %struct.Reg* %4339, i32 0, i32 0
  %RCX.i435 = bitcast %union.anon* %4340 to i64*
  %4341 = load i64, i64* %RAX.i434
  %4342 = load i64, i64* %RCX.i435
  %4343 = mul i64 %4342, 8
  %4344 = add i64 %4343, %4341
  %4345 = load i64, i64* %PC.i433
  %4346 = add i64 %4345, 4
  store i64 %4346, i64* %PC.i433
  %4347 = inttoptr i64 %4344 to i64*
  %4348 = load i64, i64* %4347
  store i64 %4348, i64* %RAX.i434, align 8
  store %struct.Memory* %loadMem_4098c1, %struct.Memory** %MEMORY
  %loadMem_4098c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4350 = getelementptr inbounds %struct.GPR, %struct.GPR* %4349, i32 0, i32 33
  %4351 = getelementptr inbounds %struct.Reg, %struct.Reg* %4350, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %4351 to i64*
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4353 = getelementptr inbounds %struct.GPR, %struct.GPR* %4352, i32 0, i32 1
  %4354 = getelementptr inbounds %struct.Reg, %struct.Reg* %4353, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %4354 to i64*
  %4355 = load i64, i64* %RAX.i432
  %4356 = add i64 %4355, 24
  %4357 = load i64, i64* %PC.i431
  %4358 = add i64 %4357, 4
  store i64 %4358, i64* %PC.i431
  %4359 = inttoptr i64 %4356 to i64*
  %4360 = load i64, i64* %4359
  store i64 %4360, i64* %RAX.i432, align 8
  store %struct.Memory* %loadMem_4098c5, %struct.Memory** %MEMORY
  %loadMem_4098c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 33
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %4363 to i64*
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4365 = getelementptr inbounds %struct.GPR, %struct.GPR* %4364, i32 0, i32 5
  %4366 = getelementptr inbounds %struct.Reg, %struct.Reg* %4365, i32 0, i32 0
  %RCX.i429 = bitcast %union.anon* %4366 to i64*
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4368 = getelementptr inbounds %struct.GPR, %struct.GPR* %4367, i32 0, i32 15
  %4369 = getelementptr inbounds %struct.Reg, %struct.Reg* %4368, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %4369 to i64*
  %4370 = load i64, i64* %RBP.i430
  %4371 = sub i64 %4370, 108
  %4372 = load i64, i64* %PC.i428
  %4373 = add i64 %4372, 4
  store i64 %4373, i64* %PC.i428
  %4374 = inttoptr i64 %4371 to i32*
  %4375 = load i32, i32* %4374
  %4376 = sext i32 %4375 to i64
  store i64 %4376, i64* %RCX.i429, align 8
  store %struct.Memory* %loadMem_4098c9, %struct.Memory** %MEMORY
  %loadMem_4098cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4378 = getelementptr inbounds %struct.GPR, %struct.GPR* %4377, i32 0, i32 33
  %4379 = getelementptr inbounds %struct.Reg, %struct.Reg* %4378, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %4379 to i64*
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4381 = getelementptr inbounds %struct.GPR, %struct.GPR* %4380, i32 0, i32 1
  %4382 = getelementptr inbounds %struct.Reg, %struct.Reg* %4381, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %4382 to i64*
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4384 = getelementptr inbounds %struct.GPR, %struct.GPR* %4383, i32 0, i32 5
  %4385 = getelementptr inbounds %struct.Reg, %struct.Reg* %4384, i32 0, i32 0
  %RCX.i426 = bitcast %union.anon* %4385 to i64*
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4387 = getelementptr inbounds %struct.GPR, %struct.GPR* %4386, i32 0, i32 7
  %4388 = getelementptr inbounds %struct.Reg, %struct.Reg* %4387, i32 0, i32 0
  %RDX.i427 = bitcast %union.anon* %4388 to i64*
  %4389 = load i64, i64* %RAX.i425
  %4390 = load i64, i64* %RCX.i426
  %4391 = mul i64 %4390, 4
  %4392 = add i64 %4391, %4389
  %4393 = load i64, i64* %PC.i424
  %4394 = add i64 %4393, 3
  store i64 %4394, i64* %PC.i424
  %4395 = inttoptr i64 %4392 to i32*
  %4396 = load i32, i32* %4395
  %4397 = zext i32 %4396 to i64
  store i64 %4397, i64* %RDX.i427, align 8
  store %struct.Memory* %loadMem_4098cd, %struct.Memory** %MEMORY
  %loadMem_4098d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4399 = getelementptr inbounds %struct.GPR, %struct.GPR* %4398, i32 0, i32 33
  %4400 = getelementptr inbounds %struct.Reg, %struct.Reg* %4399, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %4400 to i64*
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4402 = getelementptr inbounds %struct.GPR, %struct.GPR* %4401, i32 0, i32 1
  %4403 = getelementptr inbounds %struct.Reg, %struct.Reg* %4402, i32 0, i32 0
  %RAX.i422 = bitcast %union.anon* %4403 to i64*
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 15
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %4406 to i64*
  %4407 = load i64, i64* %RBP.i423
  %4408 = sub i64 %4407, 56
  %4409 = load i64, i64* %PC.i421
  %4410 = add i64 %4409, 4
  store i64 %4410, i64* %PC.i421
  %4411 = inttoptr i64 %4408 to i64*
  %4412 = load i64, i64* %4411
  store i64 %4412, i64* %RAX.i422, align 8
  store %struct.Memory* %loadMem_4098d0, %struct.Memory** %MEMORY
  %loadMem_4098d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4414 = getelementptr inbounds %struct.GPR, %struct.GPR* %4413, i32 0, i32 33
  %4415 = getelementptr inbounds %struct.Reg, %struct.Reg* %4414, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %4415 to i64*
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4417 = getelementptr inbounds %struct.GPR, %struct.GPR* %4416, i32 0, i32 1
  %4418 = getelementptr inbounds %struct.Reg, %struct.Reg* %4417, i32 0, i32 0
  %RAX.i420 = bitcast %union.anon* %4418 to i64*
  %4419 = load i64, i64* %RAX.i420
  %4420 = add i64 %4419, 24
  %4421 = load i64, i64* %PC.i419
  %4422 = add i64 %4421, 4
  store i64 %4422, i64* %PC.i419
  %4423 = inttoptr i64 %4420 to i64*
  %4424 = load i64, i64* %4423
  store i64 %4424, i64* %RAX.i420, align 8
  store %struct.Memory* %loadMem_4098d4, %struct.Memory** %MEMORY
  %loadMem_4098d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4426 = getelementptr inbounds %struct.GPR, %struct.GPR* %4425, i32 0, i32 33
  %4427 = getelementptr inbounds %struct.Reg, %struct.Reg* %4426, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %4427 to i64*
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4429 = getelementptr inbounds %struct.GPR, %struct.GPR* %4428, i32 0, i32 9
  %4430 = getelementptr inbounds %struct.Reg, %struct.Reg* %4429, i32 0, i32 0
  %RSI.i417 = bitcast %union.anon* %4430 to i64*
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4432 = getelementptr inbounds %struct.GPR, %struct.GPR* %4431, i32 0, i32 15
  %4433 = getelementptr inbounds %struct.Reg, %struct.Reg* %4432, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %4433 to i64*
  %4434 = load i64, i64* %RBP.i418
  %4435 = sub i64 %4434, 80
  %4436 = load i64, i64* %PC.i416
  %4437 = add i64 %4436, 3
  store i64 %4437, i64* %PC.i416
  %4438 = inttoptr i64 %4435 to i32*
  %4439 = load i32, i32* %4438
  %4440 = zext i32 %4439 to i64
  store i64 %4440, i64* %RSI.i417, align 8
  store %struct.Memory* %loadMem_4098d8, %struct.Memory** %MEMORY
  %loadMem_4098db = load %struct.Memory*, %struct.Memory** %MEMORY
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4442 = getelementptr inbounds %struct.GPR, %struct.GPR* %4441, i32 0, i32 33
  %4443 = getelementptr inbounds %struct.Reg, %struct.Reg* %4442, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %4443 to i64*
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 9
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %RSI.i415 = bitcast %union.anon* %4446 to i64*
  %4447 = load i64, i64* %RSI.i415
  %4448 = load i64, i64* %PC.i414
  %4449 = add i64 %4448, 2
  store i64 %4449, i64* %PC.i414
  %4450 = trunc i64 %4447 to i32
  %4451 = shl i32 %4450, 1
  %4452 = icmp slt i32 %4450, 0
  %4453 = icmp slt i32 %4451, 0
  %4454 = xor i1 %4452, %4453
  %4455 = zext i32 %4451 to i64
  store i64 %4455, i64* %RSI.i415, align 8
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4457 = zext i1 %4452 to i8
  store i8 %4457, i8* %4456, align 1
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4459 = and i32 %4451, 254
  %4460 = call i32 @llvm.ctpop.i32(i32 %4459)
  %4461 = trunc i32 %4460 to i8
  %4462 = and i8 %4461, 1
  %4463 = xor i8 %4462, 1
  store i8 %4463, i8* %4458, align 1
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4464, align 1
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4466 = icmp eq i32 %4451, 0
  %4467 = zext i1 %4466 to i8
  store i8 %4467, i8* %4465, align 1
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4469 = lshr i32 %4451, 31
  %4470 = trunc i32 %4469 to i8
  store i8 %4470, i8* %4468, align 1
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4472 = zext i1 %4454 to i8
  store i8 %4472, i8* %4471, align 1
  store %struct.Memory* %loadMem_4098db, %struct.Memory** %MEMORY
  %loadMem_4098de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 33
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %4475 to i64*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 9
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %RSI.i413 = bitcast %union.anon* %4478 to i64*
  %4479 = load i64, i64* %RSI.i413
  %4480 = load i64, i64* %PC.i412
  %4481 = add i64 %4480, 3
  store i64 %4481, i64* %PC.i412
  %4482 = trunc i64 %4479 to i32
  %4483 = add i32 1, %4482
  %4484 = zext i32 %4483 to i64
  store i64 %4484, i64* %RSI.i413, align 8
  %4485 = icmp ult i32 %4483, %4482
  %4486 = icmp ult i32 %4483, 1
  %4487 = or i1 %4485, %4486
  %4488 = zext i1 %4487 to i8
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4488, i8* %4489, align 1
  %4490 = and i32 %4483, 255
  %4491 = call i32 @llvm.ctpop.i32(i32 %4490)
  %4492 = trunc i32 %4491 to i8
  %4493 = and i8 %4492, 1
  %4494 = xor i8 %4493, 1
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4494, i8* %4495, align 1
  %4496 = xor i64 1, %4479
  %4497 = trunc i64 %4496 to i32
  %4498 = xor i32 %4497, %4483
  %4499 = lshr i32 %4498, 4
  %4500 = trunc i32 %4499 to i8
  %4501 = and i8 %4500, 1
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4501, i8* %4502, align 1
  %4503 = icmp eq i32 %4483, 0
  %4504 = zext i1 %4503 to i8
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4504, i8* %4505, align 1
  %4506 = lshr i32 %4483, 31
  %4507 = trunc i32 %4506 to i8
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4507, i8* %4508, align 1
  %4509 = lshr i32 %4482, 31
  %4510 = xor i32 %4506, %4509
  %4511 = add i32 %4510, %4506
  %4512 = icmp eq i32 %4511, 2
  %4513 = zext i1 %4512 to i8
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4513, i8* %4514, align 1
  store %struct.Memory* %loadMem_4098de, %struct.Memory** %MEMORY
  %loadMem_4098e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4516 = getelementptr inbounds %struct.GPR, %struct.GPR* %4515, i32 0, i32 33
  %4517 = getelementptr inbounds %struct.Reg, %struct.Reg* %4516, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %4517 to i64*
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4519 = getelementptr inbounds %struct.GPR, %struct.GPR* %4518, i32 0, i32 9
  %4520 = getelementptr inbounds %struct.Reg, %struct.Reg* %4519, i32 0, i32 0
  %ESI.i410 = bitcast %union.anon* %4520 to i32*
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 5
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %RCX.i411 = bitcast %union.anon* %4523 to i64*
  %4524 = load i32, i32* %ESI.i410
  %4525 = zext i32 %4524 to i64
  %4526 = load i64, i64* %PC.i409
  %4527 = add i64 %4526, 3
  store i64 %4527, i64* %PC.i409
  %4528 = shl i64 %4525, 32
  %4529 = ashr exact i64 %4528, 32
  store i64 %4529, i64* %RCX.i411, align 8
  store %struct.Memory* %loadMem_4098e1, %struct.Memory** %MEMORY
  %loadMem_4098e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 33
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %4532 to i64*
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 1
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %4535 to i64*
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4537 = getelementptr inbounds %struct.GPR, %struct.GPR* %4536, i32 0, i32 5
  %4538 = getelementptr inbounds %struct.Reg, %struct.Reg* %4537, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %4538 to i64*
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4540 = getelementptr inbounds %struct.GPR, %struct.GPR* %4539, i32 0, i32 7
  %4541 = getelementptr inbounds %struct.Reg, %struct.Reg* %4540, i32 0, i32 0
  %RDX.i408 = bitcast %union.anon* %4541 to i64*
  %4542 = load i64, i64* %RDX.i408
  %4543 = load i64, i64* %RAX.i406
  %4544 = load i64, i64* %RCX.i407
  %4545 = mul i64 %4544, 4
  %4546 = add i64 %4545, %4543
  %4547 = load i64, i64* %PC.i405
  %4548 = add i64 %4547, 3
  store i64 %4548, i64* %PC.i405
  %4549 = trunc i64 %4542 to i32
  %4550 = inttoptr i64 %4546 to i32*
  %4551 = load i32, i32* %4550
  %4552 = add i32 %4551, %4549
  %4553 = zext i32 %4552 to i64
  store i64 %4553, i64* %RDX.i408, align 8
  %4554 = icmp ult i32 %4552, %4549
  %4555 = icmp ult i32 %4552, %4551
  %4556 = or i1 %4554, %4555
  %4557 = zext i1 %4556 to i8
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4557, i8* %4558, align 1
  %4559 = and i32 %4552, 255
  %4560 = call i32 @llvm.ctpop.i32(i32 %4559)
  %4561 = trunc i32 %4560 to i8
  %4562 = and i8 %4561, 1
  %4563 = xor i8 %4562, 1
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4563, i8* %4564, align 1
  %4565 = xor i32 %4551, %4549
  %4566 = xor i32 %4565, %4552
  %4567 = lshr i32 %4566, 4
  %4568 = trunc i32 %4567 to i8
  %4569 = and i8 %4568, 1
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4569, i8* %4570, align 1
  %4571 = icmp eq i32 %4552, 0
  %4572 = zext i1 %4571 to i8
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4572, i8* %4573, align 1
  %4574 = lshr i32 %4552, 31
  %4575 = trunc i32 %4574 to i8
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4575, i8* %4576, align 1
  %4577 = lshr i32 %4549, 31
  %4578 = lshr i32 %4551, 31
  %4579 = xor i32 %4574, %4577
  %4580 = xor i32 %4574, %4578
  %4581 = add i32 %4579, %4580
  %4582 = icmp eq i32 %4581, 2
  %4583 = zext i1 %4582 to i8
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4583, i8* %4584, align 1
  store %struct.Memory* %loadMem_4098e4, %struct.Memory** %MEMORY
  %loadMem_4098e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4586 = getelementptr inbounds %struct.GPR, %struct.GPR* %4585, i32 0, i32 33
  %4587 = getelementptr inbounds %struct.Reg, %struct.Reg* %4586, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %4587 to i64*
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4589 = getelementptr inbounds %struct.GPR, %struct.GPR* %4588, i32 0, i32 1
  %4590 = getelementptr inbounds %struct.Reg, %struct.Reg* %4589, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %4590 to i64*
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4592 = getelementptr inbounds %struct.GPR, %struct.GPR* %4591, i32 0, i32 15
  %4593 = getelementptr inbounds %struct.Reg, %struct.Reg* %4592, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %4593 to i64*
  %4594 = load i64, i64* %RBP.i404
  %4595 = sub i64 %4594, 64
  %4596 = load i64, i64* %PC.i402
  %4597 = add i64 %4596, 4
  store i64 %4597, i64* %PC.i402
  %4598 = inttoptr i64 %4595 to i64*
  %4599 = load i64, i64* %4598
  store i64 %4599, i64* %RAX.i403, align 8
  store %struct.Memory* %loadMem_4098e7, %struct.Memory** %MEMORY
  %loadMem_4098eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 33
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %4602 to i64*
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 1
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %4605 to i64*
  %4606 = load i64, i64* %RAX.i401
  %4607 = add i64 %4606, 24
  %4608 = load i64, i64* %PC.i400
  %4609 = add i64 %4608, 4
  store i64 %4609, i64* %PC.i400
  %4610 = inttoptr i64 %4607 to i64*
  %4611 = load i64, i64* %4610
  store i64 %4611, i64* %RAX.i401, align 8
  store %struct.Memory* %loadMem_4098eb, %struct.Memory** %MEMORY
  %loadMem_4098ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4613 = getelementptr inbounds %struct.GPR, %struct.GPR* %4612, i32 0, i32 33
  %4614 = getelementptr inbounds %struct.Reg, %struct.Reg* %4613, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %4614 to i64*
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4616 = getelementptr inbounds %struct.GPR, %struct.GPR* %4615, i32 0, i32 5
  %4617 = getelementptr inbounds %struct.Reg, %struct.Reg* %4616, i32 0, i32 0
  %RCX.i398 = bitcast %union.anon* %4617 to i64*
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4619 = getelementptr inbounds %struct.GPR, %struct.GPR* %4618, i32 0, i32 15
  %4620 = getelementptr inbounds %struct.Reg, %struct.Reg* %4619, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %4620 to i64*
  %4621 = load i64, i64* %RBP.i399
  %4622 = sub i64 %4621, 88
  %4623 = load i64, i64* %PC.i397
  %4624 = add i64 %4623, 4
  store i64 %4624, i64* %PC.i397
  %4625 = inttoptr i64 %4622 to i32*
  %4626 = load i32, i32* %4625
  %4627 = sext i32 %4626 to i64
  store i64 %4627, i64* %RCX.i398, align 8
  store %struct.Memory* %loadMem_4098ef, %struct.Memory** %MEMORY
  %loadMem_4098f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4629 = getelementptr inbounds %struct.GPR, %struct.GPR* %4628, i32 0, i32 33
  %4630 = getelementptr inbounds %struct.Reg, %struct.Reg* %4629, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %4630 to i64*
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4632 = getelementptr inbounds %struct.GPR, %struct.GPR* %4631, i32 0, i32 7
  %4633 = getelementptr inbounds %struct.Reg, %struct.Reg* %4632, i32 0, i32 0
  %EDX.i394 = bitcast %union.anon* %4633 to i32*
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4635 = getelementptr inbounds %struct.GPR, %struct.GPR* %4634, i32 0, i32 1
  %4636 = getelementptr inbounds %struct.Reg, %struct.Reg* %4635, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %4636 to i64*
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 5
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %RCX.i396 = bitcast %union.anon* %4639 to i64*
  %4640 = load i64, i64* %RAX.i395
  %4641 = load i64, i64* %RCX.i396
  %4642 = mul i64 %4641, 4
  %4643 = add i64 %4642, %4640
  %4644 = load i32, i32* %EDX.i394
  %4645 = zext i32 %4644 to i64
  %4646 = load i64, i64* %PC.i393
  %4647 = add i64 %4646, 3
  store i64 %4647, i64* %PC.i393
  %4648 = inttoptr i64 %4643 to i32*
  store i32 %4644, i32* %4648
  store %struct.Memory* %loadMem_4098f3, %struct.Memory** %MEMORY
  %loadMem_4098f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4650 = getelementptr inbounds %struct.GPR, %struct.GPR* %4649, i32 0, i32 33
  %4651 = getelementptr inbounds %struct.Reg, %struct.Reg* %4650, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4651 to i64*
  %4652 = load i64, i64* %PC.i392
  %4653 = add i64 %4652, 24
  %4654 = load i64, i64* %PC.i392
  %4655 = add i64 %4654, 5
  store i64 %4655, i64* %PC.i392
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4653, i64* %4656, align 8
  store %struct.Memory* %loadMem_4098f6, %struct.Memory** %MEMORY
  br label %block_.L_40990e

block_.L_4098fb:                                  ; preds = %block_40984f
  %loadMem_4098fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4658 = getelementptr inbounds %struct.GPR, %struct.GPR* %4657, i32 0, i32 33
  %4659 = getelementptr inbounds %struct.Reg, %struct.Reg* %4658, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %4659 to i64*
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4661 = getelementptr inbounds %struct.GPR, %struct.GPR* %4660, i32 0, i32 1
  %4662 = getelementptr inbounds %struct.Reg, %struct.Reg* %4661, i32 0, i32 0
  %RAX.i390 = bitcast %union.anon* %4662 to i64*
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 15
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %4665 to i64*
  %4666 = load i64, i64* %RBP.i391
  %4667 = sub i64 %4666, 64
  %4668 = load i64, i64* %PC.i389
  %4669 = add i64 %4668, 4
  store i64 %4669, i64* %PC.i389
  %4670 = inttoptr i64 %4667 to i64*
  %4671 = load i64, i64* %4670
  store i64 %4671, i64* %RAX.i390, align 8
  store %struct.Memory* %loadMem_4098fb, %struct.Memory** %MEMORY
  %loadMem_4098ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4673 = getelementptr inbounds %struct.GPR, %struct.GPR* %4672, i32 0, i32 33
  %4674 = getelementptr inbounds %struct.Reg, %struct.Reg* %4673, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %4674 to i64*
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 1
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %4677 to i64*
  %4678 = load i64, i64* %RAX.i388
  %4679 = add i64 %4678, 24
  %4680 = load i64, i64* %PC.i387
  %4681 = add i64 %4680, 4
  store i64 %4681, i64* %PC.i387
  %4682 = inttoptr i64 %4679 to i64*
  %4683 = load i64, i64* %4682
  store i64 %4683, i64* %RAX.i388, align 8
  store %struct.Memory* %loadMem_4098ff, %struct.Memory** %MEMORY
  %loadMem_409903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4685 = getelementptr inbounds %struct.GPR, %struct.GPR* %4684, i32 0, i32 33
  %4686 = getelementptr inbounds %struct.Reg, %struct.Reg* %4685, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %4686 to i64*
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4688 = getelementptr inbounds %struct.GPR, %struct.GPR* %4687, i32 0, i32 5
  %4689 = getelementptr inbounds %struct.Reg, %struct.Reg* %4688, i32 0, i32 0
  %RCX.i385 = bitcast %union.anon* %4689 to i64*
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 15
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %4692 to i64*
  %4693 = load i64, i64* %RBP.i386
  %4694 = sub i64 %4693, 88
  %4695 = load i64, i64* %PC.i384
  %4696 = add i64 %4695, 4
  store i64 %4696, i64* %PC.i384
  %4697 = inttoptr i64 %4694 to i32*
  %4698 = load i32, i32* %4697
  %4699 = sext i32 %4698 to i64
  store i64 %4699, i64* %RCX.i385, align 8
  store %struct.Memory* %loadMem_409903, %struct.Memory** %MEMORY
  %loadMem_409907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4701 = getelementptr inbounds %struct.GPR, %struct.GPR* %4700, i32 0, i32 33
  %4702 = getelementptr inbounds %struct.Reg, %struct.Reg* %4701, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %4702 to i64*
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4704 = getelementptr inbounds %struct.GPR, %struct.GPR* %4703, i32 0, i32 1
  %4705 = getelementptr inbounds %struct.Reg, %struct.Reg* %4704, i32 0, i32 0
  %RAX.i382 = bitcast %union.anon* %4705 to i64*
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4707 = getelementptr inbounds %struct.GPR, %struct.GPR* %4706, i32 0, i32 5
  %4708 = getelementptr inbounds %struct.Reg, %struct.Reg* %4707, i32 0, i32 0
  %RCX.i383 = bitcast %union.anon* %4708 to i64*
  %4709 = load i64, i64* %RAX.i382
  %4710 = load i64, i64* %RCX.i383
  %4711 = mul i64 %4710, 4
  %4712 = add i64 %4711, %4709
  %4713 = load i64, i64* %PC.i381
  %4714 = add i64 %4713, 7
  store i64 %4714, i64* %PC.i381
  %4715 = inttoptr i64 %4712 to i32*
  store i32 0, i32* %4715
  store %struct.Memory* %loadMem_409907, %struct.Memory** %MEMORY
  br label %block_.L_40990e

block_.L_40990e:                                  ; preds = %block_.L_4098fb, %block_4098b9
  %loadMem_40990e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4717 = getelementptr inbounds %struct.GPR, %struct.GPR* %4716, i32 0, i32 33
  %4718 = getelementptr inbounds %struct.Reg, %struct.Reg* %4717, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %4718 to i64*
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4720 = getelementptr inbounds %struct.GPR, %struct.GPR* %4719, i32 0, i32 1
  %4721 = getelementptr inbounds %struct.Reg, %struct.Reg* %4720, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %4721 to i64*
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4723 = getelementptr inbounds %struct.GPR, %struct.GPR* %4722, i32 0, i32 15
  %4724 = getelementptr inbounds %struct.Reg, %struct.Reg* %4723, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %4724 to i64*
  %4725 = load i64, i64* %RBP.i380
  %4726 = sub i64 %4725, 88
  %4727 = load i64, i64* %PC.i378
  %4728 = add i64 %4727, 3
  store i64 %4728, i64* %PC.i378
  %4729 = inttoptr i64 %4726 to i32*
  %4730 = load i32, i32* %4729
  %4731 = zext i32 %4730 to i64
  store i64 %4731, i64* %RAX.i379, align 8
  store %struct.Memory* %loadMem_40990e, %struct.Memory** %MEMORY
  %loadMem_409911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4733 = getelementptr inbounds %struct.GPR, %struct.GPR* %4732, i32 0, i32 33
  %4734 = getelementptr inbounds %struct.Reg, %struct.Reg* %4733, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %4734 to i64*
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4736 = getelementptr inbounds %struct.GPR, %struct.GPR* %4735, i32 0, i32 1
  %4737 = getelementptr inbounds %struct.Reg, %struct.Reg* %4736, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %4737 to i64*
  %4738 = load i64, i64* %RAX.i377
  %4739 = load i64, i64* %PC.i376
  %4740 = add i64 %4739, 3
  store i64 %4740, i64* %PC.i376
  %4741 = trunc i64 %4738 to i32
  %4742 = add i32 1, %4741
  %4743 = zext i32 %4742 to i64
  store i64 %4743, i64* %RAX.i377, align 8
  %4744 = icmp ult i32 %4742, %4741
  %4745 = icmp ult i32 %4742, 1
  %4746 = or i1 %4744, %4745
  %4747 = zext i1 %4746 to i8
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4747, i8* %4748, align 1
  %4749 = and i32 %4742, 255
  %4750 = call i32 @llvm.ctpop.i32(i32 %4749)
  %4751 = trunc i32 %4750 to i8
  %4752 = and i8 %4751, 1
  %4753 = xor i8 %4752, 1
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4753, i8* %4754, align 1
  %4755 = xor i64 1, %4738
  %4756 = trunc i64 %4755 to i32
  %4757 = xor i32 %4756, %4742
  %4758 = lshr i32 %4757, 4
  %4759 = trunc i32 %4758 to i8
  %4760 = and i8 %4759, 1
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4760, i8* %4761, align 1
  %4762 = icmp eq i32 %4742, 0
  %4763 = zext i1 %4762 to i8
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4763, i8* %4764, align 1
  %4765 = lshr i32 %4742, 31
  %4766 = trunc i32 %4765 to i8
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4766, i8* %4767, align 1
  %4768 = lshr i32 %4741, 31
  %4769 = xor i32 %4765, %4768
  %4770 = add i32 %4769, %4765
  %4771 = icmp eq i32 %4770, 2
  %4772 = zext i1 %4771 to i8
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4772, i8* %4773, align 1
  store %struct.Memory* %loadMem_409911, %struct.Memory** %MEMORY
  %loadMem_409914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 33
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %4776 to i64*
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 1
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %EAX.i374 = bitcast %union.anon* %4779 to i32*
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4781 = getelementptr inbounds %struct.GPR, %struct.GPR* %4780, i32 0, i32 15
  %4782 = getelementptr inbounds %struct.Reg, %struct.Reg* %4781, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %4782 to i64*
  %4783 = load i64, i64* %RBP.i375
  %4784 = sub i64 %4783, 88
  %4785 = load i32, i32* %EAX.i374
  %4786 = zext i32 %4785 to i64
  %4787 = load i64, i64* %PC.i373
  %4788 = add i64 %4787, 3
  store i64 %4788, i64* %PC.i373
  %4789 = inttoptr i64 %4784 to i32*
  store i32 %4785, i32* %4789
  store %struct.Memory* %loadMem_409914, %struct.Memory** %MEMORY
  %loadMem_409917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4791 = getelementptr inbounds %struct.GPR, %struct.GPR* %4790, i32 0, i32 33
  %4792 = getelementptr inbounds %struct.Reg, %struct.Reg* %4791, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %4792 to i64*
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4794 = getelementptr inbounds %struct.GPR, %struct.GPR* %4793, i32 0, i32 1
  %4795 = getelementptr inbounds %struct.Reg, %struct.Reg* %4794, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %4795 to i64*
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4797 = getelementptr inbounds %struct.GPR, %struct.GPR* %4796, i32 0, i32 15
  %4798 = getelementptr inbounds %struct.Reg, %struct.Reg* %4797, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %4798 to i64*
  %4799 = load i64, i64* %RBP.i372
  %4800 = sub i64 %4799, 108
  %4801 = load i64, i64* %PC.i370
  %4802 = add i64 %4801, 3
  store i64 %4802, i64* %PC.i370
  %4803 = inttoptr i64 %4800 to i32*
  %4804 = load i32, i32* %4803
  %4805 = zext i32 %4804 to i64
  store i64 %4805, i64* %RAX.i371, align 8
  store %struct.Memory* %loadMem_409917, %struct.Memory** %MEMORY
  %loadMem_40991a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4807 = getelementptr inbounds %struct.GPR, %struct.GPR* %4806, i32 0, i32 33
  %4808 = getelementptr inbounds %struct.Reg, %struct.Reg* %4807, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %4808 to i64*
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 1
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %4811 to i64*
  %4812 = load i64, i64* %RAX.i369
  %4813 = load i64, i64* %PC.i368
  %4814 = add i64 %4813, 3
  store i64 %4814, i64* %PC.i368
  %4815 = trunc i64 %4812 to i32
  %4816 = add i32 1, %4815
  %4817 = zext i32 %4816 to i64
  store i64 %4817, i64* %RAX.i369, align 8
  %4818 = icmp ult i32 %4816, %4815
  %4819 = icmp ult i32 %4816, 1
  %4820 = or i1 %4818, %4819
  %4821 = zext i1 %4820 to i8
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4821, i8* %4822, align 1
  %4823 = and i32 %4816, 255
  %4824 = call i32 @llvm.ctpop.i32(i32 %4823)
  %4825 = trunc i32 %4824 to i8
  %4826 = and i8 %4825, 1
  %4827 = xor i8 %4826, 1
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4827, i8* %4828, align 1
  %4829 = xor i64 1, %4812
  %4830 = trunc i64 %4829 to i32
  %4831 = xor i32 %4830, %4816
  %4832 = lshr i32 %4831, 4
  %4833 = trunc i32 %4832 to i8
  %4834 = and i8 %4833, 1
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4834, i8* %4835, align 1
  %4836 = icmp eq i32 %4816, 0
  %4837 = zext i1 %4836 to i8
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4837, i8* %4838, align 1
  %4839 = lshr i32 %4816, 31
  %4840 = trunc i32 %4839 to i8
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4840, i8* %4841, align 1
  %4842 = lshr i32 %4815, 31
  %4843 = xor i32 %4839, %4842
  %4844 = add i32 %4843, %4839
  %4845 = icmp eq i32 %4844, 2
  %4846 = zext i1 %4845 to i8
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4846, i8* %4847, align 1
  store %struct.Memory* %loadMem_40991a, %struct.Memory** %MEMORY
  %loadMem_40991d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 33
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %4850 to i64*
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4852 = getelementptr inbounds %struct.GPR, %struct.GPR* %4851, i32 0, i32 1
  %4853 = getelementptr inbounds %struct.Reg, %struct.Reg* %4852, i32 0, i32 0
  %EAX.i366 = bitcast %union.anon* %4853 to i32*
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4855 = getelementptr inbounds %struct.GPR, %struct.GPR* %4854, i32 0, i32 15
  %4856 = getelementptr inbounds %struct.Reg, %struct.Reg* %4855, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %4856 to i64*
  %4857 = load i64, i64* %RBP.i367
  %4858 = sub i64 %4857, 108
  %4859 = load i32, i32* %EAX.i366
  %4860 = zext i32 %4859 to i64
  %4861 = load i64, i64* %PC.i365
  %4862 = add i64 %4861, 3
  store i64 %4862, i64* %PC.i365
  %4863 = inttoptr i64 %4858 to i32*
  store i32 %4859, i32* %4863
  store %struct.Memory* %loadMem_40991d, %struct.Memory** %MEMORY
  %loadMem_409920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 33
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %4866 to i64*
  %4867 = load i64, i64* %PC.i364
  %4868 = add i64 %4867, -237
  %4869 = load i64, i64* %PC.i364
  %4870 = add i64 %4869, 5
  store i64 %4870, i64* %PC.i364
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4868, i64* %4871, align 8
  store %struct.Memory* %loadMem_409920, %struct.Memory** %MEMORY
  br label %block_.L_409833

block_.L_409925:                                  ; preds = %block_.L_409833
  %loadMem_409925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4873 = getelementptr inbounds %struct.GPR, %struct.GPR* %4872, i32 0, i32 33
  %4874 = getelementptr inbounds %struct.Reg, %struct.Reg* %4873, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %4874 to i64*
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4876 = getelementptr inbounds %struct.GPR, %struct.GPR* %4875, i32 0, i32 1
  %4877 = getelementptr inbounds %struct.Reg, %struct.Reg* %4876, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %4877 to i64*
  %4878 = load i64, i64* %PC.i362
  %4879 = add i64 %4878, 5
  store i64 %4879, i64* %PC.i362
  store i64 10, i64* %RAX.i363, align 8
  store %struct.Memory* %loadMem_409925, %struct.Memory** %MEMORY
  %loadMem_40992a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 33
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %4882 to i64*
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4884 = getelementptr inbounds %struct.GPR, %struct.GPR* %4883, i32 0, i32 5
  %4885 = getelementptr inbounds %struct.Reg, %struct.Reg* %4884, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %4885 to i64*
  %4886 = load i64, i64* %PC.i360
  %4887 = add i64 %4886, 5
  store i64 %4887, i64* %PC.i360
  store i64 8, i64* %RCX.i361, align 8
  store %struct.Memory* %loadMem_40992a, %struct.Memory** %MEMORY
  %loadMem_40992f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4889 = getelementptr inbounds %struct.GPR, %struct.GPR* %4888, i32 0, i32 33
  %4890 = getelementptr inbounds %struct.Reg, %struct.Reg* %4889, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %4890 to i64*
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4892 = getelementptr inbounds %struct.GPR, %struct.GPR* %4891, i32 0, i32 7
  %4893 = getelementptr inbounds %struct.Reg, %struct.Reg* %4892, i32 0, i32 0
  %RDX.i358 = bitcast %union.anon* %4893 to i64*
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4895 = getelementptr inbounds %struct.GPR, %struct.GPR* %4894, i32 0, i32 15
  %4896 = getelementptr inbounds %struct.Reg, %struct.Reg* %4895, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %4896 to i64*
  %4897 = load i64, i64* %RBP.i359
  %4898 = sub i64 %4897, 80
  %4899 = load i64, i64* %PC.i357
  %4900 = add i64 %4899, 3
  store i64 %4900, i64* %PC.i357
  %4901 = inttoptr i64 %4898 to i32*
  %4902 = load i32, i32* %4901
  %4903 = zext i32 %4902 to i64
  store i64 %4903, i64* %RDX.i358, align 8
  store %struct.Memory* %loadMem_40992f, %struct.Memory** %MEMORY
  %loadMem_409932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4905 = getelementptr inbounds %struct.GPR, %struct.GPR* %4904, i32 0, i32 33
  %4906 = getelementptr inbounds %struct.Reg, %struct.Reg* %4905, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %4906 to i64*
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4908 = getelementptr inbounds %struct.GPR, %struct.GPR* %4907, i32 0, i32 9
  %4909 = getelementptr inbounds %struct.Reg, %struct.Reg* %4908, i32 0, i32 0
  %RSI.i355 = bitcast %union.anon* %4909 to i64*
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4911 = getelementptr inbounds %struct.GPR, %struct.GPR* %4910, i32 0, i32 15
  %4912 = getelementptr inbounds %struct.Reg, %struct.Reg* %4911, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %4912 to i64*
  %4913 = load i64, i64* %RBP.i356
  %4914 = sub i64 %4913, 76
  %4915 = load i64, i64* %PC.i354
  %4916 = add i64 %4915, 3
  store i64 %4916, i64* %PC.i354
  %4917 = inttoptr i64 %4914 to i32*
  %4918 = load i32, i32* %4917
  %4919 = zext i32 %4918 to i64
  store i64 %4919, i64* %RSI.i355, align 8
  store %struct.Memory* %loadMem_409932, %struct.Memory** %MEMORY
  %loadMem_409935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4921 = getelementptr inbounds %struct.GPR, %struct.GPR* %4920, i32 0, i32 33
  %4922 = getelementptr inbounds %struct.Reg, %struct.Reg* %4921, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %4922 to i64*
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4924 = getelementptr inbounds %struct.GPR, %struct.GPR* %4923, i32 0, i32 9
  %4925 = getelementptr inbounds %struct.Reg, %struct.Reg* %4924, i32 0, i32 0
  %RSI.i353 = bitcast %union.anon* %4925 to i64*
  %4926 = load i64, i64* %RSI.i353
  %4927 = load i64, i64* %PC.i352
  %4928 = add i64 %4927, 3
  store i64 %4928, i64* %PC.i352
  %4929 = trunc i64 %4926 to i32
  %4930 = sub i32 %4929, 1
  %4931 = zext i32 %4930 to i64
  store i64 %4931, i64* %RSI.i353, align 8
  %4932 = icmp ult i32 %4929, 1
  %4933 = zext i1 %4932 to i8
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4933, i8* %4934, align 1
  %4935 = and i32 %4930, 255
  %4936 = call i32 @llvm.ctpop.i32(i32 %4935)
  %4937 = trunc i32 %4936 to i8
  %4938 = and i8 %4937, 1
  %4939 = xor i8 %4938, 1
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4939, i8* %4940, align 1
  %4941 = xor i64 1, %4926
  %4942 = trunc i64 %4941 to i32
  %4943 = xor i32 %4942, %4930
  %4944 = lshr i32 %4943, 4
  %4945 = trunc i32 %4944 to i8
  %4946 = and i8 %4945, 1
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4946, i8* %4947, align 1
  %4948 = icmp eq i32 %4930, 0
  %4949 = zext i1 %4948 to i8
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4949, i8* %4950, align 1
  %4951 = lshr i32 %4930, 31
  %4952 = trunc i32 %4951 to i8
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4952, i8* %4953, align 1
  %4954 = lshr i32 %4929, 31
  %4955 = xor i32 %4951, %4954
  %4956 = add i32 %4955, %4954
  %4957 = icmp eq i32 %4956, 2
  %4958 = zext i1 %4957 to i8
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4958, i8* %4959, align 1
  store %struct.Memory* %loadMem_409935, %struct.Memory** %MEMORY
  %loadMem_409938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4961 = getelementptr inbounds %struct.GPR, %struct.GPR* %4960, i32 0, i32 33
  %4962 = getelementptr inbounds %struct.Reg, %struct.Reg* %4961, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %4962 to i64*
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 7
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %EDX.i351 = bitcast %union.anon* %4965 to i32*
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 9
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %4968 to i32*
  %4969 = load i32, i32* %EDX.i351
  %4970 = zext i32 %4969 to i64
  %4971 = load i32, i32* %ESI.i
  %4972 = zext i32 %4971 to i64
  %4973 = load i64, i64* %PC.i350
  %4974 = add i64 %4973, 2
  store i64 %4974, i64* %PC.i350
  %4975 = sub i32 %4969, %4971
  %4976 = icmp ult i32 %4969, %4971
  %4977 = zext i1 %4976 to i8
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4977, i8* %4978, align 1
  %4979 = and i32 %4975, 255
  %4980 = call i32 @llvm.ctpop.i32(i32 %4979)
  %4981 = trunc i32 %4980 to i8
  %4982 = and i8 %4981, 1
  %4983 = xor i8 %4982, 1
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4983, i8* %4984, align 1
  %4985 = xor i64 %4972, %4970
  %4986 = trunc i64 %4985 to i32
  %4987 = xor i32 %4986, %4975
  %4988 = lshr i32 %4987, 4
  %4989 = trunc i32 %4988 to i8
  %4990 = and i8 %4989, 1
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4990, i8* %4991, align 1
  %4992 = icmp eq i32 %4975, 0
  %4993 = zext i1 %4992 to i8
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4993, i8* %4994, align 1
  %4995 = lshr i32 %4975, 31
  %4996 = trunc i32 %4995 to i8
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4996, i8* %4997, align 1
  %4998 = lshr i32 %4969, 31
  %4999 = lshr i32 %4971, 31
  %5000 = xor i32 %4999, %4998
  %5001 = xor i32 %4995, %4998
  %5002 = add i32 %5001, %5000
  %5003 = icmp eq i32 %5002, 2
  %5004 = zext i1 %5003 to i8
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5004, i8* %5005, align 1
  store %struct.Memory* %loadMem_409938, %struct.Memory** %MEMORY
  %loadMem_40993a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5007 = getelementptr inbounds %struct.GPR, %struct.GPR* %5006, i32 0, i32 33
  %5008 = getelementptr inbounds %struct.Reg, %struct.Reg* %5007, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %5008 to i64*
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5010 = getelementptr inbounds %struct.GPR, %struct.GPR* %5009, i32 0, i32 5
  %5011 = getelementptr inbounds %struct.Reg, %struct.Reg* %5010, i32 0, i32 0
  %ECX.i348 = bitcast %union.anon* %5011 to i32*
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5013 = getelementptr inbounds %struct.GPR, %struct.GPR* %5012, i32 0, i32 1
  %5014 = getelementptr inbounds %struct.Reg, %struct.Reg* %5013, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %5014 to i64*
  %5015 = load i32, i32* %ECX.i348
  %5016 = zext i32 %5015 to i64
  %5017 = load i64, i64* %PC.i347
  %5018 = add i64 %5017, 3
  store i64 %5018, i64* %PC.i347
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5020 = load i8, i8* %5019, align 1
  %5021 = icmp ne i8 %5020, 0
  %5022 = load i64, i64* %RAX.i349, align 8
  %5023 = select i1 %5021, i64 %5016, i64 %5022
  %5024 = and i64 %5023, 4294967295
  store i64 %5024, i64* %RAX.i349, align 8
  store %struct.Memory* %loadMem_40993a, %struct.Memory** %MEMORY
  %loadMem_40993d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5026 = getelementptr inbounds %struct.GPR, %struct.GPR* %5025, i32 0, i32 33
  %5027 = getelementptr inbounds %struct.Reg, %struct.Reg* %5026, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %5027 to i64*
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5029 = getelementptr inbounds %struct.GPR, %struct.GPR* %5028, i32 0, i32 1
  %5030 = getelementptr inbounds %struct.Reg, %struct.Reg* %5029, i32 0, i32 0
  %5031 = bitcast %union.anon* %5030 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5031, i32 0, i32 0
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5033 = getelementptr inbounds %struct.GPR, %struct.GPR* %5032, i32 0, i32 11
  %5034 = getelementptr inbounds %struct.Reg, %struct.Reg* %5033, i32 0, i32 0
  %5035 = bitcast %union.anon* %5034 to %struct.anon.2*
  %DIL.i346 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5035, i32 0, i32 0
  %5036 = load i8, i8* %AL.i
  %5037 = zext i8 %5036 to i64
  %5038 = load i64, i64* %PC.i345
  %5039 = add i64 %5038, 3
  store i64 %5039, i64* %PC.i345
  store i8 %5036, i8* %DIL.i346, align 1
  store %struct.Memory* %loadMem_40993d, %struct.Memory** %MEMORY
  %loadMem_409940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 33
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %5042 to i64*
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 15
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %5045 to i64*
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 17
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %R8.i344 = bitcast %union.anon* %5048 to i64*
  %5049 = load i64, i64* %RBP.i343
  %5050 = sub i64 %5049, 64
  %5051 = load i64, i64* %PC.i342
  %5052 = add i64 %5051, 4
  store i64 %5052, i64* %PC.i342
  %5053 = inttoptr i64 %5050 to i64*
  %5054 = load i64, i64* %5053
  store i64 %5054, i64* %R8.i344, align 8
  store %struct.Memory* %loadMem_409940, %struct.Memory** %MEMORY
  %loadMem_409944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5056 = getelementptr inbounds %struct.GPR, %struct.GPR* %5055, i32 0, i32 33
  %5057 = getelementptr inbounds %struct.Reg, %struct.Reg* %5056, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %5057 to i64*
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5059 = getelementptr inbounds %struct.GPR, %struct.GPR* %5058, i32 0, i32 17
  %5060 = getelementptr inbounds %struct.Reg, %struct.Reg* %5059, i32 0, i32 0
  %R8.i341 = bitcast %union.anon* %5060 to i64*
  %5061 = load i64, i64* %R8.i341
  %5062 = add i64 %5061, 8
  %5063 = load i64, i64* %PC.i340
  %5064 = add i64 %5063, 4
  store i64 %5064, i64* %PC.i340
  %5065 = inttoptr i64 %5062 to i64*
  %5066 = load i64, i64* %5065
  store i64 %5066, i64* %R8.i341, align 8
  store %struct.Memory* %loadMem_409944, %struct.Memory** %MEMORY
  %loadMem_409948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5068 = getelementptr inbounds %struct.GPR, %struct.GPR* %5067, i32 0, i32 33
  %5069 = getelementptr inbounds %struct.Reg, %struct.Reg* %5068, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %5069 to i64*
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5071 = getelementptr inbounds %struct.GPR, %struct.GPR* %5070, i32 0, i32 15
  %5072 = getelementptr inbounds %struct.Reg, %struct.Reg* %5071, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %5072 to i64*
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5074 = getelementptr inbounds %struct.GPR, %struct.GPR* %5073, i32 0, i32 19
  %5075 = getelementptr inbounds %struct.Reg, %struct.Reg* %5074, i32 0, i32 0
  %R9.i339 = bitcast %union.anon* %5075 to i64*
  %5076 = load i64, i64* %RBP.i338
  %5077 = sub i64 %5076, 88
  %5078 = load i64, i64* %PC.i337
  %5079 = add i64 %5078, 4
  store i64 %5079, i64* %PC.i337
  %5080 = inttoptr i64 %5077 to i32*
  %5081 = load i32, i32* %5080
  %5082 = sext i32 %5081 to i64
  store i64 %5082, i64* %R9.i339, align 8
  store %struct.Memory* %loadMem_409948, %struct.Memory** %MEMORY
  %loadMem_40994c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 33
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %5085 to i64*
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5087 = getelementptr inbounds %struct.GPR, %struct.GPR* %5086, i32 0, i32 11
  %5088 = getelementptr inbounds %struct.Reg, %struct.Reg* %5087, i32 0, i32 0
  %5089 = bitcast %union.anon* %5088 to %struct.anon.2*
  %DIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5089, i32 0, i32 0
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 17
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %R8.i335 = bitcast %union.anon* %5092 to i64*
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 19
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %R9.i336 = bitcast %union.anon* %5095 to i64*
  %5096 = load i64, i64* %R8.i335
  %5097 = load i64, i64* %R9.i336
  %5098 = add i64 %5097, %5096
  %5099 = load i8, i8* %DIL.i
  %5100 = zext i8 %5099 to i64
  %5101 = load i64, i64* %PC.i334
  %5102 = add i64 %5101, 4
  store i64 %5102, i64* %PC.i334
  %5103 = inttoptr i64 %5098 to i8*
  store i8 %5099, i8* %5103
  store %struct.Memory* %loadMem_40994c, %struct.Memory** %MEMORY
  %loadMem_409950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 33
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %5106 to i64*
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 15
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %5109 to i64*
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5111 = getelementptr inbounds %struct.GPR, %struct.GPR* %5110, i32 0, i32 17
  %5112 = getelementptr inbounds %struct.Reg, %struct.Reg* %5111, i32 0, i32 0
  %R8.i333 = bitcast %union.anon* %5112 to i64*
  %5113 = load i64, i64* %RBP.i332
  %5114 = sub i64 %5113, 64
  %5115 = load i64, i64* %PC.i331
  %5116 = add i64 %5115, 4
  store i64 %5116, i64* %PC.i331
  %5117 = inttoptr i64 %5114 to i64*
  %5118 = load i64, i64* %5117
  store i64 %5118, i64* %R8.i333, align 8
  store %struct.Memory* %loadMem_409950, %struct.Memory** %MEMORY
  %loadMem_409954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5120 = getelementptr inbounds %struct.GPR, %struct.GPR* %5119, i32 0, i32 33
  %5121 = getelementptr inbounds %struct.Reg, %struct.Reg* %5120, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %5121 to i64*
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5123 = getelementptr inbounds %struct.GPR, %struct.GPR* %5122, i32 0, i32 17
  %5124 = getelementptr inbounds %struct.Reg, %struct.Reg* %5123, i32 0, i32 0
  %R8.i330 = bitcast %union.anon* %5124 to i64*
  %5125 = load i64, i64* %R8.i330
  %5126 = add i64 %5125, 16
  %5127 = load i64, i64* %PC.i329
  %5128 = add i64 %5127, 4
  store i64 %5128, i64* %PC.i329
  %5129 = inttoptr i64 %5126 to i64*
  %5130 = load i64, i64* %5129
  store i64 %5130, i64* %R8.i330, align 8
  store %struct.Memory* %loadMem_409954, %struct.Memory** %MEMORY
  %loadMem_409958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 33
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %5133 to i64*
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 15
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %5136 to i64*
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5138 = getelementptr inbounds %struct.GPR, %struct.GPR* %5137, i32 0, i32 19
  %5139 = getelementptr inbounds %struct.Reg, %struct.Reg* %5138, i32 0, i32 0
  %R9.i328 = bitcast %union.anon* %5139 to i64*
  %5140 = load i64, i64* %RBP.i327
  %5141 = sub i64 %5140, 88
  %5142 = load i64, i64* %PC.i326
  %5143 = add i64 %5142, 4
  store i64 %5143, i64* %PC.i326
  %5144 = inttoptr i64 %5141 to i32*
  %5145 = load i32, i32* %5144
  %5146 = sext i32 %5145 to i64
  store i64 %5146, i64* %R9.i328, align 8
  store %struct.Memory* %loadMem_409958, %struct.Memory** %MEMORY
  %loadMem_40995c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5148 = getelementptr inbounds %struct.GPR, %struct.GPR* %5147, i32 0, i32 33
  %5149 = getelementptr inbounds %struct.Reg, %struct.Reg* %5148, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %5149 to i64*
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5151 = getelementptr inbounds %struct.GPR, %struct.GPR* %5150, i32 0, i32 17
  %5152 = getelementptr inbounds %struct.Reg, %struct.Reg* %5151, i32 0, i32 0
  %R8.i324 = bitcast %union.anon* %5152 to i64*
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5154 = getelementptr inbounds %struct.GPR, %struct.GPR* %5153, i32 0, i32 19
  %5155 = getelementptr inbounds %struct.Reg, %struct.Reg* %5154, i32 0, i32 0
  %R9.i325 = bitcast %union.anon* %5155 to i64*
  %5156 = load i64, i64* %R8.i324
  %5157 = load i64, i64* %R9.i325
  %5158 = mul i64 %5157, 4
  %5159 = add i64 %5158, %5156
  %5160 = load i64, i64* %PC.i323
  %5161 = add i64 %5160, 8
  store i64 %5161, i64* %PC.i323
  %5162 = inttoptr i64 %5159 to i32*
  store i32 0, i32* %5162
  store %struct.Memory* %loadMem_40995c, %struct.Memory** %MEMORY
  %loadMem_409964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5164 = getelementptr inbounds %struct.GPR, %struct.GPR* %5163, i32 0, i32 33
  %5165 = getelementptr inbounds %struct.Reg, %struct.Reg* %5164, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %5165 to i64*
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5167 = getelementptr inbounds %struct.GPR, %struct.GPR* %5166, i32 0, i32 15
  %5168 = getelementptr inbounds %struct.Reg, %struct.Reg* %5167, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %5168 to i64*
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5170 = getelementptr inbounds %struct.GPR, %struct.GPR* %5169, i32 0, i32 17
  %5171 = getelementptr inbounds %struct.Reg, %struct.Reg* %5170, i32 0, i32 0
  %R8.i322 = bitcast %union.anon* %5171 to i64*
  %5172 = load i64, i64* %RBP.i321
  %5173 = sub i64 %5172, 64
  %5174 = load i64, i64* %PC.i320
  %5175 = add i64 %5174, 4
  store i64 %5175, i64* %PC.i320
  %5176 = inttoptr i64 %5173 to i64*
  %5177 = load i64, i64* %5176
  store i64 %5177, i64* %R8.i322, align 8
  store %struct.Memory* %loadMem_409964, %struct.Memory** %MEMORY
  %loadMem_409968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5179 = getelementptr inbounds %struct.GPR, %struct.GPR* %5178, i32 0, i32 33
  %5180 = getelementptr inbounds %struct.Reg, %struct.Reg* %5179, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %5180 to i64*
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5182 = getelementptr inbounds %struct.GPR, %struct.GPR* %5181, i32 0, i32 17
  %5183 = getelementptr inbounds %struct.Reg, %struct.Reg* %5182, i32 0, i32 0
  %R8.i319 = bitcast %union.anon* %5183 to i64*
  %5184 = load i64, i64* %R8.i319
  %5185 = add i64 %5184, 24
  %5186 = load i64, i64* %PC.i318
  %5187 = add i64 %5186, 4
  store i64 %5187, i64* %PC.i318
  %5188 = inttoptr i64 %5185 to i64*
  %5189 = load i64, i64* %5188
  store i64 %5189, i64* %R8.i319, align 8
  store %struct.Memory* %loadMem_409968, %struct.Memory** %MEMORY
  %loadMem_40996c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5191 = getelementptr inbounds %struct.GPR, %struct.GPR* %5190, i32 0, i32 33
  %5192 = getelementptr inbounds %struct.Reg, %struct.Reg* %5191, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %5192 to i64*
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5194 = getelementptr inbounds %struct.GPR, %struct.GPR* %5193, i32 0, i32 15
  %5195 = getelementptr inbounds %struct.Reg, %struct.Reg* %5194, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %5195 to i64*
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 19
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %R9.i317 = bitcast %union.anon* %5198 to i64*
  %5199 = load i64, i64* %RBP.i316
  %5200 = sub i64 %5199, 88
  %5201 = load i64, i64* %PC.i315
  %5202 = add i64 %5201, 4
  store i64 %5202, i64* %PC.i315
  %5203 = inttoptr i64 %5200 to i32*
  %5204 = load i32, i32* %5203
  %5205 = sext i32 %5204 to i64
  store i64 %5205, i64* %R9.i317, align 8
  store %struct.Memory* %loadMem_40996c, %struct.Memory** %MEMORY
  %loadMem_409970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5207 = getelementptr inbounds %struct.GPR, %struct.GPR* %5206, i32 0, i32 33
  %5208 = getelementptr inbounds %struct.Reg, %struct.Reg* %5207, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %5208 to i64*
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5210 = getelementptr inbounds %struct.GPR, %struct.GPR* %5209, i32 0, i32 17
  %5211 = getelementptr inbounds %struct.Reg, %struct.Reg* %5210, i32 0, i32 0
  %R8.i = bitcast %union.anon* %5211 to i64*
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5213 = getelementptr inbounds %struct.GPR, %struct.GPR* %5212, i32 0, i32 19
  %5214 = getelementptr inbounds %struct.Reg, %struct.Reg* %5213, i32 0, i32 0
  %R9.i = bitcast %union.anon* %5214 to i64*
  %5215 = load i64, i64* %R8.i
  %5216 = load i64, i64* %R9.i
  %5217 = mul i64 %5216, 4
  %5218 = add i64 %5217, %5215
  %5219 = load i64, i64* %PC.i314
  %5220 = add i64 %5219, 8
  store i64 %5220, i64* %PC.i314
  %5221 = inttoptr i64 %5218 to i32*
  store i32 0, i32* %5221
  store %struct.Memory* %loadMem_409970, %struct.Memory** %MEMORY
  %loadMem_409978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5223 = getelementptr inbounds %struct.GPR, %struct.GPR* %5222, i32 0, i32 33
  %5224 = getelementptr inbounds %struct.Reg, %struct.Reg* %5223, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %5224 to i64*
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 1
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %5227 to i64*
  %5228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5229 = getelementptr inbounds %struct.GPR, %struct.GPR* %5228, i32 0, i32 15
  %5230 = getelementptr inbounds %struct.Reg, %struct.Reg* %5229, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %5230 to i64*
  %5231 = load i64, i64* %RBP.i313
  %5232 = sub i64 %5231, 88
  %5233 = load i64, i64* %PC.i311
  %5234 = add i64 %5233, 3
  store i64 %5234, i64* %PC.i311
  %5235 = inttoptr i64 %5232 to i32*
  %5236 = load i32, i32* %5235
  %5237 = zext i32 %5236 to i64
  store i64 %5237, i64* %RAX.i312, align 8
  store %struct.Memory* %loadMem_409978, %struct.Memory** %MEMORY
  %loadMem_40997b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5239 = getelementptr inbounds %struct.GPR, %struct.GPR* %5238, i32 0, i32 33
  %5240 = getelementptr inbounds %struct.Reg, %struct.Reg* %5239, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %5240 to i64*
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5242 = getelementptr inbounds %struct.GPR, %struct.GPR* %5241, i32 0, i32 1
  %5243 = getelementptr inbounds %struct.Reg, %struct.Reg* %5242, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %5243 to i64*
  %5244 = load i64, i64* %RAX.i310
  %5245 = load i64, i64* %PC.i309
  %5246 = add i64 %5245, 3
  store i64 %5246, i64* %PC.i309
  %5247 = trunc i64 %5244 to i32
  %5248 = add i32 1, %5247
  %5249 = zext i32 %5248 to i64
  store i64 %5249, i64* %RAX.i310, align 8
  %5250 = icmp ult i32 %5248, %5247
  %5251 = icmp ult i32 %5248, 1
  %5252 = or i1 %5250, %5251
  %5253 = zext i1 %5252 to i8
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5253, i8* %5254, align 1
  %5255 = and i32 %5248, 255
  %5256 = call i32 @llvm.ctpop.i32(i32 %5255)
  %5257 = trunc i32 %5256 to i8
  %5258 = and i8 %5257, 1
  %5259 = xor i8 %5258, 1
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5259, i8* %5260, align 1
  %5261 = xor i64 1, %5244
  %5262 = trunc i64 %5261 to i32
  %5263 = xor i32 %5262, %5248
  %5264 = lshr i32 %5263, 4
  %5265 = trunc i32 %5264 to i8
  %5266 = and i8 %5265, 1
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5266, i8* %5267, align 1
  %5268 = icmp eq i32 %5248, 0
  %5269 = zext i1 %5268 to i8
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5269, i8* %5270, align 1
  %5271 = lshr i32 %5248, 31
  %5272 = trunc i32 %5271 to i8
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5272, i8* %5273, align 1
  %5274 = lshr i32 %5247, 31
  %5275 = xor i32 %5271, %5274
  %5276 = add i32 %5275, %5271
  %5277 = icmp eq i32 %5276, 2
  %5278 = zext i1 %5277 to i8
  %5279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5278, i8* %5279, align 1
  store %struct.Memory* %loadMem_40997b, %struct.Memory** %MEMORY
  %loadMem_40997e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5281 = getelementptr inbounds %struct.GPR, %struct.GPR* %5280, i32 0, i32 33
  %5282 = getelementptr inbounds %struct.Reg, %struct.Reg* %5281, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %5282 to i64*
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5284 = getelementptr inbounds %struct.GPR, %struct.GPR* %5283, i32 0, i32 1
  %5285 = getelementptr inbounds %struct.Reg, %struct.Reg* %5284, i32 0, i32 0
  %EAX.i307 = bitcast %union.anon* %5285 to i32*
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5287 = getelementptr inbounds %struct.GPR, %struct.GPR* %5286, i32 0, i32 15
  %5288 = getelementptr inbounds %struct.Reg, %struct.Reg* %5287, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %5288 to i64*
  %5289 = load i64, i64* %RBP.i308
  %5290 = sub i64 %5289, 88
  %5291 = load i32, i32* %EAX.i307
  %5292 = zext i32 %5291 to i64
  %5293 = load i64, i64* %PC.i306
  %5294 = add i64 %5293, 3
  store i64 %5294, i64* %PC.i306
  %5295 = inttoptr i64 %5290 to i32*
  store i32 %5291, i32* %5295
  store %struct.Memory* %loadMem_40997e, %struct.Memory** %MEMORY
  %loadMem_409981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5297 = getelementptr inbounds %struct.GPR, %struct.GPR* %5296, i32 0, i32 33
  %5298 = getelementptr inbounds %struct.Reg, %struct.Reg* %5297, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %5298 to i64*
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 1
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %5301 to i64*
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 15
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %5304 to i64*
  %5305 = load i64, i64* %RBP.i305
  %5306 = sub i64 %5305, 80
  %5307 = load i64, i64* %PC.i303
  %5308 = add i64 %5307, 3
  store i64 %5308, i64* %PC.i303
  %5309 = inttoptr i64 %5306 to i32*
  %5310 = load i32, i32* %5309
  %5311 = zext i32 %5310 to i64
  store i64 %5311, i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_409981, %struct.Memory** %MEMORY
  %loadMem_409984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 33
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %5314 to i64*
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 5
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %5317 to i64*
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5319 = getelementptr inbounds %struct.GPR, %struct.GPR* %5318, i32 0, i32 15
  %5320 = getelementptr inbounds %struct.Reg, %struct.Reg* %5319, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %5320 to i64*
  %5321 = load i64, i64* %RBP.i302
  %5322 = sub i64 %5321, 76
  %5323 = load i64, i64* %PC.i300
  %5324 = add i64 %5323, 3
  store i64 %5324, i64* %PC.i300
  %5325 = inttoptr i64 %5322 to i32*
  %5326 = load i32, i32* %5325
  %5327 = zext i32 %5326 to i64
  store i64 %5327, i64* %RCX.i301, align 8
  store %struct.Memory* %loadMem_409984, %struct.Memory** %MEMORY
  %loadMem_409987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5329 = getelementptr inbounds %struct.GPR, %struct.GPR* %5328, i32 0, i32 33
  %5330 = getelementptr inbounds %struct.Reg, %struct.Reg* %5329, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %5330 to i64*
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5332 = getelementptr inbounds %struct.GPR, %struct.GPR* %5331, i32 0, i32 5
  %5333 = getelementptr inbounds %struct.Reg, %struct.Reg* %5332, i32 0, i32 0
  %RCX.i299 = bitcast %union.anon* %5333 to i64*
  %5334 = load i64, i64* %RCX.i299
  %5335 = load i64, i64* %PC.i298
  %5336 = add i64 %5335, 3
  store i64 %5336, i64* %PC.i298
  %5337 = trunc i64 %5334 to i32
  %5338 = sub i32 %5337, 1
  %5339 = zext i32 %5338 to i64
  store i64 %5339, i64* %RCX.i299, align 8
  %5340 = icmp ult i32 %5337, 1
  %5341 = zext i1 %5340 to i8
  %5342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5341, i8* %5342, align 1
  %5343 = and i32 %5338, 255
  %5344 = call i32 @llvm.ctpop.i32(i32 %5343)
  %5345 = trunc i32 %5344 to i8
  %5346 = and i8 %5345, 1
  %5347 = xor i8 %5346, 1
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5347, i8* %5348, align 1
  %5349 = xor i64 1, %5334
  %5350 = trunc i64 %5349 to i32
  %5351 = xor i32 %5350, %5338
  %5352 = lshr i32 %5351, 4
  %5353 = trunc i32 %5352 to i8
  %5354 = and i8 %5353, 1
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5354, i8* %5355, align 1
  %5356 = icmp eq i32 %5338, 0
  %5357 = zext i1 %5356 to i8
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5357, i8* %5358, align 1
  %5359 = lshr i32 %5338, 31
  %5360 = trunc i32 %5359 to i8
  %5361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5360, i8* %5361, align 1
  %5362 = lshr i32 %5337, 31
  %5363 = xor i32 %5359, %5362
  %5364 = add i32 %5363, %5362
  %5365 = icmp eq i32 %5364, 2
  %5366 = zext i1 %5365 to i8
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5366, i8* %5367, align 1
  store %struct.Memory* %loadMem_409987, %struct.Memory** %MEMORY
  %loadMem_40998a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 33
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %5370 to i64*
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 1
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %EAX.i296 = bitcast %union.anon* %5373 to i32*
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5375 = getelementptr inbounds %struct.GPR, %struct.GPR* %5374, i32 0, i32 5
  %5376 = getelementptr inbounds %struct.Reg, %struct.Reg* %5375, i32 0, i32 0
  %ECX.i297 = bitcast %union.anon* %5376 to i32*
  %5377 = load i32, i32* %EAX.i296
  %5378 = zext i32 %5377 to i64
  %5379 = load i32, i32* %ECX.i297
  %5380 = zext i32 %5379 to i64
  %5381 = load i64, i64* %PC.i295
  %5382 = add i64 %5381, 2
  store i64 %5382, i64* %PC.i295
  %5383 = sub i32 %5377, %5379
  %5384 = icmp ult i32 %5377, %5379
  %5385 = zext i1 %5384 to i8
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5385, i8* %5386, align 1
  %5387 = and i32 %5383, 255
  %5388 = call i32 @llvm.ctpop.i32(i32 %5387)
  %5389 = trunc i32 %5388 to i8
  %5390 = and i8 %5389, 1
  %5391 = xor i8 %5390, 1
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5391, i8* %5392, align 1
  %5393 = xor i64 %5380, %5378
  %5394 = trunc i64 %5393 to i32
  %5395 = xor i32 %5394, %5383
  %5396 = lshr i32 %5395, 4
  %5397 = trunc i32 %5396 to i8
  %5398 = and i8 %5397, 1
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5398, i8* %5399, align 1
  %5400 = icmp eq i32 %5383, 0
  %5401 = zext i1 %5400 to i8
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5401, i8* %5402, align 1
  %5403 = lshr i32 %5383, 31
  %5404 = trunc i32 %5403 to i8
  %5405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5404, i8* %5405, align 1
  %5406 = lshr i32 %5377, 31
  %5407 = lshr i32 %5379, 31
  %5408 = xor i32 %5407, %5406
  %5409 = xor i32 %5403, %5406
  %5410 = add i32 %5409, %5408
  %5411 = icmp eq i32 %5410, 2
  %5412 = zext i1 %5411 to i8
  %5413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5412, i8* %5413, align 1
  store %struct.Memory* %loadMem_40998a, %struct.Memory** %MEMORY
  %loadMem_40998c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5415 = getelementptr inbounds %struct.GPR, %struct.GPR* %5414, i32 0, i32 33
  %5416 = getelementptr inbounds %struct.Reg, %struct.Reg* %5415, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %5416 to i64*
  %5417 = load i64, i64* %PC.i294
  %5418 = add i64 %5417, 151
  %5419 = load i64, i64* %PC.i294
  %5420 = add i64 %5419, 6
  %5421 = load i64, i64* %PC.i294
  %5422 = add i64 %5421, 6
  store i64 %5422, i64* %PC.i294
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5424 = load i8, i8* %5423, align 1
  store i8 %5424, i8* %BRANCH_TAKEN, align 1
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5426 = icmp ne i8 %5424, 0
  %5427 = select i1 %5426, i64 %5418, i64 %5420
  store i64 %5427, i64* %5425, align 8
  store %struct.Memory* %loadMem_40998c, %struct.Memory** %MEMORY
  %loadBr_40998c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40998c = icmp eq i8 %loadBr_40998c, 1
  br i1 %cmpBr_40998c, label %block_.L_409a23, label %block_409992

block_409992:                                     ; preds = %block_.L_409925
  %loadMem_409992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5429 = getelementptr inbounds %struct.GPR, %struct.GPR* %5428, i32 0, i32 33
  %5430 = getelementptr inbounds %struct.Reg, %struct.Reg* %5429, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %5430 to i64*
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5432 = getelementptr inbounds %struct.GPR, %struct.GPR* %5431, i32 0, i32 1
  %5433 = getelementptr inbounds %struct.Reg, %struct.Reg* %5432, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %5433 to i64*
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5435 = getelementptr inbounds %struct.GPR, %struct.GPR* %5434, i32 0, i32 15
  %5436 = getelementptr inbounds %struct.Reg, %struct.Reg* %5435, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %5436 to i64*
  %5437 = load i64, i64* %RBP.i293
  %5438 = sub i64 %5437, 56
  %5439 = load i64, i64* %PC.i291
  %5440 = add i64 %5439, 4
  store i64 %5440, i64* %PC.i291
  %5441 = inttoptr i64 %5438 to i64*
  %5442 = load i64, i64* %5441
  store i64 %5442, i64* %RAX.i292, align 8
  store %struct.Memory* %loadMem_409992, %struct.Memory** %MEMORY
  %loadMem_409996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5444 = getelementptr inbounds %struct.GPR, %struct.GPR* %5443, i32 0, i32 33
  %5445 = getelementptr inbounds %struct.Reg, %struct.Reg* %5444, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %5445 to i64*
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5447 = getelementptr inbounds %struct.GPR, %struct.GPR* %5446, i32 0, i32 1
  %5448 = getelementptr inbounds %struct.Reg, %struct.Reg* %5447, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %5448 to i64*
  %5449 = load i64, i64* %RAX.i290
  %5450 = add i64 %5449, 24
  %5451 = load i64, i64* %PC.i289
  %5452 = add i64 %5451, 4
  store i64 %5452, i64* %PC.i289
  %5453 = inttoptr i64 %5450 to i64*
  %5454 = load i64, i64* %5453
  store i64 %5454, i64* %RAX.i290, align 8
  store %struct.Memory* %loadMem_409996, %struct.Memory** %MEMORY
  %loadMem_40999a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5456 = getelementptr inbounds %struct.GPR, %struct.GPR* %5455, i32 0, i32 33
  %5457 = getelementptr inbounds %struct.Reg, %struct.Reg* %5456, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %5457 to i64*
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5459 = getelementptr inbounds %struct.GPR, %struct.GPR* %5458, i32 0, i32 5
  %5460 = getelementptr inbounds %struct.Reg, %struct.Reg* %5459, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %5460 to i64*
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5462 = getelementptr inbounds %struct.GPR, %struct.GPR* %5461, i32 0, i32 15
  %5463 = getelementptr inbounds %struct.Reg, %struct.Reg* %5462, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %5463 to i64*
  %5464 = load i64, i64* %RBP.i288
  %5465 = sub i64 %5464, 80
  %5466 = load i64, i64* %PC.i286
  %5467 = add i64 %5466, 3
  store i64 %5467, i64* %PC.i286
  %5468 = inttoptr i64 %5465 to i32*
  %5469 = load i32, i32* %5468
  %5470 = zext i32 %5469 to i64
  store i64 %5470, i64* %RCX.i287, align 8
  store %struct.Memory* %loadMem_40999a, %struct.Memory** %MEMORY
  %loadMem_40999d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5472 = getelementptr inbounds %struct.GPR, %struct.GPR* %5471, i32 0, i32 33
  %5473 = getelementptr inbounds %struct.Reg, %struct.Reg* %5472, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %5473 to i64*
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5475 = getelementptr inbounds %struct.GPR, %struct.GPR* %5474, i32 0, i32 5
  %5476 = getelementptr inbounds %struct.Reg, %struct.Reg* %5475, i32 0, i32 0
  %RCX.i285 = bitcast %union.anon* %5476 to i64*
  %5477 = load i64, i64* %RCX.i285
  %5478 = load i64, i64* %PC.i284
  %5479 = add i64 %5478, 2
  store i64 %5479, i64* %PC.i284
  %5480 = trunc i64 %5477 to i32
  %5481 = shl i32 %5480, 1
  %5482 = icmp slt i32 %5480, 0
  %5483 = icmp slt i32 %5481, 0
  %5484 = xor i1 %5482, %5483
  %5485 = zext i32 %5481 to i64
  store i64 %5485, i64* %RCX.i285, align 8
  %5486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5487 = zext i1 %5482 to i8
  store i8 %5487, i8* %5486, align 1
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5489 = and i32 %5481, 254
  %5490 = call i32 @llvm.ctpop.i32(i32 %5489)
  %5491 = trunc i32 %5490 to i8
  %5492 = and i8 %5491, 1
  %5493 = xor i8 %5492, 1
  store i8 %5493, i8* %5488, align 1
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5494, align 1
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5496 = icmp eq i32 %5481, 0
  %5497 = zext i1 %5496 to i8
  store i8 %5497, i8* %5495, align 1
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5499 = lshr i32 %5481, 31
  %5500 = trunc i32 %5499 to i8
  store i8 %5500, i8* %5498, align 1
  %5501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5502 = zext i1 %5484 to i8
  store i8 %5502, i8* %5501, align 1
  store %struct.Memory* %loadMem_40999d, %struct.Memory** %MEMORY
  %loadMem_4099a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5504 = getelementptr inbounds %struct.GPR, %struct.GPR* %5503, i32 0, i32 33
  %5505 = getelementptr inbounds %struct.Reg, %struct.Reg* %5504, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %5505 to i64*
  %5506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5507 = getelementptr inbounds %struct.GPR, %struct.GPR* %5506, i32 0, i32 5
  %5508 = getelementptr inbounds %struct.Reg, %struct.Reg* %5507, i32 0, i32 0
  %RCX.i283 = bitcast %union.anon* %5508 to i64*
  %5509 = load i64, i64* %RCX.i283
  %5510 = load i64, i64* %PC.i282
  %5511 = add i64 %5510, 3
  store i64 %5511, i64* %PC.i282
  %5512 = trunc i64 %5509 to i32
  %5513 = add i32 2, %5512
  %5514 = zext i32 %5513 to i64
  store i64 %5514, i64* %RCX.i283, align 8
  %5515 = icmp ult i32 %5513, %5512
  %5516 = icmp ult i32 %5513, 2
  %5517 = or i1 %5515, %5516
  %5518 = zext i1 %5517 to i8
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5518, i8* %5519, align 1
  %5520 = and i32 %5513, 255
  %5521 = call i32 @llvm.ctpop.i32(i32 %5520)
  %5522 = trunc i32 %5521 to i8
  %5523 = and i8 %5522, 1
  %5524 = xor i8 %5523, 1
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5524, i8* %5525, align 1
  %5526 = xor i64 2, %5509
  %5527 = trunc i64 %5526 to i32
  %5528 = xor i32 %5527, %5513
  %5529 = lshr i32 %5528, 4
  %5530 = trunc i32 %5529 to i8
  %5531 = and i8 %5530, 1
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5531, i8* %5532, align 1
  %5533 = icmp eq i32 %5513, 0
  %5534 = zext i1 %5533 to i8
  %5535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5534, i8* %5535, align 1
  %5536 = lshr i32 %5513, 31
  %5537 = trunc i32 %5536 to i8
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5537, i8* %5538, align 1
  %5539 = lshr i32 %5512, 31
  %5540 = xor i32 %5536, %5539
  %5541 = add i32 %5540, %5536
  %5542 = icmp eq i32 %5541, 2
  %5543 = zext i1 %5542 to i8
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5543, i8* %5544, align 1
  store %struct.Memory* %loadMem_4099a0, %struct.Memory** %MEMORY
  %loadMem_4099a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5546 = getelementptr inbounds %struct.GPR, %struct.GPR* %5545, i32 0, i32 33
  %5547 = getelementptr inbounds %struct.Reg, %struct.Reg* %5546, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %5547 to i64*
  %5548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5549 = getelementptr inbounds %struct.GPR, %struct.GPR* %5548, i32 0, i32 5
  %5550 = getelementptr inbounds %struct.Reg, %struct.Reg* %5549, i32 0, i32 0
  %ECX.i280 = bitcast %union.anon* %5550 to i32*
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5552 = getelementptr inbounds %struct.GPR, %struct.GPR* %5551, i32 0, i32 7
  %5553 = getelementptr inbounds %struct.Reg, %struct.Reg* %5552, i32 0, i32 0
  %RDX.i281 = bitcast %union.anon* %5553 to i64*
  %5554 = load i32, i32* %ECX.i280
  %5555 = zext i32 %5554 to i64
  %5556 = load i64, i64* %PC.i279
  %5557 = add i64 %5556, 3
  store i64 %5557, i64* %PC.i279
  %5558 = shl i64 %5555, 32
  %5559 = ashr exact i64 %5558, 32
  store i64 %5559, i64* %RDX.i281, align 8
  store %struct.Memory* %loadMem_4099a3, %struct.Memory** %MEMORY
  %loadMem_4099a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5561 = getelementptr inbounds %struct.GPR, %struct.GPR* %5560, i32 0, i32 33
  %5562 = getelementptr inbounds %struct.Reg, %struct.Reg* %5561, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %5562 to i64*
  %5563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5564 = getelementptr inbounds %struct.GPR, %struct.GPR* %5563, i32 0, i32 1
  %5565 = getelementptr inbounds %struct.Reg, %struct.Reg* %5564, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %5565 to i64*
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5567 = getelementptr inbounds %struct.GPR, %struct.GPR* %5566, i32 0, i32 5
  %5568 = getelementptr inbounds %struct.Reg, %struct.Reg* %5567, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %5568 to i64*
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5570 = getelementptr inbounds %struct.GPR, %struct.GPR* %5569, i32 0, i32 7
  %5571 = getelementptr inbounds %struct.Reg, %struct.Reg* %5570, i32 0, i32 0
  %RDX.i278 = bitcast %union.anon* %5571 to i64*
  %5572 = load i64, i64* %RAX.i276
  %5573 = load i64, i64* %RDX.i278
  %5574 = mul i64 %5573, 4
  %5575 = add i64 %5574, %5572
  %5576 = load i64, i64* %PC.i275
  %5577 = add i64 %5576, 3
  store i64 %5577, i64* %PC.i275
  %5578 = inttoptr i64 %5575 to i32*
  %5579 = load i32, i32* %5578
  %5580 = zext i32 %5579 to i64
  store i64 %5580, i64* %RCX.i277, align 8
  store %struct.Memory* %loadMem_4099a6, %struct.Memory** %MEMORY
  %loadMem_4099a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5582 = getelementptr inbounds %struct.GPR, %struct.GPR* %5581, i32 0, i32 33
  %5583 = getelementptr inbounds %struct.Reg, %struct.Reg* %5582, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %5583 to i64*
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5585 = getelementptr inbounds %struct.GPR, %struct.GPR* %5584, i32 0, i32 5
  %5586 = getelementptr inbounds %struct.Reg, %struct.Reg* %5585, i32 0, i32 0
  %RCX.i274 = bitcast %union.anon* %5586 to i64*
  %5587 = load i64, i64* %RCX.i274
  %5588 = load i64, i64* %PC.i273
  %5589 = add i64 %5588, 3
  store i64 %5589, i64* %PC.i273
  %5590 = trunc i64 %5587 to i32
  %5591 = add i32 1, %5590
  %5592 = zext i32 %5591 to i64
  store i64 %5592, i64* %RCX.i274, align 8
  %5593 = icmp ult i32 %5591, %5590
  %5594 = icmp ult i32 %5591, 1
  %5595 = or i1 %5593, %5594
  %5596 = zext i1 %5595 to i8
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5596, i8* %5597, align 1
  %5598 = and i32 %5591, 255
  %5599 = call i32 @llvm.ctpop.i32(i32 %5598)
  %5600 = trunc i32 %5599 to i8
  %5601 = and i8 %5600, 1
  %5602 = xor i8 %5601, 1
  %5603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5602, i8* %5603, align 1
  %5604 = xor i64 1, %5587
  %5605 = trunc i64 %5604 to i32
  %5606 = xor i32 %5605, %5591
  %5607 = lshr i32 %5606, 4
  %5608 = trunc i32 %5607 to i8
  %5609 = and i8 %5608, 1
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5609, i8* %5610, align 1
  %5611 = icmp eq i32 %5591, 0
  %5612 = zext i1 %5611 to i8
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5612, i8* %5613, align 1
  %5614 = lshr i32 %5591, 31
  %5615 = trunc i32 %5614 to i8
  %5616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5615, i8* %5616, align 1
  %5617 = lshr i32 %5590, 31
  %5618 = xor i32 %5614, %5617
  %5619 = add i32 %5618, %5614
  %5620 = icmp eq i32 %5619, 2
  %5621 = zext i1 %5620 to i8
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5621, i8* %5622, align 1
  store %struct.Memory* %loadMem_4099a9, %struct.Memory** %MEMORY
  %loadMem_4099ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5624 = getelementptr inbounds %struct.GPR, %struct.GPR* %5623, i32 0, i32 33
  %5625 = getelementptr inbounds %struct.Reg, %struct.Reg* %5624, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %5625 to i64*
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5627 = getelementptr inbounds %struct.GPR, %struct.GPR* %5626, i32 0, i32 5
  %5628 = getelementptr inbounds %struct.Reg, %struct.Reg* %5627, i32 0, i32 0
  %ECX.i271 = bitcast %union.anon* %5628 to i32*
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5630 = getelementptr inbounds %struct.GPR, %struct.GPR* %5629, i32 0, i32 15
  %5631 = getelementptr inbounds %struct.Reg, %struct.Reg* %5630, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %5631 to i64*
  %5632 = load i64, i64* %RBP.i272
  %5633 = sub i64 %5632, 84
  %5634 = load i32, i32* %ECX.i271
  %5635 = zext i32 %5634 to i64
  %5636 = load i64, i64* %PC.i270
  %5637 = add i64 %5636, 3
  store i64 %5637, i64* %PC.i270
  %5638 = inttoptr i64 %5633 to i32*
  store i32 %5634, i32* %5638
  store %struct.Memory* %loadMem_4099ac, %struct.Memory** %MEMORY
  br label %block_.L_4099af

block_.L_4099af:                                  ; preds = %block_4099d2, %block_409992
  %loadMem_4099af = load %struct.Memory*, %struct.Memory** %MEMORY
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5640 = getelementptr inbounds %struct.GPR, %struct.GPR* %5639, i32 0, i32 33
  %5641 = getelementptr inbounds %struct.Reg, %struct.Reg* %5640, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %5641 to i64*
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5643 = getelementptr inbounds %struct.GPR, %struct.GPR* %5642, i32 0, i32 1
  %5644 = getelementptr inbounds %struct.Reg, %struct.Reg* %5643, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %5644 to i64*
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 15
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %5647 to i64*
  %5648 = load i64, i64* %RBP.i269
  %5649 = sub i64 %5648, 84
  %5650 = load i64, i64* %PC.i267
  %5651 = add i64 %5650, 3
  store i64 %5651, i64* %PC.i267
  %5652 = inttoptr i64 %5649 to i32*
  %5653 = load i32, i32* %5652
  %5654 = zext i32 %5653 to i64
  store i64 %5654, i64* %RAX.i268, align 8
  store %struct.Memory* %loadMem_4099af, %struct.Memory** %MEMORY
  %loadMem_4099b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5656 = getelementptr inbounds %struct.GPR, %struct.GPR* %5655, i32 0, i32 33
  %5657 = getelementptr inbounds %struct.Reg, %struct.Reg* %5656, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %5657 to i64*
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5659 = getelementptr inbounds %struct.GPR, %struct.GPR* %5658, i32 0, i32 5
  %5660 = getelementptr inbounds %struct.Reg, %struct.Reg* %5659, i32 0, i32 0
  %RCX.i265 = bitcast %union.anon* %5660 to i64*
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5662 = getelementptr inbounds %struct.GPR, %struct.GPR* %5661, i32 0, i32 15
  %5663 = getelementptr inbounds %struct.Reg, %struct.Reg* %5662, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %5663 to i64*
  %5664 = load i64, i64* %RBP.i266
  %5665 = sub i64 %5664, 56
  %5666 = load i64, i64* %PC.i264
  %5667 = add i64 %5666, 4
  store i64 %5667, i64* %PC.i264
  %5668 = inttoptr i64 %5665 to i64*
  %5669 = load i64, i64* %5668
  store i64 %5669, i64* %RCX.i265, align 8
  store %struct.Memory* %loadMem_4099b2, %struct.Memory** %MEMORY
  %loadMem_4099b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5671 = getelementptr inbounds %struct.GPR, %struct.GPR* %5670, i32 0, i32 33
  %5672 = getelementptr inbounds %struct.Reg, %struct.Reg* %5671, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %5672 to i64*
  %5673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5674 = getelementptr inbounds %struct.GPR, %struct.GPR* %5673, i32 0, i32 5
  %5675 = getelementptr inbounds %struct.Reg, %struct.Reg* %5674, i32 0, i32 0
  %RCX.i263 = bitcast %union.anon* %5675 to i64*
  %5676 = load i64, i64* %RCX.i263
  %5677 = add i64 %5676, 24
  %5678 = load i64, i64* %PC.i262
  %5679 = add i64 %5678, 4
  store i64 %5679, i64* %PC.i262
  %5680 = inttoptr i64 %5677 to i64*
  %5681 = load i64, i64* %5680
  store i64 %5681, i64* %RCX.i263, align 8
  store %struct.Memory* %loadMem_4099b6, %struct.Memory** %MEMORY
  %loadMem_4099ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5683 = getelementptr inbounds %struct.GPR, %struct.GPR* %5682, i32 0, i32 33
  %5684 = getelementptr inbounds %struct.Reg, %struct.Reg* %5683, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %5684 to i64*
  %5685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5686 = getelementptr inbounds %struct.GPR, %struct.GPR* %5685, i32 0, i32 7
  %5687 = getelementptr inbounds %struct.Reg, %struct.Reg* %5686, i32 0, i32 0
  %RDX.i260 = bitcast %union.anon* %5687 to i64*
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5689 = getelementptr inbounds %struct.GPR, %struct.GPR* %5688, i32 0, i32 15
  %5690 = getelementptr inbounds %struct.Reg, %struct.Reg* %5689, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %5690 to i64*
  %5691 = load i64, i64* %RBP.i261
  %5692 = sub i64 %5691, 80
  %5693 = load i64, i64* %PC.i259
  %5694 = add i64 %5693, 3
  store i64 %5694, i64* %PC.i259
  %5695 = inttoptr i64 %5692 to i32*
  %5696 = load i32, i32* %5695
  %5697 = zext i32 %5696 to i64
  store i64 %5697, i64* %RDX.i260, align 8
  store %struct.Memory* %loadMem_4099ba, %struct.Memory** %MEMORY
  %loadMem_4099bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5699 = getelementptr inbounds %struct.GPR, %struct.GPR* %5698, i32 0, i32 33
  %5700 = getelementptr inbounds %struct.Reg, %struct.Reg* %5699, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %5700 to i64*
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5702 = getelementptr inbounds %struct.GPR, %struct.GPR* %5701, i32 0, i32 7
  %5703 = getelementptr inbounds %struct.Reg, %struct.Reg* %5702, i32 0, i32 0
  %RDX.i258 = bitcast %union.anon* %5703 to i64*
  %5704 = load i64, i64* %RDX.i258
  %5705 = load i64, i64* %PC.i257
  %5706 = add i64 %5705, 3
  store i64 %5706, i64* %PC.i257
  %5707 = trunc i64 %5704 to i32
  %5708 = add i32 1, %5707
  %5709 = zext i32 %5708 to i64
  store i64 %5709, i64* %RDX.i258, align 8
  %5710 = icmp ult i32 %5708, %5707
  %5711 = icmp ult i32 %5708, 1
  %5712 = or i1 %5710, %5711
  %5713 = zext i1 %5712 to i8
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5713, i8* %5714, align 1
  %5715 = and i32 %5708, 255
  %5716 = call i32 @llvm.ctpop.i32(i32 %5715)
  %5717 = trunc i32 %5716 to i8
  %5718 = and i8 %5717, 1
  %5719 = xor i8 %5718, 1
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5719, i8* %5720, align 1
  %5721 = xor i64 1, %5704
  %5722 = trunc i64 %5721 to i32
  %5723 = xor i32 %5722, %5708
  %5724 = lshr i32 %5723, 4
  %5725 = trunc i32 %5724 to i8
  %5726 = and i8 %5725, 1
  %5727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5726, i8* %5727, align 1
  %5728 = icmp eq i32 %5708, 0
  %5729 = zext i1 %5728 to i8
  %5730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5729, i8* %5730, align 1
  %5731 = lshr i32 %5708, 31
  %5732 = trunc i32 %5731 to i8
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5732, i8* %5733, align 1
  %5734 = lshr i32 %5707, 31
  %5735 = xor i32 %5731, %5734
  %5736 = add i32 %5735, %5731
  %5737 = icmp eq i32 %5736, 2
  %5738 = zext i1 %5737 to i8
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5738, i8* %5739, align 1
  store %struct.Memory* %loadMem_4099bd, %struct.Memory** %MEMORY
  %loadMem_4099c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5741 = getelementptr inbounds %struct.GPR, %struct.GPR* %5740, i32 0, i32 33
  %5742 = getelementptr inbounds %struct.Reg, %struct.Reg* %5741, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %5742 to i64*
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5744 = getelementptr inbounds %struct.GPR, %struct.GPR* %5743, i32 0, i32 7
  %5745 = getelementptr inbounds %struct.Reg, %struct.Reg* %5744, i32 0, i32 0
  %RDX.i256 = bitcast %union.anon* %5745 to i64*
  %5746 = load i64, i64* %RDX.i256
  %5747 = load i64, i64* %PC.i255
  %5748 = add i64 %5747, 2
  store i64 %5748, i64* %PC.i255
  %5749 = trunc i64 %5746 to i32
  %5750 = shl i32 %5749, 1
  %5751 = icmp slt i32 %5749, 0
  %5752 = icmp slt i32 %5750, 0
  %5753 = xor i1 %5751, %5752
  %5754 = zext i32 %5750 to i64
  store i64 %5754, i64* %RDX.i256, align 8
  %5755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5756 = zext i1 %5751 to i8
  store i8 %5756, i8* %5755, align 1
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5758 = and i32 %5750, 254
  %5759 = call i32 @llvm.ctpop.i32(i32 %5758)
  %5760 = trunc i32 %5759 to i8
  %5761 = and i8 %5760, 1
  %5762 = xor i8 %5761, 1
  store i8 %5762, i8* %5757, align 1
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5763, align 1
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5765 = icmp eq i32 %5750, 0
  %5766 = zext i1 %5765 to i8
  store i8 %5766, i8* %5764, align 1
  %5767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5768 = lshr i32 %5750, 31
  %5769 = trunc i32 %5768 to i8
  store i8 %5769, i8* %5767, align 1
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5771 = zext i1 %5753 to i8
  store i8 %5771, i8* %5770, align 1
  store %struct.Memory* %loadMem_4099c0, %struct.Memory** %MEMORY
  %loadMem_4099c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5773 = getelementptr inbounds %struct.GPR, %struct.GPR* %5772, i32 0, i32 33
  %5774 = getelementptr inbounds %struct.Reg, %struct.Reg* %5773, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %5774 to i64*
  %5775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5776 = getelementptr inbounds %struct.GPR, %struct.GPR* %5775, i32 0, i32 7
  %5777 = getelementptr inbounds %struct.Reg, %struct.Reg* %5776, i32 0, i32 0
  %RDX.i254 = bitcast %union.anon* %5777 to i64*
  %5778 = load i64, i64* %RDX.i254
  %5779 = load i64, i64* %PC.i253
  %5780 = add i64 %5779, 3
  store i64 %5780, i64* %PC.i253
  %5781 = trunc i64 %5778 to i32
  %5782 = add i32 1, %5781
  %5783 = zext i32 %5782 to i64
  store i64 %5783, i64* %RDX.i254, align 8
  %5784 = icmp ult i32 %5782, %5781
  %5785 = icmp ult i32 %5782, 1
  %5786 = or i1 %5784, %5785
  %5787 = zext i1 %5786 to i8
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5787, i8* %5788, align 1
  %5789 = and i32 %5782, 255
  %5790 = call i32 @llvm.ctpop.i32(i32 %5789)
  %5791 = trunc i32 %5790 to i8
  %5792 = and i8 %5791, 1
  %5793 = xor i8 %5792, 1
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5793, i8* %5794, align 1
  %5795 = xor i64 1, %5778
  %5796 = trunc i64 %5795 to i32
  %5797 = xor i32 %5796, %5782
  %5798 = lshr i32 %5797, 4
  %5799 = trunc i32 %5798 to i8
  %5800 = and i8 %5799, 1
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5800, i8* %5801, align 1
  %5802 = icmp eq i32 %5782, 0
  %5803 = zext i1 %5802 to i8
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5803, i8* %5804, align 1
  %5805 = lshr i32 %5782, 31
  %5806 = trunc i32 %5805 to i8
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5806, i8* %5807, align 1
  %5808 = lshr i32 %5781, 31
  %5809 = xor i32 %5805, %5808
  %5810 = add i32 %5809, %5805
  %5811 = icmp eq i32 %5810, 2
  %5812 = zext i1 %5811 to i8
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5812, i8* %5813, align 1
  store %struct.Memory* %loadMem_4099c3, %struct.Memory** %MEMORY
  %loadMem_4099c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5815 = getelementptr inbounds %struct.GPR, %struct.GPR* %5814, i32 0, i32 33
  %5816 = getelementptr inbounds %struct.Reg, %struct.Reg* %5815, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %5816 to i64*
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5818 = getelementptr inbounds %struct.GPR, %struct.GPR* %5817, i32 0, i32 7
  %5819 = getelementptr inbounds %struct.Reg, %struct.Reg* %5818, i32 0, i32 0
  %EDX.i251 = bitcast %union.anon* %5819 to i32*
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5821 = getelementptr inbounds %struct.GPR, %struct.GPR* %5820, i32 0, i32 9
  %5822 = getelementptr inbounds %struct.Reg, %struct.Reg* %5821, i32 0, i32 0
  %RSI.i252 = bitcast %union.anon* %5822 to i64*
  %5823 = load i32, i32* %EDX.i251
  %5824 = zext i32 %5823 to i64
  %5825 = load i64, i64* %PC.i250
  %5826 = add i64 %5825, 3
  store i64 %5826, i64* %PC.i250
  %5827 = shl i64 %5824, 32
  %5828 = ashr exact i64 %5827, 32
  store i64 %5828, i64* %RSI.i252, align 8
  store %struct.Memory* %loadMem_4099c6, %struct.Memory** %MEMORY
  %loadMem_4099c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5830 = getelementptr inbounds %struct.GPR, %struct.GPR* %5829, i32 0, i32 33
  %5831 = getelementptr inbounds %struct.Reg, %struct.Reg* %5830, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %5831 to i64*
  %5832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5833 = getelementptr inbounds %struct.GPR, %struct.GPR* %5832, i32 0, i32 1
  %5834 = getelementptr inbounds %struct.Reg, %struct.Reg* %5833, i32 0, i32 0
  %EAX.i248 = bitcast %union.anon* %5834 to i32*
  %5835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5836 = getelementptr inbounds %struct.GPR, %struct.GPR* %5835, i32 0, i32 5
  %5837 = getelementptr inbounds %struct.Reg, %struct.Reg* %5836, i32 0, i32 0
  %RCX.i249 = bitcast %union.anon* %5837 to i64*
  %5838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5839 = getelementptr inbounds %struct.GPR, %struct.GPR* %5838, i32 0, i32 9
  %5840 = getelementptr inbounds %struct.Reg, %struct.Reg* %5839, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5840 to i64*
  %5841 = load i32, i32* %EAX.i248
  %5842 = zext i32 %5841 to i64
  %5843 = load i64, i64* %RCX.i249
  %5844 = load i64, i64* %RSI.i
  %5845 = mul i64 %5844, 4
  %5846 = add i64 %5845, %5843
  %5847 = load i64, i64* %PC.i247
  %5848 = add i64 %5847, 3
  store i64 %5848, i64* %PC.i247
  %5849 = inttoptr i64 %5846 to i32*
  %5850 = load i32, i32* %5849
  %5851 = sub i32 %5841, %5850
  %5852 = icmp ult i32 %5841, %5850
  %5853 = zext i1 %5852 to i8
  %5854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5853, i8* %5854, align 1
  %5855 = and i32 %5851, 255
  %5856 = call i32 @llvm.ctpop.i32(i32 %5855)
  %5857 = trunc i32 %5856 to i8
  %5858 = and i8 %5857, 1
  %5859 = xor i8 %5858, 1
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5859, i8* %5860, align 1
  %5861 = xor i32 %5850, %5841
  %5862 = xor i32 %5861, %5851
  %5863 = lshr i32 %5862, 4
  %5864 = trunc i32 %5863 to i8
  %5865 = and i8 %5864, 1
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5865, i8* %5866, align 1
  %5867 = icmp eq i32 %5851, 0
  %5868 = zext i1 %5867 to i8
  %5869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5868, i8* %5869, align 1
  %5870 = lshr i32 %5851, 31
  %5871 = trunc i32 %5870 to i8
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5871, i8* %5872, align 1
  %5873 = lshr i32 %5841, 31
  %5874 = lshr i32 %5850, 31
  %5875 = xor i32 %5874, %5873
  %5876 = xor i32 %5870, %5873
  %5877 = add i32 %5876, %5875
  %5878 = icmp eq i32 %5877, 2
  %5879 = zext i1 %5878 to i8
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5879, i8* %5880, align 1
  store %struct.Memory* %loadMem_4099c9, %struct.Memory** %MEMORY
  %loadMem_4099cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5882 = getelementptr inbounds %struct.GPR, %struct.GPR* %5881, i32 0, i32 33
  %5883 = getelementptr inbounds %struct.Reg, %struct.Reg* %5882, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %5883 to i64*
  %5884 = load i64, i64* %PC.i246
  %5885 = add i64 %5884, 82
  %5886 = load i64, i64* %PC.i246
  %5887 = add i64 %5886, 6
  %5888 = load i64, i64* %PC.i246
  %5889 = add i64 %5888, 6
  store i64 %5889, i64* %PC.i246
  %5890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5891 = load i8, i8* %5890, align 1
  %5892 = icmp eq i8 %5891, 0
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5894 = load i8, i8* %5893, align 1
  %5895 = icmp ne i8 %5894, 0
  %5896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5897 = load i8, i8* %5896, align 1
  %5898 = icmp ne i8 %5897, 0
  %5899 = xor i1 %5895, %5898
  %5900 = xor i1 %5899, true
  %5901 = and i1 %5892, %5900
  %5902 = zext i1 %5901 to i8
  store i8 %5902, i8* %BRANCH_TAKEN, align 1
  %5903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5904 = select i1 %5901, i64 %5885, i64 %5887
  store i64 %5904, i64* %5903, align 8
  store %struct.Memory* %loadMem_4099cc, %struct.Memory** %MEMORY
  %loadBr_4099cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4099cc = icmp eq i8 %loadBr_4099cc, 1
  br i1 %cmpBr_4099cc, label %block_.L_409a1e, label %block_4099d2

block_4099d2:                                     ; preds = %block_.L_4099af
  %loadMem_4099d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5906 = getelementptr inbounds %struct.GPR, %struct.GPR* %5905, i32 0, i32 33
  %5907 = getelementptr inbounds %struct.Reg, %struct.Reg* %5906, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %5907 to i64*
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5909 = getelementptr inbounds %struct.GPR, %struct.GPR* %5908, i32 0, i32 1
  %5910 = getelementptr inbounds %struct.Reg, %struct.Reg* %5909, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %5910 to i64*
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5912 = getelementptr inbounds %struct.GPR, %struct.GPR* %5911, i32 0, i32 15
  %5913 = getelementptr inbounds %struct.Reg, %struct.Reg* %5912, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %5913 to i64*
  %5914 = load i64, i64* %RBP.i245
  %5915 = sub i64 %5914, 64
  %5916 = load i64, i64* %PC.i243
  %5917 = add i64 %5916, 4
  store i64 %5917, i64* %PC.i243
  %5918 = inttoptr i64 %5915 to i64*
  %5919 = load i64, i64* %5918
  store i64 %5919, i64* %RAX.i244, align 8
  store %struct.Memory* %loadMem_4099d2, %struct.Memory** %MEMORY
  %loadMem_4099d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5921 = getelementptr inbounds %struct.GPR, %struct.GPR* %5920, i32 0, i32 33
  %5922 = getelementptr inbounds %struct.Reg, %struct.Reg* %5921, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %5922 to i64*
  %5923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5924 = getelementptr inbounds %struct.GPR, %struct.GPR* %5923, i32 0, i32 1
  %5925 = getelementptr inbounds %struct.Reg, %struct.Reg* %5924, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %5925 to i64*
  %5926 = load i64, i64* %RAX.i242
  %5927 = add i64 %5926, 8
  %5928 = load i64, i64* %PC.i241
  %5929 = add i64 %5928, 4
  store i64 %5929, i64* %PC.i241
  %5930 = inttoptr i64 %5927 to i64*
  %5931 = load i64, i64* %5930
  store i64 %5931, i64* %RAX.i242, align 8
  store %struct.Memory* %loadMem_4099d6, %struct.Memory** %MEMORY
  %loadMem_4099da = load %struct.Memory*, %struct.Memory** %MEMORY
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5933 = getelementptr inbounds %struct.GPR, %struct.GPR* %5932, i32 0, i32 33
  %5934 = getelementptr inbounds %struct.Reg, %struct.Reg* %5933, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %5934 to i64*
  %5935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5936 = getelementptr inbounds %struct.GPR, %struct.GPR* %5935, i32 0, i32 5
  %5937 = getelementptr inbounds %struct.Reg, %struct.Reg* %5936, i32 0, i32 0
  %RCX.i239 = bitcast %union.anon* %5937 to i64*
  %5938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5939 = getelementptr inbounds %struct.GPR, %struct.GPR* %5938, i32 0, i32 15
  %5940 = getelementptr inbounds %struct.Reg, %struct.Reg* %5939, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %5940 to i64*
  %5941 = load i64, i64* %RBP.i240
  %5942 = sub i64 %5941, 88
  %5943 = load i64, i64* %PC.i238
  %5944 = add i64 %5943, 4
  store i64 %5944, i64* %PC.i238
  %5945 = inttoptr i64 %5942 to i32*
  %5946 = load i32, i32* %5945
  %5947 = sext i32 %5946 to i64
  store i64 %5947, i64* %RCX.i239, align 8
  store %struct.Memory* %loadMem_4099da, %struct.Memory** %MEMORY
  %loadMem_4099de = load %struct.Memory*, %struct.Memory** %MEMORY
  %5948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5949 = getelementptr inbounds %struct.GPR, %struct.GPR* %5948, i32 0, i32 33
  %5950 = getelementptr inbounds %struct.Reg, %struct.Reg* %5949, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %5950 to i64*
  %5951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5952 = getelementptr inbounds %struct.GPR, %struct.GPR* %5951, i32 0, i32 1
  %5953 = getelementptr inbounds %struct.Reg, %struct.Reg* %5952, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %5953 to i64*
  %5954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5955 = getelementptr inbounds %struct.GPR, %struct.GPR* %5954, i32 0, i32 5
  %5956 = getelementptr inbounds %struct.Reg, %struct.Reg* %5955, i32 0, i32 0
  %RCX.i237 = bitcast %union.anon* %5956 to i64*
  %5957 = load i64, i64* %RAX.i236
  %5958 = load i64, i64* %RCX.i237
  %5959 = add i64 %5958, %5957
  %5960 = load i64, i64* %PC.i235
  %5961 = add i64 %5960, 4
  store i64 %5961, i64* %PC.i235
  %5962 = inttoptr i64 %5959 to i8*
  store i8 10, i8* %5962
  store %struct.Memory* %loadMem_4099de, %struct.Memory** %MEMORY
  %loadMem_4099e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5964 = getelementptr inbounds %struct.GPR, %struct.GPR* %5963, i32 0, i32 33
  %5965 = getelementptr inbounds %struct.Reg, %struct.Reg* %5964, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %5965 to i64*
  %5966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5967 = getelementptr inbounds %struct.GPR, %struct.GPR* %5966, i32 0, i32 1
  %5968 = getelementptr inbounds %struct.Reg, %struct.Reg* %5967, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %5968 to i64*
  %5969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5970 = getelementptr inbounds %struct.GPR, %struct.GPR* %5969, i32 0, i32 15
  %5971 = getelementptr inbounds %struct.Reg, %struct.Reg* %5970, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %5971 to i64*
  %5972 = load i64, i64* %RBP.i234
  %5973 = sub i64 %5972, 64
  %5974 = load i64, i64* %PC.i232
  %5975 = add i64 %5974, 4
  store i64 %5975, i64* %PC.i232
  %5976 = inttoptr i64 %5973 to i64*
  %5977 = load i64, i64* %5976
  store i64 %5977, i64* %RAX.i233, align 8
  store %struct.Memory* %loadMem_4099e2, %struct.Memory** %MEMORY
  %loadMem_4099e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5979 = getelementptr inbounds %struct.GPR, %struct.GPR* %5978, i32 0, i32 33
  %5980 = getelementptr inbounds %struct.Reg, %struct.Reg* %5979, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %5980 to i64*
  %5981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5982 = getelementptr inbounds %struct.GPR, %struct.GPR* %5981, i32 0, i32 1
  %5983 = getelementptr inbounds %struct.Reg, %struct.Reg* %5982, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %5983 to i64*
  %5984 = load i64, i64* %RAX.i231
  %5985 = add i64 %5984, 16
  %5986 = load i64, i64* %PC.i230
  %5987 = add i64 %5986, 4
  store i64 %5987, i64* %PC.i230
  %5988 = inttoptr i64 %5985 to i64*
  %5989 = load i64, i64* %5988
  store i64 %5989, i64* %RAX.i231, align 8
  store %struct.Memory* %loadMem_4099e6, %struct.Memory** %MEMORY
  %loadMem_4099ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5991 = getelementptr inbounds %struct.GPR, %struct.GPR* %5990, i32 0, i32 33
  %5992 = getelementptr inbounds %struct.Reg, %struct.Reg* %5991, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %5992 to i64*
  %5993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5994 = getelementptr inbounds %struct.GPR, %struct.GPR* %5993, i32 0, i32 5
  %5995 = getelementptr inbounds %struct.Reg, %struct.Reg* %5994, i32 0, i32 0
  %RCX.i228 = bitcast %union.anon* %5995 to i64*
  %5996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5997 = getelementptr inbounds %struct.GPR, %struct.GPR* %5996, i32 0, i32 15
  %5998 = getelementptr inbounds %struct.Reg, %struct.Reg* %5997, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %5998 to i64*
  %5999 = load i64, i64* %RBP.i229
  %6000 = sub i64 %5999, 88
  %6001 = load i64, i64* %PC.i227
  %6002 = add i64 %6001, 4
  store i64 %6002, i64* %PC.i227
  %6003 = inttoptr i64 %6000 to i32*
  %6004 = load i32, i32* %6003
  %6005 = sext i32 %6004 to i64
  store i64 %6005, i64* %RCX.i228, align 8
  store %struct.Memory* %loadMem_4099ea, %struct.Memory** %MEMORY
  %loadMem_4099ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6007 = getelementptr inbounds %struct.GPR, %struct.GPR* %6006, i32 0, i32 33
  %6008 = getelementptr inbounds %struct.Reg, %struct.Reg* %6007, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %6008 to i64*
  %6009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6010 = getelementptr inbounds %struct.GPR, %struct.GPR* %6009, i32 0, i32 1
  %6011 = getelementptr inbounds %struct.Reg, %struct.Reg* %6010, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %6011 to i64*
  %6012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6013 = getelementptr inbounds %struct.GPR, %struct.GPR* %6012, i32 0, i32 5
  %6014 = getelementptr inbounds %struct.Reg, %struct.Reg* %6013, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %6014 to i64*
  %6015 = load i64, i64* %RAX.i225
  %6016 = load i64, i64* %RCX.i226
  %6017 = mul i64 %6016, 4
  %6018 = add i64 %6017, %6015
  %6019 = load i64, i64* %PC.i224
  %6020 = add i64 %6019, 7
  store i64 %6020, i64* %PC.i224
  %6021 = inttoptr i64 %6018 to i32*
  store i32 0, i32* %6021
  store %struct.Memory* %loadMem_4099ee, %struct.Memory** %MEMORY
  %loadMem_4099f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6023 = getelementptr inbounds %struct.GPR, %struct.GPR* %6022, i32 0, i32 33
  %6024 = getelementptr inbounds %struct.Reg, %struct.Reg* %6023, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %6024 to i64*
  %6025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6026 = getelementptr inbounds %struct.GPR, %struct.GPR* %6025, i32 0, i32 7
  %6027 = getelementptr inbounds %struct.Reg, %struct.Reg* %6026, i32 0, i32 0
  %RDX.i222 = bitcast %union.anon* %6027 to i64*
  %6028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6029 = getelementptr inbounds %struct.GPR, %struct.GPR* %6028, i32 0, i32 15
  %6030 = getelementptr inbounds %struct.Reg, %struct.Reg* %6029, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %6030 to i64*
  %6031 = load i64, i64* %RBP.i223
  %6032 = sub i64 %6031, 84
  %6033 = load i64, i64* %PC.i221
  %6034 = add i64 %6033, 3
  store i64 %6034, i64* %PC.i221
  %6035 = inttoptr i64 %6032 to i32*
  %6036 = load i32, i32* %6035
  %6037 = zext i32 %6036 to i64
  store i64 %6037, i64* %RDX.i222, align 8
  store %struct.Memory* %loadMem_4099f5, %struct.Memory** %MEMORY
  %loadMem_4099f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6039 = getelementptr inbounds %struct.GPR, %struct.GPR* %6038, i32 0, i32 33
  %6040 = getelementptr inbounds %struct.Reg, %struct.Reg* %6039, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %6040 to i64*
  %6041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6042 = getelementptr inbounds %struct.GPR, %struct.GPR* %6041, i32 0, i32 1
  %6043 = getelementptr inbounds %struct.Reg, %struct.Reg* %6042, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %6043 to i64*
  %6044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6045 = getelementptr inbounds %struct.GPR, %struct.GPR* %6044, i32 0, i32 15
  %6046 = getelementptr inbounds %struct.Reg, %struct.Reg* %6045, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %6046 to i64*
  %6047 = load i64, i64* %RBP.i220
  %6048 = sub i64 %6047, 64
  %6049 = load i64, i64* %PC.i218
  %6050 = add i64 %6049, 4
  store i64 %6050, i64* %PC.i218
  %6051 = inttoptr i64 %6048 to i64*
  %6052 = load i64, i64* %6051
  store i64 %6052, i64* %RAX.i219, align 8
  store %struct.Memory* %loadMem_4099f8, %struct.Memory** %MEMORY
  %loadMem_4099fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6054 = getelementptr inbounds %struct.GPR, %struct.GPR* %6053, i32 0, i32 33
  %6055 = getelementptr inbounds %struct.Reg, %struct.Reg* %6054, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %6055 to i64*
  %6056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6057 = getelementptr inbounds %struct.GPR, %struct.GPR* %6056, i32 0, i32 1
  %6058 = getelementptr inbounds %struct.Reg, %struct.Reg* %6057, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %6058 to i64*
  %6059 = load i64, i64* %RAX.i217
  %6060 = add i64 %6059, 24
  %6061 = load i64, i64* %PC.i216
  %6062 = add i64 %6061, 4
  store i64 %6062, i64* %PC.i216
  %6063 = inttoptr i64 %6060 to i64*
  %6064 = load i64, i64* %6063
  store i64 %6064, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_4099fc, %struct.Memory** %MEMORY
  %loadMem_409a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6066 = getelementptr inbounds %struct.GPR, %struct.GPR* %6065, i32 0, i32 33
  %6067 = getelementptr inbounds %struct.Reg, %struct.Reg* %6066, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %6067 to i64*
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6069 = getelementptr inbounds %struct.GPR, %struct.GPR* %6068, i32 0, i32 5
  %6070 = getelementptr inbounds %struct.Reg, %struct.Reg* %6069, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %6070 to i64*
  %6071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6072 = getelementptr inbounds %struct.GPR, %struct.GPR* %6071, i32 0, i32 15
  %6073 = getelementptr inbounds %struct.Reg, %struct.Reg* %6072, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %6073 to i64*
  %6074 = load i64, i64* %RBP.i215
  %6075 = sub i64 %6074, 88
  %6076 = load i64, i64* %PC.i213
  %6077 = add i64 %6076, 4
  store i64 %6077, i64* %PC.i213
  %6078 = inttoptr i64 %6075 to i32*
  %6079 = load i32, i32* %6078
  %6080 = sext i32 %6079 to i64
  store i64 %6080, i64* %RCX.i214, align 8
  store %struct.Memory* %loadMem_409a00, %struct.Memory** %MEMORY
  %loadMem_409a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6082 = getelementptr inbounds %struct.GPR, %struct.GPR* %6081, i32 0, i32 33
  %6083 = getelementptr inbounds %struct.Reg, %struct.Reg* %6082, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %6083 to i64*
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6085 = getelementptr inbounds %struct.GPR, %struct.GPR* %6084, i32 0, i32 7
  %6086 = getelementptr inbounds %struct.Reg, %struct.Reg* %6085, i32 0, i32 0
  %EDX.i210 = bitcast %union.anon* %6086 to i32*
  %6087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6088 = getelementptr inbounds %struct.GPR, %struct.GPR* %6087, i32 0, i32 1
  %6089 = getelementptr inbounds %struct.Reg, %struct.Reg* %6088, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %6089 to i64*
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6091 = getelementptr inbounds %struct.GPR, %struct.GPR* %6090, i32 0, i32 5
  %6092 = getelementptr inbounds %struct.Reg, %struct.Reg* %6091, i32 0, i32 0
  %RCX.i212 = bitcast %union.anon* %6092 to i64*
  %6093 = load i64, i64* %RAX.i211
  %6094 = load i64, i64* %RCX.i212
  %6095 = mul i64 %6094, 4
  %6096 = add i64 %6095, %6093
  %6097 = load i32, i32* %EDX.i210
  %6098 = zext i32 %6097 to i64
  %6099 = load i64, i64* %PC.i209
  %6100 = add i64 %6099, 3
  store i64 %6100, i64* %PC.i209
  %6101 = inttoptr i64 %6096 to i32*
  store i32 %6097, i32* %6101
  store %struct.Memory* %loadMem_409a04, %struct.Memory** %MEMORY
  %loadMem_409a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6103 = getelementptr inbounds %struct.GPR, %struct.GPR* %6102, i32 0, i32 33
  %6104 = getelementptr inbounds %struct.Reg, %struct.Reg* %6103, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %6104 to i64*
  %6105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6106 = getelementptr inbounds %struct.GPR, %struct.GPR* %6105, i32 0, i32 7
  %6107 = getelementptr inbounds %struct.Reg, %struct.Reg* %6106, i32 0, i32 0
  %RDX.i207 = bitcast %union.anon* %6107 to i64*
  %6108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6109 = getelementptr inbounds %struct.GPR, %struct.GPR* %6108, i32 0, i32 15
  %6110 = getelementptr inbounds %struct.Reg, %struct.Reg* %6109, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %6110 to i64*
  %6111 = load i64, i64* %RBP.i208
  %6112 = sub i64 %6111, 88
  %6113 = load i64, i64* %PC.i206
  %6114 = add i64 %6113, 3
  store i64 %6114, i64* %PC.i206
  %6115 = inttoptr i64 %6112 to i32*
  %6116 = load i32, i32* %6115
  %6117 = zext i32 %6116 to i64
  store i64 %6117, i64* %RDX.i207, align 8
  store %struct.Memory* %loadMem_409a07, %struct.Memory** %MEMORY
  %loadMem_409a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6119 = getelementptr inbounds %struct.GPR, %struct.GPR* %6118, i32 0, i32 33
  %6120 = getelementptr inbounds %struct.Reg, %struct.Reg* %6119, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %6120 to i64*
  %6121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6122 = getelementptr inbounds %struct.GPR, %struct.GPR* %6121, i32 0, i32 7
  %6123 = getelementptr inbounds %struct.Reg, %struct.Reg* %6122, i32 0, i32 0
  %RDX.i205 = bitcast %union.anon* %6123 to i64*
  %6124 = load i64, i64* %RDX.i205
  %6125 = load i64, i64* %PC.i204
  %6126 = add i64 %6125, 3
  store i64 %6126, i64* %PC.i204
  %6127 = trunc i64 %6124 to i32
  %6128 = add i32 1, %6127
  %6129 = zext i32 %6128 to i64
  store i64 %6129, i64* %RDX.i205, align 8
  %6130 = icmp ult i32 %6128, %6127
  %6131 = icmp ult i32 %6128, 1
  %6132 = or i1 %6130, %6131
  %6133 = zext i1 %6132 to i8
  %6134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6133, i8* %6134, align 1
  %6135 = and i32 %6128, 255
  %6136 = call i32 @llvm.ctpop.i32(i32 %6135)
  %6137 = trunc i32 %6136 to i8
  %6138 = and i8 %6137, 1
  %6139 = xor i8 %6138, 1
  %6140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6139, i8* %6140, align 1
  %6141 = xor i64 1, %6124
  %6142 = trunc i64 %6141 to i32
  %6143 = xor i32 %6142, %6128
  %6144 = lshr i32 %6143, 4
  %6145 = trunc i32 %6144 to i8
  %6146 = and i8 %6145, 1
  %6147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6146, i8* %6147, align 1
  %6148 = icmp eq i32 %6128, 0
  %6149 = zext i1 %6148 to i8
  %6150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6149, i8* %6150, align 1
  %6151 = lshr i32 %6128, 31
  %6152 = trunc i32 %6151 to i8
  %6153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6152, i8* %6153, align 1
  %6154 = lshr i32 %6127, 31
  %6155 = xor i32 %6151, %6154
  %6156 = add i32 %6155, %6151
  %6157 = icmp eq i32 %6156, 2
  %6158 = zext i1 %6157 to i8
  %6159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6158, i8* %6159, align 1
  store %struct.Memory* %loadMem_409a0a, %struct.Memory** %MEMORY
  %loadMem_409a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6161 = getelementptr inbounds %struct.GPR, %struct.GPR* %6160, i32 0, i32 33
  %6162 = getelementptr inbounds %struct.Reg, %struct.Reg* %6161, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %6162 to i64*
  %6163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6164 = getelementptr inbounds %struct.GPR, %struct.GPR* %6163, i32 0, i32 7
  %6165 = getelementptr inbounds %struct.Reg, %struct.Reg* %6164, i32 0, i32 0
  %EDX.i202 = bitcast %union.anon* %6165 to i32*
  %6166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6167 = getelementptr inbounds %struct.GPR, %struct.GPR* %6166, i32 0, i32 15
  %6168 = getelementptr inbounds %struct.Reg, %struct.Reg* %6167, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %6168 to i64*
  %6169 = load i64, i64* %RBP.i203
  %6170 = sub i64 %6169, 88
  %6171 = load i32, i32* %EDX.i202
  %6172 = zext i32 %6171 to i64
  %6173 = load i64, i64* %PC.i201
  %6174 = add i64 %6173, 3
  store i64 %6174, i64* %PC.i201
  %6175 = inttoptr i64 %6170 to i32*
  store i32 %6171, i32* %6175
  store %struct.Memory* %loadMem_409a0d, %struct.Memory** %MEMORY
  %loadMem_409a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6177 = getelementptr inbounds %struct.GPR, %struct.GPR* %6176, i32 0, i32 33
  %6178 = getelementptr inbounds %struct.Reg, %struct.Reg* %6177, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %6178 to i64*
  %6179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6180 = getelementptr inbounds %struct.GPR, %struct.GPR* %6179, i32 0, i32 1
  %6181 = getelementptr inbounds %struct.Reg, %struct.Reg* %6180, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %6181 to i64*
  %6182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6183 = getelementptr inbounds %struct.GPR, %struct.GPR* %6182, i32 0, i32 15
  %6184 = getelementptr inbounds %struct.Reg, %struct.Reg* %6183, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %6184 to i64*
  %6185 = load i64, i64* %RBP.i200
  %6186 = sub i64 %6185, 84
  %6187 = load i64, i64* %PC.i198
  %6188 = add i64 %6187, 3
  store i64 %6188, i64* %PC.i198
  %6189 = inttoptr i64 %6186 to i32*
  %6190 = load i32, i32* %6189
  %6191 = zext i32 %6190 to i64
  store i64 %6191, i64* %RAX.i199, align 8
  store %struct.Memory* %loadMem_409a10, %struct.Memory** %MEMORY
  %loadMem_409a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6193 = getelementptr inbounds %struct.GPR, %struct.GPR* %6192, i32 0, i32 33
  %6194 = getelementptr inbounds %struct.Reg, %struct.Reg* %6193, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %6194 to i64*
  %6195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6196 = getelementptr inbounds %struct.GPR, %struct.GPR* %6195, i32 0, i32 1
  %6197 = getelementptr inbounds %struct.Reg, %struct.Reg* %6196, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %6197 to i64*
  %6198 = load i64, i64* %RAX.i197
  %6199 = load i64, i64* %PC.i196
  %6200 = add i64 %6199, 3
  store i64 %6200, i64* %PC.i196
  %6201 = trunc i64 %6198 to i32
  %6202 = add i32 1, %6201
  %6203 = zext i32 %6202 to i64
  store i64 %6203, i64* %RAX.i197, align 8
  %6204 = icmp ult i32 %6202, %6201
  %6205 = icmp ult i32 %6202, 1
  %6206 = or i1 %6204, %6205
  %6207 = zext i1 %6206 to i8
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6207, i8* %6208, align 1
  %6209 = and i32 %6202, 255
  %6210 = call i32 @llvm.ctpop.i32(i32 %6209)
  %6211 = trunc i32 %6210 to i8
  %6212 = and i8 %6211, 1
  %6213 = xor i8 %6212, 1
  %6214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6213, i8* %6214, align 1
  %6215 = xor i64 1, %6198
  %6216 = trunc i64 %6215 to i32
  %6217 = xor i32 %6216, %6202
  %6218 = lshr i32 %6217, 4
  %6219 = trunc i32 %6218 to i8
  %6220 = and i8 %6219, 1
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6220, i8* %6221, align 1
  %6222 = icmp eq i32 %6202, 0
  %6223 = zext i1 %6222 to i8
  %6224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6223, i8* %6224, align 1
  %6225 = lshr i32 %6202, 31
  %6226 = trunc i32 %6225 to i8
  %6227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6226, i8* %6227, align 1
  %6228 = lshr i32 %6201, 31
  %6229 = xor i32 %6225, %6228
  %6230 = add i32 %6229, %6225
  %6231 = icmp eq i32 %6230, 2
  %6232 = zext i1 %6231 to i8
  %6233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6232, i8* %6233, align 1
  store %struct.Memory* %loadMem_409a13, %struct.Memory** %MEMORY
  %loadMem_409a16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6235 = getelementptr inbounds %struct.GPR, %struct.GPR* %6234, i32 0, i32 33
  %6236 = getelementptr inbounds %struct.Reg, %struct.Reg* %6235, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %6236 to i64*
  %6237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6238 = getelementptr inbounds %struct.GPR, %struct.GPR* %6237, i32 0, i32 1
  %6239 = getelementptr inbounds %struct.Reg, %struct.Reg* %6238, i32 0, i32 0
  %EAX.i194 = bitcast %union.anon* %6239 to i32*
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6241 = getelementptr inbounds %struct.GPR, %struct.GPR* %6240, i32 0, i32 15
  %6242 = getelementptr inbounds %struct.Reg, %struct.Reg* %6241, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %6242 to i64*
  %6243 = load i64, i64* %RBP.i195
  %6244 = sub i64 %6243, 84
  %6245 = load i32, i32* %EAX.i194
  %6246 = zext i32 %6245 to i64
  %6247 = load i64, i64* %PC.i193
  %6248 = add i64 %6247, 3
  store i64 %6248, i64* %PC.i193
  %6249 = inttoptr i64 %6244 to i32*
  store i32 %6245, i32* %6249
  store %struct.Memory* %loadMem_409a16, %struct.Memory** %MEMORY
  %loadMem_409a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6251 = getelementptr inbounds %struct.GPR, %struct.GPR* %6250, i32 0, i32 33
  %6252 = getelementptr inbounds %struct.Reg, %struct.Reg* %6251, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %6252 to i64*
  %6253 = load i64, i64* %PC.i192
  %6254 = add i64 %6253, -106
  %6255 = load i64, i64* %PC.i192
  %6256 = add i64 %6255, 5
  store i64 %6256, i64* %PC.i192
  %6257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6254, i64* %6257, align 8
  store %struct.Memory* %loadMem_409a19, %struct.Memory** %MEMORY
  br label %block_.L_4099af

block_.L_409a1e:                                  ; preds = %block_.L_4099af
  %loadMem_409a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6259 = getelementptr inbounds %struct.GPR, %struct.GPR* %6258, i32 0, i32 33
  %6260 = getelementptr inbounds %struct.Reg, %struct.Reg* %6259, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %6260 to i64*
  %6261 = load i64, i64* %PC.i191
  %6262 = add i64 %6261, 5
  %6263 = load i64, i64* %PC.i191
  %6264 = add i64 %6263, 5
  store i64 %6264, i64* %PC.i191
  %6265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6262, i64* %6265, align 8
  store %struct.Memory* %loadMem_409a1e, %struct.Memory** %MEMORY
  br label %block_.L_409a23

block_.L_409a23:                                  ; preds = %block_.L_409a1e, %block_.L_409925
  %loadMem_409a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6267 = getelementptr inbounds %struct.GPR, %struct.GPR* %6266, i32 0, i32 33
  %6268 = getelementptr inbounds %struct.Reg, %struct.Reg* %6267, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %6268 to i64*
  %6269 = load i64, i64* %PC.i190
  %6270 = add i64 %6269, 5
  %6271 = load i64, i64* %PC.i190
  %6272 = add i64 %6271, 5
  store i64 %6272, i64* %PC.i190
  %6273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6270, i64* %6273, align 8
  store %struct.Memory* %loadMem_409a23, %struct.Memory** %MEMORY
  br label %block_.L_409a28

block_.L_409a28:                                  ; preds = %block_.L_409a23
  %loadMem_409a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6275 = getelementptr inbounds %struct.GPR, %struct.GPR* %6274, i32 0, i32 33
  %6276 = getelementptr inbounds %struct.Reg, %struct.Reg* %6275, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %6276 to i64*
  %6277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6278 = getelementptr inbounds %struct.GPR, %struct.GPR* %6277, i32 0, i32 1
  %6279 = getelementptr inbounds %struct.Reg, %struct.Reg* %6278, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %6279 to i64*
  %6280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6281 = getelementptr inbounds %struct.GPR, %struct.GPR* %6280, i32 0, i32 15
  %6282 = getelementptr inbounds %struct.Reg, %struct.Reg* %6281, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %6282 to i64*
  %6283 = load i64, i64* %RBP.i189
  %6284 = sub i64 %6283, 80
  %6285 = load i64, i64* %PC.i187
  %6286 = add i64 %6285, 3
  store i64 %6286, i64* %PC.i187
  %6287 = inttoptr i64 %6284 to i32*
  %6288 = load i32, i32* %6287
  %6289 = zext i32 %6288 to i64
  store i64 %6289, i64* %RAX.i188, align 8
  store %struct.Memory* %loadMem_409a28, %struct.Memory** %MEMORY
  %loadMem_409a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6291 = getelementptr inbounds %struct.GPR, %struct.GPR* %6290, i32 0, i32 33
  %6292 = getelementptr inbounds %struct.Reg, %struct.Reg* %6291, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %6292 to i64*
  %6293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6294 = getelementptr inbounds %struct.GPR, %struct.GPR* %6293, i32 0, i32 1
  %6295 = getelementptr inbounds %struct.Reg, %struct.Reg* %6294, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %6295 to i64*
  %6296 = load i64, i64* %RAX.i186
  %6297 = load i64, i64* %PC.i185
  %6298 = add i64 %6297, 3
  store i64 %6298, i64* %PC.i185
  %6299 = trunc i64 %6296 to i32
  %6300 = add i32 1, %6299
  %6301 = zext i32 %6300 to i64
  store i64 %6301, i64* %RAX.i186, align 8
  %6302 = icmp ult i32 %6300, %6299
  %6303 = icmp ult i32 %6300, 1
  %6304 = or i1 %6302, %6303
  %6305 = zext i1 %6304 to i8
  %6306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6305, i8* %6306, align 1
  %6307 = and i32 %6300, 255
  %6308 = call i32 @llvm.ctpop.i32(i32 %6307)
  %6309 = trunc i32 %6308 to i8
  %6310 = and i8 %6309, 1
  %6311 = xor i8 %6310, 1
  %6312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6311, i8* %6312, align 1
  %6313 = xor i64 1, %6296
  %6314 = trunc i64 %6313 to i32
  %6315 = xor i32 %6314, %6300
  %6316 = lshr i32 %6315, 4
  %6317 = trunc i32 %6316 to i8
  %6318 = and i8 %6317, 1
  %6319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6318, i8* %6319, align 1
  %6320 = icmp eq i32 %6300, 0
  %6321 = zext i1 %6320 to i8
  %6322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6321, i8* %6322, align 1
  %6323 = lshr i32 %6300, 31
  %6324 = trunc i32 %6323 to i8
  %6325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6324, i8* %6325, align 1
  %6326 = lshr i32 %6299, 31
  %6327 = xor i32 %6323, %6326
  %6328 = add i32 %6327, %6323
  %6329 = icmp eq i32 %6328, 2
  %6330 = zext i1 %6329 to i8
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6330, i8* %6331, align 1
  store %struct.Memory* %loadMem_409a2b, %struct.Memory** %MEMORY
  %loadMem_409a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6333 = getelementptr inbounds %struct.GPR, %struct.GPR* %6332, i32 0, i32 33
  %6334 = getelementptr inbounds %struct.Reg, %struct.Reg* %6333, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %6334 to i64*
  %6335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6336 = getelementptr inbounds %struct.GPR, %struct.GPR* %6335, i32 0, i32 1
  %6337 = getelementptr inbounds %struct.Reg, %struct.Reg* %6336, i32 0, i32 0
  %EAX.i183 = bitcast %union.anon* %6337 to i32*
  %6338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6339 = getelementptr inbounds %struct.GPR, %struct.GPR* %6338, i32 0, i32 15
  %6340 = getelementptr inbounds %struct.Reg, %struct.Reg* %6339, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %6340 to i64*
  %6341 = load i64, i64* %RBP.i184
  %6342 = sub i64 %6341, 80
  %6343 = load i32, i32* %EAX.i183
  %6344 = zext i32 %6343 to i64
  %6345 = load i64, i64* %PC.i182
  %6346 = add i64 %6345, 3
  store i64 %6346, i64* %PC.i182
  %6347 = inttoptr i64 %6342 to i32*
  store i32 %6343, i32* %6347
  store %struct.Memory* %loadMem_409a2e, %struct.Memory** %MEMORY
  %loadMem_409a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6349 = getelementptr inbounds %struct.GPR, %struct.GPR* %6348, i32 0, i32 33
  %6350 = getelementptr inbounds %struct.Reg, %struct.Reg* %6349, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6350 to i64*
  %6351 = load i64, i64* %PC.i181
  %6352 = add i64 %6351, -529
  %6353 = load i64, i64* %PC.i181
  %6354 = add i64 %6353, 5
  store i64 %6354, i64* %PC.i181
  %6355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6352, i64* %6355, align 8
  store %struct.Memory* %loadMem_409a31, %struct.Memory** %MEMORY
  br label %block_.L_409820

block_.L_409a36:                                  ; preds = %block_.L_409820
  %loadMem_409a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6357 = getelementptr inbounds %struct.GPR, %struct.GPR* %6356, i32 0, i32 33
  %6358 = getelementptr inbounds %struct.Reg, %struct.Reg* %6357, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %6358 to i64*
  %6359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6360 = getelementptr inbounds %struct.GPR, %struct.GPR* %6359, i32 0, i32 1
  %6361 = getelementptr inbounds %struct.Reg, %struct.Reg* %6360, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %6361 to i64*
  %6362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6363 = getelementptr inbounds %struct.GPR, %struct.GPR* %6362, i32 0, i32 15
  %6364 = getelementptr inbounds %struct.Reg, %struct.Reg* %6363, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %6364 to i64*
  %6365 = load i64, i64* %RBP.i180
  %6366 = sub i64 %6365, 56
  %6367 = load i64, i64* %PC.i178
  %6368 = add i64 %6367, 4
  store i64 %6368, i64* %PC.i178
  %6369 = inttoptr i64 %6366 to i64*
  %6370 = load i64, i64* %6369
  store i64 %6370, i64* %RAX.i179, align 8
  store %struct.Memory* %loadMem_409a36, %struct.Memory** %MEMORY
  %loadMem_409a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6372 = getelementptr inbounds %struct.GPR, %struct.GPR* %6371, i32 0, i32 33
  %6373 = getelementptr inbounds %struct.Reg, %struct.Reg* %6372, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6373 to i64*
  %6374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6375 = getelementptr inbounds %struct.GPR, %struct.GPR* %6374, i32 0, i32 1
  %6376 = getelementptr inbounds %struct.Reg, %struct.Reg* %6375, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %6376 to i64*
  %6377 = load i64, i64* %RAX.i177
  %6378 = add i64 %6377, 24
  %6379 = load i64, i64* %PC.i176
  %6380 = add i64 %6379, 4
  store i64 %6380, i64* %PC.i176
  %6381 = inttoptr i64 %6378 to i64*
  %6382 = load i64, i64* %6381
  store i64 %6382, i64* %RAX.i177, align 8
  store %struct.Memory* %loadMem_409a3a, %struct.Memory** %MEMORY
  %loadMem_409a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6384 = getelementptr inbounds %struct.GPR, %struct.GPR* %6383, i32 0, i32 33
  %6385 = getelementptr inbounds %struct.Reg, %struct.Reg* %6384, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %6385 to i64*
  %6386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6387 = getelementptr inbounds %struct.GPR, %struct.GPR* %6386, i32 0, i32 5
  %6388 = getelementptr inbounds %struct.Reg, %struct.Reg* %6387, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %6388 to i64*
  %6389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6390 = getelementptr inbounds %struct.GPR, %struct.GPR* %6389, i32 0, i32 15
  %6391 = getelementptr inbounds %struct.Reg, %struct.Reg* %6390, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %6391 to i64*
  %6392 = load i64, i64* %RBP.i175
  %6393 = sub i64 %6392, 76
  %6394 = load i64, i64* %PC.i173
  %6395 = add i64 %6394, 3
  store i64 %6395, i64* %PC.i173
  %6396 = inttoptr i64 %6393 to i32*
  %6397 = load i32, i32* %6396
  %6398 = zext i32 %6397 to i64
  store i64 %6398, i64* %RCX.i174, align 8
  store %struct.Memory* %loadMem_409a3e, %struct.Memory** %MEMORY
  %loadMem_409a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6400 = getelementptr inbounds %struct.GPR, %struct.GPR* %6399, i32 0, i32 33
  %6401 = getelementptr inbounds %struct.Reg, %struct.Reg* %6400, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %6401 to i64*
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6403 = getelementptr inbounds %struct.GPR, %struct.GPR* %6402, i32 0, i32 5
  %6404 = getelementptr inbounds %struct.Reg, %struct.Reg* %6403, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %6404 to i64*
  %6405 = load i64, i64* %RCX.i172
  %6406 = load i64, i64* %PC.i171
  %6407 = add i64 %6406, 2
  store i64 %6407, i64* %PC.i171
  %6408 = trunc i64 %6405 to i32
  %6409 = shl i32 %6408, 1
  %6410 = icmp slt i32 %6408, 0
  %6411 = icmp slt i32 %6409, 0
  %6412 = xor i1 %6410, %6411
  %6413 = zext i32 %6409 to i64
  store i64 %6413, i64* %RCX.i172, align 8
  %6414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6415 = zext i1 %6410 to i8
  store i8 %6415, i8* %6414, align 1
  %6416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6417 = and i32 %6409, 254
  %6418 = call i32 @llvm.ctpop.i32(i32 %6417)
  %6419 = trunc i32 %6418 to i8
  %6420 = and i8 %6419, 1
  %6421 = xor i8 %6420, 1
  store i8 %6421, i8* %6416, align 1
  %6422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6422, align 1
  %6423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6424 = icmp eq i32 %6409, 0
  %6425 = zext i1 %6424 to i8
  store i8 %6425, i8* %6423, align 1
  %6426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6427 = lshr i32 %6409, 31
  %6428 = trunc i32 %6427 to i8
  store i8 %6428, i8* %6426, align 1
  %6429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6430 = zext i1 %6412 to i8
  store i8 %6430, i8* %6429, align 1
  store %struct.Memory* %loadMem_409a41, %struct.Memory** %MEMORY
  %loadMem_409a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6432 = getelementptr inbounds %struct.GPR, %struct.GPR* %6431, i32 0, i32 33
  %6433 = getelementptr inbounds %struct.Reg, %struct.Reg* %6432, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %6433 to i64*
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6435 = getelementptr inbounds %struct.GPR, %struct.GPR* %6434, i32 0, i32 5
  %6436 = getelementptr inbounds %struct.Reg, %struct.Reg* %6435, i32 0, i32 0
  %ECX.i169 = bitcast %union.anon* %6436 to i32*
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6438 = getelementptr inbounds %struct.GPR, %struct.GPR* %6437, i32 0, i32 7
  %6439 = getelementptr inbounds %struct.Reg, %struct.Reg* %6438, i32 0, i32 0
  %RDX.i170 = bitcast %union.anon* %6439 to i64*
  %6440 = load i32, i32* %ECX.i169
  %6441 = zext i32 %6440 to i64
  %6442 = load i64, i64* %PC.i168
  %6443 = add i64 %6442, 3
  store i64 %6443, i64* %PC.i168
  %6444 = shl i64 %6441, 32
  %6445 = ashr exact i64 %6444, 32
  store i64 %6445, i64* %RDX.i170, align 8
  store %struct.Memory* %loadMem_409a44, %struct.Memory** %MEMORY
  %loadMem_409a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6447 = getelementptr inbounds %struct.GPR, %struct.GPR* %6446, i32 0, i32 33
  %6448 = getelementptr inbounds %struct.Reg, %struct.Reg* %6447, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %6448 to i64*
  %6449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6450 = getelementptr inbounds %struct.GPR, %struct.GPR* %6449, i32 0, i32 1
  %6451 = getelementptr inbounds %struct.Reg, %struct.Reg* %6450, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %6451 to i64*
  %6452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6453 = getelementptr inbounds %struct.GPR, %struct.GPR* %6452, i32 0, i32 5
  %6454 = getelementptr inbounds %struct.Reg, %struct.Reg* %6453, i32 0, i32 0
  %RCX.i166 = bitcast %union.anon* %6454 to i64*
  %6455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6456 = getelementptr inbounds %struct.GPR, %struct.GPR* %6455, i32 0, i32 7
  %6457 = getelementptr inbounds %struct.Reg, %struct.Reg* %6456, i32 0, i32 0
  %RDX.i167 = bitcast %union.anon* %6457 to i64*
  %6458 = load i64, i64* %RAX.i165
  %6459 = load i64, i64* %RDX.i167
  %6460 = mul i64 %6459, 4
  %6461 = add i64 %6460, %6458
  %6462 = load i64, i64* %PC.i164
  %6463 = add i64 %6462, 3
  store i64 %6463, i64* %PC.i164
  %6464 = inttoptr i64 %6461 to i32*
  %6465 = load i32, i32* %6464
  %6466 = zext i32 %6465 to i64
  store i64 %6466, i64* %RCX.i166, align 8
  store %struct.Memory* %loadMem_409a47, %struct.Memory** %MEMORY
  %loadMem_409a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6468 = getelementptr inbounds %struct.GPR, %struct.GPR* %6467, i32 0, i32 33
  %6469 = getelementptr inbounds %struct.Reg, %struct.Reg* %6468, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %6469 to i64*
  %6470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6471 = getelementptr inbounds %struct.GPR, %struct.GPR* %6470, i32 0, i32 5
  %6472 = getelementptr inbounds %struct.Reg, %struct.Reg* %6471, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %6472 to i64*
  %6473 = load i64, i64* %RCX.i163
  %6474 = load i64, i64* %PC.i162
  %6475 = add i64 %6474, 3
  store i64 %6475, i64* %PC.i162
  %6476 = trunc i64 %6473 to i32
  %6477 = add i32 1, %6476
  %6478 = zext i32 %6477 to i64
  store i64 %6478, i64* %RCX.i163, align 8
  %6479 = icmp ult i32 %6477, %6476
  %6480 = icmp ult i32 %6477, 1
  %6481 = or i1 %6479, %6480
  %6482 = zext i1 %6481 to i8
  %6483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6482, i8* %6483, align 1
  %6484 = and i32 %6477, 255
  %6485 = call i32 @llvm.ctpop.i32(i32 %6484)
  %6486 = trunc i32 %6485 to i8
  %6487 = and i8 %6486, 1
  %6488 = xor i8 %6487, 1
  %6489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6488, i8* %6489, align 1
  %6490 = xor i64 1, %6473
  %6491 = trunc i64 %6490 to i32
  %6492 = xor i32 %6491, %6477
  %6493 = lshr i32 %6492, 4
  %6494 = trunc i32 %6493 to i8
  %6495 = and i8 %6494, 1
  %6496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6495, i8* %6496, align 1
  %6497 = icmp eq i32 %6477, 0
  %6498 = zext i1 %6497 to i8
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6498, i8* %6499, align 1
  %6500 = lshr i32 %6477, 31
  %6501 = trunc i32 %6500 to i8
  %6502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6501, i8* %6502, align 1
  %6503 = lshr i32 %6476, 31
  %6504 = xor i32 %6500, %6503
  %6505 = add i32 %6504, %6500
  %6506 = icmp eq i32 %6505, 2
  %6507 = zext i1 %6506 to i8
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6507, i8* %6508, align 1
  store %struct.Memory* %loadMem_409a4a, %struct.Memory** %MEMORY
  %loadMem_409a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6510 = getelementptr inbounds %struct.GPR, %struct.GPR* %6509, i32 0, i32 33
  %6511 = getelementptr inbounds %struct.Reg, %struct.Reg* %6510, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %6511 to i64*
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6513 = getelementptr inbounds %struct.GPR, %struct.GPR* %6512, i32 0, i32 5
  %6514 = getelementptr inbounds %struct.Reg, %struct.Reg* %6513, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %6514 to i32*
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6516 = getelementptr inbounds %struct.GPR, %struct.GPR* %6515, i32 0, i32 15
  %6517 = getelementptr inbounds %struct.Reg, %struct.Reg* %6516, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %6517 to i64*
  %6518 = load i64, i64* %RBP.i161
  %6519 = sub i64 %6518, 84
  %6520 = load i32, i32* %ECX.i
  %6521 = zext i32 %6520 to i64
  %6522 = load i64, i64* %PC.i160
  %6523 = add i64 %6522, 3
  store i64 %6523, i64* %PC.i160
  %6524 = inttoptr i64 %6519 to i32*
  store i32 %6520, i32* %6524
  store %struct.Memory* %loadMem_409a4d, %struct.Memory** %MEMORY
  br label %block_.L_409a50

block_.L_409a50:                                  ; preds = %block_409a5c, %block_.L_409a36
  %loadMem_409a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6526 = getelementptr inbounds %struct.GPR, %struct.GPR* %6525, i32 0, i32 33
  %6527 = getelementptr inbounds %struct.Reg, %struct.Reg* %6526, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %6527 to i64*
  %6528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6529 = getelementptr inbounds %struct.GPR, %struct.GPR* %6528, i32 0, i32 1
  %6530 = getelementptr inbounds %struct.Reg, %struct.Reg* %6529, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %6530 to i64*
  %6531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6532 = getelementptr inbounds %struct.GPR, %struct.GPR* %6531, i32 0, i32 15
  %6533 = getelementptr inbounds %struct.Reg, %struct.Reg* %6532, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %6533 to i64*
  %6534 = load i64, i64* %RBP.i159
  %6535 = sub i64 %6534, 84
  %6536 = load i64, i64* %PC.i157
  %6537 = add i64 %6536, 3
  store i64 %6537, i64* %PC.i157
  %6538 = inttoptr i64 %6535 to i32*
  %6539 = load i32, i32* %6538
  %6540 = zext i32 %6539 to i64
  store i64 %6540, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_409a50, %struct.Memory** %MEMORY
  %loadMem_409a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6542 = getelementptr inbounds %struct.GPR, %struct.GPR* %6541, i32 0, i32 33
  %6543 = getelementptr inbounds %struct.Reg, %struct.Reg* %6542, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %6543 to i64*
  %6544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6545 = getelementptr inbounds %struct.GPR, %struct.GPR* %6544, i32 0, i32 1
  %6546 = getelementptr inbounds %struct.Reg, %struct.Reg* %6545, i32 0, i32 0
  %EAX.i155 = bitcast %union.anon* %6546 to i32*
  %6547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6548 = getelementptr inbounds %struct.GPR, %struct.GPR* %6547, i32 0, i32 15
  %6549 = getelementptr inbounds %struct.Reg, %struct.Reg* %6548, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %6549 to i64*
  %6550 = load i32, i32* %EAX.i155
  %6551 = zext i32 %6550 to i64
  %6552 = load i64, i64* %RBP.i156
  %6553 = sub i64 %6552, 20
  %6554 = load i64, i64* %PC.i154
  %6555 = add i64 %6554, 3
  store i64 %6555, i64* %PC.i154
  %6556 = inttoptr i64 %6553 to i32*
  %6557 = load i32, i32* %6556
  %6558 = sub i32 %6550, %6557
  %6559 = icmp ult i32 %6550, %6557
  %6560 = zext i1 %6559 to i8
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6560, i8* %6561, align 1
  %6562 = and i32 %6558, 255
  %6563 = call i32 @llvm.ctpop.i32(i32 %6562)
  %6564 = trunc i32 %6563 to i8
  %6565 = and i8 %6564, 1
  %6566 = xor i8 %6565, 1
  %6567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6566, i8* %6567, align 1
  %6568 = xor i32 %6557, %6550
  %6569 = xor i32 %6568, %6558
  %6570 = lshr i32 %6569, 4
  %6571 = trunc i32 %6570 to i8
  %6572 = and i8 %6571, 1
  %6573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6572, i8* %6573, align 1
  %6574 = icmp eq i32 %6558, 0
  %6575 = zext i1 %6574 to i8
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6575, i8* %6576, align 1
  %6577 = lshr i32 %6558, 31
  %6578 = trunc i32 %6577 to i8
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6578, i8* %6579, align 1
  %6580 = lshr i32 %6550, 31
  %6581 = lshr i32 %6557, 31
  %6582 = xor i32 %6581, %6580
  %6583 = xor i32 %6577, %6580
  %6584 = add i32 %6583, %6582
  %6585 = icmp eq i32 %6584, 2
  %6586 = zext i1 %6585 to i8
  %6587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6586, i8* %6587, align 1
  store %struct.Memory* %loadMem_409a53, %struct.Memory** %MEMORY
  %loadMem_409a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6589 = getelementptr inbounds %struct.GPR, %struct.GPR* %6588, i32 0, i32 33
  %6590 = getelementptr inbounds %struct.Reg, %struct.Reg* %6589, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %6590 to i64*
  %6591 = load i64, i64* %PC.i153
  %6592 = add i64 %6591, 82
  %6593 = load i64, i64* %PC.i153
  %6594 = add i64 %6593, 6
  %6595 = load i64, i64* %PC.i153
  %6596 = add i64 %6595, 6
  store i64 %6596, i64* %PC.i153
  %6597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6598 = load i8, i8* %6597, align 1
  %6599 = icmp eq i8 %6598, 0
  %6600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6601 = load i8, i8* %6600, align 1
  %6602 = icmp ne i8 %6601, 0
  %6603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6604 = load i8, i8* %6603, align 1
  %6605 = icmp ne i8 %6604, 0
  %6606 = xor i1 %6602, %6605
  %6607 = xor i1 %6606, true
  %6608 = and i1 %6599, %6607
  %6609 = zext i1 %6608 to i8
  store i8 %6609, i8* %BRANCH_TAKEN, align 1
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6611 = select i1 %6608, i64 %6592, i64 %6594
  store i64 %6611, i64* %6610, align 8
  store %struct.Memory* %loadMem_409a56, %struct.Memory** %MEMORY
  %loadBr_409a56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409a56 = icmp eq i8 %loadBr_409a56, 1
  br i1 %cmpBr_409a56, label %block_.L_409aa8, label %block_409a5c

block_409a5c:                                     ; preds = %block_.L_409a50
  %loadMem_409a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6613 = getelementptr inbounds %struct.GPR, %struct.GPR* %6612, i32 0, i32 33
  %6614 = getelementptr inbounds %struct.Reg, %struct.Reg* %6613, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %6614 to i64*
  %6615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6616 = getelementptr inbounds %struct.GPR, %struct.GPR* %6615, i32 0, i32 1
  %6617 = getelementptr inbounds %struct.Reg, %struct.Reg* %6616, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %6617 to i64*
  %6618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6619 = getelementptr inbounds %struct.GPR, %struct.GPR* %6618, i32 0, i32 15
  %6620 = getelementptr inbounds %struct.Reg, %struct.Reg* %6619, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %6620 to i64*
  %6621 = load i64, i64* %RBP.i152
  %6622 = sub i64 %6621, 64
  %6623 = load i64, i64* %PC.i150
  %6624 = add i64 %6623, 4
  store i64 %6624, i64* %PC.i150
  %6625 = inttoptr i64 %6622 to i64*
  %6626 = load i64, i64* %6625
  store i64 %6626, i64* %RAX.i151, align 8
  store %struct.Memory* %loadMem_409a5c, %struct.Memory** %MEMORY
  %loadMem_409a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6628 = getelementptr inbounds %struct.GPR, %struct.GPR* %6627, i32 0, i32 33
  %6629 = getelementptr inbounds %struct.Reg, %struct.Reg* %6628, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %6629 to i64*
  %6630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6631 = getelementptr inbounds %struct.GPR, %struct.GPR* %6630, i32 0, i32 1
  %6632 = getelementptr inbounds %struct.Reg, %struct.Reg* %6631, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %6632 to i64*
  %6633 = load i64, i64* %RAX.i149
  %6634 = add i64 %6633, 8
  %6635 = load i64, i64* %PC.i148
  %6636 = add i64 %6635, 4
  store i64 %6636, i64* %PC.i148
  %6637 = inttoptr i64 %6634 to i64*
  %6638 = load i64, i64* %6637
  store i64 %6638, i64* %RAX.i149, align 8
  store %struct.Memory* %loadMem_409a60, %struct.Memory** %MEMORY
  %loadMem_409a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6640 = getelementptr inbounds %struct.GPR, %struct.GPR* %6639, i32 0, i32 33
  %6641 = getelementptr inbounds %struct.Reg, %struct.Reg* %6640, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %6641 to i64*
  %6642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6643 = getelementptr inbounds %struct.GPR, %struct.GPR* %6642, i32 0, i32 5
  %6644 = getelementptr inbounds %struct.Reg, %struct.Reg* %6643, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %6644 to i64*
  %6645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6646 = getelementptr inbounds %struct.GPR, %struct.GPR* %6645, i32 0, i32 15
  %6647 = getelementptr inbounds %struct.Reg, %struct.Reg* %6646, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %6647 to i64*
  %6648 = load i64, i64* %RBP.i147
  %6649 = sub i64 %6648, 88
  %6650 = load i64, i64* %PC.i145
  %6651 = add i64 %6650, 4
  store i64 %6651, i64* %PC.i145
  %6652 = inttoptr i64 %6649 to i32*
  %6653 = load i32, i32* %6652
  %6654 = sext i32 %6653 to i64
  store i64 %6654, i64* %RCX.i146, align 8
  store %struct.Memory* %loadMem_409a64, %struct.Memory** %MEMORY
  %loadMem_409a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6656 = getelementptr inbounds %struct.GPR, %struct.GPR* %6655, i32 0, i32 33
  %6657 = getelementptr inbounds %struct.Reg, %struct.Reg* %6656, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %6657 to i64*
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6659 = getelementptr inbounds %struct.GPR, %struct.GPR* %6658, i32 0, i32 1
  %6660 = getelementptr inbounds %struct.Reg, %struct.Reg* %6659, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %6660 to i64*
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 5
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %6663 to i64*
  %6664 = load i64, i64* %RAX.i143
  %6665 = load i64, i64* %RCX.i144
  %6666 = add i64 %6665, %6664
  %6667 = load i64, i64* %PC.i142
  %6668 = add i64 %6667, 4
  store i64 %6668, i64* %PC.i142
  %6669 = inttoptr i64 %6666 to i8*
  store i8 8, i8* %6669
  store %struct.Memory* %loadMem_409a68, %struct.Memory** %MEMORY
  %loadMem_409a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6671 = getelementptr inbounds %struct.GPR, %struct.GPR* %6670, i32 0, i32 33
  %6672 = getelementptr inbounds %struct.Reg, %struct.Reg* %6671, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %6672 to i64*
  %6673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6674 = getelementptr inbounds %struct.GPR, %struct.GPR* %6673, i32 0, i32 1
  %6675 = getelementptr inbounds %struct.Reg, %struct.Reg* %6674, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %6675 to i64*
  %6676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6677 = getelementptr inbounds %struct.GPR, %struct.GPR* %6676, i32 0, i32 15
  %6678 = getelementptr inbounds %struct.Reg, %struct.Reg* %6677, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %6678 to i64*
  %6679 = load i64, i64* %RBP.i141
  %6680 = sub i64 %6679, 64
  %6681 = load i64, i64* %PC.i139
  %6682 = add i64 %6681, 4
  store i64 %6682, i64* %PC.i139
  %6683 = inttoptr i64 %6680 to i64*
  %6684 = load i64, i64* %6683
  store i64 %6684, i64* %RAX.i140, align 8
  store %struct.Memory* %loadMem_409a6c, %struct.Memory** %MEMORY
  %loadMem_409a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6686 = getelementptr inbounds %struct.GPR, %struct.GPR* %6685, i32 0, i32 33
  %6687 = getelementptr inbounds %struct.Reg, %struct.Reg* %6686, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %6687 to i64*
  %6688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6689 = getelementptr inbounds %struct.GPR, %struct.GPR* %6688, i32 0, i32 1
  %6690 = getelementptr inbounds %struct.Reg, %struct.Reg* %6689, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %6690 to i64*
  %6691 = load i64, i64* %RAX.i138
  %6692 = add i64 %6691, 16
  %6693 = load i64, i64* %PC.i137
  %6694 = add i64 %6693, 4
  store i64 %6694, i64* %PC.i137
  %6695 = inttoptr i64 %6692 to i64*
  %6696 = load i64, i64* %6695
  store i64 %6696, i64* %RAX.i138, align 8
  store %struct.Memory* %loadMem_409a70, %struct.Memory** %MEMORY
  %loadMem_409a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6698 = getelementptr inbounds %struct.GPR, %struct.GPR* %6697, i32 0, i32 33
  %6699 = getelementptr inbounds %struct.Reg, %struct.Reg* %6698, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %6699 to i64*
  %6700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6701 = getelementptr inbounds %struct.GPR, %struct.GPR* %6700, i32 0, i32 5
  %6702 = getelementptr inbounds %struct.Reg, %struct.Reg* %6701, i32 0, i32 0
  %RCX.i135 = bitcast %union.anon* %6702 to i64*
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6704 = getelementptr inbounds %struct.GPR, %struct.GPR* %6703, i32 0, i32 15
  %6705 = getelementptr inbounds %struct.Reg, %struct.Reg* %6704, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %6705 to i64*
  %6706 = load i64, i64* %RBP.i136
  %6707 = sub i64 %6706, 88
  %6708 = load i64, i64* %PC.i134
  %6709 = add i64 %6708, 4
  store i64 %6709, i64* %PC.i134
  %6710 = inttoptr i64 %6707 to i32*
  %6711 = load i32, i32* %6710
  %6712 = sext i32 %6711 to i64
  store i64 %6712, i64* %RCX.i135, align 8
  store %struct.Memory* %loadMem_409a74, %struct.Memory** %MEMORY
  %loadMem_409a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6714 = getelementptr inbounds %struct.GPR, %struct.GPR* %6713, i32 0, i32 33
  %6715 = getelementptr inbounds %struct.Reg, %struct.Reg* %6714, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %6715 to i64*
  %6716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6717 = getelementptr inbounds %struct.GPR, %struct.GPR* %6716, i32 0, i32 1
  %6718 = getelementptr inbounds %struct.Reg, %struct.Reg* %6717, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %6718 to i64*
  %6719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6720 = getelementptr inbounds %struct.GPR, %struct.GPR* %6719, i32 0, i32 5
  %6721 = getelementptr inbounds %struct.Reg, %struct.Reg* %6720, i32 0, i32 0
  %RCX.i133 = bitcast %union.anon* %6721 to i64*
  %6722 = load i64, i64* %RAX.i132
  %6723 = load i64, i64* %RCX.i133
  %6724 = mul i64 %6723, 4
  %6725 = add i64 %6724, %6722
  %6726 = load i64, i64* %PC.i131
  %6727 = add i64 %6726, 7
  store i64 %6727, i64* %PC.i131
  %6728 = inttoptr i64 %6725 to i32*
  store i32 0, i32* %6728
  store %struct.Memory* %loadMem_409a78, %struct.Memory** %MEMORY
  %loadMem_409a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6730 = getelementptr inbounds %struct.GPR, %struct.GPR* %6729, i32 0, i32 33
  %6731 = getelementptr inbounds %struct.Reg, %struct.Reg* %6730, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %6731 to i64*
  %6732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6733 = getelementptr inbounds %struct.GPR, %struct.GPR* %6732, i32 0, i32 7
  %6734 = getelementptr inbounds %struct.Reg, %struct.Reg* %6733, i32 0, i32 0
  %RDX.i129 = bitcast %union.anon* %6734 to i64*
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6736 = getelementptr inbounds %struct.GPR, %struct.GPR* %6735, i32 0, i32 15
  %6737 = getelementptr inbounds %struct.Reg, %struct.Reg* %6736, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %6737 to i64*
  %6738 = load i64, i64* %RBP.i130
  %6739 = sub i64 %6738, 84
  %6740 = load i64, i64* %PC.i128
  %6741 = add i64 %6740, 3
  store i64 %6741, i64* %PC.i128
  %6742 = inttoptr i64 %6739 to i32*
  %6743 = load i32, i32* %6742
  %6744 = zext i32 %6743 to i64
  store i64 %6744, i64* %RDX.i129, align 8
  store %struct.Memory* %loadMem_409a7f, %struct.Memory** %MEMORY
  %loadMem_409a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6746 = getelementptr inbounds %struct.GPR, %struct.GPR* %6745, i32 0, i32 33
  %6747 = getelementptr inbounds %struct.Reg, %struct.Reg* %6746, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %6747 to i64*
  %6748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6749 = getelementptr inbounds %struct.GPR, %struct.GPR* %6748, i32 0, i32 1
  %6750 = getelementptr inbounds %struct.Reg, %struct.Reg* %6749, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %6750 to i64*
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6752 = getelementptr inbounds %struct.GPR, %struct.GPR* %6751, i32 0, i32 15
  %6753 = getelementptr inbounds %struct.Reg, %struct.Reg* %6752, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %6753 to i64*
  %6754 = load i64, i64* %RBP.i127
  %6755 = sub i64 %6754, 64
  %6756 = load i64, i64* %PC.i125
  %6757 = add i64 %6756, 4
  store i64 %6757, i64* %PC.i125
  %6758 = inttoptr i64 %6755 to i64*
  %6759 = load i64, i64* %6758
  store i64 %6759, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_409a82, %struct.Memory** %MEMORY
  %loadMem_409a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6761 = getelementptr inbounds %struct.GPR, %struct.GPR* %6760, i32 0, i32 33
  %6762 = getelementptr inbounds %struct.Reg, %struct.Reg* %6761, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %6762 to i64*
  %6763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6764 = getelementptr inbounds %struct.GPR, %struct.GPR* %6763, i32 0, i32 1
  %6765 = getelementptr inbounds %struct.Reg, %struct.Reg* %6764, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %6765 to i64*
  %6766 = load i64, i64* %RAX.i124
  %6767 = add i64 %6766, 24
  %6768 = load i64, i64* %PC.i123
  %6769 = add i64 %6768, 4
  store i64 %6769, i64* %PC.i123
  %6770 = inttoptr i64 %6767 to i64*
  %6771 = load i64, i64* %6770
  store i64 %6771, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_409a86, %struct.Memory** %MEMORY
  %loadMem_409a8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6773 = getelementptr inbounds %struct.GPR, %struct.GPR* %6772, i32 0, i32 33
  %6774 = getelementptr inbounds %struct.Reg, %struct.Reg* %6773, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %6774 to i64*
  %6775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6776 = getelementptr inbounds %struct.GPR, %struct.GPR* %6775, i32 0, i32 5
  %6777 = getelementptr inbounds %struct.Reg, %struct.Reg* %6776, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %6777 to i64*
  %6778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6779 = getelementptr inbounds %struct.GPR, %struct.GPR* %6778, i32 0, i32 15
  %6780 = getelementptr inbounds %struct.Reg, %struct.Reg* %6779, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %6780 to i64*
  %6781 = load i64, i64* %RBP.i122
  %6782 = sub i64 %6781, 88
  %6783 = load i64, i64* %PC.i120
  %6784 = add i64 %6783, 4
  store i64 %6784, i64* %PC.i120
  %6785 = inttoptr i64 %6782 to i32*
  %6786 = load i32, i32* %6785
  %6787 = sext i32 %6786 to i64
  store i64 %6787, i64* %RCX.i121, align 8
  store %struct.Memory* %loadMem_409a8a, %struct.Memory** %MEMORY
  %loadMem_409a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6789 = getelementptr inbounds %struct.GPR, %struct.GPR* %6788, i32 0, i32 33
  %6790 = getelementptr inbounds %struct.Reg, %struct.Reg* %6789, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %6790 to i64*
  %6791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6792 = getelementptr inbounds %struct.GPR, %struct.GPR* %6791, i32 0, i32 7
  %6793 = getelementptr inbounds %struct.Reg, %struct.Reg* %6792, i32 0, i32 0
  %EDX.i117 = bitcast %union.anon* %6793 to i32*
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6795 = getelementptr inbounds %struct.GPR, %struct.GPR* %6794, i32 0, i32 1
  %6796 = getelementptr inbounds %struct.Reg, %struct.Reg* %6795, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %6796 to i64*
  %6797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6798 = getelementptr inbounds %struct.GPR, %struct.GPR* %6797, i32 0, i32 5
  %6799 = getelementptr inbounds %struct.Reg, %struct.Reg* %6798, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %6799 to i64*
  %6800 = load i64, i64* %RAX.i118
  %6801 = load i64, i64* %RCX.i119
  %6802 = mul i64 %6801, 4
  %6803 = add i64 %6802, %6800
  %6804 = load i32, i32* %EDX.i117
  %6805 = zext i32 %6804 to i64
  %6806 = load i64, i64* %PC.i116
  %6807 = add i64 %6806, 3
  store i64 %6807, i64* %PC.i116
  %6808 = inttoptr i64 %6803 to i32*
  store i32 %6804, i32* %6808
  store %struct.Memory* %loadMem_409a8e, %struct.Memory** %MEMORY
  %loadMem_409a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6810 = getelementptr inbounds %struct.GPR, %struct.GPR* %6809, i32 0, i32 33
  %6811 = getelementptr inbounds %struct.Reg, %struct.Reg* %6810, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %6811 to i64*
  %6812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6813 = getelementptr inbounds %struct.GPR, %struct.GPR* %6812, i32 0, i32 7
  %6814 = getelementptr inbounds %struct.Reg, %struct.Reg* %6813, i32 0, i32 0
  %RDX.i114 = bitcast %union.anon* %6814 to i64*
  %6815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6816 = getelementptr inbounds %struct.GPR, %struct.GPR* %6815, i32 0, i32 15
  %6817 = getelementptr inbounds %struct.Reg, %struct.Reg* %6816, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %6817 to i64*
  %6818 = load i64, i64* %RBP.i115
  %6819 = sub i64 %6818, 88
  %6820 = load i64, i64* %PC.i113
  %6821 = add i64 %6820, 3
  store i64 %6821, i64* %PC.i113
  %6822 = inttoptr i64 %6819 to i32*
  %6823 = load i32, i32* %6822
  %6824 = zext i32 %6823 to i64
  store i64 %6824, i64* %RDX.i114, align 8
  store %struct.Memory* %loadMem_409a91, %struct.Memory** %MEMORY
  %loadMem_409a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6826 = getelementptr inbounds %struct.GPR, %struct.GPR* %6825, i32 0, i32 33
  %6827 = getelementptr inbounds %struct.Reg, %struct.Reg* %6826, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %6827 to i64*
  %6828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6829 = getelementptr inbounds %struct.GPR, %struct.GPR* %6828, i32 0, i32 7
  %6830 = getelementptr inbounds %struct.Reg, %struct.Reg* %6829, i32 0, i32 0
  %RDX.i112 = bitcast %union.anon* %6830 to i64*
  %6831 = load i64, i64* %RDX.i112
  %6832 = load i64, i64* %PC.i111
  %6833 = add i64 %6832, 3
  store i64 %6833, i64* %PC.i111
  %6834 = trunc i64 %6831 to i32
  %6835 = add i32 1, %6834
  %6836 = zext i32 %6835 to i64
  store i64 %6836, i64* %RDX.i112, align 8
  %6837 = icmp ult i32 %6835, %6834
  %6838 = icmp ult i32 %6835, 1
  %6839 = or i1 %6837, %6838
  %6840 = zext i1 %6839 to i8
  %6841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6840, i8* %6841, align 1
  %6842 = and i32 %6835, 255
  %6843 = call i32 @llvm.ctpop.i32(i32 %6842)
  %6844 = trunc i32 %6843 to i8
  %6845 = and i8 %6844, 1
  %6846 = xor i8 %6845, 1
  %6847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6846, i8* %6847, align 1
  %6848 = xor i64 1, %6831
  %6849 = trunc i64 %6848 to i32
  %6850 = xor i32 %6849, %6835
  %6851 = lshr i32 %6850, 4
  %6852 = trunc i32 %6851 to i8
  %6853 = and i8 %6852, 1
  %6854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6853, i8* %6854, align 1
  %6855 = icmp eq i32 %6835, 0
  %6856 = zext i1 %6855 to i8
  %6857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6856, i8* %6857, align 1
  %6858 = lshr i32 %6835, 31
  %6859 = trunc i32 %6858 to i8
  %6860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6859, i8* %6860, align 1
  %6861 = lshr i32 %6834, 31
  %6862 = xor i32 %6858, %6861
  %6863 = add i32 %6862, %6858
  %6864 = icmp eq i32 %6863, 2
  %6865 = zext i1 %6864 to i8
  %6866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6865, i8* %6866, align 1
  store %struct.Memory* %loadMem_409a94, %struct.Memory** %MEMORY
  %loadMem_409a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6868 = getelementptr inbounds %struct.GPR, %struct.GPR* %6867, i32 0, i32 33
  %6869 = getelementptr inbounds %struct.Reg, %struct.Reg* %6868, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %6869 to i64*
  %6870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6871 = getelementptr inbounds %struct.GPR, %struct.GPR* %6870, i32 0, i32 7
  %6872 = getelementptr inbounds %struct.Reg, %struct.Reg* %6871, i32 0, i32 0
  %EDX.i109 = bitcast %union.anon* %6872 to i32*
  %6873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6874 = getelementptr inbounds %struct.GPR, %struct.GPR* %6873, i32 0, i32 15
  %6875 = getelementptr inbounds %struct.Reg, %struct.Reg* %6874, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %6875 to i64*
  %6876 = load i64, i64* %RBP.i110
  %6877 = sub i64 %6876, 88
  %6878 = load i32, i32* %EDX.i109
  %6879 = zext i32 %6878 to i64
  %6880 = load i64, i64* %PC.i108
  %6881 = add i64 %6880, 3
  store i64 %6881, i64* %PC.i108
  %6882 = inttoptr i64 %6877 to i32*
  store i32 %6878, i32* %6882
  store %struct.Memory* %loadMem_409a97, %struct.Memory** %MEMORY
  %loadMem_409a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6884 = getelementptr inbounds %struct.GPR, %struct.GPR* %6883, i32 0, i32 33
  %6885 = getelementptr inbounds %struct.Reg, %struct.Reg* %6884, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %6885 to i64*
  %6886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6887 = getelementptr inbounds %struct.GPR, %struct.GPR* %6886, i32 0, i32 1
  %6888 = getelementptr inbounds %struct.Reg, %struct.Reg* %6887, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %6888 to i64*
  %6889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6890 = getelementptr inbounds %struct.GPR, %struct.GPR* %6889, i32 0, i32 15
  %6891 = getelementptr inbounds %struct.Reg, %struct.Reg* %6890, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %6891 to i64*
  %6892 = load i64, i64* %RBP.i107
  %6893 = sub i64 %6892, 84
  %6894 = load i64, i64* %PC.i105
  %6895 = add i64 %6894, 3
  store i64 %6895, i64* %PC.i105
  %6896 = inttoptr i64 %6893 to i32*
  %6897 = load i32, i32* %6896
  %6898 = zext i32 %6897 to i64
  store i64 %6898, i64* %RAX.i106, align 8
  store %struct.Memory* %loadMem_409a9a, %struct.Memory** %MEMORY
  %loadMem_409a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6900 = getelementptr inbounds %struct.GPR, %struct.GPR* %6899, i32 0, i32 33
  %6901 = getelementptr inbounds %struct.Reg, %struct.Reg* %6900, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %6901 to i64*
  %6902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6903 = getelementptr inbounds %struct.GPR, %struct.GPR* %6902, i32 0, i32 1
  %6904 = getelementptr inbounds %struct.Reg, %struct.Reg* %6903, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %6904 to i64*
  %6905 = load i64, i64* %RAX.i104
  %6906 = load i64, i64* %PC.i103
  %6907 = add i64 %6906, 3
  store i64 %6907, i64* %PC.i103
  %6908 = trunc i64 %6905 to i32
  %6909 = add i32 1, %6908
  %6910 = zext i32 %6909 to i64
  store i64 %6910, i64* %RAX.i104, align 8
  %6911 = icmp ult i32 %6909, %6908
  %6912 = icmp ult i32 %6909, 1
  %6913 = or i1 %6911, %6912
  %6914 = zext i1 %6913 to i8
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6914, i8* %6915, align 1
  %6916 = and i32 %6909, 255
  %6917 = call i32 @llvm.ctpop.i32(i32 %6916)
  %6918 = trunc i32 %6917 to i8
  %6919 = and i8 %6918, 1
  %6920 = xor i8 %6919, 1
  %6921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6920, i8* %6921, align 1
  %6922 = xor i64 1, %6905
  %6923 = trunc i64 %6922 to i32
  %6924 = xor i32 %6923, %6909
  %6925 = lshr i32 %6924, 4
  %6926 = trunc i32 %6925 to i8
  %6927 = and i8 %6926, 1
  %6928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6927, i8* %6928, align 1
  %6929 = icmp eq i32 %6909, 0
  %6930 = zext i1 %6929 to i8
  %6931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6930, i8* %6931, align 1
  %6932 = lshr i32 %6909, 31
  %6933 = trunc i32 %6932 to i8
  %6934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6933, i8* %6934, align 1
  %6935 = lshr i32 %6908, 31
  %6936 = xor i32 %6932, %6935
  %6937 = add i32 %6936, %6932
  %6938 = icmp eq i32 %6937, 2
  %6939 = zext i1 %6938 to i8
  %6940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6939, i8* %6940, align 1
  store %struct.Memory* %loadMem_409a9d, %struct.Memory** %MEMORY
  %loadMem_409aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6942 = getelementptr inbounds %struct.GPR, %struct.GPR* %6941, i32 0, i32 33
  %6943 = getelementptr inbounds %struct.Reg, %struct.Reg* %6942, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %6943 to i64*
  %6944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6945 = getelementptr inbounds %struct.GPR, %struct.GPR* %6944, i32 0, i32 1
  %6946 = getelementptr inbounds %struct.Reg, %struct.Reg* %6945, i32 0, i32 0
  %EAX.i101 = bitcast %union.anon* %6946 to i32*
  %6947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6948 = getelementptr inbounds %struct.GPR, %struct.GPR* %6947, i32 0, i32 15
  %6949 = getelementptr inbounds %struct.Reg, %struct.Reg* %6948, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %6949 to i64*
  %6950 = load i64, i64* %RBP.i102
  %6951 = sub i64 %6950, 84
  %6952 = load i32, i32* %EAX.i101
  %6953 = zext i32 %6952 to i64
  %6954 = load i64, i64* %PC.i100
  %6955 = add i64 %6954, 3
  store i64 %6955, i64* %PC.i100
  %6956 = inttoptr i64 %6951 to i32*
  store i32 %6952, i32* %6956
  store %struct.Memory* %loadMem_409aa0, %struct.Memory** %MEMORY
  %loadMem_409aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6958 = getelementptr inbounds %struct.GPR, %struct.GPR* %6957, i32 0, i32 33
  %6959 = getelementptr inbounds %struct.Reg, %struct.Reg* %6958, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %6959 to i64*
  %6960 = load i64, i64* %PC.i99
  %6961 = add i64 %6960, -83
  %6962 = load i64, i64* %PC.i99
  %6963 = add i64 %6962, 5
  store i64 %6963, i64* %PC.i99
  %6964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6961, i64* %6964, align 8
  store %struct.Memory* %loadMem_409aa3, %struct.Memory** %MEMORY
  br label %block_.L_409a50

block_.L_409aa8:                                  ; preds = %block_.L_409a50
  %loadMem_409aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6966 = getelementptr inbounds %struct.GPR, %struct.GPR* %6965, i32 0, i32 33
  %6967 = getelementptr inbounds %struct.Reg, %struct.Reg* %6966, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %6967 to i64*
  %6968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6969 = getelementptr inbounds %struct.GPR, %struct.GPR* %6968, i32 0, i32 1
  %6970 = getelementptr inbounds %struct.Reg, %struct.Reg* %6969, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %6970 to i64*
  %6971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6972 = getelementptr inbounds %struct.GPR, %struct.GPR* %6971, i32 0, i32 15
  %6973 = getelementptr inbounds %struct.Reg, %struct.Reg* %6972, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %6973 to i64*
  %6974 = load i64, i64* %RBP.i98
  %6975 = sub i64 %6974, 64
  %6976 = load i64, i64* %PC.i96
  %6977 = add i64 %6976, 4
  store i64 %6977, i64* %PC.i96
  %6978 = inttoptr i64 %6975 to i64*
  %6979 = load i64, i64* %6978
  store i64 %6979, i64* %RAX.i97, align 8
  store %struct.Memory* %loadMem_409aa8, %struct.Memory** %MEMORY
  %loadMem_409aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6981 = getelementptr inbounds %struct.GPR, %struct.GPR* %6980, i32 0, i32 33
  %6982 = getelementptr inbounds %struct.Reg, %struct.Reg* %6981, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %6982 to i64*
  %6983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6984 = getelementptr inbounds %struct.GPR, %struct.GPR* %6983, i32 0, i32 1
  %6985 = getelementptr inbounds %struct.Reg, %struct.Reg* %6984, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %6985 to i64*
  %6986 = load i64, i64* %RAX.i95
  %6987 = add i64 %6986, 8
  %6988 = load i64, i64* %PC.i94
  %6989 = add i64 %6988, 4
  store i64 %6989, i64* %PC.i94
  %6990 = inttoptr i64 %6987 to i64*
  %6991 = load i64, i64* %6990
  store i64 %6991, i64* %RAX.i95, align 8
  store %struct.Memory* %loadMem_409aac, %struct.Memory** %MEMORY
  %loadMem_409ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6993 = getelementptr inbounds %struct.GPR, %struct.GPR* %6992, i32 0, i32 33
  %6994 = getelementptr inbounds %struct.Reg, %struct.Reg* %6993, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %6994 to i64*
  %6995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6996 = getelementptr inbounds %struct.GPR, %struct.GPR* %6995, i32 0, i32 5
  %6997 = getelementptr inbounds %struct.Reg, %struct.Reg* %6996, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %6997 to i64*
  %6998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6999 = getelementptr inbounds %struct.GPR, %struct.GPR* %6998, i32 0, i32 15
  %7000 = getelementptr inbounds %struct.Reg, %struct.Reg* %6999, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %7000 to i64*
  %7001 = load i64, i64* %RBP.i93
  %7002 = sub i64 %7001, 88
  %7003 = load i64, i64* %PC.i91
  %7004 = add i64 %7003, 4
  store i64 %7004, i64* %PC.i91
  %7005 = inttoptr i64 %7002 to i32*
  %7006 = load i32, i32* %7005
  %7007 = sext i32 %7006 to i64
  store i64 %7007, i64* %RCX.i92, align 8
  store %struct.Memory* %loadMem_409ab0, %struct.Memory** %MEMORY
  %loadMem_409ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7009 = getelementptr inbounds %struct.GPR, %struct.GPR* %7008, i32 0, i32 33
  %7010 = getelementptr inbounds %struct.Reg, %struct.Reg* %7009, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %7010 to i64*
  %7011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7012 = getelementptr inbounds %struct.GPR, %struct.GPR* %7011, i32 0, i32 1
  %7013 = getelementptr inbounds %struct.Reg, %struct.Reg* %7012, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %7013 to i64*
  %7014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7015 = getelementptr inbounds %struct.GPR, %struct.GPR* %7014, i32 0, i32 5
  %7016 = getelementptr inbounds %struct.Reg, %struct.Reg* %7015, i32 0, i32 0
  %RCX.i90 = bitcast %union.anon* %7016 to i64*
  %7017 = load i64, i64* %RAX.i89
  %7018 = load i64, i64* %RCX.i90
  %7019 = add i64 %7018, %7017
  %7020 = load i64, i64* %PC.i88
  %7021 = add i64 %7020, 4
  store i64 %7021, i64* %PC.i88
  %7022 = inttoptr i64 %7019 to i8*
  store i8 9, i8* %7022
  store %struct.Memory* %loadMem_409ab4, %struct.Memory** %MEMORY
  %loadMem_409ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7024 = getelementptr inbounds %struct.GPR, %struct.GPR* %7023, i32 0, i32 33
  %7025 = getelementptr inbounds %struct.Reg, %struct.Reg* %7024, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %7025 to i64*
  %7026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7027 = getelementptr inbounds %struct.GPR, %struct.GPR* %7026, i32 0, i32 1
  %7028 = getelementptr inbounds %struct.Reg, %struct.Reg* %7027, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %7028 to i64*
  %7029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7030 = getelementptr inbounds %struct.GPR, %struct.GPR* %7029, i32 0, i32 15
  %7031 = getelementptr inbounds %struct.Reg, %struct.Reg* %7030, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %7031 to i64*
  %7032 = load i64, i64* %RBP.i87
  %7033 = sub i64 %7032, 64
  %7034 = load i64, i64* %PC.i85
  %7035 = add i64 %7034, 4
  store i64 %7035, i64* %PC.i85
  %7036 = inttoptr i64 %7033 to i64*
  %7037 = load i64, i64* %7036
  store i64 %7037, i64* %RAX.i86, align 8
  store %struct.Memory* %loadMem_409ab8, %struct.Memory** %MEMORY
  %loadMem_409abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7039 = getelementptr inbounds %struct.GPR, %struct.GPR* %7038, i32 0, i32 33
  %7040 = getelementptr inbounds %struct.Reg, %struct.Reg* %7039, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %7040 to i64*
  %7041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7042 = getelementptr inbounds %struct.GPR, %struct.GPR* %7041, i32 0, i32 1
  %7043 = getelementptr inbounds %struct.Reg, %struct.Reg* %7042, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %7043 to i64*
  %7044 = load i64, i64* %RAX.i84
  %7045 = add i64 %7044, 16
  %7046 = load i64, i64* %PC.i83
  %7047 = add i64 %7046, 4
  store i64 %7047, i64* %PC.i83
  %7048 = inttoptr i64 %7045 to i64*
  %7049 = load i64, i64* %7048
  store i64 %7049, i64* %RAX.i84, align 8
  store %struct.Memory* %loadMem_409abc, %struct.Memory** %MEMORY
  %loadMem_409ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7051 = getelementptr inbounds %struct.GPR, %struct.GPR* %7050, i32 0, i32 33
  %7052 = getelementptr inbounds %struct.Reg, %struct.Reg* %7051, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %7052 to i64*
  %7053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7054 = getelementptr inbounds %struct.GPR, %struct.GPR* %7053, i32 0, i32 5
  %7055 = getelementptr inbounds %struct.Reg, %struct.Reg* %7054, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %7055 to i64*
  %7056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7057 = getelementptr inbounds %struct.GPR, %struct.GPR* %7056, i32 0, i32 15
  %7058 = getelementptr inbounds %struct.Reg, %struct.Reg* %7057, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %7058 to i64*
  %7059 = load i64, i64* %RBP.i82
  %7060 = sub i64 %7059, 88
  %7061 = load i64, i64* %PC.i80
  %7062 = add i64 %7061, 4
  store i64 %7062, i64* %PC.i80
  %7063 = inttoptr i64 %7060 to i32*
  %7064 = load i32, i32* %7063
  %7065 = sext i32 %7064 to i64
  store i64 %7065, i64* %RCX.i81, align 8
  store %struct.Memory* %loadMem_409ac0, %struct.Memory** %MEMORY
  %loadMem_409ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7067 = getelementptr inbounds %struct.GPR, %struct.GPR* %7066, i32 0, i32 33
  %7068 = getelementptr inbounds %struct.Reg, %struct.Reg* %7067, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %7068 to i64*
  %7069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7070 = getelementptr inbounds %struct.GPR, %struct.GPR* %7069, i32 0, i32 1
  %7071 = getelementptr inbounds %struct.Reg, %struct.Reg* %7070, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %7071 to i64*
  %7072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7073 = getelementptr inbounds %struct.GPR, %struct.GPR* %7072, i32 0, i32 5
  %7074 = getelementptr inbounds %struct.Reg, %struct.Reg* %7073, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %7074 to i64*
  %7075 = load i64, i64* %RAX.i78
  %7076 = load i64, i64* %RCX.i79
  %7077 = mul i64 %7076, 4
  %7078 = add i64 %7077, %7075
  %7079 = load i64, i64* %PC.i77
  %7080 = add i64 %7079, 7
  store i64 %7080, i64* %PC.i77
  %7081 = inttoptr i64 %7078 to i32*
  store i32 0, i32* %7081
  store %struct.Memory* %loadMem_409ac4, %struct.Memory** %MEMORY
  %loadMem_409acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7083 = getelementptr inbounds %struct.GPR, %struct.GPR* %7082, i32 0, i32 33
  %7084 = getelementptr inbounds %struct.Reg, %struct.Reg* %7083, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %7084 to i64*
  %7085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7086 = getelementptr inbounds %struct.GPR, %struct.GPR* %7085, i32 0, i32 1
  %7087 = getelementptr inbounds %struct.Reg, %struct.Reg* %7086, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %7087 to i64*
  %7088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7089 = getelementptr inbounds %struct.GPR, %struct.GPR* %7088, i32 0, i32 15
  %7090 = getelementptr inbounds %struct.Reg, %struct.Reg* %7089, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %7090 to i64*
  %7091 = load i64, i64* %RBP.i76
  %7092 = sub i64 %7091, 64
  %7093 = load i64, i64* %PC.i74
  %7094 = add i64 %7093, 4
  store i64 %7094, i64* %PC.i74
  %7095 = inttoptr i64 %7092 to i64*
  %7096 = load i64, i64* %7095
  store i64 %7096, i64* %RAX.i75, align 8
  store %struct.Memory* %loadMem_409acb, %struct.Memory** %MEMORY
  %loadMem_409acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7098 = getelementptr inbounds %struct.GPR, %struct.GPR* %7097, i32 0, i32 33
  %7099 = getelementptr inbounds %struct.Reg, %struct.Reg* %7098, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %7099 to i64*
  %7100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7101 = getelementptr inbounds %struct.GPR, %struct.GPR* %7100, i32 0, i32 1
  %7102 = getelementptr inbounds %struct.Reg, %struct.Reg* %7101, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %7102 to i64*
  %7103 = load i64, i64* %RAX.i73
  %7104 = add i64 %7103, 24
  %7105 = load i64, i64* %PC.i72
  %7106 = add i64 %7105, 4
  store i64 %7106, i64* %PC.i72
  %7107 = inttoptr i64 %7104 to i64*
  %7108 = load i64, i64* %7107
  store i64 %7108, i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_409acf, %struct.Memory** %MEMORY
  %loadMem_409ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7110 = getelementptr inbounds %struct.GPR, %struct.GPR* %7109, i32 0, i32 33
  %7111 = getelementptr inbounds %struct.Reg, %struct.Reg* %7110, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %7111 to i64*
  %7112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7113 = getelementptr inbounds %struct.GPR, %struct.GPR* %7112, i32 0, i32 5
  %7114 = getelementptr inbounds %struct.Reg, %struct.Reg* %7113, i32 0, i32 0
  %RCX.i70 = bitcast %union.anon* %7114 to i64*
  %7115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7116 = getelementptr inbounds %struct.GPR, %struct.GPR* %7115, i32 0, i32 15
  %7117 = getelementptr inbounds %struct.Reg, %struct.Reg* %7116, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %7117 to i64*
  %7118 = load i64, i64* %RBP.i71
  %7119 = sub i64 %7118, 88
  %7120 = load i64, i64* %PC.i69
  %7121 = add i64 %7120, 4
  store i64 %7121, i64* %PC.i69
  %7122 = inttoptr i64 %7119 to i32*
  %7123 = load i32, i32* %7122
  %7124 = sext i32 %7123 to i64
  store i64 %7124, i64* %RCX.i70, align 8
  store %struct.Memory* %loadMem_409ad3, %struct.Memory** %MEMORY
  %loadMem_409ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7126 = getelementptr inbounds %struct.GPR, %struct.GPR* %7125, i32 0, i32 33
  %7127 = getelementptr inbounds %struct.Reg, %struct.Reg* %7126, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %7127 to i64*
  %7128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7129 = getelementptr inbounds %struct.GPR, %struct.GPR* %7128, i32 0, i32 1
  %7130 = getelementptr inbounds %struct.Reg, %struct.Reg* %7129, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %7130 to i64*
  %7131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7132 = getelementptr inbounds %struct.GPR, %struct.GPR* %7131, i32 0, i32 5
  %7133 = getelementptr inbounds %struct.Reg, %struct.Reg* %7132, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %7133 to i64*
  %7134 = load i64, i64* %RAX.i67
  %7135 = load i64, i64* %RCX.i68
  %7136 = mul i64 %7135, 4
  %7137 = add i64 %7136, %7134
  %7138 = load i64, i64* %PC.i66
  %7139 = add i64 %7138, 7
  store i64 %7139, i64* %PC.i66
  %7140 = inttoptr i64 %7137 to i32*
  store i32 0, i32* %7140
  store %struct.Memory* %loadMem_409ad7, %struct.Memory** %MEMORY
  %loadMem_409ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %7141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7142 = getelementptr inbounds %struct.GPR, %struct.GPR* %7141, i32 0, i32 33
  %7143 = getelementptr inbounds %struct.Reg, %struct.Reg* %7142, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %7143 to i64*
  %7144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7145 = getelementptr inbounds %struct.GPR, %struct.GPR* %7144, i32 0, i32 7
  %7146 = getelementptr inbounds %struct.Reg, %struct.Reg* %7145, i32 0, i32 0
  %RDX.i64 = bitcast %union.anon* %7146 to i64*
  %7147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7148 = getelementptr inbounds %struct.GPR, %struct.GPR* %7147, i32 0, i32 15
  %7149 = getelementptr inbounds %struct.Reg, %struct.Reg* %7148, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %7149 to i64*
  %7150 = load i64, i64* %RBP.i65
  %7151 = sub i64 %7150, 88
  %7152 = load i64, i64* %PC.i63
  %7153 = add i64 %7152, 3
  store i64 %7153, i64* %PC.i63
  %7154 = inttoptr i64 %7151 to i32*
  %7155 = load i32, i32* %7154
  %7156 = zext i32 %7155 to i64
  store i64 %7156, i64* %RDX.i64, align 8
  store %struct.Memory* %loadMem_409ade, %struct.Memory** %MEMORY
  %loadMem_409ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7158 = getelementptr inbounds %struct.GPR, %struct.GPR* %7157, i32 0, i32 33
  %7159 = getelementptr inbounds %struct.Reg, %struct.Reg* %7158, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %7159 to i64*
  %7160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7161 = getelementptr inbounds %struct.GPR, %struct.GPR* %7160, i32 0, i32 7
  %7162 = getelementptr inbounds %struct.Reg, %struct.Reg* %7161, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7162 to i64*
  %7163 = load i64, i64* %RDX.i
  %7164 = load i64, i64* %PC.i62
  %7165 = add i64 %7164, 3
  store i64 %7165, i64* %PC.i62
  %7166 = trunc i64 %7163 to i32
  %7167 = add i32 1, %7166
  %7168 = zext i32 %7167 to i64
  store i64 %7168, i64* %RDX.i, align 8
  %7169 = icmp ult i32 %7167, %7166
  %7170 = icmp ult i32 %7167, 1
  %7171 = or i1 %7169, %7170
  %7172 = zext i1 %7171 to i8
  %7173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7172, i8* %7173, align 1
  %7174 = and i32 %7167, 255
  %7175 = call i32 @llvm.ctpop.i32(i32 %7174)
  %7176 = trunc i32 %7175 to i8
  %7177 = and i8 %7176, 1
  %7178 = xor i8 %7177, 1
  %7179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7178, i8* %7179, align 1
  %7180 = xor i64 1, %7163
  %7181 = trunc i64 %7180 to i32
  %7182 = xor i32 %7181, %7167
  %7183 = lshr i32 %7182, 4
  %7184 = trunc i32 %7183 to i8
  %7185 = and i8 %7184, 1
  %7186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7185, i8* %7186, align 1
  %7187 = icmp eq i32 %7167, 0
  %7188 = zext i1 %7187 to i8
  %7189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7188, i8* %7189, align 1
  %7190 = lshr i32 %7167, 31
  %7191 = trunc i32 %7190 to i8
  %7192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7191, i8* %7192, align 1
  %7193 = lshr i32 %7166, 31
  %7194 = xor i32 %7190, %7193
  %7195 = add i32 %7194, %7190
  %7196 = icmp eq i32 %7195, 2
  %7197 = zext i1 %7196 to i8
  %7198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7197, i8* %7198, align 1
  store %struct.Memory* %loadMem_409ae1, %struct.Memory** %MEMORY
  %loadMem_409ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7200 = getelementptr inbounds %struct.GPR, %struct.GPR* %7199, i32 0, i32 33
  %7201 = getelementptr inbounds %struct.Reg, %struct.Reg* %7200, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %7201 to i64*
  %7202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7203 = getelementptr inbounds %struct.GPR, %struct.GPR* %7202, i32 0, i32 7
  %7204 = getelementptr inbounds %struct.Reg, %struct.Reg* %7203, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %7204 to i32*
  %7205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7206 = getelementptr inbounds %struct.GPR, %struct.GPR* %7205, i32 0, i32 15
  %7207 = getelementptr inbounds %struct.Reg, %struct.Reg* %7206, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %7207 to i64*
  %7208 = load i64, i64* %RBP.i61
  %7209 = sub i64 %7208, 88
  %7210 = load i32, i32* %EDX.i
  %7211 = zext i32 %7210 to i64
  %7212 = load i64, i64* %PC.i60
  %7213 = add i64 %7212, 3
  store i64 %7213, i64* %PC.i60
  %7214 = inttoptr i64 %7209 to i32*
  store i32 %7210, i32* %7214
  store %struct.Memory* %loadMem_409ae4, %struct.Memory** %MEMORY
  %loadMem_409ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7216 = getelementptr inbounds %struct.GPR, %struct.GPR* %7215, i32 0, i32 33
  %7217 = getelementptr inbounds %struct.Reg, %struct.Reg* %7216, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %7217 to i64*
  %7218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7219 = getelementptr inbounds %struct.GPR, %struct.GPR* %7218, i32 0, i32 15
  %7220 = getelementptr inbounds %struct.Reg, %struct.Reg* %7219, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %7220 to i64*
  %7221 = load i64, i64* %RBP.i59
  %7222 = sub i64 %7221, 80
  %7223 = load i64, i64* %PC.i58
  %7224 = add i64 %7223, 7
  store i64 %7224, i64* %PC.i58
  %7225 = inttoptr i64 %7222 to i32*
  store i32 0, i32* %7225
  store %struct.Memory* %loadMem_409ae7, %struct.Memory** %MEMORY
  br label %block_.L_409aee

block_.L_409aee:                                  ; preds = %block_409afa, %block_.L_409aa8
  %loadMem_409aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %7226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7227 = getelementptr inbounds %struct.GPR, %struct.GPR* %7226, i32 0, i32 33
  %7228 = getelementptr inbounds %struct.Reg, %struct.Reg* %7227, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %7228 to i64*
  %7229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7230 = getelementptr inbounds %struct.GPR, %struct.GPR* %7229, i32 0, i32 1
  %7231 = getelementptr inbounds %struct.Reg, %struct.Reg* %7230, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %7231 to i64*
  %7232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7233 = getelementptr inbounds %struct.GPR, %struct.GPR* %7232, i32 0, i32 15
  %7234 = getelementptr inbounds %struct.Reg, %struct.Reg* %7233, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %7234 to i64*
  %7235 = load i64, i64* %RBP.i57
  %7236 = sub i64 %7235, 80
  %7237 = load i64, i64* %PC.i55
  %7238 = add i64 %7237, 3
  store i64 %7238, i64* %PC.i55
  %7239 = inttoptr i64 %7236 to i32*
  %7240 = load i32, i32* %7239
  %7241 = zext i32 %7240 to i64
  store i64 %7241, i64* %RAX.i56, align 8
  store %struct.Memory* %loadMem_409aee, %struct.Memory** %MEMORY
  %loadMem_409af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7243 = getelementptr inbounds %struct.GPR, %struct.GPR* %7242, i32 0, i32 33
  %7244 = getelementptr inbounds %struct.Reg, %struct.Reg* %7243, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %7244 to i64*
  %7245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7246 = getelementptr inbounds %struct.GPR, %struct.GPR* %7245, i32 0, i32 1
  %7247 = getelementptr inbounds %struct.Reg, %struct.Reg* %7246, i32 0, i32 0
  %EAX.i53 = bitcast %union.anon* %7247 to i32*
  %7248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7249 = getelementptr inbounds %struct.GPR, %struct.GPR* %7248, i32 0, i32 15
  %7250 = getelementptr inbounds %struct.Reg, %struct.Reg* %7249, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %7250 to i64*
  %7251 = load i32, i32* %EAX.i53
  %7252 = zext i32 %7251 to i64
  %7253 = load i64, i64* %RBP.i54
  %7254 = sub i64 %7253, 76
  %7255 = load i64, i64* %PC.i52
  %7256 = add i64 %7255, 3
  store i64 %7256, i64* %PC.i52
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
  store %struct.Memory* %loadMem_409af1, %struct.Memory** %MEMORY
  %loadMem_409af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7290 = getelementptr inbounds %struct.GPR, %struct.GPR* %7289, i32 0, i32 33
  %7291 = getelementptr inbounds %struct.Reg, %struct.Reg* %7290, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %7291 to i64*
  %7292 = load i64, i64* %PC.i51
  %7293 = add i64 %7292, 37
  %7294 = load i64, i64* %PC.i51
  %7295 = add i64 %7294, 6
  %7296 = load i64, i64* %PC.i51
  %7297 = add i64 %7296, 6
  store i64 %7297, i64* %PC.i51
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
  store %struct.Memory* %loadMem_409af4, %struct.Memory** %MEMORY
  %loadBr_409af4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409af4 = icmp eq i8 %loadBr_409af4, 1
  br i1 %cmpBr_409af4, label %block_.L_409b19, label %block_409afa

block_409afa:                                     ; preds = %block_.L_409aee
  %loadMem_409afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7310 = getelementptr inbounds %struct.GPR, %struct.GPR* %7309, i32 0, i32 33
  %7311 = getelementptr inbounds %struct.Reg, %struct.Reg* %7310, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %7311 to i64*
  %7312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7313 = getelementptr inbounds %struct.GPR, %struct.GPR* %7312, i32 0, i32 1
  %7314 = getelementptr inbounds %struct.Reg, %struct.Reg* %7313, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %7314 to i64*
  %7315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7316 = getelementptr inbounds %struct.GPR, %struct.GPR* %7315, i32 0, i32 15
  %7317 = getelementptr inbounds %struct.Reg, %struct.Reg* %7316, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %7317 to i64*
  %7318 = load i64, i64* %RBP.i50
  %7319 = sub i64 %7318, 72
  %7320 = load i64, i64* %PC.i48
  %7321 = add i64 %7320, 4
  store i64 %7321, i64* %PC.i48
  %7322 = inttoptr i64 %7319 to i64*
  %7323 = load i64, i64* %7322
  store i64 %7323, i64* %RAX.i49, align 8
  store %struct.Memory* %loadMem_409afa, %struct.Memory** %MEMORY
  %loadMem_409afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %7324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7325 = getelementptr inbounds %struct.GPR, %struct.GPR* %7324, i32 0, i32 33
  %7326 = getelementptr inbounds %struct.Reg, %struct.Reg* %7325, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %7326 to i64*
  %7327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7328 = getelementptr inbounds %struct.GPR, %struct.GPR* %7327, i32 0, i32 5
  %7329 = getelementptr inbounds %struct.Reg, %struct.Reg* %7328, i32 0, i32 0
  %RCX.i46 = bitcast %union.anon* %7329 to i64*
  %7330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7331 = getelementptr inbounds %struct.GPR, %struct.GPR* %7330, i32 0, i32 15
  %7332 = getelementptr inbounds %struct.Reg, %struct.Reg* %7331, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %7332 to i64*
  %7333 = load i64, i64* %RBP.i47
  %7334 = sub i64 %7333, 80
  %7335 = load i64, i64* %PC.i45
  %7336 = add i64 %7335, 4
  store i64 %7336, i64* %PC.i45
  %7337 = inttoptr i64 %7334 to i32*
  %7338 = load i32, i32* %7337
  %7339 = sext i32 %7338 to i64
  store i64 %7339, i64* %RCX.i46, align 8
  store %struct.Memory* %loadMem_409afe, %struct.Memory** %MEMORY
  %loadMem_409b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7341 = getelementptr inbounds %struct.GPR, %struct.GPR* %7340, i32 0, i32 33
  %7342 = getelementptr inbounds %struct.Reg, %struct.Reg* %7341, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %7342 to i64*
  %7343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7344 = getelementptr inbounds %struct.GPR, %struct.GPR* %7343, i32 0, i32 1
  %7345 = getelementptr inbounds %struct.Reg, %struct.Reg* %7344, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %7345 to i64*
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7347 = getelementptr inbounds %struct.GPR, %struct.GPR* %7346, i32 0, i32 5
  %7348 = getelementptr inbounds %struct.Reg, %struct.Reg* %7347, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7348 to i64*
  %7349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7350 = getelementptr inbounds %struct.GPR, %struct.GPR* %7349, i32 0, i32 11
  %7351 = getelementptr inbounds %struct.Reg, %struct.Reg* %7350, i32 0, i32 0
  %RDI.i44 = bitcast %union.anon* %7351 to i64*
  %7352 = load i64, i64* %RAX.i43
  %7353 = load i64, i64* %RCX.i
  %7354 = mul i64 %7353, 8
  %7355 = add i64 %7354, %7352
  %7356 = load i64, i64* %PC.i42
  %7357 = add i64 %7356, 4
  store i64 %7357, i64* %PC.i42
  %7358 = inttoptr i64 %7355 to i64*
  %7359 = load i64, i64* %7358
  store i64 %7359, i64* %RDI.i44, align 8
  store %struct.Memory* %loadMem_409b02, %struct.Memory** %MEMORY
  %loadMem1_409b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7361 = getelementptr inbounds %struct.GPR, %struct.GPR* %7360, i32 0, i32 33
  %7362 = getelementptr inbounds %struct.Reg, %struct.Reg* %7361, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %7362 to i64*
  %7363 = load i64, i64* %PC.i41
  %7364 = add i64 %7363, 277546
  %7365 = load i64, i64* %PC.i41
  %7366 = add i64 %7365, 5
  %7367 = load i64, i64* %PC.i41
  %7368 = add i64 %7367, 5
  store i64 %7368, i64* %PC.i41
  %7369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7370 = load i64, i64* %7369, align 8
  %7371 = add i64 %7370, -8
  %7372 = inttoptr i64 %7371 to i64*
  store i64 %7366, i64* %7372
  store i64 %7371, i64* %7369, align 8
  %7373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7364, i64* %7373, align 8
  store %struct.Memory* %loadMem1_409b06, %struct.Memory** %MEMORY
  %loadMem2_409b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409b06 = load i64, i64* %3
  %call2_409b06 = call %struct.Memory* @sub_44d730.P7FreeTrace(%struct.State* %0, i64 %loadPC_409b06, %struct.Memory* %loadMem2_409b06)
  store %struct.Memory* %call2_409b06, %struct.Memory** %MEMORY
  %loadMem_409b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7375 = getelementptr inbounds %struct.GPR, %struct.GPR* %7374, i32 0, i32 33
  %7376 = getelementptr inbounds %struct.Reg, %struct.Reg* %7375, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %7376 to i64*
  %7377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7378 = getelementptr inbounds %struct.GPR, %struct.GPR* %7377, i32 0, i32 1
  %7379 = getelementptr inbounds %struct.Reg, %struct.Reg* %7378, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %7379 to i64*
  %7380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7381 = getelementptr inbounds %struct.GPR, %struct.GPR* %7380, i32 0, i32 15
  %7382 = getelementptr inbounds %struct.Reg, %struct.Reg* %7381, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %7382 to i64*
  %7383 = load i64, i64* %RBP.i40
  %7384 = sub i64 %7383, 80
  %7385 = load i64, i64* %PC.i38
  %7386 = add i64 %7385, 3
  store i64 %7386, i64* %PC.i38
  %7387 = inttoptr i64 %7384 to i32*
  %7388 = load i32, i32* %7387
  %7389 = zext i32 %7388 to i64
  store i64 %7389, i64* %RAX.i39, align 8
  store %struct.Memory* %loadMem_409b0b, %struct.Memory** %MEMORY
  %loadMem_409b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7391 = getelementptr inbounds %struct.GPR, %struct.GPR* %7390, i32 0, i32 33
  %7392 = getelementptr inbounds %struct.Reg, %struct.Reg* %7391, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %7392 to i64*
  %7393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7394 = getelementptr inbounds %struct.GPR, %struct.GPR* %7393, i32 0, i32 1
  %7395 = getelementptr inbounds %struct.Reg, %struct.Reg* %7394, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %7395 to i64*
  %7396 = load i64, i64* %RAX.i37
  %7397 = load i64, i64* %PC.i36
  %7398 = add i64 %7397, 3
  store i64 %7398, i64* %PC.i36
  %7399 = trunc i64 %7396 to i32
  %7400 = add i32 1, %7399
  %7401 = zext i32 %7400 to i64
  store i64 %7401, i64* %RAX.i37, align 8
  %7402 = icmp ult i32 %7400, %7399
  %7403 = icmp ult i32 %7400, 1
  %7404 = or i1 %7402, %7403
  %7405 = zext i1 %7404 to i8
  %7406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7405, i8* %7406, align 1
  %7407 = and i32 %7400, 255
  %7408 = call i32 @llvm.ctpop.i32(i32 %7407)
  %7409 = trunc i32 %7408 to i8
  %7410 = and i8 %7409, 1
  %7411 = xor i8 %7410, 1
  %7412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7411, i8* %7412, align 1
  %7413 = xor i64 1, %7396
  %7414 = trunc i64 %7413 to i32
  %7415 = xor i32 %7414, %7400
  %7416 = lshr i32 %7415, 4
  %7417 = trunc i32 %7416 to i8
  %7418 = and i8 %7417, 1
  %7419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7418, i8* %7419, align 1
  %7420 = icmp eq i32 %7400, 0
  %7421 = zext i1 %7420 to i8
  %7422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7421, i8* %7422, align 1
  %7423 = lshr i32 %7400, 31
  %7424 = trunc i32 %7423 to i8
  %7425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7424, i8* %7425, align 1
  %7426 = lshr i32 %7399, 31
  %7427 = xor i32 %7423, %7426
  %7428 = add i32 %7427, %7423
  %7429 = icmp eq i32 %7428, 2
  %7430 = zext i1 %7429 to i8
  %7431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7430, i8* %7431, align 1
  store %struct.Memory* %loadMem_409b0e, %struct.Memory** %MEMORY
  %loadMem_409b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7433 = getelementptr inbounds %struct.GPR, %struct.GPR* %7432, i32 0, i32 33
  %7434 = getelementptr inbounds %struct.Reg, %struct.Reg* %7433, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7434 to i64*
  %7435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7436 = getelementptr inbounds %struct.GPR, %struct.GPR* %7435, i32 0, i32 1
  %7437 = getelementptr inbounds %struct.Reg, %struct.Reg* %7436, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7437 to i32*
  %7438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7439 = getelementptr inbounds %struct.GPR, %struct.GPR* %7438, i32 0, i32 15
  %7440 = getelementptr inbounds %struct.Reg, %struct.Reg* %7439, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %7440 to i64*
  %7441 = load i64, i64* %RBP.i35
  %7442 = sub i64 %7441, 80
  %7443 = load i32, i32* %EAX.i
  %7444 = zext i32 %7443 to i64
  %7445 = load i64, i64* %PC.i34
  %7446 = add i64 %7445, 3
  store i64 %7446, i64* %PC.i34
  %7447 = inttoptr i64 %7442 to i32*
  store i32 %7443, i32* %7447
  store %struct.Memory* %loadMem_409b11, %struct.Memory** %MEMORY
  %loadMem_409b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7449 = getelementptr inbounds %struct.GPR, %struct.GPR* %7448, i32 0, i32 33
  %7450 = getelementptr inbounds %struct.Reg, %struct.Reg* %7449, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %7450 to i64*
  %7451 = load i64, i64* %PC.i33
  %7452 = add i64 %7451, -38
  %7453 = load i64, i64* %PC.i33
  %7454 = add i64 %7453, 5
  store i64 %7454, i64* %PC.i33
  %7455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7452, i64* %7455, align 8
  store %struct.Memory* %loadMem_409b14, %struct.Memory** %MEMORY
  br label %block_.L_409aee

block_.L_409b19:                                  ; preds = %block_.L_409aee
  %loadMem_409b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7457 = getelementptr inbounds %struct.GPR, %struct.GPR* %7456, i32 0, i32 33
  %7458 = getelementptr inbounds %struct.Reg, %struct.Reg* %7457, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %7458 to i64*
  %7459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7460 = getelementptr inbounds %struct.GPR, %struct.GPR* %7459, i32 0, i32 1
  %7461 = getelementptr inbounds %struct.Reg, %struct.Reg* %7460, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %7461 to i64*
  %7462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7463 = getelementptr inbounds %struct.GPR, %struct.GPR* %7462, i32 0, i32 15
  %7464 = getelementptr inbounds %struct.Reg, %struct.Reg* %7463, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %7464 to i64*
  %7465 = load i64, i64* %RBP.i32
  %7466 = sub i64 %7465, 72
  %7467 = load i64, i64* %PC.i30
  %7468 = add i64 %7467, 4
  store i64 %7468, i64* %PC.i30
  %7469 = inttoptr i64 %7466 to i64*
  %7470 = load i64, i64* %7469
  store i64 %7470, i64* %RAX.i31, align 8
  store %struct.Memory* %loadMem_409b19, %struct.Memory** %MEMORY
  %loadMem_409b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7472 = getelementptr inbounds %struct.GPR, %struct.GPR* %7471, i32 0, i32 33
  %7473 = getelementptr inbounds %struct.Reg, %struct.Reg* %7472, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %7473 to i64*
  %7474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7475 = getelementptr inbounds %struct.GPR, %struct.GPR* %7474, i32 0, i32 1
  %7476 = getelementptr inbounds %struct.Reg, %struct.Reg* %7475, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %7476 to i64*
  %7477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7478 = getelementptr inbounds %struct.GPR, %struct.GPR* %7477, i32 0, i32 11
  %7479 = getelementptr inbounds %struct.Reg, %struct.Reg* %7478, i32 0, i32 0
  %RDI.i29 = bitcast %union.anon* %7479 to i64*
  %7480 = load i64, i64* %RAX.i28
  %7481 = load i64, i64* %PC.i27
  %7482 = add i64 %7481, 3
  store i64 %7482, i64* %PC.i27
  store i64 %7480, i64* %RDI.i29, align 8
  store %struct.Memory* %loadMem_409b1d, %struct.Memory** %MEMORY
  %loadMem1_409b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7484 = getelementptr inbounds %struct.GPR, %struct.GPR* %7483, i32 0, i32 33
  %7485 = getelementptr inbounds %struct.Reg, %struct.Reg* %7484, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %7485 to i64*
  %7486 = load i64, i64* %PC.i26
  %7487 = add i64 %7486, -34720
  %7488 = load i64, i64* %PC.i26
  %7489 = add i64 %7488, 5
  %7490 = load i64, i64* %PC.i26
  %7491 = add i64 %7490, 5
  store i64 %7491, i64* %PC.i26
  %7492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7493 = load i64, i64* %7492, align 8
  %7494 = add i64 %7493, -8
  %7495 = inttoptr i64 %7494 to i64*
  store i64 %7489, i64* %7495
  store i64 %7494, i64* %7492, align 8
  %7496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7487, i64* %7496, align 8
  store %struct.Memory* %loadMem1_409b20, %struct.Memory** %MEMORY
  %loadMem2_409b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409b20 = load i64, i64* %3
  %7497 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_409b20)
  store %struct.Memory* %7497, %struct.Memory** %MEMORY
  %loadMem_409b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7499 = getelementptr inbounds %struct.GPR, %struct.GPR* %7498, i32 0, i32 33
  %7500 = getelementptr inbounds %struct.Reg, %struct.Reg* %7499, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %7500 to i64*
  %7501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7502 = getelementptr inbounds %struct.GPR, %struct.GPR* %7501, i32 0, i32 11
  %7503 = getelementptr inbounds %struct.Reg, %struct.Reg* %7502, i32 0, i32 0
  %RDI.i21 = bitcast %union.anon* %7503 to i64*
  %7504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7505 = getelementptr inbounds %struct.GPR, %struct.GPR* %7504, i32 0, i32 15
  %7506 = getelementptr inbounds %struct.Reg, %struct.Reg* %7505, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %7506 to i64*
  %7507 = load i64, i64* %RBP.i22
  %7508 = sub i64 %7507, 56
  %7509 = load i64, i64* %PC.i20
  %7510 = add i64 %7509, 4
  store i64 %7510, i64* %PC.i20
  %7511 = inttoptr i64 %7508 to i64*
  %7512 = load i64, i64* %7511
  store i64 %7512, i64* %RDI.i21, align 8
  store %struct.Memory* %loadMem_409b25, %struct.Memory** %MEMORY
  %loadMem1_409b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7514 = getelementptr inbounds %struct.GPR, %struct.GPR* %7513, i32 0, i32 33
  %7515 = getelementptr inbounds %struct.Reg, %struct.Reg* %7514, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %7515 to i64*
  %7516 = load i64, i64* %PC.i19
  %7517 = add i64 %7516, 277511
  %7518 = load i64, i64* %PC.i19
  %7519 = add i64 %7518, 5
  %7520 = load i64, i64* %PC.i19
  %7521 = add i64 %7520, 5
  store i64 %7521, i64* %PC.i19
  %7522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7523 = load i64, i64* %7522, align 8
  %7524 = add i64 %7523, -8
  %7525 = inttoptr i64 %7524 to i64*
  store i64 %7519, i64* %7525
  store i64 %7524, i64* %7522, align 8
  %7526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7517, i64* %7526, align 8
  store %struct.Memory* %loadMem1_409b29, %struct.Memory** %MEMORY
  %loadMem2_409b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409b29 = load i64, i64* %3
  %call2_409b29 = call %struct.Memory* @sub_44d730.P7FreeTrace(%struct.State* %0, i64 %loadPC_409b29, %struct.Memory* %loadMem2_409b29)
  store %struct.Memory* %call2_409b29, %struct.Memory** %MEMORY
  %loadMem_409b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7528 = getelementptr inbounds %struct.GPR, %struct.GPR* %7527, i32 0, i32 33
  %7529 = getelementptr inbounds %struct.Reg, %struct.Reg* %7528, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %7529 to i64*
  %7530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7531 = getelementptr inbounds %struct.GPR, %struct.GPR* %7530, i32 0, i32 1
  %7532 = getelementptr inbounds %struct.Reg, %struct.Reg* %7531, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %7532 to i64*
  %7533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7534 = getelementptr inbounds %struct.GPR, %struct.GPR* %7533, i32 0, i32 15
  %7535 = getelementptr inbounds %struct.Reg, %struct.Reg* %7534, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %7535 to i64*
  %7536 = load i64, i64* %RBP.i18
  %7537 = sub i64 %7536, 64
  %7538 = load i64, i64* %PC.i16
  %7539 = add i64 %7538, 4
  store i64 %7539, i64* %PC.i16
  %7540 = inttoptr i64 %7537 to i64*
  %7541 = load i64, i64* %7540
  store i64 %7541, i64* %RAX.i17, align 8
  store %struct.Memory* %loadMem_409b2e, %struct.Memory** %MEMORY
  %loadMem_409b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7543 = getelementptr inbounds %struct.GPR, %struct.GPR* %7542, i32 0, i32 33
  %7544 = getelementptr inbounds %struct.Reg, %struct.Reg* %7543, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %7544 to i64*
  %7545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7546 = getelementptr inbounds %struct.GPR, %struct.GPR* %7545, i32 0, i32 11
  %7547 = getelementptr inbounds %struct.Reg, %struct.Reg* %7546, i32 0, i32 0
  %RDI.i14 = bitcast %union.anon* %7547 to i64*
  %7548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7549 = getelementptr inbounds %struct.GPR, %struct.GPR* %7548, i32 0, i32 15
  %7550 = getelementptr inbounds %struct.Reg, %struct.Reg* %7549, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %7550 to i64*
  %7551 = load i64, i64* %RBP.i15
  %7552 = sub i64 %7551, 48
  %7553 = load i64, i64* %PC.i13
  %7554 = add i64 %7553, 4
  store i64 %7554, i64* %PC.i13
  %7555 = inttoptr i64 %7552 to i64*
  %7556 = load i64, i64* %7555
  store i64 %7556, i64* %RDI.i14, align 8
  store %struct.Memory* %loadMem_409b32, %struct.Memory** %MEMORY
  %loadMem_409b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7558 = getelementptr inbounds %struct.GPR, %struct.GPR* %7557, i32 0, i32 33
  %7559 = getelementptr inbounds %struct.Reg, %struct.Reg* %7558, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %7559 to i64*
  %7560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7561 = getelementptr inbounds %struct.GPR, %struct.GPR* %7560, i32 0, i32 1
  %7562 = getelementptr inbounds %struct.Reg, %struct.Reg* %7561, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7562 to i64*
  %7563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7564 = getelementptr inbounds %struct.GPR, %struct.GPR* %7563, i32 0, i32 11
  %7565 = getelementptr inbounds %struct.Reg, %struct.Reg* %7564, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7565 to i64*
  %7566 = load i64, i64* %RDI.i
  %7567 = load i64, i64* %RAX.i
  %7568 = load i64, i64* %PC.i12
  %7569 = add i64 %7568, 3
  store i64 %7569, i64* %PC.i12
  %7570 = inttoptr i64 %7566 to i64*
  store i64 %7567, i64* %7570
  store %struct.Memory* %loadMem_409b36, %struct.Memory** %MEMORY
  %loadMem_409b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7572 = getelementptr inbounds %struct.GPR, %struct.GPR* %7571, i32 0, i32 33
  %7573 = getelementptr inbounds %struct.Reg, %struct.Reg* %7572, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7573 to i64*
  %7574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7575 = getelementptr inbounds %struct.GPR, %struct.GPR* %7574, i32 0, i32 15
  %7576 = getelementptr inbounds %struct.Reg, %struct.Reg* %7575, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %7576 to i64*
  %7577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7578 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7577, i64 0, i64 0
  %YMM0.i11 = bitcast %union.VectorReg* %7578 to %"class.std::bitset"*
  %7579 = bitcast %"class.std::bitset"* %YMM0.i11 to i8*
  %7580 = load i64, i64* %RBP.i10
  %7581 = sub i64 %7580, 104
  %7582 = load i64, i64* %PC.i9
  %7583 = add i64 %7582, 5
  store i64 %7583, i64* %PC.i9
  %7584 = inttoptr i64 %7581 to float*
  %7585 = load float, float* %7584
  %7586 = bitcast i8* %7579 to float*
  store float %7585, float* %7586, align 1
  %7587 = getelementptr inbounds i8, i8* %7579, i64 4
  %7588 = bitcast i8* %7587 to float*
  store float 0.000000e+00, float* %7588, align 1
  %7589 = getelementptr inbounds i8, i8* %7579, i64 8
  %7590 = bitcast i8* %7589 to float*
  store float 0.000000e+00, float* %7590, align 1
  %7591 = getelementptr inbounds i8, i8* %7579, i64 12
  %7592 = bitcast i8* %7591 to float*
  store float 0.000000e+00, float* %7592, align 1
  store %struct.Memory* %loadMem_409b39, %struct.Memory** %MEMORY
  %loadMem_409b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7594 = getelementptr inbounds %struct.GPR, %struct.GPR* %7593, i32 0, i32 33
  %7595 = getelementptr inbounds %struct.Reg, %struct.Reg* %7594, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %7595 to i64*
  %7596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7597 = getelementptr inbounds %struct.GPR, %struct.GPR* %7596, i32 0, i32 15
  %7598 = getelementptr inbounds %struct.Reg, %struct.Reg* %7597, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %7598 to i64*
  %7599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7600 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7599, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %7600 to %union.vec128_t*
  %7601 = load i64, i64* %RBP.i8
  %7602 = sub i64 %7601, 4
  %7603 = bitcast %union.vec128_t* %XMM0.i to i8*
  %7604 = load i64, i64* %PC.i7
  %7605 = add i64 %7604, 5
  store i64 %7605, i64* %PC.i7
  %7606 = bitcast i8* %7603 to <2 x float>*
  %7607 = load <2 x float>, <2 x float>* %7606, align 1
  %7608 = extractelement <2 x float> %7607, i32 0
  %7609 = inttoptr i64 %7602 to float*
  store float %7608, float* %7609
  store %struct.Memory* %loadMem_409b3e, %struct.Memory** %MEMORY
  br label %block_.L_409b43

block_.L_409b43:                                  ; preds = %block_.L_409b19, %block_.L_4095a0
  %loadMem_409b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7611 = getelementptr inbounds %struct.GPR, %struct.GPR* %7610, i32 0, i32 33
  %7612 = getelementptr inbounds %struct.Reg, %struct.Reg* %7611, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7612 to i64*
  %7613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7614 = getelementptr inbounds %struct.GPR, %struct.GPR* %7613, i32 0, i32 15
  %7615 = getelementptr inbounds %struct.Reg, %struct.Reg* %7614, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %7615 to i64*
  %7616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7617 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7616, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %7617 to %"class.std::bitset"*
  %7618 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %7619 = load i64, i64* %RBP.i6
  %7620 = sub i64 %7619, 4
  %7621 = load i64, i64* %PC.i5
  %7622 = add i64 %7621, 5
  store i64 %7622, i64* %PC.i5
  %7623 = inttoptr i64 %7620 to float*
  %7624 = load float, float* %7623
  %7625 = bitcast i8* %7618 to float*
  store float %7624, float* %7625, align 1
  %7626 = getelementptr inbounds i8, i8* %7618, i64 4
  %7627 = bitcast i8* %7626 to float*
  store float 0.000000e+00, float* %7627, align 1
  %7628 = getelementptr inbounds i8, i8* %7618, i64 8
  %7629 = bitcast i8* %7628 to float*
  store float 0.000000e+00, float* %7629, align 1
  %7630 = getelementptr inbounds i8, i8* %7618, i64 12
  %7631 = bitcast i8* %7630 to float*
  store float 0.000000e+00, float* %7631, align 1
  store %struct.Memory* %loadMem_409b43, %struct.Memory** %MEMORY
  %loadMem_409b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7633 = getelementptr inbounds %struct.GPR, %struct.GPR* %7632, i32 0, i32 33
  %7634 = getelementptr inbounds %struct.Reg, %struct.Reg* %7633, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7634 to i64*
  %7635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7636 = getelementptr inbounds %struct.GPR, %struct.GPR* %7635, i32 0, i32 13
  %7637 = getelementptr inbounds %struct.Reg, %struct.Reg* %7636, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7637 to i64*
  %7638 = load i64, i64* %RSP.i
  %7639 = load i64, i64* %PC.i4
  %7640 = add i64 %7639, 7
  store i64 %7640, i64* %PC.i4
  %7641 = add i64 144, %7638
  store i64 %7641, i64* %RSP.i, align 8
  %7642 = icmp ult i64 %7641, %7638
  %7643 = icmp ult i64 %7641, 144
  %7644 = or i1 %7642, %7643
  %7645 = zext i1 %7644 to i8
  %7646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7645, i8* %7646, align 1
  %7647 = trunc i64 %7641 to i32
  %7648 = and i32 %7647, 255
  %7649 = call i32 @llvm.ctpop.i32(i32 %7648)
  %7650 = trunc i32 %7649 to i8
  %7651 = and i8 %7650, 1
  %7652 = xor i8 %7651, 1
  %7653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7652, i8* %7653, align 1
  %7654 = xor i64 144, %7638
  %7655 = xor i64 %7654, %7641
  %7656 = lshr i64 %7655, 4
  %7657 = trunc i64 %7656 to i8
  %7658 = and i8 %7657, 1
  %7659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7658, i8* %7659, align 1
  %7660 = icmp eq i64 %7641, 0
  %7661 = zext i1 %7660 to i8
  %7662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7661, i8* %7662, align 1
  %7663 = lshr i64 %7641, 63
  %7664 = trunc i64 %7663 to i8
  %7665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7664, i8* %7665, align 1
  %7666 = lshr i64 %7638, 63
  %7667 = xor i64 %7663, %7666
  %7668 = add i64 %7667, %7663
  %7669 = icmp eq i64 %7668, 2
  %7670 = zext i1 %7669 to i8
  %7671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7670, i8* %7671, align 1
  store %struct.Memory* %loadMem_409b48, %struct.Memory** %MEMORY
  %loadMem_409b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7673 = getelementptr inbounds %struct.GPR, %struct.GPR* %7672, i32 0, i32 33
  %7674 = getelementptr inbounds %struct.Reg, %struct.Reg* %7673, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7674 to i64*
  %7675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7676 = getelementptr inbounds %struct.GPR, %struct.GPR* %7675, i32 0, i32 15
  %7677 = getelementptr inbounds %struct.Reg, %struct.Reg* %7676, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7677 to i64*
  %7678 = load i64, i64* %PC.i2
  %7679 = add i64 %7678, 1
  store i64 %7679, i64* %PC.i2
  %7680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7681 = load i64, i64* %7680, align 8
  %7682 = add i64 %7681, 8
  %7683 = inttoptr i64 %7681 to i64*
  %7684 = load i64, i64* %7683
  store i64 %7684, i64* %RBP.i3, align 8
  store i64 %7682, i64* %7680, align 8
  store %struct.Memory* %loadMem_409b4f, %struct.Memory** %MEMORY
  %loadMem_409b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7686 = getelementptr inbounds %struct.GPR, %struct.GPR* %7685, i32 0, i32 33
  %7687 = getelementptr inbounds %struct.Reg, %struct.Reg* %7686, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7687 to i64*
  %7688 = load i64, i64* %PC.i1
  %7689 = add i64 %7688, 1
  store i64 %7689, i64* %PC.i1
  %7690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7692 = load i64, i64* %7691, align 8
  %7693 = inttoptr i64 %7692 to i64*
  %7694 = load i64, i64* %7693
  store i64 %7694, i64* %7690, align 8
  %7695 = add i64 %7692, 8
  store i64 %7695, i64* %7691, align 8
  store %struct.Memory* %loadMem_409b50, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_409b50
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

define %struct.Memory* @routine_subq__0x90___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 144
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 144
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
  %23 = xor i64 144, %9
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

define %struct.Memory* @routine_leaq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %R8
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.P7ParsingViterbi(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 104
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 56
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

define %struct.Memory* @routine_je_.L_4095a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 48
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

define %struct.Memory* @routine_jne_.L_4095b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.P7FreeTrace(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 4
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

define %struct.Memory* @routine_jmpq_.L_409b43(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x455f2a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3a2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 930, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x70__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R8D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
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

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 76
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

define %struct.Memory* @routine_jge_.L_40972e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 2, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 2
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
  %26 = xor i64 2, %9
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

define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = sub i32 %22, %24
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RCX, align 8
  %27 = icmp ult i32 %22, %24
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %25, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = xor i32 %24, %22
  %37 = xor i32 %36, %25
  %38 = lshr i32 %37, 4
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %40, i8* %41, align 1
  %42 = icmp eq i32 %25, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %25, 31
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %22, 31
  %49 = lshr i32 %24, 31
  %50 = xor i32 %49, %48
  %51 = xor i32 %45, %48
  %52 = add i32 %51, %50
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %54, i8* %55, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.P7ViterbiSize(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x3e8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = sub i32 %9, 1000
  %14 = icmp ult i32 %9, 1000
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
  %23 = xor i64 1000, %10
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

define %struct.Memory* @routine_jle_.L_4096af(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x60__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x3___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 2
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_addq__rdi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
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

define %struct.Memory* @routine_callq_.P7WeeViterbi(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 116
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

define %struct.Memory* @routine_jmpq_.L_409700(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x3___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 2
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

define %struct.Memory* @routine_addq__r8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__rdi__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x80__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.P7Viterbi(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 132
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

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_subl__0x4___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 4
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %12, 4
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
  %24 = xor i64 4, %9
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

define %struct.Memory* @routine_addl_MINUS0x5c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 92
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x64__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 100
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40960e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x40__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 4, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 4
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
  %26 = xor i64 4, %9
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x64__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 100
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_addl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i32 %18, %17
  %21 = icmp ult i32 %18, %13
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 %14, %12
  %32 = trunc i64 %31 to i32
  %33 = xor i32 %32, %18
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %18, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %18, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %17, 31
  %45 = lshr i32 %13, 31
  %46 = xor i32 %41, %44
  %47 = xor i32 %41, %45
  %48 = add i32 %46, %47
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x5c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 92
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

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.P7AllocTrace(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x4____rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i8*
  store i8 4, i8* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rsi____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0____rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  store i32 0, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rsi____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x5__0x1__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 5, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x4__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x4__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jg_.L_409819(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x5____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 5, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
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

define %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x58__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4097b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_409a36(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 108
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl___rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 2
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = icmp ult i32 %12, 2
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
  %24 = xor i64 2, %9
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

define %struct.Memory* @routine_jge_.L_409925(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb___rax__rcx_1____dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  store i8 %22, i8* %DL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %19 = load i8, i8* %DL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i8*
  store i8 %19, i8* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_4098fb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RDX, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40990e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_409833(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xa___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x8___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
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

define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  %19 = load i64, i64* %RAX, align 8
  %20 = select i1 %18, i64 %13, i64 %19
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al___dil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %DIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__r8____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x58__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dil____r8__r9_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %R8 = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 19
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %R9 = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %R8
  %17 = load i64, i64* %R9
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

define %struct.Memory* @routine_movq_0x10__r8____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0____r8__r9_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %R9
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  store i32 0, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__r8____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %R8, align 8
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

define %struct.Memory* @routine_je_.L_409a23(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl___rcx__rsi_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RCX
  %18 = load i64, i64* %RSI
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

define %struct.Memory* @routine_jg_.L_409a1e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0xa____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 10, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4099af(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_409a23(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_409a28(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_409820(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 20
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

define %struct.Memory* @routine_jg_.L_409aa8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x8____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 8, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_409a50(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movb__0x9____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 9, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_409b19(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_409aee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__rax____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x4__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
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

define %struct.Memory* @routine_addq__0x90___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 144, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 144
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
  %25 = xor i64 144, %9
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
