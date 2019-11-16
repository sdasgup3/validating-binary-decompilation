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
%G__0x581a3a_type = type <{ [8 x i8] }>
%G__0x581cc1_type = type <{ [8 x i8] }>
%G__0x581cd4_type = type <{ [8 x i8] }>
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
@G__0x581a3a = global %G__0x581a3a_type zeroinitializer
@G__0x581cc1 = global %G__0x581cc1_type zeroinitializer
@G__0x581cd4 = global %G__0x581cd4_type zeroinitializer

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

declare %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40db00.tryko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @unconditional_life(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_47a640 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_47a640, %struct.Memory** %MEMORY
  %loadMem_47a641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i149 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i149
  %27 = load i64, i64* %PC.i148
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i148
  store i64 %26, i64* %RBP.i150, align 8
  store %struct.Memory* %loadMem_47a641, %struct.Memory** %MEMORY
  %loadMem_47a644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i341 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i341
  %36 = load i64, i64* %PC.i340
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i340
  %38 = sub i64 %35, 1088
  store i64 %38, i64* %RSP.i341, align 8
  %39 = icmp ult i64 %35, 1088
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
  %49 = xor i64 1088, %35
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
  store %struct.Memory* %loadMem_47a644, %struct.Memory** %MEMORY
  %loadMem_47a64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i356
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i356
  store i64 3, i64* %RAX.i357, align 8
  store %struct.Memory* %loadMem_47a64b, %struct.Memory** %MEMORY
  %loadMem_47a650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RDI.i373 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i374
  %85 = sub i64 %84, 8
  %86 = load i64, i64* %RDI.i373
  %87 = load i64, i64* %PC.i372
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC.i372
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89
  store %struct.Memory* %loadMem_47a650, %struct.Memory** %MEMORY
  %loadMem_47a654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 33
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %92 to i64*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 9
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %ESI.i388 = bitcast %union.anon* %95 to i32*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 15
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %98 to i64*
  %99 = load i64, i64* %RBP.i389
  %100 = sub i64 %99, 12
  %101 = load i32, i32* %ESI.i388
  %102 = zext i32 %101 to i64
  %103 = load i64, i64* %PC.i387
  %104 = add i64 %103, 3
  store i64 %104, i64* %PC.i387
  %105 = inttoptr i64 %100 to i32*
  store i32 %101, i32* %105
  store %struct.Memory* %loadMem_47a654, %struct.Memory** %MEMORY
  %loadMem_47a657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 15
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %111 to i64*
  %112 = load i64, i64* %RBP.i406
  %113 = sub i64 %112, 16
  %114 = load i64, i64* %PC.i405
  %115 = add i64 %114, 7
  store i64 %115, i64* %PC.i405
  %116 = inttoptr i64 %113 to i32*
  store i32 1, i32* %116
  store %struct.Memory* %loadMem_47a657, %struct.Memory** %MEMORY
  %loadMem_47a65e = load %struct.Memory*, %struct.Memory** %MEMORY
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 33
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %122 to i64*
  %123 = load i64, i64* %RBP.i423
  %124 = sub i64 %123, 24
  %125 = load i64, i64* %PC.i422
  %126 = add i64 %125, 7
  store i64 %126, i64* %PC.i422
  %127 = inttoptr i64 %124 to i32*
  store i32 0, i32* %127
  store %struct.Memory* %loadMem_47a65e, %struct.Memory** %MEMORY
  %loadMem_47a665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 33
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %130 to i64*
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %RAX.i899 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 15
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RBP.i900 = bitcast %union.anon* %136 to i64*
  %137 = load i64, i64* %RAX.i899
  %138 = load i64, i64* %RBP.i900
  %139 = sub i64 %138, 12
  %140 = load i64, i64* %PC.i898
  %141 = add i64 %140, 3
  store i64 %141, i64* %PC.i898
  %142 = trunc i64 %137 to i32
  %143 = inttoptr i64 %139 to i32*
  %144 = load i32, i32* %143
  %145 = sub i32 %142, %144
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RAX.i899, align 8
  %147 = icmp ult i32 %142, %144
  %148 = zext i1 %147 to i8
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %148, i8* %149, align 1
  %150 = and i32 %145, 255
  %151 = call i32 @llvm.ctpop.i32(i32 %150)
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  %154 = xor i8 %153, 1
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %154, i8* %155, align 1
  %156 = xor i32 %144, %142
  %157 = xor i32 %156, %145
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %160, i8* %161, align 1
  %162 = icmp eq i32 %145, 0
  %163 = zext i1 %162 to i8
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %163, i8* %164, align 1
  %165 = lshr i32 %145, 31
  %166 = trunc i32 %165 to i8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %166, i8* %167, align 1
  %168 = lshr i32 %142, 31
  %169 = lshr i32 %144, 31
  %170 = xor i32 %169, %168
  %171 = xor i32 %165, %168
  %172 = add i32 %171, %170
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %174, i8* %175, align 1
  store %struct.Memory* %loadMem_47a665, %struct.Memory** %MEMORY
  %loadMem_47a668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 33
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %PC.i895 = bitcast %union.anon* %178 to i64*
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %EAX.i896 = bitcast %union.anon* %181 to i32*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 15
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %RBP.i897 = bitcast %union.anon* %184 to i64*
  %185 = load i64, i64* %RBP.i897
  %186 = sub i64 %185, 1016
  %187 = load i32, i32* %EAX.i896
  %188 = zext i32 %187 to i64
  %189 = load i64, i64* %PC.i895
  %190 = add i64 %189, 6
  store i64 %190, i64* %PC.i895
  %191 = inttoptr i64 %186 to i32*
  store i32 %187, i32* %191
  store %struct.Memory* %loadMem_47a668, %struct.Memory** %MEMORY
  br label %block_.L_47a66e

block_.L_47a66e:                                  ; preds = %block_.L_47a83f, %entry
  %loadMem_47a66e = load %struct.Memory*, %struct.Memory** %MEMORY
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 33
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %194 to i64*
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 15
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %RBP.i894 = bitcast %union.anon* %197 to i64*
  %198 = load i64, i64* %RBP.i894
  %199 = sub i64 %198, 16
  %200 = load i64, i64* %PC.i893
  %201 = add i64 %200, 4
  store i64 %201, i64* %PC.i893
  %202 = inttoptr i64 %199 to i32*
  %203 = load i32, i32* %202
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %204, align 1
  %205 = and i32 %203, 255
  %206 = call i32 @llvm.ctpop.i32(i32 %205)
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  %209 = xor i8 %208, 1
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %209, i8* %210, align 1
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %211, align 1
  %212 = icmp eq i32 %203, 0
  %213 = zext i1 %212 to i8
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %213, i8* %214, align 1
  %215 = lshr i32 %203, 31
  %216 = trunc i32 %215 to i8
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %216, i8* %217, align 1
  %218 = lshr i32 %203, 31
  %219 = xor i32 %215, %218
  %220 = add i32 %219, %218
  %221 = icmp eq i32 %220, 2
  %222 = zext i1 %221 to i8
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %222, i8* %223, align 1
  store %struct.Memory* %loadMem_47a66e, %struct.Memory** %MEMORY
  %loadMem_47a672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 33
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %226 to i64*
  %227 = load i64, i64* %PC.i892
  %228 = add i64 %227, 466
  %229 = load i64, i64* %PC.i892
  %230 = add i64 %229, 6
  %231 = load i64, i64* %PC.i892
  %232 = add i64 %231, 6
  store i64 %232, i64* %PC.i892
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %234 = load i8, i8* %233, align 1
  store i8 %234, i8* %BRANCH_TAKEN, align 1
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %236 = icmp ne i8 %234, 0
  %237 = select i1 %236, i64 %228, i64 %230
  store i64 %237, i64* %235, align 8
  store %struct.Memory* %loadMem_47a672, %struct.Memory** %MEMORY
  %loadBr_47a672 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a672 = icmp eq i8 %loadBr_47a672, 1
  br i1 %cmpBr_47a672, label %block_.L_47a844, label %block_47a678

block_47a678:                                     ; preds = %block_.L_47a66e
  %loadMem_47a678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 15
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RBP.i891 = bitcast %union.anon* %243 to i64*
  %244 = load i64, i64* %RBP.i891
  %245 = sub i64 %244, 16
  %246 = load i64, i64* %PC.i890
  %247 = add i64 %246, 7
  store i64 %247, i64* %PC.i890
  %248 = inttoptr i64 %245 to i32*
  store i32 0, i32* %248
  store %struct.Memory* %loadMem_47a678, %struct.Memory** %MEMORY
  %loadMem_47a67f = load %struct.Memory*, %struct.Memory** %MEMORY
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 33
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %251 to i64*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 15
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %RBP.i889 = bitcast %union.anon* %254 to i64*
  %255 = load i64, i64* %RBP.i889
  %256 = sub i64 %255, 32
  %257 = load i64, i64* %PC.i888
  %258 = add i64 %257, 7
  store i64 %258, i64* %PC.i888
  %259 = inttoptr i64 %256 to i32*
  store i32 21, i32* %259
  store %struct.Memory* %loadMem_47a67f, %struct.Memory** %MEMORY
  br label %block_.L_47a686

block_.L_47a686:                                  ; preds = %block_.L_47a831, %block_47a678
  %loadMem_47a686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 33
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %262 to i64*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 15
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %RBP.i887 = bitcast %union.anon* %265 to i64*
  %266 = load i64, i64* %RBP.i887
  %267 = sub i64 %266, 32
  %268 = load i64, i64* %PC.i886
  %269 = add i64 %268, 7
  store i64 %269, i64* %PC.i886
  %270 = inttoptr i64 %267 to i32*
  %271 = load i32, i32* %270
  %272 = sub i32 %271, 400
  %273 = icmp ult i32 %271, 400
  %274 = zext i1 %273 to i8
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %274, i8* %275, align 1
  %276 = and i32 %272, 255
  %277 = call i32 @llvm.ctpop.i32(i32 %276)
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = xor i8 %279, 1
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %280, i8* %281, align 1
  %282 = xor i32 %271, 400
  %283 = xor i32 %282, %272
  %284 = lshr i32 %283, 4
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %286, i8* %287, align 1
  %288 = icmp eq i32 %272, 0
  %289 = zext i1 %288 to i8
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %289, i8* %290, align 1
  %291 = lshr i32 %272, 31
  %292 = trunc i32 %291 to i8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %292, i8* %293, align 1
  %294 = lshr i32 %271, 31
  %295 = xor i32 %291, %294
  %296 = add i32 %295, %294
  %297 = icmp eq i32 %296, 2
  %298 = zext i1 %297 to i8
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %298, i8* %299, align 1
  store %struct.Memory* %loadMem_47a686, %struct.Memory** %MEMORY
  %loadMem_47a68d = load %struct.Memory*, %struct.Memory** %MEMORY
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 33
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %302 to i64*
  %303 = load i64, i64* %PC.i885
  %304 = add i64 %303, 434
  %305 = load i64, i64* %PC.i885
  %306 = add i64 %305, 6
  %307 = load i64, i64* %PC.i885
  %308 = add i64 %307, 6
  store i64 %308, i64* %PC.i885
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %310 = load i8, i8* %309, align 1
  %311 = icmp ne i8 %310, 0
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %313 = load i8, i8* %312, align 1
  %314 = icmp ne i8 %313, 0
  %315 = xor i1 %311, %314
  %316 = xor i1 %315, true
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %BRANCH_TAKEN, align 1
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %319 = select i1 %315, i64 %306, i64 %304
  store i64 %319, i64* %318, align 8
  store %struct.Memory* %loadMem_47a68d, %struct.Memory** %MEMORY
  %loadBr_47a68d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a68d = icmp eq i8 %loadBr_47a68d, 1
  br i1 %cmpBr_47a68d, label %block_.L_47a83f, label %block_47a693

block_47a693:                                     ; preds = %block_.L_47a686
  %loadMem_47a693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 33
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %322 to i64*
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %RAX.i883 = bitcast %union.anon* %325 to i64*
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 15
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %RBP.i884 = bitcast %union.anon* %328 to i64*
  %329 = load i64, i64* %RBP.i884
  %330 = sub i64 %329, 32
  %331 = load i64, i64* %PC.i882
  %332 = add i64 %331, 4
  store i64 %332, i64* %PC.i882
  %333 = inttoptr i64 %330 to i32*
  %334 = load i32, i32* %333
  %335 = sext i32 %334 to i64
  store i64 %335, i64* %RAX.i883, align 8
  store %struct.Memory* %loadMem_47a693, %struct.Memory** %MEMORY
  %loadMem_47a697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 33
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %338 to i64*
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %RAX.i880 = bitcast %union.anon* %341 to i64*
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 5
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %RCX.i881 = bitcast %union.anon* %344 to i64*
  %345 = load i64, i64* %RAX.i880
  %346 = add i64 %345, 12099168
  %347 = load i64, i64* %PC.i879
  %348 = add i64 %347, 8
  store i64 %348, i64* %PC.i879
  %349 = inttoptr i64 %346 to i8*
  %350 = load i8, i8* %349
  %351 = zext i8 %350 to i64
  store i64 %351, i64* %RCX.i881, align 8
  store %struct.Memory* %loadMem_47a697, %struct.Memory** %MEMORY
  %loadMem_47a69f = load %struct.Memory*, %struct.Memory** %MEMORY
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 33
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %354 to i64*
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 5
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %ECX.i877 = bitcast %union.anon* %357 to i32*
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 15
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %RBP.i878 = bitcast %union.anon* %360 to i64*
  %361 = load i32, i32* %ECX.i877
  %362 = zext i32 %361 to i64
  %363 = load i64, i64* %RBP.i878
  %364 = sub i64 %363, 12
  %365 = load i64, i64* %PC.i876
  %366 = add i64 %365, 3
  store i64 %366, i64* %PC.i876
  %367 = inttoptr i64 %364 to i32*
  %368 = load i32, i32* %367
  %369 = sub i32 %361, %368
  %370 = icmp ult i32 %361, %368
  %371 = zext i1 %370 to i8
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %371, i8* %372, align 1
  %373 = and i32 %369, 255
  %374 = call i32 @llvm.ctpop.i32(i32 %373)
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  %377 = xor i8 %376, 1
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %377, i8* %378, align 1
  %379 = xor i32 %368, %361
  %380 = xor i32 %379, %369
  %381 = lshr i32 %380, 4
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %383, i8* %384, align 1
  %385 = icmp eq i32 %369, 0
  %386 = zext i1 %385 to i8
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %386, i8* %387, align 1
  %388 = lshr i32 %369, 31
  %389 = trunc i32 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %389, i8* %390, align 1
  %391 = lshr i32 %361, 31
  %392 = lshr i32 %368, 31
  %393 = xor i32 %392, %391
  %394 = xor i32 %388, %391
  %395 = add i32 %394, %393
  %396 = icmp eq i32 %395, 2
  %397 = zext i1 %396 to i8
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %397, i8* %398, align 1
  store %struct.Memory* %loadMem_47a69f, %struct.Memory** %MEMORY
  %loadMem_47a6a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 33
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %PC.i875 = bitcast %union.anon* %401 to i64*
  %402 = load i64, i64* %PC.i875
  %403 = add i64 %402, 26
  %404 = load i64, i64* %PC.i875
  %405 = add i64 %404, 6
  %406 = load i64, i64* %PC.i875
  %407 = add i64 %406, 6
  store i64 %407, i64* %PC.i875
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %409 = load i8, i8* %408, align 1
  %410 = icmp eq i8 %409, 0
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %BRANCH_TAKEN, align 1
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %413 = select i1 %410, i64 %403, i64 %405
  store i64 %413, i64* %412, align 8
  store %struct.Memory* %loadMem_47a6a2, %struct.Memory** %MEMORY
  %loadBr_47a6a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a6a2 = icmp eq i8 %loadBr_47a6a2, 1
  br i1 %cmpBr_47a6a2, label %block_.L_47a6bc, label %block_47a6a8

block_47a6a8:                                     ; preds = %block_47a693
  %loadMem_47a6a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 33
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %416 to i64*
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 11
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %RDI.i873 = bitcast %union.anon* %419 to i64*
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 15
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %RBP.i874 = bitcast %union.anon* %422 to i64*
  %423 = load i64, i64* %RBP.i874
  %424 = sub i64 %423, 32
  %425 = load i64, i64* %PC.i872
  %426 = add i64 %425, 3
  store i64 %426, i64* %PC.i872
  %427 = inttoptr i64 %424 to i32*
  %428 = load i32, i32* %427
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RDI.i873, align 8
  store %struct.Memory* %loadMem_47a6a8, %struct.Memory** %MEMORY
  %loadMem_47a6ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 33
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %432 to i64*
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 9
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %RSI.i870 = bitcast %union.anon* %435 to i64*
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 15
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %RBP.i871 = bitcast %union.anon* %438 to i64*
  %439 = load i64, i64* %RBP.i871
  %440 = sub i64 %439, 32
  %441 = load i64, i64* %PC.i869
  %442 = add i64 %441, 3
  store i64 %442, i64* %PC.i869
  %443 = inttoptr i64 %440 to i32*
  %444 = load i32, i32* %443
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RSI.i870, align 8
  store %struct.Memory* %loadMem_47a6ab, %struct.Memory** %MEMORY
  %loadMem1_47a6ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 33
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %448 to i64*
  %449 = load i64, i64* %PC.i868
  %450 = add i64 %449, 55874
  %451 = load i64, i64* %PC.i868
  %452 = add i64 %451, 5
  %453 = load i64, i64* %PC.i868
  %454 = add i64 %453, 5
  store i64 %454, i64* %PC.i868
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = add i64 %456, -8
  %458 = inttoptr i64 %457 to i64*
  store i64 %452, i64* %458
  store i64 %457, i64* %455, align 8
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %450, i64* %459, align 8
  store %struct.Memory* %loadMem1_47a6ae, %struct.Memory** %MEMORY
  %loadMem2_47a6ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a6ae = load i64, i64* %3
  %call2_47a6ae = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64 %loadPC_47a6ae, %struct.Memory* %loadMem2_47a6ae)
  store %struct.Memory* %call2_47a6ae, %struct.Memory** %MEMORY
  %loadMem_47a6b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 33
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %462 to i64*
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 1
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %EAX.i867 = bitcast %union.anon* %465 to i32*
  %466 = load i32, i32* %EAX.i867
  %467 = zext i32 %466 to i64
  %468 = load i64, i64* %PC.i866
  %469 = add i64 %468, 3
  store i64 %469, i64* %PC.i866
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %470, align 1
  %471 = and i32 %466, 255
  %472 = call i32 @llvm.ctpop.i32(i32 %471)
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %475, i8* %476, align 1
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %477, align 1
  %478 = icmp eq i32 %466, 0
  %479 = zext i1 %478 to i8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %479, i8* %480, align 1
  %481 = lshr i32 %466, 31
  %482 = trunc i32 %481 to i8
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %482, i8* %483, align 1
  %484 = lshr i32 %466, 31
  %485 = xor i32 %481, %484
  %486 = add i32 %485, %484
  %487 = icmp eq i32 %486, 2
  %488 = zext i1 %487 to i8
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %488, i8* %489, align 1
  store %struct.Memory* %loadMem_47a6b3, %struct.Memory** %MEMORY
  %loadMem_47a6b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 33
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %492 to i64*
  %493 = load i64, i64* %PC.i865
  %494 = add i64 %493, 11
  %495 = load i64, i64* %PC.i865
  %496 = add i64 %495, 6
  %497 = load i64, i64* %PC.i865
  %498 = add i64 %497, 6
  store i64 %498, i64* %PC.i865
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %500 = load i8, i8* %499, align 1
  %501 = icmp eq i8 %500, 0
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %BRANCH_TAKEN, align 1
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %504 = select i1 %501, i64 %494, i64 %496
  store i64 %504, i64* %503, align 8
  store %struct.Memory* %loadMem_47a6b6, %struct.Memory** %MEMORY
  %loadBr_47a6b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a6b6 = icmp eq i8 %loadBr_47a6b6, 1
  br i1 %cmpBr_47a6b6, label %block_.L_47a6c1, label %block_.L_47a6bc

block_.L_47a6bc:                                  ; preds = %block_47a6a8, %block_47a693
  %loadMem_47a6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 33
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %507 to i64*
  %508 = load i64, i64* %PC.i864
  %509 = add i64 %508, 373
  %510 = load i64, i64* %PC.i864
  %511 = add i64 %510, 5
  store i64 %511, i64* %PC.i864
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %509, i64* %512, align 8
  store %struct.Memory* %loadMem_47a6bc, %struct.Memory** %MEMORY
  br label %block_.L_47a831

block_.L_47a6c1:                                  ; preds = %block_47a6a8
  %loadMem_47a6c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 33
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %515 to i64*
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 9
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %RSI.i863 = bitcast %union.anon* %518 to i64*
  %519 = load i64, i64* %PC.i862
  %520 = add i64 %519, 5
  store i64 %520, i64* %PC.i862
  store i64 241, i64* %RSI.i863, align 8
  store %struct.Memory* %loadMem_47a6c1, %struct.Memory** %MEMORY
  %loadMem_47a6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 33
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %523 to i64*
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 7
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %RDX.i860 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 15
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RBP.i861 = bitcast %union.anon* %529 to i64*
  %530 = load i64, i64* %RBP.i861
  %531 = sub i64 %530, 1008
  %532 = load i64, i64* %PC.i859
  %533 = add i64 %532, 7
  store i64 %533, i64* %PC.i859
  store i64 %531, i64* %RDX.i860, align 8
  store %struct.Memory* %loadMem_47a6c6, %struct.Memory** %MEMORY
  %loadMem_47a6cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 33
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %536 to i64*
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 11
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %RDI.i857 = bitcast %union.anon* %539 to i64*
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 15
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %RBP.i858 = bitcast %union.anon* %542 to i64*
  %543 = load i64, i64* %RBP.i858
  %544 = sub i64 %543, 32
  %545 = load i64, i64* %PC.i856
  %546 = add i64 %545, 3
  store i64 %546, i64* %PC.i856
  %547 = inttoptr i64 %544 to i32*
  %548 = load i32, i32* %547
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RDI.i857, align 8
  store %struct.Memory* %loadMem_47a6cd, %struct.Memory** %MEMORY
  %loadMem1_47a6d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 33
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %552 to i64*
  %553 = load i64, i64* %PC.i855
  %554 = add i64 %553, -437904
  %555 = load i64, i64* %PC.i855
  %556 = add i64 %555, 5
  %557 = load i64, i64* %PC.i855
  %558 = add i64 %557, 5
  store i64 %558, i64* %PC.i855
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = add i64 %560, -8
  %562 = inttoptr i64 %561 to i64*
  store i64 %556, i64* %562
  store i64 %561, i64* %559, align 8
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %554, i64* %563, align 8
  store %struct.Memory* %loadMem1_47a6d0, %struct.Memory** %MEMORY
  %loadMem2_47a6d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a6d0 = load i64, i64* %3
  %call2_47a6d0 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_47a6d0, %struct.Memory* %loadMem2_47a6d0)
  store %struct.Memory* %call2_47a6d0, %struct.Memory** %MEMORY
  %loadMem_47a6d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 33
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %566 to i64*
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 1
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %EAX.i853 = bitcast %union.anon* %569 to i32*
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %571 = getelementptr inbounds %struct.GPR, %struct.GPR* %570, i32 0, i32 15
  %572 = getelementptr inbounds %struct.Reg, %struct.Reg* %571, i32 0, i32 0
  %RBP.i854 = bitcast %union.anon* %572 to i64*
  %573 = load i64, i64* %RBP.i854
  %574 = sub i64 %573, 1012
  %575 = load i32, i32* %EAX.i853
  %576 = zext i32 %575 to i64
  %577 = load i64, i64* %PC.i852
  %578 = add i64 %577, 6
  store i64 %578, i64* %PC.i852
  %579 = inttoptr i64 %574 to i32*
  store i32 %575, i32* %579
  store %struct.Memory* %loadMem_47a6d5, %struct.Memory** %MEMORY
  %loadMem_47a6db = load %struct.Memory*, %struct.Memory** %MEMORY
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 33
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %582 to i64*
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 1
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %RAX.i850 = bitcast %union.anon* %585 to i64*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 15
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %RBP.i851 = bitcast %union.anon* %588 to i64*
  %589 = load i64, i64* %RBP.i851
  %590 = sub i64 %589, 24
  %591 = load i64, i64* %PC.i849
  %592 = add i64 %591, 3
  store i64 %592, i64* %PC.i849
  %593 = inttoptr i64 %590 to i32*
  %594 = load i32, i32* %593
  %595 = zext i32 %594 to i64
  store i64 %595, i64* %RAX.i850, align 8
  store %struct.Memory* %loadMem_47a6db, %struct.Memory** %MEMORY
  %loadMem_47a6de = load %struct.Memory*, %struct.Memory** %MEMORY
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 33
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 1
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %EAX.i847 = bitcast %union.anon* %601 to i32*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 15
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %RBP.i848 = bitcast %union.anon* %604 to i64*
  %605 = load i64, i64* %RBP.i848
  %606 = sub i64 %605, 28
  %607 = load i32, i32* %EAX.i847
  %608 = zext i32 %607 to i64
  %609 = load i64, i64* %PC.i846
  %610 = add i64 %609, 3
  store i64 %610, i64* %PC.i846
  %611 = inttoptr i64 %606 to i32*
  store i32 %607, i32* %611
  store %struct.Memory* %loadMem_47a6de, %struct.Memory** %MEMORY
  %loadMem_47a6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 33
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 15
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RBP.i845 = bitcast %union.anon* %617 to i64*
  %618 = load i64, i64* %RBP.i845
  %619 = sub i64 %618, 36
  %620 = load i64, i64* %PC.i844
  %621 = add i64 %620, 7
  store i64 %621, i64* %PC.i844
  %622 = inttoptr i64 %619 to i32*
  store i32 0, i32* %622
  store %struct.Memory* %loadMem_47a6e1, %struct.Memory** %MEMORY
  br label %block_.L_47a6e8

block_.L_47a6e8:                                  ; preds = %block_.L_47a739, %block_.L_47a6c1
  %loadMem_47a6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 33
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %625 to i64*
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 1
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %RAX.i842 = bitcast %union.anon* %628 to i64*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 15
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %RBP.i843 = bitcast %union.anon* %631 to i64*
  %632 = load i64, i64* %RBP.i843
  %633 = sub i64 %632, 36
  %634 = load i64, i64* %PC.i841
  %635 = add i64 %634, 3
  store i64 %635, i64* %PC.i841
  %636 = inttoptr i64 %633 to i32*
  %637 = load i32, i32* %636
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RAX.i842, align 8
  store %struct.Memory* %loadMem_47a6e8, %struct.Memory** %MEMORY
  %loadMem_47a6eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 33
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %641 to i64*
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 1
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %EAX.i839 = bitcast %union.anon* %644 to i32*
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 15
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %RBP.i840 = bitcast %union.anon* %647 to i64*
  %648 = load i32, i32* %EAX.i839
  %649 = zext i32 %648 to i64
  %650 = load i64, i64* %RBP.i840
  %651 = sub i64 %650, 1012
  %652 = load i64, i64* %PC.i838
  %653 = add i64 %652, 6
  store i64 %653, i64* %PC.i838
  %654 = inttoptr i64 %651 to i32*
  %655 = load i32, i32* %654
  %656 = sub i32 %648, %655
  %657 = icmp ult i32 %648, %655
  %658 = zext i1 %657 to i8
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %658, i8* %659, align 1
  %660 = and i32 %656, 255
  %661 = call i32 @llvm.ctpop.i32(i32 %660)
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  %664 = xor i8 %663, 1
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %664, i8* %665, align 1
  %666 = xor i32 %655, %648
  %667 = xor i32 %666, %656
  %668 = lshr i32 %667, 4
  %669 = trunc i32 %668 to i8
  %670 = and i8 %669, 1
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %670, i8* %671, align 1
  %672 = icmp eq i32 %656, 0
  %673 = zext i1 %672 to i8
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %673, i8* %674, align 1
  %675 = lshr i32 %656, 31
  %676 = trunc i32 %675 to i8
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %676, i8* %677, align 1
  %678 = lshr i32 %648, 31
  %679 = lshr i32 %655, 31
  %680 = xor i32 %679, %678
  %681 = xor i32 %675, %678
  %682 = add i32 %681, %680
  %683 = icmp eq i32 %682, 2
  %684 = zext i1 %683 to i8
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %684, i8* %685, align 1
  store %struct.Memory* %loadMem_47a6eb, %struct.Memory** %MEMORY
  %loadMem_47a6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 33
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %688 to i64*
  %689 = load i64, i64* %PC.i837
  %690 = add i64 %689, 86
  %691 = load i64, i64* %PC.i837
  %692 = add i64 %691, 6
  %693 = load i64, i64* %PC.i837
  %694 = add i64 %693, 6
  store i64 %694, i64* %PC.i837
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %696 = load i8, i8* %695, align 1
  %697 = icmp ne i8 %696, 0
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %699 = load i8, i8* %698, align 1
  %700 = icmp ne i8 %699, 0
  %701 = xor i1 %697, %700
  %702 = xor i1 %701, true
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %BRANCH_TAKEN, align 1
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %705 = select i1 %701, i64 %692, i64 %690
  store i64 %705, i64* %704, align 8
  store %struct.Memory* %loadMem_47a6f1, %struct.Memory** %MEMORY
  %loadBr_47a6f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a6f1 = icmp eq i8 %loadBr_47a6f1, 1
  br i1 %cmpBr_47a6f1, label %block_.L_47a747, label %block_47a6f7

block_47a6f7:                                     ; preds = %block_.L_47a6e8
  %loadMem_47a6f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 33
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 7
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %RDX.i836 = bitcast %union.anon* %711 to i64*
  %712 = load i64, i64* %PC.i835
  %713 = add i64 %712, 10
  store i64 %713, i64* %PC.i835
  store i64 ptrtoint (%G__0x581cc1_type* @G__0x581cc1 to i64), i64* %RDX.i836, align 8
  store %struct.Memory* %loadMem_47a6f7, %struct.Memory** %MEMORY
  %loadMem_47a701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 33
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 1
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %EAX.i833 = bitcast %union.anon* %719 to i32*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 1
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RAX.i834 = bitcast %union.anon* %722 to i64*
  %723 = load i64, i64* %RAX.i834
  %724 = load i32, i32* %EAX.i833
  %725 = zext i32 %724 to i64
  %726 = load i64, i64* %PC.i832
  %727 = add i64 %726, 2
  store i64 %727, i64* %PC.i832
  %728 = xor i64 %725, %723
  %729 = trunc i64 %728 to i32
  %730 = and i64 %728, 4294967295
  store i64 %730, i64* %RAX.i834, align 8
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %731, align 1
  %732 = and i32 %729, 255
  %733 = call i32 @llvm.ctpop.i32(i32 %732)
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  %736 = xor i8 %735, 1
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %736, i8* %737, align 1
  %738 = icmp eq i32 %729, 0
  %739 = zext i1 %738 to i8
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %739, i8* %740, align 1
  %741 = lshr i32 %729, 31
  %742 = trunc i32 %741 to i8
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %742, i8* %743, align 1
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %744, align 1
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %745, align 1
  store %struct.Memory* %loadMem_47a701, %struct.Memory** %MEMORY
  %loadMem_47a703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 33
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %748 to i64*
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 5
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %RCX.i830 = bitcast %union.anon* %751 to i64*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 15
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %RBP.i831 = bitcast %union.anon* %754 to i64*
  %755 = load i64, i64* %RBP.i831
  %756 = sub i64 %755, 36
  %757 = load i64, i64* %PC.i829
  %758 = add i64 %757, 4
  store i64 %758, i64* %PC.i829
  %759 = inttoptr i64 %756 to i32*
  %760 = load i32, i32* %759
  %761 = sext i32 %760 to i64
  store i64 %761, i64* %RCX.i830, align 8
  store %struct.Memory* %loadMem_47a703, %struct.Memory** %MEMORY
  %loadMem_47a707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 33
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %764 to i64*
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 5
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %RCX.i826 = bitcast %union.anon* %767 to i64*
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %769 = getelementptr inbounds %struct.GPR, %struct.GPR* %768, i32 0, i32 11
  %770 = getelementptr inbounds %struct.Reg, %struct.Reg* %769, i32 0, i32 0
  %RDI.i827 = bitcast %union.anon* %770 to i64*
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 15
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %773 to i64*
  %774 = load i64, i64* %RBP.i828
  %775 = load i64, i64* %RCX.i826
  %776 = mul i64 %775, 4
  %777 = add i64 %774, -1008
  %778 = add i64 %777, %776
  %779 = load i64, i64* %PC.i825
  %780 = add i64 %779, 7
  store i64 %780, i64* %PC.i825
  %781 = inttoptr i64 %778 to i32*
  %782 = load i32, i32* %781
  %783 = zext i32 %782 to i64
  store i64 %783, i64* %RDI.i827, align 8
  store %struct.Memory* %loadMem_47a707, %struct.Memory** %MEMORY
  %loadMem_47a70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 33
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %786 to i64*
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 9
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %RSI.i823 = bitcast %union.anon* %789 to i64*
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 15
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %RBP.i824 = bitcast %union.anon* %792 to i64*
  %793 = load i64, i64* %RBP.i824
  %794 = sub i64 %793, 1016
  %795 = load i64, i64* %PC.i822
  %796 = add i64 %795, 6
  store i64 %796, i64* %PC.i822
  %797 = inttoptr i64 %794 to i32*
  %798 = load i32, i32* %797
  %799 = zext i32 %798 to i64
  store i64 %799, i64* %RSI.i823, align 8
  store %struct.Memory* %loadMem_47a70e, %struct.Memory** %MEMORY
  %loadMem_47a714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 33
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %802 to i64*
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 5
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %RCX.i820 = bitcast %union.anon* %805 to i64*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 15
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %RBP.i821 = bitcast %union.anon* %808 to i64*
  %809 = load i64, i64* %RBP.i821
  %810 = sub i64 %809, 32
  %811 = load i64, i64* %PC.i819
  %812 = add i64 %811, 3
  store i64 %812, i64* %PC.i819
  %813 = inttoptr i64 %810 to i32*
  %814 = load i32, i32* %813
  %815 = zext i32 %814 to i64
  store i64 %815, i64* %RCX.i820, align 8
  store %struct.Memory* %loadMem_47a714, %struct.Memory** %MEMORY
  %loadMem_47a717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 1
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %EAX.i817 = bitcast %union.anon* %821 to i32*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 17
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %R8D.i818 = bitcast %union.anon* %824 to i32*
  %825 = bitcast i32* %R8D.i818 to i64*
  %826 = load i32, i32* %EAX.i817
  %827 = zext i32 %826 to i64
  %828 = load i64, i64* %PC.i816
  %829 = add i64 %828, 3
  store i64 %829, i64* %PC.i816
  %830 = and i64 %827, 4294967295
  store i64 %830, i64* %825, align 8
  store %struct.Memory* %loadMem_47a717, %struct.Memory** %MEMORY
  %loadMem_47a71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 33
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %833 to i64*
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 1
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %EAX.i814 = bitcast %union.anon* %836 to i32*
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 19
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %R9D.i815 = bitcast %union.anon* %839 to i32*
  %840 = bitcast i32* %R9D.i815 to i64*
  %841 = load i32, i32* %EAX.i814
  %842 = zext i32 %841 to i64
  %843 = load i64, i64* %PC.i813
  %844 = add i64 %843, 3
  store i64 %844, i64* %PC.i813
  %845 = and i64 %842, 4294967295
  store i64 %845, i64* %840, align 8
  store %struct.Memory* %loadMem_47a71a, %struct.Memory** %MEMORY
  %loadMem1_47a71d = load %struct.Memory*, %struct.Memory** %MEMORY
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 33
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %848 to i64*
  %849 = load i64, i64* %PC.i812
  %850 = add i64 %849, -465133
  %851 = load i64, i64* %PC.i812
  %852 = add i64 %851, 5
  %853 = load i64, i64* %PC.i812
  %854 = add i64 %853, 5
  store i64 %854, i64* %PC.i812
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %856 = load i64, i64* %855, align 8
  %857 = add i64 %856, -8
  %858 = inttoptr i64 %857 to i64*
  store i64 %852, i64* %858
  store i64 %857, i64* %855, align 8
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %850, i64* %859, align 8
  store %struct.Memory* %loadMem1_47a71d, %struct.Memory** %MEMORY
  %loadMem2_47a71d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a71d = load i64, i64* %3
  %call2_47a71d = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_47a71d, %struct.Memory* %loadMem2_47a71d)
  store %struct.Memory* %call2_47a71d, %struct.Memory** %MEMORY
  %loadMem_47a722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 1
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %EAX.i811 = bitcast %union.anon* %865 to i32*
  %866 = load i32, i32* %EAX.i811
  %867 = zext i32 %866 to i64
  %868 = load i64, i64* %PC.i810
  %869 = add i64 %868, 3
  store i64 %869, i64* %PC.i810
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %870, align 1
  %871 = and i32 %866, 255
  %872 = call i32 @llvm.ctpop.i32(i32 %871)
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %875, i8* %876, align 1
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %877, align 1
  %878 = icmp eq i32 %866, 0
  %879 = zext i1 %878 to i8
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %879, i8* %880, align 1
  %881 = lshr i32 %866, 31
  %882 = trunc i32 %881 to i8
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %882, i8* %883, align 1
  %884 = lshr i32 %866, 31
  %885 = xor i32 %881, %884
  %886 = add i32 %885, %884
  %887 = icmp eq i32 %886, 2
  %888 = zext i1 %887 to i8
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %888, i8* %889, align 1
  store %struct.Memory* %loadMem_47a722, %struct.Memory** %MEMORY
  %loadMem_47a725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 33
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %PC.i809
  %894 = add i64 %893, 15
  %895 = load i64, i64* %PC.i809
  %896 = add i64 %895, 6
  %897 = load i64, i64* %PC.i809
  %898 = add i64 %897, 6
  store i64 %898, i64* %PC.i809
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %900 = load i8, i8* %899, align 1
  store i8 %900, i8* %BRANCH_TAKEN, align 1
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %902 = icmp ne i8 %900, 0
  %903 = select i1 %902, i64 %894, i64 %896
  store i64 %903, i64* %901, align 8
  store %struct.Memory* %loadMem_47a725, %struct.Memory** %MEMORY
  %loadBr_47a725 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a725 = icmp eq i8 %loadBr_47a725, 1
  br i1 %cmpBr_47a725, label %block_.L_47a734, label %block_47a72b

block_47a72b:                                     ; preds = %block_47a6f7
  %loadMem_47a72b = load %struct.Memory*, %struct.Memory** %MEMORY
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 33
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 1
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RAX.i807 = bitcast %union.anon* %909 to i64*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 15
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %RBP.i808 = bitcast %union.anon* %912 to i64*
  %913 = load i64, i64* %RBP.i808
  %914 = sub i64 %913, 24
  %915 = load i64, i64* %PC.i806
  %916 = add i64 %915, 3
  store i64 %916, i64* %PC.i806
  %917 = inttoptr i64 %914 to i32*
  %918 = load i32, i32* %917
  %919 = zext i32 %918 to i64
  store i64 %919, i64* %RAX.i807, align 8
  store %struct.Memory* %loadMem_47a72b, %struct.Memory** %MEMORY
  %loadMem_47a72e = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 1
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RAX.i805 = bitcast %union.anon* %925 to i64*
  %926 = load i64, i64* %RAX.i805
  %927 = load i64, i64* %PC.i804
  %928 = add i64 %927, 3
  store i64 %928, i64* %PC.i804
  %929 = trunc i64 %926 to i32
  %930 = add i32 1, %929
  %931 = zext i32 %930 to i64
  store i64 %931, i64* %RAX.i805, align 8
  %932 = icmp ult i32 %930, %929
  %933 = icmp ult i32 %930, 1
  %934 = or i1 %932, %933
  %935 = zext i1 %934 to i8
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %935, i8* %936, align 1
  %937 = and i32 %930, 255
  %938 = call i32 @llvm.ctpop.i32(i32 %937)
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  %941 = xor i8 %940, 1
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %941, i8* %942, align 1
  %943 = xor i64 1, %926
  %944 = trunc i64 %943 to i32
  %945 = xor i32 %944, %930
  %946 = lshr i32 %945, 4
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %948, i8* %949, align 1
  %950 = icmp eq i32 %930, 0
  %951 = zext i1 %950 to i8
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %951, i8* %952, align 1
  %953 = lshr i32 %930, 31
  %954 = trunc i32 %953 to i8
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %954, i8* %955, align 1
  %956 = lshr i32 %929, 31
  %957 = xor i32 %953, %956
  %958 = add i32 %957, %953
  %959 = icmp eq i32 %958, 2
  %960 = zext i1 %959 to i8
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %960, i8* %961, align 1
  store %struct.Memory* %loadMem_47a72e, %struct.Memory** %MEMORY
  %loadMem_47a731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 33
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %964 to i64*
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 1
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %EAX.i802 = bitcast %union.anon* %967 to i32*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 15
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %RBP.i803 = bitcast %union.anon* %970 to i64*
  %971 = load i64, i64* %RBP.i803
  %972 = sub i64 %971, 24
  %973 = load i32, i32* %EAX.i802
  %974 = zext i32 %973 to i64
  %975 = load i64, i64* %PC.i801
  %976 = add i64 %975, 3
  store i64 %976, i64* %PC.i801
  %977 = inttoptr i64 %972 to i32*
  store i32 %973, i32* %977
  store %struct.Memory* %loadMem_47a731, %struct.Memory** %MEMORY
  br label %block_.L_47a734

block_.L_47a734:                                  ; preds = %block_47a72b, %block_47a6f7
  %loadMem_47a734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 33
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %980 to i64*
  %981 = load i64, i64* %PC.i800
  %982 = add i64 %981, 5
  %983 = load i64, i64* %PC.i800
  %984 = add i64 %983, 5
  store i64 %984, i64* %PC.i800
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %982, i64* %985, align 8
  store %struct.Memory* %loadMem_47a734, %struct.Memory** %MEMORY
  br label %block_.L_47a739

block_.L_47a739:                                  ; preds = %block_.L_47a734
  %loadMem_47a739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 33
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %988 to i64*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 1
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %RAX.i798 = bitcast %union.anon* %991 to i64*
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 15
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %RBP.i799 = bitcast %union.anon* %994 to i64*
  %995 = load i64, i64* %RBP.i799
  %996 = sub i64 %995, 36
  %997 = load i64, i64* %PC.i797
  %998 = add i64 %997, 3
  store i64 %998, i64* %PC.i797
  %999 = inttoptr i64 %996 to i32*
  %1000 = load i32, i32* %999
  %1001 = zext i32 %1000 to i64
  store i64 %1001, i64* %RAX.i798, align 8
  store %struct.Memory* %loadMem_47a739, %struct.Memory** %MEMORY
  %loadMem_47a73c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 33
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %1004 to i64*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 1
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %RAX.i796 = bitcast %union.anon* %1007 to i64*
  %1008 = load i64, i64* %RAX.i796
  %1009 = load i64, i64* %PC.i795
  %1010 = add i64 %1009, 3
  store i64 %1010, i64* %PC.i795
  %1011 = trunc i64 %1008 to i32
  %1012 = add i32 1, %1011
  %1013 = zext i32 %1012 to i64
  store i64 %1013, i64* %RAX.i796, align 8
  %1014 = icmp ult i32 %1012, %1011
  %1015 = icmp ult i32 %1012, 1
  %1016 = or i1 %1014, %1015
  %1017 = zext i1 %1016 to i8
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1017, i8* %1018, align 1
  %1019 = and i32 %1012, 255
  %1020 = call i32 @llvm.ctpop.i32(i32 %1019)
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  %1023 = xor i8 %1022, 1
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1023, i8* %1024, align 1
  %1025 = xor i64 1, %1008
  %1026 = trunc i64 %1025 to i32
  %1027 = xor i32 %1026, %1012
  %1028 = lshr i32 %1027, 4
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1030, i8* %1031, align 1
  %1032 = icmp eq i32 %1012, 0
  %1033 = zext i1 %1032 to i8
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1033, i8* %1034, align 1
  %1035 = lshr i32 %1012, 31
  %1036 = trunc i32 %1035 to i8
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1036, i8* %1037, align 1
  %1038 = lshr i32 %1011, 31
  %1039 = xor i32 %1035, %1038
  %1040 = add i32 %1039, %1035
  %1041 = icmp eq i32 %1040, 2
  %1042 = zext i1 %1041 to i8
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1042, i8* %1043, align 1
  store %struct.Memory* %loadMem_47a73c, %struct.Memory** %MEMORY
  %loadMem_47a73f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 33
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %1046 to i64*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 1
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %EAX.i793 = bitcast %union.anon* %1049 to i32*
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 15
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %RBP.i794 = bitcast %union.anon* %1052 to i64*
  %1053 = load i64, i64* %RBP.i794
  %1054 = sub i64 %1053, 36
  %1055 = load i32, i32* %EAX.i793
  %1056 = zext i32 %1055 to i64
  %1057 = load i64, i64* %PC.i792
  %1058 = add i64 %1057, 3
  store i64 %1058, i64* %PC.i792
  %1059 = inttoptr i64 %1054 to i32*
  store i32 %1055, i32* %1059
  store %struct.Memory* %loadMem_47a73f, %struct.Memory** %MEMORY
  %loadMem_47a742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 33
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %1062 to i64*
  %1063 = load i64, i64* %PC.i791
  %1064 = add i64 %1063, -90
  %1065 = load i64, i64* %PC.i791
  %1066 = add i64 %1065, 5
  store i64 %1066, i64* %PC.i791
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1064, i64* %1067, align 8
  store %struct.Memory* %loadMem_47a742, %struct.Memory** %MEMORY
  br label %block_.L_47a6e8

block_.L_47a747:                                  ; preds = %block_.L_47a6e8
  %loadMem_47a747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 33
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 1
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %RAX.i789 = bitcast %union.anon* %1073 to i64*
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 15
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %RBP.i790 = bitcast %union.anon* %1076 to i64*
  %1077 = load i64, i64* %RBP.i790
  %1078 = sub i64 %1077, 32
  %1079 = load i64, i64* %PC.i788
  %1080 = add i64 %1079, 4
  store i64 %1080, i64* %PC.i788
  %1081 = inttoptr i64 %1078 to i32*
  %1082 = load i32, i32* %1081
  %1083 = sext i32 %1082 to i64
  store i64 %1083, i64* %RAX.i789, align 8
  store %struct.Memory* %loadMem_47a747, %struct.Memory** %MEMORY
  %loadMem_47a74b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 33
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 1
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RAX.i786 = bitcast %union.anon* %1089 to i64*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 5
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %RCX.i787 = bitcast %union.anon* %1092 to i64*
  %1093 = load i64, i64* %RAX.i786
  %1094 = add i64 %1093, 12099168
  %1095 = load i64, i64* %PC.i785
  %1096 = add i64 %1095, 8
  store i64 %1096, i64* %PC.i785
  %1097 = inttoptr i64 %1094 to i8*
  %1098 = load i8, i8* %1097
  %1099 = zext i8 %1098 to i64
  store i64 %1099, i64* %RCX.i787, align 8
  store %struct.Memory* %loadMem_47a74b, %struct.Memory** %MEMORY
  %loadMem_47a753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 33
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %1102 to i64*
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 5
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %ECX.i784 = bitcast %union.anon* %1105 to i32*
  %1106 = load i32, i32* %ECX.i784
  %1107 = zext i32 %1106 to i64
  %1108 = load i64, i64* %PC.i783
  %1109 = add i64 %1108, 3
  store i64 %1109, i64* %PC.i783
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1110, align 1
  %1111 = and i32 %1106, 255
  %1112 = call i32 @llvm.ctpop.i32(i32 %1111)
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = xor i8 %1114, 1
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1115, i8* %1116, align 1
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1117, align 1
  %1118 = icmp eq i32 %1106, 0
  %1119 = zext i1 %1118 to i8
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1119, i8* %1120, align 1
  %1121 = lshr i32 %1106, 31
  %1122 = trunc i32 %1121 to i8
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1122, i8* %1123, align 1
  %1124 = lshr i32 %1106, 31
  %1125 = xor i32 %1121, %1124
  %1126 = add i32 %1125, %1124
  %1127 = icmp eq i32 %1126, 2
  %1128 = zext i1 %1127 to i8
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1128, i8* %1129, align 1
  store %struct.Memory* %loadMem_47a753, %struct.Memory** %MEMORY
  %loadMem_47a756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 33
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %1132 to i64*
  %1133 = load i64, i64* %PC.i782
  %1134 = add i64 %1133, 18
  %1135 = load i64, i64* %PC.i782
  %1136 = add i64 %1135, 6
  %1137 = load i64, i64* %PC.i782
  %1138 = add i64 %1137, 6
  store i64 %1138, i64* %PC.i782
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1140 = load i8, i8* %1139, align 1
  %1141 = icmp eq i8 %1140, 0
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %BRANCH_TAKEN, align 1
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1144 = select i1 %1141, i64 %1134, i64 %1136
  store i64 %1144, i64* %1143, align 8
  store %struct.Memory* %loadMem_47a756, %struct.Memory** %MEMORY
  %loadBr_47a756 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a756 = icmp eq i8 %loadBr_47a756, 1
  br i1 %cmpBr_47a756, label %block_.L_47a768, label %block_47a75c

block_47a75c:                                     ; preds = %block_.L_47a747
  %loadMem_47a75c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 33
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %1147 to i64*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 15
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %RBP.i781 = bitcast %union.anon* %1150 to i64*
  %1151 = load i64, i64* %RBP.i781
  %1152 = sub i64 %1151, 16
  %1153 = load i64, i64* %PC.i780
  %1154 = add i64 %1153, 7
  store i64 %1154, i64* %PC.i780
  %1155 = inttoptr i64 %1152 to i32*
  store i32 1, i32* %1155
  store %struct.Memory* %loadMem_47a75c, %struct.Memory** %MEMORY
  %loadMem_47a763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 33
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %1158 to i64*
  %1159 = load i64, i64* %PC.i779
  %1160 = add i64 %1159, 201
  %1161 = load i64, i64* %PC.i779
  %1162 = add i64 %1161, 5
  store i64 %1162, i64* %PC.i779
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1160, i64* %1163, align 8
  store %struct.Memory* %loadMem_47a763, %struct.Memory** %MEMORY
  br label %block_.L_47a82c

block_.L_47a768:                                  ; preds = %block_.L_47a747
  %loadMem_47a768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 33
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %1166 to i64*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 9
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %RSI.i778 = bitcast %union.anon* %1169 to i64*
  %1170 = load i64, i64* %PC.i777
  %1171 = add i64 %1170, 5
  store i64 %1171, i64* %PC.i777
  store i64 2, i64* %RSI.i778, align 8
  store %struct.Memory* %loadMem_47a768, %struct.Memory** %MEMORY
  %loadMem_47a76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 33
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %1174 to i64*
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 7
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %RDX.i775 = bitcast %union.anon* %1177 to i64*
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 15
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %RBP.i776 = bitcast %union.anon* %1180 to i64*
  %1181 = load i64, i64* %RBP.i776
  %1182 = sub i64 %1181, 1008
  %1183 = load i64, i64* %PC.i774
  %1184 = add i64 %1183, 7
  store i64 %1184, i64* %PC.i774
  store i64 %1182, i64* %RDX.i775, align 8
  store %struct.Memory* %loadMem_47a76d, %struct.Memory** %MEMORY
  %loadMem_47a774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 11
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RDI.i772 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 15
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %RBP.i773 = bitcast %union.anon* %1193 to i64*
  %1194 = load i64, i64* %RBP.i773
  %1195 = sub i64 %1194, 32
  %1196 = load i64, i64* %PC.i771
  %1197 = add i64 %1196, 3
  store i64 %1197, i64* %PC.i771
  %1198 = inttoptr i64 %1195 to i32*
  %1199 = load i32, i32* %1198
  %1200 = zext i32 %1199 to i64
  store i64 %1200, i64* %RDI.i772, align 8
  store %struct.Memory* %loadMem_47a774, %struct.Memory** %MEMORY
  %loadMem1_47a777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 33
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %1203 to i64*
  %1204 = load i64, i64* %PC.i770
  %1205 = add i64 %1204, -438071
  %1206 = load i64, i64* %PC.i770
  %1207 = add i64 %1206, 5
  %1208 = load i64, i64* %PC.i770
  %1209 = add i64 %1208, 5
  store i64 %1209, i64* %PC.i770
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1211 = load i64, i64* %1210, align 8
  %1212 = add i64 %1211, -8
  %1213 = inttoptr i64 %1212 to i64*
  store i64 %1207, i64* %1213
  store i64 %1212, i64* %1210, align 8
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1205, i64* %1214, align 8
  store %struct.Memory* %loadMem1_47a777, %struct.Memory** %MEMORY
  %loadMem2_47a777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a777 = load i64, i64* %3
  %call2_47a777 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_47a777, %struct.Memory* %loadMem2_47a777)
  store %struct.Memory* %call2_47a777, %struct.Memory** %MEMORY
  %loadMem_47a77c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 33
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1217 to i64*
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 1
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %EAX.i769 = bitcast %union.anon* %1220 to i32*
  %1221 = load i32, i32* %EAX.i769
  %1222 = zext i32 %1221 to i64
  %1223 = load i64, i64* %PC.i768
  %1224 = add i64 %1223, 3
  store i64 %1224, i64* %PC.i768
  %1225 = sub i32 %1221, 1
  %1226 = icmp ult i32 %1221, 1
  %1227 = zext i1 %1226 to i8
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1227, i8* %1228, align 1
  %1229 = and i32 %1225, 255
  %1230 = call i32 @llvm.ctpop.i32(i32 %1229)
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = xor i8 %1232, 1
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1233, i8* %1234, align 1
  %1235 = xor i64 1, %1222
  %1236 = trunc i64 %1235 to i32
  %1237 = xor i32 %1236, %1225
  %1238 = lshr i32 %1237, 4
  %1239 = trunc i32 %1238 to i8
  %1240 = and i8 %1239, 1
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1240, i8* %1241, align 1
  %1242 = icmp eq i32 %1225, 0
  %1243 = zext i1 %1242 to i8
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1243, i8* %1244, align 1
  %1245 = lshr i32 %1225, 31
  %1246 = trunc i32 %1245 to i8
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1246, i8* %1247, align 1
  %1248 = lshr i32 %1221, 31
  %1249 = xor i32 %1245, %1248
  %1250 = add i32 %1249, %1248
  %1251 = icmp eq i32 %1250, 2
  %1252 = zext i1 %1251 to i8
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1252, i8* %1253, align 1
  store %struct.Memory* %loadMem_47a77c, %struct.Memory** %MEMORY
  %loadMem_47a77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %1256 to i64*
  %1257 = load i64, i64* %PC.i767
  %1258 = add i64 %1257, 127
  %1259 = load i64, i64* %PC.i767
  %1260 = add i64 %1259, 6
  %1261 = load i64, i64* %PC.i767
  %1262 = add i64 %1261, 6
  store i64 %1262, i64* %PC.i767
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1264 = load i8, i8* %1263, align 1
  %1265 = icmp eq i8 %1264, 0
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %BRANCH_TAKEN, align 1
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1268 = select i1 %1265, i64 %1258, i64 %1260
  store i64 %1268, i64* %1267, align 8
  store %struct.Memory* %loadMem_47a77f, %struct.Memory** %MEMORY
  %loadBr_47a77f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a77f = icmp eq i8 %loadBr_47a77f, 1
  br i1 %cmpBr_47a77f, label %block_.L_47a7fe, label %block_47a785

block_47a785:                                     ; preds = %block_.L_47a768
  %loadMem_47a785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 33
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %1271 to i64*
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 7
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %RDX.i766 = bitcast %union.anon* %1274 to i64*
  %1275 = load i64, i64* %PC.i765
  %1276 = add i64 %1275, 10
  store i64 %1276, i64* %PC.i765
  store i64 ptrtoint (%G__0x581cc1_type* @G__0x581cc1 to i64), i64* %RDX.i766, align 8
  store %struct.Memory* %loadMem_47a785, %struct.Memory** %MEMORY
  %loadMem_47a78f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 1
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %EAX.i763 = bitcast %union.anon* %1282 to i32*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 1
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RAX.i764 = bitcast %union.anon* %1285 to i64*
  %1286 = load i64, i64* %RAX.i764
  %1287 = load i32, i32* %EAX.i763
  %1288 = zext i32 %1287 to i64
  %1289 = load i64, i64* %PC.i762
  %1290 = add i64 %1289, 2
  store i64 %1290, i64* %PC.i762
  %1291 = xor i64 %1288, %1286
  %1292 = trunc i64 %1291 to i32
  %1293 = and i64 %1291, 4294967295
  store i64 %1293, i64* %RAX.i764, align 8
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1294, align 1
  %1295 = and i32 %1292, 255
  %1296 = call i32 @llvm.ctpop.i32(i32 %1295)
  %1297 = trunc i32 %1296 to i8
  %1298 = and i8 %1297, 1
  %1299 = xor i8 %1298, 1
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1299, i8* %1300, align 1
  %1301 = icmp eq i32 %1292, 0
  %1302 = zext i1 %1301 to i8
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1302, i8* %1303, align 1
  %1304 = lshr i32 %1292, 31
  %1305 = trunc i32 %1304 to i8
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1305, i8* %1306, align 1
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1307, align 1
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1308, align 1
  store %struct.Memory* %loadMem_47a78f, %struct.Memory** %MEMORY
  %loadMem_47a791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 33
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 11
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RDI.i760 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 15
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RBP.i761 = bitcast %union.anon* %1317 to i64*
  %1318 = load i64, i64* %RBP.i761
  %1319 = sub i64 %1318, 1008
  %1320 = load i64, i64* %PC.i759
  %1321 = add i64 %1320, 6
  store i64 %1321, i64* %PC.i759
  %1322 = inttoptr i64 %1319 to i32*
  %1323 = load i32, i32* %1322
  %1324 = zext i32 %1323 to i64
  store i64 %1324, i64* %RDI.i760, align 8
  store %struct.Memory* %loadMem_47a791, %struct.Memory** %MEMORY
  %loadMem_47a797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 33
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %1327 to i64*
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 9
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %RSI.i757 = bitcast %union.anon* %1330 to i64*
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 15
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %RBP.i758 = bitcast %union.anon* %1333 to i64*
  %1334 = load i64, i64* %RBP.i758
  %1335 = sub i64 %1334, 1016
  %1336 = load i64, i64* %PC.i756
  %1337 = add i64 %1336, 6
  store i64 %1337, i64* %PC.i756
  %1338 = inttoptr i64 %1335 to i32*
  %1339 = load i32, i32* %1338
  %1340 = zext i32 %1339 to i64
  store i64 %1340, i64* %RSI.i757, align 8
  store %struct.Memory* %loadMem_47a797, %struct.Memory** %MEMORY
  %loadMem_47a79d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 33
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %1343 to i64*
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 1
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %EAX.i754 = bitcast %union.anon* %1346 to i32*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 5
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %RCX.i755 = bitcast %union.anon* %1349 to i64*
  %1350 = load i32, i32* %EAX.i754
  %1351 = zext i32 %1350 to i64
  %1352 = load i64, i64* %PC.i753
  %1353 = add i64 %1352, 2
  store i64 %1353, i64* %PC.i753
  %1354 = and i64 %1351, 4294967295
  store i64 %1354, i64* %RCX.i755, align 8
  store %struct.Memory* %loadMem_47a79d, %struct.Memory** %MEMORY
  %loadMem_47a79f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 33
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 1
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %EAX.i751 = bitcast %union.anon* %1360 to i32*
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 17
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %R8D.i752 = bitcast %union.anon* %1363 to i32*
  %1364 = bitcast i32* %R8D.i752 to i64*
  %1365 = load i32, i32* %EAX.i751
  %1366 = zext i32 %1365 to i64
  %1367 = load i64, i64* %PC.i750
  %1368 = add i64 %1367, 3
  store i64 %1368, i64* %PC.i750
  %1369 = and i64 %1366, 4294967295
  store i64 %1369, i64* %1364, align 8
  store %struct.Memory* %loadMem_47a79f, %struct.Memory** %MEMORY
  %loadMem1_47a7a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 33
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %1372 to i64*
  %1373 = load i64, i64* %PC.i749
  %1374 = add i64 %1373, -445602
  %1375 = load i64, i64* %PC.i749
  %1376 = add i64 %1375, 5
  %1377 = load i64, i64* %PC.i749
  %1378 = add i64 %1377, 5
  store i64 %1378, i64* %PC.i749
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1380 = load i64, i64* %1379, align 8
  %1381 = add i64 %1380, -8
  %1382 = inttoptr i64 %1381 to i64*
  store i64 %1376, i64* %1382
  store i64 %1381, i64* %1379, align 8
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1374, i64* %1383, align 8
  store %struct.Memory* %loadMem1_47a7a2, %struct.Memory** %MEMORY
  %loadMem2_47a7a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a7a2 = load i64, i64* %3
  %call2_47a7a2 = call %struct.Memory* @sub_40db00.tryko(%struct.State* %0, i64 %loadPC_47a7a2, %struct.Memory* %loadMem2_47a7a2)
  store %struct.Memory* %call2_47a7a2, %struct.Memory** %MEMORY
  %loadMem_47a7a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 33
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %1386 to i64*
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 1
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %EAX.i747 = bitcast %union.anon* %1389 to i32*
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 15
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %RBP.i748 = bitcast %union.anon* %1392 to i64*
  %1393 = load i64, i64* %RBP.i748
  %1394 = sub i64 %1393, 1020
  %1395 = load i32, i32* %EAX.i747
  %1396 = zext i32 %1395 to i64
  %1397 = load i64, i64* %PC.i746
  %1398 = add i64 %1397, 6
  store i64 %1398, i64* %PC.i746
  %1399 = inttoptr i64 %1394 to i32*
  store i32 %1395, i32* %1399
  store %struct.Memory* %loadMem_47a7a7, %struct.Memory** %MEMORY
  %loadMem_47a7ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 33
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %1402 to i64*
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 15
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %RBP.i745 = bitcast %union.anon* %1405 to i64*
  %1406 = load i64, i64* %RBP.i745
  %1407 = sub i64 %1406, 1020
  %1408 = load i64, i64* %PC.i744
  %1409 = add i64 %1408, 7
  store i64 %1409, i64* %PC.i744
  %1410 = inttoptr i64 %1407 to i32*
  %1411 = load i32, i32* %1410
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1412, align 1
  %1413 = and i32 %1411, 255
  %1414 = call i32 @llvm.ctpop.i32(i32 %1413)
  %1415 = trunc i32 %1414 to i8
  %1416 = and i8 %1415, 1
  %1417 = xor i8 %1416, 1
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1417, i8* %1418, align 1
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1419, align 1
  %1420 = icmp eq i32 %1411, 0
  %1421 = zext i1 %1420 to i8
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1421, i8* %1422, align 1
  %1423 = lshr i32 %1411, 31
  %1424 = trunc i32 %1423 to i8
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1424, i8* %1425, align 1
  %1426 = lshr i32 %1411, 31
  %1427 = xor i32 %1423, %1426
  %1428 = add i32 %1427, %1426
  %1429 = icmp eq i32 %1428, 2
  %1430 = zext i1 %1429 to i8
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1430, i8* %1431, align 1
  store %struct.Memory* %loadMem_47a7ad, %struct.Memory** %MEMORY
  %loadMem_47a7b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 33
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %1434 to i64*
  %1435 = load i64, i64* %PC.i743
  %1436 = add i64 %1435, 11
  %1437 = load i64, i64* %PC.i743
  %1438 = add i64 %1437, 6
  %1439 = load i64, i64* %PC.i743
  %1440 = add i64 %1439, 6
  store i64 %1440, i64* %PC.i743
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1442 = load i8, i8* %1441, align 1
  store i8 %1442, i8* %BRANCH_TAKEN, align 1
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1444 = icmp ne i8 %1442, 0
  %1445 = select i1 %1444, i64 %1436, i64 %1438
  store i64 %1445, i64* %1443, align 8
  store %struct.Memory* %loadMem_47a7b4, %struct.Memory** %MEMORY
  %loadBr_47a7b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a7b4 = icmp eq i8 %loadBr_47a7b4, 1
  br i1 %cmpBr_47a7b4, label %block_.L_47a7bf, label %block_47a7ba

block_47a7ba:                                     ; preds = %block_47a785
  %loadMem_47a7ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 33
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %1448 to i64*
  %1449 = load i64, i64* %PC.i742
  %1450 = add i64 %1449, 45
  %1451 = load i64, i64* %PC.i742
  %1452 = add i64 %1451, 5
  store i64 %1452, i64* %PC.i742
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1450, i64* %1453, align 8
  store %struct.Memory* %loadMem_47a7ba, %struct.Memory** %MEMORY
  br label %block_.L_47a7e7

block_.L_47a7bf:                                  ; preds = %block_47a785
  %loadMem_47a7bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 33
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %1456 to i64*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 11
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %RDI.i741 = bitcast %union.anon* %1459 to i64*
  %1460 = load i64, i64* %PC.i740
  %1461 = add i64 %1460, 10
  store i64 %1461, i64* %PC.i740
  store i64 ptrtoint (%G__0x581a3a_type* @G__0x581a3a to i64), i64* %RDI.i741, align 8
  store %struct.Memory* %loadMem_47a7bf, %struct.Memory** %MEMORY
  %loadMem_47a7c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 33
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %1464 to i64*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 9
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %RSI.i739 = bitcast %union.anon* %1467 to i64*
  %1468 = load i64, i64* %PC.i738
  %1469 = add i64 %1468, 5
  store i64 %1469, i64* %PC.i738
  store i64 1246, i64* %RSI.i739, align 8
  store %struct.Memory* %loadMem_47a7c9, %struct.Memory** %MEMORY
  %loadMem_47a7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 33
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %1472 to i64*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 7
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %RDX.i737 = bitcast %union.anon* %1475 to i64*
  %1476 = load i64, i64* %PC.i736
  %1477 = add i64 %1476, 10
  store i64 %1477, i64* %PC.i736
  store i64 ptrtoint (%G__0x581cd4_type* @G__0x581cd4 to i64), i64* %RDX.i737, align 8
  store %struct.Memory* %loadMem_47a7ce, %struct.Memory** %MEMORY
  %loadMem_47a7d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1479 = getelementptr inbounds %struct.GPR, %struct.GPR* %1478, i32 0, i32 33
  %1480 = getelementptr inbounds %struct.Reg, %struct.Reg* %1479, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %1480 to i64*
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 1
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %RAX.i735 = bitcast %union.anon* %1483 to i64*
  %1484 = load i64, i64* %PC.i734
  %1485 = add i64 %1484, 5
  store i64 %1485, i64* %PC.i734
  store i64 4294967295, i64* %RAX.i735, align 8
  store %struct.Memory* %loadMem_47a7d8, %struct.Memory** %MEMORY
  %loadMem_47a7dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 33
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %1488 to i64*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 1
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %EAX.i732 = bitcast %union.anon* %1491 to i32*
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 5
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %RCX.i733 = bitcast %union.anon* %1494 to i64*
  %1495 = load i32, i32* %EAX.i732
  %1496 = zext i32 %1495 to i64
  %1497 = load i64, i64* %PC.i731
  %1498 = add i64 %1497, 2
  store i64 %1498, i64* %PC.i731
  %1499 = and i64 %1496, 4294967295
  store i64 %1499, i64* %RCX.i733, align 8
  store %struct.Memory* %loadMem_47a7dd, %struct.Memory** %MEMORY
  %loadMem_47a7df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 33
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %1502 to i64*
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 1
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %EAX.i729 = bitcast %union.anon* %1505 to i32*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 17
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %R8D.i730 = bitcast %union.anon* %1508 to i32*
  %1509 = bitcast i32* %R8D.i730 to i64*
  %1510 = load i32, i32* %EAX.i729
  %1511 = zext i32 %1510 to i64
  %1512 = load i64, i64* %PC.i728
  %1513 = add i64 %1512, 3
  store i64 %1513, i64* %PC.i728
  %1514 = and i64 %1511, 4294967295
  store i64 %1514, i64* %1509, align 8
  store %struct.Memory* %loadMem_47a7df, %struct.Memory** %MEMORY
  %loadMem1_47a7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 33
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %1517 to i64*
  %1518 = load i64, i64* %PC.i727
  %1519 = add i64 %1518, -165714
  %1520 = load i64, i64* %PC.i727
  %1521 = add i64 %1520, 5
  %1522 = load i64, i64* %PC.i727
  %1523 = add i64 %1522, 5
  store i64 %1523, i64* %PC.i727
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1525 = load i64, i64* %1524, align 8
  %1526 = add i64 %1525, -8
  %1527 = inttoptr i64 %1526 to i64*
  store i64 %1521, i64* %1527
  store i64 %1526, i64* %1524, align 8
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1519, i64* %1528, align 8
  store %struct.Memory* %loadMem1_47a7e2, %struct.Memory** %MEMORY
  %loadMem2_47a7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a7e2 = load i64, i64* %3
  %call2_47a7e2 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_47a7e2, %struct.Memory* %loadMem2_47a7e2)
  store %struct.Memory* %call2_47a7e2, %struct.Memory** %MEMORY
  br label %block_.L_47a7e7

block_.L_47a7e7:                                  ; preds = %block_.L_47a7bf, %block_47a7ba
  %loadMem_47a7e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 33
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 1
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RAX.i725 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 15
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %RBP.i726 = bitcast %union.anon* %1537 to i64*
  %1538 = load i64, i64* %RBP.i726
  %1539 = sub i64 %1538, 24
  %1540 = load i64, i64* %PC.i724
  %1541 = add i64 %1540, 3
  store i64 %1541, i64* %PC.i724
  %1542 = inttoptr i64 %1539 to i32*
  %1543 = load i32, i32* %1542
  %1544 = zext i32 %1543 to i64
  store i64 %1544, i64* %RAX.i725, align 8
  store %struct.Memory* %loadMem_47a7e7, %struct.Memory** %MEMORY
  %loadMem_47a7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 33
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 1
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RAX.i723 = bitcast %union.anon* %1550 to i64*
  %1551 = load i64, i64* %RAX.i723
  %1552 = load i64, i64* %PC.i722
  %1553 = add i64 %1552, 3
  store i64 %1553, i64* %PC.i722
  %1554 = trunc i64 %1551 to i32
  %1555 = add i32 1, %1554
  %1556 = zext i32 %1555 to i64
  store i64 %1556, i64* %RAX.i723, align 8
  %1557 = icmp ult i32 %1555, %1554
  %1558 = icmp ult i32 %1555, 1
  %1559 = or i1 %1557, %1558
  %1560 = zext i1 %1559 to i8
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1560, i8* %1561, align 1
  %1562 = and i32 %1555, 255
  %1563 = call i32 @llvm.ctpop.i32(i32 %1562)
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  %1566 = xor i8 %1565, 1
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1566, i8* %1567, align 1
  %1568 = xor i64 1, %1551
  %1569 = trunc i64 %1568 to i32
  %1570 = xor i32 %1569, %1555
  %1571 = lshr i32 %1570, 4
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1573, i8* %1574, align 1
  %1575 = icmp eq i32 %1555, 0
  %1576 = zext i1 %1575 to i8
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1576, i8* %1577, align 1
  %1578 = lshr i32 %1555, 31
  %1579 = trunc i32 %1578 to i8
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1579, i8* %1580, align 1
  %1581 = lshr i32 %1554, 31
  %1582 = xor i32 %1578, %1581
  %1583 = add i32 %1582, %1578
  %1584 = icmp eq i32 %1583, 2
  %1585 = zext i1 %1584 to i8
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1585, i8* %1586, align 1
  store %struct.Memory* %loadMem_47a7ea, %struct.Memory** %MEMORY
  %loadMem_47a7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 33
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 1
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %EAX.i720 = bitcast %union.anon* %1592 to i32*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 15
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %RBP.i721 = bitcast %union.anon* %1595 to i64*
  %1596 = load i64, i64* %RBP.i721
  %1597 = sub i64 %1596, 24
  %1598 = load i32, i32* %EAX.i720
  %1599 = zext i32 %1598 to i64
  %1600 = load i64, i64* %PC.i719
  %1601 = add i64 %1600, 3
  store i64 %1601, i64* %PC.i719
  %1602 = inttoptr i64 %1597 to i32*
  store i32 %1598, i32* %1602
  store %struct.Memory* %loadMem_47a7ed, %struct.Memory** %MEMORY
  %loadMem_47a7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 33
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %1605 to i64*
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 1
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %RAX.i717 = bitcast %union.anon* %1608 to i64*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 15
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %RBP.i718 = bitcast %union.anon* %1611 to i64*
  %1612 = load i64, i64* %RBP.i718
  %1613 = sub i64 %1612, 16
  %1614 = load i64, i64* %PC.i716
  %1615 = add i64 %1614, 3
  store i64 %1615, i64* %PC.i716
  %1616 = inttoptr i64 %1613 to i32*
  %1617 = load i32, i32* %1616
  %1618 = zext i32 %1617 to i64
  store i64 %1618, i64* %RAX.i717, align 8
  store %struct.Memory* %loadMem_47a7f0, %struct.Memory** %MEMORY
  %loadMem_47a7f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 33
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %1621 to i64*
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 1
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %RAX.i715 = bitcast %union.anon* %1624 to i64*
  %1625 = load i64, i64* %RAX.i715
  %1626 = load i64, i64* %PC.i714
  %1627 = add i64 %1626, 3
  store i64 %1627, i64* %PC.i714
  %1628 = trunc i64 %1625 to i32
  %1629 = add i32 1, %1628
  %1630 = zext i32 %1629 to i64
  store i64 %1630, i64* %RAX.i715, align 8
  %1631 = icmp ult i32 %1629, %1628
  %1632 = icmp ult i32 %1629, 1
  %1633 = or i1 %1631, %1632
  %1634 = zext i1 %1633 to i8
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1634, i8* %1635, align 1
  %1636 = and i32 %1629, 255
  %1637 = call i32 @llvm.ctpop.i32(i32 %1636)
  %1638 = trunc i32 %1637 to i8
  %1639 = and i8 %1638, 1
  %1640 = xor i8 %1639, 1
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1640, i8* %1641, align 1
  %1642 = xor i64 1, %1625
  %1643 = trunc i64 %1642 to i32
  %1644 = xor i32 %1643, %1629
  %1645 = lshr i32 %1644, 4
  %1646 = trunc i32 %1645 to i8
  %1647 = and i8 %1646, 1
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1647, i8* %1648, align 1
  %1649 = icmp eq i32 %1629, 0
  %1650 = zext i1 %1649 to i8
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1650, i8* %1651, align 1
  %1652 = lshr i32 %1629, 31
  %1653 = trunc i32 %1652 to i8
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1653, i8* %1654, align 1
  %1655 = lshr i32 %1628, 31
  %1656 = xor i32 %1652, %1655
  %1657 = add i32 %1656, %1652
  %1658 = icmp eq i32 %1657, 2
  %1659 = zext i1 %1658 to i8
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1659, i8* %1660, align 1
  store %struct.Memory* %loadMem_47a7f3, %struct.Memory** %MEMORY
  %loadMem_47a7f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 33
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %1663 to i64*
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 1
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %EAX.i712 = bitcast %union.anon* %1666 to i32*
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 15
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %RBP.i713 = bitcast %union.anon* %1669 to i64*
  %1670 = load i64, i64* %RBP.i713
  %1671 = sub i64 %1670, 16
  %1672 = load i32, i32* %EAX.i712
  %1673 = zext i32 %1672 to i64
  %1674 = load i64, i64* %PC.i711
  %1675 = add i64 %1674, 3
  store i64 %1675, i64* %PC.i711
  %1676 = inttoptr i64 %1671 to i32*
  store i32 %1672, i32* %1676
  store %struct.Memory* %loadMem_47a7f6, %struct.Memory** %MEMORY
  %loadMem_47a7f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 33
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %1679 to i64*
  %1680 = load i64, i64* %PC.i710
  %1681 = add i64 %1680, 46
  %1682 = load i64, i64* %PC.i710
  %1683 = add i64 %1682, 5
  store i64 %1683, i64* %PC.i710
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1681, i64* %1684, align 8
  store %struct.Memory* %loadMem_47a7f9, %struct.Memory** %MEMORY
  br label %block_.L_47a827

block_.L_47a7fe:                                  ; preds = %block_.L_47a768
  %loadMem_47a7fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 33
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %1687 to i64*
  %1688 = load i64, i64* %PC.i709
  %1689 = add i64 %1688, 5
  %1690 = load i64, i64* %PC.i709
  %1691 = add i64 %1690, 5
  store i64 %1691, i64* %PC.i709
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1689, i64* %1692, align 8
  store %struct.Memory* %loadMem_47a7fe, %struct.Memory** %MEMORY
  br label %block_.L_47a803

block_.L_47a803:                                  ; preds = %block_47a80f, %block_.L_47a7fe
  %loadMem_47a803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 33
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %1695 to i64*
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 1
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %RAX.i707 = bitcast %union.anon* %1698 to i64*
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 15
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %RBP.i708 = bitcast %union.anon* %1701 to i64*
  %1702 = load i64, i64* %RBP.i708
  %1703 = sub i64 %1702, 24
  %1704 = load i64, i64* %PC.i706
  %1705 = add i64 %1704, 3
  store i64 %1705, i64* %PC.i706
  %1706 = inttoptr i64 %1703 to i32*
  %1707 = load i32, i32* %1706
  %1708 = zext i32 %1707 to i64
  store i64 %1708, i64* %RAX.i707, align 8
  store %struct.Memory* %loadMem_47a803, %struct.Memory** %MEMORY
  %loadMem_47a806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 33
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %1711 to i64*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 1
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %EAX.i704 = bitcast %union.anon* %1714 to i32*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 15
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %1717 to i64*
  %1718 = load i32, i32* %EAX.i704
  %1719 = zext i32 %1718 to i64
  %1720 = load i64, i64* %RBP.i705
  %1721 = sub i64 %1720, 28
  %1722 = load i64, i64* %PC.i703
  %1723 = add i64 %1722, 3
  store i64 %1723, i64* %PC.i703
  %1724 = inttoptr i64 %1721 to i32*
  %1725 = load i32, i32* %1724
  %1726 = sub i32 %1718, %1725
  %1727 = icmp ult i32 %1718, %1725
  %1728 = zext i1 %1727 to i8
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1728, i8* %1729, align 1
  %1730 = and i32 %1726, 255
  %1731 = call i32 @llvm.ctpop.i32(i32 %1730)
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  %1734 = xor i8 %1733, 1
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1734, i8* %1735, align 1
  %1736 = xor i32 %1725, %1718
  %1737 = xor i32 %1736, %1726
  %1738 = lshr i32 %1737, 4
  %1739 = trunc i32 %1738 to i8
  %1740 = and i8 %1739, 1
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1740, i8* %1741, align 1
  %1742 = icmp eq i32 %1726, 0
  %1743 = zext i1 %1742 to i8
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1743, i8* %1744, align 1
  %1745 = lshr i32 %1726, 31
  %1746 = trunc i32 %1745 to i8
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1746, i8* %1747, align 1
  %1748 = lshr i32 %1718, 31
  %1749 = lshr i32 %1725, 31
  %1750 = xor i32 %1749, %1748
  %1751 = xor i32 %1745, %1748
  %1752 = add i32 %1751, %1750
  %1753 = icmp eq i32 %1752, 2
  %1754 = zext i1 %1753 to i8
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1754, i8* %1755, align 1
  store %struct.Memory* %loadMem_47a806, %struct.Memory** %MEMORY
  %loadMem_47a809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 33
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %1758 to i64*
  %1759 = load i64, i64* %PC.i702
  %1760 = add i64 %1759, 25
  %1761 = load i64, i64* %PC.i702
  %1762 = add i64 %1761, 6
  %1763 = load i64, i64* %PC.i702
  %1764 = add i64 %1763, 6
  store i64 %1764, i64* %PC.i702
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1766 = load i8, i8* %1765, align 1
  %1767 = icmp ne i8 %1766, 0
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1769 = load i8, i8* %1768, align 1
  %1770 = icmp ne i8 %1769, 0
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1772 = load i8, i8* %1771, align 1
  %1773 = icmp ne i8 %1772, 0
  %1774 = xor i1 %1770, %1773
  %1775 = or i1 %1767, %1774
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %BRANCH_TAKEN, align 1
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1778 = select i1 %1775, i64 %1760, i64 %1762
  store i64 %1778, i64* %1777, align 8
  store %struct.Memory* %loadMem_47a809, %struct.Memory** %MEMORY
  %loadBr_47a809 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a809 = icmp eq i8 %loadBr_47a809, 1
  br i1 %cmpBr_47a809, label %block_.L_47a822, label %block_47a80f

block_47a80f:                                     ; preds = %block_.L_47a803
  %loadMem1_47a80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 33
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %1781 to i64*
  %1782 = load i64, i64* %PC.i701
  %1783 = add i64 %1782, -445103
  %1784 = load i64, i64* %PC.i701
  %1785 = add i64 %1784, 5
  %1786 = load i64, i64* %PC.i701
  %1787 = add i64 %1786, 5
  store i64 %1787, i64* %PC.i701
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1789 = load i64, i64* %1788, align 8
  %1790 = add i64 %1789, -8
  %1791 = inttoptr i64 %1790 to i64*
  store i64 %1785, i64* %1791
  store i64 %1790, i64* %1788, align 8
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1783, i64* %1792, align 8
  store %struct.Memory* %loadMem1_47a80f, %struct.Memory** %MEMORY
  %loadMem2_47a80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a80f = load i64, i64* %3
  %call2_47a80f = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_47a80f, %struct.Memory* %loadMem2_47a80f)
  store %struct.Memory* %call2_47a80f, %struct.Memory** %MEMORY
  %loadMem_47a814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 33
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1795 to i64*
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 1
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %RAX.i699 = bitcast %union.anon* %1798 to i64*
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 15
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %1801 to i64*
  %1802 = load i64, i64* %RBP.i700
  %1803 = sub i64 %1802, 24
  %1804 = load i64, i64* %PC.i698
  %1805 = add i64 %1804, 3
  store i64 %1805, i64* %PC.i698
  %1806 = inttoptr i64 %1803 to i32*
  %1807 = load i32, i32* %1806
  %1808 = zext i32 %1807 to i64
  store i64 %1808, i64* %RAX.i699, align 8
  store %struct.Memory* %loadMem_47a814, %struct.Memory** %MEMORY
  %loadMem_47a817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 33
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 1
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %RAX.i697 = bitcast %union.anon* %1814 to i64*
  %1815 = load i64, i64* %RAX.i697
  %1816 = load i64, i64* %PC.i696
  %1817 = add i64 %1816, 3
  store i64 %1817, i64* %PC.i696
  %1818 = trunc i64 %1815 to i32
  %1819 = add i32 -1, %1818
  %1820 = zext i32 %1819 to i64
  store i64 %1820, i64* %RAX.i697, align 8
  %1821 = icmp ult i32 %1819, %1818
  %1822 = icmp ult i32 %1819, -1
  %1823 = or i1 %1821, %1822
  %1824 = zext i1 %1823 to i8
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1824, i8* %1825, align 1
  %1826 = and i32 %1819, 255
  %1827 = call i32 @llvm.ctpop.i32(i32 %1826)
  %1828 = trunc i32 %1827 to i8
  %1829 = and i8 %1828, 1
  %1830 = xor i8 %1829, 1
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1830, i8* %1831, align 1
  %1832 = xor i64 -1, %1815
  %1833 = trunc i64 %1832 to i32
  %1834 = xor i32 %1833, %1819
  %1835 = lshr i32 %1834, 4
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1837, i8* %1838, align 1
  %1839 = icmp eq i32 %1819, 0
  %1840 = zext i1 %1839 to i8
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1840, i8* %1841, align 1
  %1842 = lshr i32 %1819, 31
  %1843 = trunc i32 %1842 to i8
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1843, i8* %1844, align 1
  %1845 = lshr i32 %1818, 31
  %1846 = xor i32 %1842, %1845
  %1847 = xor i32 %1842, 1
  %1848 = add i32 %1846, %1847
  %1849 = icmp eq i32 %1848, 2
  %1850 = zext i1 %1849 to i8
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1850, i8* %1851, align 1
  store %struct.Memory* %loadMem_47a817, %struct.Memory** %MEMORY
  %loadMem_47a81a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 1
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %EAX.i694 = bitcast %union.anon* %1857 to i32*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 15
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %RBP.i695 = bitcast %union.anon* %1860 to i64*
  %1861 = load i64, i64* %RBP.i695
  %1862 = sub i64 %1861, 24
  %1863 = load i32, i32* %EAX.i694
  %1864 = zext i32 %1863 to i64
  %1865 = load i64, i64* %PC.i693
  %1866 = add i64 %1865, 3
  store i64 %1866, i64* %PC.i693
  %1867 = inttoptr i64 %1862 to i32*
  store i32 %1863, i32* %1867
  store %struct.Memory* %loadMem_47a81a, %struct.Memory** %MEMORY
  %loadMem_47a81d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 33
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %1870 to i64*
  %1871 = load i64, i64* %PC.i692
  %1872 = add i64 %1871, -26
  %1873 = load i64, i64* %PC.i692
  %1874 = add i64 %1873, 5
  store i64 %1874, i64* %PC.i692
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1872, i64* %1875, align 8
  store %struct.Memory* %loadMem_47a81d, %struct.Memory** %MEMORY
  br label %block_.L_47a803

block_.L_47a822:                                  ; preds = %block_.L_47a803
  %loadMem_47a822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1877 = getelementptr inbounds %struct.GPR, %struct.GPR* %1876, i32 0, i32 33
  %1878 = getelementptr inbounds %struct.Reg, %struct.Reg* %1877, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %1878 to i64*
  %1879 = load i64, i64* %PC.i691
  %1880 = add i64 %1879, 5
  %1881 = load i64, i64* %PC.i691
  %1882 = add i64 %1881, 5
  store i64 %1882, i64* %PC.i691
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1880, i64* %1883, align 8
  store %struct.Memory* %loadMem_47a822, %struct.Memory** %MEMORY
  br label %block_.L_47a827

block_.L_47a827:                                  ; preds = %block_.L_47a822, %block_.L_47a7e7
  %loadMem_47a827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 33
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %1886 to i64*
  %1887 = load i64, i64* %PC.i690
  %1888 = add i64 %1887, 5
  %1889 = load i64, i64* %PC.i690
  %1890 = add i64 %1889, 5
  store i64 %1890, i64* %PC.i690
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1888, i64* %1891, align 8
  store %struct.Memory* %loadMem_47a827, %struct.Memory** %MEMORY
  br label %block_.L_47a82c

block_.L_47a82c:                                  ; preds = %block_.L_47a827, %block_47a75c
  %loadMem_47a82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %1894 to i64*
  %1895 = load i64, i64* %PC.i689
  %1896 = add i64 %1895, 5
  %1897 = load i64, i64* %PC.i689
  %1898 = add i64 %1897, 5
  store i64 %1898, i64* %PC.i689
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1896, i64* %1899, align 8
  store %struct.Memory* %loadMem_47a82c, %struct.Memory** %MEMORY
  br label %block_.L_47a831

block_.L_47a831:                                  ; preds = %block_.L_47a82c, %block_.L_47a6bc
  %loadMem_47a831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 33
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %1902 to i64*
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 1
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %RAX.i687 = bitcast %union.anon* %1905 to i64*
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 15
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %RBP.i688 = bitcast %union.anon* %1908 to i64*
  %1909 = load i64, i64* %RBP.i688
  %1910 = sub i64 %1909, 32
  %1911 = load i64, i64* %PC.i686
  %1912 = add i64 %1911, 3
  store i64 %1912, i64* %PC.i686
  %1913 = inttoptr i64 %1910 to i32*
  %1914 = load i32, i32* %1913
  %1915 = zext i32 %1914 to i64
  store i64 %1915, i64* %RAX.i687, align 8
  store %struct.Memory* %loadMem_47a831, %struct.Memory** %MEMORY
  %loadMem_47a834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 33
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 1
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %RAX.i685 = bitcast %union.anon* %1921 to i64*
  %1922 = load i64, i64* %RAX.i685
  %1923 = load i64, i64* %PC.i684
  %1924 = add i64 %1923, 3
  store i64 %1924, i64* %PC.i684
  %1925 = trunc i64 %1922 to i32
  %1926 = add i32 1, %1925
  %1927 = zext i32 %1926 to i64
  store i64 %1927, i64* %RAX.i685, align 8
  %1928 = icmp ult i32 %1926, %1925
  %1929 = icmp ult i32 %1926, 1
  %1930 = or i1 %1928, %1929
  %1931 = zext i1 %1930 to i8
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1931, i8* %1932, align 1
  %1933 = and i32 %1926, 255
  %1934 = call i32 @llvm.ctpop.i32(i32 %1933)
  %1935 = trunc i32 %1934 to i8
  %1936 = and i8 %1935, 1
  %1937 = xor i8 %1936, 1
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1937, i8* %1938, align 1
  %1939 = xor i64 1, %1922
  %1940 = trunc i64 %1939 to i32
  %1941 = xor i32 %1940, %1926
  %1942 = lshr i32 %1941, 4
  %1943 = trunc i32 %1942 to i8
  %1944 = and i8 %1943, 1
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1944, i8* %1945, align 1
  %1946 = icmp eq i32 %1926, 0
  %1947 = zext i1 %1946 to i8
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1947, i8* %1948, align 1
  %1949 = lshr i32 %1926, 31
  %1950 = trunc i32 %1949 to i8
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1950, i8* %1951, align 1
  %1952 = lshr i32 %1925, 31
  %1953 = xor i32 %1949, %1952
  %1954 = add i32 %1953, %1949
  %1955 = icmp eq i32 %1954, 2
  %1956 = zext i1 %1955 to i8
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1956, i8* %1957, align 1
  store %struct.Memory* %loadMem_47a834, %struct.Memory** %MEMORY
  %loadMem_47a837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 33
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %1960 to i64*
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 1
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %EAX.i682 = bitcast %union.anon* %1963 to i32*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 15
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %RBP.i683 = bitcast %union.anon* %1966 to i64*
  %1967 = load i64, i64* %RBP.i683
  %1968 = sub i64 %1967, 32
  %1969 = load i32, i32* %EAX.i682
  %1970 = zext i32 %1969 to i64
  %1971 = load i64, i64* %PC.i681
  %1972 = add i64 %1971, 3
  store i64 %1972, i64* %PC.i681
  %1973 = inttoptr i64 %1968 to i32*
  store i32 %1969, i32* %1973
  store %struct.Memory* %loadMem_47a837, %struct.Memory** %MEMORY
  %loadMem_47a83a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 33
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %1976 to i64*
  %1977 = load i64, i64* %PC.i680
  %1978 = add i64 %1977, -436
  %1979 = load i64, i64* %PC.i680
  %1980 = add i64 %1979, 5
  store i64 %1980, i64* %PC.i680
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1978, i64* %1981, align 8
  store %struct.Memory* %loadMem_47a83a, %struct.Memory** %MEMORY
  br label %block_.L_47a686

block_.L_47a83f:                                  ; preds = %block_.L_47a686
  %loadMem_47a83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 33
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %1984 to i64*
  %1985 = load i64, i64* %PC.i679
  %1986 = add i64 %1985, -465
  %1987 = load i64, i64* %PC.i679
  %1988 = add i64 %1987, 5
  store i64 %1988, i64* %PC.i679
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1986, i64* %1989, align 8
  store %struct.Memory* %loadMem_47a83f, %struct.Memory** %MEMORY
  br label %block_.L_47a66e

block_.L_47a844:                                  ; preds = %block_.L_47a66e
  %loadMem_47a844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 33
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %1992 to i64*
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 15
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %RBP.i678 = bitcast %union.anon* %1995 to i64*
  %1996 = load i64, i64* %RBP.i678
  %1997 = sub i64 %1996, 32
  %1998 = load i64, i64* %PC.i677
  %1999 = add i64 %1998, 7
  store i64 %1999, i64* %PC.i677
  %2000 = inttoptr i64 %1997 to i32*
  store i32 21, i32* %2000
  store %struct.Memory* %loadMem_47a844, %struct.Memory** %MEMORY
  br label %block_.L_47a84b

block_.L_47a84b:                                  ; preds = %block_.L_47a90b, %block_.L_47a844
  %loadMem_47a84b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 33
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 15
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %RBP.i676 = bitcast %union.anon* %2006 to i64*
  %2007 = load i64, i64* %RBP.i676
  %2008 = sub i64 %2007, 32
  %2009 = load i64, i64* %PC.i675
  %2010 = add i64 %2009, 7
  store i64 %2010, i64* %PC.i675
  %2011 = inttoptr i64 %2008 to i32*
  %2012 = load i32, i32* %2011
  %2013 = sub i32 %2012, 400
  %2014 = icmp ult i32 %2012, 400
  %2015 = zext i1 %2014 to i8
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2015, i8* %2016, align 1
  %2017 = and i32 %2013, 255
  %2018 = call i32 @llvm.ctpop.i32(i32 %2017)
  %2019 = trunc i32 %2018 to i8
  %2020 = and i8 %2019, 1
  %2021 = xor i8 %2020, 1
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2021, i8* %2022, align 1
  %2023 = xor i32 %2012, 400
  %2024 = xor i32 %2023, %2013
  %2025 = lshr i32 %2024, 4
  %2026 = trunc i32 %2025 to i8
  %2027 = and i8 %2026, 1
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2027, i8* %2028, align 1
  %2029 = icmp eq i32 %2013, 0
  %2030 = zext i1 %2029 to i8
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2030, i8* %2031, align 1
  %2032 = lshr i32 %2013, 31
  %2033 = trunc i32 %2032 to i8
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2033, i8* %2034, align 1
  %2035 = lshr i32 %2012, 31
  %2036 = xor i32 %2032, %2035
  %2037 = add i32 %2036, %2035
  %2038 = icmp eq i32 %2037, 2
  %2039 = zext i1 %2038 to i8
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2039, i8* %2040, align 1
  store %struct.Memory* %loadMem_47a84b, %struct.Memory** %MEMORY
  %loadMem_47a852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 33
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %2043 to i64*
  %2044 = load i64, i64* %PC.i674
  %2045 = add i64 %2044, 199
  %2046 = load i64, i64* %PC.i674
  %2047 = add i64 %2046, 6
  %2048 = load i64, i64* %PC.i674
  %2049 = add i64 %2048, 6
  store i64 %2049, i64* %PC.i674
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2051 = load i8, i8* %2050, align 1
  %2052 = icmp ne i8 %2051, 0
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2054 = load i8, i8* %2053, align 1
  %2055 = icmp ne i8 %2054, 0
  %2056 = xor i1 %2052, %2055
  %2057 = xor i1 %2056, true
  %2058 = zext i1 %2057 to i8
  store i8 %2058, i8* %BRANCH_TAKEN, align 1
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2060 = select i1 %2056, i64 %2047, i64 %2045
  store i64 %2060, i64* %2059, align 8
  store %struct.Memory* %loadMem_47a852, %struct.Memory** %MEMORY
  %loadBr_47a852 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a852 = icmp eq i8 %loadBr_47a852, 1
  br i1 %cmpBr_47a852, label %block_.L_47a919, label %block_47a858

block_47a858:                                     ; preds = %block_.L_47a84b
  %loadMem_47a858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 33
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %2063 to i64*
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 1
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %RAX.i672 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 15
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %RBP.i673 = bitcast %union.anon* %2069 to i64*
  %2070 = load i64, i64* %RBP.i673
  %2071 = sub i64 %2070, 32
  %2072 = load i64, i64* %PC.i671
  %2073 = add i64 %2072, 4
  store i64 %2073, i64* %PC.i671
  %2074 = inttoptr i64 %2071 to i32*
  %2075 = load i32, i32* %2074
  %2076 = sext i32 %2075 to i64
  store i64 %2076, i64* %RAX.i672, align 8
  store %struct.Memory* %loadMem_47a858, %struct.Memory** %MEMORY
  %loadMem_47a85c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 33
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 1
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %RAX.i669 = bitcast %union.anon* %2082 to i64*
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 5
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %RCX.i670 = bitcast %union.anon* %2085 to i64*
  %2086 = load i64, i64* %RAX.i669
  %2087 = add i64 %2086, 12099168
  %2088 = load i64, i64* %PC.i668
  %2089 = add i64 %2088, 8
  store i64 %2089, i64* %PC.i668
  %2090 = inttoptr i64 %2087 to i8*
  %2091 = load i8, i8* %2090
  %2092 = zext i8 %2091 to i64
  store i64 %2092, i64* %RCX.i670, align 8
  store %struct.Memory* %loadMem_47a85c, %struct.Memory** %MEMORY
  %loadMem_47a864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 33
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %2095 to i64*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 5
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %ECX.i666 = bitcast %union.anon* %2098 to i32*
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 15
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %2101 to i64*
  %2102 = load i32, i32* %ECX.i666
  %2103 = zext i32 %2102 to i64
  %2104 = load i64, i64* %RBP.i667
  %2105 = sub i64 %2104, 12
  %2106 = load i64, i64* %PC.i665
  %2107 = add i64 %2106, 3
  store i64 %2107, i64* %PC.i665
  %2108 = inttoptr i64 %2105 to i32*
  %2109 = load i32, i32* %2108
  %2110 = sub i32 %2102, %2109
  %2111 = icmp ult i32 %2102, %2109
  %2112 = zext i1 %2111 to i8
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2112, i8* %2113, align 1
  %2114 = and i32 %2110, 255
  %2115 = call i32 @llvm.ctpop.i32(i32 %2114)
  %2116 = trunc i32 %2115 to i8
  %2117 = and i8 %2116, 1
  %2118 = xor i8 %2117, 1
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2118, i8* %2119, align 1
  %2120 = xor i32 %2109, %2102
  %2121 = xor i32 %2120, %2110
  %2122 = lshr i32 %2121, 4
  %2123 = trunc i32 %2122 to i8
  %2124 = and i8 %2123, 1
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2124, i8* %2125, align 1
  %2126 = icmp eq i32 %2110, 0
  %2127 = zext i1 %2126 to i8
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2127, i8* %2128, align 1
  %2129 = lshr i32 %2110, 31
  %2130 = trunc i32 %2129 to i8
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2130, i8* %2131, align 1
  %2132 = lshr i32 %2102, 31
  %2133 = lshr i32 %2109, 31
  %2134 = xor i32 %2133, %2132
  %2135 = xor i32 %2129, %2132
  %2136 = add i32 %2135, %2134
  %2137 = icmp eq i32 %2136, 2
  %2138 = zext i1 %2137 to i8
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2138, i8* %2139, align 1
  store %struct.Memory* %loadMem_47a864, %struct.Memory** %MEMORY
  %loadMem_47a867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 33
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %2142 to i64*
  %2143 = load i64, i64* %PC.i664
  %2144 = add i64 %2143, 26
  %2145 = load i64, i64* %PC.i664
  %2146 = add i64 %2145, 6
  %2147 = load i64, i64* %PC.i664
  %2148 = add i64 %2147, 6
  store i64 %2148, i64* %PC.i664
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2150 = load i8, i8* %2149, align 1
  %2151 = icmp eq i8 %2150, 0
  %2152 = zext i1 %2151 to i8
  store i8 %2152, i8* %BRANCH_TAKEN, align 1
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2154 = select i1 %2151, i64 %2144, i64 %2146
  store i64 %2154, i64* %2153, align 8
  store %struct.Memory* %loadMem_47a867, %struct.Memory** %MEMORY
  %loadBr_47a867 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a867 = icmp eq i8 %loadBr_47a867, 1
  br i1 %cmpBr_47a867, label %block_.L_47a881, label %block_47a86d

block_47a86d:                                     ; preds = %block_47a858
  %loadMem_47a86d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 33
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %2157 to i64*
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 11
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %RDI.i662 = bitcast %union.anon* %2160 to i64*
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 15
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %2163 to i64*
  %2164 = load i64, i64* %RBP.i663
  %2165 = sub i64 %2164, 32
  %2166 = load i64, i64* %PC.i661
  %2167 = add i64 %2166, 3
  store i64 %2167, i64* %PC.i661
  %2168 = inttoptr i64 %2165 to i32*
  %2169 = load i32, i32* %2168
  %2170 = zext i32 %2169 to i64
  store i64 %2170, i64* %RDI.i662, align 8
  store %struct.Memory* %loadMem_47a86d, %struct.Memory** %MEMORY
  %loadMem_47a870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 33
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %2173 to i64*
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 9
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %RSI.i659 = bitcast %union.anon* %2176 to i64*
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 15
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %2179 to i64*
  %2180 = load i64, i64* %RBP.i660
  %2181 = sub i64 %2180, 32
  %2182 = load i64, i64* %PC.i658
  %2183 = add i64 %2182, 3
  store i64 %2183, i64* %PC.i658
  %2184 = inttoptr i64 %2181 to i32*
  %2185 = load i32, i32* %2184
  %2186 = zext i32 %2185 to i64
  store i64 %2186, i64* %RSI.i659, align 8
  store %struct.Memory* %loadMem_47a870, %struct.Memory** %MEMORY
  %loadMem1_47a873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 33
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %2189 to i64*
  %2190 = load i64, i64* %PC.i657
  %2191 = add i64 %2190, 55421
  %2192 = load i64, i64* %PC.i657
  %2193 = add i64 %2192, 5
  %2194 = load i64, i64* %PC.i657
  %2195 = add i64 %2194, 5
  store i64 %2195, i64* %PC.i657
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2197 = load i64, i64* %2196, align 8
  %2198 = add i64 %2197, -8
  %2199 = inttoptr i64 %2198 to i64*
  store i64 %2193, i64* %2199
  store i64 %2198, i64* %2196, align 8
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2191, i64* %2200, align 8
  store %struct.Memory* %loadMem1_47a873, %struct.Memory** %MEMORY
  %loadMem2_47a873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a873 = load i64, i64* %3
  %call2_47a873 = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64 %loadPC_47a873, %struct.Memory* %loadMem2_47a873)
  store %struct.Memory* %call2_47a873, %struct.Memory** %MEMORY
  %loadMem_47a878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 33
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 1
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %EAX.i656 = bitcast %union.anon* %2206 to i32*
  %2207 = load i32, i32* %EAX.i656
  %2208 = zext i32 %2207 to i64
  %2209 = load i64, i64* %PC.i655
  %2210 = add i64 %2209, 3
  store i64 %2210, i64* %PC.i655
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2211, align 1
  %2212 = and i32 %2207, 255
  %2213 = call i32 @llvm.ctpop.i32(i32 %2212)
  %2214 = trunc i32 %2213 to i8
  %2215 = and i8 %2214, 1
  %2216 = xor i8 %2215, 1
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2216, i8* %2217, align 1
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2218, align 1
  %2219 = icmp eq i32 %2207, 0
  %2220 = zext i1 %2219 to i8
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2220, i8* %2221, align 1
  %2222 = lshr i32 %2207, 31
  %2223 = trunc i32 %2222 to i8
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2223, i8* %2224, align 1
  %2225 = lshr i32 %2207, 31
  %2226 = xor i32 %2222, %2225
  %2227 = add i32 %2226, %2225
  %2228 = icmp eq i32 %2227, 2
  %2229 = zext i1 %2228 to i8
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2229, i8* %2230, align 1
  store %struct.Memory* %loadMem_47a878, %struct.Memory** %MEMORY
  %loadMem_47a87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 33
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %2233 to i64*
  %2234 = load i64, i64* %PC.i654
  %2235 = add i64 %2234, 11
  %2236 = load i64, i64* %PC.i654
  %2237 = add i64 %2236, 6
  %2238 = load i64, i64* %PC.i654
  %2239 = add i64 %2238, 6
  store i64 %2239, i64* %PC.i654
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2241 = load i8, i8* %2240, align 1
  %2242 = icmp eq i8 %2241, 0
  %2243 = zext i1 %2242 to i8
  store i8 %2243, i8* %BRANCH_TAKEN, align 1
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2245 = select i1 %2242, i64 %2235, i64 %2237
  store i64 %2245, i64* %2244, align 8
  store %struct.Memory* %loadMem_47a87b, %struct.Memory** %MEMORY
  %loadBr_47a87b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a87b = icmp eq i8 %loadBr_47a87b, 1
  br i1 %cmpBr_47a87b, label %block_.L_47a886, label %block_.L_47a881

block_.L_47a881:                                  ; preds = %block_47a86d, %block_47a858
  %loadMem_47a881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 33
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %2248 to i64*
  %2249 = load i64, i64* %PC.i653
  %2250 = add i64 %2249, 138
  %2251 = load i64, i64* %PC.i653
  %2252 = add i64 %2251, 5
  store i64 %2252, i64* %PC.i653
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2250, i64* %2253, align 8
  store %struct.Memory* %loadMem_47a881, %struct.Memory** %MEMORY
  br label %block_.L_47a90b

block_.L_47a886:                                  ; preds = %block_47a86d
  %loadMem_47a886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 33
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %2256 to i64*
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 9
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %RSI.i652 = bitcast %union.anon* %2259 to i64*
  %2260 = load i64, i64* %PC.i651
  %2261 = add i64 %2260, 5
  store i64 %2261, i64* %PC.i651
  store i64 241, i64* %RSI.i652, align 8
  store %struct.Memory* %loadMem_47a886, %struct.Memory** %MEMORY
  %loadMem_47a88b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 33
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %2264 to i64*
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 7
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %RDX.i649 = bitcast %union.anon* %2267 to i64*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 15
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %2270 to i64*
  %2271 = load i64, i64* %RBP.i650
  %2272 = sub i64 %2271, 1008
  %2273 = load i64, i64* %PC.i648
  %2274 = add i64 %2273, 7
  store i64 %2274, i64* %PC.i648
  store i64 %2272, i64* %RDX.i649, align 8
  store %struct.Memory* %loadMem_47a88b, %struct.Memory** %MEMORY
  %loadMem_47a892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 33
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %2277 to i64*
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 11
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %RDI.i646 = bitcast %union.anon* %2280 to i64*
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 15
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %2283 to i64*
  %2284 = load i64, i64* %RBP.i647
  %2285 = sub i64 %2284, 32
  %2286 = load i64, i64* %PC.i645
  %2287 = add i64 %2286, 3
  store i64 %2287, i64* %PC.i645
  %2288 = inttoptr i64 %2285 to i32*
  %2289 = load i32, i32* %2288
  %2290 = zext i32 %2289 to i64
  store i64 %2290, i64* %RDI.i646, align 8
  store %struct.Memory* %loadMem_47a892, %struct.Memory** %MEMORY
  %loadMem1_47a895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 33
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %2293 to i64*
  %2294 = load i64, i64* %PC.i644
  %2295 = add i64 %2294, -438357
  %2296 = load i64, i64* %PC.i644
  %2297 = add i64 %2296, 5
  %2298 = load i64, i64* %PC.i644
  %2299 = add i64 %2298, 5
  store i64 %2299, i64* %PC.i644
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2301 = load i64, i64* %2300, align 8
  %2302 = add i64 %2301, -8
  %2303 = inttoptr i64 %2302 to i64*
  store i64 %2297, i64* %2303
  store i64 %2302, i64* %2300, align 8
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2295, i64* %2304, align 8
  store %struct.Memory* %loadMem1_47a895, %struct.Memory** %MEMORY
  %loadMem2_47a895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a895 = load i64, i64* %3
  %call2_47a895 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_47a895, %struct.Memory* %loadMem2_47a895)
  store %struct.Memory* %call2_47a895, %struct.Memory** %MEMORY
  %loadMem_47a89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 33
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %2307 to i64*
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 1
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %EAX.i642 = bitcast %union.anon* %2310 to i32*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 15
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %2313 to i64*
  %2314 = load i64, i64* %RBP.i643
  %2315 = sub i64 %2314, 1012
  %2316 = load i32, i32* %EAX.i642
  %2317 = zext i32 %2316 to i64
  %2318 = load i64, i64* %PC.i641
  %2319 = add i64 %2318, 6
  store i64 %2319, i64* %PC.i641
  %2320 = inttoptr i64 %2315 to i32*
  store i32 %2316, i32* %2320
  store %struct.Memory* %loadMem_47a89a, %struct.Memory** %MEMORY
  %loadMem_47a8a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 33
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %2323 to i64*
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 15
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %2326 to i64*
  %2327 = load i64, i64* %RBP.i640
  %2328 = sub i64 %2327, 36
  %2329 = load i64, i64* %PC.i639
  %2330 = add i64 %2329, 7
  store i64 %2330, i64* %PC.i639
  %2331 = inttoptr i64 %2328 to i32*
  store i32 0, i32* %2331
  store %struct.Memory* %loadMem_47a8a0, %struct.Memory** %MEMORY
  br label %block_.L_47a8a7

block_.L_47a8a7:                                  ; preds = %block_.L_47a8f8, %block_.L_47a886
  %loadMem_47a8a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 33
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %2334 to i64*
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 1
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %RAX.i637 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 15
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %2340 to i64*
  %2341 = load i64, i64* %RBP.i638
  %2342 = sub i64 %2341, 36
  %2343 = load i64, i64* %PC.i636
  %2344 = add i64 %2343, 3
  store i64 %2344, i64* %PC.i636
  %2345 = inttoptr i64 %2342 to i32*
  %2346 = load i32, i32* %2345
  %2347 = zext i32 %2346 to i64
  store i64 %2347, i64* %RAX.i637, align 8
  store %struct.Memory* %loadMem_47a8a7, %struct.Memory** %MEMORY
  %loadMem_47a8aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 33
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %2350 to i64*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 1
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %EAX.i634 = bitcast %union.anon* %2353 to i32*
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 15
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %RBP.i635 = bitcast %union.anon* %2356 to i64*
  %2357 = load i32, i32* %EAX.i634
  %2358 = zext i32 %2357 to i64
  %2359 = load i64, i64* %RBP.i635
  %2360 = sub i64 %2359, 1012
  %2361 = load i64, i64* %PC.i633
  %2362 = add i64 %2361, 6
  store i64 %2362, i64* %PC.i633
  %2363 = inttoptr i64 %2360 to i32*
  %2364 = load i32, i32* %2363
  %2365 = sub i32 %2357, %2364
  %2366 = icmp ult i32 %2357, %2364
  %2367 = zext i1 %2366 to i8
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2367, i8* %2368, align 1
  %2369 = and i32 %2365, 255
  %2370 = call i32 @llvm.ctpop.i32(i32 %2369)
  %2371 = trunc i32 %2370 to i8
  %2372 = and i8 %2371, 1
  %2373 = xor i8 %2372, 1
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2373, i8* %2374, align 1
  %2375 = xor i32 %2364, %2357
  %2376 = xor i32 %2375, %2365
  %2377 = lshr i32 %2376, 4
  %2378 = trunc i32 %2377 to i8
  %2379 = and i8 %2378, 1
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2379, i8* %2380, align 1
  %2381 = icmp eq i32 %2365, 0
  %2382 = zext i1 %2381 to i8
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2382, i8* %2383, align 1
  %2384 = lshr i32 %2365, 31
  %2385 = trunc i32 %2384 to i8
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2385, i8* %2386, align 1
  %2387 = lshr i32 %2357, 31
  %2388 = lshr i32 %2364, 31
  %2389 = xor i32 %2388, %2387
  %2390 = xor i32 %2384, %2387
  %2391 = add i32 %2390, %2389
  %2392 = icmp eq i32 %2391, 2
  %2393 = zext i1 %2392 to i8
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2393, i8* %2394, align 1
  store %struct.Memory* %loadMem_47a8aa, %struct.Memory** %MEMORY
  %loadMem_47a8b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 33
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %2397 to i64*
  %2398 = load i64, i64* %PC.i632
  %2399 = add i64 %2398, 86
  %2400 = load i64, i64* %PC.i632
  %2401 = add i64 %2400, 6
  %2402 = load i64, i64* %PC.i632
  %2403 = add i64 %2402, 6
  store i64 %2403, i64* %PC.i632
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2405 = load i8, i8* %2404, align 1
  %2406 = icmp ne i8 %2405, 0
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2408 = load i8, i8* %2407, align 1
  %2409 = icmp ne i8 %2408, 0
  %2410 = xor i1 %2406, %2409
  %2411 = xor i1 %2410, true
  %2412 = zext i1 %2411 to i8
  store i8 %2412, i8* %BRANCH_TAKEN, align 1
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2414 = select i1 %2410, i64 %2401, i64 %2399
  store i64 %2414, i64* %2413, align 8
  store %struct.Memory* %loadMem_47a8b0, %struct.Memory** %MEMORY
  %loadBr_47a8b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a8b0 = icmp eq i8 %loadBr_47a8b0, 1
  br i1 %cmpBr_47a8b0, label %block_.L_47a906, label %block_47a8b6

block_47a8b6:                                     ; preds = %block_.L_47a8a7
  %loadMem_47a8b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 33
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %2417 to i64*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 7
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %RDX.i631 = bitcast %union.anon* %2420 to i64*
  %2421 = load i64, i64* %PC.i630
  %2422 = add i64 %2421, 10
  store i64 %2422, i64* %PC.i630
  store i64 ptrtoint (%G__0x581cc1_type* @G__0x581cc1 to i64), i64* %RDX.i631, align 8
  store %struct.Memory* %loadMem_47a8b6, %struct.Memory** %MEMORY
  %loadMem_47a8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 33
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %2425 to i64*
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 1
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %EAX.i628 = bitcast %union.anon* %2428 to i32*
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 1
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %RAX.i629 = bitcast %union.anon* %2431 to i64*
  %2432 = load i64, i64* %RAX.i629
  %2433 = load i32, i32* %EAX.i628
  %2434 = zext i32 %2433 to i64
  %2435 = load i64, i64* %PC.i627
  %2436 = add i64 %2435, 2
  store i64 %2436, i64* %PC.i627
  %2437 = xor i64 %2434, %2432
  %2438 = trunc i64 %2437 to i32
  %2439 = and i64 %2437, 4294967295
  store i64 %2439, i64* %RAX.i629, align 8
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2440, align 1
  %2441 = and i32 %2438, 255
  %2442 = call i32 @llvm.ctpop.i32(i32 %2441)
  %2443 = trunc i32 %2442 to i8
  %2444 = and i8 %2443, 1
  %2445 = xor i8 %2444, 1
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2445, i8* %2446, align 1
  %2447 = icmp eq i32 %2438, 0
  %2448 = zext i1 %2447 to i8
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2448, i8* %2449, align 1
  %2450 = lshr i32 %2438, 31
  %2451 = trunc i32 %2450 to i8
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2451, i8* %2452, align 1
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2453, align 1
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2454, align 1
  store %struct.Memory* %loadMem_47a8c0, %struct.Memory** %MEMORY
  %loadMem_47a8c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2456 = getelementptr inbounds %struct.GPR, %struct.GPR* %2455, i32 0, i32 33
  %2457 = getelementptr inbounds %struct.Reg, %struct.Reg* %2456, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %2457 to i64*
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 5
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %RCX.i625 = bitcast %union.anon* %2460 to i64*
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 15
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %2463 to i64*
  %2464 = load i64, i64* %RBP.i626
  %2465 = sub i64 %2464, 36
  %2466 = load i64, i64* %PC.i624
  %2467 = add i64 %2466, 4
  store i64 %2467, i64* %PC.i624
  %2468 = inttoptr i64 %2465 to i32*
  %2469 = load i32, i32* %2468
  %2470 = sext i32 %2469 to i64
  store i64 %2470, i64* %RCX.i625, align 8
  store %struct.Memory* %loadMem_47a8c2, %struct.Memory** %MEMORY
  %loadMem_47a8c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 33
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %2473 to i64*
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 5
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %RCX.i621 = bitcast %union.anon* %2476 to i64*
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 11
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %RDI.i622 = bitcast %union.anon* %2479 to i64*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 15
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %2482 to i64*
  %2483 = load i64, i64* %RBP.i623
  %2484 = load i64, i64* %RCX.i621
  %2485 = mul i64 %2484, 4
  %2486 = add i64 %2483, -1008
  %2487 = add i64 %2486, %2485
  %2488 = load i64, i64* %PC.i620
  %2489 = add i64 %2488, 7
  store i64 %2489, i64* %PC.i620
  %2490 = inttoptr i64 %2487 to i32*
  %2491 = load i32, i32* %2490
  %2492 = zext i32 %2491 to i64
  store i64 %2492, i64* %RDI.i622, align 8
  store %struct.Memory* %loadMem_47a8c6, %struct.Memory** %MEMORY
  %loadMem_47a8cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 33
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %2495 to i64*
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 9
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %RSI.i618 = bitcast %union.anon* %2498 to i64*
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 15
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %2501 to i64*
  %2502 = load i64, i64* %RBP.i619
  %2503 = sub i64 %2502, 1016
  %2504 = load i64, i64* %PC.i617
  %2505 = add i64 %2504, 6
  store i64 %2505, i64* %PC.i617
  %2506 = inttoptr i64 %2503 to i32*
  %2507 = load i32, i32* %2506
  %2508 = zext i32 %2507 to i64
  store i64 %2508, i64* %RSI.i618, align 8
  store %struct.Memory* %loadMem_47a8cd, %struct.Memory** %MEMORY
  %loadMem_47a8d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 33
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %2511 to i64*
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 5
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %RCX.i615 = bitcast %union.anon* %2514 to i64*
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 15
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %RBP.i616 = bitcast %union.anon* %2517 to i64*
  %2518 = load i64, i64* %RBP.i616
  %2519 = sub i64 %2518, 32
  %2520 = load i64, i64* %PC.i614
  %2521 = add i64 %2520, 3
  store i64 %2521, i64* %PC.i614
  %2522 = inttoptr i64 %2519 to i32*
  %2523 = load i32, i32* %2522
  %2524 = zext i32 %2523 to i64
  store i64 %2524, i64* %RCX.i615, align 8
  store %struct.Memory* %loadMem_47a8d3, %struct.Memory** %MEMORY
  %loadMem_47a8d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 33
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %2527 to i64*
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 1
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %EAX.i612 = bitcast %union.anon* %2530 to i32*
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 17
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %R8D.i613 = bitcast %union.anon* %2533 to i32*
  %2534 = bitcast i32* %R8D.i613 to i64*
  %2535 = load i32, i32* %EAX.i612
  %2536 = zext i32 %2535 to i64
  %2537 = load i64, i64* %PC.i611
  %2538 = add i64 %2537, 3
  store i64 %2538, i64* %PC.i611
  %2539 = and i64 %2536, 4294967295
  store i64 %2539, i64* %2534, align 8
  store %struct.Memory* %loadMem_47a8d6, %struct.Memory** %MEMORY
  %loadMem_47a8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 33
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 1
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %EAX.i609 = bitcast %union.anon* %2545 to i32*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 19
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %R9D.i610 = bitcast %union.anon* %2548 to i32*
  %2549 = bitcast i32* %R9D.i610 to i64*
  %2550 = load i32, i32* %EAX.i609
  %2551 = zext i32 %2550 to i64
  %2552 = load i64, i64* %PC.i608
  %2553 = add i64 %2552, 3
  store i64 %2553, i64* %PC.i608
  %2554 = and i64 %2551, 4294967295
  store i64 %2554, i64* %2549, align 8
  store %struct.Memory* %loadMem_47a8d9, %struct.Memory** %MEMORY
  %loadMem1_47a8dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 33
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %2557 to i64*
  %2558 = load i64, i64* %PC.i607
  %2559 = add i64 %2558, -465580
  %2560 = load i64, i64* %PC.i607
  %2561 = add i64 %2560, 5
  %2562 = load i64, i64* %PC.i607
  %2563 = add i64 %2562, 5
  store i64 %2563, i64* %PC.i607
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2565 = load i64, i64* %2564, align 8
  %2566 = add i64 %2565, -8
  %2567 = inttoptr i64 %2566 to i64*
  store i64 %2561, i64* %2567
  store i64 %2566, i64* %2564, align 8
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2559, i64* %2568, align 8
  store %struct.Memory* %loadMem1_47a8dc, %struct.Memory** %MEMORY
  %loadMem2_47a8dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a8dc = load i64, i64* %3
  %call2_47a8dc = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_47a8dc, %struct.Memory* %loadMem2_47a8dc)
  store %struct.Memory* %call2_47a8dc, %struct.Memory** %MEMORY
  %loadMem_47a8e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2570 = getelementptr inbounds %struct.GPR, %struct.GPR* %2569, i32 0, i32 33
  %2571 = getelementptr inbounds %struct.Reg, %struct.Reg* %2570, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %2571 to i64*
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 1
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %EAX.i606 = bitcast %union.anon* %2574 to i32*
  %2575 = load i32, i32* %EAX.i606
  %2576 = zext i32 %2575 to i64
  %2577 = load i64, i64* %PC.i605
  %2578 = add i64 %2577, 3
  store i64 %2578, i64* %PC.i605
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2579, align 1
  %2580 = and i32 %2575, 255
  %2581 = call i32 @llvm.ctpop.i32(i32 %2580)
  %2582 = trunc i32 %2581 to i8
  %2583 = and i8 %2582, 1
  %2584 = xor i8 %2583, 1
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2584, i8* %2585, align 1
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2586, align 1
  %2587 = icmp eq i32 %2575, 0
  %2588 = zext i1 %2587 to i8
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2588, i8* %2589, align 1
  %2590 = lshr i32 %2575, 31
  %2591 = trunc i32 %2590 to i8
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2591, i8* %2592, align 1
  %2593 = lshr i32 %2575, 31
  %2594 = xor i32 %2590, %2593
  %2595 = add i32 %2594, %2593
  %2596 = icmp eq i32 %2595, 2
  %2597 = zext i1 %2596 to i8
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2597, i8* %2598, align 1
  store %struct.Memory* %loadMem_47a8e1, %struct.Memory** %MEMORY
  %loadMem_47a8e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 33
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %2601 to i64*
  %2602 = load i64, i64* %PC.i604
  %2603 = add i64 %2602, 15
  %2604 = load i64, i64* %PC.i604
  %2605 = add i64 %2604, 6
  %2606 = load i64, i64* %PC.i604
  %2607 = add i64 %2606, 6
  store i64 %2607, i64* %PC.i604
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2609 = load i8, i8* %2608, align 1
  store i8 %2609, i8* %BRANCH_TAKEN, align 1
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2611 = icmp ne i8 %2609, 0
  %2612 = select i1 %2611, i64 %2603, i64 %2605
  store i64 %2612, i64* %2610, align 8
  store %struct.Memory* %loadMem_47a8e4, %struct.Memory** %MEMORY
  %loadBr_47a8e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a8e4 = icmp eq i8 %loadBr_47a8e4, 1
  br i1 %cmpBr_47a8e4, label %block_.L_47a8f3, label %block_47a8ea

block_47a8ea:                                     ; preds = %block_47a8b6
  %loadMem_47a8ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 33
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %2615 to i64*
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 1
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %2618 to i64*
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 15
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %2621 to i64*
  %2622 = load i64, i64* %RBP.i603
  %2623 = sub i64 %2622, 24
  %2624 = load i64, i64* %PC.i601
  %2625 = add i64 %2624, 3
  store i64 %2625, i64* %PC.i601
  %2626 = inttoptr i64 %2623 to i32*
  %2627 = load i32, i32* %2626
  %2628 = zext i32 %2627 to i64
  store i64 %2628, i64* %RAX.i602, align 8
  store %struct.Memory* %loadMem_47a8ea, %struct.Memory** %MEMORY
  %loadMem_47a8ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 33
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %2631 to i64*
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2633 = getelementptr inbounds %struct.GPR, %struct.GPR* %2632, i32 0, i32 1
  %2634 = getelementptr inbounds %struct.Reg, %struct.Reg* %2633, i32 0, i32 0
  %RAX.i600 = bitcast %union.anon* %2634 to i64*
  %2635 = load i64, i64* %RAX.i600
  %2636 = load i64, i64* %PC.i599
  %2637 = add i64 %2636, 3
  store i64 %2637, i64* %PC.i599
  %2638 = trunc i64 %2635 to i32
  %2639 = add i32 1, %2638
  %2640 = zext i32 %2639 to i64
  store i64 %2640, i64* %RAX.i600, align 8
  %2641 = icmp ult i32 %2639, %2638
  %2642 = icmp ult i32 %2639, 1
  %2643 = or i1 %2641, %2642
  %2644 = zext i1 %2643 to i8
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2644, i8* %2645, align 1
  %2646 = and i32 %2639, 255
  %2647 = call i32 @llvm.ctpop.i32(i32 %2646)
  %2648 = trunc i32 %2647 to i8
  %2649 = and i8 %2648, 1
  %2650 = xor i8 %2649, 1
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2650, i8* %2651, align 1
  %2652 = xor i64 1, %2635
  %2653 = trunc i64 %2652 to i32
  %2654 = xor i32 %2653, %2639
  %2655 = lshr i32 %2654, 4
  %2656 = trunc i32 %2655 to i8
  %2657 = and i8 %2656, 1
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2657, i8* %2658, align 1
  %2659 = icmp eq i32 %2639, 0
  %2660 = zext i1 %2659 to i8
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2660, i8* %2661, align 1
  %2662 = lshr i32 %2639, 31
  %2663 = trunc i32 %2662 to i8
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2663, i8* %2664, align 1
  %2665 = lshr i32 %2638, 31
  %2666 = xor i32 %2662, %2665
  %2667 = add i32 %2666, %2662
  %2668 = icmp eq i32 %2667, 2
  %2669 = zext i1 %2668 to i8
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2669, i8* %2670, align 1
  store %struct.Memory* %loadMem_47a8ed, %struct.Memory** %MEMORY
  %loadMem_47a8f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 33
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %2673 to i64*
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 1
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %EAX.i597 = bitcast %union.anon* %2676 to i32*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 15
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %2679 to i64*
  %2680 = load i64, i64* %RBP.i598
  %2681 = sub i64 %2680, 24
  %2682 = load i32, i32* %EAX.i597
  %2683 = zext i32 %2682 to i64
  %2684 = load i64, i64* %PC.i596
  %2685 = add i64 %2684, 3
  store i64 %2685, i64* %PC.i596
  %2686 = inttoptr i64 %2681 to i32*
  store i32 %2682, i32* %2686
  store %struct.Memory* %loadMem_47a8f0, %struct.Memory** %MEMORY
  br label %block_.L_47a8f3

block_.L_47a8f3:                                  ; preds = %block_47a8ea, %block_47a8b6
  %loadMem_47a8f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2688 = getelementptr inbounds %struct.GPR, %struct.GPR* %2687, i32 0, i32 33
  %2689 = getelementptr inbounds %struct.Reg, %struct.Reg* %2688, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %2689 to i64*
  %2690 = load i64, i64* %PC.i595
  %2691 = add i64 %2690, 5
  %2692 = load i64, i64* %PC.i595
  %2693 = add i64 %2692, 5
  store i64 %2693, i64* %PC.i595
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2691, i64* %2694, align 8
  store %struct.Memory* %loadMem_47a8f3, %struct.Memory** %MEMORY
  br label %block_.L_47a8f8

block_.L_47a8f8:                                  ; preds = %block_.L_47a8f3
  %loadMem_47a8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 33
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %2697 to i64*
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 1
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %RAX.i593 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 15
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RBP.i594 = bitcast %union.anon* %2703 to i64*
  %2704 = load i64, i64* %RBP.i594
  %2705 = sub i64 %2704, 36
  %2706 = load i64, i64* %PC.i592
  %2707 = add i64 %2706, 3
  store i64 %2707, i64* %PC.i592
  %2708 = inttoptr i64 %2705 to i32*
  %2709 = load i32, i32* %2708
  %2710 = zext i32 %2709 to i64
  store i64 %2710, i64* %RAX.i593, align 8
  store %struct.Memory* %loadMem_47a8f8, %struct.Memory** %MEMORY
  %loadMem_47a8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 33
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %2713 to i64*
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 1
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %RAX.i591 = bitcast %union.anon* %2716 to i64*
  %2717 = load i64, i64* %RAX.i591
  %2718 = load i64, i64* %PC.i590
  %2719 = add i64 %2718, 3
  store i64 %2719, i64* %PC.i590
  %2720 = trunc i64 %2717 to i32
  %2721 = add i32 1, %2720
  %2722 = zext i32 %2721 to i64
  store i64 %2722, i64* %RAX.i591, align 8
  %2723 = icmp ult i32 %2721, %2720
  %2724 = icmp ult i32 %2721, 1
  %2725 = or i1 %2723, %2724
  %2726 = zext i1 %2725 to i8
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2726, i8* %2727, align 1
  %2728 = and i32 %2721, 255
  %2729 = call i32 @llvm.ctpop.i32(i32 %2728)
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = xor i8 %2731, 1
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2732, i8* %2733, align 1
  %2734 = xor i64 1, %2717
  %2735 = trunc i64 %2734 to i32
  %2736 = xor i32 %2735, %2721
  %2737 = lshr i32 %2736, 4
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2739, i8* %2740, align 1
  %2741 = icmp eq i32 %2721, 0
  %2742 = zext i1 %2741 to i8
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2742, i8* %2743, align 1
  %2744 = lshr i32 %2721, 31
  %2745 = trunc i32 %2744 to i8
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2745, i8* %2746, align 1
  %2747 = lshr i32 %2720, 31
  %2748 = xor i32 %2744, %2747
  %2749 = add i32 %2748, %2744
  %2750 = icmp eq i32 %2749, 2
  %2751 = zext i1 %2750 to i8
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2751, i8* %2752, align 1
  store %struct.Memory* %loadMem_47a8fb, %struct.Memory** %MEMORY
  %loadMem_47a8fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 33
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %2755 to i64*
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 1
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %EAX.i588 = bitcast %union.anon* %2758 to i32*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 15
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %2761 to i64*
  %2762 = load i64, i64* %RBP.i589
  %2763 = sub i64 %2762, 36
  %2764 = load i32, i32* %EAX.i588
  %2765 = zext i32 %2764 to i64
  %2766 = load i64, i64* %PC.i587
  %2767 = add i64 %2766, 3
  store i64 %2767, i64* %PC.i587
  %2768 = inttoptr i64 %2763 to i32*
  store i32 %2764, i32* %2768
  store %struct.Memory* %loadMem_47a8fe, %struct.Memory** %MEMORY
  %loadMem_47a901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 33
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %2771 to i64*
  %2772 = load i64, i64* %PC.i586
  %2773 = add i64 %2772, -90
  %2774 = load i64, i64* %PC.i586
  %2775 = add i64 %2774, 5
  store i64 %2775, i64* %PC.i586
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2773, i64* %2776, align 8
  store %struct.Memory* %loadMem_47a901, %struct.Memory** %MEMORY
  br label %block_.L_47a8a7

block_.L_47a906:                                  ; preds = %block_.L_47a8a7
  %loadMem_47a906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 33
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %2779 to i64*
  %2780 = load i64, i64* %PC.i585
  %2781 = add i64 %2780, 5
  %2782 = load i64, i64* %PC.i585
  %2783 = add i64 %2782, 5
  store i64 %2783, i64* %PC.i585
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2781, i64* %2784, align 8
  store %struct.Memory* %loadMem_47a906, %struct.Memory** %MEMORY
  br label %block_.L_47a90b

block_.L_47a90b:                                  ; preds = %block_.L_47a906, %block_.L_47a881
  %loadMem_47a90b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 33
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %2787 to i64*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 1
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %2790 to i64*
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2792 = getelementptr inbounds %struct.GPR, %struct.GPR* %2791, i32 0, i32 15
  %2793 = getelementptr inbounds %struct.Reg, %struct.Reg* %2792, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %2793 to i64*
  %2794 = load i64, i64* %RBP.i584
  %2795 = sub i64 %2794, 32
  %2796 = load i64, i64* %PC.i582
  %2797 = add i64 %2796, 3
  store i64 %2797, i64* %PC.i582
  %2798 = inttoptr i64 %2795 to i32*
  %2799 = load i32, i32* %2798
  %2800 = zext i32 %2799 to i64
  store i64 %2800, i64* %RAX.i583, align 8
  store %struct.Memory* %loadMem_47a90b, %struct.Memory** %MEMORY
  %loadMem_47a90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 33
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %2803 to i64*
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 1
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %RAX.i581 = bitcast %union.anon* %2806 to i64*
  %2807 = load i64, i64* %RAX.i581
  %2808 = load i64, i64* %PC.i580
  %2809 = add i64 %2808, 3
  store i64 %2809, i64* %PC.i580
  %2810 = trunc i64 %2807 to i32
  %2811 = add i32 1, %2810
  %2812 = zext i32 %2811 to i64
  store i64 %2812, i64* %RAX.i581, align 8
  %2813 = icmp ult i32 %2811, %2810
  %2814 = icmp ult i32 %2811, 1
  %2815 = or i1 %2813, %2814
  %2816 = zext i1 %2815 to i8
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2816, i8* %2817, align 1
  %2818 = and i32 %2811, 255
  %2819 = call i32 @llvm.ctpop.i32(i32 %2818)
  %2820 = trunc i32 %2819 to i8
  %2821 = and i8 %2820, 1
  %2822 = xor i8 %2821, 1
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2822, i8* %2823, align 1
  %2824 = xor i64 1, %2807
  %2825 = trunc i64 %2824 to i32
  %2826 = xor i32 %2825, %2811
  %2827 = lshr i32 %2826, 4
  %2828 = trunc i32 %2827 to i8
  %2829 = and i8 %2828, 1
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2829, i8* %2830, align 1
  %2831 = icmp eq i32 %2811, 0
  %2832 = zext i1 %2831 to i8
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2832, i8* %2833, align 1
  %2834 = lshr i32 %2811, 31
  %2835 = trunc i32 %2834 to i8
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2835, i8* %2836, align 1
  %2837 = lshr i32 %2810, 31
  %2838 = xor i32 %2834, %2837
  %2839 = add i32 %2838, %2834
  %2840 = icmp eq i32 %2839, 2
  %2841 = zext i1 %2840 to i8
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2841, i8* %2842, align 1
  store %struct.Memory* %loadMem_47a90e, %struct.Memory** %MEMORY
  %loadMem_47a911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 33
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %2845 to i64*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 1
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %EAX.i578 = bitcast %union.anon* %2848 to i32*
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 15
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %2851 to i64*
  %2852 = load i64, i64* %RBP.i579
  %2853 = sub i64 %2852, 32
  %2854 = load i32, i32* %EAX.i578
  %2855 = zext i32 %2854 to i64
  %2856 = load i64, i64* %PC.i577
  %2857 = add i64 %2856, 3
  store i64 %2857, i64* %PC.i577
  %2858 = inttoptr i64 %2853 to i32*
  store i32 %2854, i32* %2858
  store %struct.Memory* %loadMem_47a911, %struct.Memory** %MEMORY
  %loadMem_47a914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 33
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %2861 to i64*
  %2862 = load i64, i64* %PC.i576
  %2863 = add i64 %2862, -201
  %2864 = load i64, i64* %PC.i576
  %2865 = add i64 %2864, 5
  store i64 %2865, i64* %PC.i576
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2863, i64* %2866, align 8
  store %struct.Memory* %loadMem_47a914, %struct.Memory** %MEMORY
  br label %block_.L_47a84b

block_.L_47a919:                                  ; preds = %block_.L_47a84b
  %loadMem_47a919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 33
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %2869 to i64*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 15
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %2872 to i64*
  %2873 = load i64, i64* %RBP.i575
  %2874 = sub i64 %2873, 20
  %2875 = load i64, i64* %PC.i574
  %2876 = add i64 %2875, 7
  store i64 %2876, i64* %PC.i574
  %2877 = inttoptr i64 %2874 to i32*
  store i32 1, i32* %2877
  store %struct.Memory* %loadMem_47a919, %struct.Memory** %MEMORY
  br label %block_.L_47a920

block_.L_47a920:                                  ; preds = %block_.L_47a9f3, %block_.L_47a919
  %loadMem_47a920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 33
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %2880 to i64*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 15
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %2883 to i64*
  %2884 = load i64, i64* %RBP.i573
  %2885 = sub i64 %2884, 20
  %2886 = load i64, i64* %PC.i572
  %2887 = add i64 %2886, 4
  store i64 %2887, i64* %PC.i572
  %2888 = inttoptr i64 %2885 to i32*
  %2889 = load i32, i32* %2888
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2890, align 1
  %2891 = and i32 %2889, 255
  %2892 = call i32 @llvm.ctpop.i32(i32 %2891)
  %2893 = trunc i32 %2892 to i8
  %2894 = and i8 %2893, 1
  %2895 = xor i8 %2894, 1
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2895, i8* %2896, align 1
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2897, align 1
  %2898 = icmp eq i32 %2889, 0
  %2899 = zext i1 %2898 to i8
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2899, i8* %2900, align 1
  %2901 = lshr i32 %2889, 31
  %2902 = trunc i32 %2901 to i8
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2902, i8* %2903, align 1
  %2904 = lshr i32 %2889, 31
  %2905 = xor i32 %2901, %2904
  %2906 = add i32 %2905, %2904
  %2907 = icmp eq i32 %2906, 2
  %2908 = zext i1 %2907 to i8
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2908, i8* %2909, align 1
  store %struct.Memory* %loadMem_47a920, %struct.Memory** %MEMORY
  %loadMem_47a924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 33
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %2912 to i64*
  %2913 = load i64, i64* %PC.i571
  %2914 = add i64 %2913, 212
  %2915 = load i64, i64* %PC.i571
  %2916 = add i64 %2915, 6
  %2917 = load i64, i64* %PC.i571
  %2918 = add i64 %2917, 6
  store i64 %2918, i64* %PC.i571
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2920 = load i8, i8* %2919, align 1
  store i8 %2920, i8* %BRANCH_TAKEN, align 1
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2922 = icmp ne i8 %2920, 0
  %2923 = select i1 %2922, i64 %2914, i64 %2916
  store i64 %2923, i64* %2921, align 8
  store %struct.Memory* %loadMem_47a924, %struct.Memory** %MEMORY
  %loadBr_47a924 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a924 = icmp eq i8 %loadBr_47a924, 1
  br i1 %cmpBr_47a924, label %block_.L_47a9f8, label %block_47a92a

block_47a92a:                                     ; preds = %block_.L_47a920
  %loadMem_47a92a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 33
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %2926 to i64*
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 15
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %RBP.i570 = bitcast %union.anon* %2929 to i64*
  %2930 = load i64, i64* %RBP.i570
  %2931 = sub i64 %2930, 20
  %2932 = load i64, i64* %PC.i569
  %2933 = add i64 %2932, 7
  store i64 %2933, i64* %PC.i569
  %2934 = inttoptr i64 %2931 to i32*
  store i32 0, i32* %2934
  store %struct.Memory* %loadMem_47a92a, %struct.Memory** %MEMORY
  %loadMem_47a931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 33
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %2937 to i64*
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 15
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %2940 to i64*
  %2941 = load i64, i64* %RBP.i568
  %2942 = sub i64 %2941, 32
  %2943 = load i64, i64* %PC.i567
  %2944 = add i64 %2943, 7
  store i64 %2944, i64* %PC.i567
  %2945 = inttoptr i64 %2942 to i32*
  store i32 21, i32* %2945
  store %struct.Memory* %loadMem_47a931, %struct.Memory** %MEMORY
  br label %block_.L_47a938

block_.L_47a938:                                  ; preds = %block_.L_47a9e5, %block_47a92a
  %loadMem_47a938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 33
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %2948 to i64*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 15
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %RBP.i566 = bitcast %union.anon* %2951 to i64*
  %2952 = load i64, i64* %RBP.i566
  %2953 = sub i64 %2952, 32
  %2954 = load i64, i64* %PC.i565
  %2955 = add i64 %2954, 7
  store i64 %2955, i64* %PC.i565
  %2956 = inttoptr i64 %2953 to i32*
  %2957 = load i32, i32* %2956
  %2958 = sub i32 %2957, 400
  %2959 = icmp ult i32 %2957, 400
  %2960 = zext i1 %2959 to i8
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2960, i8* %2961, align 1
  %2962 = and i32 %2958, 255
  %2963 = call i32 @llvm.ctpop.i32(i32 %2962)
  %2964 = trunc i32 %2963 to i8
  %2965 = and i8 %2964, 1
  %2966 = xor i8 %2965, 1
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2966, i8* %2967, align 1
  %2968 = xor i32 %2957, 400
  %2969 = xor i32 %2968, %2958
  %2970 = lshr i32 %2969, 4
  %2971 = trunc i32 %2970 to i8
  %2972 = and i8 %2971, 1
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2972, i8* %2973, align 1
  %2974 = icmp eq i32 %2958, 0
  %2975 = zext i1 %2974 to i8
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2975, i8* %2976, align 1
  %2977 = lshr i32 %2958, 31
  %2978 = trunc i32 %2977 to i8
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2978, i8* %2979, align 1
  %2980 = lshr i32 %2957, 31
  %2981 = xor i32 %2977, %2980
  %2982 = add i32 %2981, %2980
  %2983 = icmp eq i32 %2982, 2
  %2984 = zext i1 %2983 to i8
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2984, i8* %2985, align 1
  store %struct.Memory* %loadMem_47a938, %struct.Memory** %MEMORY
  %loadMem_47a93f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 33
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %2988 to i64*
  %2989 = load i64, i64* %PC.i564
  %2990 = add i64 %2989, 180
  %2991 = load i64, i64* %PC.i564
  %2992 = add i64 %2991, 6
  %2993 = load i64, i64* %PC.i564
  %2994 = add i64 %2993, 6
  store i64 %2994, i64* %PC.i564
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2996 = load i8, i8* %2995, align 1
  %2997 = icmp ne i8 %2996, 0
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2999 = load i8, i8* %2998, align 1
  %3000 = icmp ne i8 %2999, 0
  %3001 = xor i1 %2997, %3000
  %3002 = xor i1 %3001, true
  %3003 = zext i1 %3002 to i8
  store i8 %3003, i8* %BRANCH_TAKEN, align 1
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3005 = select i1 %3001, i64 %2992, i64 %2990
  store i64 %3005, i64* %3004, align 8
  store %struct.Memory* %loadMem_47a93f, %struct.Memory** %MEMORY
  %loadBr_47a93f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a93f = icmp eq i8 %loadBr_47a93f, 1
  br i1 %cmpBr_47a93f, label %block_.L_47a9f3, label %block_47a945

block_47a945:                                     ; preds = %block_.L_47a938
  %loadMem_47a945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 33
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %3008 to i64*
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 1
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %3011 to i64*
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3013 = getelementptr inbounds %struct.GPR, %struct.GPR* %3012, i32 0, i32 15
  %3014 = getelementptr inbounds %struct.Reg, %struct.Reg* %3013, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %3014 to i64*
  %3015 = load i64, i64* %RBP.i563
  %3016 = sub i64 %3015, 32
  %3017 = load i64, i64* %PC.i561
  %3018 = add i64 %3017, 4
  store i64 %3018, i64* %PC.i561
  %3019 = inttoptr i64 %3016 to i32*
  %3020 = load i32, i32* %3019
  %3021 = sext i32 %3020 to i64
  store i64 %3021, i64* %RAX.i562, align 8
  store %struct.Memory* %loadMem_47a945, %struct.Memory** %MEMORY
  %loadMem_47a949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 33
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %3024 to i64*
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 1
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %RAX.i559 = bitcast %union.anon* %3027 to i64*
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 5
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %RCX.i560 = bitcast %union.anon* %3030 to i64*
  %3031 = load i64, i64* %RAX.i559
  %3032 = add i64 %3031, 12099168
  %3033 = load i64, i64* %PC.i558
  %3034 = add i64 %3033, 8
  store i64 %3034, i64* %PC.i558
  %3035 = inttoptr i64 %3032 to i8*
  %3036 = load i8, i8* %3035
  %3037 = zext i8 %3036 to i64
  store i64 %3037, i64* %RCX.i560, align 8
  store %struct.Memory* %loadMem_47a949, %struct.Memory** %MEMORY
  %loadMem_47a951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 33
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %3040 to i64*
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 5
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %ECX.i556 = bitcast %union.anon* %3043 to i32*
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 15
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %3046 to i64*
  %3047 = load i32, i32* %ECX.i556
  %3048 = zext i32 %3047 to i64
  %3049 = load i64, i64* %RBP.i557
  %3050 = sub i64 %3049, 1016
  %3051 = load i64, i64* %PC.i555
  %3052 = add i64 %3051, 6
  store i64 %3052, i64* %PC.i555
  %3053 = inttoptr i64 %3050 to i32*
  %3054 = load i32, i32* %3053
  %3055 = sub i32 %3047, %3054
  %3056 = icmp ult i32 %3047, %3054
  %3057 = zext i1 %3056 to i8
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3057, i8* %3058, align 1
  %3059 = and i32 %3055, 255
  %3060 = call i32 @llvm.ctpop.i32(i32 %3059)
  %3061 = trunc i32 %3060 to i8
  %3062 = and i8 %3061, 1
  %3063 = xor i8 %3062, 1
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3063, i8* %3064, align 1
  %3065 = xor i32 %3054, %3047
  %3066 = xor i32 %3065, %3055
  %3067 = lshr i32 %3066, 4
  %3068 = trunc i32 %3067 to i8
  %3069 = and i8 %3068, 1
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3069, i8* %3070, align 1
  %3071 = icmp eq i32 %3055, 0
  %3072 = zext i1 %3071 to i8
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3072, i8* %3073, align 1
  %3074 = lshr i32 %3055, 31
  %3075 = trunc i32 %3074 to i8
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3075, i8* %3076, align 1
  %3077 = lshr i32 %3047, 31
  %3078 = lshr i32 %3054, 31
  %3079 = xor i32 %3078, %3077
  %3080 = xor i32 %3074, %3077
  %3081 = add i32 %3080, %3079
  %3082 = icmp eq i32 %3081, 2
  %3083 = zext i1 %3082 to i8
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3083, i8* %3084, align 1
  store %struct.Memory* %loadMem_47a951, %struct.Memory** %MEMORY
  %loadMem_47a957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 33
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %3087 to i64*
  %3088 = load i64, i64* %PC.i554
  %3089 = add i64 %3088, 23
  %3090 = load i64, i64* %PC.i554
  %3091 = add i64 %3090, 6
  %3092 = load i64, i64* %PC.i554
  %3093 = add i64 %3092, 6
  store i64 %3093, i64* %PC.i554
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3095 = load i8, i8* %3094, align 1
  %3096 = icmp eq i8 %3095, 0
  %3097 = zext i1 %3096 to i8
  store i8 %3097, i8* %BRANCH_TAKEN, align 1
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3099 = select i1 %3096, i64 %3089, i64 %3091
  store i64 %3099, i64* %3098, align 8
  store %struct.Memory* %loadMem_47a957, %struct.Memory** %MEMORY
  %loadBr_47a957 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a957 = icmp eq i8 %loadBr_47a957, 1
  br i1 %cmpBr_47a957, label %block_.L_47a96e, label %block_47a95d

block_47a95d:                                     ; preds = %block_47a945
  %loadMem_47a95d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 33
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %3102 to i64*
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 11
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %RDI.i552 = bitcast %union.anon* %3105 to i64*
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 15
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %3108 to i64*
  %3109 = load i64, i64* %RBP.i553
  %3110 = sub i64 %3109, 32
  %3111 = load i64, i64* %PC.i551
  %3112 = add i64 %3111, 3
  store i64 %3112, i64* %PC.i551
  %3113 = inttoptr i64 %3110 to i32*
  %3114 = load i32, i32* %3113
  %3115 = zext i32 %3114 to i64
  store i64 %3115, i64* %RDI.i552, align 8
  store %struct.Memory* %loadMem_47a95d, %struct.Memory** %MEMORY
  %loadMem1_47a960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 33
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %3118 to i64*
  %3119 = load i64, i64* %PC.i550
  %3120 = add i64 %3119, -438752
  %3121 = load i64, i64* %PC.i550
  %3122 = add i64 %3121, 5
  %3123 = load i64, i64* %PC.i550
  %3124 = add i64 %3123, 5
  store i64 %3124, i64* %PC.i550
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3126 = load i64, i64* %3125, align 8
  %3127 = add i64 %3126, -8
  %3128 = inttoptr i64 %3127 to i64*
  store i64 %3122, i64* %3128
  store i64 %3127, i64* %3125, align 8
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3120, i64* %3129, align 8
  store %struct.Memory* %loadMem1_47a960, %struct.Memory** %MEMORY
  %loadMem2_47a960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a960 = load i64, i64* %3
  %call2_47a960 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_47a960, %struct.Memory* %loadMem2_47a960)
  store %struct.Memory* %call2_47a960, %struct.Memory** %MEMORY
  %loadMem_47a965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 33
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %3132 to i64*
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 1
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %EAX.i549 = bitcast %union.anon* %3135 to i32*
  %3136 = load i32, i32* %EAX.i549
  %3137 = zext i32 %3136 to i64
  %3138 = load i64, i64* %PC.i548
  %3139 = add i64 %3138, 3
  store i64 %3139, i64* %PC.i548
  %3140 = sub i32 %3136, 1
  %3141 = icmp ult i32 %3136, 1
  %3142 = zext i1 %3141 to i8
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3142, i8* %3143, align 1
  %3144 = and i32 %3140, 255
  %3145 = call i32 @llvm.ctpop.i32(i32 %3144)
  %3146 = trunc i32 %3145 to i8
  %3147 = and i8 %3146, 1
  %3148 = xor i8 %3147, 1
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3148, i8* %3149, align 1
  %3150 = xor i64 1, %3137
  %3151 = trunc i64 %3150 to i32
  %3152 = xor i32 %3151, %3140
  %3153 = lshr i32 %3152, 4
  %3154 = trunc i32 %3153 to i8
  %3155 = and i8 %3154, 1
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3155, i8* %3156, align 1
  %3157 = icmp eq i32 %3140, 0
  %3158 = zext i1 %3157 to i8
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3158, i8* %3159, align 1
  %3160 = lshr i32 %3140, 31
  %3161 = trunc i32 %3160 to i8
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3161, i8* %3162, align 1
  %3163 = lshr i32 %3136, 31
  %3164 = xor i32 %3160, %3163
  %3165 = add i32 %3164, %3163
  %3166 = icmp eq i32 %3165, 2
  %3167 = zext i1 %3166 to i8
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3167, i8* %3168, align 1
  store %struct.Memory* %loadMem_47a965, %struct.Memory** %MEMORY
  %loadMem_47a968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 33
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %3171 to i64*
  %3172 = load i64, i64* %PC.i547
  %3173 = add i64 %3172, 11
  %3174 = load i64, i64* %PC.i547
  %3175 = add i64 %3174, 6
  %3176 = load i64, i64* %PC.i547
  %3177 = add i64 %3176, 6
  store i64 %3177, i64* %PC.i547
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3179 = load i8, i8* %3178, align 1
  %3180 = icmp ne i8 %3179, 0
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3182 = load i8, i8* %3181, align 1
  %3183 = icmp ne i8 %3182, 0
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3185 = load i8, i8* %3184, align 1
  %3186 = icmp ne i8 %3185, 0
  %3187 = xor i1 %3183, %3186
  %3188 = or i1 %3180, %3187
  %3189 = zext i1 %3188 to i8
  store i8 %3189, i8* %BRANCH_TAKEN, align 1
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3191 = select i1 %3188, i64 %3173, i64 %3175
  store i64 %3191, i64* %3190, align 8
  store %struct.Memory* %loadMem_47a968, %struct.Memory** %MEMORY
  %loadBr_47a968 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a968 = icmp eq i8 %loadBr_47a968, 1
  br i1 %cmpBr_47a968, label %block_.L_47a973, label %block_.L_47a96e

block_.L_47a96e:                                  ; preds = %block_47a95d, %block_47a945
  %loadMem_47a96e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 33
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %3194 to i64*
  %3195 = load i64, i64* %PC.i546
  %3196 = add i64 %3195, 119
  %3197 = load i64, i64* %PC.i546
  %3198 = add i64 %3197, 5
  store i64 %3198, i64* %PC.i546
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3196, i64* %3199, align 8
  store %struct.Memory* %loadMem_47a96e, %struct.Memory** %MEMORY
  br label %block_.L_47a9e5

block_.L_47a973:                                  ; preds = %block_47a95d
  %loadMem_47a973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 33
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %3202 to i64*
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3204 = getelementptr inbounds %struct.GPR, %struct.GPR* %3203, i32 0, i32 9
  %3205 = getelementptr inbounds %struct.Reg, %struct.Reg* %3204, i32 0, i32 0
  %RSI.i545 = bitcast %union.anon* %3205 to i64*
  %3206 = load i64, i64* %PC.i544
  %3207 = add i64 %3206, 5
  store i64 %3207, i64* %PC.i544
  store i64 1, i64* %RSI.i545, align 8
  store %struct.Memory* %loadMem_47a973, %struct.Memory** %MEMORY
  %loadMem_47a978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 33
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %3210 to i64*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 7
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %RDX.i542 = bitcast %union.anon* %3213 to i64*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 15
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %3216 to i64*
  %3217 = load i64, i64* %RBP.i543
  %3218 = sub i64 %3217, 1008
  %3219 = load i64, i64* %PC.i541
  %3220 = add i64 %3219, 7
  store i64 %3220, i64* %PC.i541
  store i64 %3218, i64* %RDX.i542, align 8
  store %struct.Memory* %loadMem_47a978, %struct.Memory** %MEMORY
  %loadMem_47a97f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 33
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %3223 to i64*
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 11
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %RDI.i539 = bitcast %union.anon* %3226 to i64*
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 15
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %3229 to i64*
  %3230 = load i64, i64* %RBP.i540
  %3231 = sub i64 %3230, 32
  %3232 = load i64, i64* %PC.i538
  %3233 = add i64 %3232, 3
  store i64 %3233, i64* %PC.i538
  %3234 = inttoptr i64 %3231 to i32*
  %3235 = load i32, i32* %3234
  %3236 = zext i32 %3235 to i64
  store i64 %3236, i64* %RDI.i539, align 8
  store %struct.Memory* %loadMem_47a97f, %struct.Memory** %MEMORY
  %loadMem1_47a982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 33
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %3239 to i64*
  %3240 = load i64, i64* %PC.i537
  %3241 = add i64 %3240, -438594
  %3242 = load i64, i64* %PC.i537
  %3243 = add i64 %3242, 5
  %3244 = load i64, i64* %PC.i537
  %3245 = add i64 %3244, 5
  store i64 %3245, i64* %PC.i537
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3247 = load i64, i64* %3246, align 8
  %3248 = add i64 %3247, -8
  %3249 = inttoptr i64 %3248 to i64*
  store i64 %3243, i64* %3249
  store i64 %3248, i64* %3246, align 8
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3241, i64* %3250, align 8
  store %struct.Memory* %loadMem1_47a982, %struct.Memory** %MEMORY
  %loadMem2_47a982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a982 = load i64, i64* %3
  %call2_47a982 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_47a982, %struct.Memory* %loadMem2_47a982)
  store %struct.Memory* %call2_47a982, %struct.Memory** %MEMORY
  %loadMem_47a987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 33
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %3253 to i64*
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 7
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %RDX.i536 = bitcast %union.anon* %3256 to i64*
  %3257 = load i64, i64* %PC.i535
  %3258 = add i64 %3257, 10
  store i64 %3258, i64* %PC.i535
  store i64 ptrtoint (%G__0x581cc1_type* @G__0x581cc1 to i64), i64* %RDX.i536, align 8
  store %struct.Memory* %loadMem_47a987, %struct.Memory** %MEMORY
  %loadMem_47a991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 33
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %3261 to i64*
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 9
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %ESI.i533 = bitcast %union.anon* %3264 to i32*
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 9
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %RSI.i534 = bitcast %union.anon* %3267 to i64*
  %3268 = load i64, i64* %RSI.i534
  %3269 = load i32, i32* %ESI.i533
  %3270 = zext i32 %3269 to i64
  %3271 = load i64, i64* %PC.i532
  %3272 = add i64 %3271, 2
  store i64 %3272, i64* %PC.i532
  %3273 = xor i64 %3270, %3268
  %3274 = trunc i64 %3273 to i32
  %3275 = and i64 %3273, 4294967295
  store i64 %3275, i64* %RSI.i534, align 8
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3276, align 1
  %3277 = and i32 %3274, 255
  %3278 = call i32 @llvm.ctpop.i32(i32 %3277)
  %3279 = trunc i32 %3278 to i8
  %3280 = and i8 %3279, 1
  %3281 = xor i8 %3280, 1
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3281, i8* %3282, align 1
  %3283 = icmp eq i32 %3274, 0
  %3284 = zext i1 %3283 to i8
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3284, i8* %3285, align 1
  %3286 = lshr i32 %3274, 31
  %3287 = trunc i32 %3286 to i8
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3287, i8* %3288, align 1
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3289, align 1
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3290, align 1
  store %struct.Memory* %loadMem_47a991, %struct.Memory** %MEMORY
  %loadMem_47a993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 33
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %3293 to i64*
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 11
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %RDI.i530 = bitcast %union.anon* %3296 to i64*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 15
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %3299 to i64*
  %3300 = load i64, i64* %RBP.i531
  %3301 = sub i64 %3300, 1008
  %3302 = load i64, i64* %PC.i529
  %3303 = add i64 %3302, 6
  store i64 %3303, i64* %PC.i529
  %3304 = inttoptr i64 %3301 to i32*
  %3305 = load i32, i32* %3304
  %3306 = zext i32 %3305 to i64
  store i64 %3306, i64* %RDI.i530, align 8
  store %struct.Memory* %loadMem_47a993, %struct.Memory** %MEMORY
  %loadMem_47a999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 33
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %3309 to i64*
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 5
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %RCX.i527 = bitcast %union.anon* %3312 to i64*
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 15
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %3315 to i64*
  %3316 = load i64, i64* %RBP.i528
  %3317 = sub i64 %3316, 1016
  %3318 = load i64, i64* %PC.i526
  %3319 = add i64 %3318, 6
  store i64 %3319, i64* %PC.i526
  %3320 = inttoptr i64 %3317 to i32*
  %3321 = load i32, i32* %3320
  %3322 = zext i32 %3321 to i64
  store i64 %3322, i64* %RCX.i527, align 8
  store %struct.Memory* %loadMem_47a999, %struct.Memory** %MEMORY
  %loadMem_47a99f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 33
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %3325 to i64*
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 17
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %R8D.i524 = bitcast %union.anon* %3328 to i32*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 15
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %3331 to i64*
  %3332 = bitcast i32* %R8D.i524 to i64*
  %3333 = load i64, i64* %RBP.i525
  %3334 = sub i64 %3333, 32
  %3335 = load i64, i64* %PC.i523
  %3336 = add i64 %3335, 4
  store i64 %3336, i64* %PC.i523
  %3337 = inttoptr i64 %3334 to i32*
  %3338 = load i32, i32* %3337
  %3339 = zext i32 %3338 to i64
  store i64 %3339, i64* %3332, align 8
  store %struct.Memory* %loadMem_47a99f, %struct.Memory** %MEMORY
  %loadMem_47a9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 33
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %3342 to i64*
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 9
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %ESI.i521 = bitcast %union.anon* %3345 to i32*
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3347 = getelementptr inbounds %struct.GPR, %struct.GPR* %3346, i32 0, i32 15
  %3348 = getelementptr inbounds %struct.Reg, %struct.Reg* %3347, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %3348 to i64*
  %3349 = load i64, i64* %RBP.i522
  %3350 = sub i64 %3349, 1048
  %3351 = load i32, i32* %ESI.i521
  %3352 = zext i32 %3351 to i64
  %3353 = load i64, i64* %PC.i520
  %3354 = add i64 %3353, 6
  store i64 %3354, i64* %PC.i520
  %3355 = inttoptr i64 %3350 to i32*
  store i32 %3351, i32* %3355
  store %struct.Memory* %loadMem_47a9a3, %struct.Memory** %MEMORY
  %loadMem_47a9a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 33
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %3358 to i64*
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 5
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %ECX.i518 = bitcast %union.anon* %3361 to i32*
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 9
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %RSI.i519 = bitcast %union.anon* %3364 to i64*
  %3365 = load i32, i32* %ECX.i518
  %3366 = zext i32 %3365 to i64
  %3367 = load i64, i64* %PC.i517
  %3368 = add i64 %3367, 2
  store i64 %3368, i64* %PC.i517
  %3369 = and i64 %3366, 4294967295
  store i64 %3369, i64* %RSI.i519, align 8
  store %struct.Memory* %loadMem_47a9a9, %struct.Memory** %MEMORY
  %loadMem_47a9ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 33
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %3372 to i64*
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 17
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %R8D.i515 = bitcast %union.anon* %3375 to i32*
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 5
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %RCX.i516 = bitcast %union.anon* %3378 to i64*
  %3379 = load i32, i32* %R8D.i515
  %3380 = zext i32 %3379 to i64
  %3381 = load i64, i64* %PC.i514
  %3382 = add i64 %3381, 3
  store i64 %3382, i64* %PC.i514
  %3383 = and i64 %3380, 4294967295
  store i64 %3383, i64* %RCX.i516, align 8
  store %struct.Memory* %loadMem_47a9ab, %struct.Memory** %MEMORY
  %loadMem_47a9ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3385 = getelementptr inbounds %struct.GPR, %struct.GPR* %3384, i32 0, i32 33
  %3386 = getelementptr inbounds %struct.Reg, %struct.Reg* %3385, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %3386 to i64*
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 17
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %R8D.i512 = bitcast %union.anon* %3389 to i32*
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 15
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %3392 to i64*
  %3393 = bitcast i32* %R8D.i512 to i64*
  %3394 = load i64, i64* %RBP.i513
  %3395 = sub i64 %3394, 1048
  %3396 = load i64, i64* %PC.i511
  %3397 = add i64 %3396, 7
  store i64 %3397, i64* %PC.i511
  %3398 = inttoptr i64 %3395 to i32*
  %3399 = load i32, i32* %3398
  %3400 = zext i32 %3399 to i64
  store i64 %3400, i64* %3393, align 8
  store %struct.Memory* %loadMem_47a9ae, %struct.Memory** %MEMORY
  %loadMem_47a9b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 33
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %3403 to i64*
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 19
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %R9D.i509 = bitcast %union.anon* %3406 to i32*
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3408 = getelementptr inbounds %struct.GPR, %struct.GPR* %3407, i32 0, i32 15
  %3409 = getelementptr inbounds %struct.Reg, %struct.Reg* %3408, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %3409 to i64*
  %3410 = bitcast i32* %R9D.i509 to i64*
  %3411 = load i64, i64* %RBP.i510
  %3412 = sub i64 %3411, 1048
  %3413 = load i64, i64* %PC.i508
  %3414 = add i64 %3413, 7
  store i64 %3414, i64* %PC.i508
  %3415 = inttoptr i64 %3412 to i32*
  %3416 = load i32, i32* %3415
  %3417 = zext i32 %3416 to i64
  store i64 %3417, i64* %3410, align 8
  store %struct.Memory* %loadMem_47a9b5, %struct.Memory** %MEMORY
  %loadMem_47a9bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 1
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %EAX.i506 = bitcast %union.anon* %3423 to i32*
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 15
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %3426 to i64*
  %3427 = load i64, i64* %RBP.i507
  %3428 = sub i64 %3427, 1052
  %3429 = load i32, i32* %EAX.i506
  %3430 = zext i32 %3429 to i64
  %3431 = load i64, i64* %PC.i505
  %3432 = add i64 %3431, 6
  store i64 %3432, i64* %PC.i505
  %3433 = inttoptr i64 %3428 to i32*
  store i32 %3429, i32* %3433
  store %struct.Memory* %loadMem_47a9bc, %struct.Memory** %MEMORY
  %loadMem1_47a9c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 33
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %3436 to i64*
  %3437 = load i64, i64* %PC.i504
  %3438 = add i64 %3437, -465810
  %3439 = load i64, i64* %PC.i504
  %3440 = add i64 %3439, 5
  %3441 = load i64, i64* %PC.i504
  %3442 = add i64 %3441, 5
  store i64 %3442, i64* %PC.i504
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3444 = load i64, i64* %3443, align 8
  %3445 = add i64 %3444, -8
  %3446 = inttoptr i64 %3445 to i64*
  store i64 %3440, i64* %3446
  store i64 %3445, i64* %3443, align 8
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3438, i64* %3447, align 8
  store %struct.Memory* %loadMem1_47a9c2, %struct.Memory** %MEMORY
  %loadMem2_47a9c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a9c2 = load i64, i64* %3
  %call2_47a9c2 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_47a9c2, %struct.Memory* %loadMem2_47a9c2)
  store %struct.Memory* %call2_47a9c2, %struct.Memory** %MEMORY
  %loadMem_47a9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 33
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %3450 to i64*
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 1
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %EAX.i503 = bitcast %union.anon* %3453 to i32*
  %3454 = load i32, i32* %EAX.i503
  %3455 = zext i32 %3454 to i64
  %3456 = load i64, i64* %PC.i502
  %3457 = add i64 %3456, 3
  store i64 %3457, i64* %PC.i502
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3458, align 1
  %3459 = and i32 %3454, 255
  %3460 = call i32 @llvm.ctpop.i32(i32 %3459)
  %3461 = trunc i32 %3460 to i8
  %3462 = and i8 %3461, 1
  %3463 = xor i8 %3462, 1
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3463, i8* %3464, align 1
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3465, align 1
  %3466 = icmp eq i32 %3454, 0
  %3467 = zext i1 %3466 to i8
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3467, i8* %3468, align 1
  %3469 = lshr i32 %3454, 31
  %3470 = trunc i32 %3469 to i8
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3470, i8* %3471, align 1
  %3472 = lshr i32 %3454, 31
  %3473 = xor i32 %3469, %3472
  %3474 = add i32 %3473, %3472
  %3475 = icmp eq i32 %3474, 2
  %3476 = zext i1 %3475 to i8
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3476, i8* %3477, align 1
  store %struct.Memory* %loadMem_47a9c7, %struct.Memory** %MEMORY
  %loadMem_47a9ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 33
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %3480 to i64*
  %3481 = load i64, i64* %PC.i501
  %3482 = add i64 %3481, 22
  %3483 = load i64, i64* %PC.i501
  %3484 = add i64 %3483, 6
  %3485 = load i64, i64* %PC.i501
  %3486 = add i64 %3485, 6
  store i64 %3486, i64* %PC.i501
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3488 = load i8, i8* %3487, align 1
  store i8 %3488, i8* %BRANCH_TAKEN, align 1
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3490 = icmp ne i8 %3488, 0
  %3491 = select i1 %3490, i64 %3482, i64 %3484
  store i64 %3491, i64* %3489, align 8
  store %struct.Memory* %loadMem_47a9ca, %struct.Memory** %MEMORY
  %loadBr_47a9ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a9ca = icmp eq i8 %loadBr_47a9ca, 1
  br i1 %cmpBr_47a9ca, label %block_.L_47a9e0, label %block_47a9d0

block_47a9d0:                                     ; preds = %block_.L_47a973
  %loadMem_47a9d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 33
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %3494 to i64*
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 1
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %3497 to i64*
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 15
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %3500 to i64*
  %3501 = load i64, i64* %RBP.i500
  %3502 = sub i64 %3501, 24
  %3503 = load i64, i64* %PC.i498
  %3504 = add i64 %3503, 3
  store i64 %3504, i64* %PC.i498
  %3505 = inttoptr i64 %3502 to i32*
  %3506 = load i32, i32* %3505
  %3507 = zext i32 %3506 to i64
  store i64 %3507, i64* %RAX.i499, align 8
  store %struct.Memory* %loadMem_47a9d0, %struct.Memory** %MEMORY
  %loadMem_47a9d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3509 = getelementptr inbounds %struct.GPR, %struct.GPR* %3508, i32 0, i32 33
  %3510 = getelementptr inbounds %struct.Reg, %struct.Reg* %3509, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %3510 to i64*
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 1
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %3513 to i64*
  %3514 = load i64, i64* %RAX.i497
  %3515 = load i64, i64* %PC.i496
  %3516 = add i64 %3515, 3
  store i64 %3516, i64* %PC.i496
  %3517 = trunc i64 %3514 to i32
  %3518 = add i32 1, %3517
  %3519 = zext i32 %3518 to i64
  store i64 %3519, i64* %RAX.i497, align 8
  %3520 = icmp ult i32 %3518, %3517
  %3521 = icmp ult i32 %3518, 1
  %3522 = or i1 %3520, %3521
  %3523 = zext i1 %3522 to i8
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3523, i8* %3524, align 1
  %3525 = and i32 %3518, 255
  %3526 = call i32 @llvm.ctpop.i32(i32 %3525)
  %3527 = trunc i32 %3526 to i8
  %3528 = and i8 %3527, 1
  %3529 = xor i8 %3528, 1
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3529, i8* %3530, align 1
  %3531 = xor i64 1, %3514
  %3532 = trunc i64 %3531 to i32
  %3533 = xor i32 %3532, %3518
  %3534 = lshr i32 %3533, 4
  %3535 = trunc i32 %3534 to i8
  %3536 = and i8 %3535, 1
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3536, i8* %3537, align 1
  %3538 = icmp eq i32 %3518, 0
  %3539 = zext i1 %3538 to i8
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3539, i8* %3540, align 1
  %3541 = lshr i32 %3518, 31
  %3542 = trunc i32 %3541 to i8
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3542, i8* %3543, align 1
  %3544 = lshr i32 %3517, 31
  %3545 = xor i32 %3541, %3544
  %3546 = add i32 %3545, %3541
  %3547 = icmp eq i32 %3546, 2
  %3548 = zext i1 %3547 to i8
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3548, i8* %3549, align 1
  store %struct.Memory* %loadMem_47a9d3, %struct.Memory** %MEMORY
  %loadMem_47a9d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3551 = getelementptr inbounds %struct.GPR, %struct.GPR* %3550, i32 0, i32 33
  %3552 = getelementptr inbounds %struct.Reg, %struct.Reg* %3551, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %3552 to i64*
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3554 = getelementptr inbounds %struct.GPR, %struct.GPR* %3553, i32 0, i32 1
  %3555 = getelementptr inbounds %struct.Reg, %struct.Reg* %3554, i32 0, i32 0
  %EAX.i494 = bitcast %union.anon* %3555 to i32*
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 15
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %3558 to i64*
  %3559 = load i64, i64* %RBP.i495
  %3560 = sub i64 %3559, 24
  %3561 = load i32, i32* %EAX.i494
  %3562 = zext i32 %3561 to i64
  %3563 = load i64, i64* %PC.i493
  %3564 = add i64 %3563, 3
  store i64 %3564, i64* %PC.i493
  %3565 = inttoptr i64 %3560 to i32*
  store i32 %3561, i32* %3565
  store %struct.Memory* %loadMem_47a9d6, %struct.Memory** %MEMORY
  %loadMem_47a9d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 33
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %3568 to i64*
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 15
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %3571 to i64*
  %3572 = load i64, i64* %RBP.i492
  %3573 = sub i64 %3572, 20
  %3574 = load i64, i64* %PC.i491
  %3575 = add i64 %3574, 7
  store i64 %3575, i64* %PC.i491
  %3576 = inttoptr i64 %3573 to i32*
  store i32 1, i32* %3576
  store %struct.Memory* %loadMem_47a9d9, %struct.Memory** %MEMORY
  br label %block_.L_47a9e0

block_.L_47a9e0:                                  ; preds = %block_47a9d0, %block_.L_47a973
  %loadMem_47a9e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 33
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %3579 to i64*
  %3580 = load i64, i64* %PC.i490
  %3581 = add i64 %3580, 5
  %3582 = load i64, i64* %PC.i490
  %3583 = add i64 %3582, 5
  store i64 %3583, i64* %PC.i490
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3581, i64* %3584, align 8
  store %struct.Memory* %loadMem_47a9e0, %struct.Memory** %MEMORY
  br label %block_.L_47a9e5

block_.L_47a9e5:                                  ; preds = %block_.L_47a9e0, %block_.L_47a96e
  %loadMem_47a9e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 33
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %3587 to i64*
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3589 = getelementptr inbounds %struct.GPR, %struct.GPR* %3588, i32 0, i32 1
  %3590 = getelementptr inbounds %struct.Reg, %struct.Reg* %3589, i32 0, i32 0
  %RAX.i488 = bitcast %union.anon* %3590 to i64*
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 15
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %3593 to i64*
  %3594 = load i64, i64* %RBP.i489
  %3595 = sub i64 %3594, 32
  %3596 = load i64, i64* %PC.i487
  %3597 = add i64 %3596, 3
  store i64 %3597, i64* %PC.i487
  %3598 = inttoptr i64 %3595 to i32*
  %3599 = load i32, i32* %3598
  %3600 = zext i32 %3599 to i64
  store i64 %3600, i64* %RAX.i488, align 8
  store %struct.Memory* %loadMem_47a9e5, %struct.Memory** %MEMORY
  %loadMem_47a9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 33
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %3603 to i64*
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 1
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %3606 to i64*
  %3607 = load i64, i64* %RAX.i486
  %3608 = load i64, i64* %PC.i485
  %3609 = add i64 %3608, 3
  store i64 %3609, i64* %PC.i485
  %3610 = trunc i64 %3607 to i32
  %3611 = add i32 1, %3610
  %3612 = zext i32 %3611 to i64
  store i64 %3612, i64* %RAX.i486, align 8
  %3613 = icmp ult i32 %3611, %3610
  %3614 = icmp ult i32 %3611, 1
  %3615 = or i1 %3613, %3614
  %3616 = zext i1 %3615 to i8
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3616, i8* %3617, align 1
  %3618 = and i32 %3611, 255
  %3619 = call i32 @llvm.ctpop.i32(i32 %3618)
  %3620 = trunc i32 %3619 to i8
  %3621 = and i8 %3620, 1
  %3622 = xor i8 %3621, 1
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3622, i8* %3623, align 1
  %3624 = xor i64 1, %3607
  %3625 = trunc i64 %3624 to i32
  %3626 = xor i32 %3625, %3611
  %3627 = lshr i32 %3626, 4
  %3628 = trunc i32 %3627 to i8
  %3629 = and i8 %3628, 1
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3629, i8* %3630, align 1
  %3631 = icmp eq i32 %3611, 0
  %3632 = zext i1 %3631 to i8
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3632, i8* %3633, align 1
  %3634 = lshr i32 %3611, 31
  %3635 = trunc i32 %3634 to i8
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3635, i8* %3636, align 1
  %3637 = lshr i32 %3610, 31
  %3638 = xor i32 %3634, %3637
  %3639 = add i32 %3638, %3634
  %3640 = icmp eq i32 %3639, 2
  %3641 = zext i1 %3640 to i8
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3641, i8* %3642, align 1
  store %struct.Memory* %loadMem_47a9e8, %struct.Memory** %MEMORY
  %loadMem_47a9eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3644 = getelementptr inbounds %struct.GPR, %struct.GPR* %3643, i32 0, i32 33
  %3645 = getelementptr inbounds %struct.Reg, %struct.Reg* %3644, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %3645 to i64*
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 1
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %EAX.i483 = bitcast %union.anon* %3648 to i32*
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3650 = getelementptr inbounds %struct.GPR, %struct.GPR* %3649, i32 0, i32 15
  %3651 = getelementptr inbounds %struct.Reg, %struct.Reg* %3650, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %3651 to i64*
  %3652 = load i64, i64* %RBP.i484
  %3653 = sub i64 %3652, 32
  %3654 = load i32, i32* %EAX.i483
  %3655 = zext i32 %3654 to i64
  %3656 = load i64, i64* %PC.i482
  %3657 = add i64 %3656, 3
  store i64 %3657, i64* %PC.i482
  %3658 = inttoptr i64 %3653 to i32*
  store i32 %3654, i32* %3658
  store %struct.Memory* %loadMem_47a9eb, %struct.Memory** %MEMORY
  %loadMem_47a9ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 33
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %3661 to i64*
  %3662 = load i64, i64* %PC.i481
  %3663 = add i64 %3662, -182
  %3664 = load i64, i64* %PC.i481
  %3665 = add i64 %3664, 5
  store i64 %3665, i64* %PC.i481
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3663, i64* %3666, align 8
  store %struct.Memory* %loadMem_47a9ee, %struct.Memory** %MEMORY
  br label %block_.L_47a938

block_.L_47a9f3:                                  ; preds = %block_.L_47a938
  %loadMem_47a9f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 33
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %3669 to i64*
  %3670 = load i64, i64* %PC.i480
  %3671 = add i64 %3670, -211
  %3672 = load i64, i64* %PC.i480
  %3673 = add i64 %3672, 5
  store i64 %3673, i64* %PC.i480
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3671, i64* %3674, align 8
  store %struct.Memory* %loadMem_47a9f3, %struct.Memory** %MEMORY
  br label %block_.L_47a920

block_.L_47a9f8:                                  ; preds = %block_.L_47a920
  %loadMem_47a9f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 33
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %3677 to i64*
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 15
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %3680 to i64*
  %3681 = load i64, i64* %RBP.i479
  %3682 = sub i64 %3681, 32
  %3683 = load i64, i64* %PC.i478
  %3684 = add i64 %3683, 7
  store i64 %3684, i64* %PC.i478
  %3685 = inttoptr i64 %3682 to i32*
  store i32 21, i32* %3685
  store %struct.Memory* %loadMem_47a9f8, %struct.Memory** %MEMORY
  br label %block_.L_47a9ff

block_.L_47a9ff:                                  ; preds = %block_.L_47ac18, %block_.L_47a9f8
  %loadMem_47a9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 33
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %3688 to i64*
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3690 = getelementptr inbounds %struct.GPR, %struct.GPR* %3689, i32 0, i32 15
  %3691 = getelementptr inbounds %struct.Reg, %struct.Reg* %3690, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %3691 to i64*
  %3692 = load i64, i64* %RBP.i477
  %3693 = sub i64 %3692, 32
  %3694 = load i64, i64* %PC.i476
  %3695 = add i64 %3694, 7
  store i64 %3695, i64* %PC.i476
  %3696 = inttoptr i64 %3693 to i32*
  %3697 = load i32, i32* %3696
  %3698 = sub i32 %3697, 400
  %3699 = icmp ult i32 %3697, 400
  %3700 = zext i1 %3699 to i8
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3700, i8* %3701, align 1
  %3702 = and i32 %3698, 255
  %3703 = call i32 @llvm.ctpop.i32(i32 %3702)
  %3704 = trunc i32 %3703 to i8
  %3705 = and i8 %3704, 1
  %3706 = xor i8 %3705, 1
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3706, i8* %3707, align 1
  %3708 = xor i32 %3697, 400
  %3709 = xor i32 %3708, %3698
  %3710 = lshr i32 %3709, 4
  %3711 = trunc i32 %3710 to i8
  %3712 = and i8 %3711, 1
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3712, i8* %3713, align 1
  %3714 = icmp eq i32 %3698, 0
  %3715 = zext i1 %3714 to i8
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3715, i8* %3716, align 1
  %3717 = lshr i32 %3698, 31
  %3718 = trunc i32 %3717 to i8
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3718, i8* %3719, align 1
  %3720 = lshr i32 %3697, 31
  %3721 = xor i32 %3717, %3720
  %3722 = add i32 %3721, %3720
  %3723 = icmp eq i32 %3722, 2
  %3724 = zext i1 %3723 to i8
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3724, i8* %3725, align 1
  store %struct.Memory* %loadMem_47a9ff, %struct.Memory** %MEMORY
  %loadMem_47aa06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 33
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %3728 to i64*
  %3729 = load i64, i64* %PC.i475
  %3730 = add i64 %3729, 544
  %3731 = load i64, i64* %PC.i475
  %3732 = add i64 %3731, 6
  %3733 = load i64, i64* %PC.i475
  %3734 = add i64 %3733, 6
  store i64 %3734, i64* %PC.i475
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3736 = load i8, i8* %3735, align 1
  %3737 = icmp ne i8 %3736, 0
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3739 = load i8, i8* %3738, align 1
  %3740 = icmp ne i8 %3739, 0
  %3741 = xor i1 %3737, %3740
  %3742 = xor i1 %3741, true
  %3743 = zext i1 %3742 to i8
  store i8 %3743, i8* %BRANCH_TAKEN, align 1
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3745 = select i1 %3741, i64 %3732, i64 %3730
  store i64 %3745, i64* %3744, align 8
  store %struct.Memory* %loadMem_47aa06, %struct.Memory** %MEMORY
  %loadBr_47aa06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47aa06 = icmp eq i8 %loadBr_47aa06, 1
  br i1 %cmpBr_47aa06, label %block_.L_47ac26, label %block_47aa0c

block_47aa0c:                                     ; preds = %block_.L_47a9ff
  %loadMem_47aa0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 33
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %3748 to i64*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 1
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %3751 to i64*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 15
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %3754 to i64*
  %3755 = load i64, i64* %RBP.i474
  %3756 = sub i64 %3755, 32
  %3757 = load i64, i64* %PC.i472
  %3758 = add i64 %3757, 4
  store i64 %3758, i64* %PC.i472
  %3759 = inttoptr i64 %3756 to i32*
  %3760 = load i32, i32* %3759
  %3761 = sext i32 %3760 to i64
  store i64 %3761, i64* %RAX.i473, align 8
  store %struct.Memory* %loadMem_47aa0c, %struct.Memory** %MEMORY
  %loadMem_47aa10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3763 = getelementptr inbounds %struct.GPR, %struct.GPR* %3762, i32 0, i32 33
  %3764 = getelementptr inbounds %struct.Reg, %struct.Reg* %3763, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %3764 to i64*
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 1
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %RAX.i470 = bitcast %union.anon* %3767 to i64*
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 5
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %RCX.i471 = bitcast %union.anon* %3770 to i64*
  %3771 = load i64, i64* %RAX.i470
  %3772 = add i64 %3771, 12099168
  %3773 = load i64, i64* %PC.i469
  %3774 = add i64 %3773, 8
  store i64 %3774, i64* %PC.i469
  %3775 = inttoptr i64 %3772 to i8*
  %3776 = load i8, i8* %3775
  %3777 = zext i8 %3776 to i64
  store i64 %3777, i64* %RCX.i471, align 8
  store %struct.Memory* %loadMem_47aa10, %struct.Memory** %MEMORY
  %loadMem_47aa18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 33
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %3780 to i64*
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 5
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %ECX.i467 = bitcast %union.anon* %3783 to i32*
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 15
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %3786 to i64*
  %3787 = load i32, i32* %ECX.i467
  %3788 = zext i32 %3787 to i64
  %3789 = load i64, i64* %RBP.i468
  %3790 = sub i64 %3789, 1016
  %3791 = load i64, i64* %PC.i466
  %3792 = add i64 %3791, 6
  store i64 %3792, i64* %PC.i466
  %3793 = inttoptr i64 %3790 to i32*
  %3794 = load i32, i32* %3793
  %3795 = sub i32 %3787, %3794
  %3796 = icmp ult i32 %3787, %3794
  %3797 = zext i1 %3796 to i8
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3797, i8* %3798, align 1
  %3799 = and i32 %3795, 255
  %3800 = call i32 @llvm.ctpop.i32(i32 %3799)
  %3801 = trunc i32 %3800 to i8
  %3802 = and i8 %3801, 1
  %3803 = xor i8 %3802, 1
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3803, i8* %3804, align 1
  %3805 = xor i32 %3794, %3787
  %3806 = xor i32 %3805, %3795
  %3807 = lshr i32 %3806, 4
  %3808 = trunc i32 %3807 to i8
  %3809 = and i8 %3808, 1
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3809, i8* %3810, align 1
  %3811 = icmp eq i32 %3795, 0
  %3812 = zext i1 %3811 to i8
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3812, i8* %3813, align 1
  %3814 = lshr i32 %3795, 31
  %3815 = trunc i32 %3814 to i8
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3815, i8* %3816, align 1
  %3817 = lshr i32 %3787, 31
  %3818 = lshr i32 %3794, 31
  %3819 = xor i32 %3818, %3817
  %3820 = xor i32 %3814, %3817
  %3821 = add i32 %3820, %3819
  %3822 = icmp eq i32 %3821, 2
  %3823 = zext i1 %3822 to i8
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3823, i8* %3824, align 1
  store %struct.Memory* %loadMem_47aa18, %struct.Memory** %MEMORY
  %loadMem_47aa1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3826 = getelementptr inbounds %struct.GPR, %struct.GPR* %3825, i32 0, i32 33
  %3827 = getelementptr inbounds %struct.Reg, %struct.Reg* %3826, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %3827 to i64*
  %3828 = load i64, i64* %PC.i465
  %3829 = add i64 %3828, 23
  %3830 = load i64, i64* %PC.i465
  %3831 = add i64 %3830, 6
  %3832 = load i64, i64* %PC.i465
  %3833 = add i64 %3832, 6
  store i64 %3833, i64* %PC.i465
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3835 = load i8, i8* %3834, align 1
  %3836 = icmp eq i8 %3835, 0
  %3837 = zext i1 %3836 to i8
  store i8 %3837, i8* %BRANCH_TAKEN, align 1
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3839 = select i1 %3836, i64 %3829, i64 %3831
  store i64 %3839, i64* %3838, align 8
  store %struct.Memory* %loadMem_47aa1e, %struct.Memory** %MEMORY
  %loadBr_47aa1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47aa1e = icmp eq i8 %loadBr_47aa1e, 1
  br i1 %cmpBr_47aa1e, label %block_.L_47aa35, label %block_47aa24

block_47aa24:                                     ; preds = %block_47aa0c
  %loadMem_47aa24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3841 = getelementptr inbounds %struct.GPR, %struct.GPR* %3840, i32 0, i32 33
  %3842 = getelementptr inbounds %struct.Reg, %struct.Reg* %3841, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %3842 to i64*
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 11
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %RDI.i463 = bitcast %union.anon* %3845 to i64*
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 15
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %3848 to i64*
  %3849 = load i64, i64* %RBP.i464
  %3850 = sub i64 %3849, 32
  %3851 = load i64, i64* %PC.i462
  %3852 = add i64 %3851, 3
  store i64 %3852, i64* %PC.i462
  %3853 = inttoptr i64 %3850 to i32*
  %3854 = load i32, i32* %3853
  %3855 = zext i32 %3854 to i64
  store i64 %3855, i64* %RDI.i463, align 8
  store %struct.Memory* %loadMem_47aa24, %struct.Memory** %MEMORY
  %loadMem1_47aa27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3857 = getelementptr inbounds %struct.GPR, %struct.GPR* %3856, i32 0, i32 33
  %3858 = getelementptr inbounds %struct.Reg, %struct.Reg* %3857, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %3858 to i64*
  %3859 = load i64, i64* %PC.i461
  %3860 = add i64 %3859, -438951
  %3861 = load i64, i64* %PC.i461
  %3862 = add i64 %3861, 5
  %3863 = load i64, i64* %PC.i461
  %3864 = add i64 %3863, 5
  store i64 %3864, i64* %PC.i461
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3866 = load i64, i64* %3865, align 8
  %3867 = add i64 %3866, -8
  %3868 = inttoptr i64 %3867 to i64*
  store i64 %3862, i64* %3868
  store i64 %3867, i64* %3865, align 8
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3860, i64* %3869, align 8
  store %struct.Memory* %loadMem1_47aa27, %struct.Memory** %MEMORY
  %loadMem2_47aa27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47aa27 = load i64, i64* %3
  %call2_47aa27 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_47aa27, %struct.Memory* %loadMem2_47aa27)
  store %struct.Memory* %call2_47aa27, %struct.Memory** %MEMORY
  %loadMem_47aa2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3871 = getelementptr inbounds %struct.GPR, %struct.GPR* %3870, i32 0, i32 33
  %3872 = getelementptr inbounds %struct.Reg, %struct.Reg* %3871, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %3872 to i64*
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3874 = getelementptr inbounds %struct.GPR, %struct.GPR* %3873, i32 0, i32 1
  %3875 = getelementptr inbounds %struct.Reg, %struct.Reg* %3874, i32 0, i32 0
  %EAX.i460 = bitcast %union.anon* %3875 to i32*
  %3876 = load i32, i32* %EAX.i460
  %3877 = zext i32 %3876 to i64
  %3878 = load i64, i64* %PC.i459
  %3879 = add i64 %3878, 3
  store i64 %3879, i64* %PC.i459
  %3880 = sub i32 %3876, 2
  %3881 = icmp ult i32 %3876, 2
  %3882 = zext i1 %3881 to i8
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3882, i8* %3883, align 1
  %3884 = and i32 %3880, 255
  %3885 = call i32 @llvm.ctpop.i32(i32 %3884)
  %3886 = trunc i32 %3885 to i8
  %3887 = and i8 %3886, 1
  %3888 = xor i8 %3887, 1
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3888, i8* %3889, align 1
  %3890 = xor i64 2, %3877
  %3891 = trunc i64 %3890 to i32
  %3892 = xor i32 %3891, %3880
  %3893 = lshr i32 %3892, 4
  %3894 = trunc i32 %3893 to i8
  %3895 = and i8 %3894, 1
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3895, i8* %3896, align 1
  %3897 = icmp eq i32 %3880, 0
  %3898 = zext i1 %3897 to i8
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3898, i8* %3899, align 1
  %3900 = lshr i32 %3880, 31
  %3901 = trunc i32 %3900 to i8
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3901, i8* %3902, align 1
  %3903 = lshr i32 %3876, 31
  %3904 = xor i32 %3900, %3903
  %3905 = add i32 %3904, %3903
  %3906 = icmp eq i32 %3905, 2
  %3907 = zext i1 %3906 to i8
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3907, i8* %3908, align 1
  store %struct.Memory* %loadMem_47aa2c, %struct.Memory** %MEMORY
  %loadMem_47aa2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3910 = getelementptr inbounds %struct.GPR, %struct.GPR* %3909, i32 0, i32 33
  %3911 = getelementptr inbounds %struct.Reg, %struct.Reg* %3910, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %3911 to i64*
  %3912 = load i64, i64* %PC.i458
  %3913 = add i64 %3912, 11
  %3914 = load i64, i64* %PC.i458
  %3915 = add i64 %3914, 6
  %3916 = load i64, i64* %PC.i458
  %3917 = add i64 %3916, 6
  store i64 %3917, i64* %PC.i458
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3919 = load i8, i8* %3918, align 1
  store i8 %3919, i8* %BRANCH_TAKEN, align 1
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3921 = icmp ne i8 %3919, 0
  %3922 = select i1 %3921, i64 %3913, i64 %3915
  store i64 %3922, i64* %3920, align 8
  store %struct.Memory* %loadMem_47aa2f, %struct.Memory** %MEMORY
  %loadBr_47aa2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47aa2f = icmp eq i8 %loadBr_47aa2f, 1
  br i1 %cmpBr_47aa2f, label %block_.L_47aa3a, label %block_.L_47aa35

block_.L_47aa35:                                  ; preds = %block_47aa24, %block_47aa0c
  %loadMem_47aa35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 33
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %3925 to i64*
  %3926 = load i64, i64* %PC.i457
  %3927 = add i64 %3926, 483
  %3928 = load i64, i64* %PC.i457
  %3929 = add i64 %3928, 5
  store i64 %3929, i64* %PC.i457
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3927, i64* %3930, align 8
  store %struct.Memory* %loadMem_47aa35, %struct.Memory** %MEMORY
  br label %block_.L_47ac18

block_.L_47aa3a:                                  ; preds = %block_47aa24
  %loadMem_47aa3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 33
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %3933 to i64*
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 9
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %RSI.i456 = bitcast %union.anon* %3936 to i64*
  %3937 = load i64, i64* %PC.i455
  %3938 = add i64 %3937, 5
  store i64 %3938, i64* %PC.i455
  store i64 2, i64* %RSI.i456, align 8
  store %struct.Memory* %loadMem_47aa3a, %struct.Memory** %MEMORY
  %loadMem_47aa3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 33
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %3941 to i64*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 7
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %RDX.i453 = bitcast %union.anon* %3944 to i64*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 15
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %3947 to i64*
  %3948 = load i64, i64* %RBP.i454
  %3949 = sub i64 %3948, 1008
  %3950 = load i64, i64* %PC.i452
  %3951 = add i64 %3950, 7
  store i64 %3951, i64* %PC.i452
  store i64 %3949, i64* %RDX.i453, align 8
  store %struct.Memory* %loadMem_47aa3f, %struct.Memory** %MEMORY
  %loadMem_47aa46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 33
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %3954 to i64*
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 11
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %RDI.i450 = bitcast %union.anon* %3957 to i64*
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 15
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %3960 to i64*
  %3961 = load i64, i64* %RBP.i451
  %3962 = sub i64 %3961, 32
  %3963 = load i64, i64* %PC.i449
  %3964 = add i64 %3963, 3
  store i64 %3964, i64* %PC.i449
  %3965 = inttoptr i64 %3962 to i32*
  %3966 = load i32, i32* %3965
  %3967 = zext i32 %3966 to i64
  store i64 %3967, i64* %RDI.i450, align 8
  store %struct.Memory* %loadMem_47aa46, %struct.Memory** %MEMORY
  %loadMem1_47aa49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 33
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %3970 to i64*
  %3971 = load i64, i64* %PC.i448
  %3972 = add i64 %3971, -438793
  %3973 = load i64, i64* %PC.i448
  %3974 = add i64 %3973, 5
  %3975 = load i64, i64* %PC.i448
  %3976 = add i64 %3975, 5
  store i64 %3976, i64* %PC.i448
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3978 = load i64, i64* %3977, align 8
  %3979 = add i64 %3978, -8
  %3980 = inttoptr i64 %3979 to i64*
  store i64 %3974, i64* %3980
  store i64 %3979, i64* %3977, align 8
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3972, i64* %3981, align 8
  store %struct.Memory* %loadMem1_47aa49, %struct.Memory** %MEMORY
  %loadMem2_47aa49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47aa49 = load i64, i64* %3
  %call2_47aa49 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_47aa49, %struct.Memory* %loadMem2_47aa49)
  store %struct.Memory* %call2_47aa49, %struct.Memory** %MEMORY
  %loadMem_47aa4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 33
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %3984 to i64*
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3986 = getelementptr inbounds %struct.GPR, %struct.GPR* %3985, i32 0, i32 9
  %3987 = getelementptr inbounds %struct.Reg, %struct.Reg* %3986, i32 0, i32 0
  %RSI.i447 = bitcast %union.anon* %3987 to i64*
  %3988 = load i64, i64* %PC.i446
  %3989 = add i64 %3988, 5
  store i64 %3989, i64* %PC.i446
  store i64 20, i64* %RSI.i447, align 8
  store %struct.Memory* %loadMem_47aa4e, %struct.Memory** %MEMORY
  %loadMem_47aa53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 33
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %3992 to i64*
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 11
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %RDI.i444 = bitcast %union.anon* %3995 to i64*
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 15
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %3998 to i64*
  %3999 = load i64, i64* %RBP.i445
  %4000 = sub i64 %3999, 1008
  %4001 = load i64, i64* %PC.i443
  %4002 = add i64 %4001, 6
  store i64 %4002, i64* %PC.i443
  %4003 = inttoptr i64 %4000 to i32*
  %4004 = load i32, i32* %4003
  %4005 = zext i32 %4004 to i64
  store i64 %4005, i64* %RDI.i444, align 8
  store %struct.Memory* %loadMem_47aa53, %struct.Memory** %MEMORY
  %loadMem_47aa59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 33
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %4008 to i64*
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 11
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %EDI.i441 = bitcast %union.anon* %4011 to i32*
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 15
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %4014 to i64*
  %4015 = load i64, i64* %RBP.i442
  %4016 = sub i64 %4015, 1024
  %4017 = load i32, i32* %EDI.i441
  %4018 = zext i32 %4017 to i64
  %4019 = load i64, i64* %PC.i440
  %4020 = add i64 %4019, 6
  store i64 %4020, i64* %PC.i440
  %4021 = inttoptr i64 %4016 to i32*
  store i32 %4017, i32* %4021
  store %struct.Memory* %loadMem_47aa59, %struct.Memory** %MEMORY
  %loadMem_47aa5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4023 = getelementptr inbounds %struct.GPR, %struct.GPR* %4022, i32 0, i32 33
  %4024 = getelementptr inbounds %struct.Reg, %struct.Reg* %4023, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %4024 to i64*
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4026 = getelementptr inbounds %struct.GPR, %struct.GPR* %4025, i32 0, i32 11
  %4027 = getelementptr inbounds %struct.Reg, %struct.Reg* %4026, i32 0, i32 0
  %RDI.i438 = bitcast %union.anon* %4027 to i64*
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4029 = getelementptr inbounds %struct.GPR, %struct.GPR* %4028, i32 0, i32 15
  %4030 = getelementptr inbounds %struct.Reg, %struct.Reg* %4029, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %4030 to i64*
  %4031 = load i64, i64* %RBP.i439
  %4032 = sub i64 %4031, 1004
  %4033 = load i64, i64* %PC.i437
  %4034 = add i64 %4033, 6
  store i64 %4034, i64* %PC.i437
  %4035 = inttoptr i64 %4032 to i32*
  %4036 = load i32, i32* %4035
  %4037 = zext i32 %4036 to i64
  store i64 %4037, i64* %RDI.i438, align 8
  store %struct.Memory* %loadMem_47aa5f, %struct.Memory** %MEMORY
  %loadMem_47aa65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 33
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %4040 to i64*
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 11
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %EDI.i435 = bitcast %union.anon* %4043 to i32*
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 15
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %4046 to i64*
  %4047 = load i64, i64* %RBP.i436
  %4048 = sub i64 %4047, 1028
  %4049 = load i32, i32* %EDI.i435
  %4050 = zext i32 %4049 to i64
  %4051 = load i64, i64* %PC.i434
  %4052 = add i64 %4051, 6
  store i64 %4052, i64* %PC.i434
  %4053 = inttoptr i64 %4048 to i32*
  store i32 %4049, i32* %4053
  store %struct.Memory* %loadMem_47aa65, %struct.Memory** %MEMORY
  %loadMem_47aa6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 33
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %4056 to i64*
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 11
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %RDI.i432 = bitcast %union.anon* %4059 to i64*
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 15
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %4062 to i64*
  %4063 = load i64, i64* %RBP.i433
  %4064 = sub i64 %4063, 1024
  %4065 = load i64, i64* %PC.i431
  %4066 = add i64 %4065, 6
  store i64 %4066, i64* %PC.i431
  %4067 = inttoptr i64 %4064 to i32*
  %4068 = load i32, i32* %4067
  %4069 = zext i32 %4068 to i64
  store i64 %4069, i64* %RDI.i432, align 8
  store %struct.Memory* %loadMem_47aa6b, %struct.Memory** %MEMORY
  %loadMem_47aa71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 33
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %4072 to i64*
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 1
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %EAX.i429 = bitcast %union.anon* %4075 to i32*
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4077 = getelementptr inbounds %struct.GPR, %struct.GPR* %4076, i32 0, i32 15
  %4078 = getelementptr inbounds %struct.Reg, %struct.Reg* %4077, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %4078 to i64*
  %4079 = load i64, i64* %RBP.i430
  %4080 = sub i64 %4079, 1056
  %4081 = load i32, i32* %EAX.i429
  %4082 = zext i32 %4081 to i64
  %4083 = load i64, i64* %PC.i428
  %4084 = add i64 %4083, 6
  store i64 %4084, i64* %PC.i428
  %4085 = inttoptr i64 %4080 to i32*
  store i32 %4081, i32* %4085
  store %struct.Memory* %loadMem_47aa71, %struct.Memory** %MEMORY
  %loadMem_47aa77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4087 = getelementptr inbounds %struct.GPR, %struct.GPR* %4086, i32 0, i32 33
  %4088 = getelementptr inbounds %struct.Reg, %struct.Reg* %4087, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %4088 to i64*
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4090 = getelementptr inbounds %struct.GPR, %struct.GPR* %4089, i32 0, i32 11
  %4091 = getelementptr inbounds %struct.Reg, %struct.Reg* %4090, i32 0, i32 0
  %EDI.i426 = bitcast %union.anon* %4091 to i32*
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4093 = getelementptr inbounds %struct.GPR, %struct.GPR* %4092, i32 0, i32 1
  %4094 = getelementptr inbounds %struct.Reg, %struct.Reg* %4093, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %4094 to i64*
  %4095 = load i32, i32* %EDI.i426
  %4096 = zext i32 %4095 to i64
  %4097 = load i64, i64* %PC.i425
  %4098 = add i64 %4097, 2
  store i64 %4098, i64* %PC.i425
  %4099 = and i64 %4096, 4294967295
  store i64 %4099, i64* %RAX.i427, align 8
  store %struct.Memory* %loadMem_47aa77, %struct.Memory** %MEMORY
  %loadMem_47aa79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 33
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %4102 to i64*
  %4103 = load i64, i64* %PC.i424
  %4104 = add i64 %4103, 1
  store i64 %4104, i64* %PC.i424
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4107 = bitcast %union.anon* %4106 to i32*
  %4108 = load i32, i32* %4107, align 8
  %4109 = sext i32 %4108 to i64
  %4110 = lshr i64 %4109, 32
  store i64 %4110, i64* %4105, align 8
  store %struct.Memory* %loadMem_47aa79, %struct.Memory** %MEMORY
  %loadMem_47aa7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4112 = getelementptr inbounds %struct.GPR, %struct.GPR* %4111, i32 0, i32 33
  %4113 = getelementptr inbounds %struct.Reg, %struct.Reg* %4112, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %4113 to i64*
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4115 = getelementptr inbounds %struct.GPR, %struct.GPR* %4114, i32 0, i32 9
  %4116 = getelementptr inbounds %struct.Reg, %struct.Reg* %4115, i32 0, i32 0
  %ESI.i420 = bitcast %union.anon* %4116 to i32*
  %4117 = load i32, i32* %ESI.i420
  %4118 = zext i32 %4117 to i64
  %4119 = load i64, i64* %PC.i419
  %4120 = add i64 %4119, 2
  store i64 %4120, i64* %PC.i419
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4122 = bitcast %union.anon* %4121 to i32*
  %4123 = load i32, i32* %4122, align 8
  %4124 = zext i32 %4123 to i64
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4126 = bitcast %union.anon* %4125 to i32*
  %4127 = load i32, i32* %4126, align 8
  %4128 = zext i32 %4127 to i64
  %4129 = shl i64 %4118, 32
  %4130 = ashr exact i64 %4129, 32
  %4131 = shl i64 %4128, 32
  %4132 = or i64 %4131, %4124
  %4133 = sdiv i64 %4132, %4130
  %4134 = shl i64 %4133, 32
  %4135 = ashr exact i64 %4134, 32
  %4136 = icmp eq i64 %4133, %4135
  br i1 %4136, label %4141, label %4137

; <label>:4137:                                   ; preds = %block_.L_47aa3a
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4139 = load i64, i64* %4138, align 8
  %4140 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4139, %struct.Memory* %loadMem_47aa7a)
  br label %routine_idivl__esi.exit421

; <label>:4141:                                   ; preds = %block_.L_47aa3a
  %4142 = srem i64 %4132, %4130
  %4143 = getelementptr inbounds %union.anon, %union.anon* %4121, i64 0, i32 0
  %4144 = and i64 %4133, 4294967295
  store i64 %4144, i64* %4143, align 8
  %4145 = getelementptr inbounds %union.anon, %union.anon* %4125, i64 0, i32 0
  %4146 = and i64 %4142, 4294967295
  store i64 %4146, i64* %4145, align 8
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4147, align 1
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4148, align 1
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4149, align 1
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4150, align 1
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4151, align 1
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4152, align 1
  br label %routine_idivl__esi.exit421

routine_idivl__esi.exit421:                       ; preds = %4137, %4141
  %4153 = phi %struct.Memory* [ %4140, %4137 ], [ %loadMem_47aa7a, %4141 ]
  store %struct.Memory* %4153, %struct.Memory** %MEMORY
  %loadMem_47aa7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 33
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %4156 to i64*
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4158 = getelementptr inbounds %struct.GPR, %struct.GPR* %4157, i32 0, i32 1
  %4159 = getelementptr inbounds %struct.Reg, %struct.Reg* %4158, i32 0, i32 0
  %RAX.i418 = bitcast %union.anon* %4159 to i64*
  %4160 = load i64, i64* %RAX.i418
  %4161 = load i64, i64* %PC.i417
  %4162 = add i64 %4161, 3
  store i64 %4162, i64* %PC.i417
  %4163 = trunc i64 %4160 to i32
  %4164 = sub i32 %4163, 1
  %4165 = zext i32 %4164 to i64
  store i64 %4165, i64* %RAX.i418, align 8
  %4166 = icmp ult i32 %4163, 1
  %4167 = zext i1 %4166 to i8
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4167, i8* %4168, align 1
  %4169 = and i32 %4164, 255
  %4170 = call i32 @llvm.ctpop.i32(i32 %4169)
  %4171 = trunc i32 %4170 to i8
  %4172 = and i8 %4171, 1
  %4173 = xor i8 %4172, 1
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4173, i8* %4174, align 1
  %4175 = xor i64 1, %4160
  %4176 = trunc i64 %4175 to i32
  %4177 = xor i32 %4176, %4164
  %4178 = lshr i32 %4177, 4
  %4179 = trunc i32 %4178 to i8
  %4180 = and i8 %4179, 1
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4180, i8* %4181, align 1
  %4182 = icmp eq i32 %4164, 0
  %4183 = zext i1 %4182 to i8
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4183, i8* %4184, align 1
  %4185 = lshr i32 %4164, 31
  %4186 = trunc i32 %4185 to i8
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4186, i8* %4187, align 1
  %4188 = lshr i32 %4163, 31
  %4189 = xor i32 %4185, %4188
  %4190 = add i32 %4189, %4188
  %4191 = icmp eq i32 %4190, 2
  %4192 = zext i1 %4191 to i8
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4192, i8* %4193, align 1
  store %struct.Memory* %loadMem_47aa7c, %struct.Memory** %MEMORY
  %loadMem_47aa7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 33
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %4196 to i64*
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 11
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %RDI.i415 = bitcast %union.anon* %4199 to i64*
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 15
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %4202 to i64*
  %4203 = load i64, i64* %RBP.i416
  %4204 = sub i64 %4203, 1028
  %4205 = load i64, i64* %PC.i414
  %4206 = add i64 %4205, 6
  store i64 %4206, i64* %PC.i414
  %4207 = inttoptr i64 %4204 to i32*
  %4208 = load i32, i32* %4207
  %4209 = zext i32 %4208 to i64
  store i64 %4209, i64* %RDI.i415, align 8
  store %struct.Memory* %loadMem_47aa7f, %struct.Memory** %MEMORY
  %loadMem_47aa85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4211 = getelementptr inbounds %struct.GPR, %struct.GPR* %4210, i32 0, i32 33
  %4212 = getelementptr inbounds %struct.Reg, %struct.Reg* %4211, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %4212 to i64*
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4214 = getelementptr inbounds %struct.GPR, %struct.GPR* %4213, i32 0, i32 1
  %4215 = getelementptr inbounds %struct.Reg, %struct.Reg* %4214, i32 0, i32 0
  %EAX.i412 = bitcast %union.anon* %4215 to i32*
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4217 = getelementptr inbounds %struct.GPR, %struct.GPR* %4216, i32 0, i32 15
  %4218 = getelementptr inbounds %struct.Reg, %struct.Reg* %4217, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %4218 to i64*
  %4219 = load i64, i64* %RBP.i413
  %4220 = sub i64 %4219, 1060
  %4221 = load i32, i32* %EAX.i412
  %4222 = zext i32 %4221 to i64
  %4223 = load i64, i64* %PC.i411
  %4224 = add i64 %4223, 6
  store i64 %4224, i64* %PC.i411
  %4225 = inttoptr i64 %4220 to i32*
  store i32 %4221, i32* %4225
  store %struct.Memory* %loadMem_47aa85, %struct.Memory** %MEMORY
  %loadMem_47aa8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4227 = getelementptr inbounds %struct.GPR, %struct.GPR* %4226, i32 0, i32 33
  %4228 = getelementptr inbounds %struct.Reg, %struct.Reg* %4227, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %4228 to i64*
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4230 = getelementptr inbounds %struct.GPR, %struct.GPR* %4229, i32 0, i32 11
  %4231 = getelementptr inbounds %struct.Reg, %struct.Reg* %4230, i32 0, i32 0
  %EDI.i409 = bitcast %union.anon* %4231 to i32*
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 1
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %4234 to i64*
  %4235 = load i32, i32* %EDI.i409
  %4236 = zext i32 %4235 to i64
  %4237 = load i64, i64* %PC.i408
  %4238 = add i64 %4237, 2
  store i64 %4238, i64* %PC.i408
  %4239 = and i64 %4236, 4294967295
  store i64 %4239, i64* %RAX.i410, align 8
  store %struct.Memory* %loadMem_47aa8b, %struct.Memory** %MEMORY
  %loadMem_47aa8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4241 = getelementptr inbounds %struct.GPR, %struct.GPR* %4240, i32 0, i32 33
  %4242 = getelementptr inbounds %struct.Reg, %struct.Reg* %4241, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %4242 to i64*
  %4243 = load i64, i64* %PC.i407
  %4244 = add i64 %4243, 1
  store i64 %4244, i64* %PC.i407
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4247 = bitcast %union.anon* %4246 to i32*
  %4248 = load i32, i32* %4247, align 8
  %4249 = sext i32 %4248 to i64
  %4250 = lshr i64 %4249, 32
  store i64 %4250, i64* %4245, align 8
  store %struct.Memory* %loadMem_47aa8d, %struct.Memory** %MEMORY
  %loadMem_47aa8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 33
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %4253 to i64*
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 9
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %ESI.i403 = bitcast %union.anon* %4256 to i32*
  %4257 = load i32, i32* %ESI.i403
  %4258 = zext i32 %4257 to i64
  %4259 = load i64, i64* %PC.i402
  %4260 = add i64 %4259, 2
  store i64 %4260, i64* %PC.i402
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4262 = bitcast %union.anon* %4261 to i32*
  %4263 = load i32, i32* %4262, align 8
  %4264 = zext i32 %4263 to i64
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4266 = bitcast %union.anon* %4265 to i32*
  %4267 = load i32, i32* %4266, align 8
  %4268 = zext i32 %4267 to i64
  %4269 = shl i64 %4258, 32
  %4270 = ashr exact i64 %4269, 32
  %4271 = shl i64 %4268, 32
  %4272 = or i64 %4271, %4264
  %4273 = sdiv i64 %4272, %4270
  %4274 = shl i64 %4273, 32
  %4275 = ashr exact i64 %4274, 32
  %4276 = icmp eq i64 %4273, %4275
  br i1 %4276, label %4281, label %4277

; <label>:4277:                                   ; preds = %routine_idivl__esi.exit421
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4279 = load i64, i64* %4278, align 8
  %4280 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4279, %struct.Memory* %loadMem_47aa8e)
  br label %routine_idivl__esi.exit404

; <label>:4281:                                   ; preds = %routine_idivl__esi.exit421
  %4282 = srem i64 %4272, %4270
  %4283 = getelementptr inbounds %union.anon, %union.anon* %4261, i64 0, i32 0
  %4284 = and i64 %4273, 4294967295
  store i64 %4284, i64* %4283, align 8
  %4285 = getelementptr inbounds %union.anon, %union.anon* %4265, i64 0, i32 0
  %4286 = and i64 %4282, 4294967295
  store i64 %4286, i64* %4285, align 8
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4287, align 1
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4288, align 1
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4289, align 1
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4290, align 1
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4291, align 1
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4292, align 1
  br label %routine_idivl__esi.exit404

routine_idivl__esi.exit404:                       ; preds = %4277, %4281
  %4293 = phi %struct.Memory* [ %4280, %4277 ], [ %loadMem_47aa8e, %4281 ]
  store %struct.Memory* %4293, %struct.Memory** %MEMORY
  %loadMem_47aa90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4295 = getelementptr inbounds %struct.GPR, %struct.GPR* %4294, i32 0, i32 33
  %4296 = getelementptr inbounds %struct.Reg, %struct.Reg* %4295, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %4296 to i64*
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 1
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %4299 to i64*
  %4300 = load i64, i64* %RAX.i401
  %4301 = load i64, i64* %PC.i400
  %4302 = add i64 %4301, 3
  store i64 %4302, i64* %PC.i400
  %4303 = trunc i64 %4300 to i32
  %4304 = sub i32 %4303, 1
  %4305 = zext i32 %4304 to i64
  store i64 %4305, i64* %RAX.i401, align 8
  %4306 = icmp ult i32 %4303, 1
  %4307 = zext i1 %4306 to i8
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4307, i8* %4308, align 1
  %4309 = and i32 %4304, 255
  %4310 = call i32 @llvm.ctpop.i32(i32 %4309)
  %4311 = trunc i32 %4310 to i8
  %4312 = and i8 %4311, 1
  %4313 = xor i8 %4312, 1
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4313, i8* %4314, align 1
  %4315 = xor i64 1, %4300
  %4316 = trunc i64 %4315 to i32
  %4317 = xor i32 %4316, %4304
  %4318 = lshr i32 %4317, 4
  %4319 = trunc i32 %4318 to i8
  %4320 = and i8 %4319, 1
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4320, i8* %4321, align 1
  %4322 = icmp eq i32 %4304, 0
  %4323 = zext i1 %4322 to i8
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4323, i8* %4324, align 1
  %4325 = lshr i32 %4304, 31
  %4326 = trunc i32 %4325 to i8
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4326, i8* %4327, align 1
  %4328 = lshr i32 %4303, 31
  %4329 = xor i32 %4325, %4328
  %4330 = add i32 %4329, %4328
  %4331 = icmp eq i32 %4330, 2
  %4332 = zext i1 %4331 to i8
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4332, i8* %4333, align 1
  store %struct.Memory* %loadMem_47aa90, %struct.Memory** %MEMORY
  %loadMem_47aa93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 33
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %4336 to i64*
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4338 = getelementptr inbounds %struct.GPR, %struct.GPR* %4337, i32 0, i32 9
  %4339 = getelementptr inbounds %struct.Reg, %struct.Reg* %4338, i32 0, i32 0
  %RSI.i398 = bitcast %union.anon* %4339 to i64*
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4341 = getelementptr inbounds %struct.GPR, %struct.GPR* %4340, i32 0, i32 15
  %4342 = getelementptr inbounds %struct.Reg, %struct.Reg* %4341, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %4342 to i64*
  %4343 = load i64, i64* %RBP.i399
  %4344 = sub i64 %4343, 1060
  %4345 = load i64, i64* %PC.i397
  %4346 = add i64 %4345, 6
  store i64 %4346, i64* %PC.i397
  %4347 = inttoptr i64 %4344 to i32*
  %4348 = load i32, i32* %4347
  %4349 = zext i32 %4348 to i64
  store i64 %4349, i64* %RSI.i398, align 8
  store %struct.Memory* %loadMem_47aa93, %struct.Memory** %MEMORY
  %loadMem_47aa99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4351 = getelementptr inbounds %struct.GPR, %struct.GPR* %4350, i32 0, i32 33
  %4352 = getelementptr inbounds %struct.Reg, %struct.Reg* %4351, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %4352 to i64*
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4354 = getelementptr inbounds %struct.GPR, %struct.GPR* %4353, i32 0, i32 1
  %4355 = getelementptr inbounds %struct.Reg, %struct.Reg* %4354, i32 0, i32 0
  %EAX.i395 = bitcast %union.anon* %4355 to i32*
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4357 = getelementptr inbounds %struct.GPR, %struct.GPR* %4356, i32 0, i32 9
  %4358 = getelementptr inbounds %struct.Reg, %struct.Reg* %4357, i32 0, i32 0
  %RSI.i396 = bitcast %union.anon* %4358 to i64*
  %4359 = load i64, i64* %RSI.i396
  %4360 = load i32, i32* %EAX.i395
  %4361 = zext i32 %4360 to i64
  %4362 = load i64, i64* %PC.i394
  %4363 = add i64 %4362, 2
  store i64 %4363, i64* %PC.i394
  %4364 = trunc i64 %4359 to i32
  %4365 = sub i32 %4364, %4360
  %4366 = zext i32 %4365 to i64
  store i64 %4366, i64* %RSI.i396, align 8
  %4367 = icmp ult i32 %4364, %4360
  %4368 = zext i1 %4367 to i8
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4368, i8* %4369, align 1
  %4370 = and i32 %4365, 255
  %4371 = call i32 @llvm.ctpop.i32(i32 %4370)
  %4372 = trunc i32 %4371 to i8
  %4373 = and i8 %4372, 1
  %4374 = xor i8 %4373, 1
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4374, i8* %4375, align 1
  %4376 = xor i64 %4361, %4359
  %4377 = trunc i64 %4376 to i32
  %4378 = xor i32 %4377, %4365
  %4379 = lshr i32 %4378, 4
  %4380 = trunc i32 %4379 to i8
  %4381 = and i8 %4380, 1
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4381, i8* %4382, align 1
  %4383 = icmp eq i32 %4365, 0
  %4384 = zext i1 %4383 to i8
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4384, i8* %4385, align 1
  %4386 = lshr i32 %4365, 31
  %4387 = trunc i32 %4386 to i8
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4387, i8* %4388, align 1
  %4389 = lshr i32 %4364, 31
  %4390 = lshr i32 %4360, 31
  %4391 = xor i32 %4390, %4389
  %4392 = xor i32 %4386, %4389
  %4393 = add i32 %4392, %4391
  %4394 = icmp eq i32 %4393, 2
  %4395 = zext i1 %4394 to i8
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4395, i8* %4396, align 1
  store %struct.Memory* %loadMem_47aa99, %struct.Memory** %MEMORY
  %loadMem_47aa9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4398 = getelementptr inbounds %struct.GPR, %struct.GPR* %4397, i32 0, i32 33
  %4399 = getelementptr inbounds %struct.Reg, %struct.Reg* %4398, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %4399 to i64*
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4401 = getelementptr inbounds %struct.GPR, %struct.GPR* %4400, i32 0, i32 9
  %4402 = getelementptr inbounds %struct.Reg, %struct.Reg* %4401, i32 0, i32 0
  %ESI.i392 = bitcast %union.anon* %4402 to i32*
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4404 = getelementptr inbounds %struct.GPR, %struct.GPR* %4403, i32 0, i32 11
  %4405 = getelementptr inbounds %struct.Reg, %struct.Reg* %4404, i32 0, i32 0
  %RDI.i393 = bitcast %union.anon* %4405 to i64*
  %4406 = load i32, i32* %ESI.i392
  %4407 = zext i32 %4406 to i64
  %4408 = load i64, i64* %PC.i391
  %4409 = add i64 %4408, 2
  store i64 %4409, i64* %PC.i391
  %4410 = and i64 %4407, 4294967295
  store i64 %4410, i64* %RDI.i393, align 8
  store %struct.Memory* %loadMem_47aa9b, %struct.Memory** %MEMORY
  %loadMem1_47aa9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 33
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %4413 to i64*
  %4414 = load i64, i64* %PC.i390
  %4415 = add i64 %4414, -498365
  %4416 = load i64, i64* %PC.i390
  %4417 = add i64 %4416, 5
  %4418 = load i64, i64* %PC.i390
  %4419 = add i64 %4418, 5
  store i64 %4419, i64* %PC.i390
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4421 = load i64, i64* %4420, align 8
  %4422 = add i64 %4421, -8
  %4423 = inttoptr i64 %4422 to i64*
  store i64 %4417, i64* %4423
  store i64 %4422, i64* %4420, align 8
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4415, i64* %4424, align 8
  store %struct.Memory* %loadMem1_47aa9d, %struct.Memory** %MEMORY
  %loadMem2_47aa9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47aa9d = load i64, i64* %3
  %4425 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_47aa9d)
  store %struct.Memory* %4425, %struct.Memory** %MEMORY
  %loadMem_47aaa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 33
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4428 to i64*
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 9
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %RSI.i386 = bitcast %union.anon* %4431 to i64*
  %4432 = load i64, i64* %PC.i385
  %4433 = add i64 %4432, 5
  store i64 %4433, i64* %PC.i385
  store i64 20, i64* %RSI.i386, align 8
  store %struct.Memory* %loadMem_47aaa2, %struct.Memory** %MEMORY
  %loadMem_47aaa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4435 = getelementptr inbounds %struct.GPR, %struct.GPR* %4434, i32 0, i32 33
  %4436 = getelementptr inbounds %struct.Reg, %struct.Reg* %4435, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4436 to i64*
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4438 = getelementptr inbounds %struct.GPR, %struct.GPR* %4437, i32 0, i32 11
  %4439 = getelementptr inbounds %struct.Reg, %struct.Reg* %4438, i32 0, i32 0
  %RDI.i383 = bitcast %union.anon* %4439 to i64*
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4441 = getelementptr inbounds %struct.GPR, %struct.GPR* %4440, i32 0, i32 15
  %4442 = getelementptr inbounds %struct.Reg, %struct.Reg* %4441, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %4442 to i64*
  %4443 = load i64, i64* %RBP.i384
  %4444 = sub i64 %4443, 1024
  %4445 = load i64, i64* %PC.i382
  %4446 = add i64 %4445, 6
  store i64 %4446, i64* %PC.i382
  %4447 = inttoptr i64 %4444 to i32*
  %4448 = load i32, i32* %4447
  %4449 = zext i32 %4448 to i64
  store i64 %4449, i64* %RDI.i383, align 8
  store %struct.Memory* %loadMem_47aaa7, %struct.Memory** %MEMORY
  %loadMem_47aaad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 33
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %4452 to i64*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 1
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %EAX.i380 = bitcast %union.anon* %4455 to i32*
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 15
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %4458 to i64*
  %4459 = load i64, i64* %RBP.i381
  %4460 = sub i64 %4459, 1064
  %4461 = load i32, i32* %EAX.i380
  %4462 = zext i32 %4461 to i64
  %4463 = load i64, i64* %PC.i379
  %4464 = add i64 %4463, 6
  store i64 %4464, i64* %PC.i379
  %4465 = inttoptr i64 %4460 to i32*
  store i32 %4461, i32* %4465
  store %struct.Memory* %loadMem_47aaad, %struct.Memory** %MEMORY
  %loadMem_47aab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4467 = getelementptr inbounds %struct.GPR, %struct.GPR* %4466, i32 0, i32 33
  %4468 = getelementptr inbounds %struct.Reg, %struct.Reg* %4467, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %4468 to i64*
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4470 = getelementptr inbounds %struct.GPR, %struct.GPR* %4469, i32 0, i32 11
  %4471 = getelementptr inbounds %struct.Reg, %struct.Reg* %4470, i32 0, i32 0
  %EDI.i377 = bitcast %union.anon* %4471 to i32*
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4473 = getelementptr inbounds %struct.GPR, %struct.GPR* %4472, i32 0, i32 1
  %4474 = getelementptr inbounds %struct.Reg, %struct.Reg* %4473, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %4474 to i64*
  %4475 = load i32, i32* %EDI.i377
  %4476 = zext i32 %4475 to i64
  %4477 = load i64, i64* %PC.i376
  %4478 = add i64 %4477, 2
  store i64 %4478, i64* %PC.i376
  %4479 = and i64 %4476, 4294967295
  store i64 %4479, i64* %RAX.i378, align 8
  store %struct.Memory* %loadMem_47aab3, %struct.Memory** %MEMORY
  %loadMem_47aab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4481 = getelementptr inbounds %struct.GPR, %struct.GPR* %4480, i32 0, i32 33
  %4482 = getelementptr inbounds %struct.Reg, %struct.Reg* %4481, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %4482 to i64*
  %4483 = load i64, i64* %PC.i375
  %4484 = add i64 %4483, 1
  store i64 %4484, i64* %PC.i375
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4487 = bitcast %union.anon* %4486 to i32*
  %4488 = load i32, i32* %4487, align 8
  %4489 = sext i32 %4488 to i64
  %4490 = lshr i64 %4489, 32
  store i64 %4490, i64* %4485, align 8
  store %struct.Memory* %loadMem_47aab5, %struct.Memory** %MEMORY
  %loadMem_47aab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4492 = getelementptr inbounds %struct.GPR, %struct.GPR* %4491, i32 0, i32 33
  %4493 = getelementptr inbounds %struct.Reg, %struct.Reg* %4492, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %4493 to i64*
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 9
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %ESI.i370 = bitcast %union.anon* %4496 to i32*
  %4497 = load i32, i32* %ESI.i370
  %4498 = zext i32 %4497 to i64
  %4499 = load i64, i64* %PC.i369
  %4500 = add i64 %4499, 2
  store i64 %4500, i64* %PC.i369
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4502 = bitcast %union.anon* %4501 to i32*
  %4503 = load i32, i32* %4502, align 8
  %4504 = zext i32 %4503 to i64
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4506 = bitcast %union.anon* %4505 to i32*
  %4507 = load i32, i32* %4506, align 8
  %4508 = zext i32 %4507 to i64
  %4509 = shl i64 %4498, 32
  %4510 = ashr exact i64 %4509, 32
  %4511 = shl i64 %4508, 32
  %4512 = or i64 %4511, %4504
  %4513 = sdiv i64 %4512, %4510
  %4514 = shl i64 %4513, 32
  %4515 = ashr exact i64 %4514, 32
  %4516 = icmp eq i64 %4513, %4515
  br i1 %4516, label %4521, label %4517

; <label>:4517:                                   ; preds = %routine_idivl__esi.exit404
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4519 = load i64, i64* %4518, align 8
  %4520 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4519, %struct.Memory* %loadMem_47aab6)
  br label %routine_idivl__esi.exit371

; <label>:4521:                                   ; preds = %routine_idivl__esi.exit404
  %4522 = srem i64 %4512, %4510
  %4523 = getelementptr inbounds %union.anon, %union.anon* %4501, i64 0, i32 0
  %4524 = and i64 %4513, 4294967295
  store i64 %4524, i64* %4523, align 8
  %4525 = getelementptr inbounds %union.anon, %union.anon* %4505, i64 0, i32 0
  %4526 = and i64 %4522, 4294967295
  store i64 %4526, i64* %4525, align 8
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4527, align 1
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4528, align 1
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4529, align 1
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4530, align 1
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4531, align 1
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4532, align 1
  br label %routine_idivl__esi.exit371

routine_idivl__esi.exit371:                       ; preds = %4517, %4521
  %4533 = phi %struct.Memory* [ %4520, %4517 ], [ %loadMem_47aab6, %4521 ]
  store %struct.Memory* %4533, %struct.Memory** %MEMORY
  %loadMem_47aab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4535 = getelementptr inbounds %struct.GPR, %struct.GPR* %4534, i32 0, i32 33
  %4536 = getelementptr inbounds %struct.Reg, %struct.Reg* %4535, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %4536 to i64*
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4538 = getelementptr inbounds %struct.GPR, %struct.GPR* %4537, i32 0, i32 7
  %4539 = getelementptr inbounds %struct.Reg, %struct.Reg* %4538, i32 0, i32 0
  %RDX.i368 = bitcast %union.anon* %4539 to i64*
  %4540 = load i64, i64* %RDX.i368
  %4541 = load i64, i64* %PC.i367
  %4542 = add i64 %4541, 3
  store i64 %4542, i64* %PC.i367
  %4543 = trunc i64 %4540 to i32
  %4544 = sub i32 %4543, 1
  %4545 = zext i32 %4544 to i64
  store i64 %4545, i64* %RDX.i368, align 8
  %4546 = icmp ult i32 %4543, 1
  %4547 = zext i1 %4546 to i8
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4547, i8* %4548, align 1
  %4549 = and i32 %4544, 255
  %4550 = call i32 @llvm.ctpop.i32(i32 %4549)
  %4551 = trunc i32 %4550 to i8
  %4552 = and i8 %4551, 1
  %4553 = xor i8 %4552, 1
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4553, i8* %4554, align 1
  %4555 = xor i64 1, %4540
  %4556 = trunc i64 %4555 to i32
  %4557 = xor i32 %4556, %4544
  %4558 = lshr i32 %4557, 4
  %4559 = trunc i32 %4558 to i8
  %4560 = and i8 %4559, 1
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4560, i8* %4561, align 1
  %4562 = icmp eq i32 %4544, 0
  %4563 = zext i1 %4562 to i8
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4563, i8* %4564, align 1
  %4565 = lshr i32 %4544, 31
  %4566 = trunc i32 %4565 to i8
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4566, i8* %4567, align 1
  %4568 = lshr i32 %4543, 31
  %4569 = xor i32 %4565, %4568
  %4570 = add i32 %4569, %4568
  %4571 = icmp eq i32 %4570, 2
  %4572 = zext i1 %4571 to i8
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4572, i8* %4573, align 1
  store %struct.Memory* %loadMem_47aab8, %struct.Memory** %MEMORY
  %loadMem_47aabb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4575 = getelementptr inbounds %struct.GPR, %struct.GPR* %4574, i32 0, i32 33
  %4576 = getelementptr inbounds %struct.Reg, %struct.Reg* %4575, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %4576 to i64*
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4578 = getelementptr inbounds %struct.GPR, %struct.GPR* %4577, i32 0, i32 11
  %4579 = getelementptr inbounds %struct.Reg, %struct.Reg* %4578, i32 0, i32 0
  %RDI.i365 = bitcast %union.anon* %4579 to i64*
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4581 = getelementptr inbounds %struct.GPR, %struct.GPR* %4580, i32 0, i32 15
  %4582 = getelementptr inbounds %struct.Reg, %struct.Reg* %4581, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %4582 to i64*
  %4583 = load i64, i64* %RBP.i366
  %4584 = sub i64 %4583, 1028
  %4585 = load i64, i64* %PC.i364
  %4586 = add i64 %4585, 6
  store i64 %4586, i64* %PC.i364
  %4587 = inttoptr i64 %4584 to i32*
  %4588 = load i32, i32* %4587
  %4589 = zext i32 %4588 to i64
  store i64 %4589, i64* %RDI.i365, align 8
  store %struct.Memory* %loadMem_47aabb, %struct.Memory** %MEMORY
  %loadMem_47aac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 33
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %4592 to i64*
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4594 = getelementptr inbounds %struct.GPR, %struct.GPR* %4593, i32 0, i32 11
  %4595 = getelementptr inbounds %struct.Reg, %struct.Reg* %4594, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %4595 to i32*
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4597 = getelementptr inbounds %struct.GPR, %struct.GPR* %4596, i32 0, i32 1
  %4598 = getelementptr inbounds %struct.Reg, %struct.Reg* %4597, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %4598 to i64*
  %4599 = load i32, i32* %EDI.i
  %4600 = zext i32 %4599 to i64
  %4601 = load i64, i64* %PC.i362
  %4602 = add i64 %4601, 2
  store i64 %4602, i64* %PC.i362
  %4603 = and i64 %4600, 4294967295
  store i64 %4603, i64* %RAX.i363, align 8
  store %struct.Memory* %loadMem_47aac1, %struct.Memory** %MEMORY
  %loadMem_47aac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4605 = getelementptr inbounds %struct.GPR, %struct.GPR* %4604, i32 0, i32 33
  %4606 = getelementptr inbounds %struct.Reg, %struct.Reg* %4605, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %4606 to i64*
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 7
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %EDX.i360 = bitcast %union.anon* %4609 to i32*
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 15
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %4612 to i64*
  %4613 = load i64, i64* %RBP.i361
  %4614 = sub i64 %4613, 1068
  %4615 = load i32, i32* %EDX.i360
  %4616 = zext i32 %4615 to i64
  %4617 = load i64, i64* %PC.i359
  %4618 = add i64 %4617, 6
  store i64 %4618, i64* %PC.i359
  %4619 = inttoptr i64 %4614 to i32*
  store i32 %4615, i32* %4619
  store %struct.Memory* %loadMem_47aac3, %struct.Memory** %MEMORY
  %loadMem_47aac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 33
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %4622 to i64*
  %4623 = load i64, i64* %PC.i358
  %4624 = add i64 %4623, 1
  store i64 %4624, i64* %PC.i358
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4627 = bitcast %union.anon* %4626 to i32*
  %4628 = load i32, i32* %4627, align 8
  %4629 = sext i32 %4628 to i64
  %4630 = lshr i64 %4629, 32
  store i64 %4630, i64* %4625, align 8
  store %struct.Memory* %loadMem_47aac9, %struct.Memory** %MEMORY
  %loadMem_47aaca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4632 = getelementptr inbounds %struct.GPR, %struct.GPR* %4631, i32 0, i32 33
  %4633 = getelementptr inbounds %struct.Reg, %struct.Reg* %4632, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %4633 to i64*
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4635 = getelementptr inbounds %struct.GPR, %struct.GPR* %4634, i32 0, i32 9
  %4636 = getelementptr inbounds %struct.Reg, %struct.Reg* %4635, i32 0, i32 0
  %ESI.i355 = bitcast %union.anon* %4636 to i32*
  %4637 = load i32, i32* %ESI.i355
  %4638 = zext i32 %4637 to i64
  %4639 = load i64, i64* %PC.i354
  %4640 = add i64 %4639, 2
  store i64 %4640, i64* %PC.i354
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4642 = bitcast %union.anon* %4641 to i32*
  %4643 = load i32, i32* %4642, align 8
  %4644 = zext i32 %4643 to i64
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4646 = bitcast %union.anon* %4645 to i32*
  %4647 = load i32, i32* %4646, align 8
  %4648 = zext i32 %4647 to i64
  %4649 = shl i64 %4638, 32
  %4650 = ashr exact i64 %4649, 32
  %4651 = shl i64 %4648, 32
  %4652 = or i64 %4651, %4644
  %4653 = sdiv i64 %4652, %4650
  %4654 = shl i64 %4653, 32
  %4655 = ashr exact i64 %4654, 32
  %4656 = icmp eq i64 %4653, %4655
  br i1 %4656, label %4661, label %4657

; <label>:4657:                                   ; preds = %routine_idivl__esi.exit371
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4659 = load i64, i64* %4658, align 8
  %4660 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4659, %struct.Memory* %loadMem_47aaca)
  br label %routine_idivl__esi.exit

; <label>:4661:                                   ; preds = %routine_idivl__esi.exit371
  %4662 = srem i64 %4652, %4650
  %4663 = getelementptr inbounds %union.anon, %union.anon* %4641, i64 0, i32 0
  %4664 = and i64 %4653, 4294967295
  store i64 %4664, i64* %4663, align 8
  %4665 = getelementptr inbounds %union.anon, %union.anon* %4645, i64 0, i32 0
  %4666 = and i64 %4662, 4294967295
  store i64 %4666, i64* %4665, align 8
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4667, align 1
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4668, align 1
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4669, align 1
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4670, align 1
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4671, align 1
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4672, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %4657, %4661
  %4673 = phi %struct.Memory* [ %4660, %4657 ], [ %loadMem_47aaca, %4661 ]
  store %struct.Memory* %4673, %struct.Memory** %MEMORY
  %loadMem_47aacc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4675 = getelementptr inbounds %struct.GPR, %struct.GPR* %4674, i32 0, i32 33
  %4676 = getelementptr inbounds %struct.Reg, %struct.Reg* %4675, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %4676 to i64*
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4678 = getelementptr inbounds %struct.GPR, %struct.GPR* %4677, i32 0, i32 7
  %4679 = getelementptr inbounds %struct.Reg, %struct.Reg* %4678, i32 0, i32 0
  %RDX.i353 = bitcast %union.anon* %4679 to i64*
  %4680 = load i64, i64* %RDX.i353
  %4681 = load i64, i64* %PC.i352
  %4682 = add i64 %4681, 3
  store i64 %4682, i64* %PC.i352
  %4683 = trunc i64 %4680 to i32
  %4684 = sub i32 %4683, 1
  %4685 = zext i32 %4684 to i64
  store i64 %4685, i64* %RDX.i353, align 8
  %4686 = icmp ult i32 %4683, 1
  %4687 = zext i1 %4686 to i8
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4687, i8* %4688, align 1
  %4689 = and i32 %4684, 255
  %4690 = call i32 @llvm.ctpop.i32(i32 %4689)
  %4691 = trunc i32 %4690 to i8
  %4692 = and i8 %4691, 1
  %4693 = xor i8 %4692, 1
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4693, i8* %4694, align 1
  %4695 = xor i64 1, %4680
  %4696 = trunc i64 %4695 to i32
  %4697 = xor i32 %4696, %4684
  %4698 = lshr i32 %4697, 4
  %4699 = trunc i32 %4698 to i8
  %4700 = and i8 %4699, 1
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4700, i8* %4701, align 1
  %4702 = icmp eq i32 %4684, 0
  %4703 = zext i1 %4702 to i8
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4703, i8* %4704, align 1
  %4705 = lshr i32 %4684, 31
  %4706 = trunc i32 %4705 to i8
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4706, i8* %4707, align 1
  %4708 = lshr i32 %4683, 31
  %4709 = xor i32 %4705, %4708
  %4710 = add i32 %4709, %4708
  %4711 = icmp eq i32 %4710, 2
  %4712 = zext i1 %4711 to i8
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4712, i8* %4713, align 1
  store %struct.Memory* %loadMem_47aacc, %struct.Memory** %MEMORY
  %loadMem_47aacf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4715 = getelementptr inbounds %struct.GPR, %struct.GPR* %4714, i32 0, i32 33
  %4716 = getelementptr inbounds %struct.Reg, %struct.Reg* %4715, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %4716 to i64*
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 9
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %RSI.i350 = bitcast %union.anon* %4719 to i64*
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4721 = getelementptr inbounds %struct.GPR, %struct.GPR* %4720, i32 0, i32 15
  %4722 = getelementptr inbounds %struct.Reg, %struct.Reg* %4721, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %4722 to i64*
  %4723 = load i64, i64* %RBP.i351
  %4724 = sub i64 %4723, 1068
  %4725 = load i64, i64* %PC.i349
  %4726 = add i64 %4725, 6
  store i64 %4726, i64* %PC.i349
  %4727 = inttoptr i64 %4724 to i32*
  %4728 = load i32, i32* %4727
  %4729 = zext i32 %4728 to i64
  store i64 %4729, i64* %RSI.i350, align 8
  store %struct.Memory* %loadMem_47aacf, %struct.Memory** %MEMORY
  %loadMem_47aad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4731 = getelementptr inbounds %struct.GPR, %struct.GPR* %4730, i32 0, i32 33
  %4732 = getelementptr inbounds %struct.Reg, %struct.Reg* %4731, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %4732 to i64*
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4734 = getelementptr inbounds %struct.GPR, %struct.GPR* %4733, i32 0, i32 7
  %4735 = getelementptr inbounds %struct.Reg, %struct.Reg* %4734, i32 0, i32 0
  %EDX.i347 = bitcast %union.anon* %4735 to i32*
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4737 = getelementptr inbounds %struct.GPR, %struct.GPR* %4736, i32 0, i32 9
  %4738 = getelementptr inbounds %struct.Reg, %struct.Reg* %4737, i32 0, i32 0
  %RSI.i348 = bitcast %union.anon* %4738 to i64*
  %4739 = load i64, i64* %RSI.i348
  %4740 = load i32, i32* %EDX.i347
  %4741 = zext i32 %4740 to i64
  %4742 = load i64, i64* %PC.i346
  %4743 = add i64 %4742, 2
  store i64 %4743, i64* %PC.i346
  %4744 = trunc i64 %4739 to i32
  %4745 = sub i32 %4744, %4740
  %4746 = zext i32 %4745 to i64
  store i64 %4746, i64* %RSI.i348, align 8
  %4747 = icmp ult i32 %4744, %4740
  %4748 = zext i1 %4747 to i8
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4748, i8* %4749, align 1
  %4750 = and i32 %4745, 255
  %4751 = call i32 @llvm.ctpop.i32(i32 %4750)
  %4752 = trunc i32 %4751 to i8
  %4753 = and i8 %4752, 1
  %4754 = xor i8 %4753, 1
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4754, i8* %4755, align 1
  %4756 = xor i64 %4741, %4739
  %4757 = trunc i64 %4756 to i32
  %4758 = xor i32 %4757, %4745
  %4759 = lshr i32 %4758, 4
  %4760 = trunc i32 %4759 to i8
  %4761 = and i8 %4760, 1
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4761, i8* %4762, align 1
  %4763 = icmp eq i32 %4745, 0
  %4764 = zext i1 %4763 to i8
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4764, i8* %4765, align 1
  %4766 = lshr i32 %4745, 31
  %4767 = trunc i32 %4766 to i8
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4767, i8* %4768, align 1
  %4769 = lshr i32 %4744, 31
  %4770 = lshr i32 %4740, 31
  %4771 = xor i32 %4770, %4769
  %4772 = xor i32 %4766, %4769
  %4773 = add i32 %4772, %4771
  %4774 = icmp eq i32 %4773, 2
  %4775 = zext i1 %4774 to i8
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4775, i8* %4776, align 1
  store %struct.Memory* %loadMem_47aad5, %struct.Memory** %MEMORY
  %loadMem_47aad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 33
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %4779 to i64*
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4781 = getelementptr inbounds %struct.GPR, %struct.GPR* %4780, i32 0, i32 9
  %4782 = getelementptr inbounds %struct.Reg, %struct.Reg* %4781, i32 0, i32 0
  %ESI.i344 = bitcast %union.anon* %4782 to i32*
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 11
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %RDI.i345 = bitcast %union.anon* %4785 to i64*
  %4786 = load i32, i32* %ESI.i344
  %4787 = zext i32 %4786 to i64
  %4788 = load i64, i64* %PC.i343
  %4789 = add i64 %4788, 2
  store i64 %4789, i64* %PC.i343
  %4790 = and i64 %4787, 4294967295
  store i64 %4790, i64* %RDI.i345, align 8
  store %struct.Memory* %loadMem_47aad7, %struct.Memory** %MEMORY
  %loadMem1_47aad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4792 = getelementptr inbounds %struct.GPR, %struct.GPR* %4791, i32 0, i32 33
  %4793 = getelementptr inbounds %struct.Reg, %struct.Reg* %4792, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %4793 to i64*
  %4794 = load i64, i64* %PC.i342
  %4795 = add i64 %4794, -498425
  %4796 = load i64, i64* %PC.i342
  %4797 = add i64 %4796, 5
  %4798 = load i64, i64* %PC.i342
  %4799 = add i64 %4798, 5
  store i64 %4799, i64* %PC.i342
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4801 = load i64, i64* %4800, align 8
  %4802 = add i64 %4801, -8
  %4803 = inttoptr i64 %4802 to i64*
  store i64 %4797, i64* %4803
  store i64 %4802, i64* %4800, align 8
  %4804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4795, i64* %4804, align 8
  store %struct.Memory* %loadMem1_47aad9, %struct.Memory** %MEMORY
  %loadMem2_47aad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47aad9 = load i64, i64* %3
  %4805 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_47aad9)
  store %struct.Memory* %4805, %struct.Memory** %MEMORY
  %loadMem_47aade = load %struct.Memory*, %struct.Memory** %MEMORY
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4807 = getelementptr inbounds %struct.GPR, %struct.GPR* %4806, i32 0, i32 33
  %4808 = getelementptr inbounds %struct.Reg, %struct.Reg* %4807, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %4808 to i64*
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 7
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %RDX.i338 = bitcast %union.anon* %4811 to i64*
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4813 = getelementptr inbounds %struct.GPR, %struct.GPR* %4812, i32 0, i32 15
  %4814 = getelementptr inbounds %struct.Reg, %struct.Reg* %4813, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %4814 to i64*
  %4815 = load i64, i64* %RBP.i339
  %4816 = sub i64 %4815, 1064
  %4817 = load i64, i64* %PC.i337
  %4818 = add i64 %4817, 6
  store i64 %4818, i64* %PC.i337
  %4819 = inttoptr i64 %4816 to i32*
  %4820 = load i32, i32* %4819
  %4821 = zext i32 %4820 to i64
  store i64 %4821, i64* %RDX.i338, align 8
  store %struct.Memory* %loadMem_47aade, %struct.Memory** %MEMORY
  %loadMem_47aae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4823 = getelementptr inbounds %struct.GPR, %struct.GPR* %4822, i32 0, i32 33
  %4824 = getelementptr inbounds %struct.Reg, %struct.Reg* %4823, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %4824 to i64*
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 1
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %EAX.i335 = bitcast %union.anon* %4827 to i32*
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4829 = getelementptr inbounds %struct.GPR, %struct.GPR* %4828, i32 0, i32 7
  %4830 = getelementptr inbounds %struct.Reg, %struct.Reg* %4829, i32 0, i32 0
  %RDX.i336 = bitcast %union.anon* %4830 to i64*
  %4831 = load i64, i64* %RDX.i336
  %4832 = load i32, i32* %EAX.i335
  %4833 = zext i32 %4832 to i64
  %4834 = load i64, i64* %PC.i334
  %4835 = add i64 %4834, 2
  store i64 %4835, i64* %PC.i334
  %4836 = trunc i64 %4831 to i32
  %4837 = add i32 %4832, %4836
  %4838 = zext i32 %4837 to i64
  store i64 %4838, i64* %RDX.i336, align 8
  %4839 = icmp ult i32 %4837, %4836
  %4840 = icmp ult i32 %4837, %4832
  %4841 = or i1 %4839, %4840
  %4842 = zext i1 %4841 to i8
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4842, i8* %4843, align 1
  %4844 = and i32 %4837, 255
  %4845 = call i32 @llvm.ctpop.i32(i32 %4844)
  %4846 = trunc i32 %4845 to i8
  %4847 = and i8 %4846, 1
  %4848 = xor i8 %4847, 1
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4848, i8* %4849, align 1
  %4850 = xor i64 %4833, %4831
  %4851 = trunc i64 %4850 to i32
  %4852 = xor i32 %4851, %4837
  %4853 = lshr i32 %4852, 4
  %4854 = trunc i32 %4853 to i8
  %4855 = and i8 %4854, 1
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4855, i8* %4856, align 1
  %4857 = icmp eq i32 %4837, 0
  %4858 = zext i1 %4857 to i8
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4858, i8* %4859, align 1
  %4860 = lshr i32 %4837, 31
  %4861 = trunc i32 %4860 to i8
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4861, i8* %4862, align 1
  %4863 = lshr i32 %4836, 31
  %4864 = lshr i32 %4832, 31
  %4865 = xor i32 %4860, %4863
  %4866 = xor i32 %4860, %4864
  %4867 = add i32 %4865, %4866
  %4868 = icmp eq i32 %4867, 2
  %4869 = zext i1 %4868 to i8
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4869, i8* %4870, align 1
  store %struct.Memory* %loadMem_47aae4, %struct.Memory** %MEMORY
  %loadMem_47aae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4872 = getelementptr inbounds %struct.GPR, %struct.GPR* %4871, i32 0, i32 33
  %4873 = getelementptr inbounds %struct.Reg, %struct.Reg* %4872, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %4873 to i64*
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4875 = getelementptr inbounds %struct.GPR, %struct.GPR* %4874, i32 0, i32 7
  %4876 = getelementptr inbounds %struct.Reg, %struct.Reg* %4875, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4876 to i32*
  %4877 = load i32, i32* %EDX.i
  %4878 = zext i32 %4877 to i64
  %4879 = load i64, i64* %PC.i333
  %4880 = add i64 %4879, 3
  store i64 %4880, i64* %PC.i333
  %4881 = sub i32 %4877, 1
  %4882 = icmp ult i32 %4877, 1
  %4883 = zext i1 %4882 to i8
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4883, i8* %4884, align 1
  %4885 = and i32 %4881, 255
  %4886 = call i32 @llvm.ctpop.i32(i32 %4885)
  %4887 = trunc i32 %4886 to i8
  %4888 = and i8 %4887, 1
  %4889 = xor i8 %4888, 1
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4889, i8* %4890, align 1
  %4891 = xor i64 1, %4878
  %4892 = trunc i64 %4891 to i32
  %4893 = xor i32 %4892, %4881
  %4894 = lshr i32 %4893, 4
  %4895 = trunc i32 %4894 to i8
  %4896 = and i8 %4895, 1
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4896, i8* %4897, align 1
  %4898 = icmp eq i32 %4881, 0
  %4899 = zext i1 %4898 to i8
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4899, i8* %4900, align 1
  %4901 = lshr i32 %4881, 31
  %4902 = trunc i32 %4901 to i8
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4902, i8* %4903, align 1
  %4904 = lshr i32 %4877, 31
  %4905 = xor i32 %4901, %4904
  %4906 = add i32 %4905, %4904
  %4907 = icmp eq i32 %4906, 2
  %4908 = zext i1 %4907 to i8
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4908, i8* %4909, align 1
  store %struct.Memory* %loadMem_47aae6, %struct.Memory** %MEMORY
  %loadMem_47aae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4911 = getelementptr inbounds %struct.GPR, %struct.GPR* %4910, i32 0, i32 33
  %4912 = getelementptr inbounds %struct.Reg, %struct.Reg* %4911, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %4912 to i64*
  %4913 = load i64, i64* %PC.i332
  %4914 = add i64 %4913, 11
  %4915 = load i64, i64* %PC.i332
  %4916 = add i64 %4915, 6
  %4917 = load i64, i64* %PC.i332
  %4918 = add i64 %4917, 6
  store i64 %4918, i64* %PC.i332
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4920 = load i8, i8* %4919, align 1
  store i8 %4920, i8* %BRANCH_TAKEN, align 1
  %4921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4922 = icmp ne i8 %4920, 0
  %4923 = select i1 %4922, i64 %4914, i64 %4916
  store i64 %4923, i64* %4921, align 8
  store %struct.Memory* %loadMem_47aae9, %struct.Memory** %MEMORY
  %loadBr_47aae9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47aae9 = icmp eq i8 %loadBr_47aae9, 1
  br i1 %cmpBr_47aae9, label %block_.L_47aaf4, label %block_47aaef

block_47aaef:                                     ; preds = %routine_idivl__esi.exit
  %loadMem_47aaef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4925 = getelementptr inbounds %struct.GPR, %struct.GPR* %4924, i32 0, i32 33
  %4926 = getelementptr inbounds %struct.Reg, %struct.Reg* %4925, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %4926 to i64*
  %4927 = load i64, i64* %PC.i331
  %4928 = add i64 %4927, 297
  %4929 = load i64, i64* %PC.i331
  %4930 = add i64 %4929, 5
  store i64 %4930, i64* %PC.i331
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4928, i64* %4931, align 8
  store %struct.Memory* %loadMem_47aaef, %struct.Memory** %MEMORY
  br label %block_.L_47ac18

block_.L_47aaf4:                                  ; preds = %routine_idivl__esi.exit
  %loadMem_47aaf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4933 = getelementptr inbounds %struct.GPR, %struct.GPR* %4932, i32 0, i32 33
  %4934 = getelementptr inbounds %struct.Reg, %struct.Reg* %4933, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %4934 to i64*
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4936 = getelementptr inbounds %struct.GPR, %struct.GPR* %4935, i32 0, i32 7
  %4937 = getelementptr inbounds %struct.Reg, %struct.Reg* %4936, i32 0, i32 0
  %RDX.i330 = bitcast %union.anon* %4937 to i64*
  %4938 = load i64, i64* %PC.i329
  %4939 = add i64 %4938, 5
  store i64 %4939, i64* %PC.i329
  store i64 4, i64* %RDX.i330, align 8
  store %struct.Memory* %loadMem_47aaf4, %struct.Memory** %MEMORY
  %loadMem_47aaf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4941 = getelementptr inbounds %struct.GPR, %struct.GPR* %4940, i32 0, i32 33
  %4942 = getelementptr inbounds %struct.Reg, %struct.Reg* %4941, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %4942 to i64*
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4944 = getelementptr inbounds %struct.GPR, %struct.GPR* %4943, i32 0, i32 1
  %4945 = getelementptr inbounds %struct.Reg, %struct.Reg* %4944, i32 0, i32 0
  %EAX.i327 = bitcast %union.anon* %4945 to i32*
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4947 = getelementptr inbounds %struct.GPR, %struct.GPR* %4946, i32 0, i32 1
  %4948 = getelementptr inbounds %struct.Reg, %struct.Reg* %4947, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %4948 to i64*
  %4949 = load i64, i64* %RAX.i328
  %4950 = load i32, i32* %EAX.i327
  %4951 = zext i32 %4950 to i64
  %4952 = load i64, i64* %PC.i326
  %4953 = add i64 %4952, 2
  store i64 %4953, i64* %PC.i326
  %4954 = xor i64 %4951, %4949
  %4955 = trunc i64 %4954 to i32
  %4956 = and i64 %4954, 4294967295
  store i64 %4956, i64* %RAX.i328, align 8
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4957, align 1
  %4958 = and i32 %4955, 255
  %4959 = call i32 @llvm.ctpop.i32(i32 %4958)
  %4960 = trunc i32 %4959 to i8
  %4961 = and i8 %4960, 1
  %4962 = xor i8 %4961, 1
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4962, i8* %4963, align 1
  %4964 = icmp eq i32 %4955, 0
  %4965 = zext i1 %4964 to i8
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4965, i8* %4966, align 1
  %4967 = lshr i32 %4955, 31
  %4968 = trunc i32 %4967 to i8
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4968, i8* %4969, align 1
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4970, align 1
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4971, align 1
  store %struct.Memory* %loadMem_47aaf9, %struct.Memory** %MEMORY
  %loadMem_47aafb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 33
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %4974 to i64*
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 1
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %EAX.i324 = bitcast %union.anon* %4977 to i32*
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 5
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %4980 to i64*
  %4981 = load i32, i32* %EAX.i324
  %4982 = zext i32 %4981 to i64
  %4983 = load i64, i64* %PC.i323
  %4984 = add i64 %4983, 2
  store i64 %4984, i64* %PC.i323
  %4985 = and i64 %4982, 4294967295
  store i64 %4985, i64* %RCX.i325, align 8
  store %struct.Memory* %loadMem_47aafb, %struct.Memory** %MEMORY
  %loadMem_47aafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4987 = getelementptr inbounds %struct.GPR, %struct.GPR* %4986, i32 0, i32 33
  %4988 = getelementptr inbounds %struct.Reg, %struct.Reg* %4987, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %4988 to i64*
  %4989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4990 = getelementptr inbounds %struct.GPR, %struct.GPR* %4989, i32 0, i32 11
  %4991 = getelementptr inbounds %struct.Reg, %struct.Reg* %4990, i32 0, i32 0
  %RDI.i321 = bitcast %union.anon* %4991 to i64*
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 15
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %4994 to i64*
  %4995 = load i64, i64* %RBP.i322
  %4996 = sub i64 %4995, 1024
  %4997 = load i64, i64* %PC.i320
  %4998 = add i64 %4997, 6
  store i64 %4998, i64* %PC.i320
  %4999 = inttoptr i64 %4996 to i32*
  %5000 = load i32, i32* %4999
  %5001 = zext i32 %5000 to i64
  store i64 %5001, i64* %RDI.i321, align 8
  store %struct.Memory* %loadMem_47aafd, %struct.Memory** %MEMORY
  %loadMem_47ab03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5003 = getelementptr inbounds %struct.GPR, %struct.GPR* %5002, i32 0, i32 33
  %5004 = getelementptr inbounds %struct.Reg, %struct.Reg* %5003, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %5004 to i64*
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5006 = getelementptr inbounds %struct.GPR, %struct.GPR* %5005, i32 0, i32 9
  %5007 = getelementptr inbounds %struct.Reg, %struct.Reg* %5006, i32 0, i32 0
  %RSI.i318 = bitcast %union.anon* %5007 to i64*
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5009 = getelementptr inbounds %struct.GPR, %struct.GPR* %5008, i32 0, i32 15
  %5010 = getelementptr inbounds %struct.Reg, %struct.Reg* %5009, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %5010 to i64*
  %5011 = load i64, i64* %RBP.i319
  %5012 = sub i64 %5011, 12
  %5013 = load i64, i64* %PC.i317
  %5014 = add i64 %5013, 3
  store i64 %5014, i64* %PC.i317
  %5015 = inttoptr i64 %5012 to i32*
  %5016 = load i32, i32* %5015
  %5017 = zext i32 %5016 to i64
  store i64 %5017, i64* %RSI.i318, align 8
  store %struct.Memory* %loadMem_47ab03, %struct.Memory** %MEMORY
  %loadMem1_47ab06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5019 = getelementptr inbounds %struct.GPR, %struct.GPR* %5018, i32 0, i32 33
  %5020 = getelementptr inbounds %struct.Reg, %struct.Reg* %5019, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %5020 to i64*
  %5021 = load i64, i64* %PC.i316
  %5022 = add i64 %5021, -431446
  %5023 = load i64, i64* %PC.i316
  %5024 = add i64 %5023, 5
  %5025 = load i64, i64* %PC.i316
  %5026 = add i64 %5025, 5
  store i64 %5026, i64* %PC.i316
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5028 = load i64, i64* %5027, align 8
  %5029 = add i64 %5028, -8
  %5030 = inttoptr i64 %5029 to i64*
  store i64 %5024, i64* %5030
  store i64 %5029, i64* %5027, align 8
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5022, i64* %5031, align 8
  store %struct.Memory* %loadMem1_47ab06, %struct.Memory** %MEMORY
  %loadMem2_47ab06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ab06 = load i64, i64* %3
  %call2_47ab06 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64 %loadPC_47ab06, %struct.Memory* %loadMem2_47ab06)
  store %struct.Memory* %call2_47ab06, %struct.Memory** %MEMORY
  %loadMem_47ab0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5033 = getelementptr inbounds %struct.GPR, %struct.GPR* %5032, i32 0, i32 33
  %5034 = getelementptr inbounds %struct.Reg, %struct.Reg* %5033, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %5034 to i64*
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5036 = getelementptr inbounds %struct.GPR, %struct.GPR* %5035, i32 0, i32 7
  %5037 = getelementptr inbounds %struct.Reg, %struct.Reg* %5036, i32 0, i32 0
  %RDX.i315 = bitcast %union.anon* %5037 to i64*
  %5038 = load i64, i64* %PC.i314
  %5039 = add i64 %5038, 5
  store i64 %5039, i64* %PC.i314
  store i64 4, i64* %RDX.i315, align 8
  store %struct.Memory* %loadMem_47ab0b, %struct.Memory** %MEMORY
  %loadMem_47ab10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 33
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %5042 to i64*
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 9
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %ESI.i312 = bitcast %union.anon* %5045 to i32*
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 9
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %RSI.i313 = bitcast %union.anon* %5048 to i64*
  %5049 = load i64, i64* %RSI.i313
  %5050 = load i32, i32* %ESI.i312
  %5051 = zext i32 %5050 to i64
  %5052 = load i64, i64* %PC.i311
  %5053 = add i64 %5052, 2
  store i64 %5053, i64* %PC.i311
  %5054 = xor i64 %5051, %5049
  %5055 = trunc i64 %5054 to i32
  %5056 = and i64 %5054, 4294967295
  store i64 %5056, i64* %RSI.i313, align 8
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5057, align 1
  %5058 = and i32 %5055, 255
  %5059 = call i32 @llvm.ctpop.i32(i32 %5058)
  %5060 = trunc i32 %5059 to i8
  %5061 = and i8 %5060, 1
  %5062 = xor i8 %5061, 1
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5062, i8* %5063, align 1
  %5064 = icmp eq i32 %5055, 0
  %5065 = zext i1 %5064 to i8
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5065, i8* %5066, align 1
  %5067 = lshr i32 %5055, 31
  %5068 = trunc i32 %5067 to i8
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5068, i8* %5069, align 1
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5070, align 1
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5071, align 1
  store %struct.Memory* %loadMem_47ab10, %struct.Memory** %MEMORY
  %loadMem_47ab12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5073 = getelementptr inbounds %struct.GPR, %struct.GPR* %5072, i32 0, i32 33
  %5074 = getelementptr inbounds %struct.Reg, %struct.Reg* %5073, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %5074 to i64*
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5076 = getelementptr inbounds %struct.GPR, %struct.GPR* %5075, i32 0, i32 9
  %5077 = getelementptr inbounds %struct.Reg, %struct.Reg* %5076, i32 0, i32 0
  %ESI.i309 = bitcast %union.anon* %5077 to i32*
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5079 = getelementptr inbounds %struct.GPR, %struct.GPR* %5078, i32 0, i32 5
  %5080 = getelementptr inbounds %struct.Reg, %struct.Reg* %5079, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %5080 to i64*
  %5081 = load i32, i32* %ESI.i309
  %5082 = zext i32 %5081 to i64
  %5083 = load i64, i64* %PC.i308
  %5084 = add i64 %5083, 2
  store i64 %5084, i64* %PC.i308
  %5085 = and i64 %5082, 4294967295
  store i64 %5085, i64* %RCX.i310, align 8
  store %struct.Memory* %loadMem_47ab12, %struct.Memory** %MEMORY
  %loadMem_47ab14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5087 = getelementptr inbounds %struct.GPR, %struct.GPR* %5086, i32 0, i32 33
  %5088 = getelementptr inbounds %struct.Reg, %struct.Reg* %5087, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %5088 to i64*
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5090 = getelementptr inbounds %struct.GPR, %struct.GPR* %5089, i32 0, i32 1
  %5091 = getelementptr inbounds %struct.Reg, %struct.Reg* %5090, i32 0, i32 0
  %EAX.i306 = bitcast %union.anon* %5091 to i32*
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5093 = getelementptr inbounds %struct.GPR, %struct.GPR* %5092, i32 0, i32 15
  %5094 = getelementptr inbounds %struct.Reg, %struct.Reg* %5093, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %5094 to i64*
  %5095 = load i64, i64* %RBP.i307
  %5096 = sub i64 %5095, 1032
  %5097 = load i32, i32* %EAX.i306
  %5098 = zext i32 %5097 to i64
  %5099 = load i64, i64* %PC.i305
  %5100 = add i64 %5099, 6
  store i64 %5100, i64* %PC.i305
  %5101 = inttoptr i64 %5096 to i32*
  store i32 %5097, i32* %5101
  store %struct.Memory* %loadMem_47ab14, %struct.Memory** %MEMORY
  %loadMem_47ab1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5103 = getelementptr inbounds %struct.GPR, %struct.GPR* %5102, i32 0, i32 33
  %5104 = getelementptr inbounds %struct.Reg, %struct.Reg* %5103, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %5104 to i64*
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5106 = getelementptr inbounds %struct.GPR, %struct.GPR* %5105, i32 0, i32 11
  %5107 = getelementptr inbounds %struct.Reg, %struct.Reg* %5106, i32 0, i32 0
  %RDI.i303 = bitcast %union.anon* %5107 to i64*
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5109 = getelementptr inbounds %struct.GPR, %struct.GPR* %5108, i32 0, i32 15
  %5110 = getelementptr inbounds %struct.Reg, %struct.Reg* %5109, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %5110 to i64*
  %5111 = load i64, i64* %RBP.i304
  %5112 = sub i64 %5111, 1028
  %5113 = load i64, i64* %PC.i302
  %5114 = add i64 %5113, 6
  store i64 %5114, i64* %PC.i302
  %5115 = inttoptr i64 %5112 to i32*
  %5116 = load i32, i32* %5115
  %5117 = zext i32 %5116 to i64
  store i64 %5117, i64* %RDI.i303, align 8
  store %struct.Memory* %loadMem_47ab1a, %struct.Memory** %MEMORY
  %loadMem_47ab20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 33
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %5120 to i64*
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5122 = getelementptr inbounds %struct.GPR, %struct.GPR* %5121, i32 0, i32 9
  %5123 = getelementptr inbounds %struct.Reg, %struct.Reg* %5122, i32 0, i32 0
  %RSI.i300 = bitcast %union.anon* %5123 to i64*
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5125 = getelementptr inbounds %struct.GPR, %struct.GPR* %5124, i32 0, i32 15
  %5126 = getelementptr inbounds %struct.Reg, %struct.Reg* %5125, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %5126 to i64*
  %5127 = load i64, i64* %RBP.i301
  %5128 = sub i64 %5127, 12
  %5129 = load i64, i64* %PC.i299
  %5130 = add i64 %5129, 3
  store i64 %5130, i64* %PC.i299
  %5131 = inttoptr i64 %5128 to i32*
  %5132 = load i32, i32* %5131
  %5133 = zext i32 %5132 to i64
  store i64 %5133, i64* %RSI.i300, align 8
  store %struct.Memory* %loadMem_47ab20, %struct.Memory** %MEMORY
  %loadMem1_47ab23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 33
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %5136 to i64*
  %5137 = load i64, i64* %PC.i298
  %5138 = add i64 %5137, -431475
  %5139 = load i64, i64* %PC.i298
  %5140 = add i64 %5139, 5
  %5141 = load i64, i64* %PC.i298
  %5142 = add i64 %5141, 5
  store i64 %5142, i64* %PC.i298
  %5143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5144 = load i64, i64* %5143, align 8
  %5145 = add i64 %5144, -8
  %5146 = inttoptr i64 %5145 to i64*
  store i64 %5140, i64* %5146
  store i64 %5145, i64* %5143, align 8
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5138, i64* %5147, align 8
  store %struct.Memory* %loadMem1_47ab23, %struct.Memory** %MEMORY
  %loadMem2_47ab23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ab23 = load i64, i64* %3
  %call2_47ab23 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64 %loadPC_47ab23, %struct.Memory* %loadMem2_47ab23)
  store %struct.Memory* %call2_47ab23, %struct.Memory** %MEMORY
  %loadMem_47ab28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5149 = getelementptr inbounds %struct.GPR, %struct.GPR* %5148, i32 0, i32 33
  %5150 = getelementptr inbounds %struct.Reg, %struct.Reg* %5149, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %5150 to i64*
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 7
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %RDX.i297 = bitcast %union.anon* %5153 to i64*
  %5154 = load i64, i64* %PC.i296
  %5155 = add i64 %5154, 5
  store i64 %5155, i64* %PC.i296
  store i64 4, i64* %RDX.i297, align 8
  store %struct.Memory* %loadMem_47ab28, %struct.Memory** %MEMORY
  %loadMem_47ab2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5157 = getelementptr inbounds %struct.GPR, %struct.GPR* %5156, i32 0, i32 33
  %5158 = getelementptr inbounds %struct.Reg, %struct.Reg* %5157, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %5158 to i64*
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5160 = getelementptr inbounds %struct.GPR, %struct.GPR* %5159, i32 0, i32 9
  %5161 = getelementptr inbounds %struct.Reg, %struct.Reg* %5160, i32 0, i32 0
  %ESI.i294 = bitcast %union.anon* %5161 to i32*
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5163 = getelementptr inbounds %struct.GPR, %struct.GPR* %5162, i32 0, i32 9
  %5164 = getelementptr inbounds %struct.Reg, %struct.Reg* %5163, i32 0, i32 0
  %RSI.i295 = bitcast %union.anon* %5164 to i64*
  %5165 = load i64, i64* %RSI.i295
  %5166 = load i32, i32* %ESI.i294
  %5167 = zext i32 %5166 to i64
  %5168 = load i64, i64* %PC.i293
  %5169 = add i64 %5168, 2
  store i64 %5169, i64* %PC.i293
  %5170 = xor i64 %5167, %5165
  %5171 = trunc i64 %5170 to i32
  %5172 = and i64 %5170, 4294967295
  store i64 %5172, i64* %RSI.i295, align 8
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5173, align 1
  %5174 = and i32 %5171, 255
  %5175 = call i32 @llvm.ctpop.i32(i32 %5174)
  %5176 = trunc i32 %5175 to i8
  %5177 = and i8 %5176, 1
  %5178 = xor i8 %5177, 1
  %5179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5178, i8* %5179, align 1
  %5180 = icmp eq i32 %5171, 0
  %5181 = zext i1 %5180 to i8
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5181, i8* %5182, align 1
  %5183 = lshr i32 %5171, 31
  %5184 = trunc i32 %5183 to i8
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5184, i8* %5185, align 1
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5186, align 1
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5187, align 1
  store %struct.Memory* %loadMem_47ab2d, %struct.Memory** %MEMORY
  %loadMem_47ab2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 33
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %5190 to i64*
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5192 = getelementptr inbounds %struct.GPR, %struct.GPR* %5191, i32 0, i32 9
  %5193 = getelementptr inbounds %struct.Reg, %struct.Reg* %5192, i32 0, i32 0
  %ESI.i291 = bitcast %union.anon* %5193 to i32*
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5195 = getelementptr inbounds %struct.GPR, %struct.GPR* %5194, i32 0, i32 5
  %5196 = getelementptr inbounds %struct.Reg, %struct.Reg* %5195, i32 0, i32 0
  %RCX.i292 = bitcast %union.anon* %5196 to i64*
  %5197 = load i32, i32* %ESI.i291
  %5198 = zext i32 %5197 to i64
  %5199 = load i64, i64* %PC.i290
  %5200 = add i64 %5199, 2
  store i64 %5200, i64* %PC.i290
  %5201 = and i64 %5198, 4294967295
  store i64 %5201, i64* %RCX.i292, align 8
  store %struct.Memory* %loadMem_47ab2f, %struct.Memory** %MEMORY
  %loadMem_47ab31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5203 = getelementptr inbounds %struct.GPR, %struct.GPR* %5202, i32 0, i32 33
  %5204 = getelementptr inbounds %struct.Reg, %struct.Reg* %5203, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %5204 to i64*
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5206 = getelementptr inbounds %struct.GPR, %struct.GPR* %5205, i32 0, i32 1
  %5207 = getelementptr inbounds %struct.Reg, %struct.Reg* %5206, i32 0, i32 0
  %EAX.i288 = bitcast %union.anon* %5207 to i32*
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5209 = getelementptr inbounds %struct.GPR, %struct.GPR* %5208, i32 0, i32 15
  %5210 = getelementptr inbounds %struct.Reg, %struct.Reg* %5209, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %5210 to i64*
  %5211 = load i64, i64* %RBP.i289
  %5212 = sub i64 %5211, 1036
  %5213 = load i32, i32* %EAX.i288
  %5214 = zext i32 %5213 to i64
  %5215 = load i64, i64* %PC.i287
  %5216 = add i64 %5215, 6
  store i64 %5216, i64* %PC.i287
  %5217 = inttoptr i64 %5212 to i32*
  store i32 %5213, i32* %5217
  store %struct.Memory* %loadMem_47ab31, %struct.Memory** %MEMORY
  %loadMem_47ab37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5219 = getelementptr inbounds %struct.GPR, %struct.GPR* %5218, i32 0, i32 33
  %5220 = getelementptr inbounds %struct.Reg, %struct.Reg* %5219, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %5220 to i64*
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5222 = getelementptr inbounds %struct.GPR, %struct.GPR* %5221, i32 0, i32 11
  %5223 = getelementptr inbounds %struct.Reg, %struct.Reg* %5222, i32 0, i32 0
  %RDI.i285 = bitcast %union.anon* %5223 to i64*
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5225 = getelementptr inbounds %struct.GPR, %struct.GPR* %5224, i32 0, i32 15
  %5226 = getelementptr inbounds %struct.Reg, %struct.Reg* %5225, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %5226 to i64*
  %5227 = load i64, i64* %RBP.i286
  %5228 = sub i64 %5227, 1024
  %5229 = load i64, i64* %PC.i284
  %5230 = add i64 %5229, 6
  store i64 %5230, i64* %PC.i284
  %5231 = inttoptr i64 %5228 to i32*
  %5232 = load i32, i32* %5231
  %5233 = zext i32 %5232 to i64
  store i64 %5233, i64* %RDI.i285, align 8
  store %struct.Memory* %loadMem_47ab37, %struct.Memory** %MEMORY
  %loadMem_47ab3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5235 = getelementptr inbounds %struct.GPR, %struct.GPR* %5234, i32 0, i32 33
  %5236 = getelementptr inbounds %struct.Reg, %struct.Reg* %5235, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %5236 to i64*
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5238 = getelementptr inbounds %struct.GPR, %struct.GPR* %5237, i32 0, i32 9
  %5239 = getelementptr inbounds %struct.Reg, %struct.Reg* %5238, i32 0, i32 0
  %RSI.i282 = bitcast %union.anon* %5239 to i64*
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5241 = getelementptr inbounds %struct.GPR, %struct.GPR* %5240, i32 0, i32 15
  %5242 = getelementptr inbounds %struct.Reg, %struct.Reg* %5241, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %5242 to i64*
  %5243 = load i64, i64* %RBP.i283
  %5244 = sub i64 %5243, 1016
  %5245 = load i64, i64* %PC.i281
  %5246 = add i64 %5245, 6
  store i64 %5246, i64* %PC.i281
  %5247 = inttoptr i64 %5244 to i32*
  %5248 = load i32, i32* %5247
  %5249 = zext i32 %5248 to i64
  store i64 %5249, i64* %RSI.i282, align 8
  store %struct.Memory* %loadMem_47ab3d, %struct.Memory** %MEMORY
  %loadMem1_47ab43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5251 = getelementptr inbounds %struct.GPR, %struct.GPR* %5250, i32 0, i32 33
  %5252 = getelementptr inbounds %struct.Reg, %struct.Reg* %5251, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %5252 to i64*
  %5253 = load i64, i64* %PC.i280
  %5254 = add i64 %5253, -431507
  %5255 = load i64, i64* %PC.i280
  %5256 = add i64 %5255, 5
  %5257 = load i64, i64* %PC.i280
  %5258 = add i64 %5257, 5
  store i64 %5258, i64* %PC.i280
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5260 = load i64, i64* %5259, align 8
  %5261 = add i64 %5260, -8
  %5262 = inttoptr i64 %5261 to i64*
  store i64 %5256, i64* %5262
  store i64 %5261, i64* %5259, align 8
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5254, i64* %5263, align 8
  store %struct.Memory* %loadMem1_47ab43, %struct.Memory** %MEMORY
  %loadMem2_47ab43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ab43 = load i64, i64* %3
  %call2_47ab43 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64 %loadPC_47ab43, %struct.Memory* %loadMem2_47ab43)
  store %struct.Memory* %call2_47ab43, %struct.Memory** %MEMORY
  %loadMem_47ab48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5265 = getelementptr inbounds %struct.GPR, %struct.GPR* %5264, i32 0, i32 33
  %5266 = getelementptr inbounds %struct.Reg, %struct.Reg* %5265, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %5266 to i64*
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5268 = getelementptr inbounds %struct.GPR, %struct.GPR* %5267, i32 0, i32 7
  %5269 = getelementptr inbounds %struct.Reg, %struct.Reg* %5268, i32 0, i32 0
  %RDX.i279 = bitcast %union.anon* %5269 to i64*
  %5270 = load i64, i64* %PC.i278
  %5271 = add i64 %5270, 5
  store i64 %5271, i64* %PC.i278
  store i64 4, i64* %RDX.i279, align 8
  store %struct.Memory* %loadMem_47ab48, %struct.Memory** %MEMORY
  %loadMem_47ab4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 33
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %5274 to i64*
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5276 = getelementptr inbounds %struct.GPR, %struct.GPR* %5275, i32 0, i32 9
  %5277 = getelementptr inbounds %struct.Reg, %struct.Reg* %5276, i32 0, i32 0
  %ESI.i276 = bitcast %union.anon* %5277 to i32*
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5279 = getelementptr inbounds %struct.GPR, %struct.GPR* %5278, i32 0, i32 9
  %5280 = getelementptr inbounds %struct.Reg, %struct.Reg* %5279, i32 0, i32 0
  %RSI.i277 = bitcast %union.anon* %5280 to i64*
  %5281 = load i64, i64* %RSI.i277
  %5282 = load i32, i32* %ESI.i276
  %5283 = zext i32 %5282 to i64
  %5284 = load i64, i64* %PC.i275
  %5285 = add i64 %5284, 2
  store i64 %5285, i64* %PC.i275
  %5286 = xor i64 %5283, %5281
  %5287 = trunc i64 %5286 to i32
  %5288 = and i64 %5286, 4294967295
  store i64 %5288, i64* %RSI.i277, align 8
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5289, align 1
  %5290 = and i32 %5287, 255
  %5291 = call i32 @llvm.ctpop.i32(i32 %5290)
  %5292 = trunc i32 %5291 to i8
  %5293 = and i8 %5292, 1
  %5294 = xor i8 %5293, 1
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5294, i8* %5295, align 1
  %5296 = icmp eq i32 %5287, 0
  %5297 = zext i1 %5296 to i8
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5297, i8* %5298, align 1
  %5299 = lshr i32 %5287, 31
  %5300 = trunc i32 %5299 to i8
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5300, i8* %5301, align 1
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5302, align 1
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5303, align 1
  store %struct.Memory* %loadMem_47ab4d, %struct.Memory** %MEMORY
  %loadMem_47ab4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5305 = getelementptr inbounds %struct.GPR, %struct.GPR* %5304, i32 0, i32 33
  %5306 = getelementptr inbounds %struct.Reg, %struct.Reg* %5305, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %5306 to i64*
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5308 = getelementptr inbounds %struct.GPR, %struct.GPR* %5307, i32 0, i32 9
  %5309 = getelementptr inbounds %struct.Reg, %struct.Reg* %5308, i32 0, i32 0
  %ESI.i273 = bitcast %union.anon* %5309 to i32*
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5311 = getelementptr inbounds %struct.GPR, %struct.GPR* %5310, i32 0, i32 5
  %5312 = getelementptr inbounds %struct.Reg, %struct.Reg* %5311, i32 0, i32 0
  %RCX.i274 = bitcast %union.anon* %5312 to i64*
  %5313 = load i32, i32* %ESI.i273
  %5314 = zext i32 %5313 to i64
  %5315 = load i64, i64* %PC.i272
  %5316 = add i64 %5315, 2
  store i64 %5316, i64* %PC.i272
  %5317 = and i64 %5314, 4294967295
  store i64 %5317, i64* %RCX.i274, align 8
  store %struct.Memory* %loadMem_47ab4f, %struct.Memory** %MEMORY
  %loadMem_47ab51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5319 = getelementptr inbounds %struct.GPR, %struct.GPR* %5318, i32 0, i32 33
  %5320 = getelementptr inbounds %struct.Reg, %struct.Reg* %5319, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %5320 to i64*
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5322 = getelementptr inbounds %struct.GPR, %struct.GPR* %5321, i32 0, i32 1
  %5323 = getelementptr inbounds %struct.Reg, %struct.Reg* %5322, i32 0, i32 0
  %EAX.i270 = bitcast %union.anon* %5323 to i32*
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5325 = getelementptr inbounds %struct.GPR, %struct.GPR* %5324, i32 0, i32 15
  %5326 = getelementptr inbounds %struct.Reg, %struct.Reg* %5325, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %5326 to i64*
  %5327 = load i64, i64* %RBP.i271
  %5328 = sub i64 %5327, 1040
  %5329 = load i32, i32* %EAX.i270
  %5330 = zext i32 %5329 to i64
  %5331 = load i64, i64* %PC.i269
  %5332 = add i64 %5331, 6
  store i64 %5332, i64* %PC.i269
  %5333 = inttoptr i64 %5328 to i32*
  store i32 %5329, i32* %5333
  store %struct.Memory* %loadMem_47ab51, %struct.Memory** %MEMORY
  %loadMem_47ab57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5335 = getelementptr inbounds %struct.GPR, %struct.GPR* %5334, i32 0, i32 33
  %5336 = getelementptr inbounds %struct.Reg, %struct.Reg* %5335, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %5336 to i64*
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5338 = getelementptr inbounds %struct.GPR, %struct.GPR* %5337, i32 0, i32 11
  %5339 = getelementptr inbounds %struct.Reg, %struct.Reg* %5338, i32 0, i32 0
  %RDI.i267 = bitcast %union.anon* %5339 to i64*
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5341 = getelementptr inbounds %struct.GPR, %struct.GPR* %5340, i32 0, i32 15
  %5342 = getelementptr inbounds %struct.Reg, %struct.Reg* %5341, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %5342 to i64*
  %5343 = load i64, i64* %RBP.i268
  %5344 = sub i64 %5343, 1028
  %5345 = load i64, i64* %PC.i266
  %5346 = add i64 %5345, 6
  store i64 %5346, i64* %PC.i266
  %5347 = inttoptr i64 %5344 to i32*
  %5348 = load i32, i32* %5347
  %5349 = zext i32 %5348 to i64
  store i64 %5349, i64* %RDI.i267, align 8
  store %struct.Memory* %loadMem_47ab57, %struct.Memory** %MEMORY
  %loadMem_47ab5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5351 = getelementptr inbounds %struct.GPR, %struct.GPR* %5350, i32 0, i32 33
  %5352 = getelementptr inbounds %struct.Reg, %struct.Reg* %5351, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %5352 to i64*
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5354 = getelementptr inbounds %struct.GPR, %struct.GPR* %5353, i32 0, i32 9
  %5355 = getelementptr inbounds %struct.Reg, %struct.Reg* %5354, i32 0, i32 0
  %RSI.i264 = bitcast %union.anon* %5355 to i64*
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5357 = getelementptr inbounds %struct.GPR, %struct.GPR* %5356, i32 0, i32 15
  %5358 = getelementptr inbounds %struct.Reg, %struct.Reg* %5357, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %5358 to i64*
  %5359 = load i64, i64* %RBP.i265
  %5360 = sub i64 %5359, 1016
  %5361 = load i64, i64* %PC.i263
  %5362 = add i64 %5361, 6
  store i64 %5362, i64* %PC.i263
  %5363 = inttoptr i64 %5360 to i32*
  %5364 = load i32, i32* %5363
  %5365 = zext i32 %5364 to i64
  store i64 %5365, i64* %RSI.i264, align 8
  store %struct.Memory* %loadMem_47ab5d, %struct.Memory** %MEMORY
  %loadMem1_47ab63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5367 = getelementptr inbounds %struct.GPR, %struct.GPR* %5366, i32 0, i32 33
  %5368 = getelementptr inbounds %struct.Reg, %struct.Reg* %5367, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %5368 to i64*
  %5369 = load i64, i64* %PC.i262
  %5370 = add i64 %5369, -431539
  %5371 = load i64, i64* %PC.i262
  %5372 = add i64 %5371, 5
  %5373 = load i64, i64* %PC.i262
  %5374 = add i64 %5373, 5
  store i64 %5374, i64* %PC.i262
  %5375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5376 = load i64, i64* %5375, align 8
  %5377 = add i64 %5376, -8
  %5378 = inttoptr i64 %5377 to i64*
  store i64 %5372, i64* %5378
  store i64 %5377, i64* %5375, align 8
  %5379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5370, i64* %5379, align 8
  store %struct.Memory* %loadMem1_47ab63, %struct.Memory** %MEMORY
  %loadMem2_47ab63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ab63 = load i64, i64* %3
  %call2_47ab63 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64 %loadPC_47ab63, %struct.Memory* %loadMem2_47ab63)
  store %struct.Memory* %call2_47ab63, %struct.Memory** %MEMORY
  %loadMem_47ab68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5381 = getelementptr inbounds %struct.GPR, %struct.GPR* %5380, i32 0, i32 33
  %5382 = getelementptr inbounds %struct.Reg, %struct.Reg* %5381, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %5382 to i64*
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5384 = getelementptr inbounds %struct.GPR, %struct.GPR* %5383, i32 0, i32 1
  %5385 = getelementptr inbounds %struct.Reg, %struct.Reg* %5384, i32 0, i32 0
  %EAX.i260 = bitcast %union.anon* %5385 to i32*
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5387 = getelementptr inbounds %struct.GPR, %struct.GPR* %5386, i32 0, i32 15
  %5388 = getelementptr inbounds %struct.Reg, %struct.Reg* %5387, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %5388 to i64*
  %5389 = load i64, i64* %RBP.i261
  %5390 = sub i64 %5389, 1044
  %5391 = load i32, i32* %EAX.i260
  %5392 = zext i32 %5391 to i64
  %5393 = load i64, i64* %PC.i259
  %5394 = add i64 %5393, 6
  store i64 %5394, i64* %PC.i259
  %5395 = inttoptr i64 %5390 to i32*
  store i32 %5391, i32* %5395
  store %struct.Memory* %loadMem_47ab68, %struct.Memory** %MEMORY
  %loadMem_47ab6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5397 = getelementptr inbounds %struct.GPR, %struct.GPR* %5396, i32 0, i32 33
  %5398 = getelementptr inbounds %struct.Reg, %struct.Reg* %5397, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %5398 to i64*
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5400 = getelementptr inbounds %struct.GPR, %struct.GPR* %5399, i32 0, i32 1
  %5401 = getelementptr inbounds %struct.Reg, %struct.Reg* %5400, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %5401 to i64*
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5403 = getelementptr inbounds %struct.GPR, %struct.GPR* %5402, i32 0, i32 15
  %5404 = getelementptr inbounds %struct.Reg, %struct.Reg* %5403, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %5404 to i64*
  %5405 = load i64, i64* %RBP.i258
  %5406 = sub i64 %5405, 1032
  %5407 = load i64, i64* %PC.i256
  %5408 = add i64 %5407, 6
  store i64 %5408, i64* %PC.i256
  %5409 = inttoptr i64 %5406 to i32*
  %5410 = load i32, i32* %5409
  %5411 = zext i32 %5410 to i64
  store i64 %5411, i64* %RAX.i257, align 8
  store %struct.Memory* %loadMem_47ab6e, %struct.Memory** %MEMORY
  %loadMem_47ab74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5413 = getelementptr inbounds %struct.GPR, %struct.GPR* %5412, i32 0, i32 33
  %5414 = getelementptr inbounds %struct.Reg, %struct.Reg* %5413, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %5414 to i64*
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5416 = getelementptr inbounds %struct.GPR, %struct.GPR* %5415, i32 0, i32 1
  %5417 = getelementptr inbounds %struct.Reg, %struct.Reg* %5416, i32 0, i32 0
  %EAX.i254 = bitcast %union.anon* %5417 to i32*
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5419 = getelementptr inbounds %struct.GPR, %struct.GPR* %5418, i32 0, i32 15
  %5420 = getelementptr inbounds %struct.Reg, %struct.Reg* %5419, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %5420 to i64*
  %5421 = load i32, i32* %EAX.i254
  %5422 = zext i32 %5421 to i64
  %5423 = load i64, i64* %RBP.i255
  %5424 = sub i64 %5423, 1036
  %5425 = load i64, i64* %PC.i253
  %5426 = add i64 %5425, 6
  store i64 %5426, i64* %PC.i253
  %5427 = inttoptr i64 %5424 to i32*
  %5428 = load i32, i32* %5427
  %5429 = sub i32 %5421, %5428
  %5430 = icmp ult i32 %5421, %5428
  %5431 = zext i1 %5430 to i8
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5431, i8* %5432, align 1
  %5433 = and i32 %5429, 255
  %5434 = call i32 @llvm.ctpop.i32(i32 %5433)
  %5435 = trunc i32 %5434 to i8
  %5436 = and i8 %5435, 1
  %5437 = xor i8 %5436, 1
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5437, i8* %5438, align 1
  %5439 = xor i32 %5428, %5421
  %5440 = xor i32 %5439, %5429
  %5441 = lshr i32 %5440, 4
  %5442 = trunc i32 %5441 to i8
  %5443 = and i8 %5442, 1
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5443, i8* %5444, align 1
  %5445 = icmp eq i32 %5429, 0
  %5446 = zext i1 %5445 to i8
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5446, i8* %5447, align 1
  %5448 = lshr i32 %5429, 31
  %5449 = trunc i32 %5448 to i8
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5449, i8* %5450, align 1
  %5451 = lshr i32 %5421, 31
  %5452 = lshr i32 %5428, 31
  %5453 = xor i32 %5452, %5451
  %5454 = xor i32 %5448, %5451
  %5455 = add i32 %5454, %5453
  %5456 = icmp eq i32 %5455, 2
  %5457 = zext i1 %5456 to i8
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5457, i8* %5458, align 1
  store %struct.Memory* %loadMem_47ab74, %struct.Memory** %MEMORY
  %loadMem_47ab7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5460 = getelementptr inbounds %struct.GPR, %struct.GPR* %5459, i32 0, i32 33
  %5461 = getelementptr inbounds %struct.Reg, %struct.Reg* %5460, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %5461 to i64*
  %5462 = load i64, i64* %PC.i252
  %5463 = add i64 %5462, 42
  %5464 = load i64, i64* %PC.i252
  %5465 = add i64 %5464, 6
  %5466 = load i64, i64* %PC.i252
  %5467 = add i64 %5466, 6
  store i64 %5467, i64* %PC.i252
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5469 = load i8, i8* %5468, align 1
  %5470 = icmp eq i8 %5469, 0
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5472 = load i8, i8* %5471, align 1
  %5473 = icmp ne i8 %5472, 0
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5475 = load i8, i8* %5474, align 1
  %5476 = icmp ne i8 %5475, 0
  %5477 = xor i1 %5473, %5476
  %5478 = xor i1 %5477, true
  %5479 = and i1 %5470, %5478
  %5480 = zext i1 %5479 to i8
  store i8 %5480, i8* %BRANCH_TAKEN, align 1
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5482 = select i1 %5479, i64 %5463, i64 %5465
  store i64 %5482, i64* %5481, align 8
  store %struct.Memory* %loadMem_47ab7a, %struct.Memory** %MEMORY
  %loadBr_47ab7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ab7a = icmp eq i8 %loadBr_47ab7a, 1
  br i1 %cmpBr_47ab7a, label %block_.L_47aba4, label %block_47ab80

block_47ab80:                                     ; preds = %block_.L_47aaf4
  %loadMem_47ab80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5484 = getelementptr inbounds %struct.GPR, %struct.GPR* %5483, i32 0, i32 33
  %5485 = getelementptr inbounds %struct.Reg, %struct.Reg* %5484, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %5485 to i64*
  %5486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5487 = getelementptr inbounds %struct.GPR, %struct.GPR* %5486, i32 0, i32 1
  %5488 = getelementptr inbounds %struct.Reg, %struct.Reg* %5487, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %5488 to i64*
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5490 = getelementptr inbounds %struct.GPR, %struct.GPR* %5489, i32 0, i32 15
  %5491 = getelementptr inbounds %struct.Reg, %struct.Reg* %5490, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %5491 to i64*
  %5492 = load i64, i64* %RBP.i251
  %5493 = sub i64 %5492, 1032
  %5494 = load i64, i64* %PC.i249
  %5495 = add i64 %5494, 6
  store i64 %5495, i64* %PC.i249
  %5496 = inttoptr i64 %5493 to i32*
  %5497 = load i32, i32* %5496
  %5498 = zext i32 %5497 to i64
  store i64 %5498, i64* %RAX.i250, align 8
  store %struct.Memory* %loadMem_47ab80, %struct.Memory** %MEMORY
  %loadMem_47ab86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5500 = getelementptr inbounds %struct.GPR, %struct.GPR* %5499, i32 0, i32 33
  %5501 = getelementptr inbounds %struct.Reg, %struct.Reg* %5500, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %5501 to i64*
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5503 = getelementptr inbounds %struct.GPR, %struct.GPR* %5502, i32 0, i32 1
  %5504 = getelementptr inbounds %struct.Reg, %struct.Reg* %5503, i32 0, i32 0
  %EAX.i247 = bitcast %union.anon* %5504 to i32*
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5506 = getelementptr inbounds %struct.GPR, %struct.GPR* %5505, i32 0, i32 15
  %5507 = getelementptr inbounds %struct.Reg, %struct.Reg* %5506, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %5507 to i64*
  %5508 = load i32, i32* %EAX.i247
  %5509 = zext i32 %5508 to i64
  %5510 = load i64, i64* %RBP.i248
  %5511 = sub i64 %5510, 1036
  %5512 = load i64, i64* %PC.i246
  %5513 = add i64 %5512, 6
  store i64 %5513, i64* %PC.i246
  %5514 = inttoptr i64 %5511 to i32*
  %5515 = load i32, i32* %5514
  %5516 = sub i32 %5508, %5515
  %5517 = icmp ult i32 %5508, %5515
  %5518 = zext i1 %5517 to i8
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5518, i8* %5519, align 1
  %5520 = and i32 %5516, 255
  %5521 = call i32 @llvm.ctpop.i32(i32 %5520)
  %5522 = trunc i32 %5521 to i8
  %5523 = and i8 %5522, 1
  %5524 = xor i8 %5523, 1
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5524, i8* %5525, align 1
  %5526 = xor i32 %5515, %5508
  %5527 = xor i32 %5526, %5516
  %5528 = lshr i32 %5527, 4
  %5529 = trunc i32 %5528 to i8
  %5530 = and i8 %5529, 1
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5530, i8* %5531, align 1
  %5532 = icmp eq i32 %5516, 0
  %5533 = zext i1 %5532 to i8
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5533, i8* %5534, align 1
  %5535 = lshr i32 %5516, 31
  %5536 = trunc i32 %5535 to i8
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5536, i8* %5537, align 1
  %5538 = lshr i32 %5508, 31
  %5539 = lshr i32 %5515, 31
  %5540 = xor i32 %5539, %5538
  %5541 = xor i32 %5535, %5538
  %5542 = add i32 %5541, %5540
  %5543 = icmp eq i32 %5542, 2
  %5544 = zext i1 %5543 to i8
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5544, i8* %5545, align 1
  store %struct.Memory* %loadMem_47ab86, %struct.Memory** %MEMORY
  %loadMem_47ab8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5547 = getelementptr inbounds %struct.GPR, %struct.GPR* %5546, i32 0, i32 33
  %5548 = getelementptr inbounds %struct.Reg, %struct.Reg* %5547, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %5548 to i64*
  %5549 = load i64, i64* %PC.i245
  %5550 = add i64 %5549, 82
  %5551 = load i64, i64* %PC.i245
  %5552 = add i64 %5551, 6
  %5553 = load i64, i64* %PC.i245
  %5554 = add i64 %5553, 6
  store i64 %5554, i64* %PC.i245
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5556 = load i8, i8* %5555, align 1
  %5557 = icmp eq i8 %5556, 0
  %5558 = zext i1 %5557 to i8
  store i8 %5558, i8* %BRANCH_TAKEN, align 1
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5560 = select i1 %5557, i64 %5550, i64 %5552
  store i64 %5560, i64* %5559, align 8
  store %struct.Memory* %loadMem_47ab8c, %struct.Memory** %MEMORY
  %loadBr_47ab8c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ab8c = icmp eq i8 %loadBr_47ab8c, 1
  br i1 %cmpBr_47ab8c, label %block_.L_47abde, label %block_47ab92

block_47ab92:                                     ; preds = %block_47ab80
  %loadMem_47ab92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5562 = getelementptr inbounds %struct.GPR, %struct.GPR* %5561, i32 0, i32 33
  %5563 = getelementptr inbounds %struct.Reg, %struct.Reg* %5562, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %5563 to i64*
  %5564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5565 = getelementptr inbounds %struct.GPR, %struct.GPR* %5564, i32 0, i32 1
  %5566 = getelementptr inbounds %struct.Reg, %struct.Reg* %5565, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %5566 to i64*
  %5567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5568 = getelementptr inbounds %struct.GPR, %struct.GPR* %5567, i32 0, i32 15
  %5569 = getelementptr inbounds %struct.Reg, %struct.Reg* %5568, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %5569 to i64*
  %5570 = load i64, i64* %RBP.i244
  %5571 = sub i64 %5570, 1040
  %5572 = load i64, i64* %PC.i242
  %5573 = add i64 %5572, 6
  store i64 %5573, i64* %PC.i242
  %5574 = inttoptr i64 %5571 to i32*
  %5575 = load i32, i32* %5574
  %5576 = zext i32 %5575 to i64
  store i64 %5576, i64* %RAX.i243, align 8
  store %struct.Memory* %loadMem_47ab92, %struct.Memory** %MEMORY
  %loadMem_47ab98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5578 = getelementptr inbounds %struct.GPR, %struct.GPR* %5577, i32 0, i32 33
  %5579 = getelementptr inbounds %struct.Reg, %struct.Reg* %5578, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %5579 to i64*
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5581 = getelementptr inbounds %struct.GPR, %struct.GPR* %5580, i32 0, i32 1
  %5582 = getelementptr inbounds %struct.Reg, %struct.Reg* %5581, i32 0, i32 0
  %EAX.i240 = bitcast %union.anon* %5582 to i32*
  %5583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5584 = getelementptr inbounds %struct.GPR, %struct.GPR* %5583, i32 0, i32 15
  %5585 = getelementptr inbounds %struct.Reg, %struct.Reg* %5584, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %5585 to i64*
  %5586 = load i32, i32* %EAX.i240
  %5587 = zext i32 %5586 to i64
  %5588 = load i64, i64* %RBP.i241
  %5589 = sub i64 %5588, 1044
  %5590 = load i64, i64* %PC.i239
  %5591 = add i64 %5590, 6
  store i64 %5591, i64* %PC.i239
  %5592 = inttoptr i64 %5589 to i32*
  %5593 = load i32, i32* %5592
  %5594 = sub i32 %5586, %5593
  %5595 = icmp ult i32 %5586, %5593
  %5596 = zext i1 %5595 to i8
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5596, i8* %5597, align 1
  %5598 = and i32 %5594, 255
  %5599 = call i32 @llvm.ctpop.i32(i32 %5598)
  %5600 = trunc i32 %5599 to i8
  %5601 = and i8 %5600, 1
  %5602 = xor i8 %5601, 1
  %5603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5602, i8* %5603, align 1
  %5604 = xor i32 %5593, %5586
  %5605 = xor i32 %5604, %5594
  %5606 = lshr i32 %5605, 4
  %5607 = trunc i32 %5606 to i8
  %5608 = and i8 %5607, 1
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5608, i8* %5609, align 1
  %5610 = icmp eq i32 %5594, 0
  %5611 = zext i1 %5610 to i8
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5611, i8* %5612, align 1
  %5613 = lshr i32 %5594, 31
  %5614 = trunc i32 %5613 to i8
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5614, i8* %5615, align 1
  %5616 = lshr i32 %5586, 31
  %5617 = lshr i32 %5593, 31
  %5618 = xor i32 %5617, %5616
  %5619 = xor i32 %5613, %5616
  %5620 = add i32 %5619, %5618
  %5621 = icmp eq i32 %5620, 2
  %5622 = zext i1 %5621 to i8
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5622, i8* %5623, align 1
  store %struct.Memory* %loadMem_47ab98, %struct.Memory** %MEMORY
  %loadMem_47ab9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5625 = getelementptr inbounds %struct.GPR, %struct.GPR* %5624, i32 0, i32 33
  %5626 = getelementptr inbounds %struct.Reg, %struct.Reg* %5625, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %5626 to i64*
  %5627 = load i64, i64* %PC.i238
  %5628 = add i64 %5627, 64
  %5629 = load i64, i64* %PC.i238
  %5630 = add i64 %5629, 6
  %5631 = load i64, i64* %PC.i238
  %5632 = add i64 %5631, 6
  store i64 %5632, i64* %PC.i238
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5634 = load i8, i8* %5633, align 1
  %5635 = icmp ne i8 %5634, 0
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5637 = load i8, i8* %5636, align 1
  %5638 = icmp ne i8 %5637, 0
  %5639 = xor i1 %5635, %5638
  %5640 = zext i1 %5639 to i8
  store i8 %5640, i8* %BRANCH_TAKEN, align 1
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5642 = select i1 %5639, i64 %5628, i64 %5630
  store i64 %5642, i64* %5641, align 8
  store %struct.Memory* %loadMem_47ab9e, %struct.Memory** %MEMORY
  %loadBr_47ab9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ab9e = icmp eq i8 %loadBr_47ab9e, 1
  br i1 %cmpBr_47ab9e, label %block_.L_47abde, label %block_.L_47aba4

block_.L_47aba4:                                  ; preds = %block_47ab92, %block_.L_47aaf4
  %loadMem_47aba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5644 = getelementptr inbounds %struct.GPR, %struct.GPR* %5643, i32 0, i32 33
  %5645 = getelementptr inbounds %struct.Reg, %struct.Reg* %5644, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %5645 to i64*
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5647 = getelementptr inbounds %struct.GPR, %struct.GPR* %5646, i32 0, i32 7
  %5648 = getelementptr inbounds %struct.Reg, %struct.Reg* %5647, i32 0, i32 0
  %RDX.i237 = bitcast %union.anon* %5648 to i64*
  %5649 = load i64, i64* %PC.i236
  %5650 = add i64 %5649, 10
  store i64 %5650, i64* %PC.i236
  store i64 ptrtoint (%G__0x581cc1_type* @G__0x581cc1 to i64), i64* %RDX.i237, align 8
  store %struct.Memory* %loadMem_47aba4, %struct.Memory** %MEMORY
  %loadMem_47abae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5652 = getelementptr inbounds %struct.GPR, %struct.GPR* %5651, i32 0, i32 33
  %5653 = getelementptr inbounds %struct.Reg, %struct.Reg* %5652, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %5653 to i64*
  %5654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5655 = getelementptr inbounds %struct.GPR, %struct.GPR* %5654, i32 0, i32 1
  %5656 = getelementptr inbounds %struct.Reg, %struct.Reg* %5655, i32 0, i32 0
  %EAX.i234 = bitcast %union.anon* %5656 to i32*
  %5657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5658 = getelementptr inbounds %struct.GPR, %struct.GPR* %5657, i32 0, i32 1
  %5659 = getelementptr inbounds %struct.Reg, %struct.Reg* %5658, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %5659 to i64*
  %5660 = load i64, i64* %RAX.i235
  %5661 = load i32, i32* %EAX.i234
  %5662 = zext i32 %5661 to i64
  %5663 = load i64, i64* %PC.i233
  %5664 = add i64 %5663, 2
  store i64 %5664, i64* %PC.i233
  %5665 = xor i64 %5662, %5660
  %5666 = trunc i64 %5665 to i32
  %5667 = and i64 %5665, 4294967295
  store i64 %5667, i64* %RAX.i235, align 8
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5668, align 1
  %5669 = and i32 %5666, 255
  %5670 = call i32 @llvm.ctpop.i32(i32 %5669)
  %5671 = trunc i32 %5670 to i8
  %5672 = and i8 %5671, 1
  %5673 = xor i8 %5672, 1
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5673, i8* %5674, align 1
  %5675 = icmp eq i32 %5666, 0
  %5676 = zext i1 %5675 to i8
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5676, i8* %5677, align 1
  %5678 = lshr i32 %5666, 31
  %5679 = trunc i32 %5678 to i8
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5679, i8* %5680, align 1
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5681, align 1
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5682, align 1
  store %struct.Memory* %loadMem_47abae, %struct.Memory** %MEMORY
  %loadMem_47abb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5684 = getelementptr inbounds %struct.GPR, %struct.GPR* %5683, i32 0, i32 33
  %5685 = getelementptr inbounds %struct.Reg, %struct.Reg* %5684, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %5685 to i64*
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5687 = getelementptr inbounds %struct.GPR, %struct.GPR* %5686, i32 0, i32 11
  %5688 = getelementptr inbounds %struct.Reg, %struct.Reg* %5687, i32 0, i32 0
  %RDI.i231 = bitcast %union.anon* %5688 to i64*
  %5689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5690 = getelementptr inbounds %struct.GPR, %struct.GPR* %5689, i32 0, i32 15
  %5691 = getelementptr inbounds %struct.Reg, %struct.Reg* %5690, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %5691 to i64*
  %5692 = load i64, i64* %RBP.i232
  %5693 = sub i64 %5692, 1024
  %5694 = load i64, i64* %PC.i230
  %5695 = add i64 %5694, 6
  store i64 %5695, i64* %PC.i230
  %5696 = inttoptr i64 %5693 to i32*
  %5697 = load i32, i32* %5696
  %5698 = zext i32 %5697 to i64
  store i64 %5698, i64* %RDI.i231, align 8
  store %struct.Memory* %loadMem_47abb0, %struct.Memory** %MEMORY
  %loadMem_47abb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5700 = getelementptr inbounds %struct.GPR, %struct.GPR* %5699, i32 0, i32 33
  %5701 = getelementptr inbounds %struct.Reg, %struct.Reg* %5700, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %5701 to i64*
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5703 = getelementptr inbounds %struct.GPR, %struct.GPR* %5702, i32 0, i32 9
  %5704 = getelementptr inbounds %struct.Reg, %struct.Reg* %5703, i32 0, i32 0
  %RSI.i228 = bitcast %union.anon* %5704 to i64*
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5706 = getelementptr inbounds %struct.GPR, %struct.GPR* %5705, i32 0, i32 15
  %5707 = getelementptr inbounds %struct.Reg, %struct.Reg* %5706, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %5707 to i64*
  %5708 = load i64, i64* %RBP.i229
  %5709 = sub i64 %5708, 1016
  %5710 = load i64, i64* %PC.i227
  %5711 = add i64 %5710, 6
  store i64 %5711, i64* %PC.i227
  %5712 = inttoptr i64 %5709 to i32*
  %5713 = load i32, i32* %5712
  %5714 = zext i32 %5713 to i64
  store i64 %5714, i64* %RSI.i228, align 8
  store %struct.Memory* %loadMem_47abb6, %struct.Memory** %MEMORY
  %loadMem_47abbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5716 = getelementptr inbounds %struct.GPR, %struct.GPR* %5715, i32 0, i32 33
  %5717 = getelementptr inbounds %struct.Reg, %struct.Reg* %5716, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %5717 to i64*
  %5718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5719 = getelementptr inbounds %struct.GPR, %struct.GPR* %5718, i32 0, i32 5
  %5720 = getelementptr inbounds %struct.Reg, %struct.Reg* %5719, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %5720 to i64*
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5722 = getelementptr inbounds %struct.GPR, %struct.GPR* %5721, i32 0, i32 15
  %5723 = getelementptr inbounds %struct.Reg, %struct.Reg* %5722, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %5723 to i64*
  %5724 = load i64, i64* %RBP.i226
  %5725 = sub i64 %5724, 32
  %5726 = load i64, i64* %PC.i224
  %5727 = add i64 %5726, 3
  store i64 %5727, i64* %PC.i224
  %5728 = inttoptr i64 %5725 to i32*
  %5729 = load i32, i32* %5728
  %5730 = zext i32 %5729 to i64
  store i64 %5730, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_47abbc, %struct.Memory** %MEMORY
  %loadMem_47abbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5732 = getelementptr inbounds %struct.GPR, %struct.GPR* %5731, i32 0, i32 33
  %5733 = getelementptr inbounds %struct.Reg, %struct.Reg* %5732, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %5733 to i64*
  %5734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5735 = getelementptr inbounds %struct.GPR, %struct.GPR* %5734, i32 0, i32 1
  %5736 = getelementptr inbounds %struct.Reg, %struct.Reg* %5735, i32 0, i32 0
  %EAX.i222 = bitcast %union.anon* %5736 to i32*
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5738 = getelementptr inbounds %struct.GPR, %struct.GPR* %5737, i32 0, i32 17
  %5739 = getelementptr inbounds %struct.Reg, %struct.Reg* %5738, i32 0, i32 0
  %R8D.i223 = bitcast %union.anon* %5739 to i32*
  %5740 = bitcast i32* %R8D.i223 to i64*
  %5741 = load i32, i32* %EAX.i222
  %5742 = zext i32 %5741 to i64
  %5743 = load i64, i64* %PC.i221
  %5744 = add i64 %5743, 3
  store i64 %5744, i64* %PC.i221
  %5745 = and i64 %5742, 4294967295
  store i64 %5745, i64* %5740, align 8
  store %struct.Memory* %loadMem_47abbf, %struct.Memory** %MEMORY
  %loadMem_47abc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5747 = getelementptr inbounds %struct.GPR, %struct.GPR* %5746, i32 0, i32 33
  %5748 = getelementptr inbounds %struct.Reg, %struct.Reg* %5747, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %5748 to i64*
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5750 = getelementptr inbounds %struct.GPR, %struct.GPR* %5749, i32 0, i32 1
  %5751 = getelementptr inbounds %struct.Reg, %struct.Reg* %5750, i32 0, i32 0
  %EAX.i219 = bitcast %union.anon* %5751 to i32*
  %5752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5753 = getelementptr inbounds %struct.GPR, %struct.GPR* %5752, i32 0, i32 19
  %5754 = getelementptr inbounds %struct.Reg, %struct.Reg* %5753, i32 0, i32 0
  %R9D.i220 = bitcast %union.anon* %5754 to i32*
  %5755 = bitcast i32* %R9D.i220 to i64*
  %5756 = load i32, i32* %EAX.i219
  %5757 = zext i32 %5756 to i64
  %5758 = load i64, i64* %PC.i218
  %5759 = add i64 %5758, 3
  store i64 %5759, i64* %PC.i218
  %5760 = and i64 %5757, 4294967295
  store i64 %5760, i64* %5755, align 8
  store %struct.Memory* %loadMem_47abc2, %struct.Memory** %MEMORY
  %loadMem1_47abc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5762 = getelementptr inbounds %struct.GPR, %struct.GPR* %5761, i32 0, i32 33
  %5763 = getelementptr inbounds %struct.Reg, %struct.Reg* %5762, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %5763 to i64*
  %5764 = load i64, i64* %PC.i217
  %5765 = add i64 %5764, -466325
  %5766 = load i64, i64* %PC.i217
  %5767 = add i64 %5766, 5
  %5768 = load i64, i64* %PC.i217
  %5769 = add i64 %5768, 5
  store i64 %5769, i64* %PC.i217
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5771 = load i64, i64* %5770, align 8
  %5772 = add i64 %5771, -8
  %5773 = inttoptr i64 %5772 to i64*
  store i64 %5767, i64* %5773
  store i64 %5772, i64* %5770, align 8
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5765, i64* %5774, align 8
  store %struct.Memory* %loadMem1_47abc5, %struct.Memory** %MEMORY
  %loadMem2_47abc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47abc5 = load i64, i64* %3
  %call2_47abc5 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_47abc5, %struct.Memory* %loadMem2_47abc5)
  store %struct.Memory* %call2_47abc5, %struct.Memory** %MEMORY
  %loadMem_47abca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5776 = getelementptr inbounds %struct.GPR, %struct.GPR* %5775, i32 0, i32 33
  %5777 = getelementptr inbounds %struct.Reg, %struct.Reg* %5776, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %5777 to i64*
  %5778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5779 = getelementptr inbounds %struct.GPR, %struct.GPR* %5778, i32 0, i32 5
  %5780 = getelementptr inbounds %struct.Reg, %struct.Reg* %5779, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %5780 to i64*
  %5781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5782 = getelementptr inbounds %struct.GPR, %struct.GPR* %5781, i32 0, i32 15
  %5783 = getelementptr inbounds %struct.Reg, %struct.Reg* %5782, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %5783 to i64*
  %5784 = load i64, i64* %RBP.i216
  %5785 = sub i64 %5784, 24
  %5786 = load i64, i64* %PC.i214
  %5787 = add i64 %5786, 3
  store i64 %5787, i64* %PC.i214
  %5788 = inttoptr i64 %5785 to i32*
  %5789 = load i32, i32* %5788
  %5790 = zext i32 %5789 to i64
  store i64 %5790, i64* %RCX.i215, align 8
  store %struct.Memory* %loadMem_47abca, %struct.Memory** %MEMORY
  %loadMem_47abcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5792 = getelementptr inbounds %struct.GPR, %struct.GPR* %5791, i32 0, i32 33
  %5793 = getelementptr inbounds %struct.Reg, %struct.Reg* %5792, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %5793 to i64*
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5795 = getelementptr inbounds %struct.GPR, %struct.GPR* %5794, i32 0, i32 5
  %5796 = getelementptr inbounds %struct.Reg, %struct.Reg* %5795, i32 0, i32 0
  %RCX.i213 = bitcast %union.anon* %5796 to i64*
  %5797 = load i64, i64* %RCX.i213
  %5798 = load i64, i64* %PC.i212
  %5799 = add i64 %5798, 3
  store i64 %5799, i64* %PC.i212
  %5800 = trunc i64 %5797 to i32
  %5801 = add i32 1, %5800
  %5802 = zext i32 %5801 to i64
  store i64 %5802, i64* %RCX.i213, align 8
  %5803 = icmp ult i32 %5801, %5800
  %5804 = icmp ult i32 %5801, 1
  %5805 = or i1 %5803, %5804
  %5806 = zext i1 %5805 to i8
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5806, i8* %5807, align 1
  %5808 = and i32 %5801, 255
  %5809 = call i32 @llvm.ctpop.i32(i32 %5808)
  %5810 = trunc i32 %5809 to i8
  %5811 = and i8 %5810, 1
  %5812 = xor i8 %5811, 1
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5812, i8* %5813, align 1
  %5814 = xor i64 1, %5797
  %5815 = trunc i64 %5814 to i32
  %5816 = xor i32 %5815, %5801
  %5817 = lshr i32 %5816, 4
  %5818 = trunc i32 %5817 to i8
  %5819 = and i8 %5818, 1
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5819, i8* %5820, align 1
  %5821 = icmp eq i32 %5801, 0
  %5822 = zext i1 %5821 to i8
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5822, i8* %5823, align 1
  %5824 = lshr i32 %5801, 31
  %5825 = trunc i32 %5824 to i8
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5825, i8* %5826, align 1
  %5827 = lshr i32 %5800, 31
  %5828 = xor i32 %5824, %5827
  %5829 = add i32 %5828, %5824
  %5830 = icmp eq i32 %5829, 2
  %5831 = zext i1 %5830 to i8
  %5832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5831, i8* %5832, align 1
  store %struct.Memory* %loadMem_47abcd, %struct.Memory** %MEMORY
  %loadMem_47abd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5834 = getelementptr inbounds %struct.GPR, %struct.GPR* %5833, i32 0, i32 33
  %5835 = getelementptr inbounds %struct.Reg, %struct.Reg* %5834, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %5835 to i64*
  %5836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5837 = getelementptr inbounds %struct.GPR, %struct.GPR* %5836, i32 0, i32 5
  %5838 = getelementptr inbounds %struct.Reg, %struct.Reg* %5837, i32 0, i32 0
  %ECX.i210 = bitcast %union.anon* %5838 to i32*
  %5839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5840 = getelementptr inbounds %struct.GPR, %struct.GPR* %5839, i32 0, i32 15
  %5841 = getelementptr inbounds %struct.Reg, %struct.Reg* %5840, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %5841 to i64*
  %5842 = load i64, i64* %RBP.i211
  %5843 = sub i64 %5842, 24
  %5844 = load i32, i32* %ECX.i210
  %5845 = zext i32 %5844 to i64
  %5846 = load i64, i64* %PC.i209
  %5847 = add i64 %5846, 3
  store i64 %5847, i64* %PC.i209
  %5848 = inttoptr i64 %5843 to i32*
  store i32 %5844, i32* %5848
  store %struct.Memory* %loadMem_47abd0, %struct.Memory** %MEMORY
  %loadMem_47abd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5850 = getelementptr inbounds %struct.GPR, %struct.GPR* %5849, i32 0, i32 33
  %5851 = getelementptr inbounds %struct.Reg, %struct.Reg* %5850, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %5851 to i64*
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5853 = getelementptr inbounds %struct.GPR, %struct.GPR* %5852, i32 0, i32 1
  %5854 = getelementptr inbounds %struct.Reg, %struct.Reg* %5853, i32 0, i32 0
  %EAX.i207 = bitcast %union.anon* %5854 to i32*
  %5855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5856 = getelementptr inbounds %struct.GPR, %struct.GPR* %5855, i32 0, i32 15
  %5857 = getelementptr inbounds %struct.Reg, %struct.Reg* %5856, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %5857 to i64*
  %5858 = load i64, i64* %RBP.i208
  %5859 = sub i64 %5858, 1072
  %5860 = load i32, i32* %EAX.i207
  %5861 = zext i32 %5860 to i64
  %5862 = load i64, i64* %PC.i206
  %5863 = add i64 %5862, 6
  store i64 %5863, i64* %PC.i206
  %5864 = inttoptr i64 %5859 to i32*
  store i32 %5860, i32* %5864
  store %struct.Memory* %loadMem_47abd3, %struct.Memory** %MEMORY
  %loadMem_47abd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5866 = getelementptr inbounds %struct.GPR, %struct.GPR* %5865, i32 0, i32 33
  %5867 = getelementptr inbounds %struct.Reg, %struct.Reg* %5866, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %5867 to i64*
  %5868 = load i64, i64* %PC.i205
  %5869 = add i64 %5868, 58
  %5870 = load i64, i64* %PC.i205
  %5871 = add i64 %5870, 5
  store i64 %5871, i64* %PC.i205
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5869, i64* %5872, align 8
  store %struct.Memory* %loadMem_47abd9, %struct.Memory** %MEMORY
  br label %block_.L_47ac13

block_.L_47abde:                                  ; preds = %block_47ab92, %block_47ab80
  %loadMem_47abde = load %struct.Memory*, %struct.Memory** %MEMORY
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5874 = getelementptr inbounds %struct.GPR, %struct.GPR* %5873, i32 0, i32 33
  %5875 = getelementptr inbounds %struct.Reg, %struct.Reg* %5874, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %5875 to i64*
  %5876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5877 = getelementptr inbounds %struct.GPR, %struct.GPR* %5876, i32 0, i32 7
  %5878 = getelementptr inbounds %struct.Reg, %struct.Reg* %5877, i32 0, i32 0
  %RDX.i204 = bitcast %union.anon* %5878 to i64*
  %5879 = load i64, i64* %PC.i203
  %5880 = add i64 %5879, 10
  store i64 %5880, i64* %PC.i203
  store i64 ptrtoint (%G__0x581cc1_type* @G__0x581cc1 to i64), i64* %RDX.i204, align 8
  store %struct.Memory* %loadMem_47abde, %struct.Memory** %MEMORY
  %loadMem_47abe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5882 = getelementptr inbounds %struct.GPR, %struct.GPR* %5881, i32 0, i32 33
  %5883 = getelementptr inbounds %struct.Reg, %struct.Reg* %5882, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %5883 to i64*
  %5884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5885 = getelementptr inbounds %struct.GPR, %struct.GPR* %5884, i32 0, i32 1
  %5886 = getelementptr inbounds %struct.Reg, %struct.Reg* %5885, i32 0, i32 0
  %EAX.i201 = bitcast %union.anon* %5886 to i32*
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5888 = getelementptr inbounds %struct.GPR, %struct.GPR* %5887, i32 0, i32 1
  %5889 = getelementptr inbounds %struct.Reg, %struct.Reg* %5888, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %5889 to i64*
  %5890 = load i64, i64* %RAX.i202
  %5891 = load i32, i32* %EAX.i201
  %5892 = zext i32 %5891 to i64
  %5893 = load i64, i64* %PC.i200
  %5894 = add i64 %5893, 2
  store i64 %5894, i64* %PC.i200
  %5895 = xor i64 %5892, %5890
  %5896 = trunc i64 %5895 to i32
  %5897 = and i64 %5895, 4294967295
  store i64 %5897, i64* %RAX.i202, align 8
  %5898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5898, align 1
  %5899 = and i32 %5896, 255
  %5900 = call i32 @llvm.ctpop.i32(i32 %5899)
  %5901 = trunc i32 %5900 to i8
  %5902 = and i8 %5901, 1
  %5903 = xor i8 %5902, 1
  %5904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5903, i8* %5904, align 1
  %5905 = icmp eq i32 %5896, 0
  %5906 = zext i1 %5905 to i8
  %5907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5906, i8* %5907, align 1
  %5908 = lshr i32 %5896, 31
  %5909 = trunc i32 %5908 to i8
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5909, i8* %5910, align 1
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5911, align 1
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5912, align 1
  store %struct.Memory* %loadMem_47abe8, %struct.Memory** %MEMORY
  %loadMem_47abea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5914 = getelementptr inbounds %struct.GPR, %struct.GPR* %5913, i32 0, i32 33
  %5915 = getelementptr inbounds %struct.Reg, %struct.Reg* %5914, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %5915 to i64*
  %5916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5917 = getelementptr inbounds %struct.GPR, %struct.GPR* %5916, i32 0, i32 11
  %5918 = getelementptr inbounds %struct.Reg, %struct.Reg* %5917, i32 0, i32 0
  %RDI.i198 = bitcast %union.anon* %5918 to i64*
  %5919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5920 = getelementptr inbounds %struct.GPR, %struct.GPR* %5919, i32 0, i32 15
  %5921 = getelementptr inbounds %struct.Reg, %struct.Reg* %5920, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %5921 to i64*
  %5922 = load i64, i64* %RBP.i199
  %5923 = sub i64 %5922, 1028
  %5924 = load i64, i64* %PC.i197
  %5925 = add i64 %5924, 6
  store i64 %5925, i64* %PC.i197
  %5926 = inttoptr i64 %5923 to i32*
  %5927 = load i32, i32* %5926
  %5928 = zext i32 %5927 to i64
  store i64 %5928, i64* %RDI.i198, align 8
  store %struct.Memory* %loadMem_47abea, %struct.Memory** %MEMORY
  %loadMem_47abf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5930 = getelementptr inbounds %struct.GPR, %struct.GPR* %5929, i32 0, i32 33
  %5931 = getelementptr inbounds %struct.Reg, %struct.Reg* %5930, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %5931 to i64*
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5933 = getelementptr inbounds %struct.GPR, %struct.GPR* %5932, i32 0, i32 9
  %5934 = getelementptr inbounds %struct.Reg, %struct.Reg* %5933, i32 0, i32 0
  %RSI.i195 = bitcast %union.anon* %5934 to i64*
  %5935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5936 = getelementptr inbounds %struct.GPR, %struct.GPR* %5935, i32 0, i32 15
  %5937 = getelementptr inbounds %struct.Reg, %struct.Reg* %5936, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %5937 to i64*
  %5938 = load i64, i64* %RBP.i196
  %5939 = sub i64 %5938, 1016
  %5940 = load i64, i64* %PC.i194
  %5941 = add i64 %5940, 6
  store i64 %5941, i64* %PC.i194
  %5942 = inttoptr i64 %5939 to i32*
  %5943 = load i32, i32* %5942
  %5944 = zext i32 %5943 to i64
  store i64 %5944, i64* %RSI.i195, align 8
  store %struct.Memory* %loadMem_47abf0, %struct.Memory** %MEMORY
  %loadMem_47abf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5946 = getelementptr inbounds %struct.GPR, %struct.GPR* %5945, i32 0, i32 33
  %5947 = getelementptr inbounds %struct.Reg, %struct.Reg* %5946, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %5947 to i64*
  %5948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5949 = getelementptr inbounds %struct.GPR, %struct.GPR* %5948, i32 0, i32 5
  %5950 = getelementptr inbounds %struct.Reg, %struct.Reg* %5949, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %5950 to i64*
  %5951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5952 = getelementptr inbounds %struct.GPR, %struct.GPR* %5951, i32 0, i32 15
  %5953 = getelementptr inbounds %struct.Reg, %struct.Reg* %5952, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %5953 to i64*
  %5954 = load i64, i64* %RBP.i193
  %5955 = sub i64 %5954, 32
  %5956 = load i64, i64* %PC.i191
  %5957 = add i64 %5956, 3
  store i64 %5957, i64* %PC.i191
  %5958 = inttoptr i64 %5955 to i32*
  %5959 = load i32, i32* %5958
  %5960 = zext i32 %5959 to i64
  store i64 %5960, i64* %RCX.i192, align 8
  store %struct.Memory* %loadMem_47abf6, %struct.Memory** %MEMORY
  %loadMem_47abf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5962 = getelementptr inbounds %struct.GPR, %struct.GPR* %5961, i32 0, i32 33
  %5963 = getelementptr inbounds %struct.Reg, %struct.Reg* %5962, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %5963 to i64*
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5965 = getelementptr inbounds %struct.GPR, %struct.GPR* %5964, i32 0, i32 1
  %5966 = getelementptr inbounds %struct.Reg, %struct.Reg* %5965, i32 0, i32 0
  %EAX.i190 = bitcast %union.anon* %5966 to i32*
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5968 = getelementptr inbounds %struct.GPR, %struct.GPR* %5967, i32 0, i32 17
  %5969 = getelementptr inbounds %struct.Reg, %struct.Reg* %5968, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %5969 to i32*
  %5970 = bitcast i32* %R8D.i to i64*
  %5971 = load i32, i32* %EAX.i190
  %5972 = zext i32 %5971 to i64
  %5973 = load i64, i64* %PC.i189
  %5974 = add i64 %5973, 3
  store i64 %5974, i64* %PC.i189
  %5975 = and i64 %5972, 4294967295
  store i64 %5975, i64* %5970, align 8
  store %struct.Memory* %loadMem_47abf9, %struct.Memory** %MEMORY
  %loadMem_47abfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5977 = getelementptr inbounds %struct.GPR, %struct.GPR* %5976, i32 0, i32 33
  %5978 = getelementptr inbounds %struct.Reg, %struct.Reg* %5977, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %5978 to i64*
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 1
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %EAX.i188 = bitcast %union.anon* %5981 to i32*
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5983 = getelementptr inbounds %struct.GPR, %struct.GPR* %5982, i32 0, i32 19
  %5984 = getelementptr inbounds %struct.Reg, %struct.Reg* %5983, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %5984 to i32*
  %5985 = bitcast i32* %R9D.i to i64*
  %5986 = load i32, i32* %EAX.i188
  %5987 = zext i32 %5986 to i64
  %5988 = load i64, i64* %PC.i187
  %5989 = add i64 %5988, 3
  store i64 %5989, i64* %PC.i187
  %5990 = and i64 %5987, 4294967295
  store i64 %5990, i64* %5985, align 8
  store %struct.Memory* %loadMem_47abfc, %struct.Memory** %MEMORY
  %loadMem1_47abff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5992 = getelementptr inbounds %struct.GPR, %struct.GPR* %5991, i32 0, i32 33
  %5993 = getelementptr inbounds %struct.Reg, %struct.Reg* %5992, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %5993 to i64*
  %5994 = load i64, i64* %PC.i186
  %5995 = add i64 %5994, -466383
  %5996 = load i64, i64* %PC.i186
  %5997 = add i64 %5996, 5
  %5998 = load i64, i64* %PC.i186
  %5999 = add i64 %5998, 5
  store i64 %5999, i64* %PC.i186
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6001 = load i64, i64* %6000, align 8
  %6002 = add i64 %6001, -8
  %6003 = inttoptr i64 %6002 to i64*
  store i64 %5997, i64* %6003
  store i64 %6002, i64* %6000, align 8
  %6004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5995, i64* %6004, align 8
  store %struct.Memory* %loadMem1_47abff, %struct.Memory** %MEMORY
  %loadMem2_47abff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47abff = load i64, i64* %3
  %call2_47abff = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_47abff, %struct.Memory* %loadMem2_47abff)
  store %struct.Memory* %call2_47abff, %struct.Memory** %MEMORY
  %loadMem_47ac04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6006 = getelementptr inbounds %struct.GPR, %struct.GPR* %6005, i32 0, i32 33
  %6007 = getelementptr inbounds %struct.Reg, %struct.Reg* %6006, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %6007 to i64*
  %6008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6009 = getelementptr inbounds %struct.GPR, %struct.GPR* %6008, i32 0, i32 5
  %6010 = getelementptr inbounds %struct.Reg, %struct.Reg* %6009, i32 0, i32 0
  %RCX.i184 = bitcast %union.anon* %6010 to i64*
  %6011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6012 = getelementptr inbounds %struct.GPR, %struct.GPR* %6011, i32 0, i32 15
  %6013 = getelementptr inbounds %struct.Reg, %struct.Reg* %6012, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %6013 to i64*
  %6014 = load i64, i64* %RBP.i185
  %6015 = sub i64 %6014, 24
  %6016 = load i64, i64* %PC.i183
  %6017 = add i64 %6016, 3
  store i64 %6017, i64* %PC.i183
  %6018 = inttoptr i64 %6015 to i32*
  %6019 = load i32, i32* %6018
  %6020 = zext i32 %6019 to i64
  store i64 %6020, i64* %RCX.i184, align 8
  store %struct.Memory* %loadMem_47ac04, %struct.Memory** %MEMORY
  %loadMem_47ac07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6022 = getelementptr inbounds %struct.GPR, %struct.GPR* %6021, i32 0, i32 33
  %6023 = getelementptr inbounds %struct.Reg, %struct.Reg* %6022, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6023 to i64*
  %6024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6025 = getelementptr inbounds %struct.GPR, %struct.GPR* %6024, i32 0, i32 5
  %6026 = getelementptr inbounds %struct.Reg, %struct.Reg* %6025, i32 0, i32 0
  %RCX.i182 = bitcast %union.anon* %6026 to i64*
  %6027 = load i64, i64* %RCX.i182
  %6028 = load i64, i64* %PC.i181
  %6029 = add i64 %6028, 3
  store i64 %6029, i64* %PC.i181
  %6030 = trunc i64 %6027 to i32
  %6031 = add i32 1, %6030
  %6032 = zext i32 %6031 to i64
  store i64 %6032, i64* %RCX.i182, align 8
  %6033 = icmp ult i32 %6031, %6030
  %6034 = icmp ult i32 %6031, 1
  %6035 = or i1 %6033, %6034
  %6036 = zext i1 %6035 to i8
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6036, i8* %6037, align 1
  %6038 = and i32 %6031, 255
  %6039 = call i32 @llvm.ctpop.i32(i32 %6038)
  %6040 = trunc i32 %6039 to i8
  %6041 = and i8 %6040, 1
  %6042 = xor i8 %6041, 1
  %6043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6042, i8* %6043, align 1
  %6044 = xor i64 1, %6027
  %6045 = trunc i64 %6044 to i32
  %6046 = xor i32 %6045, %6031
  %6047 = lshr i32 %6046, 4
  %6048 = trunc i32 %6047 to i8
  %6049 = and i8 %6048, 1
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6049, i8* %6050, align 1
  %6051 = icmp eq i32 %6031, 0
  %6052 = zext i1 %6051 to i8
  %6053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6052, i8* %6053, align 1
  %6054 = lshr i32 %6031, 31
  %6055 = trunc i32 %6054 to i8
  %6056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6055, i8* %6056, align 1
  %6057 = lshr i32 %6030, 31
  %6058 = xor i32 %6054, %6057
  %6059 = add i32 %6058, %6054
  %6060 = icmp eq i32 %6059, 2
  %6061 = zext i1 %6060 to i8
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6061, i8* %6062, align 1
  store %struct.Memory* %loadMem_47ac07, %struct.Memory** %MEMORY
  %loadMem_47ac0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6064 = getelementptr inbounds %struct.GPR, %struct.GPR* %6063, i32 0, i32 33
  %6065 = getelementptr inbounds %struct.Reg, %struct.Reg* %6064, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %6065 to i64*
  %6066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6067 = getelementptr inbounds %struct.GPR, %struct.GPR* %6066, i32 0, i32 5
  %6068 = getelementptr inbounds %struct.Reg, %struct.Reg* %6067, i32 0, i32 0
  %ECX.i179 = bitcast %union.anon* %6068 to i32*
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6070 = getelementptr inbounds %struct.GPR, %struct.GPR* %6069, i32 0, i32 15
  %6071 = getelementptr inbounds %struct.Reg, %struct.Reg* %6070, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %6071 to i64*
  %6072 = load i64, i64* %RBP.i180
  %6073 = sub i64 %6072, 24
  %6074 = load i32, i32* %ECX.i179
  %6075 = zext i32 %6074 to i64
  %6076 = load i64, i64* %PC.i178
  %6077 = add i64 %6076, 3
  store i64 %6077, i64* %PC.i178
  %6078 = inttoptr i64 %6073 to i32*
  store i32 %6074, i32* %6078
  store %struct.Memory* %loadMem_47ac0a, %struct.Memory** %MEMORY
  %loadMem_47ac0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6080 = getelementptr inbounds %struct.GPR, %struct.GPR* %6079, i32 0, i32 33
  %6081 = getelementptr inbounds %struct.Reg, %struct.Reg* %6080, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %6081 to i64*
  %6082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6083 = getelementptr inbounds %struct.GPR, %struct.GPR* %6082, i32 0, i32 1
  %6084 = getelementptr inbounds %struct.Reg, %struct.Reg* %6083, i32 0, i32 0
  %EAX.i176 = bitcast %union.anon* %6084 to i32*
  %6085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6086 = getelementptr inbounds %struct.GPR, %struct.GPR* %6085, i32 0, i32 15
  %6087 = getelementptr inbounds %struct.Reg, %struct.Reg* %6086, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %6087 to i64*
  %6088 = load i64, i64* %RBP.i177
  %6089 = sub i64 %6088, 1076
  %6090 = load i32, i32* %EAX.i176
  %6091 = zext i32 %6090 to i64
  %6092 = load i64, i64* %PC.i175
  %6093 = add i64 %6092, 6
  store i64 %6093, i64* %PC.i175
  %6094 = inttoptr i64 %6089 to i32*
  store i32 %6090, i32* %6094
  store %struct.Memory* %loadMem_47ac0d, %struct.Memory** %MEMORY
  br label %block_.L_47ac13

block_.L_47ac13:                                  ; preds = %block_.L_47abde, %block_.L_47aba4
  %loadMem_47ac13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6096 = getelementptr inbounds %struct.GPR, %struct.GPR* %6095, i32 0, i32 33
  %6097 = getelementptr inbounds %struct.Reg, %struct.Reg* %6096, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %6097 to i64*
  %6098 = load i64, i64* %PC.i174
  %6099 = add i64 %6098, 5
  %6100 = load i64, i64* %PC.i174
  %6101 = add i64 %6100, 5
  store i64 %6101, i64* %PC.i174
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6099, i64* %6102, align 8
  store %struct.Memory* %loadMem_47ac13, %struct.Memory** %MEMORY
  br label %block_.L_47ac18

block_.L_47ac18:                                  ; preds = %block_.L_47ac13, %block_47aaef, %block_.L_47aa35
  %loadMem_47ac18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6104 = getelementptr inbounds %struct.GPR, %struct.GPR* %6103, i32 0, i32 33
  %6105 = getelementptr inbounds %struct.Reg, %struct.Reg* %6104, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %6105 to i64*
  %6106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6107 = getelementptr inbounds %struct.GPR, %struct.GPR* %6106, i32 0, i32 1
  %6108 = getelementptr inbounds %struct.Reg, %struct.Reg* %6107, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %6108 to i64*
  %6109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6110 = getelementptr inbounds %struct.GPR, %struct.GPR* %6109, i32 0, i32 15
  %6111 = getelementptr inbounds %struct.Reg, %struct.Reg* %6110, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %6111 to i64*
  %6112 = load i64, i64* %RBP.i173
  %6113 = sub i64 %6112, 32
  %6114 = load i64, i64* %PC.i171
  %6115 = add i64 %6114, 3
  store i64 %6115, i64* %PC.i171
  %6116 = inttoptr i64 %6113 to i32*
  %6117 = load i32, i32* %6116
  %6118 = zext i32 %6117 to i64
  store i64 %6118, i64* %RAX.i172, align 8
  store %struct.Memory* %loadMem_47ac18, %struct.Memory** %MEMORY
  %loadMem_47ac1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6120 = getelementptr inbounds %struct.GPR, %struct.GPR* %6119, i32 0, i32 33
  %6121 = getelementptr inbounds %struct.Reg, %struct.Reg* %6120, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %6121 to i64*
  %6122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6123 = getelementptr inbounds %struct.GPR, %struct.GPR* %6122, i32 0, i32 1
  %6124 = getelementptr inbounds %struct.Reg, %struct.Reg* %6123, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %6124 to i64*
  %6125 = load i64, i64* %RAX.i170
  %6126 = load i64, i64* %PC.i169
  %6127 = add i64 %6126, 3
  store i64 %6127, i64* %PC.i169
  %6128 = trunc i64 %6125 to i32
  %6129 = add i32 1, %6128
  %6130 = zext i32 %6129 to i64
  store i64 %6130, i64* %RAX.i170, align 8
  %6131 = icmp ult i32 %6129, %6128
  %6132 = icmp ult i32 %6129, 1
  %6133 = or i1 %6131, %6132
  %6134 = zext i1 %6133 to i8
  %6135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6134, i8* %6135, align 1
  %6136 = and i32 %6129, 255
  %6137 = call i32 @llvm.ctpop.i32(i32 %6136)
  %6138 = trunc i32 %6137 to i8
  %6139 = and i8 %6138, 1
  %6140 = xor i8 %6139, 1
  %6141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6140, i8* %6141, align 1
  %6142 = xor i64 1, %6125
  %6143 = trunc i64 %6142 to i32
  %6144 = xor i32 %6143, %6129
  %6145 = lshr i32 %6144, 4
  %6146 = trunc i32 %6145 to i8
  %6147 = and i8 %6146, 1
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6147, i8* %6148, align 1
  %6149 = icmp eq i32 %6129, 0
  %6150 = zext i1 %6149 to i8
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6150, i8* %6151, align 1
  %6152 = lshr i32 %6129, 31
  %6153 = trunc i32 %6152 to i8
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6153, i8* %6154, align 1
  %6155 = lshr i32 %6128, 31
  %6156 = xor i32 %6152, %6155
  %6157 = add i32 %6156, %6152
  %6158 = icmp eq i32 %6157, 2
  %6159 = zext i1 %6158 to i8
  %6160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6159, i8* %6160, align 1
  store %struct.Memory* %loadMem_47ac1b, %struct.Memory** %MEMORY
  %loadMem_47ac1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6162 = getelementptr inbounds %struct.GPR, %struct.GPR* %6161, i32 0, i32 33
  %6163 = getelementptr inbounds %struct.Reg, %struct.Reg* %6162, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %6163 to i64*
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6165 = getelementptr inbounds %struct.GPR, %struct.GPR* %6164, i32 0, i32 1
  %6166 = getelementptr inbounds %struct.Reg, %struct.Reg* %6165, i32 0, i32 0
  %EAX.i167 = bitcast %union.anon* %6166 to i32*
  %6167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6168 = getelementptr inbounds %struct.GPR, %struct.GPR* %6167, i32 0, i32 15
  %6169 = getelementptr inbounds %struct.Reg, %struct.Reg* %6168, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %6169 to i64*
  %6170 = load i64, i64* %RBP.i168
  %6171 = sub i64 %6170, 32
  %6172 = load i32, i32* %EAX.i167
  %6173 = zext i32 %6172 to i64
  %6174 = load i64, i64* %PC.i166
  %6175 = add i64 %6174, 3
  store i64 %6175, i64* %PC.i166
  %6176 = inttoptr i64 %6171 to i32*
  store i32 %6172, i32* %6176
  store %struct.Memory* %loadMem_47ac1e, %struct.Memory** %MEMORY
  %loadMem_47ac21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6178 = getelementptr inbounds %struct.GPR, %struct.GPR* %6177, i32 0, i32 33
  %6179 = getelementptr inbounds %struct.Reg, %struct.Reg* %6178, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %6179 to i64*
  %6180 = load i64, i64* %PC.i165
  %6181 = add i64 %6180, -546
  %6182 = load i64, i64* %PC.i165
  %6183 = add i64 %6182, 5
  store i64 %6183, i64* %PC.i165
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6181, i64* %6184, align 8
  store %struct.Memory* %loadMem_47ac21, %struct.Memory** %MEMORY
  br label %block_.L_47a9ff

block_.L_47ac26:                                  ; preds = %block_.L_47a9ff
  %loadMem_47ac26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6186 = getelementptr inbounds %struct.GPR, %struct.GPR* %6185, i32 0, i32 33
  %6187 = getelementptr inbounds %struct.Reg, %struct.Reg* %6186, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %6187 to i64*
  %6188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6189 = getelementptr inbounds %struct.GPR, %struct.GPR* %6188, i32 0, i32 9
  %6190 = getelementptr inbounds %struct.Reg, %struct.Reg* %6189, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %6190 to i32*
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6192 = getelementptr inbounds %struct.GPR, %struct.GPR* %6191, i32 0, i32 9
  %6193 = getelementptr inbounds %struct.Reg, %struct.Reg* %6192, i32 0, i32 0
  %RSI.i164 = bitcast %union.anon* %6193 to i64*
  %6194 = load i64, i64* %RSI.i164
  %6195 = load i32, i32* %ESI.i
  %6196 = zext i32 %6195 to i64
  %6197 = load i64, i64* %PC.i163
  %6198 = add i64 %6197, 2
  store i64 %6198, i64* %PC.i163
  %6199 = xor i64 %6196, %6194
  %6200 = trunc i64 %6199 to i32
  %6201 = and i64 %6199, 4294967295
  store i64 %6201, i64* %RSI.i164, align 8
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6202, align 1
  %6203 = and i32 %6200, 255
  %6204 = call i32 @llvm.ctpop.i32(i32 %6203)
  %6205 = trunc i32 %6204 to i8
  %6206 = and i8 %6205, 1
  %6207 = xor i8 %6206, 1
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6207, i8* %6208, align 1
  %6209 = icmp eq i32 %6200, 0
  %6210 = zext i1 %6209 to i8
  %6211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6210, i8* %6211, align 1
  %6212 = lshr i32 %6200, 31
  %6213 = trunc i32 %6212 to i8
  %6214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6213, i8* %6214, align 1
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6215, align 1
  %6216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6216, align 1
  store %struct.Memory* %loadMem_47ac26, %struct.Memory** %MEMORY
  %loadMem_47ac28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6218 = getelementptr inbounds %struct.GPR, %struct.GPR* %6217, i32 0, i32 33
  %6219 = getelementptr inbounds %struct.Reg, %struct.Reg* %6218, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %6219 to i64*
  %6220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6221 = getelementptr inbounds %struct.GPR, %struct.GPR* %6220, i32 0, i32 1
  %6222 = getelementptr inbounds %struct.Reg, %struct.Reg* %6221, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %6222 to i64*
  %6223 = load i64, i64* %PC.i161
  %6224 = add i64 %6223, 5
  store i64 %6224, i64* %PC.i161
  store i64 1600, i64* %RAX.i162, align 8
  store %struct.Memory* %loadMem_47ac28, %struct.Memory** %MEMORY
  %loadMem_47ac2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6226 = getelementptr inbounds %struct.GPR, %struct.GPR* %6225, i32 0, i32 33
  %6227 = getelementptr inbounds %struct.Reg, %struct.Reg* %6226, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %6227 to i64*
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6229 = getelementptr inbounds %struct.GPR, %struct.GPR* %6228, i32 0, i32 1
  %6230 = getelementptr inbounds %struct.Reg, %struct.Reg* %6229, i32 0, i32 0
  %EAX.i159 = bitcast %union.anon* %6230 to i32*
  %6231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6232 = getelementptr inbounds %struct.GPR, %struct.GPR* %6231, i32 0, i32 7
  %6233 = getelementptr inbounds %struct.Reg, %struct.Reg* %6232, i32 0, i32 0
  %RDX.i160 = bitcast %union.anon* %6233 to i64*
  %6234 = load i32, i32* %EAX.i159
  %6235 = zext i32 %6234 to i64
  %6236 = load i64, i64* %PC.i158
  %6237 = add i64 %6236, 2
  store i64 %6237, i64* %PC.i158
  %6238 = and i64 %6235, 4294967295
  store i64 %6238, i64* %RDX.i160, align 8
  store %struct.Memory* %loadMem_47ac2d, %struct.Memory** %MEMORY
  %loadMem_47ac2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6240 = getelementptr inbounds %struct.GPR, %struct.GPR* %6239, i32 0, i32 33
  %6241 = getelementptr inbounds %struct.Reg, %struct.Reg* %6240, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %6241 to i64*
  %6242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6243 = getelementptr inbounds %struct.GPR, %struct.GPR* %6242, i32 0, i32 5
  %6244 = getelementptr inbounds %struct.Reg, %struct.Reg* %6243, i32 0, i32 0
  %RCX.i156 = bitcast %union.anon* %6244 to i64*
  %6245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6246 = getelementptr inbounds %struct.GPR, %struct.GPR* %6245, i32 0, i32 15
  %6247 = getelementptr inbounds %struct.Reg, %struct.Reg* %6246, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %6247 to i64*
  %6248 = load i64, i64* %RBP.i157
  %6249 = sub i64 %6248, 8
  %6250 = load i64, i64* %PC.i155
  %6251 = add i64 %6250, 4
  store i64 %6251, i64* %PC.i155
  %6252 = inttoptr i64 %6249 to i64*
  %6253 = load i64, i64* %6252
  store i64 %6253, i64* %RCX.i156, align 8
  store %struct.Memory* %loadMem_47ac2f, %struct.Memory** %MEMORY
  %loadMem_47ac33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6255 = getelementptr inbounds %struct.GPR, %struct.GPR* %6254, i32 0, i32 33
  %6256 = getelementptr inbounds %struct.Reg, %struct.Reg* %6255, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %6256 to i64*
  %6257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6258 = getelementptr inbounds %struct.GPR, %struct.GPR* %6257, i32 0, i32 5
  %6259 = getelementptr inbounds %struct.Reg, %struct.Reg* %6258, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %6259 to i64*
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6261 = getelementptr inbounds %struct.GPR, %struct.GPR* %6260, i32 0, i32 11
  %6262 = getelementptr inbounds %struct.Reg, %struct.Reg* %6261, i32 0, i32 0
  %RDI.i154 = bitcast %union.anon* %6262 to i64*
  %6263 = load i64, i64* %RCX.i153
  %6264 = load i64, i64* %PC.i152
  %6265 = add i64 %6264, 3
  store i64 %6265, i64* %PC.i152
  store i64 %6263, i64* %RDI.i154, align 8
  store %struct.Memory* %loadMem_47ac33, %struct.Memory** %MEMORY
  %loadMem1_47ac36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6267 = getelementptr inbounds %struct.GPR, %struct.GPR* %6266, i32 0, i32 33
  %6268 = getelementptr inbounds %struct.Reg, %struct.Reg* %6267, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %6268 to i64*
  %6269 = load i64, i64* %PC.i151
  %6270 = add i64 %6269, -498630
  %6271 = load i64, i64* %PC.i151
  %6272 = add i64 %6271, 5
  %6273 = load i64, i64* %PC.i151
  %6274 = add i64 %6273, 5
  store i64 %6274, i64* %PC.i151
  %6275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6276 = load i64, i64* %6275, align 8
  %6277 = add i64 %6276, -8
  %6278 = inttoptr i64 %6277 to i64*
  store i64 %6272, i64* %6278
  store i64 %6277, i64* %6275, align 8
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6270, i64* %6279, align 8
  store %struct.Memory* %loadMem1_47ac36, %struct.Memory** %MEMORY
  %loadMem2_47ac36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ac36 = load i64, i64* %3
  %6280 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_47ac36)
  store %struct.Memory* %6280, %struct.Memory** %MEMORY
  %loadMem_47ac3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6282 = getelementptr inbounds %struct.GPR, %struct.GPR* %6281, i32 0, i32 33
  %6283 = getelementptr inbounds %struct.Reg, %struct.Reg* %6282, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %6283 to i64*
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6285 = getelementptr inbounds %struct.GPR, %struct.GPR* %6284, i32 0, i32 15
  %6286 = getelementptr inbounds %struct.Reg, %struct.Reg* %6285, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %6286 to i64*
  %6287 = load i64, i64* %RBP.i147
  %6288 = sub i64 %6287, 32
  %6289 = load i64, i64* %PC.i146
  %6290 = add i64 %6289, 7
  store i64 %6290, i64* %PC.i146
  %6291 = inttoptr i64 %6288 to i32*
  store i32 21, i32* %6291
  store %struct.Memory* %loadMem_47ac3b, %struct.Memory** %MEMORY
  br label %block_.L_47ac42

block_.L_47ac42:                                  ; preds = %block_.L_47ad54, %block_.L_47ac26
  %loadMem_47ac42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6293 = getelementptr inbounds %struct.GPR, %struct.GPR* %6292, i32 0, i32 33
  %6294 = getelementptr inbounds %struct.Reg, %struct.Reg* %6293, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %6294 to i64*
  %6295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6296 = getelementptr inbounds %struct.GPR, %struct.GPR* %6295, i32 0, i32 15
  %6297 = getelementptr inbounds %struct.Reg, %struct.Reg* %6296, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %6297 to i64*
  %6298 = load i64, i64* %RBP.i145
  %6299 = sub i64 %6298, 32
  %6300 = load i64, i64* %PC.i144
  %6301 = add i64 %6300, 7
  store i64 %6301, i64* %PC.i144
  %6302 = inttoptr i64 %6299 to i32*
  %6303 = load i32, i32* %6302
  %6304 = sub i32 %6303, 400
  %6305 = icmp ult i32 %6303, 400
  %6306 = zext i1 %6305 to i8
  %6307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6306, i8* %6307, align 1
  %6308 = and i32 %6304, 255
  %6309 = call i32 @llvm.ctpop.i32(i32 %6308)
  %6310 = trunc i32 %6309 to i8
  %6311 = and i8 %6310, 1
  %6312 = xor i8 %6311, 1
  %6313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6312, i8* %6313, align 1
  %6314 = xor i32 %6303, 400
  %6315 = xor i32 %6314, %6304
  %6316 = lshr i32 %6315, 4
  %6317 = trunc i32 %6316 to i8
  %6318 = and i8 %6317, 1
  %6319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6318, i8* %6319, align 1
  %6320 = icmp eq i32 %6304, 0
  %6321 = zext i1 %6320 to i8
  %6322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6321, i8* %6322, align 1
  %6323 = lshr i32 %6304, 31
  %6324 = trunc i32 %6323 to i8
  %6325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6324, i8* %6325, align 1
  %6326 = lshr i32 %6303, 31
  %6327 = xor i32 %6323, %6326
  %6328 = add i32 %6327, %6326
  %6329 = icmp eq i32 %6328, 2
  %6330 = zext i1 %6329 to i8
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6330, i8* %6331, align 1
  store %struct.Memory* %loadMem_47ac42, %struct.Memory** %MEMORY
  %loadMem_47ac49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6333 = getelementptr inbounds %struct.GPR, %struct.GPR* %6332, i32 0, i32 33
  %6334 = getelementptr inbounds %struct.Reg, %struct.Reg* %6333, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6334 to i64*
  %6335 = load i64, i64* %PC.i143
  %6336 = add i64 %6335, 281
  %6337 = load i64, i64* %PC.i143
  %6338 = add i64 %6337, 6
  %6339 = load i64, i64* %PC.i143
  %6340 = add i64 %6339, 6
  store i64 %6340, i64* %PC.i143
  %6341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6342 = load i8, i8* %6341, align 1
  %6343 = icmp ne i8 %6342, 0
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6345 = load i8, i8* %6344, align 1
  %6346 = icmp ne i8 %6345, 0
  %6347 = xor i1 %6343, %6346
  %6348 = xor i1 %6347, true
  %6349 = zext i1 %6348 to i8
  store i8 %6349, i8* %BRANCH_TAKEN, align 1
  %6350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6351 = select i1 %6347, i64 %6338, i64 %6336
  store i64 %6351, i64* %6350, align 8
  store %struct.Memory* %loadMem_47ac49, %struct.Memory** %MEMORY
  %loadBr_47ac49 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ac49 = icmp eq i8 %loadBr_47ac49, 1
  br i1 %cmpBr_47ac49, label %block_.L_47ad62, label %block_47ac4f

block_47ac4f:                                     ; preds = %block_.L_47ac42
  %loadMem_47ac4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6353 = getelementptr inbounds %struct.GPR, %struct.GPR* %6352, i32 0, i32 33
  %6354 = getelementptr inbounds %struct.Reg, %struct.Reg* %6353, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %6354 to i64*
  %6355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6356 = getelementptr inbounds %struct.GPR, %struct.GPR* %6355, i32 0, i32 1
  %6357 = getelementptr inbounds %struct.Reg, %struct.Reg* %6356, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %6357 to i64*
  %6358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6359 = getelementptr inbounds %struct.GPR, %struct.GPR* %6358, i32 0, i32 15
  %6360 = getelementptr inbounds %struct.Reg, %struct.Reg* %6359, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %6360 to i64*
  %6361 = load i64, i64* %RBP.i142
  %6362 = sub i64 %6361, 32
  %6363 = load i64, i64* %PC.i140
  %6364 = add i64 %6363, 4
  store i64 %6364, i64* %PC.i140
  %6365 = inttoptr i64 %6362 to i32*
  %6366 = load i32, i32* %6365
  %6367 = sext i32 %6366 to i64
  store i64 %6367, i64* %RAX.i141, align 8
  store %struct.Memory* %loadMem_47ac4f, %struct.Memory** %MEMORY
  %loadMem_47ac53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6369 = getelementptr inbounds %struct.GPR, %struct.GPR* %6368, i32 0, i32 33
  %6370 = getelementptr inbounds %struct.Reg, %struct.Reg* %6369, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %6370 to i64*
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6372 = getelementptr inbounds %struct.GPR, %struct.GPR* %6371, i32 0, i32 1
  %6373 = getelementptr inbounds %struct.Reg, %struct.Reg* %6372, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %6373 to i64*
  %6374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6375 = getelementptr inbounds %struct.GPR, %struct.GPR* %6374, i32 0, i32 5
  %6376 = getelementptr inbounds %struct.Reg, %struct.Reg* %6375, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %6376 to i64*
  %6377 = load i64, i64* %RAX.i138
  %6378 = add i64 %6377, 12099168
  %6379 = load i64, i64* %PC.i137
  %6380 = add i64 %6379, 8
  store i64 %6380, i64* %PC.i137
  %6381 = inttoptr i64 %6378 to i8*
  %6382 = load i8, i8* %6381
  %6383 = zext i8 %6382 to i64
  store i64 %6383, i64* %RCX.i139, align 8
  store %struct.Memory* %loadMem_47ac53, %struct.Memory** %MEMORY
  %loadMem_47ac5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6385 = getelementptr inbounds %struct.GPR, %struct.GPR* %6384, i32 0, i32 33
  %6386 = getelementptr inbounds %struct.Reg, %struct.Reg* %6385, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %6386 to i64*
  %6387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6388 = getelementptr inbounds %struct.GPR, %struct.GPR* %6387, i32 0, i32 5
  %6389 = getelementptr inbounds %struct.Reg, %struct.Reg* %6388, i32 0, i32 0
  %ECX.i135 = bitcast %union.anon* %6389 to i32*
  %6390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6391 = getelementptr inbounds %struct.GPR, %struct.GPR* %6390, i32 0, i32 15
  %6392 = getelementptr inbounds %struct.Reg, %struct.Reg* %6391, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %6392 to i64*
  %6393 = load i32, i32* %ECX.i135
  %6394 = zext i32 %6393 to i64
  %6395 = load i64, i64* %RBP.i136
  %6396 = sub i64 %6395, 12
  %6397 = load i64, i64* %PC.i134
  %6398 = add i64 %6397, 3
  store i64 %6398, i64* %PC.i134
  %6399 = inttoptr i64 %6396 to i32*
  %6400 = load i32, i32* %6399
  %6401 = sub i32 %6393, %6400
  %6402 = icmp ult i32 %6393, %6400
  %6403 = zext i1 %6402 to i8
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6403, i8* %6404, align 1
  %6405 = and i32 %6401, 255
  %6406 = call i32 @llvm.ctpop.i32(i32 %6405)
  %6407 = trunc i32 %6406 to i8
  %6408 = and i8 %6407, 1
  %6409 = xor i8 %6408, 1
  %6410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6409, i8* %6410, align 1
  %6411 = xor i32 %6400, %6393
  %6412 = xor i32 %6411, %6401
  %6413 = lshr i32 %6412, 4
  %6414 = trunc i32 %6413 to i8
  %6415 = and i8 %6414, 1
  %6416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6415, i8* %6416, align 1
  %6417 = icmp eq i32 %6401, 0
  %6418 = zext i1 %6417 to i8
  %6419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6418, i8* %6419, align 1
  %6420 = lshr i32 %6401, 31
  %6421 = trunc i32 %6420 to i8
  %6422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6421, i8* %6422, align 1
  %6423 = lshr i32 %6393, 31
  %6424 = lshr i32 %6400, 31
  %6425 = xor i32 %6424, %6423
  %6426 = xor i32 %6420, %6423
  %6427 = add i32 %6426, %6425
  %6428 = icmp eq i32 %6427, 2
  %6429 = zext i1 %6428 to i8
  %6430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6429, i8* %6430, align 1
  store %struct.Memory* %loadMem_47ac5b, %struct.Memory** %MEMORY
  %loadMem_47ac5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6432 = getelementptr inbounds %struct.GPR, %struct.GPR* %6431, i32 0, i32 33
  %6433 = getelementptr inbounds %struct.Reg, %struct.Reg* %6432, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %6433 to i64*
  %6434 = load i64, i64* %PC.i133
  %6435 = add i64 %6434, 136
  %6436 = load i64, i64* %PC.i133
  %6437 = add i64 %6436, 6
  %6438 = load i64, i64* %PC.i133
  %6439 = add i64 %6438, 6
  store i64 %6439, i64* %PC.i133
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6441 = load i8, i8* %6440, align 1
  %6442 = icmp eq i8 %6441, 0
  %6443 = zext i1 %6442 to i8
  store i8 %6443, i8* %BRANCH_TAKEN, align 1
  %6444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6445 = select i1 %6442, i64 %6435, i64 %6437
  store i64 %6445, i64* %6444, align 8
  store %struct.Memory* %loadMem_47ac5e, %struct.Memory** %MEMORY
  %loadBr_47ac5e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ac5e = icmp eq i8 %loadBr_47ac5e, 1
  br i1 %cmpBr_47ac5e, label %block_.L_47ace6, label %block_47ac64

block_47ac64:                                     ; preds = %block_47ac4f
  %loadMem_47ac64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6447 = getelementptr inbounds %struct.GPR, %struct.GPR* %6446, i32 0, i32 33
  %6448 = getelementptr inbounds %struct.Reg, %struct.Reg* %6447, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %6448 to i64*
  %6449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6450 = getelementptr inbounds %struct.GPR, %struct.GPR* %6449, i32 0, i32 1
  %6451 = getelementptr inbounds %struct.Reg, %struct.Reg* %6450, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %6451 to i64*
  %6452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6453 = getelementptr inbounds %struct.GPR, %struct.GPR* %6452, i32 0, i32 15
  %6454 = getelementptr inbounds %struct.Reg, %struct.Reg* %6453, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %6454 to i64*
  %6455 = load i64, i64* %RBP.i132
  %6456 = sub i64 %6455, 8
  %6457 = load i64, i64* %PC.i130
  %6458 = add i64 %6457, 4
  store i64 %6458, i64* %PC.i130
  %6459 = inttoptr i64 %6456 to i64*
  %6460 = load i64, i64* %6459
  store i64 %6460, i64* %RAX.i131, align 8
  store %struct.Memory* %loadMem_47ac64, %struct.Memory** %MEMORY
  %loadMem_47ac68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6462 = getelementptr inbounds %struct.GPR, %struct.GPR* %6461, i32 0, i32 33
  %6463 = getelementptr inbounds %struct.Reg, %struct.Reg* %6462, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %6463 to i64*
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6465 = getelementptr inbounds %struct.GPR, %struct.GPR* %6464, i32 0, i32 5
  %6466 = getelementptr inbounds %struct.Reg, %struct.Reg* %6465, i32 0, i32 0
  %RCX.i128 = bitcast %union.anon* %6466 to i64*
  %6467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6468 = getelementptr inbounds %struct.GPR, %struct.GPR* %6467, i32 0, i32 15
  %6469 = getelementptr inbounds %struct.Reg, %struct.Reg* %6468, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %6469 to i64*
  %6470 = load i64, i64* %RBP.i129
  %6471 = sub i64 %6470, 32
  %6472 = load i64, i64* %PC.i127
  %6473 = add i64 %6472, 4
  store i64 %6473, i64* %PC.i127
  %6474 = inttoptr i64 %6471 to i32*
  %6475 = load i32, i32* %6474
  %6476 = sext i32 %6475 to i64
  store i64 %6476, i64* %RCX.i128, align 8
  store %struct.Memory* %loadMem_47ac68, %struct.Memory** %MEMORY
  %loadMem_47ac6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6478 = getelementptr inbounds %struct.GPR, %struct.GPR* %6477, i32 0, i32 33
  %6479 = getelementptr inbounds %struct.Reg, %struct.Reg* %6478, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %6479 to i64*
  %6480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6481 = getelementptr inbounds %struct.GPR, %struct.GPR* %6480, i32 0, i32 1
  %6482 = getelementptr inbounds %struct.Reg, %struct.Reg* %6481, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %6482 to i64*
  %6483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6484 = getelementptr inbounds %struct.GPR, %struct.GPR* %6483, i32 0, i32 5
  %6485 = getelementptr inbounds %struct.Reg, %struct.Reg* %6484, i32 0, i32 0
  %RCX.i126 = bitcast %union.anon* %6485 to i64*
  %6486 = load i64, i64* %RAX.i125
  %6487 = load i64, i64* %RCX.i126
  %6488 = mul i64 %6487, 4
  %6489 = add i64 %6488, %6486
  %6490 = load i64, i64* %PC.i124
  %6491 = add i64 %6490, 7
  store i64 %6491, i64* %PC.i124
  %6492 = inttoptr i64 %6489 to i32*
  store i32 1, i32* %6492
  store %struct.Memory* %loadMem_47ac6c, %struct.Memory** %MEMORY
  %loadMem_47ac73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6494 = getelementptr inbounds %struct.GPR, %struct.GPR* %6493, i32 0, i32 33
  %6495 = getelementptr inbounds %struct.Reg, %struct.Reg* %6494, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %6495 to i64*
  %6496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6497 = getelementptr inbounds %struct.GPR, %struct.GPR* %6496, i32 0, i32 11
  %6498 = getelementptr inbounds %struct.Reg, %struct.Reg* %6497, i32 0, i32 0
  %RDI.i122 = bitcast %union.anon* %6498 to i64*
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6500 = getelementptr inbounds %struct.GPR, %struct.GPR* %6499, i32 0, i32 15
  %6501 = getelementptr inbounds %struct.Reg, %struct.Reg* %6500, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %6501 to i64*
  %6502 = load i64, i64* %RBP.i123
  %6503 = sub i64 %6502, 32
  %6504 = load i64, i64* %PC.i121
  %6505 = add i64 %6504, 3
  store i64 %6505, i64* %PC.i121
  %6506 = inttoptr i64 %6503 to i32*
  %6507 = load i32, i32* %6506
  %6508 = zext i32 %6507 to i64
  store i64 %6508, i64* %RDI.i122, align 8
  store %struct.Memory* %loadMem_47ac73, %struct.Memory** %MEMORY
  %loadMem_47ac76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6510 = getelementptr inbounds %struct.GPR, %struct.GPR* %6509, i32 0, i32 33
  %6511 = getelementptr inbounds %struct.Reg, %struct.Reg* %6510, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %6511 to i64*
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6513 = getelementptr inbounds %struct.GPR, %struct.GPR* %6512, i32 0, i32 9
  %6514 = getelementptr inbounds %struct.Reg, %struct.Reg* %6513, i32 0, i32 0
  %RSI.i119 = bitcast %union.anon* %6514 to i64*
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6516 = getelementptr inbounds %struct.GPR, %struct.GPR* %6515, i32 0, i32 15
  %6517 = getelementptr inbounds %struct.Reg, %struct.Reg* %6516, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %6517 to i64*
  %6518 = load i64, i64* %RBP.i120
  %6519 = sub i64 %6518, 32
  %6520 = load i64, i64* %PC.i118
  %6521 = add i64 %6520, 3
  store i64 %6521, i64* %PC.i118
  %6522 = inttoptr i64 %6519 to i32*
  %6523 = load i32, i32* %6522
  %6524 = zext i32 %6523 to i64
  store i64 %6524, i64* %RSI.i119, align 8
  store %struct.Memory* %loadMem_47ac76, %struct.Memory** %MEMORY
  %loadMem1_47ac79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6526 = getelementptr inbounds %struct.GPR, %struct.GPR* %6525, i32 0, i32 33
  %6527 = getelementptr inbounds %struct.Reg, %struct.Reg* %6526, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %6527 to i64*
  %6528 = load i64, i64* %PC.i117
  %6529 = add i64 %6528, 54391
  %6530 = load i64, i64* %PC.i117
  %6531 = add i64 %6530, 5
  %6532 = load i64, i64* %PC.i117
  %6533 = add i64 %6532, 5
  store i64 %6533, i64* %PC.i117
  %6534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6535 = load i64, i64* %6534, align 8
  %6536 = add i64 %6535, -8
  %6537 = inttoptr i64 %6536 to i64*
  store i64 %6531, i64* %6537
  store i64 %6536, i64* %6534, align 8
  %6538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6529, i64* %6538, align 8
  store %struct.Memory* %loadMem1_47ac79, %struct.Memory** %MEMORY
  %loadMem2_47ac79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ac79 = load i64, i64* %3
  %call2_47ac79 = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64 %loadPC_47ac79, %struct.Memory* %loadMem2_47ac79)
  store %struct.Memory* %call2_47ac79, %struct.Memory** %MEMORY
  %loadMem_47ac7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6540 = getelementptr inbounds %struct.GPR, %struct.GPR* %6539, i32 0, i32 33
  %6541 = getelementptr inbounds %struct.Reg, %struct.Reg* %6540, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %6541 to i64*
  %6542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6543 = getelementptr inbounds %struct.GPR, %struct.GPR* %6542, i32 0, i32 1
  %6544 = getelementptr inbounds %struct.Reg, %struct.Reg* %6543, i32 0, i32 0
  %EAX.i116 = bitcast %union.anon* %6544 to i32*
  %6545 = load i32, i32* %EAX.i116
  %6546 = zext i32 %6545 to i64
  %6547 = load i64, i64* %PC.i115
  %6548 = add i64 %6547, 3
  store i64 %6548, i64* %PC.i115
  %6549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6549, align 1
  %6550 = and i32 %6545, 255
  %6551 = call i32 @llvm.ctpop.i32(i32 %6550)
  %6552 = trunc i32 %6551 to i8
  %6553 = and i8 %6552, 1
  %6554 = xor i8 %6553, 1
  %6555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6554, i8* %6555, align 1
  %6556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6556, align 1
  %6557 = icmp eq i32 %6545, 0
  %6558 = zext i1 %6557 to i8
  %6559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6558, i8* %6559, align 1
  %6560 = lshr i32 %6545, 31
  %6561 = trunc i32 %6560 to i8
  %6562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6561, i8* %6562, align 1
  %6563 = lshr i32 %6545, 31
  %6564 = xor i32 %6560, %6563
  %6565 = add i32 %6564, %6563
  %6566 = icmp eq i32 %6565, 2
  %6567 = zext i1 %6566 to i8
  %6568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6567, i8* %6568, align 1
  store %struct.Memory* %loadMem_47ac7e, %struct.Memory** %MEMORY
  %loadMem_47ac81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6570 = getelementptr inbounds %struct.GPR, %struct.GPR* %6569, i32 0, i32 33
  %6571 = getelementptr inbounds %struct.Reg, %struct.Reg* %6570, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %6571 to i64*
  %6572 = load i64, i64* %PC.i114
  %6573 = add i64 %6572, 96
  %6574 = load i64, i64* %PC.i114
  %6575 = add i64 %6574, 6
  %6576 = load i64, i64* %PC.i114
  %6577 = add i64 %6576, 6
  store i64 %6577, i64* %PC.i114
  %6578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6579 = load i8, i8* %6578, align 1
  store i8 %6579, i8* %BRANCH_TAKEN, align 1
  %6580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6581 = icmp ne i8 %6579, 0
  %6582 = select i1 %6581, i64 %6573, i64 %6575
  store i64 %6582, i64* %6580, align 8
  store %struct.Memory* %loadMem_47ac81, %struct.Memory** %MEMORY
  %loadBr_47ac81 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ac81 = icmp eq i8 %loadBr_47ac81, 1
  br i1 %cmpBr_47ac81, label %block_.L_47ace1, label %block_47ac87

block_47ac87:                                     ; preds = %block_47ac64
  %loadMem_47ac87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6584 = getelementptr inbounds %struct.GPR, %struct.GPR* %6583, i32 0, i32 33
  %6585 = getelementptr inbounds %struct.Reg, %struct.Reg* %6584, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %6585 to i64*
  %6586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6587 = getelementptr inbounds %struct.GPR, %struct.GPR* %6586, i32 0, i32 9
  %6588 = getelementptr inbounds %struct.Reg, %struct.Reg* %6587, i32 0, i32 0
  %RSI.i113 = bitcast %union.anon* %6588 to i64*
  %6589 = load i64, i64* %PC.i112
  %6590 = add i64 %6589, 5
  store i64 %6590, i64* %PC.i112
  store i64 241, i64* %RSI.i113, align 8
  store %struct.Memory* %loadMem_47ac87, %struct.Memory** %MEMORY
  %loadMem_47ac8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6592 = getelementptr inbounds %struct.GPR, %struct.GPR* %6591, i32 0, i32 33
  %6593 = getelementptr inbounds %struct.Reg, %struct.Reg* %6592, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %6593 to i64*
  %6594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6595 = getelementptr inbounds %struct.GPR, %struct.GPR* %6594, i32 0, i32 7
  %6596 = getelementptr inbounds %struct.Reg, %struct.Reg* %6595, i32 0, i32 0
  %RDX.i110 = bitcast %union.anon* %6596 to i64*
  %6597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6598 = getelementptr inbounds %struct.GPR, %struct.GPR* %6597, i32 0, i32 15
  %6599 = getelementptr inbounds %struct.Reg, %struct.Reg* %6598, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %6599 to i64*
  %6600 = load i64, i64* %RBP.i111
  %6601 = sub i64 %6600, 1008
  %6602 = load i64, i64* %PC.i109
  %6603 = add i64 %6602, 7
  store i64 %6603, i64* %PC.i109
  store i64 %6601, i64* %RDX.i110, align 8
  store %struct.Memory* %loadMem_47ac8c, %struct.Memory** %MEMORY
  %loadMem_47ac93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6605 = getelementptr inbounds %struct.GPR, %struct.GPR* %6604, i32 0, i32 33
  %6606 = getelementptr inbounds %struct.Reg, %struct.Reg* %6605, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %6606 to i64*
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6608 = getelementptr inbounds %struct.GPR, %struct.GPR* %6607, i32 0, i32 11
  %6609 = getelementptr inbounds %struct.Reg, %struct.Reg* %6608, i32 0, i32 0
  %RDI.i107 = bitcast %union.anon* %6609 to i64*
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6611 = getelementptr inbounds %struct.GPR, %struct.GPR* %6610, i32 0, i32 15
  %6612 = getelementptr inbounds %struct.Reg, %struct.Reg* %6611, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %6612 to i64*
  %6613 = load i64, i64* %RBP.i108
  %6614 = sub i64 %6613, 32
  %6615 = load i64, i64* %PC.i106
  %6616 = add i64 %6615, 3
  store i64 %6616, i64* %PC.i106
  %6617 = inttoptr i64 %6614 to i32*
  %6618 = load i32, i32* %6617
  %6619 = zext i32 %6618 to i64
  store i64 %6619, i64* %RDI.i107, align 8
  store %struct.Memory* %loadMem_47ac93, %struct.Memory** %MEMORY
  %loadMem1_47ac96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6621 = getelementptr inbounds %struct.GPR, %struct.GPR* %6620, i32 0, i32 33
  %6622 = getelementptr inbounds %struct.Reg, %struct.Reg* %6621, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %6622 to i64*
  %6623 = load i64, i64* %PC.i105
  %6624 = add i64 %6623, -439382
  %6625 = load i64, i64* %PC.i105
  %6626 = add i64 %6625, 5
  %6627 = load i64, i64* %PC.i105
  %6628 = add i64 %6627, 5
  store i64 %6628, i64* %PC.i105
  %6629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6630 = load i64, i64* %6629, align 8
  %6631 = add i64 %6630, -8
  %6632 = inttoptr i64 %6631 to i64*
  store i64 %6626, i64* %6632
  store i64 %6631, i64* %6629, align 8
  %6633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6624, i64* %6633, align 8
  store %struct.Memory* %loadMem1_47ac96, %struct.Memory** %MEMORY
  %loadMem2_47ac96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ac96 = load i64, i64* %3
  %call2_47ac96 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_47ac96, %struct.Memory* %loadMem2_47ac96)
  store %struct.Memory* %call2_47ac96, %struct.Memory** %MEMORY
  %loadMem_47ac9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6635 = getelementptr inbounds %struct.GPR, %struct.GPR* %6634, i32 0, i32 33
  %6636 = getelementptr inbounds %struct.Reg, %struct.Reg* %6635, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %6636 to i64*
  %6637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6638 = getelementptr inbounds %struct.GPR, %struct.GPR* %6637, i32 0, i32 1
  %6639 = getelementptr inbounds %struct.Reg, %struct.Reg* %6638, i32 0, i32 0
  %EAX.i103 = bitcast %union.anon* %6639 to i32*
  %6640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6641 = getelementptr inbounds %struct.GPR, %struct.GPR* %6640, i32 0, i32 15
  %6642 = getelementptr inbounds %struct.Reg, %struct.Reg* %6641, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %6642 to i64*
  %6643 = load i64, i64* %RBP.i104
  %6644 = sub i64 %6643, 1012
  %6645 = load i32, i32* %EAX.i103
  %6646 = zext i32 %6645 to i64
  %6647 = load i64, i64* %PC.i102
  %6648 = add i64 %6647, 6
  store i64 %6648, i64* %PC.i102
  %6649 = inttoptr i64 %6644 to i32*
  store i32 %6645, i32* %6649
  store %struct.Memory* %loadMem_47ac9b, %struct.Memory** %MEMORY
  %loadMem_47aca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6651 = getelementptr inbounds %struct.GPR, %struct.GPR* %6650, i32 0, i32 33
  %6652 = getelementptr inbounds %struct.Reg, %struct.Reg* %6651, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %6652 to i64*
  %6653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6654 = getelementptr inbounds %struct.GPR, %struct.GPR* %6653, i32 0, i32 15
  %6655 = getelementptr inbounds %struct.Reg, %struct.Reg* %6654, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %6655 to i64*
  %6656 = load i64, i64* %RBP.i101
  %6657 = sub i64 %6656, 36
  %6658 = load i64, i64* %PC.i100
  %6659 = add i64 %6658, 7
  store i64 %6659, i64* %PC.i100
  %6660 = inttoptr i64 %6657 to i32*
  store i32 0, i32* %6660
  store %struct.Memory* %loadMem_47aca1, %struct.Memory** %MEMORY
  br label %block_.L_47aca8

block_.L_47aca8:                                  ; preds = %block_47acb7, %block_47ac87
  %loadMem_47aca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 33
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %6663 to i64*
  %6664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6665 = getelementptr inbounds %struct.GPR, %struct.GPR* %6664, i32 0, i32 1
  %6666 = getelementptr inbounds %struct.Reg, %struct.Reg* %6665, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %6666 to i64*
  %6667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6668 = getelementptr inbounds %struct.GPR, %struct.GPR* %6667, i32 0, i32 15
  %6669 = getelementptr inbounds %struct.Reg, %struct.Reg* %6668, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %6669 to i64*
  %6670 = load i64, i64* %RBP.i99
  %6671 = sub i64 %6670, 36
  %6672 = load i64, i64* %PC.i97
  %6673 = add i64 %6672, 3
  store i64 %6673, i64* %PC.i97
  %6674 = inttoptr i64 %6671 to i32*
  %6675 = load i32, i32* %6674
  %6676 = zext i32 %6675 to i64
  store i64 %6676, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_47aca8, %struct.Memory** %MEMORY
  %loadMem_47acab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6678 = getelementptr inbounds %struct.GPR, %struct.GPR* %6677, i32 0, i32 33
  %6679 = getelementptr inbounds %struct.Reg, %struct.Reg* %6678, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %6679 to i64*
  %6680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6681 = getelementptr inbounds %struct.GPR, %struct.GPR* %6680, i32 0, i32 1
  %6682 = getelementptr inbounds %struct.Reg, %struct.Reg* %6681, i32 0, i32 0
  %EAX.i95 = bitcast %union.anon* %6682 to i32*
  %6683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6684 = getelementptr inbounds %struct.GPR, %struct.GPR* %6683, i32 0, i32 15
  %6685 = getelementptr inbounds %struct.Reg, %struct.Reg* %6684, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %6685 to i64*
  %6686 = load i32, i32* %EAX.i95
  %6687 = zext i32 %6686 to i64
  %6688 = load i64, i64* %RBP.i96
  %6689 = sub i64 %6688, 1012
  %6690 = load i64, i64* %PC.i94
  %6691 = add i64 %6690, 6
  store i64 %6691, i64* %PC.i94
  %6692 = inttoptr i64 %6689 to i32*
  %6693 = load i32, i32* %6692
  %6694 = sub i32 %6686, %6693
  %6695 = icmp ult i32 %6686, %6693
  %6696 = zext i1 %6695 to i8
  %6697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6696, i8* %6697, align 1
  %6698 = and i32 %6694, 255
  %6699 = call i32 @llvm.ctpop.i32(i32 %6698)
  %6700 = trunc i32 %6699 to i8
  %6701 = and i8 %6700, 1
  %6702 = xor i8 %6701, 1
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6702, i8* %6703, align 1
  %6704 = xor i32 %6693, %6686
  %6705 = xor i32 %6704, %6694
  %6706 = lshr i32 %6705, 4
  %6707 = trunc i32 %6706 to i8
  %6708 = and i8 %6707, 1
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6708, i8* %6709, align 1
  %6710 = icmp eq i32 %6694, 0
  %6711 = zext i1 %6710 to i8
  %6712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6711, i8* %6712, align 1
  %6713 = lshr i32 %6694, 31
  %6714 = trunc i32 %6713 to i8
  %6715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6714, i8* %6715, align 1
  %6716 = lshr i32 %6686, 31
  %6717 = lshr i32 %6693, 31
  %6718 = xor i32 %6717, %6716
  %6719 = xor i32 %6713, %6716
  %6720 = add i32 %6719, %6718
  %6721 = icmp eq i32 %6720, 2
  %6722 = zext i1 %6721 to i8
  %6723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6722, i8* %6723, align 1
  store %struct.Memory* %loadMem_47acab, %struct.Memory** %MEMORY
  %loadMem_47acb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6725 = getelementptr inbounds %struct.GPR, %struct.GPR* %6724, i32 0, i32 33
  %6726 = getelementptr inbounds %struct.Reg, %struct.Reg* %6725, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %6726 to i64*
  %6727 = load i64, i64* %PC.i93
  %6728 = add i64 %6727, 43
  %6729 = load i64, i64* %PC.i93
  %6730 = add i64 %6729, 6
  %6731 = load i64, i64* %PC.i93
  %6732 = add i64 %6731, 6
  store i64 %6732, i64* %PC.i93
  %6733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6734 = load i8, i8* %6733, align 1
  %6735 = icmp ne i8 %6734, 0
  %6736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6737 = load i8, i8* %6736, align 1
  %6738 = icmp ne i8 %6737, 0
  %6739 = xor i1 %6735, %6738
  %6740 = xor i1 %6739, true
  %6741 = zext i1 %6740 to i8
  store i8 %6741, i8* %BRANCH_TAKEN, align 1
  %6742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6743 = select i1 %6739, i64 %6730, i64 %6728
  store i64 %6743, i64* %6742, align 8
  store %struct.Memory* %loadMem_47acb1, %struct.Memory** %MEMORY
  %loadBr_47acb1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47acb1 = icmp eq i8 %loadBr_47acb1, 1
  br i1 %cmpBr_47acb1, label %block_.L_47acdc, label %block_47acb7

block_47acb7:                                     ; preds = %block_.L_47aca8
  %loadMem_47acb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6745 = getelementptr inbounds %struct.GPR, %struct.GPR* %6744, i32 0, i32 33
  %6746 = getelementptr inbounds %struct.Reg, %struct.Reg* %6745, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %6746 to i64*
  %6747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6748 = getelementptr inbounds %struct.GPR, %struct.GPR* %6747, i32 0, i32 1
  %6749 = getelementptr inbounds %struct.Reg, %struct.Reg* %6748, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %6749 to i64*
  %6750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6751 = getelementptr inbounds %struct.GPR, %struct.GPR* %6750, i32 0, i32 15
  %6752 = getelementptr inbounds %struct.Reg, %struct.Reg* %6751, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %6752 to i64*
  %6753 = load i64, i64* %RBP.i92
  %6754 = sub i64 %6753, 8
  %6755 = load i64, i64* %PC.i90
  %6756 = add i64 %6755, 4
  store i64 %6756, i64* %PC.i90
  %6757 = inttoptr i64 %6754 to i64*
  %6758 = load i64, i64* %6757
  store i64 %6758, i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_47acb7, %struct.Memory** %MEMORY
  %loadMem_47acbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6760 = getelementptr inbounds %struct.GPR, %struct.GPR* %6759, i32 0, i32 33
  %6761 = getelementptr inbounds %struct.Reg, %struct.Reg* %6760, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %6761 to i64*
  %6762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6763 = getelementptr inbounds %struct.GPR, %struct.GPR* %6762, i32 0, i32 5
  %6764 = getelementptr inbounds %struct.Reg, %struct.Reg* %6763, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %6764 to i64*
  %6765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6766 = getelementptr inbounds %struct.GPR, %struct.GPR* %6765, i32 0, i32 15
  %6767 = getelementptr inbounds %struct.Reg, %struct.Reg* %6766, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %6767 to i64*
  %6768 = load i64, i64* %RBP.i89
  %6769 = sub i64 %6768, 36
  %6770 = load i64, i64* %PC.i87
  %6771 = add i64 %6770, 4
  store i64 %6771, i64* %PC.i87
  %6772 = inttoptr i64 %6769 to i32*
  %6773 = load i32, i32* %6772
  %6774 = sext i32 %6773 to i64
  store i64 %6774, i64* %RCX.i88, align 8
  store %struct.Memory* %loadMem_47acbb, %struct.Memory** %MEMORY
  %loadMem_47acbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6776 = getelementptr inbounds %struct.GPR, %struct.GPR* %6775, i32 0, i32 33
  %6777 = getelementptr inbounds %struct.Reg, %struct.Reg* %6776, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %6777 to i64*
  %6778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6779 = getelementptr inbounds %struct.GPR, %struct.GPR* %6778, i32 0, i32 5
  %6780 = getelementptr inbounds %struct.Reg, %struct.Reg* %6779, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %6780 to i64*
  %6781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6782 = getelementptr inbounds %struct.GPR, %struct.GPR* %6781, i32 0, i32 15
  %6783 = getelementptr inbounds %struct.Reg, %struct.Reg* %6782, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %6783 to i64*
  %6784 = load i64, i64* %RBP.i86
  %6785 = load i64, i64* %RCX.i85
  %6786 = mul i64 %6785, 4
  %6787 = add i64 %6784, -1008
  %6788 = add i64 %6787, %6786
  %6789 = load i64, i64* %PC.i84
  %6790 = add i64 %6789, 8
  store i64 %6790, i64* %PC.i84
  %6791 = inttoptr i64 %6788 to i32*
  %6792 = load i32, i32* %6791
  %6793 = sext i32 %6792 to i64
  store i64 %6793, i64* %RCX.i85, align 8
  store %struct.Memory* %loadMem_47acbf, %struct.Memory** %MEMORY
  %loadMem_47acc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6795 = getelementptr inbounds %struct.GPR, %struct.GPR* %6794, i32 0, i32 33
  %6796 = getelementptr inbounds %struct.Reg, %struct.Reg* %6795, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %6796 to i64*
  %6797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6798 = getelementptr inbounds %struct.GPR, %struct.GPR* %6797, i32 0, i32 1
  %6799 = getelementptr inbounds %struct.Reg, %struct.Reg* %6798, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %6799 to i64*
  %6800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6801 = getelementptr inbounds %struct.GPR, %struct.GPR* %6800, i32 0, i32 5
  %6802 = getelementptr inbounds %struct.Reg, %struct.Reg* %6801, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %6802 to i64*
  %6803 = load i64, i64* %RAX.i82
  %6804 = load i64, i64* %RCX.i83
  %6805 = mul i64 %6804, 4
  %6806 = add i64 %6805, %6803
  %6807 = load i64, i64* %PC.i81
  %6808 = add i64 %6807, 7
  store i64 %6808, i64* %PC.i81
  %6809 = inttoptr i64 %6806 to i32*
  store i32 2, i32* %6809
  store %struct.Memory* %loadMem_47acc7, %struct.Memory** %MEMORY
  %loadMem_47acce = load %struct.Memory*, %struct.Memory** %MEMORY
  %6810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6811 = getelementptr inbounds %struct.GPR, %struct.GPR* %6810, i32 0, i32 33
  %6812 = getelementptr inbounds %struct.Reg, %struct.Reg* %6811, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %6812 to i64*
  %6813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6814 = getelementptr inbounds %struct.GPR, %struct.GPR* %6813, i32 0, i32 1
  %6815 = getelementptr inbounds %struct.Reg, %struct.Reg* %6814, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %6815 to i64*
  %6816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6817 = getelementptr inbounds %struct.GPR, %struct.GPR* %6816, i32 0, i32 15
  %6818 = getelementptr inbounds %struct.Reg, %struct.Reg* %6817, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %6818 to i64*
  %6819 = load i64, i64* %RBP.i80
  %6820 = sub i64 %6819, 36
  %6821 = load i64, i64* %PC.i78
  %6822 = add i64 %6821, 3
  store i64 %6822, i64* %PC.i78
  %6823 = inttoptr i64 %6820 to i32*
  %6824 = load i32, i32* %6823
  %6825 = zext i32 %6824 to i64
  store i64 %6825, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_47acce, %struct.Memory** %MEMORY
  %loadMem_47acd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6827 = getelementptr inbounds %struct.GPR, %struct.GPR* %6826, i32 0, i32 33
  %6828 = getelementptr inbounds %struct.Reg, %struct.Reg* %6827, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %6828 to i64*
  %6829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6830 = getelementptr inbounds %struct.GPR, %struct.GPR* %6829, i32 0, i32 1
  %6831 = getelementptr inbounds %struct.Reg, %struct.Reg* %6830, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %6831 to i64*
  %6832 = load i64, i64* %RAX.i77
  %6833 = load i64, i64* %PC.i76
  %6834 = add i64 %6833, 3
  store i64 %6834, i64* %PC.i76
  %6835 = trunc i64 %6832 to i32
  %6836 = add i32 1, %6835
  %6837 = zext i32 %6836 to i64
  store i64 %6837, i64* %RAX.i77, align 8
  %6838 = icmp ult i32 %6836, %6835
  %6839 = icmp ult i32 %6836, 1
  %6840 = or i1 %6838, %6839
  %6841 = zext i1 %6840 to i8
  %6842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6841, i8* %6842, align 1
  %6843 = and i32 %6836, 255
  %6844 = call i32 @llvm.ctpop.i32(i32 %6843)
  %6845 = trunc i32 %6844 to i8
  %6846 = and i8 %6845, 1
  %6847 = xor i8 %6846, 1
  %6848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6847, i8* %6848, align 1
  %6849 = xor i64 1, %6832
  %6850 = trunc i64 %6849 to i32
  %6851 = xor i32 %6850, %6836
  %6852 = lshr i32 %6851, 4
  %6853 = trunc i32 %6852 to i8
  %6854 = and i8 %6853, 1
  %6855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6854, i8* %6855, align 1
  %6856 = icmp eq i32 %6836, 0
  %6857 = zext i1 %6856 to i8
  %6858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6857, i8* %6858, align 1
  %6859 = lshr i32 %6836, 31
  %6860 = trunc i32 %6859 to i8
  %6861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6860, i8* %6861, align 1
  %6862 = lshr i32 %6835, 31
  %6863 = xor i32 %6859, %6862
  %6864 = add i32 %6863, %6859
  %6865 = icmp eq i32 %6864, 2
  %6866 = zext i1 %6865 to i8
  %6867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6866, i8* %6867, align 1
  store %struct.Memory* %loadMem_47acd1, %struct.Memory** %MEMORY
  %loadMem_47acd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6869 = getelementptr inbounds %struct.GPR, %struct.GPR* %6868, i32 0, i32 33
  %6870 = getelementptr inbounds %struct.Reg, %struct.Reg* %6869, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %6870 to i64*
  %6871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6872 = getelementptr inbounds %struct.GPR, %struct.GPR* %6871, i32 0, i32 1
  %6873 = getelementptr inbounds %struct.Reg, %struct.Reg* %6872, i32 0, i32 0
  %EAX.i74 = bitcast %union.anon* %6873 to i32*
  %6874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6875 = getelementptr inbounds %struct.GPR, %struct.GPR* %6874, i32 0, i32 15
  %6876 = getelementptr inbounds %struct.Reg, %struct.Reg* %6875, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %6876 to i64*
  %6877 = load i64, i64* %RBP.i75
  %6878 = sub i64 %6877, 36
  %6879 = load i32, i32* %EAX.i74
  %6880 = zext i32 %6879 to i64
  %6881 = load i64, i64* %PC.i73
  %6882 = add i64 %6881, 3
  store i64 %6882, i64* %PC.i73
  %6883 = inttoptr i64 %6878 to i32*
  store i32 %6879, i32* %6883
  store %struct.Memory* %loadMem_47acd4, %struct.Memory** %MEMORY
  %loadMem_47acd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6885 = getelementptr inbounds %struct.GPR, %struct.GPR* %6884, i32 0, i32 33
  %6886 = getelementptr inbounds %struct.Reg, %struct.Reg* %6885, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %6886 to i64*
  %6887 = load i64, i64* %PC.i72
  %6888 = add i64 %6887, -47
  %6889 = load i64, i64* %PC.i72
  %6890 = add i64 %6889, 5
  store i64 %6890, i64* %PC.i72
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6888, i64* %6891, align 8
  store %struct.Memory* %loadMem_47acd7, %struct.Memory** %MEMORY
  br label %block_.L_47aca8

block_.L_47acdc:                                  ; preds = %block_.L_47aca8
  %loadMem_47acdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6893 = getelementptr inbounds %struct.GPR, %struct.GPR* %6892, i32 0, i32 33
  %6894 = getelementptr inbounds %struct.Reg, %struct.Reg* %6893, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %6894 to i64*
  %6895 = load i64, i64* %PC.i71
  %6896 = add i64 %6895, 5
  %6897 = load i64, i64* %PC.i71
  %6898 = add i64 %6897, 5
  store i64 %6898, i64* %PC.i71
  %6899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6896, i64* %6899, align 8
  store %struct.Memory* %loadMem_47acdc, %struct.Memory** %MEMORY
  br label %block_.L_47ace1

block_.L_47ace1:                                  ; preds = %block_.L_47acdc, %block_47ac64
  %loadMem_47ace1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6901 = getelementptr inbounds %struct.GPR, %struct.GPR* %6900, i32 0, i32 33
  %6902 = getelementptr inbounds %struct.Reg, %struct.Reg* %6901, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %6902 to i64*
  %6903 = load i64, i64* %PC.i70
  %6904 = add i64 %6903, 110
  %6905 = load i64, i64* %PC.i70
  %6906 = add i64 %6905, 5
  store i64 %6906, i64* %PC.i70
  %6907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6904, i64* %6907, align 8
  store %struct.Memory* %loadMem_47ace1, %struct.Memory** %MEMORY
  br label %block_.L_47ad4f

block_.L_47ace6:                                  ; preds = %block_47ac4f
  %loadMem_47ace6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6909 = getelementptr inbounds %struct.GPR, %struct.GPR* %6908, i32 0, i32 33
  %6910 = getelementptr inbounds %struct.Reg, %struct.Reg* %6909, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %6910 to i64*
  %6911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6912 = getelementptr inbounds %struct.GPR, %struct.GPR* %6911, i32 0, i32 1
  %6913 = getelementptr inbounds %struct.Reg, %struct.Reg* %6912, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %6913 to i64*
  %6914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6915 = getelementptr inbounds %struct.GPR, %struct.GPR* %6914, i32 0, i32 15
  %6916 = getelementptr inbounds %struct.Reg, %struct.Reg* %6915, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %6916 to i64*
  %6917 = load i64, i64* %RBP.i69
  %6918 = sub i64 %6917, 32
  %6919 = load i64, i64* %PC.i67
  %6920 = add i64 %6919, 4
  store i64 %6920, i64* %PC.i67
  %6921 = inttoptr i64 %6918 to i32*
  %6922 = load i32, i32* %6921
  %6923 = sext i32 %6922 to i64
  store i64 %6923, i64* %RAX.i68, align 8
  store %struct.Memory* %loadMem_47ace6, %struct.Memory** %MEMORY
  %loadMem_47acea = load %struct.Memory*, %struct.Memory** %MEMORY
  %6924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6925 = getelementptr inbounds %struct.GPR, %struct.GPR* %6924, i32 0, i32 33
  %6926 = getelementptr inbounds %struct.Reg, %struct.Reg* %6925, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %6926 to i64*
  %6927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6928 = getelementptr inbounds %struct.GPR, %struct.GPR* %6927, i32 0, i32 1
  %6929 = getelementptr inbounds %struct.Reg, %struct.Reg* %6928, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %6929 to i64*
  %6930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6931 = getelementptr inbounds %struct.GPR, %struct.GPR* %6930, i32 0, i32 5
  %6932 = getelementptr inbounds %struct.Reg, %struct.Reg* %6931, i32 0, i32 0
  %RCX.i66 = bitcast %union.anon* %6932 to i64*
  %6933 = load i64, i64* %RAX.i65
  %6934 = add i64 %6933, 12099168
  %6935 = load i64, i64* %PC.i64
  %6936 = add i64 %6935, 8
  store i64 %6936, i64* %PC.i64
  %6937 = inttoptr i64 %6934 to i8*
  %6938 = load i8, i8* %6937
  %6939 = zext i8 %6938 to i64
  store i64 %6939, i64* %RCX.i66, align 8
  store %struct.Memory* %loadMem_47acea, %struct.Memory** %MEMORY
  %loadMem_47acf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6941 = getelementptr inbounds %struct.GPR, %struct.GPR* %6940, i32 0, i32 33
  %6942 = getelementptr inbounds %struct.Reg, %struct.Reg* %6941, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %6942 to i64*
  %6943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6944 = getelementptr inbounds %struct.GPR, %struct.GPR* %6943, i32 0, i32 5
  %6945 = getelementptr inbounds %struct.Reg, %struct.Reg* %6944, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %6945 to i32*
  %6946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6947 = getelementptr inbounds %struct.GPR, %struct.GPR* %6946, i32 0, i32 15
  %6948 = getelementptr inbounds %struct.Reg, %struct.Reg* %6947, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %6948 to i64*
  %6949 = load i32, i32* %ECX.i
  %6950 = zext i32 %6949 to i64
  %6951 = load i64, i64* %RBP.i63
  %6952 = sub i64 %6951, 1016
  %6953 = load i64, i64* %PC.i62
  %6954 = add i64 %6953, 6
  store i64 %6954, i64* %PC.i62
  %6955 = inttoptr i64 %6952 to i32*
  %6956 = load i32, i32* %6955
  %6957 = sub i32 %6949, %6956
  %6958 = icmp ult i32 %6949, %6956
  %6959 = zext i1 %6958 to i8
  %6960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6959, i8* %6960, align 1
  %6961 = and i32 %6957, 255
  %6962 = call i32 @llvm.ctpop.i32(i32 %6961)
  %6963 = trunc i32 %6962 to i8
  %6964 = and i8 %6963, 1
  %6965 = xor i8 %6964, 1
  %6966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6965, i8* %6966, align 1
  %6967 = xor i32 %6956, %6949
  %6968 = xor i32 %6967, %6957
  %6969 = lshr i32 %6968, 4
  %6970 = trunc i32 %6969 to i8
  %6971 = and i8 %6970, 1
  %6972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6971, i8* %6972, align 1
  %6973 = icmp eq i32 %6957, 0
  %6974 = zext i1 %6973 to i8
  %6975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6974, i8* %6975, align 1
  %6976 = lshr i32 %6957, 31
  %6977 = trunc i32 %6976 to i8
  %6978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6977, i8* %6978, align 1
  %6979 = lshr i32 %6949, 31
  %6980 = lshr i32 %6956, 31
  %6981 = xor i32 %6980, %6979
  %6982 = xor i32 %6976, %6979
  %6983 = add i32 %6982, %6981
  %6984 = icmp eq i32 %6983, 2
  %6985 = zext i1 %6984 to i8
  %6986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6985, i8* %6986, align 1
  store %struct.Memory* %loadMem_47acf2, %struct.Memory** %MEMORY
  %loadMem_47acf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6988 = getelementptr inbounds %struct.GPR, %struct.GPR* %6987, i32 0, i32 33
  %6989 = getelementptr inbounds %struct.Reg, %struct.Reg* %6988, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %6989 to i64*
  %6990 = load i64, i64* %PC.i61
  %6991 = add i64 %6990, 82
  %6992 = load i64, i64* %PC.i61
  %6993 = add i64 %6992, 6
  %6994 = load i64, i64* %PC.i61
  %6995 = add i64 %6994, 6
  store i64 %6995, i64* %PC.i61
  %6996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6997 = load i8, i8* %6996, align 1
  %6998 = icmp eq i8 %6997, 0
  %6999 = zext i1 %6998 to i8
  store i8 %6999, i8* %BRANCH_TAKEN, align 1
  %7000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7001 = select i1 %6998, i64 %6991, i64 %6993
  store i64 %7001, i64* %7000, align 8
  store %struct.Memory* %loadMem_47acf8, %struct.Memory** %MEMORY
  %loadBr_47acf8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47acf8 = icmp eq i8 %loadBr_47acf8, 1
  br i1 %cmpBr_47acf8, label %block_.L_47ad4a, label %block_47acfe

block_47acfe:                                     ; preds = %block_.L_47ace6
  %loadMem_47acfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %7002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7003 = getelementptr inbounds %struct.GPR, %struct.GPR* %7002, i32 0, i32 33
  %7004 = getelementptr inbounds %struct.Reg, %struct.Reg* %7003, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %7004 to i64*
  %7005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7006 = getelementptr inbounds %struct.GPR, %struct.GPR* %7005, i32 0, i32 11
  %7007 = getelementptr inbounds %struct.Reg, %struct.Reg* %7006, i32 0, i32 0
  %RDI.i59 = bitcast %union.anon* %7007 to i64*
  %7008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7009 = getelementptr inbounds %struct.GPR, %struct.GPR* %7008, i32 0, i32 15
  %7010 = getelementptr inbounds %struct.Reg, %struct.Reg* %7009, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %7010 to i64*
  %7011 = load i64, i64* %RBP.i60
  %7012 = sub i64 %7011, 32
  %7013 = load i64, i64* %PC.i58
  %7014 = add i64 %7013, 3
  store i64 %7014, i64* %PC.i58
  %7015 = inttoptr i64 %7012 to i32*
  %7016 = load i32, i32* %7015
  %7017 = zext i32 %7016 to i64
  store i64 %7017, i64* %RDI.i59, align 8
  store %struct.Memory* %loadMem_47acfe, %struct.Memory** %MEMORY
  %loadMem1_47ad01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7019 = getelementptr inbounds %struct.GPR, %struct.GPR* %7018, i32 0, i32 33
  %7020 = getelementptr inbounds %struct.Reg, %struct.Reg* %7019, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %7020 to i64*
  %7021 = load i64, i64* %PC.i57
  %7022 = add i64 %7021, -439681
  %7023 = load i64, i64* %PC.i57
  %7024 = add i64 %7023, 5
  %7025 = load i64, i64* %PC.i57
  %7026 = add i64 %7025, 5
  store i64 %7026, i64* %PC.i57
  %7027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7028 = load i64, i64* %7027, align 8
  %7029 = add i64 %7028, -8
  %7030 = inttoptr i64 %7029 to i64*
  store i64 %7024, i64* %7030
  store i64 %7029, i64* %7027, align 8
  %7031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7022, i64* %7031, align 8
  store %struct.Memory* %loadMem1_47ad01, %struct.Memory** %MEMORY
  %loadMem2_47ad01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ad01 = load i64, i64* %3
  %call2_47ad01 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_47ad01, %struct.Memory* %loadMem2_47ad01)
  store %struct.Memory* %call2_47ad01, %struct.Memory** %MEMORY
  %loadMem_47ad06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7033 = getelementptr inbounds %struct.GPR, %struct.GPR* %7032, i32 0, i32 33
  %7034 = getelementptr inbounds %struct.Reg, %struct.Reg* %7033, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %7034 to i64*
  %7035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7036 = getelementptr inbounds %struct.GPR, %struct.GPR* %7035, i32 0, i32 1
  %7037 = getelementptr inbounds %struct.Reg, %struct.Reg* %7036, i32 0, i32 0
  %EAX.i56 = bitcast %union.anon* %7037 to i32*
  %7038 = load i32, i32* %EAX.i56
  %7039 = zext i32 %7038 to i64
  %7040 = load i64, i64* %PC.i55
  %7041 = add i64 %7040, 3
  store i64 %7041, i64* %PC.i55
  %7042 = sub i32 %7038, 1
  %7043 = icmp ult i32 %7038, 1
  %7044 = zext i1 %7043 to i8
  %7045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7044, i8* %7045, align 1
  %7046 = and i32 %7042, 255
  %7047 = call i32 @llvm.ctpop.i32(i32 %7046)
  %7048 = trunc i32 %7047 to i8
  %7049 = and i8 %7048, 1
  %7050 = xor i8 %7049, 1
  %7051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7050, i8* %7051, align 1
  %7052 = xor i64 1, %7039
  %7053 = trunc i64 %7052 to i32
  %7054 = xor i32 %7053, %7042
  %7055 = lshr i32 %7054, 4
  %7056 = trunc i32 %7055 to i8
  %7057 = and i8 %7056, 1
  %7058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7057, i8* %7058, align 1
  %7059 = icmp eq i32 %7042, 0
  %7060 = zext i1 %7059 to i8
  %7061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7060, i8* %7061, align 1
  %7062 = lshr i32 %7042, 31
  %7063 = trunc i32 %7062 to i8
  %7064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7063, i8* %7064, align 1
  %7065 = lshr i32 %7038, 31
  %7066 = xor i32 %7062, %7065
  %7067 = add i32 %7066, %7065
  %7068 = icmp eq i32 %7067, 2
  %7069 = zext i1 %7068 to i8
  %7070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7069, i8* %7070, align 1
  store %struct.Memory* %loadMem_47ad06, %struct.Memory** %MEMORY
  %loadMem_47ad09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7072 = getelementptr inbounds %struct.GPR, %struct.GPR* %7071, i32 0, i32 33
  %7073 = getelementptr inbounds %struct.Reg, %struct.Reg* %7072, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %7073 to i64*
  %7074 = load i64, i64* %PC.i54
  %7075 = add i64 %7074, 65
  %7076 = load i64, i64* %PC.i54
  %7077 = add i64 %7076, 6
  %7078 = load i64, i64* %PC.i54
  %7079 = add i64 %7078, 6
  store i64 %7079, i64* %PC.i54
  %7080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7081 = load i8, i8* %7080, align 1
  %7082 = icmp eq i8 %7081, 0
  %7083 = zext i1 %7082 to i8
  store i8 %7083, i8* %BRANCH_TAKEN, align 1
  %7084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7085 = select i1 %7082, i64 %7075, i64 %7077
  store i64 %7085, i64* %7084, align 8
  store %struct.Memory* %loadMem_47ad09, %struct.Memory** %MEMORY
  %loadBr_47ad09 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ad09 = icmp eq i8 %loadBr_47ad09, 1
  br i1 %cmpBr_47ad09, label %block_.L_47ad4a, label %block_47ad0f

block_47ad0f:                                     ; preds = %block_47acfe
  %loadMem_47ad0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7087 = getelementptr inbounds %struct.GPR, %struct.GPR* %7086, i32 0, i32 33
  %7088 = getelementptr inbounds %struct.Reg, %struct.Reg* %7087, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %7088 to i64*
  %7089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7090 = getelementptr inbounds %struct.GPR, %struct.GPR* %7089, i32 0, i32 9
  %7091 = getelementptr inbounds %struct.Reg, %struct.Reg* %7090, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7091 to i64*
  %7092 = load i64, i64* %PC.i53
  %7093 = add i64 %7092, 5
  store i64 %7093, i64* %PC.i53
  store i64 1, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_47ad0f, %struct.Memory** %MEMORY
  %loadMem_47ad14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7095 = getelementptr inbounds %struct.GPR, %struct.GPR* %7094, i32 0, i32 33
  %7096 = getelementptr inbounds %struct.Reg, %struct.Reg* %7095, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %7096 to i64*
  %7097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7098 = getelementptr inbounds %struct.GPR, %struct.GPR* %7097, i32 0, i32 7
  %7099 = getelementptr inbounds %struct.Reg, %struct.Reg* %7098, i32 0, i32 0
  %RDX.i51 = bitcast %union.anon* %7099 to i64*
  %7100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7101 = getelementptr inbounds %struct.GPR, %struct.GPR* %7100, i32 0, i32 15
  %7102 = getelementptr inbounds %struct.Reg, %struct.Reg* %7101, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %7102 to i64*
  %7103 = load i64, i64* %RBP.i52
  %7104 = sub i64 %7103, 1008
  %7105 = load i64, i64* %PC.i50
  %7106 = add i64 %7105, 7
  store i64 %7106, i64* %PC.i50
  store i64 %7104, i64* %RDX.i51, align 8
  store %struct.Memory* %loadMem_47ad14, %struct.Memory** %MEMORY
  %loadMem_47ad1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7108 = getelementptr inbounds %struct.GPR, %struct.GPR* %7107, i32 0, i32 33
  %7109 = getelementptr inbounds %struct.Reg, %struct.Reg* %7108, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %7109 to i64*
  %7110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7111 = getelementptr inbounds %struct.GPR, %struct.GPR* %7110, i32 0, i32 1
  %7112 = getelementptr inbounds %struct.Reg, %struct.Reg* %7111, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %7112 to i64*
  %7113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7114 = getelementptr inbounds %struct.GPR, %struct.GPR* %7113, i32 0, i32 15
  %7115 = getelementptr inbounds %struct.Reg, %struct.Reg* %7114, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %7115 to i64*
  %7116 = load i64, i64* %RBP.i49
  %7117 = sub i64 %7116, 8
  %7118 = load i64, i64* %PC.i47
  %7119 = add i64 %7118, 4
  store i64 %7119, i64* %PC.i47
  %7120 = inttoptr i64 %7117 to i64*
  %7121 = load i64, i64* %7120
  store i64 %7121, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_47ad1b, %struct.Memory** %MEMORY
  %loadMem_47ad1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7123 = getelementptr inbounds %struct.GPR, %struct.GPR* %7122, i32 0, i32 33
  %7124 = getelementptr inbounds %struct.Reg, %struct.Reg* %7123, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %7124 to i64*
  %7125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7126 = getelementptr inbounds %struct.GPR, %struct.GPR* %7125, i32 0, i32 5
  %7127 = getelementptr inbounds %struct.Reg, %struct.Reg* %7126, i32 0, i32 0
  %RCX.i45 = bitcast %union.anon* %7127 to i64*
  %7128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7129 = getelementptr inbounds %struct.GPR, %struct.GPR* %7128, i32 0, i32 15
  %7130 = getelementptr inbounds %struct.Reg, %struct.Reg* %7129, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %7130 to i64*
  %7131 = load i64, i64* %RBP.i46
  %7132 = sub i64 %7131, 32
  %7133 = load i64, i64* %PC.i44
  %7134 = add i64 %7133, 4
  store i64 %7134, i64* %PC.i44
  %7135 = inttoptr i64 %7132 to i32*
  %7136 = load i32, i32* %7135
  %7137 = sext i32 %7136 to i64
  store i64 %7137, i64* %RCX.i45, align 8
  store %struct.Memory* %loadMem_47ad1f, %struct.Memory** %MEMORY
  %loadMem_47ad23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7139 = getelementptr inbounds %struct.GPR, %struct.GPR* %7138, i32 0, i32 33
  %7140 = getelementptr inbounds %struct.Reg, %struct.Reg* %7139, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %7140 to i64*
  %7141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7142 = getelementptr inbounds %struct.GPR, %struct.GPR* %7141, i32 0, i32 1
  %7143 = getelementptr inbounds %struct.Reg, %struct.Reg* %7142, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %7143 to i64*
  %7144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7145 = getelementptr inbounds %struct.GPR, %struct.GPR* %7144, i32 0, i32 5
  %7146 = getelementptr inbounds %struct.Reg, %struct.Reg* %7145, i32 0, i32 0
  %RCX.i43 = bitcast %union.anon* %7146 to i64*
  %7147 = load i64, i64* %RAX.i42
  %7148 = load i64, i64* %RCX.i43
  %7149 = mul i64 %7148, 4
  %7150 = add i64 %7149, %7147
  %7151 = load i64, i64* %PC.i41
  %7152 = add i64 %7151, 7
  store i64 %7152, i64* %PC.i41
  %7153 = inttoptr i64 %7150 to i32*
  store i32 2, i32* %7153
  store %struct.Memory* %loadMem_47ad23, %struct.Memory** %MEMORY
  %loadMem_47ad2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7155 = getelementptr inbounds %struct.GPR, %struct.GPR* %7154, i32 0, i32 33
  %7156 = getelementptr inbounds %struct.Reg, %struct.Reg* %7155, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %7156 to i64*
  %7157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7158 = getelementptr inbounds %struct.GPR, %struct.GPR* %7157, i32 0, i32 11
  %7159 = getelementptr inbounds %struct.Reg, %struct.Reg* %7158, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7159 to i64*
  %7160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7161 = getelementptr inbounds %struct.GPR, %struct.GPR* %7160, i32 0, i32 15
  %7162 = getelementptr inbounds %struct.Reg, %struct.Reg* %7161, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %7162 to i64*
  %7163 = load i64, i64* %RBP.i40
  %7164 = sub i64 %7163, 32
  %7165 = load i64, i64* %PC.i39
  %7166 = add i64 %7165, 3
  store i64 %7166, i64* %PC.i39
  %7167 = inttoptr i64 %7164 to i32*
  %7168 = load i32, i32* %7167
  %7169 = zext i32 %7168 to i64
  store i64 %7169, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_47ad2a, %struct.Memory** %MEMORY
  %loadMem1_47ad2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7171 = getelementptr inbounds %struct.GPR, %struct.GPR* %7170, i32 0, i32 33
  %7172 = getelementptr inbounds %struct.Reg, %struct.Reg* %7171, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %7172 to i64*
  %7173 = load i64, i64* %PC.i38
  %7174 = add i64 %7173, -439533
  %7175 = load i64, i64* %PC.i38
  %7176 = add i64 %7175, 5
  %7177 = load i64, i64* %PC.i38
  %7178 = add i64 %7177, 5
  store i64 %7178, i64* %PC.i38
  %7179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7180 = load i64, i64* %7179, align 8
  %7181 = add i64 %7180, -8
  %7182 = inttoptr i64 %7181 to i64*
  store i64 %7176, i64* %7182
  store i64 %7181, i64* %7179, align 8
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7174, i64* %7183, align 8
  store %struct.Memory* %loadMem1_47ad2d, %struct.Memory** %MEMORY
  %loadMem2_47ad2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ad2d = load i64, i64* %3
  %call2_47ad2d = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_47ad2d, %struct.Memory* %loadMem2_47ad2d)
  store %struct.Memory* %call2_47ad2d, %struct.Memory** %MEMORY
  %loadMem_47ad32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7185 = getelementptr inbounds %struct.GPR, %struct.GPR* %7184, i32 0, i32 33
  %7186 = getelementptr inbounds %struct.Reg, %struct.Reg* %7185, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %7186 to i64*
  %7187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7188 = getelementptr inbounds %struct.GPR, %struct.GPR* %7187, i32 0, i32 5
  %7189 = getelementptr inbounds %struct.Reg, %struct.Reg* %7188, i32 0, i32 0
  %RCX.i36 = bitcast %union.anon* %7189 to i64*
  %7190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7191 = getelementptr inbounds %struct.GPR, %struct.GPR* %7190, i32 0, i32 15
  %7192 = getelementptr inbounds %struct.Reg, %struct.Reg* %7191, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %7192 to i64*
  %7193 = load i64, i64* %RBP.i37
  %7194 = sub i64 %7193, 8
  %7195 = load i64, i64* %PC.i35
  %7196 = add i64 %7195, 4
  store i64 %7196, i64* %PC.i35
  %7197 = inttoptr i64 %7194 to i64*
  %7198 = load i64, i64* %7197
  store i64 %7198, i64* %RCX.i36, align 8
  store %struct.Memory* %loadMem_47ad32, %struct.Memory** %MEMORY
  %loadMem_47ad36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7200 = getelementptr inbounds %struct.GPR, %struct.GPR* %7199, i32 0, i32 33
  %7201 = getelementptr inbounds %struct.Reg, %struct.Reg* %7200, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %7201 to i64*
  %7202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7203 = getelementptr inbounds %struct.GPR, %struct.GPR* %7202, i32 0, i32 7
  %7204 = getelementptr inbounds %struct.Reg, %struct.Reg* %7203, i32 0, i32 0
  %RDX.i33 = bitcast %union.anon* %7204 to i64*
  %7205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7206 = getelementptr inbounds %struct.GPR, %struct.GPR* %7205, i32 0, i32 15
  %7207 = getelementptr inbounds %struct.Reg, %struct.Reg* %7206, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %7207 to i64*
  %7208 = load i64, i64* %RBP.i34
  %7209 = sub i64 %7208, 1008
  %7210 = load i64, i64* %PC.i32
  %7211 = add i64 %7210, 7
  store i64 %7211, i64* %PC.i32
  %7212 = inttoptr i64 %7209 to i32*
  %7213 = load i32, i32* %7212
  %7214 = sext i32 %7213 to i64
  store i64 %7214, i64* %RDX.i33, align 8
  store %struct.Memory* %loadMem_47ad36, %struct.Memory** %MEMORY
  %loadMem_47ad3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7216 = getelementptr inbounds %struct.GPR, %struct.GPR* %7215, i32 0, i32 33
  %7217 = getelementptr inbounds %struct.Reg, %struct.Reg* %7216, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %7217 to i64*
  %7218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7219 = getelementptr inbounds %struct.GPR, %struct.GPR* %7218, i32 0, i32 5
  %7220 = getelementptr inbounds %struct.Reg, %struct.Reg* %7219, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7220 to i64*
  %7221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7222 = getelementptr inbounds %struct.GPR, %struct.GPR* %7221, i32 0, i32 7
  %7223 = getelementptr inbounds %struct.Reg, %struct.Reg* %7222, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7223 to i64*
  %7224 = load i64, i64* %RCX.i
  %7225 = load i64, i64* %RDX.i
  %7226 = mul i64 %7225, 4
  %7227 = add i64 %7226, %7224
  %7228 = load i64, i64* %PC.i31
  %7229 = add i64 %7228, 7
  store i64 %7229, i64* %PC.i31
  %7230 = inttoptr i64 %7227 to i32*
  store i32 2, i32* %7230
  store %struct.Memory* %loadMem_47ad3d, %struct.Memory** %MEMORY
  %loadMem_47ad44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7232 = getelementptr inbounds %struct.GPR, %struct.GPR* %7231, i32 0, i32 33
  %7233 = getelementptr inbounds %struct.Reg, %struct.Reg* %7232, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %7233 to i64*
  %7234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7235 = getelementptr inbounds %struct.GPR, %struct.GPR* %7234, i32 0, i32 1
  %7236 = getelementptr inbounds %struct.Reg, %struct.Reg* %7235, i32 0, i32 0
  %EAX.i29 = bitcast %union.anon* %7236 to i32*
  %7237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7238 = getelementptr inbounds %struct.GPR, %struct.GPR* %7237, i32 0, i32 15
  %7239 = getelementptr inbounds %struct.Reg, %struct.Reg* %7238, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %7239 to i64*
  %7240 = load i64, i64* %RBP.i30
  %7241 = sub i64 %7240, 1080
  %7242 = load i32, i32* %EAX.i29
  %7243 = zext i32 %7242 to i64
  %7244 = load i64, i64* %PC.i28
  %7245 = add i64 %7244, 6
  store i64 %7245, i64* %PC.i28
  %7246 = inttoptr i64 %7241 to i32*
  store i32 %7242, i32* %7246
  store %struct.Memory* %loadMem_47ad44, %struct.Memory** %MEMORY
  br label %block_.L_47ad4a

block_.L_47ad4a:                                  ; preds = %block_47ad0f, %block_47acfe, %block_.L_47ace6
  %loadMem_47ad4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7248 = getelementptr inbounds %struct.GPR, %struct.GPR* %7247, i32 0, i32 33
  %7249 = getelementptr inbounds %struct.Reg, %struct.Reg* %7248, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %7249 to i64*
  %7250 = load i64, i64* %PC.i27
  %7251 = add i64 %7250, 5
  %7252 = load i64, i64* %PC.i27
  %7253 = add i64 %7252, 5
  store i64 %7253, i64* %PC.i27
  %7254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7251, i64* %7254, align 8
  store %struct.Memory* %loadMem_47ad4a, %struct.Memory** %MEMORY
  br label %block_.L_47ad4f

block_.L_47ad4f:                                  ; preds = %block_.L_47ad4a, %block_.L_47ace1
  %loadMem_47ad4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7256 = getelementptr inbounds %struct.GPR, %struct.GPR* %7255, i32 0, i32 33
  %7257 = getelementptr inbounds %struct.Reg, %struct.Reg* %7256, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %7257 to i64*
  %7258 = load i64, i64* %PC.i26
  %7259 = add i64 %7258, 5
  %7260 = load i64, i64* %PC.i26
  %7261 = add i64 %7260, 5
  store i64 %7261, i64* %PC.i26
  %7262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7259, i64* %7262, align 8
  store %struct.Memory* %loadMem_47ad4f, %struct.Memory** %MEMORY
  br label %block_.L_47ad54

block_.L_47ad54:                                  ; preds = %block_.L_47ad4f
  %loadMem_47ad54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7264 = getelementptr inbounds %struct.GPR, %struct.GPR* %7263, i32 0, i32 33
  %7265 = getelementptr inbounds %struct.Reg, %struct.Reg* %7264, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %7265 to i64*
  %7266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7267 = getelementptr inbounds %struct.GPR, %struct.GPR* %7266, i32 0, i32 1
  %7268 = getelementptr inbounds %struct.Reg, %struct.Reg* %7267, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %7268 to i64*
  %7269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7270 = getelementptr inbounds %struct.GPR, %struct.GPR* %7269, i32 0, i32 15
  %7271 = getelementptr inbounds %struct.Reg, %struct.Reg* %7270, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %7271 to i64*
  %7272 = load i64, i64* %RBP.i25
  %7273 = sub i64 %7272, 32
  %7274 = load i64, i64* %PC.i23
  %7275 = add i64 %7274, 3
  store i64 %7275, i64* %PC.i23
  %7276 = inttoptr i64 %7273 to i32*
  %7277 = load i32, i32* %7276
  %7278 = zext i32 %7277 to i64
  store i64 %7278, i64* %RAX.i24, align 8
  store %struct.Memory* %loadMem_47ad54, %struct.Memory** %MEMORY
  %loadMem_47ad57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7280 = getelementptr inbounds %struct.GPR, %struct.GPR* %7279, i32 0, i32 33
  %7281 = getelementptr inbounds %struct.Reg, %struct.Reg* %7280, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %7281 to i64*
  %7282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7283 = getelementptr inbounds %struct.GPR, %struct.GPR* %7282, i32 0, i32 1
  %7284 = getelementptr inbounds %struct.Reg, %struct.Reg* %7283, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %7284 to i64*
  %7285 = load i64, i64* %RAX.i22
  %7286 = load i64, i64* %PC.i21
  %7287 = add i64 %7286, 3
  store i64 %7287, i64* %PC.i21
  %7288 = trunc i64 %7285 to i32
  %7289 = add i32 1, %7288
  %7290 = zext i32 %7289 to i64
  store i64 %7290, i64* %RAX.i22, align 8
  %7291 = icmp ult i32 %7289, %7288
  %7292 = icmp ult i32 %7289, 1
  %7293 = or i1 %7291, %7292
  %7294 = zext i1 %7293 to i8
  %7295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7294, i8* %7295, align 1
  %7296 = and i32 %7289, 255
  %7297 = call i32 @llvm.ctpop.i32(i32 %7296)
  %7298 = trunc i32 %7297 to i8
  %7299 = and i8 %7298, 1
  %7300 = xor i8 %7299, 1
  %7301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7300, i8* %7301, align 1
  %7302 = xor i64 1, %7285
  %7303 = trunc i64 %7302 to i32
  %7304 = xor i32 %7303, %7289
  %7305 = lshr i32 %7304, 4
  %7306 = trunc i32 %7305 to i8
  %7307 = and i8 %7306, 1
  %7308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7307, i8* %7308, align 1
  %7309 = icmp eq i32 %7289, 0
  %7310 = zext i1 %7309 to i8
  %7311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7310, i8* %7311, align 1
  %7312 = lshr i32 %7289, 31
  %7313 = trunc i32 %7312 to i8
  %7314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7313, i8* %7314, align 1
  %7315 = lshr i32 %7288, 31
  %7316 = xor i32 %7312, %7315
  %7317 = add i32 %7316, %7312
  %7318 = icmp eq i32 %7317, 2
  %7319 = zext i1 %7318 to i8
  %7320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7319, i8* %7320, align 1
  store %struct.Memory* %loadMem_47ad57, %struct.Memory** %MEMORY
  %loadMem_47ad5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7322 = getelementptr inbounds %struct.GPR, %struct.GPR* %7321, i32 0, i32 33
  %7323 = getelementptr inbounds %struct.Reg, %struct.Reg* %7322, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %7323 to i64*
  %7324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7325 = getelementptr inbounds %struct.GPR, %struct.GPR* %7324, i32 0, i32 1
  %7326 = getelementptr inbounds %struct.Reg, %struct.Reg* %7325, i32 0, i32 0
  %EAX.i19 = bitcast %union.anon* %7326 to i32*
  %7327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7328 = getelementptr inbounds %struct.GPR, %struct.GPR* %7327, i32 0, i32 15
  %7329 = getelementptr inbounds %struct.Reg, %struct.Reg* %7328, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %7329 to i64*
  %7330 = load i64, i64* %RBP.i20
  %7331 = sub i64 %7330, 32
  %7332 = load i32, i32* %EAX.i19
  %7333 = zext i32 %7332 to i64
  %7334 = load i64, i64* %PC.i18
  %7335 = add i64 %7334, 3
  store i64 %7335, i64* %PC.i18
  %7336 = inttoptr i64 %7331 to i32*
  store i32 %7332, i32* %7336
  store %struct.Memory* %loadMem_47ad5a, %struct.Memory** %MEMORY
  %loadMem_47ad5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7338 = getelementptr inbounds %struct.GPR, %struct.GPR* %7337, i32 0, i32 33
  %7339 = getelementptr inbounds %struct.Reg, %struct.Reg* %7338, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %7339 to i64*
  %7340 = load i64, i64* %PC.i17
  %7341 = add i64 %7340, -283
  %7342 = load i64, i64* %PC.i17
  %7343 = add i64 %7342, 5
  store i64 %7343, i64* %PC.i17
  %7344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7341, i64* %7344, align 8
  store %struct.Memory* %loadMem_47ad5d, %struct.Memory** %MEMORY
  br label %block_.L_47ac42

block_.L_47ad62:                                  ; preds = %block_.L_47ac42
  %loadMem_47ad62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7346 = getelementptr inbounds %struct.GPR, %struct.GPR* %7345, i32 0, i32 33
  %7347 = getelementptr inbounds %struct.Reg, %struct.Reg* %7346, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %7347 to i64*
  %7348 = load i64, i64* %PC.i16
  %7349 = add i64 %7348, 5
  %7350 = load i64, i64* %PC.i16
  %7351 = add i64 %7350, 5
  store i64 %7351, i64* %PC.i16
  %7352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7349, i64* %7352, align 8
  store %struct.Memory* %loadMem_47ad62, %struct.Memory** %MEMORY
  br label %block_.L_47ad67

block_.L_47ad67:                                  ; preds = %block_47ad71, %block_.L_47ad62
  %loadMem_47ad67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7354 = getelementptr inbounds %struct.GPR, %struct.GPR* %7353, i32 0, i32 33
  %7355 = getelementptr inbounds %struct.Reg, %struct.Reg* %7354, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %7355 to i64*
  %7356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7357 = getelementptr inbounds %struct.GPR, %struct.GPR* %7356, i32 0, i32 15
  %7358 = getelementptr inbounds %struct.Reg, %struct.Reg* %7357, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %7358 to i64*
  %7359 = load i64, i64* %RBP.i15
  %7360 = sub i64 %7359, 24
  %7361 = load i64, i64* %PC.i14
  %7362 = add i64 %7361, 4
  store i64 %7362, i64* %PC.i14
  %7363 = inttoptr i64 %7360 to i32*
  %7364 = load i32, i32* %7363
  %7365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7365, align 1
  %7366 = and i32 %7364, 255
  %7367 = call i32 @llvm.ctpop.i32(i32 %7366)
  %7368 = trunc i32 %7367 to i8
  %7369 = and i8 %7368, 1
  %7370 = xor i8 %7369, 1
  %7371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7370, i8* %7371, align 1
  %7372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7372, align 1
  %7373 = icmp eq i32 %7364, 0
  %7374 = zext i1 %7373 to i8
  %7375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7374, i8* %7375, align 1
  %7376 = lshr i32 %7364, 31
  %7377 = trunc i32 %7376 to i8
  %7378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7377, i8* %7378, align 1
  %7379 = lshr i32 %7364, 31
  %7380 = xor i32 %7376, %7379
  %7381 = add i32 %7380, %7379
  %7382 = icmp eq i32 %7381, 2
  %7383 = zext i1 %7382 to i8
  %7384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7383, i8* %7384, align 1
  store %struct.Memory* %loadMem_47ad67, %struct.Memory** %MEMORY
  %loadMem_47ad6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7386 = getelementptr inbounds %struct.GPR, %struct.GPR* %7385, i32 0, i32 33
  %7387 = getelementptr inbounds %struct.Reg, %struct.Reg* %7386, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %7387 to i64*
  %7388 = load i64, i64* %PC.i13
  %7389 = add i64 %7388, 25
  %7390 = load i64, i64* %PC.i13
  %7391 = add i64 %7390, 6
  %7392 = load i64, i64* %PC.i13
  %7393 = add i64 %7392, 6
  store i64 %7393, i64* %PC.i13
  %7394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7395 = load i8, i8* %7394, align 1
  %7396 = icmp ne i8 %7395, 0
  %7397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7398 = load i8, i8* %7397, align 1
  %7399 = icmp ne i8 %7398, 0
  %7400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7401 = load i8, i8* %7400, align 1
  %7402 = icmp ne i8 %7401, 0
  %7403 = xor i1 %7399, %7402
  %7404 = or i1 %7396, %7403
  %7405 = zext i1 %7404 to i8
  store i8 %7405, i8* %BRANCH_TAKEN, align 1
  %7406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7407 = select i1 %7404, i64 %7389, i64 %7391
  store i64 %7407, i64* %7406, align 8
  store %struct.Memory* %loadMem_47ad6b, %struct.Memory** %MEMORY
  %loadBr_47ad6b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ad6b = icmp eq i8 %loadBr_47ad6b, 1
  br i1 %cmpBr_47ad6b, label %block_.L_47ad84, label %block_47ad71

block_47ad71:                                     ; preds = %block_.L_47ad67
  %loadMem1_47ad71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7409 = getelementptr inbounds %struct.GPR, %struct.GPR* %7408, i32 0, i32 33
  %7410 = getelementptr inbounds %struct.Reg, %struct.Reg* %7409, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %7410 to i64*
  %7411 = load i64, i64* %PC.i12
  %7412 = add i64 %7411, -446481
  %7413 = load i64, i64* %PC.i12
  %7414 = add i64 %7413, 5
  %7415 = load i64, i64* %PC.i12
  %7416 = add i64 %7415, 5
  store i64 %7416, i64* %PC.i12
  %7417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7418 = load i64, i64* %7417, align 8
  %7419 = add i64 %7418, -8
  %7420 = inttoptr i64 %7419 to i64*
  store i64 %7414, i64* %7420
  store i64 %7419, i64* %7417, align 8
  %7421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7412, i64* %7421, align 8
  store %struct.Memory* %loadMem1_47ad71, %struct.Memory** %MEMORY
  %loadMem2_47ad71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ad71 = load i64, i64* %3
  %call2_47ad71 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_47ad71, %struct.Memory* %loadMem2_47ad71)
  store %struct.Memory* %call2_47ad71, %struct.Memory** %MEMORY
  %loadMem_47ad76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7423 = getelementptr inbounds %struct.GPR, %struct.GPR* %7422, i32 0, i32 33
  %7424 = getelementptr inbounds %struct.Reg, %struct.Reg* %7423, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7424 to i64*
  %7425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7426 = getelementptr inbounds %struct.GPR, %struct.GPR* %7425, i32 0, i32 1
  %7427 = getelementptr inbounds %struct.Reg, %struct.Reg* %7426, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %7427 to i64*
  %7428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7429 = getelementptr inbounds %struct.GPR, %struct.GPR* %7428, i32 0, i32 15
  %7430 = getelementptr inbounds %struct.Reg, %struct.Reg* %7429, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %7430 to i64*
  %7431 = load i64, i64* %RBP.i11
  %7432 = sub i64 %7431, 24
  %7433 = load i64, i64* %PC.i9
  %7434 = add i64 %7433, 3
  store i64 %7434, i64* %PC.i9
  %7435 = inttoptr i64 %7432 to i32*
  %7436 = load i32, i32* %7435
  %7437 = zext i32 %7436 to i64
  store i64 %7437, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_47ad76, %struct.Memory** %MEMORY
  %loadMem_47ad79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7439 = getelementptr inbounds %struct.GPR, %struct.GPR* %7438, i32 0, i32 33
  %7440 = getelementptr inbounds %struct.Reg, %struct.Reg* %7439, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %7440 to i64*
  %7441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7442 = getelementptr inbounds %struct.GPR, %struct.GPR* %7441, i32 0, i32 1
  %7443 = getelementptr inbounds %struct.Reg, %struct.Reg* %7442, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7443 to i64*
  %7444 = load i64, i64* %RAX.i
  %7445 = load i64, i64* %PC.i8
  %7446 = add i64 %7445, 3
  store i64 %7446, i64* %PC.i8
  %7447 = trunc i64 %7444 to i32
  %7448 = add i32 -1, %7447
  %7449 = zext i32 %7448 to i64
  store i64 %7449, i64* %RAX.i, align 8
  %7450 = icmp ult i32 %7448, %7447
  %7451 = icmp ult i32 %7448, -1
  %7452 = or i1 %7450, %7451
  %7453 = zext i1 %7452 to i8
  %7454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7453, i8* %7454, align 1
  %7455 = and i32 %7448, 255
  %7456 = call i32 @llvm.ctpop.i32(i32 %7455)
  %7457 = trunc i32 %7456 to i8
  %7458 = and i8 %7457, 1
  %7459 = xor i8 %7458, 1
  %7460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7459, i8* %7460, align 1
  %7461 = xor i64 -1, %7444
  %7462 = trunc i64 %7461 to i32
  %7463 = xor i32 %7462, %7448
  %7464 = lshr i32 %7463, 4
  %7465 = trunc i32 %7464 to i8
  %7466 = and i8 %7465, 1
  %7467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7466, i8* %7467, align 1
  %7468 = icmp eq i32 %7448, 0
  %7469 = zext i1 %7468 to i8
  %7470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7469, i8* %7470, align 1
  %7471 = lshr i32 %7448, 31
  %7472 = trunc i32 %7471 to i8
  %7473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7472, i8* %7473, align 1
  %7474 = lshr i32 %7447, 31
  %7475 = xor i32 %7471, %7474
  %7476 = xor i32 %7471, 1
  %7477 = add i32 %7475, %7476
  %7478 = icmp eq i32 %7477, 2
  %7479 = zext i1 %7478 to i8
  %7480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7479, i8* %7480, align 1
  store %struct.Memory* %loadMem_47ad79, %struct.Memory** %MEMORY
  %loadMem_47ad7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7482 = getelementptr inbounds %struct.GPR, %struct.GPR* %7481, i32 0, i32 33
  %7483 = getelementptr inbounds %struct.Reg, %struct.Reg* %7482, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %7483 to i64*
  %7484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7485 = getelementptr inbounds %struct.GPR, %struct.GPR* %7484, i32 0, i32 1
  %7486 = getelementptr inbounds %struct.Reg, %struct.Reg* %7485, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7486 to i32*
  %7487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7488 = getelementptr inbounds %struct.GPR, %struct.GPR* %7487, i32 0, i32 15
  %7489 = getelementptr inbounds %struct.Reg, %struct.Reg* %7488, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %7489 to i64*
  %7490 = load i64, i64* %RBP.i7
  %7491 = sub i64 %7490, 24
  %7492 = load i32, i32* %EAX.i
  %7493 = zext i32 %7492 to i64
  %7494 = load i64, i64* %PC.i6
  %7495 = add i64 %7494, 3
  store i64 %7495, i64* %PC.i6
  %7496 = inttoptr i64 %7491 to i32*
  store i32 %7492, i32* %7496
  store %struct.Memory* %loadMem_47ad7c, %struct.Memory** %MEMORY
  %loadMem_47ad7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7498 = getelementptr inbounds %struct.GPR, %struct.GPR* %7497, i32 0, i32 33
  %7499 = getelementptr inbounds %struct.Reg, %struct.Reg* %7498, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7499 to i64*
  %7500 = load i64, i64* %PC.i5
  %7501 = add i64 %7500, -24
  %7502 = load i64, i64* %PC.i5
  %7503 = add i64 %7502, 5
  store i64 %7503, i64* %PC.i5
  %7504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7501, i64* %7504, align 8
  store %struct.Memory* %loadMem_47ad7f, %struct.Memory** %MEMORY
  br label %block_.L_47ad67

block_.L_47ad84:                                  ; preds = %block_.L_47ad67
  %loadMem_47ad84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7506 = getelementptr inbounds %struct.GPR, %struct.GPR* %7505, i32 0, i32 33
  %7507 = getelementptr inbounds %struct.Reg, %struct.Reg* %7506, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7507 to i64*
  %7508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7509 = getelementptr inbounds %struct.GPR, %struct.GPR* %7508, i32 0, i32 13
  %7510 = getelementptr inbounds %struct.Reg, %struct.Reg* %7509, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7510 to i64*
  %7511 = load i64, i64* %RSP.i
  %7512 = load i64, i64* %PC.i4
  %7513 = add i64 %7512, 7
  store i64 %7513, i64* %PC.i4
  %7514 = add i64 1088, %7511
  store i64 %7514, i64* %RSP.i, align 8
  %7515 = icmp ult i64 %7514, %7511
  %7516 = icmp ult i64 %7514, 1088
  %7517 = or i1 %7515, %7516
  %7518 = zext i1 %7517 to i8
  %7519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7518, i8* %7519, align 1
  %7520 = trunc i64 %7514 to i32
  %7521 = and i32 %7520, 255
  %7522 = call i32 @llvm.ctpop.i32(i32 %7521)
  %7523 = trunc i32 %7522 to i8
  %7524 = and i8 %7523, 1
  %7525 = xor i8 %7524, 1
  %7526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7525, i8* %7526, align 1
  %7527 = xor i64 1088, %7511
  %7528 = xor i64 %7527, %7514
  %7529 = lshr i64 %7528, 4
  %7530 = trunc i64 %7529 to i8
  %7531 = and i8 %7530, 1
  %7532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7531, i8* %7532, align 1
  %7533 = icmp eq i64 %7514, 0
  %7534 = zext i1 %7533 to i8
  %7535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7534, i8* %7535, align 1
  %7536 = lshr i64 %7514, 63
  %7537 = trunc i64 %7536 to i8
  %7538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7537, i8* %7538, align 1
  %7539 = lshr i64 %7511, 63
  %7540 = xor i64 %7536, %7539
  %7541 = add i64 %7540, %7536
  %7542 = icmp eq i64 %7541, 2
  %7543 = zext i1 %7542 to i8
  %7544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7543, i8* %7544, align 1
  store %struct.Memory* %loadMem_47ad84, %struct.Memory** %MEMORY
  %loadMem_47ad8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7546 = getelementptr inbounds %struct.GPR, %struct.GPR* %7545, i32 0, i32 33
  %7547 = getelementptr inbounds %struct.Reg, %struct.Reg* %7546, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7547 to i64*
  %7548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7549 = getelementptr inbounds %struct.GPR, %struct.GPR* %7548, i32 0, i32 15
  %7550 = getelementptr inbounds %struct.Reg, %struct.Reg* %7549, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7550 to i64*
  %7551 = load i64, i64* %PC.i2
  %7552 = add i64 %7551, 1
  store i64 %7552, i64* %PC.i2
  %7553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7554 = load i64, i64* %7553, align 8
  %7555 = add i64 %7554, 8
  %7556 = inttoptr i64 %7554 to i64*
  %7557 = load i64, i64* %7556
  store i64 %7557, i64* %RBP.i3, align 8
  store i64 %7555, i64* %7553, align 8
  store %struct.Memory* %loadMem_47ad8b, %struct.Memory** %MEMORY
  %loadMem_47ad8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7559 = getelementptr inbounds %struct.GPR, %struct.GPR* %7558, i32 0, i32 33
  %7560 = getelementptr inbounds %struct.Reg, %struct.Reg* %7559, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7560 to i64*
  %7561 = load i64, i64* %PC.i1
  %7562 = add i64 %7561, 1
  store i64 %7562, i64* %PC.i1
  %7563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7565 = load i64, i64* %7564, align 8
  %7566 = inttoptr i64 %7565 to i64*
  %7567 = load i64, i64* %7566
  store i64 %7567, i64* %7563, align 8
  %7568 = add i64 %7565, 8
  store i64 %7568, i64* %7564, align 8
  store %struct.Memory* %loadMem_47ad8c, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_47ad8c
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

define %struct.Memory* @routine_subq__0x440___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 1088
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 1088
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
  %23 = xor i64 1088, %9
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

define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_47a844(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jge_.L_47a83f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
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

define %struct.Memory* @routine_jne_.L_47a6bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_47a6c1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47a831(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_47a747(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x581cc1___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x581cc1_type* @G__0x581cc1 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x3f0__rbp__rcx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %24, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3f8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__eax___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.trymove(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_47a734(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47a739(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47a6e8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_47a768(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47a82c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RSI, align 8
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

define %struct.Memory* @routine_jne_.L_47a7fe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x3f0__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1008
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.tryko(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x3fc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1020
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x3fc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1020
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

define %struct.Memory* @routine_je_.L_47a7bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47a7e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x581a3a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x581a3a_type* @G__0x581a3a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4de___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1246, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x581cd4___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x581cd4_type* @G__0x581cd4 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_47a827(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47a803(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jle_.L_47a822(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.popgo(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47a686(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47a66e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_47a919(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_47a881(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_47a886(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47a90b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_47a906(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_47a8f3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47a8f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47a8a7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47a84b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
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

define %struct.Memory* @routine_je_.L_47a9f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_47a9f3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x3f8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 1016
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

define %struct.Memory* @routine_jne_.L_47a96e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.countlib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_47a973(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47a9e5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__esi___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x418__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1048
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x418__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
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

define %struct.Memory* @routine_je_.L_47a9e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47a938(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47a920(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_47ac26(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_47aa35(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_47aa3a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47ac18(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x14___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 20, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x400__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1024
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3ec__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1004
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x404__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1028
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x400__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1024
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x420__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1056
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
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

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0x404__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1028
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x424__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1060
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x424__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1060
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__eax___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.abs_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x428__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1064
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__edx__MINUS0x42c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1068
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x42c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1068
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__edx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x428__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
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

define %struct.Memory* @routine_je_.L_47aaf4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x4___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.approxlib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__esi___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x408__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1032
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x40c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1036
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x410__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1040
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0x408__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1032
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x40c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 1036
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

define %struct.Memory* @routine_jg_.L_47aba4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_47abde(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x410__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1040
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x414__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 1044
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

define %struct.Memory* @routine_jl_.L_47abde(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x430__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1072
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47ac13(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47a9ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x640___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1600, i64* %RAX, align 8
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

define %struct.Memory* @routine_jge_.L_47ad62(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_47ace6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_47ace1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_47acdc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x3f0__rbp__rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, -1008
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

define %struct.Memory* @routine_movl__0x2____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 2, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47aca8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47ace1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47ad4f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_47ad4a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x3f0__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2____rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  store i32 2, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x438__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1080
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47ad54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47ac42(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47ad67(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jle_.L_47ad84(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x440___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1088, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1088
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
  %25 = xor i64 1088, %9
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
