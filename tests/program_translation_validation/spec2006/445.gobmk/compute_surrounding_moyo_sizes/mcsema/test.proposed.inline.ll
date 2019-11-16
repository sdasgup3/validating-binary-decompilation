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
%G_0x7ae454_type = type <{ [1 x i8] }>
%G_0xab0fe0_type = type <{ [8 x i8] }>
%G_0xb54cec_type = type <{ [4 x i8] }>
%G_0xc2536__rip__type = type <{ [8 x i8] }>
%G_0xc25ab__rip__type = type <{ [8 x i8] }>
%G_0xc261a__rip__type = type <{ [8 x i8] }>
%G_0xc2734__rip__type = type <{ [8 x i8] }>
%G_0xc27a3__rip__type = type <{ [8 x i8] }>
%G__0xb068b0_type = type <{ [8 x i8] }>
%G__0xb4a3e0_type = type <{ [8 x i8] }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x7ae454 = global %G_0x7ae454_type zeroinitializer
@G_0xab0fe0 = global %G_0xab0fe0_type zeroinitializer
@G_0xb54cec = global %G_0xb54cec_type zeroinitializer
@G_0xc2536__rip_ = global %G_0xc2536__rip__type zeroinitializer
@G_0xc25ab__rip_ = global %G_0xc25ab__rip__type zeroinitializer
@G_0xc261a__rip_ = global %G_0xc261a__rip__type zeroinitializer
@G_0xc2734__rip_ = global %G_0xc2734__rip__type zeroinitializer
@G_0xc27a3__rip_ = global %G_0xc27a3__rip__type zeroinitializer
@G__0xb068b0 = global %G__0xb068b0_type zeroinitializer
@G__0xb4a3e0 = global %G__0xb4a3e0_type zeroinitializer
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer

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

declare %struct.Memory* @sub_42cfd0.influence_get_moyo_segmentation(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42d220.influence_get_moyo_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @compute_surrounding_moyo_sizes(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_420440 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_420440, %struct.Memory** %MEMORY
  %loadMem_420441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i178 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i178
  %27 = load i64, i64* %PC.i177
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i177
  store i64 %26, i64* %RBP.i179, align 8
  store %struct.Memory* %loadMem_420441, %struct.Memory** %MEMORY
  %loadMem_420444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i352 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i352
  %36 = load i64, i64* %PC.i351
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i351
  %38 = sub i64 %35, 13888
  store i64 %38, i64* %RSP.i352, align 8
  %39 = icmp ult i64 %35, 13888
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
  %49 = xor i64 13888, %35
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
  store %struct.Memory* %loadMem_420444, %struct.Memory** %MEMORY
  %loadMem_42044b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i767 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i768 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i768
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i767
  %79 = load i64, i64* %PC.i766
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i766
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_42044b, %struct.Memory** %MEMORY
  %loadMem_42044f = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %84 to i64*
  %85 = load i64, i64* %PC.i789
  %86 = add i64 %85, 8
  store i64 %86, i64* %PC.i789
  %87 = load i32, i32* bitcast (%G_0x7ae454_type* @G_0x7ae454 to i32*)
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %88, align 1
  %89 = and i32 %87, 255
  %90 = call i32 @llvm.ctpop.i32(i32 %89)
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = xor i8 %92, 1
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %93, i8* %94, align 1
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %95, align 1
  %96 = icmp eq i32 %87, 0
  %97 = zext i1 %96 to i8
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %97, i8* %98, align 1
  %99 = lshr i32 %87, 31
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %100, i8* %101, align 1
  %102 = lshr i32 %87, 31
  %103 = xor i32 %99, %102
  %104 = add i32 %103, %102
  %105 = icmp eq i32 %104, 2
  %106 = zext i1 %105 to i8
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %106, i8* %107, align 1
  store %struct.Memory* %loadMem_42044f, %struct.Memory** %MEMORY
  %loadMem_420457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 33
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %110 to i64*
  %111 = load i64, i64* %PC.i788
  %112 = add i64 %111, 511
  %113 = load i64, i64* %PC.i788
  %114 = add i64 %113, 6
  %115 = load i64, i64* %PC.i788
  %116 = add i64 %115, 6
  store i64 %116, i64* %PC.i788
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %118 = load i8, i8* %117, align 1
  %119 = icmp eq i8 %118, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %BRANCH_TAKEN, align 1
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %122 = select i1 %119, i64 %112, i64 %114
  store i64 %122, i64* %121, align 8
  store %struct.Memory* %loadMem_420457, %struct.Memory** %MEMORY
  %loadBr_420457 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420457 = icmp eq i8 %loadBr_420457, 1
  br i1 %cmpBr_420457, label %block_.L_420656, label %block_42045d

block_42045d:                                     ; preds = %entry
  %loadMem_42045d = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 9
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %RSI.i786 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 15
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RBP.i787 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %RBP.i787
  %133 = sub i64 %132, 7408
  %134 = load i64, i64* %PC.i785
  %135 = add i64 %134, 7
  store i64 %135, i64* %PC.i785
  store i64 %133, i64* %RSI.i786, align 8
  store %struct.Memory* %loadMem_42045d, %struct.Memory** %MEMORY
  %loadMem_420464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 33
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %138 to i64*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 11
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %RDI.i783 = bitcast %union.anon* %141 to i64*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 15
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %RBP.i784 = bitcast %union.anon* %144 to i64*
  %145 = load i64, i64* %RBP.i784
  %146 = sub i64 %145, 8
  %147 = load i64, i64* %PC.i782
  %148 = add i64 %147, 4
  store i64 %148, i64* %PC.i782
  %149 = inttoptr i64 %146 to i64*
  %150 = load i64, i64* %149
  store i64 %150, i64* %RDI.i783, align 8
  store %struct.Memory* %loadMem_420464, %struct.Memory** %MEMORY
  %loadMem1_420468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 33
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %153 to i64*
  %154 = load i64, i64* %PC.i781
  %155 = add i64 %154, 52072
  %156 = load i64, i64* %PC.i781
  %157 = add i64 %156, 5
  %158 = load i64, i64* %PC.i781
  %159 = add i64 %158, 5
  store i64 %159, i64* %PC.i781
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %161, -8
  %163 = inttoptr i64 %162 to i64*
  store i64 %157, i64* %163
  store i64 %162, i64* %160, align 8
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %155, i64* %164, align 8
  store %struct.Memory* %loadMem1_420468, %struct.Memory** %MEMORY
  %loadMem2_420468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420468 = load i64, i64* %3
  %call2_420468 = call %struct.Memory* @sub_42cfd0.influence_get_moyo_segmentation(%struct.State* %0, i64 %loadPC_420468, %struct.Memory* %loadMem2_420468)
  store %struct.Memory* %call2_420468, %struct.Memory** %MEMORY
  %loadMem_42046d = load %struct.Memory*, %struct.Memory** %MEMORY
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 33
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 9
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %ESI.i779 = bitcast %union.anon* %170 to i32*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 9
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %RSI.i780 = bitcast %union.anon* %173 to i64*
  %174 = load i64, i64* %RSI.i780
  %175 = load i32, i32* %ESI.i779
  %176 = zext i32 %175 to i64
  %177 = load i64, i64* %PC.i778
  %178 = add i64 %177, 2
  store i64 %178, i64* %PC.i778
  %179 = xor i64 %176, %174
  %180 = trunc i64 %179 to i32
  %181 = and i64 %179, 4294967295
  store i64 %181, i64* %RSI.i780, align 8
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %182, align 1
  %183 = and i32 %180, 255
  %184 = call i32 @llvm.ctpop.i32(i32 %183)
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %187, i8* %188, align 1
  %189 = icmp eq i32 %180, 0
  %190 = zext i1 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %190, i8* %191, align 1
  %192 = lshr i32 %180, 31
  %193 = trunc i32 %192 to i8
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %193, i8* %194, align 1
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %195, align 1
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %196, align 1
  store %struct.Memory* %loadMem_42046d, %struct.Memory** %MEMORY
  %loadMem_42046f = load %struct.Memory*, %struct.Memory** %MEMORY
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 33
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %199 to i64*
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %RAX.i777 = bitcast %union.anon* %202 to i64*
  %203 = load i64, i64* %PC.i776
  %204 = add i64 %203, 5
  store i64 %204, i64* %PC.i776
  store i64 1448, i64* %RAX.i777, align 8
  store %struct.Memory* %loadMem_42046f, %struct.Memory** %MEMORY
  %loadMem_420474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 33
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %207 to i64*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %EAX.i774 = bitcast %union.anon* %210 to i32*
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 7
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %RDX.i775 = bitcast %union.anon* %213 to i64*
  %214 = load i32, i32* %EAX.i774
  %215 = zext i32 %214 to i64
  %216 = load i64, i64* %PC.i773
  %217 = add i64 %216, 2
  store i64 %217, i64* %PC.i773
  %218 = and i64 %215, 4294967295
  store i64 %218, i64* %RDX.i775, align 8
  store %struct.Memory* %loadMem_420474, %struct.Memory** %MEMORY
  %loadMem_420476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 33
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 11
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %RDI.i771 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 15
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %RBP.i772 = bitcast %union.anon* %227 to i64*
  %228 = load i64, i64* %RBP.i772
  %229 = sub i64 %228, 1472
  %230 = load i64, i64* %PC.i770
  %231 = add i64 %230, 7
  store i64 %231, i64* %PC.i770
  store i64 %229, i64* %RDI.i771, align 8
  store %struct.Memory* %loadMem_420476, %struct.Memory** %MEMORY
  %loadMem1_42047d = load %struct.Memory*, %struct.Memory** %MEMORY
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 33
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %234 to i64*
  %235 = load i64, i64* %PC.i769
  %236 = add i64 %235, -128013
  %237 = load i64, i64* %PC.i769
  %238 = add i64 %237, 5
  %239 = load i64, i64* %PC.i769
  %240 = add i64 %239, 5
  store i64 %240, i64* %PC.i769
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = add i64 %242, -8
  %244 = inttoptr i64 %243 to i64*
  store i64 %238, i64* %244
  store i64 %243, i64* %241, align 8
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %236, i64* %245, align 8
  store %struct.Memory* %loadMem1_42047d, %struct.Memory** %MEMORY
  %loadMem2_42047d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42047d = load i64, i64* %3
  %246 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_42047d)
  store %struct.Memory* %246, %struct.Memory** %MEMORY
  %loadMem_420482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 33
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %249 to i64*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 15
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %RBP.i765 = bitcast %union.anon* %252 to i64*
  %253 = load i64, i64* %RBP.i765
  %254 = sub i64 %253, 16
  %255 = load i64, i64* %PC.i764
  %256 = add i64 %255, 7
  store i64 %256, i64* %PC.i764
  %257 = inttoptr i64 %254 to i32*
  store i32 0, i32* %257
  store %struct.Memory* %loadMem_420482, %struct.Memory** %MEMORY
  br label %block_.L_420489

block_.L_420489:                                  ; preds = %block_.L_420643, %block_42045d
  %loadMem_420489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 33
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %RAX.i762 = bitcast %union.anon* %263 to i64*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 15
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %RBP.i763 = bitcast %union.anon* %266 to i64*
  %267 = load i64, i64* %RBP.i763
  %268 = sub i64 %267, 16
  %269 = load i64, i64* %PC.i761
  %270 = add i64 %269, 3
  store i64 %270, i64* %PC.i761
  %271 = inttoptr i64 %268 to i32*
  %272 = load i32, i32* %271
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RAX.i762, align 8
  store %struct.Memory* %loadMem_420489, %struct.Memory** %MEMORY
  %loadMem_42048c = load %struct.Memory*, %struct.Memory** %MEMORY
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 33
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %276 to i64*
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %EAX.i760 = bitcast %union.anon* %279 to i32*
  %280 = load i32, i32* %EAX.i760
  %281 = zext i32 %280 to i64
  %282 = load i64, i64* %PC.i759
  %283 = add i64 %282, 7
  store i64 %283, i64* %PC.i759
  %284 = load i32, i32* bitcast (%G_0xb54cec_type* @G_0xb54cec to i32*)
  %285 = sub i32 %280, %284
  %286 = icmp ult i32 %280, %284
  %287 = zext i1 %286 to i8
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %287, i8* %288, align 1
  %289 = and i32 %285, 255
  %290 = call i32 @llvm.ctpop.i32(i32 %289)
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %293, i8* %294, align 1
  %295 = xor i32 %284, %280
  %296 = xor i32 %295, %285
  %297 = lshr i32 %296, 4
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %299, i8* %300, align 1
  %301 = icmp eq i32 %285, 0
  %302 = zext i1 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %302, i8* %303, align 1
  %304 = lshr i32 %285, 31
  %305 = trunc i32 %304 to i8
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %305, i8* %306, align 1
  %307 = lshr i32 %280, 31
  %308 = lshr i32 %284, 31
  %309 = xor i32 %308, %307
  %310 = xor i32 %304, %307
  %311 = add i32 %310, %309
  %312 = icmp eq i32 %311, 2
  %313 = zext i1 %312 to i8
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %313, i8* %314, align 1
  store %struct.Memory* %loadMem_42048c, %struct.Memory** %MEMORY
  %loadMem_420493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 33
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %317 to i64*
  %318 = load i64, i64* %PC.i758
  %319 = add i64 %318, 446
  %320 = load i64, i64* %PC.i758
  %321 = add i64 %320, 6
  %322 = load i64, i64* %PC.i758
  %323 = add i64 %322, 6
  store i64 %323, i64* %PC.i758
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %325 = load i8, i8* %324, align 1
  %326 = icmp ne i8 %325, 0
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %328 = load i8, i8* %327, align 1
  %329 = icmp ne i8 %328, 0
  %330 = xor i1 %326, %329
  %331 = xor i1 %330, true
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %BRANCH_TAKEN, align 1
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %334 = select i1 %330, i64 %321, i64 %319
  store i64 %334, i64* %333, align 8
  store %struct.Memory* %loadMem_420493, %struct.Memory** %MEMORY
  %loadBr_420493 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420493 = icmp eq i8 %loadBr_420493, 1
  br i1 %cmpBr_420493, label %block_.L_420651, label %block_420499

block_420499:                                     ; preds = %block_.L_420489
  %loadMem_420499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 33
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %339 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %338, i64 0, i64 0
  %YMM0.i756 = bitcast %union.VectorReg* %339 to %"class.std::bitset"*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %341 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %340, i64 0, i64 0
  %XMM0.i757 = bitcast %union.VectorReg* %341 to %union.vec128_t*
  %342 = bitcast %"class.std::bitset"* %YMM0.i756 to i8*
  %343 = bitcast %"class.std::bitset"* %YMM0.i756 to i8*
  %344 = bitcast %union.vec128_t* %XMM0.i757 to i8*
  %345 = load i64, i64* %PC.i755
  %346 = add i64 %345, 3
  store i64 %346, i64* %PC.i755
  %347 = bitcast i8* %343 to i64*
  %348 = load i64, i64* %347, align 1
  %349 = getelementptr inbounds i8, i8* %343, i64 8
  %350 = bitcast i8* %349 to i64*
  %351 = load i64, i64* %350, align 1
  %352 = bitcast i8* %344 to i64*
  %353 = load i64, i64* %352, align 1
  %354 = getelementptr inbounds i8, i8* %344, i64 8
  %355 = bitcast i8* %354 to i64*
  %356 = load i64, i64* %355, align 1
  %357 = xor i64 %353, %348
  %358 = xor i64 %356, %351
  %359 = trunc i64 %357 to i32
  %360 = lshr i64 %357, 32
  %361 = trunc i64 %360 to i32
  %362 = bitcast i8* %342 to i32*
  store i32 %359, i32* %362, align 1
  %363 = getelementptr inbounds i8, i8* %342, i64 4
  %364 = bitcast i8* %363 to i32*
  store i32 %361, i32* %364, align 1
  %365 = trunc i64 %358 to i32
  %366 = getelementptr inbounds i8, i8* %342, i64 8
  %367 = bitcast i8* %366 to i32*
  store i32 %365, i32* %367, align 1
  %368 = lshr i64 %358, 32
  %369 = trunc i64 %368 to i32
  %370 = getelementptr inbounds i8, i8* %342, i64 12
  %371 = bitcast i8* %370 to i32*
  store i32 %369, i32* %371, align 1
  store %struct.Memory* %loadMem_420499, %struct.Memory** %MEMORY
  %loadMem_42049c = load %struct.Memory*, %struct.Memory** %MEMORY
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 33
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 15
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %RBP.i754 = bitcast %union.anon* %377 to i64*
  %378 = load i64, i64* %RBP.i754
  %379 = sub i64 %378, 7412
  %380 = load i64, i64* %PC.i753
  %381 = add i64 %380, 10
  store i64 %381, i64* %PC.i753
  %382 = inttoptr i64 %379 to i32*
  store i32 0, i32* %382
  store %struct.Memory* %loadMem_42049c, %struct.Memory** %MEMORY
  %loadMem_4204a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %385 to i64*
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 15
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %388 to i64*
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %390 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %389, i64 0, i64 0
  %XMM0.i752 = bitcast %union.VectorReg* %390 to %union.vec128_t*
  %391 = load i64, i64* %RBP.i751
  %392 = sub i64 %391, 7416
  %393 = bitcast %union.vec128_t* %XMM0.i752 to i8*
  %394 = load i64, i64* %PC.i750
  %395 = add i64 %394, 8
  store i64 %395, i64* %PC.i750
  %396 = bitcast i8* %393 to <2 x float>*
  %397 = load <2 x float>, <2 x float>* %396, align 1
  %398 = extractelement <2 x float> %397, i32 0
  %399 = inttoptr i64 %392 to float*
  store float %398, float* %399
  store %struct.Memory* %loadMem_4204a6, %struct.Memory** %MEMORY
  %loadMem_4204ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 33
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %402 to i64*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 15
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %RBP.i749 = bitcast %union.anon* %405 to i64*
  %406 = load i64, i64* %RBP.i749
  %407 = sub i64 %406, 12
  %408 = load i64, i64* %PC.i748
  %409 = add i64 %408, 7
  store i64 %409, i64* %PC.i748
  %410 = inttoptr i64 %407 to i32*
  store i32 21, i32* %410
  store %struct.Memory* %loadMem_4204ae, %struct.Memory** %MEMORY
  br label %block_.L_4204b5

block_.L_4204b5:                                  ; preds = %block_.L_4205d2, %block_420499
  %loadMem_4204b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 15
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %RBP.i747 = bitcast %union.anon* %416 to i64*
  %417 = load i64, i64* %RBP.i747
  %418 = sub i64 %417, 12
  %419 = load i64, i64* %PC.i746
  %420 = add i64 %419, 7
  store i64 %420, i64* %PC.i746
  %421 = inttoptr i64 %418 to i32*
  %422 = load i32, i32* %421
  %423 = sub i32 %422, 400
  %424 = icmp ult i32 %422, 400
  %425 = zext i1 %424 to i8
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %425, i8* %426, align 1
  %427 = and i32 %423, 255
  %428 = call i32 @llvm.ctpop.i32(i32 %427)
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %431, i8* %432, align 1
  %433 = xor i32 %422, 400
  %434 = xor i32 %433, %423
  %435 = lshr i32 %434, 4
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %437, i8* %438, align 1
  %439 = icmp eq i32 %423, 0
  %440 = zext i1 %439 to i8
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %440, i8* %441, align 1
  %442 = lshr i32 %423, 31
  %443 = trunc i32 %442 to i8
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %443, i8* %444, align 1
  %445 = lshr i32 %422, 31
  %446 = xor i32 %442, %445
  %447 = add i32 %446, %445
  %448 = icmp eq i32 %447, 2
  %449 = zext i1 %448 to i8
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %449, i8* %450, align 1
  store %struct.Memory* %loadMem_4204b5, %struct.Memory** %MEMORY
  %loadMem_4204bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 33
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %453 to i64*
  %454 = load i64, i64* %PC.i745
  %455 = add i64 %454, 292
  %456 = load i64, i64* %PC.i745
  %457 = add i64 %456, 6
  %458 = load i64, i64* %PC.i745
  %459 = add i64 %458, 6
  store i64 %459, i64* %PC.i745
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %461 = load i8, i8* %460, align 1
  %462 = icmp ne i8 %461, 0
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %464 = load i8, i8* %463, align 1
  %465 = icmp ne i8 %464, 0
  %466 = xor i1 %462, %465
  %467 = xor i1 %466, true
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %BRANCH_TAKEN, align 1
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %470 = select i1 %466, i64 %457, i64 %455
  store i64 %470, i64* %469, align 8
  store %struct.Memory* %loadMem_4204bc, %struct.Memory** %MEMORY
  %loadBr_4204bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4204bc = icmp eq i8 %loadBr_4204bc, 1
  br i1 %cmpBr_4204bc, label %block_.L_4205e0, label %block_4204c2

block_4204c2:                                     ; preds = %block_.L_4204b5
  %loadMem_4204c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 33
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %473 to i64*
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 1
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %RAX.i744 = bitcast %union.anon* %476 to i64*
  %477 = load i64, i64* %PC.i743
  %478 = add i64 %477, 10
  store i64 %478, i64* %PC.i743
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i744, align 8
  store %struct.Memory* %loadMem_4204c2, %struct.Memory** %MEMORY
  %loadMem_4204cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %480 = getelementptr inbounds %struct.GPR, %struct.GPR* %479, i32 0, i32 33
  %481 = getelementptr inbounds %struct.Reg, %struct.Reg* %480, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %481 to i64*
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 5
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %RCX.i741 = bitcast %union.anon* %484 to i64*
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 15
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %RBP.i742 = bitcast %union.anon* %487 to i64*
  %488 = load i64, i64* %RBP.i742
  %489 = sub i64 %488, 12
  %490 = load i64, i64* %PC.i740
  %491 = add i64 %490, 4
  store i64 %491, i64* %PC.i740
  %492 = inttoptr i64 %489 to i32*
  %493 = load i32, i32* %492
  %494 = sext i32 %493 to i64
  store i64 %494, i64* %RCX.i741, align 8
  store %struct.Memory* %loadMem_4204cc, %struct.Memory** %MEMORY
  %loadMem_4204d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 33
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 5
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %RCX.i737 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 7
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %RDX.i738 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 15
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RBP.i739 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %RBP.i739
  %508 = load i64, i64* %RCX.i737
  %509 = mul i64 %508, 4
  %510 = add i64 %507, -7404
  %511 = add i64 %510, %509
  %512 = load i64, i64* %PC.i736
  %513 = add i64 %512, 7
  store i64 %513, i64* %PC.i736
  %514 = inttoptr i64 %511 to i32*
  %515 = load i32, i32* %514
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %RDX.i738, align 8
  store %struct.Memory* %loadMem_4204d0, %struct.Memory** %MEMORY
  %loadMem_4204d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 33
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %519 to i64*
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 7
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %EDX.i734 = bitcast %union.anon* %522 to i32*
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 15
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %525 to i64*
  %526 = load i64, i64* %RBP.i735
  %527 = sub i64 %526, 7420
  %528 = load i32, i32* %EDX.i734
  %529 = zext i32 %528 to i64
  %530 = load i64, i64* %PC.i733
  %531 = add i64 %530, 6
  store i64 %531, i64* %PC.i733
  %532 = inttoptr i64 %527 to i32*
  store i32 %528, i32* %532
  store %struct.Memory* %loadMem_4204d7, %struct.Memory** %MEMORY
  %loadMem_4204dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 33
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 5
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %RCX.i731 = bitcast %union.anon* %538 to i64*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 15
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %541 to i64*
  %542 = load i64, i64* %RBP.i732
  %543 = sub i64 %542, 12
  %544 = load i64, i64* %PC.i730
  %545 = add i64 %544, 4
  store i64 %545, i64* %PC.i730
  %546 = inttoptr i64 %543 to i32*
  %547 = load i32, i32* %546
  %548 = sext i32 %547 to i64
  store i64 %548, i64* %RCX.i731, align 8
  store %struct.Memory* %loadMem_4204dd, %struct.Memory** %MEMORY
  %loadMem_4204e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 33
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %551 to i64*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 5
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %RCX.i728 = bitcast %union.anon* %554 to i64*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 7
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %RDX.i729 = bitcast %union.anon* %557 to i64*
  %558 = load i64, i64* %RCX.i728
  %559 = add i64 %558, 12099168
  %560 = load i64, i64* %PC.i727
  %561 = add i64 %560, 8
  store i64 %561, i64* %PC.i727
  %562 = inttoptr i64 %559 to i8*
  %563 = load i8, i8* %562
  %564 = zext i8 %563 to i64
  store i64 %564, i64* %RDX.i729, align 8
  store %struct.Memory* %loadMem_4204e1, %struct.Memory** %MEMORY
  %loadMem_4204e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 33
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %567 to i64*
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 5
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %RCX.i726 = bitcast %union.anon* %570 to i64*
  %571 = load i64, i64* %PC.i725
  %572 = add i64 %571, 8
  store i64 %572, i64* %PC.i725
  %573 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %573, i64* %RCX.i726, align 8
  store %struct.Memory* %loadMem_4204e9, %struct.Memory** %MEMORY
  %loadMem_4204f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 33
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 9
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RSI.i723 = bitcast %union.anon* %579 to i64*
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 15
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %RBP.i724 = bitcast %union.anon* %582 to i64*
  %583 = load i64, i64* %RBP.i724
  %584 = sub i64 %583, 16
  %585 = load i64, i64* %PC.i722
  %586 = add i64 %585, 4
  store i64 %586, i64* %PC.i722
  %587 = inttoptr i64 %584 to i32*
  %588 = load i32, i32* %587
  %589 = sext i32 %588 to i64
  store i64 %589, i64* %RSI.i723, align 8
  store %struct.Memory* %loadMem_4204f1, %struct.Memory** %MEMORY
  %loadMem_4204f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 33
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %592 to i64*
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 9
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %RSI.i721 = bitcast %union.anon* %595 to i64*
  %596 = load i64, i64* %RSI.i721
  %597 = load i64, i64* %PC.i720
  %598 = add i64 %597, 4
  store i64 %598, i64* %PC.i720
  %599 = sext i64 %596 to i128
  %600 = and i128 %599, -18446744073709551616
  %601 = zext i64 %596 to i128
  %602 = or i128 %600, %601
  %603 = mul i128 104, %602
  %604 = trunc i128 %603 to i64
  store i64 %604, i64* %RSI.i721, align 8
  %605 = sext i64 %604 to i128
  %606 = icmp ne i128 %605, %603
  %607 = zext i1 %606 to i8
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %607, i8* %608, align 1
  %609 = trunc i128 %603 to i32
  %610 = and i32 %609, 255
  %611 = call i32 @llvm.ctpop.i32(i32 %610)
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  %614 = xor i8 %613, 1
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %614, i8* %615, align 1
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %616, align 1
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %617, align 1
  %618 = lshr i64 %604, 63
  %619 = trunc i64 %618 to i8
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %619, i8* %620, align 1
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %607, i8* %621, align 1
  store %struct.Memory* %loadMem_4204f5, %struct.Memory** %MEMORY
  %loadMem_4204f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 33
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 5
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %RCX.i718 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 9
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %RSI.i719 = bitcast %union.anon* %630 to i64*
  %631 = load i64, i64* %RCX.i718
  %632 = load i64, i64* %RSI.i719
  %633 = load i64, i64* %PC.i717
  %634 = add i64 %633, 3
  store i64 %634, i64* %PC.i717
  %635 = add i64 %632, %631
  store i64 %635, i64* %RCX.i718, align 8
  %636 = icmp ult i64 %635, %631
  %637 = icmp ult i64 %635, %632
  %638 = or i1 %636, %637
  %639 = zext i1 %638 to i8
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %639, i8* %640, align 1
  %641 = trunc i64 %635 to i32
  %642 = and i32 %641, 255
  %643 = call i32 @llvm.ctpop.i32(i32 %642)
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  %646 = xor i8 %645, 1
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %646, i8* %647, align 1
  %648 = xor i64 %632, %631
  %649 = xor i64 %648, %635
  %650 = lshr i64 %649, 4
  %651 = trunc i64 %650 to i8
  %652 = and i8 %651, 1
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %652, i8* %653, align 1
  %654 = icmp eq i64 %635, 0
  %655 = zext i1 %654 to i8
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %655, i8* %656, align 1
  %657 = lshr i64 %635, 63
  %658 = trunc i64 %657 to i8
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %658, i8* %659, align 1
  %660 = lshr i64 %631, 63
  %661 = lshr i64 %632, 63
  %662 = xor i64 %657, %660
  %663 = xor i64 %657, %661
  %664 = add i64 %662, %663
  %665 = icmp eq i64 %664, 2
  %666 = zext i1 %665 to i8
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %666, i8* %667, align 1
  store %struct.Memory* %loadMem_4204f9, %struct.Memory** %MEMORY
  %loadMem_4204fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 33
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 5
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %RCX.i716 = bitcast %union.anon* %673 to i64*
  %674 = load i64, i64* %RCX.i716
  %675 = load i64, i64* %PC.i715
  %676 = add i64 %675, 3
  store i64 %676, i64* %PC.i715
  %677 = inttoptr i64 %674 to i32*
  %678 = load i32, i32* %677
  %679 = sext i32 %678 to i64
  store i64 %679, i64* %RCX.i716, align 8
  store %struct.Memory* %loadMem_4204fc, %struct.Memory** %MEMORY
  %loadMem_4204ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 33
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %682 to i64*
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 5
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %RCX.i714 = bitcast %union.anon* %685 to i64*
  %686 = load i64, i64* %RCX.i714
  %687 = load i64, i64* %PC.i713
  %688 = add i64 %687, 4
  store i64 %688, i64* %PC.i713
  %689 = sext i64 %686 to i128
  %690 = and i128 %689, -18446744073709551616
  %691 = zext i64 %686 to i128
  %692 = or i128 %690, %691
  %693 = mul i128 76, %692
  %694 = trunc i128 %693 to i64
  store i64 %694, i64* %RCX.i714, align 8
  %695 = sext i64 %694 to i128
  %696 = icmp ne i128 %695, %693
  %697 = zext i1 %696 to i8
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %697, i8* %698, align 1
  %699 = trunc i128 %693 to i32
  %700 = and i32 %699, 255
  %701 = call i32 @llvm.ctpop.i32(i32 %700)
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, 1
  %704 = xor i8 %703, 1
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %704, i8* %705, align 1
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %706, align 1
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %707, align 1
  %708 = lshr i64 %694, 63
  %709 = trunc i64 %708 to i8
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %709, i8* %710, align 1
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %697, i8* %711, align 1
  store %struct.Memory* %loadMem_4204ff, %struct.Memory** %MEMORY
  %loadMem_420503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 33
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 1
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RAX.i711 = bitcast %union.anon* %717 to i64*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 5
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %RCX.i712 = bitcast %union.anon* %720 to i64*
  %721 = load i64, i64* %RAX.i711
  %722 = load i64, i64* %RCX.i712
  %723 = load i64, i64* %PC.i710
  %724 = add i64 %723, 3
  store i64 %724, i64* %PC.i710
  %725 = add i64 %722, %721
  store i64 %725, i64* %RAX.i711, align 8
  %726 = icmp ult i64 %725, %721
  %727 = icmp ult i64 %725, %722
  %728 = or i1 %726, %727
  %729 = zext i1 %728 to i8
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %729, i8* %730, align 1
  %731 = trunc i64 %725 to i32
  %732 = and i32 %731, 255
  %733 = call i32 @llvm.ctpop.i32(i32 %732)
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  %736 = xor i8 %735, 1
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %736, i8* %737, align 1
  %738 = xor i64 %722, %721
  %739 = xor i64 %738, %725
  %740 = lshr i64 %739, 4
  %741 = trunc i64 %740 to i8
  %742 = and i8 %741, 1
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %742, i8* %743, align 1
  %744 = icmp eq i64 %725, 0
  %745 = zext i1 %744 to i8
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %745, i8* %746, align 1
  %747 = lshr i64 %725, 63
  %748 = trunc i64 %747 to i8
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %748, i8* %749, align 1
  %750 = lshr i64 %721, 63
  %751 = lshr i64 %722, 63
  %752 = xor i64 %747, %750
  %753 = xor i64 %747, %751
  %754 = add i64 %752, %753
  %755 = icmp eq i64 %754, 2
  %756 = zext i1 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %756, i8* %757, align 1
  store %struct.Memory* %loadMem_420503, %struct.Memory** %MEMORY
  %loadMem_420506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 33
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %760 to i64*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 7
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %EDX.i708 = bitcast %union.anon* %763 to i32*
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 1
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %RAX.i709 = bitcast %union.anon* %766 to i64*
  %767 = load i32, i32* %EDX.i708
  %768 = zext i32 %767 to i64
  %769 = load i64, i64* %RAX.i709
  %770 = load i64, i64* %PC.i707
  %771 = add i64 %770, 2
  store i64 %771, i64* %PC.i707
  %772 = inttoptr i64 %769 to i32*
  %773 = load i32, i32* %772
  %774 = sub i32 %767, %773
  %775 = icmp ult i32 %767, %773
  %776 = zext i1 %775 to i8
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %776, i8* %777, align 1
  %778 = and i32 %774, 255
  %779 = call i32 @llvm.ctpop.i32(i32 %778)
  %780 = trunc i32 %779 to i8
  %781 = and i8 %780, 1
  %782 = xor i8 %781, 1
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %782, i8* %783, align 1
  %784 = xor i32 %773, %767
  %785 = xor i32 %784, %774
  %786 = lshr i32 %785, 4
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %788, i8* %789, align 1
  %790 = icmp eq i32 %774, 0
  %791 = zext i1 %790 to i8
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %791, i8* %792, align 1
  %793 = lshr i32 %774, 31
  %794 = trunc i32 %793 to i8
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %794, i8* %795, align 1
  %796 = lshr i32 %767, 31
  %797 = lshr i32 %773, 31
  %798 = xor i32 %797, %796
  %799 = xor i32 %793, %796
  %800 = add i32 %799, %798
  %801 = icmp eq i32 %800, 2
  %802 = zext i1 %801 to i8
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %802, i8* %803, align 1
  store %struct.Memory* %loadMem_420506, %struct.Memory** %MEMORY
  %loadMem_420508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 33
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %806 to i64*
  %807 = load i64, i64* %PC.i706
  %808 = add i64 %807, 86
  %809 = load i64, i64* %PC.i706
  %810 = add i64 %809, 6
  %811 = load i64, i64* %PC.i706
  %812 = add i64 %811, 6
  store i64 %812, i64* %PC.i706
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %814 = load i8, i8* %813, align 1
  %815 = icmp eq i8 %814, 0
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %BRANCH_TAKEN, align 1
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %818 = select i1 %815, i64 %808, i64 %810
  store i64 %818, i64* %817, align 8
  store %struct.Memory* %loadMem_420508, %struct.Memory** %MEMORY
  %loadBr_420508 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420508 = icmp eq i8 %loadBr_420508, 1
  br i1 %cmpBr_420508, label %block_.L_42055e, label %block_42050e

block_42050e:                                     ; preds = %block_4204c2
  %loadMem_42050e = load %struct.Memory*, %struct.Memory** %MEMORY
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 33
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 15
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %824 to i64*
  %825 = load i64, i64* %RBP.i705
  %826 = sub i64 %825, 7420
  %827 = load i64, i64* %PC.i704
  %828 = add i64 %827, 7
  store i64 %828, i64* %PC.i704
  %829 = inttoptr i64 %826 to i32*
  %830 = load i32, i32* %829
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %831, align 1
  %832 = and i32 %830, 255
  %833 = call i32 @llvm.ctpop.i32(i32 %832)
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  %836 = xor i8 %835, 1
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %836, i8* %837, align 1
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %838, align 1
  %839 = icmp eq i32 %830, 0
  %840 = zext i1 %839 to i8
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %840, i8* %841, align 1
  %842 = lshr i32 %830, 31
  %843 = trunc i32 %842 to i8
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %843, i8* %844, align 1
  %845 = lshr i32 %830, 31
  %846 = xor i32 %842, %845
  %847 = add i32 %846, %845
  %848 = icmp eq i32 %847, 2
  %849 = zext i1 %848 to i8
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %849, i8* %850, align 1
  store %struct.Memory* %loadMem_42050e, %struct.Memory** %MEMORY
  %loadMem_420515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 33
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %853 to i64*
  %854 = load i64, i64* %PC.i703
  %855 = add i64 %854, 73
  %856 = load i64, i64* %PC.i703
  %857 = add i64 %856, 6
  %858 = load i64, i64* %PC.i703
  %859 = add i64 %858, 6
  store i64 %859, i64* %PC.i703
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %861 = load i8, i8* %860, align 1
  store i8 %861, i8* %BRANCH_TAKEN, align 1
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %863 = icmp ne i8 %861, 0
  %864 = select i1 %863, i64 %855, i64 %857
  store i64 %864, i64* %862, align 8
  store %struct.Memory* %loadMem_420515, %struct.Memory** %MEMORY
  %loadBr_420515 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420515 = icmp eq i8 %loadBr_420515, 1
  br i1 %cmpBr_420515, label %block_.L_42055e, label %block_42051b

block_42051b:                                     ; preds = %block_42050e
  %loadMem_42051b = load %struct.Memory*, %struct.Memory** %MEMORY
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 33
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %867 to i64*
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 1
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %RAX.i702 = bitcast %union.anon* %870 to i64*
  %871 = load i64, i64* %PC.i701
  %872 = add i64 %871, 10
  store i64 %872, i64* %PC.i701
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i702, align 8
  store %struct.Memory* %loadMem_42051b, %struct.Memory** %MEMORY
  %loadMem_420525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 33
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %875 to i64*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 5
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %RCX.i699 = bitcast %union.anon* %878 to i64*
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 15
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %881 to i64*
  %882 = load i64, i64* %RBP.i700
  %883 = sub i64 %882, 12
  %884 = load i64, i64* %PC.i698
  %885 = add i64 %884, 4
  store i64 %885, i64* %PC.i698
  %886 = inttoptr i64 %883 to i32*
  %887 = load i32, i32* %886
  %888 = sext i32 %887 to i64
  store i64 %888, i64* %RCX.i699, align 8
  store %struct.Memory* %loadMem_420525, %struct.Memory** %MEMORY
  %loadMem_420529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 33
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %891 to i64*
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 5
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %RCX.i697 = bitcast %union.anon* %894 to i64*
  %895 = load i64, i64* %RCX.i697
  %896 = load i64, i64* %PC.i696
  %897 = add i64 %896, 4
  store i64 %897, i64* %PC.i696
  %898 = sext i64 %895 to i128
  %899 = and i128 %898, -18446744073709551616
  %900 = zext i64 %895 to i128
  %901 = or i128 %899, %900
  %902 = mul i128 76, %901
  %903 = trunc i128 %902 to i64
  store i64 %903, i64* %RCX.i697, align 8
  %904 = sext i64 %903 to i128
  %905 = icmp ne i128 %904, %902
  %906 = zext i1 %905 to i8
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %906, i8* %907, align 1
  %908 = trunc i128 %902 to i32
  %909 = and i32 %908, 255
  %910 = call i32 @llvm.ctpop.i32(i32 %909)
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = xor i8 %912, 1
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %913, i8* %914, align 1
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %915, align 1
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %916, align 1
  %917 = lshr i64 %903, 63
  %918 = trunc i64 %917 to i8
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %918, i8* %919, align 1
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %906, i8* %920, align 1
  store %struct.Memory* %loadMem_420529, %struct.Memory** %MEMORY
  %loadMem_42052d = load %struct.Memory*, %struct.Memory** %MEMORY
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 33
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 1
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %RAX.i694 = bitcast %union.anon* %926 to i64*
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 5
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %RCX.i695 = bitcast %union.anon* %929 to i64*
  %930 = load i64, i64* %RAX.i694
  %931 = load i64, i64* %RCX.i695
  %932 = load i64, i64* %PC.i693
  %933 = add i64 %932, 3
  store i64 %933, i64* %PC.i693
  %934 = add i64 %931, %930
  store i64 %934, i64* %RAX.i694, align 8
  %935 = icmp ult i64 %934, %930
  %936 = icmp ult i64 %934, %931
  %937 = or i1 %935, %936
  %938 = zext i1 %937 to i8
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %938, i8* %939, align 1
  %940 = trunc i64 %934 to i32
  %941 = and i32 %940, 255
  %942 = call i32 @llvm.ctpop.i32(i32 %941)
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  %945 = xor i8 %944, 1
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %945, i8* %946, align 1
  %947 = xor i64 %931, %930
  %948 = xor i64 %947, %934
  %949 = lshr i64 %948, 4
  %950 = trunc i64 %949 to i8
  %951 = and i8 %950, 1
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %951, i8* %952, align 1
  %953 = icmp eq i64 %934, 0
  %954 = zext i1 %953 to i8
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %954, i8* %955, align 1
  %956 = lshr i64 %934, 63
  %957 = trunc i64 %956 to i8
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %957, i8* %958, align 1
  %959 = lshr i64 %930, 63
  %960 = lshr i64 %931, 63
  %961 = xor i64 %956, %959
  %962 = xor i64 %956, %960
  %963 = add i64 %961, %962
  %964 = icmp eq i64 %963, 2
  %965 = zext i1 %964 to i8
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %965, i8* %966, align 1
  store %struct.Memory* %loadMem_42052d, %struct.Memory** %MEMORY
  %loadMem_420530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 33
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %969 to i64*
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 1
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %RAX.i691 = bitcast %union.anon* %972 to i64*
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 7
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %RDX.i692 = bitcast %union.anon* %975 to i64*
  %976 = load i64, i64* %RAX.i691
  %977 = add i64 %976, 4
  %978 = load i64, i64* %PC.i690
  %979 = add i64 %978, 3
  store i64 %979, i64* %PC.i690
  %980 = inttoptr i64 %977 to i32*
  %981 = load i32, i32* %980
  %982 = zext i32 %981 to i64
  store i64 %982, i64* %RDX.i692, align 8
  store %struct.Memory* %loadMem_420530, %struct.Memory** %MEMORY
  %loadMem_420533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 33
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %985 to i64*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 7
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %EDX.i688 = bitcast %union.anon* %988 to i32*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 15
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %991 to i64*
  %992 = load i32, i32* %EDX.i688
  %993 = zext i32 %992 to i64
  %994 = load i64, i64* %RBP.i689
  %995 = sub i64 %994, 16
  %996 = load i64, i64* %PC.i687
  %997 = add i64 %996, 3
  store i64 %997, i64* %PC.i687
  %998 = inttoptr i64 %995 to i32*
  %999 = load i32, i32* %998
  %1000 = sub i32 %992, %999
  %1001 = icmp ult i32 %992, %999
  %1002 = zext i1 %1001 to i8
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1002, i8* %1003, align 1
  %1004 = and i32 %1000, 255
  %1005 = call i32 @llvm.ctpop.i32(i32 %1004)
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  %1008 = xor i8 %1007, 1
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1008, i8* %1009, align 1
  %1010 = xor i32 %999, %992
  %1011 = xor i32 %1010, %1000
  %1012 = lshr i32 %1011, 4
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1014, i8* %1015, align 1
  %1016 = icmp eq i32 %1000, 0
  %1017 = zext i1 %1016 to i8
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1017, i8* %1018, align 1
  %1019 = lshr i32 %1000, 31
  %1020 = trunc i32 %1019 to i8
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1020, i8* %1021, align 1
  %1022 = lshr i32 %992, 31
  %1023 = lshr i32 %999, 31
  %1024 = xor i32 %1023, %1022
  %1025 = xor i32 %1019, %1022
  %1026 = add i32 %1025, %1024
  %1027 = icmp eq i32 %1026, 2
  %1028 = zext i1 %1027 to i8
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1028, i8* %1029, align 1
  store %struct.Memory* %loadMem_420533, %struct.Memory** %MEMORY
  %loadMem_420536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 33
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %1032 to i64*
  %1033 = load i64, i64* %PC.i686
  %1034 = add i64 %1033, 40
  %1035 = load i64, i64* %PC.i686
  %1036 = add i64 %1035, 6
  %1037 = load i64, i64* %PC.i686
  %1038 = add i64 %1037, 6
  store i64 %1038, i64* %PC.i686
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1040 = load i8, i8* %1039, align 1
  %1041 = icmp eq i8 %1040, 0
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %BRANCH_TAKEN, align 1
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1044 = select i1 %1041, i64 %1034, i64 %1036
  store i64 %1044, i64* %1043, align 8
  store %struct.Memory* %loadMem_420536, %struct.Memory** %MEMORY
  %loadBr_420536 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420536 = icmp eq i8 %loadBr_420536, 1
  br i1 %cmpBr_420536, label %block_.L_42055e, label %block_42053c

block_42053c:                                     ; preds = %block_42051b
  %loadMem_42053c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 33
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 1
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RAX.i684 = bitcast %union.anon* %1050 to i64*
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 15
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %RBP.i685 = bitcast %union.anon* %1053 to i64*
  %1054 = load i64, i64* %RBP.i685
  %1055 = sub i64 %1054, 7420
  %1056 = load i64, i64* %PC.i683
  %1057 = add i64 %1056, 7
  store i64 %1057, i64* %PC.i683
  %1058 = inttoptr i64 %1055 to i32*
  %1059 = load i32, i32* %1058
  %1060 = sext i32 %1059 to i64
  store i64 %1060, i64* %RAX.i684, align 8
  store %struct.Memory* %loadMem_42053c, %struct.Memory** %MEMORY
  %loadMem_420543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 1
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %RAX.i680 = bitcast %union.anon* %1066 to i64*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 5
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %RCX.i681 = bitcast %union.anon* %1069 to i64*
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 15
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %RBP.i682 = bitcast %union.anon* %1072 to i64*
  %1073 = load i64, i64* %RBP.i682
  %1074 = load i64, i64* %RAX.i680
  %1075 = mul i64 %1074, 4
  %1076 = add i64 %1073, -4360
  %1077 = add i64 %1076, %1075
  %1078 = load i64, i64* %PC.i679
  %1079 = add i64 %1078, 7
  store i64 %1079, i64* %PC.i679
  %1080 = inttoptr i64 %1077 to i32*
  %1081 = load i32, i32* %1080
  %1082 = zext i32 %1081 to i64
  store i64 %1082, i64* %RCX.i681, align 8
  store %struct.Memory* %loadMem_420543, %struct.Memory** %MEMORY
  %loadMem_42054a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 33
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %1085 to i64*
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 1
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %RAX.i677 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 15
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %RBP.i678 = bitcast %union.anon* %1091 to i64*
  %1092 = load i64, i64* %RBP.i678
  %1093 = sub i64 %1092, 12
  %1094 = load i64, i64* %PC.i676
  %1095 = add i64 %1094, 4
  store i64 %1095, i64* %PC.i676
  %1096 = inttoptr i64 %1093 to i32*
  %1097 = load i32, i32* %1096
  %1098 = sext i32 %1097 to i64
  store i64 %1098, i64* %RAX.i677, align 8
  store %struct.Memory* %loadMem_42054a, %struct.Memory** %MEMORY
  %loadMem_42054e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 33
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %1101 to i64*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 1
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %RAX.i674 = bitcast %union.anon* %1104 to i64*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 7
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %RDX.i675 = bitcast %union.anon* %1107 to i64*
  %1108 = load i64, i64* %RAX.i674
  %1109 = add i64 %1108, 12099168
  %1110 = load i64, i64* %PC.i673
  %1111 = add i64 %1110, 8
  store i64 %1111, i64* %PC.i673
  %1112 = inttoptr i64 %1109 to i8*
  %1113 = load i8, i8* %1112
  %1114 = zext i8 %1113 to i64
  store i64 %1114, i64* %RDX.i675, align 8
  store %struct.Memory* %loadMem_42054e, %struct.Memory** %MEMORY
  %loadMem_420556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 33
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %1117 to i64*
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 5
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %ECX.i671 = bitcast %union.anon* %1120 to i32*
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 7
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %EDX.i672 = bitcast %union.anon* %1123 to i32*
  %1124 = load i32, i32* %ECX.i671
  %1125 = zext i32 %1124 to i64
  %1126 = load i32, i32* %EDX.i672
  %1127 = zext i32 %1126 to i64
  %1128 = load i64, i64* %PC.i670
  %1129 = add i64 %1128, 2
  store i64 %1129, i64* %PC.i670
  %1130 = sub i32 %1124, %1126
  %1131 = icmp ult i32 %1124, %1126
  %1132 = zext i1 %1131 to i8
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1132, i8* %1133, align 1
  %1134 = and i32 %1130, 255
  %1135 = call i32 @llvm.ctpop.i32(i32 %1134)
  %1136 = trunc i32 %1135 to i8
  %1137 = and i8 %1136, 1
  %1138 = xor i8 %1137, 1
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1138, i8* %1139, align 1
  %1140 = xor i64 %1127, %1125
  %1141 = trunc i64 %1140 to i32
  %1142 = xor i32 %1141, %1130
  %1143 = lshr i32 %1142, 4
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1145, i8* %1146, align 1
  %1147 = icmp eq i32 %1130, 0
  %1148 = zext i1 %1147 to i8
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1148, i8* %1149, align 1
  %1150 = lshr i32 %1130, 31
  %1151 = trunc i32 %1150 to i8
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1151, i8* %1152, align 1
  %1153 = lshr i32 %1124, 31
  %1154 = lshr i32 %1126, 31
  %1155 = xor i32 %1154, %1153
  %1156 = xor i32 %1150, %1153
  %1157 = add i32 %1156, %1155
  %1158 = icmp eq i32 %1157, 2
  %1159 = zext i1 %1158 to i8
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1159, i8* %1160, align 1
  store %struct.Memory* %loadMem_420556, %struct.Memory** %MEMORY
  %loadMem_420558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 33
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %1163 to i64*
  %1164 = load i64, i64* %PC.i669
  %1165 = add i64 %1164, 11
  %1166 = load i64, i64* %PC.i669
  %1167 = add i64 %1166, 6
  %1168 = load i64, i64* %PC.i669
  %1169 = add i64 %1168, 6
  store i64 %1169, i64* %PC.i669
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1171 = load i8, i8* %1170, align 1
  store i8 %1171, i8* %BRANCH_TAKEN, align 1
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1173 = icmp ne i8 %1171, 0
  %1174 = select i1 %1173, i64 %1165, i64 %1167
  store i64 %1174, i64* %1172, align 8
  store %struct.Memory* %loadMem_420558, %struct.Memory** %MEMORY
  %loadBr_420558 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420558 = icmp eq i8 %loadBr_420558, 1
  br i1 %cmpBr_420558, label %block_.L_420563, label %block_.L_42055e

block_.L_42055e:                                  ; preds = %block_42053c, %block_42051b, %block_42050e, %block_4204c2
  %loadMem_42055e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 33
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %1177 to i64*
  %1178 = load i64, i64* %PC.i668
  %1179 = add i64 %1178, 116
  %1180 = load i64, i64* %PC.i668
  %1181 = add i64 %1180, 5
  store i64 %1181, i64* %PC.i668
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1179, i64* %1182, align 8
  store %struct.Memory* %loadMem_42055e, %struct.Memory** %MEMORY
  br label %block_.L_4205d2

block_.L_420563:                                  ; preds = %block_42053c
  %loadMem_420563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 33
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %1185 to i64*
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 1
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %RAX.i666 = bitcast %union.anon* %1188 to i64*
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.GPR, %struct.GPR* %1189, i32 0, i32 15
  %1191 = getelementptr inbounds %struct.Reg, %struct.Reg* %1190, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %1191 to i64*
  %1192 = load i64, i64* %RBP.i667
  %1193 = sub i64 %1192, 7420
  %1194 = load i64, i64* %PC.i665
  %1195 = add i64 %1194, 7
  store i64 %1195, i64* %PC.i665
  %1196 = inttoptr i64 %1193 to i32*
  %1197 = load i32, i32* %1196
  %1198 = sext i32 %1197 to i64
  store i64 %1198, i64* %RAX.i666, align 8
  store %struct.Memory* %loadMem_420563, %struct.Memory** %MEMORY
  %loadMem_42056a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 33
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %1201 to i64*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 1
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %RAX.i662 = bitcast %union.anon* %1204 to i64*
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 5
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %RCX.i663 = bitcast %union.anon* %1207 to i64*
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 15
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %RBP.i664 = bitcast %union.anon* %1210 to i64*
  %1211 = load i64, i64* %RBP.i664
  %1212 = load i64, i64* %RAX.i662
  %1213 = mul i64 %1212, 4
  %1214 = add i64 %1211, -1472
  %1215 = add i64 %1214, %1213
  %1216 = load i64, i64* %PC.i661
  %1217 = add i64 %1216, 7
  store i64 %1217, i64* %PC.i661
  %1218 = inttoptr i64 %1215 to i32*
  %1219 = load i32, i32* %1218
  %1220 = zext i32 %1219 to i64
  store i64 %1220, i64* %RCX.i663, align 8
  store %struct.Memory* %loadMem_42056a, %struct.Memory** %MEMORY
  %loadMem_420571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 33
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %1223 to i64*
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 7
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %RDX.i659 = bitcast %union.anon* %1226 to i64*
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 15
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %1229 to i64*
  %1230 = load i64, i64* %RBP.i660
  %1231 = sub i64 %1230, 16
  %1232 = load i64, i64* %PC.i658
  %1233 = add i64 %1232, 3
  store i64 %1233, i64* %PC.i658
  %1234 = inttoptr i64 %1231 to i32*
  %1235 = load i32, i32* %1234
  %1236 = zext i32 %1235 to i64
  store i64 %1236, i64* %RDX.i659, align 8
  store %struct.Memory* %loadMem_420571, %struct.Memory** %MEMORY
  %loadMem_420574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 33
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 7
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %RDX.i657 = bitcast %union.anon* %1242 to i64*
  %1243 = load i64, i64* %RDX.i657
  %1244 = load i64, i64* %PC.i656
  %1245 = add i64 %1244, 3
  store i64 %1245, i64* %PC.i656
  %1246 = trunc i64 %1243 to i32
  %1247 = add i32 1, %1246
  %1248 = zext i32 %1247 to i64
  store i64 %1248, i64* %RDX.i657, align 8
  %1249 = icmp ult i32 %1247, %1246
  %1250 = icmp ult i32 %1247, 1
  %1251 = or i1 %1249, %1250
  %1252 = zext i1 %1251 to i8
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1252, i8* %1253, align 1
  %1254 = and i32 %1247, 255
  %1255 = call i32 @llvm.ctpop.i32(i32 %1254)
  %1256 = trunc i32 %1255 to i8
  %1257 = and i8 %1256, 1
  %1258 = xor i8 %1257, 1
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1258, i8* %1259, align 1
  %1260 = xor i64 1, %1243
  %1261 = trunc i64 %1260 to i32
  %1262 = xor i32 %1261, %1247
  %1263 = lshr i32 %1262, 4
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1265, i8* %1266, align 1
  %1267 = icmp eq i32 %1247, 0
  %1268 = zext i1 %1267 to i8
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1268, i8* %1269, align 1
  %1270 = lshr i32 %1247, 31
  %1271 = trunc i32 %1270 to i8
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1271, i8* %1272, align 1
  %1273 = lshr i32 %1246, 31
  %1274 = xor i32 %1270, %1273
  %1275 = add i32 %1274, %1270
  %1276 = icmp eq i32 %1275, 2
  %1277 = zext i1 %1276 to i8
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1277, i8* %1278, align 1
  store %struct.Memory* %loadMem_420574, %struct.Memory** %MEMORY
  %loadMem_420577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 33
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %1281 to i64*
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1283 = getelementptr inbounds %struct.GPR, %struct.GPR* %1282, i32 0, i32 5
  %1284 = getelementptr inbounds %struct.Reg, %struct.Reg* %1283, i32 0, i32 0
  %ECX.i654 = bitcast %union.anon* %1284 to i32*
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 7
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %EDX.i655 = bitcast %union.anon* %1287 to i32*
  %1288 = load i32, i32* %ECX.i654
  %1289 = zext i32 %1288 to i64
  %1290 = load i32, i32* %EDX.i655
  %1291 = zext i32 %1290 to i64
  %1292 = load i64, i64* %PC.i653
  %1293 = add i64 %1292, 2
  store i64 %1293, i64* %PC.i653
  %1294 = sub i32 %1288, %1290
  %1295 = icmp ult i32 %1288, %1290
  %1296 = zext i1 %1295 to i8
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1296, i8* %1297, align 1
  %1298 = and i32 %1294, 255
  %1299 = call i32 @llvm.ctpop.i32(i32 %1298)
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = xor i8 %1301, 1
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1302, i8* %1303, align 1
  %1304 = xor i64 %1291, %1289
  %1305 = trunc i64 %1304 to i32
  %1306 = xor i32 %1305, %1294
  %1307 = lshr i32 %1306, 4
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1309, i8* %1310, align 1
  %1311 = icmp eq i32 %1294, 0
  %1312 = zext i1 %1311 to i8
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1312, i8* %1313, align 1
  %1314 = lshr i32 %1294, 31
  %1315 = trunc i32 %1314 to i8
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1315, i8* %1316, align 1
  %1317 = lshr i32 %1288, 31
  %1318 = lshr i32 %1290, 31
  %1319 = xor i32 %1318, %1317
  %1320 = xor i32 %1314, %1317
  %1321 = add i32 %1320, %1319
  %1322 = icmp eq i32 %1321, 2
  %1323 = zext i1 %1322 to i8
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1323, i8* %1324, align 1
  store %struct.Memory* %loadMem_420577, %struct.Memory** %MEMORY
  %loadMem_420579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 33
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %1327 to i64*
  %1328 = load i64, i64* %PC.i652
  %1329 = add i64 %1328, 84
  %1330 = load i64, i64* %PC.i652
  %1331 = add i64 %1330, 6
  %1332 = load i64, i64* %PC.i652
  %1333 = add i64 %1332, 6
  store i64 %1333, i64* %PC.i652
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1335 = load i8, i8* %1334, align 1
  store i8 %1335, i8* %BRANCH_TAKEN, align 1
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1337 = icmp ne i8 %1335, 0
  %1338 = select i1 %1337, i64 %1329, i64 %1331
  store i64 %1338, i64* %1336, align 8
  store %struct.Memory* %loadMem_420579, %struct.Memory** %MEMORY
  %loadBr_420579 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420579 = icmp eq i8 %loadBr_420579, 1
  br i1 %cmpBr_420579, label %block_.L_4205cd, label %block_42057f

block_42057f:                                     ; preds = %block_.L_420563
  %loadMem_42057f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 33
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %1341 to i64*
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 1
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %RAX.i650 = bitcast %union.anon* %1344 to i64*
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 15
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %1347 to i64*
  %1348 = load i64, i64* %RBP.i651
  %1349 = sub i64 %1348, 16
  %1350 = load i64, i64* %PC.i649
  %1351 = add i64 %1350, 3
  store i64 %1351, i64* %PC.i649
  %1352 = inttoptr i64 %1349 to i32*
  %1353 = load i32, i32* %1352
  %1354 = zext i32 %1353 to i64
  store i64 %1354, i64* %RAX.i650, align 8
  store %struct.Memory* %loadMem_42057f, %struct.Memory** %MEMORY
  %loadMem_420582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 33
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 1
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RAX.i648 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %RAX.i648
  %1362 = load i64, i64* %PC.i647
  %1363 = add i64 %1362, 3
  store i64 %1363, i64* %PC.i647
  %1364 = trunc i64 %1361 to i32
  %1365 = add i32 1, %1364
  %1366 = zext i32 %1365 to i64
  store i64 %1366, i64* %RAX.i648, align 8
  %1367 = icmp ult i32 %1365, %1364
  %1368 = icmp ult i32 %1365, 1
  %1369 = or i1 %1367, %1368
  %1370 = zext i1 %1369 to i8
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1370, i8* %1371, align 1
  %1372 = and i32 %1365, 255
  %1373 = call i32 @llvm.ctpop.i32(i32 %1372)
  %1374 = trunc i32 %1373 to i8
  %1375 = and i8 %1374, 1
  %1376 = xor i8 %1375, 1
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1376, i8* %1377, align 1
  %1378 = xor i64 1, %1361
  %1379 = trunc i64 %1378 to i32
  %1380 = xor i32 %1379, %1365
  %1381 = lshr i32 %1380, 4
  %1382 = trunc i32 %1381 to i8
  %1383 = and i8 %1382, 1
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1383, i8* %1384, align 1
  %1385 = icmp eq i32 %1365, 0
  %1386 = zext i1 %1385 to i8
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1386, i8* %1387, align 1
  %1388 = lshr i32 %1365, 31
  %1389 = trunc i32 %1388 to i8
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1389, i8* %1390, align 1
  %1391 = lshr i32 %1364, 31
  %1392 = xor i32 %1388, %1391
  %1393 = add i32 %1392, %1388
  %1394 = icmp eq i32 %1393, 2
  %1395 = zext i1 %1394 to i8
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1395, i8* %1396, align 1
  store %struct.Memory* %loadMem_420582, %struct.Memory** %MEMORY
  %loadMem_420585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 33
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %1399 to i64*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 5
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %RCX.i645 = bitcast %union.anon* %1402 to i64*
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 15
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %RBP.i646 = bitcast %union.anon* %1405 to i64*
  %1406 = load i64, i64* %RBP.i646
  %1407 = sub i64 %1406, 7420
  %1408 = load i64, i64* %PC.i644
  %1409 = add i64 %1408, 7
  store i64 %1409, i64* %PC.i644
  %1410 = inttoptr i64 %1407 to i32*
  %1411 = load i32, i32* %1410
  %1412 = sext i32 %1411 to i64
  store i64 %1412, i64* %RCX.i645, align 8
  store %struct.Memory* %loadMem_420585, %struct.Memory** %MEMORY
  %loadMem_42058c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 33
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %1415 to i64*
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 1
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %EAX.i641 = bitcast %union.anon* %1418 to i32*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 5
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %RCX.i642 = bitcast %union.anon* %1421 to i64*
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 15
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %1424 to i64*
  %1425 = load i64, i64* %RBP.i643
  %1426 = load i64, i64* %RCX.i642
  %1427 = mul i64 %1426, 4
  %1428 = add i64 %1425, -1472
  %1429 = add i64 %1428, %1427
  %1430 = load i32, i32* %EAX.i641
  %1431 = zext i32 %1430 to i64
  %1432 = load i64, i64* %PC.i640
  %1433 = add i64 %1432, 7
  store i64 %1433, i64* %PC.i640
  %1434 = inttoptr i64 %1429 to i32*
  store i32 %1430, i32* %1434
  store %struct.Memory* %loadMem_42058c, %struct.Memory** %MEMORY
  %loadMem_420593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 33
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %1437 to i64*
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 5
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %RCX.i638 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 15
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %RBP.i639 = bitcast %union.anon* %1443 to i64*
  %1444 = load i64, i64* %RBP.i639
  %1445 = sub i64 %1444, 7420
  %1446 = load i64, i64* %PC.i637
  %1447 = add i64 %1446, 7
  store i64 %1447, i64* %PC.i637
  %1448 = inttoptr i64 %1445 to i32*
  %1449 = load i32, i32* %1448
  %1450 = sext i32 %1449 to i64
  store i64 %1450, i64* %RCX.i638, align 8
  store %struct.Memory* %loadMem_420593, %struct.Memory** %MEMORY
  %loadMem_42059a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 33
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 1
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %RAX.i634 = bitcast %union.anon* %1456 to i64*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 5
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %RCX.i635 = bitcast %union.anon* %1459 to i64*
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 15
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %1462 to i64*
  %1463 = load i64, i64* %RBP.i636
  %1464 = load i64, i64* %RCX.i635
  %1465 = mul i64 %1464, 4
  %1466 = add i64 %1463, -5804
  %1467 = add i64 %1466, %1465
  %1468 = load i64, i64* %PC.i633
  %1469 = add i64 %1468, 7
  store i64 %1469, i64* %PC.i633
  %1470 = inttoptr i64 %1467 to i32*
  %1471 = load i32, i32* %1470
  %1472 = zext i32 %1471 to i64
  store i64 %1472, i64* %RAX.i634, align 8
  store %struct.Memory* %loadMem_42059a, %struct.Memory** %MEMORY
  %loadMem_4205a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 33
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %1475 to i64*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 1
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RAX.i631 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 15
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %1481 to i64*
  %1482 = load i64, i64* %RAX.i631
  %1483 = load i64, i64* %RBP.i632
  %1484 = sub i64 %1483, 7412
  %1485 = load i64, i64* %PC.i630
  %1486 = add i64 %1485, 6
  store i64 %1486, i64* %PC.i630
  %1487 = trunc i64 %1482 to i32
  %1488 = inttoptr i64 %1484 to i32*
  %1489 = load i32, i32* %1488
  %1490 = add i32 %1489, %1487
  %1491 = zext i32 %1490 to i64
  store i64 %1491, i64* %RAX.i631, align 8
  %1492 = icmp ult i32 %1490, %1487
  %1493 = icmp ult i32 %1490, %1489
  %1494 = or i1 %1492, %1493
  %1495 = zext i1 %1494 to i8
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1495, i8* %1496, align 1
  %1497 = and i32 %1490, 255
  %1498 = call i32 @llvm.ctpop.i32(i32 %1497)
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  %1501 = xor i8 %1500, 1
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1501, i8* %1502, align 1
  %1503 = xor i32 %1489, %1487
  %1504 = xor i32 %1503, %1490
  %1505 = lshr i32 %1504, 4
  %1506 = trunc i32 %1505 to i8
  %1507 = and i8 %1506, 1
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1507, i8* %1508, align 1
  %1509 = icmp eq i32 %1490, 0
  %1510 = zext i1 %1509 to i8
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1510, i8* %1511, align 1
  %1512 = lshr i32 %1490, 31
  %1513 = trunc i32 %1512 to i8
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1513, i8* %1514, align 1
  %1515 = lshr i32 %1487, 31
  %1516 = lshr i32 %1489, 31
  %1517 = xor i32 %1512, %1515
  %1518 = xor i32 %1512, %1516
  %1519 = add i32 %1517, %1518
  %1520 = icmp eq i32 %1519, 2
  %1521 = zext i1 %1520 to i8
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1521, i8* %1522, align 1
  store %struct.Memory* %loadMem_4205a1, %struct.Memory** %MEMORY
  %loadMem_4205a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 33
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %1525 to i64*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 1
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %EAX.i628 = bitcast %union.anon* %1528 to i32*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 15
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RBP.i629 = bitcast %union.anon* %1531 to i64*
  %1532 = load i64, i64* %RBP.i629
  %1533 = sub i64 %1532, 7412
  %1534 = load i32, i32* %EAX.i628
  %1535 = zext i32 %1534 to i64
  %1536 = load i64, i64* %PC.i627
  %1537 = add i64 %1536, 6
  store i64 %1537, i64* %PC.i627
  %1538 = inttoptr i64 %1533 to i32*
  store i32 %1534, i32* %1538
  store %struct.Memory* %loadMem_4205a7, %struct.Memory** %MEMORY
  %loadMem_4205ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 33
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %1541 to i64*
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 5
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %RCX.i625 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 15
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %1547 to i64*
  %1548 = load i64, i64* %RBP.i626
  %1549 = sub i64 %1548, 7420
  %1550 = load i64, i64* %PC.i624
  %1551 = add i64 %1550, 7
  store i64 %1551, i64* %PC.i624
  %1552 = inttoptr i64 %1549 to i32*
  %1553 = load i32, i32* %1552
  %1554 = sext i32 %1553 to i64
  store i64 %1554, i64* %RCX.i625, align 8
  store %struct.Memory* %loadMem_4205ad, %struct.Memory** %MEMORY
  %loadMem_4205b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 5
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RCX.i621 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 15
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %1563 to i64*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1565 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1564, i64 0, i64 0
  %YMM0.i623 = bitcast %union.VectorReg* %1565 to %"class.std::bitset"*
  %1566 = bitcast %"class.std::bitset"* %YMM0.i623 to i8*
  %1567 = load i64, i64* %RBP.i622
  %1568 = load i64, i64* %RCX.i621
  %1569 = mul i64 %1568, 4
  %1570 = add i64 %1567, -2916
  %1571 = add i64 %1570, %1569
  %1572 = load i64, i64* %PC.i620
  %1573 = add i64 %1572, 9
  store i64 %1573, i64* %PC.i620
  %1574 = inttoptr i64 %1571 to float*
  %1575 = load float, float* %1574
  %1576 = bitcast i8* %1566 to float*
  store float %1575, float* %1576, align 1
  %1577 = getelementptr inbounds i8, i8* %1566, i64 4
  %1578 = bitcast i8* %1577 to float*
  store float 0.000000e+00, float* %1578, align 1
  %1579 = getelementptr inbounds i8, i8* %1566, i64 8
  %1580 = bitcast i8* %1579 to float*
  store float 0.000000e+00, float* %1580, align 1
  %1581 = getelementptr inbounds i8, i8* %1566, i64 12
  %1582 = bitcast i8* %1581 to float*
  store float 0.000000e+00, float* %1582, align 1
  store %struct.Memory* %loadMem_4205b4, %struct.Memory** %MEMORY
  %loadMem_4205bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 33
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %1585 to i64*
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 15
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %1588 to i64*
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1590 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1589, i64 0, i64 0
  %YMM0.i619 = bitcast %union.VectorReg* %1590 to %"class.std::bitset"*
  %1591 = bitcast %"class.std::bitset"* %YMM0.i619 to i8*
  %1592 = bitcast %"class.std::bitset"* %YMM0.i619 to i8*
  %1593 = load i64, i64* %RBP.i618
  %1594 = sub i64 %1593, 7416
  %1595 = load i64, i64* %PC.i617
  %1596 = add i64 %1595, 8
  store i64 %1596, i64* %PC.i617
  %1597 = bitcast i8* %1592 to <2 x float>*
  %1598 = load <2 x float>, <2 x float>* %1597, align 1
  %1599 = getelementptr inbounds i8, i8* %1592, i64 8
  %1600 = bitcast i8* %1599 to <2 x i32>*
  %1601 = load <2 x i32>, <2 x i32>* %1600, align 1
  %1602 = inttoptr i64 %1594 to float*
  %1603 = load float, float* %1602
  %1604 = extractelement <2 x float> %1598, i32 0
  %1605 = fadd float %1604, %1603
  %1606 = bitcast i8* %1591 to float*
  store float %1605, float* %1606, align 1
  %1607 = bitcast <2 x float> %1598 to <2 x i32>
  %1608 = extractelement <2 x i32> %1607, i32 1
  %1609 = getelementptr inbounds i8, i8* %1591, i64 4
  %1610 = bitcast i8* %1609 to i32*
  store i32 %1608, i32* %1610, align 1
  %1611 = extractelement <2 x i32> %1601, i32 0
  %1612 = getelementptr inbounds i8, i8* %1591, i64 8
  %1613 = bitcast i8* %1612 to i32*
  store i32 %1611, i32* %1613, align 1
  %1614 = extractelement <2 x i32> %1601, i32 1
  %1615 = getelementptr inbounds i8, i8* %1591, i64 12
  %1616 = bitcast i8* %1615 to i32*
  store i32 %1614, i32* %1616, align 1
  store %struct.Memory* %loadMem_4205bd, %struct.Memory** %MEMORY
  %loadMem_4205c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 33
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %1619 to i64*
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 15
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %1622 to i64*
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1624 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1623, i64 0, i64 0
  %XMM0.i616 = bitcast %union.VectorReg* %1624 to %union.vec128_t*
  %1625 = load i64, i64* %RBP.i615
  %1626 = sub i64 %1625, 7416
  %1627 = bitcast %union.vec128_t* %XMM0.i616 to i8*
  %1628 = load i64, i64* %PC.i614
  %1629 = add i64 %1628, 8
  store i64 %1629, i64* %PC.i614
  %1630 = bitcast i8* %1627 to <2 x float>*
  %1631 = load <2 x float>, <2 x float>* %1630, align 1
  %1632 = extractelement <2 x float> %1631, i32 0
  %1633 = inttoptr i64 %1626 to float*
  store float %1632, float* %1633
  store %struct.Memory* %loadMem_4205c5, %struct.Memory** %MEMORY
  br label %block_.L_4205cd

block_.L_4205cd:                                  ; preds = %block_42057f, %block_.L_420563
  %loadMem_4205cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 33
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %1636 to i64*
  %1637 = load i64, i64* %PC.i613
  %1638 = add i64 %1637, 5
  %1639 = load i64, i64* %PC.i613
  %1640 = add i64 %1639, 5
  store i64 %1640, i64* %PC.i613
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1638, i64* %1641, align 8
  store %struct.Memory* %loadMem_4205cd, %struct.Memory** %MEMORY
  br label %block_.L_4205d2

block_.L_4205d2:                                  ; preds = %block_.L_4205cd, %block_.L_42055e
  %loadMem_4205d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 33
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %1644 to i64*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 1
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %1647 to i64*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 15
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %1650 to i64*
  %1651 = load i64, i64* %RBP.i612
  %1652 = sub i64 %1651, 12
  %1653 = load i64, i64* %PC.i610
  %1654 = add i64 %1653, 3
  store i64 %1654, i64* %PC.i610
  %1655 = inttoptr i64 %1652 to i32*
  %1656 = load i32, i32* %1655
  %1657 = zext i32 %1656 to i64
  store i64 %1657, i64* %RAX.i611, align 8
  store %struct.Memory* %loadMem_4205d2, %struct.Memory** %MEMORY
  %loadMem_4205d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 33
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %1660 to i64*
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 1
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %RAX.i609 = bitcast %union.anon* %1663 to i64*
  %1664 = load i64, i64* %RAX.i609
  %1665 = load i64, i64* %PC.i608
  %1666 = add i64 %1665, 3
  store i64 %1666, i64* %PC.i608
  %1667 = trunc i64 %1664 to i32
  %1668 = add i32 1, %1667
  %1669 = zext i32 %1668 to i64
  store i64 %1669, i64* %RAX.i609, align 8
  %1670 = icmp ult i32 %1668, %1667
  %1671 = icmp ult i32 %1668, 1
  %1672 = or i1 %1670, %1671
  %1673 = zext i1 %1672 to i8
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1673, i8* %1674, align 1
  %1675 = and i32 %1668, 255
  %1676 = call i32 @llvm.ctpop.i32(i32 %1675)
  %1677 = trunc i32 %1676 to i8
  %1678 = and i8 %1677, 1
  %1679 = xor i8 %1678, 1
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1679, i8* %1680, align 1
  %1681 = xor i64 1, %1664
  %1682 = trunc i64 %1681 to i32
  %1683 = xor i32 %1682, %1668
  %1684 = lshr i32 %1683, 4
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1686, i8* %1687, align 1
  %1688 = icmp eq i32 %1668, 0
  %1689 = zext i1 %1688 to i8
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1689, i8* %1690, align 1
  %1691 = lshr i32 %1668, 31
  %1692 = trunc i32 %1691 to i8
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1692, i8* %1693, align 1
  %1694 = lshr i32 %1667, 31
  %1695 = xor i32 %1691, %1694
  %1696 = add i32 %1695, %1691
  %1697 = icmp eq i32 %1696, 2
  %1698 = zext i1 %1697 to i8
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1698, i8* %1699, align 1
  store %struct.Memory* %loadMem_4205d5, %struct.Memory** %MEMORY
  %loadMem_4205d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 33
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %1702 to i64*
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 1
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %EAX.i606 = bitcast %union.anon* %1705 to i32*
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 15
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %RBP.i607 = bitcast %union.anon* %1708 to i64*
  %1709 = load i64, i64* %RBP.i607
  %1710 = sub i64 %1709, 12
  %1711 = load i32, i32* %EAX.i606
  %1712 = zext i32 %1711 to i64
  %1713 = load i64, i64* %PC.i605
  %1714 = add i64 %1713, 3
  store i64 %1714, i64* %PC.i605
  %1715 = inttoptr i64 %1710 to i32*
  store i32 %1711, i32* %1715
  store %struct.Memory* %loadMem_4205d8, %struct.Memory** %MEMORY
  %loadMem_4205db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 33
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %1718 to i64*
  %1719 = load i64, i64* %PC.i604
  %1720 = add i64 %1719, -294
  %1721 = load i64, i64* %PC.i604
  %1722 = add i64 %1721, 5
  store i64 %1722, i64* %PC.i604
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1720, i64* %1723, align 8
  store %struct.Memory* %loadMem_4205db, %struct.Memory** %MEMORY
  br label %block_.L_4204b5

block_.L_4205e0:                                  ; preds = %block_.L_4204b5
  %loadMem_4205e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 33
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %1726 to i64*
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 1
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %1729 to i64*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 15
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %1732 to i64*
  %1733 = load i64, i64* %RBP.i603
  %1734 = sub i64 %1733, 7412
  %1735 = load i64, i64* %PC.i601
  %1736 = add i64 %1735, 6
  store i64 %1736, i64* %PC.i601
  %1737 = inttoptr i64 %1734 to i32*
  %1738 = load i32, i32* %1737
  %1739 = zext i32 %1738 to i64
  store i64 %1739, i64* %RAX.i602, align 8
  store %struct.Memory* %loadMem_4205e0, %struct.Memory** %MEMORY
  %loadMem_4205e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 33
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %1742 to i64*
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 5
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %RCX.i600 = bitcast %union.anon* %1745 to i64*
  %1746 = load i64, i64* %PC.i599
  %1747 = add i64 %1746, 8
  store i64 %1747, i64* %PC.i599
  %1748 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %1748, i64* %RCX.i600, align 8
  store %struct.Memory* %loadMem_4205e6, %struct.Memory** %MEMORY
  %loadMem_4205ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 33
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 7
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RDX.i597 = bitcast %union.anon* %1754 to i64*
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 15
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %1757 to i64*
  %1758 = load i64, i64* %RBP.i598
  %1759 = sub i64 %1758, 16
  %1760 = load i64, i64* %PC.i596
  %1761 = add i64 %1760, 4
  store i64 %1761, i64* %PC.i596
  %1762 = inttoptr i64 %1759 to i32*
  %1763 = load i32, i32* %1762
  %1764 = sext i32 %1763 to i64
  store i64 %1764, i64* %RDX.i597, align 8
  store %struct.Memory* %loadMem_4205ee, %struct.Memory** %MEMORY
  %loadMem_4205f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 33
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 7
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %RDX.i595 = bitcast %union.anon* %1770 to i64*
  %1771 = load i64, i64* %RDX.i595
  %1772 = load i64, i64* %PC.i594
  %1773 = add i64 %1772, 4
  store i64 %1773, i64* %PC.i594
  %1774 = sext i64 %1771 to i128
  %1775 = and i128 %1774, -18446744073709551616
  %1776 = zext i64 %1771 to i128
  %1777 = or i128 %1775, %1776
  %1778 = mul i128 104, %1777
  %1779 = trunc i128 %1778 to i64
  store i64 %1779, i64* %RDX.i595, align 8
  %1780 = sext i64 %1779 to i128
  %1781 = icmp ne i128 %1780, %1778
  %1782 = zext i1 %1781 to i8
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1782, i8* %1783, align 1
  %1784 = trunc i128 %1778 to i32
  %1785 = and i32 %1784, 255
  %1786 = call i32 @llvm.ctpop.i32(i32 %1785)
  %1787 = trunc i32 %1786 to i8
  %1788 = and i8 %1787, 1
  %1789 = xor i8 %1788, 1
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1789, i8* %1790, align 1
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1791, align 1
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1792, align 1
  %1793 = lshr i64 %1779, 63
  %1794 = trunc i64 %1793 to i8
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1794, i8* %1795, align 1
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1782, i8* %1796, align 1
  store %struct.Memory* %loadMem_4205f2, %struct.Memory** %MEMORY
  %loadMem_4205f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %1799 to i64*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 5
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %RCX.i592 = bitcast %union.anon* %1802 to i64*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 7
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %RDX.i593 = bitcast %union.anon* %1805 to i64*
  %1806 = load i64, i64* %RCX.i592
  %1807 = load i64, i64* %RDX.i593
  %1808 = load i64, i64* %PC.i591
  %1809 = add i64 %1808, 3
  store i64 %1809, i64* %PC.i591
  %1810 = add i64 %1807, %1806
  store i64 %1810, i64* %RCX.i592, align 8
  %1811 = icmp ult i64 %1810, %1806
  %1812 = icmp ult i64 %1810, %1807
  %1813 = or i1 %1811, %1812
  %1814 = zext i1 %1813 to i8
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1814, i8* %1815, align 1
  %1816 = trunc i64 %1810 to i32
  %1817 = and i32 %1816, 255
  %1818 = call i32 @llvm.ctpop.i32(i32 %1817)
  %1819 = trunc i32 %1818 to i8
  %1820 = and i8 %1819, 1
  %1821 = xor i8 %1820, 1
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1821, i8* %1822, align 1
  %1823 = xor i64 %1807, %1806
  %1824 = xor i64 %1823, %1810
  %1825 = lshr i64 %1824, 4
  %1826 = trunc i64 %1825 to i8
  %1827 = and i8 %1826, 1
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1827, i8* %1828, align 1
  %1829 = icmp eq i64 %1810, 0
  %1830 = zext i1 %1829 to i8
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1830, i8* %1831, align 1
  %1832 = lshr i64 %1810, 63
  %1833 = trunc i64 %1832 to i8
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1833, i8* %1834, align 1
  %1835 = lshr i64 %1806, 63
  %1836 = lshr i64 %1807, 63
  %1837 = xor i64 %1832, %1835
  %1838 = xor i64 %1832, %1836
  %1839 = add i64 %1837, %1838
  %1840 = icmp eq i64 %1839, 2
  %1841 = zext i1 %1840 to i8
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1841, i8* %1842, align 1
  store %struct.Memory* %loadMem_4205f6, %struct.Memory** %MEMORY
  %loadMem_4205f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 33
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %1845 to i64*
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 1
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %EAX.i589 = bitcast %union.anon* %1848 to i32*
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 5
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %RCX.i590 = bitcast %union.anon* %1851 to i64*
  %1852 = load i32, i32* %EAX.i589
  %1853 = zext i32 %1852 to i64
  %1854 = load i64, i64* %RCX.i590
  %1855 = add i64 %1854, 52
  %1856 = load i64, i64* %PC.i588
  %1857 = add i64 %1856, 3
  store i64 %1857, i64* %PC.i588
  %1858 = inttoptr i64 %1855 to i32*
  %1859 = load i32, i32* %1858
  %1860 = sub i32 %1852, %1859
  %1861 = icmp ult i32 %1852, %1859
  %1862 = zext i1 %1861 to i8
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1862, i8* %1863, align 1
  %1864 = and i32 %1860, 255
  %1865 = call i32 @llvm.ctpop.i32(i32 %1864)
  %1866 = trunc i32 %1865 to i8
  %1867 = and i8 %1866, 1
  %1868 = xor i8 %1867, 1
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1868, i8* %1869, align 1
  %1870 = xor i32 %1859, %1852
  %1871 = xor i32 %1870, %1860
  %1872 = lshr i32 %1871, 4
  %1873 = trunc i32 %1872 to i8
  %1874 = and i8 %1873, 1
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1874, i8* %1875, align 1
  %1876 = icmp eq i32 %1860, 0
  %1877 = zext i1 %1876 to i8
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1877, i8* %1878, align 1
  %1879 = lshr i32 %1860, 31
  %1880 = trunc i32 %1879 to i8
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1880, i8* %1881, align 1
  %1882 = lshr i32 %1852, 31
  %1883 = lshr i32 %1859, 31
  %1884 = xor i32 %1883, %1882
  %1885 = xor i32 %1879, %1882
  %1886 = add i32 %1885, %1884
  %1887 = icmp eq i32 %1886, 2
  %1888 = zext i1 %1887 to i8
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1888, i8* %1889, align 1
  store %struct.Memory* %loadMem_4205f9, %struct.Memory** %MEMORY
  %loadMem_4205fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 33
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %1892 to i64*
  %1893 = load i64, i64* %PC.i587
  %1894 = add i64 %1893, 66
  %1895 = load i64, i64* %PC.i587
  %1896 = add i64 %1895, 6
  %1897 = load i64, i64* %PC.i587
  %1898 = add i64 %1897, 6
  store i64 %1898, i64* %PC.i587
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1900 = load i8, i8* %1899, align 1
  %1901 = icmp ne i8 %1900, 0
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1903 = load i8, i8* %1902, align 1
  %1904 = icmp ne i8 %1903, 0
  %1905 = xor i1 %1901, %1904
  %1906 = xor i1 %1905, true
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %BRANCH_TAKEN, align 1
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1909 = select i1 %1905, i64 %1896, i64 %1894
  store i64 %1909, i64* %1908, align 8
  store %struct.Memory* %loadMem_4205fc, %struct.Memory** %MEMORY
  %loadBr_4205fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4205fc = icmp eq i8 %loadBr_4205fc, 1
  br i1 %cmpBr_4205fc, label %block_.L_42063e, label %block_420602

block_420602:                                     ; preds = %block_.L_4205e0
  %loadMem_420602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 33
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %1912 to i64*
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 1
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %RAX.i585 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 15
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %1918 to i64*
  %1919 = load i64, i64* %RBP.i586
  %1920 = sub i64 %1919, 7412
  %1921 = load i64, i64* %PC.i584
  %1922 = add i64 %1921, 6
  store i64 %1922, i64* %PC.i584
  %1923 = inttoptr i64 %1920 to i32*
  %1924 = load i32, i32* %1923
  %1925 = zext i32 %1924 to i64
  store i64 %1925, i64* %RAX.i585, align 8
  store %struct.Memory* %loadMem_420602, %struct.Memory** %MEMORY
  %loadMem_420608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 33
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %1928 to i64*
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 5
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %RCX.i583 = bitcast %union.anon* %1931 to i64*
  %1932 = load i64, i64* %PC.i582
  %1933 = add i64 %1932, 8
  store i64 %1933, i64* %PC.i582
  %1934 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %1934, i64* %RCX.i583, align 8
  store %struct.Memory* %loadMem_420608, %struct.Memory** %MEMORY
  %loadMem_420610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 33
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 7
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %RDX.i580 = bitcast %union.anon* %1940 to i64*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 15
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %1943 to i64*
  %1944 = load i64, i64* %RBP.i581
  %1945 = sub i64 %1944, 16
  %1946 = load i64, i64* %PC.i579
  %1947 = add i64 %1946, 4
  store i64 %1947, i64* %PC.i579
  %1948 = inttoptr i64 %1945 to i32*
  %1949 = load i32, i32* %1948
  %1950 = sext i32 %1949 to i64
  store i64 %1950, i64* %RDX.i580, align 8
  store %struct.Memory* %loadMem_420610, %struct.Memory** %MEMORY
  %loadMem_420614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 33
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %1953 to i64*
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 7
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %RDX.i578 = bitcast %union.anon* %1956 to i64*
  %1957 = load i64, i64* %RDX.i578
  %1958 = load i64, i64* %PC.i577
  %1959 = add i64 %1958, 4
  store i64 %1959, i64* %PC.i577
  %1960 = sext i64 %1957 to i128
  %1961 = and i128 %1960, -18446744073709551616
  %1962 = zext i64 %1957 to i128
  %1963 = or i128 %1961, %1962
  %1964 = mul i128 104, %1963
  %1965 = trunc i128 %1964 to i64
  store i64 %1965, i64* %RDX.i578, align 8
  %1966 = sext i64 %1965 to i128
  %1967 = icmp ne i128 %1966, %1964
  %1968 = zext i1 %1967 to i8
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1968, i8* %1969, align 1
  %1970 = trunc i128 %1964 to i32
  %1971 = and i32 %1970, 255
  %1972 = call i32 @llvm.ctpop.i32(i32 %1971)
  %1973 = trunc i32 %1972 to i8
  %1974 = and i8 %1973, 1
  %1975 = xor i8 %1974, 1
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1975, i8* %1976, align 1
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1977, align 1
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1978, align 1
  %1979 = lshr i64 %1965, 63
  %1980 = trunc i64 %1979 to i8
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1980, i8* %1981, align 1
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1968, i8* %1982, align 1
  store %struct.Memory* %loadMem_420614, %struct.Memory** %MEMORY
  %loadMem_420618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 33
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %1985 to i64*
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 5
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %RCX.i575 = bitcast %union.anon* %1988 to i64*
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 7
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %RDX.i576 = bitcast %union.anon* %1991 to i64*
  %1992 = load i64, i64* %RCX.i575
  %1993 = load i64, i64* %RDX.i576
  %1994 = load i64, i64* %PC.i574
  %1995 = add i64 %1994, 3
  store i64 %1995, i64* %PC.i574
  %1996 = add i64 %1993, %1992
  store i64 %1996, i64* %RCX.i575, align 8
  %1997 = icmp ult i64 %1996, %1992
  %1998 = icmp ult i64 %1996, %1993
  %1999 = or i1 %1997, %1998
  %2000 = zext i1 %1999 to i8
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2000, i8* %2001, align 1
  %2002 = trunc i64 %1996 to i32
  %2003 = and i32 %2002, 255
  %2004 = call i32 @llvm.ctpop.i32(i32 %2003)
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  %2007 = xor i8 %2006, 1
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2007, i8* %2008, align 1
  %2009 = xor i64 %1993, %1992
  %2010 = xor i64 %2009, %1996
  %2011 = lshr i64 %2010, 4
  %2012 = trunc i64 %2011 to i8
  %2013 = and i8 %2012, 1
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2013, i8* %2014, align 1
  %2015 = icmp eq i64 %1996, 0
  %2016 = zext i1 %2015 to i8
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2016, i8* %2017, align 1
  %2018 = lshr i64 %1996, 63
  %2019 = trunc i64 %2018 to i8
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2019, i8* %2020, align 1
  %2021 = lshr i64 %1992, 63
  %2022 = lshr i64 %1993, 63
  %2023 = xor i64 %2018, %2021
  %2024 = xor i64 %2018, %2022
  %2025 = add i64 %2023, %2024
  %2026 = icmp eq i64 %2025, 2
  %2027 = zext i1 %2026 to i8
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2027, i8* %2028, align 1
  store %struct.Memory* %loadMem_420618, %struct.Memory** %MEMORY
  %loadMem_42061b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 33
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 1
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %EAX.i572 = bitcast %union.anon* %2034 to i32*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 5
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %RCX.i573 = bitcast %union.anon* %2037 to i64*
  %2038 = load i64, i64* %RCX.i573
  %2039 = add i64 %2038, 52
  %2040 = load i32, i32* %EAX.i572
  %2041 = zext i32 %2040 to i64
  %2042 = load i64, i64* %PC.i571
  %2043 = add i64 %2042, 3
  store i64 %2043, i64* %PC.i571
  %2044 = inttoptr i64 %2039 to i32*
  store i32 %2040, i32* %2044
  store %struct.Memory* %loadMem_42061b, %struct.Memory** %MEMORY
  %loadMem_42061e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 33
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %2047 to i64*
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 15
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %2050 to i64*
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2052 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2051, i64 0, i64 0
  %YMM0.i570 = bitcast %union.VectorReg* %2052 to %"class.std::bitset"*
  %2053 = bitcast %"class.std::bitset"* %YMM0.i570 to i8*
  %2054 = load i64, i64* %RBP.i569
  %2055 = sub i64 %2054, 7416
  %2056 = load i64, i64* %PC.i568
  %2057 = add i64 %2056, 8
  store i64 %2057, i64* %PC.i568
  %2058 = inttoptr i64 %2055 to float*
  %2059 = load float, float* %2058
  %2060 = bitcast i8* %2053 to float*
  store float %2059, float* %2060, align 1
  %2061 = getelementptr inbounds i8, i8* %2053, i64 4
  %2062 = bitcast i8* %2061 to float*
  store float 0.000000e+00, float* %2062, align 1
  %2063 = getelementptr inbounds i8, i8* %2053, i64 8
  %2064 = bitcast i8* %2063 to float*
  store float 0.000000e+00, float* %2064, align 1
  %2065 = getelementptr inbounds i8, i8* %2053, i64 12
  %2066 = bitcast i8* %2065 to float*
  store float 0.000000e+00, float* %2066, align 1
  store %struct.Memory* %loadMem_42061e, %struct.Memory** %MEMORY
  %loadMem_420626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 33
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %2069 to i64*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 5
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %RCX.i567 = bitcast %union.anon* %2072 to i64*
  %2073 = load i64, i64* %PC.i566
  %2074 = add i64 %2073, 8
  store i64 %2074, i64* %PC.i566
  %2075 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %2075, i64* %RCX.i567, align 8
  store %struct.Memory* %loadMem_420626, %struct.Memory** %MEMORY
  %loadMem_42062e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2077 = getelementptr inbounds %struct.GPR, %struct.GPR* %2076, i32 0, i32 33
  %2078 = getelementptr inbounds %struct.Reg, %struct.Reg* %2077, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %2078 to i64*
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 7
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %RDX.i564 = bitcast %union.anon* %2081 to i64*
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 15
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %2084 to i64*
  %2085 = load i64, i64* %RBP.i565
  %2086 = sub i64 %2085, 16
  %2087 = load i64, i64* %PC.i563
  %2088 = add i64 %2087, 4
  store i64 %2088, i64* %PC.i563
  %2089 = inttoptr i64 %2086 to i32*
  %2090 = load i32, i32* %2089
  %2091 = sext i32 %2090 to i64
  store i64 %2091, i64* %RDX.i564, align 8
  store %struct.Memory* %loadMem_42062e, %struct.Memory** %MEMORY
  %loadMem_420632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 33
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %2094 to i64*
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 7
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %RDX.i562 = bitcast %union.anon* %2097 to i64*
  %2098 = load i64, i64* %RDX.i562
  %2099 = load i64, i64* %PC.i561
  %2100 = add i64 %2099, 4
  store i64 %2100, i64* %PC.i561
  %2101 = sext i64 %2098 to i128
  %2102 = and i128 %2101, -18446744073709551616
  %2103 = zext i64 %2098 to i128
  %2104 = or i128 %2102, %2103
  %2105 = mul i128 104, %2104
  %2106 = trunc i128 %2105 to i64
  store i64 %2106, i64* %RDX.i562, align 8
  %2107 = sext i64 %2106 to i128
  %2108 = icmp ne i128 %2107, %2105
  %2109 = zext i1 %2108 to i8
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2109, i8* %2110, align 1
  %2111 = trunc i128 %2105 to i32
  %2112 = and i32 %2111, 255
  %2113 = call i32 @llvm.ctpop.i32(i32 %2112)
  %2114 = trunc i32 %2113 to i8
  %2115 = and i8 %2114, 1
  %2116 = xor i8 %2115, 1
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2116, i8* %2117, align 1
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2118, align 1
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2119, align 1
  %2120 = lshr i64 %2106, 63
  %2121 = trunc i64 %2120 to i8
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2121, i8* %2122, align 1
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2109, i8* %2123, align 1
  store %struct.Memory* %loadMem_420632, %struct.Memory** %MEMORY
  %loadMem_420636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 5
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 7
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RDX.i560 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %RCX.i559
  %2134 = load i64, i64* %RDX.i560
  %2135 = load i64, i64* %PC.i558
  %2136 = add i64 %2135, 3
  store i64 %2136, i64* %PC.i558
  %2137 = add i64 %2134, %2133
  store i64 %2137, i64* %RCX.i559, align 8
  %2138 = icmp ult i64 %2137, %2133
  %2139 = icmp ult i64 %2137, %2134
  %2140 = or i1 %2138, %2139
  %2141 = zext i1 %2140 to i8
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2141, i8* %2142, align 1
  %2143 = trunc i64 %2137 to i32
  %2144 = and i32 %2143, 255
  %2145 = call i32 @llvm.ctpop.i32(i32 %2144)
  %2146 = trunc i32 %2145 to i8
  %2147 = and i8 %2146, 1
  %2148 = xor i8 %2147, 1
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2148, i8* %2149, align 1
  %2150 = xor i64 %2134, %2133
  %2151 = xor i64 %2150, %2137
  %2152 = lshr i64 %2151, 4
  %2153 = trunc i64 %2152 to i8
  %2154 = and i8 %2153, 1
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2154, i8* %2155, align 1
  %2156 = icmp eq i64 %2137, 0
  %2157 = zext i1 %2156 to i8
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2157, i8* %2158, align 1
  %2159 = lshr i64 %2137, 63
  %2160 = trunc i64 %2159 to i8
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2160, i8* %2161, align 1
  %2162 = lshr i64 %2133, 63
  %2163 = lshr i64 %2134, 63
  %2164 = xor i64 %2159, %2162
  %2165 = xor i64 %2159, %2163
  %2166 = add i64 %2164, %2165
  %2167 = icmp eq i64 %2166, 2
  %2168 = zext i1 %2167 to i8
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2168, i8* %2169, align 1
  store %struct.Memory* %loadMem_420636, %struct.Memory** %MEMORY
  %loadMem_420639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 33
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %2172 to i64*
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 5
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %RCX.i556 = bitcast %union.anon* %2175 to i64*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2177 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2176, i64 0, i64 0
  %XMM0.i557 = bitcast %union.VectorReg* %2177 to %union.vec128_t*
  %2178 = load i64, i64* %RCX.i556
  %2179 = add i64 %2178, 56
  %2180 = bitcast %union.vec128_t* %XMM0.i557 to i8*
  %2181 = load i64, i64* %PC.i555
  %2182 = add i64 %2181, 5
  store i64 %2182, i64* %PC.i555
  %2183 = bitcast i8* %2180 to <2 x float>*
  %2184 = load <2 x float>, <2 x float>* %2183, align 1
  %2185 = extractelement <2 x float> %2184, i32 0
  %2186 = inttoptr i64 %2179 to float*
  store float %2185, float* %2186
  store %struct.Memory* %loadMem_420639, %struct.Memory** %MEMORY
  br label %block_.L_42063e

block_.L_42063e:                                  ; preds = %block_420602, %block_.L_4205e0
  %loadMem_42063e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 33
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %2189 to i64*
  %2190 = load i64, i64* %PC.i554
  %2191 = add i64 %2190, 5
  %2192 = load i64, i64* %PC.i554
  %2193 = add i64 %2192, 5
  store i64 %2193, i64* %PC.i554
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2191, i64* %2194, align 8
  store %struct.Memory* %loadMem_42063e, %struct.Memory** %MEMORY
  br label %block_.L_420643

block_.L_420643:                                  ; preds = %block_.L_42063e
  %loadMem_420643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 33
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %2197 to i64*
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 1
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %RAX.i552 = bitcast %union.anon* %2200 to i64*
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 15
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %2203 to i64*
  %2204 = load i64, i64* %RBP.i553
  %2205 = sub i64 %2204, 16
  %2206 = load i64, i64* %PC.i551
  %2207 = add i64 %2206, 3
  store i64 %2207, i64* %PC.i551
  %2208 = inttoptr i64 %2205 to i32*
  %2209 = load i32, i32* %2208
  %2210 = zext i32 %2209 to i64
  store i64 %2210, i64* %RAX.i552, align 8
  store %struct.Memory* %loadMem_420643, %struct.Memory** %MEMORY
  %loadMem_420646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 33
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %2213 to i64*
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2215 = getelementptr inbounds %struct.GPR, %struct.GPR* %2214, i32 0, i32 1
  %2216 = getelementptr inbounds %struct.Reg, %struct.Reg* %2215, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %2216 to i64*
  %2217 = load i64, i64* %RAX.i550
  %2218 = load i64, i64* %PC.i549
  %2219 = add i64 %2218, 3
  store i64 %2219, i64* %PC.i549
  %2220 = trunc i64 %2217 to i32
  %2221 = add i32 1, %2220
  %2222 = zext i32 %2221 to i64
  store i64 %2222, i64* %RAX.i550, align 8
  %2223 = icmp ult i32 %2221, %2220
  %2224 = icmp ult i32 %2221, 1
  %2225 = or i1 %2223, %2224
  %2226 = zext i1 %2225 to i8
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2226, i8* %2227, align 1
  %2228 = and i32 %2221, 255
  %2229 = call i32 @llvm.ctpop.i32(i32 %2228)
  %2230 = trunc i32 %2229 to i8
  %2231 = and i8 %2230, 1
  %2232 = xor i8 %2231, 1
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2232, i8* %2233, align 1
  %2234 = xor i64 1, %2217
  %2235 = trunc i64 %2234 to i32
  %2236 = xor i32 %2235, %2221
  %2237 = lshr i32 %2236, 4
  %2238 = trunc i32 %2237 to i8
  %2239 = and i8 %2238, 1
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2239, i8* %2240, align 1
  %2241 = icmp eq i32 %2221, 0
  %2242 = zext i1 %2241 to i8
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2242, i8* %2243, align 1
  %2244 = lshr i32 %2221, 31
  %2245 = trunc i32 %2244 to i8
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2245, i8* %2246, align 1
  %2247 = lshr i32 %2220, 31
  %2248 = xor i32 %2244, %2247
  %2249 = add i32 %2248, %2244
  %2250 = icmp eq i32 %2249, 2
  %2251 = zext i1 %2250 to i8
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2251, i8* %2252, align 1
  store %struct.Memory* %loadMem_420646, %struct.Memory** %MEMORY
  %loadMem_420649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 33
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 1
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %EAX.i547 = bitcast %union.anon* %2258 to i32*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 15
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %2261 to i64*
  %2262 = load i64, i64* %RBP.i548
  %2263 = sub i64 %2262, 16
  %2264 = load i32, i32* %EAX.i547
  %2265 = zext i32 %2264 to i64
  %2266 = load i64, i64* %PC.i546
  %2267 = add i64 %2266, 3
  store i64 %2267, i64* %PC.i546
  %2268 = inttoptr i64 %2263 to i32*
  store i32 %2264, i32* %2268
  store %struct.Memory* %loadMem_420649, %struct.Memory** %MEMORY
  %loadMem_42064c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 33
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %2271 to i64*
  %2272 = load i64, i64* %PC.i545
  %2273 = add i64 %2272, -451
  %2274 = load i64, i64* %PC.i545
  %2275 = add i64 %2274, 5
  store i64 %2275, i64* %PC.i545
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2273, i64* %2276, align 8
  store %struct.Memory* %loadMem_42064c, %struct.Memory** %MEMORY
  br label %block_.L_420489

block_.L_420651:                                  ; preds = %block_.L_420489
  %loadMem_420651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 33
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %2279 to i64*
  %2280 = load i64, i64* %PC.i544
  %2281 = add i64 %2280, 1211
  %2282 = load i64, i64* %PC.i544
  %2283 = add i64 %2282, 5
  store i64 %2283, i64* %PC.i544
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2281, i64* %2284, align 8
  store %struct.Memory* %loadMem_420651, %struct.Memory** %MEMORY
  br label %block_.L_420b0c

block_.L_420656:                                  ; preds = %entry
  %loadMem_420656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 33
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %2287 to i64*
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 7
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %RDX.i542 = bitcast %union.anon* %2290 to i64*
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 15
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %2293 to i64*
  %2294 = load i64, i64* %RBP.i543
  %2295 = sub i64 %2294, 10624
  %2296 = load i64, i64* %PC.i541
  %2297 = add i64 %2296, 7
  store i64 %2297, i64* %PC.i541
  store i64 %2295, i64* %RDX.i542, align 8
  store %struct.Memory* %loadMem_420656, %struct.Memory** %MEMORY
  %loadMem_42065d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 33
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %2300 to i64*
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 9
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %RSI.i539 = bitcast %union.anon* %2303 to i64*
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 15
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %2306 to i64*
  %2307 = load i64, i64* %RBP.i540
  %2308 = sub i64 %2307, 9024
  %2309 = load i64, i64* %PC.i538
  %2310 = add i64 %2309, 7
  store i64 %2310, i64* %PC.i538
  store i64 %2308, i64* %RSI.i539, align 8
  store %struct.Memory* %loadMem_42065d, %struct.Memory** %MEMORY
  %loadMem_420664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 33
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %2313 to i64*
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 11
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %2316 to i64*
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 15
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %RBP.i537 = bitcast %union.anon* %2319 to i64*
  %2320 = load i64, i64* %RBP.i537
  %2321 = sub i64 %2320, 8
  %2322 = load i64, i64* %PC.i536
  %2323 = add i64 %2322, 4
  store i64 %2323, i64* %PC.i536
  %2324 = inttoptr i64 %2321 to i64*
  %2325 = load i64, i64* %2324
  store i64 %2325, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_420664, %struct.Memory** %MEMORY
  %loadMem1_420668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 33
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %2328 to i64*
  %2329 = load i64, i64* %PC.i535
  %2330 = add i64 %2329, 52152
  %2331 = load i64, i64* %PC.i535
  %2332 = add i64 %2331, 5
  %2333 = load i64, i64* %PC.i535
  %2334 = add i64 %2333, 5
  store i64 %2334, i64* %PC.i535
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2336 = load i64, i64* %2335, align 8
  %2337 = add i64 %2336, -8
  %2338 = inttoptr i64 %2337 to i64*
  store i64 %2332, i64* %2338
  store i64 %2337, i64* %2335, align 8
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2330, i64* %2339, align 8
  store %struct.Memory* %loadMem1_420668, %struct.Memory** %MEMORY
  %loadMem2_420668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420668 = load i64, i64* %3
  %call2_420668 = call %struct.Memory* @sub_42d220.influence_get_moyo_data(%struct.State* %0, i64 %loadPC_420668, %struct.Memory* %loadMem2_420668)
  store %struct.Memory* %call2_420668, %struct.Memory** %MEMORY
  %loadMem_42066d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 33
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 15
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %RBP.i534 = bitcast %union.anon* %2345 to i64*
  %2346 = load i64, i64* %RBP.i534
  %2347 = sub i64 %2346, 12
  %2348 = load i64, i64* %PC.i533
  %2349 = add i64 %2348, 7
  store i64 %2349, i64* %PC.i533
  %2350 = inttoptr i64 %2347 to i32*
  store i32 21, i32* %2350
  store %struct.Memory* %loadMem_42066d, %struct.Memory** %MEMORY
  br label %block_.L_420674

block_.L_420674:                                  ; preds = %block_420681, %block_.L_420656
  %loadMem_420674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 33
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %2353 to i64*
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 15
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %2356 to i64*
  %2357 = load i64, i64* %RBP.i532
  %2358 = sub i64 %2357, 12
  %2359 = load i64, i64* %PC.i531
  %2360 = add i64 %2359, 7
  store i64 %2360, i64* %PC.i531
  %2361 = inttoptr i64 %2358 to i32*
  %2362 = load i32, i32* %2361
  %2363 = sub i32 %2362, 400
  %2364 = icmp ult i32 %2362, 400
  %2365 = zext i1 %2364 to i8
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2365, i8* %2366, align 1
  %2367 = and i32 %2363, 255
  %2368 = call i32 @llvm.ctpop.i32(i32 %2367)
  %2369 = trunc i32 %2368 to i8
  %2370 = and i8 %2369, 1
  %2371 = xor i8 %2370, 1
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2371, i8* %2372, align 1
  %2373 = xor i32 %2362, 400
  %2374 = xor i32 %2373, %2363
  %2375 = lshr i32 %2374, 4
  %2376 = trunc i32 %2375 to i8
  %2377 = and i8 %2376, 1
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2377, i8* %2378, align 1
  %2379 = icmp eq i32 %2363, 0
  %2380 = zext i1 %2379 to i8
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2380, i8* %2381, align 1
  %2382 = lshr i32 %2363, 31
  %2383 = trunc i32 %2382 to i8
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2383, i8* %2384, align 1
  %2385 = lshr i32 %2362, 31
  %2386 = xor i32 %2382, %2385
  %2387 = add i32 %2386, %2385
  %2388 = icmp eq i32 %2387, 2
  %2389 = zext i1 %2388 to i8
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2389, i8* %2390, align 1
  store %struct.Memory* %loadMem_420674, %struct.Memory** %MEMORY
  %loadMem_42067b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 33
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %2393 to i64*
  %2394 = load i64, i64* %PC.i530
  %2395 = add i64 %2394, 49
  %2396 = load i64, i64* %PC.i530
  %2397 = add i64 %2396, 6
  %2398 = load i64, i64* %PC.i530
  %2399 = add i64 %2398, 6
  store i64 %2399, i64* %PC.i530
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2401 = load i8, i8* %2400, align 1
  %2402 = icmp ne i8 %2401, 0
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2404 = load i8, i8* %2403, align 1
  %2405 = icmp ne i8 %2404, 0
  %2406 = xor i1 %2402, %2405
  %2407 = xor i1 %2406, true
  %2408 = zext i1 %2407 to i8
  store i8 %2408, i8* %BRANCH_TAKEN, align 1
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2410 = select i1 %2406, i64 %2397, i64 %2395
  store i64 %2410, i64* %2409, align 8
  store %struct.Memory* %loadMem_42067b, %struct.Memory** %MEMORY
  %loadBr_42067b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42067b = icmp eq i8 %loadBr_42067b, 1
  br i1 %cmpBr_42067b, label %block_.L_4206ac, label %block_420681

block_420681:                                     ; preds = %block_.L_420674
  %loadMem_420681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 33
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2415 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2414, i64 0, i64 0
  %YMM0.i528 = bitcast %union.VectorReg* %2415 to %"class.std::bitset"*
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2417 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2416, i64 0, i64 0
  %XMM0.i529 = bitcast %union.VectorReg* %2417 to %union.vec128_t*
  %2418 = bitcast %"class.std::bitset"* %YMM0.i528 to i8*
  %2419 = bitcast %"class.std::bitset"* %YMM0.i528 to i8*
  %2420 = bitcast %union.vec128_t* %XMM0.i529 to i8*
  %2421 = load i64, i64* %PC.i527
  %2422 = add i64 %2421, 3
  store i64 %2422, i64* %PC.i527
  %2423 = bitcast i8* %2419 to i64*
  %2424 = load i64, i64* %2423, align 1
  %2425 = getelementptr inbounds i8, i8* %2419, i64 8
  %2426 = bitcast i8* %2425 to i64*
  %2427 = load i64, i64* %2426, align 1
  %2428 = bitcast i8* %2420 to i64*
  %2429 = load i64, i64* %2428, align 1
  %2430 = getelementptr inbounds i8, i8* %2420, i64 8
  %2431 = bitcast i8* %2430 to i64*
  %2432 = load i64, i64* %2431, align 1
  %2433 = xor i64 %2429, %2424
  %2434 = xor i64 %2432, %2427
  %2435 = trunc i64 %2433 to i32
  %2436 = lshr i64 %2433, 32
  %2437 = trunc i64 %2436 to i32
  %2438 = bitcast i8* %2418 to i32*
  store i32 %2435, i32* %2438, align 1
  %2439 = getelementptr inbounds i8, i8* %2418, i64 4
  %2440 = bitcast i8* %2439 to i32*
  store i32 %2437, i32* %2440, align 1
  %2441 = trunc i64 %2434 to i32
  %2442 = getelementptr inbounds i8, i8* %2418, i64 8
  %2443 = bitcast i8* %2442 to i32*
  store i32 %2441, i32* %2443, align 1
  %2444 = lshr i64 %2434, 32
  %2445 = trunc i64 %2444 to i32
  %2446 = getelementptr inbounds i8, i8* %2418, i64 12
  %2447 = bitcast i8* %2446 to i32*
  store i32 %2445, i32* %2447, align 1
  store %struct.Memory* %loadMem_420681, %struct.Memory** %MEMORY
  %loadMem_420684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 33
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %2450 to i64*
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 1
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %2453 to i64*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 15
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %2456 to i64*
  %2457 = load i64, i64* %RBP.i526
  %2458 = sub i64 %2457, 12
  %2459 = load i64, i64* %PC.i524
  %2460 = add i64 %2459, 4
  store i64 %2460, i64* %PC.i524
  %2461 = inttoptr i64 %2458 to i32*
  %2462 = load i32, i32* %2461
  %2463 = sext i32 %2462 to i64
  store i64 %2463, i64* %RAX.i525, align 8
  store %struct.Memory* %loadMem_420684, %struct.Memory** %MEMORY
  %loadMem_420688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 33
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 1
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %2469 to i64*
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 15
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %2472 to i64*
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2474 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2473, i64 0, i64 0
  %XMM0.i523 = bitcast %union.VectorReg* %2474 to %union.vec128_t*
  %2475 = load i64, i64* %RBP.i522
  %2476 = load i64, i64* %RAX.i521
  %2477 = mul i64 %2476, 4
  %2478 = add i64 %2475, -12224
  %2479 = add i64 %2478, %2477
  %2480 = bitcast %union.vec128_t* %XMM0.i523 to i8*
  %2481 = load i64, i64* %PC.i520
  %2482 = add i64 %2481, 9
  store i64 %2482, i64* %PC.i520
  %2483 = bitcast i8* %2480 to <2 x float>*
  %2484 = load <2 x float>, <2 x float>* %2483, align 1
  %2485 = extractelement <2 x float> %2484, i32 0
  %2486 = inttoptr i64 %2479 to float*
  store float %2485, float* %2486
  store %struct.Memory* %loadMem_420688, %struct.Memory** %MEMORY
  %loadMem_420691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 1
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 15
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %2495 to i64*
  %2496 = load i64, i64* %RBP.i519
  %2497 = sub i64 %2496, 12
  %2498 = load i64, i64* %PC.i517
  %2499 = add i64 %2498, 4
  store i64 %2499, i64* %PC.i517
  %2500 = inttoptr i64 %2497 to i32*
  %2501 = load i32, i32* %2500
  %2502 = sext i32 %2501 to i64
  store i64 %2502, i64* %RAX.i518, align 8
  store %struct.Memory* %loadMem_420691, %struct.Memory** %MEMORY
  %loadMem_420695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 33
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %2505 to i64*
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 1
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %RAX.i514 = bitcast %union.anon* %2508 to i64*
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 15
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %2511 to i64*
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2513 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2512, i64 0, i64 0
  %XMM0.i516 = bitcast %union.VectorReg* %2513 to %union.vec128_t*
  %2514 = load i64, i64* %RBP.i515
  %2515 = load i64, i64* %RAX.i514
  %2516 = mul i64 %2515, 4
  %2517 = add i64 %2514, -13824
  %2518 = add i64 %2517, %2516
  %2519 = bitcast %union.vec128_t* %XMM0.i516 to i8*
  %2520 = load i64, i64* %PC.i513
  %2521 = add i64 %2520, 9
  store i64 %2521, i64* %PC.i513
  %2522 = bitcast i8* %2519 to <2 x float>*
  %2523 = load <2 x float>, <2 x float>* %2522, align 1
  %2524 = extractelement <2 x float> %2523, i32 0
  %2525 = inttoptr i64 %2518 to float*
  store float %2524, float* %2525
  store %struct.Memory* %loadMem_420695, %struct.Memory** %MEMORY
  %loadMem_42069e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 1
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 15
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %2534 to i64*
  %2535 = load i64, i64* %RBP.i512
  %2536 = sub i64 %2535, 12
  %2537 = load i64, i64* %PC.i510
  %2538 = add i64 %2537, 3
  store i64 %2538, i64* %PC.i510
  %2539 = inttoptr i64 %2536 to i32*
  %2540 = load i32, i32* %2539
  %2541 = zext i32 %2540 to i64
  store i64 %2541, i64* %RAX.i511, align 8
  store %struct.Memory* %loadMem_42069e, %struct.Memory** %MEMORY
  %loadMem_4206a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 33
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %2544 to i64*
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 1
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %2547 to i64*
  %2548 = load i64, i64* %RAX.i509
  %2549 = load i64, i64* %PC.i508
  %2550 = add i64 %2549, 3
  store i64 %2550, i64* %PC.i508
  %2551 = trunc i64 %2548 to i32
  %2552 = add i32 1, %2551
  %2553 = zext i32 %2552 to i64
  store i64 %2553, i64* %RAX.i509, align 8
  %2554 = icmp ult i32 %2552, %2551
  %2555 = icmp ult i32 %2552, 1
  %2556 = or i1 %2554, %2555
  %2557 = zext i1 %2556 to i8
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2557, i8* %2558, align 1
  %2559 = and i32 %2552, 255
  %2560 = call i32 @llvm.ctpop.i32(i32 %2559)
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  %2563 = xor i8 %2562, 1
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2563, i8* %2564, align 1
  %2565 = xor i64 1, %2548
  %2566 = trunc i64 %2565 to i32
  %2567 = xor i32 %2566, %2552
  %2568 = lshr i32 %2567, 4
  %2569 = trunc i32 %2568 to i8
  %2570 = and i8 %2569, 1
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2570, i8* %2571, align 1
  %2572 = icmp eq i32 %2552, 0
  %2573 = zext i1 %2572 to i8
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2573, i8* %2574, align 1
  %2575 = lshr i32 %2552, 31
  %2576 = trunc i32 %2575 to i8
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2576, i8* %2577, align 1
  %2578 = lshr i32 %2551, 31
  %2579 = xor i32 %2575, %2578
  %2580 = add i32 %2579, %2575
  %2581 = icmp eq i32 %2580, 2
  %2582 = zext i1 %2581 to i8
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2582, i8* %2583, align 1
  store %struct.Memory* %loadMem_4206a1, %struct.Memory** %MEMORY
  %loadMem_4206a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2585 = getelementptr inbounds %struct.GPR, %struct.GPR* %2584, i32 0, i32 33
  %2586 = getelementptr inbounds %struct.Reg, %struct.Reg* %2585, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %2586 to i64*
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2588 = getelementptr inbounds %struct.GPR, %struct.GPR* %2587, i32 0, i32 1
  %2589 = getelementptr inbounds %struct.Reg, %struct.Reg* %2588, i32 0, i32 0
  %EAX.i506 = bitcast %union.anon* %2589 to i32*
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 15
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %2592 to i64*
  %2593 = load i64, i64* %RBP.i507
  %2594 = sub i64 %2593, 12
  %2595 = load i32, i32* %EAX.i506
  %2596 = zext i32 %2595 to i64
  %2597 = load i64, i64* %PC.i505
  %2598 = add i64 %2597, 3
  store i64 %2598, i64* %PC.i505
  %2599 = inttoptr i64 %2594 to i32*
  store i32 %2595, i32* %2599
  store %struct.Memory* %loadMem_4206a4, %struct.Memory** %MEMORY
  %loadMem_4206a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2601 = getelementptr inbounds %struct.GPR, %struct.GPR* %2600, i32 0, i32 33
  %2602 = getelementptr inbounds %struct.Reg, %struct.Reg* %2601, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %2602 to i64*
  %2603 = load i64, i64* %PC.i504
  %2604 = add i64 %2603, -51
  %2605 = load i64, i64* %PC.i504
  %2606 = add i64 %2605, 5
  store i64 %2606, i64* %PC.i504
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2604, i64* %2607, align 8
  store %struct.Memory* %loadMem_4206a7, %struct.Memory** %MEMORY
  br label %block_.L_420674

block_.L_4206ac:                                  ; preds = %block_.L_420674
  %loadMem_4206ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 33
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 15
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %2613 to i64*
  %2614 = load i64, i64* %RBP.i503
  %2615 = sub i64 %2614, 12
  %2616 = load i64, i64* %PC.i502
  %2617 = add i64 %2616, 7
  store i64 %2617, i64* %PC.i502
  %2618 = inttoptr i64 %2615 to i32*
  store i32 21, i32* %2618
  store %struct.Memory* %loadMem_4206ac, %struct.Memory** %MEMORY
  br label %block_.L_4206b3

block_.L_4206b3:                                  ; preds = %block_.L_420a15, %block_.L_4206ac
  %loadMem_4206b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 33
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %2621 to i64*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 15
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %2624 to i64*
  %2625 = load i64, i64* %RBP.i501
  %2626 = sub i64 %2625, 12
  %2627 = load i64, i64* %PC.i500
  %2628 = add i64 %2627, 7
  store i64 %2628, i64* %PC.i500
  %2629 = inttoptr i64 %2626 to i32*
  %2630 = load i32, i32* %2629
  %2631 = sub i32 %2630, 400
  %2632 = icmp ult i32 %2630, 400
  %2633 = zext i1 %2632 to i8
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2633, i8* %2634, align 1
  %2635 = and i32 %2631, 255
  %2636 = call i32 @llvm.ctpop.i32(i32 %2635)
  %2637 = trunc i32 %2636 to i8
  %2638 = and i8 %2637, 1
  %2639 = xor i8 %2638, 1
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2639, i8* %2640, align 1
  %2641 = xor i32 %2630, 400
  %2642 = xor i32 %2641, %2631
  %2643 = lshr i32 %2642, 4
  %2644 = trunc i32 %2643 to i8
  %2645 = and i8 %2644, 1
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2645, i8* %2646, align 1
  %2647 = icmp eq i32 %2631, 0
  %2648 = zext i1 %2647 to i8
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2648, i8* %2649, align 1
  %2650 = lshr i32 %2631, 31
  %2651 = trunc i32 %2650 to i8
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2651, i8* %2652, align 1
  %2653 = lshr i32 %2630, 31
  %2654 = xor i32 %2650, %2653
  %2655 = add i32 %2654, %2653
  %2656 = icmp eq i32 %2655, 2
  %2657 = zext i1 %2656 to i8
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2657, i8* %2658, align 1
  store %struct.Memory* %loadMem_4206b3, %struct.Memory** %MEMORY
  %loadMem_4206ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 33
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %2661 to i64*
  %2662 = load i64, i64* %PC.i499
  %2663 = add i64 %2662, 873
  %2664 = load i64, i64* %PC.i499
  %2665 = add i64 %2664, 6
  %2666 = load i64, i64* %PC.i499
  %2667 = add i64 %2666, 6
  store i64 %2667, i64* %PC.i499
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2669 = load i8, i8* %2668, align 1
  %2670 = icmp ne i8 %2669, 0
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2672 = load i8, i8* %2671, align 1
  %2673 = icmp ne i8 %2672, 0
  %2674 = xor i1 %2670, %2673
  %2675 = xor i1 %2674, true
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %BRANCH_TAKEN, align 1
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2678 = select i1 %2674, i64 %2665, i64 %2663
  store i64 %2678, i64* %2677, align 8
  store %struct.Memory* %loadMem_4206ba, %struct.Memory** %MEMORY
  %loadBr_4206ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4206ba = icmp eq i8 %loadBr_4206ba, 1
  br i1 %cmpBr_4206ba, label %block_.L_420a23, label %block_4206c0

block_4206c0:                                     ; preds = %block_.L_4206b3
  %loadMem_4206c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 33
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %2681 to i64*
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 1
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %2684 to i64*
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 15
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %2687 to i64*
  %2688 = load i64, i64* %RBP.i498
  %2689 = sub i64 %2688, 12
  %2690 = load i64, i64* %PC.i496
  %2691 = add i64 %2690, 4
  store i64 %2691, i64* %PC.i496
  %2692 = inttoptr i64 %2689 to i32*
  %2693 = load i32, i32* %2692
  %2694 = sext i32 %2693 to i64
  store i64 %2694, i64* %RAX.i497, align 8
  store %struct.Memory* %loadMem_4206c0, %struct.Memory** %MEMORY
  %loadMem_4206c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 33
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %2697 to i64*
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 1
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %RAX.i494 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 5
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %2703 to i64*
  %2704 = load i64, i64* %RAX.i494
  %2705 = add i64 %2704, 12099168
  %2706 = load i64, i64* %PC.i493
  %2707 = add i64 %2706, 8
  store i64 %2707, i64* %PC.i493
  %2708 = inttoptr i64 %2705 to i8*
  %2709 = load i8, i8* %2708
  %2710 = zext i8 %2709 to i64
  store i64 %2710, i64* %RCX.i495, align 8
  store %struct.Memory* %loadMem_4206c4, %struct.Memory** %MEMORY
  %loadMem_4206cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 33
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %2713 to i64*
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 5
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %ECX.i492 = bitcast %union.anon* %2716 to i32*
  %2717 = load i32, i32* %ECX.i492
  %2718 = zext i32 %2717 to i64
  %2719 = load i64, i64* %PC.i491
  %2720 = add i64 %2719, 3
  store i64 %2720, i64* %PC.i491
  %2721 = sub i32 %2717, 3
  %2722 = icmp ult i32 %2717, 3
  %2723 = zext i1 %2722 to i8
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2723, i8* %2724, align 1
  %2725 = and i32 %2721, 255
  %2726 = call i32 @llvm.ctpop.i32(i32 %2725)
  %2727 = trunc i32 %2726 to i8
  %2728 = and i8 %2727, 1
  %2729 = xor i8 %2728, 1
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2729, i8* %2730, align 1
  %2731 = xor i64 3, %2718
  %2732 = trunc i64 %2731 to i32
  %2733 = xor i32 %2732, %2721
  %2734 = lshr i32 %2733, 4
  %2735 = trunc i32 %2734 to i8
  %2736 = and i8 %2735, 1
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2736, i8* %2737, align 1
  %2738 = icmp eq i32 %2721, 0
  %2739 = zext i1 %2738 to i8
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2739, i8* %2740, align 1
  %2741 = lshr i32 %2721, 31
  %2742 = trunc i32 %2741 to i8
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2742, i8* %2743, align 1
  %2744 = lshr i32 %2717, 31
  %2745 = xor i32 %2741, %2744
  %2746 = add i32 %2745, %2744
  %2747 = icmp eq i32 %2746, 2
  %2748 = zext i1 %2747 to i8
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2748, i8* %2749, align 1
  store %struct.Memory* %loadMem_4206cc, %struct.Memory** %MEMORY
  %loadMem_4206cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 33
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %2752 to i64*
  %2753 = load i64, i64* %PC.i490
  %2754 = add i64 %2753, 11
  %2755 = load i64, i64* %PC.i490
  %2756 = add i64 %2755, 6
  %2757 = load i64, i64* %PC.i490
  %2758 = add i64 %2757, 6
  store i64 %2758, i64* %PC.i490
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2760 = load i8, i8* %2759, align 1
  %2761 = icmp eq i8 %2760, 0
  %2762 = zext i1 %2761 to i8
  store i8 %2762, i8* %BRANCH_TAKEN, align 1
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2764 = select i1 %2761, i64 %2754, i64 %2756
  store i64 %2764, i64* %2763, align 8
  store %struct.Memory* %loadMem_4206cf, %struct.Memory** %MEMORY
  %loadBr_4206cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4206cf = icmp eq i8 %loadBr_4206cf, 1
  br i1 %cmpBr_4206cf, label %block_.L_4206da, label %block_4206d5

block_4206d5:                                     ; preds = %block_4206c0
  %loadMem_4206d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 33
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %2767 to i64*
  %2768 = load i64, i64* %PC.i489
  %2769 = add i64 %2768, 832
  %2770 = load i64, i64* %PC.i489
  %2771 = add i64 %2770, 5
  store i64 %2771, i64* %PC.i489
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2769, i64* %2772, align 8
  store %struct.Memory* %loadMem_4206d5, %struct.Memory** %MEMORY
  br label %block_.L_420a15

block_.L_4206da:                                  ; preds = %block_4206c0
  %loadMem_4206da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 33
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 1
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %2778 to i64*
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 15
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %2781 to i64*
  %2782 = load i64, i64* %RBP.i488
  %2783 = sub i64 %2782, 12
  %2784 = load i64, i64* %PC.i486
  %2785 = add i64 %2784, 4
  store i64 %2785, i64* %PC.i486
  %2786 = inttoptr i64 %2783 to i32*
  %2787 = load i32, i32* %2786
  %2788 = sext i32 %2787 to i64
  store i64 %2788, i64* %RAX.i487, align 8
  store %struct.Memory* %loadMem_4206da, %struct.Memory** %MEMORY
  %loadMem_4206de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 33
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 1
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %2794 to i64*
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2796 = getelementptr inbounds %struct.GPR, %struct.GPR* %2795, i32 0, i32 5
  %2797 = getelementptr inbounds %struct.Reg, %struct.Reg* %2796, i32 0, i32 0
  %RCX.i484 = bitcast %union.anon* %2797 to i64*
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 15
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %2800 to i64*
  %2801 = load i64, i64* %RBP.i485
  %2802 = load i64, i64* %RAX.i483
  %2803 = mul i64 %2802, 4
  %2804 = add i64 %2801, -9024
  %2805 = add i64 %2804, %2803
  %2806 = load i64, i64* %PC.i482
  %2807 = add i64 %2806, 7
  store i64 %2807, i64* %PC.i482
  %2808 = inttoptr i64 %2805 to i32*
  %2809 = load i32, i32* %2808
  %2810 = zext i32 %2809 to i64
  store i64 %2810, i64* %RCX.i484, align 8
  store %struct.Memory* %loadMem_4206de, %struct.Memory** %MEMORY
  %loadMem_4206e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 33
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %2813 to i64*
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 1
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %2816 to i64*
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 15
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %2819 to i64*
  %2820 = load i64, i64* %RBP.i481
  %2821 = sub i64 %2820, 12
  %2822 = load i64, i64* %PC.i479
  %2823 = add i64 %2822, 4
  store i64 %2823, i64* %PC.i479
  %2824 = inttoptr i64 %2821 to i32*
  %2825 = load i32, i32* %2824
  %2826 = sext i32 %2825 to i64
  store i64 %2826, i64* %RAX.i480, align 8
  store %struct.Memory* %loadMem_4206e5, %struct.Memory** %MEMORY
  %loadMem_4206e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 33
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %2829 to i64*
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 1
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %2832 to i64*
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 7
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %RDX.i478 = bitcast %union.anon* %2835 to i64*
  %2836 = load i64, i64* %RAX.i477
  %2837 = add i64 %2836, 12099168
  %2838 = load i64, i64* %PC.i476
  %2839 = add i64 %2838, 8
  store i64 %2839, i64* %PC.i476
  %2840 = inttoptr i64 %2837 to i8*
  %2841 = load i8, i8* %2840
  %2842 = zext i8 %2841 to i64
  store i64 %2842, i64* %RDX.i478, align 8
  store %struct.Memory* %loadMem_4206e9, %struct.Memory** %MEMORY
  %loadMem_4206f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 33
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %2845 to i64*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 5
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %ECX.i474 = bitcast %union.anon* %2848 to i32*
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 7
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %EDX.i475 = bitcast %union.anon* %2851 to i32*
  %2852 = load i32, i32* %ECX.i474
  %2853 = zext i32 %2852 to i64
  %2854 = load i32, i32* %EDX.i475
  %2855 = zext i32 %2854 to i64
  %2856 = load i64, i64* %PC.i473
  %2857 = add i64 %2856, 2
  store i64 %2857, i64* %PC.i473
  %2858 = sub i32 %2852, %2854
  %2859 = icmp ult i32 %2852, %2854
  %2860 = zext i1 %2859 to i8
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2860, i8* %2861, align 1
  %2862 = and i32 %2858, 255
  %2863 = call i32 @llvm.ctpop.i32(i32 %2862)
  %2864 = trunc i32 %2863 to i8
  %2865 = and i8 %2864, 1
  %2866 = xor i8 %2865, 1
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2866, i8* %2867, align 1
  %2868 = xor i64 %2855, %2853
  %2869 = trunc i64 %2868 to i32
  %2870 = xor i32 %2869, %2858
  %2871 = lshr i32 %2870, 4
  %2872 = trunc i32 %2871 to i8
  %2873 = and i8 %2872, 1
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2873, i8* %2874, align 1
  %2875 = icmp eq i32 %2858, 0
  %2876 = zext i1 %2875 to i8
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2876, i8* %2877, align 1
  %2878 = lshr i32 %2858, 31
  %2879 = trunc i32 %2878 to i8
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2879, i8* %2880, align 1
  %2881 = lshr i32 %2852, 31
  %2882 = lshr i32 %2854, 31
  %2883 = xor i32 %2882, %2881
  %2884 = xor i32 %2878, %2881
  %2885 = add i32 %2884, %2883
  %2886 = icmp eq i32 %2885, 2
  %2887 = zext i1 %2886 to i8
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2887, i8* %2888, align 1
  store %struct.Memory* %loadMem_4206f1, %struct.Memory** %MEMORY
  %loadMem_4206f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 33
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %2891 to i64*
  %2892 = load i64, i64* %PC.i472
  %2893 = add i64 %2892, 11
  %2894 = load i64, i64* %PC.i472
  %2895 = add i64 %2894, 6
  %2896 = load i64, i64* %PC.i472
  %2897 = add i64 %2896, 6
  store i64 %2897, i64* %PC.i472
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2899 = load i8, i8* %2898, align 1
  %2900 = icmp eq i8 %2899, 0
  %2901 = zext i1 %2900 to i8
  store i8 %2901, i8* %BRANCH_TAKEN, align 1
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2903 = select i1 %2900, i64 %2893, i64 %2895
  store i64 %2903, i64* %2902, align 8
  store %struct.Memory* %loadMem_4206f3, %struct.Memory** %MEMORY
  %loadBr_4206f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4206f3 = icmp eq i8 %loadBr_4206f3, 1
  br i1 %cmpBr_4206f3, label %block_.L_4206fe, label %block_4206f9

block_4206f9:                                     ; preds = %block_.L_4206da
  %loadMem_4206f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 33
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %2906 to i64*
  %2907 = load i64, i64* %PC.i471
  %2908 = add i64 %2907, 796
  %2909 = load i64, i64* %PC.i471
  %2910 = add i64 %2909, 5
  store i64 %2910, i64* %PC.i471
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2908, i64* %2911, align 8
  store %struct.Memory* %loadMem_4206f9, %struct.Memory** %MEMORY
  br label %block_.L_420a15

block_.L_4206fe:                                  ; preds = %block_.L_4206da
  %loadMem_4206fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 33
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %2914 to i64*
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 1
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %2917 to i64*
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 15
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %2920 to i64*
  %2921 = load i64, i64* %RBP.i470
  %2922 = sub i64 %2921, 12
  %2923 = load i64, i64* %PC.i468
  %2924 = add i64 %2923, 4
  store i64 %2924, i64* %PC.i468
  %2925 = inttoptr i64 %2922 to i32*
  %2926 = load i32, i32* %2925
  %2927 = sext i32 %2926 to i64
  store i64 %2927, i64* %RAX.i469, align 8
  store %struct.Memory* %loadMem_4206fe, %struct.Memory** %MEMORY
  %loadMem_420702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 33
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 1
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %2933 to i64*
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 15
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %2936 to i64*
  %2937 = load i64, i64* %RBP.i467
  %2938 = load i64, i64* %RAX.i466
  %2939 = mul i64 %2938, 4
  %2940 = add i64 %2937, -9024
  %2941 = add i64 %2940, %2939
  %2942 = load i64, i64* %PC.i465
  %2943 = add i64 %2942, 8
  store i64 %2943, i64* %PC.i465
  %2944 = inttoptr i64 %2941 to i32*
  %2945 = load i32, i32* %2944
  %2946 = sub i32 %2945, 1
  %2947 = icmp ult i32 %2945, 1
  %2948 = zext i1 %2947 to i8
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2948, i8* %2949, align 1
  %2950 = and i32 %2946, 255
  %2951 = call i32 @llvm.ctpop.i32(i32 %2950)
  %2952 = trunc i32 %2951 to i8
  %2953 = and i8 %2952, 1
  %2954 = xor i8 %2953, 1
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2954, i8* %2955, align 1
  %2956 = xor i32 %2945, 1
  %2957 = xor i32 %2956, %2946
  %2958 = lshr i32 %2957, 4
  %2959 = trunc i32 %2958 to i8
  %2960 = and i8 %2959, 1
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2960, i8* %2961, align 1
  %2962 = icmp eq i32 %2946, 0
  %2963 = zext i1 %2962 to i8
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2963, i8* %2964, align 1
  %2965 = lshr i32 %2946, 31
  %2966 = trunc i32 %2965 to i8
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2966, i8* %2967, align 1
  %2968 = lshr i32 %2945, 31
  %2969 = xor i32 %2965, %2968
  %2970 = add i32 %2969, %2968
  %2971 = icmp eq i32 %2970, 2
  %2972 = zext i1 %2971 to i8
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2972, i8* %2973, align 1
  store %struct.Memory* %loadMem_420702, %struct.Memory** %MEMORY
  %loadMem_42070a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 33
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %2976 to i64*
  %2977 = load i64, i64* %PC.i464
  %2978 = add i64 %2977, 381
  %2979 = load i64, i64* %PC.i464
  %2980 = add i64 %2979, 6
  %2981 = load i64, i64* %PC.i464
  %2982 = add i64 %2981, 6
  store i64 %2982, i64* %PC.i464
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2984 = load i8, i8* %2983, align 1
  %2985 = icmp eq i8 %2984, 0
  %2986 = zext i1 %2985 to i8
  store i8 %2986, i8* %BRANCH_TAKEN, align 1
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2988 = select i1 %2985, i64 %2978, i64 %2980
  store i64 %2988, i64* %2987, align 8
  store %struct.Memory* %loadMem_42070a, %struct.Memory** %MEMORY
  %loadBr_42070a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42070a = icmp eq i8 %loadBr_42070a, 1
  br i1 %cmpBr_42070a, label %block_.L_420887, label %block_420710

block_420710:                                     ; preds = %block_.L_4206fe
  %loadMem_420710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 33
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 15
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %2994 to i64*
  %2995 = load i64, i64* %RBP.i463
  %2996 = sub i64 %2995, 7424
  %2997 = load i64, i64* %PC.i462
  %2998 = add i64 %2997, 10
  store i64 %2998, i64* %PC.i462
  %2999 = inttoptr i64 %2996 to i32*
  store i32 0, i32* %2999
  store %struct.Memory* %loadMem_420710, %struct.Memory** %MEMORY
  br label %block_.L_42071a

block_.L_42071a:                                  ; preds = %block_.L_420839, %block_420710
  %loadMem_42071a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 33
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %3002 to i64*
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 1
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %3005 to i64*
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 15
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %3008 to i64*
  %3009 = load i64, i64* %RBP.i461
  %3010 = sub i64 %3009, 7424
  %3011 = load i64, i64* %PC.i459
  %3012 = add i64 %3011, 6
  store i64 %3012, i64* %PC.i459
  %3013 = inttoptr i64 %3010 to i32*
  %3014 = load i32, i32* %3013
  %3015 = zext i32 %3014 to i64
  store i64 %3015, i64* %RAX.i460, align 8
  store %struct.Memory* %loadMem_42071a, %struct.Memory** %MEMORY
  %loadMem_420720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 33
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %3018 to i64*
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 5
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %RCX.i457 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 15
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %3024 to i64*
  %3025 = load i64, i64* %RBP.i458
  %3026 = sub i64 %3025, 12
  %3027 = load i64, i64* %PC.i456
  %3028 = add i64 %3027, 4
  store i64 %3028, i64* %PC.i456
  %3029 = inttoptr i64 %3026 to i32*
  %3030 = load i32, i32* %3029
  %3031 = sext i32 %3030 to i64
  store i64 %3031, i64* %RCX.i457, align 8
  store %struct.Memory* %loadMem_420720, %struct.Memory** %MEMORY
  %loadMem_420724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 33
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %3034 to i64*
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 1
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %EAX.i454 = bitcast %union.anon* %3037 to i32*
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 5
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %RCX.i455 = bitcast %union.anon* %3040 to i64*
  %3041 = load i32, i32* %EAX.i454
  %3042 = zext i32 %3041 to i64
  %3043 = load i64, i64* %RCX.i455
  %3044 = mul i64 %3043, 4
  %3045 = add i64 %3044, 11559104
  %3046 = load i64, i64* %PC.i453
  %3047 = add i64 %3046, 7
  store i64 %3047, i64* %PC.i453
  %3048 = inttoptr i64 %3045 to i32*
  %3049 = load i32, i32* %3048
  %3050 = sub i32 %3041, %3049
  %3051 = icmp ult i32 %3041, %3049
  %3052 = zext i1 %3051 to i8
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3052, i8* %3053, align 1
  %3054 = and i32 %3050, 255
  %3055 = call i32 @llvm.ctpop.i32(i32 %3054)
  %3056 = trunc i32 %3055 to i8
  %3057 = and i8 %3056, 1
  %3058 = xor i8 %3057, 1
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3058, i8* %3059, align 1
  %3060 = xor i32 %3049, %3041
  %3061 = xor i32 %3060, %3050
  %3062 = lshr i32 %3061, 4
  %3063 = trunc i32 %3062 to i8
  %3064 = and i8 %3063, 1
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3064, i8* %3065, align 1
  %3066 = icmp eq i32 %3050, 0
  %3067 = zext i1 %3066 to i8
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3067, i8* %3068, align 1
  %3069 = lshr i32 %3050, 31
  %3070 = trunc i32 %3069 to i8
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3070, i8* %3071, align 1
  %3072 = lshr i32 %3041, 31
  %3073 = lshr i32 %3049, 31
  %3074 = xor i32 %3073, %3072
  %3075 = xor i32 %3069, %3072
  %3076 = add i32 %3075, %3074
  %3077 = icmp eq i32 %3076, 2
  %3078 = zext i1 %3077 to i8
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3078, i8* %3079, align 1
  store %struct.Memory* %loadMem_420724, %struct.Memory** %MEMORY
  %loadMem_42072b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 33
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %3082 to i64*
  %3083 = load i64, i64* %PC.i452
  %3084 = add i64 %3083, 343
  %3085 = load i64, i64* %PC.i452
  %3086 = add i64 %3085, 6
  %3087 = load i64, i64* %PC.i452
  %3088 = add i64 %3087, 6
  store i64 %3088, i64* %PC.i452
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3090 = load i8, i8* %3089, align 1
  %3091 = icmp ne i8 %3090, 0
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3093 = load i8, i8* %3092, align 1
  %3094 = icmp ne i8 %3093, 0
  %3095 = xor i1 %3091, %3094
  %3096 = xor i1 %3095, true
  %3097 = zext i1 %3096 to i8
  store i8 %3097, i8* %BRANCH_TAKEN, align 1
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3099 = select i1 %3095, i64 %3086, i64 %3084
  store i64 %3099, i64* %3098, align 8
  store %struct.Memory* %loadMem_42072b, %struct.Memory** %MEMORY
  %loadBr_42072b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42072b = icmp eq i8 %loadBr_42072b, 1
  br i1 %cmpBr_42072b, label %block_.L_420882, label %block_420731

block_420731:                                     ; preds = %block_.L_42071a
  %loadMem_420731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 33
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %3102 to i64*
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 1
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %RAX.i451 = bitcast %union.anon* %3105 to i64*
  %3106 = load i64, i64* %PC.i450
  %3107 = add i64 %3106, 10
  store i64 %3107, i64* %PC.i450
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i451, align 8
  store %struct.Memory* %loadMem_420731, %struct.Memory** %MEMORY
  %loadMem_42073b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3109 = getelementptr inbounds %struct.GPR, %struct.GPR* %3108, i32 0, i32 33
  %3110 = getelementptr inbounds %struct.Reg, %struct.Reg* %3109, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %3110 to i64*
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3112 = getelementptr inbounds %struct.GPR, %struct.GPR* %3111, i32 0, i32 5
  %3113 = getelementptr inbounds %struct.Reg, %struct.Reg* %3112, i32 0, i32 0
  %RCX.i449 = bitcast %union.anon* %3113 to i64*
  %3114 = load i64, i64* %PC.i448
  %3115 = add i64 %3114, 10
  store i64 %3115, i64* %PC.i448
  store i64 ptrtoint (%G__0xb068b0_type* @G__0xb068b0 to i64), i64* %RCX.i449, align 8
  store %struct.Memory* %loadMem_42073b, %struct.Memory** %MEMORY
  %loadMem_420745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 33
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %3118 to i64*
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 7
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %RDX.i446 = bitcast %union.anon* %3121 to i64*
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 15
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %3124 to i64*
  %3125 = load i64, i64* %RBP.i447
  %3126 = sub i64 %3125, 12
  %3127 = load i64, i64* %PC.i445
  %3128 = add i64 %3127, 4
  store i64 %3128, i64* %PC.i445
  %3129 = inttoptr i64 %3126 to i32*
  %3130 = load i32, i32* %3129
  %3131 = sext i32 %3130 to i64
  store i64 %3131, i64* %RDX.i446, align 8
  store %struct.Memory* %loadMem_420745, %struct.Memory** %MEMORY
  %loadMem_420749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 33
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %3134 to i64*
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 7
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %RDX.i444 = bitcast %union.anon* %3137 to i64*
  %3138 = load i64, i64* %RDX.i444
  %3139 = load i64, i64* %PC.i443
  %3140 = add i64 %3139, 4
  store i64 %3140, i64* %PC.i443
  %3141 = shl i64 %3138, 3
  %3142 = icmp slt i64 %3141, 0
  %3143 = shl i64 %3141, 1
  store i64 %3143, i64* %RDX.i444, align 8
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3145 = zext i1 %3142 to i8
  store i8 %3145, i8* %3144, align 1
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3147 = trunc i64 %3143 to i32
  %3148 = and i32 %3147, 254
  %3149 = call i32 @llvm.ctpop.i32(i32 %3148)
  %3150 = trunc i32 %3149 to i8
  %3151 = and i8 %3150, 1
  %3152 = xor i8 %3151, 1
  store i8 %3152, i8* %3146, align 1
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3153, align 1
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3155 = icmp eq i64 %3143, 0
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %3154, align 1
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3158 = lshr i64 %3143, 63
  %3159 = trunc i64 %3158 to i8
  store i8 %3159, i8* %3157, align 1
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3160, align 1
  store %struct.Memory* %loadMem_420749, %struct.Memory** %MEMORY
  %loadMem_42074d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 33
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %3163 to i64*
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 5
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %3166 to i64*
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 7
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %RDX.i442 = bitcast %union.anon* %3169 to i64*
  %3170 = load i64, i64* %RCX.i441
  %3171 = load i64, i64* %RDX.i442
  %3172 = load i64, i64* %PC.i440
  %3173 = add i64 %3172, 3
  store i64 %3173, i64* %PC.i440
  %3174 = add i64 %3171, %3170
  store i64 %3174, i64* %RCX.i441, align 8
  %3175 = icmp ult i64 %3174, %3170
  %3176 = icmp ult i64 %3174, %3171
  %3177 = or i1 %3175, %3176
  %3178 = zext i1 %3177 to i8
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3178, i8* %3179, align 1
  %3180 = trunc i64 %3174 to i32
  %3181 = and i32 %3180, 255
  %3182 = call i32 @llvm.ctpop.i32(i32 %3181)
  %3183 = trunc i32 %3182 to i8
  %3184 = and i8 %3183, 1
  %3185 = xor i8 %3184, 1
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3185, i8* %3186, align 1
  %3187 = xor i64 %3171, %3170
  %3188 = xor i64 %3187, %3174
  %3189 = lshr i64 %3188, 4
  %3190 = trunc i64 %3189 to i8
  %3191 = and i8 %3190, 1
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3191, i8* %3192, align 1
  %3193 = icmp eq i64 %3174, 0
  %3194 = zext i1 %3193 to i8
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3194, i8* %3195, align 1
  %3196 = lshr i64 %3174, 63
  %3197 = trunc i64 %3196 to i8
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3197, i8* %3198, align 1
  %3199 = lshr i64 %3170, 63
  %3200 = lshr i64 %3171, 63
  %3201 = xor i64 %3196, %3199
  %3202 = xor i64 %3196, %3200
  %3203 = add i64 %3201, %3202
  %3204 = icmp eq i64 %3203, 2
  %3205 = zext i1 %3204 to i8
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3205, i8* %3206, align 1
  store %struct.Memory* %loadMem_42074d, %struct.Memory** %MEMORY
  %loadMem_420750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3208 = getelementptr inbounds %struct.GPR, %struct.GPR* %3207, i32 0, i32 33
  %3209 = getelementptr inbounds %struct.Reg, %struct.Reg* %3208, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %3209 to i64*
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 7
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %RDX.i438 = bitcast %union.anon* %3212 to i64*
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3214 = getelementptr inbounds %struct.GPR, %struct.GPR* %3213, i32 0, i32 15
  %3215 = getelementptr inbounds %struct.Reg, %struct.Reg* %3214, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %3215 to i64*
  %3216 = load i64, i64* %RBP.i439
  %3217 = sub i64 %3216, 7424
  %3218 = load i64, i64* %PC.i437
  %3219 = add i64 %3218, 7
  store i64 %3219, i64* %PC.i437
  %3220 = inttoptr i64 %3217 to i32*
  %3221 = load i32, i32* %3220
  %3222 = sext i32 %3221 to i64
  store i64 %3222, i64* %RDX.i438, align 8
  store %struct.Memory* %loadMem_420750, %struct.Memory** %MEMORY
  %loadMem_420757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 33
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %3225 to i64*
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 5
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %3228 to i64*
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 7
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %RDX.i435 = bitcast %union.anon* %3231 to i64*
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 9
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %RSI.i436 = bitcast %union.anon* %3234 to i64*
  %3235 = load i64, i64* %RCX.i434
  %3236 = load i64, i64* %RDX.i435
  %3237 = mul i64 %3236, 4
  %3238 = add i64 %3237, %3235
  %3239 = load i64, i64* %PC.i433
  %3240 = add i64 %3239, 3
  store i64 %3240, i64* %PC.i433
  %3241 = inttoptr i64 %3238 to i32*
  %3242 = load i32, i32* %3241
  %3243 = zext i32 %3242 to i64
  store i64 %3243, i64* %RSI.i436, align 8
  store %struct.Memory* %loadMem_420757, %struct.Memory** %MEMORY
  %loadMem_42075a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 33
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %3246 to i64*
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 9
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %ESI.i431 = bitcast %union.anon* %3249 to i32*
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 15
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %3252 to i64*
  %3253 = load i64, i64* %RBP.i432
  %3254 = sub i64 %3253, 13828
  %3255 = load i32, i32* %ESI.i431
  %3256 = zext i32 %3255 to i64
  %3257 = load i64, i64* %PC.i430
  %3258 = add i64 %3257, 6
  store i64 %3258, i64* %PC.i430
  %3259 = inttoptr i64 %3254 to i32*
  store i32 %3255, i32* %3259
  store %struct.Memory* %loadMem_42075a, %struct.Memory** %MEMORY
  %loadMem_420760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 33
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %3262 to i64*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 5
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %RCX.i428 = bitcast %union.anon* %3265 to i64*
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 15
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %3268 to i64*
  %3269 = load i64, i64* %RBP.i429
  %3270 = sub i64 %3269, 13828
  %3271 = load i64, i64* %PC.i427
  %3272 = add i64 %3271, 7
  store i64 %3272, i64* %PC.i427
  %3273 = inttoptr i64 %3270 to i32*
  %3274 = load i32, i32* %3273
  %3275 = sext i32 %3274 to i64
  store i64 %3275, i64* %RCX.i428, align 8
  store %struct.Memory* %loadMem_420760, %struct.Memory** %MEMORY
  %loadMem_420767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 33
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %3278 to i64*
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 5
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %RCX.i426 = bitcast %union.anon* %3281 to i64*
  %3282 = load i64, i64* %RCX.i426
  %3283 = load i64, i64* %PC.i425
  %3284 = add i64 %3283, 4
  store i64 %3284, i64* %PC.i425
  %3285 = sext i64 %3282 to i128
  %3286 = and i128 %3285, -18446744073709551616
  %3287 = zext i64 %3282 to i128
  %3288 = or i128 %3286, %3287
  %3289 = mul i128 76, %3288
  %3290 = trunc i128 %3289 to i64
  store i64 %3290, i64* %RCX.i426, align 8
  %3291 = sext i64 %3290 to i128
  %3292 = icmp ne i128 %3291, %3289
  %3293 = zext i1 %3292 to i8
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3293, i8* %3294, align 1
  %3295 = trunc i128 %3289 to i32
  %3296 = and i32 %3295, 255
  %3297 = call i32 @llvm.ctpop.i32(i32 %3296)
  %3298 = trunc i32 %3297 to i8
  %3299 = and i8 %3298, 1
  %3300 = xor i8 %3299, 1
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3300, i8* %3301, align 1
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3302, align 1
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3303, align 1
  %3304 = lshr i64 %3290, 63
  %3305 = trunc i64 %3304 to i8
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3305, i8* %3306, align 1
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3293, i8* %3307, align 1
  store %struct.Memory* %loadMem_420767, %struct.Memory** %MEMORY
  %loadMem_42076b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 33
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %3310 to i64*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 1
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %3313 to i64*
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 5
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %RCX.i424 = bitcast %union.anon* %3316 to i64*
  %3317 = load i64, i64* %RAX.i423
  %3318 = load i64, i64* %RCX.i424
  %3319 = load i64, i64* %PC.i422
  %3320 = add i64 %3319, 3
  store i64 %3320, i64* %PC.i422
  %3321 = add i64 %3318, %3317
  store i64 %3321, i64* %RAX.i423, align 8
  %3322 = icmp ult i64 %3321, %3317
  %3323 = icmp ult i64 %3321, %3318
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
  %3334 = xor i64 %3318, %3317
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
  %3346 = lshr i64 %3317, 63
  %3347 = lshr i64 %3318, 63
  %3348 = xor i64 %3343, %3346
  %3349 = xor i64 %3343, %3347
  %3350 = add i64 %3348, %3349
  %3351 = icmp eq i64 %3350, 2
  %3352 = zext i1 %3351 to i8
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3352, i8* %3353, align 1
  store %struct.Memory* %loadMem_42076b, %struct.Memory** %MEMORY
  %loadMem_42076e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 33
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %3356 to i64*
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 1
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %RAX.i420 = bitcast %union.anon* %3359 to i64*
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3361 = getelementptr inbounds %struct.GPR, %struct.GPR* %3360, i32 0, i32 9
  %3362 = getelementptr inbounds %struct.Reg, %struct.Reg* %3361, i32 0, i32 0
  %RSI.i421 = bitcast %union.anon* %3362 to i64*
  %3363 = load i64, i64* %RAX.i420
  %3364 = add i64 %3363, 8
  %3365 = load i64, i64* %PC.i419
  %3366 = add i64 %3365, 3
  store i64 %3366, i64* %PC.i419
  %3367 = inttoptr i64 %3364 to i32*
  %3368 = load i32, i32* %3367
  %3369 = zext i32 %3368 to i64
  store i64 %3369, i64* %RSI.i421, align 8
  store %struct.Memory* %loadMem_42076e, %struct.Memory** %MEMORY
  %loadMem_420771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 33
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %3372 to i64*
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 9
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %ESI.i417 = bitcast %union.anon* %3375 to i32*
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 15
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %3378 to i64*
  %3379 = load i64, i64* %RBP.i418
  %3380 = sub i64 %3379, 13832
  %3381 = load i32, i32* %ESI.i417
  %3382 = zext i32 %3381 to i64
  %3383 = load i64, i64* %PC.i416
  %3384 = add i64 %3383, 6
  store i64 %3384, i64* %PC.i416
  %3385 = inttoptr i64 %3380 to i32*
  store i32 %3381, i32* %3385
  store %struct.Memory* %loadMem_420771, %struct.Memory** %MEMORY
  %loadMem_420777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 33
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %3388 to i64*
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 1
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %3391 to i64*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 15
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %3394 to i64*
  %3395 = load i64, i64* %RBP.i415
  %3396 = sub i64 %3395, 12
  %3397 = load i64, i64* %PC.i413
  %3398 = add i64 %3397, 4
  store i64 %3398, i64* %PC.i413
  %3399 = inttoptr i64 %3396 to i32*
  %3400 = load i32, i32* %3399
  %3401 = sext i32 %3400 to i64
  store i64 %3401, i64* %RAX.i414, align 8
  store %struct.Memory* %loadMem_420777, %struct.Memory** %MEMORY
  %loadMem_42077b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 33
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %3404 to i64*
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 1
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %3407 to i64*
  %3408 = load i64, i64* %RAX.i412
  %3409 = mul i64 %3408, 4
  %3410 = add i64 %3409, 11559104
  %3411 = load i64, i64* %PC.i411
  %3412 = add i64 %3411, 8
  store i64 %3412, i64* %PC.i411
  %3413 = inttoptr i64 %3410 to i32*
  %3414 = load i32, i32* %3413
  %3415 = sub i32 %3414, 5
  %3416 = icmp ult i32 %3414, 5
  %3417 = zext i1 %3416 to i8
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3417, i8* %3418, align 1
  %3419 = and i32 %3415, 255
  %3420 = call i32 @llvm.ctpop.i32(i32 %3419)
  %3421 = trunc i32 %3420 to i8
  %3422 = and i8 %3421, 1
  %3423 = xor i8 %3422, 1
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3423, i8* %3424, align 1
  %3425 = xor i32 %3414, 5
  %3426 = xor i32 %3425, %3415
  %3427 = lshr i32 %3426, 4
  %3428 = trunc i32 %3427 to i8
  %3429 = and i8 %3428, 1
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3429, i8* %3430, align 1
  %3431 = icmp eq i32 %3415, 0
  %3432 = zext i1 %3431 to i8
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3432, i8* %3433, align 1
  %3434 = lshr i32 %3415, 31
  %3435 = trunc i32 %3434 to i8
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3435, i8* %3436, align 1
  %3437 = lshr i32 %3414, 31
  %3438 = xor i32 %3434, %3437
  %3439 = add i32 %3438, %3437
  %3440 = icmp eq i32 %3439, 2
  %3441 = zext i1 %3440 to i8
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3441, i8* %3442, align 1
  store %struct.Memory* %loadMem_42077b, %struct.Memory** %MEMORY
  %loadMem_420783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 33
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %3445 to i64*
  %3446 = load i64, i64* %PC.i410
  %3447 = add i64 %3446, 28
  %3448 = load i64, i64* %PC.i410
  %3449 = add i64 %3448, 6
  %3450 = load i64, i64* %PC.i410
  %3451 = add i64 %3450, 6
  store i64 %3451, i64* %PC.i410
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3453 = load i8, i8* %3452, align 1
  %3454 = icmp ne i8 %3453, 0
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3456 = load i8, i8* %3455, align 1
  %3457 = icmp ne i8 %3456, 0
  %3458 = xor i1 %3454, %3457
  %3459 = xor i1 %3458, true
  %3460 = zext i1 %3459 to i8
  store i8 %3460, i8* %BRANCH_TAKEN, align 1
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3462 = select i1 %3458, i64 %3449, i64 %3447
  store i64 %3462, i64* %3461, align 8
  store %struct.Memory* %loadMem_420783, %struct.Memory** %MEMORY
  %loadBr_420783 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420783 = icmp eq i8 %loadBr_420783, 1
  br i1 %cmpBr_420783, label %block_.L_42079f, label %block_420789

block_420789:                                     ; preds = %block_420731
  %loadMem_420789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 33
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %3465 to i64*
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 1
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %RAX.i408 = bitcast %union.anon* %3468 to i64*
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 15
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %3471 to i64*
  %3472 = load i64, i64* %RBP.i409
  %3473 = sub i64 %3472, 12
  %3474 = load i64, i64* %PC.i407
  %3475 = add i64 %3474, 4
  store i64 %3475, i64* %PC.i407
  %3476 = inttoptr i64 %3473 to i32*
  %3477 = load i32, i32* %3476
  %3478 = sext i32 %3477 to i64
  store i64 %3478, i64* %RAX.i408, align 8
  store %struct.Memory* %loadMem_420789, %struct.Memory** %MEMORY
  %loadMem_42078d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 33
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %3481 to i64*
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 1
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %3484 to i64*
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 5
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %RCX.i406 = bitcast %union.anon* %3487 to i64*
  %3488 = load i64, i64* %RAX.i405
  %3489 = mul i64 %3488, 4
  %3490 = add i64 %3489, 11559104
  %3491 = load i64, i64* %PC.i404
  %3492 = add i64 %3491, 7
  store i64 %3492, i64* %PC.i404
  %3493 = inttoptr i64 %3490 to i32*
  %3494 = load i32, i32* %3493
  %3495 = zext i32 %3494 to i64
  store i64 %3495, i64* %RCX.i406, align 8
  store %struct.Memory* %loadMem_42078d, %struct.Memory** %MEMORY
  %loadMem_420794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 33
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %3498 to i64*
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 5
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %ECX.i402 = bitcast %union.anon* %3501 to i32*
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 15
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %3504 to i64*
  %3505 = load i64, i64* %RBP.i403
  %3506 = sub i64 %3505, 13860
  %3507 = load i32, i32* %ECX.i402
  %3508 = zext i32 %3507 to i64
  %3509 = load i64, i64* %PC.i401
  %3510 = add i64 %3509, 6
  store i64 %3510, i64* %PC.i401
  %3511 = inttoptr i64 %3506 to i32*
  store i32 %3507, i32* %3511
  store %struct.Memory* %loadMem_420794, %struct.Memory** %MEMORY
  %loadMem_42079a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 33
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %3514 to i64*
  %3515 = load i64, i64* %PC.i400
  %3516 = add i64 %3515, 21
  %3517 = load i64, i64* %PC.i400
  %3518 = add i64 %3517, 5
  store i64 %3518, i64* %PC.i400
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3516, i64* %3519, align 8
  store %struct.Memory* %loadMem_42079a, %struct.Memory** %MEMORY
  br label %block_.L_4207af

block_.L_42079f:                                  ; preds = %block_420731
  %loadMem_42079f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 33
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %3522 to i64*
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 1
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %3525 to i64*
  %3526 = load i64, i64* %PC.i398
  %3527 = add i64 %3526, 5
  store i64 %3527, i64* %PC.i398
  store i64 5, i64* %RAX.i399, align 8
  store %struct.Memory* %loadMem_42079f, %struct.Memory** %MEMORY
  %loadMem_4207a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 33
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %3530 to i64*
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 1
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %EAX.i396 = bitcast %union.anon* %3533 to i32*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 15
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %3536 to i64*
  %3537 = load i64, i64* %RBP.i397
  %3538 = sub i64 %3537, 13860
  %3539 = load i32, i32* %EAX.i396
  %3540 = zext i32 %3539 to i64
  %3541 = load i64, i64* %PC.i395
  %3542 = add i64 %3541, 6
  store i64 %3542, i64* %PC.i395
  %3543 = inttoptr i64 %3538 to i32*
  store i32 %3539, i32* %3543
  store %struct.Memory* %loadMem_4207a4, %struct.Memory** %MEMORY
  %loadMem_4207aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 33
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %3546 to i64*
  %3547 = load i64, i64* %PC.i394
  %3548 = add i64 %3547, 5
  %3549 = load i64, i64* %PC.i394
  %3550 = add i64 %3549, 5
  store i64 %3550, i64* %PC.i394
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3548, i64* %3551, align 8
  store %struct.Memory* %loadMem_4207aa, %struct.Memory** %MEMORY
  br label %block_.L_4207af

block_.L_4207af:                                  ; preds = %block_.L_42079f, %block_420789
  %loadMem_4207af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3553 = getelementptr inbounds %struct.GPR, %struct.GPR* %3552, i32 0, i32 33
  %3554 = getelementptr inbounds %struct.Reg, %struct.Reg* %3553, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %3554 to i64*
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 1
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %3557 to i64*
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 15
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %3560 to i64*
  %3561 = load i64, i64* %RBP.i393
  %3562 = sub i64 %3561, 13860
  %3563 = load i64, i64* %PC.i391
  %3564 = add i64 %3563, 6
  store i64 %3564, i64* %PC.i391
  %3565 = inttoptr i64 %3562 to i32*
  %3566 = load i32, i32* %3565
  %3567 = zext i32 %3566 to i64
  store i64 %3567, i64* %RAX.i392, align 8
  store %struct.Memory* %loadMem_4207af, %struct.Memory** %MEMORY
  %loadMem_4207b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 33
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %3570 to i64*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3572 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3571, i64 0, i64 0
  %YMM0.i390 = bitcast %union.VectorReg* %3572 to %"class.std::bitset"*
  %3573 = bitcast %"class.std::bitset"* %YMM0.i390 to i8*
  %3574 = load i64, i64* %PC.i389
  %3575 = add i64 %3574, ptrtoint (%G_0xc27a3__rip__type* @G_0xc27a3__rip_ to i64)
  %3576 = load i64, i64* %PC.i389
  %3577 = add i64 %3576, 8
  store i64 %3577, i64* %PC.i389
  %3578 = inttoptr i64 %3575 to double*
  %3579 = load double, double* %3578
  %3580 = bitcast i8* %3573 to double*
  store double %3579, double* %3580, align 1
  %3581 = getelementptr inbounds i8, i8* %3573, i64 8
  %3582 = bitcast i8* %3581 to double*
  store double 0.000000e+00, double* %3582, align 1
  store %struct.Memory* %loadMem_4207b5, %struct.Memory** %MEMORY
  %loadMem_4207bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 33
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %3585 to i64*
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 1
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %EAX.i387 = bitcast %union.anon* %3588 to i32*
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 15
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %3591 to i64*
  %3592 = load i64, i64* %RBP.i388
  %3593 = sub i64 %3592, 13836
  %3594 = load i32, i32* %EAX.i387
  %3595 = zext i32 %3594 to i64
  %3596 = load i64, i64* %PC.i386
  %3597 = add i64 %3596, 6
  store i64 %3597, i64* %PC.i386
  %3598 = inttoptr i64 %3593 to i32*
  store i32 %3594, i32* %3598
  store %struct.Memory* %loadMem_4207bd, %struct.Memory** %MEMORY
  %loadMem_4207c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 33
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %3601 to i64*
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 15
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %3604 to i64*
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3606 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3605, i64 0, i64 1
  %YMM1.i385 = bitcast %union.VectorReg* %3606 to %"class.std::bitset"*
  %3607 = bitcast %"class.std::bitset"* %YMM1.i385 to i8*
  %3608 = load i64, i64* %RBP.i384
  %3609 = sub i64 %3608, 13836
  %3610 = load i64, i64* %PC.i383
  %3611 = add i64 %3610, 8
  store i64 %3611, i64* %PC.i383
  %3612 = inttoptr i64 %3609 to i32*
  %3613 = load i32, i32* %3612
  %3614 = sitofp i32 %3613 to double
  %3615 = bitcast i8* %3607 to double*
  store double %3614, double* %3615, align 1
  store %struct.Memory* %loadMem_4207c3, %struct.Memory** %MEMORY
  %loadMem_4207cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3617 = getelementptr inbounds %struct.GPR, %struct.GPR* %3616, i32 0, i32 33
  %3618 = getelementptr inbounds %struct.Reg, %struct.Reg* %3617, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %3618 to i64*
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3620 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3619, i64 0, i64 2
  %YMM2.i381 = bitcast %union.VectorReg* %3620 to %"class.std::bitset"*
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3622 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3621, i64 0, i64 0
  %XMM0.i382 = bitcast %union.VectorReg* %3622 to %union.vec128_t*
  %3623 = bitcast %"class.std::bitset"* %YMM2.i381 to i8*
  %3624 = bitcast %union.vec128_t* %XMM0.i382 to i8*
  %3625 = load i64, i64* %PC.i380
  %3626 = add i64 %3625, 3
  store i64 %3626, i64* %PC.i380
  %3627 = bitcast i8* %3624 to <2 x i32>*
  %3628 = load <2 x i32>, <2 x i32>* %3627, align 1
  %3629 = getelementptr inbounds i8, i8* %3624, i64 8
  %3630 = bitcast i8* %3629 to <2 x i32>*
  %3631 = load <2 x i32>, <2 x i32>* %3630, align 1
  %3632 = extractelement <2 x i32> %3628, i32 0
  %3633 = bitcast i8* %3623 to i32*
  store i32 %3632, i32* %3633, align 1
  %3634 = extractelement <2 x i32> %3628, i32 1
  %3635 = getelementptr inbounds i8, i8* %3623, i64 4
  %3636 = bitcast i8* %3635 to i32*
  store i32 %3634, i32* %3636, align 1
  %3637 = extractelement <2 x i32> %3631, i32 0
  %3638 = getelementptr inbounds i8, i8* %3623, i64 8
  %3639 = bitcast i8* %3638 to i32*
  store i32 %3637, i32* %3639, align 1
  %3640 = extractelement <2 x i32> %3631, i32 1
  %3641 = getelementptr inbounds i8, i8* %3623, i64 12
  %3642 = bitcast i8* %3641 to i32*
  store i32 %3640, i32* %3642, align 1
  store %struct.Memory* %loadMem_4207cb, %struct.Memory** %MEMORY
  %loadMem_4207ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3644 = getelementptr inbounds %struct.GPR, %struct.GPR* %3643, i32 0, i32 33
  %3645 = getelementptr inbounds %struct.Reg, %struct.Reg* %3644, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %3645 to i64*
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3647 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3646, i64 0, i64 2
  %YMM2.i378 = bitcast %union.VectorReg* %3647 to %"class.std::bitset"*
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3649 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3648, i64 0, i64 1
  %XMM1.i379 = bitcast %union.VectorReg* %3649 to %union.vec128_t*
  %3650 = bitcast %"class.std::bitset"* %YMM2.i378 to i8*
  %3651 = bitcast %"class.std::bitset"* %YMM2.i378 to i8*
  %3652 = bitcast %union.vec128_t* %XMM1.i379 to i8*
  %3653 = load i64, i64* %PC.i377
  %3654 = add i64 %3653, 4
  store i64 %3654, i64* %PC.i377
  %3655 = bitcast i8* %3651 to double*
  %3656 = load double, double* %3655, align 1
  %3657 = getelementptr inbounds i8, i8* %3651, i64 8
  %3658 = bitcast i8* %3657 to i64*
  %3659 = load i64, i64* %3658, align 1
  %3660 = bitcast i8* %3652 to double*
  %3661 = load double, double* %3660, align 1
  %3662 = fdiv double %3656, %3661
  %3663 = bitcast i8* %3650 to double*
  store double %3662, double* %3663, align 1
  %3664 = getelementptr inbounds i8, i8* %3650, i64 8
  %3665 = bitcast i8* %3664 to i64*
  store i64 %3659, i64* %3665, align 1
  store %struct.Memory* %loadMem_4207ce, %struct.Memory** %MEMORY
  %loadMem_4207d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 33
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %3668 to i64*
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3670 = getelementptr inbounds %struct.GPR, %struct.GPR* %3669, i32 0, i32 5
  %3671 = getelementptr inbounds %struct.Reg, %struct.Reg* %3670, i32 0, i32 0
  %RCX.i375 = bitcast %union.anon* %3671 to i64*
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3673 = getelementptr inbounds %struct.GPR, %struct.GPR* %3672, i32 0, i32 15
  %3674 = getelementptr inbounds %struct.Reg, %struct.Reg* %3673, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %3674 to i64*
  %3675 = load i64, i64* %RBP.i376
  %3676 = sub i64 %3675, 13832
  %3677 = load i64, i64* %PC.i374
  %3678 = add i64 %3677, 7
  store i64 %3678, i64* %PC.i374
  %3679 = inttoptr i64 %3676 to i32*
  %3680 = load i32, i32* %3679
  %3681 = sext i32 %3680 to i64
  store i64 %3681, i64* %RCX.i375, align 8
  store %struct.Memory* %loadMem_4207d2, %struct.Memory** %MEMORY
  %loadMem_4207d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 33
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %3684 to i64*
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 5
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %RCX.i371 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 15
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %3690 to i64*
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3692 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3691, i64 0, i64 1
  %YMM1.i373 = bitcast %union.VectorReg* %3692 to %"class.std::bitset"*
  %3693 = bitcast %"class.std::bitset"* %YMM1.i373 to i8*
  %3694 = load i64, i64* %RBP.i372
  %3695 = load i64, i64* %RCX.i371
  %3696 = mul i64 %3695, 4
  %3697 = add i64 %3694, -12224
  %3698 = add i64 %3697, %3696
  %3699 = load i64, i64* %PC.i370
  %3700 = add i64 %3699, 9
  store i64 %3700, i64* %PC.i370
  %3701 = inttoptr i64 %3698 to float*
  %3702 = load float, float* %3701
  %3703 = fpext float %3702 to double
  %3704 = bitcast i8* %3693 to double*
  store double %3703, double* %3704, align 1
  store %struct.Memory* %loadMem_4207d9, %struct.Memory** %MEMORY
  %loadMem_4207e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3706 = getelementptr inbounds %struct.GPR, %struct.GPR* %3705, i32 0, i32 33
  %3707 = getelementptr inbounds %struct.Reg, %struct.Reg* %3706, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %3707 to i64*
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3709 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3708, i64 0, i64 1
  %YMM1.i368 = bitcast %union.VectorReg* %3709 to %"class.std::bitset"*
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3711 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3710, i64 0, i64 2
  %XMM2.i369 = bitcast %union.VectorReg* %3711 to %union.vec128_t*
  %3712 = bitcast %"class.std::bitset"* %YMM1.i368 to i8*
  %3713 = bitcast %"class.std::bitset"* %YMM1.i368 to i8*
  %3714 = bitcast %union.vec128_t* %XMM2.i369 to i8*
  %3715 = load i64, i64* %PC.i367
  %3716 = add i64 %3715, 4
  store i64 %3716, i64* %PC.i367
  %3717 = bitcast i8* %3713 to double*
  %3718 = load double, double* %3717, align 1
  %3719 = getelementptr inbounds i8, i8* %3713, i64 8
  %3720 = bitcast i8* %3719 to i64*
  %3721 = load i64, i64* %3720, align 1
  %3722 = bitcast i8* %3714 to double*
  %3723 = load double, double* %3722, align 1
  %3724 = fadd double %3718, %3723
  %3725 = bitcast i8* %3712 to double*
  store double %3724, double* %3725, align 1
  %3726 = getelementptr inbounds i8, i8* %3712, i64 8
  %3727 = bitcast i8* %3726 to i64*
  store i64 %3721, i64* %3727, align 1
  store %struct.Memory* %loadMem_4207e2, %struct.Memory** %MEMORY
  %loadMem_4207e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 33
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %3730 to i64*
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3732 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3731, i64 0, i64 1
  %YMM1.i365 = bitcast %union.VectorReg* %3732 to %"class.std::bitset"*
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3734 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3733, i64 0, i64 1
  %XMM1.i366 = bitcast %union.VectorReg* %3734 to %union.vec128_t*
  %3735 = bitcast %"class.std::bitset"* %YMM1.i365 to i8*
  %3736 = bitcast %union.vec128_t* %XMM1.i366 to i8*
  %3737 = load i64, i64* %PC.i364
  %3738 = add i64 %3737, 4
  store i64 %3738, i64* %PC.i364
  %3739 = bitcast i8* %3735 to <2 x i32>*
  %3740 = load <2 x i32>, <2 x i32>* %3739, align 1
  %3741 = getelementptr inbounds i8, i8* %3735, i64 8
  %3742 = bitcast i8* %3741 to <2 x i32>*
  %3743 = load <2 x i32>, <2 x i32>* %3742, align 1
  %3744 = bitcast i8* %3736 to double*
  %3745 = load double, double* %3744, align 1
  %3746 = fptrunc double %3745 to float
  %3747 = bitcast i8* %3735 to float*
  store float %3746, float* %3747, align 1
  %3748 = extractelement <2 x i32> %3740, i32 1
  %3749 = getelementptr inbounds i8, i8* %3735, i64 4
  %3750 = bitcast i8* %3749 to i32*
  store i32 %3748, i32* %3750, align 1
  %3751 = extractelement <2 x i32> %3743, i32 0
  %3752 = bitcast i8* %3741 to i32*
  store i32 %3751, i32* %3752, align 1
  %3753 = extractelement <2 x i32> %3743, i32 1
  %3754 = getelementptr inbounds i8, i8* %3735, i64 12
  %3755 = bitcast i8* %3754 to i32*
  store i32 %3753, i32* %3755, align 1
  store %struct.Memory* %loadMem_4207e6, %struct.Memory** %MEMORY
  %loadMem_4207ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3757 = getelementptr inbounds %struct.GPR, %struct.GPR* %3756, i32 0, i32 33
  %3758 = getelementptr inbounds %struct.Reg, %struct.Reg* %3757, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %3758 to i64*
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3760 = getelementptr inbounds %struct.GPR, %struct.GPR* %3759, i32 0, i32 5
  %3761 = getelementptr inbounds %struct.Reg, %struct.Reg* %3760, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %3761 to i64*
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3763 = getelementptr inbounds %struct.GPR, %struct.GPR* %3762, i32 0, i32 15
  %3764 = getelementptr inbounds %struct.Reg, %struct.Reg* %3763, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %3764 to i64*
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3766 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3765, i64 0, i64 1
  %XMM1.i363 = bitcast %union.VectorReg* %3766 to %union.vec128_t*
  %3767 = load i64, i64* %RBP.i362
  %3768 = load i64, i64* %RCX.i361
  %3769 = mul i64 %3768, 4
  %3770 = add i64 %3767, -12224
  %3771 = add i64 %3770, %3769
  %3772 = bitcast %union.vec128_t* %XMM1.i363 to i8*
  %3773 = load i64, i64* %PC.i360
  %3774 = add i64 %3773, 9
  store i64 %3774, i64* %PC.i360
  %3775 = bitcast i8* %3772 to <2 x float>*
  %3776 = load <2 x float>, <2 x float>* %3775, align 1
  %3777 = extractelement <2 x float> %3776, i32 0
  %3778 = inttoptr i64 %3771 to float*
  store float %3777, float* %3778
  store %struct.Memory* %loadMem_4207ea, %struct.Memory** %MEMORY
  %loadMem_4207f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 33
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %3781 to i64*
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 5
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %RCX.i358 = bitcast %union.anon* %3784 to i64*
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 15
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %3787 to i64*
  %3788 = load i64, i64* %RBP.i359
  %3789 = sub i64 %3788, 12
  %3790 = load i64, i64* %PC.i357
  %3791 = add i64 %3790, 4
  store i64 %3791, i64* %PC.i357
  %3792 = inttoptr i64 %3789 to i32*
  %3793 = load i32, i32* %3792
  %3794 = sext i32 %3793 to i64
  store i64 %3794, i64* %RCX.i358, align 8
  store %struct.Memory* %loadMem_4207f3, %struct.Memory** %MEMORY
  %loadMem_4207f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 33
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %3797 to i64*
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 5
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %RCX.i354 = bitcast %union.anon* %3800 to i64*
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 15
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %3803 to i64*
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3805 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3804, i64 0, i64 1
  %YMM1.i356 = bitcast %union.VectorReg* %3805 to %"class.std::bitset"*
  %3806 = bitcast %"class.std::bitset"* %YMM1.i356 to i8*
  %3807 = load i64, i64* %RBP.i355
  %3808 = load i64, i64* %RCX.i354
  %3809 = mul i64 %3808, 4
  %3810 = add i64 %3807, -10624
  %3811 = add i64 %3810, %3809
  %3812 = load i64, i64* %PC.i353
  %3813 = add i64 %3812, 9
  store i64 %3813, i64* %PC.i353
  %3814 = inttoptr i64 %3811 to float*
  %3815 = load float, float* %3814
  %3816 = fpext float %3815 to double
  %3817 = bitcast i8* %3806 to double*
  store double %3816, double* %3817, align 1
  store %struct.Memory* %loadMem_4207f7, %struct.Memory** %MEMORY
  %loadMem_420800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3819 = getelementptr inbounds %struct.GPR, %struct.GPR* %3818, i32 0, i32 33
  %3820 = getelementptr inbounds %struct.Reg, %struct.Reg* %3819, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %3820 to i64*
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3822 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3821, i64 0, i64 0
  %XMM0.i348 = bitcast %union.VectorReg* %3822 to %union.vec128_t*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3824 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3823, i64 0, i64 1
  %XMM1.i349 = bitcast %union.VectorReg* %3824 to %union.vec128_t*
  %3825 = bitcast %union.vec128_t* %XMM0.i348 to i8*
  %3826 = bitcast %union.vec128_t* %XMM1.i349 to i8*
  %3827 = load i64, i64* %PC.i347
  %3828 = add i64 %3827, 4
  store i64 %3828, i64* %PC.i347
  %3829 = bitcast i8* %3825 to double*
  %3830 = load double, double* %3829, align 1
  %3831 = bitcast i8* %3826 to double*
  %3832 = load double, double* %3831, align 1
  %3833 = fcmp uno double %3830, %3832
  br i1 %3833, label %3834, label %3846

; <label>:3834:                                   ; preds = %block_.L_4207af
  %3835 = fadd double %3830, %3832
  %3836 = bitcast double %3835 to i64
  %3837 = and i64 %3836, 9221120237041090560
  %3838 = icmp eq i64 %3837, 9218868437227405312
  %3839 = and i64 %3836, 2251799813685247
  %3840 = icmp ne i64 %3839, 0
  %3841 = and i1 %3838, %3840
  br i1 %3841, label %3842, label %3852

; <label>:3842:                                   ; preds = %3834
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3844 = load i64, i64* %3843, align 8
  %3845 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3844, %struct.Memory* %loadMem_420800)
  br label %routine_ucomisd__xmm1___xmm0.exit350

; <label>:3846:                                   ; preds = %block_.L_4207af
  %3847 = fcmp ogt double %3830, %3832
  br i1 %3847, label %3852, label %3848

; <label>:3848:                                   ; preds = %3846
  %3849 = fcmp olt double %3830, %3832
  br i1 %3849, label %3852, label %3850

; <label>:3850:                                   ; preds = %3848
  %3851 = fcmp oeq double %3830, %3832
  br i1 %3851, label %3852, label %3859

; <label>:3852:                                   ; preds = %3850, %3848, %3846, %3834
  %3853 = phi i8 [ 0, %3846 ], [ 0, %3848 ], [ 1, %3850 ], [ 1, %3834 ]
  %3854 = phi i8 [ 0, %3846 ], [ 0, %3848 ], [ 0, %3850 ], [ 1, %3834 ]
  %3855 = phi i8 [ 0, %3846 ], [ 1, %3848 ], [ 0, %3850 ], [ 1, %3834 ]
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3853, i8* %3856, align 1
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3854, i8* %3857, align 1
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3855, i8* %3858, align 1
  br label %3859

; <label>:3859:                                   ; preds = %3852, %3850
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3860, align 1
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3861, align 1
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3862, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit350

routine_ucomisd__xmm1___xmm0.exit350:             ; preds = %3842, %3859
  %3863 = phi %struct.Memory* [ %3845, %3842 ], [ %loadMem_420800, %3859 ]
  store %struct.Memory* %3863, %struct.Memory** %MEMORY
  %loadMem_420804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3865 = getelementptr inbounds %struct.GPR, %struct.GPR* %3864, i32 0, i32 33
  %3866 = getelementptr inbounds %struct.Reg, %struct.Reg* %3865, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %3866 to i64*
  %3867 = load i64, i64* %PC.i346
  %3868 = add i64 %3867, 32
  %3869 = load i64, i64* %PC.i346
  %3870 = add i64 %3869, 6
  %3871 = load i64, i64* %PC.i346
  %3872 = add i64 %3871, 6
  store i64 %3872, i64* %PC.i346
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3874 = load i8, i8* %3873, align 1
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3876 = load i8, i8* %3875, align 1
  %3877 = or i8 %3876, %3874
  %3878 = icmp ne i8 %3877, 0
  %3879 = zext i1 %3878 to i8
  store i8 %3879, i8* %BRANCH_TAKEN, align 1
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3881 = select i1 %3878, i64 %3868, i64 %3870
  store i64 %3881, i64* %3880, align 8
  store %struct.Memory* %loadMem_420804, %struct.Memory** %MEMORY
  %loadBr_420804 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420804 = icmp eq i8 %loadBr_420804, 1
  br i1 %cmpBr_420804, label %block_.L_420824, label %block_42080a

block_42080a:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit350
  %loadMem_42080a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3883 = getelementptr inbounds %struct.GPR, %struct.GPR* %3882, i32 0, i32 33
  %3884 = getelementptr inbounds %struct.Reg, %struct.Reg* %3883, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %3884 to i64*
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3886 = getelementptr inbounds %struct.GPR, %struct.GPR* %3885, i32 0, i32 1
  %3887 = getelementptr inbounds %struct.Reg, %struct.Reg* %3886, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %3887 to i64*
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3889 = getelementptr inbounds %struct.GPR, %struct.GPR* %3888, i32 0, i32 15
  %3890 = getelementptr inbounds %struct.Reg, %struct.Reg* %3889, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %3890 to i64*
  %3891 = load i64, i64* %RBP.i345
  %3892 = sub i64 %3891, 12
  %3893 = load i64, i64* %PC.i343
  %3894 = add i64 %3893, 4
  store i64 %3894, i64* %PC.i343
  %3895 = inttoptr i64 %3892 to i32*
  %3896 = load i32, i32* %3895
  %3897 = sext i32 %3896 to i64
  store i64 %3897, i64* %RAX.i344, align 8
  store %struct.Memory* %loadMem_42080a, %struct.Memory** %MEMORY
  %loadMem_42080e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 33
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %3900 to i64*
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 1
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %3903 to i64*
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 15
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %3906 to i64*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3908 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3907, i64 0, i64 0
  %YMM0.i342 = bitcast %union.VectorReg* %3908 to %"class.std::bitset"*
  %3909 = bitcast %"class.std::bitset"* %YMM0.i342 to i8*
  %3910 = load i64, i64* %RBP.i341
  %3911 = load i64, i64* %RAX.i340
  %3912 = mul i64 %3911, 4
  %3913 = add i64 %3910, -10624
  %3914 = add i64 %3913, %3912
  %3915 = load i64, i64* %PC.i339
  %3916 = add i64 %3915, 9
  store i64 %3916, i64* %PC.i339
  %3917 = inttoptr i64 %3914 to float*
  %3918 = load float, float* %3917
  %3919 = fpext float %3918 to double
  %3920 = bitcast i8* %3909 to double*
  store double %3919, double* %3920, align 1
  store %struct.Memory* %loadMem_42080e, %struct.Memory** %MEMORY
  %loadMem_420817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 33
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %3923 to i64*
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 15
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %3926 to i64*
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3928 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3927, i64 0, i64 0
  %XMM0.i338 = bitcast %union.VectorReg* %3928 to %union.vec128_t*
  %3929 = load i64, i64* %RBP.i337
  %3930 = sub i64 %3929, 13872
  %3931 = bitcast %union.vec128_t* %XMM0.i338 to i8*
  %3932 = load i64, i64* %PC.i336
  %3933 = add i64 %3932, 8
  store i64 %3933, i64* %PC.i336
  %3934 = bitcast i8* %3931 to double*
  %3935 = load double, double* %3934, align 1
  %3936 = inttoptr i64 %3930 to double*
  store double %3935, double* %3936
  store %struct.Memory* %loadMem_420817, %struct.Memory** %MEMORY
  %loadMem_42081f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3938 = getelementptr inbounds %struct.GPR, %struct.GPR* %3937, i32 0, i32 33
  %3939 = getelementptr inbounds %struct.Reg, %struct.Reg* %3938, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %3939 to i64*
  %3940 = load i64, i64* %PC.i335
  %3941 = add i64 %3940, 26
  %3942 = load i64, i64* %PC.i335
  %3943 = add i64 %3942, 5
  store i64 %3943, i64* %PC.i335
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3941, i64* %3944, align 8
  store %struct.Memory* %loadMem_42081f, %struct.Memory** %MEMORY
  br label %block_.L_420839

block_.L_420824:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit350
  %loadMem_420824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 33
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %3947 to i64*
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3949 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3948, i64 0, i64 0
  %YMM0.i334 = bitcast %union.VectorReg* %3949 to %"class.std::bitset"*
  %3950 = bitcast %"class.std::bitset"* %YMM0.i334 to i8*
  %3951 = load i64, i64* %PC.i333
  %3952 = add i64 %3951, ptrtoint (%G_0xc2734__rip__type* @G_0xc2734__rip_ to i64)
  %3953 = load i64, i64* %PC.i333
  %3954 = add i64 %3953, 8
  store i64 %3954, i64* %PC.i333
  %3955 = inttoptr i64 %3952 to double*
  %3956 = load double, double* %3955
  %3957 = bitcast i8* %3950 to double*
  store double %3956, double* %3957, align 1
  %3958 = getelementptr inbounds i8, i8* %3950, i64 8
  %3959 = bitcast i8* %3958 to double*
  store double 0.000000e+00, double* %3959, align 1
  store %struct.Memory* %loadMem_420824, %struct.Memory** %MEMORY
  %loadMem_42082c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 33
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %3962 to i64*
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3964 = getelementptr inbounds %struct.GPR, %struct.GPR* %3963, i32 0, i32 15
  %3965 = getelementptr inbounds %struct.Reg, %struct.Reg* %3964, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %3965 to i64*
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3967 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3966, i64 0, i64 0
  %XMM0.i332 = bitcast %union.VectorReg* %3967 to %union.vec128_t*
  %3968 = load i64, i64* %RBP.i331
  %3969 = sub i64 %3968, 13872
  %3970 = bitcast %union.vec128_t* %XMM0.i332 to i8*
  %3971 = load i64, i64* %PC.i330
  %3972 = add i64 %3971, 8
  store i64 %3972, i64* %PC.i330
  %3973 = bitcast i8* %3970 to double*
  %3974 = load double, double* %3973, align 1
  %3975 = inttoptr i64 %3969 to double*
  store double %3974, double* %3975
  store %struct.Memory* %loadMem_42082c, %struct.Memory** %MEMORY
  %loadMem_420834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3977 = getelementptr inbounds %struct.GPR, %struct.GPR* %3976, i32 0, i32 33
  %3978 = getelementptr inbounds %struct.Reg, %struct.Reg* %3977, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %3978 to i64*
  %3979 = load i64, i64* %PC.i329
  %3980 = add i64 %3979, 5
  %3981 = load i64, i64* %PC.i329
  %3982 = add i64 %3981, 5
  store i64 %3982, i64* %PC.i329
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3980, i64* %3983, align 8
  store %struct.Memory* %loadMem_420834, %struct.Memory** %MEMORY
  br label %block_.L_420839

block_.L_420839:                                  ; preds = %block_.L_420824, %block_42080a
  %loadMem_420839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3985 = getelementptr inbounds %struct.GPR, %struct.GPR* %3984, i32 0, i32 33
  %3986 = getelementptr inbounds %struct.Reg, %struct.Reg* %3985, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %3986 to i64*
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3988 = getelementptr inbounds %struct.GPR, %struct.GPR* %3987, i32 0, i32 15
  %3989 = getelementptr inbounds %struct.Reg, %struct.Reg* %3988, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %3989 to i64*
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3991 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3990, i64 0, i64 0
  %YMM0.i328 = bitcast %union.VectorReg* %3991 to %"class.std::bitset"*
  %3992 = bitcast %"class.std::bitset"* %YMM0.i328 to i8*
  %3993 = load i64, i64* %RBP.i327
  %3994 = sub i64 %3993, 13872
  %3995 = load i64, i64* %PC.i326
  %3996 = add i64 %3995, 8
  store i64 %3996, i64* %PC.i326
  %3997 = inttoptr i64 %3994 to double*
  %3998 = load double, double* %3997
  %3999 = bitcast i8* %3992 to double*
  store double %3998, double* %3999, align 1
  %4000 = getelementptr inbounds i8, i8* %3992, i64 8
  %4001 = bitcast i8* %4000 to double*
  store double 0.000000e+00, double* %4001, align 1
  store %struct.Memory* %loadMem_420839, %struct.Memory** %MEMORY
  %loadMem_420841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 33
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %4004 to i64*
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 15
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %4007 to i64*
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4009 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4008, i64 0, i64 1
  %YMM1.i325 = bitcast %union.VectorReg* %4009 to %"class.std::bitset"*
  %4010 = bitcast %"class.std::bitset"* %YMM1.i325 to i8*
  %4011 = load i64, i64* %RBP.i324
  %4012 = sub i64 %4011, 13836
  %4013 = load i64, i64* %PC.i323
  %4014 = add i64 %4013, 8
  store i64 %4014, i64* %PC.i323
  %4015 = inttoptr i64 %4012 to i32*
  %4016 = load i32, i32* %4015
  %4017 = sitofp i32 %4016 to double
  %4018 = bitcast i8* %4010 to double*
  store double %4017, double* %4018, align 1
  store %struct.Memory* %loadMem_420841, %struct.Memory** %MEMORY
  %loadMem_420849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4020 = getelementptr inbounds %struct.GPR, %struct.GPR* %4019, i32 0, i32 33
  %4021 = getelementptr inbounds %struct.Reg, %struct.Reg* %4020, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %4021 to i64*
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4023 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4022, i64 0, i64 0
  %YMM0.i321 = bitcast %union.VectorReg* %4023 to %"class.std::bitset"*
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4025 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4024, i64 0, i64 1
  %XMM1.i322 = bitcast %union.VectorReg* %4025 to %union.vec128_t*
  %4026 = bitcast %"class.std::bitset"* %YMM0.i321 to i8*
  %4027 = bitcast %"class.std::bitset"* %YMM0.i321 to i8*
  %4028 = bitcast %union.vec128_t* %XMM1.i322 to i8*
  %4029 = load i64, i64* %PC.i320
  %4030 = add i64 %4029, 4
  store i64 %4030, i64* %PC.i320
  %4031 = bitcast i8* %4027 to double*
  %4032 = load double, double* %4031, align 1
  %4033 = getelementptr inbounds i8, i8* %4027, i64 8
  %4034 = bitcast i8* %4033 to i64*
  %4035 = load i64, i64* %4034, align 1
  %4036 = bitcast i8* %4028 to double*
  %4037 = load double, double* %4036, align 1
  %4038 = fdiv double %4032, %4037
  %4039 = bitcast i8* %4026 to double*
  store double %4038, double* %4039, align 1
  %4040 = getelementptr inbounds i8, i8* %4026, i64 8
  %4041 = bitcast i8* %4040 to i64*
  store i64 %4035, i64* %4041, align 1
  store %struct.Memory* %loadMem_420849, %struct.Memory** %MEMORY
  %loadMem_42084d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 33
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %4044 to i64*
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 1
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %4047 to i64*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 15
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %4050 to i64*
  %4051 = load i64, i64* %RBP.i319
  %4052 = sub i64 %4051, 13832
  %4053 = load i64, i64* %PC.i317
  %4054 = add i64 %4053, 7
  store i64 %4054, i64* %PC.i317
  %4055 = inttoptr i64 %4052 to i32*
  %4056 = load i32, i32* %4055
  %4057 = sext i32 %4056 to i64
  store i64 %4057, i64* %RAX.i318, align 8
  store %struct.Memory* %loadMem_42084d, %struct.Memory** %MEMORY
  %loadMem_420854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 33
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %4060 to i64*
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 1
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %4063 to i64*
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 15
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %4066 to i64*
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4068 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4067, i64 0, i64 1
  %YMM1.i316 = bitcast %union.VectorReg* %4068 to %"class.std::bitset"*
  %4069 = bitcast %"class.std::bitset"* %YMM1.i316 to i8*
  %4070 = load i64, i64* %RBP.i315
  %4071 = load i64, i64* %RAX.i314
  %4072 = mul i64 %4071, 4
  %4073 = add i64 %4070, -13824
  %4074 = add i64 %4073, %4072
  %4075 = load i64, i64* %PC.i313
  %4076 = add i64 %4075, 9
  store i64 %4076, i64* %PC.i313
  %4077 = inttoptr i64 %4074 to float*
  %4078 = load float, float* %4077
  %4079 = fpext float %4078 to double
  %4080 = bitcast i8* %4069 to double*
  store double %4079, double* %4080, align 1
  store %struct.Memory* %loadMem_420854, %struct.Memory** %MEMORY
  %loadMem_42085d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4082 = getelementptr inbounds %struct.GPR, %struct.GPR* %4081, i32 0, i32 33
  %4083 = getelementptr inbounds %struct.Reg, %struct.Reg* %4082, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4083 to i64*
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4085 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4084, i64 0, i64 1
  %YMM1.i311 = bitcast %union.VectorReg* %4085 to %"class.std::bitset"*
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4087 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4086, i64 0, i64 0
  %XMM0.i312 = bitcast %union.VectorReg* %4087 to %union.vec128_t*
  %4088 = bitcast %"class.std::bitset"* %YMM1.i311 to i8*
  %4089 = bitcast %"class.std::bitset"* %YMM1.i311 to i8*
  %4090 = bitcast %union.vec128_t* %XMM0.i312 to i8*
  %4091 = load i64, i64* %PC.i310
  %4092 = add i64 %4091, 4
  store i64 %4092, i64* %PC.i310
  %4093 = bitcast i8* %4089 to double*
  %4094 = load double, double* %4093, align 1
  %4095 = getelementptr inbounds i8, i8* %4089, i64 8
  %4096 = bitcast i8* %4095 to i64*
  %4097 = load i64, i64* %4096, align 1
  %4098 = bitcast i8* %4090 to double*
  %4099 = load double, double* %4098, align 1
  %4100 = fadd double %4094, %4099
  %4101 = bitcast i8* %4088 to double*
  store double %4100, double* %4101, align 1
  %4102 = getelementptr inbounds i8, i8* %4088, i64 8
  %4103 = bitcast i8* %4102 to i64*
  store i64 %4097, i64* %4103, align 1
  store %struct.Memory* %loadMem_42085d, %struct.Memory** %MEMORY
  %loadMem_420861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 33
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %4106 to i64*
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4108 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4107, i64 0, i64 0
  %YMM0.i308 = bitcast %union.VectorReg* %4108 to %"class.std::bitset"*
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4110 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4109, i64 0, i64 1
  %XMM1.i309 = bitcast %union.VectorReg* %4110 to %union.vec128_t*
  %4111 = bitcast %"class.std::bitset"* %YMM0.i308 to i8*
  %4112 = bitcast %union.vec128_t* %XMM1.i309 to i8*
  %4113 = load i64, i64* %PC.i307
  %4114 = add i64 %4113, 4
  store i64 %4114, i64* %PC.i307
  %4115 = bitcast i8* %4111 to <2 x i32>*
  %4116 = load <2 x i32>, <2 x i32>* %4115, align 1
  %4117 = getelementptr inbounds i8, i8* %4111, i64 8
  %4118 = bitcast i8* %4117 to <2 x i32>*
  %4119 = load <2 x i32>, <2 x i32>* %4118, align 1
  %4120 = bitcast i8* %4112 to double*
  %4121 = load double, double* %4120, align 1
  %4122 = fptrunc double %4121 to float
  %4123 = bitcast i8* %4111 to float*
  store float %4122, float* %4123, align 1
  %4124 = extractelement <2 x i32> %4116, i32 1
  %4125 = getelementptr inbounds i8, i8* %4111, i64 4
  %4126 = bitcast i8* %4125 to i32*
  store i32 %4124, i32* %4126, align 1
  %4127 = extractelement <2 x i32> %4119, i32 0
  %4128 = bitcast i8* %4117 to i32*
  store i32 %4127, i32* %4128, align 1
  %4129 = extractelement <2 x i32> %4119, i32 1
  %4130 = getelementptr inbounds i8, i8* %4111, i64 12
  %4131 = bitcast i8* %4130 to i32*
  store i32 %4129, i32* %4131, align 1
  store %struct.Memory* %loadMem_420861, %struct.Memory** %MEMORY
  %loadMem_420865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 33
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %4134 to i64*
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 1
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %4137 to i64*
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 15
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %4140 to i64*
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4142 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4141, i64 0, i64 0
  %XMM0.i306 = bitcast %union.VectorReg* %4142 to %union.vec128_t*
  %4143 = load i64, i64* %RBP.i305
  %4144 = load i64, i64* %RAX.i304
  %4145 = mul i64 %4144, 4
  %4146 = add i64 %4143, -13824
  %4147 = add i64 %4146, %4145
  %4148 = bitcast %union.vec128_t* %XMM0.i306 to i8*
  %4149 = load i64, i64* %PC.i303
  %4150 = add i64 %4149, 9
  store i64 %4150, i64* %PC.i303
  %4151 = bitcast i8* %4148 to <2 x float>*
  %4152 = load <2 x float>, <2 x float>* %4151, align 1
  %4153 = extractelement <2 x float> %4152, i32 0
  %4154 = inttoptr i64 %4147 to float*
  store float %4153, float* %4154
  store %struct.Memory* %loadMem_420865, %struct.Memory** %MEMORY
  %loadMem_42086e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4156 = getelementptr inbounds %struct.GPR, %struct.GPR* %4155, i32 0, i32 33
  %4157 = getelementptr inbounds %struct.Reg, %struct.Reg* %4156, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %4157 to i64*
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4159 = getelementptr inbounds %struct.GPR, %struct.GPR* %4158, i32 0, i32 1
  %4160 = getelementptr inbounds %struct.Reg, %struct.Reg* %4159, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %4160 to i64*
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4162 = getelementptr inbounds %struct.GPR, %struct.GPR* %4161, i32 0, i32 15
  %4163 = getelementptr inbounds %struct.Reg, %struct.Reg* %4162, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %4163 to i64*
  %4164 = load i64, i64* %RBP.i302
  %4165 = sub i64 %4164, 7424
  %4166 = load i64, i64* %PC.i300
  %4167 = add i64 %4166, 6
  store i64 %4167, i64* %PC.i300
  %4168 = inttoptr i64 %4165 to i32*
  %4169 = load i32, i32* %4168
  %4170 = zext i32 %4169 to i64
  store i64 %4170, i64* %RAX.i301, align 8
  store %struct.Memory* %loadMem_42086e, %struct.Memory** %MEMORY
  %loadMem_420874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4172 = getelementptr inbounds %struct.GPR, %struct.GPR* %4171, i32 0, i32 33
  %4173 = getelementptr inbounds %struct.Reg, %struct.Reg* %4172, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %4173 to i64*
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4175 = getelementptr inbounds %struct.GPR, %struct.GPR* %4174, i32 0, i32 1
  %4176 = getelementptr inbounds %struct.Reg, %struct.Reg* %4175, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %4176 to i64*
  %4177 = load i64, i64* %RAX.i299
  %4178 = load i64, i64* %PC.i298
  %4179 = add i64 %4178, 3
  store i64 %4179, i64* %PC.i298
  %4180 = trunc i64 %4177 to i32
  %4181 = add i32 1, %4180
  %4182 = zext i32 %4181 to i64
  store i64 %4182, i64* %RAX.i299, align 8
  %4183 = icmp ult i32 %4181, %4180
  %4184 = icmp ult i32 %4181, 1
  %4185 = or i1 %4183, %4184
  %4186 = zext i1 %4185 to i8
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4186, i8* %4187, align 1
  %4188 = and i32 %4181, 255
  %4189 = call i32 @llvm.ctpop.i32(i32 %4188)
  %4190 = trunc i32 %4189 to i8
  %4191 = and i8 %4190, 1
  %4192 = xor i8 %4191, 1
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4192, i8* %4193, align 1
  %4194 = xor i64 1, %4177
  %4195 = trunc i64 %4194 to i32
  %4196 = xor i32 %4195, %4181
  %4197 = lshr i32 %4196, 4
  %4198 = trunc i32 %4197 to i8
  %4199 = and i8 %4198, 1
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4199, i8* %4200, align 1
  %4201 = icmp eq i32 %4181, 0
  %4202 = zext i1 %4201 to i8
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4202, i8* %4203, align 1
  %4204 = lshr i32 %4181, 31
  %4205 = trunc i32 %4204 to i8
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4205, i8* %4206, align 1
  %4207 = lshr i32 %4180, 31
  %4208 = xor i32 %4204, %4207
  %4209 = add i32 %4208, %4204
  %4210 = icmp eq i32 %4209, 2
  %4211 = zext i1 %4210 to i8
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4211, i8* %4212, align 1
  store %struct.Memory* %loadMem_420874, %struct.Memory** %MEMORY
  %loadMem_420877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4214 = getelementptr inbounds %struct.GPR, %struct.GPR* %4213, i32 0, i32 33
  %4215 = getelementptr inbounds %struct.Reg, %struct.Reg* %4214, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %4215 to i64*
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4217 = getelementptr inbounds %struct.GPR, %struct.GPR* %4216, i32 0, i32 1
  %4218 = getelementptr inbounds %struct.Reg, %struct.Reg* %4217, i32 0, i32 0
  %EAX.i296 = bitcast %union.anon* %4218 to i32*
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 15
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %4221 to i64*
  %4222 = load i64, i64* %RBP.i297
  %4223 = sub i64 %4222, 7424
  %4224 = load i32, i32* %EAX.i296
  %4225 = zext i32 %4224 to i64
  %4226 = load i64, i64* %PC.i295
  %4227 = add i64 %4226, 6
  store i64 %4227, i64* %PC.i295
  %4228 = inttoptr i64 %4223 to i32*
  store i32 %4224, i32* %4228
  store %struct.Memory* %loadMem_420877, %struct.Memory** %MEMORY
  %loadMem_42087d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4230 = getelementptr inbounds %struct.GPR, %struct.GPR* %4229, i32 0, i32 33
  %4231 = getelementptr inbounds %struct.Reg, %struct.Reg* %4230, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %4231 to i64*
  %4232 = load i64, i64* %PC.i294
  %4233 = add i64 %4232, -355
  %4234 = load i64, i64* %PC.i294
  %4235 = add i64 %4234, 5
  store i64 %4235, i64* %PC.i294
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4233, i64* %4236, align 8
  store %struct.Memory* %loadMem_42087d, %struct.Memory** %MEMORY
  br label %block_.L_42071a

block_.L_420882:                                  ; preds = %block_.L_42071a
  %loadMem_420882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4238 = getelementptr inbounds %struct.GPR, %struct.GPR* %4237, i32 0, i32 33
  %4239 = getelementptr inbounds %struct.Reg, %struct.Reg* %4238, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %4239 to i64*
  %4240 = load i64, i64* %PC.i293
  %4241 = add i64 %4240, 5
  %4242 = load i64, i64* %PC.i293
  %4243 = add i64 %4242, 5
  store i64 %4243, i64* %PC.i293
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4241, i64* %4244, align 8
  store %struct.Memory* %loadMem_420882, %struct.Memory** %MEMORY
  br label %block_.L_420887

block_.L_420887:                                  ; preds = %block_.L_420882, %block_.L_4206fe
  %loadMem_420887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 33
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %4247 to i64*
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 1
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %4250 to i64*
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 15
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %4253 to i64*
  %4254 = load i64, i64* %RBP.i292
  %4255 = sub i64 %4254, 12
  %4256 = load i64, i64* %PC.i290
  %4257 = add i64 %4256, 4
  store i64 %4257, i64* %PC.i290
  %4258 = inttoptr i64 %4255 to i32*
  %4259 = load i32, i32* %4258
  %4260 = sext i32 %4259 to i64
  store i64 %4260, i64* %RAX.i291, align 8
  store %struct.Memory* %loadMem_420887, %struct.Memory** %MEMORY
  %loadMem_42088b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4262 = getelementptr inbounds %struct.GPR, %struct.GPR* %4261, i32 0, i32 33
  %4263 = getelementptr inbounds %struct.Reg, %struct.Reg* %4262, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %4263 to i64*
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4265 = getelementptr inbounds %struct.GPR, %struct.GPR* %4264, i32 0, i32 1
  %4266 = getelementptr inbounds %struct.Reg, %struct.Reg* %4265, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %4266 to i64*
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 15
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %4269 to i64*
  %4270 = load i64, i64* %RBP.i289
  %4271 = load i64, i64* %RAX.i288
  %4272 = mul i64 %4271, 4
  %4273 = add i64 %4270, -9024
  %4274 = add i64 %4273, %4272
  %4275 = load i64, i64* %PC.i287
  %4276 = add i64 %4275, 8
  store i64 %4276, i64* %PC.i287
  %4277 = inttoptr i64 %4274 to i32*
  %4278 = load i32, i32* %4277
  %4279 = sub i32 %4278, 2
  %4280 = icmp ult i32 %4278, 2
  %4281 = zext i1 %4280 to i8
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4281, i8* %4282, align 1
  %4283 = and i32 %4279, 255
  %4284 = call i32 @llvm.ctpop.i32(i32 %4283)
  %4285 = trunc i32 %4284 to i8
  %4286 = and i8 %4285, 1
  %4287 = xor i8 %4286, 1
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4287, i8* %4288, align 1
  %4289 = xor i32 %4278, 2
  %4290 = xor i32 %4289, %4279
  %4291 = lshr i32 %4290, 4
  %4292 = trunc i32 %4291 to i8
  %4293 = and i8 %4292, 1
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4293, i8* %4294, align 1
  %4295 = icmp eq i32 %4279, 0
  %4296 = zext i1 %4295 to i8
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4296, i8* %4297, align 1
  %4298 = lshr i32 %4279, 31
  %4299 = trunc i32 %4298 to i8
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4299, i8* %4300, align 1
  %4301 = lshr i32 %4278, 31
  %4302 = xor i32 %4298, %4301
  %4303 = add i32 %4302, %4301
  %4304 = icmp eq i32 %4303, 2
  %4305 = zext i1 %4304 to i8
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4305, i8* %4306, align 1
  store %struct.Memory* %loadMem_42088b, %struct.Memory** %MEMORY
  %loadMem_420893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 33
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %4309 to i64*
  %4310 = load i64, i64* %PC.i286
  %4311 = add i64 %4310, 381
  %4312 = load i64, i64* %PC.i286
  %4313 = add i64 %4312, 6
  %4314 = load i64, i64* %PC.i286
  %4315 = add i64 %4314, 6
  store i64 %4315, i64* %PC.i286
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4317 = load i8, i8* %4316, align 1
  %4318 = icmp eq i8 %4317, 0
  %4319 = zext i1 %4318 to i8
  store i8 %4319, i8* %BRANCH_TAKEN, align 1
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4321 = select i1 %4318, i64 %4311, i64 %4313
  store i64 %4321, i64* %4320, align 8
  store %struct.Memory* %loadMem_420893, %struct.Memory** %MEMORY
  %loadBr_420893 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420893 = icmp eq i8 %loadBr_420893, 1
  br i1 %cmpBr_420893, label %block_.L_420a10, label %block_420899

block_420899:                                     ; preds = %block_.L_420887
  %loadMem_420899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4323 = getelementptr inbounds %struct.GPR, %struct.GPR* %4322, i32 0, i32 33
  %4324 = getelementptr inbounds %struct.Reg, %struct.Reg* %4323, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %4324 to i64*
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4326 = getelementptr inbounds %struct.GPR, %struct.GPR* %4325, i32 0, i32 15
  %4327 = getelementptr inbounds %struct.Reg, %struct.Reg* %4326, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %4327 to i64*
  %4328 = load i64, i64* %RBP.i285
  %4329 = sub i64 %4328, 7424
  %4330 = load i64, i64* %PC.i284
  %4331 = add i64 %4330, 10
  store i64 %4331, i64* %PC.i284
  %4332 = inttoptr i64 %4329 to i32*
  store i32 0, i32* %4332
  store %struct.Memory* %loadMem_420899, %struct.Memory** %MEMORY
  br label %block_.L_4208a3

block_.L_4208a3:                                  ; preds = %block_.L_4209c2, %block_420899
  %loadMem_4208a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 33
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %4335 to i64*
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 1
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %4338 to i64*
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 15
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %4341 to i64*
  %4342 = load i64, i64* %RBP.i283
  %4343 = sub i64 %4342, 7424
  %4344 = load i64, i64* %PC.i281
  %4345 = add i64 %4344, 6
  store i64 %4345, i64* %PC.i281
  %4346 = inttoptr i64 %4343 to i32*
  %4347 = load i32, i32* %4346
  %4348 = zext i32 %4347 to i64
  store i64 %4348, i64* %RAX.i282, align 8
  store %struct.Memory* %loadMem_4208a3, %struct.Memory** %MEMORY
  %loadMem_4208a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4350 = getelementptr inbounds %struct.GPR, %struct.GPR* %4349, i32 0, i32 33
  %4351 = getelementptr inbounds %struct.Reg, %struct.Reg* %4350, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %4351 to i64*
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4353 = getelementptr inbounds %struct.GPR, %struct.GPR* %4352, i32 0, i32 5
  %4354 = getelementptr inbounds %struct.Reg, %struct.Reg* %4353, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %4354 to i64*
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 15
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %4357 to i64*
  %4358 = load i64, i64* %RBP.i280
  %4359 = sub i64 %4358, 12
  %4360 = load i64, i64* %PC.i278
  %4361 = add i64 %4360, 4
  store i64 %4361, i64* %PC.i278
  %4362 = inttoptr i64 %4359 to i32*
  %4363 = load i32, i32* %4362
  %4364 = sext i32 %4363 to i64
  store i64 %4364, i64* %RCX.i279, align 8
  store %struct.Memory* %loadMem_4208a9, %struct.Memory** %MEMORY
  %loadMem_4208ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 33
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %4367 to i64*
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 1
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %EAX.i276 = bitcast %union.anon* %4370 to i32*
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 5
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %4373 to i64*
  %4374 = load i32, i32* %EAX.i276
  %4375 = zext i32 %4374 to i64
  %4376 = load i64, i64* %RCX.i277
  %4377 = mul i64 %4376, 4
  %4378 = add i64 %4377, 11522848
  %4379 = load i64, i64* %PC.i275
  %4380 = add i64 %4379, 7
  store i64 %4380, i64* %PC.i275
  %4381 = inttoptr i64 %4378 to i32*
  %4382 = load i32, i32* %4381
  %4383 = sub i32 %4374, %4382
  %4384 = icmp ult i32 %4374, %4382
  %4385 = zext i1 %4384 to i8
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4385, i8* %4386, align 1
  %4387 = and i32 %4383, 255
  %4388 = call i32 @llvm.ctpop.i32(i32 %4387)
  %4389 = trunc i32 %4388 to i8
  %4390 = and i8 %4389, 1
  %4391 = xor i8 %4390, 1
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4391, i8* %4392, align 1
  %4393 = xor i32 %4382, %4374
  %4394 = xor i32 %4393, %4383
  %4395 = lshr i32 %4394, 4
  %4396 = trunc i32 %4395 to i8
  %4397 = and i8 %4396, 1
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4397, i8* %4398, align 1
  %4399 = icmp eq i32 %4383, 0
  %4400 = zext i1 %4399 to i8
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4400, i8* %4401, align 1
  %4402 = lshr i32 %4383, 31
  %4403 = trunc i32 %4402 to i8
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4403, i8* %4404, align 1
  %4405 = lshr i32 %4374, 31
  %4406 = lshr i32 %4382, 31
  %4407 = xor i32 %4406, %4405
  %4408 = xor i32 %4402, %4405
  %4409 = add i32 %4408, %4407
  %4410 = icmp eq i32 %4409, 2
  %4411 = zext i1 %4410 to i8
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4411, i8* %4412, align 1
  store %struct.Memory* %loadMem_4208ad, %struct.Memory** %MEMORY
  %loadMem_4208b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4414 = getelementptr inbounds %struct.GPR, %struct.GPR* %4413, i32 0, i32 33
  %4415 = getelementptr inbounds %struct.Reg, %struct.Reg* %4414, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %4415 to i64*
  %4416 = load i64, i64* %PC.i274
  %4417 = add i64 %4416, 343
  %4418 = load i64, i64* %PC.i274
  %4419 = add i64 %4418, 6
  %4420 = load i64, i64* %PC.i274
  %4421 = add i64 %4420, 6
  store i64 %4421, i64* %PC.i274
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4423 = load i8, i8* %4422, align 1
  %4424 = icmp ne i8 %4423, 0
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4426 = load i8, i8* %4425, align 1
  %4427 = icmp ne i8 %4426, 0
  %4428 = xor i1 %4424, %4427
  %4429 = xor i1 %4428, true
  %4430 = zext i1 %4429 to i8
  store i8 %4430, i8* %BRANCH_TAKEN, align 1
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4432 = select i1 %4428, i64 %4419, i64 %4417
  store i64 %4432, i64* %4431, align 8
  store %struct.Memory* %loadMem_4208b4, %struct.Memory** %MEMORY
  %loadBr_4208b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4208b4 = icmp eq i8 %loadBr_4208b4, 1
  br i1 %cmpBr_4208b4, label %block_.L_420a0b, label %block_4208ba

block_4208ba:                                     ; preds = %block_.L_4208a3
  %loadMem_4208ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 33
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %4435 to i64*
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 1
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %4438 to i64*
  %4439 = load i64, i64* %PC.i272
  %4440 = add i64 %4439, 10
  store i64 %4440, i64* %PC.i272
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i273, align 8
  store %struct.Memory* %loadMem_4208ba, %struct.Memory** %MEMORY
  %loadMem_4208c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4442 = getelementptr inbounds %struct.GPR, %struct.GPR* %4441, i32 0, i32 33
  %4443 = getelementptr inbounds %struct.Reg, %struct.Reg* %4442, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %4443 to i64*
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 5
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %RCX.i271 = bitcast %union.anon* %4446 to i64*
  %4447 = load i64, i64* %PC.i270
  %4448 = add i64 %4447, 10
  store i64 %4448, i64* %PC.i270
  store i64 ptrtoint (%G__0xb4a3e0_type* @G__0xb4a3e0 to i64), i64* %RCX.i271, align 8
  store %struct.Memory* %loadMem_4208c4, %struct.Memory** %MEMORY
  %loadMem_4208ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4450 = getelementptr inbounds %struct.GPR, %struct.GPR* %4449, i32 0, i32 33
  %4451 = getelementptr inbounds %struct.Reg, %struct.Reg* %4450, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %4451 to i64*
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4453 = getelementptr inbounds %struct.GPR, %struct.GPR* %4452, i32 0, i32 7
  %4454 = getelementptr inbounds %struct.Reg, %struct.Reg* %4453, i32 0, i32 0
  %RDX.i268 = bitcast %union.anon* %4454 to i64*
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4456 = getelementptr inbounds %struct.GPR, %struct.GPR* %4455, i32 0, i32 15
  %4457 = getelementptr inbounds %struct.Reg, %struct.Reg* %4456, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %4457 to i64*
  %4458 = load i64, i64* %RBP.i269
  %4459 = sub i64 %4458, 12
  %4460 = load i64, i64* %PC.i267
  %4461 = add i64 %4460, 4
  store i64 %4461, i64* %PC.i267
  %4462 = inttoptr i64 %4459 to i32*
  %4463 = load i32, i32* %4462
  %4464 = sext i32 %4463 to i64
  store i64 %4464, i64* %RDX.i268, align 8
  store %struct.Memory* %loadMem_4208ce, %struct.Memory** %MEMORY
  %loadMem_4208d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4466 = getelementptr inbounds %struct.GPR, %struct.GPR* %4465, i32 0, i32 33
  %4467 = getelementptr inbounds %struct.Reg, %struct.Reg* %4466, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %4467 to i64*
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4469 = getelementptr inbounds %struct.GPR, %struct.GPR* %4468, i32 0, i32 7
  %4470 = getelementptr inbounds %struct.Reg, %struct.Reg* %4469, i32 0, i32 0
  %RDX.i266 = bitcast %union.anon* %4470 to i64*
  %4471 = load i64, i64* %RDX.i266
  %4472 = load i64, i64* %PC.i265
  %4473 = add i64 %4472, 4
  store i64 %4473, i64* %PC.i265
  %4474 = shl i64 %4471, 3
  %4475 = icmp slt i64 %4474, 0
  %4476 = shl i64 %4474, 1
  store i64 %4476, i64* %RDX.i266, align 8
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4478 = zext i1 %4475 to i8
  store i8 %4478, i8* %4477, align 1
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4480 = trunc i64 %4476 to i32
  %4481 = and i32 %4480, 254
  %4482 = call i32 @llvm.ctpop.i32(i32 %4481)
  %4483 = trunc i32 %4482 to i8
  %4484 = and i8 %4483, 1
  %4485 = xor i8 %4484, 1
  store i8 %4485, i8* %4479, align 1
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4486, align 1
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4488 = icmp eq i64 %4476, 0
  %4489 = zext i1 %4488 to i8
  store i8 %4489, i8* %4487, align 1
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4491 = lshr i64 %4476, 63
  %4492 = trunc i64 %4491 to i8
  store i8 %4492, i8* %4490, align 1
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4493, align 1
  store %struct.Memory* %loadMem_4208d2, %struct.Memory** %MEMORY
  %loadMem_4208d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 33
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %4496 to i64*
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 5
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %RCX.i263 = bitcast %union.anon* %4499 to i64*
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4501 = getelementptr inbounds %struct.GPR, %struct.GPR* %4500, i32 0, i32 7
  %4502 = getelementptr inbounds %struct.Reg, %struct.Reg* %4501, i32 0, i32 0
  %RDX.i264 = bitcast %union.anon* %4502 to i64*
  %4503 = load i64, i64* %RCX.i263
  %4504 = load i64, i64* %RDX.i264
  %4505 = load i64, i64* %PC.i262
  %4506 = add i64 %4505, 3
  store i64 %4506, i64* %PC.i262
  %4507 = add i64 %4504, %4503
  store i64 %4507, i64* %RCX.i263, align 8
  %4508 = icmp ult i64 %4507, %4503
  %4509 = icmp ult i64 %4507, %4504
  %4510 = or i1 %4508, %4509
  %4511 = zext i1 %4510 to i8
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4511, i8* %4512, align 1
  %4513 = trunc i64 %4507 to i32
  %4514 = and i32 %4513, 255
  %4515 = call i32 @llvm.ctpop.i32(i32 %4514)
  %4516 = trunc i32 %4515 to i8
  %4517 = and i8 %4516, 1
  %4518 = xor i8 %4517, 1
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4518, i8* %4519, align 1
  %4520 = xor i64 %4504, %4503
  %4521 = xor i64 %4520, %4507
  %4522 = lshr i64 %4521, 4
  %4523 = trunc i64 %4522 to i8
  %4524 = and i8 %4523, 1
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4524, i8* %4525, align 1
  %4526 = icmp eq i64 %4507, 0
  %4527 = zext i1 %4526 to i8
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4527, i8* %4528, align 1
  %4529 = lshr i64 %4507, 63
  %4530 = trunc i64 %4529 to i8
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4530, i8* %4531, align 1
  %4532 = lshr i64 %4503, 63
  %4533 = lshr i64 %4504, 63
  %4534 = xor i64 %4529, %4532
  %4535 = xor i64 %4529, %4533
  %4536 = add i64 %4534, %4535
  %4537 = icmp eq i64 %4536, 2
  %4538 = zext i1 %4537 to i8
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4538, i8* %4539, align 1
  store %struct.Memory* %loadMem_4208d6, %struct.Memory** %MEMORY
  %loadMem_4208d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4541 = getelementptr inbounds %struct.GPR, %struct.GPR* %4540, i32 0, i32 33
  %4542 = getelementptr inbounds %struct.Reg, %struct.Reg* %4541, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %4542 to i64*
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4544 = getelementptr inbounds %struct.GPR, %struct.GPR* %4543, i32 0, i32 7
  %4545 = getelementptr inbounds %struct.Reg, %struct.Reg* %4544, i32 0, i32 0
  %RDX.i260 = bitcast %union.anon* %4545 to i64*
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 15
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %4548 to i64*
  %4549 = load i64, i64* %RBP.i261
  %4550 = sub i64 %4549, 7424
  %4551 = load i64, i64* %PC.i259
  %4552 = add i64 %4551, 7
  store i64 %4552, i64* %PC.i259
  %4553 = inttoptr i64 %4550 to i32*
  %4554 = load i32, i32* %4553
  %4555 = sext i32 %4554 to i64
  store i64 %4555, i64* %RDX.i260, align 8
  store %struct.Memory* %loadMem_4208d9, %struct.Memory** %MEMORY
  %loadMem_4208e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4557 = getelementptr inbounds %struct.GPR, %struct.GPR* %4556, i32 0, i32 33
  %4558 = getelementptr inbounds %struct.Reg, %struct.Reg* %4557, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %4558 to i64*
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4560 = getelementptr inbounds %struct.GPR, %struct.GPR* %4559, i32 0, i32 5
  %4561 = getelementptr inbounds %struct.Reg, %struct.Reg* %4560, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %4561 to i64*
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4563 = getelementptr inbounds %struct.GPR, %struct.GPR* %4562, i32 0, i32 7
  %4564 = getelementptr inbounds %struct.Reg, %struct.Reg* %4563, i32 0, i32 0
  %RDX.i257 = bitcast %union.anon* %4564 to i64*
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4566 = getelementptr inbounds %struct.GPR, %struct.GPR* %4565, i32 0, i32 9
  %4567 = getelementptr inbounds %struct.Reg, %struct.Reg* %4566, i32 0, i32 0
  %RSI.i258 = bitcast %union.anon* %4567 to i64*
  %4568 = load i64, i64* %RCX.i256
  %4569 = load i64, i64* %RDX.i257
  %4570 = mul i64 %4569, 4
  %4571 = add i64 %4570, %4568
  %4572 = load i64, i64* %PC.i255
  %4573 = add i64 %4572, 3
  store i64 %4573, i64* %PC.i255
  %4574 = inttoptr i64 %4571 to i32*
  %4575 = load i32, i32* %4574
  %4576 = zext i32 %4575 to i64
  store i64 %4576, i64* %RSI.i258, align 8
  store %struct.Memory* %loadMem_4208e0, %struct.Memory** %MEMORY
  %loadMem_4208e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4578 = getelementptr inbounds %struct.GPR, %struct.GPR* %4577, i32 0, i32 33
  %4579 = getelementptr inbounds %struct.Reg, %struct.Reg* %4578, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %4579 to i64*
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4581 = getelementptr inbounds %struct.GPR, %struct.GPR* %4580, i32 0, i32 9
  %4582 = getelementptr inbounds %struct.Reg, %struct.Reg* %4581, i32 0, i32 0
  %ESI.i253 = bitcast %union.anon* %4582 to i32*
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 15
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %4585 to i64*
  %4586 = load i64, i64* %RBP.i254
  %4587 = sub i64 %4586, 13840
  %4588 = load i32, i32* %ESI.i253
  %4589 = zext i32 %4588 to i64
  %4590 = load i64, i64* %PC.i252
  %4591 = add i64 %4590, 6
  store i64 %4591, i64* %PC.i252
  %4592 = inttoptr i64 %4587 to i32*
  store i32 %4588, i32* %4592
  store %struct.Memory* %loadMem_4208e3, %struct.Memory** %MEMORY
  %loadMem_4208e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4594 = getelementptr inbounds %struct.GPR, %struct.GPR* %4593, i32 0, i32 33
  %4595 = getelementptr inbounds %struct.Reg, %struct.Reg* %4594, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %4595 to i64*
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4597 = getelementptr inbounds %struct.GPR, %struct.GPR* %4596, i32 0, i32 5
  %4598 = getelementptr inbounds %struct.Reg, %struct.Reg* %4597, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %4598 to i64*
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4600 = getelementptr inbounds %struct.GPR, %struct.GPR* %4599, i32 0, i32 15
  %4601 = getelementptr inbounds %struct.Reg, %struct.Reg* %4600, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %4601 to i64*
  %4602 = load i64, i64* %RBP.i251
  %4603 = sub i64 %4602, 13840
  %4604 = load i64, i64* %PC.i249
  %4605 = add i64 %4604, 7
  store i64 %4605, i64* %PC.i249
  %4606 = inttoptr i64 %4603 to i32*
  %4607 = load i32, i32* %4606
  %4608 = sext i32 %4607 to i64
  store i64 %4608, i64* %RCX.i250, align 8
  store %struct.Memory* %loadMem_4208e9, %struct.Memory** %MEMORY
  %loadMem_4208f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4610 = getelementptr inbounds %struct.GPR, %struct.GPR* %4609, i32 0, i32 33
  %4611 = getelementptr inbounds %struct.Reg, %struct.Reg* %4610, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %4611 to i64*
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4613 = getelementptr inbounds %struct.GPR, %struct.GPR* %4612, i32 0, i32 5
  %4614 = getelementptr inbounds %struct.Reg, %struct.Reg* %4613, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %4614 to i64*
  %4615 = load i64, i64* %RCX.i248
  %4616 = load i64, i64* %PC.i247
  %4617 = add i64 %4616, 4
  store i64 %4617, i64* %PC.i247
  %4618 = sext i64 %4615 to i128
  %4619 = and i128 %4618, -18446744073709551616
  %4620 = zext i64 %4615 to i128
  %4621 = or i128 %4619, %4620
  %4622 = mul i128 76, %4621
  %4623 = trunc i128 %4622 to i64
  store i64 %4623, i64* %RCX.i248, align 8
  %4624 = sext i64 %4623 to i128
  %4625 = icmp ne i128 %4624, %4622
  %4626 = zext i1 %4625 to i8
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4626, i8* %4627, align 1
  %4628 = trunc i128 %4622 to i32
  %4629 = and i32 %4628, 255
  %4630 = call i32 @llvm.ctpop.i32(i32 %4629)
  %4631 = trunc i32 %4630 to i8
  %4632 = and i8 %4631, 1
  %4633 = xor i8 %4632, 1
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4633, i8* %4634, align 1
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4635, align 1
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4636, align 1
  %4637 = lshr i64 %4623, 63
  %4638 = trunc i64 %4637 to i8
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4638, i8* %4639, align 1
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4626, i8* %4640, align 1
  store %struct.Memory* %loadMem_4208f0, %struct.Memory** %MEMORY
  %loadMem_4208f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 33
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %4643 to i64*
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 1
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %4646 to i64*
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 5
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %4649 to i64*
  %4650 = load i64, i64* %RAX.i245
  %4651 = load i64, i64* %RCX.i246
  %4652 = load i64, i64* %PC.i244
  %4653 = add i64 %4652, 3
  store i64 %4653, i64* %PC.i244
  %4654 = add i64 %4651, %4650
  store i64 %4654, i64* %RAX.i245, align 8
  %4655 = icmp ult i64 %4654, %4650
  %4656 = icmp ult i64 %4654, %4651
  %4657 = or i1 %4655, %4656
  %4658 = zext i1 %4657 to i8
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4658, i8* %4659, align 1
  %4660 = trunc i64 %4654 to i32
  %4661 = and i32 %4660, 255
  %4662 = call i32 @llvm.ctpop.i32(i32 %4661)
  %4663 = trunc i32 %4662 to i8
  %4664 = and i8 %4663, 1
  %4665 = xor i8 %4664, 1
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4665, i8* %4666, align 1
  %4667 = xor i64 %4651, %4650
  %4668 = xor i64 %4667, %4654
  %4669 = lshr i64 %4668, 4
  %4670 = trunc i64 %4669 to i8
  %4671 = and i8 %4670, 1
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4671, i8* %4672, align 1
  %4673 = icmp eq i64 %4654, 0
  %4674 = zext i1 %4673 to i8
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4674, i8* %4675, align 1
  %4676 = lshr i64 %4654, 63
  %4677 = trunc i64 %4676 to i8
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4677, i8* %4678, align 1
  %4679 = lshr i64 %4650, 63
  %4680 = lshr i64 %4651, 63
  %4681 = xor i64 %4676, %4679
  %4682 = xor i64 %4676, %4680
  %4683 = add i64 %4681, %4682
  %4684 = icmp eq i64 %4683, 2
  %4685 = zext i1 %4684 to i8
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4685, i8* %4686, align 1
  store %struct.Memory* %loadMem_4208f4, %struct.Memory** %MEMORY
  %loadMem_4208f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4688 = getelementptr inbounds %struct.GPR, %struct.GPR* %4687, i32 0, i32 33
  %4689 = getelementptr inbounds %struct.Reg, %struct.Reg* %4688, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %4689 to i64*
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 1
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %4692 to i64*
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 9
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4695 to i64*
  %4696 = load i64, i64* %RAX.i243
  %4697 = add i64 %4696, 8
  %4698 = load i64, i64* %PC.i242
  %4699 = add i64 %4698, 3
  store i64 %4699, i64* %PC.i242
  %4700 = inttoptr i64 %4697 to i32*
  %4701 = load i32, i32* %4700
  %4702 = zext i32 %4701 to i64
  store i64 %4702, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4208f7, %struct.Memory** %MEMORY
  %loadMem_4208fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4704 = getelementptr inbounds %struct.GPR, %struct.GPR* %4703, i32 0, i32 33
  %4705 = getelementptr inbounds %struct.Reg, %struct.Reg* %4704, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %4705 to i64*
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4707 = getelementptr inbounds %struct.GPR, %struct.GPR* %4706, i32 0, i32 9
  %4708 = getelementptr inbounds %struct.Reg, %struct.Reg* %4707, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %4708 to i32*
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4710 = getelementptr inbounds %struct.GPR, %struct.GPR* %4709, i32 0, i32 15
  %4711 = getelementptr inbounds %struct.Reg, %struct.Reg* %4710, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %4711 to i64*
  %4712 = load i64, i64* %RBP.i241
  %4713 = sub i64 %4712, 13844
  %4714 = load i32, i32* %ESI.i
  %4715 = zext i32 %4714 to i64
  %4716 = load i64, i64* %PC.i240
  %4717 = add i64 %4716, 6
  store i64 %4717, i64* %PC.i240
  %4718 = inttoptr i64 %4713 to i32*
  store i32 %4714, i32* %4718
  store %struct.Memory* %loadMem_4208fa, %struct.Memory** %MEMORY
  %loadMem_420900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4720 = getelementptr inbounds %struct.GPR, %struct.GPR* %4719, i32 0, i32 33
  %4721 = getelementptr inbounds %struct.Reg, %struct.Reg* %4720, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %4721 to i64*
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4723 = getelementptr inbounds %struct.GPR, %struct.GPR* %4722, i32 0, i32 1
  %4724 = getelementptr inbounds %struct.Reg, %struct.Reg* %4723, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %4724 to i64*
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 15
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %4727 to i64*
  %4728 = load i64, i64* %RBP.i239
  %4729 = sub i64 %4728, 12
  %4730 = load i64, i64* %PC.i237
  %4731 = add i64 %4730, 4
  store i64 %4731, i64* %PC.i237
  %4732 = inttoptr i64 %4729 to i32*
  %4733 = load i32, i32* %4732
  %4734 = sext i32 %4733 to i64
  store i64 %4734, i64* %RAX.i238, align 8
  store %struct.Memory* %loadMem_420900, %struct.Memory** %MEMORY
  %loadMem_420904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4736 = getelementptr inbounds %struct.GPR, %struct.GPR* %4735, i32 0, i32 33
  %4737 = getelementptr inbounds %struct.Reg, %struct.Reg* %4736, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4737 to i64*
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 1
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %4740 to i64*
  %4741 = load i64, i64* %RAX.i236
  %4742 = mul i64 %4741, 4
  %4743 = add i64 %4742, 11522848
  %4744 = load i64, i64* %PC.i235
  %4745 = add i64 %4744, 8
  store i64 %4745, i64* %PC.i235
  %4746 = inttoptr i64 %4743 to i32*
  %4747 = load i32, i32* %4746
  %4748 = sub i32 %4747, 5
  %4749 = icmp ult i32 %4747, 5
  %4750 = zext i1 %4749 to i8
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4750, i8* %4751, align 1
  %4752 = and i32 %4748, 255
  %4753 = call i32 @llvm.ctpop.i32(i32 %4752)
  %4754 = trunc i32 %4753 to i8
  %4755 = and i8 %4754, 1
  %4756 = xor i8 %4755, 1
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4756, i8* %4757, align 1
  %4758 = xor i32 %4747, 5
  %4759 = xor i32 %4758, %4748
  %4760 = lshr i32 %4759, 4
  %4761 = trunc i32 %4760 to i8
  %4762 = and i8 %4761, 1
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4762, i8* %4763, align 1
  %4764 = icmp eq i32 %4748, 0
  %4765 = zext i1 %4764 to i8
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4765, i8* %4766, align 1
  %4767 = lshr i32 %4748, 31
  %4768 = trunc i32 %4767 to i8
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4768, i8* %4769, align 1
  %4770 = lshr i32 %4747, 31
  %4771 = xor i32 %4767, %4770
  %4772 = add i32 %4771, %4770
  %4773 = icmp eq i32 %4772, 2
  %4774 = zext i1 %4773 to i8
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4774, i8* %4775, align 1
  store %struct.Memory* %loadMem_420904, %struct.Memory** %MEMORY
  %loadMem_42090c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4777 = getelementptr inbounds %struct.GPR, %struct.GPR* %4776, i32 0, i32 33
  %4778 = getelementptr inbounds %struct.Reg, %struct.Reg* %4777, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %4778 to i64*
  %4779 = load i64, i64* %PC.i234
  %4780 = add i64 %4779, 28
  %4781 = load i64, i64* %PC.i234
  %4782 = add i64 %4781, 6
  %4783 = load i64, i64* %PC.i234
  %4784 = add i64 %4783, 6
  store i64 %4784, i64* %PC.i234
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4786 = load i8, i8* %4785, align 1
  %4787 = icmp ne i8 %4786, 0
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4789 = load i8, i8* %4788, align 1
  %4790 = icmp ne i8 %4789, 0
  %4791 = xor i1 %4787, %4790
  %4792 = xor i1 %4791, true
  %4793 = zext i1 %4792 to i8
  store i8 %4793, i8* %BRANCH_TAKEN, align 1
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4795 = select i1 %4791, i64 %4782, i64 %4780
  store i64 %4795, i64* %4794, align 8
  store %struct.Memory* %loadMem_42090c, %struct.Memory** %MEMORY
  %loadBr_42090c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42090c = icmp eq i8 %loadBr_42090c, 1
  br i1 %cmpBr_42090c, label %block_.L_420928, label %block_420912

block_420912:                                     ; preds = %block_4208ba
  %loadMem_420912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4797 = getelementptr inbounds %struct.GPR, %struct.GPR* %4796, i32 0, i32 33
  %4798 = getelementptr inbounds %struct.Reg, %struct.Reg* %4797, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %4798 to i64*
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 1
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %4801 to i64*
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 15
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %4804 to i64*
  %4805 = load i64, i64* %RBP.i233
  %4806 = sub i64 %4805, 12
  %4807 = load i64, i64* %PC.i231
  %4808 = add i64 %4807, 4
  store i64 %4808, i64* %PC.i231
  %4809 = inttoptr i64 %4806 to i32*
  %4810 = load i32, i32* %4809
  %4811 = sext i32 %4810 to i64
  store i64 %4811, i64* %RAX.i232, align 8
  store %struct.Memory* %loadMem_420912, %struct.Memory** %MEMORY
  %loadMem_420916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4813 = getelementptr inbounds %struct.GPR, %struct.GPR* %4812, i32 0, i32 33
  %4814 = getelementptr inbounds %struct.Reg, %struct.Reg* %4813, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %4814 to i64*
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4816 = getelementptr inbounds %struct.GPR, %struct.GPR* %4815, i32 0, i32 1
  %4817 = getelementptr inbounds %struct.Reg, %struct.Reg* %4816, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %4817 to i64*
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 5
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %RCX.i230 = bitcast %union.anon* %4820 to i64*
  %4821 = load i64, i64* %RAX.i229
  %4822 = mul i64 %4821, 4
  %4823 = add i64 %4822, 11522848
  %4824 = load i64, i64* %PC.i228
  %4825 = add i64 %4824, 7
  store i64 %4825, i64* %PC.i228
  %4826 = inttoptr i64 %4823 to i32*
  %4827 = load i32, i32* %4826
  %4828 = zext i32 %4827 to i64
  store i64 %4828, i64* %RCX.i230, align 8
  store %struct.Memory* %loadMem_420916, %struct.Memory** %MEMORY
  %loadMem_42091d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 33
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %4831 to i64*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 5
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4834 to i32*
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4836 = getelementptr inbounds %struct.GPR, %struct.GPR* %4835, i32 0, i32 15
  %4837 = getelementptr inbounds %struct.Reg, %struct.Reg* %4836, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %4837 to i64*
  %4838 = load i64, i64* %RBP.i227
  %4839 = sub i64 %4838, 13876
  %4840 = load i32, i32* %ECX.i
  %4841 = zext i32 %4840 to i64
  %4842 = load i64, i64* %PC.i226
  %4843 = add i64 %4842, 6
  store i64 %4843, i64* %PC.i226
  %4844 = inttoptr i64 %4839 to i32*
  store i32 %4840, i32* %4844
  store %struct.Memory* %loadMem_42091d, %struct.Memory** %MEMORY
  %loadMem_420923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 33
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %4847 to i64*
  %4848 = load i64, i64* %PC.i225
  %4849 = add i64 %4848, 21
  %4850 = load i64, i64* %PC.i225
  %4851 = add i64 %4850, 5
  store i64 %4851, i64* %PC.i225
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4849, i64* %4852, align 8
  store %struct.Memory* %loadMem_420923, %struct.Memory** %MEMORY
  br label %block_.L_420938

block_.L_420928:                                  ; preds = %block_4208ba
  %loadMem_420928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4854 = getelementptr inbounds %struct.GPR, %struct.GPR* %4853, i32 0, i32 33
  %4855 = getelementptr inbounds %struct.Reg, %struct.Reg* %4854, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %4855 to i64*
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4857 = getelementptr inbounds %struct.GPR, %struct.GPR* %4856, i32 0, i32 1
  %4858 = getelementptr inbounds %struct.Reg, %struct.Reg* %4857, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %4858 to i64*
  %4859 = load i64, i64* %PC.i223
  %4860 = add i64 %4859, 5
  store i64 %4860, i64* %PC.i223
  store i64 5, i64* %RAX.i224, align 8
  store %struct.Memory* %loadMem_420928, %struct.Memory** %MEMORY
  %loadMem_42092d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 33
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %4863 to i64*
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 1
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %EAX.i221 = bitcast %union.anon* %4866 to i32*
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4868 = getelementptr inbounds %struct.GPR, %struct.GPR* %4867, i32 0, i32 15
  %4869 = getelementptr inbounds %struct.Reg, %struct.Reg* %4868, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %4869 to i64*
  %4870 = load i64, i64* %RBP.i222
  %4871 = sub i64 %4870, 13876
  %4872 = load i32, i32* %EAX.i221
  %4873 = zext i32 %4872 to i64
  %4874 = load i64, i64* %PC.i220
  %4875 = add i64 %4874, 6
  store i64 %4875, i64* %PC.i220
  %4876 = inttoptr i64 %4871 to i32*
  store i32 %4872, i32* %4876
  store %struct.Memory* %loadMem_42092d, %struct.Memory** %MEMORY
  %loadMem_420933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 33
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %4879 to i64*
  %4880 = load i64, i64* %PC.i219
  %4881 = add i64 %4880, 5
  %4882 = load i64, i64* %PC.i219
  %4883 = add i64 %4882, 5
  store i64 %4883, i64* %PC.i219
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4881, i64* %4884, align 8
  store %struct.Memory* %loadMem_420933, %struct.Memory** %MEMORY
  br label %block_.L_420938

block_.L_420938:                                  ; preds = %block_.L_420928, %block_420912
  %loadMem_420938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4886 = getelementptr inbounds %struct.GPR, %struct.GPR* %4885, i32 0, i32 33
  %4887 = getelementptr inbounds %struct.Reg, %struct.Reg* %4886, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %4887 to i64*
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4889 = getelementptr inbounds %struct.GPR, %struct.GPR* %4888, i32 0, i32 1
  %4890 = getelementptr inbounds %struct.Reg, %struct.Reg* %4889, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %4890 to i64*
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4892 = getelementptr inbounds %struct.GPR, %struct.GPR* %4891, i32 0, i32 15
  %4893 = getelementptr inbounds %struct.Reg, %struct.Reg* %4892, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %4893 to i64*
  %4894 = load i64, i64* %RBP.i218
  %4895 = sub i64 %4894, 13876
  %4896 = load i64, i64* %PC.i216
  %4897 = add i64 %4896, 6
  store i64 %4897, i64* %PC.i216
  %4898 = inttoptr i64 %4895 to i32*
  %4899 = load i32, i32* %4898
  %4900 = zext i32 %4899 to i64
  store i64 %4900, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_420938, %struct.Memory** %MEMORY
  %loadMem_42093e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4902 = getelementptr inbounds %struct.GPR, %struct.GPR* %4901, i32 0, i32 33
  %4903 = getelementptr inbounds %struct.Reg, %struct.Reg* %4902, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %4903 to i64*
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4905 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4904, i64 0, i64 0
  %YMM0.i215 = bitcast %union.VectorReg* %4905 to %"class.std::bitset"*
  %4906 = bitcast %"class.std::bitset"* %YMM0.i215 to i8*
  %4907 = load i64, i64* %PC.i214
  %4908 = add i64 %4907, ptrtoint (%G_0xc261a__rip__type* @G_0xc261a__rip_ to i64)
  %4909 = load i64, i64* %PC.i214
  %4910 = add i64 %4909, 8
  store i64 %4910, i64* %PC.i214
  %4911 = inttoptr i64 %4908 to double*
  %4912 = load double, double* %4911
  %4913 = bitcast i8* %4906 to double*
  store double %4912, double* %4913, align 1
  %4914 = getelementptr inbounds i8, i8* %4906, i64 8
  %4915 = bitcast i8* %4914 to double*
  store double 0.000000e+00, double* %4915, align 1
  store %struct.Memory* %loadMem_42093e, %struct.Memory** %MEMORY
  %loadMem_420946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4917 = getelementptr inbounds %struct.GPR, %struct.GPR* %4916, i32 0, i32 33
  %4918 = getelementptr inbounds %struct.Reg, %struct.Reg* %4917, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %4918 to i64*
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 1
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %EAX.i212 = bitcast %union.anon* %4921 to i32*
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 15
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %4924 to i64*
  %4925 = load i64, i64* %RBP.i213
  %4926 = sub i64 %4925, 13848
  %4927 = load i32, i32* %EAX.i212
  %4928 = zext i32 %4927 to i64
  %4929 = load i64, i64* %PC.i211
  %4930 = add i64 %4929, 6
  store i64 %4930, i64* %PC.i211
  %4931 = inttoptr i64 %4926 to i32*
  store i32 %4927, i32* %4931
  store %struct.Memory* %loadMem_420946, %struct.Memory** %MEMORY
  %loadMem_42094c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4933 = getelementptr inbounds %struct.GPR, %struct.GPR* %4932, i32 0, i32 33
  %4934 = getelementptr inbounds %struct.Reg, %struct.Reg* %4933, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %4934 to i64*
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4936 = getelementptr inbounds %struct.GPR, %struct.GPR* %4935, i32 0, i32 15
  %4937 = getelementptr inbounds %struct.Reg, %struct.Reg* %4936, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %4937 to i64*
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4939 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4938, i64 0, i64 1
  %YMM1.i210 = bitcast %union.VectorReg* %4939 to %"class.std::bitset"*
  %4940 = bitcast %"class.std::bitset"* %YMM1.i210 to i8*
  %4941 = load i64, i64* %RBP.i209
  %4942 = sub i64 %4941, 13848
  %4943 = load i64, i64* %PC.i208
  %4944 = add i64 %4943, 8
  store i64 %4944, i64* %PC.i208
  %4945 = inttoptr i64 %4942 to i32*
  %4946 = load i32, i32* %4945
  %4947 = sitofp i32 %4946 to double
  %4948 = bitcast i8* %4940 to double*
  store double %4947, double* %4948, align 1
  store %struct.Memory* %loadMem_42094c, %struct.Memory** %MEMORY
  %loadMem_420954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4950 = getelementptr inbounds %struct.GPR, %struct.GPR* %4949, i32 0, i32 33
  %4951 = getelementptr inbounds %struct.Reg, %struct.Reg* %4950, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %4951 to i64*
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4953 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4952, i64 0, i64 2
  %YMM2.i206 = bitcast %union.VectorReg* %4953 to %"class.std::bitset"*
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4955 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4954, i64 0, i64 0
  %XMM0.i207 = bitcast %union.VectorReg* %4955 to %union.vec128_t*
  %4956 = bitcast %"class.std::bitset"* %YMM2.i206 to i8*
  %4957 = bitcast %union.vec128_t* %XMM0.i207 to i8*
  %4958 = load i64, i64* %PC.i205
  %4959 = add i64 %4958, 3
  store i64 %4959, i64* %PC.i205
  %4960 = bitcast i8* %4957 to <2 x i32>*
  %4961 = load <2 x i32>, <2 x i32>* %4960, align 1
  %4962 = getelementptr inbounds i8, i8* %4957, i64 8
  %4963 = bitcast i8* %4962 to <2 x i32>*
  %4964 = load <2 x i32>, <2 x i32>* %4963, align 1
  %4965 = extractelement <2 x i32> %4961, i32 0
  %4966 = bitcast i8* %4956 to i32*
  store i32 %4965, i32* %4966, align 1
  %4967 = extractelement <2 x i32> %4961, i32 1
  %4968 = getelementptr inbounds i8, i8* %4956, i64 4
  %4969 = bitcast i8* %4968 to i32*
  store i32 %4967, i32* %4969, align 1
  %4970 = extractelement <2 x i32> %4964, i32 0
  %4971 = getelementptr inbounds i8, i8* %4956, i64 8
  %4972 = bitcast i8* %4971 to i32*
  store i32 %4970, i32* %4972, align 1
  %4973 = extractelement <2 x i32> %4964, i32 1
  %4974 = getelementptr inbounds i8, i8* %4956, i64 12
  %4975 = bitcast i8* %4974 to i32*
  store i32 %4973, i32* %4975, align 1
  store %struct.Memory* %loadMem_420954, %struct.Memory** %MEMORY
  %loadMem_420957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4977 = getelementptr inbounds %struct.GPR, %struct.GPR* %4976, i32 0, i32 33
  %4978 = getelementptr inbounds %struct.Reg, %struct.Reg* %4977, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %4978 to i64*
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4980 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4979, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %4980 to %"class.std::bitset"*
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4982 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4981, i64 0, i64 1
  %XMM1.i204 = bitcast %union.VectorReg* %4982 to %union.vec128_t*
  %4983 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %4984 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %4985 = bitcast %union.vec128_t* %XMM1.i204 to i8*
  %4986 = load i64, i64* %PC.i203
  %4987 = add i64 %4986, 4
  store i64 %4987, i64* %PC.i203
  %4988 = bitcast i8* %4984 to double*
  %4989 = load double, double* %4988, align 1
  %4990 = getelementptr inbounds i8, i8* %4984, i64 8
  %4991 = bitcast i8* %4990 to i64*
  %4992 = load i64, i64* %4991, align 1
  %4993 = bitcast i8* %4985 to double*
  %4994 = load double, double* %4993, align 1
  %4995 = fdiv double %4989, %4994
  %4996 = bitcast i8* %4983 to double*
  store double %4995, double* %4996, align 1
  %4997 = getelementptr inbounds i8, i8* %4983, i64 8
  %4998 = bitcast i8* %4997 to i64*
  store i64 %4992, i64* %4998, align 1
  store %struct.Memory* %loadMem_420957, %struct.Memory** %MEMORY
  %loadMem_42095b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5000 = getelementptr inbounds %struct.GPR, %struct.GPR* %4999, i32 0, i32 33
  %5001 = getelementptr inbounds %struct.Reg, %struct.Reg* %5000, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %5001 to i64*
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5003 = getelementptr inbounds %struct.GPR, %struct.GPR* %5002, i32 0, i32 5
  %5004 = getelementptr inbounds %struct.Reg, %struct.Reg* %5003, i32 0, i32 0
  %RCX.i201 = bitcast %union.anon* %5004 to i64*
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5006 = getelementptr inbounds %struct.GPR, %struct.GPR* %5005, i32 0, i32 15
  %5007 = getelementptr inbounds %struct.Reg, %struct.Reg* %5006, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %5007 to i64*
  %5008 = load i64, i64* %RBP.i202
  %5009 = sub i64 %5008, 13844
  %5010 = load i64, i64* %PC.i200
  %5011 = add i64 %5010, 7
  store i64 %5011, i64* %PC.i200
  %5012 = inttoptr i64 %5009 to i32*
  %5013 = load i32, i32* %5012
  %5014 = sext i32 %5013 to i64
  store i64 %5014, i64* %RCX.i201, align 8
  store %struct.Memory* %loadMem_42095b, %struct.Memory** %MEMORY
  %loadMem_420962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5016 = getelementptr inbounds %struct.GPR, %struct.GPR* %5015, i32 0, i32 33
  %5017 = getelementptr inbounds %struct.Reg, %struct.Reg* %5016, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %5017 to i64*
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5019 = getelementptr inbounds %struct.GPR, %struct.GPR* %5018, i32 0, i32 5
  %5020 = getelementptr inbounds %struct.Reg, %struct.Reg* %5019, i32 0, i32 0
  %RCX.i197 = bitcast %union.anon* %5020 to i64*
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5022 = getelementptr inbounds %struct.GPR, %struct.GPR* %5021, i32 0, i32 15
  %5023 = getelementptr inbounds %struct.Reg, %struct.Reg* %5022, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %5023 to i64*
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5025 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5024, i64 0, i64 1
  %YMM1.i199 = bitcast %union.VectorReg* %5025 to %"class.std::bitset"*
  %5026 = bitcast %"class.std::bitset"* %YMM1.i199 to i8*
  %5027 = load i64, i64* %RBP.i198
  %5028 = load i64, i64* %RCX.i197
  %5029 = mul i64 %5028, 4
  %5030 = add i64 %5027, -12224
  %5031 = add i64 %5030, %5029
  %5032 = load i64, i64* %PC.i196
  %5033 = add i64 %5032, 9
  store i64 %5033, i64* %PC.i196
  %5034 = inttoptr i64 %5031 to float*
  %5035 = load float, float* %5034
  %5036 = fpext float %5035 to double
  %5037 = bitcast i8* %5026 to double*
  store double %5036, double* %5037, align 1
  store %struct.Memory* %loadMem_420962, %struct.Memory** %MEMORY
  %loadMem_42096b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5039 = getelementptr inbounds %struct.GPR, %struct.GPR* %5038, i32 0, i32 33
  %5040 = getelementptr inbounds %struct.Reg, %struct.Reg* %5039, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %5040 to i64*
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5042 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5041, i64 0, i64 1
  %YMM1.i195 = bitcast %union.VectorReg* %5042 to %"class.std::bitset"*
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5044 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5043, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %5044 to %union.vec128_t*
  %5045 = bitcast %"class.std::bitset"* %YMM1.i195 to i8*
  %5046 = bitcast %"class.std::bitset"* %YMM1.i195 to i8*
  %5047 = bitcast %union.vec128_t* %XMM2.i to i8*
  %5048 = load i64, i64* %PC.i194
  %5049 = add i64 %5048, 4
  store i64 %5049, i64* %PC.i194
  %5050 = bitcast i8* %5046 to double*
  %5051 = load double, double* %5050, align 1
  %5052 = getelementptr inbounds i8, i8* %5046, i64 8
  %5053 = bitcast i8* %5052 to i64*
  %5054 = load i64, i64* %5053, align 1
  %5055 = bitcast i8* %5047 to double*
  %5056 = load double, double* %5055, align 1
  %5057 = fadd double %5051, %5056
  %5058 = bitcast i8* %5045 to double*
  store double %5057, double* %5058, align 1
  %5059 = getelementptr inbounds i8, i8* %5045, i64 8
  %5060 = bitcast i8* %5059 to i64*
  store i64 %5054, i64* %5060, align 1
  store %struct.Memory* %loadMem_42096b, %struct.Memory** %MEMORY
  %loadMem_42096f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5062 = getelementptr inbounds %struct.GPR, %struct.GPR* %5061, i32 0, i32 33
  %5063 = getelementptr inbounds %struct.Reg, %struct.Reg* %5062, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %5063 to i64*
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5065 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5064, i64 0, i64 1
  %YMM1.i192 = bitcast %union.VectorReg* %5065 to %"class.std::bitset"*
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5067 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5066, i64 0, i64 1
  %XMM1.i193 = bitcast %union.VectorReg* %5067 to %union.vec128_t*
  %5068 = bitcast %"class.std::bitset"* %YMM1.i192 to i8*
  %5069 = bitcast %union.vec128_t* %XMM1.i193 to i8*
  %5070 = load i64, i64* %PC.i191
  %5071 = add i64 %5070, 4
  store i64 %5071, i64* %PC.i191
  %5072 = bitcast i8* %5068 to <2 x i32>*
  %5073 = load <2 x i32>, <2 x i32>* %5072, align 1
  %5074 = getelementptr inbounds i8, i8* %5068, i64 8
  %5075 = bitcast i8* %5074 to <2 x i32>*
  %5076 = load <2 x i32>, <2 x i32>* %5075, align 1
  %5077 = bitcast i8* %5069 to double*
  %5078 = load double, double* %5077, align 1
  %5079 = fptrunc double %5078 to float
  %5080 = bitcast i8* %5068 to float*
  store float %5079, float* %5080, align 1
  %5081 = extractelement <2 x i32> %5073, i32 1
  %5082 = getelementptr inbounds i8, i8* %5068, i64 4
  %5083 = bitcast i8* %5082 to i32*
  store i32 %5081, i32* %5083, align 1
  %5084 = extractelement <2 x i32> %5076, i32 0
  %5085 = bitcast i8* %5074 to i32*
  store i32 %5084, i32* %5085, align 1
  %5086 = extractelement <2 x i32> %5076, i32 1
  %5087 = getelementptr inbounds i8, i8* %5068, i64 12
  %5088 = bitcast i8* %5087 to i32*
  store i32 %5086, i32* %5088, align 1
  store %struct.Memory* %loadMem_42096f, %struct.Memory** %MEMORY
  %loadMem_420973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5090 = getelementptr inbounds %struct.GPR, %struct.GPR* %5089, i32 0, i32 33
  %5091 = getelementptr inbounds %struct.Reg, %struct.Reg* %5090, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %5091 to i64*
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5093 = getelementptr inbounds %struct.GPR, %struct.GPR* %5092, i32 0, i32 5
  %5094 = getelementptr inbounds %struct.Reg, %struct.Reg* %5093, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %5094 to i64*
  %5095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5096 = getelementptr inbounds %struct.GPR, %struct.GPR* %5095, i32 0, i32 15
  %5097 = getelementptr inbounds %struct.Reg, %struct.Reg* %5096, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %5097 to i64*
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5099 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5098, i64 0, i64 1
  %XMM1.i190 = bitcast %union.VectorReg* %5099 to %union.vec128_t*
  %5100 = load i64, i64* %RBP.i189
  %5101 = load i64, i64* %RCX.i188
  %5102 = mul i64 %5101, 4
  %5103 = add i64 %5100, -12224
  %5104 = add i64 %5103, %5102
  %5105 = bitcast %union.vec128_t* %XMM1.i190 to i8*
  %5106 = load i64, i64* %PC.i187
  %5107 = add i64 %5106, 9
  store i64 %5107, i64* %PC.i187
  %5108 = bitcast i8* %5105 to <2 x float>*
  %5109 = load <2 x float>, <2 x float>* %5108, align 1
  %5110 = extractelement <2 x float> %5109, i32 0
  %5111 = inttoptr i64 %5104 to float*
  store float %5110, float* %5111
  store %struct.Memory* %loadMem_420973, %struct.Memory** %MEMORY
  %loadMem_42097c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5113 = getelementptr inbounds %struct.GPR, %struct.GPR* %5112, i32 0, i32 33
  %5114 = getelementptr inbounds %struct.Reg, %struct.Reg* %5113, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %5114 to i64*
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 5
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %5117 to i64*
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 15
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %5120 to i64*
  %5121 = load i64, i64* %RBP.i186
  %5122 = sub i64 %5121, 12
  %5123 = load i64, i64* %PC.i184
  %5124 = add i64 %5123, 4
  store i64 %5124, i64* %PC.i184
  %5125 = inttoptr i64 %5122 to i32*
  %5126 = load i32, i32* %5125
  %5127 = sext i32 %5126 to i64
  store i64 %5127, i64* %RCX.i185, align 8
  store %struct.Memory* %loadMem_42097c, %struct.Memory** %MEMORY
  %loadMem_420980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5129 = getelementptr inbounds %struct.GPR, %struct.GPR* %5128, i32 0, i32 33
  %5130 = getelementptr inbounds %struct.Reg, %struct.Reg* %5129, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %5130 to i64*
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 5
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %5133 to i64*
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 15
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %5136 to i64*
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5138 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5137, i64 0, i64 1
  %YMM1.i183 = bitcast %union.VectorReg* %5138 to %"class.std::bitset"*
  %5139 = bitcast %"class.std::bitset"* %YMM1.i183 to i8*
  %5140 = load i64, i64* %RBP.i182
  %5141 = load i64, i64* %RCX.i181
  %5142 = mul i64 %5141, 4
  %5143 = add i64 %5140, -10624
  %5144 = add i64 %5143, %5142
  %5145 = load i64, i64* %PC.i180
  %5146 = add i64 %5145, 9
  store i64 %5146, i64* %PC.i180
  %5147 = inttoptr i64 %5144 to float*
  %5148 = load float, float* %5147
  %5149 = fpext float %5148 to double
  %5150 = bitcast i8* %5139 to double*
  store double %5149, double* %5150, align 1
  store %struct.Memory* %loadMem_420980, %struct.Memory** %MEMORY
  %loadMem_420989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 33
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %5153 to i64*
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5155 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5154, i64 0, i64 0
  %XMM0.i175 = bitcast %union.VectorReg* %5155 to %union.vec128_t*
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5157 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5156, i64 0, i64 1
  %XMM1.i176 = bitcast %union.VectorReg* %5157 to %union.vec128_t*
  %5158 = bitcast %union.vec128_t* %XMM0.i175 to i8*
  %5159 = bitcast %union.vec128_t* %XMM1.i176 to i8*
  %5160 = load i64, i64* %PC.i174
  %5161 = add i64 %5160, 4
  store i64 %5161, i64* %PC.i174
  %5162 = bitcast i8* %5158 to double*
  %5163 = load double, double* %5162, align 1
  %5164 = bitcast i8* %5159 to double*
  %5165 = load double, double* %5164, align 1
  %5166 = fcmp uno double %5163, %5165
  br i1 %5166, label %5167, label %5179

; <label>:5167:                                   ; preds = %block_.L_420938
  %5168 = fadd double %5163, %5165
  %5169 = bitcast double %5168 to i64
  %5170 = and i64 %5169, 9221120237041090560
  %5171 = icmp eq i64 %5170, 9218868437227405312
  %5172 = and i64 %5169, 2251799813685247
  %5173 = icmp ne i64 %5172, 0
  %5174 = and i1 %5171, %5173
  br i1 %5174, label %5175, label %5185

; <label>:5175:                                   ; preds = %5167
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5177 = load i64, i64* %5176, align 8
  %5178 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5177, %struct.Memory* %loadMem_420989)
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:5179:                                   ; preds = %block_.L_420938
  %5180 = fcmp ogt double %5163, %5165
  br i1 %5180, label %5185, label %5181

; <label>:5181:                                   ; preds = %5179
  %5182 = fcmp olt double %5163, %5165
  br i1 %5182, label %5185, label %5183

; <label>:5183:                                   ; preds = %5181
  %5184 = fcmp oeq double %5163, %5165
  br i1 %5184, label %5185, label %5192

; <label>:5185:                                   ; preds = %5183, %5181, %5179, %5167
  %5186 = phi i8 [ 0, %5179 ], [ 0, %5181 ], [ 1, %5183 ], [ 1, %5167 ]
  %5187 = phi i8 [ 0, %5179 ], [ 0, %5181 ], [ 0, %5183 ], [ 1, %5167 ]
  %5188 = phi i8 [ 0, %5179 ], [ 1, %5181 ], [ 0, %5183 ], [ 1, %5167 ]
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5186, i8* %5189, align 1
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5187, i8* %5190, align 1
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5188, i8* %5191, align 1
  br label %5192

; <label>:5192:                                   ; preds = %5185, %5183
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5193, align 1
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5194, align 1
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5195, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %5175, %5192
  %5196 = phi %struct.Memory* [ %5178, %5175 ], [ %loadMem_420989, %5192 ]
  store %struct.Memory* %5196, %struct.Memory** %MEMORY
  %loadMem_42098d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5198 = getelementptr inbounds %struct.GPR, %struct.GPR* %5197, i32 0, i32 33
  %5199 = getelementptr inbounds %struct.Reg, %struct.Reg* %5198, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %5199 to i64*
  %5200 = load i64, i64* %PC.i173
  %5201 = add i64 %5200, 32
  %5202 = load i64, i64* %PC.i173
  %5203 = add i64 %5202, 6
  %5204 = load i64, i64* %PC.i173
  %5205 = add i64 %5204, 6
  store i64 %5205, i64* %PC.i173
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5207 = load i8, i8* %5206, align 1
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5209 = load i8, i8* %5208, align 1
  %5210 = or i8 %5209, %5207
  %5211 = icmp ne i8 %5210, 0
  %5212 = zext i1 %5211 to i8
  store i8 %5212, i8* %BRANCH_TAKEN, align 1
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5214 = select i1 %5211, i64 %5201, i64 %5203
  store i64 %5214, i64* %5213, align 8
  store %struct.Memory* %loadMem_42098d, %struct.Memory** %MEMORY
  %loadBr_42098d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42098d = icmp eq i8 %loadBr_42098d, 1
  br i1 %cmpBr_42098d, label %block_.L_4209ad, label %block_420993

block_420993:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_420993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5216 = getelementptr inbounds %struct.GPR, %struct.GPR* %5215, i32 0, i32 33
  %5217 = getelementptr inbounds %struct.Reg, %struct.Reg* %5216, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %5217 to i64*
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5219 = getelementptr inbounds %struct.GPR, %struct.GPR* %5218, i32 0, i32 1
  %5220 = getelementptr inbounds %struct.Reg, %struct.Reg* %5219, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %5220 to i64*
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5222 = getelementptr inbounds %struct.GPR, %struct.GPR* %5221, i32 0, i32 15
  %5223 = getelementptr inbounds %struct.Reg, %struct.Reg* %5222, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %5223 to i64*
  %5224 = load i64, i64* %RBP.i172
  %5225 = sub i64 %5224, 12
  %5226 = load i64, i64* %PC.i170
  %5227 = add i64 %5226, 4
  store i64 %5227, i64* %PC.i170
  %5228 = inttoptr i64 %5225 to i32*
  %5229 = load i32, i32* %5228
  %5230 = sext i32 %5229 to i64
  store i64 %5230, i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_420993, %struct.Memory** %MEMORY
  %loadMem_420997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5232 = getelementptr inbounds %struct.GPR, %struct.GPR* %5231, i32 0, i32 33
  %5233 = getelementptr inbounds %struct.Reg, %struct.Reg* %5232, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %5233 to i64*
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5235 = getelementptr inbounds %struct.GPR, %struct.GPR* %5234, i32 0, i32 1
  %5236 = getelementptr inbounds %struct.Reg, %struct.Reg* %5235, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %5236 to i64*
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5238 = getelementptr inbounds %struct.GPR, %struct.GPR* %5237, i32 0, i32 15
  %5239 = getelementptr inbounds %struct.Reg, %struct.Reg* %5238, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %5239 to i64*
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5241 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5240, i64 0, i64 0
  %YMM0.i169 = bitcast %union.VectorReg* %5241 to %"class.std::bitset"*
  %5242 = bitcast %"class.std::bitset"* %YMM0.i169 to i8*
  %5243 = load i64, i64* %RBP.i168
  %5244 = load i64, i64* %RAX.i167
  %5245 = mul i64 %5244, 4
  %5246 = add i64 %5243, -10624
  %5247 = add i64 %5246, %5245
  %5248 = load i64, i64* %PC.i166
  %5249 = add i64 %5248, 9
  store i64 %5249, i64* %PC.i166
  %5250 = inttoptr i64 %5247 to float*
  %5251 = load float, float* %5250
  %5252 = fpext float %5251 to double
  %5253 = bitcast i8* %5242 to double*
  store double %5252, double* %5253, align 1
  store %struct.Memory* %loadMem_420997, %struct.Memory** %MEMORY
  %loadMem_4209a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5255 = getelementptr inbounds %struct.GPR, %struct.GPR* %5254, i32 0, i32 33
  %5256 = getelementptr inbounds %struct.Reg, %struct.Reg* %5255, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %5256 to i64*
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5258 = getelementptr inbounds %struct.GPR, %struct.GPR* %5257, i32 0, i32 15
  %5259 = getelementptr inbounds %struct.Reg, %struct.Reg* %5258, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %5259 to i64*
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5260, i64 0, i64 0
  %XMM0.i165 = bitcast %union.VectorReg* %5261 to %union.vec128_t*
  %5262 = load i64, i64* %RBP.i164
  %5263 = sub i64 %5262, 13888
  %5264 = bitcast %union.vec128_t* %XMM0.i165 to i8*
  %5265 = load i64, i64* %PC.i163
  %5266 = add i64 %5265, 8
  store i64 %5266, i64* %PC.i163
  %5267 = bitcast i8* %5264 to double*
  %5268 = load double, double* %5267, align 1
  %5269 = inttoptr i64 %5263 to double*
  store double %5268, double* %5269
  store %struct.Memory* %loadMem_4209a0, %struct.Memory** %MEMORY
  %loadMem_4209a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 33
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %5272 to i64*
  %5273 = load i64, i64* %PC.i162
  %5274 = add i64 %5273, 26
  %5275 = load i64, i64* %PC.i162
  %5276 = add i64 %5275, 5
  store i64 %5276, i64* %PC.i162
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5274, i64* %5277, align 8
  store %struct.Memory* %loadMem_4209a8, %struct.Memory** %MEMORY
  br label %block_.L_4209c2

block_.L_4209ad:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_4209ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5279 = getelementptr inbounds %struct.GPR, %struct.GPR* %5278, i32 0, i32 33
  %5280 = getelementptr inbounds %struct.Reg, %struct.Reg* %5279, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %5280 to i64*
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5282 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5281, i64 0, i64 0
  %YMM0.i161 = bitcast %union.VectorReg* %5282 to %"class.std::bitset"*
  %5283 = bitcast %"class.std::bitset"* %YMM0.i161 to i8*
  %5284 = load i64, i64* %PC.i160
  %5285 = add i64 %5284, ptrtoint (%G_0xc25ab__rip__type* @G_0xc25ab__rip_ to i64)
  %5286 = load i64, i64* %PC.i160
  %5287 = add i64 %5286, 8
  store i64 %5287, i64* %PC.i160
  %5288 = inttoptr i64 %5285 to double*
  %5289 = load double, double* %5288
  %5290 = bitcast i8* %5283 to double*
  store double %5289, double* %5290, align 1
  %5291 = getelementptr inbounds i8, i8* %5283, i64 8
  %5292 = bitcast i8* %5291 to double*
  store double 0.000000e+00, double* %5292, align 1
  store %struct.Memory* %loadMem_4209ad, %struct.Memory** %MEMORY
  %loadMem_4209b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5294 = getelementptr inbounds %struct.GPR, %struct.GPR* %5293, i32 0, i32 33
  %5295 = getelementptr inbounds %struct.Reg, %struct.Reg* %5294, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %5295 to i64*
  %5296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5297 = getelementptr inbounds %struct.GPR, %struct.GPR* %5296, i32 0, i32 15
  %5298 = getelementptr inbounds %struct.Reg, %struct.Reg* %5297, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %5298 to i64*
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5300 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5299, i64 0, i64 0
  %XMM0.i159 = bitcast %union.VectorReg* %5300 to %union.vec128_t*
  %5301 = load i64, i64* %RBP.i158
  %5302 = sub i64 %5301, 13888
  %5303 = bitcast %union.vec128_t* %XMM0.i159 to i8*
  %5304 = load i64, i64* %PC.i157
  %5305 = add i64 %5304, 8
  store i64 %5305, i64* %PC.i157
  %5306 = bitcast i8* %5303 to double*
  %5307 = load double, double* %5306, align 1
  %5308 = inttoptr i64 %5302 to double*
  store double %5307, double* %5308
  store %struct.Memory* %loadMem_4209b5, %struct.Memory** %MEMORY
  %loadMem_4209bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5310 = getelementptr inbounds %struct.GPR, %struct.GPR* %5309, i32 0, i32 33
  %5311 = getelementptr inbounds %struct.Reg, %struct.Reg* %5310, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %5311 to i64*
  %5312 = load i64, i64* %PC.i156
  %5313 = add i64 %5312, 5
  %5314 = load i64, i64* %PC.i156
  %5315 = add i64 %5314, 5
  store i64 %5315, i64* %PC.i156
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5313, i64* %5316, align 8
  store %struct.Memory* %loadMem_4209bd, %struct.Memory** %MEMORY
  br label %block_.L_4209c2

block_.L_4209c2:                                  ; preds = %block_.L_4209ad, %block_420993
  %loadMem_4209c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5318 = getelementptr inbounds %struct.GPR, %struct.GPR* %5317, i32 0, i32 33
  %5319 = getelementptr inbounds %struct.Reg, %struct.Reg* %5318, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %5319 to i64*
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5321 = getelementptr inbounds %struct.GPR, %struct.GPR* %5320, i32 0, i32 15
  %5322 = getelementptr inbounds %struct.Reg, %struct.Reg* %5321, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %5322 to i64*
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5324 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5323, i64 0, i64 0
  %YMM0.i155 = bitcast %union.VectorReg* %5324 to %"class.std::bitset"*
  %5325 = bitcast %"class.std::bitset"* %YMM0.i155 to i8*
  %5326 = load i64, i64* %RBP.i154
  %5327 = sub i64 %5326, 13888
  %5328 = load i64, i64* %PC.i153
  %5329 = add i64 %5328, 8
  store i64 %5329, i64* %PC.i153
  %5330 = inttoptr i64 %5327 to double*
  %5331 = load double, double* %5330
  %5332 = bitcast i8* %5325 to double*
  store double %5331, double* %5332, align 1
  %5333 = getelementptr inbounds i8, i8* %5325, i64 8
  %5334 = bitcast i8* %5333 to double*
  store double 0.000000e+00, double* %5334, align 1
  store %struct.Memory* %loadMem_4209c2, %struct.Memory** %MEMORY
  %loadMem_4209ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5336 = getelementptr inbounds %struct.GPR, %struct.GPR* %5335, i32 0, i32 33
  %5337 = getelementptr inbounds %struct.Reg, %struct.Reg* %5336, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %5337 to i64*
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5339 = getelementptr inbounds %struct.GPR, %struct.GPR* %5338, i32 0, i32 15
  %5340 = getelementptr inbounds %struct.Reg, %struct.Reg* %5339, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %5340 to i64*
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5342 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5341, i64 0, i64 1
  %YMM1.i152 = bitcast %union.VectorReg* %5342 to %"class.std::bitset"*
  %5343 = bitcast %"class.std::bitset"* %YMM1.i152 to i8*
  %5344 = load i64, i64* %RBP.i151
  %5345 = sub i64 %5344, 13848
  %5346 = load i64, i64* %PC.i150
  %5347 = add i64 %5346, 8
  store i64 %5347, i64* %PC.i150
  %5348 = inttoptr i64 %5345 to i32*
  %5349 = load i32, i32* %5348
  %5350 = sitofp i32 %5349 to double
  %5351 = bitcast i8* %5343 to double*
  store double %5350, double* %5351, align 1
  store %struct.Memory* %loadMem_4209ca, %struct.Memory** %MEMORY
  %loadMem_4209d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5353 = getelementptr inbounds %struct.GPR, %struct.GPR* %5352, i32 0, i32 33
  %5354 = getelementptr inbounds %struct.Reg, %struct.Reg* %5353, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %5354 to i64*
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5356 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5355, i64 0, i64 0
  %YMM0.i148 = bitcast %union.VectorReg* %5356 to %"class.std::bitset"*
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5358 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5357, i64 0, i64 1
  %XMM1.i149 = bitcast %union.VectorReg* %5358 to %union.vec128_t*
  %5359 = bitcast %"class.std::bitset"* %YMM0.i148 to i8*
  %5360 = bitcast %"class.std::bitset"* %YMM0.i148 to i8*
  %5361 = bitcast %union.vec128_t* %XMM1.i149 to i8*
  %5362 = load i64, i64* %PC.i147
  %5363 = add i64 %5362, 4
  store i64 %5363, i64* %PC.i147
  %5364 = bitcast i8* %5360 to double*
  %5365 = load double, double* %5364, align 1
  %5366 = getelementptr inbounds i8, i8* %5360, i64 8
  %5367 = bitcast i8* %5366 to i64*
  %5368 = load i64, i64* %5367, align 1
  %5369 = bitcast i8* %5361 to double*
  %5370 = load double, double* %5369, align 1
  %5371 = fdiv double %5365, %5370
  %5372 = bitcast i8* %5359 to double*
  store double %5371, double* %5372, align 1
  %5373 = getelementptr inbounds i8, i8* %5359, i64 8
  %5374 = bitcast i8* %5373 to i64*
  store i64 %5368, i64* %5374, align 1
  store %struct.Memory* %loadMem_4209d2, %struct.Memory** %MEMORY
  %loadMem_4209d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5376 = getelementptr inbounds %struct.GPR, %struct.GPR* %5375, i32 0, i32 33
  %5377 = getelementptr inbounds %struct.Reg, %struct.Reg* %5376, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %5377 to i64*
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5379 = getelementptr inbounds %struct.GPR, %struct.GPR* %5378, i32 0, i32 1
  %5380 = getelementptr inbounds %struct.Reg, %struct.Reg* %5379, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %5380 to i64*
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5382 = getelementptr inbounds %struct.GPR, %struct.GPR* %5381, i32 0, i32 15
  %5383 = getelementptr inbounds %struct.Reg, %struct.Reg* %5382, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %5383 to i64*
  %5384 = load i64, i64* %RBP.i146
  %5385 = sub i64 %5384, 13844
  %5386 = load i64, i64* %PC.i144
  %5387 = add i64 %5386, 7
  store i64 %5387, i64* %PC.i144
  %5388 = inttoptr i64 %5385 to i32*
  %5389 = load i32, i32* %5388
  %5390 = sext i32 %5389 to i64
  store i64 %5390, i64* %RAX.i145, align 8
  store %struct.Memory* %loadMem_4209d6, %struct.Memory** %MEMORY
  %loadMem_4209dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5392 = getelementptr inbounds %struct.GPR, %struct.GPR* %5391, i32 0, i32 33
  %5393 = getelementptr inbounds %struct.Reg, %struct.Reg* %5392, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %5393 to i64*
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5395 = getelementptr inbounds %struct.GPR, %struct.GPR* %5394, i32 0, i32 1
  %5396 = getelementptr inbounds %struct.Reg, %struct.Reg* %5395, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %5396 to i64*
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5398 = getelementptr inbounds %struct.GPR, %struct.GPR* %5397, i32 0, i32 15
  %5399 = getelementptr inbounds %struct.Reg, %struct.Reg* %5398, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %5399 to i64*
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5401 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5400, i64 0, i64 1
  %YMM1.i143 = bitcast %union.VectorReg* %5401 to %"class.std::bitset"*
  %5402 = bitcast %"class.std::bitset"* %YMM1.i143 to i8*
  %5403 = load i64, i64* %RBP.i142
  %5404 = load i64, i64* %RAX.i141
  %5405 = mul i64 %5404, 4
  %5406 = add i64 %5403, -13824
  %5407 = add i64 %5406, %5405
  %5408 = load i64, i64* %PC.i140
  %5409 = add i64 %5408, 9
  store i64 %5409, i64* %PC.i140
  %5410 = inttoptr i64 %5407 to float*
  %5411 = load float, float* %5410
  %5412 = fpext float %5411 to double
  %5413 = bitcast i8* %5402 to double*
  store double %5412, double* %5413, align 1
  store %struct.Memory* %loadMem_4209dd, %struct.Memory** %MEMORY
  %loadMem_4209e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5415 = getelementptr inbounds %struct.GPR, %struct.GPR* %5414, i32 0, i32 33
  %5416 = getelementptr inbounds %struct.Reg, %struct.Reg* %5415, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %5416 to i64*
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5418 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5417, i64 0, i64 1
  %YMM1.i138 = bitcast %union.VectorReg* %5418 to %"class.std::bitset"*
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5420 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5419, i64 0, i64 0
  %XMM0.i139 = bitcast %union.VectorReg* %5420 to %union.vec128_t*
  %5421 = bitcast %"class.std::bitset"* %YMM1.i138 to i8*
  %5422 = bitcast %"class.std::bitset"* %YMM1.i138 to i8*
  %5423 = bitcast %union.vec128_t* %XMM0.i139 to i8*
  %5424 = load i64, i64* %PC.i137
  %5425 = add i64 %5424, 4
  store i64 %5425, i64* %PC.i137
  %5426 = bitcast i8* %5422 to double*
  %5427 = load double, double* %5426, align 1
  %5428 = getelementptr inbounds i8, i8* %5422, i64 8
  %5429 = bitcast i8* %5428 to i64*
  %5430 = load i64, i64* %5429, align 1
  %5431 = bitcast i8* %5423 to double*
  %5432 = load double, double* %5431, align 1
  %5433 = fadd double %5427, %5432
  %5434 = bitcast i8* %5421 to double*
  store double %5433, double* %5434, align 1
  %5435 = getelementptr inbounds i8, i8* %5421, i64 8
  %5436 = bitcast i8* %5435 to i64*
  store i64 %5430, i64* %5436, align 1
  store %struct.Memory* %loadMem_4209e6, %struct.Memory** %MEMORY
  %loadMem_4209ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5438 = getelementptr inbounds %struct.GPR, %struct.GPR* %5437, i32 0, i32 33
  %5439 = getelementptr inbounds %struct.Reg, %struct.Reg* %5438, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %5439 to i64*
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5441 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5440, i64 0, i64 0
  %YMM0.i135 = bitcast %union.VectorReg* %5441 to %"class.std::bitset"*
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5443 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5442, i64 0, i64 1
  %XMM1.i136 = bitcast %union.VectorReg* %5443 to %union.vec128_t*
  %5444 = bitcast %"class.std::bitset"* %YMM0.i135 to i8*
  %5445 = bitcast %union.vec128_t* %XMM1.i136 to i8*
  %5446 = load i64, i64* %PC.i134
  %5447 = add i64 %5446, 4
  store i64 %5447, i64* %PC.i134
  %5448 = bitcast i8* %5444 to <2 x i32>*
  %5449 = load <2 x i32>, <2 x i32>* %5448, align 1
  %5450 = getelementptr inbounds i8, i8* %5444, i64 8
  %5451 = bitcast i8* %5450 to <2 x i32>*
  %5452 = load <2 x i32>, <2 x i32>* %5451, align 1
  %5453 = bitcast i8* %5445 to double*
  %5454 = load double, double* %5453, align 1
  %5455 = fptrunc double %5454 to float
  %5456 = bitcast i8* %5444 to float*
  store float %5455, float* %5456, align 1
  %5457 = extractelement <2 x i32> %5449, i32 1
  %5458 = getelementptr inbounds i8, i8* %5444, i64 4
  %5459 = bitcast i8* %5458 to i32*
  store i32 %5457, i32* %5459, align 1
  %5460 = extractelement <2 x i32> %5452, i32 0
  %5461 = bitcast i8* %5450 to i32*
  store i32 %5460, i32* %5461, align 1
  %5462 = extractelement <2 x i32> %5452, i32 1
  %5463 = getelementptr inbounds i8, i8* %5444, i64 12
  %5464 = bitcast i8* %5463 to i32*
  store i32 %5462, i32* %5464, align 1
  store %struct.Memory* %loadMem_4209ea, %struct.Memory** %MEMORY
  %loadMem_4209ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5466 = getelementptr inbounds %struct.GPR, %struct.GPR* %5465, i32 0, i32 33
  %5467 = getelementptr inbounds %struct.Reg, %struct.Reg* %5466, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %5467 to i64*
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5469 = getelementptr inbounds %struct.GPR, %struct.GPR* %5468, i32 0, i32 1
  %5470 = getelementptr inbounds %struct.Reg, %struct.Reg* %5469, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %5470 to i64*
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5472 = getelementptr inbounds %struct.GPR, %struct.GPR* %5471, i32 0, i32 15
  %5473 = getelementptr inbounds %struct.Reg, %struct.Reg* %5472, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %5473 to i64*
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5475 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5474, i64 0, i64 0
  %XMM0.i133 = bitcast %union.VectorReg* %5475 to %union.vec128_t*
  %5476 = load i64, i64* %RBP.i132
  %5477 = load i64, i64* %RAX.i131
  %5478 = mul i64 %5477, 4
  %5479 = add i64 %5476, -13824
  %5480 = add i64 %5479, %5478
  %5481 = bitcast %union.vec128_t* %XMM0.i133 to i8*
  %5482 = load i64, i64* %PC.i130
  %5483 = add i64 %5482, 9
  store i64 %5483, i64* %PC.i130
  %5484 = bitcast i8* %5481 to <2 x float>*
  %5485 = load <2 x float>, <2 x float>* %5484, align 1
  %5486 = extractelement <2 x float> %5485, i32 0
  %5487 = inttoptr i64 %5480 to float*
  store float %5486, float* %5487
  store %struct.Memory* %loadMem_4209ee, %struct.Memory** %MEMORY
  %loadMem_4209f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5489 = getelementptr inbounds %struct.GPR, %struct.GPR* %5488, i32 0, i32 33
  %5490 = getelementptr inbounds %struct.Reg, %struct.Reg* %5489, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %5490 to i64*
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5492 = getelementptr inbounds %struct.GPR, %struct.GPR* %5491, i32 0, i32 1
  %5493 = getelementptr inbounds %struct.Reg, %struct.Reg* %5492, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %5493 to i64*
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5495 = getelementptr inbounds %struct.GPR, %struct.GPR* %5494, i32 0, i32 15
  %5496 = getelementptr inbounds %struct.Reg, %struct.Reg* %5495, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %5496 to i64*
  %5497 = load i64, i64* %RBP.i129
  %5498 = sub i64 %5497, 7424
  %5499 = load i64, i64* %PC.i127
  %5500 = add i64 %5499, 6
  store i64 %5500, i64* %PC.i127
  %5501 = inttoptr i64 %5498 to i32*
  %5502 = load i32, i32* %5501
  %5503 = zext i32 %5502 to i64
  store i64 %5503, i64* %RAX.i128, align 8
  store %struct.Memory* %loadMem_4209f7, %struct.Memory** %MEMORY
  %loadMem_4209fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5505 = getelementptr inbounds %struct.GPR, %struct.GPR* %5504, i32 0, i32 33
  %5506 = getelementptr inbounds %struct.Reg, %struct.Reg* %5505, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %5506 to i64*
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5508 = getelementptr inbounds %struct.GPR, %struct.GPR* %5507, i32 0, i32 1
  %5509 = getelementptr inbounds %struct.Reg, %struct.Reg* %5508, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %5509 to i64*
  %5510 = load i64, i64* %RAX.i126
  %5511 = load i64, i64* %PC.i125
  %5512 = add i64 %5511, 3
  store i64 %5512, i64* %PC.i125
  %5513 = trunc i64 %5510 to i32
  %5514 = add i32 1, %5513
  %5515 = zext i32 %5514 to i64
  store i64 %5515, i64* %RAX.i126, align 8
  %5516 = icmp ult i32 %5514, %5513
  %5517 = icmp ult i32 %5514, 1
  %5518 = or i1 %5516, %5517
  %5519 = zext i1 %5518 to i8
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5519, i8* %5520, align 1
  %5521 = and i32 %5514, 255
  %5522 = call i32 @llvm.ctpop.i32(i32 %5521)
  %5523 = trunc i32 %5522 to i8
  %5524 = and i8 %5523, 1
  %5525 = xor i8 %5524, 1
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5525, i8* %5526, align 1
  %5527 = xor i64 1, %5510
  %5528 = trunc i64 %5527 to i32
  %5529 = xor i32 %5528, %5514
  %5530 = lshr i32 %5529, 4
  %5531 = trunc i32 %5530 to i8
  %5532 = and i8 %5531, 1
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5532, i8* %5533, align 1
  %5534 = icmp eq i32 %5514, 0
  %5535 = zext i1 %5534 to i8
  %5536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5535, i8* %5536, align 1
  %5537 = lshr i32 %5514, 31
  %5538 = trunc i32 %5537 to i8
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5538, i8* %5539, align 1
  %5540 = lshr i32 %5513, 31
  %5541 = xor i32 %5537, %5540
  %5542 = add i32 %5541, %5537
  %5543 = icmp eq i32 %5542, 2
  %5544 = zext i1 %5543 to i8
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5544, i8* %5545, align 1
  store %struct.Memory* %loadMem_4209fd, %struct.Memory** %MEMORY
  %loadMem_420a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5547 = getelementptr inbounds %struct.GPR, %struct.GPR* %5546, i32 0, i32 33
  %5548 = getelementptr inbounds %struct.Reg, %struct.Reg* %5547, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %5548 to i64*
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5550 = getelementptr inbounds %struct.GPR, %struct.GPR* %5549, i32 0, i32 1
  %5551 = getelementptr inbounds %struct.Reg, %struct.Reg* %5550, i32 0, i32 0
  %EAX.i123 = bitcast %union.anon* %5551 to i32*
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5553 = getelementptr inbounds %struct.GPR, %struct.GPR* %5552, i32 0, i32 15
  %5554 = getelementptr inbounds %struct.Reg, %struct.Reg* %5553, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %5554 to i64*
  %5555 = load i64, i64* %RBP.i124
  %5556 = sub i64 %5555, 7424
  %5557 = load i32, i32* %EAX.i123
  %5558 = zext i32 %5557 to i64
  %5559 = load i64, i64* %PC.i122
  %5560 = add i64 %5559, 6
  store i64 %5560, i64* %PC.i122
  %5561 = inttoptr i64 %5556 to i32*
  store i32 %5557, i32* %5561
  store %struct.Memory* %loadMem_420a00, %struct.Memory** %MEMORY
  %loadMem_420a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5563 = getelementptr inbounds %struct.GPR, %struct.GPR* %5562, i32 0, i32 33
  %5564 = getelementptr inbounds %struct.Reg, %struct.Reg* %5563, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %5564 to i64*
  %5565 = load i64, i64* %PC.i121
  %5566 = add i64 %5565, -355
  %5567 = load i64, i64* %PC.i121
  %5568 = add i64 %5567, 5
  store i64 %5568, i64* %PC.i121
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5566, i64* %5569, align 8
  store %struct.Memory* %loadMem_420a06, %struct.Memory** %MEMORY
  br label %block_.L_4208a3

block_.L_420a0b:                                  ; preds = %block_.L_4208a3
  %loadMem_420a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5571 = getelementptr inbounds %struct.GPR, %struct.GPR* %5570, i32 0, i32 33
  %5572 = getelementptr inbounds %struct.Reg, %struct.Reg* %5571, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %5572 to i64*
  %5573 = load i64, i64* %PC.i120
  %5574 = add i64 %5573, 5
  %5575 = load i64, i64* %PC.i120
  %5576 = add i64 %5575, 5
  store i64 %5576, i64* %PC.i120
  %5577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5574, i64* %5577, align 8
  store %struct.Memory* %loadMem_420a0b, %struct.Memory** %MEMORY
  br label %block_.L_420a10

block_.L_420a10:                                  ; preds = %block_.L_420a0b, %block_.L_420887
  %loadMem_420a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5579 = getelementptr inbounds %struct.GPR, %struct.GPR* %5578, i32 0, i32 33
  %5580 = getelementptr inbounds %struct.Reg, %struct.Reg* %5579, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %5580 to i64*
  %5581 = load i64, i64* %PC.i119
  %5582 = add i64 %5581, 5
  %5583 = load i64, i64* %PC.i119
  %5584 = add i64 %5583, 5
  store i64 %5584, i64* %PC.i119
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5582, i64* %5585, align 8
  store %struct.Memory* %loadMem_420a10, %struct.Memory** %MEMORY
  br label %block_.L_420a15

block_.L_420a15:                                  ; preds = %block_.L_420a10, %block_4206f9, %block_4206d5
  %loadMem_420a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5587 = getelementptr inbounds %struct.GPR, %struct.GPR* %5586, i32 0, i32 33
  %5588 = getelementptr inbounds %struct.Reg, %struct.Reg* %5587, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %5588 to i64*
  %5589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5590 = getelementptr inbounds %struct.GPR, %struct.GPR* %5589, i32 0, i32 1
  %5591 = getelementptr inbounds %struct.Reg, %struct.Reg* %5590, i32 0, i32 0
  %RAX.i117 = bitcast %union.anon* %5591 to i64*
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5593 = getelementptr inbounds %struct.GPR, %struct.GPR* %5592, i32 0, i32 15
  %5594 = getelementptr inbounds %struct.Reg, %struct.Reg* %5593, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %5594 to i64*
  %5595 = load i64, i64* %RBP.i118
  %5596 = sub i64 %5595, 12
  %5597 = load i64, i64* %PC.i116
  %5598 = add i64 %5597, 3
  store i64 %5598, i64* %PC.i116
  %5599 = inttoptr i64 %5596 to i32*
  %5600 = load i32, i32* %5599
  %5601 = zext i32 %5600 to i64
  store i64 %5601, i64* %RAX.i117, align 8
  store %struct.Memory* %loadMem_420a15, %struct.Memory** %MEMORY
  %loadMem_420a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5603 = getelementptr inbounds %struct.GPR, %struct.GPR* %5602, i32 0, i32 33
  %5604 = getelementptr inbounds %struct.Reg, %struct.Reg* %5603, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %5604 to i64*
  %5605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5606 = getelementptr inbounds %struct.GPR, %struct.GPR* %5605, i32 0, i32 1
  %5607 = getelementptr inbounds %struct.Reg, %struct.Reg* %5606, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %5607 to i64*
  %5608 = load i64, i64* %RAX.i115
  %5609 = load i64, i64* %PC.i114
  %5610 = add i64 %5609, 3
  store i64 %5610, i64* %PC.i114
  %5611 = trunc i64 %5608 to i32
  %5612 = add i32 1, %5611
  %5613 = zext i32 %5612 to i64
  store i64 %5613, i64* %RAX.i115, align 8
  %5614 = icmp ult i32 %5612, %5611
  %5615 = icmp ult i32 %5612, 1
  %5616 = or i1 %5614, %5615
  %5617 = zext i1 %5616 to i8
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5617, i8* %5618, align 1
  %5619 = and i32 %5612, 255
  %5620 = call i32 @llvm.ctpop.i32(i32 %5619)
  %5621 = trunc i32 %5620 to i8
  %5622 = and i8 %5621, 1
  %5623 = xor i8 %5622, 1
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5623, i8* %5624, align 1
  %5625 = xor i64 1, %5608
  %5626 = trunc i64 %5625 to i32
  %5627 = xor i32 %5626, %5612
  %5628 = lshr i32 %5627, 4
  %5629 = trunc i32 %5628 to i8
  %5630 = and i8 %5629, 1
  %5631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5630, i8* %5631, align 1
  %5632 = icmp eq i32 %5612, 0
  %5633 = zext i1 %5632 to i8
  %5634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5633, i8* %5634, align 1
  %5635 = lshr i32 %5612, 31
  %5636 = trunc i32 %5635 to i8
  %5637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5636, i8* %5637, align 1
  %5638 = lshr i32 %5611, 31
  %5639 = xor i32 %5635, %5638
  %5640 = add i32 %5639, %5635
  %5641 = icmp eq i32 %5640, 2
  %5642 = zext i1 %5641 to i8
  %5643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5642, i8* %5643, align 1
  store %struct.Memory* %loadMem_420a18, %struct.Memory** %MEMORY
  %loadMem_420a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5645 = getelementptr inbounds %struct.GPR, %struct.GPR* %5644, i32 0, i32 33
  %5646 = getelementptr inbounds %struct.Reg, %struct.Reg* %5645, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %5646 to i64*
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5648 = getelementptr inbounds %struct.GPR, %struct.GPR* %5647, i32 0, i32 1
  %5649 = getelementptr inbounds %struct.Reg, %struct.Reg* %5648, i32 0, i32 0
  %EAX.i112 = bitcast %union.anon* %5649 to i32*
  %5650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5651 = getelementptr inbounds %struct.GPR, %struct.GPR* %5650, i32 0, i32 15
  %5652 = getelementptr inbounds %struct.Reg, %struct.Reg* %5651, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %5652 to i64*
  %5653 = load i64, i64* %RBP.i113
  %5654 = sub i64 %5653, 12
  %5655 = load i32, i32* %EAX.i112
  %5656 = zext i32 %5655 to i64
  %5657 = load i64, i64* %PC.i111
  %5658 = add i64 %5657, 3
  store i64 %5658, i64* %PC.i111
  %5659 = inttoptr i64 %5654 to i32*
  store i32 %5655, i32* %5659
  store %struct.Memory* %loadMem_420a1b, %struct.Memory** %MEMORY
  %loadMem_420a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5661 = getelementptr inbounds %struct.GPR, %struct.GPR* %5660, i32 0, i32 33
  %5662 = getelementptr inbounds %struct.Reg, %struct.Reg* %5661, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %5662 to i64*
  %5663 = load i64, i64* %PC.i110
  %5664 = add i64 %5663, -875
  %5665 = load i64, i64* %PC.i110
  %5666 = add i64 %5665, 5
  store i64 %5666, i64* %PC.i110
  %5667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5664, i64* %5667, align 8
  store %struct.Memory* %loadMem_420a1e, %struct.Memory** %MEMORY
  br label %block_.L_4206b3

block_.L_420a23:                                  ; preds = %block_.L_4206b3
  %loadMem_420a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5669 = getelementptr inbounds %struct.GPR, %struct.GPR* %5668, i32 0, i32 33
  %5670 = getelementptr inbounds %struct.Reg, %struct.Reg* %5669, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %5670 to i64*
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5672 = getelementptr inbounds %struct.GPR, %struct.GPR* %5671, i32 0, i32 15
  %5673 = getelementptr inbounds %struct.Reg, %struct.Reg* %5672, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %5673 to i64*
  %5674 = load i64, i64* %RBP.i109
  %5675 = sub i64 %5674, 16
  %5676 = load i64, i64* %PC.i108
  %5677 = add i64 %5676, 7
  store i64 %5677, i64* %PC.i108
  %5678 = inttoptr i64 %5675 to i32*
  store i32 0, i32* %5678
  store %struct.Memory* %loadMem_420a23, %struct.Memory** %MEMORY
  br label %block_.L_420a2a

block_.L_420a2a:                                  ; preds = %block_.L_420af9, %block_.L_420a23
  %loadMem_420a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5680 = getelementptr inbounds %struct.GPR, %struct.GPR* %5679, i32 0, i32 33
  %5681 = getelementptr inbounds %struct.Reg, %struct.Reg* %5680, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %5681 to i64*
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5683 = getelementptr inbounds %struct.GPR, %struct.GPR* %5682, i32 0, i32 1
  %5684 = getelementptr inbounds %struct.Reg, %struct.Reg* %5683, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %5684 to i64*
  %5685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5686 = getelementptr inbounds %struct.GPR, %struct.GPR* %5685, i32 0, i32 15
  %5687 = getelementptr inbounds %struct.Reg, %struct.Reg* %5686, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %5687 to i64*
  %5688 = load i64, i64* %RBP.i107
  %5689 = sub i64 %5688, 16
  %5690 = load i64, i64* %PC.i105
  %5691 = add i64 %5690, 3
  store i64 %5691, i64* %PC.i105
  %5692 = inttoptr i64 %5689 to i32*
  %5693 = load i32, i32* %5692
  %5694 = zext i32 %5693 to i64
  store i64 %5694, i64* %RAX.i106, align 8
  store %struct.Memory* %loadMem_420a2a, %struct.Memory** %MEMORY
  %loadMem_420a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5696 = getelementptr inbounds %struct.GPR, %struct.GPR* %5695, i32 0, i32 33
  %5697 = getelementptr inbounds %struct.Reg, %struct.Reg* %5696, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %5697 to i64*
  %5698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5699 = getelementptr inbounds %struct.GPR, %struct.GPR* %5698, i32 0, i32 1
  %5700 = getelementptr inbounds %struct.Reg, %struct.Reg* %5699, i32 0, i32 0
  %EAX.i104 = bitcast %union.anon* %5700 to i32*
  %5701 = load i32, i32* %EAX.i104
  %5702 = zext i32 %5701 to i64
  %5703 = load i64, i64* %PC.i103
  %5704 = add i64 %5703, 7
  store i64 %5704, i64* %PC.i103
  %5705 = load i32, i32* bitcast (%G_0xb54cec_type* @G_0xb54cec to i32*)
  %5706 = sub i32 %5701, %5705
  %5707 = icmp ult i32 %5701, %5705
  %5708 = zext i1 %5707 to i8
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5708, i8* %5709, align 1
  %5710 = and i32 %5706, 255
  %5711 = call i32 @llvm.ctpop.i32(i32 %5710)
  %5712 = trunc i32 %5711 to i8
  %5713 = and i8 %5712, 1
  %5714 = xor i8 %5713, 1
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5714, i8* %5715, align 1
  %5716 = xor i32 %5705, %5701
  %5717 = xor i32 %5716, %5706
  %5718 = lshr i32 %5717, 4
  %5719 = trunc i32 %5718 to i8
  %5720 = and i8 %5719, 1
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5720, i8* %5721, align 1
  %5722 = icmp eq i32 %5706, 0
  %5723 = zext i1 %5722 to i8
  %5724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5723, i8* %5724, align 1
  %5725 = lshr i32 %5706, 31
  %5726 = trunc i32 %5725 to i8
  %5727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5726, i8* %5727, align 1
  %5728 = lshr i32 %5701, 31
  %5729 = lshr i32 %5705, 31
  %5730 = xor i32 %5729, %5728
  %5731 = xor i32 %5725, %5728
  %5732 = add i32 %5731, %5730
  %5733 = icmp eq i32 %5732, 2
  %5734 = zext i1 %5733 to i8
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5734, i8* %5735, align 1
  store %struct.Memory* %loadMem_420a2d, %struct.Memory** %MEMORY
  %loadMem_420a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5737 = getelementptr inbounds %struct.GPR, %struct.GPR* %5736, i32 0, i32 33
  %5738 = getelementptr inbounds %struct.Reg, %struct.Reg* %5737, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %5738 to i64*
  %5739 = load i64, i64* %PC.i102
  %5740 = add i64 %5739, 211
  %5741 = load i64, i64* %PC.i102
  %5742 = add i64 %5741, 6
  %5743 = load i64, i64* %PC.i102
  %5744 = add i64 %5743, 6
  store i64 %5744, i64* %PC.i102
  %5745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5746 = load i8, i8* %5745, align 1
  %5747 = icmp ne i8 %5746, 0
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5749 = load i8, i8* %5748, align 1
  %5750 = icmp ne i8 %5749, 0
  %5751 = xor i1 %5747, %5750
  %5752 = xor i1 %5751, true
  %5753 = zext i1 %5752 to i8
  store i8 %5753, i8* %BRANCH_TAKEN, align 1
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5755 = select i1 %5751, i64 %5742, i64 %5740
  store i64 %5755, i64* %5754, align 8
  store %struct.Memory* %loadMem_420a34, %struct.Memory** %MEMORY
  %loadBr_420a34 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420a34 = icmp eq i8 %loadBr_420a34, 1
  br i1 %cmpBr_420a34, label %block_.L_420b07, label %block_420a3a

block_420a3a:                                     ; preds = %block_.L_420a2a
  %loadMem_420a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5757 = getelementptr inbounds %struct.GPR, %struct.GPR* %5756, i32 0, i32 33
  %5758 = getelementptr inbounds %struct.Reg, %struct.Reg* %5757, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %5758 to i64*
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5760 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5759, i64 0, i64 0
  %YMM0.i101 = bitcast %union.VectorReg* %5760 to %"class.std::bitset"*
  %5761 = bitcast %"class.std::bitset"* %YMM0.i101 to i8*
  %5762 = load i64, i64* %PC.i100
  %5763 = add i64 %5762, ptrtoint (%G_0xc2536__rip__type* @G_0xc2536__rip_ to i64)
  %5764 = load i64, i64* %PC.i100
  %5765 = add i64 %5764, 8
  store i64 %5765, i64* %PC.i100
  %5766 = inttoptr i64 %5763 to double*
  %5767 = load double, double* %5766
  %5768 = bitcast i8* %5761 to double*
  store double %5767, double* %5768, align 1
  %5769 = getelementptr inbounds i8, i8* %5761, i64 8
  %5770 = bitcast i8* %5769 to double*
  store double 0.000000e+00, double* %5770, align 1
  store %struct.Memory* %loadMem_420a3a, %struct.Memory** %MEMORY
  %loadMem_420a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5772 = getelementptr inbounds %struct.GPR, %struct.GPR* %5771, i32 0, i32 33
  %5773 = getelementptr inbounds %struct.Reg, %struct.Reg* %5772, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %5773 to i64*
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5775 = getelementptr inbounds %struct.GPR, %struct.GPR* %5774, i32 0, i32 1
  %5776 = getelementptr inbounds %struct.Reg, %struct.Reg* %5775, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %5776 to i64*
  %5777 = load i64, i64* %PC.i98
  %5778 = add i64 %5777, 8
  store i64 %5778, i64* %PC.i98
  %5779 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %5779, i64* %RAX.i99, align 8
  store %struct.Memory* %loadMem_420a42, %struct.Memory** %MEMORY
  %loadMem_420a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5781 = getelementptr inbounds %struct.GPR, %struct.GPR* %5780, i32 0, i32 33
  %5782 = getelementptr inbounds %struct.Reg, %struct.Reg* %5781, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %5782 to i64*
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5784 = getelementptr inbounds %struct.GPR, %struct.GPR* %5783, i32 0, i32 5
  %5785 = getelementptr inbounds %struct.Reg, %struct.Reg* %5784, i32 0, i32 0
  %RCX.i96 = bitcast %union.anon* %5785 to i64*
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5787 = getelementptr inbounds %struct.GPR, %struct.GPR* %5786, i32 0, i32 15
  %5788 = getelementptr inbounds %struct.Reg, %struct.Reg* %5787, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %5788 to i64*
  %5789 = load i64, i64* %RBP.i97
  %5790 = sub i64 %5789, 16
  %5791 = load i64, i64* %PC.i95
  %5792 = add i64 %5791, 4
  store i64 %5792, i64* %PC.i95
  %5793 = inttoptr i64 %5790 to i32*
  %5794 = load i32, i32* %5793
  %5795 = sext i32 %5794 to i64
  store i64 %5795, i64* %RCX.i96, align 8
  store %struct.Memory* %loadMem_420a4a, %struct.Memory** %MEMORY
  %loadMem_420a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5797 = getelementptr inbounds %struct.GPR, %struct.GPR* %5796, i32 0, i32 33
  %5798 = getelementptr inbounds %struct.Reg, %struct.Reg* %5797, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %5798 to i64*
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5800 = getelementptr inbounds %struct.GPR, %struct.GPR* %5799, i32 0, i32 5
  %5801 = getelementptr inbounds %struct.Reg, %struct.Reg* %5800, i32 0, i32 0
  %RCX.i94 = bitcast %union.anon* %5801 to i64*
  %5802 = load i64, i64* %RCX.i94
  %5803 = load i64, i64* %PC.i93
  %5804 = add i64 %5803, 4
  store i64 %5804, i64* %PC.i93
  %5805 = sext i64 %5802 to i128
  %5806 = and i128 %5805, -18446744073709551616
  %5807 = zext i64 %5802 to i128
  %5808 = or i128 %5806, %5807
  %5809 = mul i128 104, %5808
  %5810 = trunc i128 %5809 to i64
  store i64 %5810, i64* %RCX.i94, align 8
  %5811 = sext i64 %5810 to i128
  %5812 = icmp ne i128 %5811, %5809
  %5813 = zext i1 %5812 to i8
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5813, i8* %5814, align 1
  %5815 = trunc i128 %5809 to i32
  %5816 = and i32 %5815, 255
  %5817 = call i32 @llvm.ctpop.i32(i32 %5816)
  %5818 = trunc i32 %5817 to i8
  %5819 = and i8 %5818, 1
  %5820 = xor i8 %5819, 1
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5820, i8* %5821, align 1
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5822, align 1
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5823, align 1
  %5824 = lshr i64 %5810, 63
  %5825 = trunc i64 %5824 to i8
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5825, i8* %5826, align 1
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5813, i8* %5827, align 1
  store %struct.Memory* %loadMem_420a4e, %struct.Memory** %MEMORY
  %loadMem_420a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 33
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %5830 to i64*
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 1
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %5833 to i64*
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5835 = getelementptr inbounds %struct.GPR, %struct.GPR* %5834, i32 0, i32 5
  %5836 = getelementptr inbounds %struct.Reg, %struct.Reg* %5835, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %5836 to i64*
  %5837 = load i64, i64* %RAX.i91
  %5838 = load i64, i64* %RCX.i92
  %5839 = load i64, i64* %PC.i90
  %5840 = add i64 %5839, 3
  store i64 %5840, i64* %PC.i90
  %5841 = add i64 %5838, %5837
  store i64 %5841, i64* %RAX.i91, align 8
  %5842 = icmp ult i64 %5841, %5837
  %5843 = icmp ult i64 %5841, %5838
  %5844 = or i1 %5842, %5843
  %5845 = zext i1 %5844 to i8
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5845, i8* %5846, align 1
  %5847 = trunc i64 %5841 to i32
  %5848 = and i32 %5847, 255
  %5849 = call i32 @llvm.ctpop.i32(i32 %5848)
  %5850 = trunc i32 %5849 to i8
  %5851 = and i8 %5850, 1
  %5852 = xor i8 %5851, 1
  %5853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5852, i8* %5853, align 1
  %5854 = xor i64 %5838, %5837
  %5855 = xor i64 %5854, %5841
  %5856 = lshr i64 %5855, 4
  %5857 = trunc i64 %5856 to i8
  %5858 = and i8 %5857, 1
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5858, i8* %5859, align 1
  %5860 = icmp eq i64 %5841, 0
  %5861 = zext i1 %5860 to i8
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5861, i8* %5862, align 1
  %5863 = lshr i64 %5841, 63
  %5864 = trunc i64 %5863 to i8
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5864, i8* %5865, align 1
  %5866 = lshr i64 %5837, 63
  %5867 = lshr i64 %5838, 63
  %5868 = xor i64 %5863, %5866
  %5869 = xor i64 %5863, %5867
  %5870 = add i64 %5868, %5869
  %5871 = icmp eq i64 %5870, 2
  %5872 = zext i1 %5871 to i8
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5872, i8* %5873, align 1
  store %struct.Memory* %loadMem_420a52, %struct.Memory** %MEMORY
  %loadMem_420a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 33
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %5876 to i64*
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 1
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %5879 to i64*
  %5880 = load i64, i64* %RAX.i89
  %5881 = load i64, i64* %PC.i88
  %5882 = add i64 %5881, 3
  store i64 %5882, i64* %PC.i88
  %5883 = inttoptr i64 %5880 to i32*
  %5884 = load i32, i32* %5883
  %5885 = sext i32 %5884 to i64
  store i64 %5885, i64* %RAX.i89, align 8
  store %struct.Memory* %loadMem_420a55, %struct.Memory** %MEMORY
  %loadMem_420a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5887 = getelementptr inbounds %struct.GPR, %struct.GPR* %5886, i32 0, i32 33
  %5888 = getelementptr inbounds %struct.Reg, %struct.Reg* %5887, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %5888 to i64*
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5890 = getelementptr inbounds %struct.GPR, %struct.GPR* %5889, i32 0, i32 1
  %5891 = getelementptr inbounds %struct.Reg, %struct.Reg* %5890, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %5891 to i64*
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5893 = getelementptr inbounds %struct.GPR, %struct.GPR* %5892, i32 0, i32 15
  %5894 = getelementptr inbounds %struct.Reg, %struct.Reg* %5893, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %5894 to i64*
  %5895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5896 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5895, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %5896 to %"class.std::bitset"*
  %5897 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %5898 = load i64, i64* %RBP.i87
  %5899 = load i64, i64* %RAX.i86
  %5900 = mul i64 %5899, 4
  %5901 = add i64 %5898, -12224
  %5902 = add i64 %5901, %5900
  %5903 = load i64, i64* %PC.i85
  %5904 = add i64 %5903, 9
  store i64 %5904, i64* %PC.i85
  %5905 = inttoptr i64 %5902 to float*
  %5906 = load float, float* %5905
  %5907 = fpext float %5906 to double
  %5908 = bitcast i8* %5897 to double*
  store double %5907, double* %5908, align 1
  store %struct.Memory* %loadMem_420a58, %struct.Memory** %MEMORY
  %loadMem_420a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5910 = getelementptr inbounds %struct.GPR, %struct.GPR* %5909, i32 0, i32 33
  %5911 = getelementptr inbounds %struct.Reg, %struct.Reg* %5910, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %5911 to i64*
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5913 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5912, i64 0, i64 0
  %YMM0.i84 = bitcast %union.VectorReg* %5913 to %"class.std::bitset"*
  %5914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5915 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5914, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %5915 to %union.vec128_t*
  %5916 = bitcast %"class.std::bitset"* %YMM0.i84 to i8*
  %5917 = bitcast %"class.std::bitset"* %YMM0.i84 to i8*
  %5918 = bitcast %union.vec128_t* %XMM1.i to i8*
  %5919 = load i64, i64* %PC.i83
  %5920 = add i64 %5919, 4
  store i64 %5920, i64* %PC.i83
  %5921 = bitcast i8* %5917 to double*
  %5922 = load double, double* %5921, align 1
  %5923 = getelementptr inbounds i8, i8* %5917, i64 8
  %5924 = bitcast i8* %5923 to i64*
  %5925 = load i64, i64* %5924, align 1
  %5926 = bitcast i8* %5918 to double*
  %5927 = load double, double* %5926, align 1
  %5928 = fadd double %5922, %5927
  %5929 = bitcast i8* %5916 to double*
  store double %5928, double* %5929, align 1
  %5930 = getelementptr inbounds i8, i8* %5916, i64 8
  %5931 = bitcast i8* %5930 to i64*
  store i64 %5925, i64* %5931, align 1
  store %struct.Memory* %loadMem_420a61, %struct.Memory** %MEMORY
  %loadMem_420a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5933 = getelementptr inbounds %struct.GPR, %struct.GPR* %5932, i32 0, i32 33
  %5934 = getelementptr inbounds %struct.Reg, %struct.Reg* %5933, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %5934 to i64*
  %5935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5936 = getelementptr inbounds %struct.GPR, %struct.GPR* %5935, i32 0, i32 7
  %5937 = getelementptr inbounds %struct.Reg, %struct.Reg* %5936, i32 0, i32 0
  %RDX.i81 = bitcast %union.anon* %5937 to i64*
  %5938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5939 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5938, i64 0, i64 0
  %XMM0.i82 = bitcast %union.VectorReg* %5939 to %union.vec128_t*
  %5940 = bitcast %union.vec128_t* %XMM0.i82 to i8*
  %5941 = load i64, i64* %PC.i80
  %5942 = add i64 %5941, 4
  store i64 %5942, i64* %PC.i80
  %5943 = bitcast i8* %5940 to double*
  %5944 = load double, double* %5943, align 1
  %5945 = call double @llvm.trunc.f64(double %5944)
  %5946 = call double @llvm.fabs.f64(double %5945)
  %5947 = fcmp ogt double %5946, 0x41DFFFFFFFC00000
  %5948 = fptosi double %5945 to i32
  %5949 = zext i32 %5948 to i64
  %5950 = select i1 %5947, i64 2147483648, i64 %5949
  store i64 %5950, i64* %RDX.i81, align 8
  store %struct.Memory* %loadMem_420a65, %struct.Memory** %MEMORY
  %loadMem_420a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5952 = getelementptr inbounds %struct.GPR, %struct.GPR* %5951, i32 0, i32 33
  %5953 = getelementptr inbounds %struct.Reg, %struct.Reg* %5952, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %5953 to i64*
  %5954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5955 = getelementptr inbounds %struct.GPR, %struct.GPR* %5954, i32 0, i32 7
  %5956 = getelementptr inbounds %struct.Reg, %struct.Reg* %5955, i32 0, i32 0
  %EDX.i78 = bitcast %union.anon* %5956 to i32*
  %5957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5958 = getelementptr inbounds %struct.GPR, %struct.GPR* %5957, i32 0, i32 15
  %5959 = getelementptr inbounds %struct.Reg, %struct.Reg* %5958, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %5959 to i64*
  %5960 = load i64, i64* %RBP.i79
  %5961 = sub i64 %5960, 13852
  %5962 = load i32, i32* %EDX.i78
  %5963 = zext i32 %5962 to i64
  %5964 = load i64, i64* %PC.i77
  %5965 = add i64 %5964, 6
  store i64 %5965, i64* %PC.i77
  %5966 = inttoptr i64 %5961 to i32*
  store i32 %5962, i32* %5966
  store %struct.Memory* %loadMem_420a69, %struct.Memory** %MEMORY
  %loadMem_420a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5968 = getelementptr inbounds %struct.GPR, %struct.GPR* %5967, i32 0, i32 33
  %5969 = getelementptr inbounds %struct.Reg, %struct.Reg* %5968, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %5969 to i64*
  %5970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5971 = getelementptr inbounds %struct.GPR, %struct.GPR* %5970, i32 0, i32 1
  %5972 = getelementptr inbounds %struct.Reg, %struct.Reg* %5971, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %5972 to i64*
  %5973 = load i64, i64* %PC.i75
  %5974 = add i64 %5973, 8
  store i64 %5974, i64* %PC.i75
  %5975 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %5975, i64* %RAX.i76, align 8
  store %struct.Memory* %loadMem_420a6f, %struct.Memory** %MEMORY
  %loadMem_420a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5977 = getelementptr inbounds %struct.GPR, %struct.GPR* %5976, i32 0, i32 33
  %5978 = getelementptr inbounds %struct.Reg, %struct.Reg* %5977, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %5978 to i64*
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 5
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %5981 to i64*
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5983 = getelementptr inbounds %struct.GPR, %struct.GPR* %5982, i32 0, i32 15
  %5984 = getelementptr inbounds %struct.Reg, %struct.Reg* %5983, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %5984 to i64*
  %5985 = load i64, i64* %RBP.i74
  %5986 = sub i64 %5985, 16
  %5987 = load i64, i64* %PC.i72
  %5988 = add i64 %5987, 4
  store i64 %5988, i64* %PC.i72
  %5989 = inttoptr i64 %5986 to i32*
  %5990 = load i32, i32* %5989
  %5991 = sext i32 %5990 to i64
  store i64 %5991, i64* %RCX.i73, align 8
  store %struct.Memory* %loadMem_420a77, %struct.Memory** %MEMORY
  %loadMem_420a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5993 = getelementptr inbounds %struct.GPR, %struct.GPR* %5992, i32 0, i32 33
  %5994 = getelementptr inbounds %struct.Reg, %struct.Reg* %5993, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %5994 to i64*
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5996 = getelementptr inbounds %struct.GPR, %struct.GPR* %5995, i32 0, i32 5
  %5997 = getelementptr inbounds %struct.Reg, %struct.Reg* %5996, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %5997 to i64*
  %5998 = load i64, i64* %RCX.i71
  %5999 = load i64, i64* %PC.i70
  %6000 = add i64 %5999, 4
  store i64 %6000, i64* %PC.i70
  %6001 = sext i64 %5998 to i128
  %6002 = and i128 %6001, -18446744073709551616
  %6003 = zext i64 %5998 to i128
  %6004 = or i128 %6002, %6003
  %6005 = mul i128 104, %6004
  %6006 = trunc i128 %6005 to i64
  store i64 %6006, i64* %RCX.i71, align 8
  %6007 = sext i64 %6006 to i128
  %6008 = icmp ne i128 %6007, %6005
  %6009 = zext i1 %6008 to i8
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6009, i8* %6010, align 1
  %6011 = trunc i128 %6005 to i32
  %6012 = and i32 %6011, 255
  %6013 = call i32 @llvm.ctpop.i32(i32 %6012)
  %6014 = trunc i32 %6013 to i8
  %6015 = and i8 %6014, 1
  %6016 = xor i8 %6015, 1
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6016, i8* %6017, align 1
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6018, align 1
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6019, align 1
  %6020 = lshr i64 %6006, 63
  %6021 = trunc i64 %6020 to i8
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6021, i8* %6022, align 1
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6009, i8* %6023, align 1
  store %struct.Memory* %loadMem_420a7b, %struct.Memory** %MEMORY
  %loadMem_420a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6025 = getelementptr inbounds %struct.GPR, %struct.GPR* %6024, i32 0, i32 33
  %6026 = getelementptr inbounds %struct.Reg, %struct.Reg* %6025, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %6026 to i64*
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6028 = getelementptr inbounds %struct.GPR, %struct.GPR* %6027, i32 0, i32 1
  %6029 = getelementptr inbounds %struct.Reg, %struct.Reg* %6028, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %6029 to i64*
  %6030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6031 = getelementptr inbounds %struct.GPR, %struct.GPR* %6030, i32 0, i32 5
  %6032 = getelementptr inbounds %struct.Reg, %struct.Reg* %6031, i32 0, i32 0
  %RCX.i69 = bitcast %union.anon* %6032 to i64*
  %6033 = load i64, i64* %RAX.i68
  %6034 = load i64, i64* %RCX.i69
  %6035 = load i64, i64* %PC.i67
  %6036 = add i64 %6035, 3
  store i64 %6036, i64* %PC.i67
  %6037 = add i64 %6034, %6033
  store i64 %6037, i64* %RAX.i68, align 8
  %6038 = icmp ult i64 %6037, %6033
  %6039 = icmp ult i64 %6037, %6034
  %6040 = or i1 %6038, %6039
  %6041 = zext i1 %6040 to i8
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6041, i8* %6042, align 1
  %6043 = trunc i64 %6037 to i32
  %6044 = and i32 %6043, 255
  %6045 = call i32 @llvm.ctpop.i32(i32 %6044)
  %6046 = trunc i32 %6045 to i8
  %6047 = and i8 %6046, 1
  %6048 = xor i8 %6047, 1
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6048, i8* %6049, align 1
  %6050 = xor i64 %6034, %6033
  %6051 = xor i64 %6050, %6037
  %6052 = lshr i64 %6051, 4
  %6053 = trunc i64 %6052 to i8
  %6054 = and i8 %6053, 1
  %6055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6054, i8* %6055, align 1
  %6056 = icmp eq i64 %6037, 0
  %6057 = zext i1 %6056 to i8
  %6058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6057, i8* %6058, align 1
  %6059 = lshr i64 %6037, 63
  %6060 = trunc i64 %6059 to i8
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6060, i8* %6061, align 1
  %6062 = lshr i64 %6033, 63
  %6063 = lshr i64 %6034, 63
  %6064 = xor i64 %6059, %6062
  %6065 = xor i64 %6059, %6063
  %6066 = add i64 %6064, %6065
  %6067 = icmp eq i64 %6066, 2
  %6068 = zext i1 %6067 to i8
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6068, i8* %6069, align 1
  store %struct.Memory* %loadMem_420a7f, %struct.Memory** %MEMORY
  %loadMem_420a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6071 = getelementptr inbounds %struct.GPR, %struct.GPR* %6070, i32 0, i32 33
  %6072 = getelementptr inbounds %struct.Reg, %struct.Reg* %6071, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %6072 to i64*
  %6073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6074 = getelementptr inbounds %struct.GPR, %struct.GPR* %6073, i32 0, i32 1
  %6075 = getelementptr inbounds %struct.Reg, %struct.Reg* %6074, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %6075 to i64*
  %6076 = load i64, i64* %RAX.i66
  %6077 = load i64, i64* %PC.i65
  %6078 = add i64 %6077, 3
  store i64 %6078, i64* %PC.i65
  %6079 = inttoptr i64 %6076 to i32*
  %6080 = load i32, i32* %6079
  %6081 = sext i32 %6080 to i64
  store i64 %6081, i64* %RAX.i66, align 8
  store %struct.Memory* %loadMem_420a82, %struct.Memory** %MEMORY
  %loadMem_420a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6083 = getelementptr inbounds %struct.GPR, %struct.GPR* %6082, i32 0, i32 33
  %6084 = getelementptr inbounds %struct.Reg, %struct.Reg* %6083, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %6084 to i64*
  %6085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6086 = getelementptr inbounds %struct.GPR, %struct.GPR* %6085, i32 0, i32 1
  %6087 = getelementptr inbounds %struct.Reg, %struct.Reg* %6086, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %6087 to i64*
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6089 = getelementptr inbounds %struct.GPR, %struct.GPR* %6088, i32 0, i32 15
  %6090 = getelementptr inbounds %struct.Reg, %struct.Reg* %6089, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %6090 to i64*
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6092 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6091, i64 0, i64 0
  %YMM0.i64 = bitcast %union.VectorReg* %6092 to %"class.std::bitset"*
  %6093 = bitcast %"class.std::bitset"* %YMM0.i64 to i8*
  %6094 = load i64, i64* %RBP.i63
  %6095 = load i64, i64* %RAX.i62
  %6096 = mul i64 %6095, 4
  %6097 = add i64 %6094, -13824
  %6098 = add i64 %6097, %6096
  %6099 = load i64, i64* %PC.i61
  %6100 = add i64 %6099, 9
  store i64 %6100, i64* %PC.i61
  %6101 = inttoptr i64 %6098 to float*
  %6102 = load float, float* %6101
  %6103 = bitcast i8* %6093 to float*
  store float %6102, float* %6103, align 1
  %6104 = getelementptr inbounds i8, i8* %6093, i64 4
  %6105 = bitcast i8* %6104 to float*
  store float 0.000000e+00, float* %6105, align 1
  %6106 = getelementptr inbounds i8, i8* %6093, i64 8
  %6107 = bitcast i8* %6106 to float*
  store float 0.000000e+00, float* %6107, align 1
  %6108 = getelementptr inbounds i8, i8* %6093, i64 12
  %6109 = bitcast i8* %6108 to float*
  store float 0.000000e+00, float* %6109, align 1
  store %struct.Memory* %loadMem_420a85, %struct.Memory** %MEMORY
  %loadMem_420a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6111 = getelementptr inbounds %struct.GPR, %struct.GPR* %6110, i32 0, i32 33
  %6112 = getelementptr inbounds %struct.Reg, %struct.Reg* %6111, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %6112 to i64*
  %6113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6114 = getelementptr inbounds %struct.GPR, %struct.GPR* %6113, i32 0, i32 15
  %6115 = getelementptr inbounds %struct.Reg, %struct.Reg* %6114, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %6115 to i64*
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6117 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6116, i64 0, i64 0
  %XMM0.i60 = bitcast %union.VectorReg* %6117 to %union.vec128_t*
  %6118 = load i64, i64* %RBP.i59
  %6119 = sub i64 %6118, 13856
  %6120 = bitcast %union.vec128_t* %XMM0.i60 to i8*
  %6121 = load i64, i64* %PC.i58
  %6122 = add i64 %6121, 8
  store i64 %6122, i64* %PC.i58
  %6123 = bitcast i8* %6120 to <2 x float>*
  %6124 = load <2 x float>, <2 x float>* %6123, align 1
  %6125 = extractelement <2 x float> %6124, i32 0
  %6126 = inttoptr i64 %6119 to float*
  store float %6125, float* %6126
  store %struct.Memory* %loadMem_420a8e, %struct.Memory** %MEMORY
  %loadMem_420a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6128 = getelementptr inbounds %struct.GPR, %struct.GPR* %6127, i32 0, i32 33
  %6129 = getelementptr inbounds %struct.Reg, %struct.Reg* %6128, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %6129 to i64*
  %6130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6131 = getelementptr inbounds %struct.GPR, %struct.GPR* %6130, i32 0, i32 7
  %6132 = getelementptr inbounds %struct.Reg, %struct.Reg* %6131, i32 0, i32 0
  %RDX.i56 = bitcast %union.anon* %6132 to i64*
  %6133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6134 = getelementptr inbounds %struct.GPR, %struct.GPR* %6133, i32 0, i32 15
  %6135 = getelementptr inbounds %struct.Reg, %struct.Reg* %6134, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %6135 to i64*
  %6136 = load i64, i64* %RBP.i57
  %6137 = sub i64 %6136, 13852
  %6138 = load i64, i64* %PC.i55
  %6139 = add i64 %6138, 6
  store i64 %6139, i64* %PC.i55
  %6140 = inttoptr i64 %6137 to i32*
  %6141 = load i32, i32* %6140
  %6142 = zext i32 %6141 to i64
  store i64 %6142, i64* %RDX.i56, align 8
  store %struct.Memory* %loadMem_420a96, %struct.Memory** %MEMORY
  %loadMem_420a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6144 = getelementptr inbounds %struct.GPR, %struct.GPR* %6143, i32 0, i32 33
  %6145 = getelementptr inbounds %struct.Reg, %struct.Reg* %6144, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %6145 to i64*
  %6146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6147 = getelementptr inbounds %struct.GPR, %struct.GPR* %6146, i32 0, i32 1
  %6148 = getelementptr inbounds %struct.Reg, %struct.Reg* %6147, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %6148 to i64*
  %6149 = load i64, i64* %PC.i53
  %6150 = add i64 %6149, 8
  store i64 %6150, i64* %PC.i53
  %6151 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %6151, i64* %RAX.i54, align 8
  store %struct.Memory* %loadMem_420a9c, %struct.Memory** %MEMORY
  %loadMem_420aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6153 = getelementptr inbounds %struct.GPR, %struct.GPR* %6152, i32 0, i32 33
  %6154 = getelementptr inbounds %struct.Reg, %struct.Reg* %6153, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %6154 to i64*
  %6155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6156 = getelementptr inbounds %struct.GPR, %struct.GPR* %6155, i32 0, i32 5
  %6157 = getelementptr inbounds %struct.Reg, %struct.Reg* %6156, i32 0, i32 0
  %RCX.i51 = bitcast %union.anon* %6157 to i64*
  %6158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6159 = getelementptr inbounds %struct.GPR, %struct.GPR* %6158, i32 0, i32 15
  %6160 = getelementptr inbounds %struct.Reg, %struct.Reg* %6159, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %6160 to i64*
  %6161 = load i64, i64* %RBP.i52
  %6162 = sub i64 %6161, 16
  %6163 = load i64, i64* %PC.i50
  %6164 = add i64 %6163, 4
  store i64 %6164, i64* %PC.i50
  %6165 = inttoptr i64 %6162 to i32*
  %6166 = load i32, i32* %6165
  %6167 = sext i32 %6166 to i64
  store i64 %6167, i64* %RCX.i51, align 8
  store %struct.Memory* %loadMem_420aa4, %struct.Memory** %MEMORY
  %loadMem_420aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6169 = getelementptr inbounds %struct.GPR, %struct.GPR* %6168, i32 0, i32 33
  %6170 = getelementptr inbounds %struct.Reg, %struct.Reg* %6169, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %6170 to i64*
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6172 = getelementptr inbounds %struct.GPR, %struct.GPR* %6171, i32 0, i32 5
  %6173 = getelementptr inbounds %struct.Reg, %struct.Reg* %6172, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %6173 to i64*
  %6174 = load i64, i64* %RCX.i49
  %6175 = load i64, i64* %PC.i48
  %6176 = add i64 %6175, 4
  store i64 %6176, i64* %PC.i48
  %6177 = sext i64 %6174 to i128
  %6178 = and i128 %6177, -18446744073709551616
  %6179 = zext i64 %6174 to i128
  %6180 = or i128 %6178, %6179
  %6181 = mul i128 104, %6180
  %6182 = trunc i128 %6181 to i64
  store i64 %6182, i64* %RCX.i49, align 8
  %6183 = sext i64 %6182 to i128
  %6184 = icmp ne i128 %6183, %6181
  %6185 = zext i1 %6184 to i8
  %6186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6185, i8* %6186, align 1
  %6187 = trunc i128 %6181 to i32
  %6188 = and i32 %6187, 255
  %6189 = call i32 @llvm.ctpop.i32(i32 %6188)
  %6190 = trunc i32 %6189 to i8
  %6191 = and i8 %6190, 1
  %6192 = xor i8 %6191, 1
  %6193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6192, i8* %6193, align 1
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6194, align 1
  %6195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6195, align 1
  %6196 = lshr i64 %6182, 63
  %6197 = trunc i64 %6196 to i8
  %6198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6197, i8* %6198, align 1
  %6199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6185, i8* %6199, align 1
  store %struct.Memory* %loadMem_420aa8, %struct.Memory** %MEMORY
  %loadMem_420aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6201 = getelementptr inbounds %struct.GPR, %struct.GPR* %6200, i32 0, i32 33
  %6202 = getelementptr inbounds %struct.Reg, %struct.Reg* %6201, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %6202 to i64*
  %6203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6204 = getelementptr inbounds %struct.GPR, %struct.GPR* %6203, i32 0, i32 1
  %6205 = getelementptr inbounds %struct.Reg, %struct.Reg* %6204, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %6205 to i64*
  %6206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6207 = getelementptr inbounds %struct.GPR, %struct.GPR* %6206, i32 0, i32 5
  %6208 = getelementptr inbounds %struct.Reg, %struct.Reg* %6207, i32 0, i32 0
  %RCX.i47 = bitcast %union.anon* %6208 to i64*
  %6209 = load i64, i64* %RAX.i46
  %6210 = load i64, i64* %RCX.i47
  %6211 = load i64, i64* %PC.i45
  %6212 = add i64 %6211, 3
  store i64 %6212, i64* %PC.i45
  %6213 = add i64 %6210, %6209
  store i64 %6213, i64* %RAX.i46, align 8
  %6214 = icmp ult i64 %6213, %6209
  %6215 = icmp ult i64 %6213, %6210
  %6216 = or i1 %6214, %6215
  %6217 = zext i1 %6216 to i8
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6217, i8* %6218, align 1
  %6219 = trunc i64 %6213 to i32
  %6220 = and i32 %6219, 255
  %6221 = call i32 @llvm.ctpop.i32(i32 %6220)
  %6222 = trunc i32 %6221 to i8
  %6223 = and i8 %6222, 1
  %6224 = xor i8 %6223, 1
  %6225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6224, i8* %6225, align 1
  %6226 = xor i64 %6210, %6209
  %6227 = xor i64 %6226, %6213
  %6228 = lshr i64 %6227, 4
  %6229 = trunc i64 %6228 to i8
  %6230 = and i8 %6229, 1
  %6231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6230, i8* %6231, align 1
  %6232 = icmp eq i64 %6213, 0
  %6233 = zext i1 %6232 to i8
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6233, i8* %6234, align 1
  %6235 = lshr i64 %6213, 63
  %6236 = trunc i64 %6235 to i8
  %6237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6236, i8* %6237, align 1
  %6238 = lshr i64 %6209, 63
  %6239 = lshr i64 %6210, 63
  %6240 = xor i64 %6235, %6238
  %6241 = xor i64 %6235, %6239
  %6242 = add i64 %6240, %6241
  %6243 = icmp eq i64 %6242, 2
  %6244 = zext i1 %6243 to i8
  %6245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6244, i8* %6245, align 1
  store %struct.Memory* %loadMem_420aac, %struct.Memory** %MEMORY
  %loadMem_420aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6247 = getelementptr inbounds %struct.GPR, %struct.GPR* %6246, i32 0, i32 33
  %6248 = getelementptr inbounds %struct.Reg, %struct.Reg* %6247, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %6248 to i64*
  %6249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6250 = getelementptr inbounds %struct.GPR, %struct.GPR* %6249, i32 0, i32 7
  %6251 = getelementptr inbounds %struct.Reg, %struct.Reg* %6250, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %6251 to i32*
  %6252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6253 = getelementptr inbounds %struct.GPR, %struct.GPR* %6252, i32 0, i32 1
  %6254 = getelementptr inbounds %struct.Reg, %struct.Reg* %6253, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %6254 to i64*
  %6255 = load i32, i32* %EDX.i
  %6256 = zext i32 %6255 to i64
  %6257 = load i64, i64* %RAX.i44
  %6258 = add i64 %6257, 52
  %6259 = load i64, i64* %PC.i43
  %6260 = add i64 %6259, 3
  store i64 %6260, i64* %PC.i43
  %6261 = inttoptr i64 %6258 to i32*
  %6262 = load i32, i32* %6261
  %6263 = sub i32 %6255, %6262
  %6264 = icmp ult i32 %6255, %6262
  %6265 = zext i1 %6264 to i8
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6265, i8* %6266, align 1
  %6267 = and i32 %6263, 255
  %6268 = call i32 @llvm.ctpop.i32(i32 %6267)
  %6269 = trunc i32 %6268 to i8
  %6270 = and i8 %6269, 1
  %6271 = xor i8 %6270, 1
  %6272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6271, i8* %6272, align 1
  %6273 = xor i32 %6262, %6255
  %6274 = xor i32 %6273, %6263
  %6275 = lshr i32 %6274, 4
  %6276 = trunc i32 %6275 to i8
  %6277 = and i8 %6276, 1
  %6278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6277, i8* %6278, align 1
  %6279 = icmp eq i32 %6263, 0
  %6280 = zext i1 %6279 to i8
  %6281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6280, i8* %6281, align 1
  %6282 = lshr i32 %6263, 31
  %6283 = trunc i32 %6282 to i8
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6283, i8* %6284, align 1
  %6285 = lshr i32 %6255, 31
  %6286 = lshr i32 %6262, 31
  %6287 = xor i32 %6286, %6285
  %6288 = xor i32 %6282, %6285
  %6289 = add i32 %6288, %6287
  %6290 = icmp eq i32 %6289, 2
  %6291 = zext i1 %6290 to i8
  %6292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6291, i8* %6292, align 1
  store %struct.Memory* %loadMem_420aaf, %struct.Memory** %MEMORY
  %loadMem_420ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6294 = getelementptr inbounds %struct.GPR, %struct.GPR* %6293, i32 0, i32 33
  %6295 = getelementptr inbounds %struct.Reg, %struct.Reg* %6294, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %6295 to i64*
  %6296 = load i64, i64* %PC.i42
  %6297 = add i64 %6296, 66
  %6298 = load i64, i64* %PC.i42
  %6299 = add i64 %6298, 6
  %6300 = load i64, i64* %PC.i42
  %6301 = add i64 %6300, 6
  store i64 %6301, i64* %PC.i42
  %6302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6303 = load i8, i8* %6302, align 1
  %6304 = icmp ne i8 %6303, 0
  %6305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6306 = load i8, i8* %6305, align 1
  %6307 = icmp ne i8 %6306, 0
  %6308 = xor i1 %6304, %6307
  %6309 = xor i1 %6308, true
  %6310 = zext i1 %6309 to i8
  store i8 %6310, i8* %BRANCH_TAKEN, align 1
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6312 = select i1 %6308, i64 %6299, i64 %6297
  store i64 %6312, i64* %6311, align 8
  store %struct.Memory* %loadMem_420ab2, %struct.Memory** %MEMORY
  %loadBr_420ab2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420ab2 = icmp eq i8 %loadBr_420ab2, 1
  br i1 %cmpBr_420ab2, label %block_.L_420af4, label %block_420ab8

block_420ab8:                                     ; preds = %block_420a3a
  %loadMem_420ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6314 = getelementptr inbounds %struct.GPR, %struct.GPR* %6313, i32 0, i32 33
  %6315 = getelementptr inbounds %struct.Reg, %struct.Reg* %6314, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %6315 to i64*
  %6316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6317 = getelementptr inbounds %struct.GPR, %struct.GPR* %6316, i32 0, i32 1
  %6318 = getelementptr inbounds %struct.Reg, %struct.Reg* %6317, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %6318 to i64*
  %6319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6320 = getelementptr inbounds %struct.GPR, %struct.GPR* %6319, i32 0, i32 15
  %6321 = getelementptr inbounds %struct.Reg, %struct.Reg* %6320, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %6321 to i64*
  %6322 = load i64, i64* %RBP.i41
  %6323 = sub i64 %6322, 13852
  %6324 = load i64, i64* %PC.i39
  %6325 = add i64 %6324, 6
  store i64 %6325, i64* %PC.i39
  %6326 = inttoptr i64 %6323 to i32*
  %6327 = load i32, i32* %6326
  %6328 = zext i32 %6327 to i64
  store i64 %6328, i64* %RAX.i40, align 8
  store %struct.Memory* %loadMem_420ab8, %struct.Memory** %MEMORY
  %loadMem_420abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %6329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6330 = getelementptr inbounds %struct.GPR, %struct.GPR* %6329, i32 0, i32 33
  %6331 = getelementptr inbounds %struct.Reg, %struct.Reg* %6330, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %6331 to i64*
  %6332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6333 = getelementptr inbounds %struct.GPR, %struct.GPR* %6332, i32 0, i32 5
  %6334 = getelementptr inbounds %struct.Reg, %struct.Reg* %6333, i32 0, i32 0
  %RCX.i38 = bitcast %union.anon* %6334 to i64*
  %6335 = load i64, i64* %PC.i37
  %6336 = add i64 %6335, 8
  store i64 %6336, i64* %PC.i37
  %6337 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %6337, i64* %RCX.i38, align 8
  store %struct.Memory* %loadMem_420abe, %struct.Memory** %MEMORY
  %loadMem_420ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6339 = getelementptr inbounds %struct.GPR, %struct.GPR* %6338, i32 0, i32 33
  %6340 = getelementptr inbounds %struct.Reg, %struct.Reg* %6339, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %6340 to i64*
  %6341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6342 = getelementptr inbounds %struct.GPR, %struct.GPR* %6341, i32 0, i32 7
  %6343 = getelementptr inbounds %struct.Reg, %struct.Reg* %6342, i32 0, i32 0
  %RDX.i35 = bitcast %union.anon* %6343 to i64*
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6345 = getelementptr inbounds %struct.GPR, %struct.GPR* %6344, i32 0, i32 15
  %6346 = getelementptr inbounds %struct.Reg, %struct.Reg* %6345, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %6346 to i64*
  %6347 = load i64, i64* %RBP.i36
  %6348 = sub i64 %6347, 16
  %6349 = load i64, i64* %PC.i34
  %6350 = add i64 %6349, 4
  store i64 %6350, i64* %PC.i34
  %6351 = inttoptr i64 %6348 to i32*
  %6352 = load i32, i32* %6351
  %6353 = sext i32 %6352 to i64
  store i64 %6353, i64* %RDX.i35, align 8
  store %struct.Memory* %loadMem_420ac6, %struct.Memory** %MEMORY
  %loadMem_420aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %6354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6355 = getelementptr inbounds %struct.GPR, %struct.GPR* %6354, i32 0, i32 33
  %6356 = getelementptr inbounds %struct.Reg, %struct.Reg* %6355, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %6356 to i64*
  %6357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6358 = getelementptr inbounds %struct.GPR, %struct.GPR* %6357, i32 0, i32 7
  %6359 = getelementptr inbounds %struct.Reg, %struct.Reg* %6358, i32 0, i32 0
  %RDX.i33 = bitcast %union.anon* %6359 to i64*
  %6360 = load i64, i64* %RDX.i33
  %6361 = load i64, i64* %PC.i32
  %6362 = add i64 %6361, 4
  store i64 %6362, i64* %PC.i32
  %6363 = sext i64 %6360 to i128
  %6364 = and i128 %6363, -18446744073709551616
  %6365 = zext i64 %6360 to i128
  %6366 = or i128 %6364, %6365
  %6367 = mul i128 104, %6366
  %6368 = trunc i128 %6367 to i64
  store i64 %6368, i64* %RDX.i33, align 8
  %6369 = sext i64 %6368 to i128
  %6370 = icmp ne i128 %6369, %6367
  %6371 = zext i1 %6370 to i8
  %6372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6371, i8* %6372, align 1
  %6373 = trunc i128 %6367 to i32
  %6374 = and i32 %6373, 255
  %6375 = call i32 @llvm.ctpop.i32(i32 %6374)
  %6376 = trunc i32 %6375 to i8
  %6377 = and i8 %6376, 1
  %6378 = xor i8 %6377, 1
  %6379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6378, i8* %6379, align 1
  %6380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6380, align 1
  %6381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6381, align 1
  %6382 = lshr i64 %6368, 63
  %6383 = trunc i64 %6382 to i8
  %6384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6383, i8* %6384, align 1
  %6385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6371, i8* %6385, align 1
  store %struct.Memory* %loadMem_420aca, %struct.Memory** %MEMORY
  %loadMem_420ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %6386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6387 = getelementptr inbounds %struct.GPR, %struct.GPR* %6386, i32 0, i32 33
  %6388 = getelementptr inbounds %struct.Reg, %struct.Reg* %6387, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %6388 to i64*
  %6389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6390 = getelementptr inbounds %struct.GPR, %struct.GPR* %6389, i32 0, i32 5
  %6391 = getelementptr inbounds %struct.Reg, %struct.Reg* %6390, i32 0, i32 0
  %RCX.i30 = bitcast %union.anon* %6391 to i64*
  %6392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6393 = getelementptr inbounds %struct.GPR, %struct.GPR* %6392, i32 0, i32 7
  %6394 = getelementptr inbounds %struct.Reg, %struct.Reg* %6393, i32 0, i32 0
  %RDX.i31 = bitcast %union.anon* %6394 to i64*
  %6395 = load i64, i64* %RCX.i30
  %6396 = load i64, i64* %RDX.i31
  %6397 = load i64, i64* %PC.i29
  %6398 = add i64 %6397, 3
  store i64 %6398, i64* %PC.i29
  %6399 = add i64 %6396, %6395
  store i64 %6399, i64* %RCX.i30, align 8
  %6400 = icmp ult i64 %6399, %6395
  %6401 = icmp ult i64 %6399, %6396
  %6402 = or i1 %6400, %6401
  %6403 = zext i1 %6402 to i8
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6403, i8* %6404, align 1
  %6405 = trunc i64 %6399 to i32
  %6406 = and i32 %6405, 255
  %6407 = call i32 @llvm.ctpop.i32(i32 %6406)
  %6408 = trunc i32 %6407 to i8
  %6409 = and i8 %6408, 1
  %6410 = xor i8 %6409, 1
  %6411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6410, i8* %6411, align 1
  %6412 = xor i64 %6396, %6395
  %6413 = xor i64 %6412, %6399
  %6414 = lshr i64 %6413, 4
  %6415 = trunc i64 %6414 to i8
  %6416 = and i8 %6415, 1
  %6417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6416, i8* %6417, align 1
  %6418 = icmp eq i64 %6399, 0
  %6419 = zext i1 %6418 to i8
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6419, i8* %6420, align 1
  %6421 = lshr i64 %6399, 63
  %6422 = trunc i64 %6421 to i8
  %6423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6422, i8* %6423, align 1
  %6424 = lshr i64 %6395, 63
  %6425 = lshr i64 %6396, 63
  %6426 = xor i64 %6421, %6424
  %6427 = xor i64 %6421, %6425
  %6428 = add i64 %6426, %6427
  %6429 = icmp eq i64 %6428, 2
  %6430 = zext i1 %6429 to i8
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6430, i8* %6431, align 1
  store %struct.Memory* %loadMem_420ace, %struct.Memory** %MEMORY
  %loadMem_420ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6433 = getelementptr inbounds %struct.GPR, %struct.GPR* %6432, i32 0, i32 33
  %6434 = getelementptr inbounds %struct.Reg, %struct.Reg* %6433, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %6434 to i64*
  %6435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6436 = getelementptr inbounds %struct.GPR, %struct.GPR* %6435, i32 0, i32 1
  %6437 = getelementptr inbounds %struct.Reg, %struct.Reg* %6436, i32 0, i32 0
  %EAX.i27 = bitcast %union.anon* %6437 to i32*
  %6438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6439 = getelementptr inbounds %struct.GPR, %struct.GPR* %6438, i32 0, i32 5
  %6440 = getelementptr inbounds %struct.Reg, %struct.Reg* %6439, i32 0, i32 0
  %RCX.i28 = bitcast %union.anon* %6440 to i64*
  %6441 = load i64, i64* %RCX.i28
  %6442 = add i64 %6441, 52
  %6443 = load i32, i32* %EAX.i27
  %6444 = zext i32 %6443 to i64
  %6445 = load i64, i64* %PC.i26
  %6446 = add i64 %6445, 3
  store i64 %6446, i64* %PC.i26
  %6447 = inttoptr i64 %6442 to i32*
  store i32 %6443, i32* %6447
  store %struct.Memory* %loadMem_420ad1, %struct.Memory** %MEMORY
  %loadMem_420ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6449 = getelementptr inbounds %struct.GPR, %struct.GPR* %6448, i32 0, i32 33
  %6450 = getelementptr inbounds %struct.Reg, %struct.Reg* %6449, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %6450 to i64*
  %6451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6452 = getelementptr inbounds %struct.GPR, %struct.GPR* %6451, i32 0, i32 15
  %6453 = getelementptr inbounds %struct.Reg, %struct.Reg* %6452, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %6453 to i64*
  %6454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6455 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6454, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %6455 to %"class.std::bitset"*
  %6456 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %6457 = load i64, i64* %RBP.i25
  %6458 = sub i64 %6457, 13856
  %6459 = load i64, i64* %PC.i24
  %6460 = add i64 %6459, 8
  store i64 %6460, i64* %PC.i24
  %6461 = inttoptr i64 %6458 to float*
  %6462 = load float, float* %6461
  %6463 = bitcast i8* %6456 to float*
  store float %6462, float* %6463, align 1
  %6464 = getelementptr inbounds i8, i8* %6456, i64 4
  %6465 = bitcast i8* %6464 to float*
  store float 0.000000e+00, float* %6465, align 1
  %6466 = getelementptr inbounds i8, i8* %6456, i64 8
  %6467 = bitcast i8* %6466 to float*
  store float 0.000000e+00, float* %6467, align 1
  %6468 = getelementptr inbounds i8, i8* %6456, i64 12
  %6469 = bitcast i8* %6468 to float*
  store float 0.000000e+00, float* %6469, align 1
  store %struct.Memory* %loadMem_420ad4, %struct.Memory** %MEMORY
  %loadMem_420adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6471 = getelementptr inbounds %struct.GPR, %struct.GPR* %6470, i32 0, i32 33
  %6472 = getelementptr inbounds %struct.Reg, %struct.Reg* %6471, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %6472 to i64*
  %6473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6474 = getelementptr inbounds %struct.GPR, %struct.GPR* %6473, i32 0, i32 5
  %6475 = getelementptr inbounds %struct.Reg, %struct.Reg* %6474, i32 0, i32 0
  %RCX.i23 = bitcast %union.anon* %6475 to i64*
  %6476 = load i64, i64* %PC.i22
  %6477 = add i64 %6476, 8
  store i64 %6477, i64* %PC.i22
  %6478 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %6478, i64* %RCX.i23, align 8
  store %struct.Memory* %loadMem_420adc, %struct.Memory** %MEMORY
  %loadMem_420ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6480 = getelementptr inbounds %struct.GPR, %struct.GPR* %6479, i32 0, i32 33
  %6481 = getelementptr inbounds %struct.Reg, %struct.Reg* %6480, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %6481 to i64*
  %6482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6483 = getelementptr inbounds %struct.GPR, %struct.GPR* %6482, i32 0, i32 7
  %6484 = getelementptr inbounds %struct.Reg, %struct.Reg* %6483, i32 0, i32 0
  %RDX.i20 = bitcast %union.anon* %6484 to i64*
  %6485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6486 = getelementptr inbounds %struct.GPR, %struct.GPR* %6485, i32 0, i32 15
  %6487 = getelementptr inbounds %struct.Reg, %struct.Reg* %6486, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %6487 to i64*
  %6488 = load i64, i64* %RBP.i21
  %6489 = sub i64 %6488, 16
  %6490 = load i64, i64* %PC.i19
  %6491 = add i64 %6490, 4
  store i64 %6491, i64* %PC.i19
  %6492 = inttoptr i64 %6489 to i32*
  %6493 = load i32, i32* %6492
  %6494 = sext i32 %6493 to i64
  store i64 %6494, i64* %RDX.i20, align 8
  store %struct.Memory* %loadMem_420ae4, %struct.Memory** %MEMORY
  %loadMem_420ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6496 = getelementptr inbounds %struct.GPR, %struct.GPR* %6495, i32 0, i32 33
  %6497 = getelementptr inbounds %struct.Reg, %struct.Reg* %6496, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %6497 to i64*
  %6498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6499 = getelementptr inbounds %struct.GPR, %struct.GPR* %6498, i32 0, i32 7
  %6500 = getelementptr inbounds %struct.Reg, %struct.Reg* %6499, i32 0, i32 0
  %RDX.i18 = bitcast %union.anon* %6500 to i64*
  %6501 = load i64, i64* %RDX.i18
  %6502 = load i64, i64* %PC.i17
  %6503 = add i64 %6502, 4
  store i64 %6503, i64* %PC.i17
  %6504 = sext i64 %6501 to i128
  %6505 = and i128 %6504, -18446744073709551616
  %6506 = zext i64 %6501 to i128
  %6507 = or i128 %6505, %6506
  %6508 = mul i128 104, %6507
  %6509 = trunc i128 %6508 to i64
  store i64 %6509, i64* %RDX.i18, align 8
  %6510 = sext i64 %6509 to i128
  %6511 = icmp ne i128 %6510, %6508
  %6512 = zext i1 %6511 to i8
  %6513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6512, i8* %6513, align 1
  %6514 = trunc i128 %6508 to i32
  %6515 = and i32 %6514, 255
  %6516 = call i32 @llvm.ctpop.i32(i32 %6515)
  %6517 = trunc i32 %6516 to i8
  %6518 = and i8 %6517, 1
  %6519 = xor i8 %6518, 1
  %6520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6519, i8* %6520, align 1
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6521, align 1
  %6522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6522, align 1
  %6523 = lshr i64 %6509, 63
  %6524 = trunc i64 %6523 to i8
  %6525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6524, i8* %6525, align 1
  %6526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6512, i8* %6526, align 1
  store %struct.Memory* %loadMem_420ae8, %struct.Memory** %MEMORY
  %loadMem_420aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6528 = getelementptr inbounds %struct.GPR, %struct.GPR* %6527, i32 0, i32 33
  %6529 = getelementptr inbounds %struct.Reg, %struct.Reg* %6528, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %6529 to i64*
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6531 = getelementptr inbounds %struct.GPR, %struct.GPR* %6530, i32 0, i32 5
  %6532 = getelementptr inbounds %struct.Reg, %struct.Reg* %6531, i32 0, i32 0
  %RCX.i16 = bitcast %union.anon* %6532 to i64*
  %6533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6534 = getelementptr inbounds %struct.GPR, %struct.GPR* %6533, i32 0, i32 7
  %6535 = getelementptr inbounds %struct.Reg, %struct.Reg* %6534, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6535 to i64*
  %6536 = load i64, i64* %RCX.i16
  %6537 = load i64, i64* %RDX.i
  %6538 = load i64, i64* %PC.i15
  %6539 = add i64 %6538, 3
  store i64 %6539, i64* %PC.i15
  %6540 = add i64 %6537, %6536
  store i64 %6540, i64* %RCX.i16, align 8
  %6541 = icmp ult i64 %6540, %6536
  %6542 = icmp ult i64 %6540, %6537
  %6543 = or i1 %6541, %6542
  %6544 = zext i1 %6543 to i8
  %6545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6544, i8* %6545, align 1
  %6546 = trunc i64 %6540 to i32
  %6547 = and i32 %6546, 255
  %6548 = call i32 @llvm.ctpop.i32(i32 %6547)
  %6549 = trunc i32 %6548 to i8
  %6550 = and i8 %6549, 1
  %6551 = xor i8 %6550, 1
  %6552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6551, i8* %6552, align 1
  %6553 = xor i64 %6537, %6536
  %6554 = xor i64 %6553, %6540
  %6555 = lshr i64 %6554, 4
  %6556 = trunc i64 %6555 to i8
  %6557 = and i8 %6556, 1
  %6558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6557, i8* %6558, align 1
  %6559 = icmp eq i64 %6540, 0
  %6560 = zext i1 %6559 to i8
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6560, i8* %6561, align 1
  %6562 = lshr i64 %6540, 63
  %6563 = trunc i64 %6562 to i8
  %6564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6563, i8* %6564, align 1
  %6565 = lshr i64 %6536, 63
  %6566 = lshr i64 %6537, 63
  %6567 = xor i64 %6562, %6565
  %6568 = xor i64 %6562, %6566
  %6569 = add i64 %6567, %6568
  %6570 = icmp eq i64 %6569, 2
  %6571 = zext i1 %6570 to i8
  %6572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6571, i8* %6572, align 1
  store %struct.Memory* %loadMem_420aec, %struct.Memory** %MEMORY
  %loadMem_420aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %6573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6574 = getelementptr inbounds %struct.GPR, %struct.GPR* %6573, i32 0, i32 33
  %6575 = getelementptr inbounds %struct.Reg, %struct.Reg* %6574, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %6575 to i64*
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6577 = getelementptr inbounds %struct.GPR, %struct.GPR* %6576, i32 0, i32 5
  %6578 = getelementptr inbounds %struct.Reg, %struct.Reg* %6577, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6578 to i64*
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6580 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6579, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %6580 to %union.vec128_t*
  %6581 = load i64, i64* %RCX.i
  %6582 = add i64 %6581, 56
  %6583 = bitcast %union.vec128_t* %XMM0.i to i8*
  %6584 = load i64, i64* %PC.i14
  %6585 = add i64 %6584, 5
  store i64 %6585, i64* %PC.i14
  %6586 = bitcast i8* %6583 to <2 x float>*
  %6587 = load <2 x float>, <2 x float>* %6586, align 1
  %6588 = extractelement <2 x float> %6587, i32 0
  %6589 = inttoptr i64 %6582 to float*
  store float %6588, float* %6589
  store %struct.Memory* %loadMem_420aef, %struct.Memory** %MEMORY
  br label %block_.L_420af4

block_.L_420af4:                                  ; preds = %block_420ab8, %block_420a3a
  %loadMem_420af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6591 = getelementptr inbounds %struct.GPR, %struct.GPR* %6590, i32 0, i32 33
  %6592 = getelementptr inbounds %struct.Reg, %struct.Reg* %6591, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %6592 to i64*
  %6593 = load i64, i64* %PC.i13
  %6594 = add i64 %6593, 5
  %6595 = load i64, i64* %PC.i13
  %6596 = add i64 %6595, 5
  store i64 %6596, i64* %PC.i13
  %6597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6594, i64* %6597, align 8
  store %struct.Memory* %loadMem_420af4, %struct.Memory** %MEMORY
  br label %block_.L_420af9

block_.L_420af9:                                  ; preds = %block_.L_420af4
  %loadMem_420af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6599 = getelementptr inbounds %struct.GPR, %struct.GPR* %6598, i32 0, i32 33
  %6600 = getelementptr inbounds %struct.Reg, %struct.Reg* %6599, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %6600 to i64*
  %6601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6602 = getelementptr inbounds %struct.GPR, %struct.GPR* %6601, i32 0, i32 1
  %6603 = getelementptr inbounds %struct.Reg, %struct.Reg* %6602, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %6603 to i64*
  %6604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6605 = getelementptr inbounds %struct.GPR, %struct.GPR* %6604, i32 0, i32 15
  %6606 = getelementptr inbounds %struct.Reg, %struct.Reg* %6605, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %6606 to i64*
  %6607 = load i64, i64* %RBP.i12
  %6608 = sub i64 %6607, 16
  %6609 = load i64, i64* %PC.i10
  %6610 = add i64 %6609, 3
  store i64 %6610, i64* %PC.i10
  %6611 = inttoptr i64 %6608 to i32*
  %6612 = load i32, i32* %6611
  %6613 = zext i32 %6612 to i64
  store i64 %6613, i64* %RAX.i11, align 8
  store %struct.Memory* %loadMem_420af9, %struct.Memory** %MEMORY
  %loadMem_420afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6615 = getelementptr inbounds %struct.GPR, %struct.GPR* %6614, i32 0, i32 33
  %6616 = getelementptr inbounds %struct.Reg, %struct.Reg* %6615, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6616 to i64*
  %6617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6618 = getelementptr inbounds %struct.GPR, %struct.GPR* %6617, i32 0, i32 1
  %6619 = getelementptr inbounds %struct.Reg, %struct.Reg* %6618, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6619 to i64*
  %6620 = load i64, i64* %RAX.i
  %6621 = load i64, i64* %PC.i9
  %6622 = add i64 %6621, 3
  store i64 %6622, i64* %PC.i9
  %6623 = trunc i64 %6620 to i32
  %6624 = add i32 1, %6623
  %6625 = zext i32 %6624 to i64
  store i64 %6625, i64* %RAX.i, align 8
  %6626 = icmp ult i32 %6624, %6623
  %6627 = icmp ult i32 %6624, 1
  %6628 = or i1 %6626, %6627
  %6629 = zext i1 %6628 to i8
  %6630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6629, i8* %6630, align 1
  %6631 = and i32 %6624, 255
  %6632 = call i32 @llvm.ctpop.i32(i32 %6631)
  %6633 = trunc i32 %6632 to i8
  %6634 = and i8 %6633, 1
  %6635 = xor i8 %6634, 1
  %6636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6635, i8* %6636, align 1
  %6637 = xor i64 1, %6620
  %6638 = trunc i64 %6637 to i32
  %6639 = xor i32 %6638, %6624
  %6640 = lshr i32 %6639, 4
  %6641 = trunc i32 %6640 to i8
  %6642 = and i8 %6641, 1
  %6643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6642, i8* %6643, align 1
  %6644 = icmp eq i32 %6624, 0
  %6645 = zext i1 %6644 to i8
  %6646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6645, i8* %6646, align 1
  %6647 = lshr i32 %6624, 31
  %6648 = trunc i32 %6647 to i8
  %6649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6648, i8* %6649, align 1
  %6650 = lshr i32 %6623, 31
  %6651 = xor i32 %6647, %6650
  %6652 = add i32 %6651, %6647
  %6653 = icmp eq i32 %6652, 2
  %6654 = zext i1 %6653 to i8
  %6655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6654, i8* %6655, align 1
  store %struct.Memory* %loadMem_420afc, %struct.Memory** %MEMORY
  %loadMem_420aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6657 = getelementptr inbounds %struct.GPR, %struct.GPR* %6656, i32 0, i32 33
  %6658 = getelementptr inbounds %struct.Reg, %struct.Reg* %6657, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %6658 to i64*
  %6659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6660 = getelementptr inbounds %struct.GPR, %struct.GPR* %6659, i32 0, i32 1
  %6661 = getelementptr inbounds %struct.Reg, %struct.Reg* %6660, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6661 to i32*
  %6662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6663 = getelementptr inbounds %struct.GPR, %struct.GPR* %6662, i32 0, i32 15
  %6664 = getelementptr inbounds %struct.Reg, %struct.Reg* %6663, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %6664 to i64*
  %6665 = load i64, i64* %RBP.i8
  %6666 = sub i64 %6665, 16
  %6667 = load i32, i32* %EAX.i
  %6668 = zext i32 %6667 to i64
  %6669 = load i64, i64* %PC.i7
  %6670 = add i64 %6669, 3
  store i64 %6670, i64* %PC.i7
  %6671 = inttoptr i64 %6666 to i32*
  store i32 %6667, i32* %6671
  store %struct.Memory* %loadMem_420aff, %struct.Memory** %MEMORY
  %loadMem_420b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6673 = getelementptr inbounds %struct.GPR, %struct.GPR* %6672, i32 0, i32 33
  %6674 = getelementptr inbounds %struct.Reg, %struct.Reg* %6673, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %6674 to i64*
  %6675 = load i64, i64* %PC.i6
  %6676 = add i64 %6675, -216
  %6677 = load i64, i64* %PC.i6
  %6678 = add i64 %6677, 5
  store i64 %6678, i64* %PC.i6
  %6679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6676, i64* %6679, align 8
  store %struct.Memory* %loadMem_420b02, %struct.Memory** %MEMORY
  br label %block_.L_420a2a

block_.L_420b07:                                  ; preds = %block_.L_420a2a
  %loadMem_420b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6681 = getelementptr inbounds %struct.GPR, %struct.GPR* %6680, i32 0, i32 33
  %6682 = getelementptr inbounds %struct.Reg, %struct.Reg* %6681, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6682 to i64*
  %6683 = load i64, i64* %PC.i5
  %6684 = add i64 %6683, 5
  %6685 = load i64, i64* %PC.i5
  %6686 = add i64 %6685, 5
  store i64 %6686, i64* %PC.i5
  %6687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6684, i64* %6687, align 8
  store %struct.Memory* %loadMem_420b07, %struct.Memory** %MEMORY
  br label %block_.L_420b0c

block_.L_420b0c:                                  ; preds = %block_.L_420b07, %block_.L_420651
  %loadMem_420b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6689 = getelementptr inbounds %struct.GPR, %struct.GPR* %6688, i32 0, i32 33
  %6690 = getelementptr inbounds %struct.Reg, %struct.Reg* %6689, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6690 to i64*
  %6691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6692 = getelementptr inbounds %struct.GPR, %struct.GPR* %6691, i32 0, i32 13
  %6693 = getelementptr inbounds %struct.Reg, %struct.Reg* %6692, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6693 to i64*
  %6694 = load i64, i64* %RSP.i
  %6695 = load i64, i64* %PC.i4
  %6696 = add i64 %6695, 7
  store i64 %6696, i64* %PC.i4
  %6697 = add i64 13888, %6694
  store i64 %6697, i64* %RSP.i, align 8
  %6698 = icmp ult i64 %6697, %6694
  %6699 = icmp ult i64 %6697, 13888
  %6700 = or i1 %6698, %6699
  %6701 = zext i1 %6700 to i8
  %6702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6701, i8* %6702, align 1
  %6703 = trunc i64 %6697 to i32
  %6704 = and i32 %6703, 255
  %6705 = call i32 @llvm.ctpop.i32(i32 %6704)
  %6706 = trunc i32 %6705 to i8
  %6707 = and i8 %6706, 1
  %6708 = xor i8 %6707, 1
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6708, i8* %6709, align 1
  %6710 = xor i64 13888, %6694
  %6711 = xor i64 %6710, %6697
  %6712 = lshr i64 %6711, 4
  %6713 = trunc i64 %6712 to i8
  %6714 = and i8 %6713, 1
  %6715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6714, i8* %6715, align 1
  %6716 = icmp eq i64 %6697, 0
  %6717 = zext i1 %6716 to i8
  %6718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6717, i8* %6718, align 1
  %6719 = lshr i64 %6697, 63
  %6720 = trunc i64 %6719 to i8
  %6721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6720, i8* %6721, align 1
  %6722 = lshr i64 %6694, 63
  %6723 = xor i64 %6719, %6722
  %6724 = add i64 %6723, %6719
  %6725 = icmp eq i64 %6724, 2
  %6726 = zext i1 %6725 to i8
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6726, i8* %6727, align 1
  store %struct.Memory* %loadMem_420b0c, %struct.Memory** %MEMORY
  %loadMem_420b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6729 = getelementptr inbounds %struct.GPR, %struct.GPR* %6728, i32 0, i32 33
  %6730 = getelementptr inbounds %struct.Reg, %struct.Reg* %6729, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6730 to i64*
  %6731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6732 = getelementptr inbounds %struct.GPR, %struct.GPR* %6731, i32 0, i32 15
  %6733 = getelementptr inbounds %struct.Reg, %struct.Reg* %6732, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6733 to i64*
  %6734 = load i64, i64* %PC.i2
  %6735 = add i64 %6734, 1
  store i64 %6735, i64* %PC.i2
  %6736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6737 = load i64, i64* %6736, align 8
  %6738 = add i64 %6737, 8
  %6739 = inttoptr i64 %6737 to i64*
  %6740 = load i64, i64* %6739
  store i64 %6740, i64* %RBP.i3, align 8
  store i64 %6738, i64* %6736, align 8
  store %struct.Memory* %loadMem_420b13, %struct.Memory** %MEMORY
  %loadMem_420b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6742 = getelementptr inbounds %struct.GPR, %struct.GPR* %6741, i32 0, i32 33
  %6743 = getelementptr inbounds %struct.Reg, %struct.Reg* %6742, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6743 to i64*
  %6744 = load i64, i64* %PC.i1
  %6745 = add i64 %6744, 1
  store i64 %6745, i64* %PC.i1
  %6746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6748 = load i64, i64* %6747, align 8
  %6749 = inttoptr i64 %6748 to i64*
  %6750 = load i64, i64* %6749
  store i64 %6750, i64* %6746, align 8
  %6751 = add i64 %6748, 8
  store i64 %6751, i64* %6747, align 8
  store %struct.Memory* %loadMem_420b14, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_420b14
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

define %struct.Memory* @routine_subq__0x3640___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 13888
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 13888
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
  %23 = xor i64 13888, %9
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

define %struct.Memory* @routine_cmpl__0x0__0x7ae454(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x7ae454_type* @G_0x7ae454 to i32*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %8, 31
  %24 = xor i32 %20, %23
  %25 = add i32 %24, %23
  %26 = icmp eq i32 %25, 2
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_420656(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x1cf0__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 7408
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.influence_get_moyo_segmentation(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x5a8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1448, i64* %RAX, align 8
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

define %struct.Memory* @routine_leaq_MINUS0x5c0__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1472
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
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

define %struct.Memory* @routine_cmpl_0xb54cec___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0xb54cec_type* @G_0xb54cec to i32*)
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

define %struct.Memory* @routine_jge_.L_420651(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = getelementptr inbounds i8, i8* %12, i64 8
  %23 = bitcast i8* %22 to i64*
  %24 = load i64, i64* %23, align 1
  %25 = xor i64 %21, %16
  %26 = xor i64 %24, %19
  %27 = trunc i64 %25 to i32
  %28 = lshr i64 %25, 32
  %29 = trunc i64 %28 to i32
  %30 = bitcast i8* %10 to i32*
  store i32 %27, i32* %30, align 1
  %31 = getelementptr inbounds i8, i8* %10, i64 4
  %32 = bitcast i8* %31 to i32*
  store i32 %29, i32* %32, align 1
  %33 = trunc i64 %26 to i32
  %34 = getelementptr inbounds i8, i8* %10, i64 8
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = lshr i64 %26, 32
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds i8, i8* %10, i64 12
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x1cf4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 7412
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x1cf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 7416
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

define %struct.Memory* @routine_movl__0x15__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 21, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x190__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_4205e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x1cec__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -7404
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

define %struct.Memory* @routine_movl__edx__MINUS0x1cfc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 7420
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x68___rsi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 104, %15
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

define %struct.Memory* @routine_movslq___rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl___rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = sub i32 %12, %18
  %20 = icmp ult i32 %12, %18
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %19, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i32 %18, %12
  %30 = xor i32 %29, %19
  %31 = lshr i32 %30, 4
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i32 %19, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %19, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %12, 31
  %42 = lshr i32 %18, 31
  %43 = xor i32 %42, %41
  %44 = xor i32 %38, %41
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_42055e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x1cfc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 7420
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

define %struct.Memory* @routine_je_.L_42055e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq_MINUS0x1cfc__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 7420
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1108__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -4360
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

define %struct.Memory* @routine_je_.L_420563(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4205d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x5c0__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -1472
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_je_.L_4205cd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x1cfc__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 7420
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

define %struct.Memory* @routine_movl_MINUS0x16ac__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -5804
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

define %struct.Memory* @routine_addl_MINUS0x1cf4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 7412
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl__eax__MINUS0x1cf4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 7412
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0xb64__rbp__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -2916
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %14 to float*
  store float %23, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %14, i64 4
  %26 = bitcast i8* %25 to float*
  store float 0.000000e+00, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %14, i64 8
  %28 = bitcast i8* %27 to float*
  store float 0.000000e+00, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %14, i64 12
  %30 = bitcast i8* %29 to float*
  store float 0.000000e+00, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_MINUS0x1cf8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 7416
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
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

define %struct.Memory* @routine_jmpq_.L_4204b5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x1cf4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 7412
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 104, %15
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

define %struct.Memory* @routine_cmpl_0x34__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 52
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

define %struct.Memory* @routine_jge_.L_42063e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__0x34__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 52
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x1cf8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 7416
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movss__xmm0__0x38__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RCX
  %12 = add i64 %11, 56
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

define %struct.Memory* @routine_jmpq_.L_420643(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_420489(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_420b0c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x2980__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 10624
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x2340__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 9024
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.influence_get_moyo_data(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_4206ac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x2fc0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RBP
  %15 = load i64, i64* %RAX
  %16 = mul i64 %15, 4
  %17 = add i64 %14, -12224
  %18 = add i64 %17, %16
  %19 = bitcast %union.vec128_t* %XMM0 to i8*
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = bitcast i8* %19 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = extractelement <2 x float> %23, i32 0
  %25 = inttoptr i64 %18 to float*
  store float %24, float* %25
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x3600__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RBP
  %15 = load i64, i64* %RAX
  %16 = mul i64 %15, 4
  %17 = add i64 %14, -13824
  %18 = add i64 %17, %16
  %19 = bitcast %union.vec128_t* %XMM0 to i8*
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = bitcast i8* %19 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = extractelement <2 x float> %23, i32 0
  %25 = inttoptr i64 %18 to float*
  store float %24, float* %25
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_420674(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_420a23(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4206da(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_420a15(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x2340__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -9024
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

define %struct.Memory* @routine_jne_.L_4206fe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x2340__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -9024
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %20, 1
  %22 = icmp ult i32 %20, 1
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
  %31 = xor i32 %20, 1
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
  %43 = lshr i32 %20, 31
  %44 = xor i32 %40, %43
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_420887(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x1d00__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 7424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1d00__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 7424
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xb060c0___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = mul i64 %14, 4
  %16 = add i64 %15, 11559104
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

define %struct.Memory* @routine_jge_.L_420882(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xb068b0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0xb068b0_type* @G__0xb068b0 to i64), i64* %RCX, align 8
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

define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 3
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x1d00__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 7424
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

define %struct.Memory* @routine_movl__esi__MINUS0x3604__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13828
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3604__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13828
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__esi__MINUS0x3608__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13832
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x5__0xb060c0___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11559104
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 5
  %17 = icmp ult i32 %15, 5
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 5
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_42079f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xb060c0___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11559104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x3624__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13860
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4207af(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x5___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3624__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13860
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3624__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13860
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xc27a3__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc27a3__rip__type* @G_0xc27a3__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x360c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13836
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x360c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13836
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3608__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13832
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x2fc0__rbp__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -12224
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to float*
  %23 = load float, float* %22
  %24 = fpext float %23 to double
  %25 = bitcast i8* %14 to double*
  store double %24, double* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %10, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = bitcast i8* %11 to double*
  %20 = load double, double* %19, align 1
  %21 = fptrunc double %20 to float
  %22 = bitcast i8* %10 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %15, i32 1
  %24 = getelementptr inbounds i8, i8* %10, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %18, i32 0
  %27 = bitcast i8* %16 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %18, i32 1
  %29 = getelementptr inbounds i8, i8* %10, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__MINUS0x2fc0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RBP
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 4
  %17 = add i64 %14, -12224
  %18 = add i64 %17, %16
  %19 = bitcast %union.vec128_t* %XMM1 to i8*
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = bitcast i8* %19 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = extractelement <2 x float> %23, i32 0
  %25 = inttoptr i64 %18 to float*
  store float %24, float* %25
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x2980__rbp__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -10624
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to float*
  %23 = load float, float* %22
  %24 = fpext float %23 to double
  %25 = bitcast i8* %14 to double*
  store double %24, double* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to double*
  %15 = load double, double* %14, align 1
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = fcmp uno double %15, %17
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %block_400488
  %20 = fadd double %15, %17
  %21 = bitcast double %20 to i64
  %22 = and i64 %21, 9221120237041090560
  %23 = icmp eq i64 %22, 9218868437227405312
  %24 = and i64 %21, 2251799813685247
  %25 = icmp ne i64 %24, 0
  %26 = and i1 %23, %25
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:31:                                     ; preds = %block_400488
  %32 = fcmp ogt double %15, %17
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %31
  %34 = fcmp olt double %15, %17
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp oeq double %15, %17
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %35, %33, %31, %19
  %38 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 1, %35 ], [ 1, %19 ]
  %39 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 0, %35 ], [ 1, %19 ]
  %40 = phi i8 [ 0, %31 ], [ 1, %33 ], [ 0, %35 ], [ 1, %19 ]
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %39, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %37, %35
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %27, %44
  %48 = phi %struct.Memory* [ %30, %27 ], [ %2, %44 ]
  ret %struct.Memory* %48
}

define %struct.Memory* @routine_jbe_.L_420824(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x2980__rbp__rax_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -10624
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to float*
  %23 = load float, float* %22
  %24 = fpext float %23 to double
  %25 = bitcast i8* %14 to double*
  store double %24, double* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x3630__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 13872
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_420839(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0xc2734__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc2734__rip__type* @G_0xc2734__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x3630__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13872
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3608__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13832
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x3600__rbp__rax_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -13824
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to float*
  %23 = load float, float* %22
  %24 = fpext float %23 to double
  %25 = bitcast i8* %14 to double*
  store double %24, double* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %10, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = bitcast i8* %11 to double*
  %20 = load double, double* %19, align 1
  %21 = fptrunc double %20 to float
  %22 = bitcast i8* %10 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %15, i32 1
  %24 = getelementptr inbounds i8, i8* %10, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %18, i32 0
  %27 = bitcast i8* %16 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %18, i32 1
  %29 = getelementptr inbounds i8, i8* %10, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1d00__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 7424
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42071a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_420887(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x2340__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -9024
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %20, 2
  %22 = icmp ult i32 %20, 2
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
  %31 = xor i32 %20, 2
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
  %43 = lshr i32 %20, 31
  %44 = xor i32 %40, %43
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_420a10(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0xafd320___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = mul i64 %14, 4
  %16 = add i64 %15, 11522848
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

define %struct.Memory* @routine_jge_.L_420a0b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xb4a3e0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0xb4a3e0_type* @G__0xb4a3e0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x3610__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13840
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3610__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13840
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x3614__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13844
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x5__0xafd320___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11522848
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 5
  %17 = icmp ult i32 %15, 5
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 5
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_420928(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xafd320___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11522848
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x3634__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13876
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_420938(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x3634__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13876
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3634__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13876
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xc261a__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc261a__rip__type* @G_0xc261a__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3618__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13848
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x3618__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13848
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3614__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13844
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_4209ad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x3640__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 13888
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4209c2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0xc25ab__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc25ab__rip__type* @G_0xc25ab__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x3640__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13888
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3614__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13844
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4208a3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_420a10(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4206b3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_420b07(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0xc2536__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc2536__rip__type* @G_0xc2536__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0xab0fe0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %11, i64* %RAX, align 8
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

define %struct.Memory* @routine_imulq__0x68___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 104, %15
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

define %struct.Memory* @routine_movslq___rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x2fc0__rbp__rax_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -12224
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to float*
  %23 = load float, float* %22
  %24 = fpext float %23 to double
  %25 = bitcast i8* %14 to double*
  store double %24, double* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fadd double %16, %21
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

define %struct.Memory* @routine_movl__edx__MINUS0x361c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13852
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x3600__rbp__rax_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -13824
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %14 to float*
  store float %23, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %14, i64 4
  %26 = bitcast i8* %25 to float*
  store float 0.000000e+00, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %14, i64 8
  %28 = bitcast i8* %27 to float*
  store float 0.000000e+00, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %14, i64 12
  %30 = bitcast i8* %29 to float*
  store float 0.000000e+00, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x3620__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 13856
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

define %struct.Memory* @routine_movl_MINUS0x361c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13852
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x34__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 52
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

define %struct.Memory* @routine_jge_.L_420af4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x361c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13852
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x3620__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 13856
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_jmpq_.L_420af9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_420a2a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x3640___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 13888, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 13888
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
  %25 = xor i64 13888, %9
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
