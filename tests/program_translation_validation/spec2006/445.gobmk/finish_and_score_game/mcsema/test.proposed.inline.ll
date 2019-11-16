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
%G_0x7b0568_type = type <{ [4 x i8] }>
%G_0xab0fbc_type = type <{ [4 x i8] }>
%G_0xaf3454_type = type <{ [16 x i8] }>
%G_0xb454f8_type = type <{ [4 x i8] }>
%G__0xaf2900_type = type <{ [8 x i8] }>
%G__0xaf2eb0_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = global %G_0x7ae438_type zeroinitializer
@G_0x7b0568 = global %G_0x7b0568_type zeroinitializer
@G_0xab0fbc = global %G_0xab0fbc_type zeroinitializer
@G_0xaf3454 = global %G_0xaf3454_type zeroinitializer
@G_0xb454f8 = global %G_0xb454f8_type zeroinitializer
@G__0xaf2900 = global %G__0xaf2900_type zeroinitializer
@G__0xaf2eb0 = global %G__0xaf2eb0_type zeroinitializer

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

declare %struct.Memory* @sub_407d50.store_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40ea70.get_last_player(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_427ca0.genmove_conservative(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40e310.play_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_406f80.aftermath_compute_score(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_407c90.aftermath_final_status(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_407f00.restore_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @finish_and_score_game(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_498ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_498ae0, %struct.Memory** %MEMORY
  %loadMem_498ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i839 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i840 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i839
  %27 = load i64, i64* %PC.i838
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i838
  store i64 %26, i64* %RBP.i840, align 8
  store %struct.Memory* %loadMem_498ae1, %struct.Memory** %MEMORY
  %loadMem_498ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i837 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i837
  %36 = load i64, i64* %PC.i836
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i836
  %38 = sub i64 %35, 6368
  store i64 %38, i64* %RSP.i837, align 8
  %39 = icmp ult i64 %35, 6368
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
  %49 = xor i64 6368, %35
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
  store %struct.Memory* %loadMem_498ae4, %struct.Memory** %MEMORY
  %loadMem_498aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i834 = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i835 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i835
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i834
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i833
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i833
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_498aeb, %struct.Memory** %MEMORY
  %loadMem_498aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i831 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 15
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RBP.i832 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %RBP.i832
  %90 = sub i64 %89, 24
  %91 = load i64, i64* %PC.i831
  %92 = add i64 %91, 7
  store i64 %92, i64* %PC.i831
  %93 = inttoptr i64 %90 to i32*
  store i32 0, i32* %93
  store %struct.Memory* %loadMem_498aee, %struct.Memory** %MEMORY
  %loadMem_498af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 33
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i830 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i830
  %101 = sub i64 %100, 28
  %102 = load i64, i64* %PC.i829
  %103 = add i64 %102, 7
  store i64 %103, i64* %PC.i829
  %104 = inttoptr i64 %101 to i32*
  store i32 0, i32* %104
  store %struct.Memory* %loadMem_498af5, %struct.Memory** %MEMORY
  %loadMem_498afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 33
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %107 to i64*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %110 to i64*
  %111 = load i64, i64* %RBP.i828
  %112 = sub i64 %111, 6364
  %113 = load i64, i64* %PC.i827
  %114 = add i64 %113, 10
  store i64 %114, i64* %PC.i827
  %115 = inttoptr i64 %112 to i32*
  store i32 1, i32* %115
  store %struct.Memory* %loadMem_498afc, %struct.Memory** %MEMORY
  %loadMem_498b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 33
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %118 to i64*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 11
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %RDI.i826 = bitcast %union.anon* %121 to i64*
  %122 = load i64, i64* %PC.i825
  %123 = add i64 %122, 7
  store i64 %123, i64* %PC.i825
  %124 = load i32, i32* bitcast (%G_0x7b0568_type* @G_0x7b0568 to i32*)
  %125 = zext i32 %124 to i64
  store i64 %125, i64* %RDI.i826, align 8
  store %struct.Memory* %loadMem_498b06, %struct.Memory** %MEMORY
  %loadMem_498b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 33
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 11
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %131 to i32*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 15
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RBP.i824 = bitcast %union.anon* %134 to i64*
  %135 = load i32, i32* %EDI.i
  %136 = zext i32 %135 to i64
  %137 = load i64, i64* %RBP.i824
  %138 = sub i64 %137, 4
  %139 = load i64, i64* %PC.i823
  %140 = add i64 %139, 3
  store i64 %140, i64* %PC.i823
  %141 = inttoptr i64 %138 to i32*
  %142 = load i32, i32* %141
  %143 = sub i32 %135, %142
  %144 = icmp ult i32 %135, %142
  %145 = zext i1 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %145, i8* %146, align 1
  %147 = and i32 %143, 255
  %148 = call i32 @llvm.ctpop.i32(i32 %147)
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %151, i8* %152, align 1
  %153 = xor i32 %142, %135
  %154 = xor i32 %153, %143
  %155 = lshr i32 %154, 4
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %157, i8* %158, align 1
  %159 = icmp eq i32 %143, 0
  %160 = zext i1 %159 to i8
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %160, i8* %161, align 1
  %162 = lshr i32 %143, 31
  %163 = trunc i32 %162 to i8
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %163, i8* %164, align 1
  %165 = lshr i32 %135, 31
  %166 = lshr i32 %142, 31
  %167 = xor i32 %166, %165
  %168 = xor i32 %162, %165
  %169 = add i32 %168, %167
  %170 = icmp eq i32 %169, 2
  %171 = zext i1 %170 to i8
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %171, i8* %172, align 1
  store %struct.Memory* %loadMem_498b0d, %struct.Memory** %MEMORY
  %loadMem_498b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 33
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %175 to i64*
  %176 = load i64, i64* %PC.i822
  %177 = add i64 %176, 26
  %178 = load i64, i64* %PC.i822
  %179 = add i64 %178, 6
  %180 = load i64, i64* %PC.i822
  %181 = add i64 %180, 6
  store i64 %181, i64* %PC.i822
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %183 = load i8, i8* %182, align 1
  store i8 %183, i8* %BRANCH_TAKEN, align 1
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %185 = icmp ne i8 %183, 0
  %186 = select i1 %185, i64 %177, i64 %179
  store i64 %186, i64* %184, align 8
  store %struct.Memory* %loadMem_498b10, %struct.Memory** %MEMORY
  %loadBr_498b10 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498b10 = icmp eq i8 %loadBr_498b10, 1
  br i1 %cmpBr_498b10, label %block_.L_498b2a, label %block_498b16

block_498b16:                                     ; preds = %entry
  %loadMem_498b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RAX.i820 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 15
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %RBP.i821 = bitcast %union.anon* %195 to i64*
  %196 = load i64, i64* %RBP.i821
  %197 = sub i64 %196, 4
  %198 = load i64, i64* %PC.i819
  %199 = add i64 %198, 3
  store i64 %199, i64* %PC.i819
  %200 = inttoptr i64 %197 to i32*
  %201 = load i32, i32* %200
  %202 = zext i32 %201 to i64
  store i64 %202, i64* %RAX.i820, align 8
  store %struct.Memory* %loadMem_498b16, %struct.Memory** %MEMORY
  %loadMem_498b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %EAX.i818 = bitcast %union.anon* %208 to i32*
  %209 = load i32, i32* %EAX.i818
  %210 = zext i32 %209 to i64
  %211 = load i64, i64* %PC.i817
  %212 = add i64 %211, 7
  store i64 %212, i64* %PC.i817
  store i32 %209, i32* bitcast (%G_0x7b0568_type* @G_0x7b0568 to i32*)
  store %struct.Memory* %loadMem_498b19, %struct.Memory** %MEMORY
  %loadMem_498b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 33
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 15
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %RBP.i816 = bitcast %union.anon* %218 to i64*
  %219 = load i64, i64* %RBP.i816
  %220 = sub i64 %219, 6364
  %221 = load i64, i64* %PC.i815
  %222 = add i64 %221, 10
  store i64 %222, i64* %PC.i815
  %223 = inttoptr i64 %220 to i32*
  store i32 0, i32* %223
  store %struct.Memory* %loadMem_498b20, %struct.Memory** %MEMORY
  br label %block_.L_498b2a

block_.L_498b2a:                                  ; preds = %block_498b16, %entry
  %loadMem_498b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 33
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %226 to i64*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 15
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %RBP.i814 = bitcast %union.anon* %229 to i64*
  %230 = load i64, i64* %RBP.i814
  %231 = sub i64 %230, 12
  %232 = load i64, i64* %PC.i813
  %233 = add i64 %232, 7
  store i64 %233, i64* %PC.i813
  %234 = inttoptr i64 %231 to i32*
  store i32 0, i32* %234
  store %struct.Memory* %loadMem_498b2a, %struct.Memory** %MEMORY
  br label %block_.L_498b31

block_.L_498b31:                                  ; preds = %block_.L_498be2, %block_.L_498b2a
  %loadMem_498b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 33
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %237 to i64*
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %RAX.i811 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 15
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RBP.i812 = bitcast %union.anon* %243 to i64*
  %244 = load i64, i64* %RBP.i812
  %245 = sub i64 %244, 12
  %246 = load i64, i64* %PC.i810
  %247 = add i64 %246, 3
  store i64 %247, i64* %PC.i810
  %248 = inttoptr i64 %245 to i32*
  %249 = load i32, i32* %248
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %RAX.i811, align 8
  store %struct.Memory* %loadMem_498b31, %struct.Memory** %MEMORY
  %loadMem_498b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 33
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %253 to i64*
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %EAX.i809 = bitcast %union.anon* %256 to i32*
  %257 = load i32, i32* %EAX.i809
  %258 = zext i32 %257 to i64
  %259 = load i64, i64* %PC.i808
  %260 = add i64 %259, 7
  store i64 %260, i64* %PC.i808
  %261 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %262 = sub i32 %257, %261
  %263 = icmp ult i32 %257, %261
  %264 = zext i1 %263 to i8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %264, i8* %265, align 1
  %266 = and i32 %262, 255
  %267 = call i32 @llvm.ctpop.i32(i32 %266)
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  %270 = xor i8 %269, 1
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %270, i8* %271, align 1
  %272 = xor i32 %261, %257
  %273 = xor i32 %272, %262
  %274 = lshr i32 %273, 4
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %276, i8* %277, align 1
  %278 = icmp eq i32 %262, 0
  %279 = zext i1 %278 to i8
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %279, i8* %280, align 1
  %281 = lshr i32 %262, 31
  %282 = trunc i32 %281 to i8
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %282, i8* %283, align 1
  %284 = lshr i32 %257, 31
  %285 = lshr i32 %261, 31
  %286 = xor i32 %285, %284
  %287 = xor i32 %281, %284
  %288 = add i32 %287, %286
  %289 = icmp eq i32 %288, 2
  %290 = zext i1 %289 to i8
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %290, i8* %291, align 1
  store %struct.Memory* %loadMem_498b34, %struct.Memory** %MEMORY
  %loadMem_498b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 33
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %294 to i64*
  %295 = load i64, i64* %PC.i807
  %296 = add i64 %295, 181
  %297 = load i64, i64* %PC.i807
  %298 = add i64 %297, 6
  %299 = load i64, i64* %PC.i807
  %300 = add i64 %299, 6
  store i64 %300, i64* %PC.i807
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %302 = load i8, i8* %301, align 1
  %303 = icmp ne i8 %302, 0
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %305 = load i8, i8* %304, align 1
  %306 = icmp ne i8 %305, 0
  %307 = xor i1 %303, %306
  %308 = xor i1 %307, true
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %BRANCH_TAKEN, align 1
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %311 = select i1 %307, i64 %298, i64 %296
  store i64 %311, i64* %310, align 8
  store %struct.Memory* %loadMem_498b3b, %struct.Memory** %MEMORY
  %loadBr_498b3b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498b3b = icmp eq i8 %loadBr_498b3b, 1
  br i1 %cmpBr_498b3b, label %block_.L_498bf0, label %block_498b41

block_498b41:                                     ; preds = %block_.L_498b31
  %loadMem_498b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 33
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 15
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %RBP.i806 = bitcast %union.anon* %317 to i64*
  %318 = load i64, i64* %RBP.i806
  %319 = sub i64 %318, 16
  %320 = load i64, i64* %PC.i805
  %321 = add i64 %320, 7
  store i64 %321, i64* %PC.i805
  %322 = inttoptr i64 %319 to i32*
  store i32 0, i32* %322
  store %struct.Memory* %loadMem_498b41, %struct.Memory** %MEMORY
  br label %block_.L_498b48

block_.L_498b48:                                  ; preds = %block_.L_498bcf, %block_498b41
  %loadMem_498b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 33
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %325 to i64*
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %RAX.i803 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 15
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %RBP.i804 = bitcast %union.anon* %331 to i64*
  %332 = load i64, i64* %RBP.i804
  %333 = sub i64 %332, 16
  %334 = load i64, i64* %PC.i802
  %335 = add i64 %334, 3
  store i64 %335, i64* %PC.i802
  %336 = inttoptr i64 %333 to i32*
  %337 = load i32, i32* %336
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %RAX.i803, align 8
  store %struct.Memory* %loadMem_498b48, %struct.Memory** %MEMORY
  %loadMem_498b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 33
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %341 to i64*
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %EAX.i801 = bitcast %union.anon* %344 to i32*
  %345 = load i32, i32* %EAX.i801
  %346 = zext i32 %345 to i64
  %347 = load i64, i64* %PC.i800
  %348 = add i64 %347, 7
  store i64 %348, i64* %PC.i800
  %349 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %350 = sub i32 %345, %349
  %351 = icmp ult i32 %345, %349
  %352 = zext i1 %351 to i8
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %352, i8* %353, align 1
  %354 = and i32 %350, 255
  %355 = call i32 @llvm.ctpop.i32(i32 %354)
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %358, i8* %359, align 1
  %360 = xor i32 %349, %345
  %361 = xor i32 %360, %350
  %362 = lshr i32 %361, 4
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %364, i8* %365, align 1
  %366 = icmp eq i32 %350, 0
  %367 = zext i1 %366 to i8
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %367, i8* %368, align 1
  %369 = lshr i32 %350, 31
  %370 = trunc i32 %369 to i8
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %370, i8* %371, align 1
  %372 = lshr i32 %345, 31
  %373 = lshr i32 %349, 31
  %374 = xor i32 %373, %372
  %375 = xor i32 %369, %372
  %376 = add i32 %375, %374
  %377 = icmp eq i32 %376, 2
  %378 = zext i1 %377 to i8
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %378, i8* %379, align 1
  store %struct.Memory* %loadMem_498b4b, %struct.Memory** %MEMORY
  %loadMem_498b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 33
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %382 to i64*
  %383 = load i64, i64* %PC.i799
  %384 = add i64 %383, 139
  %385 = load i64, i64* %PC.i799
  %386 = add i64 %385, 6
  %387 = load i64, i64* %PC.i799
  %388 = add i64 %387, 6
  store i64 %388, i64* %PC.i799
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %390 = load i8, i8* %389, align 1
  %391 = icmp ne i8 %390, 0
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %393 = load i8, i8* %392, align 1
  %394 = icmp ne i8 %393, 0
  %395 = xor i1 %391, %394
  %396 = xor i1 %395, true
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %BRANCH_TAKEN, align 1
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %399 = select i1 %395, i64 %386, i64 %384
  store i64 %399, i64* %398, align 8
  store %struct.Memory* %loadMem_498b52, %struct.Memory** %MEMORY
  %loadBr_498b52 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498b52 = icmp eq i8 %loadBr_498b52, 1
  br i1 %cmpBr_498b52, label %block_.L_498bdd, label %block_498b58

block_498b58:                                     ; preds = %block_.L_498b48
  %loadMem_498b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 33
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %402 to i64*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %RAX.i798 = bitcast %union.anon* %405 to i64*
  %406 = load i64, i64* %PC.i797
  %407 = add i64 %406, 10
  store i64 %407, i64* %PC.i797
  store i64 ptrtoint (%G__0xaf2eb0_type* @G__0xaf2eb0 to i64), i64* %RAX.i798, align 8
  store %struct.Memory* %loadMem_498b58, %struct.Memory** %MEMORY
  %loadMem_498b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 33
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %410 to i64*
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 5
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %RCX.i795 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 15
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %RBP.i796 = bitcast %union.anon* %416 to i64*
  %417 = load i64, i64* %RBP.i796
  %418 = sub i64 %417, 12
  %419 = load i64, i64* %PC.i794
  %420 = add i64 %419, 4
  store i64 %420, i64* %PC.i794
  %421 = inttoptr i64 %418 to i32*
  %422 = load i32, i32* %421
  %423 = sext i32 %422 to i64
  %424 = mul i64 %423, 20
  %425 = trunc i64 %424 to i32
  %426 = and i64 %424, 4294967295
  store i64 %426, i64* %RCX.i795, align 8
  %427 = shl i64 %424, 32
  %428 = ashr exact i64 %427, 32
  %429 = icmp ne i64 %428, %424
  %430 = zext i1 %429 to i8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %430, i8* %431, align 1
  %432 = and i32 %425, 255
  %433 = call i32 @llvm.ctpop.i32(i32 %432)
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %436, i8* %437, align 1
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %438, align 1
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %439, align 1
  %440 = lshr i32 %425, 31
  %441 = trunc i32 %440 to i8
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %441, i8* %442, align 1
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %430, i8* %443, align 1
  store %struct.Memory* %loadMem_498b62, %struct.Memory** %MEMORY
  %loadMem_498b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 33
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %446 to i64*
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 5
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %RCX.i793 = bitcast %union.anon* %449 to i64*
  %450 = load i64, i64* %RCX.i793
  %451 = load i64, i64* %PC.i792
  %452 = add i64 %451, 3
  store i64 %452, i64* %PC.i792
  %453 = trunc i64 %450 to i32
  %454 = add i32 21, %453
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RCX.i793, align 8
  %456 = icmp ult i32 %454, %453
  %457 = icmp ult i32 %454, 21
  %458 = or i1 %456, %457
  %459 = zext i1 %458 to i8
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %459, i8* %460, align 1
  %461 = and i32 %454, 255
  %462 = call i32 @llvm.ctpop.i32(i32 %461)
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %465, i8* %466, align 1
  %467 = xor i64 21, %450
  %468 = trunc i64 %467 to i32
  %469 = xor i32 %468, %454
  %470 = lshr i32 %469, 4
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %472, i8* %473, align 1
  %474 = icmp eq i32 %454, 0
  %475 = zext i1 %474 to i8
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %475, i8* %476, align 1
  %477 = lshr i32 %454, 31
  %478 = trunc i32 %477 to i8
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %478, i8* %479, align 1
  %480 = lshr i32 %453, 31
  %481 = xor i32 %477, %480
  %482 = add i32 %481, %477
  %483 = icmp eq i32 %482, 2
  %484 = zext i1 %483 to i8
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %484, i8* %485, align 1
  store %struct.Memory* %loadMem_498b66, %struct.Memory** %MEMORY
  %loadMem_498b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 33
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 5
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %RCX.i790 = bitcast %union.anon* %491 to i64*
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 15
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %RBP.i791 = bitcast %union.anon* %494 to i64*
  %495 = load i64, i64* %RCX.i790
  %496 = load i64, i64* %RBP.i791
  %497 = sub i64 %496, 16
  %498 = load i64, i64* %PC.i789
  %499 = add i64 %498, 3
  store i64 %499, i64* %PC.i789
  %500 = trunc i64 %495 to i32
  %501 = inttoptr i64 %497 to i32*
  %502 = load i32, i32* %501
  %503 = add i32 %502, %500
  %504 = zext i32 %503 to i64
  store i64 %504, i64* %RCX.i790, align 8
  %505 = icmp ult i32 %503, %500
  %506 = icmp ult i32 %503, %502
  %507 = or i1 %505, %506
  %508 = zext i1 %507 to i8
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %508, i8* %509, align 1
  %510 = and i32 %503, 255
  %511 = call i32 @llvm.ctpop.i32(i32 %510)
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  %514 = xor i8 %513, 1
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %514, i8* %515, align 1
  %516 = xor i32 %502, %500
  %517 = xor i32 %516, %503
  %518 = lshr i32 %517, 4
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %520, i8* %521, align 1
  %522 = icmp eq i32 %503, 0
  %523 = zext i1 %522 to i8
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %523, i8* %524, align 1
  %525 = lshr i32 %503, 31
  %526 = trunc i32 %525 to i8
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %526, i8* %527, align 1
  %528 = lshr i32 %500, 31
  %529 = lshr i32 %502, 31
  %530 = xor i32 %525, %528
  %531 = xor i32 %525, %529
  %532 = add i32 %530, %531
  %533 = icmp eq i32 %532, 2
  %534 = zext i1 %533 to i8
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %534, i8* %535, align 1
  store %struct.Memory* %loadMem_498b69, %struct.Memory** %MEMORY
  %loadMem_498b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 33
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %538 to i64*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 5
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %ECX.i787 = bitcast %union.anon* %541 to i32*
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 7
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %RDX.i788 = bitcast %union.anon* %544 to i64*
  %545 = load i32, i32* %ECX.i787
  %546 = zext i32 %545 to i64
  %547 = load i64, i64* %PC.i786
  %548 = add i64 %547, 3
  store i64 %548, i64* %PC.i786
  %549 = shl i64 %546, 32
  %550 = ashr exact i64 %549, 32
  store i64 %550, i64* %RDX.i788, align 8
  store %struct.Memory* %loadMem_498b6c, %struct.Memory** %MEMORY
  %loadMem_498b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 33
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 5
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %RCX.i784 = bitcast %union.anon* %556 to i64*
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 7
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %RDX.i785 = bitcast %union.anon* %559 to i64*
  %560 = load i64, i64* %RDX.i785
  %561 = add i64 %560, 12099168
  %562 = load i64, i64* %PC.i783
  %563 = add i64 %562, 8
  store i64 %563, i64* %PC.i783
  %564 = inttoptr i64 %561 to i8*
  %565 = load i8, i8* %564
  %566 = zext i8 %565 to i64
  store i64 %566, i64* %RCX.i784, align 8
  store %struct.Memory* %loadMem_498b6f, %struct.Memory** %MEMORY
  %loadMem_498b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 33
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %569 to i64*
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %571 = getelementptr inbounds %struct.GPR, %struct.GPR* %570, i32 0, i32 7
  %572 = getelementptr inbounds %struct.Reg, %struct.Reg* %571, i32 0, i32 0
  %RDX.i781 = bitcast %union.anon* %572 to i64*
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 15
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %RBP.i782 = bitcast %union.anon* %575 to i64*
  %576 = load i64, i64* %RBP.i782
  %577 = sub i64 %576, 12
  %578 = load i64, i64* %PC.i780
  %579 = add i64 %578, 4
  store i64 %579, i64* %PC.i780
  %580 = inttoptr i64 %577 to i32*
  %581 = load i32, i32* %580
  %582 = sext i32 %581 to i64
  store i64 %582, i64* %RDX.i781, align 8
  store %struct.Memory* %loadMem_498b77, %struct.Memory** %MEMORY
  %loadMem_498b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 33
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %585 to i64*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 7
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %RDX.i779 = bitcast %union.anon* %588 to i64*
  %589 = load i64, i64* %RDX.i779
  %590 = load i64, i64* %PC.i778
  %591 = add i64 %590, 4
  store i64 %591, i64* %PC.i778
  %592 = sext i64 %589 to i128
  %593 = and i128 %592, -18446744073709551616
  %594 = zext i64 %589 to i128
  %595 = or i128 %593, %594
  %596 = mul i128 76, %595
  %597 = trunc i128 %596 to i64
  store i64 %597, i64* %RDX.i779, align 8
  %598 = sext i64 %597 to i128
  %599 = icmp ne i128 %598, %596
  %600 = zext i1 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %600, i8* %601, align 1
  %602 = trunc i128 %596 to i32
  %603 = and i32 %602, 255
  %604 = call i32 @llvm.ctpop.i32(i32 %603)
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = xor i8 %606, 1
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %607, i8* %608, align 1
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %609, align 1
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %610, align 1
  %611 = lshr i64 %597, 63
  %612 = trunc i64 %611 to i8
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %612, i8* %613, align 1
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %600, i8* %614, align 1
  store %struct.Memory* %loadMem_498b7b, %struct.Memory** %MEMORY
  %loadMem_498b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 33
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 1
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %RAX.i776 = bitcast %union.anon* %620 to i64*
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 7
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %RDX.i777 = bitcast %union.anon* %623 to i64*
  %624 = load i64, i64* %RAX.i776
  %625 = load i64, i64* %RDX.i777
  %626 = load i64, i64* %PC.i775
  %627 = add i64 %626, 3
  store i64 %627, i64* %PC.i775
  %628 = add i64 %625, %624
  store i64 %628, i64* %RAX.i776, align 8
  %629 = icmp ult i64 %628, %624
  %630 = icmp ult i64 %628, %625
  %631 = or i1 %629, %630
  %632 = zext i1 %631 to i8
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %632, i8* %633, align 1
  %634 = trunc i64 %628 to i32
  %635 = and i32 %634, 255
  %636 = call i32 @llvm.ctpop.i32(i32 %635)
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  %639 = xor i8 %638, 1
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %639, i8* %640, align 1
  %641 = xor i64 %625, %624
  %642 = xor i64 %641, %628
  %643 = lshr i64 %642, 4
  %644 = trunc i64 %643 to i8
  %645 = and i8 %644, 1
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %645, i8* %646, align 1
  %647 = icmp eq i64 %628, 0
  %648 = zext i1 %647 to i8
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %648, i8* %649, align 1
  %650 = lshr i64 %628, 63
  %651 = trunc i64 %650 to i8
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %651, i8* %652, align 1
  %653 = lshr i64 %624, 63
  %654 = lshr i64 %625, 63
  %655 = xor i64 %650, %653
  %656 = xor i64 %650, %654
  %657 = add i64 %655, %656
  %658 = icmp eq i64 %657, 2
  %659 = zext i1 %658 to i8
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %659, i8* %660, align 1
  store %struct.Memory* %loadMem_498b7f, %struct.Memory** %MEMORY
  %loadMem_498b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 33
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 7
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %RDX.i773 = bitcast %union.anon* %666 to i64*
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 15
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %RBP.i774 = bitcast %union.anon* %669 to i64*
  %670 = load i64, i64* %RBP.i774
  %671 = sub i64 %670, 16
  %672 = load i64, i64* %PC.i772
  %673 = add i64 %672, 4
  store i64 %673, i64* %PC.i772
  %674 = inttoptr i64 %671 to i32*
  %675 = load i32, i32* %674
  %676 = sext i32 %675 to i64
  store i64 %676, i64* %RDX.i773, align 8
  store %struct.Memory* %loadMem_498b82, %struct.Memory** %MEMORY
  %loadMem_498b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 33
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %679 to i64*
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 5
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %ECX.i769 = bitcast %union.anon* %682 to i32*
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 1
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %RAX.i770 = bitcast %union.anon* %685 to i64*
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 7
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %RDX.i771 = bitcast %union.anon* %688 to i64*
  %689 = load i32, i32* %ECX.i769
  %690 = zext i32 %689 to i64
  %691 = load i64, i64* %RAX.i770
  %692 = load i64, i64* %RDX.i771
  %693 = mul i64 %692, 4
  %694 = add i64 %693, %691
  %695 = load i64, i64* %PC.i768
  %696 = add i64 %695, 3
  store i64 %696, i64* %PC.i768
  %697 = inttoptr i64 %694 to i32*
  %698 = load i32, i32* %697
  %699 = sub i32 %689, %698
  %700 = icmp ult i32 %689, %698
  %701 = zext i1 %700 to i8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %701, i8* %702, align 1
  %703 = and i32 %699, 255
  %704 = call i32 @llvm.ctpop.i32(i32 %703)
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %707, i8* %708, align 1
  %709 = xor i32 %698, %689
  %710 = xor i32 %709, %699
  %711 = lshr i32 %710, 4
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %713, i8* %714, align 1
  %715 = icmp eq i32 %699, 0
  %716 = zext i1 %715 to i8
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %716, i8* %717, align 1
  %718 = lshr i32 %699, 31
  %719 = trunc i32 %718 to i8
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %719, i8* %720, align 1
  %721 = lshr i32 %689, 31
  %722 = lshr i32 %698, 31
  %723 = xor i32 %722, %721
  %724 = xor i32 %718, %721
  %725 = add i32 %724, %723
  %726 = icmp eq i32 %725, 2
  %727 = zext i1 %726 to i8
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %727, i8* %728, align 1
  store %struct.Memory* %loadMem_498b86, %struct.Memory** %MEMORY
  %loadMem_498b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %731 to i64*
  %732 = load i64, i64* %PC.i767
  %733 = add i64 %732, 65
  %734 = load i64, i64* %PC.i767
  %735 = add i64 %734, 6
  %736 = load i64, i64* %PC.i767
  %737 = add i64 %736, 6
  store i64 %737, i64* %PC.i767
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %739 = load i8, i8* %738, align 1
  store i8 %739, i8* %BRANCH_TAKEN, align 1
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %741 = icmp ne i8 %739, 0
  %742 = select i1 %741, i64 %733, i64 %735
  store i64 %742, i64* %740, align 8
  store %struct.Memory* %loadMem_498b89, %struct.Memory** %MEMORY
  %loadBr_498b89 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498b89 = icmp eq i8 %loadBr_498b89, 1
  br i1 %cmpBr_498b89, label %block_.L_498bca, label %block_498b8f

block_498b8f:                                     ; preds = %block_498b58
  %loadMem_498b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 33
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 1
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %RAX.i766 = bitcast %union.anon* %748 to i64*
  %749 = load i64, i64* %PC.i765
  %750 = add i64 %749, 10
  store i64 %750, i64* %PC.i765
  store i64 ptrtoint (%G__0xaf2eb0_type* @G__0xaf2eb0 to i64), i64* %RAX.i766, align 8
  store %struct.Memory* %loadMem_498b8f, %struct.Memory** %MEMORY
  %loadMem_498b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %752 = getelementptr inbounds %struct.GPR, %struct.GPR* %751, i32 0, i32 33
  %753 = getelementptr inbounds %struct.Reg, %struct.Reg* %752, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %753 to i64*
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 5
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %RCX.i763 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 15
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %RBP.i764 = bitcast %union.anon* %759 to i64*
  %760 = load i64, i64* %RBP.i764
  %761 = sub i64 %760, 12
  %762 = load i64, i64* %PC.i762
  %763 = add i64 %762, 4
  store i64 %763, i64* %PC.i762
  %764 = inttoptr i64 %761 to i32*
  %765 = load i32, i32* %764
  %766 = sext i32 %765 to i64
  %767 = mul i64 %766, 20
  %768 = trunc i64 %767 to i32
  %769 = and i64 %767, 4294967295
  store i64 %769, i64* %RCX.i763, align 8
  %770 = shl i64 %767, 32
  %771 = ashr exact i64 %770, 32
  %772 = icmp ne i64 %771, %767
  %773 = zext i1 %772 to i8
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %773, i8* %774, align 1
  %775 = and i32 %768, 255
  %776 = call i32 @llvm.ctpop.i32(i32 %775)
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  %779 = xor i8 %778, 1
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %779, i8* %780, align 1
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %781, align 1
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %782, align 1
  %783 = lshr i32 %768, 31
  %784 = trunc i32 %783 to i8
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %784, i8* %785, align 1
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %773, i8* %786, align 1
  store %struct.Memory* %loadMem_498b99, %struct.Memory** %MEMORY
  %loadMem_498b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 33
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %789 to i64*
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 5
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %RCX.i761 = bitcast %union.anon* %792 to i64*
  %793 = load i64, i64* %RCX.i761
  %794 = load i64, i64* %PC.i760
  %795 = add i64 %794, 3
  store i64 %795, i64* %PC.i760
  %796 = trunc i64 %793 to i32
  %797 = add i32 21, %796
  %798 = zext i32 %797 to i64
  store i64 %798, i64* %RCX.i761, align 8
  %799 = icmp ult i32 %797, %796
  %800 = icmp ult i32 %797, 21
  %801 = or i1 %799, %800
  %802 = zext i1 %801 to i8
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %802, i8* %803, align 1
  %804 = and i32 %797, 255
  %805 = call i32 @llvm.ctpop.i32(i32 %804)
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %808, i8* %809, align 1
  %810 = xor i64 21, %793
  %811 = trunc i64 %810 to i32
  %812 = xor i32 %811, %797
  %813 = lshr i32 %812, 4
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %815, i8* %816, align 1
  %817 = icmp eq i32 %797, 0
  %818 = zext i1 %817 to i8
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %818, i8* %819, align 1
  %820 = lshr i32 %797, 31
  %821 = trunc i32 %820 to i8
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %821, i8* %822, align 1
  %823 = lshr i32 %796, 31
  %824 = xor i32 %820, %823
  %825 = add i32 %824, %820
  %826 = icmp eq i32 %825, 2
  %827 = zext i1 %826 to i8
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %827, i8* %828, align 1
  store %struct.Memory* %loadMem_498b9d, %struct.Memory** %MEMORY
  %loadMem_498ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 33
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 5
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RCX.i758 = bitcast %union.anon* %834 to i64*
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 15
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %RBP.i759 = bitcast %union.anon* %837 to i64*
  %838 = load i64, i64* %RCX.i758
  %839 = load i64, i64* %RBP.i759
  %840 = sub i64 %839, 16
  %841 = load i64, i64* %PC.i757
  %842 = add i64 %841, 3
  store i64 %842, i64* %PC.i757
  %843 = trunc i64 %838 to i32
  %844 = inttoptr i64 %840 to i32*
  %845 = load i32, i32* %844
  %846 = add i32 %845, %843
  %847 = zext i32 %846 to i64
  store i64 %847, i64* %RCX.i758, align 8
  %848 = icmp ult i32 %846, %843
  %849 = icmp ult i32 %846, %845
  %850 = or i1 %848, %849
  %851 = zext i1 %850 to i8
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %851, i8* %852, align 1
  %853 = and i32 %846, 255
  %854 = call i32 @llvm.ctpop.i32(i32 %853)
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  %857 = xor i8 %856, 1
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %857, i8* %858, align 1
  %859 = xor i32 %845, %843
  %860 = xor i32 %859, %846
  %861 = lshr i32 %860, 4
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %863, i8* %864, align 1
  %865 = icmp eq i32 %846, 0
  %866 = zext i1 %865 to i8
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %866, i8* %867, align 1
  %868 = lshr i32 %846, 31
  %869 = trunc i32 %868 to i8
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %869, i8* %870, align 1
  %871 = lshr i32 %843, 31
  %872 = lshr i32 %845, 31
  %873 = xor i32 %868, %871
  %874 = xor i32 %868, %872
  %875 = add i32 %873, %874
  %876 = icmp eq i32 %875, 2
  %877 = zext i1 %876 to i8
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %877, i8* %878, align 1
  store %struct.Memory* %loadMem_498ba0, %struct.Memory** %MEMORY
  %loadMem_498ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 33
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 5
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %ECX.i755 = bitcast %union.anon* %884 to i32*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 7
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %RDX.i756 = bitcast %union.anon* %887 to i64*
  %888 = load i32, i32* %ECX.i755
  %889 = zext i32 %888 to i64
  %890 = load i64, i64* %PC.i754
  %891 = add i64 %890, 3
  store i64 %891, i64* %PC.i754
  %892 = shl i64 %889, 32
  %893 = ashr exact i64 %892, 32
  store i64 %893, i64* %RDX.i756, align 8
  store %struct.Memory* %loadMem_498ba3, %struct.Memory** %MEMORY
  %loadMem_498ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 33
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %896 to i64*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 5
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %RCX.i752 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 7
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %RDX.i753 = bitcast %union.anon* %902 to i64*
  %903 = load i64, i64* %RDX.i753
  %904 = add i64 %903, 12099168
  %905 = load i64, i64* %PC.i751
  %906 = add i64 %905, 8
  store i64 %906, i64* %PC.i751
  %907 = inttoptr i64 %904 to i8*
  %908 = load i8, i8* %907
  %909 = zext i8 %908 to i64
  store i64 %909, i64* %RCX.i752, align 8
  store %struct.Memory* %loadMem_498ba6, %struct.Memory** %MEMORY
  %loadMem_498bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 33
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %912 to i64*
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 7
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %RDX.i749 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 15
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RBP.i750 = bitcast %union.anon* %918 to i64*
  %919 = load i64, i64* %RBP.i750
  %920 = sub i64 %919, 12
  %921 = load i64, i64* %PC.i748
  %922 = add i64 %921, 4
  store i64 %922, i64* %PC.i748
  %923 = inttoptr i64 %920 to i32*
  %924 = load i32, i32* %923
  %925 = sext i32 %924 to i64
  store i64 %925, i64* %RDX.i749, align 8
  store %struct.Memory* %loadMem_498bae, %struct.Memory** %MEMORY
  %loadMem_498bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 33
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 7
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %RDX.i747 = bitcast %union.anon* %931 to i64*
  %932 = load i64, i64* %RDX.i747
  %933 = load i64, i64* %PC.i746
  %934 = add i64 %933, 4
  store i64 %934, i64* %PC.i746
  %935 = sext i64 %932 to i128
  %936 = and i128 %935, -18446744073709551616
  %937 = zext i64 %932 to i128
  %938 = or i128 %936, %937
  %939 = mul i128 76, %938
  %940 = trunc i128 %939 to i64
  store i64 %940, i64* %RDX.i747, align 8
  %941 = sext i64 %940 to i128
  %942 = icmp ne i128 %941, %939
  %943 = zext i1 %942 to i8
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %943, i8* %944, align 1
  %945 = trunc i128 %939 to i32
  %946 = and i32 %945, 255
  %947 = call i32 @llvm.ctpop.i32(i32 %946)
  %948 = trunc i32 %947 to i8
  %949 = and i8 %948, 1
  %950 = xor i8 %949, 1
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %950, i8* %951, align 1
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %952, align 1
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %953, align 1
  %954 = lshr i64 %940, 63
  %955 = trunc i64 %954 to i8
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %955, i8* %956, align 1
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %943, i8* %957, align 1
  store %struct.Memory* %loadMem_498bb2, %struct.Memory** %MEMORY
  %loadMem_498bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 33
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 1
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RAX.i744 = bitcast %union.anon* %963 to i64*
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 7
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %RDX.i745 = bitcast %union.anon* %966 to i64*
  %967 = load i64, i64* %RAX.i744
  %968 = load i64, i64* %RDX.i745
  %969 = load i64, i64* %PC.i743
  %970 = add i64 %969, 3
  store i64 %970, i64* %PC.i743
  %971 = add i64 %968, %967
  store i64 %971, i64* %RAX.i744, align 8
  %972 = icmp ult i64 %971, %967
  %973 = icmp ult i64 %971, %968
  %974 = or i1 %972, %973
  %975 = zext i1 %974 to i8
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %975, i8* %976, align 1
  %977 = trunc i64 %971 to i32
  %978 = and i32 %977, 255
  %979 = call i32 @llvm.ctpop.i32(i32 %978)
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %982, i8* %983, align 1
  %984 = xor i64 %968, %967
  %985 = xor i64 %984, %971
  %986 = lshr i64 %985, 4
  %987 = trunc i64 %986 to i8
  %988 = and i8 %987, 1
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %988, i8* %989, align 1
  %990 = icmp eq i64 %971, 0
  %991 = zext i1 %990 to i8
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %991, i8* %992, align 1
  %993 = lshr i64 %971, 63
  %994 = trunc i64 %993 to i8
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %994, i8* %995, align 1
  %996 = lshr i64 %967, 63
  %997 = lshr i64 %968, 63
  %998 = xor i64 %993, %996
  %999 = xor i64 %993, %997
  %1000 = add i64 %998, %999
  %1001 = icmp eq i64 %1000, 2
  %1002 = zext i1 %1001 to i8
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1002, i8* %1003, align 1
  store %struct.Memory* %loadMem_498bb6, %struct.Memory** %MEMORY
  %loadMem_498bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 33
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 7
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RDX.i741 = bitcast %union.anon* %1009 to i64*
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 15
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %RBP.i742 = bitcast %union.anon* %1012 to i64*
  %1013 = load i64, i64* %RBP.i742
  %1014 = sub i64 %1013, 16
  %1015 = load i64, i64* %PC.i740
  %1016 = add i64 %1015, 4
  store i64 %1016, i64* %PC.i740
  %1017 = inttoptr i64 %1014 to i32*
  %1018 = load i32, i32* %1017
  %1019 = sext i32 %1018 to i64
  store i64 %1019, i64* %RDX.i741, align 8
  store %struct.Memory* %loadMem_498bb9, %struct.Memory** %MEMORY
  %loadMem_498bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 33
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 5
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %ECX.i737 = bitcast %union.anon* %1025 to i32*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 1
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %RAX.i738 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 7
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %RDX.i739 = bitcast %union.anon* %1031 to i64*
  %1032 = load i64, i64* %RAX.i738
  %1033 = load i64, i64* %RDX.i739
  %1034 = mul i64 %1033, 4
  %1035 = add i64 %1034, %1032
  %1036 = load i32, i32* %ECX.i737
  %1037 = zext i32 %1036 to i64
  %1038 = load i64, i64* %PC.i736
  %1039 = add i64 %1038, 3
  store i64 %1039, i64* %PC.i736
  %1040 = inttoptr i64 %1035 to i32*
  store i32 %1036, i32* %1040
  store %struct.Memory* %loadMem_498bbd, %struct.Memory** %MEMORY
  %loadMem_498bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 33
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 15
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %1046 to i64*
  %1047 = load i64, i64* %RBP.i735
  %1048 = sub i64 %1047, 6364
  %1049 = load i64, i64* %PC.i734
  %1050 = add i64 %1049, 10
  store i64 %1050, i64* %PC.i734
  %1051 = inttoptr i64 %1048 to i32*
  store i32 0, i32* %1051
  store %struct.Memory* %loadMem_498bc0, %struct.Memory** %MEMORY
  br label %block_.L_498bca

block_.L_498bca:                                  ; preds = %block_498b8f, %block_498b58
  %loadMem_498bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 33
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1054 to i64*
  %1055 = load i64, i64* %PC.i733
  %1056 = add i64 %1055, 5
  %1057 = load i64, i64* %PC.i733
  %1058 = add i64 %1057, 5
  store i64 %1058, i64* %PC.i733
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1056, i64* %1059, align 8
  store %struct.Memory* %loadMem_498bca, %struct.Memory** %MEMORY
  br label %block_.L_498bcf

block_.L_498bcf:                                  ; preds = %block_.L_498bca
  %loadMem_498bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 33
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %1062 to i64*
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 1
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %RAX.i731 = bitcast %union.anon* %1065 to i64*
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1067 = getelementptr inbounds %struct.GPR, %struct.GPR* %1066, i32 0, i32 15
  %1068 = getelementptr inbounds %struct.Reg, %struct.Reg* %1067, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %1068 to i64*
  %1069 = load i64, i64* %RBP.i732
  %1070 = sub i64 %1069, 16
  %1071 = load i64, i64* %PC.i730
  %1072 = add i64 %1071, 3
  store i64 %1072, i64* %PC.i730
  %1073 = inttoptr i64 %1070 to i32*
  %1074 = load i32, i32* %1073
  %1075 = zext i32 %1074 to i64
  store i64 %1075, i64* %RAX.i731, align 8
  store %struct.Memory* %loadMem_498bcf, %struct.Memory** %MEMORY
  %loadMem_498bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 33
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 1
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %RAX.i729 = bitcast %union.anon* %1081 to i64*
  %1082 = load i64, i64* %RAX.i729
  %1083 = load i64, i64* %PC.i728
  %1084 = add i64 %1083, 3
  store i64 %1084, i64* %PC.i728
  %1085 = trunc i64 %1082 to i32
  %1086 = add i32 1, %1085
  %1087 = zext i32 %1086 to i64
  store i64 %1087, i64* %RAX.i729, align 8
  %1088 = icmp ult i32 %1086, %1085
  %1089 = icmp ult i32 %1086, 1
  %1090 = or i1 %1088, %1089
  %1091 = zext i1 %1090 to i8
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1091, i8* %1092, align 1
  %1093 = and i32 %1086, 255
  %1094 = call i32 @llvm.ctpop.i32(i32 %1093)
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  %1097 = xor i8 %1096, 1
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1097, i8* %1098, align 1
  %1099 = xor i64 1, %1082
  %1100 = trunc i64 %1099 to i32
  %1101 = xor i32 %1100, %1086
  %1102 = lshr i32 %1101, 4
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1104, i8* %1105, align 1
  %1106 = icmp eq i32 %1086, 0
  %1107 = zext i1 %1106 to i8
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1107, i8* %1108, align 1
  %1109 = lshr i32 %1086, 31
  %1110 = trunc i32 %1109 to i8
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1110, i8* %1111, align 1
  %1112 = lshr i32 %1085, 31
  %1113 = xor i32 %1109, %1112
  %1114 = add i32 %1113, %1109
  %1115 = icmp eq i32 %1114, 2
  %1116 = zext i1 %1115 to i8
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1116, i8* %1117, align 1
  store %struct.Memory* %loadMem_498bd2, %struct.Memory** %MEMORY
  %loadMem_498bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 33
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %1120 to i64*
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 1
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %EAX.i726 = bitcast %union.anon* %1123 to i32*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 15
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %RBP.i727 = bitcast %union.anon* %1126 to i64*
  %1127 = load i64, i64* %RBP.i727
  %1128 = sub i64 %1127, 16
  %1129 = load i32, i32* %EAX.i726
  %1130 = zext i32 %1129 to i64
  %1131 = load i64, i64* %PC.i725
  %1132 = add i64 %1131, 3
  store i64 %1132, i64* %PC.i725
  %1133 = inttoptr i64 %1128 to i32*
  store i32 %1129, i32* %1133
  store %struct.Memory* %loadMem_498bd5, %struct.Memory** %MEMORY
  %loadMem_498bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 33
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %1136 to i64*
  %1137 = load i64, i64* %PC.i724
  %1138 = add i64 %1137, -144
  %1139 = load i64, i64* %PC.i724
  %1140 = add i64 %1139, 5
  store i64 %1140, i64* %PC.i724
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1138, i64* %1141, align 8
  store %struct.Memory* %loadMem_498bd8, %struct.Memory** %MEMORY
  br label %block_.L_498b48

block_.L_498bdd:                                  ; preds = %block_.L_498b48
  %loadMem_498bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 33
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %1144 to i64*
  %1145 = load i64, i64* %PC.i723
  %1146 = add i64 %1145, 5
  %1147 = load i64, i64* %PC.i723
  %1148 = add i64 %1147, 5
  store i64 %1148, i64* %PC.i723
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1146, i64* %1149, align 8
  store %struct.Memory* %loadMem_498bdd, %struct.Memory** %MEMORY
  br label %block_.L_498be2

block_.L_498be2:                                  ; preds = %block_.L_498bdd
  %loadMem_498be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 33
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %1152 to i64*
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 1
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %RAX.i721 = bitcast %union.anon* %1155 to i64*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 15
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %1158 to i64*
  %1159 = load i64, i64* %RBP.i722
  %1160 = sub i64 %1159, 12
  %1161 = load i64, i64* %PC.i720
  %1162 = add i64 %1161, 3
  store i64 %1162, i64* %PC.i720
  %1163 = inttoptr i64 %1160 to i32*
  %1164 = load i32, i32* %1163
  %1165 = zext i32 %1164 to i64
  store i64 %1165, i64* %RAX.i721, align 8
  store %struct.Memory* %loadMem_498be2, %struct.Memory** %MEMORY
  %loadMem_498be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 33
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 1
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %RAX.i719 = bitcast %union.anon* %1171 to i64*
  %1172 = load i64, i64* %RAX.i719
  %1173 = load i64, i64* %PC.i718
  %1174 = add i64 %1173, 3
  store i64 %1174, i64* %PC.i718
  %1175 = trunc i64 %1172 to i32
  %1176 = add i32 1, %1175
  %1177 = zext i32 %1176 to i64
  store i64 %1177, i64* %RAX.i719, align 8
  %1178 = icmp ult i32 %1176, %1175
  %1179 = icmp ult i32 %1176, 1
  %1180 = or i1 %1178, %1179
  %1181 = zext i1 %1180 to i8
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1181, i8* %1182, align 1
  %1183 = and i32 %1176, 255
  %1184 = call i32 @llvm.ctpop.i32(i32 %1183)
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  %1187 = xor i8 %1186, 1
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1187, i8* %1188, align 1
  %1189 = xor i64 1, %1172
  %1190 = trunc i64 %1189 to i32
  %1191 = xor i32 %1190, %1176
  %1192 = lshr i32 %1191, 4
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1194, i8* %1195, align 1
  %1196 = icmp eq i32 %1176, 0
  %1197 = zext i1 %1196 to i8
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1197, i8* %1198, align 1
  %1199 = lshr i32 %1176, 31
  %1200 = trunc i32 %1199 to i8
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1200, i8* %1201, align 1
  %1202 = lshr i32 %1175, 31
  %1203 = xor i32 %1199, %1202
  %1204 = add i32 %1203, %1199
  %1205 = icmp eq i32 %1204, 2
  %1206 = zext i1 %1205 to i8
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1206, i8* %1207, align 1
  store %struct.Memory* %loadMem_498be5, %struct.Memory** %MEMORY
  %loadMem_498be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 33
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %1210 to i64*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 1
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %EAX.i716 = bitcast %union.anon* %1213 to i32*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 15
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %RBP.i717 = bitcast %union.anon* %1216 to i64*
  %1217 = load i64, i64* %RBP.i717
  %1218 = sub i64 %1217, 12
  %1219 = load i32, i32* %EAX.i716
  %1220 = zext i32 %1219 to i64
  %1221 = load i64, i64* %PC.i715
  %1222 = add i64 %1221, 3
  store i64 %1222, i64* %PC.i715
  %1223 = inttoptr i64 %1218 to i32*
  store i32 %1219, i32* %1223
  store %struct.Memory* %loadMem_498be8, %struct.Memory** %MEMORY
  %loadMem_498beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 33
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %1226 to i64*
  %1227 = load i64, i64* %PC.i714
  %1228 = add i64 %1227, -186
  %1229 = load i64, i64* %PC.i714
  %1230 = add i64 %1229, 5
  store i64 %1230, i64* %PC.i714
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1228, i64* %1231, align 8
  store %struct.Memory* %loadMem_498beb, %struct.Memory** %MEMORY
  br label %block_.L_498b31

block_.L_498bf0:                                  ; preds = %block_.L_498b31
  %loadMem_498bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 33
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %1234 to i64*
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 15
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %RBP.i713 = bitcast %union.anon* %1237 to i64*
  %1238 = load i64, i64* %RBP.i713
  %1239 = sub i64 %1238, 6364
  %1240 = load i64, i64* %PC.i712
  %1241 = add i64 %1240, 7
  store i64 %1241, i64* %PC.i712
  %1242 = inttoptr i64 %1239 to i32*
  %1243 = load i32, i32* %1242
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1244, align 1
  %1245 = and i32 %1243, 255
  %1246 = call i32 @llvm.ctpop.i32(i32 %1245)
  %1247 = trunc i32 %1246 to i8
  %1248 = and i8 %1247, 1
  %1249 = xor i8 %1248, 1
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1249, i8* %1250, align 1
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1251, align 1
  %1252 = icmp eq i32 %1243, 0
  %1253 = zext i1 %1252 to i8
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1253, i8* %1254, align 1
  %1255 = lshr i32 %1243, 31
  %1256 = trunc i32 %1255 to i8
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1256, i8* %1257, align 1
  %1258 = lshr i32 %1243, 31
  %1259 = xor i32 %1255, %1258
  %1260 = add i32 %1259, %1258
  %1261 = icmp eq i32 %1260, 2
  %1262 = zext i1 %1261 to i8
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1262, i8* %1263, align 1
  store %struct.Memory* %loadMem_498bf0, %struct.Memory** %MEMORY
  %loadMem_498bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 33
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %1266 to i64*
  %1267 = load i64, i64* %PC.i711
  %1268 = add i64 %1267, 11
  %1269 = load i64, i64* %PC.i711
  %1270 = add i64 %1269, 6
  %1271 = load i64, i64* %PC.i711
  %1272 = add i64 %1271, 6
  store i64 %1272, i64* %PC.i711
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1274 = load i8, i8* %1273, align 1
  store i8 %1274, i8* %BRANCH_TAKEN, align 1
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1276 = icmp ne i8 %1274, 0
  %1277 = select i1 %1276, i64 %1268, i64 %1270
  store i64 %1277, i64* %1275, align 8
  store %struct.Memory* %loadMem_498bf7, %struct.Memory** %MEMORY
  %loadBr_498bf7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498bf7 = icmp eq i8 %loadBr_498bf7, 1
  br i1 %cmpBr_498bf7, label %block_.L_498c02, label %block_498bfd

block_498bfd:                                     ; preds = %block_.L_498bf0
  %loadMem_498bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 33
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %1280 to i64*
  %1281 = load i64, i64* %PC.i710
  %1282 = add i64 %1281, 1479
  %1283 = load i64, i64* %PC.i710
  %1284 = add i64 %1283, 5
  store i64 %1284, i64* %PC.i710
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1282, i64* %1285, align 8
  store %struct.Memory* %loadMem_498bfd, %struct.Memory** %MEMORY
  br label %block_.L_4991c4

block_.L_498c02:                                  ; preds = %block_.L_498bf0
  %loadMem_498c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 11
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RDI.i708 = bitcast %union.anon* %1291 to i64*
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 15
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %RBP.i709 = bitcast %union.anon* %1294 to i64*
  %1295 = load i64, i64* %RBP.i709
  %1296 = sub i64 %1295, 6360
  %1297 = load i64, i64* %PC.i707
  %1298 = add i64 %1297, 7
  store i64 %1298, i64* %PC.i707
  store i64 %1296, i64* %RDI.i708, align 8
  store %struct.Memory* %loadMem_498c02, %struct.Memory** %MEMORY
  %loadMem_498c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 33
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %1301 to i64*
  %1302 = load i64, i64* %PC.i706
  %1303 = add i64 %1302, 11
  store i64 %1303, i64* %PC.i706
  store i32 1, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*)
  store %struct.Memory* %loadMem_498c09, %struct.Memory** %MEMORY
  %loadMem1_498c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 33
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %1306 to i64*
  %1307 = load i64, i64* %PC.i705
  %1308 = add i64 %1307, -593604
  %1309 = load i64, i64* %PC.i705
  %1310 = add i64 %1309, 5
  %1311 = load i64, i64* %PC.i705
  %1312 = add i64 %1311, 5
  store i64 %1312, i64* %PC.i705
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1314 = load i64, i64* %1313, align 8
  %1315 = add i64 %1314, -8
  %1316 = inttoptr i64 %1315 to i64*
  store i64 %1310, i64* %1316
  store i64 %1315, i64* %1313, align 8
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1308, i64* %1317, align 8
  store %struct.Memory* %loadMem1_498c14, %struct.Memory** %MEMORY
  %loadMem2_498c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_498c14 = load i64, i64* %3
  %call2_498c14 = call %struct.Memory* @sub_407d50.store_board(%struct.State* %0, i64 %loadPC_498c14, %struct.Memory* %loadMem2_498c14)
  store %struct.Memory* %call2_498c14, %struct.Memory** %MEMORY
  %loadMem1_498c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 33
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %1320 to i64*
  %1321 = load i64, i64* %PC.i704
  %1322 = add i64 %1321, -565673
  %1323 = load i64, i64* %PC.i704
  %1324 = add i64 %1323, 5
  %1325 = load i64, i64* %PC.i704
  %1326 = add i64 %1325, 5
  store i64 %1326, i64* %PC.i704
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1328 = load i64, i64* %1327, align 8
  %1329 = add i64 %1328, -8
  %1330 = inttoptr i64 %1329 to i64*
  store i64 %1324, i64* %1330
  store i64 %1329, i64* %1327, align 8
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1322, i64* %1331, align 8
  store %struct.Memory* %loadMem1_498c19, %struct.Memory** %MEMORY
  %loadMem2_498c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_498c19 = load i64, i64* %3
  %call2_498c19 = call %struct.Memory* @sub_40ea70.get_last_player(%struct.State* %0, i64 %loadPC_498c19, %struct.Memory* %loadMem2_498c19)
  store %struct.Memory* %call2_498c19, %struct.Memory** %MEMORY
  %loadMem_498c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 33
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %1334 to i64*
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 1
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %EAX.i703 = bitcast %union.anon* %1337 to i32*
  %1338 = load i32, i32* %EAX.i703
  %1339 = zext i32 %1338 to i64
  %1340 = load i64, i64* %PC.i702
  %1341 = add i64 %1340, 3
  store i64 %1341, i64* %PC.i702
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1342, align 1
  %1343 = and i32 %1338, 255
  %1344 = call i32 @llvm.ctpop.i32(i32 %1343)
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1347, i8* %1348, align 1
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1349, align 1
  %1350 = icmp eq i32 %1338, 0
  %1351 = zext i1 %1350 to i8
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1351, i8* %1352, align 1
  %1353 = lshr i32 %1338, 31
  %1354 = trunc i32 %1353 to i8
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1354, i8* %1355, align 1
  %1356 = lshr i32 %1338, 31
  %1357 = xor i32 %1353, %1356
  %1358 = add i32 %1357, %1356
  %1359 = icmp eq i32 %1358, 2
  %1360 = zext i1 %1359 to i8
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1360, i8* %1361, align 1
  store %struct.Memory* %loadMem_498c1e, %struct.Memory** %MEMORY
  %loadMem_498c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 33
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %1364 to i64*
  %1365 = load i64, i64* %PC.i701
  %1366 = add i64 %1365, 18
  %1367 = load i64, i64* %PC.i701
  %1368 = add i64 %1367, 6
  %1369 = load i64, i64* %PC.i701
  %1370 = add i64 %1369, 6
  store i64 %1370, i64* %PC.i701
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1372 = load i8, i8* %1371, align 1
  %1373 = icmp eq i8 %1372, 0
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %BRANCH_TAKEN, align 1
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1376 = select i1 %1373, i64 %1366, i64 %1368
  store i64 %1376, i64* %1375, align 8
  store %struct.Memory* %loadMem_498c21, %struct.Memory** %MEMORY
  %loadBr_498c21 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498c21 = icmp eq i8 %loadBr_498c21, 1
  br i1 %cmpBr_498c21, label %block_.L_498c33, label %block_498c27

block_498c27:                                     ; preds = %block_.L_498c02
  %loadMem_498c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 33
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %1379 to i64*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 15
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %1382 to i64*
  %1383 = load i64, i64* %RBP.i700
  %1384 = sub i64 %1383, 20
  %1385 = load i64, i64* %PC.i699
  %1386 = add i64 %1385, 7
  store i64 %1386, i64* %PC.i699
  %1387 = inttoptr i64 %1384 to i32*
  store i32 2, i32* %1387
  store %struct.Memory* %loadMem_498c27, %struct.Memory** %MEMORY
  %loadMem_498c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 33
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1390 to i64*
  %1391 = load i64, i64* %PC.i698
  %1392 = add i64 %1391, 20
  %1393 = load i64, i64* %PC.i698
  %1394 = add i64 %1393, 5
  store i64 %1394, i64* %PC.i698
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1392, i64* %1395, align 8
  store %struct.Memory* %loadMem_498c2e, %struct.Memory** %MEMORY
  br label %block_.L_498c42

block_.L_498c33:                                  ; preds = %block_.L_498c02
  %loadMem1_498c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 33
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %1398 to i64*
  %1399 = load i64, i64* %PC.i697
  %1400 = add i64 %1399, -565699
  %1401 = load i64, i64* %PC.i697
  %1402 = add i64 %1401, 5
  %1403 = load i64, i64* %PC.i697
  %1404 = add i64 %1403, 5
  store i64 %1404, i64* %PC.i697
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1406 = load i64, i64* %1405, align 8
  %1407 = add i64 %1406, -8
  %1408 = inttoptr i64 %1407 to i64*
  store i64 %1402, i64* %1408
  store i64 %1407, i64* %1405, align 8
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1400, i64* %1409, align 8
  store %struct.Memory* %loadMem1_498c33, %struct.Memory** %MEMORY
  %loadMem2_498c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_498c33 = load i64, i64* %3
  %call2_498c33 = call %struct.Memory* @sub_40ea70.get_last_player(%struct.State* %0, i64 %loadPC_498c33, %struct.Memory* %loadMem2_498c33)
  store %struct.Memory* %call2_498c33, %struct.Memory** %MEMORY
  %loadMem_498c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 33
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %1412 to i64*
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 5
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %RCX.i696 = bitcast %union.anon* %1415 to i64*
  %1416 = load i64, i64* %PC.i695
  %1417 = add i64 %1416, 5
  store i64 %1417, i64* %PC.i695
  store i64 3, i64* %RCX.i696, align 8
  store %struct.Memory* %loadMem_498c38, %struct.Memory** %MEMORY
  %loadMem_498c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 33
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 1
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %EAX.i693 = bitcast %union.anon* %1423 to i32*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 5
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %RCX.i694 = bitcast %union.anon* %1426 to i64*
  %1427 = load i64, i64* %RCX.i694
  %1428 = load i32, i32* %EAX.i693
  %1429 = zext i32 %1428 to i64
  %1430 = load i64, i64* %PC.i692
  %1431 = add i64 %1430, 2
  store i64 %1431, i64* %PC.i692
  %1432 = trunc i64 %1427 to i32
  %1433 = sub i32 %1432, %1428
  %1434 = zext i32 %1433 to i64
  store i64 %1434, i64* %RCX.i694, align 8
  %1435 = icmp ult i32 %1432, %1428
  %1436 = zext i1 %1435 to i8
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1436, i8* %1437, align 1
  %1438 = and i32 %1433, 255
  %1439 = call i32 @llvm.ctpop.i32(i32 %1438)
  %1440 = trunc i32 %1439 to i8
  %1441 = and i8 %1440, 1
  %1442 = xor i8 %1441, 1
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1442, i8* %1443, align 1
  %1444 = xor i64 %1429, %1427
  %1445 = trunc i64 %1444 to i32
  %1446 = xor i32 %1445, %1433
  %1447 = lshr i32 %1446, 4
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1449, i8* %1450, align 1
  %1451 = icmp eq i32 %1433, 0
  %1452 = zext i1 %1451 to i8
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1452, i8* %1453, align 1
  %1454 = lshr i32 %1433, 31
  %1455 = trunc i32 %1454 to i8
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1455, i8* %1456, align 1
  %1457 = lshr i32 %1432, 31
  %1458 = lshr i32 %1428, 31
  %1459 = xor i32 %1458, %1457
  %1460 = xor i32 %1454, %1457
  %1461 = add i32 %1460, %1459
  %1462 = icmp eq i32 %1461, 2
  %1463 = zext i1 %1462 to i8
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1463, i8* %1464, align 1
  store %struct.Memory* %loadMem_498c3d, %struct.Memory** %MEMORY
  %loadMem_498c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 33
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %1467 to i64*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 5
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %ECX.i690 = bitcast %union.anon* %1470 to i32*
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 15
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %RBP.i691 = bitcast %union.anon* %1473 to i64*
  %1474 = load i64, i64* %RBP.i691
  %1475 = sub i64 %1474, 20
  %1476 = load i32, i32* %ECX.i690
  %1477 = zext i32 %1476 to i64
  %1478 = load i64, i64* %PC.i689
  %1479 = add i64 %1478, 3
  store i64 %1479, i64* %PC.i689
  %1480 = inttoptr i64 %1475 to i32*
  store i32 %1476, i32* %1480
  store %struct.Memory* %loadMem_498c3f, %struct.Memory** %MEMORY
  br label %block_.L_498c42

block_.L_498c42:                                  ; preds = %block_.L_498c33, %block_498c27
  %loadMem_498c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 33
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %1483 to i64*
  %1484 = load i64, i64* %PC.i688
  %1485 = add i64 %1484, 5
  %1486 = load i64, i64* %PC.i688
  %1487 = add i64 %1486, 5
  store i64 %1487, i64* %PC.i688
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1485, i64* %1488, align 8
  store %struct.Memory* %loadMem_498c42, %struct.Memory** %MEMORY
  br label %block_.L_498c47

block_.L_498c47:                                  ; preds = %block_.L_498cd2, %block_.L_498c42
  %loadMem_498c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 33
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %1491 to i64*
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 11
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %RDI.i686 = bitcast %union.anon* %1494 to i64*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 15
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %RBP.i687 = bitcast %union.anon* %1497 to i64*
  %1498 = load i64, i64* %RBP.i687
  %1499 = sub i64 %1498, 12
  %1500 = load i64, i64* %PC.i685
  %1501 = add i64 %1500, 4
  store i64 %1501, i64* %PC.i685
  store i64 %1499, i64* %RDI.i686, align 8
  store %struct.Memory* %loadMem_498c47, %struct.Memory** %MEMORY
  %loadMem_498c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 33
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %1504 to i64*
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 9
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %RSI.i683 = bitcast %union.anon* %1507 to i64*
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1509 = getelementptr inbounds %struct.GPR, %struct.GPR* %1508, i32 0, i32 15
  %1510 = getelementptr inbounds %struct.Reg, %struct.Reg* %1509, i32 0, i32 0
  %RBP.i684 = bitcast %union.anon* %1510 to i64*
  %1511 = load i64, i64* %RBP.i684
  %1512 = sub i64 %1511, 16
  %1513 = load i64, i64* %PC.i682
  %1514 = add i64 %1513, 4
  store i64 %1514, i64* %PC.i682
  store i64 %1512, i64* %RSI.i683, align 8
  store %struct.Memory* %loadMem_498c4b, %struct.Memory** %MEMORY
  %loadMem_498c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 33
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %1517 to i64*
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1519 = getelementptr inbounds %struct.GPR, %struct.GPR* %1518, i32 0, i32 7
  %1520 = getelementptr inbounds %struct.Reg, %struct.Reg* %1519, i32 0, i32 0
  %RDX.i680 = bitcast %union.anon* %1520 to i64*
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 15
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %RBP.i681 = bitcast %union.anon* %1523 to i64*
  %1524 = load i64, i64* %RBP.i681
  %1525 = sub i64 %1524, 20
  %1526 = load i64, i64* %PC.i679
  %1527 = add i64 %1526, 3
  store i64 %1527, i64* %PC.i679
  %1528 = inttoptr i64 %1525 to i32*
  %1529 = load i32, i32* %1528
  %1530 = zext i32 %1529 to i64
  store i64 %1530, i64* %RDX.i680, align 8
  store %struct.Memory* %loadMem_498c4f, %struct.Memory** %MEMORY
  %loadMem1_498c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 33
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %1533 to i64*
  %1534 = load i64, i64* %PC.i678
  %1535 = add i64 %1534, -462770
  %1536 = load i64, i64* %PC.i678
  %1537 = add i64 %1536, 5
  %1538 = load i64, i64* %PC.i678
  %1539 = add i64 %1538, 5
  store i64 %1539, i64* %PC.i678
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1541 = load i64, i64* %1540, align 8
  %1542 = add i64 %1541, -8
  %1543 = inttoptr i64 %1542 to i64*
  store i64 %1537, i64* %1543
  store i64 %1542, i64* %1540, align 8
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1535, i64* %1544, align 8
  store %struct.Memory* %loadMem1_498c52, %struct.Memory** %MEMORY
  %loadMem2_498c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_498c52 = load i64, i64* %3
  %call2_498c52 = call %struct.Memory* @sub_427ca0.genmove_conservative(%struct.State* %0, i64 %loadPC_498c52, %struct.Memory* %loadMem2_498c52)
  store %struct.Memory* %call2_498c52, %struct.Memory** %MEMORY
  %loadMem_498c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 33
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 1
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %EAX.i676 = bitcast %union.anon* %1550 to i32*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 15
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %1553 to i64*
  %1554 = load i64, i64* %RBP.i677
  %1555 = sub i64 %1554, 8
  %1556 = load i32, i32* %EAX.i676
  %1557 = zext i32 %1556 to i64
  %1558 = load i64, i64* %PC.i675
  %1559 = add i64 %1558, 3
  store i64 %1559, i64* %PC.i675
  %1560 = inttoptr i64 %1555 to i32*
  store i32 %1556, i32* %1560
  store %struct.Memory* %loadMem_498c57, %struct.Memory** %MEMORY
  %loadMem_498c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 33
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %1563 to i64*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 1
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %RAX.i673 = bitcast %union.anon* %1566 to i64*
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 15
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %1569 to i64*
  %1570 = load i64, i64* %RBP.i674
  %1571 = sub i64 %1570, 12
  %1572 = load i64, i64* %PC.i672
  %1573 = add i64 %1572, 4
  store i64 %1573, i64* %PC.i672
  %1574 = inttoptr i64 %1571 to i32*
  %1575 = load i32, i32* %1574
  %1576 = sext i32 %1575 to i64
  %1577 = mul i64 %1576, 20
  %1578 = trunc i64 %1577 to i32
  %1579 = and i64 %1577, 4294967295
  store i64 %1579, i64* %RAX.i673, align 8
  %1580 = shl i64 %1577, 32
  %1581 = ashr exact i64 %1580, 32
  %1582 = icmp ne i64 %1581, %1577
  %1583 = zext i1 %1582 to i8
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1583, i8* %1584, align 1
  %1585 = and i32 %1578, 255
  %1586 = call i32 @llvm.ctpop.i32(i32 %1585)
  %1587 = trunc i32 %1586 to i8
  %1588 = and i8 %1587, 1
  %1589 = xor i8 %1588, 1
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1589, i8* %1590, align 1
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1591, align 1
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1592, align 1
  %1593 = lshr i32 %1578, 31
  %1594 = trunc i32 %1593 to i8
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1594, i8* %1595, align 1
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1583, i8* %1596, align 1
  store %struct.Memory* %loadMem_498c5a, %struct.Memory** %MEMORY
  %loadMem_498c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 33
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %1599 to i64*
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 1
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %RAX.i671 = bitcast %union.anon* %1602 to i64*
  %1603 = load i64, i64* %RAX.i671
  %1604 = load i64, i64* %PC.i670
  %1605 = add i64 %1604, 3
  store i64 %1605, i64* %PC.i670
  %1606 = trunc i64 %1603 to i32
  %1607 = add i32 21, %1606
  %1608 = zext i32 %1607 to i64
  store i64 %1608, i64* %RAX.i671, align 8
  %1609 = icmp ult i32 %1607, %1606
  %1610 = icmp ult i32 %1607, 21
  %1611 = or i1 %1609, %1610
  %1612 = zext i1 %1611 to i8
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1612, i8* %1613, align 1
  %1614 = and i32 %1607, 255
  %1615 = call i32 @llvm.ctpop.i32(i32 %1614)
  %1616 = trunc i32 %1615 to i8
  %1617 = and i8 %1616, 1
  %1618 = xor i8 %1617, 1
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1618, i8* %1619, align 1
  %1620 = xor i64 21, %1603
  %1621 = trunc i64 %1620 to i32
  %1622 = xor i32 %1621, %1607
  %1623 = lshr i32 %1622, 4
  %1624 = trunc i32 %1623 to i8
  %1625 = and i8 %1624, 1
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1625, i8* %1626, align 1
  %1627 = icmp eq i32 %1607, 0
  %1628 = zext i1 %1627 to i8
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1628, i8* %1629, align 1
  %1630 = lshr i32 %1607, 31
  %1631 = trunc i32 %1630 to i8
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1631, i8* %1632, align 1
  %1633 = lshr i32 %1606, 31
  %1634 = xor i32 %1630, %1633
  %1635 = add i32 %1634, %1630
  %1636 = icmp eq i32 %1635, 2
  %1637 = zext i1 %1636 to i8
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1637, i8* %1638, align 1
  store %struct.Memory* %loadMem_498c5e, %struct.Memory** %MEMORY
  %loadMem_498c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 33
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %1641 to i64*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 1
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %RAX.i668 = bitcast %union.anon* %1644 to i64*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 15
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %RBP.i669 = bitcast %union.anon* %1647 to i64*
  %1648 = load i64, i64* %RAX.i668
  %1649 = load i64, i64* %RBP.i669
  %1650 = sub i64 %1649, 16
  %1651 = load i64, i64* %PC.i667
  %1652 = add i64 %1651, 3
  store i64 %1652, i64* %PC.i667
  %1653 = trunc i64 %1648 to i32
  %1654 = inttoptr i64 %1650 to i32*
  %1655 = load i32, i32* %1654
  %1656 = add i32 %1655, %1653
  %1657 = zext i32 %1656 to i64
  store i64 %1657, i64* %RAX.i668, align 8
  %1658 = icmp ult i32 %1656, %1653
  %1659 = icmp ult i32 %1656, %1655
  %1660 = or i1 %1658, %1659
  %1661 = zext i1 %1660 to i8
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1661, i8* %1662, align 1
  %1663 = and i32 %1656, 255
  %1664 = call i32 @llvm.ctpop.i32(i32 %1663)
  %1665 = trunc i32 %1664 to i8
  %1666 = and i8 %1665, 1
  %1667 = xor i8 %1666, 1
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1667, i8* %1668, align 1
  %1669 = xor i32 %1655, %1653
  %1670 = xor i32 %1669, %1656
  %1671 = lshr i32 %1670, 4
  %1672 = trunc i32 %1671 to i8
  %1673 = and i8 %1672, 1
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1673, i8* %1674, align 1
  %1675 = icmp eq i32 %1656, 0
  %1676 = zext i1 %1675 to i8
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1676, i8* %1677, align 1
  %1678 = lshr i32 %1656, 31
  %1679 = trunc i32 %1678 to i8
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1679, i8* %1680, align 1
  %1681 = lshr i32 %1653, 31
  %1682 = lshr i32 %1655, 31
  %1683 = xor i32 %1678, %1681
  %1684 = xor i32 %1678, %1682
  %1685 = add i32 %1683, %1684
  %1686 = icmp eq i32 %1685, 2
  %1687 = zext i1 %1686 to i8
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1687, i8* %1688, align 1
  store %struct.Memory* %loadMem_498c61, %struct.Memory** %MEMORY
  %loadMem_498c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1690 = getelementptr inbounds %struct.GPR, %struct.GPR* %1689, i32 0, i32 33
  %1691 = getelementptr inbounds %struct.Reg, %struct.Reg* %1690, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %1691 to i64*
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 9
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %RSI.i665 = bitcast %union.anon* %1694 to i64*
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 15
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %RBP.i666 = bitcast %union.anon* %1697 to i64*
  %1698 = load i64, i64* %RBP.i666
  %1699 = sub i64 %1698, 20
  %1700 = load i64, i64* %PC.i664
  %1701 = add i64 %1700, 3
  store i64 %1701, i64* %PC.i664
  %1702 = inttoptr i64 %1699 to i32*
  %1703 = load i32, i32* %1702
  %1704 = zext i32 %1703 to i64
  store i64 %1704, i64* %RSI.i665, align 8
  store %struct.Memory* %loadMem_498c64, %struct.Memory** %MEMORY
  %loadMem_498c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 33
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 1
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %EAX.i662 = bitcast %union.anon* %1710 to i32*
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1712 = getelementptr inbounds %struct.GPR, %struct.GPR* %1711, i32 0, i32 11
  %1713 = getelementptr inbounds %struct.Reg, %struct.Reg* %1712, i32 0, i32 0
  %RDI.i663 = bitcast %union.anon* %1713 to i64*
  %1714 = load i32, i32* %EAX.i662
  %1715 = zext i32 %1714 to i64
  %1716 = load i64, i64* %PC.i661
  %1717 = add i64 %1716, 2
  store i64 %1717, i64* %PC.i661
  %1718 = and i64 %1715, 4294967295
  store i64 %1718, i64* %RDI.i663, align 8
  store %struct.Memory* %loadMem_498c67, %struct.Memory** %MEMORY
  %loadMem1_498c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 33
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %1721 to i64*
  %1722 = load i64, i64* %PC.i660
  %1723 = add i64 %1722, -567641
  %1724 = load i64, i64* %PC.i660
  %1725 = add i64 %1724, 5
  %1726 = load i64, i64* %PC.i660
  %1727 = add i64 %1726, 5
  store i64 %1727, i64* %PC.i660
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1729 = load i64, i64* %1728, align 8
  %1730 = add i64 %1729, -8
  %1731 = inttoptr i64 %1730 to i64*
  store i64 %1725, i64* %1731
  store i64 %1730, i64* %1728, align 8
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1723, i64* %1732, align 8
  store %struct.Memory* %loadMem1_498c69, %struct.Memory** %MEMORY
  %loadMem2_498c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_498c69 = load i64, i64* %3
  %call2_498c69 = call %struct.Memory* @sub_40e310.play_move(%struct.State* %0, i64 %loadPC_498c69, %struct.Memory* %loadMem2_498c69)
  store %struct.Memory* %call2_498c69, %struct.Memory** %MEMORY
  %loadMem_498c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 33
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 15
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RBP.i659 = bitcast %union.anon* %1738 to i64*
  %1739 = load i64, i64* %RBP.i659
  %1740 = sub i64 %1739, 8
  %1741 = load i64, i64* %PC.i658
  %1742 = add i64 %1741, 4
  store i64 %1742, i64* %PC.i658
  %1743 = inttoptr i64 %1740 to i32*
  %1744 = load i32, i32* %1743
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1745, align 1
  %1746 = and i32 %1744, 255
  %1747 = call i32 @llvm.ctpop.i32(i32 %1746)
  %1748 = trunc i32 %1747 to i8
  %1749 = and i8 %1748, 1
  %1750 = xor i8 %1749, 1
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1750, i8* %1751, align 1
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1752, align 1
  %1753 = icmp eq i32 %1744, 0
  %1754 = zext i1 %1753 to i8
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1754, i8* %1755, align 1
  %1756 = lshr i32 %1744, 31
  %1757 = trunc i32 %1756 to i8
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1757, i8* %1758, align 1
  %1759 = lshr i32 %1744, 31
  %1760 = xor i32 %1756, %1759
  %1761 = add i32 %1760, %1759
  %1762 = icmp eq i32 %1761, 2
  %1763 = zext i1 %1762 to i8
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1763, i8* %1764, align 1
  store %struct.Memory* %loadMem_498c6e, %struct.Memory** %MEMORY
  %loadMem_498c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 33
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %1767 to i64*
  %1768 = load i64, i64* %PC.i657
  %1769 = add i64 %1768, 27
  %1770 = load i64, i64* %PC.i657
  %1771 = add i64 %1770, 6
  %1772 = load i64, i64* %PC.i657
  %1773 = add i64 %1772, 6
  store i64 %1773, i64* %PC.i657
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1775 = load i8, i8* %1774, align 1
  %1776 = icmp ne i8 %1775, 0
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1778 = load i8, i8* %1777, align 1
  %1779 = icmp ne i8 %1778, 0
  %1780 = xor i1 %1776, %1779
  %1781 = zext i1 %1780 to i8
  store i8 %1781, i8* %BRANCH_TAKEN, align 1
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1783 = select i1 %1780, i64 %1769, i64 %1771
  store i64 %1783, i64* %1782, align 8
  store %struct.Memory* %loadMem_498c72, %struct.Memory** %MEMORY
  %loadBr_498c72 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498c72 = icmp eq i8 %loadBr_498c72, 1
  br i1 %cmpBr_498c72, label %block_.L_498c8d, label %block_498c78

block_498c78:                                     ; preds = %block_.L_498c47
  %loadMem_498c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 33
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 15
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RBP.i656 = bitcast %union.anon* %1789 to i64*
  %1790 = load i64, i64* %RBP.i656
  %1791 = sub i64 %1790, 24
  %1792 = load i64, i64* %PC.i655
  %1793 = add i64 %1792, 7
  store i64 %1793, i64* %PC.i655
  %1794 = inttoptr i64 %1791 to i32*
  store i32 0, i32* %1794
  store %struct.Memory* %loadMem_498c78, %struct.Memory** %MEMORY
  %loadMem_498c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 33
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %1797 to i64*
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 1
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %RAX.i653 = bitcast %union.anon* %1800 to i64*
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1802 = getelementptr inbounds %struct.GPR, %struct.GPR* %1801, i32 0, i32 15
  %1803 = getelementptr inbounds %struct.Reg, %struct.Reg* %1802, i32 0, i32 0
  %RBP.i654 = bitcast %union.anon* %1803 to i64*
  %1804 = load i64, i64* %RBP.i654
  %1805 = sub i64 %1804, 28
  %1806 = load i64, i64* %PC.i652
  %1807 = add i64 %1806, 3
  store i64 %1807, i64* %PC.i652
  %1808 = inttoptr i64 %1805 to i32*
  %1809 = load i32, i32* %1808
  %1810 = zext i32 %1809 to i64
  store i64 %1810, i64* %RAX.i653, align 8
  store %struct.Memory* %loadMem_498c7f, %struct.Memory** %MEMORY
  %loadMem_498c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 33
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %1813 to i64*
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1815 = getelementptr inbounds %struct.GPR, %struct.GPR* %1814, i32 0, i32 1
  %1816 = getelementptr inbounds %struct.Reg, %struct.Reg* %1815, i32 0, i32 0
  %RAX.i651 = bitcast %union.anon* %1816 to i64*
  %1817 = load i64, i64* %RAX.i651
  %1818 = load i64, i64* %PC.i650
  %1819 = add i64 %1818, 3
  store i64 %1819, i64* %PC.i650
  %1820 = trunc i64 %1817 to i32
  %1821 = add i32 1, %1820
  %1822 = zext i32 %1821 to i64
  store i64 %1822, i64* %RAX.i651, align 8
  %1823 = icmp ult i32 %1821, %1820
  %1824 = icmp ult i32 %1821, 1
  %1825 = or i1 %1823, %1824
  %1826 = zext i1 %1825 to i8
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1826, i8* %1827, align 1
  %1828 = and i32 %1821, 255
  %1829 = call i32 @llvm.ctpop.i32(i32 %1828)
  %1830 = trunc i32 %1829 to i8
  %1831 = and i8 %1830, 1
  %1832 = xor i8 %1831, 1
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1832, i8* %1833, align 1
  %1834 = xor i64 1, %1817
  %1835 = trunc i64 %1834 to i32
  %1836 = xor i32 %1835, %1821
  %1837 = lshr i32 %1836, 4
  %1838 = trunc i32 %1837 to i8
  %1839 = and i8 %1838, 1
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1839, i8* %1840, align 1
  %1841 = icmp eq i32 %1821, 0
  %1842 = zext i1 %1841 to i8
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1842, i8* %1843, align 1
  %1844 = lshr i32 %1821, 31
  %1845 = trunc i32 %1844 to i8
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1845, i8* %1846, align 1
  %1847 = lshr i32 %1820, 31
  %1848 = xor i32 %1844, %1847
  %1849 = add i32 %1848, %1844
  %1850 = icmp eq i32 %1849, 2
  %1851 = zext i1 %1850 to i8
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1851, i8* %1852, align 1
  store %struct.Memory* %loadMem_498c82, %struct.Memory** %MEMORY
  %loadMem_498c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 33
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %1855 to i64*
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 1
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %EAX.i648 = bitcast %union.anon* %1858 to i32*
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 15
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %RBP.i649 = bitcast %union.anon* %1861 to i64*
  %1862 = load i64, i64* %RBP.i649
  %1863 = sub i64 %1862, 28
  %1864 = load i32, i32* %EAX.i648
  %1865 = zext i32 %1864 to i64
  %1866 = load i64, i64* %PC.i647
  %1867 = add i64 %1866, 3
  store i64 %1867, i64* %PC.i647
  %1868 = inttoptr i64 %1863 to i32*
  store i32 %1864, i32* %1868
  store %struct.Memory* %loadMem_498c85, %struct.Memory** %MEMORY
  %loadMem_498c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 33
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %1871 to i64*
  %1872 = load i64, i64* %PC.i646
  %1873 = add i64 %1872, 14
  %1874 = load i64, i64* %PC.i646
  %1875 = add i64 %1874, 5
  store i64 %1875, i64* %PC.i646
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1873, i64* %1876, align 8
  store %struct.Memory* %loadMem_498c88, %struct.Memory** %MEMORY
  br label %block_.L_498c96

block_.L_498c8d:                                  ; preds = %block_.L_498c47
  %loadMem_498c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 33
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 1
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %RAX.i644 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 15
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %RBP.i645 = bitcast %union.anon* %1885 to i64*
  %1886 = load i64, i64* %RBP.i645
  %1887 = sub i64 %1886, 24
  %1888 = load i64, i64* %PC.i643
  %1889 = add i64 %1888, 3
  store i64 %1889, i64* %PC.i643
  %1890 = inttoptr i64 %1887 to i32*
  %1891 = load i32, i32* %1890
  %1892 = zext i32 %1891 to i64
  store i64 %1892, i64* %RAX.i644, align 8
  store %struct.Memory* %loadMem_498c8d, %struct.Memory** %MEMORY
  %loadMem_498c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 33
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 1
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %RAX.i642 = bitcast %union.anon* %1898 to i64*
  %1899 = load i64, i64* %RAX.i642
  %1900 = load i64, i64* %PC.i641
  %1901 = add i64 %1900, 3
  store i64 %1901, i64* %PC.i641
  %1902 = trunc i64 %1899 to i32
  %1903 = add i32 1, %1902
  %1904 = zext i32 %1903 to i64
  store i64 %1904, i64* %RAX.i642, align 8
  %1905 = icmp ult i32 %1903, %1902
  %1906 = icmp ult i32 %1903, 1
  %1907 = or i1 %1905, %1906
  %1908 = zext i1 %1907 to i8
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1908, i8* %1909, align 1
  %1910 = and i32 %1903, 255
  %1911 = call i32 @llvm.ctpop.i32(i32 %1910)
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  %1914 = xor i8 %1913, 1
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1914, i8* %1915, align 1
  %1916 = xor i64 1, %1899
  %1917 = trunc i64 %1916 to i32
  %1918 = xor i32 %1917, %1903
  %1919 = lshr i32 %1918, 4
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1921, i8* %1922, align 1
  %1923 = icmp eq i32 %1903, 0
  %1924 = zext i1 %1923 to i8
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1924, i8* %1925, align 1
  %1926 = lshr i32 %1903, 31
  %1927 = trunc i32 %1926 to i8
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1927, i8* %1928, align 1
  %1929 = lshr i32 %1902, 31
  %1930 = xor i32 %1926, %1929
  %1931 = add i32 %1930, %1926
  %1932 = icmp eq i32 %1931, 2
  %1933 = zext i1 %1932 to i8
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1933, i8* %1934, align 1
  store %struct.Memory* %loadMem_498c90, %struct.Memory** %MEMORY
  %loadMem_498c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 33
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 1
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %EAX.i639 = bitcast %union.anon* %1940 to i32*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 15
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %1943 to i64*
  %1944 = load i64, i64* %RBP.i640
  %1945 = sub i64 %1944, 24
  %1946 = load i32, i32* %EAX.i639
  %1947 = zext i32 %1946 to i64
  %1948 = load i64, i64* %PC.i638
  %1949 = add i64 %1948, 3
  store i64 %1949, i64* %PC.i638
  %1950 = inttoptr i64 %1945 to i32*
  store i32 %1946, i32* %1950
  store %struct.Memory* %loadMem_498c93, %struct.Memory** %MEMORY
  br label %block_.L_498c96

block_.L_498c96:                                  ; preds = %block_.L_498c8d, %block_498c78
  %loadMem_498c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 33
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %1953 to i64*
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 1
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %RAX.i637 = bitcast %union.anon* %1956 to i64*
  %1957 = load i64, i64* %PC.i636
  %1958 = add i64 %1957, 5
  store i64 %1958, i64* %PC.i636
  store i64 3, i64* %RAX.i637, align 8
  store %struct.Memory* %loadMem_498c96, %struct.Memory** %MEMORY
  %loadMem_498c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 33
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %1961 to i64*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 1
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %RAX.i634 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 15
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %RBP.i635 = bitcast %union.anon* %1967 to i64*
  %1968 = load i64, i64* %RAX.i634
  %1969 = load i64, i64* %RBP.i635
  %1970 = sub i64 %1969, 20
  %1971 = load i64, i64* %PC.i633
  %1972 = add i64 %1971, 3
  store i64 %1972, i64* %PC.i633
  %1973 = trunc i64 %1968 to i32
  %1974 = inttoptr i64 %1970 to i32*
  %1975 = load i32, i32* %1974
  %1976 = sub i32 %1973, %1975
  %1977 = zext i32 %1976 to i64
  store i64 %1977, i64* %RAX.i634, align 8
  %1978 = icmp ult i32 %1973, %1975
  %1979 = zext i1 %1978 to i8
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1979, i8* %1980, align 1
  %1981 = and i32 %1976, 255
  %1982 = call i32 @llvm.ctpop.i32(i32 %1981)
  %1983 = trunc i32 %1982 to i8
  %1984 = and i8 %1983, 1
  %1985 = xor i8 %1984, 1
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1985, i8* %1986, align 1
  %1987 = xor i32 %1975, %1973
  %1988 = xor i32 %1987, %1976
  %1989 = lshr i32 %1988, 4
  %1990 = trunc i32 %1989 to i8
  %1991 = and i8 %1990, 1
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1991, i8* %1992, align 1
  %1993 = icmp eq i32 %1976, 0
  %1994 = zext i1 %1993 to i8
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1994, i8* %1995, align 1
  %1996 = lshr i32 %1976, 31
  %1997 = trunc i32 %1996 to i8
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1997, i8* %1998, align 1
  %1999 = lshr i32 %1973, 31
  %2000 = lshr i32 %1975, 31
  %2001 = xor i32 %2000, %1999
  %2002 = xor i32 %1996, %1999
  %2003 = add i32 %2002, %2001
  %2004 = icmp eq i32 %2003, 2
  %2005 = zext i1 %2004 to i8
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2005, i8* %2006, align 1
  store %struct.Memory* %loadMem_498c9b, %struct.Memory** %MEMORY
  %loadMem_498c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 33
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %2009 to i64*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 1
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %EAX.i631 = bitcast %union.anon* %2012 to i32*
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 15
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %2015 to i64*
  %2016 = load i64, i64* %RBP.i632
  %2017 = sub i64 %2016, 20
  %2018 = load i32, i32* %EAX.i631
  %2019 = zext i32 %2018 to i64
  %2020 = load i64, i64* %PC.i630
  %2021 = add i64 %2020, 3
  store i64 %2021, i64* %PC.i630
  %2022 = inttoptr i64 %2017 to i32*
  store i32 %2018, i32* %2022
  store %struct.Memory* %loadMem_498c9e, %struct.Memory** %MEMORY
  %loadMem_498ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 33
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 1
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %EAX.i628 = bitcast %union.anon* %2028 to i32*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 1
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RAX.i629 = bitcast %union.anon* %2031 to i64*
  %2032 = load i64, i64* %RAX.i629
  %2033 = load i32, i32* %EAX.i628
  %2034 = zext i32 %2033 to i64
  %2035 = load i64, i64* %PC.i627
  %2036 = add i64 %2035, 2
  store i64 %2036, i64* %PC.i627
  %2037 = xor i64 %2034, %2032
  %2038 = trunc i64 %2037 to i32
  %2039 = and i64 %2037, 4294967295
  store i64 %2039, i64* %RAX.i629, align 8
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2040, align 1
  %2041 = and i32 %2038, 255
  %2042 = call i32 @llvm.ctpop.i32(i32 %2041)
  %2043 = trunc i32 %2042 to i8
  %2044 = and i8 %2043, 1
  %2045 = xor i8 %2044, 1
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2045, i8* %2046, align 1
  %2047 = icmp eq i32 %2038, 0
  %2048 = zext i1 %2047 to i8
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2048, i8* %2049, align 1
  %2050 = lshr i32 %2038, 31
  %2051 = trunc i32 %2050 to i8
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2051, i8* %2052, align 1
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2053, align 1
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2054, align 1
  store %struct.Memory* %loadMem_498ca1, %struct.Memory** %MEMORY
  %loadMem_498ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 33
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %2057 to i64*
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 1
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %2061 = bitcast %union.anon* %2060 to %struct.anon.2*
  %AL.i625 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2061, i32 0, i32 0
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 5
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %2065 = bitcast %union.anon* %2064 to %struct.anon.2*
  %CL.i626 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2065, i32 0, i32 0
  %2066 = load i8, i8* %AL.i625
  %2067 = zext i8 %2066 to i64
  %2068 = load i64, i64* %PC.i624
  %2069 = add i64 %2068, 2
  store i64 %2069, i64* %PC.i624
  store i8 %2066, i8* %CL.i626, align 1
  store %struct.Memory* %loadMem_498ca3, %struct.Memory** %MEMORY
  %loadMem_498ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 33
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %2072 to i64*
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 15
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %2075 to i64*
  %2076 = load i64, i64* %RBP.i623
  %2077 = sub i64 %2076, 24
  %2078 = load i64, i64* %PC.i622
  %2079 = add i64 %2078, 4
  store i64 %2079, i64* %PC.i622
  %2080 = inttoptr i64 %2077 to i32*
  %2081 = load i32, i32* %2080
  %2082 = sub i32 %2081, 2
  %2083 = icmp ult i32 %2081, 2
  %2084 = zext i1 %2083 to i8
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2084, i8* %2085, align 1
  %2086 = and i32 %2082, 255
  %2087 = call i32 @llvm.ctpop.i32(i32 %2086)
  %2088 = trunc i32 %2087 to i8
  %2089 = and i8 %2088, 1
  %2090 = xor i8 %2089, 1
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2090, i8* %2091, align 1
  %2092 = xor i32 %2081, 2
  %2093 = xor i32 %2092, %2082
  %2094 = lshr i32 %2093, 4
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2096, i8* %2097, align 1
  %2098 = icmp eq i32 %2082, 0
  %2099 = zext i1 %2098 to i8
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2099, i8* %2100, align 1
  %2101 = lshr i32 %2082, 31
  %2102 = trunc i32 %2101 to i8
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2102, i8* %2103, align 1
  %2104 = lshr i32 %2081, 31
  %2105 = xor i32 %2101, %2104
  %2106 = add i32 %2105, %2104
  %2107 = icmp eq i32 %2106, 2
  %2108 = zext i1 %2107 to i8
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2108, i8* %2109, align 1
  store %struct.Memory* %loadMem_498ca5, %struct.Memory** %MEMORY
  %loadMem_498ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 33
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 5
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %2116 = bitcast %union.anon* %2115 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2116, i32 0, i32 0
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 15
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %2119 to i64*
  %2120 = load i64, i64* %RBP.i621
  %2121 = sub i64 %2120, 6365
  %2122 = load i8, i8* %CL.i
  %2123 = zext i8 %2122 to i64
  %2124 = load i64, i64* %PC.i620
  %2125 = add i64 %2124, 6
  store i64 %2125, i64* %PC.i620
  %2126 = inttoptr i64 %2121 to i8*
  store i8 %2122, i8* %2126
  store %struct.Memory* %loadMem_498ca9, %struct.Memory** %MEMORY
  %loadMem_498caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 33
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %2129 to i64*
  %2130 = load i64, i64* %PC.i619
  %2131 = add i64 %2130, 35
  %2132 = load i64, i64* %PC.i619
  %2133 = add i64 %2132, 6
  %2134 = load i64, i64* %PC.i619
  %2135 = add i64 %2134, 6
  store i64 %2135, i64* %PC.i619
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2137 = load i8, i8* %2136, align 1
  %2138 = icmp ne i8 %2137, 0
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2140 = load i8, i8* %2139, align 1
  %2141 = icmp ne i8 %2140, 0
  %2142 = xor i1 %2138, %2141
  %2143 = xor i1 %2142, true
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %BRANCH_TAKEN, align 1
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2146 = select i1 %2142, i64 %2133, i64 %2131
  store i64 %2146, i64* %2145, align 8
  store %struct.Memory* %loadMem_498caf, %struct.Memory** %MEMORY
  %loadBr_498caf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498caf = icmp eq i8 %loadBr_498caf, 1
  br i1 %cmpBr_498caf, label %block_.L_498cd2, label %block_498cb5

block_498cb5:                                     ; preds = %block_.L_498c96
  %loadMem_498cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 33
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %2149 to i64*
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 1
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %RAX.i617 = bitcast %union.anon* %2152 to i64*
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 15
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %2155 to i64*
  %2156 = load i64, i64* %RBP.i618
  %2157 = sub i64 %2156, 28
  %2158 = load i64, i64* %PC.i616
  %2159 = add i64 %2158, 3
  store i64 %2159, i64* %PC.i616
  %2160 = inttoptr i64 %2157 to i32*
  %2161 = load i32, i32* %2160
  %2162 = zext i32 %2161 to i64
  store i64 %2162, i64* %RAX.i617, align 8
  store %struct.Memory* %loadMem_498cb5, %struct.Memory** %MEMORY
  %loadMem_498cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 33
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %2165 to i64*
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 5
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %RCX.i615 = bitcast %union.anon* %2168 to i64*
  %2169 = load i64, i64* %PC.i614
  %2170 = add i64 %2169, 7
  store i64 %2170, i64* %PC.i614
  %2171 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %2172 = zext i32 %2171 to i64
  store i64 %2172, i64* %RCX.i615, align 8
  store %struct.Memory* %loadMem_498cb8, %struct.Memory** %MEMORY
  %loadMem_498cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 33
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %2175 to i64*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 5
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %RCX.i613 = bitcast %union.anon* %2178 to i64*
  %2179 = load i64, i64* %RCX.i613
  %2180 = load i64, i64* %PC.i612
  %2181 = add i64 %2180, 8
  store i64 %2181, i64* %PC.i612
  %2182 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %2183 = shl i64 %2179, 32
  %2184 = ashr exact i64 %2183, 32
  %2185 = sext i32 %2182 to i64
  %2186 = mul i64 %2185, %2184
  %2187 = trunc i64 %2186 to i32
  %2188 = and i64 %2186, 4294967295
  store i64 %2188, i64* %RCX.i613, align 8
  %2189 = shl i64 %2186, 32
  %2190 = ashr exact i64 %2189, 32
  %2191 = icmp ne i64 %2190, %2186
  %2192 = zext i1 %2191 to i8
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2192, i8* %2193, align 1
  %2194 = and i32 %2187, 255
  %2195 = call i32 @llvm.ctpop.i32(i32 %2194)
  %2196 = trunc i32 %2195 to i8
  %2197 = and i8 %2196, 1
  %2198 = xor i8 %2197, 1
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2198, i8* %2199, align 1
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2200, align 1
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2201, align 1
  %2202 = lshr i32 %2187, 31
  %2203 = trunc i32 %2202 to i8
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2203, i8* %2204, align 1
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2192, i8* %2205, align 1
  store %struct.Memory* %loadMem_498cbf, %struct.Memory** %MEMORY
  %loadMem_498cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 33
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %2208 to i64*
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 1
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %EAX.i610 = bitcast %union.anon* %2211 to i32*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 5
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %ECX.i611 = bitcast %union.anon* %2214 to i32*
  %2215 = load i32, i32* %EAX.i610
  %2216 = zext i32 %2215 to i64
  %2217 = load i32, i32* %ECX.i611
  %2218 = zext i32 %2217 to i64
  %2219 = load i64, i64* %PC.i609
  %2220 = add i64 %2219, 2
  store i64 %2220, i64* %PC.i609
  %2221 = sub i32 %2215, %2217
  %2222 = icmp ult i32 %2215, %2217
  %2223 = zext i1 %2222 to i8
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2223, i8* %2224, align 1
  %2225 = and i32 %2221, 255
  %2226 = call i32 @llvm.ctpop.i32(i32 %2225)
  %2227 = trunc i32 %2226 to i8
  %2228 = and i8 %2227, 1
  %2229 = xor i8 %2228, 1
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2229, i8* %2230, align 1
  %2231 = xor i64 %2218, %2216
  %2232 = trunc i64 %2231 to i32
  %2233 = xor i32 %2232, %2221
  %2234 = lshr i32 %2233, 4
  %2235 = trunc i32 %2234 to i8
  %2236 = and i8 %2235, 1
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2236, i8* %2237, align 1
  %2238 = icmp eq i32 %2221, 0
  %2239 = zext i1 %2238 to i8
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2239, i8* %2240, align 1
  %2241 = lshr i32 %2221, 31
  %2242 = trunc i32 %2241 to i8
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2242, i8* %2243, align 1
  %2244 = lshr i32 %2215, 31
  %2245 = lshr i32 %2217, 31
  %2246 = xor i32 %2245, %2244
  %2247 = xor i32 %2241, %2244
  %2248 = add i32 %2247, %2246
  %2249 = icmp eq i32 %2248, 2
  %2250 = zext i1 %2249 to i8
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2250, i8* %2251, align 1
  store %struct.Memory* %loadMem_498cc7, %struct.Memory** %MEMORY
  %loadMem_498cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 33
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 7
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %2258 = bitcast %union.anon* %2257 to %struct.anon.2*
  %DL.i608 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2258, i32 0, i32 0
  %2259 = load i64, i64* %PC.i607
  %2260 = add i64 %2259, 3
  store i64 %2260, i64* %PC.i607
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2262 = load i8, i8* %2261, align 1
  %2263 = icmp ne i8 %2262, 0
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2265 = load i8, i8* %2264, align 1
  %2266 = icmp ne i8 %2265, 0
  %2267 = xor i1 %2263, %2266
  %2268 = zext i1 %2267 to i8
  store i8 %2268, i8* %DL.i608, align 1
  store %struct.Memory* %loadMem_498cc9, %struct.Memory** %MEMORY
  %loadMem_498ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 33
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %2271 to i64*
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2273 = getelementptr inbounds %struct.GPR, %struct.GPR* %2272, i32 0, i32 7
  %2274 = getelementptr inbounds %struct.Reg, %struct.Reg* %2273, i32 0, i32 0
  %2275 = bitcast %union.anon* %2274 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2275, i32 0, i32 0
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 15
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %2278 to i64*
  %2279 = load i64, i64* %RBP.i606
  %2280 = sub i64 %2279, 6365
  %2281 = load i8, i8* %DL.i
  %2282 = zext i8 %2281 to i64
  %2283 = load i64, i64* %PC.i605
  %2284 = add i64 %2283, 6
  store i64 %2284, i64* %PC.i605
  %2285 = inttoptr i64 %2280 to i8*
  store i8 %2281, i8* %2285
  store %struct.Memory* %loadMem_498ccc, %struct.Memory** %MEMORY
  br label %block_.L_498cd2

block_.L_498cd2:                                  ; preds = %block_498cb5, %block_.L_498c96
  %loadMem_498cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 33
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %2288 to i64*
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 1
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %2292 = bitcast %union.anon* %2291 to %struct.anon.2*
  %AL.i603 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2292, i32 0, i32 0
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 15
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %2295 to i64*
  %2296 = load i64, i64* %RBP.i604
  %2297 = sub i64 %2296, 6365
  %2298 = load i64, i64* %PC.i602
  %2299 = add i64 %2298, 6
  store i64 %2299, i64* %PC.i602
  %2300 = inttoptr i64 %2297 to i8*
  %2301 = load i8, i8* %2300
  store i8 %2301, i8* %AL.i603, align 1
  store %struct.Memory* %loadMem_498cd2, %struct.Memory** %MEMORY
  %loadMem_498cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 33
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %2304 to i64*
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 1
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %2308 = bitcast %union.anon* %2307 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2308, i32 0, i32 0
  %2309 = load i8, i8* %AL.i
  %2310 = zext i8 %2309 to i64
  %2311 = load i64, i64* %PC.i601
  %2312 = add i64 %2311, 2
  store i64 %2312, i64* %PC.i601
  %2313 = and i64 1, %2310
  %2314 = trunc i64 %2313 to i8
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2315, align 1
  %2316 = trunc i64 %2313 to i32
  %2317 = and i32 %2316, 255
  %2318 = call i32 @llvm.ctpop.i32(i32 %2317)
  %2319 = trunc i32 %2318 to i8
  %2320 = and i8 %2319, 1
  %2321 = xor i8 %2320, 1
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2321, i8* %2322, align 1
  %2323 = icmp eq i8 %2314, 0
  %2324 = zext i1 %2323 to i8
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2324, i8* %2325, align 1
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2326, align 1
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2327, align 1
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2328, align 1
  store %struct.Memory* %loadMem_498cd8, %struct.Memory** %MEMORY
  %loadMem_498cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 33
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %2331 to i64*
  %2332 = load i64, i64* %PC.i600
  %2333 = add i64 %2332, -147
  %2334 = load i64, i64* %PC.i600
  %2335 = add i64 %2334, 6
  %2336 = load i64, i64* %PC.i600
  %2337 = add i64 %2336, 6
  store i64 %2337, i64* %PC.i600
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2339 = load i8, i8* %2338, align 1
  %2340 = icmp eq i8 %2339, 0
  %2341 = zext i1 %2340 to i8
  store i8 %2341, i8* %BRANCH_TAKEN, align 1
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2343 = select i1 %2340, i64 %2333, i64 %2335
  store i64 %2343, i64* %2342, align 8
  store %struct.Memory* %loadMem_498cda, %struct.Memory** %MEMORY
  %loadBr_498cda = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498cda = icmp eq i8 %loadBr_498cda, 1
  br i1 %cmpBr_498cda, label %block_.L_498c47, label %block_498ce0

block_498ce0:                                     ; preds = %block_.L_498cd2
  %loadMem_498ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 33
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %2346 to i64*
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 1
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %EAX.i598 = bitcast %union.anon* %2349 to i32*
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 1
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %RAX.i599 = bitcast %union.anon* %2352 to i64*
  %2353 = load i64, i64* %RAX.i599
  %2354 = load i32, i32* %EAX.i598
  %2355 = zext i32 %2354 to i64
  %2356 = load i64, i64* %PC.i597
  %2357 = add i64 %2356, 2
  store i64 %2357, i64* %PC.i597
  %2358 = xor i64 %2355, %2353
  %2359 = trunc i64 %2358 to i32
  %2360 = and i64 %2358, 4294967295
  store i64 %2360, i64* %RAX.i599, align 8
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2361, align 1
  %2362 = and i32 %2359, 255
  %2363 = call i32 @llvm.ctpop.i32(i32 %2362)
  %2364 = trunc i32 %2363 to i8
  %2365 = and i8 %2364, 1
  %2366 = xor i8 %2365, 1
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2366, i8* %2367, align 1
  %2368 = icmp eq i32 %2359, 0
  %2369 = zext i1 %2368 to i8
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2369, i8* %2370, align 1
  %2371 = lshr i32 %2359, 31
  %2372 = trunc i32 %2371 to i8
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2372, i8* %2373, align 1
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2374, align 1
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2375, align 1
  store %struct.Memory* %loadMem_498ce0, %struct.Memory** %MEMORY
  %loadMem_498ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 33
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %2378 to i64*
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 1
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %EAX.i595 = bitcast %union.anon* %2381 to i32*
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 9
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %RSI.i596 = bitcast %union.anon* %2384 to i64*
  %2385 = load i32, i32* %EAX.i595
  %2386 = zext i32 %2385 to i64
  %2387 = load i64, i64* %PC.i594
  %2388 = add i64 %2387, 2
  store i64 %2388, i64* %PC.i594
  %2389 = and i64 %2386, 4294967295
  store i64 %2389, i64* %RSI.i596, align 8
  store %struct.Memory* %loadMem_498ce2, %struct.Memory** %MEMORY
  %loadMem_498ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 33
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %2392 to i64*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 11
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %RDI.i592 = bitcast %union.anon* %2395 to i64*
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 15
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %2398 to i64*
  %2399 = load i64, i64* %RBP.i593
  %2400 = sub i64 %2399, 20
  %2401 = load i64, i64* %PC.i591
  %2402 = add i64 %2401, 3
  store i64 %2402, i64* %PC.i591
  %2403 = inttoptr i64 %2400 to i32*
  %2404 = load i32, i32* %2403
  %2405 = zext i32 %2404 to i64
  store i64 %2405, i64* %RDI.i592, align 8
  store %struct.Memory* %loadMem_498ce4, %struct.Memory** %MEMORY
  %loadMem_498ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 33
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %2408 to i64*
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2410 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2409, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2410 to %"class.std::bitset"*
  %2411 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2412 = load i64, i64* %PC.i590
  %2413 = add i64 %2412, 9
  store i64 %2413, i64* %PC.i590
  %2414 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*)
  %2415 = bitcast i8* %2411 to float*
  store float %2414, float* %2415, align 1
  %2416 = getelementptr inbounds i8, i8* %2411, i64 4
  %2417 = bitcast i8* %2416 to float*
  store float 0.000000e+00, float* %2417, align 1
  %2418 = getelementptr inbounds i8, i8* %2411, i64 8
  %2419 = bitcast i8* %2418 to float*
  store float 0.000000e+00, float* %2419, align 1
  %2420 = getelementptr inbounds i8, i8* %2411, i64 12
  %2421 = bitcast i8* %2420 to float*
  store float 0.000000e+00, float* %2421, align 1
  store %struct.Memory* %loadMem_498ce7, %struct.Memory** %MEMORY
  %loadMem1_498cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 33
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %2424 to i64*
  %2425 = load i64, i64* %PC.i589
  %2426 = add i64 %2425, -597360
  %2427 = load i64, i64* %PC.i589
  %2428 = add i64 %2427, 5
  %2429 = load i64, i64* %PC.i589
  %2430 = add i64 %2429, 5
  store i64 %2430, i64* %PC.i589
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2432 = load i64, i64* %2431, align 8
  %2433 = add i64 %2432, -8
  %2434 = inttoptr i64 %2433 to i64*
  store i64 %2428, i64* %2434
  store i64 %2433, i64* %2431, align 8
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2426, i64* %2435, align 8
  store %struct.Memory* %loadMem1_498cf0, %struct.Memory** %MEMORY
  %loadMem2_498cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_498cf0 = load i64, i64* %3
  %call2_498cf0 = call %struct.Memory* @sub_406f80.aftermath_compute_score(%struct.State* %0, i64 %loadPC_498cf0, %struct.Memory* %loadMem2_498cf0)
  store %struct.Memory* %call2_498cf0, %struct.Memory** %MEMORY
  %loadMem_498cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2437 = getelementptr inbounds %struct.GPR, %struct.GPR* %2436, i32 0, i32 33
  %2438 = getelementptr inbounds %struct.Reg, %struct.Reg* %2437, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %2438 to i64*
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2440 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2439, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2440 to %union.vec128_t*
  %2441 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2442 = load i64, i64* %PC.i588
  %2443 = add i64 %2442, 9
  store i64 %2443, i64* %PC.i588
  %2444 = bitcast i8* %2441 to <2 x float>*
  %2445 = load <2 x float>, <2 x float>* %2444, align 1
  %2446 = extractelement <2 x float> %2445, i32 0
  store float %2446, float* bitcast (%G_0xaf3454_type* @G_0xaf3454 to float*)
  store %struct.Memory* %loadMem_498cf5, %struct.Memory** %MEMORY
  %loadMem_498cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 33
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %2449 to i64*
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 15
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %RBP.i587 = bitcast %union.anon* %2452 to i64*
  %2453 = load i64, i64* %RBP.i587
  %2454 = sub i64 %2453, 12
  %2455 = load i64, i64* %PC.i586
  %2456 = add i64 %2455, 7
  store i64 %2456, i64* %PC.i586
  %2457 = inttoptr i64 %2454 to i32*
  store i32 0, i32* %2457
  store %struct.Memory* %loadMem_498cfe, %struct.Memory** %MEMORY
  br label %block_.L_498d05

block_.L_498d05:                                  ; preds = %block_.L_498d9e, %block_498ce0
  %loadMem_498d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 33
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %2460 to i64*
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 1
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %2463 to i64*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 15
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %RBP.i585 = bitcast %union.anon* %2466 to i64*
  %2467 = load i64, i64* %RBP.i585
  %2468 = sub i64 %2467, 12
  %2469 = load i64, i64* %PC.i583
  %2470 = add i64 %2469, 3
  store i64 %2470, i64* %PC.i583
  %2471 = inttoptr i64 %2468 to i32*
  %2472 = load i32, i32* %2471
  %2473 = zext i32 %2472 to i64
  store i64 %2473, i64* %RAX.i584, align 8
  store %struct.Memory* %loadMem_498d05, %struct.Memory** %MEMORY
  %loadMem_498d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 33
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %2476 to i64*
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 1
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %EAX.i582 = bitcast %union.anon* %2479 to i32*
  %2480 = load i32, i32* %EAX.i582
  %2481 = zext i32 %2480 to i64
  %2482 = load i64, i64* %PC.i581
  %2483 = add i64 %2482, 7
  store i64 %2483, i64* %PC.i581
  %2484 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %2485 = sub i32 %2480, %2484
  %2486 = icmp ult i32 %2480, %2484
  %2487 = zext i1 %2486 to i8
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2487, i8* %2488, align 1
  %2489 = and i32 %2485, 255
  %2490 = call i32 @llvm.ctpop.i32(i32 %2489)
  %2491 = trunc i32 %2490 to i8
  %2492 = and i8 %2491, 1
  %2493 = xor i8 %2492, 1
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2493, i8* %2494, align 1
  %2495 = xor i32 %2484, %2480
  %2496 = xor i32 %2495, %2485
  %2497 = lshr i32 %2496, 4
  %2498 = trunc i32 %2497 to i8
  %2499 = and i8 %2498, 1
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2499, i8* %2500, align 1
  %2501 = icmp eq i32 %2485, 0
  %2502 = zext i1 %2501 to i8
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2502, i8* %2503, align 1
  %2504 = lshr i32 %2485, 31
  %2505 = trunc i32 %2504 to i8
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2505, i8* %2506, align 1
  %2507 = lshr i32 %2480, 31
  %2508 = lshr i32 %2484, 31
  %2509 = xor i32 %2508, %2507
  %2510 = xor i32 %2504, %2507
  %2511 = add i32 %2510, %2509
  %2512 = icmp eq i32 %2511, 2
  %2513 = zext i1 %2512 to i8
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2513, i8* %2514, align 1
  store %struct.Memory* %loadMem_498d08, %struct.Memory** %MEMORY
  %loadMem_498d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 33
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %2517 to i64*
  %2518 = load i64, i64* %PC.i580
  %2519 = add i64 %2518, 157
  %2520 = load i64, i64* %PC.i580
  %2521 = add i64 %2520, 6
  %2522 = load i64, i64* %PC.i580
  %2523 = add i64 %2522, 6
  store i64 %2523, i64* %PC.i580
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2525 = load i8, i8* %2524, align 1
  %2526 = icmp ne i8 %2525, 0
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2528 = load i8, i8* %2527, align 1
  %2529 = icmp ne i8 %2528, 0
  %2530 = xor i1 %2526, %2529
  %2531 = xor i1 %2530, true
  %2532 = zext i1 %2531 to i8
  store i8 %2532, i8* %BRANCH_TAKEN, align 1
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2534 = select i1 %2530, i64 %2521, i64 %2519
  store i64 %2534, i64* %2533, align 8
  store %struct.Memory* %loadMem_498d0f, %struct.Memory** %MEMORY
  %loadBr_498d0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498d0f = icmp eq i8 %loadBr_498d0f, 1
  br i1 %cmpBr_498d0f, label %block_.L_498dac, label %block_498d15

block_498d15:                                     ; preds = %block_.L_498d05
  %loadMem_498d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 33
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %2537 to i64*
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 15
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %2540 to i64*
  %2541 = load i64, i64* %RBP.i579
  %2542 = sub i64 %2541, 16
  %2543 = load i64, i64* %PC.i578
  %2544 = add i64 %2543, 7
  store i64 %2544, i64* %PC.i578
  %2545 = inttoptr i64 %2542 to i32*
  store i32 0, i32* %2545
  store %struct.Memory* %loadMem_498d15, %struct.Memory** %MEMORY
  br label %block_.L_498d1c

block_.L_498d1c:                                  ; preds = %block_498d2c, %block_498d15
  %loadMem_498d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 33
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %2548 to i64*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 1
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %2551 to i64*
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 15
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %2554 to i64*
  %2555 = load i64, i64* %RBP.i577
  %2556 = sub i64 %2555, 16
  %2557 = load i64, i64* %PC.i575
  %2558 = add i64 %2557, 3
  store i64 %2558, i64* %PC.i575
  %2559 = inttoptr i64 %2556 to i32*
  %2560 = load i32, i32* %2559
  %2561 = zext i32 %2560 to i64
  store i64 %2561, i64* %RAX.i576, align 8
  store %struct.Memory* %loadMem_498d1c, %struct.Memory** %MEMORY
  %loadMem_498d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 33
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 1
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %EAX.i574 = bitcast %union.anon* %2567 to i32*
  %2568 = load i32, i32* %EAX.i574
  %2569 = zext i32 %2568 to i64
  %2570 = load i64, i64* %PC.i573
  %2571 = add i64 %2570, 7
  store i64 %2571, i64* %PC.i573
  %2572 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %2573 = sub i32 %2568, %2572
  %2574 = icmp ult i32 %2568, %2572
  %2575 = zext i1 %2574 to i8
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2575, i8* %2576, align 1
  %2577 = and i32 %2573, 255
  %2578 = call i32 @llvm.ctpop.i32(i32 %2577)
  %2579 = trunc i32 %2578 to i8
  %2580 = and i8 %2579, 1
  %2581 = xor i8 %2580, 1
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2581, i8* %2582, align 1
  %2583 = xor i32 %2572, %2568
  %2584 = xor i32 %2583, %2573
  %2585 = lshr i32 %2584, 4
  %2586 = trunc i32 %2585 to i8
  %2587 = and i8 %2586, 1
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2587, i8* %2588, align 1
  %2589 = icmp eq i32 %2573, 0
  %2590 = zext i1 %2589 to i8
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2590, i8* %2591, align 1
  %2592 = lshr i32 %2573, 31
  %2593 = trunc i32 %2592 to i8
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2593, i8* %2594, align 1
  %2595 = lshr i32 %2568, 31
  %2596 = lshr i32 %2572, 31
  %2597 = xor i32 %2596, %2595
  %2598 = xor i32 %2592, %2595
  %2599 = add i32 %2598, %2597
  %2600 = icmp eq i32 %2599, 2
  %2601 = zext i1 %2600 to i8
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2601, i8* %2602, align 1
  store %struct.Memory* %loadMem_498d1f, %struct.Memory** %MEMORY
  %loadMem_498d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 33
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %2605 to i64*
  %2606 = load i64, i64* %PC.i572
  %2607 = add i64 %2606, 115
  %2608 = load i64, i64* %PC.i572
  %2609 = add i64 %2608, 6
  %2610 = load i64, i64* %PC.i572
  %2611 = add i64 %2610, 6
  store i64 %2611, i64* %PC.i572
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2613 = load i8, i8* %2612, align 1
  %2614 = icmp ne i8 %2613, 0
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2616 = load i8, i8* %2615, align 1
  %2617 = icmp ne i8 %2616, 0
  %2618 = xor i1 %2614, %2617
  %2619 = xor i1 %2618, true
  %2620 = zext i1 %2619 to i8
  store i8 %2620, i8* %BRANCH_TAKEN, align 1
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2622 = select i1 %2618, i64 %2609, i64 %2607
  store i64 %2622, i64* %2621, align 8
  store %struct.Memory* %loadMem_498d26, %struct.Memory** %MEMORY
  %loadBr_498d26 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498d26 = icmp eq i8 %loadBr_498d26, 1
  br i1 %cmpBr_498d26, label %block_.L_498d99, label %block_498d2c

block_498d2c:                                     ; preds = %block_.L_498d1c
  %loadMem_498d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 33
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 11
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %RDI.i570 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 15
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %2631 to i64*
  %2632 = load i64, i64* %RBP.i571
  %2633 = sub i64 %2632, 20
  %2634 = load i64, i64* %PC.i569
  %2635 = add i64 %2634, 3
  store i64 %2635, i64* %PC.i569
  %2636 = inttoptr i64 %2633 to i32*
  %2637 = load i32, i32* %2636
  %2638 = zext i32 %2637 to i64
  store i64 %2638, i64* %RDI.i570, align 8
  store %struct.Memory* %loadMem_498d2c, %struct.Memory** %MEMORY
  %loadMem_498d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 33
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %2641 to i64*
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 1
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %RAX.i567 = bitcast %union.anon* %2644 to i64*
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2646 = getelementptr inbounds %struct.GPR, %struct.GPR* %2645, i32 0, i32 15
  %2647 = getelementptr inbounds %struct.Reg, %struct.Reg* %2646, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %2647 to i64*
  %2648 = load i64, i64* %RBP.i568
  %2649 = sub i64 %2648, 12
  %2650 = load i64, i64* %PC.i566
  %2651 = add i64 %2650, 4
  store i64 %2651, i64* %PC.i566
  %2652 = inttoptr i64 %2649 to i32*
  %2653 = load i32, i32* %2652
  %2654 = sext i32 %2653 to i64
  %2655 = mul i64 %2654, 20
  %2656 = trunc i64 %2655 to i32
  %2657 = and i64 %2655, 4294967295
  store i64 %2657, i64* %RAX.i567, align 8
  %2658 = shl i64 %2655, 32
  %2659 = ashr exact i64 %2658, 32
  %2660 = icmp ne i64 %2659, %2655
  %2661 = zext i1 %2660 to i8
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2661, i8* %2662, align 1
  %2663 = and i32 %2656, 255
  %2664 = call i32 @llvm.ctpop.i32(i32 %2663)
  %2665 = trunc i32 %2664 to i8
  %2666 = and i8 %2665, 1
  %2667 = xor i8 %2666, 1
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2667, i8* %2668, align 1
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2669, align 1
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2670, align 1
  %2671 = lshr i32 %2656, 31
  %2672 = trunc i32 %2671 to i8
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2672, i8* %2673, align 1
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2661, i8* %2674, align 1
  store %struct.Memory* %loadMem_498d2f, %struct.Memory** %MEMORY
  %loadMem_498d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 33
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %2677 to i64*
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 1
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %2680 to i64*
  %2681 = load i64, i64* %RAX.i565
  %2682 = load i64, i64* %PC.i564
  %2683 = add i64 %2682, 3
  store i64 %2683, i64* %PC.i564
  %2684 = trunc i64 %2681 to i32
  %2685 = add i32 21, %2684
  %2686 = zext i32 %2685 to i64
  store i64 %2686, i64* %RAX.i565, align 8
  %2687 = icmp ult i32 %2685, %2684
  %2688 = icmp ult i32 %2685, 21
  %2689 = or i1 %2687, %2688
  %2690 = zext i1 %2689 to i8
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2690, i8* %2691, align 1
  %2692 = and i32 %2685, 255
  %2693 = call i32 @llvm.ctpop.i32(i32 %2692)
  %2694 = trunc i32 %2693 to i8
  %2695 = and i8 %2694, 1
  %2696 = xor i8 %2695, 1
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2696, i8* %2697, align 1
  %2698 = xor i64 21, %2681
  %2699 = trunc i64 %2698 to i32
  %2700 = xor i32 %2699, %2685
  %2701 = lshr i32 %2700, 4
  %2702 = trunc i32 %2701 to i8
  %2703 = and i8 %2702, 1
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2703, i8* %2704, align 1
  %2705 = icmp eq i32 %2685, 0
  %2706 = zext i1 %2705 to i8
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2706, i8* %2707, align 1
  %2708 = lshr i32 %2685, 31
  %2709 = trunc i32 %2708 to i8
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2709, i8* %2710, align 1
  %2711 = lshr i32 %2684, 31
  %2712 = xor i32 %2708, %2711
  %2713 = add i32 %2712, %2708
  %2714 = icmp eq i32 %2713, 2
  %2715 = zext i1 %2714 to i8
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2715, i8* %2716, align 1
  store %struct.Memory* %loadMem_498d33, %struct.Memory** %MEMORY
  %loadMem_498d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 33
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 1
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %2722 to i64*
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 15
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %2725 to i64*
  %2726 = load i64, i64* %RAX.i562
  %2727 = load i64, i64* %RBP.i563
  %2728 = sub i64 %2727, 16
  %2729 = load i64, i64* %PC.i561
  %2730 = add i64 %2729, 3
  store i64 %2730, i64* %PC.i561
  %2731 = trunc i64 %2726 to i32
  %2732 = inttoptr i64 %2728 to i32*
  %2733 = load i32, i32* %2732
  %2734 = add i32 %2733, %2731
  %2735 = zext i32 %2734 to i64
  store i64 %2735, i64* %RAX.i562, align 8
  %2736 = icmp ult i32 %2734, %2731
  %2737 = icmp ult i32 %2734, %2733
  %2738 = or i1 %2736, %2737
  %2739 = zext i1 %2738 to i8
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2739, i8* %2740, align 1
  %2741 = and i32 %2734, 255
  %2742 = call i32 @llvm.ctpop.i32(i32 %2741)
  %2743 = trunc i32 %2742 to i8
  %2744 = and i8 %2743, 1
  %2745 = xor i8 %2744, 1
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2745, i8* %2746, align 1
  %2747 = xor i32 %2733, %2731
  %2748 = xor i32 %2747, %2734
  %2749 = lshr i32 %2748, 4
  %2750 = trunc i32 %2749 to i8
  %2751 = and i8 %2750, 1
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2751, i8* %2752, align 1
  %2753 = icmp eq i32 %2734, 0
  %2754 = zext i1 %2753 to i8
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2754, i8* %2755, align 1
  %2756 = lshr i32 %2734, 31
  %2757 = trunc i32 %2756 to i8
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2757, i8* %2758, align 1
  %2759 = lshr i32 %2731, 31
  %2760 = lshr i32 %2733, 31
  %2761 = xor i32 %2756, %2759
  %2762 = xor i32 %2756, %2760
  %2763 = add i32 %2761, %2762
  %2764 = icmp eq i32 %2763, 2
  %2765 = zext i1 %2764 to i8
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2765, i8* %2766, align 1
  store %struct.Memory* %loadMem_498d36, %struct.Memory** %MEMORY
  %loadMem_498d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 33
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %2769 to i64*
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 1
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %EAX.i560 = bitcast %union.anon* %2772 to i32*
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 9
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2775 to i64*
  %2776 = load i32, i32* %EAX.i560
  %2777 = zext i32 %2776 to i64
  %2778 = load i64, i64* %PC.i559
  %2779 = add i64 %2778, 2
  store i64 %2779, i64* %PC.i559
  %2780 = and i64 %2777, 4294967295
  store i64 %2780, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_498d39, %struct.Memory** %MEMORY
  %loadMem1_498d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 33
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %2783 to i64*
  %2784 = load i64, i64* %PC.i558
  %2785 = add i64 %2784, -594091
  %2786 = load i64, i64* %PC.i558
  %2787 = add i64 %2786, 5
  %2788 = load i64, i64* %PC.i558
  %2789 = add i64 %2788, 5
  store i64 %2789, i64* %PC.i558
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2791 = load i64, i64* %2790, align 8
  %2792 = add i64 %2791, -8
  %2793 = inttoptr i64 %2792 to i64*
  store i64 %2787, i64* %2793
  store i64 %2792, i64* %2790, align 8
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2785, i64* %2794, align 8
  store %struct.Memory* %loadMem1_498d3b, %struct.Memory** %MEMORY
  %loadMem2_498d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_498d3b = load i64, i64* %3
  %call2_498d3b = call %struct.Memory* @sub_407c90.aftermath_final_status(%struct.State* %0, i64 %loadPC_498d3b, %struct.Memory* %loadMem2_498d3b)
  store %struct.Memory* %call2_498d3b, %struct.Memory** %MEMORY
  %loadMem_498d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2796 = getelementptr inbounds %struct.GPR, %struct.GPR* %2795, i32 0, i32 33
  %2797 = getelementptr inbounds %struct.Reg, %struct.Reg* %2796, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %2797 to i64*
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 5
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %RCX.i556 = bitcast %union.anon* %2800 to i64*
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 15
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %2803 to i64*
  %2804 = load i64, i64* %RBP.i557
  %2805 = sub i64 %2804, 1472
  %2806 = load i64, i64* %PC.i555
  %2807 = add i64 %2806, 7
  store i64 %2807, i64* %PC.i555
  store i64 %2805, i64* %RCX.i556, align 8
  store %struct.Memory* %loadMem_498d40, %struct.Memory** %MEMORY
  %loadMem_498d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 33
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %2810 to i64*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 7
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %RDX.i554 = bitcast %union.anon* %2813 to i64*
  %2814 = load i64, i64* %PC.i553
  %2815 = add i64 %2814, 10
  store i64 %2815, i64* %PC.i553
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RDX.i554, align 8
  store %struct.Memory* %loadMem_498d47, %struct.Memory** %MEMORY
  %loadMem_498d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 33
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %2818 to i64*
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 15
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %2821 to i64*
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 17
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %R8.i552 = bitcast %union.anon* %2824 to i64*
  %2825 = load i64, i64* %RBP.i551
  %2826 = sub i64 %2825, 12
  %2827 = load i64, i64* %PC.i550
  %2828 = add i64 %2827, 4
  store i64 %2828, i64* %PC.i550
  %2829 = inttoptr i64 %2826 to i32*
  %2830 = load i32, i32* %2829
  %2831 = sext i32 %2830 to i64
  store i64 %2831, i64* %R8.i552, align 8
  store %struct.Memory* %loadMem_498d51, %struct.Memory** %MEMORY
  %loadMem_498d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 33
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %2834 to i64*
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 17
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %R8.i549 = bitcast %union.anon* %2837 to i64*
  %2838 = load i64, i64* %R8.i549
  %2839 = load i64, i64* %PC.i548
  %2840 = add i64 %2839, 4
  store i64 %2840, i64* %PC.i548
  %2841 = sext i64 %2838 to i128
  %2842 = and i128 %2841, -18446744073709551616
  %2843 = zext i64 %2838 to i128
  %2844 = or i128 %2842, %2843
  %2845 = mul i128 76, %2844
  %2846 = trunc i128 %2845 to i64
  store i64 %2846, i64* %R8.i549, align 8
  %2847 = sext i64 %2846 to i128
  %2848 = icmp ne i128 %2847, %2845
  %2849 = zext i1 %2848 to i8
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2849, i8* %2850, align 1
  %2851 = trunc i128 %2845 to i32
  %2852 = and i32 %2851, 255
  %2853 = call i32 @llvm.ctpop.i32(i32 %2852)
  %2854 = trunc i32 %2853 to i8
  %2855 = and i8 %2854, 1
  %2856 = xor i8 %2855, 1
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2856, i8* %2857, align 1
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2858, align 1
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2859, align 1
  %2860 = lshr i64 %2846, 63
  %2861 = trunc i64 %2860 to i8
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2861, i8* %2862, align 1
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2849, i8* %2863, align 1
  store %struct.Memory* %loadMem_498d55, %struct.Memory** %MEMORY
  %loadMem_498d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 33
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %2866 to i64*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 7
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %RDX.i546 = bitcast %union.anon* %2869 to i64*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 17
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %R8.i547 = bitcast %union.anon* %2872 to i64*
  %2873 = load i64, i64* %RDX.i546
  %2874 = load i64, i64* %R8.i547
  %2875 = load i64, i64* %PC.i545
  %2876 = add i64 %2875, 3
  store i64 %2876, i64* %PC.i545
  %2877 = add i64 %2874, %2873
  store i64 %2877, i64* %RDX.i546, align 8
  %2878 = icmp ult i64 %2877, %2873
  %2879 = icmp ult i64 %2877, %2874
  %2880 = or i1 %2878, %2879
  %2881 = zext i1 %2880 to i8
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2881, i8* %2882, align 1
  %2883 = trunc i64 %2877 to i32
  %2884 = and i32 %2883, 255
  %2885 = call i32 @llvm.ctpop.i32(i32 %2884)
  %2886 = trunc i32 %2885 to i8
  %2887 = and i8 %2886, 1
  %2888 = xor i8 %2887, 1
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2888, i8* %2889, align 1
  %2890 = xor i64 %2874, %2873
  %2891 = xor i64 %2890, %2877
  %2892 = lshr i64 %2891, 4
  %2893 = trunc i64 %2892 to i8
  %2894 = and i8 %2893, 1
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2894, i8* %2895, align 1
  %2896 = icmp eq i64 %2877, 0
  %2897 = zext i1 %2896 to i8
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2897, i8* %2898, align 1
  %2899 = lshr i64 %2877, 63
  %2900 = trunc i64 %2899 to i8
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2900, i8* %2901, align 1
  %2902 = lshr i64 %2873, 63
  %2903 = lshr i64 %2874, 63
  %2904 = xor i64 %2899, %2902
  %2905 = xor i64 %2899, %2903
  %2906 = add i64 %2904, %2905
  %2907 = icmp eq i64 %2906, 2
  %2908 = zext i1 %2907 to i8
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2908, i8* %2909, align 1
  store %struct.Memory* %loadMem_498d59, %struct.Memory** %MEMORY
  %loadMem_498d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 33
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %2912 to i64*
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 15
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 17
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %R8.i544 = bitcast %union.anon* %2918 to i64*
  %2919 = load i64, i64* %RBP.i543
  %2920 = sub i64 %2919, 16
  %2921 = load i64, i64* %PC.i542
  %2922 = add i64 %2921, 4
  store i64 %2922, i64* %PC.i542
  %2923 = inttoptr i64 %2920 to i32*
  %2924 = load i32, i32* %2923
  %2925 = sext i32 %2924 to i64
  store i64 %2925, i64* %R8.i544, align 8
  store %struct.Memory* %loadMem_498d5c, %struct.Memory** %MEMORY
  %loadMem_498d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 33
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %2928 to i64*
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 1
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %EAX.i540 = bitcast %union.anon* %2931 to i32*
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 7
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %RDX.i541 = bitcast %union.anon* %2934 to i64*
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 17
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %R8.i = bitcast %union.anon* %2937 to i64*
  %2938 = load i64, i64* %RDX.i541
  %2939 = load i64, i64* %R8.i
  %2940 = mul i64 %2939, 4
  %2941 = add i64 %2940, %2938
  %2942 = load i32, i32* %EAX.i540
  %2943 = zext i32 %2942 to i64
  %2944 = load i64, i64* %PC.i539
  %2945 = add i64 %2944, 4
  store i64 %2945, i64* %PC.i539
  %2946 = inttoptr i64 %2941 to i32*
  store i32 %2942, i32* %2946
  store %struct.Memory* %loadMem_498d60, %struct.Memory** %MEMORY
  %loadMem_498d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 33
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %2949 to i64*
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 1
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %RAX.i537 = bitcast %union.anon* %2952 to i64*
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 15
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %2955 to i64*
  %2956 = load i64, i64* %RBP.i538
  %2957 = sub i64 %2956, 12
  %2958 = load i64, i64* %PC.i536
  %2959 = add i64 %2958, 4
  store i64 %2959, i64* %PC.i536
  %2960 = inttoptr i64 %2957 to i32*
  %2961 = load i32, i32* %2960
  %2962 = sext i32 %2961 to i64
  %2963 = mul i64 %2962, 20
  %2964 = trunc i64 %2963 to i32
  %2965 = and i64 %2963, 4294967295
  store i64 %2965, i64* %RAX.i537, align 8
  %2966 = shl i64 %2963, 32
  %2967 = ashr exact i64 %2966, 32
  %2968 = icmp ne i64 %2967, %2963
  %2969 = zext i1 %2968 to i8
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2969, i8* %2970, align 1
  %2971 = and i32 %2964, 255
  %2972 = call i32 @llvm.ctpop.i32(i32 %2971)
  %2973 = trunc i32 %2972 to i8
  %2974 = and i8 %2973, 1
  %2975 = xor i8 %2974, 1
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2975, i8* %2976, align 1
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2977, align 1
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2978, align 1
  %2979 = lshr i32 %2964, 31
  %2980 = trunc i32 %2979 to i8
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2980, i8* %2981, align 1
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2969, i8* %2982, align 1
  store %struct.Memory* %loadMem_498d64, %struct.Memory** %MEMORY
  %loadMem_498d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 33
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 1
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %2988 to i64*
  %2989 = load i64, i64* %RAX.i535
  %2990 = load i64, i64* %PC.i534
  %2991 = add i64 %2990, 3
  store i64 %2991, i64* %PC.i534
  %2992 = trunc i64 %2989 to i32
  %2993 = add i32 21, %2992
  %2994 = zext i32 %2993 to i64
  store i64 %2994, i64* %RAX.i535, align 8
  %2995 = icmp ult i32 %2993, %2992
  %2996 = icmp ult i32 %2993, 21
  %2997 = or i1 %2995, %2996
  %2998 = zext i1 %2997 to i8
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2998, i8* %2999, align 1
  %3000 = and i32 %2993, 255
  %3001 = call i32 @llvm.ctpop.i32(i32 %3000)
  %3002 = trunc i32 %3001 to i8
  %3003 = and i8 %3002, 1
  %3004 = xor i8 %3003, 1
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3004, i8* %3005, align 1
  %3006 = xor i64 21, %2989
  %3007 = trunc i64 %3006 to i32
  %3008 = xor i32 %3007, %2993
  %3009 = lshr i32 %3008, 4
  %3010 = trunc i32 %3009 to i8
  %3011 = and i8 %3010, 1
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3011, i8* %3012, align 1
  %3013 = icmp eq i32 %2993, 0
  %3014 = zext i1 %3013 to i8
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3014, i8* %3015, align 1
  %3016 = lshr i32 %2993, 31
  %3017 = trunc i32 %3016 to i8
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3017, i8* %3018, align 1
  %3019 = lshr i32 %2992, 31
  %3020 = xor i32 %3016, %3019
  %3021 = add i32 %3020, %3016
  %3022 = icmp eq i32 %3021, 2
  %3023 = zext i1 %3022 to i8
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3023, i8* %3024, align 1
  store %struct.Memory* %loadMem_498d68, %struct.Memory** %MEMORY
  %loadMem_498d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 33
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %3027 to i64*
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 1
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %RAX.i532 = bitcast %union.anon* %3030 to i64*
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 15
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %3033 to i64*
  %3034 = load i64, i64* %RAX.i532
  %3035 = load i64, i64* %RBP.i533
  %3036 = sub i64 %3035, 16
  %3037 = load i64, i64* %PC.i531
  %3038 = add i64 %3037, 3
  store i64 %3038, i64* %PC.i531
  %3039 = trunc i64 %3034 to i32
  %3040 = inttoptr i64 %3036 to i32*
  %3041 = load i32, i32* %3040
  %3042 = add i32 %3041, %3039
  %3043 = zext i32 %3042 to i64
  store i64 %3043, i64* %RAX.i532, align 8
  %3044 = icmp ult i32 %3042, %3039
  %3045 = icmp ult i32 %3042, %3041
  %3046 = or i1 %3044, %3045
  %3047 = zext i1 %3046 to i8
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3047, i8* %3048, align 1
  %3049 = and i32 %3042, 255
  %3050 = call i32 @llvm.ctpop.i32(i32 %3049)
  %3051 = trunc i32 %3050 to i8
  %3052 = and i8 %3051, 1
  %3053 = xor i8 %3052, 1
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3053, i8* %3054, align 1
  %3055 = xor i32 %3041, %3039
  %3056 = xor i32 %3055, %3042
  %3057 = lshr i32 %3056, 4
  %3058 = trunc i32 %3057 to i8
  %3059 = and i8 %3058, 1
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3059, i8* %3060, align 1
  %3061 = icmp eq i32 %3042, 0
  %3062 = zext i1 %3061 to i8
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3062, i8* %3063, align 1
  %3064 = lshr i32 %3042, 31
  %3065 = trunc i32 %3064 to i8
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3065, i8* %3066, align 1
  %3067 = lshr i32 %3039, 31
  %3068 = lshr i32 %3041, 31
  %3069 = xor i32 %3064, %3067
  %3070 = xor i32 %3064, %3068
  %3071 = add i32 %3069, %3070
  %3072 = icmp eq i32 %3071, 2
  %3073 = zext i1 %3072 to i8
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3073, i8* %3074, align 1
  store %struct.Memory* %loadMem_498d6b, %struct.Memory** %MEMORY
  %loadMem_498d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 33
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %3077 to i64*
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 1
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %EAX.i529 = bitcast %union.anon* %3080 to i32*
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 7
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %RDX.i530 = bitcast %union.anon* %3083 to i64*
  %3084 = load i32, i32* %EAX.i529
  %3085 = zext i32 %3084 to i64
  %3086 = load i64, i64* %PC.i528
  %3087 = add i64 %3086, 3
  store i64 %3087, i64* %PC.i528
  %3088 = shl i64 %3085, 32
  %3089 = ashr exact i64 %3088, 32
  store i64 %3089, i64* %RDX.i530, align 8
  store %struct.Memory* %loadMem_498d6e, %struct.Memory** %MEMORY
  %loadMem_498d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 33
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 1
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 7
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RDX.i527 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %RDX.i527
  %3100 = add i64 %3099, 12099168
  %3101 = load i64, i64* %PC.i525
  %3102 = add i64 %3101, 8
  store i64 %3102, i64* %PC.i525
  %3103 = inttoptr i64 %3100 to i8*
  %3104 = load i8, i8* %3103
  %3105 = zext i8 %3104 to i64
  store i64 %3105, i64* %RAX.i526, align 8
  store %struct.Memory* %loadMem_498d71, %struct.Memory** %MEMORY
  %loadMem_498d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 33
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %3108 to i64*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 7
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %RDX.i523 = bitcast %union.anon* %3111 to i64*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 15
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %RBP.i524 = bitcast %union.anon* %3114 to i64*
  %3115 = load i64, i64* %RBP.i524
  %3116 = sub i64 %3115, 12
  %3117 = load i64, i64* %PC.i522
  %3118 = add i64 %3117, 4
  store i64 %3118, i64* %PC.i522
  %3119 = inttoptr i64 %3116 to i32*
  %3120 = load i32, i32* %3119
  %3121 = sext i32 %3120 to i64
  store i64 %3121, i64* %RDX.i523, align 8
  store %struct.Memory* %loadMem_498d79, %struct.Memory** %MEMORY
  %loadMem_498d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 33
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %3124 to i64*
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 7
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %RDX.i521 = bitcast %union.anon* %3127 to i64*
  %3128 = load i64, i64* %RDX.i521
  %3129 = load i64, i64* %PC.i520
  %3130 = add i64 %3129, 4
  store i64 %3130, i64* %PC.i520
  %3131 = sext i64 %3128 to i128
  %3132 = and i128 %3131, -18446744073709551616
  %3133 = zext i64 %3128 to i128
  %3134 = or i128 %3132, %3133
  %3135 = mul i128 76, %3134
  %3136 = trunc i128 %3135 to i64
  store i64 %3136, i64* %RDX.i521, align 8
  %3137 = sext i64 %3136 to i128
  %3138 = icmp ne i128 %3137, %3135
  %3139 = zext i1 %3138 to i8
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3139, i8* %3140, align 1
  %3141 = trunc i128 %3135 to i32
  %3142 = and i32 %3141, 255
  %3143 = call i32 @llvm.ctpop.i32(i32 %3142)
  %3144 = trunc i32 %3143 to i8
  %3145 = and i8 %3144, 1
  %3146 = xor i8 %3145, 1
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3146, i8* %3147, align 1
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3148, align 1
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3149, align 1
  %3150 = lshr i64 %3136, 63
  %3151 = trunc i64 %3150 to i8
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3151, i8* %3152, align 1
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3139, i8* %3153, align 1
  store %struct.Memory* %loadMem_498d7d, %struct.Memory** %MEMORY
  %loadMem_498d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 33
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %3156 to i64*
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 5
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %RCX.i518 = bitcast %union.anon* %3159 to i64*
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 7
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %RDX.i519 = bitcast %union.anon* %3162 to i64*
  %3163 = load i64, i64* %RCX.i518
  %3164 = load i64, i64* %RDX.i519
  %3165 = load i64, i64* %PC.i517
  %3166 = add i64 %3165, 3
  store i64 %3166, i64* %PC.i517
  %3167 = add i64 %3164, %3163
  store i64 %3167, i64* %RCX.i518, align 8
  %3168 = icmp ult i64 %3167, %3163
  %3169 = icmp ult i64 %3167, %3164
  %3170 = or i1 %3168, %3169
  %3171 = zext i1 %3170 to i8
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3171, i8* %3172, align 1
  %3173 = trunc i64 %3167 to i32
  %3174 = and i32 %3173, 255
  %3175 = call i32 @llvm.ctpop.i32(i32 %3174)
  %3176 = trunc i32 %3175 to i8
  %3177 = and i8 %3176, 1
  %3178 = xor i8 %3177, 1
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3178, i8* %3179, align 1
  %3180 = xor i64 %3164, %3163
  %3181 = xor i64 %3180, %3167
  %3182 = lshr i64 %3181, 4
  %3183 = trunc i64 %3182 to i8
  %3184 = and i8 %3183, 1
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3184, i8* %3185, align 1
  %3186 = icmp eq i64 %3167, 0
  %3187 = zext i1 %3186 to i8
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3187, i8* %3188, align 1
  %3189 = lshr i64 %3167, 63
  %3190 = trunc i64 %3189 to i8
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3190, i8* %3191, align 1
  %3192 = lshr i64 %3163, 63
  %3193 = lshr i64 %3164, 63
  %3194 = xor i64 %3189, %3192
  %3195 = xor i64 %3189, %3193
  %3196 = add i64 %3194, %3195
  %3197 = icmp eq i64 %3196, 2
  %3198 = zext i1 %3197 to i8
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3198, i8* %3199, align 1
  store %struct.Memory* %loadMem_498d81, %struct.Memory** %MEMORY
  %loadMem_498d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 33
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %3202 to i64*
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3204 = getelementptr inbounds %struct.GPR, %struct.GPR* %3203, i32 0, i32 7
  %3205 = getelementptr inbounds %struct.Reg, %struct.Reg* %3204, i32 0, i32 0
  %RDX.i515 = bitcast %union.anon* %3205 to i64*
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3207 = getelementptr inbounds %struct.GPR, %struct.GPR* %3206, i32 0, i32 15
  %3208 = getelementptr inbounds %struct.Reg, %struct.Reg* %3207, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %3208 to i64*
  %3209 = load i64, i64* %RBP.i516
  %3210 = sub i64 %3209, 16
  %3211 = load i64, i64* %PC.i514
  %3212 = add i64 %3211, 4
  store i64 %3212, i64* %PC.i514
  %3213 = inttoptr i64 %3210 to i32*
  %3214 = load i32, i32* %3213
  %3215 = sext i32 %3214 to i64
  store i64 %3215, i64* %RDX.i515, align 8
  store %struct.Memory* %loadMem_498d84, %struct.Memory** %MEMORY
  %loadMem_498d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 33
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %3218 to i64*
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 1
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %EAX.i511 = bitcast %union.anon* %3221 to i32*
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 5
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %RCX.i512 = bitcast %union.anon* %3224 to i64*
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 7
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %RDX.i513 = bitcast %union.anon* %3227 to i64*
  %3228 = load i64, i64* %RCX.i512
  %3229 = load i64, i64* %RDX.i513
  %3230 = mul i64 %3229, 4
  %3231 = add i64 %3230, %3228
  %3232 = load i32, i32* %EAX.i511
  %3233 = zext i32 %3232 to i64
  %3234 = load i64, i64* %PC.i510
  %3235 = add i64 %3234, 3
  store i64 %3235, i64* %PC.i510
  %3236 = inttoptr i64 %3231 to i32*
  store i32 %3232, i32* %3236
  store %struct.Memory* %loadMem_498d88, %struct.Memory** %MEMORY
  %loadMem_498d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 33
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %3239 to i64*
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 1
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 15
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %3245 to i64*
  %3246 = load i64, i64* %RBP.i509
  %3247 = sub i64 %3246, 16
  %3248 = load i64, i64* %PC.i507
  %3249 = add i64 %3248, 3
  store i64 %3249, i64* %PC.i507
  %3250 = inttoptr i64 %3247 to i32*
  %3251 = load i32, i32* %3250
  %3252 = zext i32 %3251 to i64
  store i64 %3252, i64* %RAX.i508, align 8
  store %struct.Memory* %loadMem_498d8b, %struct.Memory** %MEMORY
  %loadMem_498d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3254 = getelementptr inbounds %struct.GPR, %struct.GPR* %3253, i32 0, i32 33
  %3255 = getelementptr inbounds %struct.Reg, %struct.Reg* %3254, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %3255 to i64*
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 1
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %RAX.i506 = bitcast %union.anon* %3258 to i64*
  %3259 = load i64, i64* %RAX.i506
  %3260 = load i64, i64* %PC.i505
  %3261 = add i64 %3260, 3
  store i64 %3261, i64* %PC.i505
  %3262 = trunc i64 %3259 to i32
  %3263 = add i32 1, %3262
  %3264 = zext i32 %3263 to i64
  store i64 %3264, i64* %RAX.i506, align 8
  %3265 = icmp ult i32 %3263, %3262
  %3266 = icmp ult i32 %3263, 1
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
  %3276 = xor i64 1, %3259
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
  store %struct.Memory* %loadMem_498d8e, %struct.Memory** %MEMORY
  %loadMem_498d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 33
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %3297 to i64*
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 1
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %EAX.i503 = bitcast %union.anon* %3300 to i32*
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 15
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %3303 to i64*
  %3304 = load i64, i64* %RBP.i504
  %3305 = sub i64 %3304, 16
  %3306 = load i32, i32* %EAX.i503
  %3307 = zext i32 %3306 to i64
  %3308 = load i64, i64* %PC.i502
  %3309 = add i64 %3308, 3
  store i64 %3309, i64* %PC.i502
  %3310 = inttoptr i64 %3305 to i32*
  store i32 %3306, i32* %3310
  store %struct.Memory* %loadMem_498d91, %struct.Memory** %MEMORY
  %loadMem_498d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 33
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %3313 to i64*
  %3314 = load i64, i64* %PC.i501
  %3315 = add i64 %3314, -120
  %3316 = load i64, i64* %PC.i501
  %3317 = add i64 %3316, 5
  store i64 %3317, i64* %PC.i501
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3315, i64* %3318, align 8
  store %struct.Memory* %loadMem_498d94, %struct.Memory** %MEMORY
  br label %block_.L_498d1c

block_.L_498d99:                                  ; preds = %block_.L_498d1c
  %loadMem_498d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 33
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %3321 to i64*
  %3322 = load i64, i64* %PC.i500
  %3323 = add i64 %3322, 5
  %3324 = load i64, i64* %PC.i500
  %3325 = add i64 %3324, 5
  store i64 %3325, i64* %PC.i500
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3323, i64* %3326, align 8
  store %struct.Memory* %loadMem_498d99, %struct.Memory** %MEMORY
  br label %block_.L_498d9e

block_.L_498d9e:                                  ; preds = %block_.L_498d99
  %loadMem_498d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 33
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %3329 to i64*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 1
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %3332 to i64*
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 15
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %3335 to i64*
  %3336 = load i64, i64* %RBP.i499
  %3337 = sub i64 %3336, 12
  %3338 = load i64, i64* %PC.i497
  %3339 = add i64 %3338, 3
  store i64 %3339, i64* %PC.i497
  %3340 = inttoptr i64 %3337 to i32*
  %3341 = load i32, i32* %3340
  %3342 = zext i32 %3341 to i64
  store i64 %3342, i64* %RAX.i498, align 8
  store %struct.Memory* %loadMem_498d9e, %struct.Memory** %MEMORY
  %loadMem_498da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 33
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %3345 to i64*
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3347 = getelementptr inbounds %struct.GPR, %struct.GPR* %3346, i32 0, i32 1
  %3348 = getelementptr inbounds %struct.Reg, %struct.Reg* %3347, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %3348 to i64*
  %3349 = load i64, i64* %RAX.i496
  %3350 = load i64, i64* %PC.i495
  %3351 = add i64 %3350, 3
  store i64 %3351, i64* %PC.i495
  %3352 = trunc i64 %3349 to i32
  %3353 = add i32 1, %3352
  %3354 = zext i32 %3353 to i64
  store i64 %3354, i64* %RAX.i496, align 8
  %3355 = icmp ult i32 %3353, %3352
  %3356 = icmp ult i32 %3353, 1
  %3357 = or i1 %3355, %3356
  %3358 = zext i1 %3357 to i8
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3358, i8* %3359, align 1
  %3360 = and i32 %3353, 255
  %3361 = call i32 @llvm.ctpop.i32(i32 %3360)
  %3362 = trunc i32 %3361 to i8
  %3363 = and i8 %3362, 1
  %3364 = xor i8 %3363, 1
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3364, i8* %3365, align 1
  %3366 = xor i64 1, %3349
  %3367 = trunc i64 %3366 to i32
  %3368 = xor i32 %3367, %3353
  %3369 = lshr i32 %3368, 4
  %3370 = trunc i32 %3369 to i8
  %3371 = and i8 %3370, 1
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3371, i8* %3372, align 1
  %3373 = icmp eq i32 %3353, 0
  %3374 = zext i1 %3373 to i8
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3374, i8* %3375, align 1
  %3376 = lshr i32 %3353, 31
  %3377 = trunc i32 %3376 to i8
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3377, i8* %3378, align 1
  %3379 = lshr i32 %3352, 31
  %3380 = xor i32 %3376, %3379
  %3381 = add i32 %3380, %3376
  %3382 = icmp eq i32 %3381, 2
  %3383 = zext i1 %3382 to i8
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3383, i8* %3384, align 1
  store %struct.Memory* %loadMem_498da1, %struct.Memory** %MEMORY
  %loadMem_498da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 33
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %3387 to i64*
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 1
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %EAX.i493 = bitcast %union.anon* %3390 to i32*
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3392 = getelementptr inbounds %struct.GPR, %struct.GPR* %3391, i32 0, i32 15
  %3393 = getelementptr inbounds %struct.Reg, %struct.Reg* %3392, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %3393 to i64*
  %3394 = load i64, i64* %RBP.i494
  %3395 = sub i64 %3394, 12
  %3396 = load i32, i32* %EAX.i493
  %3397 = zext i32 %3396 to i64
  %3398 = load i64, i64* %PC.i492
  %3399 = add i64 %3398, 3
  store i64 %3399, i64* %PC.i492
  %3400 = inttoptr i64 %3395 to i32*
  store i32 %3396, i32* %3400
  store %struct.Memory* %loadMem_498da4, %struct.Memory** %MEMORY
  %loadMem_498da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 33
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %3403 to i64*
  %3404 = load i64, i64* %PC.i491
  %3405 = add i64 %3404, -162
  %3406 = load i64, i64* %PC.i491
  %3407 = add i64 %3406, 5
  store i64 %3407, i64* %PC.i491
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3405, i64* %3408, align 8
  store %struct.Memory* %loadMem_498da7, %struct.Memory** %MEMORY
  br label %block_.L_498d05

block_.L_498dac:                                  ; preds = %block_.L_498d05
  %loadMem_498dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 33
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %3411 to i64*
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3413 = getelementptr inbounds %struct.GPR, %struct.GPR* %3412, i32 0, i32 11
  %3414 = getelementptr inbounds %struct.Reg, %struct.Reg* %3413, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3414 to i64*
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3416 = getelementptr inbounds %struct.GPR, %struct.GPR* %3415, i32 0, i32 15
  %3417 = getelementptr inbounds %struct.Reg, %struct.Reg* %3416, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %3417 to i64*
  %3418 = load i64, i64* %RBP.i490
  %3419 = sub i64 %3418, 6360
  %3420 = load i64, i64* %PC.i489
  %3421 = add i64 %3420, 7
  store i64 %3421, i64* %PC.i489
  store i64 %3419, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_498dac, %struct.Memory** %MEMORY
  %loadMem1_498db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 33
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %3424 to i64*
  %3425 = load i64, i64* %PC.i488
  %3426 = add i64 %3425, -593587
  %3427 = load i64, i64* %PC.i488
  %3428 = add i64 %3427, 5
  %3429 = load i64, i64* %PC.i488
  %3430 = add i64 %3429, 5
  store i64 %3430, i64* %PC.i488
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3432 = load i64, i64* %3431, align 8
  %3433 = add i64 %3432, -8
  %3434 = inttoptr i64 %3433 to i64*
  store i64 %3428, i64* %3434
  store i64 %3433, i64* %3431, align 8
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3426, i64* %3435, align 8
  store %struct.Memory* %loadMem1_498db3, %struct.Memory** %MEMORY
  %loadMem2_498db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_498db3 = load i64, i64* %3
  %call2_498db3 = call %struct.Memory* @sub_407f00.restore_board(%struct.State* %0, i64 %loadPC_498db3, %struct.Memory* %loadMem2_498db3)
  store %struct.Memory* %call2_498db3, %struct.Memory** %MEMORY
  %loadMem_498db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3437 = getelementptr inbounds %struct.GPR, %struct.GPR* %3436, i32 0, i32 33
  %3438 = getelementptr inbounds %struct.Reg, %struct.Reg* %3437, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %3438 to i64*
  %3439 = load i64, i64* %PC.i487
  %3440 = add i64 %3439, 11
  store i64 %3440, i64* %PC.i487
  store i32 0, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*)
  store %struct.Memory* %loadMem_498db8, %struct.Memory** %MEMORY
  %loadMem_498dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3442 = getelementptr inbounds %struct.GPR, %struct.GPR* %3441, i32 0, i32 33
  %3443 = getelementptr inbounds %struct.Reg, %struct.Reg* %3442, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %3443 to i64*
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3445 = getelementptr inbounds %struct.GPR, %struct.GPR* %3444, i32 0, i32 15
  %3446 = getelementptr inbounds %struct.Reg, %struct.Reg* %3445, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %3446 to i64*
  %3447 = load i64, i64* %RBP.i486
  %3448 = sub i64 %3447, 12
  %3449 = load i64, i64* %PC.i485
  %3450 = add i64 %3449, 7
  store i64 %3450, i64* %PC.i485
  %3451 = inttoptr i64 %3448 to i32*
  store i32 0, i32* %3451
  store %struct.Memory* %loadMem_498dc3, %struct.Memory** %MEMORY
  br label %block_.L_498dca

block_.L_498dca:                                  ; preds = %block_.L_4991b6, %block_.L_498dac
  %loadMem_498dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 33
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %3454 to i64*
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3456 = getelementptr inbounds %struct.GPR, %struct.GPR* %3455, i32 0, i32 1
  %3457 = getelementptr inbounds %struct.Reg, %struct.Reg* %3456, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %3457 to i64*
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 15
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %3460 to i64*
  %3461 = load i64, i64* %RBP.i484
  %3462 = sub i64 %3461, 12
  %3463 = load i64, i64* %PC.i482
  %3464 = add i64 %3463, 3
  store i64 %3464, i64* %PC.i482
  %3465 = inttoptr i64 %3462 to i32*
  %3466 = load i32, i32* %3465
  %3467 = zext i32 %3466 to i64
  store i64 %3467, i64* %RAX.i483, align 8
  store %struct.Memory* %loadMem_498dca, %struct.Memory** %MEMORY
  %loadMem_498dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 33
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %3470 to i64*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 1
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %EAX.i481 = bitcast %union.anon* %3473 to i32*
  %3474 = load i32, i32* %EAX.i481
  %3475 = zext i32 %3474 to i64
  %3476 = load i64, i64* %PC.i480
  %3477 = add i64 %3476, 7
  store i64 %3477, i64* %PC.i480
  %3478 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %3479 = sub i32 %3474, %3478
  %3480 = icmp ult i32 %3474, %3478
  %3481 = zext i1 %3480 to i8
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3481, i8* %3482, align 1
  %3483 = and i32 %3479, 255
  %3484 = call i32 @llvm.ctpop.i32(i32 %3483)
  %3485 = trunc i32 %3484 to i8
  %3486 = and i8 %3485, 1
  %3487 = xor i8 %3486, 1
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3487, i8* %3488, align 1
  %3489 = xor i32 %3478, %3474
  %3490 = xor i32 %3489, %3479
  %3491 = lshr i32 %3490, 4
  %3492 = trunc i32 %3491 to i8
  %3493 = and i8 %3492, 1
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3493, i8* %3494, align 1
  %3495 = icmp eq i32 %3479, 0
  %3496 = zext i1 %3495 to i8
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3496, i8* %3497, align 1
  %3498 = lshr i32 %3479, 31
  %3499 = trunc i32 %3498 to i8
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3499, i8* %3500, align 1
  %3501 = lshr i32 %3474, 31
  %3502 = lshr i32 %3478, 31
  %3503 = xor i32 %3502, %3501
  %3504 = xor i32 %3498, %3501
  %3505 = add i32 %3504, %3503
  %3506 = icmp eq i32 %3505, 2
  %3507 = zext i1 %3506 to i8
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3507, i8* %3508, align 1
  store %struct.Memory* %loadMem_498dcd, %struct.Memory** %MEMORY
  %loadMem_498dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 33
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %3511 to i64*
  %3512 = load i64, i64* %PC.i479
  %3513 = add i64 %3512, 1008
  %3514 = load i64, i64* %PC.i479
  %3515 = add i64 %3514, 6
  %3516 = load i64, i64* %PC.i479
  %3517 = add i64 %3516, 6
  store i64 %3517, i64* %PC.i479
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3519 = load i8, i8* %3518, align 1
  %3520 = icmp ne i8 %3519, 0
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3522 = load i8, i8* %3521, align 1
  %3523 = icmp ne i8 %3522, 0
  %3524 = xor i1 %3520, %3523
  %3525 = xor i1 %3524, true
  %3526 = zext i1 %3525 to i8
  store i8 %3526, i8* %BRANCH_TAKEN, align 1
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3528 = select i1 %3524, i64 %3515, i64 %3513
  store i64 %3528, i64* %3527, align 8
  store %struct.Memory* %loadMem_498dd4, %struct.Memory** %MEMORY
  %loadBr_498dd4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498dd4 = icmp eq i8 %loadBr_498dd4, 1
  br i1 %cmpBr_498dd4, label %block_.L_4991c4, label %block_498dda

block_498dda:                                     ; preds = %block_.L_498dca
  %loadMem_498dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 33
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %3531 to i64*
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 15
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %3534 to i64*
  %3535 = load i64, i64* %RBP.i478
  %3536 = sub i64 %3535, 16
  %3537 = load i64, i64* %PC.i477
  %3538 = add i64 %3537, 7
  store i64 %3538, i64* %PC.i477
  %3539 = inttoptr i64 %3536 to i32*
  store i32 0, i32* %3539
  store %struct.Memory* %loadMem_498dda, %struct.Memory** %MEMORY
  br label %block_.L_498de1

block_.L_498de1:                                  ; preds = %block_.L_4991a3, %block_498dda
  %loadMem_498de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 33
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %3542 to i64*
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 1
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %RAX.i475 = bitcast %union.anon* %3545 to i64*
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 15
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %3548 to i64*
  %3549 = load i64, i64* %RBP.i476
  %3550 = sub i64 %3549, 16
  %3551 = load i64, i64* %PC.i474
  %3552 = add i64 %3551, 3
  store i64 %3552, i64* %PC.i474
  %3553 = inttoptr i64 %3550 to i32*
  %3554 = load i32, i32* %3553
  %3555 = zext i32 %3554 to i64
  store i64 %3555, i64* %RAX.i475, align 8
  store %struct.Memory* %loadMem_498de1, %struct.Memory** %MEMORY
  %loadMem_498de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 33
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %3558 to i64*
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 1
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %EAX.i473 = bitcast %union.anon* %3561 to i32*
  %3562 = load i32, i32* %EAX.i473
  %3563 = zext i32 %3562 to i64
  %3564 = load i64, i64* %PC.i472
  %3565 = add i64 %3564, 7
  store i64 %3565, i64* %PC.i472
  %3566 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %3567 = sub i32 %3562, %3566
  %3568 = icmp ult i32 %3562, %3566
  %3569 = zext i1 %3568 to i8
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3569, i8* %3570, align 1
  %3571 = and i32 %3567, 255
  %3572 = call i32 @llvm.ctpop.i32(i32 %3571)
  %3573 = trunc i32 %3572 to i8
  %3574 = and i8 %3573, 1
  %3575 = xor i8 %3574, 1
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3575, i8* %3576, align 1
  %3577 = xor i32 %3566, %3562
  %3578 = xor i32 %3577, %3567
  %3579 = lshr i32 %3578, 4
  %3580 = trunc i32 %3579 to i8
  %3581 = and i8 %3580, 1
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3581, i8* %3582, align 1
  %3583 = icmp eq i32 %3567, 0
  %3584 = zext i1 %3583 to i8
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3584, i8* %3585, align 1
  %3586 = lshr i32 %3567, 31
  %3587 = trunc i32 %3586 to i8
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3587, i8* %3588, align 1
  %3589 = lshr i32 %3562, 31
  %3590 = lshr i32 %3566, 31
  %3591 = xor i32 %3590, %3589
  %3592 = xor i32 %3586, %3589
  %3593 = add i32 %3592, %3591
  %3594 = icmp eq i32 %3593, 2
  %3595 = zext i1 %3594 to i8
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3595, i8* %3596, align 1
  store %struct.Memory* %loadMem_498de4, %struct.Memory** %MEMORY
  %loadMem_498deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 33
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %3599 to i64*
  %3600 = load i64, i64* %PC.i471
  %3601 = add i64 %3600, 966
  %3602 = load i64, i64* %PC.i471
  %3603 = add i64 %3602, 6
  %3604 = load i64, i64* %PC.i471
  %3605 = add i64 %3604, 6
  store i64 %3605, i64* %PC.i471
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3607 = load i8, i8* %3606, align 1
  %3608 = icmp ne i8 %3607, 0
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3610 = load i8, i8* %3609, align 1
  %3611 = icmp ne i8 %3610, 0
  %3612 = xor i1 %3608, %3611
  %3613 = xor i1 %3612, true
  %3614 = zext i1 %3613 to i8
  store i8 %3614, i8* %BRANCH_TAKEN, align 1
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3616 = select i1 %3612, i64 %3603, i64 %3601
  store i64 %3616, i64* %3615, align 8
  store %struct.Memory* %loadMem_498deb, %struct.Memory** %MEMORY
  %loadBr_498deb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498deb = icmp eq i8 %loadBr_498deb, 1
  br i1 %cmpBr_498deb, label %block_.L_4991b1, label %block_498df1

block_498df1:                                     ; preds = %block_.L_498de1
  %loadMem_498df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3618 = getelementptr inbounds %struct.GPR, %struct.GPR* %3617, i32 0, i32 33
  %3619 = getelementptr inbounds %struct.Reg, %struct.Reg* %3618, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %3619 to i64*
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3621 = getelementptr inbounds %struct.GPR, %struct.GPR* %3620, i32 0, i32 1
  %3622 = getelementptr inbounds %struct.Reg, %struct.Reg* %3621, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %3622 to i64*
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 15
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %3625 to i64*
  %3626 = load i64, i64* %RBP.i470
  %3627 = sub i64 %3626, 1472
  %3628 = load i64, i64* %PC.i468
  %3629 = add i64 %3628, 7
  store i64 %3629, i64* %PC.i468
  store i64 %3627, i64* %RAX.i469, align 8
  store %struct.Memory* %loadMem_498df1, %struct.Memory** %MEMORY
  %loadMem_498df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 33
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %3632 to i64*
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 5
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %3635 to i64*
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 15
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %3638 to i64*
  %3639 = load i64, i64* %RBP.i467
  %3640 = sub i64 %3639, 12
  %3641 = load i64, i64* %PC.i465
  %3642 = add i64 %3641, 4
  store i64 %3642, i64* %PC.i465
  %3643 = inttoptr i64 %3640 to i32*
  %3644 = load i32, i32* %3643
  %3645 = sext i32 %3644 to i64
  %3646 = mul i64 %3645, 20
  %3647 = trunc i64 %3646 to i32
  %3648 = and i64 %3646, 4294967295
  store i64 %3648, i64* %RCX.i466, align 8
  %3649 = shl i64 %3646, 32
  %3650 = ashr exact i64 %3649, 32
  %3651 = icmp ne i64 %3650, %3646
  %3652 = zext i1 %3651 to i8
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3652, i8* %3653, align 1
  %3654 = and i32 %3647, 255
  %3655 = call i32 @llvm.ctpop.i32(i32 %3654)
  %3656 = trunc i32 %3655 to i8
  %3657 = and i8 %3656, 1
  %3658 = xor i8 %3657, 1
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3658, i8* %3659, align 1
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3660, align 1
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3661, align 1
  %3662 = lshr i32 %3647, 31
  %3663 = trunc i32 %3662 to i8
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3663, i8* %3664, align 1
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3652, i8* %3665, align 1
  store %struct.Memory* %loadMem_498df8, %struct.Memory** %MEMORY
  %loadMem_498dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 33
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %3668 to i64*
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3670 = getelementptr inbounds %struct.GPR, %struct.GPR* %3669, i32 0, i32 5
  %3671 = getelementptr inbounds %struct.Reg, %struct.Reg* %3670, i32 0, i32 0
  %RCX.i464 = bitcast %union.anon* %3671 to i64*
  %3672 = load i64, i64* %RCX.i464
  %3673 = load i64, i64* %PC.i463
  %3674 = add i64 %3673, 3
  store i64 %3674, i64* %PC.i463
  %3675 = trunc i64 %3672 to i32
  %3676 = add i32 21, %3675
  %3677 = zext i32 %3676 to i64
  store i64 %3677, i64* %RCX.i464, align 8
  %3678 = icmp ult i32 %3676, %3675
  %3679 = icmp ult i32 %3676, 21
  %3680 = or i1 %3678, %3679
  %3681 = zext i1 %3680 to i8
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3681, i8* %3682, align 1
  %3683 = and i32 %3676, 255
  %3684 = call i32 @llvm.ctpop.i32(i32 %3683)
  %3685 = trunc i32 %3684 to i8
  %3686 = and i8 %3685, 1
  %3687 = xor i8 %3686, 1
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3687, i8* %3688, align 1
  %3689 = xor i64 21, %3672
  %3690 = trunc i64 %3689 to i32
  %3691 = xor i32 %3690, %3676
  %3692 = lshr i32 %3691, 4
  %3693 = trunc i32 %3692 to i8
  %3694 = and i8 %3693, 1
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3694, i8* %3695, align 1
  %3696 = icmp eq i32 %3676, 0
  %3697 = zext i1 %3696 to i8
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3697, i8* %3698, align 1
  %3699 = lshr i32 %3676, 31
  %3700 = trunc i32 %3699 to i8
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3700, i8* %3701, align 1
  %3702 = lshr i32 %3675, 31
  %3703 = xor i32 %3699, %3702
  %3704 = add i32 %3703, %3699
  %3705 = icmp eq i32 %3704, 2
  %3706 = zext i1 %3705 to i8
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3706, i8* %3707, align 1
  store %struct.Memory* %loadMem_498dfc, %struct.Memory** %MEMORY
  %loadMem_498dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3709 = getelementptr inbounds %struct.GPR, %struct.GPR* %3708, i32 0, i32 33
  %3710 = getelementptr inbounds %struct.Reg, %struct.Reg* %3709, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %3710 to i64*
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3712 = getelementptr inbounds %struct.GPR, %struct.GPR* %3711, i32 0, i32 5
  %3713 = getelementptr inbounds %struct.Reg, %struct.Reg* %3712, i32 0, i32 0
  %RCX.i461 = bitcast %union.anon* %3713 to i64*
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3715 = getelementptr inbounds %struct.GPR, %struct.GPR* %3714, i32 0, i32 15
  %3716 = getelementptr inbounds %struct.Reg, %struct.Reg* %3715, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %3716 to i64*
  %3717 = load i64, i64* %RCX.i461
  %3718 = load i64, i64* %RBP.i462
  %3719 = sub i64 %3718, 16
  %3720 = load i64, i64* %PC.i460
  %3721 = add i64 %3720, 3
  store i64 %3721, i64* %PC.i460
  %3722 = trunc i64 %3717 to i32
  %3723 = inttoptr i64 %3719 to i32*
  %3724 = load i32, i32* %3723
  %3725 = add i32 %3724, %3722
  %3726 = zext i32 %3725 to i64
  store i64 %3726, i64* %RCX.i461, align 8
  %3727 = icmp ult i32 %3725, %3722
  %3728 = icmp ult i32 %3725, %3724
  %3729 = or i1 %3727, %3728
  %3730 = zext i1 %3729 to i8
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3730, i8* %3731, align 1
  %3732 = and i32 %3725, 255
  %3733 = call i32 @llvm.ctpop.i32(i32 %3732)
  %3734 = trunc i32 %3733 to i8
  %3735 = and i8 %3734, 1
  %3736 = xor i8 %3735, 1
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3736, i8* %3737, align 1
  %3738 = xor i32 %3724, %3722
  %3739 = xor i32 %3738, %3725
  %3740 = lshr i32 %3739, 4
  %3741 = trunc i32 %3740 to i8
  %3742 = and i8 %3741, 1
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3742, i8* %3743, align 1
  %3744 = icmp eq i32 %3725, 0
  %3745 = zext i1 %3744 to i8
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3745, i8* %3746, align 1
  %3747 = lshr i32 %3725, 31
  %3748 = trunc i32 %3747 to i8
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3748, i8* %3749, align 1
  %3750 = lshr i32 %3722, 31
  %3751 = lshr i32 %3724, 31
  %3752 = xor i32 %3747, %3750
  %3753 = xor i32 %3747, %3751
  %3754 = add i32 %3752, %3753
  %3755 = icmp eq i32 %3754, 2
  %3756 = zext i1 %3755 to i8
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3756, i8* %3757, align 1
  store %struct.Memory* %loadMem_498dff, %struct.Memory** %MEMORY
  %loadMem_498e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 33
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %3760 to i64*
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3762 = getelementptr inbounds %struct.GPR, %struct.GPR* %3761, i32 0, i32 5
  %3763 = getelementptr inbounds %struct.Reg, %struct.Reg* %3762, i32 0, i32 0
  %ECX.i458 = bitcast %union.anon* %3763 to i32*
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3765 = getelementptr inbounds %struct.GPR, %struct.GPR* %3764, i32 0, i32 7
  %3766 = getelementptr inbounds %struct.Reg, %struct.Reg* %3765, i32 0, i32 0
  %RDX.i459 = bitcast %union.anon* %3766 to i64*
  %3767 = load i32, i32* %ECX.i458
  %3768 = zext i32 %3767 to i64
  %3769 = load i64, i64* %PC.i457
  %3770 = add i64 %3769, 3
  store i64 %3770, i64* %PC.i457
  %3771 = shl i64 %3768, 32
  %3772 = ashr exact i64 %3771, 32
  store i64 %3772, i64* %RDX.i459, align 8
  store %struct.Memory* %loadMem_498e02, %struct.Memory** %MEMORY
  %loadMem_498e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3774 = getelementptr inbounds %struct.GPR, %struct.GPR* %3773, i32 0, i32 33
  %3775 = getelementptr inbounds %struct.Reg, %struct.Reg* %3774, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %3775 to i64*
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 5
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %RCX.i455 = bitcast %union.anon* %3778 to i64*
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 7
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %RDX.i456 = bitcast %union.anon* %3781 to i64*
  %3782 = load i64, i64* %RDX.i456
  %3783 = add i64 %3782, 12099168
  %3784 = load i64, i64* %PC.i454
  %3785 = add i64 %3784, 8
  store i64 %3785, i64* %PC.i454
  %3786 = inttoptr i64 %3783 to i8*
  %3787 = load i8, i8* %3786
  %3788 = zext i8 %3787 to i64
  store i64 %3788, i64* %RCX.i455, align 8
  store %struct.Memory* %loadMem_498e05, %struct.Memory** %MEMORY
  %loadMem_498e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 33
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %3791 to i64*
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 7
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %RDX.i452 = bitcast %union.anon* %3794 to i64*
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 15
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %3797 to i64*
  %3798 = load i64, i64* %RBP.i453
  %3799 = sub i64 %3798, 12
  %3800 = load i64, i64* %PC.i451
  %3801 = add i64 %3800, 4
  store i64 %3801, i64* %PC.i451
  %3802 = inttoptr i64 %3799 to i32*
  %3803 = load i32, i32* %3802
  %3804 = sext i32 %3803 to i64
  store i64 %3804, i64* %RDX.i452, align 8
  store %struct.Memory* %loadMem_498e0d, %struct.Memory** %MEMORY
  %loadMem_498e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3806 = getelementptr inbounds %struct.GPR, %struct.GPR* %3805, i32 0, i32 33
  %3807 = getelementptr inbounds %struct.Reg, %struct.Reg* %3806, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %3807 to i64*
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 7
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %RDX.i450 = bitcast %union.anon* %3810 to i64*
  %3811 = load i64, i64* %RDX.i450
  %3812 = load i64, i64* %PC.i449
  %3813 = add i64 %3812, 4
  store i64 %3813, i64* %PC.i449
  %3814 = sext i64 %3811 to i128
  %3815 = and i128 %3814, -18446744073709551616
  %3816 = zext i64 %3811 to i128
  %3817 = or i128 %3815, %3816
  %3818 = mul i128 76, %3817
  %3819 = trunc i128 %3818 to i64
  store i64 %3819, i64* %RDX.i450, align 8
  %3820 = sext i64 %3819 to i128
  %3821 = icmp ne i128 %3820, %3818
  %3822 = zext i1 %3821 to i8
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3822, i8* %3823, align 1
  %3824 = trunc i128 %3818 to i32
  %3825 = and i32 %3824, 255
  %3826 = call i32 @llvm.ctpop.i32(i32 %3825)
  %3827 = trunc i32 %3826 to i8
  %3828 = and i8 %3827, 1
  %3829 = xor i8 %3828, 1
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3829, i8* %3830, align 1
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3831, align 1
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3832, align 1
  %3833 = lshr i64 %3819, 63
  %3834 = trunc i64 %3833 to i8
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3834, i8* %3835, align 1
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3822, i8* %3836, align 1
  store %struct.Memory* %loadMem_498e11, %struct.Memory** %MEMORY
  %loadMem_498e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3838 = getelementptr inbounds %struct.GPR, %struct.GPR* %3837, i32 0, i32 33
  %3839 = getelementptr inbounds %struct.Reg, %struct.Reg* %3838, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %3839 to i64*
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3841 = getelementptr inbounds %struct.GPR, %struct.GPR* %3840, i32 0, i32 1
  %3842 = getelementptr inbounds %struct.Reg, %struct.Reg* %3841, i32 0, i32 0
  %RAX.i447 = bitcast %union.anon* %3842 to i64*
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 7
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %RDX.i448 = bitcast %union.anon* %3845 to i64*
  %3846 = load i64, i64* %RAX.i447
  %3847 = load i64, i64* %RDX.i448
  %3848 = load i64, i64* %PC.i446
  %3849 = add i64 %3848, 3
  store i64 %3849, i64* %PC.i446
  %3850 = add i64 %3847, %3846
  store i64 %3850, i64* %RAX.i447, align 8
  %3851 = icmp ult i64 %3850, %3846
  %3852 = icmp ult i64 %3850, %3847
  %3853 = or i1 %3851, %3852
  %3854 = zext i1 %3853 to i8
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3854, i8* %3855, align 1
  %3856 = trunc i64 %3850 to i32
  %3857 = and i32 %3856, 255
  %3858 = call i32 @llvm.ctpop.i32(i32 %3857)
  %3859 = trunc i32 %3858 to i8
  %3860 = and i8 %3859, 1
  %3861 = xor i8 %3860, 1
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3861, i8* %3862, align 1
  %3863 = xor i64 %3847, %3846
  %3864 = xor i64 %3863, %3850
  %3865 = lshr i64 %3864, 4
  %3866 = trunc i64 %3865 to i8
  %3867 = and i8 %3866, 1
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3867, i8* %3868, align 1
  %3869 = icmp eq i64 %3850, 0
  %3870 = zext i1 %3869 to i8
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3870, i8* %3871, align 1
  %3872 = lshr i64 %3850, 63
  %3873 = trunc i64 %3872 to i8
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3873, i8* %3874, align 1
  %3875 = lshr i64 %3846, 63
  %3876 = lshr i64 %3847, 63
  %3877 = xor i64 %3872, %3875
  %3878 = xor i64 %3872, %3876
  %3879 = add i64 %3877, %3878
  %3880 = icmp eq i64 %3879, 2
  %3881 = zext i1 %3880 to i8
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3881, i8* %3882, align 1
  store %struct.Memory* %loadMem_498e15, %struct.Memory** %MEMORY
  %loadMem_498e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 33
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %3885 to i64*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 7
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %RDX.i444 = bitcast %union.anon* %3888 to i64*
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 15
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %3891 to i64*
  %3892 = load i64, i64* %RBP.i445
  %3893 = sub i64 %3892, 16
  %3894 = load i64, i64* %PC.i443
  %3895 = add i64 %3894, 4
  store i64 %3895, i64* %PC.i443
  %3896 = inttoptr i64 %3893 to i32*
  %3897 = load i32, i32* %3896
  %3898 = sext i32 %3897 to i64
  store i64 %3898, i64* %RDX.i444, align 8
  store %struct.Memory* %loadMem_498e18, %struct.Memory** %MEMORY
  %loadMem_498e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 33
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %3901 to i64*
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 5
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3904 to i32*
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 1
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %3907 to i64*
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 7
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3910 to i64*
  %3911 = load i32, i32* %ECX.i
  %3912 = zext i32 %3911 to i64
  %3913 = load i64, i64* %RAX.i442
  %3914 = load i64, i64* %RDX.i
  %3915 = mul i64 %3914, 4
  %3916 = add i64 %3915, %3913
  %3917 = load i64, i64* %PC.i441
  %3918 = add i64 %3917, 3
  store i64 %3918, i64* %PC.i441
  %3919 = inttoptr i64 %3916 to i32*
  %3920 = load i32, i32* %3919
  %3921 = sub i32 %3911, %3920
  %3922 = icmp ult i32 %3911, %3920
  %3923 = zext i1 %3922 to i8
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3923, i8* %3924, align 1
  %3925 = and i32 %3921, 255
  %3926 = call i32 @llvm.ctpop.i32(i32 %3925)
  %3927 = trunc i32 %3926 to i8
  %3928 = and i8 %3927, 1
  %3929 = xor i8 %3928, 1
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3929, i8* %3930, align 1
  %3931 = xor i32 %3920, %3911
  %3932 = xor i32 %3931, %3921
  %3933 = lshr i32 %3932, 4
  %3934 = trunc i32 %3933 to i8
  %3935 = and i8 %3934, 1
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3935, i8* %3936, align 1
  %3937 = icmp eq i32 %3921, 0
  %3938 = zext i1 %3937 to i8
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3938, i8* %3939, align 1
  %3940 = lshr i32 %3921, 31
  %3941 = trunc i32 %3940 to i8
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3941, i8* %3942, align 1
  %3943 = lshr i32 %3911, 31
  %3944 = lshr i32 %3920, 31
  %3945 = xor i32 %3944, %3943
  %3946 = xor i32 %3940, %3943
  %3947 = add i32 %3946, %3945
  %3948 = icmp eq i32 %3947, 2
  %3949 = zext i1 %3948 to i8
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3949, i8* %3950, align 1
  store %struct.Memory* %loadMem_498e1c, %struct.Memory** %MEMORY
  %loadMem_498e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 33
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %3953 to i64*
  %3954 = load i64, i64* %PC.i440
  %3955 = add i64 %3954, 11
  %3956 = load i64, i64* %PC.i440
  %3957 = add i64 %3956, 6
  %3958 = load i64, i64* %PC.i440
  %3959 = add i64 %3958, 6
  store i64 %3959, i64* %PC.i440
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3961 = load i8, i8* %3960, align 1
  %3962 = icmp eq i8 %3961, 0
  %3963 = zext i1 %3962 to i8
  store i8 %3963, i8* %BRANCH_TAKEN, align 1
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3965 = select i1 %3962, i64 %3955, i64 %3957
  store i64 %3965, i64* %3964, align 8
  store %struct.Memory* %loadMem_498e1f, %struct.Memory** %MEMORY
  %loadBr_498e1f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498e1f = icmp eq i8 %loadBr_498e1f, 1
  br i1 %cmpBr_498e1f, label %block_.L_498e2a, label %block_498e25

block_498e25:                                     ; preds = %block_498df1
  %loadMem_498e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 33
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %3968 to i64*
  %3969 = load i64, i64* %PC.i439
  %3970 = add i64 %3969, 894
  %3971 = load i64, i64* %PC.i439
  %3972 = add i64 %3971, 5
  store i64 %3972, i64* %PC.i439
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3970, i64* %3973, align 8
  store %struct.Memory* %loadMem_498e25, %struct.Memory** %MEMORY
  br label %block_.L_4991a3

block_.L_498e2a:                                  ; preds = %block_498df1
  %loadMem_498e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3975 = getelementptr inbounds %struct.GPR, %struct.GPR* %3974, i32 0, i32 33
  %3976 = getelementptr inbounds %struct.Reg, %struct.Reg* %3975, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %3976 to i64*
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 1
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %3979 to i64*
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 15
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %3982 to i64*
  %3983 = load i64, i64* %RBP.i438
  %3984 = sub i64 %3983, 12
  %3985 = load i64, i64* %PC.i436
  %3986 = add i64 %3985, 4
  store i64 %3986, i64* %PC.i436
  %3987 = inttoptr i64 %3984 to i32*
  %3988 = load i32, i32* %3987
  %3989 = sext i32 %3988 to i64
  %3990 = mul i64 %3989, 20
  %3991 = trunc i64 %3990 to i32
  %3992 = and i64 %3990, 4294967295
  store i64 %3992, i64* %RAX.i437, align 8
  %3993 = shl i64 %3990, 32
  %3994 = ashr exact i64 %3993, 32
  %3995 = icmp ne i64 %3994, %3990
  %3996 = zext i1 %3995 to i8
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3996, i8* %3997, align 1
  %3998 = and i32 %3991, 255
  %3999 = call i32 @llvm.ctpop.i32(i32 %3998)
  %4000 = trunc i32 %3999 to i8
  %4001 = and i8 %4000, 1
  %4002 = xor i8 %4001, 1
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4002, i8* %4003, align 1
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4004, align 1
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4005, align 1
  %4006 = lshr i32 %3991, 31
  %4007 = trunc i32 %4006 to i8
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4007, i8* %4008, align 1
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3996, i8* %4009, align 1
  store %struct.Memory* %loadMem_498e2a, %struct.Memory** %MEMORY
  %loadMem_498e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 33
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %4012 to i64*
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4014 = getelementptr inbounds %struct.GPR, %struct.GPR* %4013, i32 0, i32 1
  %4015 = getelementptr inbounds %struct.Reg, %struct.Reg* %4014, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %4015 to i64*
  %4016 = load i64, i64* %RAX.i435
  %4017 = load i64, i64* %PC.i434
  %4018 = add i64 %4017, 3
  store i64 %4018, i64* %PC.i434
  %4019 = trunc i64 %4016 to i32
  %4020 = add i32 21, %4019
  %4021 = zext i32 %4020 to i64
  store i64 %4021, i64* %RAX.i435, align 8
  %4022 = icmp ult i32 %4020, %4019
  %4023 = icmp ult i32 %4020, 21
  %4024 = or i1 %4022, %4023
  %4025 = zext i1 %4024 to i8
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4025, i8* %4026, align 1
  %4027 = and i32 %4020, 255
  %4028 = call i32 @llvm.ctpop.i32(i32 %4027)
  %4029 = trunc i32 %4028 to i8
  %4030 = and i8 %4029, 1
  %4031 = xor i8 %4030, 1
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4031, i8* %4032, align 1
  %4033 = xor i64 21, %4016
  %4034 = trunc i64 %4033 to i32
  %4035 = xor i32 %4034, %4020
  %4036 = lshr i32 %4035, 4
  %4037 = trunc i32 %4036 to i8
  %4038 = and i8 %4037, 1
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4038, i8* %4039, align 1
  %4040 = icmp eq i32 %4020, 0
  %4041 = zext i1 %4040 to i8
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4041, i8* %4042, align 1
  %4043 = lshr i32 %4020, 31
  %4044 = trunc i32 %4043 to i8
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4044, i8* %4045, align 1
  %4046 = lshr i32 %4019, 31
  %4047 = xor i32 %4043, %4046
  %4048 = add i32 %4047, %4043
  %4049 = icmp eq i32 %4048, 2
  %4050 = zext i1 %4049 to i8
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4050, i8* %4051, align 1
  store %struct.Memory* %loadMem_498e2e, %struct.Memory** %MEMORY
  %loadMem_498e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4053 = getelementptr inbounds %struct.GPR, %struct.GPR* %4052, i32 0, i32 33
  %4054 = getelementptr inbounds %struct.Reg, %struct.Reg* %4053, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %4054 to i64*
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4056 = getelementptr inbounds %struct.GPR, %struct.GPR* %4055, i32 0, i32 1
  %4057 = getelementptr inbounds %struct.Reg, %struct.Reg* %4056, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %4057 to i64*
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 15
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %4060 to i64*
  %4061 = load i64, i64* %RAX.i432
  %4062 = load i64, i64* %RBP.i433
  %4063 = sub i64 %4062, 16
  %4064 = load i64, i64* %PC.i431
  %4065 = add i64 %4064, 3
  store i64 %4065, i64* %PC.i431
  %4066 = trunc i64 %4061 to i32
  %4067 = inttoptr i64 %4063 to i32*
  %4068 = load i32, i32* %4067
  %4069 = add i32 %4068, %4066
  %4070 = zext i32 %4069 to i64
  store i64 %4070, i64* %RAX.i432, align 8
  %4071 = icmp ult i32 %4069, %4066
  %4072 = icmp ult i32 %4069, %4068
  %4073 = or i1 %4071, %4072
  %4074 = zext i1 %4073 to i8
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4074, i8* %4075, align 1
  %4076 = and i32 %4069, 255
  %4077 = call i32 @llvm.ctpop.i32(i32 %4076)
  %4078 = trunc i32 %4077 to i8
  %4079 = and i8 %4078, 1
  %4080 = xor i8 %4079, 1
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4080, i8* %4081, align 1
  %4082 = xor i32 %4068, %4066
  %4083 = xor i32 %4082, %4069
  %4084 = lshr i32 %4083, 4
  %4085 = trunc i32 %4084 to i8
  %4086 = and i8 %4085, 1
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4086, i8* %4087, align 1
  %4088 = icmp eq i32 %4069, 0
  %4089 = zext i1 %4088 to i8
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4089, i8* %4090, align 1
  %4091 = lshr i32 %4069, 31
  %4092 = trunc i32 %4091 to i8
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4092, i8* %4093, align 1
  %4094 = lshr i32 %4066, 31
  %4095 = lshr i32 %4068, 31
  %4096 = xor i32 %4091, %4094
  %4097 = xor i32 %4091, %4095
  %4098 = add i32 %4096, %4097
  %4099 = icmp eq i32 %4098, 2
  %4100 = zext i1 %4099 to i8
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4100, i8* %4101, align 1
  store %struct.Memory* %loadMem_498e31, %struct.Memory** %MEMORY
  %loadMem_498e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4103 = getelementptr inbounds %struct.GPR, %struct.GPR* %4102, i32 0, i32 33
  %4104 = getelementptr inbounds %struct.Reg, %struct.Reg* %4103, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %4104 to i64*
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4106 = getelementptr inbounds %struct.GPR, %struct.GPR* %4105, i32 0, i32 1
  %4107 = getelementptr inbounds %struct.Reg, %struct.Reg* %4106, i32 0, i32 0
  %EAX.i429 = bitcast %union.anon* %4107 to i32*
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4109 = getelementptr inbounds %struct.GPR, %struct.GPR* %4108, i32 0, i32 5
  %4110 = getelementptr inbounds %struct.Reg, %struct.Reg* %4109, i32 0, i32 0
  %RCX.i430 = bitcast %union.anon* %4110 to i64*
  %4111 = load i32, i32* %EAX.i429
  %4112 = zext i32 %4111 to i64
  %4113 = load i64, i64* %PC.i428
  %4114 = add i64 %4113, 3
  store i64 %4114, i64* %PC.i428
  %4115 = shl i64 %4112, 32
  %4116 = ashr exact i64 %4115, 32
  store i64 %4116, i64* %RCX.i430, align 8
  store %struct.Memory* %loadMem_498e34, %struct.Memory** %MEMORY
  %loadMem_498e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 33
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %4119 to i64*
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 1
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %4122 to i64*
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 5
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %RCX.i427 = bitcast %union.anon* %4125 to i64*
  %4126 = load i64, i64* %RCX.i427
  %4127 = add i64 %4126, 12099168
  %4128 = load i64, i64* %PC.i425
  %4129 = add i64 %4128, 8
  store i64 %4129, i64* %PC.i425
  %4130 = inttoptr i64 %4127 to i8*
  %4131 = load i8, i8* %4130
  %4132 = zext i8 %4131 to i64
  store i64 %4132, i64* %RAX.i426, align 8
  store %struct.Memory* %loadMem_498e37, %struct.Memory** %MEMORY
  %loadMem_498e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 33
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %4135 to i64*
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 1
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %EAX.i424 = bitcast %union.anon* %4138 to i32*
  %4139 = load i32, i32* %EAX.i424
  %4140 = zext i32 %4139 to i64
  %4141 = load i64, i64* %PC.i423
  %4142 = add i64 %4141, 3
  store i64 %4142, i64* %PC.i423
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4143, align 1
  %4144 = and i32 %4139, 255
  %4145 = call i32 @llvm.ctpop.i32(i32 %4144)
  %4146 = trunc i32 %4145 to i8
  %4147 = and i8 %4146, 1
  %4148 = xor i8 %4147, 1
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4148, i8* %4149, align 1
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4150, align 1
  %4151 = icmp eq i32 %4139, 0
  %4152 = zext i1 %4151 to i8
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4152, i8* %4153, align 1
  %4154 = lshr i32 %4139, 31
  %4155 = trunc i32 %4154 to i8
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4155, i8* %4156, align 1
  %4157 = lshr i32 %4139, 31
  %4158 = xor i32 %4154, %4157
  %4159 = add i32 %4158, %4157
  %4160 = icmp eq i32 %4159, 2
  %4161 = zext i1 %4160 to i8
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4161, i8* %4162, align 1
  store %struct.Memory* %loadMem_498e3f, %struct.Memory** %MEMORY
  %loadMem_498e42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 33
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %4165 to i64*
  %4166 = load i64, i64* %PC.i422
  %4167 = add i64 %4166, 264
  %4168 = load i64, i64* %PC.i422
  %4169 = add i64 %4168, 6
  %4170 = load i64, i64* %PC.i422
  %4171 = add i64 %4170, 6
  store i64 %4171, i64* %PC.i422
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4173 = load i8, i8* %4172, align 1
  %4174 = icmp eq i8 %4173, 0
  %4175 = zext i1 %4174 to i8
  store i8 %4175, i8* %BRANCH_TAKEN, align 1
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4177 = select i1 %4174, i64 %4167, i64 %4169
  store i64 %4177, i64* %4176, align 8
  store %struct.Memory* %loadMem_498e42, %struct.Memory** %MEMORY
  %loadBr_498e42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498e42 = icmp eq i8 %loadBr_498e42, 1
  br i1 %cmpBr_498e42, label %block_.L_498f4a, label %block_498e48

block_498e48:                                     ; preds = %block_.L_498e2a
  %loadMem_498e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4179 = getelementptr inbounds %struct.GPR, %struct.GPR* %4178, i32 0, i32 33
  %4180 = getelementptr inbounds %struct.Reg, %struct.Reg* %4179, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %4180 to i64*
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 1
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %4183 to i64*
  %4184 = load i64, i64* %PC.i420
  %4185 = add i64 %4184, 10
  store i64 %4185, i64* %PC.i420
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i421, align 8
  store %struct.Memory* %loadMem_498e48, %struct.Memory** %MEMORY
  %loadMem_498e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 33
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %4188 to i64*
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4190 = getelementptr inbounds %struct.GPR, %struct.GPR* %4189, i32 0, i32 5
  %4191 = getelementptr inbounds %struct.Reg, %struct.Reg* %4190, i32 0, i32 0
  %RCX.i418 = bitcast %union.anon* %4191 to i64*
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4193 = getelementptr inbounds %struct.GPR, %struct.GPR* %4192, i32 0, i32 15
  %4194 = getelementptr inbounds %struct.Reg, %struct.Reg* %4193, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %4194 to i64*
  %4195 = load i64, i64* %RBP.i419
  %4196 = sub i64 %4195, 12
  %4197 = load i64, i64* %PC.i417
  %4198 = add i64 %4197, 4
  store i64 %4198, i64* %PC.i417
  %4199 = inttoptr i64 %4196 to i32*
  %4200 = load i32, i32* %4199
  %4201 = sext i32 %4200 to i64
  store i64 %4201, i64* %RCX.i418, align 8
  store %struct.Memory* %loadMem_498e52, %struct.Memory** %MEMORY
  %loadMem_498e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 33
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %4204 to i64*
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 5
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %RCX.i416 = bitcast %union.anon* %4207 to i64*
  %4208 = load i64, i64* %RCX.i416
  %4209 = load i64, i64* %PC.i415
  %4210 = add i64 %4209, 4
  store i64 %4210, i64* %PC.i415
  %4211 = sext i64 %4208 to i128
  %4212 = and i128 %4211, -18446744073709551616
  %4213 = zext i64 %4208 to i128
  %4214 = or i128 %4212, %4213
  %4215 = mul i128 76, %4214
  %4216 = trunc i128 %4215 to i64
  store i64 %4216, i64* %RCX.i416, align 8
  %4217 = sext i64 %4216 to i128
  %4218 = icmp ne i128 %4217, %4215
  %4219 = zext i1 %4218 to i8
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4219, i8* %4220, align 1
  %4221 = trunc i128 %4215 to i32
  %4222 = and i32 %4221, 255
  %4223 = call i32 @llvm.ctpop.i32(i32 %4222)
  %4224 = trunc i32 %4223 to i8
  %4225 = and i8 %4224, 1
  %4226 = xor i8 %4225, 1
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4226, i8* %4227, align 1
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4228, align 1
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4229, align 1
  %4230 = lshr i64 %4216, 63
  %4231 = trunc i64 %4230 to i8
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4231, i8* %4232, align 1
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4219, i8* %4233, align 1
  store %struct.Memory* %loadMem_498e56, %struct.Memory** %MEMORY
  %loadMem_498e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 33
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %4236 to i64*
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4238 = getelementptr inbounds %struct.GPR, %struct.GPR* %4237, i32 0, i32 1
  %4239 = getelementptr inbounds %struct.Reg, %struct.Reg* %4238, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %4239 to i64*
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4241 = getelementptr inbounds %struct.GPR, %struct.GPR* %4240, i32 0, i32 5
  %4242 = getelementptr inbounds %struct.Reg, %struct.Reg* %4241, i32 0, i32 0
  %RCX.i414 = bitcast %union.anon* %4242 to i64*
  %4243 = load i64, i64* %RAX.i413
  %4244 = load i64, i64* %RCX.i414
  %4245 = load i64, i64* %PC.i412
  %4246 = add i64 %4245, 3
  store i64 %4246, i64* %PC.i412
  %4247 = add i64 %4244, %4243
  store i64 %4247, i64* %RAX.i413, align 8
  %4248 = icmp ult i64 %4247, %4243
  %4249 = icmp ult i64 %4247, %4244
  %4250 = or i1 %4248, %4249
  %4251 = zext i1 %4250 to i8
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4251, i8* %4252, align 1
  %4253 = trunc i64 %4247 to i32
  %4254 = and i32 %4253, 255
  %4255 = call i32 @llvm.ctpop.i32(i32 %4254)
  %4256 = trunc i32 %4255 to i8
  %4257 = and i8 %4256, 1
  %4258 = xor i8 %4257, 1
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4258, i8* %4259, align 1
  %4260 = xor i64 %4244, %4243
  %4261 = xor i64 %4260, %4247
  %4262 = lshr i64 %4261, 4
  %4263 = trunc i64 %4262 to i8
  %4264 = and i8 %4263, 1
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4264, i8* %4265, align 1
  %4266 = icmp eq i64 %4247, 0
  %4267 = zext i1 %4266 to i8
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4267, i8* %4268, align 1
  %4269 = lshr i64 %4247, 63
  %4270 = trunc i64 %4269 to i8
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4270, i8* %4271, align 1
  %4272 = lshr i64 %4243, 63
  %4273 = lshr i64 %4244, 63
  %4274 = xor i64 %4269, %4272
  %4275 = xor i64 %4269, %4273
  %4276 = add i64 %4274, %4275
  %4277 = icmp eq i64 %4276, 2
  %4278 = zext i1 %4277 to i8
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4278, i8* %4279, align 1
  store %struct.Memory* %loadMem_498e5a, %struct.Memory** %MEMORY
  %loadMem_498e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4281 = getelementptr inbounds %struct.GPR, %struct.GPR* %4280, i32 0, i32 33
  %4282 = getelementptr inbounds %struct.Reg, %struct.Reg* %4281, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %4282 to i64*
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4284 = getelementptr inbounds %struct.GPR, %struct.GPR* %4283, i32 0, i32 5
  %4285 = getelementptr inbounds %struct.Reg, %struct.Reg* %4284, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %4285 to i64*
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 15
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %4288 to i64*
  %4289 = load i64, i64* %RBP.i411
  %4290 = sub i64 %4289, 16
  %4291 = load i64, i64* %PC.i409
  %4292 = add i64 %4291, 4
  store i64 %4292, i64* %PC.i409
  %4293 = inttoptr i64 %4290 to i32*
  %4294 = load i32, i32* %4293
  %4295 = sext i32 %4294 to i64
  store i64 %4295, i64* %RCX.i410, align 8
  store %struct.Memory* %loadMem_498e5d, %struct.Memory** %MEMORY
  %loadMem_498e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 33
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %4298 to i64*
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4300 = getelementptr inbounds %struct.GPR, %struct.GPR* %4299, i32 0, i32 1
  %4301 = getelementptr inbounds %struct.Reg, %struct.Reg* %4300, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %4301 to i64*
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4303 = getelementptr inbounds %struct.GPR, %struct.GPR* %4302, i32 0, i32 5
  %4304 = getelementptr inbounds %struct.Reg, %struct.Reg* %4303, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %4304 to i64*
  %4305 = load i64, i64* %RAX.i407
  %4306 = load i64, i64* %RCX.i408
  %4307 = mul i64 %4306, 4
  %4308 = add i64 %4307, %4305
  %4309 = load i64, i64* %PC.i406
  %4310 = add i64 %4309, 4
  store i64 %4310, i64* %PC.i406
  %4311 = inttoptr i64 %4308 to i32*
  %4312 = load i32, i32* %4311
  %4313 = sub i32 %4312, 1
  %4314 = icmp ult i32 %4312, 1
  %4315 = zext i1 %4314 to i8
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4315, i8* %4316, align 1
  %4317 = and i32 %4313, 255
  %4318 = call i32 @llvm.ctpop.i32(i32 %4317)
  %4319 = trunc i32 %4318 to i8
  %4320 = and i8 %4319, 1
  %4321 = xor i8 %4320, 1
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4321, i8* %4322, align 1
  %4323 = xor i32 %4312, 1
  %4324 = xor i32 %4323, %4313
  %4325 = lshr i32 %4324, 4
  %4326 = trunc i32 %4325 to i8
  %4327 = and i8 %4326, 1
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4327, i8* %4328, align 1
  %4329 = icmp eq i32 %4313, 0
  %4330 = zext i1 %4329 to i8
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4330, i8* %4331, align 1
  %4332 = lshr i32 %4313, 31
  %4333 = trunc i32 %4332 to i8
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4333, i8* %4334, align 1
  %4335 = lshr i32 %4312, 31
  %4336 = xor i32 %4332, %4335
  %4337 = add i32 %4336, %4335
  %4338 = icmp eq i32 %4337, 2
  %4339 = zext i1 %4338 to i8
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4339, i8* %4340, align 1
  store %struct.Memory* %loadMem_498e61, %struct.Memory** %MEMORY
  %loadMem_498e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4342 = getelementptr inbounds %struct.GPR, %struct.GPR* %4341, i32 0, i32 33
  %4343 = getelementptr inbounds %struct.Reg, %struct.Reg* %4342, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %4343 to i64*
  %4344 = load i64, i64* %PC.i405
  %4345 = add i64 %4344, 41
  %4346 = load i64, i64* %PC.i405
  %4347 = add i64 %4346, 6
  %4348 = load i64, i64* %PC.i405
  %4349 = add i64 %4348, 6
  store i64 %4349, i64* %PC.i405
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4351 = load i8, i8* %4350, align 1
  store i8 %4351, i8* %BRANCH_TAKEN, align 1
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4353 = icmp ne i8 %4351, 0
  %4354 = select i1 %4353, i64 %4345, i64 %4347
  store i64 %4354, i64* %4352, align 8
  store %struct.Memory* %loadMem_498e65, %struct.Memory** %MEMORY
  %loadBr_498e65 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498e65 = icmp eq i8 %loadBr_498e65, 1
  br i1 %cmpBr_498e65, label %block_.L_498e8e, label %block_498e6b

block_498e6b:                                     ; preds = %block_498e48
  %loadMem_498e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 33
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %4357 to i64*
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 1
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %4360 to i64*
  %4361 = load i64, i64* %PC.i403
  %4362 = add i64 %4361, 10
  store i64 %4362, i64* %PC.i403
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i404, align 8
  store %struct.Memory* %loadMem_498e6b, %struct.Memory** %MEMORY
  %loadMem_498e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4364 = getelementptr inbounds %struct.GPR, %struct.GPR* %4363, i32 0, i32 33
  %4365 = getelementptr inbounds %struct.Reg, %struct.Reg* %4364, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %4365 to i64*
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4367 = getelementptr inbounds %struct.GPR, %struct.GPR* %4366, i32 0, i32 5
  %4368 = getelementptr inbounds %struct.Reg, %struct.Reg* %4367, i32 0, i32 0
  %RCX.i401 = bitcast %union.anon* %4368 to i64*
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 15
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %4371 to i64*
  %4372 = load i64, i64* %RBP.i402
  %4373 = sub i64 %4372, 12
  %4374 = load i64, i64* %PC.i400
  %4375 = add i64 %4374, 4
  store i64 %4375, i64* %PC.i400
  %4376 = inttoptr i64 %4373 to i32*
  %4377 = load i32, i32* %4376
  %4378 = sext i32 %4377 to i64
  store i64 %4378, i64* %RCX.i401, align 8
  store %struct.Memory* %loadMem_498e75, %struct.Memory** %MEMORY
  %loadMem_498e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4380 = getelementptr inbounds %struct.GPR, %struct.GPR* %4379, i32 0, i32 33
  %4381 = getelementptr inbounds %struct.Reg, %struct.Reg* %4380, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %4381 to i64*
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4383 = getelementptr inbounds %struct.GPR, %struct.GPR* %4382, i32 0, i32 5
  %4384 = getelementptr inbounds %struct.Reg, %struct.Reg* %4383, i32 0, i32 0
  %RCX.i399 = bitcast %union.anon* %4384 to i64*
  %4385 = load i64, i64* %RCX.i399
  %4386 = load i64, i64* %PC.i398
  %4387 = add i64 %4386, 4
  store i64 %4387, i64* %PC.i398
  %4388 = sext i64 %4385 to i128
  %4389 = and i128 %4388, -18446744073709551616
  %4390 = zext i64 %4385 to i128
  %4391 = or i128 %4389, %4390
  %4392 = mul i128 76, %4391
  %4393 = trunc i128 %4392 to i64
  store i64 %4393, i64* %RCX.i399, align 8
  %4394 = sext i64 %4393 to i128
  %4395 = icmp ne i128 %4394, %4392
  %4396 = zext i1 %4395 to i8
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4396, i8* %4397, align 1
  %4398 = trunc i128 %4392 to i32
  %4399 = and i32 %4398, 255
  %4400 = call i32 @llvm.ctpop.i32(i32 %4399)
  %4401 = trunc i32 %4400 to i8
  %4402 = and i8 %4401, 1
  %4403 = xor i8 %4402, 1
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4403, i8* %4404, align 1
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4405, align 1
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4406, align 1
  %4407 = lshr i64 %4393, 63
  %4408 = trunc i64 %4407 to i8
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4408, i8* %4409, align 1
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4396, i8* %4410, align 1
  store %struct.Memory* %loadMem_498e79, %struct.Memory** %MEMORY
  %loadMem_498e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 33
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %4413 to i64*
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 1
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %4416 to i64*
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4418 = getelementptr inbounds %struct.GPR, %struct.GPR* %4417, i32 0, i32 5
  %4419 = getelementptr inbounds %struct.Reg, %struct.Reg* %4418, i32 0, i32 0
  %RCX.i397 = bitcast %union.anon* %4419 to i64*
  %4420 = load i64, i64* %RAX.i396
  %4421 = load i64, i64* %RCX.i397
  %4422 = load i64, i64* %PC.i395
  %4423 = add i64 %4422, 3
  store i64 %4423, i64* %PC.i395
  %4424 = add i64 %4421, %4420
  store i64 %4424, i64* %RAX.i396, align 8
  %4425 = icmp ult i64 %4424, %4420
  %4426 = icmp ult i64 %4424, %4421
  %4427 = or i1 %4425, %4426
  %4428 = zext i1 %4427 to i8
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4428, i8* %4429, align 1
  %4430 = trunc i64 %4424 to i32
  %4431 = and i32 %4430, 255
  %4432 = call i32 @llvm.ctpop.i32(i32 %4431)
  %4433 = trunc i32 %4432 to i8
  %4434 = and i8 %4433, 1
  %4435 = xor i8 %4434, 1
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4435, i8* %4436, align 1
  %4437 = xor i64 %4421, %4420
  %4438 = xor i64 %4437, %4424
  %4439 = lshr i64 %4438, 4
  %4440 = trunc i64 %4439 to i8
  %4441 = and i8 %4440, 1
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4441, i8* %4442, align 1
  %4443 = icmp eq i64 %4424, 0
  %4444 = zext i1 %4443 to i8
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4444, i8* %4445, align 1
  %4446 = lshr i64 %4424, 63
  %4447 = trunc i64 %4446 to i8
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4447, i8* %4448, align 1
  %4449 = lshr i64 %4420, 63
  %4450 = lshr i64 %4421, 63
  %4451 = xor i64 %4446, %4449
  %4452 = xor i64 %4446, %4450
  %4453 = add i64 %4451, %4452
  %4454 = icmp eq i64 %4453, 2
  %4455 = zext i1 %4454 to i8
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4455, i8* %4456, align 1
  store %struct.Memory* %loadMem_498e7d, %struct.Memory** %MEMORY
  %loadMem_498e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 33
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4459 to i64*
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 5
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %RCX.i393 = bitcast %union.anon* %4462 to i64*
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 15
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %4465 to i64*
  %4466 = load i64, i64* %RBP.i394
  %4467 = sub i64 %4466, 16
  %4468 = load i64, i64* %PC.i392
  %4469 = add i64 %4468, 4
  store i64 %4469, i64* %PC.i392
  %4470 = inttoptr i64 %4467 to i32*
  %4471 = load i32, i32* %4470
  %4472 = sext i32 %4471 to i64
  store i64 %4472, i64* %RCX.i393, align 8
  store %struct.Memory* %loadMem_498e80, %struct.Memory** %MEMORY
  %loadMem_498e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 33
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %4475 to i64*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 1
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %RAX.i390 = bitcast %union.anon* %4478 to i64*
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4480 = getelementptr inbounds %struct.GPR, %struct.GPR* %4479, i32 0, i32 5
  %4481 = getelementptr inbounds %struct.Reg, %struct.Reg* %4480, i32 0, i32 0
  %RCX.i391 = bitcast %union.anon* %4481 to i64*
  %4482 = load i64, i64* %RAX.i390
  %4483 = load i64, i64* %RCX.i391
  %4484 = mul i64 %4483, 4
  %4485 = add i64 %4484, %4482
  %4486 = load i64, i64* %PC.i389
  %4487 = add i64 %4486, 4
  store i64 %4487, i64* %PC.i389
  %4488 = inttoptr i64 %4485 to i32*
  %4489 = load i32, i32* %4488
  %4490 = sub i32 %4489, 7
  %4491 = icmp ult i32 %4489, 7
  %4492 = zext i1 %4491 to i8
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4492, i8* %4493, align 1
  %4494 = and i32 %4490, 255
  %4495 = call i32 @llvm.ctpop.i32(i32 %4494)
  %4496 = trunc i32 %4495 to i8
  %4497 = and i8 %4496, 1
  %4498 = xor i8 %4497, 1
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4498, i8* %4499, align 1
  %4500 = xor i32 %4489, 7
  %4501 = xor i32 %4500, %4490
  %4502 = lshr i32 %4501, 4
  %4503 = trunc i32 %4502 to i8
  %4504 = and i8 %4503, 1
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4504, i8* %4505, align 1
  %4506 = icmp eq i32 %4490, 0
  %4507 = zext i1 %4506 to i8
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4507, i8* %4508, align 1
  %4509 = lshr i32 %4490, 31
  %4510 = trunc i32 %4509 to i8
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4510, i8* %4511, align 1
  %4512 = lshr i32 %4489, 31
  %4513 = xor i32 %4509, %4512
  %4514 = add i32 %4513, %4512
  %4515 = icmp eq i32 %4514, 2
  %4516 = zext i1 %4515 to i8
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4516, i8* %4517, align 1
  store %struct.Memory* %loadMem_498e84, %struct.Memory** %MEMORY
  %loadMem_498e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4519 = getelementptr inbounds %struct.GPR, %struct.GPR* %4518, i32 0, i32 33
  %4520 = getelementptr inbounds %struct.Reg, %struct.Reg* %4519, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %4520 to i64*
  %4521 = load i64, i64* %PC.i388
  %4522 = add i64 %4521, 43
  %4523 = load i64, i64* %PC.i388
  %4524 = add i64 %4523, 6
  %4525 = load i64, i64* %PC.i388
  %4526 = add i64 %4525, 6
  store i64 %4526, i64* %PC.i388
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4528 = load i8, i8* %4527, align 1
  %4529 = icmp eq i8 %4528, 0
  %4530 = zext i1 %4529 to i8
  store i8 %4530, i8* %BRANCH_TAKEN, align 1
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4532 = select i1 %4529, i64 %4522, i64 %4524
  store i64 %4532, i64* %4531, align 8
  store %struct.Memory* %loadMem_498e88, %struct.Memory** %MEMORY
  %loadBr_498e88 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498e88 = icmp eq i8 %loadBr_498e88, 1
  br i1 %cmpBr_498e88, label %block_.L_498eb3, label %block_.L_498e8e

block_.L_498e8e:                                  ; preds = %block_498e6b, %block_498e48
  %loadMem_498e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 33
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %4535 to i64*
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4537 = getelementptr inbounds %struct.GPR, %struct.GPR* %4536, i32 0, i32 1
  %4538 = getelementptr inbounds %struct.Reg, %struct.Reg* %4537, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %4538 to i64*
  %4539 = load i64, i64* %PC.i386
  %4540 = add i64 %4539, 10
  store i64 %4540, i64* %PC.i386
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i387, align 8
  store %struct.Memory* %loadMem_498e8e, %struct.Memory** %MEMORY
  %loadMem_498e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 33
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %4543 to i64*
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 5
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %4546 to i64*
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4548 = getelementptr inbounds %struct.GPR, %struct.GPR* %4547, i32 0, i32 15
  %4549 = getelementptr inbounds %struct.Reg, %struct.Reg* %4548, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %4549 to i64*
  %4550 = load i64, i64* %RBP.i385
  %4551 = sub i64 %4550, 12
  %4552 = load i64, i64* %PC.i383
  %4553 = add i64 %4552, 4
  store i64 %4553, i64* %PC.i383
  %4554 = inttoptr i64 %4551 to i32*
  %4555 = load i32, i32* %4554
  %4556 = sext i32 %4555 to i64
  store i64 %4556, i64* %RCX.i384, align 8
  store %struct.Memory* %loadMem_498e98, %struct.Memory** %MEMORY
  %loadMem_498e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4558 = getelementptr inbounds %struct.GPR, %struct.GPR* %4557, i32 0, i32 33
  %4559 = getelementptr inbounds %struct.Reg, %struct.Reg* %4558, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %4559 to i64*
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 5
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %RCX.i382 = bitcast %union.anon* %4562 to i64*
  %4563 = load i64, i64* %RCX.i382
  %4564 = load i64, i64* %PC.i381
  %4565 = add i64 %4564, 4
  store i64 %4565, i64* %PC.i381
  %4566 = sext i64 %4563 to i128
  %4567 = and i128 %4566, -18446744073709551616
  %4568 = zext i64 %4563 to i128
  %4569 = or i128 %4567, %4568
  %4570 = mul i128 76, %4569
  %4571 = trunc i128 %4570 to i64
  store i64 %4571, i64* %RCX.i382, align 8
  %4572 = sext i64 %4571 to i128
  %4573 = icmp ne i128 %4572, %4570
  %4574 = zext i1 %4573 to i8
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4574, i8* %4575, align 1
  %4576 = trunc i128 %4570 to i32
  %4577 = and i32 %4576, 255
  %4578 = call i32 @llvm.ctpop.i32(i32 %4577)
  %4579 = trunc i32 %4578 to i8
  %4580 = and i8 %4579, 1
  %4581 = xor i8 %4580, 1
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4581, i8* %4582, align 1
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4583, align 1
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4584, align 1
  %4585 = lshr i64 %4571, 63
  %4586 = trunc i64 %4585 to i8
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4586, i8* %4587, align 1
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4574, i8* %4588, align 1
  store %struct.Memory* %loadMem_498e9c, %struct.Memory** %MEMORY
  %loadMem_498ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4590 = getelementptr inbounds %struct.GPR, %struct.GPR* %4589, i32 0, i32 33
  %4591 = getelementptr inbounds %struct.Reg, %struct.Reg* %4590, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %4591 to i64*
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4593 = getelementptr inbounds %struct.GPR, %struct.GPR* %4592, i32 0, i32 1
  %4594 = getelementptr inbounds %struct.Reg, %struct.Reg* %4593, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %4594 to i64*
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 5
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %4597 to i64*
  %4598 = load i64, i64* %RAX.i379
  %4599 = load i64, i64* %RCX.i380
  %4600 = load i64, i64* %PC.i378
  %4601 = add i64 %4600, 3
  store i64 %4601, i64* %PC.i378
  %4602 = add i64 %4599, %4598
  store i64 %4602, i64* %RAX.i379, align 8
  %4603 = icmp ult i64 %4602, %4598
  %4604 = icmp ult i64 %4602, %4599
  %4605 = or i1 %4603, %4604
  %4606 = zext i1 %4605 to i8
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4606, i8* %4607, align 1
  %4608 = trunc i64 %4602 to i32
  %4609 = and i32 %4608, 255
  %4610 = call i32 @llvm.ctpop.i32(i32 %4609)
  %4611 = trunc i32 %4610 to i8
  %4612 = and i8 %4611, 1
  %4613 = xor i8 %4612, 1
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4613, i8* %4614, align 1
  %4615 = xor i64 %4599, %4598
  %4616 = xor i64 %4615, %4602
  %4617 = lshr i64 %4616, 4
  %4618 = trunc i64 %4617 to i8
  %4619 = and i8 %4618, 1
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4619, i8* %4620, align 1
  %4621 = icmp eq i64 %4602, 0
  %4622 = zext i1 %4621 to i8
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4622, i8* %4623, align 1
  %4624 = lshr i64 %4602, 63
  %4625 = trunc i64 %4624 to i8
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4625, i8* %4626, align 1
  %4627 = lshr i64 %4598, 63
  %4628 = lshr i64 %4599, 63
  %4629 = xor i64 %4624, %4627
  %4630 = xor i64 %4624, %4628
  %4631 = add i64 %4629, %4630
  %4632 = icmp eq i64 %4631, 2
  %4633 = zext i1 %4632 to i8
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4633, i8* %4634, align 1
  store %struct.Memory* %loadMem_498ea0, %struct.Memory** %MEMORY
  %loadMem_498ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 33
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %4637 to i64*
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 5
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %4640 to i64*
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 15
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %4643 to i64*
  %4644 = load i64, i64* %RBP.i377
  %4645 = sub i64 %4644, 16
  %4646 = load i64, i64* %PC.i375
  %4647 = add i64 %4646, 4
  store i64 %4647, i64* %PC.i375
  %4648 = inttoptr i64 %4645 to i32*
  %4649 = load i32, i32* %4648
  %4650 = sext i32 %4649 to i64
  store i64 %4650, i64* %RCX.i376, align 8
  store %struct.Memory* %loadMem_498ea3, %struct.Memory** %MEMORY
  %loadMem_498ea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4652 = getelementptr inbounds %struct.GPR, %struct.GPR* %4651, i32 0, i32 33
  %4653 = getelementptr inbounds %struct.Reg, %struct.Reg* %4652, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %4653 to i64*
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4655 = getelementptr inbounds %struct.GPR, %struct.GPR* %4654, i32 0, i32 1
  %4656 = getelementptr inbounds %struct.Reg, %struct.Reg* %4655, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %4656 to i64*
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4658 = getelementptr inbounds %struct.GPR, %struct.GPR* %4657, i32 0, i32 5
  %4659 = getelementptr inbounds %struct.Reg, %struct.Reg* %4658, i32 0, i32 0
  %RCX.i374 = bitcast %union.anon* %4659 to i64*
  %4660 = load i64, i64* %RAX.i373
  %4661 = load i64, i64* %RCX.i374
  %4662 = mul i64 %4661, 4
  %4663 = add i64 %4662, %4660
  %4664 = load i64, i64* %PC.i372
  %4665 = add i64 %4664, 7
  store i64 %4665, i64* %PC.i372
  %4666 = inttoptr i64 %4663 to i32*
  store i32 15, i32* %4666
  store %struct.Memory* %loadMem_498ea7, %struct.Memory** %MEMORY
  %loadMem_498eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4668 = getelementptr inbounds %struct.GPR, %struct.GPR* %4667, i32 0, i32 33
  %4669 = getelementptr inbounds %struct.Reg, %struct.Reg* %4668, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %4669 to i64*
  %4670 = load i64, i64* %PC.i371
  %4671 = add i64 %4670, 151
  %4672 = load i64, i64* %PC.i371
  %4673 = add i64 %4672, 5
  store i64 %4673, i64* %PC.i371
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4671, i64* %4674, align 8
  store %struct.Memory* %loadMem_498eae, %struct.Memory** %MEMORY
  br label %block_.L_498f45

block_.L_498eb3:                                  ; preds = %block_498e6b
  %loadMem_498eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 33
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %4677 to i64*
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 1
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %4680 to i64*
  %4681 = load i64, i64* %PC.i369
  %4682 = add i64 %4681, 10
  store i64 %4682, i64* %PC.i369
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i370, align 8
  store %struct.Memory* %loadMem_498eb3, %struct.Memory** %MEMORY
  %loadMem_498ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4684 = getelementptr inbounds %struct.GPR, %struct.GPR* %4683, i32 0, i32 33
  %4685 = getelementptr inbounds %struct.Reg, %struct.Reg* %4684, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %4685 to i64*
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4687 = getelementptr inbounds %struct.GPR, %struct.GPR* %4686, i32 0, i32 5
  %4688 = getelementptr inbounds %struct.Reg, %struct.Reg* %4687, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %4688 to i64*
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4690 = getelementptr inbounds %struct.GPR, %struct.GPR* %4689, i32 0, i32 15
  %4691 = getelementptr inbounds %struct.Reg, %struct.Reg* %4690, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %4691 to i64*
  %4692 = load i64, i64* %RBP.i368
  %4693 = sub i64 %4692, 12
  %4694 = load i64, i64* %PC.i366
  %4695 = add i64 %4694, 4
  store i64 %4695, i64* %PC.i366
  %4696 = inttoptr i64 %4693 to i32*
  %4697 = load i32, i32* %4696
  %4698 = sext i32 %4697 to i64
  store i64 %4698, i64* %RCX.i367, align 8
  store %struct.Memory* %loadMem_498ebd, %struct.Memory** %MEMORY
  %loadMem_498ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 33
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %4701 to i64*
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 5
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %RCX.i365 = bitcast %union.anon* %4704 to i64*
  %4705 = load i64, i64* %RCX.i365
  %4706 = load i64, i64* %PC.i364
  %4707 = add i64 %4706, 4
  store i64 %4707, i64* %PC.i364
  %4708 = sext i64 %4705 to i128
  %4709 = and i128 %4708, -18446744073709551616
  %4710 = zext i64 %4705 to i128
  %4711 = or i128 %4709, %4710
  %4712 = mul i128 76, %4711
  %4713 = trunc i128 %4712 to i64
  store i64 %4713, i64* %RCX.i365, align 8
  %4714 = sext i64 %4713 to i128
  %4715 = icmp ne i128 %4714, %4712
  %4716 = zext i1 %4715 to i8
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4716, i8* %4717, align 1
  %4718 = trunc i128 %4712 to i32
  %4719 = and i32 %4718, 255
  %4720 = call i32 @llvm.ctpop.i32(i32 %4719)
  %4721 = trunc i32 %4720 to i8
  %4722 = and i8 %4721, 1
  %4723 = xor i8 %4722, 1
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4723, i8* %4724, align 1
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4725, align 1
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4726, align 1
  %4727 = lshr i64 %4713, 63
  %4728 = trunc i64 %4727 to i8
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4728, i8* %4729, align 1
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4716, i8* %4730, align 1
  store %struct.Memory* %loadMem_498ec1, %struct.Memory** %MEMORY
  %loadMem_498ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4732 = getelementptr inbounds %struct.GPR, %struct.GPR* %4731, i32 0, i32 33
  %4733 = getelementptr inbounds %struct.Reg, %struct.Reg* %4732, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %4733 to i64*
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4735 = getelementptr inbounds %struct.GPR, %struct.GPR* %4734, i32 0, i32 1
  %4736 = getelementptr inbounds %struct.Reg, %struct.Reg* %4735, i32 0, i32 0
  %RAX.i362 = bitcast %union.anon* %4736 to i64*
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4738 = getelementptr inbounds %struct.GPR, %struct.GPR* %4737, i32 0, i32 5
  %4739 = getelementptr inbounds %struct.Reg, %struct.Reg* %4738, i32 0, i32 0
  %RCX.i363 = bitcast %union.anon* %4739 to i64*
  %4740 = load i64, i64* %RAX.i362
  %4741 = load i64, i64* %RCX.i363
  %4742 = load i64, i64* %PC.i361
  %4743 = add i64 %4742, 3
  store i64 %4743, i64* %PC.i361
  %4744 = add i64 %4741, %4740
  store i64 %4744, i64* %RAX.i362, align 8
  %4745 = icmp ult i64 %4744, %4740
  %4746 = icmp ult i64 %4744, %4741
  %4747 = or i1 %4745, %4746
  %4748 = zext i1 %4747 to i8
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4748, i8* %4749, align 1
  %4750 = trunc i64 %4744 to i32
  %4751 = and i32 %4750, 255
  %4752 = call i32 @llvm.ctpop.i32(i32 %4751)
  %4753 = trunc i32 %4752 to i8
  %4754 = and i8 %4753, 1
  %4755 = xor i8 %4754, 1
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4755, i8* %4756, align 1
  %4757 = xor i64 %4741, %4740
  %4758 = xor i64 %4757, %4744
  %4759 = lshr i64 %4758, 4
  %4760 = trunc i64 %4759 to i8
  %4761 = and i8 %4760, 1
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4761, i8* %4762, align 1
  %4763 = icmp eq i64 %4744, 0
  %4764 = zext i1 %4763 to i8
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4764, i8* %4765, align 1
  %4766 = lshr i64 %4744, 63
  %4767 = trunc i64 %4766 to i8
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4767, i8* %4768, align 1
  %4769 = lshr i64 %4740, 63
  %4770 = lshr i64 %4741, 63
  %4771 = xor i64 %4766, %4769
  %4772 = xor i64 %4766, %4770
  %4773 = add i64 %4771, %4772
  %4774 = icmp eq i64 %4773, 2
  %4775 = zext i1 %4774 to i8
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4775, i8* %4776, align 1
  store %struct.Memory* %loadMem_498ec5, %struct.Memory** %MEMORY
  %loadMem_498ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 33
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %4779 to i64*
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4781 = getelementptr inbounds %struct.GPR, %struct.GPR* %4780, i32 0, i32 5
  %4782 = getelementptr inbounds %struct.Reg, %struct.Reg* %4781, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %4782 to i64*
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 15
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %4785 to i64*
  %4786 = load i64, i64* %RBP.i360
  %4787 = sub i64 %4786, 16
  %4788 = load i64, i64* %PC.i358
  %4789 = add i64 %4788, 4
  store i64 %4789, i64* %PC.i358
  %4790 = inttoptr i64 %4787 to i32*
  %4791 = load i32, i32* %4790
  %4792 = sext i32 %4791 to i64
  store i64 %4792, i64* %RCX.i359, align 8
  store %struct.Memory* %loadMem_498ec8, %struct.Memory** %MEMORY
  %loadMem_498ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4794 = getelementptr inbounds %struct.GPR, %struct.GPR* %4793, i32 0, i32 33
  %4795 = getelementptr inbounds %struct.Reg, %struct.Reg* %4794, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %4795 to i64*
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4797 = getelementptr inbounds %struct.GPR, %struct.GPR* %4796, i32 0, i32 1
  %4798 = getelementptr inbounds %struct.Reg, %struct.Reg* %4797, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %4798 to i64*
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 5
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %RCX.i357 = bitcast %union.anon* %4801 to i64*
  %4802 = load i64, i64* %RAX.i356
  %4803 = load i64, i64* %RCX.i357
  %4804 = mul i64 %4803, 4
  %4805 = add i64 %4804, %4802
  %4806 = load i64, i64* %PC.i355
  %4807 = add i64 %4806, 4
  store i64 %4807, i64* %PC.i355
  %4808 = inttoptr i64 %4805 to i32*
  %4809 = load i32, i32* %4808
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4810, align 1
  %4811 = and i32 %4809, 255
  %4812 = call i32 @llvm.ctpop.i32(i32 %4811)
  %4813 = trunc i32 %4812 to i8
  %4814 = and i8 %4813, 1
  %4815 = xor i8 %4814, 1
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4815, i8* %4816, align 1
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4817, align 1
  %4818 = icmp eq i32 %4809, 0
  %4819 = zext i1 %4818 to i8
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4819, i8* %4820, align 1
  %4821 = lshr i32 %4809, 31
  %4822 = trunc i32 %4821 to i8
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4822, i8* %4823, align 1
  %4824 = lshr i32 %4809, 31
  %4825 = xor i32 %4821, %4824
  %4826 = add i32 %4825, %4824
  %4827 = icmp eq i32 %4826, 2
  %4828 = zext i1 %4827 to i8
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4828, i8* %4829, align 1
  store %struct.Memory* %loadMem_498ecc, %struct.Memory** %MEMORY
  %loadMem_498ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4831 = getelementptr inbounds %struct.GPR, %struct.GPR* %4830, i32 0, i32 33
  %4832 = getelementptr inbounds %struct.Reg, %struct.Reg* %4831, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %4832 to i64*
  %4833 = load i64, i64* %PC.i354
  %4834 = add i64 %4833, 112
  %4835 = load i64, i64* %PC.i354
  %4836 = add i64 %4835, 6
  %4837 = load i64, i64* %PC.i354
  %4838 = add i64 %4837, 6
  store i64 %4838, i64* %PC.i354
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4840 = load i8, i8* %4839, align 1
  %4841 = icmp eq i8 %4840, 0
  %4842 = zext i1 %4841 to i8
  store i8 %4842, i8* %BRANCH_TAKEN, align 1
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4844 = select i1 %4841, i64 %4834, i64 %4836
  store i64 %4844, i64* %4843, align 8
  store %struct.Memory* %loadMem_498ed0, %struct.Memory** %MEMORY
  %loadBr_498ed0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498ed0 = icmp eq i8 %loadBr_498ed0, 1
  br i1 %cmpBr_498ed0, label %block_.L_498f40, label %block_498ed6

block_498ed6:                                     ; preds = %block_.L_498eb3
  %loadMem_498ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 33
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %4847 to i64*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 1
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %4850 to i64*
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4852 = getelementptr inbounds %struct.GPR, %struct.GPR* %4851, i32 0, i32 15
  %4853 = getelementptr inbounds %struct.Reg, %struct.Reg* %4852, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %4853 to i64*
  %4854 = load i64, i64* %RBP.i353
  %4855 = sub i64 %4854, 1472
  %4856 = load i64, i64* %PC.i351
  %4857 = add i64 %4856, 7
  store i64 %4857, i64* %PC.i351
  store i64 %4855, i64* %RAX.i352, align 8
  store %struct.Memory* %loadMem_498ed6, %struct.Memory** %MEMORY
  %loadMem_498edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4859 = getelementptr inbounds %struct.GPR, %struct.GPR* %4858, i32 0, i32 33
  %4860 = getelementptr inbounds %struct.Reg, %struct.Reg* %4859, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %4860 to i64*
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 5
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %4863 to i64*
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 15
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %4866 to i64*
  %4867 = load i64, i64* %RBP.i350
  %4868 = sub i64 %4867, 12
  %4869 = load i64, i64* %PC.i348
  %4870 = add i64 %4869, 4
  store i64 %4870, i64* %PC.i348
  %4871 = inttoptr i64 %4868 to i32*
  %4872 = load i32, i32* %4871
  %4873 = sext i32 %4872 to i64
  store i64 %4873, i64* %RCX.i349, align 8
  store %struct.Memory* %loadMem_498edd, %struct.Memory** %MEMORY
  %loadMem_498ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4875 = getelementptr inbounds %struct.GPR, %struct.GPR* %4874, i32 0, i32 33
  %4876 = getelementptr inbounds %struct.Reg, %struct.Reg* %4875, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %4876 to i64*
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 5
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %4879 to i64*
  %4880 = load i64, i64* %RCX.i347
  %4881 = load i64, i64* %PC.i346
  %4882 = add i64 %4881, 4
  store i64 %4882, i64* %PC.i346
  %4883 = sext i64 %4880 to i128
  %4884 = and i128 %4883, -18446744073709551616
  %4885 = zext i64 %4880 to i128
  %4886 = or i128 %4884, %4885
  %4887 = mul i128 76, %4886
  %4888 = trunc i128 %4887 to i64
  store i64 %4888, i64* %RCX.i347, align 8
  %4889 = sext i64 %4888 to i128
  %4890 = icmp ne i128 %4889, %4887
  %4891 = zext i1 %4890 to i8
  %4892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4891, i8* %4892, align 1
  %4893 = trunc i128 %4887 to i32
  %4894 = and i32 %4893, 255
  %4895 = call i32 @llvm.ctpop.i32(i32 %4894)
  %4896 = trunc i32 %4895 to i8
  %4897 = and i8 %4896, 1
  %4898 = xor i8 %4897, 1
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4898, i8* %4899, align 1
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4900, align 1
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4901, align 1
  %4902 = lshr i64 %4888, 63
  %4903 = trunc i64 %4902 to i8
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4903, i8* %4904, align 1
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4891, i8* %4905, align 1
  store %struct.Memory* %loadMem_498ee1, %struct.Memory** %MEMORY
  %loadMem_498ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4907 = getelementptr inbounds %struct.GPR, %struct.GPR* %4906, i32 0, i32 33
  %4908 = getelementptr inbounds %struct.Reg, %struct.Reg* %4907, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %4908 to i64*
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4910 = getelementptr inbounds %struct.GPR, %struct.GPR* %4909, i32 0, i32 1
  %4911 = getelementptr inbounds %struct.Reg, %struct.Reg* %4910, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %4911 to i64*
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4913 = getelementptr inbounds %struct.GPR, %struct.GPR* %4912, i32 0, i32 5
  %4914 = getelementptr inbounds %struct.Reg, %struct.Reg* %4913, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %4914 to i64*
  %4915 = load i64, i64* %RAX.i344
  %4916 = load i64, i64* %RCX.i345
  %4917 = load i64, i64* %PC.i343
  %4918 = add i64 %4917, 3
  store i64 %4918, i64* %PC.i343
  %4919 = add i64 %4916, %4915
  store i64 %4919, i64* %RAX.i344, align 8
  %4920 = icmp ult i64 %4919, %4915
  %4921 = icmp ult i64 %4919, %4916
  %4922 = or i1 %4920, %4921
  %4923 = zext i1 %4922 to i8
  %4924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4923, i8* %4924, align 1
  %4925 = trunc i64 %4919 to i32
  %4926 = and i32 %4925, 255
  %4927 = call i32 @llvm.ctpop.i32(i32 %4926)
  %4928 = trunc i32 %4927 to i8
  %4929 = and i8 %4928, 1
  %4930 = xor i8 %4929, 1
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4930, i8* %4931, align 1
  %4932 = xor i64 %4916, %4915
  %4933 = xor i64 %4932, %4919
  %4934 = lshr i64 %4933, 4
  %4935 = trunc i64 %4934 to i8
  %4936 = and i8 %4935, 1
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4936, i8* %4937, align 1
  %4938 = icmp eq i64 %4919, 0
  %4939 = zext i1 %4938 to i8
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4939, i8* %4940, align 1
  %4941 = lshr i64 %4919, 63
  %4942 = trunc i64 %4941 to i8
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4942, i8* %4943, align 1
  %4944 = lshr i64 %4915, 63
  %4945 = lshr i64 %4916, 63
  %4946 = xor i64 %4941, %4944
  %4947 = xor i64 %4941, %4945
  %4948 = add i64 %4946, %4947
  %4949 = icmp eq i64 %4948, 2
  %4950 = zext i1 %4949 to i8
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4950, i8* %4951, align 1
  store %struct.Memory* %loadMem_498ee5, %struct.Memory** %MEMORY
  %loadMem_498ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4953 = getelementptr inbounds %struct.GPR, %struct.GPR* %4952, i32 0, i32 33
  %4954 = getelementptr inbounds %struct.Reg, %struct.Reg* %4953, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %4954 to i64*
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4956 = getelementptr inbounds %struct.GPR, %struct.GPR* %4955, i32 0, i32 5
  %4957 = getelementptr inbounds %struct.Reg, %struct.Reg* %4956, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %4957 to i64*
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4959 = getelementptr inbounds %struct.GPR, %struct.GPR* %4958, i32 0, i32 15
  %4960 = getelementptr inbounds %struct.Reg, %struct.Reg* %4959, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %4960 to i64*
  %4961 = load i64, i64* %RBP.i342
  %4962 = sub i64 %4961, 16
  %4963 = load i64, i64* %PC.i340
  %4964 = add i64 %4963, 4
  store i64 %4964, i64* %PC.i340
  %4965 = inttoptr i64 %4962 to i32*
  %4966 = load i32, i32* %4965
  %4967 = sext i32 %4966 to i64
  store i64 %4967, i64* %RCX.i341, align 8
  store %struct.Memory* %loadMem_498ee8, %struct.Memory** %MEMORY
  %loadMem_498eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4969 = getelementptr inbounds %struct.GPR, %struct.GPR* %4968, i32 0, i32 33
  %4970 = getelementptr inbounds %struct.Reg, %struct.Reg* %4969, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %4970 to i64*
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4972 = getelementptr inbounds %struct.GPR, %struct.GPR* %4971, i32 0, i32 1
  %4973 = getelementptr inbounds %struct.Reg, %struct.Reg* %4972, i32 0, i32 0
  %RAX.i338 = bitcast %union.anon* %4973 to i64*
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4975 = getelementptr inbounds %struct.GPR, %struct.GPR* %4974, i32 0, i32 5
  %4976 = getelementptr inbounds %struct.Reg, %struct.Reg* %4975, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %4976 to i64*
  %4977 = load i64, i64* %RAX.i338
  %4978 = load i64, i64* %RCX.i339
  %4979 = mul i64 %4978, 4
  %4980 = add i64 %4979, %4977
  %4981 = load i64, i64* %PC.i337
  %4982 = add i64 %4981, 4
  store i64 %4982, i64* %PC.i337
  %4983 = inttoptr i64 %4980 to i32*
  %4984 = load i32, i32* %4983
  %4985 = sub i32 %4984, 2
  %4986 = icmp ult i32 %4984, 2
  %4987 = zext i1 %4986 to i8
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4987, i8* %4988, align 1
  %4989 = and i32 %4985, 255
  %4990 = call i32 @llvm.ctpop.i32(i32 %4989)
  %4991 = trunc i32 %4990 to i8
  %4992 = and i8 %4991, 1
  %4993 = xor i8 %4992, 1
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4993, i8* %4994, align 1
  %4995 = xor i32 %4984, 2
  %4996 = xor i32 %4995, %4985
  %4997 = lshr i32 %4996, 4
  %4998 = trunc i32 %4997 to i8
  %4999 = and i8 %4998, 1
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4999, i8* %5000, align 1
  %5001 = icmp eq i32 %4985, 0
  %5002 = zext i1 %5001 to i8
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5002, i8* %5003, align 1
  %5004 = lshr i32 %4985, 31
  %5005 = trunc i32 %5004 to i8
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5005, i8* %5006, align 1
  %5007 = lshr i32 %4984, 31
  %5008 = xor i32 %5004, %5007
  %5009 = add i32 %5008, %5007
  %5010 = icmp eq i32 %5009, 2
  %5011 = zext i1 %5010 to i8
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5011, i8* %5012, align 1
  store %struct.Memory* %loadMem_498eec, %struct.Memory** %MEMORY
  %loadMem_498ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5014 = getelementptr inbounds %struct.GPR, %struct.GPR* %5013, i32 0, i32 33
  %5015 = getelementptr inbounds %struct.Reg, %struct.Reg* %5014, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %5015 to i64*
  %5016 = load i64, i64* %PC.i336
  %5017 = add i64 %5016, 43
  %5018 = load i64, i64* %PC.i336
  %5019 = add i64 %5018, 6
  %5020 = load i64, i64* %PC.i336
  %5021 = add i64 %5020, 6
  store i64 %5021, i64* %PC.i336
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5023 = load i8, i8* %5022, align 1
  %5024 = icmp eq i8 %5023, 0
  %5025 = zext i1 %5024 to i8
  store i8 %5025, i8* %BRANCH_TAKEN, align 1
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5027 = select i1 %5024, i64 %5017, i64 %5019
  store i64 %5027, i64* %5026, align 8
  store %struct.Memory* %loadMem_498ef0, %struct.Memory** %MEMORY
  %loadBr_498ef0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498ef0 = icmp eq i8 %loadBr_498ef0, 1
  br i1 %cmpBr_498ef0, label %block_.L_498f1b, label %block_498ef6

block_498ef6:                                     ; preds = %block_498ed6
  %loadMem_498ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5029 = getelementptr inbounds %struct.GPR, %struct.GPR* %5028, i32 0, i32 33
  %5030 = getelementptr inbounds %struct.Reg, %struct.Reg* %5029, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %5030 to i64*
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5032 = getelementptr inbounds %struct.GPR, %struct.GPR* %5031, i32 0, i32 1
  %5033 = getelementptr inbounds %struct.Reg, %struct.Reg* %5032, i32 0, i32 0
  %RAX.i335 = bitcast %union.anon* %5033 to i64*
  %5034 = load i64, i64* %PC.i334
  %5035 = add i64 %5034, 10
  store i64 %5035, i64* %PC.i334
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i335, align 8
  store %struct.Memory* %loadMem_498ef6, %struct.Memory** %MEMORY
  %loadMem_498f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5037 = getelementptr inbounds %struct.GPR, %struct.GPR* %5036, i32 0, i32 33
  %5038 = getelementptr inbounds %struct.Reg, %struct.Reg* %5037, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %5038 to i64*
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5040 = getelementptr inbounds %struct.GPR, %struct.GPR* %5039, i32 0, i32 5
  %5041 = getelementptr inbounds %struct.Reg, %struct.Reg* %5040, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %5041 to i64*
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5043 = getelementptr inbounds %struct.GPR, %struct.GPR* %5042, i32 0, i32 15
  %5044 = getelementptr inbounds %struct.Reg, %struct.Reg* %5043, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %5044 to i64*
  %5045 = load i64, i64* %RBP.i333
  %5046 = sub i64 %5045, 12
  %5047 = load i64, i64* %PC.i331
  %5048 = add i64 %5047, 4
  store i64 %5048, i64* %PC.i331
  %5049 = inttoptr i64 %5046 to i32*
  %5050 = load i32, i32* %5049
  %5051 = sext i32 %5050 to i64
  store i64 %5051, i64* %RCX.i332, align 8
  store %struct.Memory* %loadMem_498f00, %struct.Memory** %MEMORY
  %loadMem_498f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5053 = getelementptr inbounds %struct.GPR, %struct.GPR* %5052, i32 0, i32 33
  %5054 = getelementptr inbounds %struct.Reg, %struct.Reg* %5053, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %5054 to i64*
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5056 = getelementptr inbounds %struct.GPR, %struct.GPR* %5055, i32 0, i32 5
  %5057 = getelementptr inbounds %struct.Reg, %struct.Reg* %5056, i32 0, i32 0
  %RCX.i330 = bitcast %union.anon* %5057 to i64*
  %5058 = load i64, i64* %RCX.i330
  %5059 = load i64, i64* %PC.i329
  %5060 = add i64 %5059, 4
  store i64 %5060, i64* %PC.i329
  %5061 = sext i64 %5058 to i128
  %5062 = and i128 %5061, -18446744073709551616
  %5063 = zext i64 %5058 to i128
  %5064 = or i128 %5062, %5063
  %5065 = mul i128 76, %5064
  %5066 = trunc i128 %5065 to i64
  store i64 %5066, i64* %RCX.i330, align 8
  %5067 = sext i64 %5066 to i128
  %5068 = icmp ne i128 %5067, %5065
  %5069 = zext i1 %5068 to i8
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5069, i8* %5070, align 1
  %5071 = trunc i128 %5065 to i32
  %5072 = and i32 %5071, 255
  %5073 = call i32 @llvm.ctpop.i32(i32 %5072)
  %5074 = trunc i32 %5073 to i8
  %5075 = and i8 %5074, 1
  %5076 = xor i8 %5075, 1
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5076, i8* %5077, align 1
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5078, align 1
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5079, align 1
  %5080 = lshr i64 %5066, 63
  %5081 = trunc i64 %5080 to i8
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5081, i8* %5082, align 1
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5069, i8* %5083, align 1
  store %struct.Memory* %loadMem_498f04, %struct.Memory** %MEMORY
  %loadMem_498f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 33
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %5086 to i64*
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 1
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %5089 to i64*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 5
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %RCX.i328 = bitcast %union.anon* %5092 to i64*
  %5093 = load i64, i64* %RAX.i327
  %5094 = load i64, i64* %RCX.i328
  %5095 = load i64, i64* %PC.i326
  %5096 = add i64 %5095, 3
  store i64 %5096, i64* %PC.i326
  %5097 = add i64 %5094, %5093
  store i64 %5097, i64* %RAX.i327, align 8
  %5098 = icmp ult i64 %5097, %5093
  %5099 = icmp ult i64 %5097, %5094
  %5100 = or i1 %5098, %5099
  %5101 = zext i1 %5100 to i8
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5101, i8* %5102, align 1
  %5103 = trunc i64 %5097 to i32
  %5104 = and i32 %5103, 255
  %5105 = call i32 @llvm.ctpop.i32(i32 %5104)
  %5106 = trunc i32 %5105 to i8
  %5107 = and i8 %5106, 1
  %5108 = xor i8 %5107, 1
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5108, i8* %5109, align 1
  %5110 = xor i64 %5094, %5093
  %5111 = xor i64 %5110, %5097
  %5112 = lshr i64 %5111, 4
  %5113 = trunc i64 %5112 to i8
  %5114 = and i8 %5113, 1
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5114, i8* %5115, align 1
  %5116 = icmp eq i64 %5097, 0
  %5117 = zext i1 %5116 to i8
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5117, i8* %5118, align 1
  %5119 = lshr i64 %5097, 63
  %5120 = trunc i64 %5119 to i8
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5120, i8* %5121, align 1
  %5122 = lshr i64 %5093, 63
  %5123 = lshr i64 %5094, 63
  %5124 = xor i64 %5119, %5122
  %5125 = xor i64 %5119, %5123
  %5126 = add i64 %5124, %5125
  %5127 = icmp eq i64 %5126, 2
  %5128 = zext i1 %5127 to i8
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5128, i8* %5129, align 1
  store %struct.Memory* %loadMem_498f08, %struct.Memory** %MEMORY
  %loadMem_498f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5131 = getelementptr inbounds %struct.GPR, %struct.GPR* %5130, i32 0, i32 33
  %5132 = getelementptr inbounds %struct.Reg, %struct.Reg* %5131, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %5132 to i64*
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5134 = getelementptr inbounds %struct.GPR, %struct.GPR* %5133, i32 0, i32 5
  %5135 = getelementptr inbounds %struct.Reg, %struct.Reg* %5134, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %5135 to i64*
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5137 = getelementptr inbounds %struct.GPR, %struct.GPR* %5136, i32 0, i32 15
  %5138 = getelementptr inbounds %struct.Reg, %struct.Reg* %5137, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %5138 to i64*
  %5139 = load i64, i64* %RBP.i325
  %5140 = sub i64 %5139, 16
  %5141 = load i64, i64* %PC.i323
  %5142 = add i64 %5141, 4
  store i64 %5142, i64* %PC.i323
  %5143 = inttoptr i64 %5140 to i32*
  %5144 = load i32, i32* %5143
  %5145 = sext i32 %5144 to i64
  store i64 %5145, i64* %RCX.i324, align 8
  store %struct.Memory* %loadMem_498f0b, %struct.Memory** %MEMORY
  %loadMem_498f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5147 = getelementptr inbounds %struct.GPR, %struct.GPR* %5146, i32 0, i32 33
  %5148 = getelementptr inbounds %struct.Reg, %struct.Reg* %5147, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %5148 to i64*
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5150 = getelementptr inbounds %struct.GPR, %struct.GPR* %5149, i32 0, i32 1
  %5151 = getelementptr inbounds %struct.Reg, %struct.Reg* %5150, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %5151 to i64*
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5153 = getelementptr inbounds %struct.GPR, %struct.GPR* %5152, i32 0, i32 5
  %5154 = getelementptr inbounds %struct.Reg, %struct.Reg* %5153, i32 0, i32 0
  %RCX.i322 = bitcast %union.anon* %5154 to i64*
  %5155 = load i64, i64* %RAX.i321
  %5156 = load i64, i64* %RCX.i322
  %5157 = mul i64 %5156, 4
  %5158 = add i64 %5157, %5155
  %5159 = load i64, i64* %PC.i320
  %5160 = add i64 %5159, 7
  store i64 %5160, i64* %PC.i320
  %5161 = inttoptr i64 %5158 to i32*
  store i32 14, i32* %5161
  store %struct.Memory* %loadMem_498f0f, %struct.Memory** %MEMORY
  %loadMem_498f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5163 = getelementptr inbounds %struct.GPR, %struct.GPR* %5162, i32 0, i32 33
  %5164 = getelementptr inbounds %struct.Reg, %struct.Reg* %5163, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %5164 to i64*
  %5165 = load i64, i64* %PC.i319
  %5166 = add i64 %5165, 37
  %5167 = load i64, i64* %PC.i319
  %5168 = add i64 %5167, 5
  store i64 %5168, i64* %PC.i319
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5166, i64* %5169, align 8
  store %struct.Memory* %loadMem_498f16, %struct.Memory** %MEMORY
  br label %block_.L_498f3b

block_.L_498f1b:                                  ; preds = %block_498ed6
  %loadMem_498f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5171 = getelementptr inbounds %struct.GPR, %struct.GPR* %5170, i32 0, i32 33
  %5172 = getelementptr inbounds %struct.Reg, %struct.Reg* %5171, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %5172 to i64*
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5174 = getelementptr inbounds %struct.GPR, %struct.GPR* %5173, i32 0, i32 1
  %5175 = getelementptr inbounds %struct.Reg, %struct.Reg* %5174, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %5175 to i64*
  %5176 = load i64, i64* %PC.i317
  %5177 = add i64 %5176, 10
  store i64 %5177, i64* %PC.i317
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i318, align 8
  store %struct.Memory* %loadMem_498f1b, %struct.Memory** %MEMORY
  %loadMem_498f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5179 = getelementptr inbounds %struct.GPR, %struct.GPR* %5178, i32 0, i32 33
  %5180 = getelementptr inbounds %struct.Reg, %struct.Reg* %5179, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %5180 to i64*
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5182 = getelementptr inbounds %struct.GPR, %struct.GPR* %5181, i32 0, i32 5
  %5183 = getelementptr inbounds %struct.Reg, %struct.Reg* %5182, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %5183 to i64*
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5185 = getelementptr inbounds %struct.GPR, %struct.GPR* %5184, i32 0, i32 15
  %5186 = getelementptr inbounds %struct.Reg, %struct.Reg* %5185, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %5186 to i64*
  %5187 = load i64, i64* %RBP.i316
  %5188 = sub i64 %5187, 12
  %5189 = load i64, i64* %PC.i314
  %5190 = add i64 %5189, 4
  store i64 %5190, i64* %PC.i314
  %5191 = inttoptr i64 %5188 to i32*
  %5192 = load i32, i32* %5191
  %5193 = sext i32 %5192 to i64
  store i64 %5193, i64* %RCX.i315, align 8
  store %struct.Memory* %loadMem_498f25, %struct.Memory** %MEMORY
  %loadMem_498f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5195 = getelementptr inbounds %struct.GPR, %struct.GPR* %5194, i32 0, i32 33
  %5196 = getelementptr inbounds %struct.Reg, %struct.Reg* %5195, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %5196 to i64*
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5198 = getelementptr inbounds %struct.GPR, %struct.GPR* %5197, i32 0, i32 5
  %5199 = getelementptr inbounds %struct.Reg, %struct.Reg* %5198, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %5199 to i64*
  %5200 = load i64, i64* %RCX.i313
  %5201 = load i64, i64* %PC.i312
  %5202 = add i64 %5201, 4
  store i64 %5202, i64* %PC.i312
  %5203 = sext i64 %5200 to i128
  %5204 = and i128 %5203, -18446744073709551616
  %5205 = zext i64 %5200 to i128
  %5206 = or i128 %5204, %5205
  %5207 = mul i128 76, %5206
  %5208 = trunc i128 %5207 to i64
  store i64 %5208, i64* %RCX.i313, align 8
  %5209 = sext i64 %5208 to i128
  %5210 = icmp ne i128 %5209, %5207
  %5211 = zext i1 %5210 to i8
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5211, i8* %5212, align 1
  %5213 = trunc i128 %5207 to i32
  %5214 = and i32 %5213, 255
  %5215 = call i32 @llvm.ctpop.i32(i32 %5214)
  %5216 = trunc i32 %5215 to i8
  %5217 = and i8 %5216, 1
  %5218 = xor i8 %5217, 1
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5218, i8* %5219, align 1
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5220, align 1
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5221, align 1
  %5222 = lshr i64 %5208, 63
  %5223 = trunc i64 %5222 to i8
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5223, i8* %5224, align 1
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5211, i8* %5225, align 1
  store %struct.Memory* %loadMem_498f29, %struct.Memory** %MEMORY
  %loadMem_498f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5227 = getelementptr inbounds %struct.GPR, %struct.GPR* %5226, i32 0, i32 33
  %5228 = getelementptr inbounds %struct.Reg, %struct.Reg* %5227, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %5228 to i64*
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5230 = getelementptr inbounds %struct.GPR, %struct.GPR* %5229, i32 0, i32 1
  %5231 = getelementptr inbounds %struct.Reg, %struct.Reg* %5230, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %5231 to i64*
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5233 = getelementptr inbounds %struct.GPR, %struct.GPR* %5232, i32 0, i32 5
  %5234 = getelementptr inbounds %struct.Reg, %struct.Reg* %5233, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %5234 to i64*
  %5235 = load i64, i64* %RAX.i310
  %5236 = load i64, i64* %RCX.i311
  %5237 = load i64, i64* %PC.i309
  %5238 = add i64 %5237, 3
  store i64 %5238, i64* %PC.i309
  %5239 = add i64 %5236, %5235
  store i64 %5239, i64* %RAX.i310, align 8
  %5240 = icmp ult i64 %5239, %5235
  %5241 = icmp ult i64 %5239, %5236
  %5242 = or i1 %5240, %5241
  %5243 = zext i1 %5242 to i8
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5243, i8* %5244, align 1
  %5245 = trunc i64 %5239 to i32
  %5246 = and i32 %5245, 255
  %5247 = call i32 @llvm.ctpop.i32(i32 %5246)
  %5248 = trunc i32 %5247 to i8
  %5249 = and i8 %5248, 1
  %5250 = xor i8 %5249, 1
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5250, i8* %5251, align 1
  %5252 = xor i64 %5236, %5235
  %5253 = xor i64 %5252, %5239
  %5254 = lshr i64 %5253, 4
  %5255 = trunc i64 %5254 to i8
  %5256 = and i8 %5255, 1
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5256, i8* %5257, align 1
  %5258 = icmp eq i64 %5239, 0
  %5259 = zext i1 %5258 to i8
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5259, i8* %5260, align 1
  %5261 = lshr i64 %5239, 63
  %5262 = trunc i64 %5261 to i8
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5262, i8* %5263, align 1
  %5264 = lshr i64 %5235, 63
  %5265 = lshr i64 %5236, 63
  %5266 = xor i64 %5261, %5264
  %5267 = xor i64 %5261, %5265
  %5268 = add i64 %5266, %5267
  %5269 = icmp eq i64 %5268, 2
  %5270 = zext i1 %5269 to i8
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5270, i8* %5271, align 1
  store %struct.Memory* %loadMem_498f2d, %struct.Memory** %MEMORY
  %loadMem_498f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 33
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %5274 to i64*
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5276 = getelementptr inbounds %struct.GPR, %struct.GPR* %5275, i32 0, i32 5
  %5277 = getelementptr inbounds %struct.Reg, %struct.Reg* %5276, i32 0, i32 0
  %RCX.i307 = bitcast %union.anon* %5277 to i64*
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5279 = getelementptr inbounds %struct.GPR, %struct.GPR* %5278, i32 0, i32 15
  %5280 = getelementptr inbounds %struct.Reg, %struct.Reg* %5279, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %5280 to i64*
  %5281 = load i64, i64* %RBP.i308
  %5282 = sub i64 %5281, 16
  %5283 = load i64, i64* %PC.i306
  %5284 = add i64 %5283, 4
  store i64 %5284, i64* %PC.i306
  %5285 = inttoptr i64 %5282 to i32*
  %5286 = load i32, i32* %5285
  %5287 = sext i32 %5286 to i64
  store i64 %5287, i64* %RCX.i307, align 8
  store %struct.Memory* %loadMem_498f30, %struct.Memory** %MEMORY
  %loadMem_498f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5289 = getelementptr inbounds %struct.GPR, %struct.GPR* %5288, i32 0, i32 33
  %5290 = getelementptr inbounds %struct.Reg, %struct.Reg* %5289, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %5290 to i64*
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5292 = getelementptr inbounds %struct.GPR, %struct.GPR* %5291, i32 0, i32 1
  %5293 = getelementptr inbounds %struct.Reg, %struct.Reg* %5292, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %5293 to i64*
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5295 = getelementptr inbounds %struct.GPR, %struct.GPR* %5294, i32 0, i32 5
  %5296 = getelementptr inbounds %struct.Reg, %struct.Reg* %5295, i32 0, i32 0
  %RCX.i305 = bitcast %union.anon* %5296 to i64*
  %5297 = load i64, i64* %RAX.i304
  %5298 = load i64, i64* %RCX.i305
  %5299 = mul i64 %5298, 4
  %5300 = add i64 %5299, %5297
  %5301 = load i64, i64* %PC.i303
  %5302 = add i64 %5301, 7
  store i64 %5302, i64* %PC.i303
  %5303 = inttoptr i64 %5300 to i32*
  store i32 13, i32* %5303
  store %struct.Memory* %loadMem_498f34, %struct.Memory** %MEMORY
  br label %block_.L_498f3b

block_.L_498f3b:                                  ; preds = %block_.L_498f1b, %block_498ef6
  %loadMem_498f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5305 = getelementptr inbounds %struct.GPR, %struct.GPR* %5304, i32 0, i32 33
  %5306 = getelementptr inbounds %struct.Reg, %struct.Reg* %5305, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %5306 to i64*
  %5307 = load i64, i64* %PC.i302
  %5308 = add i64 %5307, 5
  %5309 = load i64, i64* %PC.i302
  %5310 = add i64 %5309, 5
  store i64 %5310, i64* %PC.i302
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5308, i64* %5311, align 8
  store %struct.Memory* %loadMem_498f3b, %struct.Memory** %MEMORY
  br label %block_.L_498f40

block_.L_498f40:                                  ; preds = %block_.L_498f3b, %block_.L_498eb3
  %loadMem_498f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 33
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %5314 to i64*
  %5315 = load i64, i64* %PC.i301
  %5316 = add i64 %5315, 5
  %5317 = load i64, i64* %PC.i301
  %5318 = add i64 %5317, 5
  store i64 %5318, i64* %PC.i301
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5316, i64* %5319, align 8
  store %struct.Memory* %loadMem_498f40, %struct.Memory** %MEMORY
  br label %block_.L_498f45

block_.L_498f45:                                  ; preds = %block_.L_498f40, %block_.L_498e8e
  %loadMem_498f45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5321 = getelementptr inbounds %struct.GPR, %struct.GPR* %5320, i32 0, i32 33
  %5322 = getelementptr inbounds %struct.Reg, %struct.Reg* %5321, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %5322 to i64*
  %5323 = load i64, i64* %PC.i300
  %5324 = add i64 %5323, 601
  %5325 = load i64, i64* %PC.i300
  %5326 = add i64 %5325, 5
  store i64 %5326, i64* %PC.i300
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5324, i64* %5327, align 8
  store %struct.Memory* %loadMem_498f45, %struct.Memory** %MEMORY
  br label %block_.L_49919e

block_.L_498f4a:                                  ; preds = %block_.L_498e2a
  %loadMem_498f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5329 = getelementptr inbounds %struct.GPR, %struct.GPR* %5328, i32 0, i32 33
  %5330 = getelementptr inbounds %struct.Reg, %struct.Reg* %5329, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %5330 to i64*
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5332 = getelementptr inbounds %struct.GPR, %struct.GPR* %5331, i32 0, i32 1
  %5333 = getelementptr inbounds %struct.Reg, %struct.Reg* %5332, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %5333 to i64*
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5335 = getelementptr inbounds %struct.GPR, %struct.GPR* %5334, i32 0, i32 15
  %5336 = getelementptr inbounds %struct.Reg, %struct.Reg* %5335, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %5336 to i64*
  %5337 = load i64, i64* %RBP.i299
  %5338 = sub i64 %5337, 12
  %5339 = load i64, i64* %PC.i297
  %5340 = add i64 %5339, 4
  store i64 %5340, i64* %PC.i297
  %5341 = inttoptr i64 %5338 to i32*
  %5342 = load i32, i32* %5341
  %5343 = sext i32 %5342 to i64
  %5344 = mul i64 %5343, 20
  %5345 = trunc i64 %5344 to i32
  %5346 = and i64 %5344, 4294967295
  store i64 %5346, i64* %RAX.i298, align 8
  %5347 = shl i64 %5344, 32
  %5348 = ashr exact i64 %5347, 32
  %5349 = icmp ne i64 %5348, %5344
  %5350 = zext i1 %5349 to i8
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5350, i8* %5351, align 1
  %5352 = and i32 %5345, 255
  %5353 = call i32 @llvm.ctpop.i32(i32 %5352)
  %5354 = trunc i32 %5353 to i8
  %5355 = and i8 %5354, 1
  %5356 = xor i8 %5355, 1
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5356, i8* %5357, align 1
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5358, align 1
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5359, align 1
  %5360 = lshr i32 %5345, 31
  %5361 = trunc i32 %5360 to i8
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5361, i8* %5362, align 1
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5350, i8* %5363, align 1
  store %struct.Memory* %loadMem_498f4a, %struct.Memory** %MEMORY
  %loadMem_498f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5365 = getelementptr inbounds %struct.GPR, %struct.GPR* %5364, i32 0, i32 33
  %5366 = getelementptr inbounds %struct.Reg, %struct.Reg* %5365, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %5366 to i64*
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5368 = getelementptr inbounds %struct.GPR, %struct.GPR* %5367, i32 0, i32 1
  %5369 = getelementptr inbounds %struct.Reg, %struct.Reg* %5368, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %5369 to i64*
  %5370 = load i64, i64* %RAX.i296
  %5371 = load i64, i64* %PC.i295
  %5372 = add i64 %5371, 3
  store i64 %5372, i64* %PC.i295
  %5373 = trunc i64 %5370 to i32
  %5374 = add i32 21, %5373
  %5375 = zext i32 %5374 to i64
  store i64 %5375, i64* %RAX.i296, align 8
  %5376 = icmp ult i32 %5374, %5373
  %5377 = icmp ult i32 %5374, 21
  %5378 = or i1 %5376, %5377
  %5379 = zext i1 %5378 to i8
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5379, i8* %5380, align 1
  %5381 = and i32 %5374, 255
  %5382 = call i32 @llvm.ctpop.i32(i32 %5381)
  %5383 = trunc i32 %5382 to i8
  %5384 = and i8 %5383, 1
  %5385 = xor i8 %5384, 1
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5385, i8* %5386, align 1
  %5387 = xor i64 21, %5370
  %5388 = trunc i64 %5387 to i32
  %5389 = xor i32 %5388, %5374
  %5390 = lshr i32 %5389, 4
  %5391 = trunc i32 %5390 to i8
  %5392 = and i8 %5391, 1
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5392, i8* %5393, align 1
  %5394 = icmp eq i32 %5374, 0
  %5395 = zext i1 %5394 to i8
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5395, i8* %5396, align 1
  %5397 = lshr i32 %5374, 31
  %5398 = trunc i32 %5397 to i8
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5398, i8* %5399, align 1
  %5400 = lshr i32 %5373, 31
  %5401 = xor i32 %5397, %5400
  %5402 = add i32 %5401, %5397
  %5403 = icmp eq i32 %5402, 2
  %5404 = zext i1 %5403 to i8
  %5405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5404, i8* %5405, align 1
  store %struct.Memory* %loadMem_498f4e, %struct.Memory** %MEMORY
  %loadMem_498f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5407 = getelementptr inbounds %struct.GPR, %struct.GPR* %5406, i32 0, i32 33
  %5408 = getelementptr inbounds %struct.Reg, %struct.Reg* %5407, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %5408 to i64*
  %5409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5410 = getelementptr inbounds %struct.GPR, %struct.GPR* %5409, i32 0, i32 1
  %5411 = getelementptr inbounds %struct.Reg, %struct.Reg* %5410, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %5411 to i64*
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5413 = getelementptr inbounds %struct.GPR, %struct.GPR* %5412, i32 0, i32 15
  %5414 = getelementptr inbounds %struct.Reg, %struct.Reg* %5413, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %5414 to i64*
  %5415 = load i64, i64* %RAX.i293
  %5416 = load i64, i64* %RBP.i294
  %5417 = sub i64 %5416, 16
  %5418 = load i64, i64* %PC.i292
  %5419 = add i64 %5418, 3
  store i64 %5419, i64* %PC.i292
  %5420 = trunc i64 %5415 to i32
  %5421 = inttoptr i64 %5417 to i32*
  %5422 = load i32, i32* %5421
  %5423 = add i32 %5422, %5420
  %5424 = zext i32 %5423 to i64
  store i64 %5424, i64* %RAX.i293, align 8
  %5425 = icmp ult i32 %5423, %5420
  %5426 = icmp ult i32 %5423, %5422
  %5427 = or i1 %5425, %5426
  %5428 = zext i1 %5427 to i8
  %5429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5428, i8* %5429, align 1
  %5430 = and i32 %5423, 255
  %5431 = call i32 @llvm.ctpop.i32(i32 %5430)
  %5432 = trunc i32 %5431 to i8
  %5433 = and i8 %5432, 1
  %5434 = xor i8 %5433, 1
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5434, i8* %5435, align 1
  %5436 = xor i32 %5422, %5420
  %5437 = xor i32 %5436, %5423
  %5438 = lshr i32 %5437, 4
  %5439 = trunc i32 %5438 to i8
  %5440 = and i8 %5439, 1
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5440, i8* %5441, align 1
  %5442 = icmp eq i32 %5423, 0
  %5443 = zext i1 %5442 to i8
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5443, i8* %5444, align 1
  %5445 = lshr i32 %5423, 31
  %5446 = trunc i32 %5445 to i8
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5446, i8* %5447, align 1
  %5448 = lshr i32 %5420, 31
  %5449 = lshr i32 %5422, 31
  %5450 = xor i32 %5445, %5448
  %5451 = xor i32 %5445, %5449
  %5452 = add i32 %5450, %5451
  %5453 = icmp eq i32 %5452, 2
  %5454 = zext i1 %5453 to i8
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5454, i8* %5455, align 1
  store %struct.Memory* %loadMem_498f51, %struct.Memory** %MEMORY
  %loadMem_498f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5457 = getelementptr inbounds %struct.GPR, %struct.GPR* %5456, i32 0, i32 33
  %5458 = getelementptr inbounds %struct.Reg, %struct.Reg* %5457, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %5458 to i64*
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5460 = getelementptr inbounds %struct.GPR, %struct.GPR* %5459, i32 0, i32 1
  %5461 = getelementptr inbounds %struct.Reg, %struct.Reg* %5460, i32 0, i32 0
  %EAX.i290 = bitcast %union.anon* %5461 to i32*
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5463 = getelementptr inbounds %struct.GPR, %struct.GPR* %5462, i32 0, i32 5
  %5464 = getelementptr inbounds %struct.Reg, %struct.Reg* %5463, i32 0, i32 0
  %RCX.i291 = bitcast %union.anon* %5464 to i64*
  %5465 = load i32, i32* %EAX.i290
  %5466 = zext i32 %5465 to i64
  %5467 = load i64, i64* %PC.i289
  %5468 = add i64 %5467, 3
  store i64 %5468, i64* %PC.i289
  %5469 = shl i64 %5466, 32
  %5470 = ashr exact i64 %5469, 32
  store i64 %5470, i64* %RCX.i291, align 8
  store %struct.Memory* %loadMem_498f54, %struct.Memory** %MEMORY
  %loadMem_498f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5472 = getelementptr inbounds %struct.GPR, %struct.GPR* %5471, i32 0, i32 33
  %5473 = getelementptr inbounds %struct.Reg, %struct.Reg* %5472, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %5473 to i64*
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5475 = getelementptr inbounds %struct.GPR, %struct.GPR* %5474, i32 0, i32 1
  %5476 = getelementptr inbounds %struct.Reg, %struct.Reg* %5475, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %5476 to i64*
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5478 = getelementptr inbounds %struct.GPR, %struct.GPR* %5477, i32 0, i32 5
  %5479 = getelementptr inbounds %struct.Reg, %struct.Reg* %5478, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %5479 to i64*
  %5480 = load i64, i64* %RCX.i288
  %5481 = add i64 %5480, 12099168
  %5482 = load i64, i64* %PC.i286
  %5483 = add i64 %5482, 8
  store i64 %5483, i64* %PC.i286
  %5484 = inttoptr i64 %5481 to i8*
  %5485 = load i8, i8* %5484
  %5486 = zext i8 %5485 to i64
  store i64 %5486, i64* %RAX.i287, align 8
  store %struct.Memory* %loadMem_498f57, %struct.Memory** %MEMORY
  %loadMem_498f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5488 = getelementptr inbounds %struct.GPR, %struct.GPR* %5487, i32 0, i32 33
  %5489 = getelementptr inbounds %struct.Reg, %struct.Reg* %5488, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %5489 to i64*
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5491 = getelementptr inbounds %struct.GPR, %struct.GPR* %5490, i32 0, i32 1
  %5492 = getelementptr inbounds %struct.Reg, %struct.Reg* %5491, i32 0, i32 0
  %EAX.i285 = bitcast %union.anon* %5492 to i32*
  %5493 = load i32, i32* %EAX.i285
  %5494 = zext i32 %5493 to i64
  %5495 = load i64, i64* %PC.i284
  %5496 = add i64 %5495, 3
  store i64 %5496, i64* %PC.i284
  %5497 = sub i32 %5493, 2
  %5498 = icmp ult i32 %5493, 2
  %5499 = zext i1 %5498 to i8
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5499, i8* %5500, align 1
  %5501 = and i32 %5497, 255
  %5502 = call i32 @llvm.ctpop.i32(i32 %5501)
  %5503 = trunc i32 %5502 to i8
  %5504 = and i8 %5503, 1
  %5505 = xor i8 %5504, 1
  %5506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5505, i8* %5506, align 1
  %5507 = xor i64 2, %5494
  %5508 = trunc i64 %5507 to i32
  %5509 = xor i32 %5508, %5497
  %5510 = lshr i32 %5509, 4
  %5511 = trunc i32 %5510 to i8
  %5512 = and i8 %5511, 1
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5512, i8* %5513, align 1
  %5514 = icmp eq i32 %5497, 0
  %5515 = zext i1 %5514 to i8
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5515, i8* %5516, align 1
  %5517 = lshr i32 %5497, 31
  %5518 = trunc i32 %5517 to i8
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5518, i8* %5519, align 1
  %5520 = lshr i32 %5493, 31
  %5521 = xor i32 %5517, %5520
  %5522 = add i32 %5521, %5520
  %5523 = icmp eq i32 %5522, 2
  %5524 = zext i1 %5523 to i8
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5524, i8* %5525, align 1
  store %struct.Memory* %loadMem_498f5f, %struct.Memory** %MEMORY
  %loadMem_498f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5527 = getelementptr inbounds %struct.GPR, %struct.GPR* %5526, i32 0, i32 33
  %5528 = getelementptr inbounds %struct.Reg, %struct.Reg* %5527, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %5528 to i64*
  %5529 = load i64, i64* %PC.i283
  %5530 = add i64 %5529, 269
  %5531 = load i64, i64* %PC.i283
  %5532 = add i64 %5531, 6
  %5533 = load i64, i64* %PC.i283
  %5534 = add i64 %5533, 6
  store i64 %5534, i64* %PC.i283
  %5535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5536 = load i8, i8* %5535, align 1
  %5537 = icmp eq i8 %5536, 0
  %5538 = zext i1 %5537 to i8
  store i8 %5538, i8* %BRANCH_TAKEN, align 1
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5540 = select i1 %5537, i64 %5530, i64 %5532
  store i64 %5540, i64* %5539, align 8
  store %struct.Memory* %loadMem_498f62, %struct.Memory** %MEMORY
  %loadBr_498f62 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498f62 = icmp eq i8 %loadBr_498f62, 1
  br i1 %cmpBr_498f62, label %block_.L_49906f, label %block_498f68

block_498f68:                                     ; preds = %block_.L_498f4a
  %loadMem_498f68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5542 = getelementptr inbounds %struct.GPR, %struct.GPR* %5541, i32 0, i32 33
  %5543 = getelementptr inbounds %struct.Reg, %struct.Reg* %5542, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %5543 to i64*
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5545 = getelementptr inbounds %struct.GPR, %struct.GPR* %5544, i32 0, i32 1
  %5546 = getelementptr inbounds %struct.Reg, %struct.Reg* %5545, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %5546 to i64*
  %5547 = load i64, i64* %PC.i281
  %5548 = add i64 %5547, 10
  store i64 %5548, i64* %PC.i281
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i282, align 8
  store %struct.Memory* %loadMem_498f68, %struct.Memory** %MEMORY
  %loadMem_498f72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5550 = getelementptr inbounds %struct.GPR, %struct.GPR* %5549, i32 0, i32 33
  %5551 = getelementptr inbounds %struct.Reg, %struct.Reg* %5550, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %5551 to i64*
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5553 = getelementptr inbounds %struct.GPR, %struct.GPR* %5552, i32 0, i32 5
  %5554 = getelementptr inbounds %struct.Reg, %struct.Reg* %5553, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %5554 to i64*
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 15
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %5557 to i64*
  %5558 = load i64, i64* %RBP.i280
  %5559 = sub i64 %5558, 12
  %5560 = load i64, i64* %PC.i278
  %5561 = add i64 %5560, 4
  store i64 %5561, i64* %PC.i278
  %5562 = inttoptr i64 %5559 to i32*
  %5563 = load i32, i32* %5562
  %5564 = sext i32 %5563 to i64
  store i64 %5564, i64* %RCX.i279, align 8
  store %struct.Memory* %loadMem_498f72, %struct.Memory** %MEMORY
  %loadMem_498f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5566 = getelementptr inbounds %struct.GPR, %struct.GPR* %5565, i32 0, i32 33
  %5567 = getelementptr inbounds %struct.Reg, %struct.Reg* %5566, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %5567 to i64*
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5569 = getelementptr inbounds %struct.GPR, %struct.GPR* %5568, i32 0, i32 5
  %5570 = getelementptr inbounds %struct.Reg, %struct.Reg* %5569, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %5570 to i64*
  %5571 = load i64, i64* %RCX.i277
  %5572 = load i64, i64* %PC.i276
  %5573 = add i64 %5572, 4
  store i64 %5573, i64* %PC.i276
  %5574 = sext i64 %5571 to i128
  %5575 = and i128 %5574, -18446744073709551616
  %5576 = zext i64 %5571 to i128
  %5577 = or i128 %5575, %5576
  %5578 = mul i128 76, %5577
  %5579 = trunc i128 %5578 to i64
  store i64 %5579, i64* %RCX.i277, align 8
  %5580 = sext i64 %5579 to i128
  %5581 = icmp ne i128 %5580, %5578
  %5582 = zext i1 %5581 to i8
  %5583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5582, i8* %5583, align 1
  %5584 = trunc i128 %5578 to i32
  %5585 = and i32 %5584, 255
  %5586 = call i32 @llvm.ctpop.i32(i32 %5585)
  %5587 = trunc i32 %5586 to i8
  %5588 = and i8 %5587, 1
  %5589 = xor i8 %5588, 1
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5589, i8* %5590, align 1
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5591, align 1
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5592, align 1
  %5593 = lshr i64 %5579, 63
  %5594 = trunc i64 %5593 to i8
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5594, i8* %5595, align 1
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5582, i8* %5596, align 1
  store %struct.Memory* %loadMem_498f76, %struct.Memory** %MEMORY
  %loadMem_498f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5598 = getelementptr inbounds %struct.GPR, %struct.GPR* %5597, i32 0, i32 33
  %5599 = getelementptr inbounds %struct.Reg, %struct.Reg* %5598, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %5599 to i64*
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5601 = getelementptr inbounds %struct.GPR, %struct.GPR* %5600, i32 0, i32 1
  %5602 = getelementptr inbounds %struct.Reg, %struct.Reg* %5601, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %5602 to i64*
  %5603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5604 = getelementptr inbounds %struct.GPR, %struct.GPR* %5603, i32 0, i32 5
  %5605 = getelementptr inbounds %struct.Reg, %struct.Reg* %5604, i32 0, i32 0
  %RCX.i275 = bitcast %union.anon* %5605 to i64*
  %5606 = load i64, i64* %RAX.i274
  %5607 = load i64, i64* %RCX.i275
  %5608 = load i64, i64* %PC.i273
  %5609 = add i64 %5608, 3
  store i64 %5609, i64* %PC.i273
  %5610 = add i64 %5607, %5606
  store i64 %5610, i64* %RAX.i274, align 8
  %5611 = icmp ult i64 %5610, %5606
  %5612 = icmp ult i64 %5610, %5607
  %5613 = or i1 %5611, %5612
  %5614 = zext i1 %5613 to i8
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5614, i8* %5615, align 1
  %5616 = trunc i64 %5610 to i32
  %5617 = and i32 %5616, 255
  %5618 = call i32 @llvm.ctpop.i32(i32 %5617)
  %5619 = trunc i32 %5618 to i8
  %5620 = and i8 %5619, 1
  %5621 = xor i8 %5620, 1
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5621, i8* %5622, align 1
  %5623 = xor i64 %5607, %5606
  %5624 = xor i64 %5623, %5610
  %5625 = lshr i64 %5624, 4
  %5626 = trunc i64 %5625 to i8
  %5627 = and i8 %5626, 1
  %5628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5627, i8* %5628, align 1
  %5629 = icmp eq i64 %5610, 0
  %5630 = zext i1 %5629 to i8
  %5631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5630, i8* %5631, align 1
  %5632 = lshr i64 %5610, 63
  %5633 = trunc i64 %5632 to i8
  %5634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5633, i8* %5634, align 1
  %5635 = lshr i64 %5606, 63
  %5636 = lshr i64 %5607, 63
  %5637 = xor i64 %5632, %5635
  %5638 = xor i64 %5632, %5636
  %5639 = add i64 %5637, %5638
  %5640 = icmp eq i64 %5639, 2
  %5641 = zext i1 %5640 to i8
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5641, i8* %5642, align 1
  store %struct.Memory* %loadMem_498f7a, %struct.Memory** %MEMORY
  %loadMem_498f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5644 = getelementptr inbounds %struct.GPR, %struct.GPR* %5643, i32 0, i32 33
  %5645 = getelementptr inbounds %struct.Reg, %struct.Reg* %5644, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %5645 to i64*
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5647 = getelementptr inbounds %struct.GPR, %struct.GPR* %5646, i32 0, i32 5
  %5648 = getelementptr inbounds %struct.Reg, %struct.Reg* %5647, i32 0, i32 0
  %RCX.i271 = bitcast %union.anon* %5648 to i64*
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5650 = getelementptr inbounds %struct.GPR, %struct.GPR* %5649, i32 0, i32 15
  %5651 = getelementptr inbounds %struct.Reg, %struct.Reg* %5650, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %5651 to i64*
  %5652 = load i64, i64* %RBP.i272
  %5653 = sub i64 %5652, 16
  %5654 = load i64, i64* %PC.i270
  %5655 = add i64 %5654, 4
  store i64 %5655, i64* %PC.i270
  %5656 = inttoptr i64 %5653 to i32*
  %5657 = load i32, i32* %5656
  %5658 = sext i32 %5657 to i64
  store i64 %5658, i64* %RCX.i271, align 8
  store %struct.Memory* %loadMem_498f7d, %struct.Memory** %MEMORY
  %loadMem_498f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5660 = getelementptr inbounds %struct.GPR, %struct.GPR* %5659, i32 0, i32 33
  %5661 = getelementptr inbounds %struct.Reg, %struct.Reg* %5660, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %5661 to i64*
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5663 = getelementptr inbounds %struct.GPR, %struct.GPR* %5662, i32 0, i32 1
  %5664 = getelementptr inbounds %struct.Reg, %struct.Reg* %5663, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %5664 to i64*
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5666 = getelementptr inbounds %struct.GPR, %struct.GPR* %5665, i32 0, i32 5
  %5667 = getelementptr inbounds %struct.Reg, %struct.Reg* %5666, i32 0, i32 0
  %RCX.i269 = bitcast %union.anon* %5667 to i64*
  %5668 = load i64, i64* %RAX.i268
  %5669 = load i64, i64* %RCX.i269
  %5670 = mul i64 %5669, 4
  %5671 = add i64 %5670, %5668
  %5672 = load i64, i64* %PC.i267
  %5673 = add i64 %5672, 4
  store i64 %5673, i64* %PC.i267
  %5674 = inttoptr i64 %5671 to i32*
  %5675 = load i32, i32* %5674
  %5676 = sub i32 %5675, 14
  %5677 = icmp ult i32 %5675, 14
  %5678 = zext i1 %5677 to i8
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5678, i8* %5679, align 1
  %5680 = and i32 %5676, 255
  %5681 = call i32 @llvm.ctpop.i32(i32 %5680)
  %5682 = trunc i32 %5681 to i8
  %5683 = and i8 %5682, 1
  %5684 = xor i8 %5683, 1
  %5685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5684, i8* %5685, align 1
  %5686 = xor i32 %5675, 14
  %5687 = xor i32 %5686, %5676
  %5688 = lshr i32 %5687, 4
  %5689 = trunc i32 %5688 to i8
  %5690 = and i8 %5689, 1
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5690, i8* %5691, align 1
  %5692 = icmp eq i32 %5676, 0
  %5693 = zext i1 %5692 to i8
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5693, i8* %5694, align 1
  %5695 = lshr i32 %5676, 31
  %5696 = trunc i32 %5695 to i8
  %5697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5696, i8* %5697, align 1
  %5698 = lshr i32 %5675, 31
  %5699 = xor i32 %5695, %5698
  %5700 = add i32 %5699, %5698
  %5701 = icmp eq i32 %5700, 2
  %5702 = zext i1 %5701 to i8
  %5703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5702, i8* %5703, align 1
  store %struct.Memory* %loadMem_498f81, %struct.Memory** %MEMORY
  %loadMem_498f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5705 = getelementptr inbounds %struct.GPR, %struct.GPR* %5704, i32 0, i32 33
  %5706 = getelementptr inbounds %struct.Reg, %struct.Reg* %5705, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %5706 to i64*
  %5707 = load i64, i64* %PC.i266
  %5708 = add i64 %5707, 43
  %5709 = load i64, i64* %PC.i266
  %5710 = add i64 %5709, 6
  %5711 = load i64, i64* %PC.i266
  %5712 = add i64 %5711, 6
  store i64 %5712, i64* %PC.i266
  %5713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5714 = load i8, i8* %5713, align 1
  %5715 = icmp eq i8 %5714, 0
  %5716 = zext i1 %5715 to i8
  store i8 %5716, i8* %BRANCH_TAKEN, align 1
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5718 = select i1 %5715, i64 %5708, i64 %5710
  store i64 %5718, i64* %5717, align 8
  store %struct.Memory* %loadMem_498f85, %struct.Memory** %MEMORY
  %loadBr_498f85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498f85 = icmp eq i8 %loadBr_498f85, 1
  br i1 %cmpBr_498f85, label %block_.L_498fb0, label %block_498f8b

block_498f8b:                                     ; preds = %block_498f68
  %loadMem_498f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5720 = getelementptr inbounds %struct.GPR, %struct.GPR* %5719, i32 0, i32 33
  %5721 = getelementptr inbounds %struct.Reg, %struct.Reg* %5720, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %5721 to i64*
  %5722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5723 = getelementptr inbounds %struct.GPR, %struct.GPR* %5722, i32 0, i32 1
  %5724 = getelementptr inbounds %struct.Reg, %struct.Reg* %5723, i32 0, i32 0
  %RAX.i265 = bitcast %union.anon* %5724 to i64*
  %5725 = load i64, i64* %PC.i264
  %5726 = add i64 %5725, 10
  store i64 %5726, i64* %PC.i264
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i265, align 8
  store %struct.Memory* %loadMem_498f8b, %struct.Memory** %MEMORY
  %loadMem_498f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5728 = getelementptr inbounds %struct.GPR, %struct.GPR* %5727, i32 0, i32 33
  %5729 = getelementptr inbounds %struct.Reg, %struct.Reg* %5728, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %5729 to i64*
  %5730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5731 = getelementptr inbounds %struct.GPR, %struct.GPR* %5730, i32 0, i32 5
  %5732 = getelementptr inbounds %struct.Reg, %struct.Reg* %5731, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %5732 to i64*
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5734 = getelementptr inbounds %struct.GPR, %struct.GPR* %5733, i32 0, i32 15
  %5735 = getelementptr inbounds %struct.Reg, %struct.Reg* %5734, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %5735 to i64*
  %5736 = load i64, i64* %RBP.i263
  %5737 = sub i64 %5736, 12
  %5738 = load i64, i64* %PC.i261
  %5739 = add i64 %5738, 4
  store i64 %5739, i64* %PC.i261
  %5740 = inttoptr i64 %5737 to i32*
  %5741 = load i32, i32* %5740
  %5742 = sext i32 %5741 to i64
  store i64 %5742, i64* %RCX.i262, align 8
  store %struct.Memory* %loadMem_498f95, %struct.Memory** %MEMORY
  %loadMem_498f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5744 = getelementptr inbounds %struct.GPR, %struct.GPR* %5743, i32 0, i32 33
  %5745 = getelementptr inbounds %struct.Reg, %struct.Reg* %5744, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %5745 to i64*
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5747 = getelementptr inbounds %struct.GPR, %struct.GPR* %5746, i32 0, i32 5
  %5748 = getelementptr inbounds %struct.Reg, %struct.Reg* %5747, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %5748 to i64*
  %5749 = load i64, i64* %RCX.i260
  %5750 = load i64, i64* %PC.i259
  %5751 = add i64 %5750, 4
  store i64 %5751, i64* %PC.i259
  %5752 = sext i64 %5749 to i128
  %5753 = and i128 %5752, -18446744073709551616
  %5754 = zext i64 %5749 to i128
  %5755 = or i128 %5753, %5754
  %5756 = mul i128 76, %5755
  %5757 = trunc i128 %5756 to i64
  store i64 %5757, i64* %RCX.i260, align 8
  %5758 = sext i64 %5757 to i128
  %5759 = icmp ne i128 %5758, %5756
  %5760 = zext i1 %5759 to i8
  %5761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5760, i8* %5761, align 1
  %5762 = trunc i128 %5756 to i32
  %5763 = and i32 %5762, 255
  %5764 = call i32 @llvm.ctpop.i32(i32 %5763)
  %5765 = trunc i32 %5764 to i8
  %5766 = and i8 %5765, 1
  %5767 = xor i8 %5766, 1
  %5768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5767, i8* %5768, align 1
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5769, align 1
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5770, align 1
  %5771 = lshr i64 %5757, 63
  %5772 = trunc i64 %5771 to i8
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5772, i8* %5773, align 1
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5760, i8* %5774, align 1
  store %struct.Memory* %loadMem_498f99, %struct.Memory** %MEMORY
  %loadMem_498f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5776 = getelementptr inbounds %struct.GPR, %struct.GPR* %5775, i32 0, i32 33
  %5777 = getelementptr inbounds %struct.Reg, %struct.Reg* %5776, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %5777 to i64*
  %5778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5779 = getelementptr inbounds %struct.GPR, %struct.GPR* %5778, i32 0, i32 1
  %5780 = getelementptr inbounds %struct.Reg, %struct.Reg* %5779, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %5780 to i64*
  %5781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5782 = getelementptr inbounds %struct.GPR, %struct.GPR* %5781, i32 0, i32 5
  %5783 = getelementptr inbounds %struct.Reg, %struct.Reg* %5782, i32 0, i32 0
  %RCX.i258 = bitcast %union.anon* %5783 to i64*
  %5784 = load i64, i64* %RAX.i257
  %5785 = load i64, i64* %RCX.i258
  %5786 = load i64, i64* %PC.i256
  %5787 = add i64 %5786, 3
  store i64 %5787, i64* %PC.i256
  %5788 = add i64 %5785, %5784
  store i64 %5788, i64* %RAX.i257, align 8
  %5789 = icmp ult i64 %5788, %5784
  %5790 = icmp ult i64 %5788, %5785
  %5791 = or i1 %5789, %5790
  %5792 = zext i1 %5791 to i8
  %5793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5792, i8* %5793, align 1
  %5794 = trunc i64 %5788 to i32
  %5795 = and i32 %5794, 255
  %5796 = call i32 @llvm.ctpop.i32(i32 %5795)
  %5797 = trunc i32 %5796 to i8
  %5798 = and i8 %5797, 1
  %5799 = xor i8 %5798, 1
  %5800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5799, i8* %5800, align 1
  %5801 = xor i64 %5785, %5784
  %5802 = xor i64 %5801, %5788
  %5803 = lshr i64 %5802, 4
  %5804 = trunc i64 %5803 to i8
  %5805 = and i8 %5804, 1
  %5806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5805, i8* %5806, align 1
  %5807 = icmp eq i64 %5788, 0
  %5808 = zext i1 %5807 to i8
  %5809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5808, i8* %5809, align 1
  %5810 = lshr i64 %5788, 63
  %5811 = trunc i64 %5810 to i8
  %5812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5811, i8* %5812, align 1
  %5813 = lshr i64 %5784, 63
  %5814 = lshr i64 %5785, 63
  %5815 = xor i64 %5810, %5813
  %5816 = xor i64 %5810, %5814
  %5817 = add i64 %5815, %5816
  %5818 = icmp eq i64 %5817, 2
  %5819 = zext i1 %5818 to i8
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5819, i8* %5820, align 1
  store %struct.Memory* %loadMem_498f9d, %struct.Memory** %MEMORY
  %loadMem_498fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5822 = getelementptr inbounds %struct.GPR, %struct.GPR* %5821, i32 0, i32 33
  %5823 = getelementptr inbounds %struct.Reg, %struct.Reg* %5822, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %5823 to i64*
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5825 = getelementptr inbounds %struct.GPR, %struct.GPR* %5824, i32 0, i32 5
  %5826 = getelementptr inbounds %struct.Reg, %struct.Reg* %5825, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %5826 to i64*
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5828 = getelementptr inbounds %struct.GPR, %struct.GPR* %5827, i32 0, i32 15
  %5829 = getelementptr inbounds %struct.Reg, %struct.Reg* %5828, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %5829 to i64*
  %5830 = load i64, i64* %RBP.i255
  %5831 = sub i64 %5830, 16
  %5832 = load i64, i64* %PC.i253
  %5833 = add i64 %5832, 4
  store i64 %5833, i64* %PC.i253
  %5834 = inttoptr i64 %5831 to i32*
  %5835 = load i32, i32* %5834
  %5836 = sext i32 %5835 to i64
  store i64 %5836, i64* %RCX.i254, align 8
  store %struct.Memory* %loadMem_498fa0, %struct.Memory** %MEMORY
  %loadMem_498fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5838 = getelementptr inbounds %struct.GPR, %struct.GPR* %5837, i32 0, i32 33
  %5839 = getelementptr inbounds %struct.Reg, %struct.Reg* %5838, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %5839 to i64*
  %5840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5841 = getelementptr inbounds %struct.GPR, %struct.GPR* %5840, i32 0, i32 1
  %5842 = getelementptr inbounds %struct.Reg, %struct.Reg* %5841, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %5842 to i64*
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5844 = getelementptr inbounds %struct.GPR, %struct.GPR* %5843, i32 0, i32 5
  %5845 = getelementptr inbounds %struct.Reg, %struct.Reg* %5844, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %5845 to i64*
  %5846 = load i64, i64* %RAX.i251
  %5847 = load i64, i64* %RCX.i252
  %5848 = mul i64 %5847, 4
  %5849 = add i64 %5848, %5846
  %5850 = load i64, i64* %PC.i250
  %5851 = add i64 %5850, 7
  store i64 %5851, i64* %PC.i250
  %5852 = inttoptr i64 %5849 to i32*
  store i32 0, i32* %5852
  store %struct.Memory* %loadMem_498fa4, %struct.Memory** %MEMORY
  %loadMem_498fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5854 = getelementptr inbounds %struct.GPR, %struct.GPR* %5853, i32 0, i32 33
  %5855 = getelementptr inbounds %struct.Reg, %struct.Reg* %5854, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %5855 to i64*
  %5856 = load i64, i64* %PC.i249
  %5857 = add i64 %5856, 191
  %5858 = load i64, i64* %PC.i249
  %5859 = add i64 %5858, 5
  store i64 %5859, i64* %PC.i249
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5857, i64* %5860, align 8
  store %struct.Memory* %loadMem_498fab, %struct.Memory** %MEMORY
  br label %block_.L_49906a

block_.L_498fb0:                                  ; preds = %block_498f68
  %loadMem_498fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5862 = getelementptr inbounds %struct.GPR, %struct.GPR* %5861, i32 0, i32 33
  %5863 = getelementptr inbounds %struct.Reg, %struct.Reg* %5862, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %5863 to i64*
  %5864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5865 = getelementptr inbounds %struct.GPR, %struct.GPR* %5864, i32 0, i32 1
  %5866 = getelementptr inbounds %struct.Reg, %struct.Reg* %5865, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %5866 to i64*
  %5867 = load i64, i64* %PC.i247
  %5868 = add i64 %5867, 10
  store i64 %5868, i64* %PC.i247
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i248, align 8
  store %struct.Memory* %loadMem_498fb0, %struct.Memory** %MEMORY
  %loadMem_498fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5870 = getelementptr inbounds %struct.GPR, %struct.GPR* %5869, i32 0, i32 33
  %5871 = getelementptr inbounds %struct.Reg, %struct.Reg* %5870, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %5871 to i64*
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5873 = getelementptr inbounds %struct.GPR, %struct.GPR* %5872, i32 0, i32 5
  %5874 = getelementptr inbounds %struct.Reg, %struct.Reg* %5873, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %5874 to i64*
  %5875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5876 = getelementptr inbounds %struct.GPR, %struct.GPR* %5875, i32 0, i32 15
  %5877 = getelementptr inbounds %struct.Reg, %struct.Reg* %5876, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %5877 to i64*
  %5878 = load i64, i64* %RBP.i246
  %5879 = sub i64 %5878, 12
  %5880 = load i64, i64* %PC.i244
  %5881 = add i64 %5880, 4
  store i64 %5881, i64* %PC.i244
  %5882 = inttoptr i64 %5879 to i32*
  %5883 = load i32, i32* %5882
  %5884 = sext i32 %5883 to i64
  store i64 %5884, i64* %RCX.i245, align 8
  store %struct.Memory* %loadMem_498fba, %struct.Memory** %MEMORY
  %loadMem_498fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5886 = getelementptr inbounds %struct.GPR, %struct.GPR* %5885, i32 0, i32 33
  %5887 = getelementptr inbounds %struct.Reg, %struct.Reg* %5886, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %5887 to i64*
  %5888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5889 = getelementptr inbounds %struct.GPR, %struct.GPR* %5888, i32 0, i32 5
  %5890 = getelementptr inbounds %struct.Reg, %struct.Reg* %5889, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %5890 to i64*
  %5891 = load i64, i64* %RCX.i243
  %5892 = load i64, i64* %PC.i242
  %5893 = add i64 %5892, 4
  store i64 %5893, i64* %PC.i242
  %5894 = sext i64 %5891 to i128
  %5895 = and i128 %5894, -18446744073709551616
  %5896 = zext i64 %5891 to i128
  %5897 = or i128 %5895, %5896
  %5898 = mul i128 76, %5897
  %5899 = trunc i128 %5898 to i64
  store i64 %5899, i64* %RCX.i243, align 8
  %5900 = sext i64 %5899 to i128
  %5901 = icmp ne i128 %5900, %5898
  %5902 = zext i1 %5901 to i8
  %5903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5902, i8* %5903, align 1
  %5904 = trunc i128 %5898 to i32
  %5905 = and i32 %5904, 255
  %5906 = call i32 @llvm.ctpop.i32(i32 %5905)
  %5907 = trunc i32 %5906 to i8
  %5908 = and i8 %5907, 1
  %5909 = xor i8 %5908, 1
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5909, i8* %5910, align 1
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5911, align 1
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5912, align 1
  %5913 = lshr i64 %5899, 63
  %5914 = trunc i64 %5913 to i8
  %5915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5914, i8* %5915, align 1
  %5916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5902, i8* %5916, align 1
  store %struct.Memory* %loadMem_498fbe, %struct.Memory** %MEMORY
  %loadMem_498fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5918 = getelementptr inbounds %struct.GPR, %struct.GPR* %5917, i32 0, i32 33
  %5919 = getelementptr inbounds %struct.Reg, %struct.Reg* %5918, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %5919 to i64*
  %5920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5921 = getelementptr inbounds %struct.GPR, %struct.GPR* %5920, i32 0, i32 1
  %5922 = getelementptr inbounds %struct.Reg, %struct.Reg* %5921, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %5922 to i64*
  %5923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5924 = getelementptr inbounds %struct.GPR, %struct.GPR* %5923, i32 0, i32 5
  %5925 = getelementptr inbounds %struct.Reg, %struct.Reg* %5924, i32 0, i32 0
  %RCX.i241 = bitcast %union.anon* %5925 to i64*
  %5926 = load i64, i64* %RAX.i240
  %5927 = load i64, i64* %RCX.i241
  %5928 = load i64, i64* %PC.i239
  %5929 = add i64 %5928, 3
  store i64 %5929, i64* %PC.i239
  %5930 = add i64 %5927, %5926
  store i64 %5930, i64* %RAX.i240, align 8
  %5931 = icmp ult i64 %5930, %5926
  %5932 = icmp ult i64 %5930, %5927
  %5933 = or i1 %5931, %5932
  %5934 = zext i1 %5933 to i8
  %5935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5934, i8* %5935, align 1
  %5936 = trunc i64 %5930 to i32
  %5937 = and i32 %5936, 255
  %5938 = call i32 @llvm.ctpop.i32(i32 %5937)
  %5939 = trunc i32 %5938 to i8
  %5940 = and i8 %5939, 1
  %5941 = xor i8 %5940, 1
  %5942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5941, i8* %5942, align 1
  %5943 = xor i64 %5927, %5926
  %5944 = xor i64 %5943, %5930
  %5945 = lshr i64 %5944, 4
  %5946 = trunc i64 %5945 to i8
  %5947 = and i8 %5946, 1
  %5948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5947, i8* %5948, align 1
  %5949 = icmp eq i64 %5930, 0
  %5950 = zext i1 %5949 to i8
  %5951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5950, i8* %5951, align 1
  %5952 = lshr i64 %5930, 63
  %5953 = trunc i64 %5952 to i8
  %5954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5953, i8* %5954, align 1
  %5955 = lshr i64 %5926, 63
  %5956 = lshr i64 %5927, 63
  %5957 = xor i64 %5952, %5955
  %5958 = xor i64 %5952, %5956
  %5959 = add i64 %5957, %5958
  %5960 = icmp eq i64 %5959, 2
  %5961 = zext i1 %5960 to i8
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5961, i8* %5962, align 1
  store %struct.Memory* %loadMem_498fc2, %struct.Memory** %MEMORY
  %loadMem_498fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5964 = getelementptr inbounds %struct.GPR, %struct.GPR* %5963, i32 0, i32 33
  %5965 = getelementptr inbounds %struct.Reg, %struct.Reg* %5964, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %5965 to i64*
  %5966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5967 = getelementptr inbounds %struct.GPR, %struct.GPR* %5966, i32 0, i32 5
  %5968 = getelementptr inbounds %struct.Reg, %struct.Reg* %5967, i32 0, i32 0
  %RCX.i237 = bitcast %union.anon* %5968 to i64*
  %5969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5970 = getelementptr inbounds %struct.GPR, %struct.GPR* %5969, i32 0, i32 15
  %5971 = getelementptr inbounds %struct.Reg, %struct.Reg* %5970, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %5971 to i64*
  %5972 = load i64, i64* %RBP.i238
  %5973 = sub i64 %5972, 16
  %5974 = load i64, i64* %PC.i236
  %5975 = add i64 %5974, 4
  store i64 %5975, i64* %PC.i236
  %5976 = inttoptr i64 %5973 to i32*
  %5977 = load i32, i32* %5976
  %5978 = sext i32 %5977 to i64
  store i64 %5978, i64* %RCX.i237, align 8
  store %struct.Memory* %loadMem_498fc5, %struct.Memory** %MEMORY
  %loadMem_498fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 33
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %5981 to i64*
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5983 = getelementptr inbounds %struct.GPR, %struct.GPR* %5982, i32 0, i32 1
  %5984 = getelementptr inbounds %struct.Reg, %struct.Reg* %5983, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %5984 to i64*
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5986 = getelementptr inbounds %struct.GPR, %struct.GPR* %5985, i32 0, i32 5
  %5987 = getelementptr inbounds %struct.Reg, %struct.Reg* %5986, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %5987 to i64*
  %5988 = load i64, i64* %RAX.i234
  %5989 = load i64, i64* %RCX.i235
  %5990 = mul i64 %5989, 4
  %5991 = add i64 %5990, %5988
  %5992 = load i64, i64* %PC.i233
  %5993 = add i64 %5992, 4
  store i64 %5993, i64* %PC.i233
  %5994 = inttoptr i64 %5991 to i32*
  %5995 = load i32, i32* %5994
  %5996 = sub i32 %5995, 15
  %5997 = icmp ult i32 %5995, 15
  %5998 = zext i1 %5997 to i8
  %5999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5998, i8* %5999, align 1
  %6000 = and i32 %5996, 255
  %6001 = call i32 @llvm.ctpop.i32(i32 %6000)
  %6002 = trunc i32 %6001 to i8
  %6003 = and i8 %6002, 1
  %6004 = xor i8 %6003, 1
  %6005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6004, i8* %6005, align 1
  %6006 = xor i32 %5995, 15
  %6007 = xor i32 %6006, %5996
  %6008 = lshr i32 %6007, 4
  %6009 = trunc i32 %6008 to i8
  %6010 = and i8 %6009, 1
  %6011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6010, i8* %6011, align 1
  %6012 = icmp eq i32 %5996, 0
  %6013 = zext i1 %6012 to i8
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6013, i8* %6014, align 1
  %6015 = lshr i32 %5996, 31
  %6016 = trunc i32 %6015 to i8
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6016, i8* %6017, align 1
  %6018 = lshr i32 %5995, 31
  %6019 = xor i32 %6015, %6018
  %6020 = add i32 %6019, %6018
  %6021 = icmp eq i32 %6020, 2
  %6022 = zext i1 %6021 to i8
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6022, i8* %6023, align 1
  store %struct.Memory* %loadMem_498fc9, %struct.Memory** %MEMORY
  %loadMem_498fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6025 = getelementptr inbounds %struct.GPR, %struct.GPR* %6024, i32 0, i32 33
  %6026 = getelementptr inbounds %struct.Reg, %struct.Reg* %6025, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %6026 to i64*
  %6027 = load i64, i64* %PC.i232
  %6028 = add i64 %6027, 43
  %6029 = load i64, i64* %PC.i232
  %6030 = add i64 %6029, 6
  %6031 = load i64, i64* %PC.i232
  %6032 = add i64 %6031, 6
  store i64 %6032, i64* %PC.i232
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6034 = load i8, i8* %6033, align 1
  %6035 = icmp eq i8 %6034, 0
  %6036 = zext i1 %6035 to i8
  store i8 %6036, i8* %BRANCH_TAKEN, align 1
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6038 = select i1 %6035, i64 %6028, i64 %6030
  store i64 %6038, i64* %6037, align 8
  store %struct.Memory* %loadMem_498fcd, %struct.Memory** %MEMORY
  %loadBr_498fcd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498fcd = icmp eq i8 %loadBr_498fcd, 1
  br i1 %cmpBr_498fcd, label %block_.L_498ff8, label %block_498fd3

block_498fd3:                                     ; preds = %block_.L_498fb0
  %loadMem_498fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6040 = getelementptr inbounds %struct.GPR, %struct.GPR* %6039, i32 0, i32 33
  %6041 = getelementptr inbounds %struct.Reg, %struct.Reg* %6040, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %6041 to i64*
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6043 = getelementptr inbounds %struct.GPR, %struct.GPR* %6042, i32 0, i32 1
  %6044 = getelementptr inbounds %struct.Reg, %struct.Reg* %6043, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %6044 to i64*
  %6045 = load i64, i64* %PC.i230
  %6046 = add i64 %6045, 10
  store i64 %6046, i64* %PC.i230
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i231, align 8
  store %struct.Memory* %loadMem_498fd3, %struct.Memory** %MEMORY
  %loadMem_498fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6048 = getelementptr inbounds %struct.GPR, %struct.GPR* %6047, i32 0, i32 33
  %6049 = getelementptr inbounds %struct.Reg, %struct.Reg* %6048, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %6049 to i64*
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6051 = getelementptr inbounds %struct.GPR, %struct.GPR* %6050, i32 0, i32 5
  %6052 = getelementptr inbounds %struct.Reg, %struct.Reg* %6051, i32 0, i32 0
  %RCX.i228 = bitcast %union.anon* %6052 to i64*
  %6053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6054 = getelementptr inbounds %struct.GPR, %struct.GPR* %6053, i32 0, i32 15
  %6055 = getelementptr inbounds %struct.Reg, %struct.Reg* %6054, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %6055 to i64*
  %6056 = load i64, i64* %RBP.i229
  %6057 = sub i64 %6056, 12
  %6058 = load i64, i64* %PC.i227
  %6059 = add i64 %6058, 4
  store i64 %6059, i64* %PC.i227
  %6060 = inttoptr i64 %6057 to i32*
  %6061 = load i32, i32* %6060
  %6062 = sext i32 %6061 to i64
  store i64 %6062, i64* %RCX.i228, align 8
  store %struct.Memory* %loadMem_498fdd, %struct.Memory** %MEMORY
  %loadMem_498fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6064 = getelementptr inbounds %struct.GPR, %struct.GPR* %6063, i32 0, i32 33
  %6065 = getelementptr inbounds %struct.Reg, %struct.Reg* %6064, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %6065 to i64*
  %6066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6067 = getelementptr inbounds %struct.GPR, %struct.GPR* %6066, i32 0, i32 5
  %6068 = getelementptr inbounds %struct.Reg, %struct.Reg* %6067, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %6068 to i64*
  %6069 = load i64, i64* %RCX.i226
  %6070 = load i64, i64* %PC.i225
  %6071 = add i64 %6070, 4
  store i64 %6071, i64* %PC.i225
  %6072 = sext i64 %6069 to i128
  %6073 = and i128 %6072, -18446744073709551616
  %6074 = zext i64 %6069 to i128
  %6075 = or i128 %6073, %6074
  %6076 = mul i128 76, %6075
  %6077 = trunc i128 %6076 to i64
  store i64 %6077, i64* %RCX.i226, align 8
  %6078 = sext i64 %6077 to i128
  %6079 = icmp ne i128 %6078, %6076
  %6080 = zext i1 %6079 to i8
  %6081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6080, i8* %6081, align 1
  %6082 = trunc i128 %6076 to i32
  %6083 = and i32 %6082, 255
  %6084 = call i32 @llvm.ctpop.i32(i32 %6083)
  %6085 = trunc i32 %6084 to i8
  %6086 = and i8 %6085, 1
  %6087 = xor i8 %6086, 1
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6087, i8* %6088, align 1
  %6089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6089, align 1
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6090, align 1
  %6091 = lshr i64 %6077, 63
  %6092 = trunc i64 %6091 to i8
  %6093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6092, i8* %6093, align 1
  %6094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6080, i8* %6094, align 1
  store %struct.Memory* %loadMem_498fe1, %struct.Memory** %MEMORY
  %loadMem_498fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6096 = getelementptr inbounds %struct.GPR, %struct.GPR* %6095, i32 0, i32 33
  %6097 = getelementptr inbounds %struct.Reg, %struct.Reg* %6096, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %6097 to i64*
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6099 = getelementptr inbounds %struct.GPR, %struct.GPR* %6098, i32 0, i32 1
  %6100 = getelementptr inbounds %struct.Reg, %struct.Reg* %6099, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %6100 to i64*
  %6101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6102 = getelementptr inbounds %struct.GPR, %struct.GPR* %6101, i32 0, i32 5
  %6103 = getelementptr inbounds %struct.Reg, %struct.Reg* %6102, i32 0, i32 0
  %RCX.i224 = bitcast %union.anon* %6103 to i64*
  %6104 = load i64, i64* %RAX.i223
  %6105 = load i64, i64* %RCX.i224
  %6106 = load i64, i64* %PC.i222
  %6107 = add i64 %6106, 3
  store i64 %6107, i64* %PC.i222
  %6108 = add i64 %6105, %6104
  store i64 %6108, i64* %RAX.i223, align 8
  %6109 = icmp ult i64 %6108, %6104
  %6110 = icmp ult i64 %6108, %6105
  %6111 = or i1 %6109, %6110
  %6112 = zext i1 %6111 to i8
  %6113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6112, i8* %6113, align 1
  %6114 = trunc i64 %6108 to i32
  %6115 = and i32 %6114, 255
  %6116 = call i32 @llvm.ctpop.i32(i32 %6115)
  %6117 = trunc i32 %6116 to i8
  %6118 = and i8 %6117, 1
  %6119 = xor i8 %6118, 1
  %6120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6119, i8* %6120, align 1
  %6121 = xor i64 %6105, %6104
  %6122 = xor i64 %6121, %6108
  %6123 = lshr i64 %6122, 4
  %6124 = trunc i64 %6123 to i8
  %6125 = and i8 %6124, 1
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6125, i8* %6126, align 1
  %6127 = icmp eq i64 %6108, 0
  %6128 = zext i1 %6127 to i8
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6128, i8* %6129, align 1
  %6130 = lshr i64 %6108, 63
  %6131 = trunc i64 %6130 to i8
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6131, i8* %6132, align 1
  %6133 = lshr i64 %6104, 63
  %6134 = lshr i64 %6105, 63
  %6135 = xor i64 %6130, %6133
  %6136 = xor i64 %6130, %6134
  %6137 = add i64 %6135, %6136
  %6138 = icmp eq i64 %6137, 2
  %6139 = zext i1 %6138 to i8
  %6140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6139, i8* %6140, align 1
  store %struct.Memory* %loadMem_498fe5, %struct.Memory** %MEMORY
  %loadMem_498fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6142 = getelementptr inbounds %struct.GPR, %struct.GPR* %6141, i32 0, i32 33
  %6143 = getelementptr inbounds %struct.Reg, %struct.Reg* %6142, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %6143 to i64*
  %6144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6145 = getelementptr inbounds %struct.GPR, %struct.GPR* %6144, i32 0, i32 5
  %6146 = getelementptr inbounds %struct.Reg, %struct.Reg* %6145, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %6146 to i64*
  %6147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6148 = getelementptr inbounds %struct.GPR, %struct.GPR* %6147, i32 0, i32 15
  %6149 = getelementptr inbounds %struct.Reg, %struct.Reg* %6148, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %6149 to i64*
  %6150 = load i64, i64* %RBP.i221
  %6151 = sub i64 %6150, 16
  %6152 = load i64, i64* %PC.i219
  %6153 = add i64 %6152, 4
  store i64 %6153, i64* %PC.i219
  %6154 = inttoptr i64 %6151 to i32*
  %6155 = load i32, i32* %6154
  %6156 = sext i32 %6155 to i64
  store i64 %6156, i64* %RCX.i220, align 8
  store %struct.Memory* %loadMem_498fe8, %struct.Memory** %MEMORY
  %loadMem_498fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6158 = getelementptr inbounds %struct.GPR, %struct.GPR* %6157, i32 0, i32 33
  %6159 = getelementptr inbounds %struct.Reg, %struct.Reg* %6158, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %6159 to i64*
  %6160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6161 = getelementptr inbounds %struct.GPR, %struct.GPR* %6160, i32 0, i32 1
  %6162 = getelementptr inbounds %struct.Reg, %struct.Reg* %6161, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %6162 to i64*
  %6163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6164 = getelementptr inbounds %struct.GPR, %struct.GPR* %6163, i32 0, i32 5
  %6165 = getelementptr inbounds %struct.Reg, %struct.Reg* %6164, i32 0, i32 0
  %RCX.i218 = bitcast %union.anon* %6165 to i64*
  %6166 = load i64, i64* %RAX.i217
  %6167 = load i64, i64* %RCX.i218
  %6168 = mul i64 %6167, 4
  %6169 = add i64 %6168, %6166
  %6170 = load i64, i64* %PC.i216
  %6171 = add i64 %6170, 7
  store i64 %6171, i64* %PC.i216
  %6172 = inttoptr i64 %6169 to i32*
  store i32 7, i32* %6172
  store %struct.Memory* %loadMem_498fec, %struct.Memory** %MEMORY
  %loadMem_498ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6174 = getelementptr inbounds %struct.GPR, %struct.GPR* %6173, i32 0, i32 33
  %6175 = getelementptr inbounds %struct.Reg, %struct.Reg* %6174, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %6175 to i64*
  %6176 = load i64, i64* %PC.i215
  %6177 = add i64 %6176, 114
  %6178 = load i64, i64* %PC.i215
  %6179 = add i64 %6178, 5
  store i64 %6179, i64* %PC.i215
  %6180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6177, i64* %6180, align 8
  store %struct.Memory* %loadMem_498ff3, %struct.Memory** %MEMORY
  br label %block_.L_499065

block_.L_498ff8:                                  ; preds = %block_.L_498fb0
  %loadMem_498ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6182 = getelementptr inbounds %struct.GPR, %struct.GPR* %6181, i32 0, i32 33
  %6183 = getelementptr inbounds %struct.Reg, %struct.Reg* %6182, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %6183 to i64*
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6185 = getelementptr inbounds %struct.GPR, %struct.GPR* %6184, i32 0, i32 1
  %6186 = getelementptr inbounds %struct.Reg, %struct.Reg* %6185, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %6186 to i64*
  %6187 = load i64, i64* %PC.i213
  %6188 = add i64 %6187, 10
  store i64 %6188, i64* %PC.i213
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i214, align 8
  store %struct.Memory* %loadMem_498ff8, %struct.Memory** %MEMORY
  %loadMem_499002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6190 = getelementptr inbounds %struct.GPR, %struct.GPR* %6189, i32 0, i32 33
  %6191 = getelementptr inbounds %struct.Reg, %struct.Reg* %6190, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %6191 to i64*
  %6192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6193 = getelementptr inbounds %struct.GPR, %struct.GPR* %6192, i32 0, i32 5
  %6194 = getelementptr inbounds %struct.Reg, %struct.Reg* %6193, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %6194 to i64*
  %6195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6196 = getelementptr inbounds %struct.GPR, %struct.GPR* %6195, i32 0, i32 15
  %6197 = getelementptr inbounds %struct.Reg, %struct.Reg* %6196, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %6197 to i64*
  %6198 = load i64, i64* %RBP.i212
  %6199 = sub i64 %6198, 12
  %6200 = load i64, i64* %PC.i210
  %6201 = add i64 %6200, 4
  store i64 %6201, i64* %PC.i210
  %6202 = inttoptr i64 %6199 to i32*
  %6203 = load i32, i32* %6202
  %6204 = sext i32 %6203 to i64
  store i64 %6204, i64* %RCX.i211, align 8
  store %struct.Memory* %loadMem_499002, %struct.Memory** %MEMORY
  %loadMem_499006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6206 = getelementptr inbounds %struct.GPR, %struct.GPR* %6205, i32 0, i32 33
  %6207 = getelementptr inbounds %struct.Reg, %struct.Reg* %6206, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %6207 to i64*
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6209 = getelementptr inbounds %struct.GPR, %struct.GPR* %6208, i32 0, i32 5
  %6210 = getelementptr inbounds %struct.Reg, %struct.Reg* %6209, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %6210 to i64*
  %6211 = load i64, i64* %RCX.i209
  %6212 = load i64, i64* %PC.i208
  %6213 = add i64 %6212, 4
  store i64 %6213, i64* %PC.i208
  %6214 = sext i64 %6211 to i128
  %6215 = and i128 %6214, -18446744073709551616
  %6216 = zext i64 %6211 to i128
  %6217 = or i128 %6215, %6216
  %6218 = mul i128 76, %6217
  %6219 = trunc i128 %6218 to i64
  store i64 %6219, i64* %RCX.i209, align 8
  %6220 = sext i64 %6219 to i128
  %6221 = icmp ne i128 %6220, %6218
  %6222 = zext i1 %6221 to i8
  %6223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6222, i8* %6223, align 1
  %6224 = trunc i128 %6218 to i32
  %6225 = and i32 %6224, 255
  %6226 = call i32 @llvm.ctpop.i32(i32 %6225)
  %6227 = trunc i32 %6226 to i8
  %6228 = and i8 %6227, 1
  %6229 = xor i8 %6228, 1
  %6230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6229, i8* %6230, align 1
  %6231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6231, align 1
  %6232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6232, align 1
  %6233 = lshr i64 %6219, 63
  %6234 = trunc i64 %6233 to i8
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6234, i8* %6235, align 1
  %6236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6222, i8* %6236, align 1
  store %struct.Memory* %loadMem_499006, %struct.Memory** %MEMORY
  %loadMem_49900a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6238 = getelementptr inbounds %struct.GPR, %struct.GPR* %6237, i32 0, i32 33
  %6239 = getelementptr inbounds %struct.Reg, %struct.Reg* %6238, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %6239 to i64*
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6241 = getelementptr inbounds %struct.GPR, %struct.GPR* %6240, i32 0, i32 1
  %6242 = getelementptr inbounds %struct.Reg, %struct.Reg* %6241, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %6242 to i64*
  %6243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6244 = getelementptr inbounds %struct.GPR, %struct.GPR* %6243, i32 0, i32 5
  %6245 = getelementptr inbounds %struct.Reg, %struct.Reg* %6244, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %6245 to i64*
  %6246 = load i64, i64* %RAX.i206
  %6247 = load i64, i64* %RCX.i207
  %6248 = load i64, i64* %PC.i205
  %6249 = add i64 %6248, 3
  store i64 %6249, i64* %PC.i205
  %6250 = add i64 %6247, %6246
  store i64 %6250, i64* %RAX.i206, align 8
  %6251 = icmp ult i64 %6250, %6246
  %6252 = icmp ult i64 %6250, %6247
  %6253 = or i1 %6251, %6252
  %6254 = zext i1 %6253 to i8
  %6255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6254, i8* %6255, align 1
  %6256 = trunc i64 %6250 to i32
  %6257 = and i32 %6256, 255
  %6258 = call i32 @llvm.ctpop.i32(i32 %6257)
  %6259 = trunc i32 %6258 to i8
  %6260 = and i8 %6259, 1
  %6261 = xor i8 %6260, 1
  %6262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6261, i8* %6262, align 1
  %6263 = xor i64 %6247, %6246
  %6264 = xor i64 %6263, %6250
  %6265 = lshr i64 %6264, 4
  %6266 = trunc i64 %6265 to i8
  %6267 = and i8 %6266, 1
  %6268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6267, i8* %6268, align 1
  %6269 = icmp eq i64 %6250, 0
  %6270 = zext i1 %6269 to i8
  %6271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6270, i8* %6271, align 1
  %6272 = lshr i64 %6250, 63
  %6273 = trunc i64 %6272 to i8
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6273, i8* %6274, align 1
  %6275 = lshr i64 %6246, 63
  %6276 = lshr i64 %6247, 63
  %6277 = xor i64 %6272, %6275
  %6278 = xor i64 %6272, %6276
  %6279 = add i64 %6277, %6278
  %6280 = icmp eq i64 %6279, 2
  %6281 = zext i1 %6280 to i8
  %6282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6281, i8* %6282, align 1
  store %struct.Memory* %loadMem_49900a, %struct.Memory** %MEMORY
  %loadMem_49900d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6284 = getelementptr inbounds %struct.GPR, %struct.GPR* %6283, i32 0, i32 33
  %6285 = getelementptr inbounds %struct.Reg, %struct.Reg* %6284, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %6285 to i64*
  %6286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6287 = getelementptr inbounds %struct.GPR, %struct.GPR* %6286, i32 0, i32 5
  %6288 = getelementptr inbounds %struct.Reg, %struct.Reg* %6287, i32 0, i32 0
  %RCX.i203 = bitcast %union.anon* %6288 to i64*
  %6289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6290 = getelementptr inbounds %struct.GPR, %struct.GPR* %6289, i32 0, i32 15
  %6291 = getelementptr inbounds %struct.Reg, %struct.Reg* %6290, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %6291 to i64*
  %6292 = load i64, i64* %RBP.i204
  %6293 = sub i64 %6292, 16
  %6294 = load i64, i64* %PC.i202
  %6295 = add i64 %6294, 4
  store i64 %6295, i64* %PC.i202
  %6296 = inttoptr i64 %6293 to i32*
  %6297 = load i32, i32* %6296
  %6298 = sext i32 %6297 to i64
  store i64 %6298, i64* %RCX.i203, align 8
  store %struct.Memory* %loadMem_49900d, %struct.Memory** %MEMORY
  %loadMem_499011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6300 = getelementptr inbounds %struct.GPR, %struct.GPR* %6299, i32 0, i32 33
  %6301 = getelementptr inbounds %struct.Reg, %struct.Reg* %6300, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %6301 to i64*
  %6302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6303 = getelementptr inbounds %struct.GPR, %struct.GPR* %6302, i32 0, i32 1
  %6304 = getelementptr inbounds %struct.Reg, %struct.Reg* %6303, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %6304 to i64*
  %6305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6306 = getelementptr inbounds %struct.GPR, %struct.GPR* %6305, i32 0, i32 5
  %6307 = getelementptr inbounds %struct.Reg, %struct.Reg* %6306, i32 0, i32 0
  %RCX.i201 = bitcast %union.anon* %6307 to i64*
  %6308 = load i64, i64* %RAX.i200
  %6309 = load i64, i64* %RCX.i201
  %6310 = mul i64 %6309, 4
  %6311 = add i64 %6310, %6308
  %6312 = load i64, i64* %PC.i199
  %6313 = add i64 %6312, 4
  store i64 %6313, i64* %PC.i199
  %6314 = inttoptr i64 %6311 to i32*
  %6315 = load i32, i32* %6314
  %6316 = sub i32 %6315, 13
  %6317 = icmp ult i32 %6315, 13
  %6318 = zext i1 %6317 to i8
  %6319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6318, i8* %6319, align 1
  %6320 = and i32 %6316, 255
  %6321 = call i32 @llvm.ctpop.i32(i32 %6320)
  %6322 = trunc i32 %6321 to i8
  %6323 = and i8 %6322, 1
  %6324 = xor i8 %6323, 1
  %6325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6324, i8* %6325, align 1
  %6326 = xor i32 %6315, 13
  %6327 = xor i32 %6326, %6316
  %6328 = lshr i32 %6327, 4
  %6329 = trunc i32 %6328 to i8
  %6330 = and i8 %6329, 1
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6330, i8* %6331, align 1
  %6332 = icmp eq i32 %6316, 0
  %6333 = zext i1 %6332 to i8
  %6334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6333, i8* %6334, align 1
  %6335 = lshr i32 %6316, 31
  %6336 = trunc i32 %6335 to i8
  %6337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6336, i8* %6337, align 1
  %6338 = lshr i32 %6315, 31
  %6339 = xor i32 %6335, %6338
  %6340 = add i32 %6339, %6338
  %6341 = icmp eq i32 %6340, 2
  %6342 = zext i1 %6341 to i8
  %6343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6342, i8* %6343, align 1
  store %struct.Memory* %loadMem_499011, %struct.Memory** %MEMORY
  %loadMem_499015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6345 = getelementptr inbounds %struct.GPR, %struct.GPR* %6344, i32 0, i32 33
  %6346 = getelementptr inbounds %struct.Reg, %struct.Reg* %6345, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %6346 to i64*
  %6347 = load i64, i64* %PC.i198
  %6348 = add i64 %6347, 43
  %6349 = load i64, i64* %PC.i198
  %6350 = add i64 %6349, 6
  %6351 = load i64, i64* %PC.i198
  %6352 = add i64 %6351, 6
  store i64 %6352, i64* %PC.i198
  %6353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6354 = load i8, i8* %6353, align 1
  %6355 = icmp eq i8 %6354, 0
  %6356 = zext i1 %6355 to i8
  store i8 %6356, i8* %BRANCH_TAKEN, align 1
  %6357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6358 = select i1 %6355, i64 %6348, i64 %6350
  store i64 %6358, i64* %6357, align 8
  store %struct.Memory* %loadMem_499015, %struct.Memory** %MEMORY
  %loadBr_499015 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_499015 = icmp eq i8 %loadBr_499015, 1
  br i1 %cmpBr_499015, label %block_.L_499040, label %block_49901b

block_49901b:                                     ; preds = %block_.L_498ff8
  %loadMem_49901b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6360 = getelementptr inbounds %struct.GPR, %struct.GPR* %6359, i32 0, i32 33
  %6361 = getelementptr inbounds %struct.Reg, %struct.Reg* %6360, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %6361 to i64*
  %6362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6363 = getelementptr inbounds %struct.GPR, %struct.GPR* %6362, i32 0, i32 1
  %6364 = getelementptr inbounds %struct.Reg, %struct.Reg* %6363, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %6364 to i64*
  %6365 = load i64, i64* %PC.i196
  %6366 = add i64 %6365, 10
  store i64 %6366, i64* %PC.i196
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_49901b, %struct.Memory** %MEMORY
  %loadMem_499025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6368 = getelementptr inbounds %struct.GPR, %struct.GPR* %6367, i32 0, i32 33
  %6369 = getelementptr inbounds %struct.Reg, %struct.Reg* %6368, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %6369 to i64*
  %6370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6371 = getelementptr inbounds %struct.GPR, %struct.GPR* %6370, i32 0, i32 5
  %6372 = getelementptr inbounds %struct.Reg, %struct.Reg* %6371, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %6372 to i64*
  %6373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6374 = getelementptr inbounds %struct.GPR, %struct.GPR* %6373, i32 0, i32 15
  %6375 = getelementptr inbounds %struct.Reg, %struct.Reg* %6374, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %6375 to i64*
  %6376 = load i64, i64* %RBP.i195
  %6377 = sub i64 %6376, 12
  %6378 = load i64, i64* %PC.i193
  %6379 = add i64 %6378, 4
  store i64 %6379, i64* %PC.i193
  %6380 = inttoptr i64 %6377 to i32*
  %6381 = load i32, i32* %6380
  %6382 = sext i32 %6381 to i64
  store i64 %6382, i64* %RCX.i194, align 8
  store %struct.Memory* %loadMem_499025, %struct.Memory** %MEMORY
  %loadMem_499029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6384 = getelementptr inbounds %struct.GPR, %struct.GPR* %6383, i32 0, i32 33
  %6385 = getelementptr inbounds %struct.Reg, %struct.Reg* %6384, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %6385 to i64*
  %6386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6387 = getelementptr inbounds %struct.GPR, %struct.GPR* %6386, i32 0, i32 5
  %6388 = getelementptr inbounds %struct.Reg, %struct.Reg* %6387, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %6388 to i64*
  %6389 = load i64, i64* %RCX.i192
  %6390 = load i64, i64* %PC.i191
  %6391 = add i64 %6390, 4
  store i64 %6391, i64* %PC.i191
  %6392 = sext i64 %6389 to i128
  %6393 = and i128 %6392, -18446744073709551616
  %6394 = zext i64 %6389 to i128
  %6395 = or i128 %6393, %6394
  %6396 = mul i128 76, %6395
  %6397 = trunc i128 %6396 to i64
  store i64 %6397, i64* %RCX.i192, align 8
  %6398 = sext i64 %6397 to i128
  %6399 = icmp ne i128 %6398, %6396
  %6400 = zext i1 %6399 to i8
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6400, i8* %6401, align 1
  %6402 = trunc i128 %6396 to i32
  %6403 = and i32 %6402, 255
  %6404 = call i32 @llvm.ctpop.i32(i32 %6403)
  %6405 = trunc i32 %6404 to i8
  %6406 = and i8 %6405, 1
  %6407 = xor i8 %6406, 1
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6407, i8* %6408, align 1
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6409, align 1
  %6410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6410, align 1
  %6411 = lshr i64 %6397, 63
  %6412 = trunc i64 %6411 to i8
  %6413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6412, i8* %6413, align 1
  %6414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6400, i8* %6414, align 1
  store %struct.Memory* %loadMem_499029, %struct.Memory** %MEMORY
  %loadMem_49902d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6416 = getelementptr inbounds %struct.GPR, %struct.GPR* %6415, i32 0, i32 33
  %6417 = getelementptr inbounds %struct.Reg, %struct.Reg* %6416, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %6417 to i64*
  %6418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6419 = getelementptr inbounds %struct.GPR, %struct.GPR* %6418, i32 0, i32 1
  %6420 = getelementptr inbounds %struct.Reg, %struct.Reg* %6419, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %6420 to i64*
  %6421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6422 = getelementptr inbounds %struct.GPR, %struct.GPR* %6421, i32 0, i32 5
  %6423 = getelementptr inbounds %struct.Reg, %struct.Reg* %6422, i32 0, i32 0
  %RCX.i190 = bitcast %union.anon* %6423 to i64*
  %6424 = load i64, i64* %RAX.i189
  %6425 = load i64, i64* %RCX.i190
  %6426 = load i64, i64* %PC.i188
  %6427 = add i64 %6426, 3
  store i64 %6427, i64* %PC.i188
  %6428 = add i64 %6425, %6424
  store i64 %6428, i64* %RAX.i189, align 8
  %6429 = icmp ult i64 %6428, %6424
  %6430 = icmp ult i64 %6428, %6425
  %6431 = or i1 %6429, %6430
  %6432 = zext i1 %6431 to i8
  %6433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6432, i8* %6433, align 1
  %6434 = trunc i64 %6428 to i32
  %6435 = and i32 %6434, 255
  %6436 = call i32 @llvm.ctpop.i32(i32 %6435)
  %6437 = trunc i32 %6436 to i8
  %6438 = and i8 %6437, 1
  %6439 = xor i8 %6438, 1
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6439, i8* %6440, align 1
  %6441 = xor i64 %6425, %6424
  %6442 = xor i64 %6441, %6428
  %6443 = lshr i64 %6442, 4
  %6444 = trunc i64 %6443 to i8
  %6445 = and i8 %6444, 1
  %6446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6445, i8* %6446, align 1
  %6447 = icmp eq i64 %6428, 0
  %6448 = zext i1 %6447 to i8
  %6449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6448, i8* %6449, align 1
  %6450 = lshr i64 %6428, 63
  %6451 = trunc i64 %6450 to i8
  %6452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6451, i8* %6452, align 1
  %6453 = lshr i64 %6424, 63
  %6454 = lshr i64 %6425, 63
  %6455 = xor i64 %6450, %6453
  %6456 = xor i64 %6450, %6454
  %6457 = add i64 %6455, %6456
  %6458 = icmp eq i64 %6457, 2
  %6459 = zext i1 %6458 to i8
  %6460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6459, i8* %6460, align 1
  store %struct.Memory* %loadMem_49902d, %struct.Memory** %MEMORY
  %loadMem_499030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6462 = getelementptr inbounds %struct.GPR, %struct.GPR* %6461, i32 0, i32 33
  %6463 = getelementptr inbounds %struct.Reg, %struct.Reg* %6462, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %6463 to i64*
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6465 = getelementptr inbounds %struct.GPR, %struct.GPR* %6464, i32 0, i32 5
  %6466 = getelementptr inbounds %struct.Reg, %struct.Reg* %6465, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %6466 to i64*
  %6467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6468 = getelementptr inbounds %struct.GPR, %struct.GPR* %6467, i32 0, i32 15
  %6469 = getelementptr inbounds %struct.Reg, %struct.Reg* %6468, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %6469 to i64*
  %6470 = load i64, i64* %RBP.i187
  %6471 = sub i64 %6470, 16
  %6472 = load i64, i64* %PC.i185
  %6473 = add i64 %6472, 4
  store i64 %6473, i64* %PC.i185
  %6474 = inttoptr i64 %6471 to i32*
  %6475 = load i32, i32* %6474
  %6476 = sext i32 %6475 to i64
  store i64 %6476, i64* %RCX.i186, align 8
  store %struct.Memory* %loadMem_499030, %struct.Memory** %MEMORY
  %loadMem_499034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6478 = getelementptr inbounds %struct.GPR, %struct.GPR* %6477, i32 0, i32 33
  %6479 = getelementptr inbounds %struct.Reg, %struct.Reg* %6478, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %6479 to i64*
  %6480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6481 = getelementptr inbounds %struct.GPR, %struct.GPR* %6480, i32 0, i32 1
  %6482 = getelementptr inbounds %struct.Reg, %struct.Reg* %6481, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %6482 to i64*
  %6483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6484 = getelementptr inbounds %struct.GPR, %struct.GPR* %6483, i32 0, i32 5
  %6485 = getelementptr inbounds %struct.Reg, %struct.Reg* %6484, i32 0, i32 0
  %RCX.i184 = bitcast %union.anon* %6485 to i64*
  %6486 = load i64, i64* %RAX.i183
  %6487 = load i64, i64* %RCX.i184
  %6488 = mul i64 %6487, 4
  %6489 = add i64 %6488, %6486
  %6490 = load i64, i64* %PC.i182
  %6491 = add i64 %6490, 7
  store i64 %6491, i64* %PC.i182
  %6492 = inttoptr i64 %6489 to i32*
  store i32 1, i32* %6492
  store %struct.Memory* %loadMem_499034, %struct.Memory** %MEMORY
  %loadMem_49903b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6494 = getelementptr inbounds %struct.GPR, %struct.GPR* %6493, i32 0, i32 33
  %6495 = getelementptr inbounds %struct.Reg, %struct.Reg* %6494, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6495 to i64*
  %6496 = load i64, i64* %PC.i181
  %6497 = add i64 %6496, 37
  %6498 = load i64, i64* %PC.i181
  %6499 = add i64 %6498, 5
  store i64 %6499, i64* %PC.i181
  %6500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6497, i64* %6500, align 8
  store %struct.Memory* %loadMem_49903b, %struct.Memory** %MEMORY
  br label %block_.L_499060

block_.L_499040:                                  ; preds = %block_.L_498ff8
  %loadMem_499040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6502 = getelementptr inbounds %struct.GPR, %struct.GPR* %6501, i32 0, i32 33
  %6503 = getelementptr inbounds %struct.Reg, %struct.Reg* %6502, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %6503 to i64*
  %6504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6505 = getelementptr inbounds %struct.GPR, %struct.GPR* %6504, i32 0, i32 1
  %6506 = getelementptr inbounds %struct.Reg, %struct.Reg* %6505, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %6506 to i64*
  %6507 = load i64, i64* %PC.i179
  %6508 = add i64 %6507, 10
  store i64 %6508, i64* %PC.i179
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i180, align 8
  store %struct.Memory* %loadMem_499040, %struct.Memory** %MEMORY
  %loadMem_49904a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6510 = getelementptr inbounds %struct.GPR, %struct.GPR* %6509, i32 0, i32 33
  %6511 = getelementptr inbounds %struct.Reg, %struct.Reg* %6510, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6511 to i64*
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6513 = getelementptr inbounds %struct.GPR, %struct.GPR* %6512, i32 0, i32 5
  %6514 = getelementptr inbounds %struct.Reg, %struct.Reg* %6513, i32 0, i32 0
  %RCX.i177 = bitcast %union.anon* %6514 to i64*
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6516 = getelementptr inbounds %struct.GPR, %struct.GPR* %6515, i32 0, i32 15
  %6517 = getelementptr inbounds %struct.Reg, %struct.Reg* %6516, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %6517 to i64*
  %6518 = load i64, i64* %RBP.i178
  %6519 = sub i64 %6518, 12
  %6520 = load i64, i64* %PC.i176
  %6521 = add i64 %6520, 4
  store i64 %6521, i64* %PC.i176
  %6522 = inttoptr i64 %6519 to i32*
  %6523 = load i32, i32* %6522
  %6524 = sext i32 %6523 to i64
  store i64 %6524, i64* %RCX.i177, align 8
  store %struct.Memory* %loadMem_49904a, %struct.Memory** %MEMORY
  %loadMem_49904e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6526 = getelementptr inbounds %struct.GPR, %struct.GPR* %6525, i32 0, i32 33
  %6527 = getelementptr inbounds %struct.Reg, %struct.Reg* %6526, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %6527 to i64*
  %6528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6529 = getelementptr inbounds %struct.GPR, %struct.GPR* %6528, i32 0, i32 5
  %6530 = getelementptr inbounds %struct.Reg, %struct.Reg* %6529, i32 0, i32 0
  %RCX.i175 = bitcast %union.anon* %6530 to i64*
  %6531 = load i64, i64* %RCX.i175
  %6532 = load i64, i64* %PC.i174
  %6533 = add i64 %6532, 4
  store i64 %6533, i64* %PC.i174
  %6534 = sext i64 %6531 to i128
  %6535 = and i128 %6534, -18446744073709551616
  %6536 = zext i64 %6531 to i128
  %6537 = or i128 %6535, %6536
  %6538 = mul i128 76, %6537
  %6539 = trunc i128 %6538 to i64
  store i64 %6539, i64* %RCX.i175, align 8
  %6540 = sext i64 %6539 to i128
  %6541 = icmp ne i128 %6540, %6538
  %6542 = zext i1 %6541 to i8
  %6543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6542, i8* %6543, align 1
  %6544 = trunc i128 %6538 to i32
  %6545 = and i32 %6544, 255
  %6546 = call i32 @llvm.ctpop.i32(i32 %6545)
  %6547 = trunc i32 %6546 to i8
  %6548 = and i8 %6547, 1
  %6549 = xor i8 %6548, 1
  %6550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6549, i8* %6550, align 1
  %6551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6551, align 1
  %6552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6552, align 1
  %6553 = lshr i64 %6539, 63
  %6554 = trunc i64 %6553 to i8
  %6555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6554, i8* %6555, align 1
  %6556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6542, i8* %6556, align 1
  store %struct.Memory* %loadMem_49904e, %struct.Memory** %MEMORY
  %loadMem_499052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6558 = getelementptr inbounds %struct.GPR, %struct.GPR* %6557, i32 0, i32 33
  %6559 = getelementptr inbounds %struct.Reg, %struct.Reg* %6558, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %6559 to i64*
  %6560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6561 = getelementptr inbounds %struct.GPR, %struct.GPR* %6560, i32 0, i32 1
  %6562 = getelementptr inbounds %struct.Reg, %struct.Reg* %6561, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %6562 to i64*
  %6563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6564 = getelementptr inbounds %struct.GPR, %struct.GPR* %6563, i32 0, i32 5
  %6565 = getelementptr inbounds %struct.Reg, %struct.Reg* %6564, i32 0, i32 0
  %RCX.i173 = bitcast %union.anon* %6565 to i64*
  %6566 = load i64, i64* %RAX.i172
  %6567 = load i64, i64* %RCX.i173
  %6568 = load i64, i64* %PC.i171
  %6569 = add i64 %6568, 3
  store i64 %6569, i64* %PC.i171
  %6570 = add i64 %6567, %6566
  store i64 %6570, i64* %RAX.i172, align 8
  %6571 = icmp ult i64 %6570, %6566
  %6572 = icmp ult i64 %6570, %6567
  %6573 = or i1 %6571, %6572
  %6574 = zext i1 %6573 to i8
  %6575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6574, i8* %6575, align 1
  %6576 = trunc i64 %6570 to i32
  %6577 = and i32 %6576, 255
  %6578 = call i32 @llvm.ctpop.i32(i32 %6577)
  %6579 = trunc i32 %6578 to i8
  %6580 = and i8 %6579, 1
  %6581 = xor i8 %6580, 1
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6581, i8* %6582, align 1
  %6583 = xor i64 %6567, %6566
  %6584 = xor i64 %6583, %6570
  %6585 = lshr i64 %6584, 4
  %6586 = trunc i64 %6585 to i8
  %6587 = and i8 %6586, 1
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6587, i8* %6588, align 1
  %6589 = icmp eq i64 %6570, 0
  %6590 = zext i1 %6589 to i8
  %6591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6590, i8* %6591, align 1
  %6592 = lshr i64 %6570, 63
  %6593 = trunc i64 %6592 to i8
  %6594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6593, i8* %6594, align 1
  %6595 = lshr i64 %6566, 63
  %6596 = lshr i64 %6567, 63
  %6597 = xor i64 %6592, %6595
  %6598 = xor i64 %6592, %6596
  %6599 = add i64 %6597, %6598
  %6600 = icmp eq i64 %6599, 2
  %6601 = zext i1 %6600 to i8
  %6602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6601, i8* %6602, align 1
  store %struct.Memory* %loadMem_499052, %struct.Memory** %MEMORY
  %loadMem_499055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6604 = getelementptr inbounds %struct.GPR, %struct.GPR* %6603, i32 0, i32 33
  %6605 = getelementptr inbounds %struct.Reg, %struct.Reg* %6604, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %6605 to i64*
  %6606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6607 = getelementptr inbounds %struct.GPR, %struct.GPR* %6606, i32 0, i32 5
  %6608 = getelementptr inbounds %struct.Reg, %struct.Reg* %6607, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %6608 to i64*
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6610 = getelementptr inbounds %struct.GPR, %struct.GPR* %6609, i32 0, i32 15
  %6611 = getelementptr inbounds %struct.Reg, %struct.Reg* %6610, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %6611 to i64*
  %6612 = load i64, i64* %RBP.i170
  %6613 = sub i64 %6612, 16
  %6614 = load i64, i64* %PC.i168
  %6615 = add i64 %6614, 4
  store i64 %6615, i64* %PC.i168
  %6616 = inttoptr i64 %6613 to i32*
  %6617 = load i32, i32* %6616
  %6618 = sext i32 %6617 to i64
  store i64 %6618, i64* %RCX.i169, align 8
  store %struct.Memory* %loadMem_499055, %struct.Memory** %MEMORY
  %loadMem_499059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6620 = getelementptr inbounds %struct.GPR, %struct.GPR* %6619, i32 0, i32 33
  %6621 = getelementptr inbounds %struct.Reg, %struct.Reg* %6620, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %6621 to i64*
  %6622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6623 = getelementptr inbounds %struct.GPR, %struct.GPR* %6622, i32 0, i32 1
  %6624 = getelementptr inbounds %struct.Reg, %struct.Reg* %6623, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %6624 to i64*
  %6625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6626 = getelementptr inbounds %struct.GPR, %struct.GPR* %6625, i32 0, i32 5
  %6627 = getelementptr inbounds %struct.Reg, %struct.Reg* %6626, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %6627 to i64*
  %6628 = load i64, i64* %RAX.i166
  %6629 = load i64, i64* %RCX.i167
  %6630 = mul i64 %6629, 4
  %6631 = add i64 %6630, %6628
  %6632 = load i64, i64* %PC.i165
  %6633 = add i64 %6632, 7
  store i64 %6633, i64* %PC.i165
  %6634 = inttoptr i64 %6631 to i32*
  store i32 0, i32* %6634
  store %struct.Memory* %loadMem_499059, %struct.Memory** %MEMORY
  br label %block_.L_499060

block_.L_499060:                                  ; preds = %block_.L_499040, %block_49901b
  %loadMem_499060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6636 = getelementptr inbounds %struct.GPR, %struct.GPR* %6635, i32 0, i32 33
  %6637 = getelementptr inbounds %struct.Reg, %struct.Reg* %6636, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %6637 to i64*
  %6638 = load i64, i64* %PC.i164
  %6639 = add i64 %6638, 5
  %6640 = load i64, i64* %PC.i164
  %6641 = add i64 %6640, 5
  store i64 %6641, i64* %PC.i164
  %6642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6639, i64* %6642, align 8
  store %struct.Memory* %loadMem_499060, %struct.Memory** %MEMORY
  br label %block_.L_499065

block_.L_499065:                                  ; preds = %block_.L_499060, %block_498fd3
  %loadMem_499065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6644 = getelementptr inbounds %struct.GPR, %struct.GPR* %6643, i32 0, i32 33
  %6645 = getelementptr inbounds %struct.Reg, %struct.Reg* %6644, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %6645 to i64*
  %6646 = load i64, i64* %PC.i163
  %6647 = add i64 %6646, 5
  %6648 = load i64, i64* %PC.i163
  %6649 = add i64 %6648, 5
  store i64 %6649, i64* %PC.i163
  %6650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6647, i64* %6650, align 8
  store %struct.Memory* %loadMem_499065, %struct.Memory** %MEMORY
  br label %block_.L_49906a

block_.L_49906a:                                  ; preds = %block_.L_499065, %block_498f8b
  %loadMem_49906a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6652 = getelementptr inbounds %struct.GPR, %struct.GPR* %6651, i32 0, i32 33
  %6653 = getelementptr inbounds %struct.Reg, %struct.Reg* %6652, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %6653 to i64*
  %6654 = load i64, i64* %PC.i162
  %6655 = add i64 %6654, 303
  %6656 = load i64, i64* %PC.i162
  %6657 = add i64 %6656, 5
  store i64 %6657, i64* %PC.i162
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6655, i64* %6658, align 8
  store %struct.Memory* %loadMem_49906a, %struct.Memory** %MEMORY
  br label %block_.L_499199

block_.L_49906f:                                  ; preds = %block_.L_498f4a
  %loadMem_49906f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6660 = getelementptr inbounds %struct.GPR, %struct.GPR* %6659, i32 0, i32 33
  %6661 = getelementptr inbounds %struct.Reg, %struct.Reg* %6660, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %6661 to i64*
  %6662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6663 = getelementptr inbounds %struct.GPR, %struct.GPR* %6662, i32 0, i32 1
  %6664 = getelementptr inbounds %struct.Reg, %struct.Reg* %6663, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %6664 to i64*
  %6665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6666 = getelementptr inbounds %struct.GPR, %struct.GPR* %6665, i32 0, i32 15
  %6667 = getelementptr inbounds %struct.Reg, %struct.Reg* %6666, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %6667 to i64*
  %6668 = load i64, i64* %RBP.i161
  %6669 = sub i64 %6668, 12
  %6670 = load i64, i64* %PC.i159
  %6671 = add i64 %6670, 4
  store i64 %6671, i64* %PC.i159
  %6672 = inttoptr i64 %6669 to i32*
  %6673 = load i32, i32* %6672
  %6674 = sext i32 %6673 to i64
  %6675 = mul i64 %6674, 20
  %6676 = trunc i64 %6675 to i32
  %6677 = and i64 %6675, 4294967295
  store i64 %6677, i64* %RAX.i160, align 8
  %6678 = shl i64 %6675, 32
  %6679 = ashr exact i64 %6678, 32
  %6680 = icmp ne i64 %6679, %6675
  %6681 = zext i1 %6680 to i8
  %6682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6681, i8* %6682, align 1
  %6683 = and i32 %6676, 255
  %6684 = call i32 @llvm.ctpop.i32(i32 %6683)
  %6685 = trunc i32 %6684 to i8
  %6686 = and i8 %6685, 1
  %6687 = xor i8 %6686, 1
  %6688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6687, i8* %6688, align 1
  %6689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6689, align 1
  %6690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6690, align 1
  %6691 = lshr i32 %6676, 31
  %6692 = trunc i32 %6691 to i8
  %6693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6692, i8* %6693, align 1
  %6694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6681, i8* %6694, align 1
  store %struct.Memory* %loadMem_49906f, %struct.Memory** %MEMORY
  %loadMem_499073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6696 = getelementptr inbounds %struct.GPR, %struct.GPR* %6695, i32 0, i32 33
  %6697 = getelementptr inbounds %struct.Reg, %struct.Reg* %6696, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %6697 to i64*
  %6698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6699 = getelementptr inbounds %struct.GPR, %struct.GPR* %6698, i32 0, i32 1
  %6700 = getelementptr inbounds %struct.Reg, %struct.Reg* %6699, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %6700 to i64*
  %6701 = load i64, i64* %RAX.i158
  %6702 = load i64, i64* %PC.i157
  %6703 = add i64 %6702, 3
  store i64 %6703, i64* %PC.i157
  %6704 = trunc i64 %6701 to i32
  %6705 = add i32 21, %6704
  %6706 = zext i32 %6705 to i64
  store i64 %6706, i64* %RAX.i158, align 8
  %6707 = icmp ult i32 %6705, %6704
  %6708 = icmp ult i32 %6705, 21
  %6709 = or i1 %6707, %6708
  %6710 = zext i1 %6709 to i8
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6710, i8* %6711, align 1
  %6712 = and i32 %6705, 255
  %6713 = call i32 @llvm.ctpop.i32(i32 %6712)
  %6714 = trunc i32 %6713 to i8
  %6715 = and i8 %6714, 1
  %6716 = xor i8 %6715, 1
  %6717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6716, i8* %6717, align 1
  %6718 = xor i64 21, %6701
  %6719 = trunc i64 %6718 to i32
  %6720 = xor i32 %6719, %6705
  %6721 = lshr i32 %6720, 4
  %6722 = trunc i32 %6721 to i8
  %6723 = and i8 %6722, 1
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6723, i8* %6724, align 1
  %6725 = icmp eq i32 %6705, 0
  %6726 = zext i1 %6725 to i8
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6726, i8* %6727, align 1
  %6728 = lshr i32 %6705, 31
  %6729 = trunc i32 %6728 to i8
  %6730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6729, i8* %6730, align 1
  %6731 = lshr i32 %6704, 31
  %6732 = xor i32 %6728, %6731
  %6733 = add i32 %6732, %6728
  %6734 = icmp eq i32 %6733, 2
  %6735 = zext i1 %6734 to i8
  %6736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6735, i8* %6736, align 1
  store %struct.Memory* %loadMem_499073, %struct.Memory** %MEMORY
  %loadMem_499076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6738 = getelementptr inbounds %struct.GPR, %struct.GPR* %6737, i32 0, i32 33
  %6739 = getelementptr inbounds %struct.Reg, %struct.Reg* %6738, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %6739 to i64*
  %6740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6741 = getelementptr inbounds %struct.GPR, %struct.GPR* %6740, i32 0, i32 1
  %6742 = getelementptr inbounds %struct.Reg, %struct.Reg* %6741, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %6742 to i64*
  %6743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6744 = getelementptr inbounds %struct.GPR, %struct.GPR* %6743, i32 0, i32 15
  %6745 = getelementptr inbounds %struct.Reg, %struct.Reg* %6744, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %6745 to i64*
  %6746 = load i64, i64* %RAX.i155
  %6747 = load i64, i64* %RBP.i156
  %6748 = sub i64 %6747, 16
  %6749 = load i64, i64* %PC.i154
  %6750 = add i64 %6749, 3
  store i64 %6750, i64* %PC.i154
  %6751 = trunc i64 %6746 to i32
  %6752 = inttoptr i64 %6748 to i32*
  %6753 = load i32, i32* %6752
  %6754 = add i32 %6753, %6751
  %6755 = zext i32 %6754 to i64
  store i64 %6755, i64* %RAX.i155, align 8
  %6756 = icmp ult i32 %6754, %6751
  %6757 = icmp ult i32 %6754, %6753
  %6758 = or i1 %6756, %6757
  %6759 = zext i1 %6758 to i8
  %6760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6759, i8* %6760, align 1
  %6761 = and i32 %6754, 255
  %6762 = call i32 @llvm.ctpop.i32(i32 %6761)
  %6763 = trunc i32 %6762 to i8
  %6764 = and i8 %6763, 1
  %6765 = xor i8 %6764, 1
  %6766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6765, i8* %6766, align 1
  %6767 = xor i32 %6753, %6751
  %6768 = xor i32 %6767, %6754
  %6769 = lshr i32 %6768, 4
  %6770 = trunc i32 %6769 to i8
  %6771 = and i8 %6770, 1
  %6772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6771, i8* %6772, align 1
  %6773 = icmp eq i32 %6754, 0
  %6774 = zext i1 %6773 to i8
  %6775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6774, i8* %6775, align 1
  %6776 = lshr i32 %6754, 31
  %6777 = trunc i32 %6776 to i8
  %6778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6777, i8* %6778, align 1
  %6779 = lshr i32 %6751, 31
  %6780 = lshr i32 %6753, 31
  %6781 = xor i32 %6776, %6779
  %6782 = xor i32 %6776, %6780
  %6783 = add i32 %6781, %6782
  %6784 = icmp eq i32 %6783, 2
  %6785 = zext i1 %6784 to i8
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6785, i8* %6786, align 1
  store %struct.Memory* %loadMem_499076, %struct.Memory** %MEMORY
  %loadMem_499079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6788 = getelementptr inbounds %struct.GPR, %struct.GPR* %6787, i32 0, i32 33
  %6789 = getelementptr inbounds %struct.Reg, %struct.Reg* %6788, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %6789 to i64*
  %6790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6791 = getelementptr inbounds %struct.GPR, %struct.GPR* %6790, i32 0, i32 1
  %6792 = getelementptr inbounds %struct.Reg, %struct.Reg* %6791, i32 0, i32 0
  %EAX.i152 = bitcast %union.anon* %6792 to i32*
  %6793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6794 = getelementptr inbounds %struct.GPR, %struct.GPR* %6793, i32 0, i32 5
  %6795 = getelementptr inbounds %struct.Reg, %struct.Reg* %6794, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %6795 to i64*
  %6796 = load i32, i32* %EAX.i152
  %6797 = zext i32 %6796 to i64
  %6798 = load i64, i64* %PC.i151
  %6799 = add i64 %6798, 3
  store i64 %6799, i64* %PC.i151
  %6800 = shl i64 %6797, 32
  %6801 = ashr exact i64 %6800, 32
  store i64 %6801, i64* %RCX.i153, align 8
  store %struct.Memory* %loadMem_499079, %struct.Memory** %MEMORY
  %loadMem_49907c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6803 = getelementptr inbounds %struct.GPR, %struct.GPR* %6802, i32 0, i32 33
  %6804 = getelementptr inbounds %struct.Reg, %struct.Reg* %6803, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %6804 to i64*
  %6805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6806 = getelementptr inbounds %struct.GPR, %struct.GPR* %6805, i32 0, i32 1
  %6807 = getelementptr inbounds %struct.Reg, %struct.Reg* %6806, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %6807 to i64*
  %6808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6809 = getelementptr inbounds %struct.GPR, %struct.GPR* %6808, i32 0, i32 5
  %6810 = getelementptr inbounds %struct.Reg, %struct.Reg* %6809, i32 0, i32 0
  %RCX.i150 = bitcast %union.anon* %6810 to i64*
  %6811 = load i64, i64* %RCX.i150
  %6812 = add i64 %6811, 12099168
  %6813 = load i64, i64* %PC.i148
  %6814 = add i64 %6813, 8
  store i64 %6814, i64* %PC.i148
  %6815 = inttoptr i64 %6812 to i8*
  %6816 = load i8, i8* %6815
  %6817 = zext i8 %6816 to i64
  store i64 %6817, i64* %RAX.i149, align 8
  store %struct.Memory* %loadMem_49907c, %struct.Memory** %MEMORY
  %loadMem_499084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6819 = getelementptr inbounds %struct.GPR, %struct.GPR* %6818, i32 0, i32 33
  %6820 = getelementptr inbounds %struct.Reg, %struct.Reg* %6819, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %6820 to i64*
  %6821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6822 = getelementptr inbounds %struct.GPR, %struct.GPR* %6821, i32 0, i32 1
  %6823 = getelementptr inbounds %struct.Reg, %struct.Reg* %6822, i32 0, i32 0
  %EAX.i147 = bitcast %union.anon* %6823 to i32*
  %6824 = load i32, i32* %EAX.i147
  %6825 = zext i32 %6824 to i64
  %6826 = load i64, i64* %PC.i146
  %6827 = add i64 %6826, 3
  store i64 %6827, i64* %PC.i146
  %6828 = sub i32 %6824, 1
  %6829 = icmp ult i32 %6824, 1
  %6830 = zext i1 %6829 to i8
  %6831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6830, i8* %6831, align 1
  %6832 = and i32 %6828, 255
  %6833 = call i32 @llvm.ctpop.i32(i32 %6832)
  %6834 = trunc i32 %6833 to i8
  %6835 = and i8 %6834, 1
  %6836 = xor i8 %6835, 1
  %6837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6836, i8* %6837, align 1
  %6838 = xor i64 1, %6825
  %6839 = trunc i64 %6838 to i32
  %6840 = xor i32 %6839, %6828
  %6841 = lshr i32 %6840, 4
  %6842 = trunc i32 %6841 to i8
  %6843 = and i8 %6842, 1
  %6844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6843, i8* %6844, align 1
  %6845 = icmp eq i32 %6828, 0
  %6846 = zext i1 %6845 to i8
  %6847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6846, i8* %6847, align 1
  %6848 = lshr i32 %6828, 31
  %6849 = trunc i32 %6848 to i8
  %6850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6849, i8* %6850, align 1
  %6851 = lshr i32 %6824, 31
  %6852 = xor i32 %6848, %6851
  %6853 = add i32 %6852, %6851
  %6854 = icmp eq i32 %6853, 2
  %6855 = zext i1 %6854 to i8
  %6856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6855, i8* %6856, align 1
  store %struct.Memory* %loadMem_499084, %struct.Memory** %MEMORY
  %loadMem_499087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6858 = getelementptr inbounds %struct.GPR, %struct.GPR* %6857, i32 0, i32 33
  %6859 = getelementptr inbounds %struct.Reg, %struct.Reg* %6858, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %6859 to i64*
  %6860 = load i64, i64* %PC.i145
  %6861 = add i64 %6860, 269
  %6862 = load i64, i64* %PC.i145
  %6863 = add i64 %6862, 6
  %6864 = load i64, i64* %PC.i145
  %6865 = add i64 %6864, 6
  store i64 %6865, i64* %PC.i145
  %6866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6867 = load i8, i8* %6866, align 1
  %6868 = icmp eq i8 %6867, 0
  %6869 = zext i1 %6868 to i8
  store i8 %6869, i8* %BRANCH_TAKEN, align 1
  %6870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6871 = select i1 %6868, i64 %6861, i64 %6863
  store i64 %6871, i64* %6870, align 8
  store %struct.Memory* %loadMem_499087, %struct.Memory** %MEMORY
  %loadBr_499087 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_499087 = icmp eq i8 %loadBr_499087, 1
  br i1 %cmpBr_499087, label %block_.L_499194, label %block_49908d

block_49908d:                                     ; preds = %block_.L_49906f
  %loadMem_49908d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6873 = getelementptr inbounds %struct.GPR, %struct.GPR* %6872, i32 0, i32 33
  %6874 = getelementptr inbounds %struct.Reg, %struct.Reg* %6873, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6874 to i64*
  %6875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6876 = getelementptr inbounds %struct.GPR, %struct.GPR* %6875, i32 0, i32 1
  %6877 = getelementptr inbounds %struct.Reg, %struct.Reg* %6876, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %6877 to i64*
  %6878 = load i64, i64* %PC.i143
  %6879 = add i64 %6878, 10
  store i64 %6879, i64* %PC.i143
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i144, align 8
  store %struct.Memory* %loadMem_49908d, %struct.Memory** %MEMORY
  %loadMem_499097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6881 = getelementptr inbounds %struct.GPR, %struct.GPR* %6880, i32 0, i32 33
  %6882 = getelementptr inbounds %struct.Reg, %struct.Reg* %6881, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %6882 to i64*
  %6883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6884 = getelementptr inbounds %struct.GPR, %struct.GPR* %6883, i32 0, i32 5
  %6885 = getelementptr inbounds %struct.Reg, %struct.Reg* %6884, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %6885 to i64*
  %6886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6887 = getelementptr inbounds %struct.GPR, %struct.GPR* %6886, i32 0, i32 15
  %6888 = getelementptr inbounds %struct.Reg, %struct.Reg* %6887, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %6888 to i64*
  %6889 = load i64, i64* %RBP.i142
  %6890 = sub i64 %6889, 12
  %6891 = load i64, i64* %PC.i140
  %6892 = add i64 %6891, 4
  store i64 %6892, i64* %PC.i140
  %6893 = inttoptr i64 %6890 to i32*
  %6894 = load i32, i32* %6893
  %6895 = sext i32 %6894 to i64
  store i64 %6895, i64* %RCX.i141, align 8
  store %struct.Memory* %loadMem_499097, %struct.Memory** %MEMORY
  %loadMem_49909b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6897 = getelementptr inbounds %struct.GPR, %struct.GPR* %6896, i32 0, i32 33
  %6898 = getelementptr inbounds %struct.Reg, %struct.Reg* %6897, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %6898 to i64*
  %6899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6900 = getelementptr inbounds %struct.GPR, %struct.GPR* %6899, i32 0, i32 5
  %6901 = getelementptr inbounds %struct.Reg, %struct.Reg* %6900, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %6901 to i64*
  %6902 = load i64, i64* %RCX.i139
  %6903 = load i64, i64* %PC.i138
  %6904 = add i64 %6903, 4
  store i64 %6904, i64* %PC.i138
  %6905 = sext i64 %6902 to i128
  %6906 = and i128 %6905, -18446744073709551616
  %6907 = zext i64 %6902 to i128
  %6908 = or i128 %6906, %6907
  %6909 = mul i128 76, %6908
  %6910 = trunc i128 %6909 to i64
  store i64 %6910, i64* %RCX.i139, align 8
  %6911 = sext i64 %6910 to i128
  %6912 = icmp ne i128 %6911, %6909
  %6913 = zext i1 %6912 to i8
  %6914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6913, i8* %6914, align 1
  %6915 = trunc i128 %6909 to i32
  %6916 = and i32 %6915, 255
  %6917 = call i32 @llvm.ctpop.i32(i32 %6916)
  %6918 = trunc i32 %6917 to i8
  %6919 = and i8 %6918, 1
  %6920 = xor i8 %6919, 1
  %6921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6920, i8* %6921, align 1
  %6922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6922, align 1
  %6923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6923, align 1
  %6924 = lshr i64 %6910, 63
  %6925 = trunc i64 %6924 to i8
  %6926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6925, i8* %6926, align 1
  %6927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6913, i8* %6927, align 1
  store %struct.Memory* %loadMem_49909b, %struct.Memory** %MEMORY
  %loadMem_49909f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6929 = getelementptr inbounds %struct.GPR, %struct.GPR* %6928, i32 0, i32 33
  %6930 = getelementptr inbounds %struct.Reg, %struct.Reg* %6929, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %6930 to i64*
  %6931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6932 = getelementptr inbounds %struct.GPR, %struct.GPR* %6931, i32 0, i32 1
  %6933 = getelementptr inbounds %struct.Reg, %struct.Reg* %6932, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %6933 to i64*
  %6934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6935 = getelementptr inbounds %struct.GPR, %struct.GPR* %6934, i32 0, i32 5
  %6936 = getelementptr inbounds %struct.Reg, %struct.Reg* %6935, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %6936 to i64*
  %6937 = load i64, i64* %RAX.i136
  %6938 = load i64, i64* %RCX.i137
  %6939 = load i64, i64* %PC.i135
  %6940 = add i64 %6939, 3
  store i64 %6940, i64* %PC.i135
  %6941 = add i64 %6938, %6937
  store i64 %6941, i64* %RAX.i136, align 8
  %6942 = icmp ult i64 %6941, %6937
  %6943 = icmp ult i64 %6941, %6938
  %6944 = or i1 %6942, %6943
  %6945 = zext i1 %6944 to i8
  %6946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6945, i8* %6946, align 1
  %6947 = trunc i64 %6941 to i32
  %6948 = and i32 %6947, 255
  %6949 = call i32 @llvm.ctpop.i32(i32 %6948)
  %6950 = trunc i32 %6949 to i8
  %6951 = and i8 %6950, 1
  %6952 = xor i8 %6951, 1
  %6953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6952, i8* %6953, align 1
  %6954 = xor i64 %6938, %6937
  %6955 = xor i64 %6954, %6941
  %6956 = lshr i64 %6955, 4
  %6957 = trunc i64 %6956 to i8
  %6958 = and i8 %6957, 1
  %6959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6958, i8* %6959, align 1
  %6960 = icmp eq i64 %6941, 0
  %6961 = zext i1 %6960 to i8
  %6962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6961, i8* %6962, align 1
  %6963 = lshr i64 %6941, 63
  %6964 = trunc i64 %6963 to i8
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6964, i8* %6965, align 1
  %6966 = lshr i64 %6937, 63
  %6967 = lshr i64 %6938, 63
  %6968 = xor i64 %6963, %6966
  %6969 = xor i64 %6963, %6967
  %6970 = add i64 %6968, %6969
  %6971 = icmp eq i64 %6970, 2
  %6972 = zext i1 %6971 to i8
  %6973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6972, i8* %6973, align 1
  store %struct.Memory* %loadMem_49909f, %struct.Memory** %MEMORY
  %loadMem_4990a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6975 = getelementptr inbounds %struct.GPR, %struct.GPR* %6974, i32 0, i32 33
  %6976 = getelementptr inbounds %struct.Reg, %struct.Reg* %6975, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %6976 to i64*
  %6977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6978 = getelementptr inbounds %struct.GPR, %struct.GPR* %6977, i32 0, i32 5
  %6979 = getelementptr inbounds %struct.Reg, %struct.Reg* %6978, i32 0, i32 0
  %RCX.i133 = bitcast %union.anon* %6979 to i64*
  %6980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6981 = getelementptr inbounds %struct.GPR, %struct.GPR* %6980, i32 0, i32 15
  %6982 = getelementptr inbounds %struct.Reg, %struct.Reg* %6981, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %6982 to i64*
  %6983 = load i64, i64* %RBP.i134
  %6984 = sub i64 %6983, 16
  %6985 = load i64, i64* %PC.i132
  %6986 = add i64 %6985, 4
  store i64 %6986, i64* %PC.i132
  %6987 = inttoptr i64 %6984 to i32*
  %6988 = load i32, i32* %6987
  %6989 = sext i32 %6988 to i64
  store i64 %6989, i64* %RCX.i133, align 8
  store %struct.Memory* %loadMem_4990a2, %struct.Memory** %MEMORY
  %loadMem_4990a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6991 = getelementptr inbounds %struct.GPR, %struct.GPR* %6990, i32 0, i32 33
  %6992 = getelementptr inbounds %struct.Reg, %struct.Reg* %6991, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %6992 to i64*
  %6993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6994 = getelementptr inbounds %struct.GPR, %struct.GPR* %6993, i32 0, i32 1
  %6995 = getelementptr inbounds %struct.Reg, %struct.Reg* %6994, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %6995 to i64*
  %6996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6997 = getelementptr inbounds %struct.GPR, %struct.GPR* %6996, i32 0, i32 5
  %6998 = getelementptr inbounds %struct.Reg, %struct.Reg* %6997, i32 0, i32 0
  %RCX.i131 = bitcast %union.anon* %6998 to i64*
  %6999 = load i64, i64* %RAX.i130
  %7000 = load i64, i64* %RCX.i131
  %7001 = mul i64 %7000, 4
  %7002 = add i64 %7001, %6999
  %7003 = load i64, i64* %PC.i129
  %7004 = add i64 %7003, 4
  store i64 %7004, i64* %PC.i129
  %7005 = inttoptr i64 %7002 to i32*
  %7006 = load i32, i32* %7005
  %7007 = sub i32 %7006, 13
  %7008 = icmp ult i32 %7006, 13
  %7009 = zext i1 %7008 to i8
  %7010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7009, i8* %7010, align 1
  %7011 = and i32 %7007, 255
  %7012 = call i32 @llvm.ctpop.i32(i32 %7011)
  %7013 = trunc i32 %7012 to i8
  %7014 = and i8 %7013, 1
  %7015 = xor i8 %7014, 1
  %7016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7015, i8* %7016, align 1
  %7017 = xor i32 %7006, 13
  %7018 = xor i32 %7017, %7007
  %7019 = lshr i32 %7018, 4
  %7020 = trunc i32 %7019 to i8
  %7021 = and i8 %7020, 1
  %7022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7021, i8* %7022, align 1
  %7023 = icmp eq i32 %7007, 0
  %7024 = zext i1 %7023 to i8
  %7025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7024, i8* %7025, align 1
  %7026 = lshr i32 %7007, 31
  %7027 = trunc i32 %7026 to i8
  %7028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7027, i8* %7028, align 1
  %7029 = lshr i32 %7006, 31
  %7030 = xor i32 %7026, %7029
  %7031 = add i32 %7030, %7029
  %7032 = icmp eq i32 %7031, 2
  %7033 = zext i1 %7032 to i8
  %7034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7033, i8* %7034, align 1
  store %struct.Memory* %loadMem_4990a6, %struct.Memory** %MEMORY
  %loadMem_4990aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7036 = getelementptr inbounds %struct.GPR, %struct.GPR* %7035, i32 0, i32 33
  %7037 = getelementptr inbounds %struct.Reg, %struct.Reg* %7036, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %7037 to i64*
  %7038 = load i64, i64* %PC.i128
  %7039 = add i64 %7038, 43
  %7040 = load i64, i64* %PC.i128
  %7041 = add i64 %7040, 6
  %7042 = load i64, i64* %PC.i128
  %7043 = add i64 %7042, 6
  store i64 %7043, i64* %PC.i128
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7045 = load i8, i8* %7044, align 1
  %7046 = icmp eq i8 %7045, 0
  %7047 = zext i1 %7046 to i8
  store i8 %7047, i8* %BRANCH_TAKEN, align 1
  %7048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7049 = select i1 %7046, i64 %7039, i64 %7041
  store i64 %7049, i64* %7048, align 8
  store %struct.Memory* %loadMem_4990aa, %struct.Memory** %MEMORY
  %loadBr_4990aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4990aa = icmp eq i8 %loadBr_4990aa, 1
  br i1 %cmpBr_4990aa, label %block_.L_4990d5, label %block_4990b0

block_4990b0:                                     ; preds = %block_49908d
  %loadMem_4990b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7051 = getelementptr inbounds %struct.GPR, %struct.GPR* %7050, i32 0, i32 33
  %7052 = getelementptr inbounds %struct.Reg, %struct.Reg* %7051, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %7052 to i64*
  %7053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7054 = getelementptr inbounds %struct.GPR, %struct.GPR* %7053, i32 0, i32 1
  %7055 = getelementptr inbounds %struct.Reg, %struct.Reg* %7054, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %7055 to i64*
  %7056 = load i64, i64* %PC.i126
  %7057 = add i64 %7056, 10
  store i64 %7057, i64* %PC.i126
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i127, align 8
  store %struct.Memory* %loadMem_4990b0, %struct.Memory** %MEMORY
  %loadMem_4990ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %7058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7059 = getelementptr inbounds %struct.GPR, %struct.GPR* %7058, i32 0, i32 33
  %7060 = getelementptr inbounds %struct.Reg, %struct.Reg* %7059, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %7060 to i64*
  %7061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7062 = getelementptr inbounds %struct.GPR, %struct.GPR* %7061, i32 0, i32 5
  %7063 = getelementptr inbounds %struct.Reg, %struct.Reg* %7062, i32 0, i32 0
  %RCX.i124 = bitcast %union.anon* %7063 to i64*
  %7064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7065 = getelementptr inbounds %struct.GPR, %struct.GPR* %7064, i32 0, i32 15
  %7066 = getelementptr inbounds %struct.Reg, %struct.Reg* %7065, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %7066 to i64*
  %7067 = load i64, i64* %RBP.i125
  %7068 = sub i64 %7067, 12
  %7069 = load i64, i64* %PC.i123
  %7070 = add i64 %7069, 4
  store i64 %7070, i64* %PC.i123
  %7071 = inttoptr i64 %7068 to i32*
  %7072 = load i32, i32* %7071
  %7073 = sext i32 %7072 to i64
  store i64 %7073, i64* %RCX.i124, align 8
  store %struct.Memory* %loadMem_4990ba, %struct.Memory** %MEMORY
  %loadMem_4990be = load %struct.Memory*, %struct.Memory** %MEMORY
  %7074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7075 = getelementptr inbounds %struct.GPR, %struct.GPR* %7074, i32 0, i32 33
  %7076 = getelementptr inbounds %struct.Reg, %struct.Reg* %7075, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %7076 to i64*
  %7077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7078 = getelementptr inbounds %struct.GPR, %struct.GPR* %7077, i32 0, i32 5
  %7079 = getelementptr inbounds %struct.Reg, %struct.Reg* %7078, i32 0, i32 0
  %RCX.i122 = bitcast %union.anon* %7079 to i64*
  %7080 = load i64, i64* %RCX.i122
  %7081 = load i64, i64* %PC.i121
  %7082 = add i64 %7081, 4
  store i64 %7082, i64* %PC.i121
  %7083 = sext i64 %7080 to i128
  %7084 = and i128 %7083, -18446744073709551616
  %7085 = zext i64 %7080 to i128
  %7086 = or i128 %7084, %7085
  %7087 = mul i128 76, %7086
  %7088 = trunc i128 %7087 to i64
  store i64 %7088, i64* %RCX.i122, align 8
  %7089 = sext i64 %7088 to i128
  %7090 = icmp ne i128 %7089, %7087
  %7091 = zext i1 %7090 to i8
  %7092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7091, i8* %7092, align 1
  %7093 = trunc i128 %7087 to i32
  %7094 = and i32 %7093, 255
  %7095 = call i32 @llvm.ctpop.i32(i32 %7094)
  %7096 = trunc i32 %7095 to i8
  %7097 = and i8 %7096, 1
  %7098 = xor i8 %7097, 1
  %7099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7098, i8* %7099, align 1
  %7100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7100, align 1
  %7101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7101, align 1
  %7102 = lshr i64 %7088, 63
  %7103 = trunc i64 %7102 to i8
  %7104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7103, i8* %7104, align 1
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7091, i8* %7105, align 1
  store %struct.Memory* %loadMem_4990be, %struct.Memory** %MEMORY
  %loadMem_4990c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7107 = getelementptr inbounds %struct.GPR, %struct.GPR* %7106, i32 0, i32 33
  %7108 = getelementptr inbounds %struct.Reg, %struct.Reg* %7107, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %7108 to i64*
  %7109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7110 = getelementptr inbounds %struct.GPR, %struct.GPR* %7109, i32 0, i32 1
  %7111 = getelementptr inbounds %struct.Reg, %struct.Reg* %7110, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %7111 to i64*
  %7112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7113 = getelementptr inbounds %struct.GPR, %struct.GPR* %7112, i32 0, i32 5
  %7114 = getelementptr inbounds %struct.Reg, %struct.Reg* %7113, i32 0, i32 0
  %RCX.i120 = bitcast %union.anon* %7114 to i64*
  %7115 = load i64, i64* %RAX.i119
  %7116 = load i64, i64* %RCX.i120
  %7117 = load i64, i64* %PC.i118
  %7118 = add i64 %7117, 3
  store i64 %7118, i64* %PC.i118
  %7119 = add i64 %7116, %7115
  store i64 %7119, i64* %RAX.i119, align 8
  %7120 = icmp ult i64 %7119, %7115
  %7121 = icmp ult i64 %7119, %7116
  %7122 = or i1 %7120, %7121
  %7123 = zext i1 %7122 to i8
  %7124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7123, i8* %7124, align 1
  %7125 = trunc i64 %7119 to i32
  %7126 = and i32 %7125, 255
  %7127 = call i32 @llvm.ctpop.i32(i32 %7126)
  %7128 = trunc i32 %7127 to i8
  %7129 = and i8 %7128, 1
  %7130 = xor i8 %7129, 1
  %7131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7130, i8* %7131, align 1
  %7132 = xor i64 %7116, %7115
  %7133 = xor i64 %7132, %7119
  %7134 = lshr i64 %7133, 4
  %7135 = trunc i64 %7134 to i8
  %7136 = and i8 %7135, 1
  %7137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7136, i8* %7137, align 1
  %7138 = icmp eq i64 %7119, 0
  %7139 = zext i1 %7138 to i8
  %7140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7139, i8* %7140, align 1
  %7141 = lshr i64 %7119, 63
  %7142 = trunc i64 %7141 to i8
  %7143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7142, i8* %7143, align 1
  %7144 = lshr i64 %7115, 63
  %7145 = lshr i64 %7116, 63
  %7146 = xor i64 %7141, %7144
  %7147 = xor i64 %7141, %7145
  %7148 = add i64 %7146, %7147
  %7149 = icmp eq i64 %7148, 2
  %7150 = zext i1 %7149 to i8
  %7151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7150, i8* %7151, align 1
  store %struct.Memory* %loadMem_4990c2, %struct.Memory** %MEMORY
  %loadMem_4990c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7153 = getelementptr inbounds %struct.GPR, %struct.GPR* %7152, i32 0, i32 33
  %7154 = getelementptr inbounds %struct.Reg, %struct.Reg* %7153, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %7154 to i64*
  %7155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7156 = getelementptr inbounds %struct.GPR, %struct.GPR* %7155, i32 0, i32 5
  %7157 = getelementptr inbounds %struct.Reg, %struct.Reg* %7156, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %7157 to i64*
  %7158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7159 = getelementptr inbounds %struct.GPR, %struct.GPR* %7158, i32 0, i32 15
  %7160 = getelementptr inbounds %struct.Reg, %struct.Reg* %7159, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %7160 to i64*
  %7161 = load i64, i64* %RBP.i117
  %7162 = sub i64 %7161, 16
  %7163 = load i64, i64* %PC.i115
  %7164 = add i64 %7163, 4
  store i64 %7164, i64* %PC.i115
  %7165 = inttoptr i64 %7162 to i32*
  %7166 = load i32, i32* %7165
  %7167 = sext i32 %7166 to i64
  store i64 %7167, i64* %RCX.i116, align 8
  store %struct.Memory* %loadMem_4990c5, %struct.Memory** %MEMORY
  %loadMem_4990c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7169 = getelementptr inbounds %struct.GPR, %struct.GPR* %7168, i32 0, i32 33
  %7170 = getelementptr inbounds %struct.Reg, %struct.Reg* %7169, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %7170 to i64*
  %7171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7172 = getelementptr inbounds %struct.GPR, %struct.GPR* %7171, i32 0, i32 1
  %7173 = getelementptr inbounds %struct.Reg, %struct.Reg* %7172, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %7173 to i64*
  %7174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7175 = getelementptr inbounds %struct.GPR, %struct.GPR* %7174, i32 0, i32 5
  %7176 = getelementptr inbounds %struct.Reg, %struct.Reg* %7175, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %7176 to i64*
  %7177 = load i64, i64* %RAX.i113
  %7178 = load i64, i64* %RCX.i114
  %7179 = mul i64 %7178, 4
  %7180 = add i64 %7179, %7177
  %7181 = load i64, i64* %PC.i112
  %7182 = add i64 %7181, 7
  store i64 %7182, i64* %PC.i112
  %7183 = inttoptr i64 %7180 to i32*
  store i32 0, i32* %7183
  store %struct.Memory* %loadMem_4990c9, %struct.Memory** %MEMORY
  %loadMem_4990d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7185 = getelementptr inbounds %struct.GPR, %struct.GPR* %7184, i32 0, i32 33
  %7186 = getelementptr inbounds %struct.Reg, %struct.Reg* %7185, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %7186 to i64*
  %7187 = load i64, i64* %PC.i111
  %7188 = add i64 %7187, 191
  %7189 = load i64, i64* %PC.i111
  %7190 = add i64 %7189, 5
  store i64 %7190, i64* %PC.i111
  %7191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7188, i64* %7191, align 8
  store %struct.Memory* %loadMem_4990d0, %struct.Memory** %MEMORY
  br label %block_.L_49918f

block_.L_4990d5:                                  ; preds = %block_49908d
  %loadMem_4990d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7193 = getelementptr inbounds %struct.GPR, %struct.GPR* %7192, i32 0, i32 33
  %7194 = getelementptr inbounds %struct.Reg, %struct.Reg* %7193, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %7194 to i64*
  %7195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7196 = getelementptr inbounds %struct.GPR, %struct.GPR* %7195, i32 0, i32 1
  %7197 = getelementptr inbounds %struct.Reg, %struct.Reg* %7196, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %7197 to i64*
  %7198 = load i64, i64* %PC.i109
  %7199 = add i64 %7198, 10
  store i64 %7199, i64* %PC.i109
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i110, align 8
  store %struct.Memory* %loadMem_4990d5, %struct.Memory** %MEMORY
  %loadMem_4990df = load %struct.Memory*, %struct.Memory** %MEMORY
  %7200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7201 = getelementptr inbounds %struct.GPR, %struct.GPR* %7200, i32 0, i32 33
  %7202 = getelementptr inbounds %struct.Reg, %struct.Reg* %7201, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %7202 to i64*
  %7203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7204 = getelementptr inbounds %struct.GPR, %struct.GPR* %7203, i32 0, i32 5
  %7205 = getelementptr inbounds %struct.Reg, %struct.Reg* %7204, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %7205 to i64*
  %7206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7207 = getelementptr inbounds %struct.GPR, %struct.GPR* %7206, i32 0, i32 15
  %7208 = getelementptr inbounds %struct.Reg, %struct.Reg* %7207, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %7208 to i64*
  %7209 = load i64, i64* %RBP.i108
  %7210 = sub i64 %7209, 12
  %7211 = load i64, i64* %PC.i106
  %7212 = add i64 %7211, 4
  store i64 %7212, i64* %PC.i106
  %7213 = inttoptr i64 %7210 to i32*
  %7214 = load i32, i32* %7213
  %7215 = sext i32 %7214 to i64
  store i64 %7215, i64* %RCX.i107, align 8
  store %struct.Memory* %loadMem_4990df, %struct.Memory** %MEMORY
  %loadMem_4990e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7217 = getelementptr inbounds %struct.GPR, %struct.GPR* %7216, i32 0, i32 33
  %7218 = getelementptr inbounds %struct.Reg, %struct.Reg* %7217, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %7218 to i64*
  %7219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7220 = getelementptr inbounds %struct.GPR, %struct.GPR* %7219, i32 0, i32 5
  %7221 = getelementptr inbounds %struct.Reg, %struct.Reg* %7220, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %7221 to i64*
  %7222 = load i64, i64* %RCX.i105
  %7223 = load i64, i64* %PC.i104
  %7224 = add i64 %7223, 4
  store i64 %7224, i64* %PC.i104
  %7225 = sext i64 %7222 to i128
  %7226 = and i128 %7225, -18446744073709551616
  %7227 = zext i64 %7222 to i128
  %7228 = or i128 %7226, %7227
  %7229 = mul i128 76, %7228
  %7230 = trunc i128 %7229 to i64
  store i64 %7230, i64* %RCX.i105, align 8
  %7231 = sext i64 %7230 to i128
  %7232 = icmp ne i128 %7231, %7229
  %7233 = zext i1 %7232 to i8
  %7234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7233, i8* %7234, align 1
  %7235 = trunc i128 %7229 to i32
  %7236 = and i32 %7235, 255
  %7237 = call i32 @llvm.ctpop.i32(i32 %7236)
  %7238 = trunc i32 %7237 to i8
  %7239 = and i8 %7238, 1
  %7240 = xor i8 %7239, 1
  %7241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7240, i8* %7241, align 1
  %7242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7242, align 1
  %7243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7243, align 1
  %7244 = lshr i64 %7230, 63
  %7245 = trunc i64 %7244 to i8
  %7246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7245, i8* %7246, align 1
  %7247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7233, i8* %7247, align 1
  store %struct.Memory* %loadMem_4990e3, %struct.Memory** %MEMORY
  %loadMem_4990e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7249 = getelementptr inbounds %struct.GPR, %struct.GPR* %7248, i32 0, i32 33
  %7250 = getelementptr inbounds %struct.Reg, %struct.Reg* %7249, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %7250 to i64*
  %7251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7252 = getelementptr inbounds %struct.GPR, %struct.GPR* %7251, i32 0, i32 1
  %7253 = getelementptr inbounds %struct.Reg, %struct.Reg* %7252, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %7253 to i64*
  %7254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7255 = getelementptr inbounds %struct.GPR, %struct.GPR* %7254, i32 0, i32 5
  %7256 = getelementptr inbounds %struct.Reg, %struct.Reg* %7255, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %7256 to i64*
  %7257 = load i64, i64* %RAX.i102
  %7258 = load i64, i64* %RCX.i103
  %7259 = load i64, i64* %PC.i101
  %7260 = add i64 %7259, 3
  store i64 %7260, i64* %PC.i101
  %7261 = add i64 %7258, %7257
  store i64 %7261, i64* %RAX.i102, align 8
  %7262 = icmp ult i64 %7261, %7257
  %7263 = icmp ult i64 %7261, %7258
  %7264 = or i1 %7262, %7263
  %7265 = zext i1 %7264 to i8
  %7266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7265, i8* %7266, align 1
  %7267 = trunc i64 %7261 to i32
  %7268 = and i32 %7267, 255
  %7269 = call i32 @llvm.ctpop.i32(i32 %7268)
  %7270 = trunc i32 %7269 to i8
  %7271 = and i8 %7270, 1
  %7272 = xor i8 %7271, 1
  %7273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7272, i8* %7273, align 1
  %7274 = xor i64 %7258, %7257
  %7275 = xor i64 %7274, %7261
  %7276 = lshr i64 %7275, 4
  %7277 = trunc i64 %7276 to i8
  %7278 = and i8 %7277, 1
  %7279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7278, i8* %7279, align 1
  %7280 = icmp eq i64 %7261, 0
  %7281 = zext i1 %7280 to i8
  %7282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7281, i8* %7282, align 1
  %7283 = lshr i64 %7261, 63
  %7284 = trunc i64 %7283 to i8
  %7285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7284, i8* %7285, align 1
  %7286 = lshr i64 %7257, 63
  %7287 = lshr i64 %7258, 63
  %7288 = xor i64 %7283, %7286
  %7289 = xor i64 %7283, %7287
  %7290 = add i64 %7288, %7289
  %7291 = icmp eq i64 %7290, 2
  %7292 = zext i1 %7291 to i8
  %7293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7292, i8* %7293, align 1
  store %struct.Memory* %loadMem_4990e7, %struct.Memory** %MEMORY
  %loadMem_4990ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %7294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7295 = getelementptr inbounds %struct.GPR, %struct.GPR* %7294, i32 0, i32 33
  %7296 = getelementptr inbounds %struct.Reg, %struct.Reg* %7295, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %7296 to i64*
  %7297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7298 = getelementptr inbounds %struct.GPR, %struct.GPR* %7297, i32 0, i32 5
  %7299 = getelementptr inbounds %struct.Reg, %struct.Reg* %7298, i32 0, i32 0
  %RCX.i99 = bitcast %union.anon* %7299 to i64*
  %7300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7301 = getelementptr inbounds %struct.GPR, %struct.GPR* %7300, i32 0, i32 15
  %7302 = getelementptr inbounds %struct.Reg, %struct.Reg* %7301, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %7302 to i64*
  %7303 = load i64, i64* %RBP.i100
  %7304 = sub i64 %7303, 16
  %7305 = load i64, i64* %PC.i98
  %7306 = add i64 %7305, 4
  store i64 %7306, i64* %PC.i98
  %7307 = inttoptr i64 %7304 to i32*
  %7308 = load i32, i32* %7307
  %7309 = sext i32 %7308 to i64
  store i64 %7309, i64* %RCX.i99, align 8
  store %struct.Memory* %loadMem_4990ea, %struct.Memory** %MEMORY
  %loadMem_4990ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %7310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7311 = getelementptr inbounds %struct.GPR, %struct.GPR* %7310, i32 0, i32 33
  %7312 = getelementptr inbounds %struct.Reg, %struct.Reg* %7311, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %7312 to i64*
  %7313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7314 = getelementptr inbounds %struct.GPR, %struct.GPR* %7313, i32 0, i32 1
  %7315 = getelementptr inbounds %struct.Reg, %struct.Reg* %7314, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %7315 to i64*
  %7316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7317 = getelementptr inbounds %struct.GPR, %struct.GPR* %7316, i32 0, i32 5
  %7318 = getelementptr inbounds %struct.Reg, %struct.Reg* %7317, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %7318 to i64*
  %7319 = load i64, i64* %RAX.i96
  %7320 = load i64, i64* %RCX.i97
  %7321 = mul i64 %7320, 4
  %7322 = add i64 %7321, %7319
  %7323 = load i64, i64* %PC.i95
  %7324 = add i64 %7323, 4
  store i64 %7324, i64* %PC.i95
  %7325 = inttoptr i64 %7322 to i32*
  %7326 = load i32, i32* %7325
  %7327 = sub i32 %7326, 15
  %7328 = icmp ult i32 %7326, 15
  %7329 = zext i1 %7328 to i8
  %7330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7329, i8* %7330, align 1
  %7331 = and i32 %7327, 255
  %7332 = call i32 @llvm.ctpop.i32(i32 %7331)
  %7333 = trunc i32 %7332 to i8
  %7334 = and i8 %7333, 1
  %7335 = xor i8 %7334, 1
  %7336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7335, i8* %7336, align 1
  %7337 = xor i32 %7326, 15
  %7338 = xor i32 %7337, %7327
  %7339 = lshr i32 %7338, 4
  %7340 = trunc i32 %7339 to i8
  %7341 = and i8 %7340, 1
  %7342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7341, i8* %7342, align 1
  %7343 = icmp eq i32 %7327, 0
  %7344 = zext i1 %7343 to i8
  %7345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7344, i8* %7345, align 1
  %7346 = lshr i32 %7327, 31
  %7347 = trunc i32 %7346 to i8
  %7348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7347, i8* %7348, align 1
  %7349 = lshr i32 %7326, 31
  %7350 = xor i32 %7346, %7349
  %7351 = add i32 %7350, %7349
  %7352 = icmp eq i32 %7351, 2
  %7353 = zext i1 %7352 to i8
  %7354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7353, i8* %7354, align 1
  store %struct.Memory* %loadMem_4990ee, %struct.Memory** %MEMORY
  %loadMem_4990f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7356 = getelementptr inbounds %struct.GPR, %struct.GPR* %7355, i32 0, i32 33
  %7357 = getelementptr inbounds %struct.Reg, %struct.Reg* %7356, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %7357 to i64*
  %7358 = load i64, i64* %PC.i94
  %7359 = add i64 %7358, 43
  %7360 = load i64, i64* %PC.i94
  %7361 = add i64 %7360, 6
  %7362 = load i64, i64* %PC.i94
  %7363 = add i64 %7362, 6
  store i64 %7363, i64* %PC.i94
  %7364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7365 = load i8, i8* %7364, align 1
  %7366 = icmp eq i8 %7365, 0
  %7367 = zext i1 %7366 to i8
  store i8 %7367, i8* %BRANCH_TAKEN, align 1
  %7368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7369 = select i1 %7366, i64 %7359, i64 %7361
  store i64 %7369, i64* %7368, align 8
  store %struct.Memory* %loadMem_4990f2, %struct.Memory** %MEMORY
  %loadBr_4990f2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4990f2 = icmp eq i8 %loadBr_4990f2, 1
  br i1 %cmpBr_4990f2, label %block_.L_49911d, label %block_4990f8

block_4990f8:                                     ; preds = %block_.L_4990d5
  %loadMem_4990f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7371 = getelementptr inbounds %struct.GPR, %struct.GPR* %7370, i32 0, i32 33
  %7372 = getelementptr inbounds %struct.Reg, %struct.Reg* %7371, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %7372 to i64*
  %7373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7374 = getelementptr inbounds %struct.GPR, %struct.GPR* %7373, i32 0, i32 1
  %7375 = getelementptr inbounds %struct.Reg, %struct.Reg* %7374, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %7375 to i64*
  %7376 = load i64, i64* %PC.i92
  %7377 = add i64 %7376, 10
  store i64 %7377, i64* %PC.i92
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i93, align 8
  store %struct.Memory* %loadMem_4990f8, %struct.Memory** %MEMORY
  %loadMem_499102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7379 = getelementptr inbounds %struct.GPR, %struct.GPR* %7378, i32 0, i32 33
  %7380 = getelementptr inbounds %struct.Reg, %struct.Reg* %7379, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %7380 to i64*
  %7381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7382 = getelementptr inbounds %struct.GPR, %struct.GPR* %7381, i32 0, i32 5
  %7383 = getelementptr inbounds %struct.Reg, %struct.Reg* %7382, i32 0, i32 0
  %RCX.i90 = bitcast %union.anon* %7383 to i64*
  %7384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7385 = getelementptr inbounds %struct.GPR, %struct.GPR* %7384, i32 0, i32 15
  %7386 = getelementptr inbounds %struct.Reg, %struct.Reg* %7385, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %7386 to i64*
  %7387 = load i64, i64* %RBP.i91
  %7388 = sub i64 %7387, 12
  %7389 = load i64, i64* %PC.i89
  %7390 = add i64 %7389, 4
  store i64 %7390, i64* %PC.i89
  %7391 = inttoptr i64 %7388 to i32*
  %7392 = load i32, i32* %7391
  %7393 = sext i32 %7392 to i64
  store i64 %7393, i64* %RCX.i90, align 8
  store %struct.Memory* %loadMem_499102, %struct.Memory** %MEMORY
  %loadMem_499106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7395 = getelementptr inbounds %struct.GPR, %struct.GPR* %7394, i32 0, i32 33
  %7396 = getelementptr inbounds %struct.Reg, %struct.Reg* %7395, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %7396 to i64*
  %7397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7398 = getelementptr inbounds %struct.GPR, %struct.GPR* %7397, i32 0, i32 5
  %7399 = getelementptr inbounds %struct.Reg, %struct.Reg* %7398, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %7399 to i64*
  %7400 = load i64, i64* %RCX.i88
  %7401 = load i64, i64* %PC.i87
  %7402 = add i64 %7401, 4
  store i64 %7402, i64* %PC.i87
  %7403 = sext i64 %7400 to i128
  %7404 = and i128 %7403, -18446744073709551616
  %7405 = zext i64 %7400 to i128
  %7406 = or i128 %7404, %7405
  %7407 = mul i128 76, %7406
  %7408 = trunc i128 %7407 to i64
  store i64 %7408, i64* %RCX.i88, align 8
  %7409 = sext i64 %7408 to i128
  %7410 = icmp ne i128 %7409, %7407
  %7411 = zext i1 %7410 to i8
  %7412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7411, i8* %7412, align 1
  %7413 = trunc i128 %7407 to i32
  %7414 = and i32 %7413, 255
  %7415 = call i32 @llvm.ctpop.i32(i32 %7414)
  %7416 = trunc i32 %7415 to i8
  %7417 = and i8 %7416, 1
  %7418 = xor i8 %7417, 1
  %7419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7418, i8* %7419, align 1
  %7420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7420, align 1
  %7421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7421, align 1
  %7422 = lshr i64 %7408, 63
  %7423 = trunc i64 %7422 to i8
  %7424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7423, i8* %7424, align 1
  %7425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7411, i8* %7425, align 1
  store %struct.Memory* %loadMem_499106, %struct.Memory** %MEMORY
  %loadMem_49910a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7427 = getelementptr inbounds %struct.GPR, %struct.GPR* %7426, i32 0, i32 33
  %7428 = getelementptr inbounds %struct.Reg, %struct.Reg* %7427, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %7428 to i64*
  %7429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7430 = getelementptr inbounds %struct.GPR, %struct.GPR* %7429, i32 0, i32 1
  %7431 = getelementptr inbounds %struct.Reg, %struct.Reg* %7430, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %7431 to i64*
  %7432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7433 = getelementptr inbounds %struct.GPR, %struct.GPR* %7432, i32 0, i32 5
  %7434 = getelementptr inbounds %struct.Reg, %struct.Reg* %7433, i32 0, i32 0
  %RCX.i86 = bitcast %union.anon* %7434 to i64*
  %7435 = load i64, i64* %RAX.i85
  %7436 = load i64, i64* %RCX.i86
  %7437 = load i64, i64* %PC.i84
  %7438 = add i64 %7437, 3
  store i64 %7438, i64* %PC.i84
  %7439 = add i64 %7436, %7435
  store i64 %7439, i64* %RAX.i85, align 8
  %7440 = icmp ult i64 %7439, %7435
  %7441 = icmp ult i64 %7439, %7436
  %7442 = or i1 %7440, %7441
  %7443 = zext i1 %7442 to i8
  %7444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7443, i8* %7444, align 1
  %7445 = trunc i64 %7439 to i32
  %7446 = and i32 %7445, 255
  %7447 = call i32 @llvm.ctpop.i32(i32 %7446)
  %7448 = trunc i32 %7447 to i8
  %7449 = and i8 %7448, 1
  %7450 = xor i8 %7449, 1
  %7451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7450, i8* %7451, align 1
  %7452 = xor i64 %7436, %7435
  %7453 = xor i64 %7452, %7439
  %7454 = lshr i64 %7453, 4
  %7455 = trunc i64 %7454 to i8
  %7456 = and i8 %7455, 1
  %7457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7456, i8* %7457, align 1
  %7458 = icmp eq i64 %7439, 0
  %7459 = zext i1 %7458 to i8
  %7460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7459, i8* %7460, align 1
  %7461 = lshr i64 %7439, 63
  %7462 = trunc i64 %7461 to i8
  %7463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7462, i8* %7463, align 1
  %7464 = lshr i64 %7435, 63
  %7465 = lshr i64 %7436, 63
  %7466 = xor i64 %7461, %7464
  %7467 = xor i64 %7461, %7465
  %7468 = add i64 %7466, %7467
  %7469 = icmp eq i64 %7468, 2
  %7470 = zext i1 %7469 to i8
  %7471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7470, i8* %7471, align 1
  store %struct.Memory* %loadMem_49910a, %struct.Memory** %MEMORY
  %loadMem_49910d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7473 = getelementptr inbounds %struct.GPR, %struct.GPR* %7472, i32 0, i32 33
  %7474 = getelementptr inbounds %struct.Reg, %struct.Reg* %7473, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %7474 to i64*
  %7475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7476 = getelementptr inbounds %struct.GPR, %struct.GPR* %7475, i32 0, i32 5
  %7477 = getelementptr inbounds %struct.Reg, %struct.Reg* %7476, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %7477 to i64*
  %7478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7479 = getelementptr inbounds %struct.GPR, %struct.GPR* %7478, i32 0, i32 15
  %7480 = getelementptr inbounds %struct.Reg, %struct.Reg* %7479, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %7480 to i64*
  %7481 = load i64, i64* %RBP.i83
  %7482 = sub i64 %7481, 16
  %7483 = load i64, i64* %PC.i81
  %7484 = add i64 %7483, 4
  store i64 %7484, i64* %PC.i81
  %7485 = inttoptr i64 %7482 to i32*
  %7486 = load i32, i32* %7485
  %7487 = sext i32 %7486 to i64
  store i64 %7487, i64* %RCX.i82, align 8
  store %struct.Memory* %loadMem_49910d, %struct.Memory** %MEMORY
  %loadMem_499111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7489 = getelementptr inbounds %struct.GPR, %struct.GPR* %7488, i32 0, i32 33
  %7490 = getelementptr inbounds %struct.Reg, %struct.Reg* %7489, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %7490 to i64*
  %7491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7492 = getelementptr inbounds %struct.GPR, %struct.GPR* %7491, i32 0, i32 1
  %7493 = getelementptr inbounds %struct.Reg, %struct.Reg* %7492, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %7493 to i64*
  %7494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7495 = getelementptr inbounds %struct.GPR, %struct.GPR* %7494, i32 0, i32 5
  %7496 = getelementptr inbounds %struct.Reg, %struct.Reg* %7495, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %7496 to i64*
  %7497 = load i64, i64* %RAX.i79
  %7498 = load i64, i64* %RCX.i80
  %7499 = mul i64 %7498, 4
  %7500 = add i64 %7499, %7497
  %7501 = load i64, i64* %PC.i78
  %7502 = add i64 %7501, 7
  store i64 %7502, i64* %PC.i78
  %7503 = inttoptr i64 %7500 to i32*
  store i32 7, i32* %7503
  store %struct.Memory* %loadMem_499111, %struct.Memory** %MEMORY
  %loadMem_499118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7505 = getelementptr inbounds %struct.GPR, %struct.GPR* %7504, i32 0, i32 33
  %7506 = getelementptr inbounds %struct.Reg, %struct.Reg* %7505, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %7506 to i64*
  %7507 = load i64, i64* %PC.i77
  %7508 = add i64 %7507, 114
  %7509 = load i64, i64* %PC.i77
  %7510 = add i64 %7509, 5
  store i64 %7510, i64* %PC.i77
  %7511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7508, i64* %7511, align 8
  store %struct.Memory* %loadMem_499118, %struct.Memory** %MEMORY
  br label %block_.L_49918a

block_.L_49911d:                                  ; preds = %block_.L_4990d5
  %loadMem_49911d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7513 = getelementptr inbounds %struct.GPR, %struct.GPR* %7512, i32 0, i32 33
  %7514 = getelementptr inbounds %struct.Reg, %struct.Reg* %7513, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %7514 to i64*
  %7515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7516 = getelementptr inbounds %struct.GPR, %struct.GPR* %7515, i32 0, i32 1
  %7517 = getelementptr inbounds %struct.Reg, %struct.Reg* %7516, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %7517 to i64*
  %7518 = load i64, i64* %PC.i75
  %7519 = add i64 %7518, 10
  store i64 %7519, i64* %PC.i75
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i76, align 8
  store %struct.Memory* %loadMem_49911d, %struct.Memory** %MEMORY
  %loadMem_499127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7521 = getelementptr inbounds %struct.GPR, %struct.GPR* %7520, i32 0, i32 33
  %7522 = getelementptr inbounds %struct.Reg, %struct.Reg* %7521, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %7522 to i64*
  %7523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7524 = getelementptr inbounds %struct.GPR, %struct.GPR* %7523, i32 0, i32 5
  %7525 = getelementptr inbounds %struct.Reg, %struct.Reg* %7524, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %7525 to i64*
  %7526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7527 = getelementptr inbounds %struct.GPR, %struct.GPR* %7526, i32 0, i32 15
  %7528 = getelementptr inbounds %struct.Reg, %struct.Reg* %7527, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %7528 to i64*
  %7529 = load i64, i64* %RBP.i74
  %7530 = sub i64 %7529, 12
  %7531 = load i64, i64* %PC.i72
  %7532 = add i64 %7531, 4
  store i64 %7532, i64* %PC.i72
  %7533 = inttoptr i64 %7530 to i32*
  %7534 = load i32, i32* %7533
  %7535 = sext i32 %7534 to i64
  store i64 %7535, i64* %RCX.i73, align 8
  store %struct.Memory* %loadMem_499127, %struct.Memory** %MEMORY
  %loadMem_49912b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7537 = getelementptr inbounds %struct.GPR, %struct.GPR* %7536, i32 0, i32 33
  %7538 = getelementptr inbounds %struct.Reg, %struct.Reg* %7537, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %7538 to i64*
  %7539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7540 = getelementptr inbounds %struct.GPR, %struct.GPR* %7539, i32 0, i32 5
  %7541 = getelementptr inbounds %struct.Reg, %struct.Reg* %7540, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %7541 to i64*
  %7542 = load i64, i64* %RCX.i71
  %7543 = load i64, i64* %PC.i70
  %7544 = add i64 %7543, 4
  store i64 %7544, i64* %PC.i70
  %7545 = sext i64 %7542 to i128
  %7546 = and i128 %7545, -18446744073709551616
  %7547 = zext i64 %7542 to i128
  %7548 = or i128 %7546, %7547
  %7549 = mul i128 76, %7548
  %7550 = trunc i128 %7549 to i64
  store i64 %7550, i64* %RCX.i71, align 8
  %7551 = sext i64 %7550 to i128
  %7552 = icmp ne i128 %7551, %7549
  %7553 = zext i1 %7552 to i8
  %7554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7553, i8* %7554, align 1
  %7555 = trunc i128 %7549 to i32
  %7556 = and i32 %7555, 255
  %7557 = call i32 @llvm.ctpop.i32(i32 %7556)
  %7558 = trunc i32 %7557 to i8
  %7559 = and i8 %7558, 1
  %7560 = xor i8 %7559, 1
  %7561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7560, i8* %7561, align 1
  %7562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7562, align 1
  %7563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7563, align 1
  %7564 = lshr i64 %7550, 63
  %7565 = trunc i64 %7564 to i8
  %7566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7565, i8* %7566, align 1
  %7567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7553, i8* %7567, align 1
  store %struct.Memory* %loadMem_49912b, %struct.Memory** %MEMORY
  %loadMem_49912f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7569 = getelementptr inbounds %struct.GPR, %struct.GPR* %7568, i32 0, i32 33
  %7570 = getelementptr inbounds %struct.Reg, %struct.Reg* %7569, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %7570 to i64*
  %7571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7572 = getelementptr inbounds %struct.GPR, %struct.GPR* %7571, i32 0, i32 1
  %7573 = getelementptr inbounds %struct.Reg, %struct.Reg* %7572, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %7573 to i64*
  %7574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7575 = getelementptr inbounds %struct.GPR, %struct.GPR* %7574, i32 0, i32 5
  %7576 = getelementptr inbounds %struct.Reg, %struct.Reg* %7575, i32 0, i32 0
  %RCX.i69 = bitcast %union.anon* %7576 to i64*
  %7577 = load i64, i64* %RAX.i68
  %7578 = load i64, i64* %RCX.i69
  %7579 = load i64, i64* %PC.i67
  %7580 = add i64 %7579, 3
  store i64 %7580, i64* %PC.i67
  %7581 = add i64 %7578, %7577
  store i64 %7581, i64* %RAX.i68, align 8
  %7582 = icmp ult i64 %7581, %7577
  %7583 = icmp ult i64 %7581, %7578
  %7584 = or i1 %7582, %7583
  %7585 = zext i1 %7584 to i8
  %7586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7585, i8* %7586, align 1
  %7587 = trunc i64 %7581 to i32
  %7588 = and i32 %7587, 255
  %7589 = call i32 @llvm.ctpop.i32(i32 %7588)
  %7590 = trunc i32 %7589 to i8
  %7591 = and i8 %7590, 1
  %7592 = xor i8 %7591, 1
  %7593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7592, i8* %7593, align 1
  %7594 = xor i64 %7578, %7577
  %7595 = xor i64 %7594, %7581
  %7596 = lshr i64 %7595, 4
  %7597 = trunc i64 %7596 to i8
  %7598 = and i8 %7597, 1
  %7599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7598, i8* %7599, align 1
  %7600 = icmp eq i64 %7581, 0
  %7601 = zext i1 %7600 to i8
  %7602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7601, i8* %7602, align 1
  %7603 = lshr i64 %7581, 63
  %7604 = trunc i64 %7603 to i8
  %7605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7604, i8* %7605, align 1
  %7606 = lshr i64 %7577, 63
  %7607 = lshr i64 %7578, 63
  %7608 = xor i64 %7603, %7606
  %7609 = xor i64 %7603, %7607
  %7610 = add i64 %7608, %7609
  %7611 = icmp eq i64 %7610, 2
  %7612 = zext i1 %7611 to i8
  %7613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7612, i8* %7613, align 1
  store %struct.Memory* %loadMem_49912f, %struct.Memory** %MEMORY
  %loadMem_499132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7615 = getelementptr inbounds %struct.GPR, %struct.GPR* %7614, i32 0, i32 33
  %7616 = getelementptr inbounds %struct.Reg, %struct.Reg* %7615, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %7616 to i64*
  %7617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7618 = getelementptr inbounds %struct.GPR, %struct.GPR* %7617, i32 0, i32 5
  %7619 = getelementptr inbounds %struct.Reg, %struct.Reg* %7618, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %7619 to i64*
  %7620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7621 = getelementptr inbounds %struct.GPR, %struct.GPR* %7620, i32 0, i32 15
  %7622 = getelementptr inbounds %struct.Reg, %struct.Reg* %7621, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %7622 to i64*
  %7623 = load i64, i64* %RBP.i66
  %7624 = sub i64 %7623, 16
  %7625 = load i64, i64* %PC.i64
  %7626 = add i64 %7625, 4
  store i64 %7626, i64* %PC.i64
  %7627 = inttoptr i64 %7624 to i32*
  %7628 = load i32, i32* %7627
  %7629 = sext i32 %7628 to i64
  store i64 %7629, i64* %RCX.i65, align 8
  store %struct.Memory* %loadMem_499132, %struct.Memory** %MEMORY
  %loadMem_499136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7631 = getelementptr inbounds %struct.GPR, %struct.GPR* %7630, i32 0, i32 33
  %7632 = getelementptr inbounds %struct.Reg, %struct.Reg* %7631, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %7632 to i64*
  %7633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7634 = getelementptr inbounds %struct.GPR, %struct.GPR* %7633, i32 0, i32 1
  %7635 = getelementptr inbounds %struct.Reg, %struct.Reg* %7634, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %7635 to i64*
  %7636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7637 = getelementptr inbounds %struct.GPR, %struct.GPR* %7636, i32 0, i32 5
  %7638 = getelementptr inbounds %struct.Reg, %struct.Reg* %7637, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %7638 to i64*
  %7639 = load i64, i64* %RAX.i62
  %7640 = load i64, i64* %RCX.i63
  %7641 = mul i64 %7640, 4
  %7642 = add i64 %7641, %7639
  %7643 = load i64, i64* %PC.i61
  %7644 = add i64 %7643, 4
  store i64 %7644, i64* %PC.i61
  %7645 = inttoptr i64 %7642 to i32*
  %7646 = load i32, i32* %7645
  %7647 = sub i32 %7646, 14
  %7648 = icmp ult i32 %7646, 14
  %7649 = zext i1 %7648 to i8
  %7650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7649, i8* %7650, align 1
  %7651 = and i32 %7647, 255
  %7652 = call i32 @llvm.ctpop.i32(i32 %7651)
  %7653 = trunc i32 %7652 to i8
  %7654 = and i8 %7653, 1
  %7655 = xor i8 %7654, 1
  %7656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7655, i8* %7656, align 1
  %7657 = xor i32 %7646, 14
  %7658 = xor i32 %7657, %7647
  %7659 = lshr i32 %7658, 4
  %7660 = trunc i32 %7659 to i8
  %7661 = and i8 %7660, 1
  %7662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7661, i8* %7662, align 1
  %7663 = icmp eq i32 %7647, 0
  %7664 = zext i1 %7663 to i8
  %7665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7664, i8* %7665, align 1
  %7666 = lshr i32 %7647, 31
  %7667 = trunc i32 %7666 to i8
  %7668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7667, i8* %7668, align 1
  %7669 = lshr i32 %7646, 31
  %7670 = xor i32 %7666, %7669
  %7671 = add i32 %7670, %7669
  %7672 = icmp eq i32 %7671, 2
  %7673 = zext i1 %7672 to i8
  %7674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7673, i8* %7674, align 1
  store %struct.Memory* %loadMem_499136, %struct.Memory** %MEMORY
  %loadMem_49913a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7676 = getelementptr inbounds %struct.GPR, %struct.GPR* %7675, i32 0, i32 33
  %7677 = getelementptr inbounds %struct.Reg, %struct.Reg* %7676, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %7677 to i64*
  %7678 = load i64, i64* %PC.i60
  %7679 = add i64 %7678, 43
  %7680 = load i64, i64* %PC.i60
  %7681 = add i64 %7680, 6
  %7682 = load i64, i64* %PC.i60
  %7683 = add i64 %7682, 6
  store i64 %7683, i64* %PC.i60
  %7684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7685 = load i8, i8* %7684, align 1
  %7686 = icmp eq i8 %7685, 0
  %7687 = zext i1 %7686 to i8
  store i8 %7687, i8* %BRANCH_TAKEN, align 1
  %7688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7689 = select i1 %7686, i64 %7679, i64 %7681
  store i64 %7689, i64* %7688, align 8
  store %struct.Memory* %loadMem_49913a, %struct.Memory** %MEMORY
  %loadBr_49913a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49913a = icmp eq i8 %loadBr_49913a, 1
  br i1 %cmpBr_49913a, label %block_.L_499165, label %block_499140

block_499140:                                     ; preds = %block_.L_49911d
  %loadMem_499140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7691 = getelementptr inbounds %struct.GPR, %struct.GPR* %7690, i32 0, i32 33
  %7692 = getelementptr inbounds %struct.Reg, %struct.Reg* %7691, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %7692 to i64*
  %7693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7694 = getelementptr inbounds %struct.GPR, %struct.GPR* %7693, i32 0, i32 1
  %7695 = getelementptr inbounds %struct.Reg, %struct.Reg* %7694, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %7695 to i64*
  %7696 = load i64, i64* %PC.i58
  %7697 = add i64 %7696, 10
  store i64 %7697, i64* %PC.i58
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i59, align 8
  store %struct.Memory* %loadMem_499140, %struct.Memory** %MEMORY
  %loadMem_49914a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7699 = getelementptr inbounds %struct.GPR, %struct.GPR* %7698, i32 0, i32 33
  %7700 = getelementptr inbounds %struct.Reg, %struct.Reg* %7699, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %7700 to i64*
  %7701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7702 = getelementptr inbounds %struct.GPR, %struct.GPR* %7701, i32 0, i32 5
  %7703 = getelementptr inbounds %struct.Reg, %struct.Reg* %7702, i32 0, i32 0
  %RCX.i56 = bitcast %union.anon* %7703 to i64*
  %7704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7705 = getelementptr inbounds %struct.GPR, %struct.GPR* %7704, i32 0, i32 15
  %7706 = getelementptr inbounds %struct.Reg, %struct.Reg* %7705, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %7706 to i64*
  %7707 = load i64, i64* %RBP.i57
  %7708 = sub i64 %7707, 12
  %7709 = load i64, i64* %PC.i55
  %7710 = add i64 %7709, 4
  store i64 %7710, i64* %PC.i55
  %7711 = inttoptr i64 %7708 to i32*
  %7712 = load i32, i32* %7711
  %7713 = sext i32 %7712 to i64
  store i64 %7713, i64* %RCX.i56, align 8
  store %struct.Memory* %loadMem_49914a, %struct.Memory** %MEMORY
  %loadMem_49914e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7715 = getelementptr inbounds %struct.GPR, %struct.GPR* %7714, i32 0, i32 33
  %7716 = getelementptr inbounds %struct.Reg, %struct.Reg* %7715, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %7716 to i64*
  %7717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7718 = getelementptr inbounds %struct.GPR, %struct.GPR* %7717, i32 0, i32 5
  %7719 = getelementptr inbounds %struct.Reg, %struct.Reg* %7718, i32 0, i32 0
  %RCX.i54 = bitcast %union.anon* %7719 to i64*
  %7720 = load i64, i64* %RCX.i54
  %7721 = load i64, i64* %PC.i53
  %7722 = add i64 %7721, 4
  store i64 %7722, i64* %PC.i53
  %7723 = sext i64 %7720 to i128
  %7724 = and i128 %7723, -18446744073709551616
  %7725 = zext i64 %7720 to i128
  %7726 = or i128 %7724, %7725
  %7727 = mul i128 76, %7726
  %7728 = trunc i128 %7727 to i64
  store i64 %7728, i64* %RCX.i54, align 8
  %7729 = sext i64 %7728 to i128
  %7730 = icmp ne i128 %7729, %7727
  %7731 = zext i1 %7730 to i8
  %7732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7731, i8* %7732, align 1
  %7733 = trunc i128 %7727 to i32
  %7734 = and i32 %7733, 255
  %7735 = call i32 @llvm.ctpop.i32(i32 %7734)
  %7736 = trunc i32 %7735 to i8
  %7737 = and i8 %7736, 1
  %7738 = xor i8 %7737, 1
  %7739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7738, i8* %7739, align 1
  %7740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7740, align 1
  %7741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7741, align 1
  %7742 = lshr i64 %7728, 63
  %7743 = trunc i64 %7742 to i8
  %7744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7743, i8* %7744, align 1
  %7745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7731, i8* %7745, align 1
  store %struct.Memory* %loadMem_49914e, %struct.Memory** %MEMORY
  %loadMem_499152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7747 = getelementptr inbounds %struct.GPR, %struct.GPR* %7746, i32 0, i32 33
  %7748 = getelementptr inbounds %struct.Reg, %struct.Reg* %7747, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %7748 to i64*
  %7749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7750 = getelementptr inbounds %struct.GPR, %struct.GPR* %7749, i32 0, i32 1
  %7751 = getelementptr inbounds %struct.Reg, %struct.Reg* %7750, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %7751 to i64*
  %7752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7753 = getelementptr inbounds %struct.GPR, %struct.GPR* %7752, i32 0, i32 5
  %7754 = getelementptr inbounds %struct.Reg, %struct.Reg* %7753, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %7754 to i64*
  %7755 = load i64, i64* %RAX.i51
  %7756 = load i64, i64* %RCX.i52
  %7757 = load i64, i64* %PC.i50
  %7758 = add i64 %7757, 3
  store i64 %7758, i64* %PC.i50
  %7759 = add i64 %7756, %7755
  store i64 %7759, i64* %RAX.i51, align 8
  %7760 = icmp ult i64 %7759, %7755
  %7761 = icmp ult i64 %7759, %7756
  %7762 = or i1 %7760, %7761
  %7763 = zext i1 %7762 to i8
  %7764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7763, i8* %7764, align 1
  %7765 = trunc i64 %7759 to i32
  %7766 = and i32 %7765, 255
  %7767 = call i32 @llvm.ctpop.i32(i32 %7766)
  %7768 = trunc i32 %7767 to i8
  %7769 = and i8 %7768, 1
  %7770 = xor i8 %7769, 1
  %7771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7770, i8* %7771, align 1
  %7772 = xor i64 %7756, %7755
  %7773 = xor i64 %7772, %7759
  %7774 = lshr i64 %7773, 4
  %7775 = trunc i64 %7774 to i8
  %7776 = and i8 %7775, 1
  %7777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7776, i8* %7777, align 1
  %7778 = icmp eq i64 %7759, 0
  %7779 = zext i1 %7778 to i8
  %7780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7779, i8* %7780, align 1
  %7781 = lshr i64 %7759, 63
  %7782 = trunc i64 %7781 to i8
  %7783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7782, i8* %7783, align 1
  %7784 = lshr i64 %7755, 63
  %7785 = lshr i64 %7756, 63
  %7786 = xor i64 %7781, %7784
  %7787 = xor i64 %7781, %7785
  %7788 = add i64 %7786, %7787
  %7789 = icmp eq i64 %7788, 2
  %7790 = zext i1 %7789 to i8
  %7791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7790, i8* %7791, align 1
  store %struct.Memory* %loadMem_499152, %struct.Memory** %MEMORY
  %loadMem_499155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7793 = getelementptr inbounds %struct.GPR, %struct.GPR* %7792, i32 0, i32 33
  %7794 = getelementptr inbounds %struct.Reg, %struct.Reg* %7793, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %7794 to i64*
  %7795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7796 = getelementptr inbounds %struct.GPR, %struct.GPR* %7795, i32 0, i32 5
  %7797 = getelementptr inbounds %struct.Reg, %struct.Reg* %7796, i32 0, i32 0
  %RCX.i48 = bitcast %union.anon* %7797 to i64*
  %7798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7799 = getelementptr inbounds %struct.GPR, %struct.GPR* %7798, i32 0, i32 15
  %7800 = getelementptr inbounds %struct.Reg, %struct.Reg* %7799, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %7800 to i64*
  %7801 = load i64, i64* %RBP.i49
  %7802 = sub i64 %7801, 16
  %7803 = load i64, i64* %PC.i47
  %7804 = add i64 %7803, 4
  store i64 %7804, i64* %PC.i47
  %7805 = inttoptr i64 %7802 to i32*
  %7806 = load i32, i32* %7805
  %7807 = sext i32 %7806 to i64
  store i64 %7807, i64* %RCX.i48, align 8
  store %struct.Memory* %loadMem_499155, %struct.Memory** %MEMORY
  %loadMem_499159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7809 = getelementptr inbounds %struct.GPR, %struct.GPR* %7808, i32 0, i32 33
  %7810 = getelementptr inbounds %struct.Reg, %struct.Reg* %7809, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %7810 to i64*
  %7811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7812 = getelementptr inbounds %struct.GPR, %struct.GPR* %7811, i32 0, i32 1
  %7813 = getelementptr inbounds %struct.Reg, %struct.Reg* %7812, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %7813 to i64*
  %7814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7815 = getelementptr inbounds %struct.GPR, %struct.GPR* %7814, i32 0, i32 5
  %7816 = getelementptr inbounds %struct.Reg, %struct.Reg* %7815, i32 0, i32 0
  %RCX.i46 = bitcast %union.anon* %7816 to i64*
  %7817 = load i64, i64* %RAX.i45
  %7818 = load i64, i64* %RCX.i46
  %7819 = mul i64 %7818, 4
  %7820 = add i64 %7819, %7817
  %7821 = load i64, i64* %PC.i44
  %7822 = add i64 %7821, 7
  store i64 %7822, i64* %PC.i44
  %7823 = inttoptr i64 %7820 to i32*
  store i32 1, i32* %7823
  store %struct.Memory* %loadMem_499159, %struct.Memory** %MEMORY
  %loadMem_499160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7825 = getelementptr inbounds %struct.GPR, %struct.GPR* %7824, i32 0, i32 33
  %7826 = getelementptr inbounds %struct.Reg, %struct.Reg* %7825, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %7826 to i64*
  %7827 = load i64, i64* %PC.i43
  %7828 = add i64 %7827, 37
  %7829 = load i64, i64* %PC.i43
  %7830 = add i64 %7829, 5
  store i64 %7830, i64* %PC.i43
  %7831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7828, i64* %7831, align 8
  store %struct.Memory* %loadMem_499160, %struct.Memory** %MEMORY
  br label %block_.L_499185

block_.L_499165:                                  ; preds = %block_.L_49911d
  %loadMem_499165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7833 = getelementptr inbounds %struct.GPR, %struct.GPR* %7832, i32 0, i32 33
  %7834 = getelementptr inbounds %struct.Reg, %struct.Reg* %7833, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %7834 to i64*
  %7835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7836 = getelementptr inbounds %struct.GPR, %struct.GPR* %7835, i32 0, i32 1
  %7837 = getelementptr inbounds %struct.Reg, %struct.Reg* %7836, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %7837 to i64*
  %7838 = load i64, i64* %PC.i41
  %7839 = add i64 %7838, 10
  store i64 %7839, i64* %PC.i41
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX.i42, align 8
  store %struct.Memory* %loadMem_499165, %struct.Memory** %MEMORY
  %loadMem_49916f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7841 = getelementptr inbounds %struct.GPR, %struct.GPR* %7840, i32 0, i32 33
  %7842 = getelementptr inbounds %struct.Reg, %struct.Reg* %7841, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %7842 to i64*
  %7843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7844 = getelementptr inbounds %struct.GPR, %struct.GPR* %7843, i32 0, i32 5
  %7845 = getelementptr inbounds %struct.Reg, %struct.Reg* %7844, i32 0, i32 0
  %RCX.i39 = bitcast %union.anon* %7845 to i64*
  %7846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7847 = getelementptr inbounds %struct.GPR, %struct.GPR* %7846, i32 0, i32 15
  %7848 = getelementptr inbounds %struct.Reg, %struct.Reg* %7847, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %7848 to i64*
  %7849 = load i64, i64* %RBP.i40
  %7850 = sub i64 %7849, 12
  %7851 = load i64, i64* %PC.i38
  %7852 = add i64 %7851, 4
  store i64 %7852, i64* %PC.i38
  %7853 = inttoptr i64 %7850 to i32*
  %7854 = load i32, i32* %7853
  %7855 = sext i32 %7854 to i64
  store i64 %7855, i64* %RCX.i39, align 8
  store %struct.Memory* %loadMem_49916f, %struct.Memory** %MEMORY
  %loadMem_499173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7857 = getelementptr inbounds %struct.GPR, %struct.GPR* %7856, i32 0, i32 33
  %7858 = getelementptr inbounds %struct.Reg, %struct.Reg* %7857, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %7858 to i64*
  %7859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7860 = getelementptr inbounds %struct.GPR, %struct.GPR* %7859, i32 0, i32 5
  %7861 = getelementptr inbounds %struct.Reg, %struct.Reg* %7860, i32 0, i32 0
  %RCX.i37 = bitcast %union.anon* %7861 to i64*
  %7862 = load i64, i64* %RCX.i37
  %7863 = load i64, i64* %PC.i36
  %7864 = add i64 %7863, 4
  store i64 %7864, i64* %PC.i36
  %7865 = sext i64 %7862 to i128
  %7866 = and i128 %7865, -18446744073709551616
  %7867 = zext i64 %7862 to i128
  %7868 = or i128 %7866, %7867
  %7869 = mul i128 76, %7868
  %7870 = trunc i128 %7869 to i64
  store i64 %7870, i64* %RCX.i37, align 8
  %7871 = sext i64 %7870 to i128
  %7872 = icmp ne i128 %7871, %7869
  %7873 = zext i1 %7872 to i8
  %7874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7873, i8* %7874, align 1
  %7875 = trunc i128 %7869 to i32
  %7876 = and i32 %7875, 255
  %7877 = call i32 @llvm.ctpop.i32(i32 %7876)
  %7878 = trunc i32 %7877 to i8
  %7879 = and i8 %7878, 1
  %7880 = xor i8 %7879, 1
  %7881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7880, i8* %7881, align 1
  %7882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7882, align 1
  %7883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7883, align 1
  %7884 = lshr i64 %7870, 63
  %7885 = trunc i64 %7884 to i8
  %7886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7885, i8* %7886, align 1
  %7887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7873, i8* %7887, align 1
  store %struct.Memory* %loadMem_499173, %struct.Memory** %MEMORY
  %loadMem_499177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7889 = getelementptr inbounds %struct.GPR, %struct.GPR* %7888, i32 0, i32 33
  %7890 = getelementptr inbounds %struct.Reg, %struct.Reg* %7889, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %7890 to i64*
  %7891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7892 = getelementptr inbounds %struct.GPR, %struct.GPR* %7891, i32 0, i32 1
  %7893 = getelementptr inbounds %struct.Reg, %struct.Reg* %7892, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %7893 to i64*
  %7894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7895 = getelementptr inbounds %struct.GPR, %struct.GPR* %7894, i32 0, i32 5
  %7896 = getelementptr inbounds %struct.Reg, %struct.Reg* %7895, i32 0, i32 0
  %RCX.i35 = bitcast %union.anon* %7896 to i64*
  %7897 = load i64, i64* %RAX.i34
  %7898 = load i64, i64* %RCX.i35
  %7899 = load i64, i64* %PC.i33
  %7900 = add i64 %7899, 3
  store i64 %7900, i64* %PC.i33
  %7901 = add i64 %7898, %7897
  store i64 %7901, i64* %RAX.i34, align 8
  %7902 = icmp ult i64 %7901, %7897
  %7903 = icmp ult i64 %7901, %7898
  %7904 = or i1 %7902, %7903
  %7905 = zext i1 %7904 to i8
  %7906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7905, i8* %7906, align 1
  %7907 = trunc i64 %7901 to i32
  %7908 = and i32 %7907, 255
  %7909 = call i32 @llvm.ctpop.i32(i32 %7908)
  %7910 = trunc i32 %7909 to i8
  %7911 = and i8 %7910, 1
  %7912 = xor i8 %7911, 1
  %7913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7912, i8* %7913, align 1
  %7914 = xor i64 %7898, %7897
  %7915 = xor i64 %7914, %7901
  %7916 = lshr i64 %7915, 4
  %7917 = trunc i64 %7916 to i8
  %7918 = and i8 %7917, 1
  %7919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7918, i8* %7919, align 1
  %7920 = icmp eq i64 %7901, 0
  %7921 = zext i1 %7920 to i8
  %7922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7921, i8* %7922, align 1
  %7923 = lshr i64 %7901, 63
  %7924 = trunc i64 %7923 to i8
  %7925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7924, i8* %7925, align 1
  %7926 = lshr i64 %7897, 63
  %7927 = lshr i64 %7898, 63
  %7928 = xor i64 %7923, %7926
  %7929 = xor i64 %7923, %7927
  %7930 = add i64 %7928, %7929
  %7931 = icmp eq i64 %7930, 2
  %7932 = zext i1 %7931 to i8
  %7933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7932, i8* %7933, align 1
  store %struct.Memory* %loadMem_499177, %struct.Memory** %MEMORY
  %loadMem_49917a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7935 = getelementptr inbounds %struct.GPR, %struct.GPR* %7934, i32 0, i32 33
  %7936 = getelementptr inbounds %struct.Reg, %struct.Reg* %7935, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %7936 to i64*
  %7937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7938 = getelementptr inbounds %struct.GPR, %struct.GPR* %7937, i32 0, i32 5
  %7939 = getelementptr inbounds %struct.Reg, %struct.Reg* %7938, i32 0, i32 0
  %RCX.i31 = bitcast %union.anon* %7939 to i64*
  %7940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7941 = getelementptr inbounds %struct.GPR, %struct.GPR* %7940, i32 0, i32 15
  %7942 = getelementptr inbounds %struct.Reg, %struct.Reg* %7941, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %7942 to i64*
  %7943 = load i64, i64* %RBP.i32
  %7944 = sub i64 %7943, 16
  %7945 = load i64, i64* %PC.i30
  %7946 = add i64 %7945, 4
  store i64 %7946, i64* %PC.i30
  %7947 = inttoptr i64 %7944 to i32*
  %7948 = load i32, i32* %7947
  %7949 = sext i32 %7948 to i64
  store i64 %7949, i64* %RCX.i31, align 8
  store %struct.Memory* %loadMem_49917a, %struct.Memory** %MEMORY
  %loadMem_49917e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7951 = getelementptr inbounds %struct.GPR, %struct.GPR* %7950, i32 0, i32 33
  %7952 = getelementptr inbounds %struct.Reg, %struct.Reg* %7951, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %7952 to i64*
  %7953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7954 = getelementptr inbounds %struct.GPR, %struct.GPR* %7953, i32 0, i32 1
  %7955 = getelementptr inbounds %struct.Reg, %struct.Reg* %7954, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %7955 to i64*
  %7956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7957 = getelementptr inbounds %struct.GPR, %struct.GPR* %7956, i32 0, i32 5
  %7958 = getelementptr inbounds %struct.Reg, %struct.Reg* %7957, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7958 to i64*
  %7959 = load i64, i64* %RAX.i29
  %7960 = load i64, i64* %RCX.i
  %7961 = mul i64 %7960, 4
  %7962 = add i64 %7961, %7959
  %7963 = load i64, i64* %PC.i28
  %7964 = add i64 %7963, 7
  store i64 %7964, i64* %PC.i28
  %7965 = inttoptr i64 %7962 to i32*
  store i32 0, i32* %7965
  store %struct.Memory* %loadMem_49917e, %struct.Memory** %MEMORY
  br label %block_.L_499185

block_.L_499185:                                  ; preds = %block_.L_499165, %block_499140
  %loadMem_499185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7967 = getelementptr inbounds %struct.GPR, %struct.GPR* %7966, i32 0, i32 33
  %7968 = getelementptr inbounds %struct.Reg, %struct.Reg* %7967, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %7968 to i64*
  %7969 = load i64, i64* %PC.i27
  %7970 = add i64 %7969, 5
  %7971 = load i64, i64* %PC.i27
  %7972 = add i64 %7971, 5
  store i64 %7972, i64* %PC.i27
  %7973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7970, i64* %7973, align 8
  store %struct.Memory* %loadMem_499185, %struct.Memory** %MEMORY
  br label %block_.L_49918a

block_.L_49918a:                                  ; preds = %block_.L_499185, %block_4990f8
  %loadMem_49918a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7975 = getelementptr inbounds %struct.GPR, %struct.GPR* %7974, i32 0, i32 33
  %7976 = getelementptr inbounds %struct.Reg, %struct.Reg* %7975, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %7976 to i64*
  %7977 = load i64, i64* %PC.i26
  %7978 = add i64 %7977, 5
  %7979 = load i64, i64* %PC.i26
  %7980 = add i64 %7979, 5
  store i64 %7980, i64* %PC.i26
  %7981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7978, i64* %7981, align 8
  store %struct.Memory* %loadMem_49918a, %struct.Memory** %MEMORY
  br label %block_.L_49918f

block_.L_49918f:                                  ; preds = %block_.L_49918a, %block_4990b0
  %loadMem_49918f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7983 = getelementptr inbounds %struct.GPR, %struct.GPR* %7982, i32 0, i32 33
  %7984 = getelementptr inbounds %struct.Reg, %struct.Reg* %7983, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %7984 to i64*
  %7985 = load i64, i64* %PC.i25
  %7986 = add i64 %7985, 5
  %7987 = load i64, i64* %PC.i25
  %7988 = add i64 %7987, 5
  store i64 %7988, i64* %PC.i25
  %7989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7986, i64* %7989, align 8
  store %struct.Memory* %loadMem_49918f, %struct.Memory** %MEMORY
  br label %block_.L_499194

block_.L_499194:                                  ; preds = %block_.L_49918f, %block_.L_49906f
  %loadMem_499194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7991 = getelementptr inbounds %struct.GPR, %struct.GPR* %7990, i32 0, i32 33
  %7992 = getelementptr inbounds %struct.Reg, %struct.Reg* %7991, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %7992 to i64*
  %7993 = load i64, i64* %PC.i24
  %7994 = add i64 %7993, 5
  %7995 = load i64, i64* %PC.i24
  %7996 = add i64 %7995, 5
  store i64 %7996, i64* %PC.i24
  %7997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7994, i64* %7997, align 8
  store %struct.Memory* %loadMem_499194, %struct.Memory** %MEMORY
  br label %block_.L_499199

block_.L_499199:                                  ; preds = %block_.L_499194, %block_.L_49906a
  %loadMem_499199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7999 = getelementptr inbounds %struct.GPR, %struct.GPR* %7998, i32 0, i32 33
  %8000 = getelementptr inbounds %struct.Reg, %struct.Reg* %7999, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %8000 to i64*
  %8001 = load i64, i64* %PC.i23
  %8002 = add i64 %8001, 5
  %8003 = load i64, i64* %PC.i23
  %8004 = add i64 %8003, 5
  store i64 %8004, i64* %PC.i23
  %8005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8002, i64* %8005, align 8
  store %struct.Memory* %loadMem_499199, %struct.Memory** %MEMORY
  br label %block_.L_49919e

block_.L_49919e:                                  ; preds = %block_.L_499199, %block_.L_498f45
  %loadMem_49919e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8007 = getelementptr inbounds %struct.GPR, %struct.GPR* %8006, i32 0, i32 33
  %8008 = getelementptr inbounds %struct.Reg, %struct.Reg* %8007, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %8008 to i64*
  %8009 = load i64, i64* %PC.i22
  %8010 = add i64 %8009, 5
  %8011 = load i64, i64* %PC.i22
  %8012 = add i64 %8011, 5
  store i64 %8012, i64* %PC.i22
  %8013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8010, i64* %8013, align 8
  store %struct.Memory* %loadMem_49919e, %struct.Memory** %MEMORY
  br label %block_.L_4991a3

block_.L_4991a3:                                  ; preds = %block_.L_49919e, %block_498e25
  %loadMem_4991a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8015 = getelementptr inbounds %struct.GPR, %struct.GPR* %8014, i32 0, i32 33
  %8016 = getelementptr inbounds %struct.Reg, %struct.Reg* %8015, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %8016 to i64*
  %8017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8018 = getelementptr inbounds %struct.GPR, %struct.GPR* %8017, i32 0, i32 1
  %8019 = getelementptr inbounds %struct.Reg, %struct.Reg* %8018, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %8019 to i64*
  %8020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8021 = getelementptr inbounds %struct.GPR, %struct.GPR* %8020, i32 0, i32 15
  %8022 = getelementptr inbounds %struct.Reg, %struct.Reg* %8021, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %8022 to i64*
  %8023 = load i64, i64* %RBP.i21
  %8024 = sub i64 %8023, 16
  %8025 = load i64, i64* %PC.i19
  %8026 = add i64 %8025, 3
  store i64 %8026, i64* %PC.i19
  %8027 = inttoptr i64 %8024 to i32*
  %8028 = load i32, i32* %8027
  %8029 = zext i32 %8028 to i64
  store i64 %8029, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_4991a3, %struct.Memory** %MEMORY
  %loadMem_4991a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8031 = getelementptr inbounds %struct.GPR, %struct.GPR* %8030, i32 0, i32 33
  %8032 = getelementptr inbounds %struct.Reg, %struct.Reg* %8031, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %8032 to i64*
  %8033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8034 = getelementptr inbounds %struct.GPR, %struct.GPR* %8033, i32 0, i32 1
  %8035 = getelementptr inbounds %struct.Reg, %struct.Reg* %8034, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %8035 to i64*
  %8036 = load i64, i64* %RAX.i18
  %8037 = load i64, i64* %PC.i17
  %8038 = add i64 %8037, 3
  store i64 %8038, i64* %PC.i17
  %8039 = trunc i64 %8036 to i32
  %8040 = add i32 1, %8039
  %8041 = zext i32 %8040 to i64
  store i64 %8041, i64* %RAX.i18, align 8
  %8042 = icmp ult i32 %8040, %8039
  %8043 = icmp ult i32 %8040, 1
  %8044 = or i1 %8042, %8043
  %8045 = zext i1 %8044 to i8
  %8046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8045, i8* %8046, align 1
  %8047 = and i32 %8040, 255
  %8048 = call i32 @llvm.ctpop.i32(i32 %8047)
  %8049 = trunc i32 %8048 to i8
  %8050 = and i8 %8049, 1
  %8051 = xor i8 %8050, 1
  %8052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8051, i8* %8052, align 1
  %8053 = xor i64 1, %8036
  %8054 = trunc i64 %8053 to i32
  %8055 = xor i32 %8054, %8040
  %8056 = lshr i32 %8055, 4
  %8057 = trunc i32 %8056 to i8
  %8058 = and i8 %8057, 1
  %8059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8058, i8* %8059, align 1
  %8060 = icmp eq i32 %8040, 0
  %8061 = zext i1 %8060 to i8
  %8062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8061, i8* %8062, align 1
  %8063 = lshr i32 %8040, 31
  %8064 = trunc i32 %8063 to i8
  %8065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8064, i8* %8065, align 1
  %8066 = lshr i32 %8039, 31
  %8067 = xor i32 %8063, %8066
  %8068 = add i32 %8067, %8063
  %8069 = icmp eq i32 %8068, 2
  %8070 = zext i1 %8069 to i8
  %8071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8070, i8* %8071, align 1
  store %struct.Memory* %loadMem_4991a6, %struct.Memory** %MEMORY
  %loadMem_4991a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8073 = getelementptr inbounds %struct.GPR, %struct.GPR* %8072, i32 0, i32 33
  %8074 = getelementptr inbounds %struct.Reg, %struct.Reg* %8073, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %8074 to i64*
  %8075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8076 = getelementptr inbounds %struct.GPR, %struct.GPR* %8075, i32 0, i32 1
  %8077 = getelementptr inbounds %struct.Reg, %struct.Reg* %8076, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %8077 to i32*
  %8078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8079 = getelementptr inbounds %struct.GPR, %struct.GPR* %8078, i32 0, i32 15
  %8080 = getelementptr inbounds %struct.Reg, %struct.Reg* %8079, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %8080 to i64*
  %8081 = load i64, i64* %RBP.i16
  %8082 = sub i64 %8081, 16
  %8083 = load i32, i32* %EAX.i15
  %8084 = zext i32 %8083 to i64
  %8085 = load i64, i64* %PC.i14
  %8086 = add i64 %8085, 3
  store i64 %8086, i64* %PC.i14
  %8087 = inttoptr i64 %8082 to i32*
  store i32 %8083, i32* %8087
  store %struct.Memory* %loadMem_4991a9, %struct.Memory** %MEMORY
  %loadMem_4991ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %8088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8089 = getelementptr inbounds %struct.GPR, %struct.GPR* %8088, i32 0, i32 33
  %8090 = getelementptr inbounds %struct.Reg, %struct.Reg* %8089, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8090 to i64*
  %8091 = load i64, i64* %PC.i13
  %8092 = add i64 %8091, -971
  %8093 = load i64, i64* %PC.i13
  %8094 = add i64 %8093, 5
  store i64 %8094, i64* %PC.i13
  %8095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8092, i64* %8095, align 8
  store %struct.Memory* %loadMem_4991ac, %struct.Memory** %MEMORY
  br label %block_.L_498de1

block_.L_4991b1:                                  ; preds = %block_.L_498de1
  %loadMem_4991b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8097 = getelementptr inbounds %struct.GPR, %struct.GPR* %8096, i32 0, i32 33
  %8098 = getelementptr inbounds %struct.Reg, %struct.Reg* %8097, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %8098 to i64*
  %8099 = load i64, i64* %PC.i12
  %8100 = add i64 %8099, 5
  %8101 = load i64, i64* %PC.i12
  %8102 = add i64 %8101, 5
  store i64 %8102, i64* %PC.i12
  %8103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8100, i64* %8103, align 8
  store %struct.Memory* %loadMem_4991b1, %struct.Memory** %MEMORY
  br label %block_.L_4991b6

block_.L_4991b6:                                  ; preds = %block_.L_4991b1
  %loadMem_4991b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8105 = getelementptr inbounds %struct.GPR, %struct.GPR* %8104, i32 0, i32 33
  %8106 = getelementptr inbounds %struct.Reg, %struct.Reg* %8105, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8106 to i64*
  %8107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8108 = getelementptr inbounds %struct.GPR, %struct.GPR* %8107, i32 0, i32 1
  %8109 = getelementptr inbounds %struct.Reg, %struct.Reg* %8108, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %8109 to i64*
  %8110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8111 = getelementptr inbounds %struct.GPR, %struct.GPR* %8110, i32 0, i32 15
  %8112 = getelementptr inbounds %struct.Reg, %struct.Reg* %8111, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %8112 to i64*
  %8113 = load i64, i64* %RBP.i11
  %8114 = sub i64 %8113, 12
  %8115 = load i64, i64* %PC.i9
  %8116 = add i64 %8115, 3
  store i64 %8116, i64* %PC.i9
  %8117 = inttoptr i64 %8114 to i32*
  %8118 = load i32, i32* %8117
  %8119 = zext i32 %8118 to i64
  store i64 %8119, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_4991b6, %struct.Memory** %MEMORY
  %loadMem_4991b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8121 = getelementptr inbounds %struct.GPR, %struct.GPR* %8120, i32 0, i32 33
  %8122 = getelementptr inbounds %struct.Reg, %struct.Reg* %8121, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %8122 to i64*
  %8123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8124 = getelementptr inbounds %struct.GPR, %struct.GPR* %8123, i32 0, i32 1
  %8125 = getelementptr inbounds %struct.Reg, %struct.Reg* %8124, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8125 to i64*
  %8126 = load i64, i64* %RAX.i
  %8127 = load i64, i64* %PC.i8
  %8128 = add i64 %8127, 3
  store i64 %8128, i64* %PC.i8
  %8129 = trunc i64 %8126 to i32
  %8130 = add i32 1, %8129
  %8131 = zext i32 %8130 to i64
  store i64 %8131, i64* %RAX.i, align 8
  %8132 = icmp ult i32 %8130, %8129
  %8133 = icmp ult i32 %8130, 1
  %8134 = or i1 %8132, %8133
  %8135 = zext i1 %8134 to i8
  %8136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8135, i8* %8136, align 1
  %8137 = and i32 %8130, 255
  %8138 = call i32 @llvm.ctpop.i32(i32 %8137)
  %8139 = trunc i32 %8138 to i8
  %8140 = and i8 %8139, 1
  %8141 = xor i8 %8140, 1
  %8142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8141, i8* %8142, align 1
  %8143 = xor i64 1, %8126
  %8144 = trunc i64 %8143 to i32
  %8145 = xor i32 %8144, %8130
  %8146 = lshr i32 %8145, 4
  %8147 = trunc i32 %8146 to i8
  %8148 = and i8 %8147, 1
  %8149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8148, i8* %8149, align 1
  %8150 = icmp eq i32 %8130, 0
  %8151 = zext i1 %8150 to i8
  %8152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8151, i8* %8152, align 1
  %8153 = lshr i32 %8130, 31
  %8154 = trunc i32 %8153 to i8
  %8155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8154, i8* %8155, align 1
  %8156 = lshr i32 %8129, 31
  %8157 = xor i32 %8153, %8156
  %8158 = add i32 %8157, %8153
  %8159 = icmp eq i32 %8158, 2
  %8160 = zext i1 %8159 to i8
  %8161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8160, i8* %8161, align 1
  store %struct.Memory* %loadMem_4991b9, %struct.Memory** %MEMORY
  %loadMem_4991bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %8162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8163 = getelementptr inbounds %struct.GPR, %struct.GPR* %8162, i32 0, i32 33
  %8164 = getelementptr inbounds %struct.Reg, %struct.Reg* %8163, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %8164 to i64*
  %8165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8166 = getelementptr inbounds %struct.GPR, %struct.GPR* %8165, i32 0, i32 1
  %8167 = getelementptr inbounds %struct.Reg, %struct.Reg* %8166, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8167 to i32*
  %8168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8169 = getelementptr inbounds %struct.GPR, %struct.GPR* %8168, i32 0, i32 15
  %8170 = getelementptr inbounds %struct.Reg, %struct.Reg* %8169, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %8170 to i64*
  %8171 = load i64, i64* %RBP.i7
  %8172 = sub i64 %8171, 12
  %8173 = load i32, i32* %EAX.i
  %8174 = zext i32 %8173 to i64
  %8175 = load i64, i64* %PC.i6
  %8176 = add i64 %8175, 3
  store i64 %8176, i64* %PC.i6
  %8177 = inttoptr i64 %8172 to i32*
  store i32 %8173, i32* %8177
  store %struct.Memory* %loadMem_4991bc, %struct.Memory** %MEMORY
  %loadMem_4991bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %8178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8179 = getelementptr inbounds %struct.GPR, %struct.GPR* %8178, i32 0, i32 33
  %8180 = getelementptr inbounds %struct.Reg, %struct.Reg* %8179, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8180 to i64*
  %8181 = load i64, i64* %PC.i5
  %8182 = add i64 %8181, -1013
  %8183 = load i64, i64* %PC.i5
  %8184 = add i64 %8183, 5
  store i64 %8184, i64* %PC.i5
  %8185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8182, i64* %8185, align 8
  store %struct.Memory* %loadMem_4991bf, %struct.Memory** %MEMORY
  br label %block_.L_498dca

block_.L_4991c4:                                  ; preds = %block_.L_498dca, %block_498bfd
  %loadMem_4991c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8187 = getelementptr inbounds %struct.GPR, %struct.GPR* %8186, i32 0, i32 33
  %8188 = getelementptr inbounds %struct.Reg, %struct.Reg* %8187, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8188 to i64*
  %8189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8190 = getelementptr inbounds %struct.GPR, %struct.GPR* %8189, i32 0, i32 13
  %8191 = getelementptr inbounds %struct.Reg, %struct.Reg* %8190, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %8191 to i64*
  %8192 = load i64, i64* %RSP.i
  %8193 = load i64, i64* %PC.i4
  %8194 = add i64 %8193, 7
  store i64 %8194, i64* %PC.i4
  %8195 = add i64 6368, %8192
  store i64 %8195, i64* %RSP.i, align 8
  %8196 = icmp ult i64 %8195, %8192
  %8197 = icmp ult i64 %8195, 6368
  %8198 = or i1 %8196, %8197
  %8199 = zext i1 %8198 to i8
  %8200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8199, i8* %8200, align 1
  %8201 = trunc i64 %8195 to i32
  %8202 = and i32 %8201, 255
  %8203 = call i32 @llvm.ctpop.i32(i32 %8202)
  %8204 = trunc i32 %8203 to i8
  %8205 = and i8 %8204, 1
  %8206 = xor i8 %8205, 1
  %8207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8206, i8* %8207, align 1
  %8208 = xor i64 6368, %8192
  %8209 = xor i64 %8208, %8195
  %8210 = lshr i64 %8209, 4
  %8211 = trunc i64 %8210 to i8
  %8212 = and i8 %8211, 1
  %8213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8212, i8* %8213, align 1
  %8214 = icmp eq i64 %8195, 0
  %8215 = zext i1 %8214 to i8
  %8216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8215, i8* %8216, align 1
  %8217 = lshr i64 %8195, 63
  %8218 = trunc i64 %8217 to i8
  %8219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8218, i8* %8219, align 1
  %8220 = lshr i64 %8192, 63
  %8221 = xor i64 %8217, %8220
  %8222 = add i64 %8221, %8217
  %8223 = icmp eq i64 %8222, 2
  %8224 = zext i1 %8223 to i8
  %8225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8224, i8* %8225, align 1
  store %struct.Memory* %loadMem_4991c4, %struct.Memory** %MEMORY
  %loadMem_4991cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8227 = getelementptr inbounds %struct.GPR, %struct.GPR* %8226, i32 0, i32 33
  %8228 = getelementptr inbounds %struct.Reg, %struct.Reg* %8227, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8228 to i64*
  %8229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8230 = getelementptr inbounds %struct.GPR, %struct.GPR* %8229, i32 0, i32 15
  %8231 = getelementptr inbounds %struct.Reg, %struct.Reg* %8230, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8231 to i64*
  %8232 = load i64, i64* %PC.i2
  %8233 = add i64 %8232, 1
  store i64 %8233, i64* %PC.i2
  %8234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8235 = load i64, i64* %8234, align 8
  %8236 = add i64 %8235, 8
  %8237 = inttoptr i64 %8235 to i64*
  %8238 = load i64, i64* %8237
  store i64 %8238, i64* %RBP.i3, align 8
  store i64 %8236, i64* %8234, align 8
  store %struct.Memory* %loadMem_4991cb, %struct.Memory** %MEMORY
  %loadMem_4991cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %8239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8240 = getelementptr inbounds %struct.GPR, %struct.GPR* %8239, i32 0, i32 33
  %8241 = getelementptr inbounds %struct.Reg, %struct.Reg* %8240, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8241 to i64*
  %8242 = load i64, i64* %PC.i1
  %8243 = add i64 %8242, 1
  store i64 %8243, i64* %PC.i1
  %8244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8246 = load i64, i64* %8245, align 8
  %8247 = inttoptr i64 %8246 to i64*
  %8248 = load i64, i64* %8247
  store i64 %8248, i64* %8244, align 8
  %8249 = add i64 %8246, 8
  store i64 %8249, i64* %8245, align 8
  store %struct.Memory* %loadMem_4991cc, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4991cc
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

define %struct.Memory* @routine_subq__0x18e0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 6368
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 6368
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
  %23 = xor i64 6368, %9
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

define %struct.Memory* @routine_movl__0x1__MINUS0x18dc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 6364
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7b0568___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x7b0568_type* @G_0x7b0568 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 4
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

define %struct.Memory* @routine_je_.L_498b2a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__0x7b0568(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x7b0568_type* @G_0x7b0568 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x18dc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 6364
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_498bf0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_498bdd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xaf2eb0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xaf2eb0_type* @G__0xaf2eb0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x14__MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %19 = mul i64 %18, 20
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_addl__0x15___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 21, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 16
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

define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 76, %15
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RAX
  %18 = load i64, i64* %RDX
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

define %struct.Memory* @routine_je_.L_498bca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ECX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_498bcf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_498b48(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_498be2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_498b31(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x18dc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 6364
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

define %struct.Memory* @routine_je_.L_498c02(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4991c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x18d8__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6360
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0xab0fbc(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 1, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.store_board(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.get_last_player(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_498c33(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_498c42(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_498c47(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0xc__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.genmove_conservative(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x14__MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 16
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

define %struct.Memory* @routine_movl__eax___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.play_move(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jl_.L_498c8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_498c96(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movb__cl__MINUS0x18dd__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 6365
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_498cd2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_0x7ae438___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %13 = shl i64 %9, 32
  %14 = ashr exact i64 %13, 32
  %15 = sext i32 %12 to i64
  %16 = mul i64 %15, %14
  %17 = trunc i64 %16 to i32
  %18 = and i64 %16, 4294967295
  store i64 %18, i64* %RCX, align 8
  %19 = shl i64 %16, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp ne i64 %20, %16
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1
  %24 = and i32 %17, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %31, align 1
  %32 = lshr i32 %17, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %22, i8* %35, align 1
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

define %struct.Memory* @routine_setl__dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = xor i1 %14, %17
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %DL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl__MINUS0x18dd__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 6365
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x18dd__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 6365
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %AL, align 1
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

define %struct.Memory* @routine_jne_.L_498c47(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0xb454f8___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*)
  %12 = bitcast i8* %8 to float*
  store float %11, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %8, i64 8
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %8, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.aftermath_compute_score(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__0xaf3454(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0xaf3454_type* @G_0xaf3454 to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_498dac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_498d99(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.aftermath_final_status(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x5c0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1472
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0xaf2900___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x4c___r8___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 76, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %R8, align 8
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

define %struct.Memory* @routine_addq__r8___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %R8
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rdx__r8_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
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

define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_498d1c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_498d9e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_498d05(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.restore_board(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__0xab0fbc(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4991c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_4991b1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x5c0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1472
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_498e2a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4991a3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_498f4a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xaf2900___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX, align 8
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

define %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 76, %15
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %20 = sub i32 %19, 1
  %21 = icmp ult i32 %19, 1
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
  %30 = xor i32 %19, 1
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
  %42 = lshr i32 %19, 31
  %43 = xor i32 %39, %42
  %44 = add i32 %43, %42
  %45 = icmp eq i32 %44, 2
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %46, i8* %47, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_498e8e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x7____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %20 = sub i32 %19, 7
  %21 = icmp ult i32 %19, 7
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
  %30 = xor i32 %19, 7
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
  %42 = lshr i32 %19, 31
  %43 = xor i32 %39, %42
  %44 = add i32 %43, %42
  %45 = icmp eq i32 %44, 2
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %46, i8* %47, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_498eb3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xf____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 15, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_498f45(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_498f40(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %20 = sub i32 %19, 2
  %21 = icmp ult i32 %19, 2
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
  %30 = xor i32 %19, 2
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
  %42 = lshr i32 %19, 31
  %43 = xor i32 %39, %42
  %44 = add i32 %43, %42
  %45 = icmp eq i32 %44, 2
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %46, i8* %47, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_498f1b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xe____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_498f3b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xd____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 13, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_498f40(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49919e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_49906f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xe____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %20 = sub i32 %19, 14
  %21 = icmp ult i32 %19, 14
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
  %30 = xor i32 %19, 14
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
  %42 = lshr i32 %19, 31
  %43 = xor i32 %39, %42
  %44 = add i32 %43, %42
  %45 = icmp eq i32 %44, 2
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %46, i8* %47, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_498fb0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_49906a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0xf____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %20 = sub i32 %19, 15
  %21 = icmp ult i32 %19, 15
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
  %30 = xor i32 %19, 15
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
  %42 = lshr i32 %19, 31
  %43 = xor i32 %39, %42
  %44 = add i32 %43, %42
  %45 = icmp eq i32 %44, 2
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %46, i8* %47, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_498ff8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x7____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 7, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_499065(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0xd____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %20 = sub i32 %19, 13
  %21 = icmp ult i32 %19, 13
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
  %30 = xor i32 %19, 13
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
  %42 = lshr i32 %19, 31
  %43 = xor i32 %39, %42
  %44 = add i32 %43, %42
  %45 = icmp eq i32 %44, 2
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %46, i8* %47, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_499040(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_499060(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_499199(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_499194(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4990d5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_49918f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_49911d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_49918a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_499165(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_499185(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_499194(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_498de1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4991b6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_498dca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x18e0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 6368, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 6368
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
  %25 = xor i64 6368, %9
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
