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
%G__0x57fb0d_type = type <{ [8 x i8] }>
%G__0x57fc9d_type = type <{ [8 x i8] }>
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
@G__0x57fb0d = global %G__0x57fb0d_type zeroinitializer
@G__0x57fc9d = global %G__0x57fc9d_type zeroinitializer

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

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_413c20.chainlinks2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4153e0.same_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @do_find_break_chain2_efficient_moves(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_466f30 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_466f30, %struct.Memory** %MEMORY
  %loadMem_466f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i788 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i789 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i788
  %27 = load i64, i64* %PC.i787
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i787
  store i64 %26, i64* %RBP.i789, align 8
  store %struct.Memory* %loadMem_466f31, %struct.Memory** %MEMORY
  %loadMem_466f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i806 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i806
  %36 = load i64, i64* %PC.i805
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i805
  %38 = sub i64 %35, 752
  store i64 %38, i64* %RSP.i806, align 8
  %39 = icmp ult i64 %35, 752
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
  %49 = xor i64 752, %35
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
  store %struct.Memory* %loadMem_466f34, %struct.Memory** %MEMORY
  %loadMem_466f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i863 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i862
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i862
  store i64 3, i64* %RAX.i863, align 8
  store %struct.Memory* %loadMem_466f3b, %struct.Memory** %MEMORY
  %loadMem_466f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i861 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i861
  %85 = sub i64 %84, 4
  %86 = load i32, i32* %EDI.i
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i860
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i860
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_466f40, %struct.Memory** %MEMORY
  %loadMem_466f43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %ESI.i858 = bitcast %union.anon* %96 to i32*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i859 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i859
  %101 = sub i64 %100, 8
  %102 = load i32, i32* %ESI.i858
  %103 = zext i32 %102 to i64
  %104 = load i64, i64* %PC.i857
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC.i857
  %106 = inttoptr i64 %101 to i32*
  store i32 %102, i32* %106
  store %struct.Memory* %loadMem_466f43, %struct.Memory** %MEMORY
  %loadMem_466f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 7
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RDX.i855 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 15
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RBP.i856 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RBP.i856
  %117 = sub i64 %116, 16
  %118 = load i64, i64* %RDX.i855
  %119 = load i64, i64* %PC.i854
  %120 = add i64 %119, 4
  store i64 %120, i64* %PC.i854
  %121 = inttoptr i64 %117 to i64*
  store i64 %118, i64* %121
  store %struct.Memory* %loadMem_466f46, %struct.Memory** %MEMORY
  %loadMem_466f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 33
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RDX.i852 = bitcast %union.anon* %127 to i64*
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 15
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %RBP.i853 = bitcast %union.anon* %130 to i64*
  %131 = load i64, i64* %RBP.i853
  %132 = sub i64 %131, 4
  %133 = load i64, i64* %PC.i851
  %134 = add i64 %133, 4
  store i64 %134, i64* %PC.i851
  %135 = inttoptr i64 %132 to i32*
  %136 = load i32, i32* %135
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %RDX.i852, align 8
  store %struct.Memory* %loadMem_466f4a, %struct.Memory** %MEMORY
  %loadMem_466f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 33
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %140 to i64*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 7
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %RDX.i849 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 9
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RSI.i850 = bitcast %union.anon* %146 to i64*
  %147 = load i64, i64* %RDX.i849
  %148 = add i64 %147, 12099168
  %149 = load i64, i64* %PC.i848
  %150 = add i64 %149, 8
  store i64 %150, i64* %PC.i848
  %151 = inttoptr i64 %148 to i8*
  %152 = load i8, i8* %151
  %153 = zext i8 %152 to i64
  store i64 %153, i64* %RSI.i850, align 8
  store %struct.Memory* %loadMem_466f4e, %struct.Memory** %MEMORY
  %loadMem_466f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 33
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 9
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %ESI.i846 = bitcast %union.anon* %159 to i32*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 15
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %RBP.i847 = bitcast %union.anon* %162 to i64*
  %163 = load i64, i64* %RBP.i847
  %164 = sub i64 %163, 20
  %165 = load i32, i32* %ESI.i846
  %166 = zext i32 %165 to i64
  %167 = load i64, i64* %PC.i845
  %168 = add i64 %167, 3
  store i64 %168, i64* %PC.i845
  %169 = inttoptr i64 %164 to i32*
  store i32 %165, i32* %169
  store %struct.Memory* %loadMem_466f56, %struct.Memory** %MEMORY
  %loadMem_466f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 33
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %RAX.i843 = bitcast %union.anon* %175 to i64*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 15
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %RBP.i844 = bitcast %union.anon* %178 to i64*
  %179 = load i64, i64* %RAX.i843
  %180 = load i64, i64* %RBP.i844
  %181 = sub i64 %180, 20
  %182 = load i64, i64* %PC.i842
  %183 = add i64 %182, 3
  store i64 %183, i64* %PC.i842
  %184 = trunc i64 %179 to i32
  %185 = inttoptr i64 %181 to i32*
  %186 = load i32, i32* %185
  %187 = sub i32 %184, %186
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RAX.i843, align 8
  %189 = icmp ult i32 %184, %186
  %190 = zext i1 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %190, i8* %191, align 1
  %192 = and i32 %187, 255
  %193 = call i32 @llvm.ctpop.i32(i32 %192)
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %196, i8* %197, align 1
  %198 = xor i32 %186, %184
  %199 = xor i32 %198, %187
  %200 = lshr i32 %199, 4
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %202, i8* %203, align 1
  %204 = icmp eq i32 %187, 0
  %205 = zext i1 %204 to i8
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %205, i8* %206, align 1
  %207 = lshr i32 %187, 31
  %208 = trunc i32 %207 to i8
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %208, i8* %209, align 1
  %210 = lshr i32 %184, 31
  %211 = lshr i32 %186, 31
  %212 = xor i32 %211, %210
  %213 = xor i32 %207, %210
  %214 = add i32 %213, %212
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %216, i8* %217, align 1
  store %struct.Memory* %loadMem_466f59, %struct.Memory** %MEMORY
  %loadMem_466f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %EAX.i840 = bitcast %union.anon* %223 to i32*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 15
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RBP.i841 = bitcast %union.anon* %226 to i64*
  %227 = load i64, i64* %RBP.i841
  %228 = sub i64 %227, 24
  %229 = load i32, i32* %EAX.i840
  %230 = zext i32 %229 to i64
  %231 = load i64, i64* %PC.i839
  %232 = add i64 %231, 3
  store i64 %232, i64* %PC.i839
  %233 = inttoptr i64 %228 to i32*
  store i32 %229, i32* %233
  store %struct.Memory* %loadMem_466f5c, %struct.Memory** %MEMORY
  %loadMem_466f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 33
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 11
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RDI.i837 = bitcast %union.anon* %239 to i64*
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 15
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %RBP.i838 = bitcast %union.anon* %242 to i64*
  %243 = load i64, i64* %RBP.i838
  %244 = sub i64 %243, 8
  %245 = load i64, i64* %PC.i836
  %246 = add i64 %245, 3
  store i64 %246, i64* %PC.i836
  %247 = inttoptr i64 %244 to i32*
  %248 = load i32, i32* %247
  %249 = zext i32 %248 to i64
  store i64 %249, i64* %RDI.i837, align 8
  store %struct.Memory* %loadMem_466f5f, %struct.Memory** %MEMORY
  %loadMem1_466f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 33
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %252 to i64*
  %253 = load i64, i64* %PC.i835
  %254 = add i64 %253, -358370
  %255 = load i64, i64* %PC.i835
  %256 = add i64 %255, 5
  %257 = load i64, i64* %PC.i835
  %258 = add i64 %257, 5
  store i64 %258, i64* %PC.i835
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = add i64 %260, -8
  %262 = inttoptr i64 %261 to i64*
  store i64 %256, i64* %262
  store i64 %261, i64* %259, align 8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %254, i64* %263, align 8
  store %struct.Memory* %loadMem1_466f62, %struct.Memory** %MEMORY
  %loadMem2_466f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_466f62 = load i64, i64* %3
  %call2_466f62 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_466f62, %struct.Memory* %loadMem2_466f62)
  store %struct.Memory* %call2_466f62, %struct.Memory** %MEMORY
  %loadMem_466f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 33
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %266 to i64*
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %EAX.i834 = bitcast %union.anon* %269 to i32*
  %270 = load i32, i32* %EAX.i834
  %271 = zext i32 %270 to i64
  %272 = load i64, i64* %PC.i833
  %273 = add i64 %272, 3
  store i64 %273, i64* %PC.i833
  %274 = sub i32 %270, 2
  %275 = icmp ult i32 %270, 2
  %276 = zext i1 %275 to i8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %276, i8* %277, align 1
  %278 = and i32 %274, 255
  %279 = call i32 @llvm.ctpop.i32(i32 %278)
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %282, i8* %283, align 1
  %284 = xor i64 2, %271
  %285 = trunc i64 %284 to i32
  %286 = xor i32 %285, %274
  %287 = lshr i32 %286, 4
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %289, i8* %290, align 1
  %291 = icmp eq i32 %274, 0
  %292 = zext i1 %291 to i8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %292, i8* %293, align 1
  %294 = lshr i32 %274, 31
  %295 = trunc i32 %294 to i8
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %295, i8* %296, align 1
  %297 = lshr i32 %270, 31
  %298 = xor i32 %294, %297
  %299 = add i32 %298, %297
  %300 = icmp eq i32 %299, 2
  %301 = zext i1 %300 to i8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %301, i8* %302, align 1
  store %struct.Memory* %loadMem_466f67, %struct.Memory** %MEMORY
  %loadMem_466f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 33
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %305 to i64*
  %306 = load i64, i64* %PC.i832
  %307 = add i64 %306, 11
  %308 = load i64, i64* %PC.i832
  %309 = add i64 %308, 6
  %310 = load i64, i64* %PC.i832
  %311 = add i64 %310, 6
  store i64 %311, i64* %PC.i832
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %313 = load i8, i8* %312, align 1
  %314 = icmp eq i8 %313, 0
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %BRANCH_TAKEN, align 1
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %317 = select i1 %314, i64 %307, i64 %309
  store i64 %317, i64* %316, align 8
  store %struct.Memory* %loadMem_466f6a, %struct.Memory** %MEMORY
  %loadBr_466f6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_466f6a = icmp eq i8 %loadBr_466f6a, 1
  br i1 %cmpBr_466f6a, label %block_.L_466f75, label %block_466f70

block_466f70:                                     ; preds = %entry
  %loadMem_466f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 33
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %PC.i831 = bitcast %union.anon* %320 to i64*
  %321 = load i64, i64* %PC.i831
  %322 = add i64 %321, 118
  %323 = load i64, i64* %PC.i831
  %324 = add i64 %323, 5
  store i64 %324, i64* %PC.i831
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %322, i64* %325, align 8
  store %struct.Memory* %loadMem_466f70, %struct.Memory** %MEMORY
  br label %block_.L_466fe6

block_.L_466f75:                                  ; preds = %entry
  %loadMem_466f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 11
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %RDI.i830 = bitcast %union.anon* %331 to i64*
  %332 = load i64, i64* %PC.i829
  %333 = add i64 %332, 10
  store i64 %333, i64* %PC.i829
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i830, align 8
  store %struct.Memory* %loadMem_466f75, %struct.Memory** %MEMORY
  %loadMem_466f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 33
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %336 to i64*
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 9
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %RSI.i828 = bitcast %union.anon* %339 to i64*
  %340 = load i64, i64* %PC.i827
  %341 = add i64 %340, 5
  store i64 %341, i64* %PC.i827
  store i64 3778, i64* %RSI.i828, align 8
  store %struct.Memory* %loadMem_466f7f, %struct.Memory** %MEMORY
  %loadMem_466f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 33
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %344 to i64*
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 7
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %RDX.i826 = bitcast %union.anon* %347 to i64*
  %348 = load i64, i64* %PC.i825
  %349 = add i64 %348, 10
  store i64 %349, i64* %PC.i825
  store i64 ptrtoint (%G__0x57fc9d_type* @G__0x57fc9d to i64), i64* %RDX.i826, align 8
  store %struct.Memory* %loadMem_466f84, %struct.Memory** %MEMORY
  %loadMem_466f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 33
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %RAX.i824 = bitcast %union.anon* %355 to i64*
  %356 = load i64, i64* %PC.i823
  %357 = add i64 %356, 5
  store i64 %357, i64* %PC.i823
  store i64 20, i64* %RAX.i824, align 8
  store %struct.Memory* %loadMem_466f8e, %struct.Memory** %MEMORY
  %loadMem_466f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 5
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %RCX.i821 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 15
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RBP.i822 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %RBP.i822
  %368 = sub i64 %367, 8
  %369 = load i64, i64* %PC.i820
  %370 = add i64 %369, 3
  store i64 %370, i64* %PC.i820
  %371 = inttoptr i64 %368 to i32*
  %372 = load i32, i32* %371
  %373 = zext i32 %372 to i64
  store i64 %373, i64* %RCX.i821, align 8
  store %struct.Memory* %loadMem_466f93, %struct.Memory** %MEMORY
  %loadMem_466f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %EAX.i818 = bitcast %union.anon* %379 to i32*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 15
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %RBP.i819 = bitcast %union.anon* %382 to i64*
  %383 = load i64, i64* %RBP.i819
  %384 = sub i64 %383, 712
  %385 = load i32, i32* %EAX.i818
  %386 = zext i32 %385 to i64
  %387 = load i64, i64* %PC.i817
  %388 = add i64 %387, 6
  store i64 %388, i64* %PC.i817
  %389 = inttoptr i64 %384 to i32*
  store i32 %385, i32* %389
  store %struct.Memory* %loadMem_466f96, %struct.Memory** %MEMORY
  %loadMem_466f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 33
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 5
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %ECX.i815 = bitcast %union.anon* %395 to i32*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %RAX.i816 = bitcast %union.anon* %398 to i64*
  %399 = load i32, i32* %ECX.i815
  %400 = zext i32 %399 to i64
  %401 = load i64, i64* %PC.i814
  %402 = add i64 %401, 2
  store i64 %402, i64* %PC.i814
  %403 = and i64 %400, 4294967295
  store i64 %403, i64* %RAX.i816, align 8
  store %struct.Memory* %loadMem_466f9c, %struct.Memory** %MEMORY
  %loadMem_466f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 33
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %406 to i64*
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 7
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %RDX.i812 = bitcast %union.anon* %409 to i64*
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 15
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %RBP.i813 = bitcast %union.anon* %412 to i64*
  %413 = load i64, i64* %RBP.i813
  %414 = sub i64 %413, 720
  %415 = load i64, i64* %RDX.i812
  %416 = load i64, i64* %PC.i811
  %417 = add i64 %416, 7
  store i64 %417, i64* %PC.i811
  %418 = inttoptr i64 %414 to i64*
  store i64 %415, i64* %418
  store %struct.Memory* %loadMem_466f9e, %struct.Memory** %MEMORY
  %loadMem_466fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %421 to i64*
  %422 = load i64, i64* %PC.i810
  %423 = add i64 %422, 1
  store i64 %423, i64* %PC.i810
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %426 = bitcast %union.anon* %425 to i32*
  %427 = load i32, i32* %426, align 8
  %428 = sext i32 %427 to i64
  %429 = lshr i64 %428, 32
  store i64 %429, i64* %424, align 8
  store %struct.Memory* %loadMem_466fa5, %struct.Memory** %MEMORY
  %loadMem_466fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 33
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %432 to i64*
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 5
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %RCX.i808 = bitcast %union.anon* %435 to i64*
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 15
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %RBP.i809 = bitcast %union.anon* %438 to i64*
  %439 = load i64, i64* %RBP.i809
  %440 = sub i64 %439, 712
  %441 = load i64, i64* %PC.i807
  %442 = add i64 %441, 6
  store i64 %442, i64* %PC.i807
  %443 = inttoptr i64 %440 to i32*
  %444 = load i32, i32* %443
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RCX.i808, align 8
  store %struct.Memory* %loadMem_466fa6, %struct.Memory** %MEMORY
  %loadMem_466fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 33
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %448 to i64*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 5
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %ECX.i803 = bitcast %union.anon* %451 to i32*
  %452 = load i32, i32* %ECX.i803
  %453 = zext i32 %452 to i64
  %454 = load i64, i64* %PC.i802
  %455 = add i64 %454, 2
  store i64 %455, i64* %PC.i802
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %457 = bitcast %union.anon* %456 to i32*
  %458 = load i32, i32* %457, align 8
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %461 = bitcast %union.anon* %460 to i32*
  %462 = load i32, i32* %461, align 8
  %463 = zext i32 %462 to i64
  %464 = shl i64 %453, 32
  %465 = ashr exact i64 %464, 32
  %466 = shl i64 %463, 32
  %467 = or i64 %466, %459
  %468 = sdiv i64 %467, %465
  %469 = shl i64 %468, 32
  %470 = ashr exact i64 %469, 32
  %471 = icmp eq i64 %468, %470
  br i1 %471, label %476, label %472

; <label>:472:                                    ; preds = %block_.L_466f75
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %474, %struct.Memory* %loadMem_466fac)
  br label %routine_idivl__ecx.exit804

; <label>:476:                                    ; preds = %block_.L_466f75
  %477 = srem i64 %467, %465
  %478 = getelementptr inbounds %union.anon, %union.anon* %456, i64 0, i32 0
  %479 = and i64 %468, 4294967295
  store i64 %479, i64* %478, align 8
  %480 = getelementptr inbounds %union.anon, %union.anon* %460, i64 0, i32 0
  %481 = and i64 %477, 4294967295
  store i64 %481, i64* %480, align 8
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %482, align 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %483, align 1
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %484, align 1
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %485, align 1
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %486, align 1
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %487, align 1
  br label %routine_idivl__ecx.exit804

routine_idivl__ecx.exit804:                       ; preds = %472, %476
  %488 = phi %struct.Memory* [ %475, %472 ], [ %loadMem_466fac, %476 ]
  store %struct.Memory* %488, %struct.Memory** %MEMORY
  %loadMem_466fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 33
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %491 to i64*
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %RAX.i801 = bitcast %union.anon* %494 to i64*
  %495 = load i64, i64* %RAX.i801
  %496 = load i64, i64* %PC.i800
  %497 = add i64 %496, 3
  store i64 %497, i64* %PC.i800
  %498 = trunc i64 %495 to i32
  %499 = sub i32 %498, 1
  %500 = zext i32 %499 to i64
  store i64 %500, i64* %RAX.i801, align 8
  %501 = icmp ult i32 %498, 1
  %502 = zext i1 %501 to i8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %502, i8* %503, align 1
  %504 = and i32 %499, 255
  %505 = call i32 @llvm.ctpop.i32(i32 %504)
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  %508 = xor i8 %507, 1
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %508, i8* %509, align 1
  %510 = xor i64 1, %495
  %511 = trunc i64 %510 to i32
  %512 = xor i32 %511, %499
  %513 = lshr i32 %512, 4
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %515, i8* %516, align 1
  %517 = icmp eq i32 %499, 0
  %518 = zext i1 %517 to i8
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %518, i8* %519, align 1
  %520 = lshr i32 %499, 31
  %521 = trunc i32 %520 to i8
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %521, i8* %522, align 1
  %523 = lshr i32 %498, 31
  %524 = xor i32 %520, %523
  %525 = add i32 %524, %523
  %526 = icmp eq i32 %525, 2
  %527 = zext i1 %526 to i8
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %527, i8* %528, align 1
  store %struct.Memory* %loadMem_466fae, %struct.Memory** %MEMORY
  %loadMem_466fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 17
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %R8D.i798 = bitcast %union.anon* %534 to i32*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 15
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RBP.i799 = bitcast %union.anon* %537 to i64*
  %538 = bitcast i32* %R8D.i798 to i64*
  %539 = load i64, i64* %RBP.i799
  %540 = sub i64 %539, 8
  %541 = load i64, i64* %PC.i797
  %542 = add i64 %541, 4
  store i64 %542, i64* %PC.i797
  %543 = inttoptr i64 %540 to i32*
  %544 = load i32, i32* %543
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %538, align 8
  store %struct.Memory* %loadMem_466fb1, %struct.Memory** %MEMORY
  %loadMem_466fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %EAX.i795 = bitcast %union.anon* %551 to i32*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 15
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %RBP.i796 = bitcast %union.anon* %554 to i64*
  %555 = load i64, i64* %RBP.i796
  %556 = sub i64 %555, 724
  %557 = load i32, i32* %EAX.i795
  %558 = zext i32 %557 to i64
  %559 = load i64, i64* %PC.i794
  %560 = add i64 %559, 6
  store i64 %560, i64* %PC.i794
  %561 = inttoptr i64 %556 to i32*
  store i32 %557, i32* %561
  store %struct.Memory* %loadMem_466fb5, %struct.Memory** %MEMORY
  %loadMem_466fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 33
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %564 to i64*
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 17
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %R8D.i792 = bitcast %union.anon* %567 to i32*
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 1
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %RAX.i793 = bitcast %union.anon* %570 to i64*
  %571 = load i32, i32* %R8D.i792
  %572 = zext i32 %571 to i64
  %573 = load i64, i64* %PC.i791
  %574 = add i64 %573, 3
  store i64 %574, i64* %PC.i791
  %575 = and i64 %572, 4294967295
  store i64 %575, i64* %RAX.i793, align 8
  store %struct.Memory* %loadMem_466fbb, %struct.Memory** %MEMORY
  %loadMem_466fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 33
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %578 to i64*
  %579 = load i64, i64* %PC.i790
  %580 = add i64 %579, 1
  store i64 %580, i64* %PC.i790
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %583 = bitcast %union.anon* %582 to i32*
  %584 = load i32, i32* %583, align 8
  %585 = sext i32 %584 to i64
  %586 = lshr i64 %585, 32
  store i64 %586, i64* %581, align 8
  store %struct.Memory* %loadMem_466fbe, %struct.Memory** %MEMORY
  %loadMem_466fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 33
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %589 to i64*
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 5
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %ECX.i786 = bitcast %union.anon* %592 to i32*
  %593 = load i32, i32* %ECX.i786
  %594 = zext i32 %593 to i64
  %595 = load i64, i64* %PC.i785
  %596 = add i64 %595, 2
  store i64 %596, i64* %PC.i785
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %598 = bitcast %union.anon* %597 to i32*
  %599 = load i32, i32* %598, align 8
  %600 = zext i32 %599 to i64
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %602 = bitcast %union.anon* %601 to i32*
  %603 = load i32, i32* %602, align 8
  %604 = zext i32 %603 to i64
  %605 = shl i64 %594, 32
  %606 = ashr exact i64 %605, 32
  %607 = shl i64 %604, 32
  %608 = or i64 %607, %600
  %609 = sdiv i64 %608, %606
  %610 = shl i64 %609, 32
  %611 = ashr exact i64 %610, 32
  %612 = icmp eq i64 %609, %611
  br i1 %612, label %617, label %613

; <label>:613:                                    ; preds = %routine_idivl__ecx.exit804
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %615 = load i64, i64* %614, align 8
  %616 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %615, %struct.Memory* %loadMem_466fbf)
  br label %routine_idivl__ecx.exit

; <label>:617:                                    ; preds = %routine_idivl__ecx.exit804
  %618 = srem i64 %608, %606
  %619 = getelementptr inbounds %union.anon, %union.anon* %597, i64 0, i32 0
  %620 = and i64 %609, 4294967295
  store i64 %620, i64* %619, align 8
  %621 = getelementptr inbounds %union.anon, %union.anon* %601, i64 0, i32 0
  %622 = and i64 %618, 4294967295
  store i64 %622, i64* %621, align 8
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %623, align 1
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %624, align 1
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %625, align 1
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %626, align 1
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %627, align 1
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %628, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %613, %617
  %629 = phi %struct.Memory* [ %616, %613 ], [ %loadMem_466fbf, %617 ]
  store %struct.Memory* %629, %struct.Memory** %MEMORY
  %loadMem_466fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 33
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %632 to i64*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 7
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %RDX.i784 = bitcast %union.anon* %635 to i64*
  %636 = load i64, i64* %RDX.i784
  %637 = load i64, i64* %PC.i783
  %638 = add i64 %637, 3
  store i64 %638, i64* %PC.i783
  %639 = trunc i64 %636 to i32
  %640 = sub i32 %639, 1
  %641 = zext i32 %640 to i64
  store i64 %641, i64* %RDX.i784, align 8
  %642 = icmp ult i32 %639, 1
  %643 = zext i1 %642 to i8
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %643, i8* %644, align 1
  %645 = and i32 %640, 255
  %646 = call i32 @llvm.ctpop.i32(i32 %645)
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %649, i8* %650, align 1
  %651 = xor i64 1, %636
  %652 = trunc i64 %651 to i32
  %653 = xor i32 %652, %640
  %654 = lshr i32 %653, 4
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %656, i8* %657, align 1
  %658 = icmp eq i32 %640, 0
  %659 = zext i1 %658 to i8
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %659, i8* %660, align 1
  %661 = lshr i32 %640, 31
  %662 = trunc i32 %661 to i8
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %662, i8* %663, align 1
  %664 = lshr i32 %639, 31
  %665 = xor i32 %661, %664
  %666 = add i32 %665, %664
  %667 = icmp eq i32 %666, 2
  %668 = zext i1 %667 to i8
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %668, i8* %669, align 1
  store %struct.Memory* %loadMem_466fc1, %struct.Memory** %MEMORY
  %loadMem_466fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 33
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 15
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %RBP.i781 = bitcast %union.anon* %675 to i64*
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 19
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %R9.i782 = bitcast %union.anon* %678 to i64*
  %679 = load i64, i64* %RBP.i781
  %680 = sub i64 %679, 720
  %681 = load i64, i64* %PC.i780
  %682 = add i64 %681, 7
  store i64 %682, i64* %PC.i780
  %683 = inttoptr i64 %680 to i64*
  %684 = load i64, i64* %683
  store i64 %684, i64* %R9.i782, align 8
  store %struct.Memory* %loadMem_466fc4, %struct.Memory** %MEMORY
  %loadMem_466fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 33
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 7
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %EDX.i778 = bitcast %union.anon* %690 to i32*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 15
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RBP.i779 = bitcast %union.anon* %693 to i64*
  %694 = load i64, i64* %RBP.i779
  %695 = sub i64 %694, 728
  %696 = load i32, i32* %EDX.i778
  %697 = zext i32 %696 to i64
  %698 = load i64, i64* %PC.i777
  %699 = add i64 %698, 6
  store i64 %699, i64* %PC.i777
  %700 = inttoptr i64 %695 to i32*
  store i32 %696, i32* %700
  store %struct.Memory* %loadMem_466fcb, %struct.Memory** %MEMORY
  %loadMem_466fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 33
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %703 to i64*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 7
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %RDX.i776 = bitcast %union.anon* %706 to i64*
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 19
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %R9.i = bitcast %union.anon* %709 to i64*
  %710 = load i64, i64* %R9.i
  %711 = load i64, i64* %PC.i775
  %712 = add i64 %711, 3
  store i64 %712, i64* %PC.i775
  store i64 %710, i64* %RDX.i776, align 8
  store %struct.Memory* %loadMem_466fd1, %struct.Memory** %MEMORY
  %loadMem_466fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 33
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 5
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RCX.i773 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 15
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %RBP.i774 = bitcast %union.anon* %721 to i64*
  %722 = load i64, i64* %RBP.i774
  %723 = sub i64 %722, 724
  %724 = load i64, i64* %PC.i772
  %725 = add i64 %724, 6
  store i64 %725, i64* %PC.i772
  %726 = inttoptr i64 %723 to i32*
  %727 = load i32, i32* %726
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RCX.i773, align 8
  store %struct.Memory* %loadMem_466fd4, %struct.Memory** %MEMORY
  %loadMem_466fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 17
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %734 to i32*
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 15
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %RBP.i771 = bitcast %union.anon* %737 to i64*
  %738 = bitcast i32* %R8D.i to i64*
  %739 = load i64, i64* %RBP.i771
  %740 = sub i64 %739, 728
  %741 = load i64, i64* %PC.i770
  %742 = add i64 %741, 7
  store i64 %742, i64* %PC.i770
  %743 = inttoptr i64 %740 to i32*
  %744 = load i32, i32* %743
  %745 = zext i32 %744 to i64
  store i64 %745, i64* %738, align 8
  store %struct.Memory* %loadMem_466fda, %struct.Memory** %MEMORY
  %loadMem1_466fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 33
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %748 to i64*
  %749 = load i64, i64* %PC.i769
  %750 = add i64 %749, -85841
  %751 = load i64, i64* %PC.i769
  %752 = add i64 %751, 5
  %753 = load i64, i64* %PC.i769
  %754 = add i64 %753, 5
  store i64 %754, i64* %PC.i769
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %756 = load i64, i64* %755, align 8
  %757 = add i64 %756, -8
  %758 = inttoptr i64 %757 to i64*
  store i64 %752, i64* %758
  store i64 %757, i64* %755, align 8
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %750, i64* %759, align 8
  store %struct.Memory* %loadMem1_466fe1, %struct.Memory** %MEMORY
  %loadMem2_466fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_466fe1 = load i64, i64* %3
  %call2_466fe1 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_466fe1, %struct.Memory* %loadMem2_466fe1)
  store %struct.Memory* %call2_466fe1, %struct.Memory** %MEMORY
  br label %block_.L_466fe6

block_.L_466fe6:                                  ; preds = %routine_idivl__ecx.exit, %block_466f70
  %loadMem_466fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 33
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %762 to i64*
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 7
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %RDX.i768 = bitcast %union.anon* %765 to i64*
  %766 = load i64, i64* %PC.i767
  %767 = add i64 %766, 5
  store i64 %767, i64* %PC.i767
  store i64 1, i64* %RDX.i768, align 8
  store %struct.Memory* %loadMem_466fe6, %struct.Memory** %MEMORY
  %loadMem_466feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %769 = getelementptr inbounds %struct.GPR, %struct.GPR* %768, i32 0, i32 33
  %770 = getelementptr inbounds %struct.Reg, %struct.Reg* %769, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %770 to i64*
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 9
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %RSI.i765 = bitcast %union.anon* %773 to i64*
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 15
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %RBP.i766 = bitcast %union.anon* %776 to i64*
  %777 = load i64, i64* %RBP.i766
  %778 = sub i64 %777, 672
  %779 = load i64, i64* %PC.i764
  %780 = add i64 %779, 7
  store i64 %780, i64* %PC.i764
  store i64 %778, i64* %RSI.i765, align 8
  store %struct.Memory* %loadMem_466feb, %struct.Memory** %MEMORY
  %loadMem_466ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 33
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 11
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %RDI.i762 = bitcast %union.anon* %786 to i64*
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 15
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %RBP.i763 = bitcast %union.anon* %789 to i64*
  %790 = load i64, i64* %RBP.i763
  %791 = sub i64 %790, 8
  %792 = load i64, i64* %PC.i761
  %793 = add i64 %792, 3
  store i64 %793, i64* %PC.i761
  %794 = inttoptr i64 %791 to i32*
  %795 = load i32, i32* %794
  %796 = zext i32 %795 to i64
  store i64 %796, i64* %RDI.i762, align 8
  store %struct.Memory* %loadMem_466ff2, %struct.Memory** %MEMORY
  %loadMem1_466ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 33
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %799 to i64*
  %800 = load i64, i64* %PC.i760
  %801 = add i64 %800, -340949
  %802 = load i64, i64* %PC.i760
  %803 = add i64 %802, 5
  %804 = load i64, i64* %PC.i760
  %805 = add i64 %804, 5
  store i64 %805, i64* %PC.i760
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %807 = load i64, i64* %806, align 8
  %808 = add i64 %807, -8
  %809 = inttoptr i64 %808 to i64*
  store i64 %803, i64* %809
  store i64 %808, i64* %806, align 8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %801, i64* %810, align 8
  store %struct.Memory* %loadMem1_466ff5, %struct.Memory** %MEMORY
  %loadMem2_466ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_466ff5 = load i64, i64* %3
  %call2_466ff5 = call %struct.Memory* @sub_413c20.chainlinks2(%struct.State* %0, i64 %loadPC_466ff5, %struct.Memory* %loadMem2_466ff5)
  store %struct.Memory* %call2_466ff5, %struct.Memory** %MEMORY
  %loadMem_466ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 33
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %813 to i64*
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 1
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %EAX.i758 = bitcast %union.anon* %816 to i32*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 15
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %RBP.i759 = bitcast %union.anon* %819 to i64*
  %820 = load i64, i64* %RBP.i759
  %821 = sub i64 %820, 32
  %822 = load i32, i32* %EAX.i758
  %823 = zext i32 %822 to i64
  %824 = load i64, i64* %PC.i757
  %825 = add i64 %824, 3
  store i64 %825, i64* %PC.i757
  %826 = inttoptr i64 %821 to i32*
  store i32 %822, i32* %826
  store %struct.Memory* %loadMem_466ffa, %struct.Memory** %MEMORY
  %loadMem_466ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 33
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %829 to i64*
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 15
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %RBP.i756 = bitcast %union.anon* %832 to i64*
  %833 = load i64, i64* %RBP.i756
  %834 = sub i64 %833, 32
  %835 = load i64, i64* %PC.i755
  %836 = add i64 %835, 4
  store i64 %836, i64* %PC.i755
  %837 = inttoptr i64 %834 to i32*
  %838 = load i32, i32* %837
  %839 = sub i32 %838, 1
  %840 = icmp ult i32 %838, 1
  %841 = zext i1 %840 to i8
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %841, i8* %842, align 1
  %843 = and i32 %839, 255
  %844 = call i32 @llvm.ctpop.i32(i32 %843)
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %847, i8* %848, align 1
  %849 = xor i32 %838, 1
  %850 = xor i32 %849, %839
  %851 = lshr i32 %850, 4
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %853, i8* %854, align 1
  %855 = icmp eq i32 %839, 0
  %856 = zext i1 %855 to i8
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %856, i8* %857, align 1
  %858 = lshr i32 %839, 31
  %859 = trunc i32 %858 to i8
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %859, i8* %860, align 1
  %861 = lshr i32 %838, 31
  %862 = xor i32 %858, %861
  %863 = add i32 %862, %861
  %864 = icmp eq i32 %863, 2
  %865 = zext i1 %864 to i8
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %865, i8* %866, align 1
  store %struct.Memory* %loadMem_466ffd, %struct.Memory** %MEMORY
  %loadMem_467001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %869 to i64*
  %870 = load i64, i64* %PC.i754
  %871 = add i64 %870, 319
  %872 = load i64, i64* %PC.i754
  %873 = add i64 %872, 6
  %874 = load i64, i64* %PC.i754
  %875 = add i64 %874, 6
  store i64 %875, i64* %PC.i754
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %877 = load i8, i8* %876, align 1
  %878 = icmp eq i8 %877, 0
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %BRANCH_TAKEN, align 1
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %881 = select i1 %878, i64 %871, i64 %873
  store i64 %881, i64* %880, align 8
  store %struct.Memory* %loadMem_467001, %struct.Memory** %MEMORY
  %loadBr_467001 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467001 = icmp eq i8 %loadBr_467001, 1
  br i1 %cmpBr_467001, label %block_.L_467140, label %block_467007

block_467007:                                     ; preds = %block_.L_466fe6
  %loadMem_467007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 33
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 11
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %RDI.i752 = bitcast %union.anon* %887 to i64*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 15
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %890 to i64*
  %891 = load i64, i64* %RBP.i753
  %892 = sub i64 %891, 4
  %893 = load i64, i64* %PC.i751
  %894 = add i64 %893, 3
  store i64 %894, i64* %PC.i751
  %895 = inttoptr i64 %892 to i32*
  %896 = load i32, i32* %895
  %897 = zext i32 %896 to i64
  store i64 %897, i64* %RDI.i752, align 8
  store %struct.Memory* %loadMem_467007, %struct.Memory** %MEMORY
  %loadMem1_46700a = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %900 to i64*
  %901 = load i64, i64* %PC.i750
  %902 = add i64 %901, -358538
  %903 = load i64, i64* %PC.i750
  %904 = add i64 %903, 5
  %905 = load i64, i64* %PC.i750
  %906 = add i64 %905, 5
  store i64 %906, i64* %PC.i750
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %908 = load i64, i64* %907, align 8
  %909 = add i64 %908, -8
  %910 = inttoptr i64 %909 to i64*
  store i64 %904, i64* %910
  store i64 %909, i64* %907, align 8
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %902, i64* %911, align 8
  store %struct.Memory* %loadMem1_46700a, %struct.Memory** %MEMORY
  %loadMem2_46700a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46700a = load i64, i64* %3
  %call2_46700a = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_46700a, %struct.Memory* %loadMem2_46700a)
  store %struct.Memory* %call2_46700a, %struct.Memory** %MEMORY
  %loadMem_46700f = load %struct.Memory*, %struct.Memory** %MEMORY
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 33
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %914 to i64*
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 1
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %EAX.i749 = bitcast %union.anon* %917 to i32*
  %918 = load i32, i32* %EAX.i749
  %919 = zext i32 %918 to i64
  %920 = load i64, i64* %PC.i748
  %921 = add i64 %920, 3
  store i64 %921, i64* %PC.i748
  %922 = sub i32 %918, 2
  %923 = icmp ult i32 %918, 2
  %924 = zext i1 %923 to i8
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %924, i8* %925, align 1
  %926 = and i32 %922, 255
  %927 = call i32 @llvm.ctpop.i32(i32 %926)
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  %930 = xor i8 %929, 1
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %930, i8* %931, align 1
  %932 = xor i64 2, %919
  %933 = trunc i64 %932 to i32
  %934 = xor i32 %933, %922
  %935 = lshr i32 %934, 4
  %936 = trunc i32 %935 to i8
  %937 = and i8 %936, 1
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %937, i8* %938, align 1
  %939 = icmp eq i32 %922, 0
  %940 = zext i1 %939 to i8
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %940, i8* %941, align 1
  %942 = lshr i32 %922, 31
  %943 = trunc i32 %942 to i8
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %943, i8* %944, align 1
  %945 = lshr i32 %918, 31
  %946 = xor i32 %942, %945
  %947 = add i32 %946, %945
  %948 = icmp eq i32 %947, 2
  %949 = zext i1 %948 to i8
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %949, i8* %950, align 1
  store %struct.Memory* %loadMem_46700f, %struct.Memory** %MEMORY
  %loadMem_467012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %953 to i64*
  %954 = load i64, i64* %PC.i747
  %955 = add i64 %954, 302
  %956 = load i64, i64* %PC.i747
  %957 = add i64 %956, 6
  %958 = load i64, i64* %PC.i747
  %959 = add i64 %958, 6
  store i64 %959, i64* %PC.i747
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %961 = load i8, i8* %960, align 1
  %962 = icmp ne i8 %961, 0
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %964 = load i8, i8* %963, align 1
  %965 = icmp ne i8 %964, 0
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %967 = load i8, i8* %966, align 1
  %968 = icmp ne i8 %967, 0
  %969 = xor i1 %965, %968
  %970 = or i1 %962, %969
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %BRANCH_TAKEN, align 1
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %973 = select i1 %970, i64 %955, i64 %957
  store i64 %973, i64* %972, align 8
  store %struct.Memory* %loadMem_467012, %struct.Memory** %MEMORY
  %loadBr_467012 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467012 = icmp eq i8 %loadBr_467012, 1
  br i1 %cmpBr_467012, label %block_.L_467140, label %block_467018

block_467018:                                     ; preds = %block_467007
  %loadMem_467018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 33
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %976 to i64*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 9
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %RSI.i746 = bitcast %union.anon* %979 to i64*
  %980 = load i64, i64* %PC.i745
  %981 = add i64 %980, 5
  store i64 %981, i64* %PC.i745
  store i64 1, i64* %RSI.i746, align 8
  store %struct.Memory* %loadMem_467018, %struct.Memory** %MEMORY
  %loadMem_46701d = load %struct.Memory*, %struct.Memory** %MEMORY
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 33
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %984 to i64*
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 7
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %RDX.i743 = bitcast %union.anon* %987 to i64*
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 15
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %RBP.i744 = bitcast %union.anon* %990 to i64*
  %991 = load i64, i64* %RBP.i744
  %992 = sub i64 %991, 692
  %993 = load i64, i64* %PC.i742
  %994 = add i64 %993, 7
  store i64 %994, i64* %PC.i742
  store i64 %992, i64* %RDX.i743, align 8
  store %struct.Memory* %loadMem_46701d, %struct.Memory** %MEMORY
  %loadMem_467024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 33
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 11
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RDI.i740 = bitcast %union.anon* %1000 to i64*
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 15
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %RBP.i741 = bitcast %union.anon* %1003 to i64*
  %1004 = load i64, i64* %RBP.i741
  %1005 = sub i64 %1004, 672
  %1006 = load i64, i64* %PC.i739
  %1007 = add i64 %1006, 6
  store i64 %1007, i64* %PC.i739
  %1008 = inttoptr i64 %1005 to i32*
  %1009 = load i32, i32* %1008
  %1010 = zext i32 %1009 to i64
  store i64 %1010, i64* %RDI.i740, align 8
  store %struct.Memory* %loadMem_467024, %struct.Memory** %MEMORY
  %loadMem1_46702a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 33
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %1013 to i64*
  %1014 = load i64, i64* %PC.i738
  %1015 = add i64 %1014, -358378
  %1016 = load i64, i64* %PC.i738
  %1017 = add i64 %1016, 5
  %1018 = load i64, i64* %PC.i738
  %1019 = add i64 %1018, 5
  store i64 %1019, i64* %PC.i738
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1021 = load i64, i64* %1020, align 8
  %1022 = add i64 %1021, -8
  %1023 = inttoptr i64 %1022 to i64*
  store i64 %1017, i64* %1023
  store i64 %1022, i64* %1020, align 8
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1015, i64* %1024, align 8
  store %struct.Memory* %loadMem1_46702a, %struct.Memory** %MEMORY
  %loadMem2_46702a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46702a = load i64, i64* %3
  %call2_46702a = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_46702a, %struct.Memory* %loadMem2_46702a)
  store %struct.Memory* %call2_46702a, %struct.Memory** %MEMORY
  %loadMem_46702f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 33
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %1027 to i64*
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 11
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %RDI.i736 = bitcast %union.anon* %1030 to i64*
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 15
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %RBP.i737 = bitcast %union.anon* %1033 to i64*
  %1034 = load i64, i64* %RBP.i737
  %1035 = sub i64 %1034, 692
  %1036 = load i64, i64* %PC.i735
  %1037 = add i64 %1036, 6
  store i64 %1037, i64* %PC.i735
  %1038 = inttoptr i64 %1035 to i32*
  %1039 = load i32, i32* %1038
  %1040 = zext i32 %1039 to i64
  store i64 %1040, i64* %RDI.i736, align 8
  store %struct.Memory* %loadMem_46702f, %struct.Memory** %MEMORY
  %loadMem_467035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 33
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 9
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RSI.i733 = bitcast %union.anon* %1046 to i64*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 15
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %RBP.i734 = bitcast %union.anon* %1049 to i64*
  %1050 = load i64, i64* %RBP.i734
  %1051 = sub i64 %1050, 20
  %1052 = load i64, i64* %PC.i732
  %1053 = add i64 %1052, 3
  store i64 %1053, i64* %PC.i732
  %1054 = inttoptr i64 %1051 to i32*
  %1055 = load i32, i32* %1054
  %1056 = zext i32 %1055 to i64
  store i64 %1056, i64* %RSI.i733, align 8
  store %struct.Memory* %loadMem_467035, %struct.Memory** %MEMORY
  %loadMem_467038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 33
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %1059 to i64*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 1
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %EAX.i730 = bitcast %union.anon* %1062 to i32*
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 15
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %RBP.i731 = bitcast %union.anon* %1065 to i64*
  %1066 = load i64, i64* %RBP.i731
  %1067 = sub i64 %1066, 732
  %1068 = load i32, i32* %EAX.i730
  %1069 = zext i32 %1068 to i64
  %1070 = load i64, i64* %PC.i729
  %1071 = add i64 %1070, 6
  store i64 %1071, i64* %PC.i729
  %1072 = inttoptr i64 %1067 to i32*
  store i32 %1068, i32* %1072
  store %struct.Memory* %loadMem_467038, %struct.Memory** %MEMORY
  %loadMem1_46703e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 33
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %1075 to i64*
  %1076 = load i64, i64* %PC.i728
  %1077 = add i64 %1076, -339358
  %1078 = load i64, i64* %PC.i728
  %1079 = add i64 %1078, 5
  %1080 = load i64, i64* %PC.i728
  %1081 = add i64 %1080, 5
  store i64 %1081, i64* %PC.i728
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1083 = load i64, i64* %1082, align 8
  %1084 = add i64 %1083, -8
  %1085 = inttoptr i64 %1084 to i64*
  store i64 %1079, i64* %1085
  store i64 %1084, i64* %1082, align 8
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1077, i64* %1086, align 8
  store %struct.Memory* %loadMem1_46703e, %struct.Memory** %MEMORY
  %loadMem2_46703e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46703e = load i64, i64* %3
  %call2_46703e = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64 %loadPC_46703e, %struct.Memory* %loadMem2_46703e)
  store %struct.Memory* %call2_46703e, %struct.Memory** %MEMORY
  %loadMem_467043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 33
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %1089 to i64*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 1
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %EAX.i727 = bitcast %union.anon* %1092 to i32*
  %1093 = load i32, i32* %EAX.i727
  %1094 = zext i32 %1093 to i64
  %1095 = load i64, i64* %PC.i726
  %1096 = add i64 %1095, 3
  store i64 %1096, i64* %PC.i726
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1097, align 1
  %1098 = and i32 %1093, 255
  %1099 = call i32 @llvm.ctpop.i32(i32 %1098)
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = xor i8 %1101, 1
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1102, i8* %1103, align 1
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1104, align 1
  %1105 = icmp eq i32 %1093, 0
  %1106 = zext i1 %1105 to i8
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1106, i8* %1107, align 1
  %1108 = lshr i32 %1093, 31
  %1109 = trunc i32 %1108 to i8
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1109, i8* %1110, align 1
  %1111 = lshr i32 %1093, 31
  %1112 = xor i32 %1108, %1111
  %1113 = add i32 %1112, %1111
  %1114 = icmp eq i32 %1113, 2
  %1115 = zext i1 %1114 to i8
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1115, i8* %1116, align 1
  store %struct.Memory* %loadMem_467043, %struct.Memory** %MEMORY
  %loadMem_467046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 33
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %1119 to i64*
  %1120 = load i64, i64* %PC.i725
  %1121 = add i64 %1120, 245
  %1122 = load i64, i64* %PC.i725
  %1123 = add i64 %1122, 6
  %1124 = load i64, i64* %PC.i725
  %1125 = add i64 %1124, 6
  store i64 %1125, i64* %PC.i725
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1127 = load i8, i8* %1126, align 1
  %1128 = icmp eq i8 %1127, 0
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %BRANCH_TAKEN, align 1
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1131 = select i1 %1128, i64 %1121, i64 %1123
  store i64 %1131, i64* %1130, align 8
  store %struct.Memory* %loadMem_467046, %struct.Memory** %MEMORY
  %loadBr_467046 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467046 = icmp eq i8 %loadBr_467046, 1
  br i1 %cmpBr_467046, label %block_.L_46713b, label %block_46704c

block_46704c:                                     ; preds = %block_467018
  %loadMem_46704c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 33
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %1134 to i64*
  %1135 = load i64, i64* %PC.i724
  %1136 = add i64 %1135, 5
  %1137 = load i64, i64* %PC.i724
  %1138 = add i64 %1137, 5
  store i64 %1138, i64* %PC.i724
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1136, i64* %1139, align 8
  store %struct.Memory* %loadMem_46704c, %struct.Memory** %MEMORY
  br label %block_.L_467051

block_.L_467051:                                  ; preds = %block_46704c
  %loadMem_467051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 33
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %1142 to i64*
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 15
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %RBP.i723 = bitcast %union.anon* %1145 to i64*
  %1146 = load i64, i64* %RBP.i723
  %1147 = sub i64 %1146, 696
  %1148 = load i64, i64* %PC.i722
  %1149 = add i64 %1148, 10
  store i64 %1149, i64* %PC.i722
  %1150 = inttoptr i64 %1147 to i32*
  store i32 0, i32* %1150
  store %struct.Memory* %loadMem_467051, %struct.Memory** %MEMORY
  br label %block_.L_46705b

block_.L_46705b:                                  ; preds = %block_.L_4670b1, %block_.L_467051
  %loadMem_46705b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 33
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %1153 to i64*
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 1
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %RAX.i720 = bitcast %union.anon* %1156 to i64*
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 15
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %RBP.i721 = bitcast %union.anon* %1159 to i64*
  %1160 = load i64, i64* %RBP.i721
  %1161 = sub i64 %1160, 696
  %1162 = load i64, i64* %PC.i719
  %1163 = add i64 %1162, 6
  store i64 %1163, i64* %PC.i719
  %1164 = inttoptr i64 %1161 to i32*
  %1165 = load i32, i32* %1164
  %1166 = zext i32 %1165 to i64
  store i64 %1166, i64* %RAX.i720, align 8
  store %struct.Memory* %loadMem_46705b, %struct.Memory** %MEMORY
  %loadMem_467061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 33
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %1169 to i64*
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 5
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %RCX.i717 = bitcast %union.anon* %1172 to i64*
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 15
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %RBP.i718 = bitcast %union.anon* %1175 to i64*
  %1176 = load i64, i64* %RBP.i718
  %1177 = sub i64 %1176, 16
  %1178 = load i64, i64* %PC.i716
  %1179 = add i64 %1178, 4
  store i64 %1179, i64* %PC.i716
  %1180 = inttoptr i64 %1177 to i64*
  %1181 = load i64, i64* %1180
  store i64 %1181, i64* %RCX.i717, align 8
  store %struct.Memory* %loadMem_467061, %struct.Memory** %MEMORY
  %loadMem_467065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 33
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1184 to i64*
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 1
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %EAX.i714 = bitcast %union.anon* %1187 to i32*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 5
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RCX.i715 = bitcast %union.anon* %1190 to i64*
  %1191 = load i32, i32* %EAX.i714
  %1192 = zext i32 %1191 to i64
  %1193 = load i64, i64* %RCX.i715
  %1194 = add i64 %1193, 400
  %1195 = load i64, i64* %PC.i713
  %1196 = add i64 %1195, 6
  store i64 %1196, i64* %PC.i713
  %1197 = inttoptr i64 %1194 to i32*
  %1198 = load i32, i32* %1197
  %1199 = sub i32 %1191, %1198
  %1200 = icmp ult i32 %1191, %1198
  %1201 = zext i1 %1200 to i8
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1201, i8* %1202, align 1
  %1203 = and i32 %1199, 255
  %1204 = call i32 @llvm.ctpop.i32(i32 %1203)
  %1205 = trunc i32 %1204 to i8
  %1206 = and i8 %1205, 1
  %1207 = xor i8 %1206, 1
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1207, i8* %1208, align 1
  %1209 = xor i32 %1198, %1191
  %1210 = xor i32 %1209, %1199
  %1211 = lshr i32 %1210, 4
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1213, i8* %1214, align 1
  %1215 = icmp eq i32 %1199, 0
  %1216 = zext i1 %1215 to i8
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1216, i8* %1217, align 1
  %1218 = lshr i32 %1199, 31
  %1219 = trunc i32 %1218 to i8
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1219, i8* %1220, align 1
  %1221 = lshr i32 %1191, 31
  %1222 = lshr i32 %1198, 31
  %1223 = xor i32 %1222, %1221
  %1224 = xor i32 %1218, %1221
  %1225 = add i32 %1224, %1223
  %1226 = icmp eq i32 %1225, 2
  %1227 = zext i1 %1226 to i8
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1227, i8* %1228, align 1
  store %struct.Memory* %loadMem_467065, %struct.Memory** %MEMORY
  %loadMem_46706b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1230 = getelementptr inbounds %struct.GPR, %struct.GPR* %1229, i32 0, i32 33
  %1231 = getelementptr inbounds %struct.Reg, %struct.Reg* %1230, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %1231 to i64*
  %1232 = load i64, i64* %PC.i712
  %1233 = add i64 %1232, 90
  %1234 = load i64, i64* %PC.i712
  %1235 = add i64 %1234, 6
  %1236 = load i64, i64* %PC.i712
  %1237 = add i64 %1236, 6
  store i64 %1237, i64* %PC.i712
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1239 = load i8, i8* %1238, align 1
  %1240 = icmp ne i8 %1239, 0
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1242 = load i8, i8* %1241, align 1
  %1243 = icmp ne i8 %1242, 0
  %1244 = xor i1 %1240, %1243
  %1245 = xor i1 %1244, true
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %BRANCH_TAKEN, align 1
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1248 = select i1 %1244, i64 %1235, i64 %1233
  store i64 %1248, i64* %1247, align 8
  store %struct.Memory* %loadMem_46706b, %struct.Memory** %MEMORY
  %loadBr_46706b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46706b = icmp eq i8 %loadBr_46706b, 1
  br i1 %cmpBr_46706b, label %block_.L_4670c5, label %block_467071

block_467071:                                     ; preds = %block_.L_46705b
  %loadMem_467071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 33
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 1
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %RAX.i710 = bitcast %union.anon* %1254 to i64*
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 15
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %1257 to i64*
  %1258 = load i64, i64* %RBP.i711
  %1259 = sub i64 %1258, 16
  %1260 = load i64, i64* %PC.i709
  %1261 = add i64 %1260, 4
  store i64 %1261, i64* %PC.i709
  %1262 = inttoptr i64 %1259 to i64*
  %1263 = load i64, i64* %1262
  store i64 %1263, i64* %RAX.i710, align 8
  store %struct.Memory* %loadMem_467071, %struct.Memory** %MEMORY
  %loadMem_467075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 33
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 5
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %RCX.i707 = bitcast %union.anon* %1269 to i64*
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 15
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %RBP.i708 = bitcast %union.anon* %1272 to i64*
  %1273 = load i64, i64* %RBP.i708
  %1274 = sub i64 %1273, 696
  %1275 = load i64, i64* %PC.i706
  %1276 = add i64 %1275, 7
  store i64 %1276, i64* %PC.i706
  %1277 = inttoptr i64 %1274 to i32*
  %1278 = load i32, i32* %1277
  %1279 = sext i32 %1278 to i64
  store i64 %1279, i64* %RCX.i707, align 8
  store %struct.Memory* %loadMem_467075, %struct.Memory** %MEMORY
  %loadMem_46707c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 33
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 1
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RAX.i703 = bitcast %union.anon* %1285 to i64*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 5
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %RCX.i704 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 7
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RDX.i705 = bitcast %union.anon* %1291 to i64*
  %1292 = load i64, i64* %RAX.i703
  %1293 = load i64, i64* %RCX.i704
  %1294 = mul i64 %1293, 4
  %1295 = add i64 %1294, %1292
  %1296 = load i64, i64* %PC.i702
  %1297 = add i64 %1296, 3
  store i64 %1297, i64* %PC.i702
  %1298 = inttoptr i64 %1295 to i32*
  %1299 = load i32, i32* %1298
  %1300 = zext i32 %1299 to i64
  store i64 %1300, i64* %RDX.i705, align 8
  store %struct.Memory* %loadMem_46707c, %struct.Memory** %MEMORY
  %loadMem_46707f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 33
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %1303 to i64*
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 7
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %EDX.i700 = bitcast %union.anon* %1306 to i32*
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 15
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %RBP.i701 = bitcast %union.anon* %1309 to i64*
  %1310 = load i32, i32* %EDX.i700
  %1311 = zext i32 %1310 to i64
  %1312 = load i64, i64* %RBP.i701
  %1313 = sub i64 %1312, 692
  %1314 = load i64, i64* %PC.i699
  %1315 = add i64 %1314, 6
  store i64 %1315, i64* %PC.i699
  %1316 = inttoptr i64 %1313 to i32*
  %1317 = load i32, i32* %1316
  %1318 = sub i32 %1310, %1317
  %1319 = icmp ult i32 %1310, %1317
  %1320 = zext i1 %1319 to i8
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1320, i8* %1321, align 1
  %1322 = and i32 %1318, 255
  %1323 = call i32 @llvm.ctpop.i32(i32 %1322)
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  %1326 = xor i8 %1325, 1
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1326, i8* %1327, align 1
  %1328 = xor i32 %1317, %1310
  %1329 = xor i32 %1328, %1318
  %1330 = lshr i32 %1329, 4
  %1331 = trunc i32 %1330 to i8
  %1332 = and i8 %1331, 1
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1332, i8* %1333, align 1
  %1334 = icmp eq i32 %1318, 0
  %1335 = zext i1 %1334 to i8
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1335, i8* %1336, align 1
  %1337 = lshr i32 %1318, 31
  %1338 = trunc i32 %1337 to i8
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1338, i8* %1339, align 1
  %1340 = lshr i32 %1310, 31
  %1341 = lshr i32 %1317, 31
  %1342 = xor i32 %1341, %1340
  %1343 = xor i32 %1337, %1340
  %1344 = add i32 %1343, %1342
  %1345 = icmp eq i32 %1344, 2
  %1346 = zext i1 %1345 to i8
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1346, i8* %1347, align 1
  store %struct.Memory* %loadMem_46707f, %struct.Memory** %MEMORY
  %loadMem_467085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 33
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1350 to i64*
  %1351 = load i64, i64* %PC.i698
  %1352 = add i64 %1351, 39
  %1353 = load i64, i64* %PC.i698
  %1354 = add i64 %1353, 6
  %1355 = load i64, i64* %PC.i698
  %1356 = add i64 %1355, 6
  store i64 %1356, i64* %PC.i698
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1358 = load i8, i8* %1357, align 1
  %1359 = icmp eq i8 %1358, 0
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %BRANCH_TAKEN, align 1
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1362 = select i1 %1359, i64 %1352, i64 %1354
  store i64 %1362, i64* %1361, align 8
  store %struct.Memory* %loadMem_467085, %struct.Memory** %MEMORY
  %loadBr_467085 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467085 = icmp eq i8 %loadBr_467085, 1
  br i1 %cmpBr_467085, label %block_.L_4670ac, label %block_46708b

block_46708b:                                     ; preds = %block_467071
  %loadMem_46708b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 33
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %1365 to i64*
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 1
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %RAX.i696 = bitcast %union.anon* %1368 to i64*
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 15
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %1371 to i64*
  %1372 = load i64, i64* %RBP.i697
  %1373 = sub i64 %1372, 16
  %1374 = load i64, i64* %PC.i695
  %1375 = add i64 %1374, 4
  store i64 %1375, i64* %PC.i695
  %1376 = inttoptr i64 %1373 to i64*
  %1377 = load i64, i64* %1376
  store i64 %1377, i64* %RAX.i696, align 8
  store %struct.Memory* %loadMem_46708b, %struct.Memory** %MEMORY
  %loadMem_46708f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 33
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %1380 to i64*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 5
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %RCX.i693 = bitcast %union.anon* %1383 to i64*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 15
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %RBP.i694 = bitcast %union.anon* %1386 to i64*
  %1387 = load i64, i64* %RBP.i694
  %1388 = sub i64 %1387, 696
  %1389 = load i64, i64* %PC.i692
  %1390 = add i64 %1389, 7
  store i64 %1390, i64* %PC.i692
  %1391 = inttoptr i64 %1388 to i32*
  %1392 = load i32, i32* %1391
  %1393 = sext i32 %1392 to i64
  store i64 %1393, i64* %RCX.i693, align 8
  store %struct.Memory* %loadMem_46708f, %struct.Memory** %MEMORY
  %loadMem_467096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 33
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 1
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %RAX.i689 = bitcast %union.anon* %1399 to i64*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 5
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %RCX.i690 = bitcast %union.anon* %1402 to i64*
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 7
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %RDX.i691 = bitcast %union.anon* %1405 to i64*
  %1406 = load i64, i64* %RAX.i689
  %1407 = load i64, i64* %RCX.i690
  %1408 = mul i64 %1407, 4
  %1409 = add i64 %1406, 200
  %1410 = add i64 %1409, %1408
  %1411 = load i64, i64* %PC.i688
  %1412 = add i64 %1411, 7
  store i64 %1412, i64* %PC.i688
  %1413 = inttoptr i64 %1410 to i32*
  %1414 = load i32, i32* %1413
  %1415 = zext i32 %1414 to i64
  store i64 %1415, i64* %RDX.i691, align 8
  store %struct.Memory* %loadMem_467096, %struct.Memory** %MEMORY
  %loadMem_46709d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 33
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %1418 to i64*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 7
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %RDX.i687 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %RDX.i687
  %1423 = load i64, i64* %PC.i686
  %1424 = add i64 %1423, 3
  store i64 %1424, i64* %PC.i686
  %1425 = trunc i64 %1422 to i32
  %1426 = zext i32 %1425 to i64
  store i64 %1426, i64* %RDX.i687, align 8
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1427, align 1
  %1428 = and i32 %1425, 255
  %1429 = call i32 @llvm.ctpop.i32(i32 %1428)
  %1430 = trunc i32 %1429 to i8
  %1431 = and i8 %1430, 1
  %1432 = xor i8 %1431, 1
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1432, i8* %1433, align 1
  %1434 = trunc i64 %1422 to i32
  %1435 = xor i32 %1434, %1425
  %1436 = lshr i32 %1435, 4
  %1437 = trunc i32 %1436 to i8
  %1438 = and i8 %1437, 1
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1438, i8* %1439, align 1
  %1440 = icmp eq i32 %1425, 0
  %1441 = zext i1 %1440 to i8
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1441, i8* %1442, align 1
  %1443 = lshr i32 %1425, 31
  %1444 = trunc i32 %1443 to i8
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1444, i8* %1445, align 1
  %1446 = lshr i32 %1425, 31
  %1447 = xor i32 %1443, %1446
  %1448 = add i32 %1447, %1443
  %1449 = icmp eq i32 %1448, 2
  %1450 = zext i1 %1449 to i8
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1450, i8* %1451, align 1
  store %struct.Memory* %loadMem_46709d, %struct.Memory** %MEMORY
  %loadMem_4670a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 33
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %1454 to i64*
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 7
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %EDX.i683 = bitcast %union.anon* %1457 to i32*
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 1
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %RAX.i684 = bitcast %union.anon* %1460 to i64*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 5
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %RCX.i685 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %RAX.i684
  %1465 = load i64, i64* %RCX.i685
  %1466 = mul i64 %1465, 4
  %1467 = add i64 %1464, 200
  %1468 = add i64 %1467, %1466
  %1469 = load i32, i32* %EDX.i683
  %1470 = zext i32 %1469 to i64
  %1471 = load i64, i64* %PC.i682
  %1472 = add i64 %1471, 7
  store i64 %1472, i64* %PC.i682
  %1473 = inttoptr i64 %1468 to i32*
  store i32 %1469, i32* %1473
  store %struct.Memory* %loadMem_4670a0, %struct.Memory** %MEMORY
  %loadMem_4670a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 33
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %1476 to i64*
  %1477 = load i64, i64* %PC.i681
  %1478 = add i64 %1477, 30
  %1479 = load i64, i64* %PC.i681
  %1480 = add i64 %1479, 5
  store i64 %1480, i64* %PC.i681
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1478, i64* %1481, align 8
  store %struct.Memory* %loadMem_4670a7, %struct.Memory** %MEMORY
  br label %block_.L_4670c5

block_.L_4670ac:                                  ; preds = %block_467071
  %loadMem_4670ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 33
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %1484 to i64*
  %1485 = load i64, i64* %PC.i680
  %1486 = add i64 %1485, 5
  %1487 = load i64, i64* %PC.i680
  %1488 = add i64 %1487, 5
  store i64 %1488, i64* %PC.i680
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1486, i64* %1489, align 8
  store %struct.Memory* %loadMem_4670ac, %struct.Memory** %MEMORY
  br label %block_.L_4670b1

block_.L_4670b1:                                  ; preds = %block_.L_4670ac
  %loadMem_4670b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 33
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 1
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %RAX.i678 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 15
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %RBP.i679 = bitcast %union.anon* %1498 to i64*
  %1499 = load i64, i64* %RBP.i679
  %1500 = sub i64 %1499, 696
  %1501 = load i64, i64* %PC.i677
  %1502 = add i64 %1501, 6
  store i64 %1502, i64* %PC.i677
  %1503 = inttoptr i64 %1500 to i32*
  %1504 = load i32, i32* %1503
  %1505 = zext i32 %1504 to i64
  store i64 %1505, i64* %RAX.i678, align 8
  store %struct.Memory* %loadMem_4670b1, %struct.Memory** %MEMORY
  %loadMem_4670b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 33
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %1508 to i64*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 1
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %RAX.i676 = bitcast %union.anon* %1511 to i64*
  %1512 = load i64, i64* %RAX.i676
  %1513 = load i64, i64* %PC.i675
  %1514 = add i64 %1513, 3
  store i64 %1514, i64* %PC.i675
  %1515 = trunc i64 %1512 to i32
  %1516 = add i32 1, %1515
  %1517 = zext i32 %1516 to i64
  store i64 %1517, i64* %RAX.i676, align 8
  %1518 = icmp ult i32 %1516, %1515
  %1519 = icmp ult i32 %1516, 1
  %1520 = or i1 %1518, %1519
  %1521 = zext i1 %1520 to i8
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1521, i8* %1522, align 1
  %1523 = and i32 %1516, 255
  %1524 = call i32 @llvm.ctpop.i32(i32 %1523)
  %1525 = trunc i32 %1524 to i8
  %1526 = and i8 %1525, 1
  %1527 = xor i8 %1526, 1
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1527, i8* %1528, align 1
  %1529 = xor i64 1, %1512
  %1530 = trunc i64 %1529 to i32
  %1531 = xor i32 %1530, %1516
  %1532 = lshr i32 %1531, 4
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1534, i8* %1535, align 1
  %1536 = icmp eq i32 %1516, 0
  %1537 = zext i1 %1536 to i8
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1537, i8* %1538, align 1
  %1539 = lshr i32 %1516, 31
  %1540 = trunc i32 %1539 to i8
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1540, i8* %1541, align 1
  %1542 = lshr i32 %1515, 31
  %1543 = xor i32 %1539, %1542
  %1544 = add i32 %1543, %1539
  %1545 = icmp eq i32 %1544, 2
  %1546 = zext i1 %1545 to i8
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1546, i8* %1547, align 1
  store %struct.Memory* %loadMem_4670b7, %struct.Memory** %MEMORY
  %loadMem_4670ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 33
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 1
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %EAX.i673 = bitcast %union.anon* %1553 to i32*
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 15
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %1556 to i64*
  %1557 = load i64, i64* %RBP.i674
  %1558 = sub i64 %1557, 696
  %1559 = load i32, i32* %EAX.i673
  %1560 = zext i32 %1559 to i64
  %1561 = load i64, i64* %PC.i672
  %1562 = add i64 %1561, 6
  store i64 %1562, i64* %PC.i672
  %1563 = inttoptr i64 %1558 to i32*
  store i32 %1559, i32* %1563
  store %struct.Memory* %loadMem_4670ba, %struct.Memory** %MEMORY
  %loadMem_4670c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 33
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %1566 to i64*
  %1567 = load i64, i64* %PC.i671
  %1568 = add i64 %1567, -101
  %1569 = load i64, i64* %PC.i671
  %1570 = add i64 %1569, 5
  store i64 %1570, i64* %PC.i671
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1568, i64* %1571, align 8
  store %struct.Memory* %loadMem_4670c0, %struct.Memory** %MEMORY
  br label %block_.L_46705b

block_.L_4670c5:                                  ; preds = %block_46708b, %block_.L_46705b
  %loadMem_4670c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 33
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 1
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %RAX.i669 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 15
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %1580 to i64*
  %1581 = load i64, i64* %RBP.i670
  %1582 = sub i64 %1581, 696
  %1583 = load i64, i64* %PC.i668
  %1584 = add i64 %1583, 6
  store i64 %1584, i64* %PC.i668
  %1585 = inttoptr i64 %1582 to i32*
  %1586 = load i32, i32* %1585
  %1587 = zext i32 %1586 to i64
  store i64 %1587, i64* %RAX.i669, align 8
  store %struct.Memory* %loadMem_4670c5, %struct.Memory** %MEMORY
  %loadMem_4670cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 33
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 5
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %RCX.i666 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 15
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %1596 to i64*
  %1597 = load i64, i64* %RBP.i667
  %1598 = sub i64 %1597, 16
  %1599 = load i64, i64* %PC.i665
  %1600 = add i64 %1599, 4
  store i64 %1600, i64* %PC.i665
  %1601 = inttoptr i64 %1598 to i64*
  %1602 = load i64, i64* %1601
  store i64 %1602, i64* %RCX.i666, align 8
  store %struct.Memory* %loadMem_4670cb, %struct.Memory** %MEMORY
  %loadMem_4670cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 33
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %1605 to i64*
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 1
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %EAX.i663 = bitcast %union.anon* %1608 to i32*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 5
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %RCX.i664 = bitcast %union.anon* %1611 to i64*
  %1612 = load i32, i32* %EAX.i663
  %1613 = zext i32 %1612 to i64
  %1614 = load i64, i64* %RCX.i664
  %1615 = add i64 %1614, 400
  %1616 = load i64, i64* %PC.i662
  %1617 = add i64 %1616, 6
  store i64 %1617, i64* %PC.i662
  %1618 = inttoptr i64 %1615 to i32*
  %1619 = load i32, i32* %1618
  %1620 = sub i32 %1612, %1619
  %1621 = icmp ult i32 %1612, %1619
  %1622 = zext i1 %1621 to i8
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1622, i8* %1623, align 1
  %1624 = and i32 %1620, 255
  %1625 = call i32 @llvm.ctpop.i32(i32 %1624)
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = xor i8 %1627, 1
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1628, i8* %1629, align 1
  %1630 = xor i32 %1619, %1612
  %1631 = xor i32 %1630, %1620
  %1632 = lshr i32 %1631, 4
  %1633 = trunc i32 %1632 to i8
  %1634 = and i8 %1633, 1
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1634, i8* %1635, align 1
  %1636 = icmp eq i32 %1620, 0
  %1637 = zext i1 %1636 to i8
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1637, i8* %1638, align 1
  %1639 = lshr i32 %1620, 31
  %1640 = trunc i32 %1639 to i8
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1640, i8* %1641, align 1
  %1642 = lshr i32 %1612, 31
  %1643 = lshr i32 %1619, 31
  %1644 = xor i32 %1643, %1642
  %1645 = xor i32 %1639, %1642
  %1646 = add i32 %1645, %1644
  %1647 = icmp eq i32 %1646, 2
  %1648 = zext i1 %1647 to i8
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1648, i8* %1649, align 1
  store %struct.Memory* %loadMem_4670cf, %struct.Memory** %MEMORY
  %loadMem_4670d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 33
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %1652 to i64*
  %1653 = load i64, i64* %PC.i661
  %1654 = add i64 %1653, 92
  %1655 = load i64, i64* %PC.i661
  %1656 = add i64 %1655, 6
  %1657 = load i64, i64* %PC.i661
  %1658 = add i64 %1657, 6
  store i64 %1658, i64* %PC.i661
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1660 = load i8, i8* %1659, align 1
  %1661 = icmp eq i8 %1660, 0
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %BRANCH_TAKEN, align 1
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1664 = select i1 %1661, i64 %1654, i64 %1656
  store i64 %1664, i64* %1663, align 8
  store %struct.Memory* %loadMem_4670d5, %struct.Memory** %MEMORY
  %loadBr_4670d5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4670d5 = icmp eq i8 %loadBr_4670d5, 1
  br i1 %cmpBr_4670d5, label %block_.L_467131, label %block_4670db

block_4670db:                                     ; preds = %block_.L_4670c5
  %loadMem_4670db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 1
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %RAX.i659 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 15
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %1673 to i64*
  %1674 = load i64, i64* %RBP.i660
  %1675 = sub i64 %1674, 16
  %1676 = load i64, i64* %PC.i658
  %1677 = add i64 %1676, 4
  store i64 %1677, i64* %PC.i658
  %1678 = inttoptr i64 %1675 to i64*
  %1679 = load i64, i64* %1678
  store i64 %1679, i64* %RAX.i659, align 8
  store %struct.Memory* %loadMem_4670db, %struct.Memory** %MEMORY
  %loadMem_4670df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 33
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %1682 to i64*
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 1
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %1685 to i64*
  %1686 = load i64, i64* %RAX.i657
  %1687 = add i64 %1686, 400
  %1688 = load i64, i64* %PC.i656
  %1689 = add i64 %1688, 7
  store i64 %1689, i64* %PC.i656
  %1690 = inttoptr i64 %1687 to i32*
  %1691 = load i32, i32* %1690
  %1692 = sub i32 %1691, 50
  %1693 = icmp ult i32 %1691, 50
  %1694 = zext i1 %1693 to i8
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1694, i8* %1695, align 1
  %1696 = and i32 %1692, 255
  %1697 = call i32 @llvm.ctpop.i32(i32 %1696)
  %1698 = trunc i32 %1697 to i8
  %1699 = and i8 %1698, 1
  %1700 = xor i8 %1699, 1
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1700, i8* %1701, align 1
  %1702 = xor i32 %1691, 50
  %1703 = xor i32 %1702, %1692
  %1704 = lshr i32 %1703, 4
  %1705 = trunc i32 %1704 to i8
  %1706 = and i8 %1705, 1
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1706, i8* %1707, align 1
  %1708 = icmp eq i32 %1692, 0
  %1709 = zext i1 %1708 to i8
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1709, i8* %1710, align 1
  %1711 = lshr i32 %1692, 31
  %1712 = trunc i32 %1711 to i8
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1712, i8* %1713, align 1
  %1714 = lshr i32 %1691, 31
  %1715 = xor i32 %1711, %1714
  %1716 = add i32 %1715, %1714
  %1717 = icmp eq i32 %1716, 2
  %1718 = zext i1 %1717 to i8
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1718, i8* %1719, align 1
  store %struct.Memory* %loadMem_4670df, %struct.Memory** %MEMORY
  %loadMem_4670e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 33
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %1722 to i64*
  %1723 = load i64, i64* %PC.i655
  %1724 = add i64 %1723, 75
  %1725 = load i64, i64* %PC.i655
  %1726 = add i64 %1725, 6
  %1727 = load i64, i64* %PC.i655
  %1728 = add i64 %1727, 6
  store i64 %1728, i64* %PC.i655
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1730 = load i8, i8* %1729, align 1
  %1731 = icmp ne i8 %1730, 0
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1733 = load i8, i8* %1732, align 1
  %1734 = icmp ne i8 %1733, 0
  %1735 = xor i1 %1731, %1734
  %1736 = xor i1 %1735, true
  %1737 = zext i1 %1736 to i8
  store i8 %1737, i8* %BRANCH_TAKEN, align 1
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1739 = select i1 %1735, i64 %1726, i64 %1724
  store i64 %1739, i64* %1738, align 8
  store %struct.Memory* %loadMem_4670e6, %struct.Memory** %MEMORY
  %loadBr_4670e6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4670e6 = icmp eq i8 %loadBr_4670e6, 1
  br i1 %cmpBr_4670e6, label %block_.L_467131, label %block_4670ec

block_4670ec:                                     ; preds = %block_4670db
  %loadMem_4670ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 33
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %1742 to i64*
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 1
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %RAX.i653 = bitcast %union.anon* %1745 to i64*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 15
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %RBP.i654 = bitcast %union.anon* %1748 to i64*
  %1749 = load i64, i64* %RBP.i654
  %1750 = sub i64 %1749, 692
  %1751 = load i64, i64* %PC.i652
  %1752 = add i64 %1751, 6
  store i64 %1752, i64* %PC.i652
  %1753 = inttoptr i64 %1750 to i32*
  %1754 = load i32, i32* %1753
  %1755 = zext i32 %1754 to i64
  store i64 %1755, i64* %RAX.i653, align 8
  store %struct.Memory* %loadMem_4670ec, %struct.Memory** %MEMORY
  %loadMem_4670f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 33
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 5
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RCX.i650 = bitcast %union.anon* %1761 to i64*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 15
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %1764 to i64*
  %1765 = load i64, i64* %RBP.i651
  %1766 = sub i64 %1765, 16
  %1767 = load i64, i64* %PC.i649
  %1768 = add i64 %1767, 4
  store i64 %1768, i64* %PC.i649
  %1769 = inttoptr i64 %1766 to i64*
  %1770 = load i64, i64* %1769
  store i64 %1770, i64* %RCX.i650, align 8
  store %struct.Memory* %loadMem_4670f2, %struct.Memory** %MEMORY
  %loadMem_4670f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 33
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %1773 to i64*
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 7
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %RDX.i647 = bitcast %union.anon* %1776 to i64*
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 15
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %1779 to i64*
  %1780 = load i64, i64* %RBP.i648
  %1781 = sub i64 %1780, 16
  %1782 = load i64, i64* %PC.i646
  %1783 = add i64 %1782, 4
  store i64 %1783, i64* %PC.i646
  %1784 = inttoptr i64 %1781 to i64*
  %1785 = load i64, i64* %1784
  store i64 %1785, i64* %RDX.i647, align 8
  store %struct.Memory* %loadMem_4670f6, %struct.Memory** %MEMORY
  %loadMem_4670fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 33
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %1788 to i64*
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 7
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %RDX.i645 = bitcast %union.anon* %1791 to i64*
  %1792 = load i64, i64* %RDX.i645
  %1793 = add i64 %1792, 400
  %1794 = load i64, i64* %PC.i644
  %1795 = add i64 %1794, 7
  store i64 %1795, i64* %PC.i644
  %1796 = inttoptr i64 %1793 to i32*
  %1797 = load i32, i32* %1796
  %1798 = sext i32 %1797 to i64
  store i64 %1798, i64* %RDX.i645, align 8
  store %struct.Memory* %loadMem_4670fa, %struct.Memory** %MEMORY
  %loadMem_467101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 33
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %1801 to i64*
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1803 = getelementptr inbounds %struct.GPR, %struct.GPR* %1802, i32 0, i32 1
  %1804 = getelementptr inbounds %struct.Reg, %struct.Reg* %1803, i32 0, i32 0
  %EAX.i641 = bitcast %union.anon* %1804 to i32*
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 5
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %RCX.i642 = bitcast %union.anon* %1807 to i64*
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 7
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %RDX.i643 = bitcast %union.anon* %1810 to i64*
  %1811 = load i64, i64* %RCX.i642
  %1812 = load i64, i64* %RDX.i643
  %1813 = mul i64 %1812, 4
  %1814 = add i64 %1813, %1811
  %1815 = load i32, i32* %EAX.i641
  %1816 = zext i32 %1815 to i64
  %1817 = load i64, i64* %PC.i640
  %1818 = add i64 %1817, 3
  store i64 %1818, i64* %PC.i640
  %1819 = inttoptr i64 %1814 to i32*
  store i32 %1815, i32* %1819
  store %struct.Memory* %loadMem_467101, %struct.Memory** %MEMORY
  %loadMem_467104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 33
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %1822 to i64*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 5
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %RCX.i638 = bitcast %union.anon* %1825 to i64*
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 15
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %RBP.i639 = bitcast %union.anon* %1828 to i64*
  %1829 = load i64, i64* %RBP.i639
  %1830 = sub i64 %1829, 16
  %1831 = load i64, i64* %PC.i637
  %1832 = add i64 %1831, 4
  store i64 %1832, i64* %PC.i637
  %1833 = inttoptr i64 %1830 to i64*
  %1834 = load i64, i64* %1833
  store i64 %1834, i64* %RCX.i638, align 8
  store %struct.Memory* %loadMem_467104, %struct.Memory** %MEMORY
  %loadMem_467108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 33
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %1837 to i64*
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 7
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %RDX.i635 = bitcast %union.anon* %1840 to i64*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 15
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %1843 to i64*
  %1844 = load i64, i64* %RBP.i636
  %1845 = sub i64 %1844, 16
  %1846 = load i64, i64* %PC.i634
  %1847 = add i64 %1846, 4
  store i64 %1847, i64* %PC.i634
  %1848 = inttoptr i64 %1845 to i64*
  %1849 = load i64, i64* %1848
  store i64 %1849, i64* %RDX.i635, align 8
  store %struct.Memory* %loadMem_467108, %struct.Memory** %MEMORY
  %loadMem_46710c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 33
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %1852 to i64*
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 7
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %RDX.i633 = bitcast %union.anon* %1855 to i64*
  %1856 = load i64, i64* %RDX.i633
  %1857 = add i64 %1856, 400
  %1858 = load i64, i64* %PC.i632
  %1859 = add i64 %1858, 7
  store i64 %1859, i64* %PC.i632
  %1860 = inttoptr i64 %1857 to i32*
  %1861 = load i32, i32* %1860
  %1862 = sext i32 %1861 to i64
  store i64 %1862, i64* %RDX.i633, align 8
  store %struct.Memory* %loadMem_46710c, %struct.Memory** %MEMORY
  %loadMem_467113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 33
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %1865 to i64*
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 5
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %RCX.i630 = bitcast %union.anon* %1868 to i64*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 7
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %RDX.i631 = bitcast %union.anon* %1871 to i64*
  %1872 = load i64, i64* %RCX.i630
  %1873 = load i64, i64* %RDX.i631
  %1874 = mul i64 %1873, 4
  %1875 = add i64 %1872, 200
  %1876 = add i64 %1875, %1874
  %1877 = load i64, i64* %PC.i629
  %1878 = add i64 %1877, 11
  store i64 %1878, i64* %PC.i629
  %1879 = inttoptr i64 %1876 to i32*
  store i32 0, i32* %1879
  store %struct.Memory* %loadMem_467113, %struct.Memory** %MEMORY
  %loadMem_46711e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 33
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 5
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %RCX.i627 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 15
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %1888 to i64*
  %1889 = load i64, i64* %RBP.i628
  %1890 = sub i64 %1889, 16
  %1891 = load i64, i64* %PC.i626
  %1892 = add i64 %1891, 4
  store i64 %1892, i64* %PC.i626
  %1893 = inttoptr i64 %1890 to i64*
  %1894 = load i64, i64* %1893
  store i64 %1894, i64* %RCX.i627, align 8
  store %struct.Memory* %loadMem_46711e, %struct.Memory** %MEMORY
  %loadMem_467122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 33
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %1897 to i64*
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 1
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %RAX.i624 = bitcast %union.anon* %1900 to i64*
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 5
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %RCX.i625 = bitcast %union.anon* %1903 to i64*
  %1904 = load i64, i64* %RCX.i625
  %1905 = add i64 %1904, 400
  %1906 = load i64, i64* %PC.i623
  %1907 = add i64 %1906, 6
  store i64 %1907, i64* %PC.i623
  %1908 = inttoptr i64 %1905 to i32*
  %1909 = load i32, i32* %1908
  %1910 = zext i32 %1909 to i64
  store i64 %1910, i64* %RAX.i624, align 8
  store %struct.Memory* %loadMem_467122, %struct.Memory** %MEMORY
  %loadMem_467128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 33
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %1913 to i64*
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 1
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %1916 to i64*
  %1917 = load i64, i64* %RAX.i622
  %1918 = load i64, i64* %PC.i621
  %1919 = add i64 %1918, 3
  store i64 %1919, i64* %PC.i621
  %1920 = trunc i64 %1917 to i32
  %1921 = add i32 1, %1920
  %1922 = zext i32 %1921 to i64
  store i64 %1922, i64* %RAX.i622, align 8
  %1923 = icmp ult i32 %1921, %1920
  %1924 = icmp ult i32 %1921, 1
  %1925 = or i1 %1923, %1924
  %1926 = zext i1 %1925 to i8
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1926, i8* %1927, align 1
  %1928 = and i32 %1921, 255
  %1929 = call i32 @llvm.ctpop.i32(i32 %1928)
  %1930 = trunc i32 %1929 to i8
  %1931 = and i8 %1930, 1
  %1932 = xor i8 %1931, 1
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1932, i8* %1933, align 1
  %1934 = xor i64 1, %1917
  %1935 = trunc i64 %1934 to i32
  %1936 = xor i32 %1935, %1921
  %1937 = lshr i32 %1936, 4
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1939, i8* %1940, align 1
  %1941 = icmp eq i32 %1921, 0
  %1942 = zext i1 %1941 to i8
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1942, i8* %1943, align 1
  %1944 = lshr i32 %1921, 31
  %1945 = trunc i32 %1944 to i8
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1945, i8* %1946, align 1
  %1947 = lshr i32 %1920, 31
  %1948 = xor i32 %1944, %1947
  %1949 = add i32 %1948, %1944
  %1950 = icmp eq i32 %1949, 2
  %1951 = zext i1 %1950 to i8
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1951, i8* %1952, align 1
  store %struct.Memory* %loadMem_467128, %struct.Memory** %MEMORY
  %loadMem_46712b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 33
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %1955 to i64*
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 1
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %EAX.i619 = bitcast %union.anon* %1958 to i32*
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 5
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %RCX.i620 = bitcast %union.anon* %1961 to i64*
  %1962 = load i64, i64* %RCX.i620
  %1963 = add i64 %1962, 400
  %1964 = load i32, i32* %EAX.i619
  %1965 = zext i32 %1964 to i64
  %1966 = load i64, i64* %PC.i618
  %1967 = add i64 %1966, 6
  store i64 %1967, i64* %PC.i618
  %1968 = inttoptr i64 %1963 to i32*
  store i32 %1964, i32* %1968
  store %struct.Memory* %loadMem_46712b, %struct.Memory** %MEMORY
  br label %block_.L_467131

block_.L_467131:                                  ; preds = %block_4670ec, %block_4670db, %block_.L_4670c5
  %loadMem_467131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 33
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %1971 to i64*
  %1972 = load i64, i64* %PC.i617
  %1973 = add i64 %1972, 5
  %1974 = load i64, i64* %PC.i617
  %1975 = add i64 %1974, 5
  store i64 %1975, i64* %PC.i617
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1973, i64* %1976, align 8
  store %struct.Memory* %loadMem_467131, %struct.Memory** %MEMORY
  br label %block_.L_467136

block_.L_467136:                                  ; preds = %block_.L_467131
  %loadMem_467136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 33
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %1979 to i64*
  %1980 = load i64, i64* %PC.i616
  %1981 = add i64 %1980, 5
  %1982 = load i64, i64* %PC.i616
  %1983 = add i64 %1982, 5
  store i64 %1983, i64* %PC.i616
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1981, i64* %1984, align 8
  store %struct.Memory* %loadMem_467136, %struct.Memory** %MEMORY
  br label %block_.L_46713b

block_.L_46713b:                                  ; preds = %block_.L_467136, %block_467018
  %loadMem_46713b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 33
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %1987 to i64*
  %1988 = load i64, i64* %PC.i615
  %1989 = add i64 %1988, 1353
  %1990 = load i64, i64* %PC.i615
  %1991 = add i64 %1990, 5
  store i64 %1991, i64* %PC.i615
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1989, i64* %1992, align 8
  store %struct.Memory* %loadMem_46713b, %struct.Memory** %MEMORY
  br label %block_.L_467684

block_.L_467140:                                  ; preds = %block_467007, %block_.L_466fe6
  %loadMem_467140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 33
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %1995 to i64*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 15
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %1998 to i64*
  %1999 = load i64, i64* %RBP.i614
  %2000 = sub i64 %1999, 32
  %2001 = load i64, i64* %PC.i613
  %2002 = add i64 %2001, 4
  store i64 %2002, i64* %PC.i613
  %2003 = inttoptr i64 %2000 to i32*
  %2004 = load i32, i32* %2003
  %2005 = sub i32 %2004, 1
  %2006 = icmp ult i32 %2004, 1
  %2007 = zext i1 %2006 to i8
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2007, i8* %2008, align 1
  %2009 = and i32 %2005, 255
  %2010 = call i32 @llvm.ctpop.i32(i32 %2009)
  %2011 = trunc i32 %2010 to i8
  %2012 = and i8 %2011, 1
  %2013 = xor i8 %2012, 1
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2013, i8* %2014, align 1
  %2015 = xor i32 %2004, 1
  %2016 = xor i32 %2015, %2005
  %2017 = lshr i32 %2016, 4
  %2018 = trunc i32 %2017 to i8
  %2019 = and i8 %2018, 1
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2019, i8* %2020, align 1
  %2021 = icmp eq i32 %2005, 0
  %2022 = zext i1 %2021 to i8
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2022, i8* %2023, align 1
  %2024 = lshr i32 %2005, 31
  %2025 = trunc i32 %2024 to i8
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2025, i8* %2026, align 1
  %2027 = lshr i32 %2004, 31
  %2028 = xor i32 %2024, %2027
  %2029 = add i32 %2028, %2027
  %2030 = icmp eq i32 %2029, 2
  %2031 = zext i1 %2030 to i8
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2031, i8* %2032, align 1
  store %struct.Memory* %loadMem_467140, %struct.Memory** %MEMORY
  %loadMem_467144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 33
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %2035 to i64*
  %2036 = load i64, i64* %PC.i612
  %2037 = add i64 %2036, 11
  %2038 = load i64, i64* %PC.i612
  %2039 = add i64 %2038, 6
  %2040 = load i64, i64* %PC.i612
  %2041 = add i64 %2040, 6
  store i64 %2041, i64* %PC.i612
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2043 = load i8, i8* %2042, align 1
  %2044 = icmp ne i8 %2043, 0
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2046 = load i8, i8* %2045, align 1
  %2047 = icmp ne i8 %2046, 0
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2049 = load i8, i8* %2048, align 1
  %2050 = icmp ne i8 %2049, 0
  %2051 = xor i1 %2047, %2050
  %2052 = or i1 %2044, %2051
  %2053 = zext i1 %2052 to i8
  store i8 %2053, i8* %BRANCH_TAKEN, align 1
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2055 = select i1 %2052, i64 %2037, i64 %2039
  store i64 %2055, i64* %2054, align 8
  store %struct.Memory* %loadMem_467144, %struct.Memory** %MEMORY
  %loadBr_467144 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467144 = icmp eq i8 %loadBr_467144, 1
  br i1 %cmpBr_467144, label %block_.L_46714f, label %block_46714a

block_46714a:                                     ; preds = %block_.L_467140
  %loadMem_46714a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 33
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %2058 to i64*
  %2059 = load i64, i64* %PC.i611
  %2060 = add i64 %2059, 1338
  %2061 = load i64, i64* %PC.i611
  %2062 = add i64 %2061, 5
  store i64 %2062, i64* %PC.i611
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2060, i64* %2063, align 8
  store %struct.Memory* %loadMem_46714a, %struct.Memory** %MEMORY
  br label %block_.L_467684

block_.L_46714f:                                  ; preds = %block_.L_467140
  %loadMem_46714f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 33
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 9
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %RSI.i610 = bitcast %union.anon* %2069 to i64*
  %2070 = load i64, i64* %PC.i609
  %2071 = add i64 %2070, 5
  store i64 %2071, i64* %PC.i609
  store i64 2, i64* %RSI.i610, align 8
  store %struct.Memory* %loadMem_46714f, %struct.Memory** %MEMORY
  %loadMem_467154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 33
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 7
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %RDX.i607 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 15
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %2080 to i64*
  %2081 = load i64, i64* %RBP.i608
  %2082 = sub i64 %2081, 680
  %2083 = load i64, i64* %PC.i606
  %2084 = add i64 %2083, 7
  store i64 %2084, i64* %PC.i606
  store i64 %2082, i64* %RDX.i607, align 8
  store %struct.Memory* %loadMem_467154, %struct.Memory** %MEMORY
  %loadMem_46715b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 33
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %2087 to i64*
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 11
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %RDI.i604 = bitcast %union.anon* %2090 to i64*
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 15
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %RBP.i605 = bitcast %union.anon* %2093 to i64*
  %2094 = load i64, i64* %RBP.i605
  %2095 = sub i64 %2094, 8
  %2096 = load i64, i64* %PC.i603
  %2097 = add i64 %2096, 3
  store i64 %2097, i64* %PC.i603
  %2098 = inttoptr i64 %2095 to i32*
  %2099 = load i32, i32* %2098
  %2100 = zext i32 %2099 to i64
  store i64 %2100, i64* %RDI.i604, align 8
  store %struct.Memory* %loadMem_46715b, %struct.Memory** %MEMORY
  %loadMem1_46715e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 33
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %2103 to i64*
  %2104 = load i64, i64* %PC.i602
  %2105 = add i64 %2104, -358686
  %2106 = load i64, i64* %PC.i602
  %2107 = add i64 %2106, 5
  %2108 = load i64, i64* %PC.i602
  %2109 = add i64 %2108, 5
  store i64 %2109, i64* %PC.i602
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2111 = load i64, i64* %2110, align 8
  %2112 = add i64 %2111, -8
  %2113 = inttoptr i64 %2112 to i64*
  store i64 %2107, i64* %2113
  store i64 %2112, i64* %2110, align 8
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2105, i64* %2114, align 8
  store %struct.Memory* %loadMem1_46715e, %struct.Memory** %MEMORY
  %loadMem2_46715e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46715e = load i64, i64* %3
  %call2_46715e = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_46715e, %struct.Memory* %loadMem2_46715e)
  store %struct.Memory* %call2_46715e, %struct.Memory** %MEMORY
  %loadMem_467163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 33
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %2117 to i64*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 15
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %RBP.i601 = bitcast %union.anon* %2120 to i64*
  %2121 = load i64, i64* %RBP.i601
  %2122 = sub i64 %2121, 28
  %2123 = load i64, i64* %PC.i600
  %2124 = add i64 %2123, 7
  store i64 %2124, i64* %PC.i600
  %2125 = inttoptr i64 %2122 to i32*
  store i32 0, i32* %2125
  store %struct.Memory* %loadMem_467163, %struct.Memory** %MEMORY
  %loadMem_46716a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 33
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %2128 to i64*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 1
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %EAX.i598 = bitcast %union.anon* %2131 to i32*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 15
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %2134 to i64*
  %2135 = load i64, i64* %RBP.i599
  %2136 = sub i64 %2135, 736
  %2137 = load i32, i32* %EAX.i598
  %2138 = zext i32 %2137 to i64
  %2139 = load i64, i64* %PC.i597
  %2140 = add i64 %2139, 6
  store i64 %2140, i64* %PC.i597
  %2141 = inttoptr i64 %2136 to i32*
  store i32 %2137, i32* %2141
  store %struct.Memory* %loadMem_46716a, %struct.Memory** %MEMORY
  br label %block_.L_467170

block_.L_467170:                                  ; preds = %block_.L_4672ce, %block_.L_46714f
  %loadMem_467170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 33
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %2144 to i64*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 15
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %2147 to i64*
  %2148 = load i64, i64* %RBP.i596
  %2149 = sub i64 %2148, 28
  %2150 = load i64, i64* %PC.i595
  %2151 = add i64 %2150, 4
  store i64 %2151, i64* %PC.i595
  %2152 = inttoptr i64 %2149 to i32*
  %2153 = load i32, i32* %2152
  %2154 = sub i32 %2153, 2
  %2155 = icmp ult i32 %2153, 2
  %2156 = zext i1 %2155 to i8
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2156, i8* %2157, align 1
  %2158 = and i32 %2154, 255
  %2159 = call i32 @llvm.ctpop.i32(i32 %2158)
  %2160 = trunc i32 %2159 to i8
  %2161 = and i8 %2160, 1
  %2162 = xor i8 %2161, 1
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2162, i8* %2163, align 1
  %2164 = xor i32 %2153, 2
  %2165 = xor i32 %2164, %2154
  %2166 = lshr i32 %2165, 4
  %2167 = trunc i32 %2166 to i8
  %2168 = and i8 %2167, 1
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2168, i8* %2169, align 1
  %2170 = icmp eq i32 %2154, 0
  %2171 = zext i1 %2170 to i8
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2171, i8* %2172, align 1
  %2173 = lshr i32 %2154, 31
  %2174 = trunc i32 %2173 to i8
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2174, i8* %2175, align 1
  %2176 = lshr i32 %2153, 31
  %2177 = xor i32 %2173, %2176
  %2178 = add i32 %2177, %2176
  %2179 = icmp eq i32 %2178, 2
  %2180 = zext i1 %2179 to i8
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2180, i8* %2181, align 1
  store %struct.Memory* %loadMem_467170, %struct.Memory** %MEMORY
  %loadMem_467174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 33
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %2184 to i64*
  %2185 = load i64, i64* %PC.i594
  %2186 = add i64 %2185, 360
  %2187 = load i64, i64* %PC.i594
  %2188 = add i64 %2187, 6
  %2189 = load i64, i64* %PC.i594
  %2190 = add i64 %2189, 6
  store i64 %2190, i64* %PC.i594
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2192 = load i8, i8* %2191, align 1
  %2193 = icmp ne i8 %2192, 0
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2195 = load i8, i8* %2194, align 1
  %2196 = icmp ne i8 %2195, 0
  %2197 = xor i1 %2193, %2196
  %2198 = xor i1 %2197, true
  %2199 = zext i1 %2198 to i8
  store i8 %2199, i8* %BRANCH_TAKEN, align 1
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2201 = select i1 %2197, i64 %2188, i64 %2186
  store i64 %2201, i64* %2200, align 8
  store %struct.Memory* %loadMem_467174, %struct.Memory** %MEMORY
  %loadBr_467174 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467174 = icmp eq i8 %loadBr_467174, 1
  br i1 %cmpBr_467174, label %block_.L_4672dc, label %block_46717a

block_46717a:                                     ; preds = %block_.L_467170
  %loadMem_46717a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 33
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %2204 to i64*
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 7
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %RDX.i593 = bitcast %union.anon* %2207 to i64*
  %2208 = load i64, i64* %PC.i592
  %2209 = add i64 %2208, 5
  store i64 %2209, i64* %PC.i592
  store i64 3, i64* %RDX.i593, align 8
  store %struct.Memory* %loadMem_46717a, %struct.Memory** %MEMORY
  %loadMem_46717f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 33
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %2212 to i64*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 1
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %EAX.i590 = bitcast %union.anon* %2215 to i32*
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 1
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %RAX.i591 = bitcast %union.anon* %2218 to i64*
  %2219 = load i64, i64* %RAX.i591
  %2220 = load i32, i32* %EAX.i590
  %2221 = zext i32 %2220 to i64
  %2222 = load i64, i64* %PC.i589
  %2223 = add i64 %2222, 2
  store i64 %2223, i64* %PC.i589
  %2224 = xor i64 %2221, %2219
  %2225 = trunc i64 %2224 to i32
  %2226 = and i64 %2224, 4294967295
  store i64 %2226, i64* %RAX.i591, align 8
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2227, align 1
  %2228 = and i32 %2225, 255
  %2229 = call i32 @llvm.ctpop.i32(i32 %2228)
  %2230 = trunc i32 %2229 to i8
  %2231 = and i8 %2230, 1
  %2232 = xor i8 %2231, 1
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2232, i8* %2233, align 1
  %2234 = icmp eq i32 %2225, 0
  %2235 = zext i1 %2234 to i8
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2235, i8* %2236, align 1
  %2237 = lshr i32 %2225, 31
  %2238 = trunc i32 %2237 to i8
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2238, i8* %2239, align 1
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2240, align 1
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2241, align 1
  store %struct.Memory* %loadMem_46717f, %struct.Memory** %MEMORY
  %loadMem_467181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 33
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %2244 to i64*
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 1
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %EAX.i587 = bitcast %union.anon* %2247 to i32*
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 5
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %RCX.i588 = bitcast %union.anon* %2250 to i64*
  %2251 = load i32, i32* %EAX.i587
  %2252 = zext i32 %2251 to i64
  %2253 = load i64, i64* %PC.i586
  %2254 = add i64 %2253, 2
  store i64 %2254, i64* %PC.i586
  %2255 = and i64 %2252, 4294967295
  store i64 %2255, i64* %RCX.i588, align 8
  store %struct.Memory* %loadMem_467181, %struct.Memory** %MEMORY
  %loadMem_467183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 33
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 9
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %RSI.i584 = bitcast %union.anon* %2261 to i64*
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 15
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %RBP.i585 = bitcast %union.anon* %2264 to i64*
  %2265 = load i64, i64* %RBP.i585
  %2266 = sub i64 %2265, 28
  %2267 = load i64, i64* %PC.i583
  %2268 = add i64 %2267, 4
  store i64 %2268, i64* %PC.i583
  %2269 = inttoptr i64 %2266 to i32*
  %2270 = load i32, i32* %2269
  %2271 = sext i32 %2270 to i64
  store i64 %2271, i64* %RSI.i584, align 8
  store %struct.Memory* %loadMem_467183, %struct.Memory** %MEMORY
  %loadMem_467187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2273 = getelementptr inbounds %struct.GPR, %struct.GPR* %2272, i32 0, i32 33
  %2274 = getelementptr inbounds %struct.Reg, %struct.Reg* %2273, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %2274 to i64*
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 9
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %RSI.i580 = bitcast %union.anon* %2277 to i64*
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 11
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %RDI.i581 = bitcast %union.anon* %2280 to i64*
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 15
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %2283 to i64*
  %2284 = load i64, i64* %RBP.i582
  %2285 = load i64, i64* %RSI.i580
  %2286 = mul i64 %2285, 4
  %2287 = add i64 %2284, -680
  %2288 = add i64 %2287, %2286
  %2289 = load i64, i64* %PC.i579
  %2290 = add i64 %2289, 7
  store i64 %2290, i64* %PC.i579
  %2291 = inttoptr i64 %2288 to i32*
  %2292 = load i32, i32* %2291
  %2293 = zext i32 %2292 to i64
  store i64 %2293, i64* %RDI.i581, align 8
  store %struct.Memory* %loadMem_467187, %struct.Memory** %MEMORY
  %loadMem_46718e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 33
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %2296 to i64*
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 9
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %RSI.i577 = bitcast %union.anon* %2299 to i64*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 15
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %RBP.i578 = bitcast %union.anon* %2302 to i64*
  %2303 = load i64, i64* %RBP.i578
  %2304 = sub i64 %2303, 24
  %2305 = load i64, i64* %PC.i576
  %2306 = add i64 %2305, 3
  store i64 %2306, i64* %PC.i576
  %2307 = inttoptr i64 %2304 to i32*
  %2308 = load i32, i32* %2307
  %2309 = zext i32 %2308 to i64
  store i64 %2309, i64* %RSI.i577, align 8
  store %struct.Memory* %loadMem_46718e, %struct.Memory** %MEMORY
  %loadMem1_467191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 33
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %2312 to i64*
  %2313 = load i64, i64* %PC.i575
  %2314 = add i64 %2313, -351201
  %2315 = load i64, i64* %PC.i575
  %2316 = add i64 %2315, 5
  %2317 = load i64, i64* %PC.i575
  %2318 = add i64 %2317, 5
  store i64 %2318, i64* %PC.i575
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2320 = load i64, i64* %2319, align 8
  %2321 = add i64 %2320, -8
  %2322 = inttoptr i64 %2321 to i64*
  store i64 %2316, i64* %2322
  store i64 %2321, i64* %2319, align 8
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2314, i64* %2323, align 8
  store %struct.Memory* %loadMem1_467191, %struct.Memory** %MEMORY
  %loadMem2_467191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_467191 = load i64, i64* %3
  %call2_467191 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64 %loadPC_467191, %struct.Memory* %loadMem2_467191)
  store %struct.Memory* %call2_467191, %struct.Memory** %MEMORY
  %loadMem_467196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 33
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %2326 to i64*
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 1
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %EAX.i574 = bitcast %union.anon* %2329 to i32*
  %2330 = load i32, i32* %EAX.i574
  %2331 = zext i32 %2330 to i64
  %2332 = load i64, i64* %PC.i573
  %2333 = add i64 %2332, 3
  store i64 %2333, i64* %PC.i573
  %2334 = sub i32 %2330, 2
  %2335 = icmp ult i32 %2330, 2
  %2336 = zext i1 %2335 to i8
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2336, i8* %2337, align 1
  %2338 = and i32 %2334, 255
  %2339 = call i32 @llvm.ctpop.i32(i32 %2338)
  %2340 = trunc i32 %2339 to i8
  %2341 = and i8 %2340, 1
  %2342 = xor i8 %2341, 1
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2342, i8* %2343, align 1
  %2344 = xor i64 2, %2331
  %2345 = trunc i64 %2344 to i32
  %2346 = xor i32 %2345, %2334
  %2347 = lshr i32 %2346, 4
  %2348 = trunc i32 %2347 to i8
  %2349 = and i8 %2348, 1
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2349, i8* %2350, align 1
  %2351 = icmp eq i32 %2334, 0
  %2352 = zext i1 %2351 to i8
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2352, i8* %2353, align 1
  %2354 = lshr i32 %2334, 31
  %2355 = trunc i32 %2354 to i8
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2355, i8* %2356, align 1
  %2357 = lshr i32 %2330, 31
  %2358 = xor i32 %2354, %2357
  %2359 = add i32 %2358, %2357
  %2360 = icmp eq i32 %2359, 2
  %2361 = zext i1 %2360 to i8
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2361, i8* %2362, align 1
  store %struct.Memory* %loadMem_467196, %struct.Memory** %MEMORY
  %loadMem_467199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 33
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %2365 to i64*
  %2366 = load i64, i64* %PC.i572
  %2367 = add i64 %2366, 304
  %2368 = load i64, i64* %PC.i572
  %2369 = add i64 %2368, 6
  %2370 = load i64, i64* %PC.i572
  %2371 = add i64 %2370, 6
  store i64 %2371, i64* %PC.i572
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2373 = load i8, i8* %2372, align 1
  %2374 = icmp eq i8 %2373, 0
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2376 = load i8, i8* %2375, align 1
  %2377 = icmp ne i8 %2376, 0
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2379 = load i8, i8* %2378, align 1
  %2380 = icmp ne i8 %2379, 0
  %2381 = xor i1 %2377, %2380
  %2382 = xor i1 %2381, true
  %2383 = and i1 %2374, %2382
  %2384 = zext i1 %2383 to i8
  store i8 %2384, i8* %BRANCH_TAKEN, align 1
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2386 = select i1 %2383, i64 %2367, i64 %2369
  store i64 %2386, i64* %2385, align 8
  store %struct.Memory* %loadMem_467199, %struct.Memory** %MEMORY
  %loadBr_467199 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467199 = icmp eq i8 %loadBr_467199, 1
  br i1 %cmpBr_467199, label %block_.L_4672c9, label %block_46719f

block_46719f:                                     ; preds = %block_46717a
  %loadMem_46719f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 33
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %2389 to i64*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 1
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %RAX.i571 = bitcast %union.anon* %2392 to i64*
  %2393 = load i64, i64* %PC.i570
  %2394 = add i64 %2393, 5
  store i64 %2394, i64* %PC.i570
  store i64 1, i64* %RAX.i571, align 8
  store %struct.Memory* %loadMem_46719f, %struct.Memory** %MEMORY
  %loadMem_4671a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 33
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %2397 to i64*
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 1
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %RAX.i568 = bitcast %union.anon* %2400 to i64*
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 15
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %2403 to i64*
  %2404 = load i64, i64* %RAX.i568
  %2405 = load i64, i64* %RBP.i569
  %2406 = sub i64 %2405, 28
  %2407 = load i64, i64* %PC.i567
  %2408 = add i64 %2407, 3
  store i64 %2408, i64* %PC.i567
  %2409 = trunc i64 %2404 to i32
  %2410 = inttoptr i64 %2406 to i32*
  %2411 = load i32, i32* %2410
  %2412 = sub i32 %2409, %2411
  %2413 = zext i32 %2412 to i64
  store i64 %2413, i64* %RAX.i568, align 8
  %2414 = icmp ult i32 %2409, %2411
  %2415 = zext i1 %2414 to i8
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2415, i8* %2416, align 1
  %2417 = and i32 %2412, 255
  %2418 = call i32 @llvm.ctpop.i32(i32 %2417)
  %2419 = trunc i32 %2418 to i8
  %2420 = and i8 %2419, 1
  %2421 = xor i8 %2420, 1
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2421, i8* %2422, align 1
  %2423 = xor i32 %2411, %2409
  %2424 = xor i32 %2423, %2412
  %2425 = lshr i32 %2424, 4
  %2426 = trunc i32 %2425 to i8
  %2427 = and i8 %2426, 1
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2427, i8* %2428, align 1
  %2429 = icmp eq i32 %2412, 0
  %2430 = zext i1 %2429 to i8
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2430, i8* %2431, align 1
  %2432 = lshr i32 %2412, 31
  %2433 = trunc i32 %2432 to i8
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2433, i8* %2434, align 1
  %2435 = lshr i32 %2409, 31
  %2436 = lshr i32 %2411, 31
  %2437 = xor i32 %2436, %2435
  %2438 = xor i32 %2432, %2435
  %2439 = add i32 %2438, %2437
  %2440 = icmp eq i32 %2439, 2
  %2441 = zext i1 %2440 to i8
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2441, i8* %2442, align 1
  store %struct.Memory* %loadMem_4671a4, %struct.Memory** %MEMORY
  %loadMem_4671a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 33
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %2445 to i64*
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 1
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %EAX.i565 = bitcast %union.anon* %2448 to i32*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 5
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %2451 to i64*
  %2452 = load i32, i32* %EAX.i565
  %2453 = zext i32 %2452 to i64
  %2454 = load i64, i64* %PC.i564
  %2455 = add i64 %2454, 3
  store i64 %2455, i64* %PC.i564
  %2456 = shl i64 %2453, 32
  %2457 = ashr exact i64 %2456, 32
  store i64 %2457, i64* %RCX.i566, align 8
  store %struct.Memory* %loadMem_4671a7, %struct.Memory** %MEMORY
  %loadMem_4671aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 33
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %2460 to i64*
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 5
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %RCX.i561 = bitcast %union.anon* %2463 to i64*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 11
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %RDI.i562 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 15
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %2469 to i64*
  %2470 = load i64, i64* %RBP.i563
  %2471 = load i64, i64* %RCX.i561
  %2472 = mul i64 %2471, 4
  %2473 = add i64 %2470, -680
  %2474 = add i64 %2473, %2472
  %2475 = load i64, i64* %PC.i560
  %2476 = add i64 %2475, 7
  store i64 %2476, i64* %PC.i560
  %2477 = inttoptr i64 %2474 to i32*
  %2478 = load i32, i32* %2477
  %2479 = zext i32 %2478 to i64
  store i64 %2479, i64* %RDI.i562, align 8
  store %struct.Memory* %loadMem_4671aa, %struct.Memory** %MEMORY
  %loadMem_4671b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 33
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 9
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RSI.i558 = bitcast %union.anon* %2485 to i64*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 15
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %RBP.i559 = bitcast %union.anon* %2488 to i64*
  %2489 = load i64, i64* %RBP.i559
  %2490 = sub i64 %2489, 20
  %2491 = load i64, i64* %PC.i557
  %2492 = add i64 %2491, 3
  store i64 %2492, i64* %PC.i557
  %2493 = inttoptr i64 %2490 to i32*
  %2494 = load i32, i32* %2493
  %2495 = zext i32 %2494 to i64
  store i64 %2495, i64* %RSI.i558, align 8
  store %struct.Memory* %loadMem_4671b1, %struct.Memory** %MEMORY
  %loadMem1_4671b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 33
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %2498 to i64*
  %2499 = load i64, i64* %PC.i556
  %2500 = add i64 %2499, -339732
  %2501 = load i64, i64* %PC.i556
  %2502 = add i64 %2501, 5
  %2503 = load i64, i64* %PC.i556
  %2504 = add i64 %2503, 5
  store i64 %2504, i64* %PC.i556
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2506 = load i64, i64* %2505, align 8
  %2507 = add i64 %2506, -8
  %2508 = inttoptr i64 %2507 to i64*
  store i64 %2502, i64* %2508
  store i64 %2507, i64* %2505, align 8
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2500, i64* %2509, align 8
  store %struct.Memory* %loadMem1_4671b4, %struct.Memory** %MEMORY
  %loadMem2_4671b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4671b4 = load i64, i64* %3
  %call2_4671b4 = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64 %loadPC_4671b4, %struct.Memory* %loadMem2_4671b4)
  store %struct.Memory* %call2_4671b4, %struct.Memory** %MEMORY
  %loadMem_4671b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 33
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %2512 to i64*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 1
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %EAX.i555 = bitcast %union.anon* %2515 to i32*
  %2516 = load i32, i32* %EAX.i555
  %2517 = zext i32 %2516 to i64
  %2518 = load i64, i64* %PC.i554
  %2519 = add i64 %2518, 3
  store i64 %2519, i64* %PC.i554
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2520, align 1
  %2521 = and i32 %2516, 255
  %2522 = call i32 @llvm.ctpop.i32(i32 %2521)
  %2523 = trunc i32 %2522 to i8
  %2524 = and i8 %2523, 1
  %2525 = xor i8 %2524, 1
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2525, i8* %2526, align 1
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2527, align 1
  %2528 = icmp eq i32 %2516, 0
  %2529 = zext i1 %2528 to i8
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2529, i8* %2530, align 1
  %2531 = lshr i32 %2516, 31
  %2532 = trunc i32 %2531 to i8
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2532, i8* %2533, align 1
  %2534 = lshr i32 %2516, 31
  %2535 = xor i32 %2531, %2534
  %2536 = add i32 %2535, %2534
  %2537 = icmp eq i32 %2536, 2
  %2538 = zext i1 %2537 to i8
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2538, i8* %2539, align 1
  store %struct.Memory* %loadMem_4671b9, %struct.Memory** %MEMORY
  %loadMem_4671bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 33
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %2542 to i64*
  %2543 = load i64, i64* %PC.i553
  %2544 = add i64 %2543, 269
  %2545 = load i64, i64* %PC.i553
  %2546 = add i64 %2545, 6
  %2547 = load i64, i64* %PC.i553
  %2548 = add i64 %2547, 6
  store i64 %2548, i64* %PC.i553
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2550 = load i8, i8* %2549, align 1
  %2551 = icmp eq i8 %2550, 0
  %2552 = zext i1 %2551 to i8
  store i8 %2552, i8* %BRANCH_TAKEN, align 1
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2554 = select i1 %2551, i64 %2544, i64 %2546
  store i64 %2554, i64* %2553, align 8
  store %struct.Memory* %loadMem_4671bc, %struct.Memory** %MEMORY
  %loadBr_4671bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4671bc = icmp eq i8 %loadBr_4671bc, 1
  br i1 %cmpBr_4671bc, label %block_.L_4672c9, label %block_4671c2

block_4671c2:                                     ; preds = %block_46719f
  %loadMem_4671c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 33
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %2557 to i64*
  %2558 = load i64, i64* %PC.i552
  %2559 = add i64 %2558, 5
  %2560 = load i64, i64* %PC.i552
  %2561 = add i64 %2560, 5
  store i64 %2561, i64* %PC.i552
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2559, i64* %2562, align 8
  store %struct.Memory* %loadMem_4671c2, %struct.Memory** %MEMORY
  br label %block_.L_4671c7

block_.L_4671c7:                                  ; preds = %block_4671c2
  %loadMem_4671c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2564 = getelementptr inbounds %struct.GPR, %struct.GPR* %2563, i32 0, i32 33
  %2565 = getelementptr inbounds %struct.Reg, %struct.Reg* %2564, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %2565 to i64*
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 15
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %2568 to i64*
  %2569 = load i64, i64* %RBP.i551
  %2570 = sub i64 %2569, 700
  %2571 = load i64, i64* %PC.i550
  %2572 = add i64 %2571, 10
  store i64 %2572, i64* %PC.i550
  %2573 = inttoptr i64 %2570 to i32*
  store i32 0, i32* %2573
  store %struct.Memory* %loadMem_4671c7, %struct.Memory** %MEMORY
  br label %block_.L_4671d1

block_.L_4671d1:                                  ; preds = %block_.L_467233, %block_.L_4671c7
  %loadMem_4671d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 33
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %2576 to i64*
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 1
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %RAX.i548 = bitcast %union.anon* %2579 to i64*
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 15
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %2582 to i64*
  %2583 = load i64, i64* %RBP.i549
  %2584 = sub i64 %2583, 700
  %2585 = load i64, i64* %PC.i547
  %2586 = add i64 %2585, 6
  store i64 %2586, i64* %PC.i547
  %2587 = inttoptr i64 %2584 to i32*
  %2588 = load i32, i32* %2587
  %2589 = zext i32 %2588 to i64
  store i64 %2589, i64* %RAX.i548, align 8
  store %struct.Memory* %loadMem_4671d1, %struct.Memory** %MEMORY
  %loadMem_4671d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 33
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %2592 to i64*
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 5
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %RCX.i545 = bitcast %union.anon* %2595 to i64*
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2597 = getelementptr inbounds %struct.GPR, %struct.GPR* %2596, i32 0, i32 15
  %2598 = getelementptr inbounds %struct.Reg, %struct.Reg* %2597, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %2598 to i64*
  %2599 = load i64, i64* %RBP.i546
  %2600 = sub i64 %2599, 16
  %2601 = load i64, i64* %PC.i544
  %2602 = add i64 %2601, 4
  store i64 %2602, i64* %PC.i544
  %2603 = inttoptr i64 %2600 to i64*
  %2604 = load i64, i64* %2603
  store i64 %2604, i64* %RCX.i545, align 8
  store %struct.Memory* %loadMem_4671d7, %struct.Memory** %MEMORY
  %loadMem_4671db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 1
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %EAX.i542 = bitcast %union.anon* %2610 to i32*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 5
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RCX.i543 = bitcast %union.anon* %2613 to i64*
  %2614 = load i32, i32* %EAX.i542
  %2615 = zext i32 %2614 to i64
  %2616 = load i64, i64* %RCX.i543
  %2617 = add i64 %2616, 400
  %2618 = load i64, i64* %PC.i541
  %2619 = add i64 %2618, 6
  store i64 %2619, i64* %PC.i541
  %2620 = inttoptr i64 %2617 to i32*
  %2621 = load i32, i32* %2620
  %2622 = sub i32 %2614, %2621
  %2623 = icmp ult i32 %2614, %2621
  %2624 = zext i1 %2623 to i8
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2624, i8* %2625, align 1
  %2626 = and i32 %2622, 255
  %2627 = call i32 @llvm.ctpop.i32(i32 %2626)
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  %2630 = xor i8 %2629, 1
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2630, i8* %2631, align 1
  %2632 = xor i32 %2621, %2614
  %2633 = xor i32 %2632, %2622
  %2634 = lshr i32 %2633, 4
  %2635 = trunc i32 %2634 to i8
  %2636 = and i8 %2635, 1
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2636, i8* %2637, align 1
  %2638 = icmp eq i32 %2622, 0
  %2639 = zext i1 %2638 to i8
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2639, i8* %2640, align 1
  %2641 = lshr i32 %2622, 31
  %2642 = trunc i32 %2641 to i8
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2642, i8* %2643, align 1
  %2644 = lshr i32 %2614, 31
  %2645 = lshr i32 %2621, 31
  %2646 = xor i32 %2645, %2644
  %2647 = xor i32 %2641, %2644
  %2648 = add i32 %2647, %2646
  %2649 = icmp eq i32 %2648, 2
  %2650 = zext i1 %2649 to i8
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2650, i8* %2651, align 1
  store %struct.Memory* %loadMem_4671db, %struct.Memory** %MEMORY
  %loadMem_4671e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 33
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %2654 to i64*
  %2655 = load i64, i64* %PC.i540
  %2656 = add i64 %2655, 102
  %2657 = load i64, i64* %PC.i540
  %2658 = add i64 %2657, 6
  %2659 = load i64, i64* %PC.i540
  %2660 = add i64 %2659, 6
  store i64 %2660, i64* %PC.i540
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2662 = load i8, i8* %2661, align 1
  %2663 = icmp ne i8 %2662, 0
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2665 = load i8, i8* %2664, align 1
  %2666 = icmp ne i8 %2665, 0
  %2667 = xor i1 %2663, %2666
  %2668 = xor i1 %2667, true
  %2669 = zext i1 %2668 to i8
  store i8 %2669, i8* %BRANCH_TAKEN, align 1
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2671 = select i1 %2667, i64 %2658, i64 %2656
  store i64 %2671, i64* %2670, align 8
  store %struct.Memory* %loadMem_4671e1, %struct.Memory** %MEMORY
  %loadBr_4671e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4671e1 = icmp eq i8 %loadBr_4671e1, 1
  br i1 %cmpBr_4671e1, label %block_.L_467247, label %block_4671e7

block_4671e7:                                     ; preds = %block_.L_4671d1
  %loadMem_4671e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 33
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %2674 to i64*
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 1
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %RAX.i539 = bitcast %union.anon* %2677 to i64*
  %2678 = load i64, i64* %PC.i538
  %2679 = add i64 %2678, 5
  store i64 %2679, i64* %PC.i538
  store i64 1, i64* %RAX.i539, align 8
  store %struct.Memory* %loadMem_4671e7, %struct.Memory** %MEMORY
  %loadMem_4671ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 33
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 5
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %RCX.i536 = bitcast %union.anon* %2685 to i64*
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 15
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %RBP.i537 = bitcast %union.anon* %2688 to i64*
  %2689 = load i64, i64* %RBP.i537
  %2690 = sub i64 %2689, 16
  %2691 = load i64, i64* %PC.i535
  %2692 = add i64 %2691, 4
  store i64 %2692, i64* %PC.i535
  %2693 = inttoptr i64 %2690 to i64*
  %2694 = load i64, i64* %2693
  store i64 %2694, i64* %RCX.i536, align 8
  store %struct.Memory* %loadMem_4671ec, %struct.Memory** %MEMORY
  %loadMem_4671f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 33
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %2697 to i64*
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 7
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %RDX.i533 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 15
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RBP.i534 = bitcast %union.anon* %2703 to i64*
  %2704 = load i64, i64* %RBP.i534
  %2705 = sub i64 %2704, 700
  %2706 = load i64, i64* %PC.i532
  %2707 = add i64 %2706, 7
  store i64 %2707, i64* %PC.i532
  %2708 = inttoptr i64 %2705 to i32*
  %2709 = load i32, i32* %2708
  %2710 = sext i32 %2709 to i64
  store i64 %2710, i64* %RDX.i533, align 8
  store %struct.Memory* %loadMem_4671f0, %struct.Memory** %MEMORY
  %loadMem_4671f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 33
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %2713 to i64*
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 5
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %RCX.i529 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 7
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %RDX.i530 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 9
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RSI.i531 = bitcast %union.anon* %2722 to i64*
  %2723 = load i64, i64* %RCX.i529
  %2724 = load i64, i64* %RDX.i530
  %2725 = mul i64 %2724, 4
  %2726 = add i64 %2725, %2723
  %2727 = load i64, i64* %PC.i528
  %2728 = add i64 %2727, 3
  store i64 %2728, i64* %PC.i528
  %2729 = inttoptr i64 %2726 to i32*
  %2730 = load i32, i32* %2729
  %2731 = zext i32 %2730 to i64
  store i64 %2731, i64* %RSI.i531, align 8
  store %struct.Memory* %loadMem_4671f7, %struct.Memory** %MEMORY
  %loadMem_4671fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 33
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 1
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 15
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %2740 to i64*
  %2741 = load i64, i64* %RAX.i526
  %2742 = load i64, i64* %RBP.i527
  %2743 = sub i64 %2742, 28
  %2744 = load i64, i64* %PC.i525
  %2745 = add i64 %2744, 3
  store i64 %2745, i64* %PC.i525
  %2746 = trunc i64 %2741 to i32
  %2747 = inttoptr i64 %2743 to i32*
  %2748 = load i32, i32* %2747
  %2749 = sub i32 %2746, %2748
  %2750 = zext i32 %2749 to i64
  store i64 %2750, i64* %RAX.i526, align 8
  %2751 = icmp ult i32 %2746, %2748
  %2752 = zext i1 %2751 to i8
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2752, i8* %2753, align 1
  %2754 = and i32 %2749, 255
  %2755 = call i32 @llvm.ctpop.i32(i32 %2754)
  %2756 = trunc i32 %2755 to i8
  %2757 = and i8 %2756, 1
  %2758 = xor i8 %2757, 1
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2758, i8* %2759, align 1
  %2760 = xor i32 %2748, %2746
  %2761 = xor i32 %2760, %2749
  %2762 = lshr i32 %2761, 4
  %2763 = trunc i32 %2762 to i8
  %2764 = and i8 %2763, 1
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2764, i8* %2765, align 1
  %2766 = icmp eq i32 %2749, 0
  %2767 = zext i1 %2766 to i8
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2767, i8* %2768, align 1
  %2769 = lshr i32 %2749, 31
  %2770 = trunc i32 %2769 to i8
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2770, i8* %2771, align 1
  %2772 = lshr i32 %2746, 31
  %2773 = lshr i32 %2748, 31
  %2774 = xor i32 %2773, %2772
  %2775 = xor i32 %2769, %2772
  %2776 = add i32 %2775, %2774
  %2777 = icmp eq i32 %2776, 2
  %2778 = zext i1 %2777 to i8
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2778, i8* %2779, align 1
  store %struct.Memory* %loadMem_4671fa, %struct.Memory** %MEMORY
  %loadMem_4671fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 33
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %2782 to i64*
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 1
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %EAX.i523 = bitcast %union.anon* %2785 to i32*
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 5
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %2788 to i64*
  %2789 = load i32, i32* %EAX.i523
  %2790 = zext i32 %2789 to i64
  %2791 = load i64, i64* %PC.i522
  %2792 = add i64 %2791, 3
  store i64 %2792, i64* %PC.i522
  %2793 = shl i64 %2790, 32
  %2794 = ashr exact i64 %2793, 32
  store i64 %2794, i64* %RCX.i524, align 8
  store %struct.Memory* %loadMem_4671fd, %struct.Memory** %MEMORY
  %loadMem_467200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2796 = getelementptr inbounds %struct.GPR, %struct.GPR* %2795, i32 0, i32 33
  %2797 = getelementptr inbounds %struct.Reg, %struct.Reg* %2796, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %2797 to i64*
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 9
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2800 to i32*
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 5
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %RCX.i520 = bitcast %union.anon* %2803 to i64*
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 15
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %2806 to i64*
  %2807 = load i32, i32* %ESI.i
  %2808 = zext i32 %2807 to i64
  %2809 = load i64, i64* %RBP.i521
  %2810 = load i64, i64* %RCX.i520
  %2811 = mul i64 %2810, 4
  %2812 = add i64 %2809, -680
  %2813 = add i64 %2812, %2811
  %2814 = load i64, i64* %PC.i519
  %2815 = add i64 %2814, 7
  store i64 %2815, i64* %PC.i519
  %2816 = inttoptr i64 %2813 to i32*
  %2817 = load i32, i32* %2816
  %2818 = sub i32 %2807, %2817
  %2819 = icmp ult i32 %2807, %2817
  %2820 = zext i1 %2819 to i8
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2820, i8* %2821, align 1
  %2822 = and i32 %2818, 255
  %2823 = call i32 @llvm.ctpop.i32(i32 %2822)
  %2824 = trunc i32 %2823 to i8
  %2825 = and i8 %2824, 1
  %2826 = xor i8 %2825, 1
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2826, i8* %2827, align 1
  %2828 = xor i32 %2817, %2807
  %2829 = xor i32 %2828, %2818
  %2830 = lshr i32 %2829, 4
  %2831 = trunc i32 %2830 to i8
  %2832 = and i8 %2831, 1
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2832, i8* %2833, align 1
  %2834 = icmp eq i32 %2818, 0
  %2835 = zext i1 %2834 to i8
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2835, i8* %2836, align 1
  %2837 = lshr i32 %2818, 31
  %2838 = trunc i32 %2837 to i8
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2838, i8* %2839, align 1
  %2840 = lshr i32 %2807, 31
  %2841 = lshr i32 %2817, 31
  %2842 = xor i32 %2841, %2840
  %2843 = xor i32 %2837, %2840
  %2844 = add i32 %2843, %2842
  %2845 = icmp eq i32 %2844, 2
  %2846 = zext i1 %2845 to i8
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2846, i8* %2847, align 1
  store %struct.Memory* %loadMem_467200, %struct.Memory** %MEMORY
  %loadMem_467207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 33
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %2850 to i64*
  %2851 = load i64, i64* %PC.i518
  %2852 = add i64 %2851, 39
  %2853 = load i64, i64* %PC.i518
  %2854 = add i64 %2853, 6
  %2855 = load i64, i64* %PC.i518
  %2856 = add i64 %2855, 6
  store i64 %2856, i64* %PC.i518
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2858 = load i8, i8* %2857, align 1
  %2859 = icmp eq i8 %2858, 0
  %2860 = zext i1 %2859 to i8
  store i8 %2860, i8* %BRANCH_TAKEN, align 1
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2862 = select i1 %2859, i64 %2852, i64 %2854
  store i64 %2862, i64* %2861, align 8
  store %struct.Memory* %loadMem_467207, %struct.Memory** %MEMORY
  %loadBr_467207 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467207 = icmp eq i8 %loadBr_467207, 1
  br i1 %cmpBr_467207, label %block_.L_46722e, label %block_46720d

block_46720d:                                     ; preds = %block_4671e7
  %loadMem_46720d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %2865 to i64*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 1
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %RAX.i516 = bitcast %union.anon* %2868 to i64*
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 15
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %2871 to i64*
  %2872 = load i64, i64* %RBP.i517
  %2873 = sub i64 %2872, 16
  %2874 = load i64, i64* %PC.i515
  %2875 = add i64 %2874, 4
  store i64 %2875, i64* %PC.i515
  %2876 = inttoptr i64 %2873 to i64*
  %2877 = load i64, i64* %2876
  store i64 %2877, i64* %RAX.i516, align 8
  store %struct.Memory* %loadMem_46720d, %struct.Memory** %MEMORY
  %loadMem_467211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 33
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %2880 to i64*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 5
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %RCX.i513 = bitcast %union.anon* %2883 to i64*
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 15
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %RBP.i514 = bitcast %union.anon* %2886 to i64*
  %2887 = load i64, i64* %RBP.i514
  %2888 = sub i64 %2887, 700
  %2889 = load i64, i64* %PC.i512
  %2890 = add i64 %2889, 7
  store i64 %2890, i64* %PC.i512
  %2891 = inttoptr i64 %2888 to i32*
  %2892 = load i32, i32* %2891
  %2893 = sext i32 %2892 to i64
  store i64 %2893, i64* %RCX.i513, align 8
  store %struct.Memory* %loadMem_467211, %struct.Memory** %MEMORY
  %loadMem_467218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 33
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %2896 to i64*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 1
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %2899 to i64*
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 5
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %RCX.i510 = bitcast %union.anon* %2902 to i64*
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 7
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %RDX.i511 = bitcast %union.anon* %2905 to i64*
  %2906 = load i64, i64* %RAX.i509
  %2907 = load i64, i64* %RCX.i510
  %2908 = mul i64 %2907, 4
  %2909 = add i64 %2906, 200
  %2910 = add i64 %2909, %2908
  %2911 = load i64, i64* %PC.i508
  %2912 = add i64 %2911, 7
  store i64 %2912, i64* %PC.i508
  %2913 = inttoptr i64 %2910 to i32*
  %2914 = load i32, i32* %2913
  %2915 = zext i32 %2914 to i64
  store i64 %2915, i64* %RDX.i511, align 8
  store %struct.Memory* %loadMem_467218, %struct.Memory** %MEMORY
  %loadMem_46721f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 33
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 7
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %RDX.i507 = bitcast %union.anon* %2921 to i64*
  %2922 = load i64, i64* %RDX.i507
  %2923 = load i64, i64* %PC.i506
  %2924 = add i64 %2923, 3
  store i64 %2924, i64* %PC.i506
  %2925 = trunc i64 %2922 to i32
  %2926 = zext i32 %2925 to i64
  store i64 %2926, i64* %RDX.i507, align 8
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2927, align 1
  %2928 = and i32 %2925, 255
  %2929 = call i32 @llvm.ctpop.i32(i32 %2928)
  %2930 = trunc i32 %2929 to i8
  %2931 = and i8 %2930, 1
  %2932 = xor i8 %2931, 1
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2932, i8* %2933, align 1
  %2934 = trunc i64 %2922 to i32
  %2935 = xor i32 %2934, %2925
  %2936 = lshr i32 %2935, 4
  %2937 = trunc i32 %2936 to i8
  %2938 = and i8 %2937, 1
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2938, i8* %2939, align 1
  %2940 = icmp eq i32 %2925, 0
  %2941 = zext i1 %2940 to i8
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2941, i8* %2942, align 1
  %2943 = lshr i32 %2925, 31
  %2944 = trunc i32 %2943 to i8
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2944, i8* %2945, align 1
  %2946 = lshr i32 %2925, 31
  %2947 = xor i32 %2943, %2946
  %2948 = add i32 %2947, %2943
  %2949 = icmp eq i32 %2948, 2
  %2950 = zext i1 %2949 to i8
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2950, i8* %2951, align 1
  store %struct.Memory* %loadMem_46721f, %struct.Memory** %MEMORY
  %loadMem_467222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 33
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %2954 to i64*
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 7
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %EDX.i503 = bitcast %union.anon* %2957 to i32*
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 1
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %2960 to i64*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 5
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %RCX.i505 = bitcast %union.anon* %2963 to i64*
  %2964 = load i64, i64* %RAX.i504
  %2965 = load i64, i64* %RCX.i505
  %2966 = mul i64 %2965, 4
  %2967 = add i64 %2964, 200
  %2968 = add i64 %2967, %2966
  %2969 = load i32, i32* %EDX.i503
  %2970 = zext i32 %2969 to i64
  %2971 = load i64, i64* %PC.i502
  %2972 = add i64 %2971, 7
  store i64 %2972, i64* %PC.i502
  %2973 = inttoptr i64 %2968 to i32*
  store i32 %2969, i32* %2973
  store %struct.Memory* %loadMem_467222, %struct.Memory** %MEMORY
  %loadMem_467229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 33
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %2976 to i64*
  %2977 = load i64, i64* %PC.i501
  %2978 = add i64 %2977, 30
  %2979 = load i64, i64* %PC.i501
  %2980 = add i64 %2979, 5
  store i64 %2980, i64* %PC.i501
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2978, i64* %2981, align 8
  store %struct.Memory* %loadMem_467229, %struct.Memory** %MEMORY
  br label %block_.L_467247

block_.L_46722e:                                  ; preds = %block_4671e7
  %loadMem_46722e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 33
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %2984 to i64*
  %2985 = load i64, i64* %PC.i500
  %2986 = add i64 %2985, 5
  %2987 = load i64, i64* %PC.i500
  %2988 = add i64 %2987, 5
  store i64 %2988, i64* %PC.i500
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2986, i64* %2989, align 8
  store %struct.Memory* %loadMem_46722e, %struct.Memory** %MEMORY
  br label %block_.L_467233

block_.L_467233:                                  ; preds = %block_.L_46722e
  %loadMem_467233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 33
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %2992 to i64*
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 1
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %2995 to i64*
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 15
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %2998 to i64*
  %2999 = load i64, i64* %RBP.i499
  %3000 = sub i64 %2999, 700
  %3001 = load i64, i64* %PC.i497
  %3002 = add i64 %3001, 6
  store i64 %3002, i64* %PC.i497
  %3003 = inttoptr i64 %3000 to i32*
  %3004 = load i32, i32* %3003
  %3005 = zext i32 %3004 to i64
  store i64 %3005, i64* %RAX.i498, align 8
  store %struct.Memory* %loadMem_467233, %struct.Memory** %MEMORY
  %loadMem_467239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 33
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %3008 to i64*
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 1
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %3011 to i64*
  %3012 = load i64, i64* %RAX.i496
  %3013 = load i64, i64* %PC.i495
  %3014 = add i64 %3013, 3
  store i64 %3014, i64* %PC.i495
  %3015 = trunc i64 %3012 to i32
  %3016 = add i32 1, %3015
  %3017 = zext i32 %3016 to i64
  store i64 %3017, i64* %RAX.i496, align 8
  %3018 = icmp ult i32 %3016, %3015
  %3019 = icmp ult i32 %3016, 1
  %3020 = or i1 %3018, %3019
  %3021 = zext i1 %3020 to i8
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3021, i8* %3022, align 1
  %3023 = and i32 %3016, 255
  %3024 = call i32 @llvm.ctpop.i32(i32 %3023)
  %3025 = trunc i32 %3024 to i8
  %3026 = and i8 %3025, 1
  %3027 = xor i8 %3026, 1
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3027, i8* %3028, align 1
  %3029 = xor i64 1, %3012
  %3030 = trunc i64 %3029 to i32
  %3031 = xor i32 %3030, %3016
  %3032 = lshr i32 %3031, 4
  %3033 = trunc i32 %3032 to i8
  %3034 = and i8 %3033, 1
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3034, i8* %3035, align 1
  %3036 = icmp eq i32 %3016, 0
  %3037 = zext i1 %3036 to i8
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3037, i8* %3038, align 1
  %3039 = lshr i32 %3016, 31
  %3040 = trunc i32 %3039 to i8
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3040, i8* %3041, align 1
  %3042 = lshr i32 %3015, 31
  %3043 = xor i32 %3039, %3042
  %3044 = add i32 %3043, %3039
  %3045 = icmp eq i32 %3044, 2
  %3046 = zext i1 %3045 to i8
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3046, i8* %3047, align 1
  store %struct.Memory* %loadMem_467239, %struct.Memory** %MEMORY
  %loadMem_46723c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 33
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %3050 to i64*
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 1
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %EAX.i493 = bitcast %union.anon* %3053 to i32*
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 15
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %3056 to i64*
  %3057 = load i64, i64* %RBP.i494
  %3058 = sub i64 %3057, 700
  %3059 = load i32, i32* %EAX.i493
  %3060 = zext i32 %3059 to i64
  %3061 = load i64, i64* %PC.i492
  %3062 = add i64 %3061, 6
  store i64 %3062, i64* %PC.i492
  %3063 = inttoptr i64 %3058 to i32*
  store i32 %3059, i32* %3063
  store %struct.Memory* %loadMem_46723c, %struct.Memory** %MEMORY
  %loadMem_467242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 33
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %3066 to i64*
  %3067 = load i64, i64* %PC.i491
  %3068 = add i64 %3067, -113
  %3069 = load i64, i64* %PC.i491
  %3070 = add i64 %3069, 5
  store i64 %3070, i64* %PC.i491
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3068, i64* %3071, align 8
  store %struct.Memory* %loadMem_467242, %struct.Memory** %MEMORY
  br label %block_.L_4671d1

block_.L_467247:                                  ; preds = %block_46720d, %block_.L_4671d1
  %loadMem_467247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 33
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %3074 to i64*
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 1
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %3077 to i64*
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 15
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %3080 to i64*
  %3081 = load i64, i64* %RBP.i490
  %3082 = sub i64 %3081, 700
  %3083 = load i64, i64* %PC.i488
  %3084 = add i64 %3083, 6
  store i64 %3084, i64* %PC.i488
  %3085 = inttoptr i64 %3082 to i32*
  %3086 = load i32, i32* %3085
  %3087 = zext i32 %3086 to i64
  store i64 %3087, i64* %RAX.i489, align 8
  store %struct.Memory* %loadMem_467247, %struct.Memory** %MEMORY
  %loadMem_46724d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 33
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %3090 to i64*
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 5
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %3093 to i64*
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 15
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %3096 to i64*
  %3097 = load i64, i64* %RBP.i487
  %3098 = sub i64 %3097, 16
  %3099 = load i64, i64* %PC.i485
  %3100 = add i64 %3099, 4
  store i64 %3100, i64* %PC.i485
  %3101 = inttoptr i64 %3098 to i64*
  %3102 = load i64, i64* %3101
  store i64 %3102, i64* %RCX.i486, align 8
  store %struct.Memory* %loadMem_46724d, %struct.Memory** %MEMORY
  %loadMem_467251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 33
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %3105 to i64*
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 1
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %EAX.i483 = bitcast %union.anon* %3108 to i32*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 5
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %RCX.i484 = bitcast %union.anon* %3111 to i64*
  %3112 = load i32, i32* %EAX.i483
  %3113 = zext i32 %3112 to i64
  %3114 = load i64, i64* %RCX.i484
  %3115 = add i64 %3114, 400
  %3116 = load i64, i64* %PC.i482
  %3117 = add i64 %3116, 6
  store i64 %3117, i64* %PC.i482
  %3118 = inttoptr i64 %3115 to i32*
  %3119 = load i32, i32* %3118
  %3120 = sub i32 %3112, %3119
  %3121 = icmp ult i32 %3112, %3119
  %3122 = zext i1 %3121 to i8
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3122, i8* %3123, align 1
  %3124 = and i32 %3120, 255
  %3125 = call i32 @llvm.ctpop.i32(i32 %3124)
  %3126 = trunc i32 %3125 to i8
  %3127 = and i8 %3126, 1
  %3128 = xor i8 %3127, 1
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3128, i8* %3129, align 1
  %3130 = xor i32 %3119, %3112
  %3131 = xor i32 %3130, %3120
  %3132 = lshr i32 %3131, 4
  %3133 = trunc i32 %3132 to i8
  %3134 = and i8 %3133, 1
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3134, i8* %3135, align 1
  %3136 = icmp eq i32 %3120, 0
  %3137 = zext i1 %3136 to i8
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3137, i8* %3138, align 1
  %3139 = lshr i32 %3120, 31
  %3140 = trunc i32 %3139 to i8
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3140, i8* %3141, align 1
  %3142 = lshr i32 %3112, 31
  %3143 = lshr i32 %3119, 31
  %3144 = xor i32 %3143, %3142
  %3145 = xor i32 %3139, %3142
  %3146 = add i32 %3145, %3144
  %3147 = icmp eq i32 %3146, 2
  %3148 = zext i1 %3147 to i8
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3148, i8* %3149, align 1
  store %struct.Memory* %loadMem_467251, %struct.Memory** %MEMORY
  %loadMem_467257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3151 = getelementptr inbounds %struct.GPR, %struct.GPR* %3150, i32 0, i32 33
  %3152 = getelementptr inbounds %struct.Reg, %struct.Reg* %3151, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %3152 to i64*
  %3153 = load i64, i64* %PC.i481
  %3154 = add i64 %3153, 104
  %3155 = load i64, i64* %PC.i481
  %3156 = add i64 %3155, 6
  %3157 = load i64, i64* %PC.i481
  %3158 = add i64 %3157, 6
  store i64 %3158, i64* %PC.i481
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3160 = load i8, i8* %3159, align 1
  %3161 = icmp eq i8 %3160, 0
  %3162 = zext i1 %3161 to i8
  store i8 %3162, i8* %BRANCH_TAKEN, align 1
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3164 = select i1 %3161, i64 %3154, i64 %3156
  store i64 %3164, i64* %3163, align 8
  store %struct.Memory* %loadMem_467257, %struct.Memory** %MEMORY
  %loadBr_467257 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467257 = icmp eq i8 %loadBr_467257, 1
  br i1 %cmpBr_467257, label %block_.L_4672bf, label %block_46725d

block_46725d:                                     ; preds = %block_.L_467247
  %loadMem_46725d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 33
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %3167 to i64*
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 1
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %3170 to i64*
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 15
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %3173 to i64*
  %3174 = load i64, i64* %RBP.i480
  %3175 = sub i64 %3174, 16
  %3176 = load i64, i64* %PC.i478
  %3177 = add i64 %3176, 4
  store i64 %3177, i64* %PC.i478
  %3178 = inttoptr i64 %3175 to i64*
  %3179 = load i64, i64* %3178
  store i64 %3179, i64* %RAX.i479, align 8
  store %struct.Memory* %loadMem_46725d, %struct.Memory** %MEMORY
  %loadMem_467261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 33
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %3182 to i64*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 1
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %3185 to i64*
  %3186 = load i64, i64* %RAX.i477
  %3187 = add i64 %3186, 400
  %3188 = load i64, i64* %PC.i476
  %3189 = add i64 %3188, 7
  store i64 %3189, i64* %PC.i476
  %3190 = inttoptr i64 %3187 to i32*
  %3191 = load i32, i32* %3190
  %3192 = sub i32 %3191, 50
  %3193 = icmp ult i32 %3191, 50
  %3194 = zext i1 %3193 to i8
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3194, i8* %3195, align 1
  %3196 = and i32 %3192, 255
  %3197 = call i32 @llvm.ctpop.i32(i32 %3196)
  %3198 = trunc i32 %3197 to i8
  %3199 = and i8 %3198, 1
  %3200 = xor i8 %3199, 1
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3200, i8* %3201, align 1
  %3202 = xor i32 %3191, 50
  %3203 = xor i32 %3202, %3192
  %3204 = lshr i32 %3203, 4
  %3205 = trunc i32 %3204 to i8
  %3206 = and i8 %3205, 1
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3206, i8* %3207, align 1
  %3208 = icmp eq i32 %3192, 0
  %3209 = zext i1 %3208 to i8
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3209, i8* %3210, align 1
  %3211 = lshr i32 %3192, 31
  %3212 = trunc i32 %3211 to i8
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3212, i8* %3213, align 1
  %3214 = lshr i32 %3191, 31
  %3215 = xor i32 %3211, %3214
  %3216 = add i32 %3215, %3214
  %3217 = icmp eq i32 %3216, 2
  %3218 = zext i1 %3217 to i8
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3218, i8* %3219, align 1
  store %struct.Memory* %loadMem_467261, %struct.Memory** %MEMORY
  %loadMem_467268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 33
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %3222 to i64*
  %3223 = load i64, i64* %PC.i475
  %3224 = add i64 %3223, 87
  %3225 = load i64, i64* %PC.i475
  %3226 = add i64 %3225, 6
  %3227 = load i64, i64* %PC.i475
  %3228 = add i64 %3227, 6
  store i64 %3228, i64* %PC.i475
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3230 = load i8, i8* %3229, align 1
  %3231 = icmp ne i8 %3230, 0
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3233 = load i8, i8* %3232, align 1
  %3234 = icmp ne i8 %3233, 0
  %3235 = xor i1 %3231, %3234
  %3236 = xor i1 %3235, true
  %3237 = zext i1 %3236 to i8
  store i8 %3237, i8* %BRANCH_TAKEN, align 1
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3239 = select i1 %3235, i64 %3226, i64 %3224
  store i64 %3239, i64* %3238, align 8
  store %struct.Memory* %loadMem_467268, %struct.Memory** %MEMORY
  %loadBr_467268 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467268 = icmp eq i8 %loadBr_467268, 1
  br i1 %cmpBr_467268, label %block_.L_4672bf, label %block_46726e

block_46726e:                                     ; preds = %block_46725d
  %loadMem_46726e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 33
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 1
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %3245 to i64*
  %3246 = load i64, i64* %PC.i473
  %3247 = add i64 %3246, 5
  store i64 %3247, i64* %PC.i473
  store i64 1, i64* %RAX.i474, align 8
  store %struct.Memory* %loadMem_46726e, %struct.Memory** %MEMORY
  %loadMem_467273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 33
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %3250 to i64*
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 1
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %RAX.i471 = bitcast %union.anon* %3253 to i64*
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 15
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %3256 to i64*
  %3257 = load i64, i64* %RAX.i471
  %3258 = load i64, i64* %RBP.i472
  %3259 = sub i64 %3258, 28
  %3260 = load i64, i64* %PC.i470
  %3261 = add i64 %3260, 3
  store i64 %3261, i64* %PC.i470
  %3262 = trunc i64 %3257 to i32
  %3263 = inttoptr i64 %3259 to i32*
  %3264 = load i32, i32* %3263
  %3265 = sub i32 %3262, %3264
  %3266 = zext i32 %3265 to i64
  store i64 %3266, i64* %RAX.i471, align 8
  %3267 = icmp ult i32 %3262, %3264
  %3268 = zext i1 %3267 to i8
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3268, i8* %3269, align 1
  %3270 = and i32 %3265, 255
  %3271 = call i32 @llvm.ctpop.i32(i32 %3270)
  %3272 = trunc i32 %3271 to i8
  %3273 = and i8 %3272, 1
  %3274 = xor i8 %3273, 1
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3274, i8* %3275, align 1
  %3276 = xor i32 %3264, %3262
  %3277 = xor i32 %3276, %3265
  %3278 = lshr i32 %3277, 4
  %3279 = trunc i32 %3278 to i8
  %3280 = and i8 %3279, 1
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3280, i8* %3281, align 1
  %3282 = icmp eq i32 %3265, 0
  %3283 = zext i1 %3282 to i8
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3283, i8* %3284, align 1
  %3285 = lshr i32 %3265, 31
  %3286 = trunc i32 %3285 to i8
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3286, i8* %3287, align 1
  %3288 = lshr i32 %3262, 31
  %3289 = lshr i32 %3264, 31
  %3290 = xor i32 %3289, %3288
  %3291 = xor i32 %3285, %3288
  %3292 = add i32 %3291, %3290
  %3293 = icmp eq i32 %3292, 2
  %3294 = zext i1 %3293 to i8
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3294, i8* %3295, align 1
  store %struct.Memory* %loadMem_467273, %struct.Memory** %MEMORY
  %loadMem_467276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 33
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %3298 to i64*
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 1
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %EAX.i468 = bitcast %union.anon* %3301 to i32*
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 5
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %RCX.i469 = bitcast %union.anon* %3304 to i64*
  %3305 = load i32, i32* %EAX.i468
  %3306 = zext i32 %3305 to i64
  %3307 = load i64, i64* %PC.i467
  %3308 = add i64 %3307, 3
  store i64 %3308, i64* %PC.i467
  %3309 = shl i64 %3306, 32
  %3310 = ashr exact i64 %3309, 32
  store i64 %3310, i64* %RCX.i469, align 8
  store %struct.Memory* %loadMem_467276, %struct.Memory** %MEMORY
  %loadMem_467279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 33
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %3313 to i64*
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 1
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %3316 to i64*
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 5
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %RCX.i465 = bitcast %union.anon* %3319 to i64*
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 15
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %3322 to i64*
  %3323 = load i64, i64* %RBP.i466
  %3324 = load i64, i64* %RCX.i465
  %3325 = mul i64 %3324, 4
  %3326 = add i64 %3323, -680
  %3327 = add i64 %3326, %3325
  %3328 = load i64, i64* %PC.i463
  %3329 = add i64 %3328, 7
  store i64 %3329, i64* %PC.i463
  %3330 = inttoptr i64 %3327 to i32*
  %3331 = load i32, i32* %3330
  %3332 = zext i32 %3331 to i64
  store i64 %3332, i64* %RAX.i464, align 8
  store %struct.Memory* %loadMem_467279, %struct.Memory** %MEMORY
  %loadMem_467280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 33
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %3335 to i64*
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 5
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %RCX.i461 = bitcast %union.anon* %3338 to i64*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 15
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %3341 to i64*
  %3342 = load i64, i64* %RBP.i462
  %3343 = sub i64 %3342, 16
  %3344 = load i64, i64* %PC.i460
  %3345 = add i64 %3344, 4
  store i64 %3345, i64* %PC.i460
  %3346 = inttoptr i64 %3343 to i64*
  %3347 = load i64, i64* %3346
  store i64 %3347, i64* %RCX.i461, align 8
  store %struct.Memory* %loadMem_467280, %struct.Memory** %MEMORY
  %loadMem_467284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 33
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %3350 to i64*
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 7
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %RDX.i458 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 15
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %3356 to i64*
  %3357 = load i64, i64* %RBP.i459
  %3358 = sub i64 %3357, 16
  %3359 = load i64, i64* %PC.i457
  %3360 = add i64 %3359, 4
  store i64 %3360, i64* %PC.i457
  %3361 = inttoptr i64 %3358 to i64*
  %3362 = load i64, i64* %3361
  store i64 %3362, i64* %RDX.i458, align 8
  store %struct.Memory* %loadMem_467284, %struct.Memory** %MEMORY
  %loadMem_467288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 33
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %3365 to i64*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 7
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %RDX.i456 = bitcast %union.anon* %3368 to i64*
  %3369 = load i64, i64* %RDX.i456
  %3370 = add i64 %3369, 400
  %3371 = load i64, i64* %PC.i455
  %3372 = add i64 %3371, 7
  store i64 %3372, i64* %PC.i455
  %3373 = inttoptr i64 %3370 to i32*
  %3374 = load i32, i32* %3373
  %3375 = sext i32 %3374 to i64
  store i64 %3375, i64* %RDX.i456, align 8
  store %struct.Memory* %loadMem_467288, %struct.Memory** %MEMORY
  %loadMem_46728f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 33
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %3378 to i64*
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 1
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %EAX.i452 = bitcast %union.anon* %3381 to i32*
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 5
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %RCX.i453 = bitcast %union.anon* %3384 to i64*
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 7
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %RDX.i454 = bitcast %union.anon* %3387 to i64*
  %3388 = load i64, i64* %RCX.i453
  %3389 = load i64, i64* %RDX.i454
  %3390 = mul i64 %3389, 4
  %3391 = add i64 %3390, %3388
  %3392 = load i32, i32* %EAX.i452
  %3393 = zext i32 %3392 to i64
  %3394 = load i64, i64* %PC.i451
  %3395 = add i64 %3394, 3
  store i64 %3395, i64* %PC.i451
  %3396 = inttoptr i64 %3391 to i32*
  store i32 %3392, i32* %3396
  store %struct.Memory* %loadMem_46728f, %struct.Memory** %MEMORY
  %loadMem_467292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 33
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %3399 to i64*
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 5
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %RCX.i449 = bitcast %union.anon* %3402 to i64*
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 15
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %3405 to i64*
  %3406 = load i64, i64* %RBP.i450
  %3407 = sub i64 %3406, 16
  %3408 = load i64, i64* %PC.i448
  %3409 = add i64 %3408, 4
  store i64 %3409, i64* %PC.i448
  %3410 = inttoptr i64 %3407 to i64*
  %3411 = load i64, i64* %3410
  store i64 %3411, i64* %RCX.i449, align 8
  store %struct.Memory* %loadMem_467292, %struct.Memory** %MEMORY
  %loadMem_467296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3413 = getelementptr inbounds %struct.GPR, %struct.GPR* %3412, i32 0, i32 33
  %3414 = getelementptr inbounds %struct.Reg, %struct.Reg* %3413, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %3414 to i64*
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3416 = getelementptr inbounds %struct.GPR, %struct.GPR* %3415, i32 0, i32 7
  %3417 = getelementptr inbounds %struct.Reg, %struct.Reg* %3416, i32 0, i32 0
  %RDX.i446 = bitcast %union.anon* %3417 to i64*
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 15
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %3420 to i64*
  %3421 = load i64, i64* %RBP.i447
  %3422 = sub i64 %3421, 16
  %3423 = load i64, i64* %PC.i445
  %3424 = add i64 %3423, 4
  store i64 %3424, i64* %PC.i445
  %3425 = inttoptr i64 %3422 to i64*
  %3426 = load i64, i64* %3425
  store i64 %3426, i64* %RDX.i446, align 8
  store %struct.Memory* %loadMem_467296, %struct.Memory** %MEMORY
  %loadMem_46729a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3428 = getelementptr inbounds %struct.GPR, %struct.GPR* %3427, i32 0, i32 33
  %3429 = getelementptr inbounds %struct.Reg, %struct.Reg* %3428, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %3429 to i64*
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3431 = getelementptr inbounds %struct.GPR, %struct.GPR* %3430, i32 0, i32 7
  %3432 = getelementptr inbounds %struct.Reg, %struct.Reg* %3431, i32 0, i32 0
  %RDX.i444 = bitcast %union.anon* %3432 to i64*
  %3433 = load i64, i64* %RDX.i444
  %3434 = add i64 %3433, 400
  %3435 = load i64, i64* %PC.i443
  %3436 = add i64 %3435, 7
  store i64 %3436, i64* %PC.i443
  %3437 = inttoptr i64 %3434 to i32*
  %3438 = load i32, i32* %3437
  %3439 = sext i32 %3438 to i64
  store i64 %3439, i64* %RDX.i444, align 8
  store %struct.Memory* %loadMem_46729a, %struct.Memory** %MEMORY
  %loadMem_4672a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 33
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %3442 to i64*
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 5
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %3445 to i64*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 7
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %RDX.i442 = bitcast %union.anon* %3448 to i64*
  %3449 = load i64, i64* %RCX.i441
  %3450 = load i64, i64* %RDX.i442
  %3451 = mul i64 %3450, 4
  %3452 = add i64 %3449, 200
  %3453 = add i64 %3452, %3451
  %3454 = load i64, i64* %PC.i440
  %3455 = add i64 %3454, 11
  store i64 %3455, i64* %PC.i440
  %3456 = inttoptr i64 %3453 to i32*
  store i32 0, i32* %3456
  store %struct.Memory* %loadMem_4672a1, %struct.Memory** %MEMORY
  %loadMem_4672ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3458 = getelementptr inbounds %struct.GPR, %struct.GPR* %3457, i32 0, i32 33
  %3459 = getelementptr inbounds %struct.Reg, %struct.Reg* %3458, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %3459 to i64*
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3461 = getelementptr inbounds %struct.GPR, %struct.GPR* %3460, i32 0, i32 5
  %3462 = getelementptr inbounds %struct.Reg, %struct.Reg* %3461, i32 0, i32 0
  %RCX.i438 = bitcast %union.anon* %3462 to i64*
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 15
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %3465 to i64*
  %3466 = load i64, i64* %RBP.i439
  %3467 = sub i64 %3466, 16
  %3468 = load i64, i64* %PC.i437
  %3469 = add i64 %3468, 4
  store i64 %3469, i64* %PC.i437
  %3470 = inttoptr i64 %3467 to i64*
  %3471 = load i64, i64* %3470
  store i64 %3471, i64* %RCX.i438, align 8
  store %struct.Memory* %loadMem_4672ac, %struct.Memory** %MEMORY
  %loadMem_4672b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 33
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %3474 to i64*
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 1
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %3477 to i64*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 5
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %RCX.i436 = bitcast %union.anon* %3480 to i64*
  %3481 = load i64, i64* %RCX.i436
  %3482 = add i64 %3481, 400
  %3483 = load i64, i64* %PC.i434
  %3484 = add i64 %3483, 6
  store i64 %3484, i64* %PC.i434
  %3485 = inttoptr i64 %3482 to i32*
  %3486 = load i32, i32* %3485
  %3487 = zext i32 %3486 to i64
  store i64 %3487, i64* %RAX.i435, align 8
  store %struct.Memory* %loadMem_4672b0, %struct.Memory** %MEMORY
  %loadMem_4672b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 33
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %3490 to i64*
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 1
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %3493 to i64*
  %3494 = load i64, i64* %RAX.i433
  %3495 = load i64, i64* %PC.i432
  %3496 = add i64 %3495, 3
  store i64 %3496, i64* %PC.i432
  %3497 = trunc i64 %3494 to i32
  %3498 = add i32 1, %3497
  %3499 = zext i32 %3498 to i64
  store i64 %3499, i64* %RAX.i433, align 8
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
  store %struct.Memory* %loadMem_4672b6, %struct.Memory** %MEMORY
  %loadMem_4672b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 33
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %3532 to i64*
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3534 = getelementptr inbounds %struct.GPR, %struct.GPR* %3533, i32 0, i32 1
  %3535 = getelementptr inbounds %struct.Reg, %struct.Reg* %3534, i32 0, i32 0
  %EAX.i430 = bitcast %union.anon* %3535 to i32*
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 5
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %RCX.i431 = bitcast %union.anon* %3538 to i64*
  %3539 = load i64, i64* %RCX.i431
  %3540 = add i64 %3539, 400
  %3541 = load i32, i32* %EAX.i430
  %3542 = zext i32 %3541 to i64
  %3543 = load i64, i64* %PC.i429
  %3544 = add i64 %3543, 6
  store i64 %3544, i64* %PC.i429
  %3545 = inttoptr i64 %3540 to i32*
  store i32 %3541, i32* %3545
  store %struct.Memory* %loadMem_4672b9, %struct.Memory** %MEMORY
  br label %block_.L_4672bf

block_.L_4672bf:                                  ; preds = %block_46726e, %block_46725d, %block_.L_467247
  %loadMem_4672bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 33
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %3548 to i64*
  %3549 = load i64, i64* %PC.i428
  %3550 = add i64 %3549, 5
  %3551 = load i64, i64* %PC.i428
  %3552 = add i64 %3551, 5
  store i64 %3552, i64* %PC.i428
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3550, i64* %3553, align 8
  store %struct.Memory* %loadMem_4672bf, %struct.Memory** %MEMORY
  br label %block_.L_4672c4

block_.L_4672c4:                                  ; preds = %block_.L_4672bf
  %loadMem_4672c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 33
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %3556 to i64*
  %3557 = load i64, i64* %PC.i427
  %3558 = add i64 %3557, 5
  %3559 = load i64, i64* %PC.i427
  %3560 = add i64 %3559, 5
  store i64 %3560, i64* %PC.i427
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3558, i64* %3561, align 8
  store %struct.Memory* %loadMem_4672c4, %struct.Memory** %MEMORY
  br label %block_.L_4672c9

block_.L_4672c9:                                  ; preds = %block_.L_4672c4, %block_46719f, %block_46717a
  %loadMem_4672c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 33
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %3564 to i64*
  %3565 = load i64, i64* %PC.i426
  %3566 = add i64 %3565, 5
  %3567 = load i64, i64* %PC.i426
  %3568 = add i64 %3567, 5
  store i64 %3568, i64* %PC.i426
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3566, i64* %3569, align 8
  store %struct.Memory* %loadMem_4672c9, %struct.Memory** %MEMORY
  br label %block_.L_4672ce

block_.L_4672ce:                                  ; preds = %block_.L_4672c9
  %loadMem_4672ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 33
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %3572 to i64*
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 1
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %3575 to i64*
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 15
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %3578 to i64*
  %3579 = load i64, i64* %RBP.i425
  %3580 = sub i64 %3579, 28
  %3581 = load i64, i64* %PC.i423
  %3582 = add i64 %3581, 3
  store i64 %3582, i64* %PC.i423
  %3583 = inttoptr i64 %3580 to i32*
  %3584 = load i32, i32* %3583
  %3585 = zext i32 %3584 to i64
  store i64 %3585, i64* %RAX.i424, align 8
  store %struct.Memory* %loadMem_4672ce, %struct.Memory** %MEMORY
  %loadMem_4672d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 33
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %3588 to i64*
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 1
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %RAX.i422 = bitcast %union.anon* %3591 to i64*
  %3592 = load i64, i64* %RAX.i422
  %3593 = load i64, i64* %PC.i421
  %3594 = add i64 %3593, 3
  store i64 %3594, i64* %PC.i421
  %3595 = trunc i64 %3592 to i32
  %3596 = add i32 1, %3595
  %3597 = zext i32 %3596 to i64
  store i64 %3597, i64* %RAX.i422, align 8
  %3598 = icmp ult i32 %3596, %3595
  %3599 = icmp ult i32 %3596, 1
  %3600 = or i1 %3598, %3599
  %3601 = zext i1 %3600 to i8
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3601, i8* %3602, align 1
  %3603 = and i32 %3596, 255
  %3604 = call i32 @llvm.ctpop.i32(i32 %3603)
  %3605 = trunc i32 %3604 to i8
  %3606 = and i8 %3605, 1
  %3607 = xor i8 %3606, 1
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3607, i8* %3608, align 1
  %3609 = xor i64 1, %3592
  %3610 = trunc i64 %3609 to i32
  %3611 = xor i32 %3610, %3596
  %3612 = lshr i32 %3611, 4
  %3613 = trunc i32 %3612 to i8
  %3614 = and i8 %3613, 1
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3614, i8* %3615, align 1
  %3616 = icmp eq i32 %3596, 0
  %3617 = zext i1 %3616 to i8
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3617, i8* %3618, align 1
  %3619 = lshr i32 %3596, 31
  %3620 = trunc i32 %3619 to i8
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3620, i8* %3621, align 1
  %3622 = lshr i32 %3595, 31
  %3623 = xor i32 %3619, %3622
  %3624 = add i32 %3623, %3619
  %3625 = icmp eq i32 %3624, 2
  %3626 = zext i1 %3625 to i8
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3626, i8* %3627, align 1
  store %struct.Memory* %loadMem_4672d1, %struct.Memory** %MEMORY
  %loadMem_4672d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 33
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %3630 to i64*
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 1
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %EAX.i419 = bitcast %union.anon* %3633 to i32*
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 15
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %3636 to i64*
  %3637 = load i64, i64* %RBP.i420
  %3638 = sub i64 %3637, 28
  %3639 = load i32, i32* %EAX.i419
  %3640 = zext i32 %3639 to i64
  %3641 = load i64, i64* %PC.i418
  %3642 = add i64 %3641, 3
  store i64 %3642, i64* %PC.i418
  %3643 = inttoptr i64 %3638 to i32*
  store i32 %3639, i32* %3643
  store %struct.Memory* %loadMem_4672d4, %struct.Memory** %MEMORY
  %loadMem_4672d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 33
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %3646 to i64*
  %3647 = load i64, i64* %PC.i417
  %3648 = add i64 %3647, -359
  %3649 = load i64, i64* %PC.i417
  %3650 = add i64 %3649, 5
  store i64 %3650, i64* %PC.i417
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3648, i64* %3651, align 8
  store %struct.Memory* %loadMem_4672d7, %struct.Memory** %MEMORY
  br label %block_.L_467170

block_.L_4672dc:                                  ; preds = %block_.L_467170
  %loadMem_4672dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 33
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %3654 to i64*
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3656 = getelementptr inbounds %struct.GPR, %struct.GPR* %3655, i32 0, i32 1
  %3657 = getelementptr inbounds %struct.Reg, %struct.Reg* %3656, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %3657 to i64*
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 15
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %3660 to i64*
  %3661 = load i64, i64* %RBP.i416
  %3662 = sub i64 %3661, 680
  %3663 = load i64, i64* %PC.i414
  %3664 = add i64 %3663, 6
  store i64 %3664, i64* %PC.i414
  %3665 = inttoptr i64 %3662 to i32*
  %3666 = load i32, i32* %3665
  %3667 = zext i32 %3666 to i64
  store i64 %3667, i64* %RAX.i415, align 8
  store %struct.Memory* %loadMem_4672dc, %struct.Memory** %MEMORY
  %loadMem_4672e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3669 = getelementptr inbounds %struct.GPR, %struct.GPR* %3668, i32 0, i32 33
  %3670 = getelementptr inbounds %struct.Reg, %struct.Reg* %3669, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %3670 to i64*
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 5
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %RCX.i412 = bitcast %union.anon* %3673 to i64*
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 15
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %3676 to i64*
  %3677 = load i64, i64* %RBP.i413
  %3678 = sub i64 %3677, 676
  %3679 = load i64, i64* %PC.i411
  %3680 = add i64 %3679, 6
  store i64 %3680, i64* %PC.i411
  %3681 = inttoptr i64 %3678 to i32*
  %3682 = load i32, i32* %3681
  %3683 = zext i32 %3682 to i64
  store i64 %3683, i64* %RCX.i412, align 8
  store %struct.Memory* %loadMem_4672e2, %struct.Memory** %MEMORY
  %loadMem_4672e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 33
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %3686 to i64*
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 5
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %3689 to i64*
  %3690 = load i64, i64* %RCX.i410
  %3691 = load i64, i64* %PC.i409
  %3692 = add i64 %3691, 3
  store i64 %3692, i64* %PC.i409
  %3693 = trunc i64 %3690 to i32
  %3694 = add i32 20, %3693
  %3695 = zext i32 %3694 to i64
  store i64 %3695, i64* %RCX.i410, align 8
  %3696 = icmp ult i32 %3694, %3693
  %3697 = icmp ult i32 %3694, 20
  %3698 = or i1 %3696, %3697
  %3699 = zext i1 %3698 to i8
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3699, i8* %3700, align 1
  %3701 = and i32 %3694, 255
  %3702 = call i32 @llvm.ctpop.i32(i32 %3701)
  %3703 = trunc i32 %3702 to i8
  %3704 = and i8 %3703, 1
  %3705 = xor i8 %3704, 1
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3705, i8* %3706, align 1
  %3707 = xor i64 20, %3690
  %3708 = trunc i64 %3707 to i32
  %3709 = xor i32 %3708, %3694
  %3710 = lshr i32 %3709, 4
  %3711 = trunc i32 %3710 to i8
  %3712 = and i8 %3711, 1
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3712, i8* %3713, align 1
  %3714 = icmp eq i32 %3694, 0
  %3715 = zext i1 %3714 to i8
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3715, i8* %3716, align 1
  %3717 = lshr i32 %3694, 31
  %3718 = trunc i32 %3717 to i8
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3718, i8* %3719, align 1
  %3720 = lshr i32 %3693, 31
  %3721 = xor i32 %3717, %3720
  %3722 = add i32 %3721, %3717
  %3723 = icmp eq i32 %3722, 2
  %3724 = zext i1 %3723 to i8
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3724, i8* %3725, align 1
  store %struct.Memory* %loadMem_4672e8, %struct.Memory** %MEMORY
  %loadMem_4672eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 33
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %3728 to i64*
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 5
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %3731 to i64*
  %3732 = load i64, i64* %RCX.i408
  %3733 = load i64, i64* %PC.i407
  %3734 = add i64 %3733, 3
  store i64 %3734, i64* %PC.i407
  %3735 = trunc i64 %3732 to i32
  %3736 = sub i32 %3735, 1
  %3737 = zext i32 %3736 to i64
  store i64 %3737, i64* %RCX.i408, align 8
  %3738 = icmp ult i32 %3735, 1
  %3739 = zext i1 %3738 to i8
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3739, i8* %3740, align 1
  %3741 = and i32 %3736, 255
  %3742 = call i32 @llvm.ctpop.i32(i32 %3741)
  %3743 = trunc i32 %3742 to i8
  %3744 = and i8 %3743, 1
  %3745 = xor i8 %3744, 1
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3745, i8* %3746, align 1
  %3747 = xor i64 1, %3732
  %3748 = trunc i64 %3747 to i32
  %3749 = xor i32 %3748, %3736
  %3750 = lshr i32 %3749, 4
  %3751 = trunc i32 %3750 to i8
  %3752 = and i8 %3751, 1
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3752, i8* %3753, align 1
  %3754 = icmp eq i32 %3736, 0
  %3755 = zext i1 %3754 to i8
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3755, i8* %3756, align 1
  %3757 = lshr i32 %3736, 31
  %3758 = trunc i32 %3757 to i8
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3758, i8* %3759, align 1
  %3760 = lshr i32 %3735, 31
  %3761 = xor i32 %3757, %3760
  %3762 = add i32 %3761, %3760
  %3763 = icmp eq i32 %3762, 2
  %3764 = zext i1 %3763 to i8
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3764, i8* %3765, align 1
  store %struct.Memory* %loadMem_4672eb, %struct.Memory** %MEMORY
  %loadMem_4672ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 33
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %3768 to i64*
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 1
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %EAX.i405 = bitcast %union.anon* %3771 to i32*
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 5
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %ECX.i406 = bitcast %union.anon* %3774 to i32*
  %3775 = load i32, i32* %EAX.i405
  %3776 = zext i32 %3775 to i64
  %3777 = load i32, i32* %ECX.i406
  %3778 = zext i32 %3777 to i64
  %3779 = load i64, i64* %PC.i404
  %3780 = add i64 %3779, 2
  store i64 %3780, i64* %PC.i404
  %3781 = sub i32 %3775, %3777
  %3782 = icmp ult i32 %3775, %3777
  %3783 = zext i1 %3782 to i8
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3783, i8* %3784, align 1
  %3785 = and i32 %3781, 255
  %3786 = call i32 @llvm.ctpop.i32(i32 %3785)
  %3787 = trunc i32 %3786 to i8
  %3788 = and i8 %3787, 1
  %3789 = xor i8 %3788, 1
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3789, i8* %3790, align 1
  %3791 = xor i64 %3778, %3776
  %3792 = trunc i64 %3791 to i32
  %3793 = xor i32 %3792, %3781
  %3794 = lshr i32 %3793, 4
  %3795 = trunc i32 %3794 to i8
  %3796 = and i8 %3795, 1
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3796, i8* %3797, align 1
  %3798 = icmp eq i32 %3781, 0
  %3799 = zext i1 %3798 to i8
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3799, i8* %3800, align 1
  %3801 = lshr i32 %3781, 31
  %3802 = trunc i32 %3801 to i8
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3802, i8* %3803, align 1
  %3804 = lshr i32 %3775, 31
  %3805 = lshr i32 %3777, 31
  %3806 = xor i32 %3805, %3804
  %3807 = xor i32 %3801, %3804
  %3808 = add i32 %3807, %3806
  %3809 = icmp eq i32 %3808, 2
  %3810 = zext i1 %3809 to i8
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3810, i8* %3811, align 1
  store %struct.Memory* %loadMem_4672ee, %struct.Memory** %MEMORY
  %loadMem_4672f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 33
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %3814 to i64*
  %3815 = load i64, i64* %PC.i403
  %3816 = add i64 %3815, 89
  %3817 = load i64, i64* %PC.i403
  %3818 = add i64 %3817, 6
  %3819 = load i64, i64* %PC.i403
  %3820 = add i64 %3819, 6
  store i64 %3820, i64* %PC.i403
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3822 = load i8, i8* %3821, align 1
  store i8 %3822, i8* %BRANCH_TAKEN, align 1
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3824 = icmp ne i8 %3822, 0
  %3825 = select i1 %3824, i64 %3816, i64 %3818
  store i64 %3825, i64* %3823, align 8
  store %struct.Memory* %loadMem_4672f0, %struct.Memory** %MEMORY
  %loadBr_4672f0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4672f0 = icmp eq i8 %loadBr_4672f0, 1
  br i1 %cmpBr_4672f0, label %block_.L_467349, label %block_4672f6

block_4672f6:                                     ; preds = %block_.L_4672dc
  %loadMem_4672f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 33
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %3828 to i64*
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 1
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %3831 to i64*
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 15
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %3834 to i64*
  %3835 = load i64, i64* %RBP.i402
  %3836 = sub i64 %3835, 680
  %3837 = load i64, i64* %PC.i400
  %3838 = add i64 %3837, 6
  store i64 %3838, i64* %PC.i400
  %3839 = inttoptr i64 %3836 to i32*
  %3840 = load i32, i32* %3839
  %3841 = zext i32 %3840 to i64
  store i64 %3841, i64* %RAX.i401, align 8
  store %struct.Memory* %loadMem_4672f6, %struct.Memory** %MEMORY
  %loadMem_4672fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 33
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %3844 to i64*
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 5
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %RCX.i398 = bitcast %union.anon* %3847 to i64*
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 15
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %3850 to i64*
  %3851 = load i64, i64* %RBP.i399
  %3852 = sub i64 %3851, 676
  %3853 = load i64, i64* %PC.i397
  %3854 = add i64 %3853, 6
  store i64 %3854, i64* %PC.i397
  %3855 = inttoptr i64 %3852 to i32*
  %3856 = load i32, i32* %3855
  %3857 = zext i32 %3856 to i64
  store i64 %3857, i64* %RCX.i398, align 8
  store %struct.Memory* %loadMem_4672fc, %struct.Memory** %MEMORY
  %loadMem_467302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3859 = getelementptr inbounds %struct.GPR, %struct.GPR* %3858, i32 0, i32 33
  %3860 = getelementptr inbounds %struct.Reg, %struct.Reg* %3859, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %3860 to i64*
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 5
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %RCX.i396 = bitcast %union.anon* %3863 to i64*
  %3864 = load i64, i64* %RCX.i396
  %3865 = load i64, i64* %PC.i395
  %3866 = add i64 %3865, 3
  store i64 %3866, i64* %PC.i395
  %3867 = trunc i64 %3864 to i32
  %3868 = sub i32 %3867, 20
  %3869 = zext i32 %3868 to i64
  store i64 %3869, i64* %RCX.i396, align 8
  %3870 = icmp ult i32 %3867, 20
  %3871 = zext i1 %3870 to i8
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3871, i8* %3872, align 1
  %3873 = and i32 %3868, 255
  %3874 = call i32 @llvm.ctpop.i32(i32 %3873)
  %3875 = trunc i32 %3874 to i8
  %3876 = and i8 %3875, 1
  %3877 = xor i8 %3876, 1
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3877, i8* %3878, align 1
  %3879 = xor i64 20, %3864
  %3880 = trunc i64 %3879 to i32
  %3881 = xor i32 %3880, %3868
  %3882 = lshr i32 %3881, 4
  %3883 = trunc i32 %3882 to i8
  %3884 = and i8 %3883, 1
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3884, i8* %3885, align 1
  %3886 = icmp eq i32 %3868, 0
  %3887 = zext i1 %3886 to i8
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3887, i8* %3888, align 1
  %3889 = lshr i32 %3868, 31
  %3890 = trunc i32 %3889 to i8
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3890, i8* %3891, align 1
  %3892 = lshr i32 %3867, 31
  %3893 = xor i32 %3889, %3892
  %3894 = add i32 %3893, %3892
  %3895 = icmp eq i32 %3894, 2
  %3896 = zext i1 %3895 to i8
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3896, i8* %3897, align 1
  store %struct.Memory* %loadMem_467302, %struct.Memory** %MEMORY
  %loadMem_467305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 33
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %3900 to i64*
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 5
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %RCX.i394 = bitcast %union.anon* %3903 to i64*
  %3904 = load i64, i64* %RCX.i394
  %3905 = load i64, i64* %PC.i393
  %3906 = add i64 %3905, 3
  store i64 %3906, i64* %PC.i393
  %3907 = trunc i64 %3904 to i32
  %3908 = sub i32 %3907, 1
  %3909 = zext i32 %3908 to i64
  store i64 %3909, i64* %RCX.i394, align 8
  %3910 = icmp ult i32 %3907, 1
  %3911 = zext i1 %3910 to i8
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3911, i8* %3912, align 1
  %3913 = and i32 %3908, 255
  %3914 = call i32 @llvm.ctpop.i32(i32 %3913)
  %3915 = trunc i32 %3914 to i8
  %3916 = and i8 %3915, 1
  %3917 = xor i8 %3916, 1
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3917, i8* %3918, align 1
  %3919 = xor i64 1, %3904
  %3920 = trunc i64 %3919 to i32
  %3921 = xor i32 %3920, %3908
  %3922 = lshr i32 %3921, 4
  %3923 = trunc i32 %3922 to i8
  %3924 = and i8 %3923, 1
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3924, i8* %3925, align 1
  %3926 = icmp eq i32 %3908, 0
  %3927 = zext i1 %3926 to i8
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3927, i8* %3928, align 1
  %3929 = lshr i32 %3908, 31
  %3930 = trunc i32 %3929 to i8
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3930, i8* %3931, align 1
  %3932 = lshr i32 %3907, 31
  %3933 = xor i32 %3929, %3932
  %3934 = add i32 %3933, %3932
  %3935 = icmp eq i32 %3934, 2
  %3936 = zext i1 %3935 to i8
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3936, i8* %3937, align 1
  store %struct.Memory* %loadMem_467305, %struct.Memory** %MEMORY
  %loadMem_467308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 33
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %3940 to i64*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 1
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %EAX.i391 = bitcast %union.anon* %3943 to i32*
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 5
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %ECX.i392 = bitcast %union.anon* %3946 to i32*
  %3947 = load i32, i32* %EAX.i391
  %3948 = zext i32 %3947 to i64
  %3949 = load i32, i32* %ECX.i392
  %3950 = zext i32 %3949 to i64
  %3951 = load i64, i64* %PC.i390
  %3952 = add i64 %3951, 2
  store i64 %3952, i64* %PC.i390
  %3953 = sub i32 %3947, %3949
  %3954 = icmp ult i32 %3947, %3949
  %3955 = zext i1 %3954 to i8
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3955, i8* %3956, align 1
  %3957 = and i32 %3953, 255
  %3958 = call i32 @llvm.ctpop.i32(i32 %3957)
  %3959 = trunc i32 %3958 to i8
  %3960 = and i8 %3959, 1
  %3961 = xor i8 %3960, 1
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3961, i8* %3962, align 1
  %3963 = xor i64 %3950, %3948
  %3964 = trunc i64 %3963 to i32
  %3965 = xor i32 %3964, %3953
  %3966 = lshr i32 %3965, 4
  %3967 = trunc i32 %3966 to i8
  %3968 = and i8 %3967, 1
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3968, i8* %3969, align 1
  %3970 = icmp eq i32 %3953, 0
  %3971 = zext i1 %3970 to i8
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3971, i8* %3972, align 1
  %3973 = lshr i32 %3953, 31
  %3974 = trunc i32 %3973 to i8
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3974, i8* %3975, align 1
  %3976 = lshr i32 %3947, 31
  %3977 = lshr i32 %3949, 31
  %3978 = xor i32 %3977, %3976
  %3979 = xor i32 %3973, %3976
  %3980 = add i32 %3979, %3978
  %3981 = icmp eq i32 %3980, 2
  %3982 = zext i1 %3981 to i8
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3982, i8* %3983, align 1
  store %struct.Memory* %loadMem_467308, %struct.Memory** %MEMORY
  %loadMem_46730a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3985 = getelementptr inbounds %struct.GPR, %struct.GPR* %3984, i32 0, i32 33
  %3986 = getelementptr inbounds %struct.Reg, %struct.Reg* %3985, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %3986 to i64*
  %3987 = load i64, i64* %PC.i389
  %3988 = add i64 %3987, 63
  %3989 = load i64, i64* %PC.i389
  %3990 = add i64 %3989, 6
  %3991 = load i64, i64* %PC.i389
  %3992 = add i64 %3991, 6
  store i64 %3992, i64* %PC.i389
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3994 = load i8, i8* %3993, align 1
  store i8 %3994, i8* %BRANCH_TAKEN, align 1
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3996 = icmp ne i8 %3994, 0
  %3997 = select i1 %3996, i64 %3988, i64 %3990
  store i64 %3997, i64* %3995, align 8
  store %struct.Memory* %loadMem_46730a, %struct.Memory** %MEMORY
  %loadBr_46730a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46730a = icmp eq i8 %loadBr_46730a, 1
  br i1 %cmpBr_46730a, label %block_.L_467349, label %block_467310

block_467310:                                     ; preds = %block_4672f6
  %loadMem_467310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3999 = getelementptr inbounds %struct.GPR, %struct.GPR* %3998, i32 0, i32 33
  %4000 = getelementptr inbounds %struct.Reg, %struct.Reg* %3999, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %4000 to i64*
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4002 = getelementptr inbounds %struct.GPR, %struct.GPR* %4001, i32 0, i32 1
  %4003 = getelementptr inbounds %struct.Reg, %struct.Reg* %4002, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %4003 to i64*
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 15
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %4006 to i64*
  %4007 = load i64, i64* %RBP.i388
  %4008 = sub i64 %4007, 680
  %4009 = load i64, i64* %PC.i386
  %4010 = add i64 %4009, 6
  store i64 %4010, i64* %PC.i386
  %4011 = inttoptr i64 %4008 to i32*
  %4012 = load i32, i32* %4011
  %4013 = zext i32 %4012 to i64
  store i64 %4013, i64* %RAX.i387, align 8
  store %struct.Memory* %loadMem_467310, %struct.Memory** %MEMORY
  %loadMem_467316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4015 = getelementptr inbounds %struct.GPR, %struct.GPR* %4014, i32 0, i32 33
  %4016 = getelementptr inbounds %struct.Reg, %struct.Reg* %4015, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %4016 to i64*
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4018 = getelementptr inbounds %struct.GPR, %struct.GPR* %4017, i32 0, i32 5
  %4019 = getelementptr inbounds %struct.Reg, %struct.Reg* %4018, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %4019 to i64*
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 15
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %4022 to i64*
  %4023 = load i64, i64* %RBP.i385
  %4024 = sub i64 %4023, 676
  %4025 = load i64, i64* %PC.i383
  %4026 = add i64 %4025, 6
  store i64 %4026, i64* %PC.i383
  %4027 = inttoptr i64 %4024 to i32*
  %4028 = load i32, i32* %4027
  %4029 = zext i32 %4028 to i64
  store i64 %4029, i64* %RCX.i384, align 8
  store %struct.Memory* %loadMem_467316, %struct.Memory** %MEMORY
  %loadMem_46731c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 33
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %4032 to i64*
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 5
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %RCX.i382 = bitcast %union.anon* %4035 to i64*
  %4036 = load i64, i64* %RCX.i382
  %4037 = load i64, i64* %PC.i381
  %4038 = add i64 %4037, 3
  store i64 %4038, i64* %PC.i381
  %4039 = trunc i64 %4036 to i32
  %4040 = sub i32 %4039, 20
  %4041 = zext i32 %4040 to i64
  store i64 %4041, i64* %RCX.i382, align 8
  %4042 = icmp ult i32 %4039, 20
  %4043 = zext i1 %4042 to i8
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4043, i8* %4044, align 1
  %4045 = and i32 %4040, 255
  %4046 = call i32 @llvm.ctpop.i32(i32 %4045)
  %4047 = trunc i32 %4046 to i8
  %4048 = and i8 %4047, 1
  %4049 = xor i8 %4048, 1
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4049, i8* %4050, align 1
  %4051 = xor i64 20, %4036
  %4052 = trunc i64 %4051 to i32
  %4053 = xor i32 %4052, %4040
  %4054 = lshr i32 %4053, 4
  %4055 = trunc i32 %4054 to i8
  %4056 = and i8 %4055, 1
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4056, i8* %4057, align 1
  %4058 = icmp eq i32 %4040, 0
  %4059 = zext i1 %4058 to i8
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4059, i8* %4060, align 1
  %4061 = lshr i32 %4040, 31
  %4062 = trunc i32 %4061 to i8
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4062, i8* %4063, align 1
  %4064 = lshr i32 %4039, 31
  %4065 = xor i32 %4061, %4064
  %4066 = add i32 %4065, %4064
  %4067 = icmp eq i32 %4066, 2
  %4068 = zext i1 %4067 to i8
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4068, i8* %4069, align 1
  store %struct.Memory* %loadMem_46731c, %struct.Memory** %MEMORY
  %loadMem_46731f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 33
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %4072 to i64*
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 5
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %4075 to i64*
  %4076 = load i64, i64* %RCX.i380
  %4077 = load i64, i64* %PC.i379
  %4078 = add i64 %4077, 3
  store i64 %4078, i64* %PC.i379
  %4079 = trunc i64 %4076 to i32
  %4080 = add i32 1, %4079
  %4081 = zext i32 %4080 to i64
  store i64 %4081, i64* %RCX.i380, align 8
  %4082 = icmp ult i32 %4080, %4079
  %4083 = icmp ult i32 %4080, 1
  %4084 = or i1 %4082, %4083
  %4085 = zext i1 %4084 to i8
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4085, i8* %4086, align 1
  %4087 = and i32 %4080, 255
  %4088 = call i32 @llvm.ctpop.i32(i32 %4087)
  %4089 = trunc i32 %4088 to i8
  %4090 = and i8 %4089, 1
  %4091 = xor i8 %4090, 1
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4091, i8* %4092, align 1
  %4093 = xor i64 1, %4076
  %4094 = trunc i64 %4093 to i32
  %4095 = xor i32 %4094, %4080
  %4096 = lshr i32 %4095, 4
  %4097 = trunc i32 %4096 to i8
  %4098 = and i8 %4097, 1
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4098, i8* %4099, align 1
  %4100 = icmp eq i32 %4080, 0
  %4101 = zext i1 %4100 to i8
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4101, i8* %4102, align 1
  %4103 = lshr i32 %4080, 31
  %4104 = trunc i32 %4103 to i8
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4104, i8* %4105, align 1
  %4106 = lshr i32 %4079, 31
  %4107 = xor i32 %4103, %4106
  %4108 = add i32 %4107, %4103
  %4109 = icmp eq i32 %4108, 2
  %4110 = zext i1 %4109 to i8
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4110, i8* %4111, align 1
  store %struct.Memory* %loadMem_46731f, %struct.Memory** %MEMORY
  %loadMem_467322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 33
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %4114 to i64*
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 1
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %EAX.i377 = bitcast %union.anon* %4117 to i32*
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4119 = getelementptr inbounds %struct.GPR, %struct.GPR* %4118, i32 0, i32 5
  %4120 = getelementptr inbounds %struct.Reg, %struct.Reg* %4119, i32 0, i32 0
  %ECX.i378 = bitcast %union.anon* %4120 to i32*
  %4121 = load i32, i32* %EAX.i377
  %4122 = zext i32 %4121 to i64
  %4123 = load i32, i32* %ECX.i378
  %4124 = zext i32 %4123 to i64
  %4125 = load i64, i64* %PC.i376
  %4126 = add i64 %4125, 2
  store i64 %4126, i64* %PC.i376
  %4127 = sub i32 %4121, %4123
  %4128 = icmp ult i32 %4121, %4123
  %4129 = zext i1 %4128 to i8
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4129, i8* %4130, align 1
  %4131 = and i32 %4127, 255
  %4132 = call i32 @llvm.ctpop.i32(i32 %4131)
  %4133 = trunc i32 %4132 to i8
  %4134 = and i8 %4133, 1
  %4135 = xor i8 %4134, 1
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4135, i8* %4136, align 1
  %4137 = xor i64 %4124, %4122
  %4138 = trunc i64 %4137 to i32
  %4139 = xor i32 %4138, %4127
  %4140 = lshr i32 %4139, 4
  %4141 = trunc i32 %4140 to i8
  %4142 = and i8 %4141, 1
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4142, i8* %4143, align 1
  %4144 = icmp eq i32 %4127, 0
  %4145 = zext i1 %4144 to i8
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4145, i8* %4146, align 1
  %4147 = lshr i32 %4127, 31
  %4148 = trunc i32 %4147 to i8
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4148, i8* %4149, align 1
  %4150 = lshr i32 %4121, 31
  %4151 = lshr i32 %4123, 31
  %4152 = xor i32 %4151, %4150
  %4153 = xor i32 %4147, %4150
  %4154 = add i32 %4153, %4152
  %4155 = icmp eq i32 %4154, 2
  %4156 = zext i1 %4155 to i8
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4156, i8* %4157, align 1
  store %struct.Memory* %loadMem_467322, %struct.Memory** %MEMORY
  %loadMem_467324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4159 = getelementptr inbounds %struct.GPR, %struct.GPR* %4158, i32 0, i32 33
  %4160 = getelementptr inbounds %struct.Reg, %struct.Reg* %4159, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %4160 to i64*
  %4161 = load i64, i64* %PC.i375
  %4162 = add i64 %4161, 37
  %4163 = load i64, i64* %PC.i375
  %4164 = add i64 %4163, 6
  %4165 = load i64, i64* %PC.i375
  %4166 = add i64 %4165, 6
  store i64 %4166, i64* %PC.i375
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4168 = load i8, i8* %4167, align 1
  store i8 %4168, i8* %BRANCH_TAKEN, align 1
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4170 = icmp ne i8 %4168, 0
  %4171 = select i1 %4170, i64 %4162, i64 %4164
  store i64 %4171, i64* %4169, align 8
  store %struct.Memory* %loadMem_467324, %struct.Memory** %MEMORY
  %loadBr_467324 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467324 = icmp eq i8 %loadBr_467324, 1
  br i1 %cmpBr_467324, label %block_.L_467349, label %block_46732a

block_46732a:                                     ; preds = %block_467310
  %loadMem_46732a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4173 = getelementptr inbounds %struct.GPR, %struct.GPR* %4172, i32 0, i32 33
  %4174 = getelementptr inbounds %struct.Reg, %struct.Reg* %4173, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %4174 to i64*
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4176 = getelementptr inbounds %struct.GPR, %struct.GPR* %4175, i32 0, i32 1
  %4177 = getelementptr inbounds %struct.Reg, %struct.Reg* %4176, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %4177 to i64*
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4179 = getelementptr inbounds %struct.GPR, %struct.GPR* %4178, i32 0, i32 15
  %4180 = getelementptr inbounds %struct.Reg, %struct.Reg* %4179, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %4180 to i64*
  %4181 = load i64, i64* %RBP.i374
  %4182 = sub i64 %4181, 680
  %4183 = load i64, i64* %PC.i372
  %4184 = add i64 %4183, 6
  store i64 %4184, i64* %PC.i372
  %4185 = inttoptr i64 %4182 to i32*
  %4186 = load i32, i32* %4185
  %4187 = zext i32 %4186 to i64
  store i64 %4187, i64* %RAX.i373, align 8
  store %struct.Memory* %loadMem_46732a, %struct.Memory** %MEMORY
  %loadMem_467330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4189 = getelementptr inbounds %struct.GPR, %struct.GPR* %4188, i32 0, i32 33
  %4190 = getelementptr inbounds %struct.Reg, %struct.Reg* %4189, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %4190 to i64*
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4192 = getelementptr inbounds %struct.GPR, %struct.GPR* %4191, i32 0, i32 5
  %4193 = getelementptr inbounds %struct.Reg, %struct.Reg* %4192, i32 0, i32 0
  %RCX.i370 = bitcast %union.anon* %4193 to i64*
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 15
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %4196 to i64*
  %4197 = load i64, i64* %RBP.i371
  %4198 = sub i64 %4197, 676
  %4199 = load i64, i64* %PC.i369
  %4200 = add i64 %4199, 6
  store i64 %4200, i64* %PC.i369
  %4201 = inttoptr i64 %4198 to i32*
  %4202 = load i32, i32* %4201
  %4203 = zext i32 %4202 to i64
  store i64 %4203, i64* %RCX.i370, align 8
  store %struct.Memory* %loadMem_467330, %struct.Memory** %MEMORY
  %loadMem_467336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4205 = getelementptr inbounds %struct.GPR, %struct.GPR* %4204, i32 0, i32 33
  %4206 = getelementptr inbounds %struct.Reg, %struct.Reg* %4205, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %4206 to i64*
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4208 = getelementptr inbounds %struct.GPR, %struct.GPR* %4207, i32 0, i32 5
  %4209 = getelementptr inbounds %struct.Reg, %struct.Reg* %4208, i32 0, i32 0
  %RCX.i368 = bitcast %union.anon* %4209 to i64*
  %4210 = load i64, i64* %RCX.i368
  %4211 = load i64, i64* %PC.i367
  %4212 = add i64 %4211, 3
  store i64 %4212, i64* %PC.i367
  %4213 = trunc i64 %4210 to i32
  %4214 = add i32 20, %4213
  %4215 = zext i32 %4214 to i64
  store i64 %4215, i64* %RCX.i368, align 8
  %4216 = icmp ult i32 %4214, %4213
  %4217 = icmp ult i32 %4214, 20
  %4218 = or i1 %4216, %4217
  %4219 = zext i1 %4218 to i8
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4219, i8* %4220, align 1
  %4221 = and i32 %4214, 255
  %4222 = call i32 @llvm.ctpop.i32(i32 %4221)
  %4223 = trunc i32 %4222 to i8
  %4224 = and i8 %4223, 1
  %4225 = xor i8 %4224, 1
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4225, i8* %4226, align 1
  %4227 = xor i64 20, %4210
  %4228 = trunc i64 %4227 to i32
  %4229 = xor i32 %4228, %4214
  %4230 = lshr i32 %4229, 4
  %4231 = trunc i32 %4230 to i8
  %4232 = and i8 %4231, 1
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4232, i8* %4233, align 1
  %4234 = icmp eq i32 %4214, 0
  %4235 = zext i1 %4234 to i8
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4235, i8* %4236, align 1
  %4237 = lshr i32 %4214, 31
  %4238 = trunc i32 %4237 to i8
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4238, i8* %4239, align 1
  %4240 = lshr i32 %4213, 31
  %4241 = xor i32 %4237, %4240
  %4242 = add i32 %4241, %4237
  %4243 = icmp eq i32 %4242, 2
  %4244 = zext i1 %4243 to i8
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4244, i8* %4245, align 1
  store %struct.Memory* %loadMem_467336, %struct.Memory** %MEMORY
  %loadMem_467339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 33
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %4248 to i64*
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4250 = getelementptr inbounds %struct.GPR, %struct.GPR* %4249, i32 0, i32 5
  %4251 = getelementptr inbounds %struct.Reg, %struct.Reg* %4250, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %4251 to i64*
  %4252 = load i64, i64* %RCX.i366
  %4253 = load i64, i64* %PC.i365
  %4254 = add i64 %4253, 3
  store i64 %4254, i64* %PC.i365
  %4255 = trunc i64 %4252 to i32
  %4256 = add i32 1, %4255
  %4257 = zext i32 %4256 to i64
  store i64 %4257, i64* %RCX.i366, align 8
  %4258 = icmp ult i32 %4256, %4255
  %4259 = icmp ult i32 %4256, 1
  %4260 = or i1 %4258, %4259
  %4261 = zext i1 %4260 to i8
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4261, i8* %4262, align 1
  %4263 = and i32 %4256, 255
  %4264 = call i32 @llvm.ctpop.i32(i32 %4263)
  %4265 = trunc i32 %4264 to i8
  %4266 = and i8 %4265, 1
  %4267 = xor i8 %4266, 1
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4267, i8* %4268, align 1
  %4269 = xor i64 1, %4252
  %4270 = trunc i64 %4269 to i32
  %4271 = xor i32 %4270, %4256
  %4272 = lshr i32 %4271, 4
  %4273 = trunc i32 %4272 to i8
  %4274 = and i8 %4273, 1
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4274, i8* %4275, align 1
  %4276 = icmp eq i32 %4256, 0
  %4277 = zext i1 %4276 to i8
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4277, i8* %4278, align 1
  %4279 = lshr i32 %4256, 31
  %4280 = trunc i32 %4279 to i8
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4280, i8* %4281, align 1
  %4282 = lshr i32 %4255, 31
  %4283 = xor i32 %4279, %4282
  %4284 = add i32 %4283, %4279
  %4285 = icmp eq i32 %4284, 2
  %4286 = zext i1 %4285 to i8
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4286, i8* %4287, align 1
  store %struct.Memory* %loadMem_467339, %struct.Memory** %MEMORY
  %loadMem_46733c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4289 = getelementptr inbounds %struct.GPR, %struct.GPR* %4288, i32 0, i32 33
  %4290 = getelementptr inbounds %struct.Reg, %struct.Reg* %4289, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %4290 to i64*
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4292 = getelementptr inbounds %struct.GPR, %struct.GPR* %4291, i32 0, i32 1
  %4293 = getelementptr inbounds %struct.Reg, %struct.Reg* %4292, i32 0, i32 0
  %EAX.i363 = bitcast %union.anon* %4293 to i32*
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4295 = getelementptr inbounds %struct.GPR, %struct.GPR* %4294, i32 0, i32 5
  %4296 = getelementptr inbounds %struct.Reg, %struct.Reg* %4295, i32 0, i32 0
  %ECX.i364 = bitcast %union.anon* %4296 to i32*
  %4297 = load i32, i32* %EAX.i363
  %4298 = zext i32 %4297 to i64
  %4299 = load i32, i32* %ECX.i364
  %4300 = zext i32 %4299 to i64
  %4301 = load i64, i64* %PC.i362
  %4302 = add i64 %4301, 2
  store i64 %4302, i64* %PC.i362
  %4303 = sub i32 %4297, %4299
  %4304 = icmp ult i32 %4297, %4299
  %4305 = zext i1 %4304 to i8
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4305, i8* %4306, align 1
  %4307 = and i32 %4303, 255
  %4308 = call i32 @llvm.ctpop.i32(i32 %4307)
  %4309 = trunc i32 %4308 to i8
  %4310 = and i8 %4309, 1
  %4311 = xor i8 %4310, 1
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4311, i8* %4312, align 1
  %4313 = xor i64 %4300, %4298
  %4314 = trunc i64 %4313 to i32
  %4315 = xor i32 %4314, %4303
  %4316 = lshr i32 %4315, 4
  %4317 = trunc i32 %4316 to i8
  %4318 = and i8 %4317, 1
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4318, i8* %4319, align 1
  %4320 = icmp eq i32 %4303, 0
  %4321 = zext i1 %4320 to i8
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4321, i8* %4322, align 1
  %4323 = lshr i32 %4303, 31
  %4324 = trunc i32 %4323 to i8
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4324, i8* %4325, align 1
  %4326 = lshr i32 %4297, 31
  %4327 = lshr i32 %4299, 31
  %4328 = xor i32 %4327, %4326
  %4329 = xor i32 %4323, %4326
  %4330 = add i32 %4329, %4328
  %4331 = icmp eq i32 %4330, 2
  %4332 = zext i1 %4331 to i8
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4332, i8* %4333, align 1
  store %struct.Memory* %loadMem_46733c, %struct.Memory** %MEMORY
  %loadMem_46733e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 33
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %4336 to i64*
  %4337 = load i64, i64* %PC.i361
  %4338 = add i64 %4337, 11
  %4339 = load i64, i64* %PC.i361
  %4340 = add i64 %4339, 6
  %4341 = load i64, i64* %PC.i361
  %4342 = add i64 %4341, 6
  store i64 %4342, i64* %PC.i361
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4344 = load i8, i8* %4343, align 1
  store i8 %4344, i8* %BRANCH_TAKEN, align 1
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4346 = icmp ne i8 %4344, 0
  %4347 = select i1 %4346, i64 %4338, i64 %4340
  store i64 %4347, i64* %4345, align 8
  store %struct.Memory* %loadMem_46733e, %struct.Memory** %MEMORY
  %loadBr_46733e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46733e = icmp eq i8 %loadBr_46733e, 1
  br i1 %cmpBr_46733e, label %block_.L_467349, label %block_467344

block_467344:                                     ; preds = %block_46732a
  %loadMem_467344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 33
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %4350 to i64*
  %4351 = load i64, i64* %PC.i360
  %4352 = add i64 %4351, 832
  %4353 = load i64, i64* %PC.i360
  %4354 = add i64 %4353, 5
  store i64 %4354, i64* %PC.i360
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4352, i64* %4355, align 8
  store %struct.Memory* %loadMem_467344, %struct.Memory** %MEMORY
  br label %block_.L_467684

block_.L_467349:                                  ; preds = %block_46732a, %block_467310, %block_4672f6, %block_.L_4672dc
  %loadMem_467349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4357 = getelementptr inbounds %struct.GPR, %struct.GPR* %4356, i32 0, i32 33
  %4358 = getelementptr inbounds %struct.Reg, %struct.Reg* %4357, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %4358 to i64*
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 1
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %4361 to i64*
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 15
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %4364 to i64*
  %4365 = load i64, i64* %RBP.i359
  %4366 = sub i64 %4365, 680
  %4367 = load i64, i64* %PC.i357
  %4368 = add i64 %4367, 6
  store i64 %4368, i64* %PC.i357
  %4369 = inttoptr i64 %4366 to i32*
  %4370 = load i32, i32* %4369
  %4371 = zext i32 %4370 to i64
  store i64 %4371, i64* %RAX.i358, align 8
  store %struct.Memory* %loadMem_467349, %struct.Memory** %MEMORY
  %loadMem_46734f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 33
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %4374 to i64*
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 1
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %EAX.i355 = bitcast %union.anon* %4377 to i32*
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 15
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %4380 to i64*
  %4381 = load i32, i32* %EAX.i355
  %4382 = zext i32 %4381 to i64
  %4383 = load i64, i64* %RBP.i356
  %4384 = sub i64 %4383, 676
  %4385 = load i64, i64* %PC.i354
  %4386 = add i64 %4385, 6
  store i64 %4386, i64* %PC.i354
  %4387 = inttoptr i64 %4384 to i32*
  %4388 = load i32, i32* %4387
  %4389 = sub i32 %4381, %4388
  %4390 = icmp ult i32 %4381, %4388
  %4391 = zext i1 %4390 to i8
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4391, i8* %4392, align 1
  %4393 = and i32 %4389, 255
  %4394 = call i32 @llvm.ctpop.i32(i32 %4393)
  %4395 = trunc i32 %4394 to i8
  %4396 = and i8 %4395, 1
  %4397 = xor i8 %4396, 1
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4397, i8* %4398, align 1
  %4399 = xor i32 %4388, %4381
  %4400 = xor i32 %4399, %4389
  %4401 = lshr i32 %4400, 4
  %4402 = trunc i32 %4401 to i8
  %4403 = and i8 %4402, 1
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4403, i8* %4404, align 1
  %4405 = icmp eq i32 %4389, 0
  %4406 = zext i1 %4405 to i8
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4406, i8* %4407, align 1
  %4408 = lshr i32 %4389, 31
  %4409 = trunc i32 %4408 to i8
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4409, i8* %4410, align 1
  %4411 = lshr i32 %4381, 31
  %4412 = lshr i32 %4388, 31
  %4413 = xor i32 %4412, %4411
  %4414 = xor i32 %4408, %4411
  %4415 = add i32 %4414, %4413
  %4416 = icmp eq i32 %4415, 2
  %4417 = zext i1 %4416 to i8
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4417, i8* %4418, align 1
  store %struct.Memory* %loadMem_46734f, %struct.Memory** %MEMORY
  %loadMem_467355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4420 = getelementptr inbounds %struct.GPR, %struct.GPR* %4419, i32 0, i32 33
  %4421 = getelementptr inbounds %struct.Reg, %struct.Reg* %4420, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %4421 to i64*
  %4422 = load i64, i64* %PC.i353
  %4423 = add i64 %4422, 23
  %4424 = load i64, i64* %PC.i353
  %4425 = add i64 %4424, 6
  %4426 = load i64, i64* %PC.i353
  %4427 = add i64 %4426, 6
  store i64 %4427, i64* %PC.i353
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4429 = load i8, i8* %4428, align 1
  %4430 = icmp ne i8 %4429, 0
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4432 = load i8, i8* %4431, align 1
  %4433 = icmp ne i8 %4432, 0
  %4434 = xor i1 %4430, %4433
  %4435 = xor i1 %4434, true
  %4436 = zext i1 %4435 to i8
  store i8 %4436, i8* %BRANCH_TAKEN, align 1
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4438 = select i1 %4434, i64 %4425, i64 %4423
  store i64 %4438, i64* %4437, align 8
  store %struct.Memory* %loadMem_467355, %struct.Memory** %MEMORY
  %loadBr_467355 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467355 = icmp eq i8 %loadBr_467355, 1
  br i1 %cmpBr_467355, label %block_.L_46736c, label %block_46735b

block_46735b:                                     ; preds = %block_.L_467349
  %loadMem_46735b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 33
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %4441 to i64*
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 1
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %4444 to i64*
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 15
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %4447 to i64*
  %4448 = load i64, i64* %RBP.i352
  %4449 = sub i64 %4448, 676
  %4450 = load i64, i64* %PC.i350
  %4451 = add i64 %4450, 6
  store i64 %4451, i64* %PC.i350
  %4452 = inttoptr i64 %4449 to i32*
  %4453 = load i32, i32* %4452
  %4454 = zext i32 %4453 to i64
  store i64 %4454, i64* %RAX.i351, align 8
  store %struct.Memory* %loadMem_46735b, %struct.Memory** %MEMORY
  %loadMem_467361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4456 = getelementptr inbounds %struct.GPR, %struct.GPR* %4455, i32 0, i32 33
  %4457 = getelementptr inbounds %struct.Reg, %struct.Reg* %4456, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %4457 to i64*
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4459 = getelementptr inbounds %struct.GPR, %struct.GPR* %4458, i32 0, i32 1
  %4460 = getelementptr inbounds %struct.Reg, %struct.Reg* %4459, i32 0, i32 0
  %EAX.i348 = bitcast %union.anon* %4460 to i32*
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 15
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %4463 to i64*
  %4464 = load i64, i64* %RBP.i349
  %4465 = sub i64 %4464, 740
  %4466 = load i32, i32* %EAX.i348
  %4467 = zext i32 %4466 to i64
  %4468 = load i64, i64* %PC.i347
  %4469 = add i64 %4468, 6
  store i64 %4469, i64* %PC.i347
  %4470 = inttoptr i64 %4465 to i32*
  store i32 %4466, i32* %4470
  store %struct.Memory* %loadMem_467361, %struct.Memory** %MEMORY
  %loadMem_467367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 33
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %4473 to i64*
  %4474 = load i64, i64* %PC.i346
  %4475 = add i64 %4474, 17
  %4476 = load i64, i64* %PC.i346
  %4477 = add i64 %4476, 5
  store i64 %4477, i64* %PC.i346
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4475, i64* %4478, align 8
  store %struct.Memory* %loadMem_467367, %struct.Memory** %MEMORY
  br label %block_.L_467378

block_.L_46736c:                                  ; preds = %block_.L_467349
  %loadMem_46736c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4480 = getelementptr inbounds %struct.GPR, %struct.GPR* %4479, i32 0, i32 33
  %4481 = getelementptr inbounds %struct.Reg, %struct.Reg* %4480, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %4481 to i64*
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4483 = getelementptr inbounds %struct.GPR, %struct.GPR* %4482, i32 0, i32 1
  %4484 = getelementptr inbounds %struct.Reg, %struct.Reg* %4483, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %4484 to i64*
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4486 = getelementptr inbounds %struct.GPR, %struct.GPR* %4485, i32 0, i32 15
  %4487 = getelementptr inbounds %struct.Reg, %struct.Reg* %4486, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %4487 to i64*
  %4488 = load i64, i64* %RBP.i345
  %4489 = sub i64 %4488, 680
  %4490 = load i64, i64* %PC.i343
  %4491 = add i64 %4490, 6
  store i64 %4491, i64* %PC.i343
  %4492 = inttoptr i64 %4489 to i32*
  %4493 = load i32, i32* %4492
  %4494 = zext i32 %4493 to i64
  store i64 %4494, i64* %RAX.i344, align 8
  store %struct.Memory* %loadMem_46736c, %struct.Memory** %MEMORY
  %loadMem_467372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4496 = getelementptr inbounds %struct.GPR, %struct.GPR* %4495, i32 0, i32 33
  %4497 = getelementptr inbounds %struct.Reg, %struct.Reg* %4496, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %4497 to i64*
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4499 = getelementptr inbounds %struct.GPR, %struct.GPR* %4498, i32 0, i32 1
  %4500 = getelementptr inbounds %struct.Reg, %struct.Reg* %4499, i32 0, i32 0
  %EAX.i341 = bitcast %union.anon* %4500 to i32*
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 15
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %4503 to i64*
  %4504 = load i64, i64* %RBP.i342
  %4505 = sub i64 %4504, 740
  %4506 = load i32, i32* %EAX.i341
  %4507 = zext i32 %4506 to i64
  %4508 = load i64, i64* %PC.i340
  %4509 = add i64 %4508, 6
  store i64 %4509, i64* %PC.i340
  %4510 = inttoptr i64 %4505 to i32*
  store i32 %4506, i32* %4510
  store %struct.Memory* %loadMem_467372, %struct.Memory** %MEMORY
  br label %block_.L_467378

block_.L_467378:                                  ; preds = %block_.L_46736c, %block_46735b
  %loadMem_467378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 33
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %4513 to i64*
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4515 = getelementptr inbounds %struct.GPR, %struct.GPR* %4514, i32 0, i32 1
  %4516 = getelementptr inbounds %struct.Reg, %struct.Reg* %4515, i32 0, i32 0
  %RAX.i338 = bitcast %union.anon* %4516 to i64*
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4518 = getelementptr inbounds %struct.GPR, %struct.GPR* %4517, i32 0, i32 15
  %4519 = getelementptr inbounds %struct.Reg, %struct.Reg* %4518, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %4519 to i64*
  %4520 = load i64, i64* %RBP.i339
  %4521 = sub i64 %4520, 740
  %4522 = load i64, i64* %PC.i337
  %4523 = add i64 %4522, 6
  store i64 %4523, i64* %PC.i337
  %4524 = inttoptr i64 %4521 to i32*
  %4525 = load i32, i32* %4524
  %4526 = zext i32 %4525 to i64
  store i64 %4526, i64* %RAX.i338, align 8
  store %struct.Memory* %loadMem_467378, %struct.Memory** %MEMORY
  %loadMem_46737e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 33
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %4529 to i64*
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 1
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %4532 to i64*
  %4533 = load i64, i64* %RAX.i336
  %4534 = load i64, i64* %PC.i335
  %4535 = add i64 %4534, 3
  store i64 %4535, i64* %PC.i335
  %4536 = trunc i64 %4533 to i32
  %4537 = sub i32 %4536, 20
  %4538 = zext i32 %4537 to i64
  store i64 %4538, i64* %RAX.i336, align 8
  %4539 = icmp ult i32 %4536, 20
  %4540 = zext i1 %4539 to i8
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4540, i8* %4541, align 1
  %4542 = and i32 %4537, 255
  %4543 = call i32 @llvm.ctpop.i32(i32 %4542)
  %4544 = trunc i32 %4543 to i8
  %4545 = and i8 %4544, 1
  %4546 = xor i8 %4545, 1
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4546, i8* %4547, align 1
  %4548 = xor i64 20, %4533
  %4549 = trunc i64 %4548 to i32
  %4550 = xor i32 %4549, %4537
  %4551 = lshr i32 %4550, 4
  %4552 = trunc i32 %4551 to i8
  %4553 = and i8 %4552, 1
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4553, i8* %4554, align 1
  %4555 = icmp eq i32 %4537, 0
  %4556 = zext i1 %4555 to i8
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4556, i8* %4557, align 1
  %4558 = lshr i32 %4537, 31
  %4559 = trunc i32 %4558 to i8
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4559, i8* %4560, align 1
  %4561 = lshr i32 %4536, 31
  %4562 = xor i32 %4558, %4561
  %4563 = add i32 %4562, %4561
  %4564 = icmp eq i32 %4563, 2
  %4565 = zext i1 %4564 to i8
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4565, i8* %4566, align 1
  store %struct.Memory* %loadMem_46737e, %struct.Memory** %MEMORY
  %loadMem_467381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4568 = getelementptr inbounds %struct.GPR, %struct.GPR* %4567, i32 0, i32 33
  %4569 = getelementptr inbounds %struct.Reg, %struct.Reg* %4568, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %4569 to i64*
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4571 = getelementptr inbounds %struct.GPR, %struct.GPR* %4570, i32 0, i32 1
  %4572 = getelementptr inbounds %struct.Reg, %struct.Reg* %4571, i32 0, i32 0
  %EAX.i333 = bitcast %union.anon* %4572 to i32*
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4574 = getelementptr inbounds %struct.GPR, %struct.GPR* %4573, i32 0, i32 15
  %4575 = getelementptr inbounds %struct.Reg, %struct.Reg* %4574, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %4575 to i64*
  %4576 = load i64, i64* %RBP.i334
  %4577 = sub i64 %4576, 684
  %4578 = load i32, i32* %EAX.i333
  %4579 = zext i32 %4578 to i64
  %4580 = load i64, i64* %PC.i332
  %4581 = add i64 %4580, 6
  store i64 %4581, i64* %PC.i332
  %4582 = inttoptr i64 %4577 to i32*
  store i32 %4578, i32* %4582
  store %struct.Memory* %loadMem_467381, %struct.Memory** %MEMORY
  %loadMem_467387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 33
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %4585 to i64*
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4587 = getelementptr inbounds %struct.GPR, %struct.GPR* %4586, i32 0, i32 1
  %4588 = getelementptr inbounds %struct.Reg, %struct.Reg* %4587, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %4588 to i64*
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4590 = getelementptr inbounds %struct.GPR, %struct.GPR* %4589, i32 0, i32 15
  %4591 = getelementptr inbounds %struct.Reg, %struct.Reg* %4590, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %4591 to i64*
  %4592 = load i64, i64* %RBP.i331
  %4593 = sub i64 %4592, 680
  %4594 = load i64, i64* %PC.i329
  %4595 = add i64 %4594, 6
  store i64 %4595, i64* %PC.i329
  %4596 = inttoptr i64 %4593 to i32*
  %4597 = load i32, i32* %4596
  %4598 = zext i32 %4597 to i64
  store i64 %4598, i64* %RAX.i330, align 8
  store %struct.Memory* %loadMem_467387, %struct.Memory** %MEMORY
  %loadMem_46738d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4600 = getelementptr inbounds %struct.GPR, %struct.GPR* %4599, i32 0, i32 33
  %4601 = getelementptr inbounds %struct.Reg, %struct.Reg* %4600, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %4601 to i64*
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4603 = getelementptr inbounds %struct.GPR, %struct.GPR* %4602, i32 0, i32 1
  %4604 = getelementptr inbounds %struct.Reg, %struct.Reg* %4603, i32 0, i32 0
  %EAX.i327 = bitcast %union.anon* %4604 to i32*
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 15
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %4607 to i64*
  %4608 = load i32, i32* %EAX.i327
  %4609 = zext i32 %4608 to i64
  %4610 = load i64, i64* %RBP.i328
  %4611 = sub i64 %4610, 676
  %4612 = load i64, i64* %PC.i326
  %4613 = add i64 %4612, 6
  store i64 %4613, i64* %PC.i326
  %4614 = inttoptr i64 %4611 to i32*
  %4615 = load i32, i32* %4614
  %4616 = sub i32 %4608, %4615
  %4617 = icmp ult i32 %4608, %4615
  %4618 = zext i1 %4617 to i8
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4618, i8* %4619, align 1
  %4620 = and i32 %4616, 255
  %4621 = call i32 @llvm.ctpop.i32(i32 %4620)
  %4622 = trunc i32 %4621 to i8
  %4623 = and i8 %4622, 1
  %4624 = xor i8 %4623, 1
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4624, i8* %4625, align 1
  %4626 = xor i32 %4615, %4608
  %4627 = xor i32 %4626, %4616
  %4628 = lshr i32 %4627, 4
  %4629 = trunc i32 %4628 to i8
  %4630 = and i8 %4629, 1
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4630, i8* %4631, align 1
  %4632 = icmp eq i32 %4616, 0
  %4633 = zext i1 %4632 to i8
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4633, i8* %4634, align 1
  %4635 = lshr i32 %4616, 31
  %4636 = trunc i32 %4635 to i8
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4636, i8* %4637, align 1
  %4638 = lshr i32 %4608, 31
  %4639 = lshr i32 %4615, 31
  %4640 = xor i32 %4639, %4638
  %4641 = xor i32 %4635, %4638
  %4642 = add i32 %4641, %4640
  %4643 = icmp eq i32 %4642, 2
  %4644 = zext i1 %4643 to i8
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4644, i8* %4645, align 1
  store %struct.Memory* %loadMem_46738d, %struct.Memory** %MEMORY
  %loadMem_467393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4647 = getelementptr inbounds %struct.GPR, %struct.GPR* %4646, i32 0, i32 33
  %4648 = getelementptr inbounds %struct.Reg, %struct.Reg* %4647, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %4648 to i64*
  %4649 = load i64, i64* %PC.i325
  %4650 = add i64 %4649, 23
  %4651 = load i64, i64* %PC.i325
  %4652 = add i64 %4651, 6
  %4653 = load i64, i64* %PC.i325
  %4654 = add i64 %4653, 6
  store i64 %4654, i64* %PC.i325
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4656 = load i8, i8* %4655, align 1
  %4657 = icmp ne i8 %4656, 0
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4659 = load i8, i8* %4658, align 1
  %4660 = icmp ne i8 %4659, 0
  %4661 = xor i1 %4657, %4660
  %4662 = xor i1 %4661, true
  %4663 = zext i1 %4662 to i8
  store i8 %4663, i8* %BRANCH_TAKEN, align 1
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4665 = select i1 %4661, i64 %4652, i64 %4650
  store i64 %4665, i64* %4664, align 8
  store %struct.Memory* %loadMem_467393, %struct.Memory** %MEMORY
  %loadBr_467393 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467393 = icmp eq i8 %loadBr_467393, 1
  br i1 %cmpBr_467393, label %block_.L_4673aa, label %block_467399

block_467399:                                     ; preds = %block_.L_467378
  %loadMem_467399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 33
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %4668 to i64*
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4670 = getelementptr inbounds %struct.GPR, %struct.GPR* %4669, i32 0, i32 1
  %4671 = getelementptr inbounds %struct.Reg, %struct.Reg* %4670, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %4671 to i64*
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4673 = getelementptr inbounds %struct.GPR, %struct.GPR* %4672, i32 0, i32 15
  %4674 = getelementptr inbounds %struct.Reg, %struct.Reg* %4673, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %4674 to i64*
  %4675 = load i64, i64* %RBP.i324
  %4676 = sub i64 %4675, 680
  %4677 = load i64, i64* %PC.i322
  %4678 = add i64 %4677, 6
  store i64 %4678, i64* %PC.i322
  %4679 = inttoptr i64 %4676 to i32*
  %4680 = load i32, i32* %4679
  %4681 = zext i32 %4680 to i64
  store i64 %4681, i64* %RAX.i323, align 8
  store %struct.Memory* %loadMem_467399, %struct.Memory** %MEMORY
  %loadMem_46739f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4683 = getelementptr inbounds %struct.GPR, %struct.GPR* %4682, i32 0, i32 33
  %4684 = getelementptr inbounds %struct.Reg, %struct.Reg* %4683, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %4684 to i64*
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4686 = getelementptr inbounds %struct.GPR, %struct.GPR* %4685, i32 0, i32 1
  %4687 = getelementptr inbounds %struct.Reg, %struct.Reg* %4686, i32 0, i32 0
  %EAX.i320 = bitcast %union.anon* %4687 to i32*
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 15
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %4690 to i64*
  %4691 = load i64, i64* %RBP.i321
  %4692 = sub i64 %4691, 744
  %4693 = load i32, i32* %EAX.i320
  %4694 = zext i32 %4693 to i64
  %4695 = load i64, i64* %PC.i319
  %4696 = add i64 %4695, 6
  store i64 %4696, i64* %PC.i319
  %4697 = inttoptr i64 %4692 to i32*
  store i32 %4693, i32* %4697
  store %struct.Memory* %loadMem_46739f, %struct.Memory** %MEMORY
  %loadMem_4673a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4699 = getelementptr inbounds %struct.GPR, %struct.GPR* %4698, i32 0, i32 33
  %4700 = getelementptr inbounds %struct.Reg, %struct.Reg* %4699, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %4700 to i64*
  %4701 = load i64, i64* %PC.i318
  %4702 = add i64 %4701, 17
  %4703 = load i64, i64* %PC.i318
  %4704 = add i64 %4703, 5
  store i64 %4704, i64* %PC.i318
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4702, i64* %4705, align 8
  store %struct.Memory* %loadMem_4673a5, %struct.Memory** %MEMORY
  br label %block_.L_4673b6

block_.L_4673aa:                                  ; preds = %block_.L_467378
  %loadMem_4673aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4707 = getelementptr inbounds %struct.GPR, %struct.GPR* %4706, i32 0, i32 33
  %4708 = getelementptr inbounds %struct.Reg, %struct.Reg* %4707, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %4708 to i64*
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4710 = getelementptr inbounds %struct.GPR, %struct.GPR* %4709, i32 0, i32 1
  %4711 = getelementptr inbounds %struct.Reg, %struct.Reg* %4710, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %4711 to i64*
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4713 = getelementptr inbounds %struct.GPR, %struct.GPR* %4712, i32 0, i32 15
  %4714 = getelementptr inbounds %struct.Reg, %struct.Reg* %4713, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %4714 to i64*
  %4715 = load i64, i64* %RBP.i317
  %4716 = sub i64 %4715, 676
  %4717 = load i64, i64* %PC.i315
  %4718 = add i64 %4717, 6
  store i64 %4718, i64* %PC.i315
  %4719 = inttoptr i64 %4716 to i32*
  %4720 = load i32, i32* %4719
  %4721 = zext i32 %4720 to i64
  store i64 %4721, i64* %RAX.i316, align 8
  store %struct.Memory* %loadMem_4673aa, %struct.Memory** %MEMORY
  %loadMem_4673b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4723 = getelementptr inbounds %struct.GPR, %struct.GPR* %4722, i32 0, i32 33
  %4724 = getelementptr inbounds %struct.Reg, %struct.Reg* %4723, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %4724 to i64*
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 1
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %EAX.i313 = bitcast %union.anon* %4727 to i32*
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4729 = getelementptr inbounds %struct.GPR, %struct.GPR* %4728, i32 0, i32 15
  %4730 = getelementptr inbounds %struct.Reg, %struct.Reg* %4729, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %4730 to i64*
  %4731 = load i64, i64* %RBP.i314
  %4732 = sub i64 %4731, 744
  %4733 = load i32, i32* %EAX.i313
  %4734 = zext i32 %4733 to i64
  %4735 = load i64, i64* %PC.i312
  %4736 = add i64 %4735, 6
  store i64 %4736, i64* %PC.i312
  %4737 = inttoptr i64 %4732 to i32*
  store i32 %4733, i32* %4737
  store %struct.Memory* %loadMem_4673b0, %struct.Memory** %MEMORY
  br label %block_.L_4673b6

block_.L_4673b6:                                  ; preds = %block_.L_4673aa, %block_467399
  %loadMem_4673b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 33
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %4740 to i64*
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 1
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %4743 to i64*
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4745 = getelementptr inbounds %struct.GPR, %struct.GPR* %4744, i32 0, i32 15
  %4746 = getelementptr inbounds %struct.Reg, %struct.Reg* %4745, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %4746 to i64*
  %4747 = load i64, i64* %RBP.i311
  %4748 = sub i64 %4747, 744
  %4749 = load i64, i64* %PC.i309
  %4750 = add i64 %4749, 6
  store i64 %4750, i64* %PC.i309
  %4751 = inttoptr i64 %4748 to i32*
  %4752 = load i32, i32* %4751
  %4753 = zext i32 %4752 to i64
  store i64 %4753, i64* %RAX.i310, align 8
  store %struct.Memory* %loadMem_4673b6, %struct.Memory** %MEMORY
  %loadMem_4673bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 33
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %4756 to i64*
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 1
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %4759 to i64*
  %4760 = load i64, i64* %RAX.i308
  %4761 = load i64, i64* %PC.i307
  %4762 = add i64 %4761, 3
  store i64 %4762, i64* %PC.i307
  %4763 = trunc i64 %4760 to i32
  %4764 = add i32 20, %4763
  %4765 = zext i32 %4764 to i64
  store i64 %4765, i64* %RAX.i308, align 8
  %4766 = icmp ult i32 %4764, %4763
  %4767 = icmp ult i32 %4764, 20
  %4768 = or i1 %4766, %4767
  %4769 = zext i1 %4768 to i8
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4769, i8* %4770, align 1
  %4771 = and i32 %4764, 255
  %4772 = call i32 @llvm.ctpop.i32(i32 %4771)
  %4773 = trunc i32 %4772 to i8
  %4774 = and i8 %4773, 1
  %4775 = xor i8 %4774, 1
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4775, i8* %4776, align 1
  %4777 = xor i64 20, %4760
  %4778 = trunc i64 %4777 to i32
  %4779 = xor i32 %4778, %4764
  %4780 = lshr i32 %4779, 4
  %4781 = trunc i32 %4780 to i8
  %4782 = and i8 %4781, 1
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4782, i8* %4783, align 1
  %4784 = icmp eq i32 %4764, 0
  %4785 = zext i1 %4784 to i8
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4785, i8* %4786, align 1
  %4787 = lshr i32 %4764, 31
  %4788 = trunc i32 %4787 to i8
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4788, i8* %4789, align 1
  %4790 = lshr i32 %4763, 31
  %4791 = xor i32 %4787, %4790
  %4792 = add i32 %4791, %4787
  %4793 = icmp eq i32 %4792, 2
  %4794 = zext i1 %4793 to i8
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4794, i8* %4795, align 1
  store %struct.Memory* %loadMem_4673bc, %struct.Memory** %MEMORY
  %loadMem_4673bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4797 = getelementptr inbounds %struct.GPR, %struct.GPR* %4796, i32 0, i32 33
  %4798 = getelementptr inbounds %struct.Reg, %struct.Reg* %4797, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %4798 to i64*
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 1
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %EAX.i305 = bitcast %union.anon* %4801 to i32*
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 15
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %4804 to i64*
  %4805 = load i64, i64* %RBP.i306
  %4806 = sub i64 %4805, 688
  %4807 = load i32, i32* %EAX.i305
  %4808 = zext i32 %4807 to i64
  %4809 = load i64, i64* %PC.i304
  %4810 = add i64 %4809, 6
  store i64 %4810, i64* %PC.i304
  %4811 = inttoptr i64 %4806 to i32*
  store i32 %4807, i32* %4811
  store %struct.Memory* %loadMem_4673bf, %struct.Memory** %MEMORY
  %loadMem_4673c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4813 = getelementptr inbounds %struct.GPR, %struct.GPR* %4812, i32 0, i32 33
  %4814 = getelementptr inbounds %struct.Reg, %struct.Reg* %4813, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %4814 to i64*
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4816 = getelementptr inbounds %struct.GPR, %struct.GPR* %4815, i32 0, i32 5
  %4817 = getelementptr inbounds %struct.Reg, %struct.Reg* %4816, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %4817 to i64*
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 15
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %4820 to i64*
  %4821 = load i64, i64* %RBP.i303
  %4822 = sub i64 %4821, 684
  %4823 = load i64, i64* %PC.i301
  %4824 = add i64 %4823, 7
  store i64 %4824, i64* %PC.i301
  %4825 = inttoptr i64 %4822 to i32*
  %4826 = load i32, i32* %4825
  %4827 = sext i32 %4826 to i64
  store i64 %4827, i64* %RCX.i302, align 8
  store %struct.Memory* %loadMem_4673c5, %struct.Memory** %MEMORY
  %loadMem_4673cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4829 = getelementptr inbounds %struct.GPR, %struct.GPR* %4828, i32 0, i32 33
  %4830 = getelementptr inbounds %struct.Reg, %struct.Reg* %4829, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %4830 to i64*
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4832 = getelementptr inbounds %struct.GPR, %struct.GPR* %4831, i32 0, i32 1
  %4833 = getelementptr inbounds %struct.Reg, %struct.Reg* %4832, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %4833 to i64*
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4835 = getelementptr inbounds %struct.GPR, %struct.GPR* %4834, i32 0, i32 5
  %4836 = getelementptr inbounds %struct.Reg, %struct.Reg* %4835, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %4836 to i64*
  %4837 = load i64, i64* %RCX.i300
  %4838 = add i64 %4837, 12099168
  %4839 = load i64, i64* %PC.i298
  %4840 = add i64 %4839, 8
  store i64 %4840, i64* %PC.i298
  %4841 = inttoptr i64 %4838 to i8*
  %4842 = load i8, i8* %4841
  %4843 = zext i8 %4842 to i64
  store i64 %4843, i64* %RAX.i299, align 8
  store %struct.Memory* %loadMem_4673cc, %struct.Memory** %MEMORY
  %loadMem_4673d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4845 = getelementptr inbounds %struct.GPR, %struct.GPR* %4844, i32 0, i32 33
  %4846 = getelementptr inbounds %struct.Reg, %struct.Reg* %4845, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %4846 to i64*
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4848 = getelementptr inbounds %struct.GPR, %struct.GPR* %4847, i32 0, i32 1
  %4849 = getelementptr inbounds %struct.Reg, %struct.Reg* %4848, i32 0, i32 0
  %EAX.i296 = bitcast %union.anon* %4849 to i32*
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4851 = getelementptr inbounds %struct.GPR, %struct.GPR* %4850, i32 0, i32 15
  %4852 = getelementptr inbounds %struct.Reg, %struct.Reg* %4851, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %4852 to i64*
  %4853 = load i32, i32* %EAX.i296
  %4854 = zext i32 %4853 to i64
  %4855 = load i64, i64* %RBP.i297
  %4856 = sub i64 %4855, 24
  %4857 = load i64, i64* %PC.i295
  %4858 = add i64 %4857, 3
  store i64 %4858, i64* %PC.i295
  %4859 = inttoptr i64 %4856 to i32*
  %4860 = load i32, i32* %4859
  %4861 = sub i32 %4853, %4860
  %4862 = icmp ult i32 %4853, %4860
  %4863 = zext i1 %4862 to i8
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4863, i8* %4864, align 1
  %4865 = and i32 %4861, 255
  %4866 = call i32 @llvm.ctpop.i32(i32 %4865)
  %4867 = trunc i32 %4866 to i8
  %4868 = and i8 %4867, 1
  %4869 = xor i8 %4868, 1
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4869, i8* %4870, align 1
  %4871 = xor i32 %4860, %4853
  %4872 = xor i32 %4871, %4861
  %4873 = lshr i32 %4872, 4
  %4874 = trunc i32 %4873 to i8
  %4875 = and i8 %4874, 1
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4875, i8* %4876, align 1
  %4877 = icmp eq i32 %4861, 0
  %4878 = zext i1 %4877 to i8
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4878, i8* %4879, align 1
  %4880 = lshr i32 %4861, 31
  %4881 = trunc i32 %4880 to i8
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4881, i8* %4882, align 1
  %4883 = lshr i32 %4853, 31
  %4884 = lshr i32 %4860, 31
  %4885 = xor i32 %4884, %4883
  %4886 = xor i32 %4880, %4883
  %4887 = add i32 %4886, %4885
  %4888 = icmp eq i32 %4887, 2
  %4889 = zext i1 %4888 to i8
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4889, i8* %4890, align 1
  store %struct.Memory* %loadMem_4673d4, %struct.Memory** %MEMORY
  %loadMem_4673d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4892 = getelementptr inbounds %struct.GPR, %struct.GPR* %4891, i32 0, i32 33
  %4893 = getelementptr inbounds %struct.Reg, %struct.Reg* %4892, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %4893 to i64*
  %4894 = load i64, i64* %PC.i294
  %4895 = add i64 %4894, 49
  %4896 = load i64, i64* %PC.i294
  %4897 = add i64 %4896, 6
  %4898 = load i64, i64* %PC.i294
  %4899 = add i64 %4898, 6
  store i64 %4899, i64* %PC.i294
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4901 = load i8, i8* %4900, align 1
  %4902 = icmp eq i8 %4901, 0
  %4903 = zext i1 %4902 to i8
  store i8 %4903, i8* %BRANCH_TAKEN, align 1
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4905 = select i1 %4902, i64 %4895, i64 %4897
  store i64 %4905, i64* %4904, align 8
  store %struct.Memory* %loadMem_4673d7, %struct.Memory** %MEMORY
  %loadBr_4673d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4673d7 = icmp eq i8 %loadBr_4673d7, 1
  br i1 %cmpBr_4673d7, label %block_.L_467408, label %block_4673dd

block_4673dd:                                     ; preds = %block_.L_4673b6
  %loadMem_4673dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4907 = getelementptr inbounds %struct.GPR, %struct.GPR* %4906, i32 0, i32 33
  %4908 = getelementptr inbounds %struct.Reg, %struct.Reg* %4907, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %4908 to i64*
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4910 = getelementptr inbounds %struct.GPR, %struct.GPR* %4909, i32 0, i32 11
  %4911 = getelementptr inbounds %struct.Reg, %struct.Reg* %4910, i32 0, i32 0
  %RDI.i292 = bitcast %union.anon* %4911 to i64*
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4913 = getelementptr inbounds %struct.GPR, %struct.GPR* %4912, i32 0, i32 15
  %4914 = getelementptr inbounds %struct.Reg, %struct.Reg* %4913, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %4914 to i64*
  %4915 = load i64, i64* %RBP.i293
  %4916 = sub i64 %4915, 688
  %4917 = load i64, i64* %PC.i291
  %4918 = add i64 %4917, 6
  store i64 %4918, i64* %PC.i291
  %4919 = inttoptr i64 %4916 to i32*
  %4920 = load i32, i32* %4919
  %4921 = zext i32 %4920 to i64
  store i64 %4921, i64* %RDI.i292, align 8
  store %struct.Memory* %loadMem_4673dd, %struct.Memory** %MEMORY
  %loadMem1_4673e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 33
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %4924 to i64*
  %4925 = load i64, i64* %PC.i290
  %4926 = add i64 %4925, -359763
  %4927 = load i64, i64* %PC.i290
  %4928 = add i64 %4927, 5
  %4929 = load i64, i64* %PC.i290
  %4930 = add i64 %4929, 5
  store i64 %4930, i64* %PC.i290
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4932 = load i64, i64* %4931, align 8
  %4933 = add i64 %4932, -8
  %4934 = inttoptr i64 %4933 to i64*
  store i64 %4928, i64* %4934
  store i64 %4933, i64* %4931, align 8
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4926, i64* %4935, align 8
  store %struct.Memory* %loadMem1_4673e3, %struct.Memory** %MEMORY
  %loadMem2_4673e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4673e3 = load i64, i64* %3
  %call2_4673e3 = call %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* %0, i64 %loadPC_4673e3, %struct.Memory* %loadMem2_4673e3)
  store %struct.Memory* %call2_4673e3, %struct.Memory** %MEMORY
  %loadMem_4673e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4937 = getelementptr inbounds %struct.GPR, %struct.GPR* %4936, i32 0, i32 33
  %4938 = getelementptr inbounds %struct.Reg, %struct.Reg* %4937, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %4938 to i64*
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4940 = getelementptr inbounds %struct.GPR, %struct.GPR* %4939, i32 0, i32 1
  %4941 = getelementptr inbounds %struct.Reg, %struct.Reg* %4940, i32 0, i32 0
  %EAX.i289 = bitcast %union.anon* %4941 to i32*
  %4942 = load i32, i32* %EAX.i289
  %4943 = zext i32 %4942 to i64
  %4944 = load i64, i64* %PC.i288
  %4945 = add i64 %4944, 3
  store i64 %4945, i64* %PC.i288
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4946, align 1
  %4947 = and i32 %4942, 255
  %4948 = call i32 @llvm.ctpop.i32(i32 %4947)
  %4949 = trunc i32 %4948 to i8
  %4950 = and i8 %4949, 1
  %4951 = xor i8 %4950, 1
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4951, i8* %4952, align 1
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4953, align 1
  %4954 = icmp eq i32 %4942, 0
  %4955 = zext i1 %4954 to i8
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4955, i8* %4956, align 1
  %4957 = lshr i32 %4942, 31
  %4958 = trunc i32 %4957 to i8
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4958, i8* %4959, align 1
  %4960 = lshr i32 %4942, 31
  %4961 = xor i32 %4957, %4960
  %4962 = add i32 %4961, %4960
  %4963 = icmp eq i32 %4962, 2
  %4964 = zext i1 %4963 to i8
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4964, i8* %4965, align 1
  store %struct.Memory* %loadMem_4673e8, %struct.Memory** %MEMORY
  %loadMem_4673eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 33
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %4968 to i64*
  %4969 = load i64, i64* %PC.i287
  %4970 = add i64 %4969, 29
  %4971 = load i64, i64* %PC.i287
  %4972 = add i64 %4971, 6
  %4973 = load i64, i64* %PC.i287
  %4974 = add i64 %4973, 6
  store i64 %4974, i64* %PC.i287
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4976 = load i8, i8* %4975, align 1
  store i8 %4976, i8* %BRANCH_TAKEN, align 1
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4978 = icmp ne i8 %4976, 0
  %4979 = select i1 %4978, i64 %4970, i64 %4972
  store i64 %4979, i64* %4977, align 8
  store %struct.Memory* %loadMem_4673eb, %struct.Memory** %MEMORY
  %loadBr_4673eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4673eb = icmp eq i8 %loadBr_4673eb, 1
  br i1 %cmpBr_4673eb, label %block_.L_467408, label %block_4673f1

block_4673f1:                                     ; preds = %block_4673dd
  %loadMem_4673f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4981 = getelementptr inbounds %struct.GPR, %struct.GPR* %4980, i32 0, i32 33
  %4982 = getelementptr inbounds %struct.Reg, %struct.Reg* %4981, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %4982 to i64*
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4984 = getelementptr inbounds %struct.GPR, %struct.GPR* %4983, i32 0, i32 11
  %4985 = getelementptr inbounds %struct.Reg, %struct.Reg* %4984, i32 0, i32 0
  %RDI.i285 = bitcast %union.anon* %4985 to i64*
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4987 = getelementptr inbounds %struct.GPR, %struct.GPR* %4986, i32 0, i32 15
  %4988 = getelementptr inbounds %struct.Reg, %struct.Reg* %4987, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %4988 to i64*
  %4989 = load i64, i64* %RBP.i286
  %4990 = sub i64 %4989, 684
  %4991 = load i64, i64* %PC.i284
  %4992 = add i64 %4991, 6
  store i64 %4992, i64* %PC.i284
  %4993 = inttoptr i64 %4990 to i32*
  %4994 = load i32, i32* %4993
  %4995 = zext i32 %4994 to i64
  store i64 %4995, i64* %RDI.i285, align 8
  store %struct.Memory* %loadMem_4673f1, %struct.Memory** %MEMORY
  %loadMem_4673f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4997 = getelementptr inbounds %struct.GPR, %struct.GPR* %4996, i32 0, i32 33
  %4998 = getelementptr inbounds %struct.Reg, %struct.Reg* %4997, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %4998 to i64*
  %4999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5000 = getelementptr inbounds %struct.GPR, %struct.GPR* %4999, i32 0, i32 9
  %5001 = getelementptr inbounds %struct.Reg, %struct.Reg* %5000, i32 0, i32 0
  %RSI.i282 = bitcast %union.anon* %5001 to i64*
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5003 = getelementptr inbounds %struct.GPR, %struct.GPR* %5002, i32 0, i32 15
  %5004 = getelementptr inbounds %struct.Reg, %struct.Reg* %5003, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %5004 to i64*
  %5005 = load i64, i64* %RBP.i283
  %5006 = sub i64 %5005, 8
  %5007 = load i64, i64* %PC.i281
  %5008 = add i64 %5007, 3
  store i64 %5008, i64* %PC.i281
  %5009 = inttoptr i64 %5006 to i32*
  %5010 = load i32, i32* %5009
  %5011 = zext i32 %5010 to i64
  store i64 %5011, i64* %RSI.i282, align 8
  store %struct.Memory* %loadMem_4673f7, %struct.Memory** %MEMORY
  %loadMem1_4673fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5013 = getelementptr inbounds %struct.GPR, %struct.GPR* %5012, i32 0, i32 33
  %5014 = getelementptr inbounds %struct.Reg, %struct.Reg* %5013, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %5014 to i64*
  %5015 = load i64, i64* %PC.i280
  %5016 = add i64 %5015, -335898
  %5017 = load i64, i64* %PC.i280
  %5018 = add i64 %5017, 5
  %5019 = load i64, i64* %PC.i280
  %5020 = add i64 %5019, 5
  store i64 %5020, i64* %PC.i280
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5022 = load i64, i64* %5021, align 8
  %5023 = add i64 %5022, -8
  %5024 = inttoptr i64 %5023 to i64*
  store i64 %5018, i64* %5024
  store i64 %5023, i64* %5021, align 8
  %5025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5016, i64* %5025, align 8
  store %struct.Memory* %loadMem1_4673fa, %struct.Memory** %MEMORY
  %loadMem2_4673fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4673fa = load i64, i64* %3
  %call2_4673fa = call %struct.Memory* @sub_4153e0.same_string(%struct.State* %0, i64 %loadPC_4673fa, %struct.Memory* %loadMem2_4673fa)
  store %struct.Memory* %call2_4673fa, %struct.Memory** %MEMORY
  %loadMem_4673ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 33
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %5028 to i64*
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 1
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %EAX.i279 = bitcast %union.anon* %5031 to i32*
  %5032 = load i32, i32* %EAX.i279
  %5033 = zext i32 %5032 to i64
  %5034 = load i64, i64* %PC.i278
  %5035 = add i64 %5034, 3
  store i64 %5035, i64* %PC.i278
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5036, align 1
  %5037 = and i32 %5032, 255
  %5038 = call i32 @llvm.ctpop.i32(i32 %5037)
  %5039 = trunc i32 %5038 to i8
  %5040 = and i8 %5039, 1
  %5041 = xor i8 %5040, 1
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5041, i8* %5042, align 1
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5043, align 1
  %5044 = icmp eq i32 %5032, 0
  %5045 = zext i1 %5044 to i8
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5045, i8* %5046, align 1
  %5047 = lshr i32 %5032, 31
  %5048 = trunc i32 %5047 to i8
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5048, i8* %5049, align 1
  %5050 = lshr i32 %5032, 31
  %5051 = xor i32 %5047, %5050
  %5052 = add i32 %5051, %5050
  %5053 = icmp eq i32 %5052, 2
  %5054 = zext i1 %5053 to i8
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5054, i8* %5055, align 1
  store %struct.Memory* %loadMem_4673ff, %struct.Memory** %MEMORY
  %loadMem_467402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 33
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %5058 to i64*
  %5059 = load i64, i64* %PC.i277
  %5060 = add i64 %5059, 78
  %5061 = load i64, i64* %PC.i277
  %5062 = add i64 %5061, 6
  %5063 = load i64, i64* %PC.i277
  %5064 = add i64 %5063, 6
  store i64 %5064, i64* %PC.i277
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5066 = load i8, i8* %5065, align 1
  %5067 = icmp eq i8 %5066, 0
  %5068 = zext i1 %5067 to i8
  store i8 %5068, i8* %BRANCH_TAKEN, align 1
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5070 = select i1 %5067, i64 %5060, i64 %5062
  store i64 %5070, i64* %5069, align 8
  store %struct.Memory* %loadMem_467402, %struct.Memory** %MEMORY
  %loadBr_467402 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467402 = icmp eq i8 %loadBr_467402, 1
  br i1 %cmpBr_467402, label %block_.L_467450, label %block_.L_467408

block_.L_467408:                                  ; preds = %block_4673f1, %block_4673dd, %block_.L_4673b6
  %loadMem_467408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 33
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %5073 to i64*
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 1
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %5076 to i64*
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 15
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %5079 to i64*
  %5080 = load i64, i64* %RBP.i276
  %5081 = sub i64 %5080, 688
  %5082 = load i64, i64* %PC.i274
  %5083 = add i64 %5082, 7
  store i64 %5083, i64* %PC.i274
  %5084 = inttoptr i64 %5081 to i32*
  %5085 = load i32, i32* %5084
  %5086 = sext i32 %5085 to i64
  store i64 %5086, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_467408, %struct.Memory** %MEMORY
  %loadMem_46740f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 33
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %5089 to i64*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 1
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %5092 to i64*
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 5
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %RCX.i273 = bitcast %union.anon* %5095 to i64*
  %5096 = load i64, i64* %RAX.i272
  %5097 = add i64 %5096, 12099168
  %5098 = load i64, i64* %PC.i271
  %5099 = add i64 %5098, 8
  store i64 %5099, i64* %PC.i271
  %5100 = inttoptr i64 %5097 to i8*
  %5101 = load i8, i8* %5100
  %5102 = zext i8 %5101 to i64
  store i64 %5102, i64* %RCX.i273, align 8
  store %struct.Memory* %loadMem_46740f, %struct.Memory** %MEMORY
  %loadMem_467417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5104 = getelementptr inbounds %struct.GPR, %struct.GPR* %5103, i32 0, i32 33
  %5105 = getelementptr inbounds %struct.Reg, %struct.Reg* %5104, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %5105 to i64*
  %5106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5107 = getelementptr inbounds %struct.GPR, %struct.GPR* %5106, i32 0, i32 5
  %5108 = getelementptr inbounds %struct.Reg, %struct.Reg* %5107, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5108 to i32*
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5110 = getelementptr inbounds %struct.GPR, %struct.GPR* %5109, i32 0, i32 15
  %5111 = getelementptr inbounds %struct.Reg, %struct.Reg* %5110, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %5111 to i64*
  %5112 = load i32, i32* %ECX.i
  %5113 = zext i32 %5112 to i64
  %5114 = load i64, i64* %RBP.i270
  %5115 = sub i64 %5114, 24
  %5116 = load i64, i64* %PC.i269
  %5117 = add i64 %5116, 3
  store i64 %5117, i64* %PC.i269
  %5118 = inttoptr i64 %5115 to i32*
  %5119 = load i32, i32* %5118
  %5120 = sub i32 %5112, %5119
  %5121 = icmp ult i32 %5112, %5119
  %5122 = zext i1 %5121 to i8
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5122, i8* %5123, align 1
  %5124 = and i32 %5120, 255
  %5125 = call i32 @llvm.ctpop.i32(i32 %5124)
  %5126 = trunc i32 %5125 to i8
  %5127 = and i8 %5126, 1
  %5128 = xor i8 %5127, 1
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5128, i8* %5129, align 1
  %5130 = xor i32 %5119, %5112
  %5131 = xor i32 %5130, %5120
  %5132 = lshr i32 %5131, 4
  %5133 = trunc i32 %5132 to i8
  %5134 = and i8 %5133, 1
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5134, i8* %5135, align 1
  %5136 = icmp eq i32 %5120, 0
  %5137 = zext i1 %5136 to i8
  %5138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5137, i8* %5138, align 1
  %5139 = lshr i32 %5120, 31
  %5140 = trunc i32 %5139 to i8
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5140, i8* %5141, align 1
  %5142 = lshr i32 %5112, 31
  %5143 = lshr i32 %5119, 31
  %5144 = xor i32 %5143, %5142
  %5145 = xor i32 %5139, %5142
  %5146 = add i32 %5145, %5144
  %5147 = icmp eq i32 %5146, 2
  %5148 = zext i1 %5147 to i8
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5148, i8* %5149, align 1
  store %struct.Memory* %loadMem_467417, %struct.Memory** %MEMORY
  %loadMem_46741a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5151 = getelementptr inbounds %struct.GPR, %struct.GPR* %5150, i32 0, i32 33
  %5152 = getelementptr inbounds %struct.Reg, %struct.Reg* %5151, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %5152 to i64*
  %5153 = load i64, i64* %PC.i268
  %5154 = add i64 %5153, 49
  %5155 = load i64, i64* %PC.i268
  %5156 = add i64 %5155, 6
  %5157 = load i64, i64* %PC.i268
  %5158 = add i64 %5157, 6
  store i64 %5158, i64* %PC.i268
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5160 = load i8, i8* %5159, align 1
  %5161 = icmp eq i8 %5160, 0
  %5162 = zext i1 %5161 to i8
  store i8 %5162, i8* %BRANCH_TAKEN, align 1
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5164 = select i1 %5161, i64 %5154, i64 %5156
  store i64 %5164, i64* %5163, align 8
  store %struct.Memory* %loadMem_46741a, %struct.Memory** %MEMORY
  %loadBr_46741a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46741a = icmp eq i8 %loadBr_46741a, 1
  br i1 %cmpBr_46741a, label %block_.L_46744b, label %block_467420

block_467420:                                     ; preds = %block_.L_467408
  %loadMem_467420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5166 = getelementptr inbounds %struct.GPR, %struct.GPR* %5165, i32 0, i32 33
  %5167 = getelementptr inbounds %struct.Reg, %struct.Reg* %5166, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %5167 to i64*
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5169 = getelementptr inbounds %struct.GPR, %struct.GPR* %5168, i32 0, i32 11
  %5170 = getelementptr inbounds %struct.Reg, %struct.Reg* %5169, i32 0, i32 0
  %RDI.i266 = bitcast %union.anon* %5170 to i64*
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5172 = getelementptr inbounds %struct.GPR, %struct.GPR* %5171, i32 0, i32 15
  %5173 = getelementptr inbounds %struct.Reg, %struct.Reg* %5172, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %5173 to i64*
  %5174 = load i64, i64* %RBP.i267
  %5175 = sub i64 %5174, 684
  %5176 = load i64, i64* %PC.i265
  %5177 = add i64 %5176, 6
  store i64 %5177, i64* %PC.i265
  %5178 = inttoptr i64 %5175 to i32*
  %5179 = load i32, i32* %5178
  %5180 = zext i32 %5179 to i64
  store i64 %5180, i64* %RDI.i266, align 8
  store %struct.Memory* %loadMem_467420, %struct.Memory** %MEMORY
  %loadMem1_467426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5182 = getelementptr inbounds %struct.GPR, %struct.GPR* %5181, i32 0, i32 33
  %5183 = getelementptr inbounds %struct.Reg, %struct.Reg* %5182, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %5183 to i64*
  %5184 = load i64, i64* %PC.i264
  %5185 = add i64 %5184, -359830
  %5186 = load i64, i64* %PC.i264
  %5187 = add i64 %5186, 5
  %5188 = load i64, i64* %PC.i264
  %5189 = add i64 %5188, 5
  store i64 %5189, i64* %PC.i264
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5191 = load i64, i64* %5190, align 8
  %5192 = add i64 %5191, -8
  %5193 = inttoptr i64 %5192 to i64*
  store i64 %5187, i64* %5193
  store i64 %5192, i64* %5190, align 8
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5185, i64* %5194, align 8
  store %struct.Memory* %loadMem1_467426, %struct.Memory** %MEMORY
  %loadMem2_467426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_467426 = load i64, i64* %3
  %call2_467426 = call %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* %0, i64 %loadPC_467426, %struct.Memory* %loadMem2_467426)
  store %struct.Memory* %call2_467426, %struct.Memory** %MEMORY
  %loadMem_46742b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5196 = getelementptr inbounds %struct.GPR, %struct.GPR* %5195, i32 0, i32 33
  %5197 = getelementptr inbounds %struct.Reg, %struct.Reg* %5196, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %5197 to i64*
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5199 = getelementptr inbounds %struct.GPR, %struct.GPR* %5198, i32 0, i32 1
  %5200 = getelementptr inbounds %struct.Reg, %struct.Reg* %5199, i32 0, i32 0
  %EAX.i263 = bitcast %union.anon* %5200 to i32*
  %5201 = load i32, i32* %EAX.i263
  %5202 = zext i32 %5201 to i64
  %5203 = load i64, i64* %PC.i262
  %5204 = add i64 %5203, 3
  store i64 %5204, i64* %PC.i262
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5205, align 1
  %5206 = and i32 %5201, 255
  %5207 = call i32 @llvm.ctpop.i32(i32 %5206)
  %5208 = trunc i32 %5207 to i8
  %5209 = and i8 %5208, 1
  %5210 = xor i8 %5209, 1
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5210, i8* %5211, align 1
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5212, align 1
  %5213 = icmp eq i32 %5201, 0
  %5214 = zext i1 %5213 to i8
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5214, i8* %5215, align 1
  %5216 = lshr i32 %5201, 31
  %5217 = trunc i32 %5216 to i8
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5217, i8* %5218, align 1
  %5219 = lshr i32 %5201, 31
  %5220 = xor i32 %5216, %5219
  %5221 = add i32 %5220, %5219
  %5222 = icmp eq i32 %5221, 2
  %5223 = zext i1 %5222 to i8
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5223, i8* %5224, align 1
  store %struct.Memory* %loadMem_46742b, %struct.Memory** %MEMORY
  %loadMem_46742e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 33
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %5227 to i64*
  %5228 = load i64, i64* %PC.i261
  %5229 = add i64 %5228, 29
  %5230 = load i64, i64* %PC.i261
  %5231 = add i64 %5230, 6
  %5232 = load i64, i64* %PC.i261
  %5233 = add i64 %5232, 6
  store i64 %5233, i64* %PC.i261
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5235 = load i8, i8* %5234, align 1
  store i8 %5235, i8* %BRANCH_TAKEN, align 1
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5237 = icmp ne i8 %5235, 0
  %5238 = select i1 %5237, i64 %5229, i64 %5231
  store i64 %5238, i64* %5236, align 8
  store %struct.Memory* %loadMem_46742e, %struct.Memory** %MEMORY
  %loadBr_46742e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46742e = icmp eq i8 %loadBr_46742e, 1
  br i1 %cmpBr_46742e, label %block_.L_46744b, label %block_467434

block_467434:                                     ; preds = %block_467420
  %loadMem_467434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5240 = getelementptr inbounds %struct.GPR, %struct.GPR* %5239, i32 0, i32 33
  %5241 = getelementptr inbounds %struct.Reg, %struct.Reg* %5240, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %5241 to i64*
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5243 = getelementptr inbounds %struct.GPR, %struct.GPR* %5242, i32 0, i32 11
  %5244 = getelementptr inbounds %struct.Reg, %struct.Reg* %5243, i32 0, i32 0
  %RDI.i259 = bitcast %union.anon* %5244 to i64*
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5246 = getelementptr inbounds %struct.GPR, %struct.GPR* %5245, i32 0, i32 15
  %5247 = getelementptr inbounds %struct.Reg, %struct.Reg* %5246, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %5247 to i64*
  %5248 = load i64, i64* %RBP.i260
  %5249 = sub i64 %5248, 688
  %5250 = load i64, i64* %PC.i258
  %5251 = add i64 %5250, 6
  store i64 %5251, i64* %PC.i258
  %5252 = inttoptr i64 %5249 to i32*
  %5253 = load i32, i32* %5252
  %5254 = zext i32 %5253 to i64
  store i64 %5254, i64* %RDI.i259, align 8
  store %struct.Memory* %loadMem_467434, %struct.Memory** %MEMORY
  %loadMem_46743a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 33
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %5257 to i64*
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 9
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %RSI.i256 = bitcast %union.anon* %5260 to i64*
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5262 = getelementptr inbounds %struct.GPR, %struct.GPR* %5261, i32 0, i32 15
  %5263 = getelementptr inbounds %struct.Reg, %struct.Reg* %5262, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %5263 to i64*
  %5264 = load i64, i64* %RBP.i257
  %5265 = sub i64 %5264, 8
  %5266 = load i64, i64* %PC.i255
  %5267 = add i64 %5266, 3
  store i64 %5267, i64* %PC.i255
  %5268 = inttoptr i64 %5265 to i32*
  %5269 = load i32, i32* %5268
  %5270 = zext i32 %5269 to i64
  store i64 %5270, i64* %RSI.i256, align 8
  store %struct.Memory* %loadMem_46743a, %struct.Memory** %MEMORY
  %loadMem1_46743d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5272 = getelementptr inbounds %struct.GPR, %struct.GPR* %5271, i32 0, i32 33
  %5273 = getelementptr inbounds %struct.Reg, %struct.Reg* %5272, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %5273 to i64*
  %5274 = load i64, i64* %PC.i254
  %5275 = add i64 %5274, -335965
  %5276 = load i64, i64* %PC.i254
  %5277 = add i64 %5276, 5
  %5278 = load i64, i64* %PC.i254
  %5279 = add i64 %5278, 5
  store i64 %5279, i64* %PC.i254
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5281 = load i64, i64* %5280, align 8
  %5282 = add i64 %5281, -8
  %5283 = inttoptr i64 %5282 to i64*
  store i64 %5277, i64* %5283
  store i64 %5282, i64* %5280, align 8
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5275, i64* %5284, align 8
  store %struct.Memory* %loadMem1_46743d, %struct.Memory** %MEMORY
  %loadMem2_46743d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46743d = load i64, i64* %3
  %call2_46743d = call %struct.Memory* @sub_4153e0.same_string(%struct.State* %0, i64 %loadPC_46743d, %struct.Memory* %loadMem2_46743d)
  store %struct.Memory* %call2_46743d, %struct.Memory** %MEMORY
  %loadMem_467442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5286 = getelementptr inbounds %struct.GPR, %struct.GPR* %5285, i32 0, i32 33
  %5287 = getelementptr inbounds %struct.Reg, %struct.Reg* %5286, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %5287 to i64*
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5289 = getelementptr inbounds %struct.GPR, %struct.GPR* %5288, i32 0, i32 1
  %5290 = getelementptr inbounds %struct.Reg, %struct.Reg* %5289, i32 0, i32 0
  %EAX.i253 = bitcast %union.anon* %5290 to i32*
  %5291 = load i32, i32* %EAX.i253
  %5292 = zext i32 %5291 to i64
  %5293 = load i64, i64* %PC.i252
  %5294 = add i64 %5293, 3
  store i64 %5294, i64* %PC.i252
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5295, align 1
  %5296 = and i32 %5291, 255
  %5297 = call i32 @llvm.ctpop.i32(i32 %5296)
  %5298 = trunc i32 %5297 to i8
  %5299 = and i8 %5298, 1
  %5300 = xor i8 %5299, 1
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5300, i8* %5301, align 1
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5302, align 1
  %5303 = icmp eq i32 %5291, 0
  %5304 = zext i1 %5303 to i8
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5304, i8* %5305, align 1
  %5306 = lshr i32 %5291, 31
  %5307 = trunc i32 %5306 to i8
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5307, i8* %5308, align 1
  %5309 = lshr i32 %5291, 31
  %5310 = xor i32 %5306, %5309
  %5311 = add i32 %5310, %5309
  %5312 = icmp eq i32 %5311, 2
  %5313 = zext i1 %5312 to i8
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5313, i8* %5314, align 1
  store %struct.Memory* %loadMem_467442, %struct.Memory** %MEMORY
  %loadMem_467445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 33
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %5317 to i64*
  %5318 = load i64, i64* %PC.i251
  %5319 = add i64 %5318, 11
  %5320 = load i64, i64* %PC.i251
  %5321 = add i64 %5320, 6
  %5322 = load i64, i64* %PC.i251
  %5323 = add i64 %5322, 6
  store i64 %5323, i64* %PC.i251
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5325 = load i8, i8* %5324, align 1
  %5326 = icmp eq i8 %5325, 0
  %5327 = zext i1 %5326 to i8
  store i8 %5327, i8* %BRANCH_TAKEN, align 1
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5329 = select i1 %5326, i64 %5319, i64 %5321
  store i64 %5329, i64* %5328, align 8
  store %struct.Memory* %loadMem_467445, %struct.Memory** %MEMORY
  %loadBr_467445 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467445 = icmp eq i8 %loadBr_467445, 1
  br i1 %cmpBr_467445, label %block_.L_467450, label %block_.L_46744b

block_.L_46744b:                                  ; preds = %block_467434, %block_467420, %block_.L_467408
  %loadMem_46744b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5331 = getelementptr inbounds %struct.GPR, %struct.GPR* %5330, i32 0, i32 33
  %5332 = getelementptr inbounds %struct.Reg, %struct.Reg* %5331, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %5332 to i64*
  %5333 = load i64, i64* %PC.i250
  %5334 = add i64 %5333, 569
  %5335 = load i64, i64* %PC.i250
  %5336 = add i64 %5335, 5
  store i64 %5336, i64* %PC.i250
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5334, i64* %5337, align 8
  store %struct.Memory* %loadMem_46744b, %struct.Memory** %MEMORY
  br label %block_.L_467684

block_.L_467450:                                  ; preds = %block_467434, %block_4673f1
  %loadMem_467450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5339 = getelementptr inbounds %struct.GPR, %struct.GPR* %5338, i32 0, i32 33
  %5340 = getelementptr inbounds %struct.Reg, %struct.Reg* %5339, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %5340 to i64*
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5342 = getelementptr inbounds %struct.GPR, %struct.GPR* %5341, i32 0, i32 11
  %5343 = getelementptr inbounds %struct.Reg, %struct.Reg* %5342, i32 0, i32 0
  %RDI.i248 = bitcast %union.anon* %5343 to i64*
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5345 = getelementptr inbounds %struct.GPR, %struct.GPR* %5344, i32 0, i32 15
  %5346 = getelementptr inbounds %struct.Reg, %struct.Reg* %5345, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %5346 to i64*
  %5347 = load i64, i64* %RBP.i249
  %5348 = sub i64 %5347, 680
  %5349 = load i64, i64* %PC.i247
  %5350 = add i64 %5349, 6
  store i64 %5350, i64* %PC.i247
  %5351 = inttoptr i64 %5348 to i32*
  %5352 = load i32, i32* %5351
  %5353 = zext i32 %5352 to i64
  store i64 %5353, i64* %RDI.i248, align 8
  store %struct.Memory* %loadMem_467450, %struct.Memory** %MEMORY
  %loadMem1_467456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5355 = getelementptr inbounds %struct.GPR, %struct.GPR* %5354, i32 0, i32 33
  %5356 = getelementptr inbounds %struct.Reg, %struct.Reg* %5355, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %5356 to i64*
  %5357 = load i64, i64* %PC.i246
  %5358 = add i64 %5357, -359878
  %5359 = load i64, i64* %PC.i246
  %5360 = add i64 %5359, 5
  %5361 = load i64, i64* %PC.i246
  %5362 = add i64 %5361, 5
  store i64 %5362, i64* %PC.i246
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5364 = load i64, i64* %5363, align 8
  %5365 = add i64 %5364, -8
  %5366 = inttoptr i64 %5365 to i64*
  store i64 %5360, i64* %5366
  store i64 %5365, i64* %5363, align 8
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5358, i64* %5367, align 8
  store %struct.Memory* %loadMem1_467456, %struct.Memory** %MEMORY
  %loadMem2_467456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_467456 = load i64, i64* %3
  %call2_467456 = call %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* %0, i64 %loadPC_467456, %struct.Memory* %loadMem2_467456)
  store %struct.Memory* %call2_467456, %struct.Memory** %MEMORY
  %loadMem_46745b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 33
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %5370 to i64*
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 1
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %EAX.i245 = bitcast %union.anon* %5373 to i32*
  %5374 = load i32, i32* %EAX.i245
  %5375 = zext i32 %5374 to i64
  %5376 = load i64, i64* %PC.i244
  %5377 = add i64 %5376, 3
  store i64 %5377, i64* %PC.i244
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5378, align 1
  %5379 = and i32 %5374, 255
  %5380 = call i32 @llvm.ctpop.i32(i32 %5379)
  %5381 = trunc i32 %5380 to i8
  %5382 = and i8 %5381, 1
  %5383 = xor i8 %5382, 1
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5383, i8* %5384, align 1
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5385, align 1
  %5386 = icmp eq i32 %5374, 0
  %5387 = zext i1 %5386 to i8
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5387, i8* %5388, align 1
  %5389 = lshr i32 %5374, 31
  %5390 = trunc i32 %5389 to i8
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5390, i8* %5391, align 1
  %5392 = lshr i32 %5374, 31
  %5393 = xor i32 %5389, %5392
  %5394 = add i32 %5393, %5392
  %5395 = icmp eq i32 %5394, 2
  %5396 = zext i1 %5395 to i8
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5396, i8* %5397, align 1
  store %struct.Memory* %loadMem_46745b, %struct.Memory** %MEMORY
  %loadMem_46745e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5399 = getelementptr inbounds %struct.GPR, %struct.GPR* %5398, i32 0, i32 33
  %5400 = getelementptr inbounds %struct.Reg, %struct.Reg* %5399, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %5400 to i64*
  %5401 = load i64, i64* %PC.i243
  %5402 = add i64 %5401, 268
  %5403 = load i64, i64* %PC.i243
  %5404 = add i64 %5403, 6
  %5405 = load i64, i64* %PC.i243
  %5406 = add i64 %5405, 6
  store i64 %5406, i64* %PC.i243
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5408 = load i8, i8* %5407, align 1
  store i8 %5408, i8* %BRANCH_TAKEN, align 1
  %5409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5410 = icmp ne i8 %5408, 0
  %5411 = select i1 %5410, i64 %5402, i64 %5404
  store i64 %5411, i64* %5409, align 8
  store %struct.Memory* %loadMem_46745e, %struct.Memory** %MEMORY
  %loadBr_46745e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46745e = icmp eq i8 %loadBr_46745e, 1
  br i1 %cmpBr_46745e, label %block_.L_46756a, label %block_467464

block_467464:                                     ; preds = %block_.L_467450
  %loadMem_467464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5413 = getelementptr inbounds %struct.GPR, %struct.GPR* %5412, i32 0, i32 33
  %5414 = getelementptr inbounds %struct.Reg, %struct.Reg* %5413, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5414 to i64*
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5416 = getelementptr inbounds %struct.GPR, %struct.GPR* %5415, i32 0, i32 11
  %5417 = getelementptr inbounds %struct.Reg, %struct.Reg* %5416, i32 0, i32 0
  %RDI.i241 = bitcast %union.anon* %5417 to i64*
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5419 = getelementptr inbounds %struct.GPR, %struct.GPR* %5418, i32 0, i32 15
  %5420 = getelementptr inbounds %struct.Reg, %struct.Reg* %5419, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %5420 to i64*
  %5421 = load i64, i64* %RBP.i242
  %5422 = sub i64 %5421, 676
  %5423 = load i64, i64* %PC.i240
  %5424 = add i64 %5423, 6
  store i64 %5424, i64* %PC.i240
  %5425 = inttoptr i64 %5422 to i32*
  %5426 = load i32, i32* %5425
  %5427 = zext i32 %5426 to i64
  store i64 %5427, i64* %RDI.i241, align 8
  store %struct.Memory* %loadMem_467464, %struct.Memory** %MEMORY
  %loadMem_46746a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5429 = getelementptr inbounds %struct.GPR, %struct.GPR* %5428, i32 0, i32 33
  %5430 = getelementptr inbounds %struct.Reg, %struct.Reg* %5429, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %5430 to i64*
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5432 = getelementptr inbounds %struct.GPR, %struct.GPR* %5431, i32 0, i32 9
  %5433 = getelementptr inbounds %struct.Reg, %struct.Reg* %5432, i32 0, i32 0
  %RSI.i238 = bitcast %union.anon* %5433 to i64*
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5435 = getelementptr inbounds %struct.GPR, %struct.GPR* %5434, i32 0, i32 15
  %5436 = getelementptr inbounds %struct.Reg, %struct.Reg* %5435, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %5436 to i64*
  %5437 = load i64, i64* %RBP.i239
  %5438 = sub i64 %5437, 20
  %5439 = load i64, i64* %PC.i237
  %5440 = add i64 %5439, 3
  store i64 %5440, i64* %PC.i237
  %5441 = inttoptr i64 %5438 to i32*
  %5442 = load i32, i32* %5441
  %5443 = zext i32 %5442 to i64
  store i64 %5443, i64* %RSI.i238, align 8
  store %struct.Memory* %loadMem_46746a, %struct.Memory** %MEMORY
  %loadMem1_46746d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5445 = getelementptr inbounds %struct.GPR, %struct.GPR* %5444, i32 0, i32 33
  %5446 = getelementptr inbounds %struct.Reg, %struct.Reg* %5445, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %5446 to i64*
  %5447 = load i64, i64* %PC.i236
  %5448 = add i64 %5447, -340429
  %5449 = load i64, i64* %PC.i236
  %5450 = add i64 %5449, 5
  %5451 = load i64, i64* %PC.i236
  %5452 = add i64 %5451, 5
  store i64 %5452, i64* %PC.i236
  %5453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5454 = load i64, i64* %5453, align 8
  %5455 = add i64 %5454, -8
  %5456 = inttoptr i64 %5455 to i64*
  store i64 %5450, i64* %5456
  store i64 %5455, i64* %5453, align 8
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5448, i64* %5457, align 8
  store %struct.Memory* %loadMem1_46746d, %struct.Memory** %MEMORY
  %loadMem2_46746d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46746d = load i64, i64* %3
  %call2_46746d = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64 %loadPC_46746d, %struct.Memory* %loadMem2_46746d)
  store %struct.Memory* %call2_46746d, %struct.Memory** %MEMORY
  %loadMem_467472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5459 = getelementptr inbounds %struct.GPR, %struct.GPR* %5458, i32 0, i32 33
  %5460 = getelementptr inbounds %struct.Reg, %struct.Reg* %5459, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %5460 to i64*
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5462 = getelementptr inbounds %struct.GPR, %struct.GPR* %5461, i32 0, i32 1
  %5463 = getelementptr inbounds %struct.Reg, %struct.Reg* %5462, i32 0, i32 0
  %EAX.i235 = bitcast %union.anon* %5463 to i32*
  %5464 = load i32, i32* %EAX.i235
  %5465 = zext i32 %5464 to i64
  %5466 = load i64, i64* %PC.i234
  %5467 = add i64 %5466, 3
  store i64 %5467, i64* %PC.i234
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5468, align 1
  %5469 = and i32 %5464, 255
  %5470 = call i32 @llvm.ctpop.i32(i32 %5469)
  %5471 = trunc i32 %5470 to i8
  %5472 = and i8 %5471, 1
  %5473 = xor i8 %5472, 1
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5473, i8* %5474, align 1
  %5475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5475, align 1
  %5476 = icmp eq i32 %5464, 0
  %5477 = zext i1 %5476 to i8
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5477, i8* %5478, align 1
  %5479 = lshr i32 %5464, 31
  %5480 = trunc i32 %5479 to i8
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5480, i8* %5481, align 1
  %5482 = lshr i32 %5464, 31
  %5483 = xor i32 %5479, %5482
  %5484 = add i32 %5483, %5482
  %5485 = icmp eq i32 %5484, 2
  %5486 = zext i1 %5485 to i8
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5486, i8* %5487, align 1
  store %struct.Memory* %loadMem_467472, %struct.Memory** %MEMORY
  %loadMem_467475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5489 = getelementptr inbounds %struct.GPR, %struct.GPR* %5488, i32 0, i32 33
  %5490 = getelementptr inbounds %struct.Reg, %struct.Reg* %5489, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %5490 to i64*
  %5491 = load i64, i64* %PC.i233
  %5492 = add i64 %5491, 245
  %5493 = load i64, i64* %PC.i233
  %5494 = add i64 %5493, 6
  %5495 = load i64, i64* %PC.i233
  %5496 = add i64 %5495, 6
  store i64 %5496, i64* %PC.i233
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5498 = load i8, i8* %5497, align 1
  %5499 = icmp eq i8 %5498, 0
  %5500 = zext i1 %5499 to i8
  store i8 %5500, i8* %BRANCH_TAKEN, align 1
  %5501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5502 = select i1 %5499, i64 %5492, i64 %5494
  store i64 %5502, i64* %5501, align 8
  store %struct.Memory* %loadMem_467475, %struct.Memory** %MEMORY
  %loadBr_467475 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467475 = icmp eq i8 %loadBr_467475, 1
  br i1 %cmpBr_467475, label %block_.L_46756a, label %block_46747b

block_46747b:                                     ; preds = %block_467464
  %loadMem_46747b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5504 = getelementptr inbounds %struct.GPR, %struct.GPR* %5503, i32 0, i32 33
  %5505 = getelementptr inbounds %struct.Reg, %struct.Reg* %5504, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %5505 to i64*
  %5506 = load i64, i64* %PC.i232
  %5507 = add i64 %5506, 5
  %5508 = load i64, i64* %PC.i232
  %5509 = add i64 %5508, 5
  store i64 %5509, i64* %PC.i232
  %5510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5507, i64* %5510, align 8
  store %struct.Memory* %loadMem_46747b, %struct.Memory** %MEMORY
  br label %block_.L_467480

block_.L_467480:                                  ; preds = %block_46747b
  %loadMem_467480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5512 = getelementptr inbounds %struct.GPR, %struct.GPR* %5511, i32 0, i32 33
  %5513 = getelementptr inbounds %struct.Reg, %struct.Reg* %5512, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %5513 to i64*
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5515 = getelementptr inbounds %struct.GPR, %struct.GPR* %5514, i32 0, i32 15
  %5516 = getelementptr inbounds %struct.Reg, %struct.Reg* %5515, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %5516 to i64*
  %5517 = load i64, i64* %RBP.i231
  %5518 = sub i64 %5517, 704
  %5519 = load i64, i64* %PC.i230
  %5520 = add i64 %5519, 10
  store i64 %5520, i64* %PC.i230
  %5521 = inttoptr i64 %5518 to i32*
  store i32 0, i32* %5521
  store %struct.Memory* %loadMem_467480, %struct.Memory** %MEMORY
  br label %block_.L_46748a

block_.L_46748a:                                  ; preds = %block_.L_4674e0, %block_.L_467480
  %loadMem_46748a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5523 = getelementptr inbounds %struct.GPR, %struct.GPR* %5522, i32 0, i32 33
  %5524 = getelementptr inbounds %struct.Reg, %struct.Reg* %5523, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %5524 to i64*
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5526 = getelementptr inbounds %struct.GPR, %struct.GPR* %5525, i32 0, i32 1
  %5527 = getelementptr inbounds %struct.Reg, %struct.Reg* %5526, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %5527 to i64*
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5529 = getelementptr inbounds %struct.GPR, %struct.GPR* %5528, i32 0, i32 15
  %5530 = getelementptr inbounds %struct.Reg, %struct.Reg* %5529, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %5530 to i64*
  %5531 = load i64, i64* %RBP.i229
  %5532 = sub i64 %5531, 704
  %5533 = load i64, i64* %PC.i227
  %5534 = add i64 %5533, 6
  store i64 %5534, i64* %PC.i227
  %5535 = inttoptr i64 %5532 to i32*
  %5536 = load i32, i32* %5535
  %5537 = zext i32 %5536 to i64
  store i64 %5537, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_46748a, %struct.Memory** %MEMORY
  %loadMem_467490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5539 = getelementptr inbounds %struct.GPR, %struct.GPR* %5538, i32 0, i32 33
  %5540 = getelementptr inbounds %struct.Reg, %struct.Reg* %5539, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %5540 to i64*
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5542 = getelementptr inbounds %struct.GPR, %struct.GPR* %5541, i32 0, i32 5
  %5543 = getelementptr inbounds %struct.Reg, %struct.Reg* %5542, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %5543 to i64*
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5545 = getelementptr inbounds %struct.GPR, %struct.GPR* %5544, i32 0, i32 15
  %5546 = getelementptr inbounds %struct.Reg, %struct.Reg* %5545, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %5546 to i64*
  %5547 = load i64, i64* %RBP.i226
  %5548 = sub i64 %5547, 16
  %5549 = load i64, i64* %PC.i224
  %5550 = add i64 %5549, 4
  store i64 %5550, i64* %PC.i224
  %5551 = inttoptr i64 %5548 to i64*
  %5552 = load i64, i64* %5551
  store i64 %5552, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_467490, %struct.Memory** %MEMORY
  %loadMem_467494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5554 = getelementptr inbounds %struct.GPR, %struct.GPR* %5553, i32 0, i32 33
  %5555 = getelementptr inbounds %struct.Reg, %struct.Reg* %5554, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %5555 to i64*
  %5556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5557 = getelementptr inbounds %struct.GPR, %struct.GPR* %5556, i32 0, i32 1
  %5558 = getelementptr inbounds %struct.Reg, %struct.Reg* %5557, i32 0, i32 0
  %EAX.i222 = bitcast %union.anon* %5558 to i32*
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5560 = getelementptr inbounds %struct.GPR, %struct.GPR* %5559, i32 0, i32 5
  %5561 = getelementptr inbounds %struct.Reg, %struct.Reg* %5560, i32 0, i32 0
  %RCX.i223 = bitcast %union.anon* %5561 to i64*
  %5562 = load i32, i32* %EAX.i222
  %5563 = zext i32 %5562 to i64
  %5564 = load i64, i64* %RCX.i223
  %5565 = add i64 %5564, 400
  %5566 = load i64, i64* %PC.i221
  %5567 = add i64 %5566, 6
  store i64 %5567, i64* %PC.i221
  %5568 = inttoptr i64 %5565 to i32*
  %5569 = load i32, i32* %5568
  %5570 = sub i32 %5562, %5569
  %5571 = icmp ult i32 %5562, %5569
  %5572 = zext i1 %5571 to i8
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5572, i8* %5573, align 1
  %5574 = and i32 %5570, 255
  %5575 = call i32 @llvm.ctpop.i32(i32 %5574)
  %5576 = trunc i32 %5575 to i8
  %5577 = and i8 %5576, 1
  %5578 = xor i8 %5577, 1
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5578, i8* %5579, align 1
  %5580 = xor i32 %5569, %5562
  %5581 = xor i32 %5580, %5570
  %5582 = lshr i32 %5581, 4
  %5583 = trunc i32 %5582 to i8
  %5584 = and i8 %5583, 1
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5584, i8* %5585, align 1
  %5586 = icmp eq i32 %5570, 0
  %5587 = zext i1 %5586 to i8
  %5588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5587, i8* %5588, align 1
  %5589 = lshr i32 %5570, 31
  %5590 = trunc i32 %5589 to i8
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5590, i8* %5591, align 1
  %5592 = lshr i32 %5562, 31
  %5593 = lshr i32 %5569, 31
  %5594 = xor i32 %5593, %5592
  %5595 = xor i32 %5589, %5592
  %5596 = add i32 %5595, %5594
  %5597 = icmp eq i32 %5596, 2
  %5598 = zext i1 %5597 to i8
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5598, i8* %5599, align 1
  store %struct.Memory* %loadMem_467494, %struct.Memory** %MEMORY
  %loadMem_46749a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5601 = getelementptr inbounds %struct.GPR, %struct.GPR* %5600, i32 0, i32 33
  %5602 = getelementptr inbounds %struct.Reg, %struct.Reg* %5601, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %5602 to i64*
  %5603 = load i64, i64* %PC.i220
  %5604 = add i64 %5603, 90
  %5605 = load i64, i64* %PC.i220
  %5606 = add i64 %5605, 6
  %5607 = load i64, i64* %PC.i220
  %5608 = add i64 %5607, 6
  store i64 %5608, i64* %PC.i220
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5610 = load i8, i8* %5609, align 1
  %5611 = icmp ne i8 %5610, 0
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5613 = load i8, i8* %5612, align 1
  %5614 = icmp ne i8 %5613, 0
  %5615 = xor i1 %5611, %5614
  %5616 = xor i1 %5615, true
  %5617 = zext i1 %5616 to i8
  store i8 %5617, i8* %BRANCH_TAKEN, align 1
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5619 = select i1 %5615, i64 %5606, i64 %5604
  store i64 %5619, i64* %5618, align 8
  store %struct.Memory* %loadMem_46749a, %struct.Memory** %MEMORY
  %loadBr_46749a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46749a = icmp eq i8 %loadBr_46749a, 1
  br i1 %cmpBr_46749a, label %block_.L_4674f4, label %block_4674a0

block_4674a0:                                     ; preds = %block_.L_46748a
  %loadMem_4674a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5621 = getelementptr inbounds %struct.GPR, %struct.GPR* %5620, i32 0, i32 33
  %5622 = getelementptr inbounds %struct.Reg, %struct.Reg* %5621, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %5622 to i64*
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5624 = getelementptr inbounds %struct.GPR, %struct.GPR* %5623, i32 0, i32 1
  %5625 = getelementptr inbounds %struct.Reg, %struct.Reg* %5624, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %5625 to i64*
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5627 = getelementptr inbounds %struct.GPR, %struct.GPR* %5626, i32 0, i32 15
  %5628 = getelementptr inbounds %struct.Reg, %struct.Reg* %5627, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %5628 to i64*
  %5629 = load i64, i64* %RBP.i219
  %5630 = sub i64 %5629, 16
  %5631 = load i64, i64* %PC.i217
  %5632 = add i64 %5631, 4
  store i64 %5632, i64* %PC.i217
  %5633 = inttoptr i64 %5630 to i64*
  %5634 = load i64, i64* %5633
  store i64 %5634, i64* %RAX.i218, align 8
  store %struct.Memory* %loadMem_4674a0, %struct.Memory** %MEMORY
  %loadMem_4674a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5636 = getelementptr inbounds %struct.GPR, %struct.GPR* %5635, i32 0, i32 33
  %5637 = getelementptr inbounds %struct.Reg, %struct.Reg* %5636, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %5637 to i64*
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5639 = getelementptr inbounds %struct.GPR, %struct.GPR* %5638, i32 0, i32 5
  %5640 = getelementptr inbounds %struct.Reg, %struct.Reg* %5639, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %5640 to i64*
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5642 = getelementptr inbounds %struct.GPR, %struct.GPR* %5641, i32 0, i32 15
  %5643 = getelementptr inbounds %struct.Reg, %struct.Reg* %5642, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %5643 to i64*
  %5644 = load i64, i64* %RBP.i216
  %5645 = sub i64 %5644, 704
  %5646 = load i64, i64* %PC.i214
  %5647 = add i64 %5646, 7
  store i64 %5647, i64* %PC.i214
  %5648 = inttoptr i64 %5645 to i32*
  %5649 = load i32, i32* %5648
  %5650 = sext i32 %5649 to i64
  store i64 %5650, i64* %RCX.i215, align 8
  store %struct.Memory* %loadMem_4674a4, %struct.Memory** %MEMORY
  %loadMem_4674ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5652 = getelementptr inbounds %struct.GPR, %struct.GPR* %5651, i32 0, i32 33
  %5653 = getelementptr inbounds %struct.Reg, %struct.Reg* %5652, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %5653 to i64*
  %5654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5655 = getelementptr inbounds %struct.GPR, %struct.GPR* %5654, i32 0, i32 1
  %5656 = getelementptr inbounds %struct.Reg, %struct.Reg* %5655, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %5656 to i64*
  %5657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5658 = getelementptr inbounds %struct.GPR, %struct.GPR* %5657, i32 0, i32 5
  %5659 = getelementptr inbounds %struct.Reg, %struct.Reg* %5658, i32 0, i32 0
  %RCX.i212 = bitcast %union.anon* %5659 to i64*
  %5660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5661 = getelementptr inbounds %struct.GPR, %struct.GPR* %5660, i32 0, i32 7
  %5662 = getelementptr inbounds %struct.Reg, %struct.Reg* %5661, i32 0, i32 0
  %RDX.i213 = bitcast %union.anon* %5662 to i64*
  %5663 = load i64, i64* %RAX.i211
  %5664 = load i64, i64* %RCX.i212
  %5665 = mul i64 %5664, 4
  %5666 = add i64 %5665, %5663
  %5667 = load i64, i64* %PC.i210
  %5668 = add i64 %5667, 3
  store i64 %5668, i64* %PC.i210
  %5669 = inttoptr i64 %5666 to i32*
  %5670 = load i32, i32* %5669
  %5671 = zext i32 %5670 to i64
  store i64 %5671, i64* %RDX.i213, align 8
  store %struct.Memory* %loadMem_4674ab, %struct.Memory** %MEMORY
  %loadMem_4674ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5673 = getelementptr inbounds %struct.GPR, %struct.GPR* %5672, i32 0, i32 33
  %5674 = getelementptr inbounds %struct.Reg, %struct.Reg* %5673, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %5674 to i64*
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5676 = getelementptr inbounds %struct.GPR, %struct.GPR* %5675, i32 0, i32 7
  %5677 = getelementptr inbounds %struct.Reg, %struct.Reg* %5676, i32 0, i32 0
  %EDX.i208 = bitcast %union.anon* %5677 to i32*
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5679 = getelementptr inbounds %struct.GPR, %struct.GPR* %5678, i32 0, i32 15
  %5680 = getelementptr inbounds %struct.Reg, %struct.Reg* %5679, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %5680 to i64*
  %5681 = load i32, i32* %EDX.i208
  %5682 = zext i32 %5681 to i64
  %5683 = load i64, i64* %RBP.i209
  %5684 = sub i64 %5683, 676
  %5685 = load i64, i64* %PC.i207
  %5686 = add i64 %5685, 6
  store i64 %5686, i64* %PC.i207
  %5687 = inttoptr i64 %5684 to i32*
  %5688 = load i32, i32* %5687
  %5689 = sub i32 %5681, %5688
  %5690 = icmp ult i32 %5681, %5688
  %5691 = zext i1 %5690 to i8
  %5692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5691, i8* %5692, align 1
  %5693 = and i32 %5689, 255
  %5694 = call i32 @llvm.ctpop.i32(i32 %5693)
  %5695 = trunc i32 %5694 to i8
  %5696 = and i8 %5695, 1
  %5697 = xor i8 %5696, 1
  %5698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5697, i8* %5698, align 1
  %5699 = xor i32 %5688, %5681
  %5700 = xor i32 %5699, %5689
  %5701 = lshr i32 %5700, 4
  %5702 = trunc i32 %5701 to i8
  %5703 = and i8 %5702, 1
  %5704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5703, i8* %5704, align 1
  %5705 = icmp eq i32 %5689, 0
  %5706 = zext i1 %5705 to i8
  %5707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5706, i8* %5707, align 1
  %5708 = lshr i32 %5689, 31
  %5709 = trunc i32 %5708 to i8
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5709, i8* %5710, align 1
  %5711 = lshr i32 %5681, 31
  %5712 = lshr i32 %5688, 31
  %5713 = xor i32 %5712, %5711
  %5714 = xor i32 %5708, %5711
  %5715 = add i32 %5714, %5713
  %5716 = icmp eq i32 %5715, 2
  %5717 = zext i1 %5716 to i8
  %5718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5717, i8* %5718, align 1
  store %struct.Memory* %loadMem_4674ae, %struct.Memory** %MEMORY
  %loadMem_4674b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5720 = getelementptr inbounds %struct.GPR, %struct.GPR* %5719, i32 0, i32 33
  %5721 = getelementptr inbounds %struct.Reg, %struct.Reg* %5720, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %5721 to i64*
  %5722 = load i64, i64* %PC.i206
  %5723 = add i64 %5722, 39
  %5724 = load i64, i64* %PC.i206
  %5725 = add i64 %5724, 6
  %5726 = load i64, i64* %PC.i206
  %5727 = add i64 %5726, 6
  store i64 %5727, i64* %PC.i206
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5729 = load i8, i8* %5728, align 1
  %5730 = icmp eq i8 %5729, 0
  %5731 = zext i1 %5730 to i8
  store i8 %5731, i8* %BRANCH_TAKEN, align 1
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5733 = select i1 %5730, i64 %5723, i64 %5725
  store i64 %5733, i64* %5732, align 8
  store %struct.Memory* %loadMem_4674b4, %struct.Memory** %MEMORY
  %loadBr_4674b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4674b4 = icmp eq i8 %loadBr_4674b4, 1
  br i1 %cmpBr_4674b4, label %block_.L_4674db, label %block_4674ba

block_4674ba:                                     ; preds = %block_4674a0
  %loadMem_4674ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5735 = getelementptr inbounds %struct.GPR, %struct.GPR* %5734, i32 0, i32 33
  %5736 = getelementptr inbounds %struct.Reg, %struct.Reg* %5735, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %5736 to i64*
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5738 = getelementptr inbounds %struct.GPR, %struct.GPR* %5737, i32 0, i32 1
  %5739 = getelementptr inbounds %struct.Reg, %struct.Reg* %5738, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %5739 to i64*
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5741 = getelementptr inbounds %struct.GPR, %struct.GPR* %5740, i32 0, i32 15
  %5742 = getelementptr inbounds %struct.Reg, %struct.Reg* %5741, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %5742 to i64*
  %5743 = load i64, i64* %RBP.i205
  %5744 = sub i64 %5743, 16
  %5745 = load i64, i64* %PC.i203
  %5746 = add i64 %5745, 4
  store i64 %5746, i64* %PC.i203
  %5747 = inttoptr i64 %5744 to i64*
  %5748 = load i64, i64* %5747
  store i64 %5748, i64* %RAX.i204, align 8
  store %struct.Memory* %loadMem_4674ba, %struct.Memory** %MEMORY
  %loadMem_4674be = load %struct.Memory*, %struct.Memory** %MEMORY
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5750 = getelementptr inbounds %struct.GPR, %struct.GPR* %5749, i32 0, i32 33
  %5751 = getelementptr inbounds %struct.Reg, %struct.Reg* %5750, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %5751 to i64*
  %5752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5753 = getelementptr inbounds %struct.GPR, %struct.GPR* %5752, i32 0, i32 5
  %5754 = getelementptr inbounds %struct.Reg, %struct.Reg* %5753, i32 0, i32 0
  %RCX.i201 = bitcast %union.anon* %5754 to i64*
  %5755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5756 = getelementptr inbounds %struct.GPR, %struct.GPR* %5755, i32 0, i32 15
  %5757 = getelementptr inbounds %struct.Reg, %struct.Reg* %5756, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %5757 to i64*
  %5758 = load i64, i64* %RBP.i202
  %5759 = sub i64 %5758, 704
  %5760 = load i64, i64* %PC.i200
  %5761 = add i64 %5760, 7
  store i64 %5761, i64* %PC.i200
  %5762 = inttoptr i64 %5759 to i32*
  %5763 = load i32, i32* %5762
  %5764 = sext i32 %5763 to i64
  store i64 %5764, i64* %RCX.i201, align 8
  store %struct.Memory* %loadMem_4674be, %struct.Memory** %MEMORY
  %loadMem_4674c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5766 = getelementptr inbounds %struct.GPR, %struct.GPR* %5765, i32 0, i32 33
  %5767 = getelementptr inbounds %struct.Reg, %struct.Reg* %5766, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %5767 to i64*
  %5768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5769 = getelementptr inbounds %struct.GPR, %struct.GPR* %5768, i32 0, i32 1
  %5770 = getelementptr inbounds %struct.Reg, %struct.Reg* %5769, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %5770 to i64*
  %5771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5772 = getelementptr inbounds %struct.GPR, %struct.GPR* %5771, i32 0, i32 5
  %5773 = getelementptr inbounds %struct.Reg, %struct.Reg* %5772, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %5773 to i64*
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5775 = getelementptr inbounds %struct.GPR, %struct.GPR* %5774, i32 0, i32 7
  %5776 = getelementptr inbounds %struct.Reg, %struct.Reg* %5775, i32 0, i32 0
  %RDX.i199 = bitcast %union.anon* %5776 to i64*
  %5777 = load i64, i64* %RAX.i197
  %5778 = load i64, i64* %RCX.i198
  %5779 = mul i64 %5778, 4
  %5780 = add i64 %5777, 200
  %5781 = add i64 %5780, %5779
  %5782 = load i64, i64* %PC.i196
  %5783 = add i64 %5782, 7
  store i64 %5783, i64* %PC.i196
  %5784 = inttoptr i64 %5781 to i32*
  %5785 = load i32, i32* %5784
  %5786 = zext i32 %5785 to i64
  store i64 %5786, i64* %RDX.i199, align 8
  store %struct.Memory* %loadMem_4674c5, %struct.Memory** %MEMORY
  %loadMem_4674cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5788 = getelementptr inbounds %struct.GPR, %struct.GPR* %5787, i32 0, i32 33
  %5789 = getelementptr inbounds %struct.Reg, %struct.Reg* %5788, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %5789 to i64*
  %5790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5791 = getelementptr inbounds %struct.GPR, %struct.GPR* %5790, i32 0, i32 7
  %5792 = getelementptr inbounds %struct.Reg, %struct.Reg* %5791, i32 0, i32 0
  %RDX.i195 = bitcast %union.anon* %5792 to i64*
  %5793 = load i64, i64* %RDX.i195
  %5794 = load i64, i64* %PC.i194
  %5795 = add i64 %5794, 3
  store i64 %5795, i64* %PC.i194
  %5796 = trunc i64 %5793 to i32
  %5797 = add i32 1, %5796
  %5798 = zext i32 %5797 to i64
  store i64 %5798, i64* %RDX.i195, align 8
  %5799 = icmp ult i32 %5797, %5796
  %5800 = icmp ult i32 %5797, 1
  %5801 = or i1 %5799, %5800
  %5802 = zext i1 %5801 to i8
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5802, i8* %5803, align 1
  %5804 = and i32 %5797, 255
  %5805 = call i32 @llvm.ctpop.i32(i32 %5804)
  %5806 = trunc i32 %5805 to i8
  %5807 = and i8 %5806, 1
  %5808 = xor i8 %5807, 1
  %5809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5808, i8* %5809, align 1
  %5810 = xor i64 1, %5793
  %5811 = trunc i64 %5810 to i32
  %5812 = xor i32 %5811, %5797
  %5813 = lshr i32 %5812, 4
  %5814 = trunc i32 %5813 to i8
  %5815 = and i8 %5814, 1
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5815, i8* %5816, align 1
  %5817 = icmp eq i32 %5797, 0
  %5818 = zext i1 %5817 to i8
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5818, i8* %5819, align 1
  %5820 = lshr i32 %5797, 31
  %5821 = trunc i32 %5820 to i8
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5821, i8* %5822, align 1
  %5823 = lshr i32 %5796, 31
  %5824 = xor i32 %5820, %5823
  %5825 = add i32 %5824, %5820
  %5826 = icmp eq i32 %5825, 2
  %5827 = zext i1 %5826 to i8
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5827, i8* %5828, align 1
  store %struct.Memory* %loadMem_4674cc, %struct.Memory** %MEMORY
  %loadMem_4674cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5830 = getelementptr inbounds %struct.GPR, %struct.GPR* %5829, i32 0, i32 33
  %5831 = getelementptr inbounds %struct.Reg, %struct.Reg* %5830, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %5831 to i64*
  %5832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5833 = getelementptr inbounds %struct.GPR, %struct.GPR* %5832, i32 0, i32 7
  %5834 = getelementptr inbounds %struct.Reg, %struct.Reg* %5833, i32 0, i32 0
  %EDX.i191 = bitcast %union.anon* %5834 to i32*
  %5835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5836 = getelementptr inbounds %struct.GPR, %struct.GPR* %5835, i32 0, i32 1
  %5837 = getelementptr inbounds %struct.Reg, %struct.Reg* %5836, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %5837 to i64*
  %5838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5839 = getelementptr inbounds %struct.GPR, %struct.GPR* %5838, i32 0, i32 5
  %5840 = getelementptr inbounds %struct.Reg, %struct.Reg* %5839, i32 0, i32 0
  %RCX.i193 = bitcast %union.anon* %5840 to i64*
  %5841 = load i64, i64* %RAX.i192
  %5842 = load i64, i64* %RCX.i193
  %5843 = mul i64 %5842, 4
  %5844 = add i64 %5841, 200
  %5845 = add i64 %5844, %5843
  %5846 = load i32, i32* %EDX.i191
  %5847 = zext i32 %5846 to i64
  %5848 = load i64, i64* %PC.i190
  %5849 = add i64 %5848, 7
  store i64 %5849, i64* %PC.i190
  %5850 = inttoptr i64 %5845 to i32*
  store i32 %5846, i32* %5850
  store %struct.Memory* %loadMem_4674cf, %struct.Memory** %MEMORY
  %loadMem_4674d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5852 = getelementptr inbounds %struct.GPR, %struct.GPR* %5851, i32 0, i32 33
  %5853 = getelementptr inbounds %struct.Reg, %struct.Reg* %5852, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %5853 to i64*
  %5854 = load i64, i64* %PC.i189
  %5855 = add i64 %5854, 30
  %5856 = load i64, i64* %PC.i189
  %5857 = add i64 %5856, 5
  store i64 %5857, i64* %PC.i189
  %5858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5855, i64* %5858, align 8
  store %struct.Memory* %loadMem_4674d6, %struct.Memory** %MEMORY
  br label %block_.L_4674f4

block_.L_4674db:                                  ; preds = %block_4674a0
  %loadMem_4674db = load %struct.Memory*, %struct.Memory** %MEMORY
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5860 = getelementptr inbounds %struct.GPR, %struct.GPR* %5859, i32 0, i32 33
  %5861 = getelementptr inbounds %struct.Reg, %struct.Reg* %5860, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %5861 to i64*
  %5862 = load i64, i64* %PC.i188
  %5863 = add i64 %5862, 5
  %5864 = load i64, i64* %PC.i188
  %5865 = add i64 %5864, 5
  store i64 %5865, i64* %PC.i188
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5863, i64* %5866, align 8
  store %struct.Memory* %loadMem_4674db, %struct.Memory** %MEMORY
  br label %block_.L_4674e0

block_.L_4674e0:                                  ; preds = %block_.L_4674db
  %loadMem_4674e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5868 = getelementptr inbounds %struct.GPR, %struct.GPR* %5867, i32 0, i32 33
  %5869 = getelementptr inbounds %struct.Reg, %struct.Reg* %5868, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %5869 to i64*
  %5870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5871 = getelementptr inbounds %struct.GPR, %struct.GPR* %5870, i32 0, i32 1
  %5872 = getelementptr inbounds %struct.Reg, %struct.Reg* %5871, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %5872 to i64*
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5874 = getelementptr inbounds %struct.GPR, %struct.GPR* %5873, i32 0, i32 15
  %5875 = getelementptr inbounds %struct.Reg, %struct.Reg* %5874, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %5875 to i64*
  %5876 = load i64, i64* %RBP.i187
  %5877 = sub i64 %5876, 704
  %5878 = load i64, i64* %PC.i185
  %5879 = add i64 %5878, 6
  store i64 %5879, i64* %PC.i185
  %5880 = inttoptr i64 %5877 to i32*
  %5881 = load i32, i32* %5880
  %5882 = zext i32 %5881 to i64
  store i64 %5882, i64* %RAX.i186, align 8
  store %struct.Memory* %loadMem_4674e0, %struct.Memory** %MEMORY
  %loadMem_4674e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5884 = getelementptr inbounds %struct.GPR, %struct.GPR* %5883, i32 0, i32 33
  %5885 = getelementptr inbounds %struct.Reg, %struct.Reg* %5884, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %5885 to i64*
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5887 = getelementptr inbounds %struct.GPR, %struct.GPR* %5886, i32 0, i32 1
  %5888 = getelementptr inbounds %struct.Reg, %struct.Reg* %5887, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %5888 to i64*
  %5889 = load i64, i64* %RAX.i184
  %5890 = load i64, i64* %PC.i183
  %5891 = add i64 %5890, 3
  store i64 %5891, i64* %PC.i183
  %5892 = trunc i64 %5889 to i32
  %5893 = add i32 1, %5892
  %5894 = zext i32 %5893 to i64
  store i64 %5894, i64* %RAX.i184, align 8
  %5895 = icmp ult i32 %5893, %5892
  %5896 = icmp ult i32 %5893, 1
  %5897 = or i1 %5895, %5896
  %5898 = zext i1 %5897 to i8
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5898, i8* %5899, align 1
  %5900 = and i32 %5893, 255
  %5901 = call i32 @llvm.ctpop.i32(i32 %5900)
  %5902 = trunc i32 %5901 to i8
  %5903 = and i8 %5902, 1
  %5904 = xor i8 %5903, 1
  %5905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5904, i8* %5905, align 1
  %5906 = xor i64 1, %5889
  %5907 = trunc i64 %5906 to i32
  %5908 = xor i32 %5907, %5893
  %5909 = lshr i32 %5908, 4
  %5910 = trunc i32 %5909 to i8
  %5911 = and i8 %5910, 1
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5911, i8* %5912, align 1
  %5913 = icmp eq i32 %5893, 0
  %5914 = zext i1 %5913 to i8
  %5915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5914, i8* %5915, align 1
  %5916 = lshr i32 %5893, 31
  %5917 = trunc i32 %5916 to i8
  %5918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5917, i8* %5918, align 1
  %5919 = lshr i32 %5892, 31
  %5920 = xor i32 %5916, %5919
  %5921 = add i32 %5920, %5916
  %5922 = icmp eq i32 %5921, 2
  %5923 = zext i1 %5922 to i8
  %5924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5923, i8* %5924, align 1
  store %struct.Memory* %loadMem_4674e6, %struct.Memory** %MEMORY
  %loadMem_4674e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5926 = getelementptr inbounds %struct.GPR, %struct.GPR* %5925, i32 0, i32 33
  %5927 = getelementptr inbounds %struct.Reg, %struct.Reg* %5926, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %5927 to i64*
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5929 = getelementptr inbounds %struct.GPR, %struct.GPR* %5928, i32 0, i32 1
  %5930 = getelementptr inbounds %struct.Reg, %struct.Reg* %5929, i32 0, i32 0
  %EAX.i181 = bitcast %union.anon* %5930 to i32*
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5932 = getelementptr inbounds %struct.GPR, %struct.GPR* %5931, i32 0, i32 15
  %5933 = getelementptr inbounds %struct.Reg, %struct.Reg* %5932, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %5933 to i64*
  %5934 = load i64, i64* %RBP.i182
  %5935 = sub i64 %5934, 704
  %5936 = load i32, i32* %EAX.i181
  %5937 = zext i32 %5936 to i64
  %5938 = load i64, i64* %PC.i180
  %5939 = add i64 %5938, 6
  store i64 %5939, i64* %PC.i180
  %5940 = inttoptr i64 %5935 to i32*
  store i32 %5936, i32* %5940
  store %struct.Memory* %loadMem_4674e9, %struct.Memory** %MEMORY
  %loadMem_4674ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5942 = getelementptr inbounds %struct.GPR, %struct.GPR* %5941, i32 0, i32 33
  %5943 = getelementptr inbounds %struct.Reg, %struct.Reg* %5942, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %5943 to i64*
  %5944 = load i64, i64* %PC.i179
  %5945 = add i64 %5944, -101
  %5946 = load i64, i64* %PC.i179
  %5947 = add i64 %5946, 5
  store i64 %5947, i64* %PC.i179
  %5948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5945, i64* %5948, align 8
  store %struct.Memory* %loadMem_4674ef, %struct.Memory** %MEMORY
  br label %block_.L_46748a

block_.L_4674f4:                                  ; preds = %block_4674ba, %block_.L_46748a
  %loadMem_4674f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5950 = getelementptr inbounds %struct.GPR, %struct.GPR* %5949, i32 0, i32 33
  %5951 = getelementptr inbounds %struct.Reg, %struct.Reg* %5950, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %5951 to i64*
  %5952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5953 = getelementptr inbounds %struct.GPR, %struct.GPR* %5952, i32 0, i32 1
  %5954 = getelementptr inbounds %struct.Reg, %struct.Reg* %5953, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %5954 to i64*
  %5955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5956 = getelementptr inbounds %struct.GPR, %struct.GPR* %5955, i32 0, i32 15
  %5957 = getelementptr inbounds %struct.Reg, %struct.Reg* %5956, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %5957 to i64*
  %5958 = load i64, i64* %RBP.i178
  %5959 = sub i64 %5958, 704
  %5960 = load i64, i64* %PC.i176
  %5961 = add i64 %5960, 6
  store i64 %5961, i64* %PC.i176
  %5962 = inttoptr i64 %5959 to i32*
  %5963 = load i32, i32* %5962
  %5964 = zext i32 %5963 to i64
  store i64 %5964, i64* %RAX.i177, align 8
  store %struct.Memory* %loadMem_4674f4, %struct.Memory** %MEMORY
  %loadMem_4674fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5966 = getelementptr inbounds %struct.GPR, %struct.GPR* %5965, i32 0, i32 33
  %5967 = getelementptr inbounds %struct.Reg, %struct.Reg* %5966, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %5967 to i64*
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5969 = getelementptr inbounds %struct.GPR, %struct.GPR* %5968, i32 0, i32 5
  %5970 = getelementptr inbounds %struct.Reg, %struct.Reg* %5969, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %5970 to i64*
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5972 = getelementptr inbounds %struct.GPR, %struct.GPR* %5971, i32 0, i32 15
  %5973 = getelementptr inbounds %struct.Reg, %struct.Reg* %5972, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %5973 to i64*
  %5974 = load i64, i64* %RBP.i175
  %5975 = sub i64 %5974, 16
  %5976 = load i64, i64* %PC.i173
  %5977 = add i64 %5976, 4
  store i64 %5977, i64* %PC.i173
  %5978 = inttoptr i64 %5975 to i64*
  %5979 = load i64, i64* %5978
  store i64 %5979, i64* %RCX.i174, align 8
  store %struct.Memory* %loadMem_4674fa, %struct.Memory** %MEMORY
  %loadMem_4674fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5981 = getelementptr inbounds %struct.GPR, %struct.GPR* %5980, i32 0, i32 33
  %5982 = getelementptr inbounds %struct.Reg, %struct.Reg* %5981, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %5982 to i64*
  %5983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5984 = getelementptr inbounds %struct.GPR, %struct.GPR* %5983, i32 0, i32 1
  %5985 = getelementptr inbounds %struct.Reg, %struct.Reg* %5984, i32 0, i32 0
  %EAX.i171 = bitcast %union.anon* %5985 to i32*
  %5986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5987 = getelementptr inbounds %struct.GPR, %struct.GPR* %5986, i32 0, i32 5
  %5988 = getelementptr inbounds %struct.Reg, %struct.Reg* %5987, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %5988 to i64*
  %5989 = load i32, i32* %EAX.i171
  %5990 = zext i32 %5989 to i64
  %5991 = load i64, i64* %RCX.i172
  %5992 = add i64 %5991, 400
  %5993 = load i64, i64* %PC.i170
  %5994 = add i64 %5993, 6
  store i64 %5994, i64* %PC.i170
  %5995 = inttoptr i64 %5992 to i32*
  %5996 = load i32, i32* %5995
  %5997 = sub i32 %5989, %5996
  %5998 = icmp ult i32 %5989, %5996
  %5999 = zext i1 %5998 to i8
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5999, i8* %6000, align 1
  %6001 = and i32 %5997, 255
  %6002 = call i32 @llvm.ctpop.i32(i32 %6001)
  %6003 = trunc i32 %6002 to i8
  %6004 = and i8 %6003, 1
  %6005 = xor i8 %6004, 1
  %6006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6005, i8* %6006, align 1
  %6007 = xor i32 %5996, %5989
  %6008 = xor i32 %6007, %5997
  %6009 = lshr i32 %6008, 4
  %6010 = trunc i32 %6009 to i8
  %6011 = and i8 %6010, 1
  %6012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6011, i8* %6012, align 1
  %6013 = icmp eq i32 %5997, 0
  %6014 = zext i1 %6013 to i8
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6014, i8* %6015, align 1
  %6016 = lshr i32 %5997, 31
  %6017 = trunc i32 %6016 to i8
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6017, i8* %6018, align 1
  %6019 = lshr i32 %5989, 31
  %6020 = lshr i32 %5996, 31
  %6021 = xor i32 %6020, %6019
  %6022 = xor i32 %6016, %6019
  %6023 = add i32 %6022, %6021
  %6024 = icmp eq i32 %6023, 2
  %6025 = zext i1 %6024 to i8
  %6026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6025, i8* %6026, align 1
  store %struct.Memory* %loadMem_4674fe, %struct.Memory** %MEMORY
  %loadMem_467504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6028 = getelementptr inbounds %struct.GPR, %struct.GPR* %6027, i32 0, i32 33
  %6029 = getelementptr inbounds %struct.Reg, %struct.Reg* %6028, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %6029 to i64*
  %6030 = load i64, i64* %PC.i169
  %6031 = add i64 %6030, 92
  %6032 = load i64, i64* %PC.i169
  %6033 = add i64 %6032, 6
  %6034 = load i64, i64* %PC.i169
  %6035 = add i64 %6034, 6
  store i64 %6035, i64* %PC.i169
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6037 = load i8, i8* %6036, align 1
  %6038 = icmp eq i8 %6037, 0
  %6039 = zext i1 %6038 to i8
  store i8 %6039, i8* %BRANCH_TAKEN, align 1
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6041 = select i1 %6038, i64 %6031, i64 %6033
  store i64 %6041, i64* %6040, align 8
  store %struct.Memory* %loadMem_467504, %struct.Memory** %MEMORY
  %loadBr_467504 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467504 = icmp eq i8 %loadBr_467504, 1
  br i1 %cmpBr_467504, label %block_.L_467560, label %block_46750a

block_46750a:                                     ; preds = %block_.L_4674f4
  %loadMem_46750a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6043 = getelementptr inbounds %struct.GPR, %struct.GPR* %6042, i32 0, i32 33
  %6044 = getelementptr inbounds %struct.Reg, %struct.Reg* %6043, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %6044 to i64*
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6046 = getelementptr inbounds %struct.GPR, %struct.GPR* %6045, i32 0, i32 1
  %6047 = getelementptr inbounds %struct.Reg, %struct.Reg* %6046, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %6047 to i64*
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6049 = getelementptr inbounds %struct.GPR, %struct.GPR* %6048, i32 0, i32 15
  %6050 = getelementptr inbounds %struct.Reg, %struct.Reg* %6049, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %6050 to i64*
  %6051 = load i64, i64* %RBP.i168
  %6052 = sub i64 %6051, 16
  %6053 = load i64, i64* %PC.i166
  %6054 = add i64 %6053, 4
  store i64 %6054, i64* %PC.i166
  %6055 = inttoptr i64 %6052 to i64*
  %6056 = load i64, i64* %6055
  store i64 %6056, i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_46750a, %struct.Memory** %MEMORY
  %loadMem_46750e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6058 = getelementptr inbounds %struct.GPR, %struct.GPR* %6057, i32 0, i32 33
  %6059 = getelementptr inbounds %struct.Reg, %struct.Reg* %6058, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %6059 to i64*
  %6060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6061 = getelementptr inbounds %struct.GPR, %struct.GPR* %6060, i32 0, i32 1
  %6062 = getelementptr inbounds %struct.Reg, %struct.Reg* %6061, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %6062 to i64*
  %6063 = load i64, i64* %RAX.i165
  %6064 = add i64 %6063, 400
  %6065 = load i64, i64* %PC.i164
  %6066 = add i64 %6065, 7
  store i64 %6066, i64* %PC.i164
  %6067 = inttoptr i64 %6064 to i32*
  %6068 = load i32, i32* %6067
  %6069 = sub i32 %6068, 50
  %6070 = icmp ult i32 %6068, 50
  %6071 = zext i1 %6070 to i8
  %6072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6071, i8* %6072, align 1
  %6073 = and i32 %6069, 255
  %6074 = call i32 @llvm.ctpop.i32(i32 %6073)
  %6075 = trunc i32 %6074 to i8
  %6076 = and i8 %6075, 1
  %6077 = xor i8 %6076, 1
  %6078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6077, i8* %6078, align 1
  %6079 = xor i32 %6068, 50
  %6080 = xor i32 %6079, %6069
  %6081 = lshr i32 %6080, 4
  %6082 = trunc i32 %6081 to i8
  %6083 = and i8 %6082, 1
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6083, i8* %6084, align 1
  %6085 = icmp eq i32 %6069, 0
  %6086 = zext i1 %6085 to i8
  %6087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6086, i8* %6087, align 1
  %6088 = lshr i32 %6069, 31
  %6089 = trunc i32 %6088 to i8
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6089, i8* %6090, align 1
  %6091 = lshr i32 %6068, 31
  %6092 = xor i32 %6088, %6091
  %6093 = add i32 %6092, %6091
  %6094 = icmp eq i32 %6093, 2
  %6095 = zext i1 %6094 to i8
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6095, i8* %6096, align 1
  store %struct.Memory* %loadMem_46750e, %struct.Memory** %MEMORY
  %loadMem_467515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6098 = getelementptr inbounds %struct.GPR, %struct.GPR* %6097, i32 0, i32 33
  %6099 = getelementptr inbounds %struct.Reg, %struct.Reg* %6098, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %6099 to i64*
  %6100 = load i64, i64* %PC.i163
  %6101 = add i64 %6100, 75
  %6102 = load i64, i64* %PC.i163
  %6103 = add i64 %6102, 6
  %6104 = load i64, i64* %PC.i163
  %6105 = add i64 %6104, 6
  store i64 %6105, i64* %PC.i163
  %6106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6107 = load i8, i8* %6106, align 1
  %6108 = icmp ne i8 %6107, 0
  %6109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6110 = load i8, i8* %6109, align 1
  %6111 = icmp ne i8 %6110, 0
  %6112 = xor i1 %6108, %6111
  %6113 = xor i1 %6112, true
  %6114 = zext i1 %6113 to i8
  store i8 %6114, i8* %BRANCH_TAKEN, align 1
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6116 = select i1 %6112, i64 %6103, i64 %6101
  store i64 %6116, i64* %6115, align 8
  store %struct.Memory* %loadMem_467515, %struct.Memory** %MEMORY
  %loadBr_467515 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467515 = icmp eq i8 %loadBr_467515, 1
  br i1 %cmpBr_467515, label %block_.L_467560, label %block_46751b

block_46751b:                                     ; preds = %block_46750a
  %loadMem_46751b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6118 = getelementptr inbounds %struct.GPR, %struct.GPR* %6117, i32 0, i32 33
  %6119 = getelementptr inbounds %struct.Reg, %struct.Reg* %6118, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %6119 to i64*
  %6120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6121 = getelementptr inbounds %struct.GPR, %struct.GPR* %6120, i32 0, i32 1
  %6122 = getelementptr inbounds %struct.Reg, %struct.Reg* %6121, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %6122 to i64*
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6124 = getelementptr inbounds %struct.GPR, %struct.GPR* %6123, i32 0, i32 15
  %6125 = getelementptr inbounds %struct.Reg, %struct.Reg* %6124, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %6125 to i64*
  %6126 = load i64, i64* %RBP.i162
  %6127 = sub i64 %6126, 676
  %6128 = load i64, i64* %PC.i160
  %6129 = add i64 %6128, 6
  store i64 %6129, i64* %PC.i160
  %6130 = inttoptr i64 %6127 to i32*
  %6131 = load i32, i32* %6130
  %6132 = zext i32 %6131 to i64
  store i64 %6132, i64* %RAX.i161, align 8
  store %struct.Memory* %loadMem_46751b, %struct.Memory** %MEMORY
  %loadMem_467521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6134 = getelementptr inbounds %struct.GPR, %struct.GPR* %6133, i32 0, i32 33
  %6135 = getelementptr inbounds %struct.Reg, %struct.Reg* %6134, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %6135 to i64*
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6137 = getelementptr inbounds %struct.GPR, %struct.GPR* %6136, i32 0, i32 5
  %6138 = getelementptr inbounds %struct.Reg, %struct.Reg* %6137, i32 0, i32 0
  %RCX.i158 = bitcast %union.anon* %6138 to i64*
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6140 = getelementptr inbounds %struct.GPR, %struct.GPR* %6139, i32 0, i32 15
  %6141 = getelementptr inbounds %struct.Reg, %struct.Reg* %6140, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %6141 to i64*
  %6142 = load i64, i64* %RBP.i159
  %6143 = sub i64 %6142, 16
  %6144 = load i64, i64* %PC.i157
  %6145 = add i64 %6144, 4
  store i64 %6145, i64* %PC.i157
  %6146 = inttoptr i64 %6143 to i64*
  %6147 = load i64, i64* %6146
  store i64 %6147, i64* %RCX.i158, align 8
  store %struct.Memory* %loadMem_467521, %struct.Memory** %MEMORY
  %loadMem_467525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6149 = getelementptr inbounds %struct.GPR, %struct.GPR* %6148, i32 0, i32 33
  %6150 = getelementptr inbounds %struct.Reg, %struct.Reg* %6149, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %6150 to i64*
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 7
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %RDX.i155 = bitcast %union.anon* %6153 to i64*
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6155 = getelementptr inbounds %struct.GPR, %struct.GPR* %6154, i32 0, i32 15
  %6156 = getelementptr inbounds %struct.Reg, %struct.Reg* %6155, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %6156 to i64*
  %6157 = load i64, i64* %RBP.i156
  %6158 = sub i64 %6157, 16
  %6159 = load i64, i64* %PC.i154
  %6160 = add i64 %6159, 4
  store i64 %6160, i64* %PC.i154
  %6161 = inttoptr i64 %6158 to i64*
  %6162 = load i64, i64* %6161
  store i64 %6162, i64* %RDX.i155, align 8
  store %struct.Memory* %loadMem_467525, %struct.Memory** %MEMORY
  %loadMem_467529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6164 = getelementptr inbounds %struct.GPR, %struct.GPR* %6163, i32 0, i32 33
  %6165 = getelementptr inbounds %struct.Reg, %struct.Reg* %6164, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %6165 to i64*
  %6166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6167 = getelementptr inbounds %struct.GPR, %struct.GPR* %6166, i32 0, i32 7
  %6168 = getelementptr inbounds %struct.Reg, %struct.Reg* %6167, i32 0, i32 0
  %RDX.i153 = bitcast %union.anon* %6168 to i64*
  %6169 = load i64, i64* %RDX.i153
  %6170 = add i64 %6169, 400
  %6171 = load i64, i64* %PC.i152
  %6172 = add i64 %6171, 7
  store i64 %6172, i64* %PC.i152
  %6173 = inttoptr i64 %6170 to i32*
  %6174 = load i32, i32* %6173
  %6175 = sext i32 %6174 to i64
  store i64 %6175, i64* %RDX.i153, align 8
  store %struct.Memory* %loadMem_467529, %struct.Memory** %MEMORY
  %loadMem_467530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6177 = getelementptr inbounds %struct.GPR, %struct.GPR* %6176, i32 0, i32 33
  %6178 = getelementptr inbounds %struct.Reg, %struct.Reg* %6177, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %6178 to i64*
  %6179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6180 = getelementptr inbounds %struct.GPR, %struct.GPR* %6179, i32 0, i32 1
  %6181 = getelementptr inbounds %struct.Reg, %struct.Reg* %6180, i32 0, i32 0
  %EAX.i149 = bitcast %union.anon* %6181 to i32*
  %6182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6183 = getelementptr inbounds %struct.GPR, %struct.GPR* %6182, i32 0, i32 5
  %6184 = getelementptr inbounds %struct.Reg, %struct.Reg* %6183, i32 0, i32 0
  %RCX.i150 = bitcast %union.anon* %6184 to i64*
  %6185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6186 = getelementptr inbounds %struct.GPR, %struct.GPR* %6185, i32 0, i32 7
  %6187 = getelementptr inbounds %struct.Reg, %struct.Reg* %6186, i32 0, i32 0
  %RDX.i151 = bitcast %union.anon* %6187 to i64*
  %6188 = load i64, i64* %RCX.i150
  %6189 = load i64, i64* %RDX.i151
  %6190 = mul i64 %6189, 4
  %6191 = add i64 %6190, %6188
  %6192 = load i32, i32* %EAX.i149
  %6193 = zext i32 %6192 to i64
  %6194 = load i64, i64* %PC.i148
  %6195 = add i64 %6194, 3
  store i64 %6195, i64* %PC.i148
  %6196 = inttoptr i64 %6191 to i32*
  store i32 %6192, i32* %6196
  store %struct.Memory* %loadMem_467530, %struct.Memory** %MEMORY
  %loadMem_467533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6198 = getelementptr inbounds %struct.GPR, %struct.GPR* %6197, i32 0, i32 33
  %6199 = getelementptr inbounds %struct.Reg, %struct.Reg* %6198, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %6199 to i64*
  %6200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6201 = getelementptr inbounds %struct.GPR, %struct.GPR* %6200, i32 0, i32 5
  %6202 = getelementptr inbounds %struct.Reg, %struct.Reg* %6201, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %6202 to i64*
  %6203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6204 = getelementptr inbounds %struct.GPR, %struct.GPR* %6203, i32 0, i32 15
  %6205 = getelementptr inbounds %struct.Reg, %struct.Reg* %6204, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %6205 to i64*
  %6206 = load i64, i64* %RBP.i147
  %6207 = sub i64 %6206, 16
  %6208 = load i64, i64* %PC.i145
  %6209 = add i64 %6208, 4
  store i64 %6209, i64* %PC.i145
  %6210 = inttoptr i64 %6207 to i64*
  %6211 = load i64, i64* %6210
  store i64 %6211, i64* %RCX.i146, align 8
  store %struct.Memory* %loadMem_467533, %struct.Memory** %MEMORY
  %loadMem_467537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6213 = getelementptr inbounds %struct.GPR, %struct.GPR* %6212, i32 0, i32 33
  %6214 = getelementptr inbounds %struct.Reg, %struct.Reg* %6213, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %6214 to i64*
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6216 = getelementptr inbounds %struct.GPR, %struct.GPR* %6215, i32 0, i32 7
  %6217 = getelementptr inbounds %struct.Reg, %struct.Reg* %6216, i32 0, i32 0
  %RDX.i143 = bitcast %union.anon* %6217 to i64*
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6219 = getelementptr inbounds %struct.GPR, %struct.GPR* %6218, i32 0, i32 15
  %6220 = getelementptr inbounds %struct.Reg, %struct.Reg* %6219, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %6220 to i64*
  %6221 = load i64, i64* %RBP.i144
  %6222 = sub i64 %6221, 16
  %6223 = load i64, i64* %PC.i142
  %6224 = add i64 %6223, 4
  store i64 %6224, i64* %PC.i142
  %6225 = inttoptr i64 %6222 to i64*
  %6226 = load i64, i64* %6225
  store i64 %6226, i64* %RDX.i143, align 8
  store %struct.Memory* %loadMem_467537, %struct.Memory** %MEMORY
  %loadMem_46753b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6228 = getelementptr inbounds %struct.GPR, %struct.GPR* %6227, i32 0, i32 33
  %6229 = getelementptr inbounds %struct.Reg, %struct.Reg* %6228, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %6229 to i64*
  %6230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6231 = getelementptr inbounds %struct.GPR, %struct.GPR* %6230, i32 0, i32 7
  %6232 = getelementptr inbounds %struct.Reg, %struct.Reg* %6231, i32 0, i32 0
  %RDX.i141 = bitcast %union.anon* %6232 to i64*
  %6233 = load i64, i64* %RDX.i141
  %6234 = add i64 %6233, 400
  %6235 = load i64, i64* %PC.i140
  %6236 = add i64 %6235, 7
  store i64 %6236, i64* %PC.i140
  %6237 = inttoptr i64 %6234 to i32*
  %6238 = load i32, i32* %6237
  %6239 = sext i32 %6238 to i64
  store i64 %6239, i64* %RDX.i141, align 8
  store %struct.Memory* %loadMem_46753b, %struct.Memory** %MEMORY
  %loadMem_467542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6241 = getelementptr inbounds %struct.GPR, %struct.GPR* %6240, i32 0, i32 33
  %6242 = getelementptr inbounds %struct.Reg, %struct.Reg* %6241, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %6242 to i64*
  %6243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6244 = getelementptr inbounds %struct.GPR, %struct.GPR* %6243, i32 0, i32 5
  %6245 = getelementptr inbounds %struct.Reg, %struct.Reg* %6244, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %6245 to i64*
  %6246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6247 = getelementptr inbounds %struct.GPR, %struct.GPR* %6246, i32 0, i32 7
  %6248 = getelementptr inbounds %struct.Reg, %struct.Reg* %6247, i32 0, i32 0
  %RDX.i139 = bitcast %union.anon* %6248 to i64*
  %6249 = load i64, i64* %RCX.i138
  %6250 = load i64, i64* %RDX.i139
  %6251 = mul i64 %6250, 4
  %6252 = add i64 %6249, 200
  %6253 = add i64 %6252, %6251
  %6254 = load i64, i64* %PC.i137
  %6255 = add i64 %6254, 11
  store i64 %6255, i64* %PC.i137
  %6256 = inttoptr i64 %6253 to i32*
  store i32 1, i32* %6256
  store %struct.Memory* %loadMem_467542, %struct.Memory** %MEMORY
  %loadMem_46754d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6258 = getelementptr inbounds %struct.GPR, %struct.GPR* %6257, i32 0, i32 33
  %6259 = getelementptr inbounds %struct.Reg, %struct.Reg* %6258, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %6259 to i64*
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6261 = getelementptr inbounds %struct.GPR, %struct.GPR* %6260, i32 0, i32 5
  %6262 = getelementptr inbounds %struct.Reg, %struct.Reg* %6261, i32 0, i32 0
  %RCX.i135 = bitcast %union.anon* %6262 to i64*
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6264 = getelementptr inbounds %struct.GPR, %struct.GPR* %6263, i32 0, i32 15
  %6265 = getelementptr inbounds %struct.Reg, %struct.Reg* %6264, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %6265 to i64*
  %6266 = load i64, i64* %RBP.i136
  %6267 = sub i64 %6266, 16
  %6268 = load i64, i64* %PC.i134
  %6269 = add i64 %6268, 4
  store i64 %6269, i64* %PC.i134
  %6270 = inttoptr i64 %6267 to i64*
  %6271 = load i64, i64* %6270
  store i64 %6271, i64* %RCX.i135, align 8
  store %struct.Memory* %loadMem_46754d, %struct.Memory** %MEMORY
  %loadMem_467551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6273 = getelementptr inbounds %struct.GPR, %struct.GPR* %6272, i32 0, i32 33
  %6274 = getelementptr inbounds %struct.Reg, %struct.Reg* %6273, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %6274 to i64*
  %6275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6276 = getelementptr inbounds %struct.GPR, %struct.GPR* %6275, i32 0, i32 1
  %6277 = getelementptr inbounds %struct.Reg, %struct.Reg* %6276, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %6277 to i64*
  %6278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6279 = getelementptr inbounds %struct.GPR, %struct.GPR* %6278, i32 0, i32 5
  %6280 = getelementptr inbounds %struct.Reg, %struct.Reg* %6279, i32 0, i32 0
  %RCX.i133 = bitcast %union.anon* %6280 to i64*
  %6281 = load i64, i64* %RCX.i133
  %6282 = add i64 %6281, 400
  %6283 = load i64, i64* %PC.i131
  %6284 = add i64 %6283, 6
  store i64 %6284, i64* %PC.i131
  %6285 = inttoptr i64 %6282 to i32*
  %6286 = load i32, i32* %6285
  %6287 = zext i32 %6286 to i64
  store i64 %6287, i64* %RAX.i132, align 8
  store %struct.Memory* %loadMem_467551, %struct.Memory** %MEMORY
  %loadMem_467557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6289 = getelementptr inbounds %struct.GPR, %struct.GPR* %6288, i32 0, i32 33
  %6290 = getelementptr inbounds %struct.Reg, %struct.Reg* %6289, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %6290 to i64*
  %6291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6292 = getelementptr inbounds %struct.GPR, %struct.GPR* %6291, i32 0, i32 1
  %6293 = getelementptr inbounds %struct.Reg, %struct.Reg* %6292, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %6293 to i64*
  %6294 = load i64, i64* %RAX.i130
  %6295 = load i64, i64* %PC.i129
  %6296 = add i64 %6295, 3
  store i64 %6296, i64* %PC.i129
  %6297 = trunc i64 %6294 to i32
  %6298 = add i32 1, %6297
  %6299 = zext i32 %6298 to i64
  store i64 %6299, i64* %RAX.i130, align 8
  %6300 = icmp ult i32 %6298, %6297
  %6301 = icmp ult i32 %6298, 1
  %6302 = or i1 %6300, %6301
  %6303 = zext i1 %6302 to i8
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6303, i8* %6304, align 1
  %6305 = and i32 %6298, 255
  %6306 = call i32 @llvm.ctpop.i32(i32 %6305)
  %6307 = trunc i32 %6306 to i8
  %6308 = and i8 %6307, 1
  %6309 = xor i8 %6308, 1
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6309, i8* %6310, align 1
  %6311 = xor i64 1, %6294
  %6312 = trunc i64 %6311 to i32
  %6313 = xor i32 %6312, %6298
  %6314 = lshr i32 %6313, 4
  %6315 = trunc i32 %6314 to i8
  %6316 = and i8 %6315, 1
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6316, i8* %6317, align 1
  %6318 = icmp eq i32 %6298, 0
  %6319 = zext i1 %6318 to i8
  %6320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6319, i8* %6320, align 1
  %6321 = lshr i32 %6298, 31
  %6322 = trunc i32 %6321 to i8
  %6323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6322, i8* %6323, align 1
  %6324 = lshr i32 %6297, 31
  %6325 = xor i32 %6321, %6324
  %6326 = add i32 %6325, %6321
  %6327 = icmp eq i32 %6326, 2
  %6328 = zext i1 %6327 to i8
  %6329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6328, i8* %6329, align 1
  store %struct.Memory* %loadMem_467557, %struct.Memory** %MEMORY
  %loadMem_46755a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6331 = getelementptr inbounds %struct.GPR, %struct.GPR* %6330, i32 0, i32 33
  %6332 = getelementptr inbounds %struct.Reg, %struct.Reg* %6331, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %6332 to i64*
  %6333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6334 = getelementptr inbounds %struct.GPR, %struct.GPR* %6333, i32 0, i32 1
  %6335 = getelementptr inbounds %struct.Reg, %struct.Reg* %6334, i32 0, i32 0
  %EAX.i127 = bitcast %union.anon* %6335 to i32*
  %6336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6337 = getelementptr inbounds %struct.GPR, %struct.GPR* %6336, i32 0, i32 5
  %6338 = getelementptr inbounds %struct.Reg, %struct.Reg* %6337, i32 0, i32 0
  %RCX.i128 = bitcast %union.anon* %6338 to i64*
  %6339 = load i64, i64* %RCX.i128
  %6340 = add i64 %6339, 400
  %6341 = load i32, i32* %EAX.i127
  %6342 = zext i32 %6341 to i64
  %6343 = load i64, i64* %PC.i126
  %6344 = add i64 %6343, 6
  store i64 %6344, i64* %PC.i126
  %6345 = inttoptr i64 %6340 to i32*
  store i32 %6341, i32* %6345
  store %struct.Memory* %loadMem_46755a, %struct.Memory** %MEMORY
  br label %block_.L_467560

block_.L_467560:                                  ; preds = %block_46751b, %block_46750a, %block_.L_4674f4
  %loadMem_467560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6347 = getelementptr inbounds %struct.GPR, %struct.GPR* %6346, i32 0, i32 33
  %6348 = getelementptr inbounds %struct.Reg, %struct.Reg* %6347, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %6348 to i64*
  %6349 = load i64, i64* %PC.i125
  %6350 = add i64 %6349, 5
  %6351 = load i64, i64* %PC.i125
  %6352 = add i64 %6351, 5
  store i64 %6352, i64* %PC.i125
  %6353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6350, i64* %6353, align 8
  store %struct.Memory* %loadMem_467560, %struct.Memory** %MEMORY
  br label %block_.L_467565

block_.L_467565:                                  ; preds = %block_.L_467560
  %loadMem_467565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6355 = getelementptr inbounds %struct.GPR, %struct.GPR* %6354, i32 0, i32 33
  %6356 = getelementptr inbounds %struct.Reg, %struct.Reg* %6355, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %6356 to i64*
  %6357 = load i64, i64* %PC.i124
  %6358 = add i64 %6357, 5
  %6359 = load i64, i64* %PC.i124
  %6360 = add i64 %6359, 5
  store i64 %6360, i64* %PC.i124
  %6361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6358, i64* %6361, align 8
  store %struct.Memory* %loadMem_467565, %struct.Memory** %MEMORY
  br label %block_.L_46756a

block_.L_46756a:                                  ; preds = %block_.L_467565, %block_467464, %block_.L_467450
  %loadMem_46756a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6363 = getelementptr inbounds %struct.GPR, %struct.GPR* %6362, i32 0, i32 33
  %6364 = getelementptr inbounds %struct.Reg, %struct.Reg* %6363, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %6364 to i64*
  %6365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6366 = getelementptr inbounds %struct.GPR, %struct.GPR* %6365, i32 0, i32 11
  %6367 = getelementptr inbounds %struct.Reg, %struct.Reg* %6366, i32 0, i32 0
  %RDI.i122 = bitcast %union.anon* %6367 to i64*
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6369 = getelementptr inbounds %struct.GPR, %struct.GPR* %6368, i32 0, i32 15
  %6370 = getelementptr inbounds %struct.Reg, %struct.Reg* %6369, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %6370 to i64*
  %6371 = load i64, i64* %RBP.i123
  %6372 = sub i64 %6371, 676
  %6373 = load i64, i64* %PC.i121
  %6374 = add i64 %6373, 6
  store i64 %6374, i64* %PC.i121
  %6375 = inttoptr i64 %6372 to i32*
  %6376 = load i32, i32* %6375
  %6377 = zext i32 %6376 to i64
  store i64 %6377, i64* %RDI.i122, align 8
  store %struct.Memory* %loadMem_46756a, %struct.Memory** %MEMORY
  %loadMem1_467570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6379 = getelementptr inbounds %struct.GPR, %struct.GPR* %6378, i32 0, i32 33
  %6380 = getelementptr inbounds %struct.Reg, %struct.Reg* %6379, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %6380 to i64*
  %6381 = load i64, i64* %PC.i120
  %6382 = add i64 %6381, -360160
  %6383 = load i64, i64* %PC.i120
  %6384 = add i64 %6383, 5
  %6385 = load i64, i64* %PC.i120
  %6386 = add i64 %6385, 5
  store i64 %6386, i64* %PC.i120
  %6387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6388 = load i64, i64* %6387, align 8
  %6389 = add i64 %6388, -8
  %6390 = inttoptr i64 %6389 to i64*
  store i64 %6384, i64* %6390
  store i64 %6389, i64* %6387, align 8
  %6391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6382, i64* %6391, align 8
  store %struct.Memory* %loadMem1_467570, %struct.Memory** %MEMORY
  %loadMem2_467570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_467570 = load i64, i64* %3
  %call2_467570 = call %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* %0, i64 %loadPC_467570, %struct.Memory* %loadMem2_467570)
  store %struct.Memory* %call2_467570, %struct.Memory** %MEMORY
  %loadMem_467575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6393 = getelementptr inbounds %struct.GPR, %struct.GPR* %6392, i32 0, i32 33
  %6394 = getelementptr inbounds %struct.Reg, %struct.Reg* %6393, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %6394 to i64*
  %6395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6396 = getelementptr inbounds %struct.GPR, %struct.GPR* %6395, i32 0, i32 1
  %6397 = getelementptr inbounds %struct.Reg, %struct.Reg* %6396, i32 0, i32 0
  %EAX.i119 = bitcast %union.anon* %6397 to i32*
  %6398 = load i32, i32* %EAX.i119
  %6399 = zext i32 %6398 to i64
  %6400 = load i64, i64* %PC.i118
  %6401 = add i64 %6400, 3
  store i64 %6401, i64* %PC.i118
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6402, align 1
  %6403 = and i32 %6398, 255
  %6404 = call i32 @llvm.ctpop.i32(i32 %6403)
  %6405 = trunc i32 %6404 to i8
  %6406 = and i8 %6405, 1
  %6407 = xor i8 %6406, 1
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6407, i8* %6408, align 1
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6409, align 1
  %6410 = icmp eq i32 %6398, 0
  %6411 = zext i1 %6410 to i8
  %6412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6411, i8* %6412, align 1
  %6413 = lshr i32 %6398, 31
  %6414 = trunc i32 %6413 to i8
  %6415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6414, i8* %6415, align 1
  %6416 = lshr i32 %6398, 31
  %6417 = xor i32 %6413, %6416
  %6418 = add i32 %6417, %6416
  %6419 = icmp eq i32 %6418, 2
  %6420 = zext i1 %6419 to i8
  %6421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6420, i8* %6421, align 1
  store %struct.Memory* %loadMem_467575, %struct.Memory** %MEMORY
  %loadMem_467578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6423 = getelementptr inbounds %struct.GPR, %struct.GPR* %6422, i32 0, i32 33
  %6424 = getelementptr inbounds %struct.Reg, %struct.Reg* %6423, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %6424 to i64*
  %6425 = load i64, i64* %PC.i117
  %6426 = add i64 %6425, 268
  %6427 = load i64, i64* %PC.i117
  %6428 = add i64 %6427, 6
  %6429 = load i64, i64* %PC.i117
  %6430 = add i64 %6429, 6
  store i64 %6430, i64* %PC.i117
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6432 = load i8, i8* %6431, align 1
  store i8 %6432, i8* %BRANCH_TAKEN, align 1
  %6433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6434 = icmp ne i8 %6432, 0
  %6435 = select i1 %6434, i64 %6426, i64 %6428
  store i64 %6435, i64* %6433, align 8
  store %struct.Memory* %loadMem_467578, %struct.Memory** %MEMORY
  %loadBr_467578 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467578 = icmp eq i8 %loadBr_467578, 1
  br i1 %cmpBr_467578, label %block_.L_467684, label %block_46757e

block_46757e:                                     ; preds = %block_.L_46756a
  %loadMem_46757e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6437 = getelementptr inbounds %struct.GPR, %struct.GPR* %6436, i32 0, i32 33
  %6438 = getelementptr inbounds %struct.Reg, %struct.Reg* %6437, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %6438 to i64*
  %6439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6440 = getelementptr inbounds %struct.GPR, %struct.GPR* %6439, i32 0, i32 11
  %6441 = getelementptr inbounds %struct.Reg, %struct.Reg* %6440, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %6441 to i64*
  %6442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6443 = getelementptr inbounds %struct.GPR, %struct.GPR* %6442, i32 0, i32 15
  %6444 = getelementptr inbounds %struct.Reg, %struct.Reg* %6443, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %6444 to i64*
  %6445 = load i64, i64* %RBP.i116
  %6446 = sub i64 %6445, 680
  %6447 = load i64, i64* %PC.i115
  %6448 = add i64 %6447, 6
  store i64 %6448, i64* %PC.i115
  %6449 = inttoptr i64 %6446 to i32*
  %6450 = load i32, i32* %6449
  %6451 = zext i32 %6450 to i64
  store i64 %6451, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_46757e, %struct.Memory** %MEMORY
  %loadMem_467584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6453 = getelementptr inbounds %struct.GPR, %struct.GPR* %6452, i32 0, i32 33
  %6454 = getelementptr inbounds %struct.Reg, %struct.Reg* %6453, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %6454 to i64*
  %6455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6456 = getelementptr inbounds %struct.GPR, %struct.GPR* %6455, i32 0, i32 9
  %6457 = getelementptr inbounds %struct.Reg, %struct.Reg* %6456, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6457 to i64*
  %6458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6459 = getelementptr inbounds %struct.GPR, %struct.GPR* %6458, i32 0, i32 15
  %6460 = getelementptr inbounds %struct.Reg, %struct.Reg* %6459, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %6460 to i64*
  %6461 = load i64, i64* %RBP.i114
  %6462 = sub i64 %6461, 20
  %6463 = load i64, i64* %PC.i113
  %6464 = add i64 %6463, 3
  store i64 %6464, i64* %PC.i113
  %6465 = inttoptr i64 %6462 to i32*
  %6466 = load i32, i32* %6465
  %6467 = zext i32 %6466 to i64
  store i64 %6467, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_467584, %struct.Memory** %MEMORY
  %loadMem1_467587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6469 = getelementptr inbounds %struct.GPR, %struct.GPR* %6468, i32 0, i32 33
  %6470 = getelementptr inbounds %struct.Reg, %struct.Reg* %6469, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %6470 to i64*
  %6471 = load i64, i64* %PC.i112
  %6472 = add i64 %6471, -340711
  %6473 = load i64, i64* %PC.i112
  %6474 = add i64 %6473, 5
  %6475 = load i64, i64* %PC.i112
  %6476 = add i64 %6475, 5
  store i64 %6476, i64* %PC.i112
  %6477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6478 = load i64, i64* %6477, align 8
  %6479 = add i64 %6478, -8
  %6480 = inttoptr i64 %6479 to i64*
  store i64 %6474, i64* %6480
  store i64 %6479, i64* %6477, align 8
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6472, i64* %6481, align 8
  store %struct.Memory* %loadMem1_467587, %struct.Memory** %MEMORY
  %loadMem2_467587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_467587 = load i64, i64* %3
  %call2_467587 = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64 %loadPC_467587, %struct.Memory* %loadMem2_467587)
  store %struct.Memory* %call2_467587, %struct.Memory** %MEMORY
  %loadMem_46758c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6483 = getelementptr inbounds %struct.GPR, %struct.GPR* %6482, i32 0, i32 33
  %6484 = getelementptr inbounds %struct.Reg, %struct.Reg* %6483, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %6484 to i64*
  %6485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6486 = getelementptr inbounds %struct.GPR, %struct.GPR* %6485, i32 0, i32 1
  %6487 = getelementptr inbounds %struct.Reg, %struct.Reg* %6486, i32 0, i32 0
  %EAX.i111 = bitcast %union.anon* %6487 to i32*
  %6488 = load i32, i32* %EAX.i111
  %6489 = zext i32 %6488 to i64
  %6490 = load i64, i64* %PC.i110
  %6491 = add i64 %6490, 3
  store i64 %6491, i64* %PC.i110
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6492, align 1
  %6493 = and i32 %6488, 255
  %6494 = call i32 @llvm.ctpop.i32(i32 %6493)
  %6495 = trunc i32 %6494 to i8
  %6496 = and i8 %6495, 1
  %6497 = xor i8 %6496, 1
  %6498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6497, i8* %6498, align 1
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6499, align 1
  %6500 = icmp eq i32 %6488, 0
  %6501 = zext i1 %6500 to i8
  %6502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6501, i8* %6502, align 1
  %6503 = lshr i32 %6488, 31
  %6504 = trunc i32 %6503 to i8
  %6505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6504, i8* %6505, align 1
  %6506 = lshr i32 %6488, 31
  %6507 = xor i32 %6503, %6506
  %6508 = add i32 %6507, %6506
  %6509 = icmp eq i32 %6508, 2
  %6510 = zext i1 %6509 to i8
  %6511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6510, i8* %6511, align 1
  store %struct.Memory* %loadMem_46758c, %struct.Memory** %MEMORY
  %loadMem_46758f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6513 = getelementptr inbounds %struct.GPR, %struct.GPR* %6512, i32 0, i32 33
  %6514 = getelementptr inbounds %struct.Reg, %struct.Reg* %6513, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %6514 to i64*
  %6515 = load i64, i64* %PC.i109
  %6516 = add i64 %6515, 245
  %6517 = load i64, i64* %PC.i109
  %6518 = add i64 %6517, 6
  %6519 = load i64, i64* %PC.i109
  %6520 = add i64 %6519, 6
  store i64 %6520, i64* %PC.i109
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6522 = load i8, i8* %6521, align 1
  %6523 = icmp eq i8 %6522, 0
  %6524 = zext i1 %6523 to i8
  store i8 %6524, i8* %BRANCH_TAKEN, align 1
  %6525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6526 = select i1 %6523, i64 %6516, i64 %6518
  store i64 %6526, i64* %6525, align 8
  store %struct.Memory* %loadMem_46758f, %struct.Memory** %MEMORY
  %loadBr_46758f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46758f = icmp eq i8 %loadBr_46758f, 1
  br i1 %cmpBr_46758f, label %block_.L_467684, label %block_467595

block_467595:                                     ; preds = %block_46757e
  %loadMem_467595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6528 = getelementptr inbounds %struct.GPR, %struct.GPR* %6527, i32 0, i32 33
  %6529 = getelementptr inbounds %struct.Reg, %struct.Reg* %6528, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %6529 to i64*
  %6530 = load i64, i64* %PC.i108
  %6531 = add i64 %6530, 5
  %6532 = load i64, i64* %PC.i108
  %6533 = add i64 %6532, 5
  store i64 %6533, i64* %PC.i108
  %6534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6531, i64* %6534, align 8
  store %struct.Memory* %loadMem_467595, %struct.Memory** %MEMORY
  br label %block_.L_46759a

block_.L_46759a:                                  ; preds = %block_467595
  %loadMem_46759a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6536 = getelementptr inbounds %struct.GPR, %struct.GPR* %6535, i32 0, i32 33
  %6537 = getelementptr inbounds %struct.Reg, %struct.Reg* %6536, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %6537 to i64*
  %6538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6539 = getelementptr inbounds %struct.GPR, %struct.GPR* %6538, i32 0, i32 15
  %6540 = getelementptr inbounds %struct.Reg, %struct.Reg* %6539, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %6540 to i64*
  %6541 = load i64, i64* %RBP.i107
  %6542 = sub i64 %6541, 708
  %6543 = load i64, i64* %PC.i106
  %6544 = add i64 %6543, 10
  store i64 %6544, i64* %PC.i106
  %6545 = inttoptr i64 %6542 to i32*
  store i32 0, i32* %6545
  store %struct.Memory* %loadMem_46759a, %struct.Memory** %MEMORY
  br label %block_.L_4675a4

block_.L_4675a4:                                  ; preds = %block_.L_4675fa, %block_.L_46759a
  %loadMem_4675a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6547 = getelementptr inbounds %struct.GPR, %struct.GPR* %6546, i32 0, i32 33
  %6548 = getelementptr inbounds %struct.Reg, %struct.Reg* %6547, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %6548 to i64*
  %6549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6550 = getelementptr inbounds %struct.GPR, %struct.GPR* %6549, i32 0, i32 1
  %6551 = getelementptr inbounds %struct.Reg, %struct.Reg* %6550, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %6551 to i64*
  %6552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6553 = getelementptr inbounds %struct.GPR, %struct.GPR* %6552, i32 0, i32 15
  %6554 = getelementptr inbounds %struct.Reg, %struct.Reg* %6553, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %6554 to i64*
  %6555 = load i64, i64* %RBP.i105
  %6556 = sub i64 %6555, 708
  %6557 = load i64, i64* %PC.i103
  %6558 = add i64 %6557, 6
  store i64 %6558, i64* %PC.i103
  %6559 = inttoptr i64 %6556 to i32*
  %6560 = load i32, i32* %6559
  %6561 = zext i32 %6560 to i64
  store i64 %6561, i64* %RAX.i104, align 8
  store %struct.Memory* %loadMem_4675a4, %struct.Memory** %MEMORY
  %loadMem_4675aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6563 = getelementptr inbounds %struct.GPR, %struct.GPR* %6562, i32 0, i32 33
  %6564 = getelementptr inbounds %struct.Reg, %struct.Reg* %6563, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %6564 to i64*
  %6565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6566 = getelementptr inbounds %struct.GPR, %struct.GPR* %6565, i32 0, i32 5
  %6567 = getelementptr inbounds %struct.Reg, %struct.Reg* %6566, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %6567 to i64*
  %6568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6569 = getelementptr inbounds %struct.GPR, %struct.GPR* %6568, i32 0, i32 15
  %6570 = getelementptr inbounds %struct.Reg, %struct.Reg* %6569, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %6570 to i64*
  %6571 = load i64, i64* %RBP.i102
  %6572 = sub i64 %6571, 16
  %6573 = load i64, i64* %PC.i100
  %6574 = add i64 %6573, 4
  store i64 %6574, i64* %PC.i100
  %6575 = inttoptr i64 %6572 to i64*
  %6576 = load i64, i64* %6575
  store i64 %6576, i64* %RCX.i101, align 8
  store %struct.Memory* %loadMem_4675aa, %struct.Memory** %MEMORY
  %loadMem_4675ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %6577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6578 = getelementptr inbounds %struct.GPR, %struct.GPR* %6577, i32 0, i32 33
  %6579 = getelementptr inbounds %struct.Reg, %struct.Reg* %6578, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %6579 to i64*
  %6580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6581 = getelementptr inbounds %struct.GPR, %struct.GPR* %6580, i32 0, i32 1
  %6582 = getelementptr inbounds %struct.Reg, %struct.Reg* %6581, i32 0, i32 0
  %EAX.i98 = bitcast %union.anon* %6582 to i32*
  %6583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6584 = getelementptr inbounds %struct.GPR, %struct.GPR* %6583, i32 0, i32 5
  %6585 = getelementptr inbounds %struct.Reg, %struct.Reg* %6584, i32 0, i32 0
  %RCX.i99 = bitcast %union.anon* %6585 to i64*
  %6586 = load i32, i32* %EAX.i98
  %6587 = zext i32 %6586 to i64
  %6588 = load i64, i64* %RCX.i99
  %6589 = add i64 %6588, 400
  %6590 = load i64, i64* %PC.i97
  %6591 = add i64 %6590, 6
  store i64 %6591, i64* %PC.i97
  %6592 = inttoptr i64 %6589 to i32*
  %6593 = load i32, i32* %6592
  %6594 = sub i32 %6586, %6593
  %6595 = icmp ult i32 %6586, %6593
  %6596 = zext i1 %6595 to i8
  %6597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6596, i8* %6597, align 1
  %6598 = and i32 %6594, 255
  %6599 = call i32 @llvm.ctpop.i32(i32 %6598)
  %6600 = trunc i32 %6599 to i8
  %6601 = and i8 %6600, 1
  %6602 = xor i8 %6601, 1
  %6603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6602, i8* %6603, align 1
  %6604 = xor i32 %6593, %6586
  %6605 = xor i32 %6604, %6594
  %6606 = lshr i32 %6605, 4
  %6607 = trunc i32 %6606 to i8
  %6608 = and i8 %6607, 1
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6608, i8* %6609, align 1
  %6610 = icmp eq i32 %6594, 0
  %6611 = zext i1 %6610 to i8
  %6612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6611, i8* %6612, align 1
  %6613 = lshr i32 %6594, 31
  %6614 = trunc i32 %6613 to i8
  %6615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6614, i8* %6615, align 1
  %6616 = lshr i32 %6586, 31
  %6617 = lshr i32 %6593, 31
  %6618 = xor i32 %6617, %6616
  %6619 = xor i32 %6613, %6616
  %6620 = add i32 %6619, %6618
  %6621 = icmp eq i32 %6620, 2
  %6622 = zext i1 %6621 to i8
  %6623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6622, i8* %6623, align 1
  store %struct.Memory* %loadMem_4675ae, %struct.Memory** %MEMORY
  %loadMem_4675b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6625 = getelementptr inbounds %struct.GPR, %struct.GPR* %6624, i32 0, i32 33
  %6626 = getelementptr inbounds %struct.Reg, %struct.Reg* %6625, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %6626 to i64*
  %6627 = load i64, i64* %PC.i96
  %6628 = add i64 %6627, 90
  %6629 = load i64, i64* %PC.i96
  %6630 = add i64 %6629, 6
  %6631 = load i64, i64* %PC.i96
  %6632 = add i64 %6631, 6
  store i64 %6632, i64* %PC.i96
  %6633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6634 = load i8, i8* %6633, align 1
  %6635 = icmp ne i8 %6634, 0
  %6636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6637 = load i8, i8* %6636, align 1
  %6638 = icmp ne i8 %6637, 0
  %6639 = xor i1 %6635, %6638
  %6640 = xor i1 %6639, true
  %6641 = zext i1 %6640 to i8
  store i8 %6641, i8* %BRANCH_TAKEN, align 1
  %6642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6643 = select i1 %6639, i64 %6630, i64 %6628
  store i64 %6643, i64* %6642, align 8
  store %struct.Memory* %loadMem_4675b4, %struct.Memory** %MEMORY
  %loadBr_4675b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4675b4 = icmp eq i8 %loadBr_4675b4, 1
  br i1 %cmpBr_4675b4, label %block_.L_46760e, label %block_4675ba

block_4675ba:                                     ; preds = %block_.L_4675a4
  %loadMem_4675ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %6644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6645 = getelementptr inbounds %struct.GPR, %struct.GPR* %6644, i32 0, i32 33
  %6646 = getelementptr inbounds %struct.Reg, %struct.Reg* %6645, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %6646 to i64*
  %6647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6648 = getelementptr inbounds %struct.GPR, %struct.GPR* %6647, i32 0, i32 1
  %6649 = getelementptr inbounds %struct.Reg, %struct.Reg* %6648, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %6649 to i64*
  %6650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6651 = getelementptr inbounds %struct.GPR, %struct.GPR* %6650, i32 0, i32 15
  %6652 = getelementptr inbounds %struct.Reg, %struct.Reg* %6651, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %6652 to i64*
  %6653 = load i64, i64* %RBP.i95
  %6654 = sub i64 %6653, 16
  %6655 = load i64, i64* %PC.i93
  %6656 = add i64 %6655, 4
  store i64 %6656, i64* %PC.i93
  %6657 = inttoptr i64 %6654 to i64*
  %6658 = load i64, i64* %6657
  store i64 %6658, i64* %RAX.i94, align 8
  store %struct.Memory* %loadMem_4675ba, %struct.Memory** %MEMORY
  %loadMem_4675be = load %struct.Memory*, %struct.Memory** %MEMORY
  %6659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6660 = getelementptr inbounds %struct.GPR, %struct.GPR* %6659, i32 0, i32 33
  %6661 = getelementptr inbounds %struct.Reg, %struct.Reg* %6660, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %6661 to i64*
  %6662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6663 = getelementptr inbounds %struct.GPR, %struct.GPR* %6662, i32 0, i32 5
  %6664 = getelementptr inbounds %struct.Reg, %struct.Reg* %6663, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %6664 to i64*
  %6665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6666 = getelementptr inbounds %struct.GPR, %struct.GPR* %6665, i32 0, i32 15
  %6667 = getelementptr inbounds %struct.Reg, %struct.Reg* %6666, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %6667 to i64*
  %6668 = load i64, i64* %RBP.i92
  %6669 = sub i64 %6668, 708
  %6670 = load i64, i64* %PC.i90
  %6671 = add i64 %6670, 7
  store i64 %6671, i64* %PC.i90
  %6672 = inttoptr i64 %6669 to i32*
  %6673 = load i32, i32* %6672
  %6674 = sext i32 %6673 to i64
  store i64 %6674, i64* %RCX.i91, align 8
  store %struct.Memory* %loadMem_4675be, %struct.Memory** %MEMORY
  %loadMem_4675c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6676 = getelementptr inbounds %struct.GPR, %struct.GPR* %6675, i32 0, i32 33
  %6677 = getelementptr inbounds %struct.Reg, %struct.Reg* %6676, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %6677 to i64*
  %6678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6679 = getelementptr inbounds %struct.GPR, %struct.GPR* %6678, i32 0, i32 1
  %6680 = getelementptr inbounds %struct.Reg, %struct.Reg* %6679, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %6680 to i64*
  %6681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6682 = getelementptr inbounds %struct.GPR, %struct.GPR* %6681, i32 0, i32 5
  %6683 = getelementptr inbounds %struct.Reg, %struct.Reg* %6682, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %6683 to i64*
  %6684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6685 = getelementptr inbounds %struct.GPR, %struct.GPR* %6684, i32 0, i32 7
  %6686 = getelementptr inbounds %struct.Reg, %struct.Reg* %6685, i32 0, i32 0
  %RDX.i89 = bitcast %union.anon* %6686 to i64*
  %6687 = load i64, i64* %RAX.i87
  %6688 = load i64, i64* %RCX.i88
  %6689 = mul i64 %6688, 4
  %6690 = add i64 %6689, %6687
  %6691 = load i64, i64* %PC.i86
  %6692 = add i64 %6691, 3
  store i64 %6692, i64* %PC.i86
  %6693 = inttoptr i64 %6690 to i32*
  %6694 = load i32, i32* %6693
  %6695 = zext i32 %6694 to i64
  store i64 %6695, i64* %RDX.i89, align 8
  store %struct.Memory* %loadMem_4675c5, %struct.Memory** %MEMORY
  %loadMem_4675c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6697 = getelementptr inbounds %struct.GPR, %struct.GPR* %6696, i32 0, i32 33
  %6698 = getelementptr inbounds %struct.Reg, %struct.Reg* %6697, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %6698 to i64*
  %6699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6700 = getelementptr inbounds %struct.GPR, %struct.GPR* %6699, i32 0, i32 7
  %6701 = getelementptr inbounds %struct.Reg, %struct.Reg* %6700, i32 0, i32 0
  %EDX.i84 = bitcast %union.anon* %6701 to i32*
  %6702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6703 = getelementptr inbounds %struct.GPR, %struct.GPR* %6702, i32 0, i32 15
  %6704 = getelementptr inbounds %struct.Reg, %struct.Reg* %6703, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %6704 to i64*
  %6705 = load i32, i32* %EDX.i84
  %6706 = zext i32 %6705 to i64
  %6707 = load i64, i64* %RBP.i85
  %6708 = sub i64 %6707, 680
  %6709 = load i64, i64* %PC.i83
  %6710 = add i64 %6709, 6
  store i64 %6710, i64* %PC.i83
  %6711 = inttoptr i64 %6708 to i32*
  %6712 = load i32, i32* %6711
  %6713 = sub i32 %6705, %6712
  %6714 = icmp ult i32 %6705, %6712
  %6715 = zext i1 %6714 to i8
  %6716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6715, i8* %6716, align 1
  %6717 = and i32 %6713, 255
  %6718 = call i32 @llvm.ctpop.i32(i32 %6717)
  %6719 = trunc i32 %6718 to i8
  %6720 = and i8 %6719, 1
  %6721 = xor i8 %6720, 1
  %6722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6721, i8* %6722, align 1
  %6723 = xor i32 %6712, %6705
  %6724 = xor i32 %6723, %6713
  %6725 = lshr i32 %6724, 4
  %6726 = trunc i32 %6725 to i8
  %6727 = and i8 %6726, 1
  %6728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6727, i8* %6728, align 1
  %6729 = icmp eq i32 %6713, 0
  %6730 = zext i1 %6729 to i8
  %6731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6730, i8* %6731, align 1
  %6732 = lshr i32 %6713, 31
  %6733 = trunc i32 %6732 to i8
  %6734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6733, i8* %6734, align 1
  %6735 = lshr i32 %6705, 31
  %6736 = lshr i32 %6712, 31
  %6737 = xor i32 %6736, %6735
  %6738 = xor i32 %6732, %6735
  %6739 = add i32 %6738, %6737
  %6740 = icmp eq i32 %6739, 2
  %6741 = zext i1 %6740 to i8
  %6742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6741, i8* %6742, align 1
  store %struct.Memory* %loadMem_4675c8, %struct.Memory** %MEMORY
  %loadMem_4675ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %6743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6744 = getelementptr inbounds %struct.GPR, %struct.GPR* %6743, i32 0, i32 33
  %6745 = getelementptr inbounds %struct.Reg, %struct.Reg* %6744, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %6745 to i64*
  %6746 = load i64, i64* %PC.i82
  %6747 = add i64 %6746, 39
  %6748 = load i64, i64* %PC.i82
  %6749 = add i64 %6748, 6
  %6750 = load i64, i64* %PC.i82
  %6751 = add i64 %6750, 6
  store i64 %6751, i64* %PC.i82
  %6752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6753 = load i8, i8* %6752, align 1
  %6754 = icmp eq i8 %6753, 0
  %6755 = zext i1 %6754 to i8
  store i8 %6755, i8* %BRANCH_TAKEN, align 1
  %6756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6757 = select i1 %6754, i64 %6747, i64 %6749
  store i64 %6757, i64* %6756, align 8
  store %struct.Memory* %loadMem_4675ce, %struct.Memory** %MEMORY
  %loadBr_4675ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4675ce = icmp eq i8 %loadBr_4675ce, 1
  br i1 %cmpBr_4675ce, label %block_.L_4675f5, label %block_4675d4

block_4675d4:                                     ; preds = %block_4675ba
  %loadMem_4675d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6759 = getelementptr inbounds %struct.GPR, %struct.GPR* %6758, i32 0, i32 33
  %6760 = getelementptr inbounds %struct.Reg, %struct.Reg* %6759, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %6760 to i64*
  %6761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6762 = getelementptr inbounds %struct.GPR, %struct.GPR* %6761, i32 0, i32 1
  %6763 = getelementptr inbounds %struct.Reg, %struct.Reg* %6762, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %6763 to i64*
  %6764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6765 = getelementptr inbounds %struct.GPR, %struct.GPR* %6764, i32 0, i32 15
  %6766 = getelementptr inbounds %struct.Reg, %struct.Reg* %6765, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %6766 to i64*
  %6767 = load i64, i64* %RBP.i81
  %6768 = sub i64 %6767, 16
  %6769 = load i64, i64* %PC.i79
  %6770 = add i64 %6769, 4
  store i64 %6770, i64* %PC.i79
  %6771 = inttoptr i64 %6768 to i64*
  %6772 = load i64, i64* %6771
  store i64 %6772, i64* %RAX.i80, align 8
  store %struct.Memory* %loadMem_4675d4, %struct.Memory** %MEMORY
  %loadMem_4675d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6774 = getelementptr inbounds %struct.GPR, %struct.GPR* %6773, i32 0, i32 33
  %6775 = getelementptr inbounds %struct.Reg, %struct.Reg* %6774, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %6775 to i64*
  %6776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6777 = getelementptr inbounds %struct.GPR, %struct.GPR* %6776, i32 0, i32 5
  %6778 = getelementptr inbounds %struct.Reg, %struct.Reg* %6777, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %6778 to i64*
  %6779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6780 = getelementptr inbounds %struct.GPR, %struct.GPR* %6779, i32 0, i32 15
  %6781 = getelementptr inbounds %struct.Reg, %struct.Reg* %6780, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %6781 to i64*
  %6782 = load i64, i64* %RBP.i78
  %6783 = sub i64 %6782, 708
  %6784 = load i64, i64* %PC.i76
  %6785 = add i64 %6784, 7
  store i64 %6785, i64* %PC.i76
  %6786 = inttoptr i64 %6783 to i32*
  %6787 = load i32, i32* %6786
  %6788 = sext i32 %6787 to i64
  store i64 %6788, i64* %RCX.i77, align 8
  store %struct.Memory* %loadMem_4675d8, %struct.Memory** %MEMORY
  %loadMem_4675df = load %struct.Memory*, %struct.Memory** %MEMORY
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6790 = getelementptr inbounds %struct.GPR, %struct.GPR* %6789, i32 0, i32 33
  %6791 = getelementptr inbounds %struct.Reg, %struct.Reg* %6790, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %6791 to i64*
  %6792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6793 = getelementptr inbounds %struct.GPR, %struct.GPR* %6792, i32 0, i32 1
  %6794 = getelementptr inbounds %struct.Reg, %struct.Reg* %6793, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %6794 to i64*
  %6795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6796 = getelementptr inbounds %struct.GPR, %struct.GPR* %6795, i32 0, i32 5
  %6797 = getelementptr inbounds %struct.Reg, %struct.Reg* %6796, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %6797 to i64*
  %6798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6799 = getelementptr inbounds %struct.GPR, %struct.GPR* %6798, i32 0, i32 7
  %6800 = getelementptr inbounds %struct.Reg, %struct.Reg* %6799, i32 0, i32 0
  %RDX.i75 = bitcast %union.anon* %6800 to i64*
  %6801 = load i64, i64* %RAX.i73
  %6802 = load i64, i64* %RCX.i74
  %6803 = mul i64 %6802, 4
  %6804 = add i64 %6801, 200
  %6805 = add i64 %6804, %6803
  %6806 = load i64, i64* %PC.i72
  %6807 = add i64 %6806, 7
  store i64 %6807, i64* %PC.i72
  %6808 = inttoptr i64 %6805 to i32*
  %6809 = load i32, i32* %6808
  %6810 = zext i32 %6809 to i64
  store i64 %6810, i64* %RDX.i75, align 8
  store %struct.Memory* %loadMem_4675df, %struct.Memory** %MEMORY
  %loadMem_4675e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6812 = getelementptr inbounds %struct.GPR, %struct.GPR* %6811, i32 0, i32 33
  %6813 = getelementptr inbounds %struct.Reg, %struct.Reg* %6812, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %6813 to i64*
  %6814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6815 = getelementptr inbounds %struct.GPR, %struct.GPR* %6814, i32 0, i32 7
  %6816 = getelementptr inbounds %struct.Reg, %struct.Reg* %6815, i32 0, i32 0
  %RDX.i71 = bitcast %union.anon* %6816 to i64*
  %6817 = load i64, i64* %RDX.i71
  %6818 = load i64, i64* %PC.i70
  %6819 = add i64 %6818, 3
  store i64 %6819, i64* %PC.i70
  %6820 = trunc i64 %6817 to i32
  %6821 = add i32 1, %6820
  %6822 = zext i32 %6821 to i64
  store i64 %6822, i64* %RDX.i71, align 8
  %6823 = icmp ult i32 %6821, %6820
  %6824 = icmp ult i32 %6821, 1
  %6825 = or i1 %6823, %6824
  %6826 = zext i1 %6825 to i8
  %6827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6826, i8* %6827, align 1
  %6828 = and i32 %6821, 255
  %6829 = call i32 @llvm.ctpop.i32(i32 %6828)
  %6830 = trunc i32 %6829 to i8
  %6831 = and i8 %6830, 1
  %6832 = xor i8 %6831, 1
  %6833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6832, i8* %6833, align 1
  %6834 = xor i64 1, %6817
  %6835 = trunc i64 %6834 to i32
  %6836 = xor i32 %6835, %6821
  %6837 = lshr i32 %6836, 4
  %6838 = trunc i32 %6837 to i8
  %6839 = and i8 %6838, 1
  %6840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6839, i8* %6840, align 1
  %6841 = icmp eq i32 %6821, 0
  %6842 = zext i1 %6841 to i8
  %6843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6842, i8* %6843, align 1
  %6844 = lshr i32 %6821, 31
  %6845 = trunc i32 %6844 to i8
  %6846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6845, i8* %6846, align 1
  %6847 = lshr i32 %6820, 31
  %6848 = xor i32 %6844, %6847
  %6849 = add i32 %6848, %6844
  %6850 = icmp eq i32 %6849, 2
  %6851 = zext i1 %6850 to i8
  %6852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6851, i8* %6852, align 1
  store %struct.Memory* %loadMem_4675e6, %struct.Memory** %MEMORY
  %loadMem_4675e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6854 = getelementptr inbounds %struct.GPR, %struct.GPR* %6853, i32 0, i32 33
  %6855 = getelementptr inbounds %struct.Reg, %struct.Reg* %6854, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %6855 to i64*
  %6856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6857 = getelementptr inbounds %struct.GPR, %struct.GPR* %6856, i32 0, i32 7
  %6858 = getelementptr inbounds %struct.Reg, %struct.Reg* %6857, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %6858 to i32*
  %6859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6860 = getelementptr inbounds %struct.GPR, %struct.GPR* %6859, i32 0, i32 1
  %6861 = getelementptr inbounds %struct.Reg, %struct.Reg* %6860, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %6861 to i64*
  %6862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6863 = getelementptr inbounds %struct.GPR, %struct.GPR* %6862, i32 0, i32 5
  %6864 = getelementptr inbounds %struct.Reg, %struct.Reg* %6863, i32 0, i32 0
  %RCX.i69 = bitcast %union.anon* %6864 to i64*
  %6865 = load i64, i64* %RAX.i68
  %6866 = load i64, i64* %RCX.i69
  %6867 = mul i64 %6866, 4
  %6868 = add i64 %6865, 200
  %6869 = add i64 %6868, %6867
  %6870 = load i32, i32* %EDX.i
  %6871 = zext i32 %6870 to i64
  %6872 = load i64, i64* %PC.i67
  %6873 = add i64 %6872, 7
  store i64 %6873, i64* %PC.i67
  %6874 = inttoptr i64 %6869 to i32*
  store i32 %6870, i32* %6874
  store %struct.Memory* %loadMem_4675e9, %struct.Memory** %MEMORY
  %loadMem_4675f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6876 = getelementptr inbounds %struct.GPR, %struct.GPR* %6875, i32 0, i32 33
  %6877 = getelementptr inbounds %struct.Reg, %struct.Reg* %6876, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %6877 to i64*
  %6878 = load i64, i64* %PC.i66
  %6879 = add i64 %6878, 30
  %6880 = load i64, i64* %PC.i66
  %6881 = add i64 %6880, 5
  store i64 %6881, i64* %PC.i66
  %6882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6879, i64* %6882, align 8
  store %struct.Memory* %loadMem_4675f0, %struct.Memory** %MEMORY
  br label %block_.L_46760e

block_.L_4675f5:                                  ; preds = %block_4675ba
  %loadMem_4675f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6884 = getelementptr inbounds %struct.GPR, %struct.GPR* %6883, i32 0, i32 33
  %6885 = getelementptr inbounds %struct.Reg, %struct.Reg* %6884, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %6885 to i64*
  %6886 = load i64, i64* %PC.i65
  %6887 = add i64 %6886, 5
  %6888 = load i64, i64* %PC.i65
  %6889 = add i64 %6888, 5
  store i64 %6889, i64* %PC.i65
  %6890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6887, i64* %6890, align 8
  store %struct.Memory* %loadMem_4675f5, %struct.Memory** %MEMORY
  br label %block_.L_4675fa

block_.L_4675fa:                                  ; preds = %block_.L_4675f5
  %loadMem_4675fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6892 = getelementptr inbounds %struct.GPR, %struct.GPR* %6891, i32 0, i32 33
  %6893 = getelementptr inbounds %struct.Reg, %struct.Reg* %6892, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %6893 to i64*
  %6894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6895 = getelementptr inbounds %struct.GPR, %struct.GPR* %6894, i32 0, i32 1
  %6896 = getelementptr inbounds %struct.Reg, %struct.Reg* %6895, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %6896 to i64*
  %6897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6898 = getelementptr inbounds %struct.GPR, %struct.GPR* %6897, i32 0, i32 15
  %6899 = getelementptr inbounds %struct.Reg, %struct.Reg* %6898, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %6899 to i64*
  %6900 = load i64, i64* %RBP.i64
  %6901 = sub i64 %6900, 708
  %6902 = load i64, i64* %PC.i62
  %6903 = add i64 %6902, 6
  store i64 %6903, i64* %PC.i62
  %6904 = inttoptr i64 %6901 to i32*
  %6905 = load i32, i32* %6904
  %6906 = zext i32 %6905 to i64
  store i64 %6906, i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_4675fa, %struct.Memory** %MEMORY
  %loadMem_467600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6908 = getelementptr inbounds %struct.GPR, %struct.GPR* %6907, i32 0, i32 33
  %6909 = getelementptr inbounds %struct.Reg, %struct.Reg* %6908, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %6909 to i64*
  %6910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6911 = getelementptr inbounds %struct.GPR, %struct.GPR* %6910, i32 0, i32 1
  %6912 = getelementptr inbounds %struct.Reg, %struct.Reg* %6911, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %6912 to i64*
  %6913 = load i64, i64* %RAX.i61
  %6914 = load i64, i64* %PC.i60
  %6915 = add i64 %6914, 3
  store i64 %6915, i64* %PC.i60
  %6916 = trunc i64 %6913 to i32
  %6917 = add i32 1, %6916
  %6918 = zext i32 %6917 to i64
  store i64 %6918, i64* %RAX.i61, align 8
  %6919 = icmp ult i32 %6917, %6916
  %6920 = icmp ult i32 %6917, 1
  %6921 = or i1 %6919, %6920
  %6922 = zext i1 %6921 to i8
  %6923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6922, i8* %6923, align 1
  %6924 = and i32 %6917, 255
  %6925 = call i32 @llvm.ctpop.i32(i32 %6924)
  %6926 = trunc i32 %6925 to i8
  %6927 = and i8 %6926, 1
  %6928 = xor i8 %6927, 1
  %6929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6928, i8* %6929, align 1
  %6930 = xor i64 1, %6913
  %6931 = trunc i64 %6930 to i32
  %6932 = xor i32 %6931, %6917
  %6933 = lshr i32 %6932, 4
  %6934 = trunc i32 %6933 to i8
  %6935 = and i8 %6934, 1
  %6936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6935, i8* %6936, align 1
  %6937 = icmp eq i32 %6917, 0
  %6938 = zext i1 %6937 to i8
  %6939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6938, i8* %6939, align 1
  %6940 = lshr i32 %6917, 31
  %6941 = trunc i32 %6940 to i8
  %6942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6941, i8* %6942, align 1
  %6943 = lshr i32 %6916, 31
  %6944 = xor i32 %6940, %6943
  %6945 = add i32 %6944, %6940
  %6946 = icmp eq i32 %6945, 2
  %6947 = zext i1 %6946 to i8
  %6948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6947, i8* %6948, align 1
  store %struct.Memory* %loadMem_467600, %struct.Memory** %MEMORY
  %loadMem_467603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6950 = getelementptr inbounds %struct.GPR, %struct.GPR* %6949, i32 0, i32 33
  %6951 = getelementptr inbounds %struct.Reg, %struct.Reg* %6950, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %6951 to i64*
  %6952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6953 = getelementptr inbounds %struct.GPR, %struct.GPR* %6952, i32 0, i32 1
  %6954 = getelementptr inbounds %struct.Reg, %struct.Reg* %6953, i32 0, i32 0
  %EAX.i58 = bitcast %union.anon* %6954 to i32*
  %6955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6956 = getelementptr inbounds %struct.GPR, %struct.GPR* %6955, i32 0, i32 15
  %6957 = getelementptr inbounds %struct.Reg, %struct.Reg* %6956, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %6957 to i64*
  %6958 = load i64, i64* %RBP.i59
  %6959 = sub i64 %6958, 708
  %6960 = load i32, i32* %EAX.i58
  %6961 = zext i32 %6960 to i64
  %6962 = load i64, i64* %PC.i57
  %6963 = add i64 %6962, 6
  store i64 %6963, i64* %PC.i57
  %6964 = inttoptr i64 %6959 to i32*
  store i32 %6960, i32* %6964
  store %struct.Memory* %loadMem_467603, %struct.Memory** %MEMORY
  %loadMem_467609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6966 = getelementptr inbounds %struct.GPR, %struct.GPR* %6965, i32 0, i32 33
  %6967 = getelementptr inbounds %struct.Reg, %struct.Reg* %6966, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %6967 to i64*
  %6968 = load i64, i64* %PC.i56
  %6969 = add i64 %6968, -101
  %6970 = load i64, i64* %PC.i56
  %6971 = add i64 %6970, 5
  store i64 %6971, i64* %PC.i56
  %6972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6969, i64* %6972, align 8
  store %struct.Memory* %loadMem_467609, %struct.Memory** %MEMORY
  br label %block_.L_4675a4

block_.L_46760e:                                  ; preds = %block_4675d4, %block_.L_4675a4
  %loadMem_46760e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6974 = getelementptr inbounds %struct.GPR, %struct.GPR* %6973, i32 0, i32 33
  %6975 = getelementptr inbounds %struct.Reg, %struct.Reg* %6974, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %6975 to i64*
  %6976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6977 = getelementptr inbounds %struct.GPR, %struct.GPR* %6976, i32 0, i32 1
  %6978 = getelementptr inbounds %struct.Reg, %struct.Reg* %6977, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %6978 to i64*
  %6979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6980 = getelementptr inbounds %struct.GPR, %struct.GPR* %6979, i32 0, i32 15
  %6981 = getelementptr inbounds %struct.Reg, %struct.Reg* %6980, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %6981 to i64*
  %6982 = load i64, i64* %RBP.i55
  %6983 = sub i64 %6982, 708
  %6984 = load i64, i64* %PC.i53
  %6985 = add i64 %6984, 6
  store i64 %6985, i64* %PC.i53
  %6986 = inttoptr i64 %6983 to i32*
  %6987 = load i32, i32* %6986
  %6988 = zext i32 %6987 to i64
  store i64 %6988, i64* %RAX.i54, align 8
  store %struct.Memory* %loadMem_46760e, %struct.Memory** %MEMORY
  %loadMem_467614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6990 = getelementptr inbounds %struct.GPR, %struct.GPR* %6989, i32 0, i32 33
  %6991 = getelementptr inbounds %struct.Reg, %struct.Reg* %6990, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %6991 to i64*
  %6992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6993 = getelementptr inbounds %struct.GPR, %struct.GPR* %6992, i32 0, i32 5
  %6994 = getelementptr inbounds %struct.Reg, %struct.Reg* %6993, i32 0, i32 0
  %RCX.i51 = bitcast %union.anon* %6994 to i64*
  %6995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6996 = getelementptr inbounds %struct.GPR, %struct.GPR* %6995, i32 0, i32 15
  %6997 = getelementptr inbounds %struct.Reg, %struct.Reg* %6996, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %6997 to i64*
  %6998 = load i64, i64* %RBP.i52
  %6999 = sub i64 %6998, 16
  %7000 = load i64, i64* %PC.i50
  %7001 = add i64 %7000, 4
  store i64 %7001, i64* %PC.i50
  %7002 = inttoptr i64 %6999 to i64*
  %7003 = load i64, i64* %7002
  store i64 %7003, i64* %RCX.i51, align 8
  store %struct.Memory* %loadMem_467614, %struct.Memory** %MEMORY
  %loadMem_467618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7005 = getelementptr inbounds %struct.GPR, %struct.GPR* %7004, i32 0, i32 33
  %7006 = getelementptr inbounds %struct.Reg, %struct.Reg* %7005, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %7006 to i64*
  %7007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7008 = getelementptr inbounds %struct.GPR, %struct.GPR* %7007, i32 0, i32 1
  %7009 = getelementptr inbounds %struct.Reg, %struct.Reg* %7008, i32 0, i32 0
  %EAX.i48 = bitcast %union.anon* %7009 to i32*
  %7010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7011 = getelementptr inbounds %struct.GPR, %struct.GPR* %7010, i32 0, i32 5
  %7012 = getelementptr inbounds %struct.Reg, %struct.Reg* %7011, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %7012 to i64*
  %7013 = load i32, i32* %EAX.i48
  %7014 = zext i32 %7013 to i64
  %7015 = load i64, i64* %RCX.i49
  %7016 = add i64 %7015, 400
  %7017 = load i64, i64* %PC.i47
  %7018 = add i64 %7017, 6
  store i64 %7018, i64* %PC.i47
  %7019 = inttoptr i64 %7016 to i32*
  %7020 = load i32, i32* %7019
  %7021 = sub i32 %7013, %7020
  %7022 = icmp ult i32 %7013, %7020
  %7023 = zext i1 %7022 to i8
  %7024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7023, i8* %7024, align 1
  %7025 = and i32 %7021, 255
  %7026 = call i32 @llvm.ctpop.i32(i32 %7025)
  %7027 = trunc i32 %7026 to i8
  %7028 = and i8 %7027, 1
  %7029 = xor i8 %7028, 1
  %7030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7029, i8* %7030, align 1
  %7031 = xor i32 %7020, %7013
  %7032 = xor i32 %7031, %7021
  %7033 = lshr i32 %7032, 4
  %7034 = trunc i32 %7033 to i8
  %7035 = and i8 %7034, 1
  %7036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7035, i8* %7036, align 1
  %7037 = icmp eq i32 %7021, 0
  %7038 = zext i1 %7037 to i8
  %7039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7038, i8* %7039, align 1
  %7040 = lshr i32 %7021, 31
  %7041 = trunc i32 %7040 to i8
  %7042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7041, i8* %7042, align 1
  %7043 = lshr i32 %7013, 31
  %7044 = lshr i32 %7020, 31
  %7045 = xor i32 %7044, %7043
  %7046 = xor i32 %7040, %7043
  %7047 = add i32 %7046, %7045
  %7048 = icmp eq i32 %7047, 2
  %7049 = zext i1 %7048 to i8
  %7050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7049, i8* %7050, align 1
  store %struct.Memory* %loadMem_467618, %struct.Memory** %MEMORY
  %loadMem_46761e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7052 = getelementptr inbounds %struct.GPR, %struct.GPR* %7051, i32 0, i32 33
  %7053 = getelementptr inbounds %struct.Reg, %struct.Reg* %7052, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %7053 to i64*
  %7054 = load i64, i64* %PC.i46
  %7055 = add i64 %7054, 92
  %7056 = load i64, i64* %PC.i46
  %7057 = add i64 %7056, 6
  %7058 = load i64, i64* %PC.i46
  %7059 = add i64 %7058, 6
  store i64 %7059, i64* %PC.i46
  %7060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7061 = load i8, i8* %7060, align 1
  %7062 = icmp eq i8 %7061, 0
  %7063 = zext i1 %7062 to i8
  store i8 %7063, i8* %BRANCH_TAKEN, align 1
  %7064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7065 = select i1 %7062, i64 %7055, i64 %7057
  store i64 %7065, i64* %7064, align 8
  store %struct.Memory* %loadMem_46761e, %struct.Memory** %MEMORY
  %loadBr_46761e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46761e = icmp eq i8 %loadBr_46761e, 1
  br i1 %cmpBr_46761e, label %block_.L_46767a, label %block_467624

block_467624:                                     ; preds = %block_.L_46760e
  %loadMem_467624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7067 = getelementptr inbounds %struct.GPR, %struct.GPR* %7066, i32 0, i32 33
  %7068 = getelementptr inbounds %struct.Reg, %struct.Reg* %7067, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %7068 to i64*
  %7069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7070 = getelementptr inbounds %struct.GPR, %struct.GPR* %7069, i32 0, i32 1
  %7071 = getelementptr inbounds %struct.Reg, %struct.Reg* %7070, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %7071 to i64*
  %7072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7073 = getelementptr inbounds %struct.GPR, %struct.GPR* %7072, i32 0, i32 15
  %7074 = getelementptr inbounds %struct.Reg, %struct.Reg* %7073, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %7074 to i64*
  %7075 = load i64, i64* %RBP.i45
  %7076 = sub i64 %7075, 16
  %7077 = load i64, i64* %PC.i43
  %7078 = add i64 %7077, 4
  store i64 %7078, i64* %PC.i43
  %7079 = inttoptr i64 %7076 to i64*
  %7080 = load i64, i64* %7079
  store i64 %7080, i64* %RAX.i44, align 8
  store %struct.Memory* %loadMem_467624, %struct.Memory** %MEMORY
  %loadMem_467628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7082 = getelementptr inbounds %struct.GPR, %struct.GPR* %7081, i32 0, i32 33
  %7083 = getelementptr inbounds %struct.Reg, %struct.Reg* %7082, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %7083 to i64*
  %7084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7085 = getelementptr inbounds %struct.GPR, %struct.GPR* %7084, i32 0, i32 1
  %7086 = getelementptr inbounds %struct.Reg, %struct.Reg* %7085, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %7086 to i64*
  %7087 = load i64, i64* %RAX.i42
  %7088 = add i64 %7087, 400
  %7089 = load i64, i64* %PC.i41
  %7090 = add i64 %7089, 7
  store i64 %7090, i64* %PC.i41
  %7091 = inttoptr i64 %7088 to i32*
  %7092 = load i32, i32* %7091
  %7093 = sub i32 %7092, 50
  %7094 = icmp ult i32 %7092, 50
  %7095 = zext i1 %7094 to i8
  %7096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7095, i8* %7096, align 1
  %7097 = and i32 %7093, 255
  %7098 = call i32 @llvm.ctpop.i32(i32 %7097)
  %7099 = trunc i32 %7098 to i8
  %7100 = and i8 %7099, 1
  %7101 = xor i8 %7100, 1
  %7102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7101, i8* %7102, align 1
  %7103 = xor i32 %7092, 50
  %7104 = xor i32 %7103, %7093
  %7105 = lshr i32 %7104, 4
  %7106 = trunc i32 %7105 to i8
  %7107 = and i8 %7106, 1
  %7108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7107, i8* %7108, align 1
  %7109 = icmp eq i32 %7093, 0
  %7110 = zext i1 %7109 to i8
  %7111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7110, i8* %7111, align 1
  %7112 = lshr i32 %7093, 31
  %7113 = trunc i32 %7112 to i8
  %7114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7113, i8* %7114, align 1
  %7115 = lshr i32 %7092, 31
  %7116 = xor i32 %7112, %7115
  %7117 = add i32 %7116, %7115
  %7118 = icmp eq i32 %7117, 2
  %7119 = zext i1 %7118 to i8
  %7120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7119, i8* %7120, align 1
  store %struct.Memory* %loadMem_467628, %struct.Memory** %MEMORY
  %loadMem_46762f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7122 = getelementptr inbounds %struct.GPR, %struct.GPR* %7121, i32 0, i32 33
  %7123 = getelementptr inbounds %struct.Reg, %struct.Reg* %7122, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %7123 to i64*
  %7124 = load i64, i64* %PC.i40
  %7125 = add i64 %7124, 75
  %7126 = load i64, i64* %PC.i40
  %7127 = add i64 %7126, 6
  %7128 = load i64, i64* %PC.i40
  %7129 = add i64 %7128, 6
  store i64 %7129, i64* %PC.i40
  %7130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7131 = load i8, i8* %7130, align 1
  %7132 = icmp ne i8 %7131, 0
  %7133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7134 = load i8, i8* %7133, align 1
  %7135 = icmp ne i8 %7134, 0
  %7136 = xor i1 %7132, %7135
  %7137 = xor i1 %7136, true
  %7138 = zext i1 %7137 to i8
  store i8 %7138, i8* %BRANCH_TAKEN, align 1
  %7139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7140 = select i1 %7136, i64 %7127, i64 %7125
  store i64 %7140, i64* %7139, align 8
  store %struct.Memory* %loadMem_46762f, %struct.Memory** %MEMORY
  %loadBr_46762f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46762f = icmp eq i8 %loadBr_46762f, 1
  br i1 %cmpBr_46762f, label %block_.L_46767a, label %block_467635

block_467635:                                     ; preds = %block_467624
  %loadMem_467635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7142 = getelementptr inbounds %struct.GPR, %struct.GPR* %7141, i32 0, i32 33
  %7143 = getelementptr inbounds %struct.Reg, %struct.Reg* %7142, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %7143 to i64*
  %7144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7145 = getelementptr inbounds %struct.GPR, %struct.GPR* %7144, i32 0, i32 1
  %7146 = getelementptr inbounds %struct.Reg, %struct.Reg* %7145, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %7146 to i64*
  %7147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7148 = getelementptr inbounds %struct.GPR, %struct.GPR* %7147, i32 0, i32 15
  %7149 = getelementptr inbounds %struct.Reg, %struct.Reg* %7148, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %7149 to i64*
  %7150 = load i64, i64* %RBP.i39
  %7151 = sub i64 %7150, 680
  %7152 = load i64, i64* %PC.i37
  %7153 = add i64 %7152, 6
  store i64 %7153, i64* %PC.i37
  %7154 = inttoptr i64 %7151 to i32*
  %7155 = load i32, i32* %7154
  %7156 = zext i32 %7155 to i64
  store i64 %7156, i64* %RAX.i38, align 8
  store %struct.Memory* %loadMem_467635, %struct.Memory** %MEMORY
  %loadMem_46763b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7158 = getelementptr inbounds %struct.GPR, %struct.GPR* %7157, i32 0, i32 33
  %7159 = getelementptr inbounds %struct.Reg, %struct.Reg* %7158, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7159 to i64*
  %7160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7161 = getelementptr inbounds %struct.GPR, %struct.GPR* %7160, i32 0, i32 5
  %7162 = getelementptr inbounds %struct.Reg, %struct.Reg* %7161, i32 0, i32 0
  %RCX.i35 = bitcast %union.anon* %7162 to i64*
  %7163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7164 = getelementptr inbounds %struct.GPR, %struct.GPR* %7163, i32 0, i32 15
  %7165 = getelementptr inbounds %struct.Reg, %struct.Reg* %7164, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %7165 to i64*
  %7166 = load i64, i64* %RBP.i36
  %7167 = sub i64 %7166, 16
  %7168 = load i64, i64* %PC.i34
  %7169 = add i64 %7168, 4
  store i64 %7169, i64* %PC.i34
  %7170 = inttoptr i64 %7167 to i64*
  %7171 = load i64, i64* %7170
  store i64 %7171, i64* %RCX.i35, align 8
  store %struct.Memory* %loadMem_46763b, %struct.Memory** %MEMORY
  %loadMem_46763f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7173 = getelementptr inbounds %struct.GPR, %struct.GPR* %7172, i32 0, i32 33
  %7174 = getelementptr inbounds %struct.Reg, %struct.Reg* %7173, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %7174 to i64*
  %7175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7176 = getelementptr inbounds %struct.GPR, %struct.GPR* %7175, i32 0, i32 7
  %7177 = getelementptr inbounds %struct.Reg, %struct.Reg* %7176, i32 0, i32 0
  %RDX.i32 = bitcast %union.anon* %7177 to i64*
  %7178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7179 = getelementptr inbounds %struct.GPR, %struct.GPR* %7178, i32 0, i32 15
  %7180 = getelementptr inbounds %struct.Reg, %struct.Reg* %7179, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %7180 to i64*
  %7181 = load i64, i64* %RBP.i33
  %7182 = sub i64 %7181, 16
  %7183 = load i64, i64* %PC.i31
  %7184 = add i64 %7183, 4
  store i64 %7184, i64* %PC.i31
  %7185 = inttoptr i64 %7182 to i64*
  %7186 = load i64, i64* %7185
  store i64 %7186, i64* %RDX.i32, align 8
  store %struct.Memory* %loadMem_46763f, %struct.Memory** %MEMORY
  %loadMem_467643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7188 = getelementptr inbounds %struct.GPR, %struct.GPR* %7187, i32 0, i32 33
  %7189 = getelementptr inbounds %struct.Reg, %struct.Reg* %7188, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %7189 to i64*
  %7190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7191 = getelementptr inbounds %struct.GPR, %struct.GPR* %7190, i32 0, i32 7
  %7192 = getelementptr inbounds %struct.Reg, %struct.Reg* %7191, i32 0, i32 0
  %RDX.i30 = bitcast %union.anon* %7192 to i64*
  %7193 = load i64, i64* %RDX.i30
  %7194 = add i64 %7193, 400
  %7195 = load i64, i64* %PC.i29
  %7196 = add i64 %7195, 7
  store i64 %7196, i64* %PC.i29
  %7197 = inttoptr i64 %7194 to i32*
  %7198 = load i32, i32* %7197
  %7199 = sext i32 %7198 to i64
  store i64 %7199, i64* %RDX.i30, align 8
  store %struct.Memory* %loadMem_467643, %struct.Memory** %MEMORY
  %loadMem_46764a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7201 = getelementptr inbounds %struct.GPR, %struct.GPR* %7200, i32 0, i32 33
  %7202 = getelementptr inbounds %struct.Reg, %struct.Reg* %7201, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %7202 to i64*
  %7203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7204 = getelementptr inbounds %struct.GPR, %struct.GPR* %7203, i32 0, i32 1
  %7205 = getelementptr inbounds %struct.Reg, %struct.Reg* %7204, i32 0, i32 0
  %EAX.i26 = bitcast %union.anon* %7205 to i32*
  %7206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7207 = getelementptr inbounds %struct.GPR, %struct.GPR* %7206, i32 0, i32 5
  %7208 = getelementptr inbounds %struct.Reg, %struct.Reg* %7207, i32 0, i32 0
  %RCX.i27 = bitcast %union.anon* %7208 to i64*
  %7209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7210 = getelementptr inbounds %struct.GPR, %struct.GPR* %7209, i32 0, i32 7
  %7211 = getelementptr inbounds %struct.Reg, %struct.Reg* %7210, i32 0, i32 0
  %RDX.i28 = bitcast %union.anon* %7211 to i64*
  %7212 = load i64, i64* %RCX.i27
  %7213 = load i64, i64* %RDX.i28
  %7214 = mul i64 %7213, 4
  %7215 = add i64 %7214, %7212
  %7216 = load i32, i32* %EAX.i26
  %7217 = zext i32 %7216 to i64
  %7218 = load i64, i64* %PC.i25
  %7219 = add i64 %7218, 3
  store i64 %7219, i64* %PC.i25
  %7220 = inttoptr i64 %7215 to i32*
  store i32 %7216, i32* %7220
  store %struct.Memory* %loadMem_46764a, %struct.Memory** %MEMORY
  %loadMem_46764d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7222 = getelementptr inbounds %struct.GPR, %struct.GPR* %7221, i32 0, i32 33
  %7223 = getelementptr inbounds %struct.Reg, %struct.Reg* %7222, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %7223 to i64*
  %7224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7225 = getelementptr inbounds %struct.GPR, %struct.GPR* %7224, i32 0, i32 5
  %7226 = getelementptr inbounds %struct.Reg, %struct.Reg* %7225, i32 0, i32 0
  %RCX.i23 = bitcast %union.anon* %7226 to i64*
  %7227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7228 = getelementptr inbounds %struct.GPR, %struct.GPR* %7227, i32 0, i32 15
  %7229 = getelementptr inbounds %struct.Reg, %struct.Reg* %7228, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %7229 to i64*
  %7230 = load i64, i64* %RBP.i24
  %7231 = sub i64 %7230, 16
  %7232 = load i64, i64* %PC.i22
  %7233 = add i64 %7232, 4
  store i64 %7233, i64* %PC.i22
  %7234 = inttoptr i64 %7231 to i64*
  %7235 = load i64, i64* %7234
  store i64 %7235, i64* %RCX.i23, align 8
  store %struct.Memory* %loadMem_46764d, %struct.Memory** %MEMORY
  %loadMem_467651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7237 = getelementptr inbounds %struct.GPR, %struct.GPR* %7236, i32 0, i32 33
  %7238 = getelementptr inbounds %struct.Reg, %struct.Reg* %7237, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %7238 to i64*
  %7239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7240 = getelementptr inbounds %struct.GPR, %struct.GPR* %7239, i32 0, i32 7
  %7241 = getelementptr inbounds %struct.Reg, %struct.Reg* %7240, i32 0, i32 0
  %RDX.i20 = bitcast %union.anon* %7241 to i64*
  %7242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7243 = getelementptr inbounds %struct.GPR, %struct.GPR* %7242, i32 0, i32 15
  %7244 = getelementptr inbounds %struct.Reg, %struct.Reg* %7243, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %7244 to i64*
  %7245 = load i64, i64* %RBP.i21
  %7246 = sub i64 %7245, 16
  %7247 = load i64, i64* %PC.i19
  %7248 = add i64 %7247, 4
  store i64 %7248, i64* %PC.i19
  %7249 = inttoptr i64 %7246 to i64*
  %7250 = load i64, i64* %7249
  store i64 %7250, i64* %RDX.i20, align 8
  store %struct.Memory* %loadMem_467651, %struct.Memory** %MEMORY
  %loadMem_467655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7252 = getelementptr inbounds %struct.GPR, %struct.GPR* %7251, i32 0, i32 33
  %7253 = getelementptr inbounds %struct.Reg, %struct.Reg* %7252, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %7253 to i64*
  %7254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7255 = getelementptr inbounds %struct.GPR, %struct.GPR* %7254, i32 0, i32 7
  %7256 = getelementptr inbounds %struct.Reg, %struct.Reg* %7255, i32 0, i32 0
  %RDX.i18 = bitcast %union.anon* %7256 to i64*
  %7257 = load i64, i64* %RDX.i18
  %7258 = add i64 %7257, 400
  %7259 = load i64, i64* %PC.i17
  %7260 = add i64 %7259, 7
  store i64 %7260, i64* %PC.i17
  %7261 = inttoptr i64 %7258 to i32*
  %7262 = load i32, i32* %7261
  %7263 = sext i32 %7262 to i64
  store i64 %7263, i64* %RDX.i18, align 8
  store %struct.Memory* %loadMem_467655, %struct.Memory** %MEMORY
  %loadMem_46765c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7265 = getelementptr inbounds %struct.GPR, %struct.GPR* %7264, i32 0, i32 33
  %7266 = getelementptr inbounds %struct.Reg, %struct.Reg* %7265, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %7266 to i64*
  %7267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7268 = getelementptr inbounds %struct.GPR, %struct.GPR* %7267, i32 0, i32 5
  %7269 = getelementptr inbounds %struct.Reg, %struct.Reg* %7268, i32 0, i32 0
  %RCX.i16 = bitcast %union.anon* %7269 to i64*
  %7270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7271 = getelementptr inbounds %struct.GPR, %struct.GPR* %7270, i32 0, i32 7
  %7272 = getelementptr inbounds %struct.Reg, %struct.Reg* %7271, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7272 to i64*
  %7273 = load i64, i64* %RCX.i16
  %7274 = load i64, i64* %RDX.i
  %7275 = mul i64 %7274, 4
  %7276 = add i64 %7273, 200
  %7277 = add i64 %7276, %7275
  %7278 = load i64, i64* %PC.i15
  %7279 = add i64 %7278, 11
  store i64 %7279, i64* %PC.i15
  %7280 = inttoptr i64 %7277 to i32*
  store i32 1, i32* %7280
  store %struct.Memory* %loadMem_46765c, %struct.Memory** %MEMORY
  %loadMem_467667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7282 = getelementptr inbounds %struct.GPR, %struct.GPR* %7281, i32 0, i32 33
  %7283 = getelementptr inbounds %struct.Reg, %struct.Reg* %7282, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %7283 to i64*
  %7284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7285 = getelementptr inbounds %struct.GPR, %struct.GPR* %7284, i32 0, i32 5
  %7286 = getelementptr inbounds %struct.Reg, %struct.Reg* %7285, i32 0, i32 0
  %RCX.i13 = bitcast %union.anon* %7286 to i64*
  %7287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7288 = getelementptr inbounds %struct.GPR, %struct.GPR* %7287, i32 0, i32 15
  %7289 = getelementptr inbounds %struct.Reg, %struct.Reg* %7288, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %7289 to i64*
  %7290 = load i64, i64* %RBP.i14
  %7291 = sub i64 %7290, 16
  %7292 = load i64, i64* %PC.i12
  %7293 = add i64 %7292, 4
  store i64 %7293, i64* %PC.i12
  %7294 = inttoptr i64 %7291 to i64*
  %7295 = load i64, i64* %7294
  store i64 %7295, i64* %RCX.i13, align 8
  store %struct.Memory* %loadMem_467667, %struct.Memory** %MEMORY
  %loadMem_46766b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7297 = getelementptr inbounds %struct.GPR, %struct.GPR* %7296, i32 0, i32 33
  %7298 = getelementptr inbounds %struct.Reg, %struct.Reg* %7297, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7298 to i64*
  %7299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7300 = getelementptr inbounds %struct.GPR, %struct.GPR* %7299, i32 0, i32 1
  %7301 = getelementptr inbounds %struct.Reg, %struct.Reg* %7300, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %7301 to i64*
  %7302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7303 = getelementptr inbounds %struct.GPR, %struct.GPR* %7302, i32 0, i32 5
  %7304 = getelementptr inbounds %struct.Reg, %struct.Reg* %7303, i32 0, i32 0
  %RCX.i11 = bitcast %union.anon* %7304 to i64*
  %7305 = load i64, i64* %RCX.i11
  %7306 = add i64 %7305, 400
  %7307 = load i64, i64* %PC.i9
  %7308 = add i64 %7307, 6
  store i64 %7308, i64* %PC.i9
  %7309 = inttoptr i64 %7306 to i32*
  %7310 = load i32, i32* %7309
  %7311 = zext i32 %7310 to i64
  store i64 %7311, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_46766b, %struct.Memory** %MEMORY
  %loadMem_467671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7313 = getelementptr inbounds %struct.GPR, %struct.GPR* %7312, i32 0, i32 33
  %7314 = getelementptr inbounds %struct.Reg, %struct.Reg* %7313, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %7314 to i64*
  %7315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7316 = getelementptr inbounds %struct.GPR, %struct.GPR* %7315, i32 0, i32 1
  %7317 = getelementptr inbounds %struct.Reg, %struct.Reg* %7316, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7317 to i64*
  %7318 = load i64, i64* %RAX.i
  %7319 = load i64, i64* %PC.i8
  %7320 = add i64 %7319, 3
  store i64 %7320, i64* %PC.i8
  %7321 = trunc i64 %7318 to i32
  %7322 = add i32 1, %7321
  %7323 = zext i32 %7322 to i64
  store i64 %7323, i64* %RAX.i, align 8
  %7324 = icmp ult i32 %7322, %7321
  %7325 = icmp ult i32 %7322, 1
  %7326 = or i1 %7324, %7325
  %7327 = zext i1 %7326 to i8
  %7328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7327, i8* %7328, align 1
  %7329 = and i32 %7322, 255
  %7330 = call i32 @llvm.ctpop.i32(i32 %7329)
  %7331 = trunc i32 %7330 to i8
  %7332 = and i8 %7331, 1
  %7333 = xor i8 %7332, 1
  %7334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7333, i8* %7334, align 1
  %7335 = xor i64 1, %7318
  %7336 = trunc i64 %7335 to i32
  %7337 = xor i32 %7336, %7322
  %7338 = lshr i32 %7337, 4
  %7339 = trunc i32 %7338 to i8
  %7340 = and i8 %7339, 1
  %7341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7340, i8* %7341, align 1
  %7342 = icmp eq i32 %7322, 0
  %7343 = zext i1 %7342 to i8
  %7344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7343, i8* %7344, align 1
  %7345 = lshr i32 %7322, 31
  %7346 = trunc i32 %7345 to i8
  %7347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7346, i8* %7347, align 1
  %7348 = lshr i32 %7321, 31
  %7349 = xor i32 %7345, %7348
  %7350 = add i32 %7349, %7345
  %7351 = icmp eq i32 %7350, 2
  %7352 = zext i1 %7351 to i8
  %7353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7352, i8* %7353, align 1
  store %struct.Memory* %loadMem_467671, %struct.Memory** %MEMORY
  %loadMem_467674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7355 = getelementptr inbounds %struct.GPR, %struct.GPR* %7354, i32 0, i32 33
  %7356 = getelementptr inbounds %struct.Reg, %struct.Reg* %7355, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %7356 to i64*
  %7357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7358 = getelementptr inbounds %struct.GPR, %struct.GPR* %7357, i32 0, i32 1
  %7359 = getelementptr inbounds %struct.Reg, %struct.Reg* %7358, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7359 to i32*
  %7360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7361 = getelementptr inbounds %struct.GPR, %struct.GPR* %7360, i32 0, i32 5
  %7362 = getelementptr inbounds %struct.Reg, %struct.Reg* %7361, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7362 to i64*
  %7363 = load i64, i64* %RCX.i
  %7364 = add i64 %7363, 400
  %7365 = load i32, i32* %EAX.i
  %7366 = zext i32 %7365 to i64
  %7367 = load i64, i64* %PC.i7
  %7368 = add i64 %7367, 6
  store i64 %7368, i64* %PC.i7
  %7369 = inttoptr i64 %7364 to i32*
  store i32 %7365, i32* %7369
  store %struct.Memory* %loadMem_467674, %struct.Memory** %MEMORY
  br label %block_.L_46767a

block_.L_46767a:                                  ; preds = %block_467635, %block_467624, %block_.L_46760e
  %loadMem_46767a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7371 = getelementptr inbounds %struct.GPR, %struct.GPR* %7370, i32 0, i32 33
  %7372 = getelementptr inbounds %struct.Reg, %struct.Reg* %7371, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %7372 to i64*
  %7373 = load i64, i64* %PC.i6
  %7374 = add i64 %7373, 5
  %7375 = load i64, i64* %PC.i6
  %7376 = add i64 %7375, 5
  store i64 %7376, i64* %PC.i6
  %7377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7374, i64* %7377, align 8
  store %struct.Memory* %loadMem_46767a, %struct.Memory** %MEMORY
  br label %block_.L_46767f

block_.L_46767f:                                  ; preds = %block_.L_46767a
  %loadMem_46767f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7379 = getelementptr inbounds %struct.GPR, %struct.GPR* %7378, i32 0, i32 33
  %7380 = getelementptr inbounds %struct.Reg, %struct.Reg* %7379, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7380 to i64*
  %7381 = load i64, i64* %PC.i5
  %7382 = add i64 %7381, 5
  %7383 = load i64, i64* %PC.i5
  %7384 = add i64 %7383, 5
  store i64 %7384, i64* %PC.i5
  %7385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7382, i64* %7385, align 8
  store %struct.Memory* %loadMem_46767f, %struct.Memory** %MEMORY
  br label %block_.L_467684

block_.L_467684:                                  ; preds = %block_.L_46767f, %block_46757e, %block_.L_46756a, %block_.L_46744b, %block_467344, %block_46714a, %block_.L_46713b
  %loadMem_467684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7387 = getelementptr inbounds %struct.GPR, %struct.GPR* %7386, i32 0, i32 33
  %7388 = getelementptr inbounds %struct.Reg, %struct.Reg* %7387, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7388 to i64*
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7390 = getelementptr inbounds %struct.GPR, %struct.GPR* %7389, i32 0, i32 13
  %7391 = getelementptr inbounds %struct.Reg, %struct.Reg* %7390, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7391 to i64*
  %7392 = load i64, i64* %RSP.i
  %7393 = load i64, i64* %PC.i4
  %7394 = add i64 %7393, 7
  store i64 %7394, i64* %PC.i4
  %7395 = add i64 752, %7392
  store i64 %7395, i64* %RSP.i, align 8
  %7396 = icmp ult i64 %7395, %7392
  %7397 = icmp ult i64 %7395, 752
  %7398 = or i1 %7396, %7397
  %7399 = zext i1 %7398 to i8
  %7400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7399, i8* %7400, align 1
  %7401 = trunc i64 %7395 to i32
  %7402 = and i32 %7401, 255
  %7403 = call i32 @llvm.ctpop.i32(i32 %7402)
  %7404 = trunc i32 %7403 to i8
  %7405 = and i8 %7404, 1
  %7406 = xor i8 %7405, 1
  %7407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7406, i8* %7407, align 1
  %7408 = xor i64 752, %7392
  %7409 = xor i64 %7408, %7395
  %7410 = lshr i64 %7409, 4
  %7411 = trunc i64 %7410 to i8
  %7412 = and i8 %7411, 1
  %7413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7412, i8* %7413, align 1
  %7414 = icmp eq i64 %7395, 0
  %7415 = zext i1 %7414 to i8
  %7416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7415, i8* %7416, align 1
  %7417 = lshr i64 %7395, 63
  %7418 = trunc i64 %7417 to i8
  %7419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7418, i8* %7419, align 1
  %7420 = lshr i64 %7392, 63
  %7421 = xor i64 %7417, %7420
  %7422 = add i64 %7421, %7417
  %7423 = icmp eq i64 %7422, 2
  %7424 = zext i1 %7423 to i8
  %7425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7424, i8* %7425, align 1
  store %struct.Memory* %loadMem_467684, %struct.Memory** %MEMORY
  %loadMem_46768b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7427 = getelementptr inbounds %struct.GPR, %struct.GPR* %7426, i32 0, i32 33
  %7428 = getelementptr inbounds %struct.Reg, %struct.Reg* %7427, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7428 to i64*
  %7429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7430 = getelementptr inbounds %struct.GPR, %struct.GPR* %7429, i32 0, i32 15
  %7431 = getelementptr inbounds %struct.Reg, %struct.Reg* %7430, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7431 to i64*
  %7432 = load i64, i64* %PC.i2
  %7433 = add i64 %7432, 1
  store i64 %7433, i64* %PC.i2
  %7434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7435 = load i64, i64* %7434, align 8
  %7436 = add i64 %7435, 8
  %7437 = inttoptr i64 %7435 to i64*
  %7438 = load i64, i64* %7437
  store i64 %7438, i64* %RBP.i3, align 8
  store i64 %7436, i64* %7434, align 8
  store %struct.Memory* %loadMem_46768b, %struct.Memory** %MEMORY
  %loadMem_46768c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7440 = getelementptr inbounds %struct.GPR, %struct.GPR* %7439, i32 0, i32 33
  %7441 = getelementptr inbounds %struct.Reg, %struct.Reg* %7440, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7441 to i64*
  %7442 = load i64, i64* %PC.i1
  %7443 = add i64 %7442, 1
  store i64 %7443, i64* %PC.i1
  %7444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7446 = load i64, i64* %7445, align 8
  %7447 = inttoptr i64 %7446 to i64*
  %7448 = load i64, i64* %7447
  store i64 %7448, i64* %7444, align 8
  %7449 = add i64 %7446, 8
  store i64 %7449, i64* %7445, align 8
  store %struct.Memory* %loadMem_46768c, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_46768c
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

define %struct.Memory* @routine_subq__0x2f0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 752
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 752
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
  %23 = xor i64 752, %9
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

define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_subl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_466f75(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_466fe6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xec2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3778, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57fc9d___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fc9d_type* @G__0x57fc9d to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x2c8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 712
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

define %struct.Memory* @routine_movq__rdx__MINUS0x2d0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 720
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

define %struct.Memory* @routine_movl_MINUS0x2c8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 712
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

define %struct.Memory* @routine_movl__eax__MINUS0x2d4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 724
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

define %struct.Memory* @routine_movq_MINUS0x2d0__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 720
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x2d8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 728
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

define %struct.Memory* @routine_movl_MINUS0x2d4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 724
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2d8__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 728
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

define %struct.Memory* @routine_movl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x2a0__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 672
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.chainlinks2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_467140(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_467140(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x2b4__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 692
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2a0__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 672
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_movl_MINUS0x2b4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 692
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x2dc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 732
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.is_self_atari(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_46713b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_467051(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2b8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 696
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2b8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 696
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_cmpl_0x190__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 400
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

define %struct.Memory* @routine_jge_.L_4670c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2b8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 696
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl_MINUS0x2b4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 692
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

define %struct.Memory* @routine_jne_.L_4670ac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xc8__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 200
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

define %struct.Memory* @routine_addl__0x0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %12, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = trunc i64 %9 to i32
  %22 = xor i32 %21, %12
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %12, 31
  %34 = xor i32 %30, %33
  %35 = add i32 %34, %30
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0xc8__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 200
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4670c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4670b1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x2b8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 696
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46705b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_467131(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x32__0x190__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 50
  %16 = icmp ult i32 %14, 50
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
  %25 = xor i32 %14, 50
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

define %struct.Memory* @routine_jge_.L_467131(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2b4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 692
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_0x190__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movl__0x0__0xc8__rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 200
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 0, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x190__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x190__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 400
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_467136(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46713b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_467684(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jle_.L_46714f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x2a8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 680
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x2e0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 736
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_4672dc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x3___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x2a8__rbp__rsi_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -680
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jg_.L_4672c9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0x2a8__rbp__rcx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -680
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

define %struct.Memory* @routine_jne_.L_4672c9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4671c7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2bc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 700
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2bc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 700
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_467247(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2bc__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 700
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_cmpl_MINUS0x2a8__rbp__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %ESI
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RBP
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -680
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %21 to i32*
  %25 = load i32, i32* %24
  %26 = sub i32 %15, %25
  %27 = icmp ult i32 %15, %25
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %26, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = xor i32 %25, %15
  %37 = xor i32 %36, %26
  %38 = lshr i32 %37, 4
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %40, i8* %41, align 1
  %42 = icmp eq i32 %26, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %26, 31
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %15, 31
  %49 = lshr i32 %25, 31
  %50 = xor i32 %49, %48
  %51 = xor i32 %45, %48
  %52 = add i32 %51, %50
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %54, i8* %55, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_46722e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2bc__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 700
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_467247(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_467233(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x2bc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 700
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4671d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4672bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_4672bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2a8__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -680
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4672c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4672c9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4672ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_467170(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x2a8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 680
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2a4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 676
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_je_.L_467349(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x2a4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 676
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

define %struct.Memory* @routine_jge_.L_46736c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2a4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 676
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2e4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 740
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_467378(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x2e4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 740
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x2ac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 684
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4673aa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x2e8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 744
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4673b6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x2e8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 744
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_movl__eax__MINUS0x2b0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 688
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x2ac__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 684
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 24
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

define %struct.Memory* @routine_jne_.L_467408(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2b0__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.is_edge_vertex(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_467408(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2ac__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 684
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.same_string(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_467450(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2b0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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

define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 24
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

define %struct.Memory* @routine_jne_.L_46744b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_46744b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2a8__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 680
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_46756a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2a4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 676
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_46756a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_467480(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2c0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 704
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c0__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 704
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4674f4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2c0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 704
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x2a4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 676
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

define %struct.Memory* @routine_jne_.L_4674db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4674f4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4674e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x2c0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 704
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46748a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_467560(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_467560(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__0xc8__rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 200
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 1, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_467565(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46756a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_467684(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_467684(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_46759a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2c4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 708
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 708
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_46760e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2c4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 708
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x2a8__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 680
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

define %struct.Memory* @routine_jne_.L_4675f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_46760e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4675fa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x2c4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 708
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4675a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_46767a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_46767a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_46767f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x2f0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 752, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 752
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
  %25 = xor i64 752, %9
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
