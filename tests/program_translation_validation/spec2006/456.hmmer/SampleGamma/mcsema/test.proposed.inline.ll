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
%G_0x2be8c__rip__type = type <{ [4 x i8] }>
%G_0x2be91__rip__type = type <{ [8 x i8] }>
%G_0x2beda__rip__type = type <{ [8 x i8] }>
%G_0x2bf4c__rip__type = type <{ [8 x i8] }>
%G_0x2bf85__rip__type = type <{ [8 x i8] }>
%G_0x2bfb2__rip__type = type <{ [8 x i8] }>
%G_0x2c034__rip__type = type <{ [4 x i8] }>
%G_0x2c036__rip__type = type <{ [8 x i8] }>
%G_0x2c046__rip__type = type <{ [8 x i8] }>
%G_0x2c073__rip__type = type <{ [8 x i8] }>
%G_0x2c11f__rip__type = type <{ [8 x i8] }>
%G_0x2c140__rip__type = type <{ [8 x i8] }>
%G_0x2c193__rip__type = type <{ [8 x i8] }>
%G__0x458473_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x2be8c__rip_ = global %G_0x2be8c__rip__type zeroinitializer
@G_0x2be91__rip_ = global %G_0x2be91__rip__type zeroinitializer
@G_0x2beda__rip_ = global %G_0x2beda__rip__type zeroinitializer
@G_0x2bf4c__rip_ = global %G_0x2bf4c__rip__type zeroinitializer
@G_0x2bf85__rip_ = global %G_0x2bf85__rip__type zeroinitializer
@G_0x2bfb2__rip_ = global %G_0x2bfb2__rip__type zeroinitializer
@G_0x2c034__rip_ = global %G_0x2c034__rip__type zeroinitializer
@G_0x2c036__rip_ = global %G_0x2c036__rip__type zeroinitializer
@G_0x2c046__rip_ = global %G_0x2c046__rip__type zeroinitializer
@G_0x2c073__rip_ = global %G_0x2c073__rip__type zeroinitializer
@G_0x2c11f__rip_ = global %G_0x2c11f__rip__type zeroinitializer
@G_0x2c140__rip_ = global %G_0x2c140__rip__type zeroinitializer
@G_0x2c193__rip_ = global %G_0x2c193__rip__type zeroinitializer
@G__0x458473 = global %G__0x458473_type zeroinitializer

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

declare %struct.Memory* @sub_445400.sre_random(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @SampleGamma(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_428690 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_428690, %struct.Memory** %MEMORY
  %loadMem_428691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i29 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i29
  %27 = load i64, i64* %PC.i28
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i28
  store i64 %26, i64* %RBP.i30, align 8
  store %struct.Memory* %loadMem_428691, %struct.Memory** %MEMORY
  %loadMem_428694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i34 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i34
  %36 = load i64, i64* %PC.i33
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i33
  %38 = sub i64 %35, 112
  store i64 %38, i64* %RSP.i34, align 8
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
  store %struct.Memory* %loadMem_428694, %struct.Memory** %MEMORY
  %loadMem_428698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 1
  %YMM1.i62 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = bitcast %"class.std::bitset"* %YMM1.i62 to i8*
  %73 = load i64, i64* %PC.i61
  %74 = add i64 %73, ptrtoint (%G_0x2c140__rip__type* @G_0x2c140__rip_ to i64)
  %75 = load i64, i64* %PC.i61
  %76 = add i64 %75, 8
  store i64 %76, i64* %PC.i61
  %77 = inttoptr i64 %74 to double*
  %78 = load double, double* %77
  %79 = bitcast i8* %72 to double*
  store double %78, double* %79, align 1
  %80 = getelementptr inbounds i8, i8* %72, i64 8
  %81 = bitcast i8* %80 to double*
  store double 0.000000e+00, double* %81, align 1
  store %struct.Memory* %loadMem_428698, %struct.Memory** %MEMORY
  %loadMem_4286a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 15
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %89 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %88, i64 0, i64 0
  %XMM0.i97 = bitcast %union.VectorReg* %89 to %union.vec128_t*
  %90 = load i64, i64* %RBP.i96
  %91 = sub i64 %90, 8
  %92 = bitcast %union.vec128_t* %XMM0.i97 to i8*
  %93 = load i64, i64* %PC.i95
  %94 = add i64 %93, 5
  store i64 %94, i64* %PC.i95
  %95 = bitcast i8* %92 to <2 x float>*
  %96 = load <2 x float>, <2 x float>* %95, align 1
  %97 = extractelement <2 x float> %96, i32 0
  %98 = inttoptr i64 %91 to float*
  store float %97, float* %98
  store %struct.Memory* %loadMem_4286a0, %struct.Memory** %MEMORY
  %loadMem_4286a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 15
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %106 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %105, i64 0, i64 0
  %YMM0.i103 = bitcast %union.VectorReg* %106 to %"class.std::bitset"*
  %107 = bitcast %"class.std::bitset"* %YMM0.i103 to i8*
  %108 = load i64, i64* %RBP.i102
  %109 = sub i64 %108, 8
  %110 = load i64, i64* %PC.i101
  %111 = add i64 %110, 5
  store i64 %111, i64* %PC.i101
  %112 = inttoptr i64 %109 to float*
  %113 = load float, float* %112
  %114 = fpext float %113 to double
  %115 = bitcast i8* %107 to double*
  store double %114, double* %115, align 1
  store %struct.Memory* %loadMem_4286a5, %struct.Memory** %MEMORY
  %loadMem_4286aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 33
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %118 to i64*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %120 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %119, i64 0, i64 0
  %XMM0.i141 = bitcast %union.VectorReg* %120 to %union.vec128_t*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %122 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %121, i64 0, i64 1
  %XMM1.i142 = bitcast %union.VectorReg* %122 to %union.vec128_t*
  %123 = bitcast %union.vec128_t* %XMM0.i141 to i8*
  %124 = bitcast %union.vec128_t* %XMM1.i142 to i8*
  %125 = load i64, i64* %PC.i140
  %126 = add i64 %125, 4
  store i64 %126, i64* %PC.i140
  %127 = bitcast i8* %123 to double*
  %128 = load double, double* %127, align 1
  %129 = bitcast i8* %124 to double*
  %130 = load double, double* %129, align 1
  %131 = fcmp uno double %128, %130
  br i1 %131, label %132, label %144

; <label>:132:                                    ; preds = %entry
  %133 = fadd double %128, %130
  %134 = bitcast double %133 to i64
  %135 = and i64 %134, 9221120237041090560
  %136 = icmp eq i64 %135, 9218868437227405312
  %137 = and i64 %134, 2251799813685247
  %138 = icmp ne i64 %137, 0
  %139 = and i1 %136, %138
  br i1 %139, label %140, label %150

; <label>:140:                                    ; preds = %132
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %142, %struct.Memory* %loadMem_4286aa)
  br label %routine_ucomisd__xmm1___xmm0.exit143

; <label>:144:                                    ; preds = %entry
  %145 = fcmp ogt double %128, %130
  br i1 %145, label %150, label %146

; <label>:146:                                    ; preds = %144
  %147 = fcmp olt double %128, %130
  br i1 %147, label %150, label %148

; <label>:148:                                    ; preds = %146
  %149 = fcmp oeq double %128, %130
  br i1 %149, label %150, label %157

; <label>:150:                                    ; preds = %148, %146, %144, %132
  %151 = phi i8 [ 0, %144 ], [ 0, %146 ], [ 1, %148 ], [ 1, %132 ]
  %152 = phi i8 [ 0, %144 ], [ 0, %146 ], [ 0, %148 ], [ 1, %132 ]
  %153 = phi i8 [ 0, %144 ], [ 1, %146 ], [ 0, %148 ], [ 1, %132 ]
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %151, i8* %154, align 1
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %152, i8* %155, align 1
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %153, i8* %156, align 1
  br label %157

; <label>:157:                                    ; preds = %150, %148
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %158, align 1
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %159, align 1
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %160, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit143

routine_ucomisd__xmm1___xmm0.exit143:             ; preds = %140, %157
  %161 = phi %struct.Memory* [ %143, %140 ], [ %loadMem_4286aa, %157 ]
  store %struct.Memory* %161, %struct.Memory** %MEMORY
  %loadMem_4286ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %164 to i64*
  %165 = load i64, i64* %PC.i144
  %166 = add i64 %165, 348
  %167 = load i64, i64* %PC.i144
  %168 = add i64 %167, 6
  %169 = load i64, i64* %PC.i144
  %170 = add i64 %169, 6
  store i64 %170, i64* %PC.i144
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %172 = load i8, i8* %171, align 1
  store i8 %172, i8* %BRANCH_TAKEN, align 1
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %174 = icmp ne i8 %172, 0
  %175 = select i1 %174, i64 %166, i64 %168
  store i64 %175, i64* %173, align 8
  store %struct.Memory* %loadMem_4286ae, %struct.Memory** %MEMORY
  %loadBr_4286ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4286ae = icmp eq i8 %loadBr_4286ae, 1
  br i1 %cmpBr_4286ae, label %block_.L_42880a, label %block_4286b4

block_4286b4:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit143
  %loadMem_4286b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 33
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %178 to i64*
  %179 = load i64, i64* %PC.i164
  %180 = add i64 %179, 5
  %181 = load i64, i64* %PC.i164
  %182 = add i64 %181, 5
  store i64 %182, i64* %PC.i164
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %180, i64* %183, align 8
  store %struct.Memory* %loadMem_4286b4, %struct.Memory** %MEMORY
  br label %block_.L_4286b9

block_.L_4286b9:                                  ; preds = %block_.L_428805, %block_4286b4
  %loadMem_4286b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %188 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %187, i64 0, i64 0
  %YMM0.i191 = bitcast %union.VectorReg* %188 to %"class.std::bitset"*
  %189 = bitcast %"class.std::bitset"* %YMM0.i191 to i8*
  %190 = load i64, i64* %PC.i190
  %191 = add i64 %190, ptrtoint (%G_0x2c11f__rip__type* @G_0x2c11f__rip_ to i64)
  %192 = load i64, i64* %PC.i190
  %193 = add i64 %192, 8
  store i64 %193, i64* %PC.i190
  %194 = inttoptr i64 %191 to double*
  %195 = load double, double* %194
  %196 = bitcast i8* %189 to double*
  store double %195, double* %196, align 1
  %197 = getelementptr inbounds i8, i8* %189, i64 8
  %198 = bitcast i8* %197 to double*
  store double 0.000000e+00, double* %198, align 1
  store %struct.Memory* %loadMem_4286b9, %struct.Memory** %MEMORY
  %loadMem_4286c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 33
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %203 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %202, i64 0, i64 1
  %YMM1.i222 = bitcast %union.VectorReg* %203 to %"class.std::bitset"*
  %204 = bitcast %"class.std::bitset"* %YMM1.i222 to i8*
  %205 = load i64, i64* %PC.i221
  %206 = add i64 %205, ptrtoint (%G_0x2c11f__rip__type* @G_0x2c11f__rip_ to i64)
  %207 = load i64, i64* %PC.i221
  %208 = add i64 %207, 8
  store i64 %208, i64* %PC.i221
  %209 = inttoptr i64 %206 to double*
  %210 = load double, double* %209
  %211 = bitcast i8* %204 to double*
  store double %210, double* %211, align 1
  %212 = getelementptr inbounds i8, i8* %204, i64 8
  %213 = bitcast i8* %212 to double*
  store double 0.000000e+00, double* %213, align 1
  store %struct.Memory* %loadMem_4286c1, %struct.Memory** %MEMORY
  %loadMem_4286c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 33
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %216 to i64*
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 15
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %219 to i64*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %221 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %220, i64 0, i64 2
  %YMM2.i255 = bitcast %union.VectorReg* %221 to %"class.std::bitset"*
  %222 = bitcast %"class.std::bitset"* %YMM2.i255 to i8*
  %223 = load i64, i64* %RBP.i254
  %224 = sub i64 %223, 8
  %225 = load i64, i64* %PC.i253
  %226 = add i64 %225, 5
  store i64 %226, i64* %PC.i253
  %227 = inttoptr i64 %224 to float*
  %228 = load float, float* %227
  %229 = fpext float %228 to double
  %230 = bitcast i8* %222 to double*
  store double %229, double* %230, align 1
  store %struct.Memory* %loadMem_4286c9, %struct.Memory** %MEMORY
  %loadMem_4286ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %234, i64 0, i64 1
  %YMM1.i276 = bitcast %union.VectorReg* %235 to %"class.std::bitset"*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %237 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %236, i64 0, i64 2
  %XMM2.i277 = bitcast %union.VectorReg* %237 to %union.vec128_t*
  %238 = bitcast %"class.std::bitset"* %YMM1.i276 to i8*
  %239 = bitcast %"class.std::bitset"* %YMM1.i276 to i8*
  %240 = bitcast %union.vec128_t* %XMM2.i277 to i8*
  %241 = load i64, i64* %PC.i275
  %242 = add i64 %241, 4
  store i64 %242, i64* %PC.i275
  %243 = bitcast i8* %239 to double*
  %244 = load double, double* %243, align 1
  %245 = getelementptr inbounds i8, i8* %239, i64 8
  %246 = bitcast i8* %245 to i64*
  %247 = load i64, i64* %246, align 1
  %248 = bitcast i8* %240 to double*
  %249 = load double, double* %248, align 1
  %250 = fmul double %244, %249
  %251 = bitcast i8* %238 to double*
  store double %250, double* %251, align 1
  %252 = getelementptr inbounds i8, i8* %238, i64 8
  %253 = bitcast i8* %252 to i64*
  store i64 %247, i64* %253, align 1
  store %struct.Memory* %loadMem_4286ce, %struct.Memory** %MEMORY
  %loadMem_4286d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 33
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %256 to i64*
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %258 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %257, i64 0, i64 1
  %YMM1.i295 = bitcast %union.VectorReg* %258 to %"class.std::bitset"*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %260 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %259, i64 0, i64 0
  %XMM0.i296 = bitcast %union.VectorReg* %260 to %union.vec128_t*
  %261 = bitcast %"class.std::bitset"* %YMM1.i295 to i8*
  %262 = bitcast %"class.std::bitset"* %YMM1.i295 to i8*
  %263 = bitcast %union.vec128_t* %XMM0.i296 to i8*
  %264 = load i64, i64* %PC.i294
  %265 = add i64 %264, 4
  store i64 %265, i64* %PC.i294
  %266 = bitcast i8* %262 to double*
  %267 = load double, double* %266, align 1
  %268 = getelementptr inbounds i8, i8* %262, i64 8
  %269 = bitcast i8* %268 to i64*
  %270 = load i64, i64* %269, align 1
  %271 = bitcast i8* %263 to double*
  %272 = load double, double* %271, align 1
  %273 = fsub double %267, %272
  %274 = bitcast i8* %261 to double*
  store double %273, double* %274, align 1
  %275 = getelementptr inbounds i8, i8* %261, i64 8
  %276 = bitcast i8* %275 to i64*
  store i64 %270, i64* %276, align 1
  store %struct.Memory* %loadMem_4286d2, %struct.Memory** %MEMORY
  %loadMem_4286d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 33
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %279 to i64*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %280, i64 0, i64 0
  %YMM0.i325 = bitcast %union.VectorReg* %281 to %"class.std::bitset"*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %282, i64 0, i64 1
  %XMM1.i326 = bitcast %union.VectorReg* %283 to %union.vec128_t*
  %284 = bitcast %"class.std::bitset"* %YMM0.i325 to i8*
  %285 = bitcast %union.vec128_t* %XMM1.i326 to i8*
  %286 = load i64, i64* %PC.i324
  %287 = add i64 %286, 3
  store i64 %287, i64* %PC.i324
  %288 = bitcast i8* %285 to <2 x i32>*
  %289 = load <2 x i32>, <2 x i32>* %288, align 1
  %290 = getelementptr inbounds i8, i8* %285, i64 8
  %291 = bitcast i8* %290 to <2 x i32>*
  %292 = load <2 x i32>, <2 x i32>* %291, align 1
  %293 = extractelement <2 x i32> %289, i32 0
  %294 = bitcast i8* %284 to i32*
  store i32 %293, i32* %294, align 1
  %295 = extractelement <2 x i32> %289, i32 1
  %296 = getelementptr inbounds i8, i8* %284, i64 4
  %297 = bitcast i8* %296 to i32*
  store i32 %295, i32* %297, align 1
  %298 = extractelement <2 x i32> %292, i32 0
  %299 = getelementptr inbounds i8, i8* %284, i64 8
  %300 = bitcast i8* %299 to i32*
  store i32 %298, i32* %300, align 1
  %301 = extractelement <2 x i32> %292, i32 1
  %302 = getelementptr inbounds i8, i8* %284, i64 12
  %303 = bitcast i8* %302 to i32*
  store i32 %301, i32* %303, align 1
  store %struct.Memory* %loadMem_4286d6, %struct.Memory** %MEMORY
  %loadMem1_4286d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 33
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %306 to i64*
  %307 = load i64, i64* %PC.i353
  %308 = add i64 %307, -159721
  %309 = load i64, i64* %PC.i353
  %310 = add i64 %309, 5
  %311 = load i64, i64* %PC.i353
  %312 = add i64 %311, 5
  store i64 %312, i64* %PC.i353
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = add i64 %314, -8
  %316 = inttoptr i64 %315 to i64*
  store i64 %310, i64* %316
  store i64 %315, i64* %313, align 8
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %308, i64* %317, align 8
  store %struct.Memory* %loadMem1_4286d9, %struct.Memory** %MEMORY
  %loadMem2_4286d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4286d9 = load i64, i64* %3
  %call2_4286d9 = call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %loadPC_4286d9, %struct.Memory* %loadMem2_4286d9)
  store %struct.Memory* %call2_4286d9, %struct.Memory** %MEMORY
  %loadMem_4286de = load %struct.Memory*, %struct.Memory** %MEMORY
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 33
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %320 to i64*
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %321, i64 0, i64 0
  %YMM0.i385 = bitcast %union.VectorReg* %322 to %"class.std::bitset"*
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %324 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %323, i64 0, i64 0
  %XMM0.i386 = bitcast %union.VectorReg* %324 to %union.vec128_t*
  %325 = bitcast %"class.std::bitset"* %YMM0.i385 to i8*
  %326 = bitcast %union.vec128_t* %XMM0.i386 to i8*
  %327 = load i64, i64* %PC.i384
  %328 = add i64 %327, 4
  store i64 %328, i64* %PC.i384
  %329 = bitcast i8* %325 to <2 x i32>*
  %330 = load <2 x i32>, <2 x i32>* %329, align 1
  %331 = getelementptr inbounds i8, i8* %325, i64 8
  %332 = bitcast i8* %331 to <2 x i32>*
  %333 = load <2 x i32>, <2 x i32>* %332, align 1
  %334 = bitcast i8* %326 to double*
  %335 = load double, double* %334, align 1
  %336 = fptrunc double %335 to float
  %337 = bitcast i8* %325 to float*
  store float %336, float* %337, align 1
  %338 = extractelement <2 x i32> %330, i32 1
  %339 = getelementptr inbounds i8, i8* %325, i64 4
  %340 = bitcast i8* %339 to i32*
  store i32 %338, i32* %340, align 1
  %341 = extractelement <2 x i32> %333, i32 0
  %342 = bitcast i8* %331 to i32*
  store i32 %341, i32* %342, align 1
  %343 = extractelement <2 x i32> %333, i32 1
  %344 = getelementptr inbounds i8, i8* %325, i64 12
  %345 = bitcast i8* %344 to i32*
  store i32 %343, i32* %345, align 1
  store %struct.Memory* %loadMem_4286de, %struct.Memory** %MEMORY
  %loadMem_4286e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 33
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %348 to i64*
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 15
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %351 to i64*
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %353 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %352, i64 0, i64 0
  %XMM0.i432 = bitcast %union.VectorReg* %353 to %union.vec128_t*
  %354 = load i64, i64* %RBP.i431
  %355 = sub i64 %354, 28
  %356 = bitcast %union.vec128_t* %XMM0.i432 to i8*
  %357 = load i64, i64* %PC.i430
  %358 = add i64 %357, 5
  store i64 %358, i64* %PC.i430
  %359 = bitcast i8* %356 to <2 x float>*
  %360 = load <2 x float>, <2 x float>* %359, align 1
  %361 = extractelement <2 x float> %360, i32 0
  %362 = inttoptr i64 %355 to float*
  store float %361, float* %362
  store %struct.Memory* %loadMem_4286e2, %struct.Memory** %MEMORY
  %loadMem1_4286e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 33
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %365 to i64*
  %366 = load i64, i64* %PC.i429
  %367 = add i64 %366, 118041
  %368 = load i64, i64* %PC.i429
  %369 = add i64 %368, 5
  %370 = load i64, i64* %PC.i429
  %371 = add i64 %370, 5
  store i64 %371, i64* %PC.i429
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = add i64 %373, -8
  %375 = inttoptr i64 %374 to i64*
  store i64 %369, i64* %375
  store i64 %374, i64* %372, align 8
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %367, i64* %376, align 8
  store %struct.Memory* %loadMem1_4286e7, %struct.Memory** %MEMORY
  %loadMem2_4286e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4286e7 = load i64, i64* %3
  %call2_4286e7 = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64 %loadPC_4286e7, %struct.Memory* %loadMem2_4286e7)
  store %struct.Memory* %call2_4286e7, %struct.Memory** %MEMORY
  %loadMem_4286ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 33
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %381 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %380, i64 0, i64 1
  %YMM1.i428 = bitcast %union.VectorReg* %381 to %"class.std::bitset"*
  %382 = bitcast %"class.std::bitset"* %YMM1.i428 to i8*
  %383 = load i64, i64* %PC.i427
  %384 = add i64 %383, ptrtoint (%G_0x2c034__rip__type* @G_0x2c034__rip_ to i64)
  %385 = load i64, i64* %PC.i427
  %386 = add i64 %385, 8
  store i64 %386, i64* %PC.i427
  %387 = inttoptr i64 %384 to float*
  %388 = load float, float* %387
  %389 = bitcast i8* %382 to float*
  store float %388, float* %389, align 1
  %390 = getelementptr inbounds i8, i8* %382, i64 4
  %391 = bitcast i8* %390 to float*
  store float 0.000000e+00, float* %391, align 1
  %392 = getelementptr inbounds i8, i8* %382, i64 8
  %393 = bitcast i8* %392 to float*
  store float 0.000000e+00, float* %393, align 1
  %394 = getelementptr inbounds i8, i8* %382, i64 12
  %395 = bitcast i8* %394 to float*
  store float 0.000000e+00, float* %395, align 1
  store %struct.Memory* %loadMem_4286ec, %struct.Memory** %MEMORY
  %loadMem_4286f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 33
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %400 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %399, i64 0, i64 0
  %YMM0.i425 = bitcast %union.VectorReg* %400 to %"class.std::bitset"*
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %402 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %401, i64 0, i64 0
  %XMM0.i426 = bitcast %union.VectorReg* %402 to %union.vec128_t*
  %403 = bitcast %"class.std::bitset"* %YMM0.i425 to i8*
  %404 = bitcast %union.vec128_t* %XMM0.i426 to i8*
  %405 = load i64, i64* %PC.i424
  %406 = add i64 %405, 4
  store i64 %406, i64* %PC.i424
  %407 = bitcast i8* %403 to <2 x i32>*
  %408 = load <2 x i32>, <2 x i32>* %407, align 1
  %409 = getelementptr inbounds i8, i8* %403, i64 8
  %410 = bitcast i8* %409 to <2 x i32>*
  %411 = load <2 x i32>, <2 x i32>* %410, align 1
  %412 = bitcast i8* %404 to double*
  %413 = load double, double* %412, align 1
  %414 = fptrunc double %413 to float
  %415 = bitcast i8* %403 to float*
  store float %414, float* %415, align 1
  %416 = extractelement <2 x i32> %408, i32 1
  %417 = getelementptr inbounds i8, i8* %403, i64 4
  %418 = bitcast i8* %417 to i32*
  store i32 %416, i32* %418, align 1
  %419 = extractelement <2 x i32> %411, i32 0
  %420 = bitcast i8* %409 to i32*
  store i32 %419, i32* %420, align 1
  %421 = extractelement <2 x i32> %411, i32 1
  %422 = getelementptr inbounds i8, i8* %403, i64 12
  %423 = bitcast i8* %422 to i32*
  store i32 %421, i32* %423, align 1
  store %struct.Memory* %loadMem_4286f4, %struct.Memory** %MEMORY
  %loadMem_4286f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 33
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 15
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %429 to i64*
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %431 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %430, i64 0, i64 0
  %XMM0.i423 = bitcast %union.VectorReg* %431 to %union.vec128_t*
  %432 = load i64, i64* %RBP.i422
  %433 = sub i64 %432, 12
  %434 = bitcast %union.vec128_t* %XMM0.i423 to i8*
  %435 = load i64, i64* %PC.i421
  %436 = add i64 %435, 5
  store i64 %436, i64* %PC.i421
  %437 = bitcast i8* %434 to <2 x float>*
  %438 = load <2 x float>, <2 x float>* %437, align 1
  %439 = extractelement <2 x float> %438, i32 0
  %440 = inttoptr i64 %433 to float*
  store float %439, float* %440
  store %struct.Memory* %loadMem_4286f8, %struct.Memory** %MEMORY
  %loadMem_4286fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 33
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %443 to i64*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 15
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %446 to i64*
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %448 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %447, i64 0, i64 0
  %YMM0.i420 = bitcast %union.VectorReg* %448 to %"class.std::bitset"*
  %449 = bitcast %"class.std::bitset"* %YMM0.i420 to i8*
  %450 = load i64, i64* %RBP.i419
  %451 = sub i64 %450, 12
  %452 = load i64, i64* %PC.i418
  %453 = add i64 %452, 5
  store i64 %453, i64* %PC.i418
  %454 = inttoptr i64 %451 to float*
  %455 = load float, float* %454
  %456 = bitcast i8* %449 to float*
  store float %455, float* %456, align 1
  %457 = getelementptr inbounds i8, i8* %449, i64 4
  %458 = bitcast i8* %457 to float*
  store float 0.000000e+00, float* %458, align 1
  %459 = getelementptr inbounds i8, i8* %449, i64 8
  %460 = bitcast i8* %459 to float*
  store float 0.000000e+00, float* %460, align 1
  %461 = getelementptr inbounds i8, i8* %449, i64 12
  %462 = bitcast i8* %461 to float*
  store float 0.000000e+00, float* %462, align 1
  store %struct.Memory* %loadMem_4286fd, %struct.Memory** %MEMORY
  %loadMem_428702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 33
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %465 to i64*
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %467 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %466, i64 0, i64 2
  %YMM2.i416 = bitcast %union.VectorReg* %467 to %"class.std::bitset"*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %469 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %468, i64 0, i64 1
  %XMM1.i417 = bitcast %union.VectorReg* %469 to %union.vec128_t*
  %470 = bitcast %"class.std::bitset"* %YMM2.i416 to i8*
  %471 = bitcast %union.vec128_t* %XMM1.i417 to i8*
  %472 = load i64, i64* %PC.i415
  %473 = add i64 %472, 3
  store i64 %473, i64* %PC.i415
  %474 = bitcast i8* %471 to <2 x i32>*
  %475 = load <2 x i32>, <2 x i32>* %474, align 1
  %476 = getelementptr inbounds i8, i8* %471, i64 8
  %477 = bitcast i8* %476 to <2 x i32>*
  %478 = load <2 x i32>, <2 x i32>* %477, align 1
  %479 = extractelement <2 x i32> %475, i32 0
  %480 = bitcast i8* %470 to i32*
  store i32 %479, i32* %480, align 1
  %481 = extractelement <2 x i32> %475, i32 1
  %482 = getelementptr inbounds i8, i8* %470, i64 4
  %483 = bitcast i8* %482 to i32*
  store i32 %481, i32* %483, align 1
  %484 = extractelement <2 x i32> %478, i32 0
  %485 = getelementptr inbounds i8, i8* %470, i64 8
  %486 = bitcast i8* %485 to i32*
  store i32 %484, i32* %486, align 1
  %487 = extractelement <2 x i32> %478, i32 1
  %488 = getelementptr inbounds i8, i8* %470, i64 12
  %489 = bitcast i8* %488 to i32*
  store i32 %487, i32* %489, align 1
  store %struct.Memory* %loadMem_428702, %struct.Memory** %MEMORY
  %loadMem_428705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 33
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %492 to i64*
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 15
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %495 to i64*
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %497 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %496, i64 0, i64 2
  %YMM2.i414 = bitcast %union.VectorReg* %497 to %"class.std::bitset"*
  %498 = bitcast %"class.std::bitset"* %YMM2.i414 to i8*
  %499 = bitcast %"class.std::bitset"* %YMM2.i414 to i8*
  %500 = load i64, i64* %RBP.i413
  %501 = sub i64 %500, 12
  %502 = load i64, i64* %PC.i412
  %503 = add i64 %502, 5
  store i64 %503, i64* %PC.i412
  %504 = bitcast i8* %499 to <2 x float>*
  %505 = load <2 x float>, <2 x float>* %504, align 1
  %506 = getelementptr inbounds i8, i8* %499, i64 8
  %507 = bitcast i8* %506 to <2 x i32>*
  %508 = load <2 x i32>, <2 x i32>* %507, align 1
  %509 = inttoptr i64 %501 to float*
  %510 = load float, float* %509
  %511 = extractelement <2 x float> %505, i32 0
  %512 = fsub float %511, %510
  %513 = bitcast i8* %498 to float*
  store float %512, float* %513, align 1
  %514 = bitcast <2 x float> %505 to <2 x i32>
  %515 = extractelement <2 x i32> %514, i32 1
  %516 = getelementptr inbounds i8, i8* %498, i64 4
  %517 = bitcast i8* %516 to i32*
  store i32 %515, i32* %517, align 1
  %518 = extractelement <2 x i32> %508, i32 0
  %519 = getelementptr inbounds i8, i8* %498, i64 8
  %520 = bitcast i8* %519 to i32*
  store i32 %518, i32* %520, align 1
  %521 = extractelement <2 x i32> %508, i32 1
  %522 = getelementptr inbounds i8, i8* %498, i64 12
  %523 = bitcast i8* %522 to i32*
  store i32 %521, i32* %523, align 1
  store %struct.Memory* %loadMem_428705, %struct.Memory** %MEMORY
  %loadMem_42870a = load %struct.Memory*, %struct.Memory** %MEMORY
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 33
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %528 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %527, i64 0, i64 0
  %YMM0.i410 = bitcast %union.VectorReg* %528 to %"class.std::bitset"*
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %530 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %529, i64 0, i64 2
  %XMM2.i411 = bitcast %union.VectorReg* %530 to %union.vec128_t*
  %531 = bitcast %"class.std::bitset"* %YMM0.i410 to i8*
  %532 = bitcast %"class.std::bitset"* %YMM0.i410 to i8*
  %533 = bitcast %union.vec128_t* %XMM2.i411 to i8*
  %534 = load i64, i64* %PC.i409
  %535 = add i64 %534, 4
  store i64 %535, i64* %PC.i409
  %536 = bitcast i8* %532 to <2 x float>*
  %537 = load <2 x float>, <2 x float>* %536, align 1
  %538 = getelementptr inbounds i8, i8* %532, i64 8
  %539 = bitcast i8* %538 to <2 x i32>*
  %540 = load <2 x i32>, <2 x i32>* %539, align 1
  %541 = bitcast i8* %533 to <2 x float>*
  %542 = load <2 x float>, <2 x float>* %541, align 1
  %543 = extractelement <2 x float> %537, i32 0
  %544 = extractelement <2 x float> %542, i32 0
  %545 = fdiv float %543, %544
  %546 = bitcast i8* %531 to float*
  store float %545, float* %546, align 1
  %547 = bitcast <2 x float> %537 to <2 x i32>
  %548 = extractelement <2 x i32> %547, i32 1
  %549 = getelementptr inbounds i8, i8* %531, i64 4
  %550 = bitcast i8* %549 to i32*
  store i32 %548, i32* %550, align 1
  %551 = extractelement <2 x i32> %540, i32 0
  %552 = getelementptr inbounds i8, i8* %531, i64 8
  %553 = bitcast i8* %552 to i32*
  store i32 %551, i32* %553, align 1
  %554 = extractelement <2 x i32> %540, i32 1
  %555 = getelementptr inbounds i8, i8* %531, i64 12
  %556 = bitcast i8* %555 to i32*
  store i32 %554, i32* %556, align 1
  store %struct.Memory* %loadMem_42870a, %struct.Memory** %MEMORY
  %loadMem_42870e = load %struct.Memory*, %struct.Memory** %MEMORY
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 33
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %559 to i64*
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 15
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %562 to i64*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %564 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %563, i64 0, i64 0
  %XMM0.i408 = bitcast %union.VectorReg* %564 to %union.vec128_t*
  %565 = load i64, i64* %RBP.i407
  %566 = sub i64 %565, 16
  %567 = bitcast %union.vec128_t* %XMM0.i408 to i8*
  %568 = load i64, i64* %PC.i406
  %569 = add i64 %568, 5
  store i64 %569, i64* %PC.i406
  %570 = bitcast i8* %567 to <2 x float>*
  %571 = load <2 x float>, <2 x float>* %570, align 1
  %572 = extractelement <2 x float> %571, i32 0
  %573 = inttoptr i64 %566 to float*
  store float %572, float* %573
  store %struct.Memory* %loadMem_42870e, %struct.Memory** %MEMORY
  %loadMem_428713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 33
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 15
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %579 to i64*
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %581 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %580, i64 0, i64 0
  %YMM0.i405 = bitcast %union.VectorReg* %581 to %"class.std::bitset"*
  %582 = bitcast %"class.std::bitset"* %YMM0.i405 to i8*
  %583 = load i64, i64* %RBP.i404
  %584 = sub i64 %583, 8
  %585 = load i64, i64* %PC.i403
  %586 = add i64 %585, 5
  store i64 %586, i64* %PC.i403
  %587 = inttoptr i64 %584 to float*
  %588 = load float, float* %587
  %589 = fpext float %588 to double
  %590 = bitcast i8* %582 to double*
  store double %589, double* %590, align 1
  store %struct.Memory* %loadMem_428713, %struct.Memory** %MEMORY
  %loadMem_428718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 33
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %593 to i64*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 15
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %596 to i64*
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %598 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %597, i64 0, i64 2
  %YMM2.i402 = bitcast %union.VectorReg* %598 to %"class.std::bitset"*
  %599 = bitcast %"class.std::bitset"* %YMM2.i402 to i8*
  %600 = load i64, i64* %RBP.i401
  %601 = sub i64 %600, 16
  %602 = load i64, i64* %PC.i400
  %603 = add i64 %602, 5
  store i64 %603, i64* %PC.i400
  %604 = inttoptr i64 %601 to float*
  %605 = load float, float* %604
  %606 = fpext float %605 to double
  %607 = bitcast i8* %599 to double*
  store double %606, double* %607, align 1
  store %struct.Memory* %loadMem_428718, %struct.Memory** %MEMORY
  %loadMem_42871d = load %struct.Memory*, %struct.Memory** %MEMORY
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 33
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %610 to i64*
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 15
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %613 to i64*
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %615 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %614, i64 0, i64 1
  %YMM1.i399 = bitcast %union.VectorReg* %615 to %"class.std::bitset"*
  %616 = bitcast %"class.std::bitset"* %YMM1.i399 to i8*
  %617 = bitcast %"class.std::bitset"* %YMM1.i399 to i8*
  %618 = load i64, i64* %RBP.i398
  %619 = sub i64 %618, 28
  %620 = load i64, i64* %PC.i397
  %621 = add i64 %620, 5
  store i64 %621, i64* %PC.i397
  %622 = bitcast i8* %617 to <2 x float>*
  %623 = load <2 x float>, <2 x float>* %622, align 1
  %624 = getelementptr inbounds i8, i8* %617, i64 8
  %625 = bitcast i8* %624 to <2 x i32>*
  %626 = load <2 x i32>, <2 x i32>* %625, align 1
  %627 = inttoptr i64 %619 to float*
  %628 = load float, float* %627
  %629 = extractelement <2 x float> %623, i32 0
  %630 = fdiv float %629, %628
  %631 = bitcast i8* %616 to float*
  store float %630, float* %631, align 1
  %632 = bitcast <2 x float> %623 to <2 x i32>
  %633 = extractelement <2 x i32> %632, i32 1
  %634 = getelementptr inbounds i8, i8* %616, i64 4
  %635 = bitcast i8* %634 to i32*
  store i32 %633, i32* %635, align 1
  %636 = extractelement <2 x i32> %626, i32 0
  %637 = getelementptr inbounds i8, i8* %616, i64 8
  %638 = bitcast i8* %637 to i32*
  store i32 %636, i32* %638, align 1
  %639 = extractelement <2 x i32> %626, i32 1
  %640 = getelementptr inbounds i8, i8* %616, i64 12
  %641 = bitcast i8* %640 to i32*
  store i32 %639, i32* %641, align 1
  store %struct.Memory* %loadMem_42871d, %struct.Memory** %MEMORY
  %loadMem_428722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 33
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %644 to i64*
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %646 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %645, i64 0, i64 1
  %YMM1.i395 = bitcast %union.VectorReg* %646 to %"class.std::bitset"*
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %648 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %647, i64 0, i64 1
  %XMM1.i396 = bitcast %union.VectorReg* %648 to %union.vec128_t*
  %649 = bitcast %"class.std::bitset"* %YMM1.i395 to i8*
  %650 = bitcast %union.vec128_t* %XMM1.i396 to i8*
  %651 = load i64, i64* %PC.i394
  %652 = add i64 %651, 4
  store i64 %652, i64* %PC.i394
  %653 = bitcast i8* %650 to <2 x float>*
  %654 = load <2 x float>, <2 x float>* %653, align 1
  %655 = extractelement <2 x float> %654, i32 0
  %656 = fpext float %655 to double
  %657 = bitcast i8* %649 to double*
  store double %656, double* %657, align 1
  store %struct.Memory* %loadMem_428722, %struct.Memory** %MEMORY
  %loadMem_428726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 33
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 15
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %665 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %664, i64 0, i64 0
  %XMM0.i393 = bitcast %union.VectorReg* %665 to %union.vec128_t*
  %666 = load i64, i64* %RBP.i392
  %667 = sub i64 %666, 40
  %668 = bitcast %union.vec128_t* %XMM0.i393 to i8*
  %669 = load i64, i64* %PC.i391
  %670 = add i64 %669, 5
  store i64 %670, i64* %PC.i391
  %671 = bitcast i8* %668 to double*
  %672 = load double, double* %671, align 1
  %673 = inttoptr i64 %667 to double*
  store double %672, double* %673
  store %struct.Memory* %loadMem_428726, %struct.Memory** %MEMORY
  %loadMem_42872b = load %struct.Memory*, %struct.Memory** %MEMORY
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 33
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %678 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %677, i64 0, i64 0
  %YMM0.i389 = bitcast %union.VectorReg* %678 to %"class.std::bitset"*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %680 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %679, i64 0, i64 2
  %XMM2.i390 = bitcast %union.VectorReg* %680 to %union.vec128_t*
  %681 = bitcast %"class.std::bitset"* %YMM0.i389 to i8*
  %682 = bitcast %union.vec128_t* %XMM2.i390 to i8*
  %683 = load i64, i64* %PC.i388
  %684 = add i64 %683, 3
  store i64 %684, i64* %PC.i388
  %685 = bitcast i8* %682 to <2 x i32>*
  %686 = load <2 x i32>, <2 x i32>* %685, align 1
  %687 = getelementptr inbounds i8, i8* %682, i64 8
  %688 = bitcast i8* %687 to <2 x i32>*
  %689 = load <2 x i32>, <2 x i32>* %688, align 1
  %690 = extractelement <2 x i32> %686, i32 0
  %691 = bitcast i8* %681 to i32*
  store i32 %690, i32* %691, align 1
  %692 = extractelement <2 x i32> %686, i32 1
  %693 = getelementptr inbounds i8, i8* %681, i64 4
  %694 = bitcast i8* %693 to i32*
  store i32 %692, i32* %694, align 1
  %695 = extractelement <2 x i32> %689, i32 0
  %696 = getelementptr inbounds i8, i8* %681, i64 8
  %697 = bitcast i8* %696 to i32*
  store i32 %695, i32* %697, align 1
  %698 = extractelement <2 x i32> %689, i32 1
  %699 = getelementptr inbounds i8, i8* %681, i64 12
  %700 = bitcast i8* %699 to i32*
  store i32 %698, i32* %700, align 1
  store %struct.Memory* %loadMem_42872b, %struct.Memory** %MEMORY
  %loadMem1_42872e = load %struct.Memory*, %struct.Memory** %MEMORY
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 33
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %703 to i64*
  %704 = load i64, i64* %PC.i387
  %705 = add i64 %704, -160334
  %706 = load i64, i64* %PC.i387
  %707 = add i64 %706, 5
  %708 = load i64, i64* %PC.i387
  %709 = add i64 %708, 5
  store i64 %709, i64* %PC.i387
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %711 = load i64, i64* %710, align 8
  %712 = add i64 %711, -8
  %713 = inttoptr i64 %712 to i64*
  store i64 %707, i64* %713
  store i64 %712, i64* %710, align 8
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %705, i64* %714, align 8
  store %struct.Memory* %loadMem1_42872e, %struct.Memory** %MEMORY
  %loadMem2_42872e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42872e = load i64, i64* %3
  %715 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %loadMem2_42872e)
  store %struct.Memory* %715, %struct.Memory** %MEMORY
  %loadMem_428733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 33
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 15
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %721 to i64*
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %723 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %722, i64 0, i64 1
  %YMM1.i383 = bitcast %union.VectorReg* %723 to %"class.std::bitset"*
  %724 = bitcast %"class.std::bitset"* %YMM1.i383 to i8*
  %725 = load i64, i64* %RBP.i382
  %726 = sub i64 %725, 40
  %727 = load i64, i64* %PC.i381
  %728 = add i64 %727, 5
  store i64 %728, i64* %PC.i381
  %729 = inttoptr i64 %726 to double*
  %730 = load double, double* %729
  %731 = bitcast i8* %724 to double*
  store double %730, double* %731, align 1
  %732 = getelementptr inbounds i8, i8* %724, i64 8
  %733 = bitcast i8* %732 to double*
  store double 0.000000e+00, double* %733, align 1
  store %struct.Memory* %loadMem_428733, %struct.Memory** %MEMORY
  %loadMem_428738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 33
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %736 to i64*
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %738 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %737, i64 0, i64 1
  %YMM1.i379 = bitcast %union.VectorReg* %738 to %"class.std::bitset"*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %740 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %739, i64 0, i64 0
  %XMM0.i380 = bitcast %union.VectorReg* %740 to %union.vec128_t*
  %741 = bitcast %"class.std::bitset"* %YMM1.i379 to i8*
  %742 = bitcast %"class.std::bitset"* %YMM1.i379 to i8*
  %743 = bitcast %union.vec128_t* %XMM0.i380 to i8*
  %744 = load i64, i64* %PC.i378
  %745 = add i64 %744, 4
  store i64 %745, i64* %PC.i378
  %746 = bitcast i8* %742 to double*
  %747 = load double, double* %746, align 1
  %748 = getelementptr inbounds i8, i8* %742, i64 8
  %749 = bitcast i8* %748 to i64*
  %750 = load i64, i64* %749, align 1
  %751 = bitcast i8* %743 to double*
  %752 = load double, double* %751, align 1
  %753 = fmul double %747, %752
  %754 = bitcast i8* %741 to double*
  store double %753, double* %754, align 1
  %755 = getelementptr inbounds i8, i8* %741, i64 8
  %756 = bitcast i8* %755 to i64*
  store i64 %750, i64* %756, align 1
  store %struct.Memory* %loadMem_428738, %struct.Memory** %MEMORY
  %loadMem_42873c = load %struct.Memory*, %struct.Memory** %MEMORY
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 33
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %759 to i64*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %761 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %760, i64 0, i64 0
  %YMM0.i376 = bitcast %union.VectorReg* %761 to %"class.std::bitset"*
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %763 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %762, i64 0, i64 1
  %XMM1.i377 = bitcast %union.VectorReg* %763 to %union.vec128_t*
  %764 = bitcast %"class.std::bitset"* %YMM0.i376 to i8*
  %765 = bitcast %union.vec128_t* %XMM1.i377 to i8*
  %766 = load i64, i64* %PC.i375
  %767 = add i64 %766, 4
  store i64 %767, i64* %PC.i375
  %768 = bitcast i8* %764 to <2 x i32>*
  %769 = load <2 x i32>, <2 x i32>* %768, align 1
  %770 = getelementptr inbounds i8, i8* %764, i64 8
  %771 = bitcast i8* %770 to <2 x i32>*
  %772 = load <2 x i32>, <2 x i32>* %771, align 1
  %773 = bitcast i8* %765 to double*
  %774 = load double, double* %773, align 1
  %775 = fptrunc double %774 to float
  %776 = bitcast i8* %764 to float*
  store float %775, float* %776, align 1
  %777 = extractelement <2 x i32> %769, i32 1
  %778 = getelementptr inbounds i8, i8* %764, i64 4
  %779 = bitcast i8* %778 to i32*
  store i32 %777, i32* %779, align 1
  %780 = extractelement <2 x i32> %772, i32 0
  %781 = bitcast i8* %770 to i32*
  store i32 %780, i32* %781, align 1
  %782 = extractelement <2 x i32> %772, i32 1
  %783 = getelementptr inbounds i8, i8* %764, i64 12
  %784 = bitcast i8* %783 to i32*
  store i32 %782, i32* %784, align 1
  store %struct.Memory* %loadMem_42873c, %struct.Memory** %MEMORY
  %loadMem_428740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 33
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %787 to i64*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 15
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %792 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %791, i64 0, i64 0
  %XMM0.i374 = bitcast %union.VectorReg* %792 to %union.vec128_t*
  %793 = load i64, i64* %RBP.i373
  %794 = sub i64 %793, 20
  %795 = bitcast %union.vec128_t* %XMM0.i374 to i8*
  %796 = load i64, i64* %PC.i372
  %797 = add i64 %796, 5
  store i64 %797, i64* %PC.i372
  %798 = bitcast i8* %795 to <2 x float>*
  %799 = load <2 x float>, <2 x float>* %798, align 1
  %800 = extractelement <2 x float> %799, i32 0
  %801 = inttoptr i64 %794 to float*
  store float %800, float* %801
  store %struct.Memory* %loadMem_428740, %struct.Memory** %MEMORY
  %loadMem_428745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 33
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %804 to i64*
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 15
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %807 to i64*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %809 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %808, i64 0, i64 0
  %YMM0.i371 = bitcast %union.VectorReg* %809 to %"class.std::bitset"*
  %810 = bitcast %"class.std::bitset"* %YMM0.i371 to i8*
  %811 = load i64, i64* %RBP.i370
  %812 = sub i64 %811, 20
  %813 = load i64, i64* %PC.i369
  %814 = add i64 %813, 5
  store i64 %814, i64* %PC.i369
  %815 = inttoptr i64 %812 to float*
  %816 = load float, float* %815
  %817 = bitcast i8* %810 to float*
  store float %816, float* %817, align 1
  %818 = getelementptr inbounds i8, i8* %810, i64 4
  %819 = bitcast i8* %818 to float*
  store float 0.000000e+00, float* %819, align 1
  %820 = getelementptr inbounds i8, i8* %810, i64 8
  %821 = bitcast i8* %820 to float*
  store float 0.000000e+00, float* %821, align 1
  %822 = getelementptr inbounds i8, i8* %810, i64 12
  %823 = bitcast i8* %822 to float*
  store float 0.000000e+00, float* %823, align 1
  store %struct.Memory* %loadMem_428745, %struct.Memory** %MEMORY
  %loadMem_42874a = load %struct.Memory*, %struct.Memory** %MEMORY
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 33
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %826 to i64*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 1
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %RAX.i367 = bitcast %union.anon* %829 to i64*
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %831 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %830, i64 0, i64 0
  %XMM0.i368 = bitcast %union.VectorReg* %831 to %union.vec128_t*
  %832 = bitcast %union.vec128_t* %XMM0.i368 to i8*
  %833 = load i64, i64* %PC.i366
  %834 = add i64 %833, 4
  store i64 %834, i64* %PC.i366
  %835 = bitcast i8* %832 to i64*
  %836 = load i64, i64* %835, align 1
  %837 = trunc i64 %836 to i32
  %838 = bitcast i64* %RAX.i367 to [2 x i32]*
  %839 = bitcast i64* %RAX.i367 to i32*
  store i32 %837, i32* %839, align 1
  %840 = getelementptr inbounds [2 x i32], [2 x i32]* %838, i64 0, i64 1
  store i32 0, i32* %840, align 1
  store %struct.Memory* %loadMem_42874a, %struct.Memory** %MEMORY
  %loadMem_42874e = load %struct.Memory*, %struct.Memory** %MEMORY
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 33
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %843 to i64*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 1
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %846 to i64*
  %847 = load i64, i64* %RAX.i365
  %848 = load i64, i64* %PC.i364
  %849 = add i64 %848, 5
  store i64 %849, i64* %PC.i364
  %850 = xor i64 -2147483648, %847
  %851 = trunc i64 %850 to i32
  %852 = and i64 %850, 4294967295
  store i64 %852, i64* %RAX.i365, align 8
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %853, align 1
  %854 = and i32 %851, 255
  %855 = call i32 @llvm.ctpop.i32(i32 %854)
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %858, i8* %859, align 1
  %860 = icmp eq i32 %851, 0
  %861 = zext i1 %860 to i8
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %861, i8* %862, align 1
  %863 = lshr i32 %851, 31
  %864 = trunc i32 %863 to i8
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %864, i8* %865, align 1
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %866, align 1
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %867, align 1
  store %struct.Memory* %loadMem_42874e, %struct.Memory** %MEMORY
  %loadMem_428753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 33
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %870 to i64*
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 1
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %EAX.i362 = bitcast %union.anon* %873 to i32*
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %875 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %874, i64 0, i64 0
  %YMM0.i363 = bitcast %union.VectorReg* %875 to %"class.std::bitset"*
  %876 = bitcast %"class.std::bitset"* %YMM0.i363 to i8*
  %877 = load i32, i32* %EAX.i362
  %878 = zext i32 %877 to i64
  %879 = load i64, i64* %PC.i361
  %880 = add i64 %879, 4
  store i64 %880, i64* %PC.i361
  %881 = bitcast i8* %876 to i32*
  store i32 %877, i32* %881, align 1
  %882 = getelementptr inbounds i8, i8* %876, i64 4
  %883 = bitcast i8* %882 to i32*
  store i32 0, i32* %883, align 1
  %884 = getelementptr inbounds i8, i8* %876, i64 8
  %885 = bitcast i8* %884 to i32*
  store i32 0, i32* %885, align 1
  %886 = getelementptr inbounds i8, i8* %876, i64 12
  %887 = bitcast i8* %886 to i32*
  store i32 0, i32* %887, align 1
  store %struct.Memory* %loadMem_428753, %struct.Memory** %MEMORY
  %loadMem_428757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 33
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 15
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %893 to i64*
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %895 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %894, i64 0, i64 0
  %YMM0.i360 = bitcast %union.VectorReg* %895 to %"class.std::bitset"*
  %896 = bitcast %"class.std::bitset"* %YMM0.i360 to i8*
  %897 = bitcast %"class.std::bitset"* %YMM0.i360 to i8*
  %898 = load i64, i64* %RBP.i359
  %899 = sub i64 %898, 8
  %900 = load i64, i64* %PC.i358
  %901 = add i64 %900, 5
  store i64 %901, i64* %PC.i358
  %902 = bitcast i8* %897 to <2 x float>*
  %903 = load <2 x float>, <2 x float>* %902, align 1
  %904 = getelementptr inbounds i8, i8* %897, i64 8
  %905 = bitcast i8* %904 to <2 x i32>*
  %906 = load <2 x i32>, <2 x i32>* %905, align 1
  %907 = inttoptr i64 %899 to float*
  %908 = load float, float* %907
  %909 = extractelement <2 x float> %903, i32 0
  %910 = fadd float %909, %908
  %911 = bitcast i8* %896 to float*
  store float %910, float* %911, align 1
  %912 = bitcast <2 x float> %903 to <2 x i32>
  %913 = extractelement <2 x i32> %912, i32 1
  %914 = getelementptr inbounds i8, i8* %896, i64 4
  %915 = bitcast i8* %914 to i32*
  store i32 %913, i32* %915, align 1
  %916 = extractelement <2 x i32> %906, i32 0
  %917 = getelementptr inbounds i8, i8* %896, i64 8
  %918 = bitcast i8* %917 to i32*
  store i32 %916, i32* %918, align 1
  %919 = extractelement <2 x i32> %906, i32 1
  %920 = getelementptr inbounds i8, i8* %896, i64 12
  %921 = bitcast i8* %920 to i32*
  store i32 %919, i32* %921, align 1
  store %struct.Memory* %loadMem_428757, %struct.Memory** %MEMORY
  %loadMem_42875c = load %struct.Memory*, %struct.Memory** %MEMORY
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 33
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %924 to i64*
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %926 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %925, i64 0, i64 0
  %YMM0.i356 = bitcast %union.VectorReg* %926 to %"class.std::bitset"*
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %928 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %927, i64 0, i64 0
  %XMM0.i357 = bitcast %union.VectorReg* %928 to %union.vec128_t*
  %929 = bitcast %"class.std::bitset"* %YMM0.i356 to i8*
  %930 = bitcast %union.vec128_t* %XMM0.i357 to i8*
  %931 = load i64, i64* %PC.i355
  %932 = add i64 %931, 4
  store i64 %932, i64* %PC.i355
  %933 = bitcast i8* %930 to <2 x float>*
  %934 = load <2 x float>, <2 x float>* %933, align 1
  %935 = extractelement <2 x float> %934, i32 0
  %936 = fpext float %935 to double
  %937 = bitcast i8* %929 to double*
  store double %936, double* %937, align 1
  store %struct.Memory* %loadMem_42875c, %struct.Memory** %MEMORY
  %loadMem1_428760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 33
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %940 to i64*
  %941 = load i64, i64* %PC.i354
  %942 = add i64 %941, -160576
  %943 = load i64, i64* %PC.i354
  %944 = add i64 %943, 5
  %945 = load i64, i64* %PC.i354
  %946 = add i64 %945, 5
  store i64 %946, i64* %PC.i354
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %948 = load i64, i64* %947, align 8
  %949 = add i64 %948, -8
  %950 = inttoptr i64 %949 to i64*
  store i64 %944, i64* %950
  store i64 %949, i64* %947, align 8
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %942, i64* %951, align 8
  store %struct.Memory* %loadMem1_428760, %struct.Memory** %MEMORY
  %loadMem2_428760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_428760 = load i64, i64* %3
  %952 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_428760)
  store %struct.Memory* %952, %struct.Memory** %MEMORY
  %loadMem_428765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 33
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %955 to i64*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %957 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %956, i64 0, i64 1
  %YMM1.i352 = bitcast %union.VectorReg* %957 to %"class.std::bitset"*
  %958 = bitcast %"class.std::bitset"* %YMM1.i352 to i8*
  %959 = load i64, i64* %PC.i351
  %960 = add i64 %959, ptrtoint (%G_0x2c073__rip__type* @G_0x2c073__rip_ to i64)
  %961 = load i64, i64* %PC.i351
  %962 = add i64 %961, 8
  store i64 %962, i64* %PC.i351
  %963 = inttoptr i64 %960 to double*
  %964 = load double, double* %963
  %965 = bitcast i8* %958 to double*
  store double %964, double* %965, align 1
  %966 = getelementptr inbounds i8, i8* %958, i64 8
  %967 = bitcast i8* %966 to double*
  store double 0.000000e+00, double* %967, align 1
  store %struct.Memory* %loadMem_428765, %struct.Memory** %MEMORY
  %loadMem_42876d = load %struct.Memory*, %struct.Memory** %MEMORY
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 33
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %970 to i64*
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %972 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %971, i64 0, i64 2
  %YMM2.i350 = bitcast %union.VectorReg* %972 to %"class.std::bitset"*
  %973 = bitcast %"class.std::bitset"* %YMM2.i350 to i8*
  %974 = load i64, i64* %PC.i349
  %975 = add i64 %974, ptrtoint (%G_0x2c193__rip__type* @G_0x2c193__rip_ to i64)
  %976 = load i64, i64* %PC.i349
  %977 = add i64 %976, 8
  store i64 %977, i64* %PC.i349
  %978 = inttoptr i64 %975 to double*
  %979 = load double, double* %978
  %980 = bitcast i8* %973 to double*
  store double %979, double* %980, align 1
  %981 = getelementptr inbounds i8, i8* %973, i64 8
  %982 = bitcast i8* %981 to double*
  store double 0.000000e+00, double* %982, align 1
  store %struct.Memory* %loadMem_42876d, %struct.Memory** %MEMORY
  %loadMem_428775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 33
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %985 to i64*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %987 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %986, i64 0, i64 2
  %YMM2.i347 = bitcast %union.VectorReg* %987 to %"class.std::bitset"*
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %989 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %988, i64 0, i64 0
  %XMM0.i348 = bitcast %union.VectorReg* %989 to %union.vec128_t*
  %990 = bitcast %"class.std::bitset"* %YMM2.i347 to i8*
  %991 = bitcast %"class.std::bitset"* %YMM2.i347 to i8*
  %992 = bitcast %union.vec128_t* %XMM0.i348 to i8*
  %993 = load i64, i64* %PC.i346
  %994 = add i64 %993, 4
  store i64 %994, i64* %PC.i346
  %995 = bitcast i8* %991 to double*
  %996 = load double, double* %995, align 1
  %997 = getelementptr inbounds i8, i8* %991, i64 8
  %998 = bitcast i8* %997 to i64*
  %999 = load i64, i64* %998, align 1
  %1000 = bitcast i8* %992 to double*
  %1001 = load double, double* %1000, align 1
  %1002 = fmul double %996, %1001
  %1003 = bitcast i8* %990 to double*
  store double %1002, double* %1003, align 1
  %1004 = getelementptr inbounds i8, i8* %990, i64 8
  %1005 = bitcast i8* %1004 to i64*
  store i64 %999, i64* %1005, align 1
  store %struct.Memory* %loadMem_428775, %struct.Memory** %MEMORY
  %loadMem_428779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 33
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %1008 to i64*
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 15
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %1011 to i64*
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1013 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1012, i64 0, i64 0
  %YMM0.i345 = bitcast %union.VectorReg* %1013 to %"class.std::bitset"*
  %1014 = bitcast %"class.std::bitset"* %YMM0.i345 to i8*
  %1015 = load i64, i64* %RBP.i344
  %1016 = sub i64 %1015, 16
  %1017 = load i64, i64* %PC.i343
  %1018 = add i64 %1017, 5
  store i64 %1018, i64* %PC.i343
  %1019 = inttoptr i64 %1016 to float*
  %1020 = load float, float* %1019
  %1021 = fpext float %1020 to double
  %1022 = bitcast i8* %1014 to double*
  store double %1021, double* %1022, align 1
  store %struct.Memory* %loadMem_428779, %struct.Memory** %MEMORY
  %loadMem_42877e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 33
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1025 to i64*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 15
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1030 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1029, i64 0, i64 3
  %YMM3.i342 = bitcast %union.VectorReg* %1030 to %"class.std::bitset"*
  %1031 = bitcast %"class.std::bitset"* %YMM3.i342 to i8*
  %1032 = load i64, i64* %RBP.i341
  %1033 = sub i64 %1032, 8
  %1034 = load i64, i64* %PC.i340
  %1035 = add i64 %1034, 5
  store i64 %1035, i64* %PC.i340
  %1036 = inttoptr i64 %1033 to float*
  %1037 = load float, float* %1036
  %1038 = bitcast i8* %1031 to float*
  store float %1037, float* %1038, align 1
  %1039 = getelementptr inbounds i8, i8* %1031, i64 4
  %1040 = bitcast i8* %1039 to float*
  store float 0.000000e+00, float* %1040, align 1
  %1041 = getelementptr inbounds i8, i8* %1031, i64 8
  %1042 = bitcast i8* %1041 to float*
  store float 0.000000e+00, float* %1042, align 1
  %1043 = getelementptr inbounds i8, i8* %1031, i64 12
  %1044 = bitcast i8* %1043 to float*
  store float 0.000000e+00, float* %1044, align 1
  store %struct.Memory* %loadMem_42877e, %struct.Memory** %MEMORY
  %loadMem_428783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 33
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 15
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %1050 to i64*
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1052 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1051, i64 0, i64 3
  %YMM3.i339 = bitcast %union.VectorReg* %1052 to %"class.std::bitset"*
  %1053 = bitcast %"class.std::bitset"* %YMM3.i339 to i8*
  %1054 = bitcast %"class.std::bitset"* %YMM3.i339 to i8*
  %1055 = load i64, i64* %RBP.i338
  %1056 = sub i64 %1055, 28
  %1057 = load i64, i64* %PC.i337
  %1058 = add i64 %1057, 5
  store i64 %1058, i64* %PC.i337
  %1059 = bitcast i8* %1054 to <2 x float>*
  %1060 = load <2 x float>, <2 x float>* %1059, align 1
  %1061 = getelementptr inbounds i8, i8* %1054, i64 8
  %1062 = bitcast i8* %1061 to <2 x i32>*
  %1063 = load <2 x i32>, <2 x i32>* %1062, align 1
  %1064 = inttoptr i64 %1056 to float*
  %1065 = load float, float* %1064
  %1066 = extractelement <2 x float> %1060, i32 0
  %1067 = fdiv float %1066, %1065
  %1068 = bitcast i8* %1053 to float*
  store float %1067, float* %1068, align 1
  %1069 = bitcast <2 x float> %1060 to <2 x i32>
  %1070 = extractelement <2 x i32> %1069, i32 1
  %1071 = getelementptr inbounds i8, i8* %1053, i64 4
  %1072 = bitcast i8* %1071 to i32*
  store i32 %1070, i32* %1072, align 1
  %1073 = extractelement <2 x i32> %1063, i32 0
  %1074 = getelementptr inbounds i8, i8* %1053, i64 8
  %1075 = bitcast i8* %1074 to i32*
  store i32 %1073, i32* %1075, align 1
  %1076 = extractelement <2 x i32> %1063, i32 1
  %1077 = getelementptr inbounds i8, i8* %1053, i64 12
  %1078 = bitcast i8* %1077 to i32*
  store i32 %1076, i32* %1078, align 1
  store %struct.Memory* %loadMem_428783, %struct.Memory** %MEMORY
  %loadMem_428788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 33
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1083 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1082, i64 0, i64 3
  %YMM3.i335 = bitcast %union.VectorReg* %1083 to %"class.std::bitset"*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1085 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1084, i64 0, i64 3
  %XMM3.i336 = bitcast %union.VectorReg* %1085 to %union.vec128_t*
  %1086 = bitcast %"class.std::bitset"* %YMM3.i335 to i8*
  %1087 = bitcast %union.vec128_t* %XMM3.i336 to i8*
  %1088 = load i64, i64* %PC.i334
  %1089 = add i64 %1088, 4
  store i64 %1089, i64* %PC.i334
  %1090 = bitcast i8* %1087 to <2 x float>*
  %1091 = load <2 x float>, <2 x float>* %1090, align 1
  %1092 = extractelement <2 x float> %1091, i32 0
  %1093 = fpext float %1092 to double
  %1094 = bitcast i8* %1086 to double*
  store double %1093, double* %1094, align 1
  store %struct.Memory* %loadMem_428788, %struct.Memory** %MEMORY
  %loadMem_42878c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 33
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %1097 to i64*
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1099 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1098, i64 0, i64 1
  %YMM1.i332 = bitcast %union.VectorReg* %1099 to %"class.std::bitset"*
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1100, i64 0, i64 3
  %XMM3.i333 = bitcast %union.VectorReg* %1101 to %union.vec128_t*
  %1102 = bitcast %"class.std::bitset"* %YMM1.i332 to i8*
  %1103 = bitcast %"class.std::bitset"* %YMM1.i332 to i8*
  %1104 = bitcast %union.vec128_t* %XMM3.i333 to i8*
  %1105 = load i64, i64* %PC.i331
  %1106 = add i64 %1105, 4
  store i64 %1106, i64* %PC.i331
  %1107 = bitcast i8* %1103 to double*
  %1108 = load double, double* %1107, align 1
  %1109 = getelementptr inbounds i8, i8* %1103, i64 8
  %1110 = bitcast i8* %1109 to i64*
  %1111 = load i64, i64* %1110, align 1
  %1112 = bitcast i8* %1104 to double*
  %1113 = load double, double* %1112, align 1
  %1114 = fadd double %1108, %1113
  %1115 = bitcast i8* %1102 to double*
  store double %1114, double* %1115, align 1
  %1116 = getelementptr inbounds i8, i8* %1102, i64 8
  %1117 = bitcast i8* %1116 to i64*
  store i64 %1111, i64* %1117, align 1
  store %struct.Memory* %loadMem_42878c, %struct.Memory** %MEMORY
  %loadMem_428790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 33
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1120 to i64*
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 15
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %1123 to i64*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1125 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1124, i64 0, i64 2
  %XMM2.i330 = bitcast %union.VectorReg* %1125 to %union.vec128_t*
  %1126 = load i64, i64* %RBP.i329
  %1127 = sub i64 %1126, 48
  %1128 = bitcast %union.vec128_t* %XMM2.i330 to i8*
  %1129 = load i64, i64* %PC.i328
  %1130 = add i64 %1129, 5
  store i64 %1130, i64* %PC.i328
  %1131 = bitcast i8* %1128 to double*
  %1132 = load double, double* %1131, align 1
  %1133 = inttoptr i64 %1127 to double*
  store double %1132, double* %1133
  store %struct.Memory* %loadMem_428790, %struct.Memory** %MEMORY
  %loadMem1_428795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 33
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %1136 to i64*
  %1137 = load i64, i64* %PC.i327
  %1138 = add i64 %1137, -160437
  %1139 = load i64, i64* %PC.i327
  %1140 = add i64 %1139, 5
  %1141 = load i64, i64* %PC.i327
  %1142 = add i64 %1141, 5
  store i64 %1142, i64* %PC.i327
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1144 = load i64, i64* %1143, align 8
  %1145 = add i64 %1144, -8
  %1146 = inttoptr i64 %1145 to i64*
  store i64 %1140, i64* %1146
  store i64 %1145, i64* %1143, align 8
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1138, i64* %1147, align 8
  store %struct.Memory* %loadMem1_428795, %struct.Memory** %MEMORY
  %loadMem2_428795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_428795 = load i64, i64* %3
  %1148 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %loadMem2_428795)
  store %struct.Memory* %1148, %struct.Memory** %MEMORY
  %loadMem_42879a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1151 to i64*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1153 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1152, i64 0, i64 1
  %YMM1.i323 = bitcast %union.VectorReg* %1153 to %"class.std::bitset"*
  %1154 = bitcast %"class.std::bitset"* %YMM1.i323 to i8*
  %1155 = load i64, i64* %PC.i322
  %1156 = add i64 %1155, ptrtoint (%G_0x2c046__rip__type* @G_0x2c046__rip_ to i64)
  %1157 = load i64, i64* %PC.i322
  %1158 = add i64 %1157, 8
  store i64 %1158, i64* %PC.i322
  %1159 = inttoptr i64 %1156 to double*
  %1160 = load double, double* %1159
  %1161 = bitcast i8* %1154 to double*
  store double %1160, double* %1161, align 1
  %1162 = getelementptr inbounds i8, i8* %1154, i64 8
  %1163 = bitcast i8* %1162 to double*
  store double 0.000000e+00, double* %1163, align 1
  store %struct.Memory* %loadMem_42879a, %struct.Memory** %MEMORY
  %loadMem_4287a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 33
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1166 to i64*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1168 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1167, i64 0, i64 2
  %YMM2.i321 = bitcast %union.VectorReg* %1168 to %"class.std::bitset"*
  %1169 = bitcast %"class.std::bitset"* %YMM2.i321 to i8*
  %1170 = load i64, i64* %PC.i320
  %1171 = add i64 %1170, ptrtoint (%G_0x2c036__rip__type* @G_0x2c036__rip_ to i64)
  %1172 = load i64, i64* %PC.i320
  %1173 = add i64 %1172, 8
  store i64 %1173, i64* %PC.i320
  %1174 = inttoptr i64 %1171 to double*
  %1175 = load double, double* %1174
  %1176 = bitcast i8* %1169 to double*
  store double %1175, double* %1176, align 1
  %1177 = getelementptr inbounds i8, i8* %1169, i64 8
  %1178 = bitcast i8* %1177 to double*
  store double 0.000000e+00, double* %1178, align 1
  store %struct.Memory* %loadMem_4287a2, %struct.Memory** %MEMORY
  %loadMem_4287aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 33
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1181 to i64*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 15
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %1184 to i64*
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1186 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1185, i64 0, i64 3
  %YMM3.i319 = bitcast %union.VectorReg* %1186 to %"class.std::bitset"*
  %1187 = bitcast %"class.std::bitset"* %YMM3.i319 to i8*
  %1188 = load i64, i64* %RBP.i318
  %1189 = sub i64 %1188, 48
  %1190 = load i64, i64* %PC.i317
  %1191 = add i64 %1190, 5
  store i64 %1191, i64* %PC.i317
  %1192 = inttoptr i64 %1189 to double*
  %1193 = load double, double* %1192
  %1194 = bitcast i8* %1187 to double*
  store double %1193, double* %1194, align 1
  %1195 = getelementptr inbounds i8, i8* %1187, i64 8
  %1196 = bitcast i8* %1195 to double*
  store double 0.000000e+00, double* %1196, align 1
  store %struct.Memory* %loadMem_4287aa, %struct.Memory** %MEMORY
  %loadMem_4287af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 33
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1201 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1200, i64 0, i64 3
  %YMM3.i315 = bitcast %union.VectorReg* %1201 to %"class.std::bitset"*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1203 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1202, i64 0, i64 0
  %XMM0.i316 = bitcast %union.VectorReg* %1203 to %union.vec128_t*
  %1204 = bitcast %"class.std::bitset"* %YMM3.i315 to i8*
  %1205 = bitcast %"class.std::bitset"* %YMM3.i315 to i8*
  %1206 = bitcast %union.vec128_t* %XMM0.i316 to i8*
  %1207 = load i64, i64* %PC.i314
  %1208 = add i64 %1207, 4
  store i64 %1208, i64* %PC.i314
  %1209 = bitcast i8* %1205 to double*
  %1210 = load double, double* %1209, align 1
  %1211 = getelementptr inbounds i8, i8* %1205, i64 8
  %1212 = bitcast i8* %1211 to i64*
  %1213 = load i64, i64* %1212, align 1
  %1214 = bitcast i8* %1206 to double*
  %1215 = load double, double* %1214, align 1
  %1216 = fmul double %1210, %1215
  %1217 = bitcast i8* %1204 to double*
  store double %1216, double* %1217, align 1
  %1218 = getelementptr inbounds i8, i8* %1204, i64 8
  %1219 = bitcast i8* %1218 to i64*
  store i64 %1213, i64* %1219, align 1
  store %struct.Memory* %loadMem_4287af, %struct.Memory** %MEMORY
  %loadMem_4287b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 33
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1222 to i64*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 15
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %1225 to i64*
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1227 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1226, i64 0, i64 0
  %YMM0.i313 = bitcast %union.VectorReg* %1227 to %"class.std::bitset"*
  %1228 = bitcast %"class.std::bitset"* %YMM0.i313 to i8*
  %1229 = load i64, i64* %RBP.i312
  %1230 = sub i64 %1229, 16
  %1231 = load i64, i64* %PC.i311
  %1232 = add i64 %1231, 5
  store i64 %1232, i64* %PC.i311
  %1233 = inttoptr i64 %1230 to float*
  %1234 = load float, float* %1233
  %1235 = fpext float %1234 to double
  %1236 = bitcast i8* %1228 to double*
  store double %1235, double* %1236, align 1
  store %struct.Memory* %loadMem_4287b3, %struct.Memory** %MEMORY
  %loadMem_4287b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 33
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1241 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1240, i64 0, i64 4
  %YMM4.i309 = bitcast %union.VectorReg* %1241 to %"class.std::bitset"*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1243 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1242, i64 0, i64 2
  %XMM2.i310 = bitcast %union.VectorReg* %1243 to %union.vec128_t*
  %1244 = bitcast %"class.std::bitset"* %YMM4.i309 to i8*
  %1245 = bitcast %union.vec128_t* %XMM2.i310 to i8*
  %1246 = load i64, i64* %PC.i308
  %1247 = add i64 %1246, 3
  store i64 %1247, i64* %PC.i308
  %1248 = bitcast i8* %1245 to <2 x i32>*
  %1249 = load <2 x i32>, <2 x i32>* %1248, align 1
  %1250 = getelementptr inbounds i8, i8* %1245, i64 8
  %1251 = bitcast i8* %1250 to <2 x i32>*
  %1252 = load <2 x i32>, <2 x i32>* %1251, align 1
  %1253 = extractelement <2 x i32> %1249, i32 0
  %1254 = bitcast i8* %1244 to i32*
  store i32 %1253, i32* %1254, align 1
  %1255 = extractelement <2 x i32> %1249, i32 1
  %1256 = getelementptr inbounds i8, i8* %1244, i64 4
  %1257 = bitcast i8* %1256 to i32*
  store i32 %1255, i32* %1257, align 1
  %1258 = extractelement <2 x i32> %1252, i32 0
  %1259 = getelementptr inbounds i8, i8* %1244, i64 8
  %1260 = bitcast i8* %1259 to i32*
  store i32 %1258, i32* %1260, align 1
  %1261 = extractelement <2 x i32> %1252, i32 1
  %1262 = getelementptr inbounds i8, i8* %1244, i64 12
  %1263 = bitcast i8* %1262 to i32*
  store i32 %1261, i32* %1263, align 1
  store %struct.Memory* %loadMem_4287b8, %struct.Memory** %MEMORY
  %loadMem_4287bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 33
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1268 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1267, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %1268 to %"class.std::bitset"*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1270 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1269, i64 0, i64 0
  %XMM0.i307 = bitcast %union.VectorReg* %1270 to %union.vec128_t*
  %1271 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %1272 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %1273 = bitcast %union.vec128_t* %XMM0.i307 to i8*
  %1274 = load i64, i64* %PC.i306
  %1275 = add i64 %1274, 4
  store i64 %1275, i64* %PC.i306
  %1276 = bitcast i8* %1272 to double*
  %1277 = load double, double* %1276, align 1
  %1278 = getelementptr inbounds i8, i8* %1272, i64 8
  %1279 = bitcast i8* %1278 to i64*
  %1280 = load i64, i64* %1279, align 1
  %1281 = bitcast i8* %1273 to double*
  %1282 = load double, double* %1281, align 1
  %1283 = fdiv double %1277, %1282
  %1284 = bitcast i8* %1271 to double*
  store double %1283, double* %1284, align 1
  %1285 = getelementptr inbounds i8, i8* %1271, i64 8
  %1286 = bitcast i8* %1285 to i64*
  store i64 %1280, i64* %1286, align 1
  store %struct.Memory* %loadMem_4287bb, %struct.Memory** %MEMORY
  %loadMem_4287bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 33
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %1289 to i64*
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1290, i64 0, i64 2
  %YMM2.i305 = bitcast %union.VectorReg* %1291 to %"class.std::bitset"*
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1292, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %1293 to %union.vec128_t*
  %1294 = bitcast %"class.std::bitset"* %YMM2.i305 to i8*
  %1295 = bitcast %"class.std::bitset"* %YMM2.i305 to i8*
  %1296 = bitcast %union.vec128_t* %XMM4.i to i8*
  %1297 = load i64, i64* %PC.i304
  %1298 = add i64 %1297, 4
  store i64 %1298, i64* %PC.i304
  %1299 = bitcast i8* %1295 to double*
  %1300 = load double, double* %1299, align 1
  %1301 = getelementptr inbounds i8, i8* %1295, i64 8
  %1302 = bitcast i8* %1301 to i64*
  %1303 = load i64, i64* %1302, align 1
  %1304 = bitcast i8* %1296 to double*
  %1305 = load double, double* %1304, align 1
  %1306 = fadd double %1300, %1305
  %1307 = bitcast i8* %1294 to double*
  store double %1306, double* %1307, align 1
  %1308 = getelementptr inbounds i8, i8* %1294, i64 8
  %1309 = bitcast i8* %1308 to i64*
  store i64 %1303, i64* %1309, align 1
  store %struct.Memory* %loadMem_4287bf, %struct.Memory** %MEMORY
  %loadMem_4287c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 33
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1312 to i64*
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1314 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1313, i64 0, i64 0
  %YMM0.i302 = bitcast %union.VectorReg* %1314 to %"class.std::bitset"*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1316 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1315, i64 0, i64 2
  %XMM2.i303 = bitcast %union.VectorReg* %1316 to %union.vec128_t*
  %1317 = bitcast %"class.std::bitset"* %YMM0.i302 to i8*
  %1318 = bitcast %union.vec128_t* %XMM2.i303 to i8*
  %1319 = load i64, i64* %PC.i301
  %1320 = add i64 %1319, 3
  store i64 %1320, i64* %PC.i301
  %1321 = bitcast i8* %1318 to <2 x i32>*
  %1322 = load <2 x i32>, <2 x i32>* %1321, align 1
  %1323 = getelementptr inbounds i8, i8* %1318, i64 8
  %1324 = bitcast i8* %1323 to <2 x i32>*
  %1325 = load <2 x i32>, <2 x i32>* %1324, align 1
  %1326 = extractelement <2 x i32> %1322, i32 0
  %1327 = bitcast i8* %1317 to i32*
  store i32 %1326, i32* %1327, align 1
  %1328 = extractelement <2 x i32> %1322, i32 1
  %1329 = getelementptr inbounds i8, i8* %1317, i64 4
  %1330 = bitcast i8* %1329 to i32*
  store i32 %1328, i32* %1330, align 1
  %1331 = extractelement <2 x i32> %1325, i32 0
  %1332 = getelementptr inbounds i8, i8* %1317, i64 8
  %1333 = bitcast i8* %1332 to i32*
  store i32 %1331, i32* %1333, align 1
  %1334 = extractelement <2 x i32> %1325, i32 1
  %1335 = getelementptr inbounds i8, i8* %1317, i64 12
  %1336 = bitcast i8* %1335 to i32*
  store i32 %1334, i32* %1336, align 1
  store %struct.Memory* %loadMem_4287c3, %struct.Memory** %MEMORY
  %loadMem_4287c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 33
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1339 to i64*
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 15
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %1342 to i64*
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1344 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1343, i64 0, i64 3
  %XMM3.i300 = bitcast %union.VectorReg* %1344 to %union.vec128_t*
  %1345 = load i64, i64* %RBP.i299
  %1346 = sub i64 %1345, 56
  %1347 = bitcast %union.vec128_t* %XMM3.i300 to i8*
  %1348 = load i64, i64* %PC.i298
  %1349 = add i64 %1348, 5
  store i64 %1349, i64* %PC.i298
  %1350 = bitcast i8* %1347 to double*
  %1351 = load double, double* %1350, align 1
  %1352 = inttoptr i64 %1346 to double*
  store double %1351, double* %1352
  store %struct.Memory* %loadMem_4287c6, %struct.Memory** %MEMORY
  %loadMem1_4287cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 33
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1355 to i64*
  %1356 = load i64, i64* %PC.i297
  %1357 = add i64 %1356, -160491
  %1358 = load i64, i64* %PC.i297
  %1359 = add i64 %1358, 5
  %1360 = load i64, i64* %PC.i297
  %1361 = add i64 %1360, 5
  store i64 %1361, i64* %PC.i297
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1363 = load i64, i64* %1362, align 8
  %1364 = add i64 %1363, -8
  %1365 = inttoptr i64 %1364 to i64*
  store i64 %1359, i64* %1365
  store i64 %1364, i64* %1362, align 8
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1357, i64* %1366, align 8
  store %struct.Memory* %loadMem1_4287cb, %struct.Memory** %MEMORY
  %loadMem2_4287cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4287cb = load i64, i64* %3
  %1367 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %loadMem2_4287cb)
  store %struct.Memory* %1367, %struct.Memory** %MEMORY
  %loadMem_4287d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 33
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 15
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1375 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1374, i64 0, i64 1
  %YMM1.i293 = bitcast %union.VectorReg* %1375 to %"class.std::bitset"*
  %1376 = bitcast %"class.std::bitset"* %YMM1.i293 to i8*
  %1377 = load i64, i64* %RBP.i292
  %1378 = sub i64 %1377, 56
  %1379 = load i64, i64* %PC.i291
  %1380 = add i64 %1379, 5
  store i64 %1380, i64* %PC.i291
  %1381 = inttoptr i64 %1378 to double*
  %1382 = load double, double* %1381
  %1383 = bitcast i8* %1376 to double*
  store double %1382, double* %1383, align 1
  %1384 = getelementptr inbounds i8, i8* %1376, i64 8
  %1385 = bitcast i8* %1384 to double*
  store double 0.000000e+00, double* %1385, align 1
  store %struct.Memory* %loadMem_4287d0, %struct.Memory** %MEMORY
  %loadMem_4287d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 33
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %1388 to i64*
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1390 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1389, i64 0, i64 1
  %YMM1.i289 = bitcast %union.VectorReg* %1390 to %"class.std::bitset"*
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1392 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1391, i64 0, i64 0
  %XMM0.i290 = bitcast %union.VectorReg* %1392 to %union.vec128_t*
  %1393 = bitcast %"class.std::bitset"* %YMM1.i289 to i8*
  %1394 = bitcast %"class.std::bitset"* %YMM1.i289 to i8*
  %1395 = bitcast %union.vec128_t* %XMM0.i290 to i8*
  %1396 = load i64, i64* %PC.i288
  %1397 = add i64 %1396, 4
  store i64 %1397, i64* %PC.i288
  %1398 = bitcast i8* %1394 to double*
  %1399 = load double, double* %1398, align 1
  %1400 = getelementptr inbounds i8, i8* %1394, i64 8
  %1401 = bitcast i8* %1400 to i64*
  %1402 = load i64, i64* %1401, align 1
  %1403 = bitcast i8* %1395 to double*
  %1404 = load double, double* %1403, align 1
  %1405 = fmul double %1399, %1404
  %1406 = bitcast i8* %1393 to double*
  store double %1405, double* %1406, align 1
  %1407 = getelementptr inbounds i8, i8* %1393, i64 8
  %1408 = bitcast i8* %1407 to i64*
  store i64 %1402, i64* %1408, align 1
  store %struct.Memory* %loadMem_4287d5, %struct.Memory** %MEMORY
  %loadMem_4287d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 33
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1413 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1412, i64 0, i64 0
  %YMM0.i286 = bitcast %union.VectorReg* %1413 to %"class.std::bitset"*
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1415 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1414, i64 0, i64 1
  %XMM1.i287 = bitcast %union.VectorReg* %1415 to %union.vec128_t*
  %1416 = bitcast %"class.std::bitset"* %YMM0.i286 to i8*
  %1417 = bitcast %union.vec128_t* %XMM1.i287 to i8*
  %1418 = load i64, i64* %PC.i285
  %1419 = add i64 %1418, 4
  store i64 %1419, i64* %PC.i285
  %1420 = bitcast i8* %1416 to <2 x i32>*
  %1421 = load <2 x i32>, <2 x i32>* %1420, align 1
  %1422 = getelementptr inbounds i8, i8* %1416, i64 8
  %1423 = bitcast i8* %1422 to <2 x i32>*
  %1424 = load <2 x i32>, <2 x i32>* %1423, align 1
  %1425 = bitcast i8* %1417 to double*
  %1426 = load double, double* %1425, align 1
  %1427 = fptrunc double %1426 to float
  %1428 = bitcast i8* %1416 to float*
  store float %1427, float* %1428, align 1
  %1429 = extractelement <2 x i32> %1421, i32 1
  %1430 = getelementptr inbounds i8, i8* %1416, i64 4
  %1431 = bitcast i8* %1430 to i32*
  store i32 %1429, i32* %1431, align 1
  %1432 = extractelement <2 x i32> %1424, i32 0
  %1433 = bitcast i8* %1422 to i32*
  store i32 %1432, i32* %1433, align 1
  %1434 = extractelement <2 x i32> %1424, i32 1
  %1435 = getelementptr inbounds i8, i8* %1416, i64 12
  %1436 = bitcast i8* %1435 to i32*
  store i32 %1434, i32* %1436, align 1
  store %struct.Memory* %loadMem_4287d9, %struct.Memory** %MEMORY
  %loadMem_4287dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 33
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %1439 to i64*
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 15
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %1442 to i64*
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1444 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1443, i64 0, i64 0
  %XMM0.i284 = bitcast %union.VectorReg* %1444 to %union.vec128_t*
  %1445 = load i64, i64* %RBP.i283
  %1446 = sub i64 %1445, 24
  %1447 = bitcast %union.vec128_t* %XMM0.i284 to i8*
  %1448 = load i64, i64* %PC.i282
  %1449 = add i64 %1448, 5
  store i64 %1449, i64* %PC.i282
  %1450 = bitcast i8* %1447 to <2 x float>*
  %1451 = load <2 x float>, <2 x float>* %1450, align 1
  %1452 = extractelement <2 x float> %1451, i32 0
  %1453 = inttoptr i64 %1446 to float*
  store float %1452, float* %1453
  store %struct.Memory* %loadMem_4287dd, %struct.Memory** %MEMORY
  %loadMem1_4287e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 33
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %1456 to i64*
  %1457 = load i64, i64* %PC.i281
  %1458 = add i64 %1457, 117790
  %1459 = load i64, i64* %PC.i281
  %1460 = add i64 %1459, 5
  %1461 = load i64, i64* %PC.i281
  %1462 = add i64 %1461, 5
  store i64 %1462, i64* %PC.i281
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1464 = load i64, i64* %1463, align 8
  %1465 = add i64 %1464, -8
  %1466 = inttoptr i64 %1465 to i64*
  store i64 %1460, i64* %1466
  store i64 %1465, i64* %1463, align 8
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1458, i64* %1467, align 8
  store %struct.Memory* %loadMem1_4287e2, %struct.Memory** %MEMORY
  %loadMem2_4287e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4287e2 = load i64, i64* %3
  %call2_4287e2 = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64 %loadPC_4287e2, %struct.Memory* %loadMem2_4287e2)
  store %struct.Memory* %call2_4287e2, %struct.Memory** %MEMORY
  %loadMem_4287e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 33
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1470 to i64*
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 15
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1475 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1474, i64 0, i64 1
  %YMM1.i280 = bitcast %union.VectorReg* %1475 to %"class.std::bitset"*
  %1476 = bitcast %"class.std::bitset"* %YMM1.i280 to i8*
  %1477 = load i64, i64* %RBP.i279
  %1478 = sub i64 %1477, 24
  %1479 = load i64, i64* %PC.i278
  %1480 = add i64 %1479, 5
  store i64 %1480, i64* %PC.i278
  %1481 = inttoptr i64 %1478 to float*
  %1482 = load float, float* %1481
  %1483 = fpext float %1482 to double
  %1484 = bitcast i8* %1476 to double*
  store double %1483, double* %1484, align 1
  store %struct.Memory* %loadMem_4287e7, %struct.Memory** %MEMORY
  %loadMem_4287ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 33
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1487 to i64*
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1489 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1488, i64 0, i64 0
  %XMM0.i272 = bitcast %union.VectorReg* %1489 to %union.vec128_t*
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1491 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1490, i64 0, i64 1
  %XMM1.i273 = bitcast %union.VectorReg* %1491 to %union.vec128_t*
  %1492 = bitcast %union.vec128_t* %XMM1.i273 to i8*
  %1493 = bitcast %union.vec128_t* %XMM0.i272 to i8*
  %1494 = load i64, i64* %PC.i271
  %1495 = add i64 %1494, 4
  store i64 %1495, i64* %PC.i271
  %1496 = bitcast i8* %1492 to double*
  %1497 = load double, double* %1496, align 1
  %1498 = bitcast i8* %1493 to double*
  %1499 = load double, double* %1498, align 1
  %1500 = fcmp uno double %1497, %1499
  br i1 %1500, label %1501, label %1513

; <label>:1501:                                   ; preds = %block_.L_4286b9
  %1502 = fadd double %1497, %1499
  %1503 = bitcast double %1502 to i64
  %1504 = and i64 %1503, 9221120237041090560
  %1505 = icmp eq i64 %1504, 9218868437227405312
  %1506 = and i64 %1503, 2251799813685247
  %1507 = icmp ne i64 %1506, 0
  %1508 = and i1 %1505, %1507
  br i1 %1508, label %1509, label %1519

; <label>:1509:                                   ; preds = %1501
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1511 = load i64, i64* %1510, align 8
  %1512 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1511, %struct.Memory* %loadMem_4287ec)
  br label %routine_ucomisd__xmm0___xmm1.exit274

; <label>:1513:                                   ; preds = %block_.L_4286b9
  %1514 = fcmp ogt double %1497, %1499
  br i1 %1514, label %1519, label %1515

; <label>:1515:                                   ; preds = %1513
  %1516 = fcmp olt double %1497, %1499
  br i1 %1516, label %1519, label %1517

; <label>:1517:                                   ; preds = %1515
  %1518 = fcmp oeq double %1497, %1499
  br i1 %1518, label %1519, label %1526

; <label>:1519:                                   ; preds = %1517, %1515, %1513, %1501
  %1520 = phi i8 [ 0, %1513 ], [ 0, %1515 ], [ 1, %1517 ], [ 1, %1501 ]
  %1521 = phi i8 [ 0, %1513 ], [ 0, %1515 ], [ 0, %1517 ], [ 1, %1501 ]
  %1522 = phi i8 [ 0, %1513 ], [ 1, %1515 ], [ 0, %1517 ], [ 1, %1501 ]
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1520, i8* %1523, align 1
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1521, i8* %1524, align 1
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1522, i8* %1525, align 1
  br label %1526

; <label>:1526:                                   ; preds = %1519, %1517
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1527, align 1
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1528, align 1
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1529, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit274

routine_ucomisd__xmm0___xmm1.exit274:             ; preds = %1509, %1526
  %1530 = phi %struct.Memory* [ %1512, %1509 ], [ %loadMem_4287ec, %1526 ]
  store %struct.Memory* %1530, %struct.Memory** %MEMORY
  %loadMem_4287f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 33
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %1533 to i64*
  %1534 = load i64, i64* %PC.i270
  %1535 = add i64 %1534, 21
  %1536 = load i64, i64* %PC.i270
  %1537 = add i64 %1536, 6
  %1538 = load i64, i64* %PC.i270
  %1539 = add i64 %1538, 6
  store i64 %1539, i64* %PC.i270
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1541 = load i8, i8* %1540, align 1
  store i8 %1541, i8* %BRANCH_TAKEN, align 1
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1543 = icmp ne i8 %1541, 0
  %1544 = select i1 %1543, i64 %1535, i64 %1537
  store i64 %1544, i64* %1542, align 8
  store %struct.Memory* %loadMem_4287f0, %struct.Memory** %MEMORY
  %loadBr_4287f0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4287f0 = icmp eq i8 %loadBr_4287f0, 1
  br i1 %cmpBr_4287f0, label %block_.L_428805, label %block_4287f6

block_4287f6:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit274
  %loadMem_4287f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 33
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 15
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1552 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1551, i64 0, i64 0
  %YMM0.i269 = bitcast %union.VectorReg* %1552 to %"class.std::bitset"*
  %1553 = bitcast %"class.std::bitset"* %YMM0.i269 to i8*
  %1554 = load i64, i64* %RBP.i268
  %1555 = sub i64 %1554, 20
  %1556 = load i64, i64* %PC.i267
  %1557 = add i64 %1556, 5
  store i64 %1557, i64* %PC.i267
  %1558 = inttoptr i64 %1555 to float*
  %1559 = load float, float* %1558
  %1560 = bitcast i8* %1553 to float*
  store float %1559, float* %1560, align 1
  %1561 = getelementptr inbounds i8, i8* %1553, i64 4
  %1562 = bitcast i8* %1561 to float*
  store float 0.000000e+00, float* %1562, align 1
  %1563 = getelementptr inbounds i8, i8* %1553, i64 8
  %1564 = bitcast i8* %1563 to float*
  store float 0.000000e+00, float* %1564, align 1
  %1565 = getelementptr inbounds i8, i8* %1553, i64 12
  %1566 = bitcast i8* %1565 to float*
  store float 0.000000e+00, float* %1566, align 1
  store %struct.Memory* %loadMem_4287f6, %struct.Memory** %MEMORY
  %loadMem_4287fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 33
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 15
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %1572 to i64*
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1574 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1573, i64 0, i64 0
  %XMM0.i266 = bitcast %union.VectorReg* %1574 to %union.vec128_t*
  %1575 = load i64, i64* %RBP.i265
  %1576 = sub i64 %1575, 4
  %1577 = bitcast %union.vec128_t* %XMM0.i266 to i8*
  %1578 = load i64, i64* %PC.i264
  %1579 = add i64 %1578, 5
  store i64 %1579, i64* %PC.i264
  %1580 = bitcast i8* %1577 to <2 x float>*
  %1581 = load <2 x float>, <2 x float>* %1580, align 1
  %1582 = extractelement <2 x float> %1581, i32 0
  %1583 = inttoptr i64 %1576 to float*
  store float %1582, float* %1583
  store %struct.Memory* %loadMem_4287fb, %struct.Memory** %MEMORY
  %loadMem_428800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 33
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1586 to i64*
  %1587 = load i64, i64* %PC.i263
  %1588 = add i64 %1587, 486
  %1589 = load i64, i64* %PC.i263
  %1590 = add i64 %1589, 5
  store i64 %1590, i64* %PC.i263
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1588, i64* %1591, align 8
  store %struct.Memory* %loadMem_428800, %struct.Memory** %MEMORY
  br label %block_.L_4289e6

block_.L_428805:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit274
  %loadMem_428805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 33
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1594 to i64*
  %1595 = load i64, i64* %PC.i262
  %1596 = add i64 %1595, -332
  %1597 = load i64, i64* %PC.i262
  %1598 = add i64 %1597, 5
  store i64 %1598, i64* %PC.i262
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1596, i64* %1599, align 8
  store %struct.Memory* %loadMem_428805, %struct.Memory** %MEMORY
  br label %block_.L_4286b9

block_.L_42880a:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit143
  %loadMem_42880a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 33
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %1602 to i64*
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1604 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1603, i64 0, i64 0
  %YMM0.i260 = bitcast %union.VectorReg* %1604 to %"class.std::bitset"*
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1606 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1605, i64 0, i64 0
  %XMM0.i261 = bitcast %union.VectorReg* %1606 to %union.vec128_t*
  %1607 = bitcast %"class.std::bitset"* %YMM0.i260 to i8*
  %1608 = bitcast %"class.std::bitset"* %YMM0.i260 to i8*
  %1609 = bitcast %union.vec128_t* %XMM0.i261 to i8*
  %1610 = load i64, i64* %PC.i259
  %1611 = add i64 %1610, 3
  store i64 %1611, i64* %PC.i259
  %1612 = bitcast i8* %1608 to i64*
  %1613 = load i64, i64* %1612, align 1
  %1614 = getelementptr inbounds i8, i8* %1608, i64 8
  %1615 = bitcast i8* %1614 to i64*
  %1616 = load i64, i64* %1615, align 1
  %1617 = bitcast i8* %1609 to i64*
  %1618 = load i64, i64* %1617, align 1
  %1619 = getelementptr inbounds i8, i8* %1609, i64 8
  %1620 = bitcast i8* %1619 to i64*
  %1621 = load i64, i64* %1620, align 1
  %1622 = xor i64 %1618, %1613
  %1623 = xor i64 %1621, %1616
  %1624 = trunc i64 %1622 to i32
  %1625 = lshr i64 %1622, 32
  %1626 = trunc i64 %1625 to i32
  %1627 = bitcast i8* %1607 to i32*
  store i32 %1624, i32* %1627, align 1
  %1628 = getelementptr inbounds i8, i8* %1607, i64 4
  %1629 = bitcast i8* %1628 to i32*
  store i32 %1626, i32* %1629, align 1
  %1630 = trunc i64 %1623 to i32
  %1631 = getelementptr inbounds i8, i8* %1607, i64 8
  %1632 = bitcast i8* %1631 to i32*
  store i32 %1630, i32* %1632, align 1
  %1633 = lshr i64 %1623, 32
  %1634 = trunc i64 %1633 to i32
  %1635 = getelementptr inbounds i8, i8* %1607, i64 12
  %1636 = bitcast i8* %1635 to i32*
  store i32 %1634, i32* %1636, align 1
  store %struct.Memory* %loadMem_42880a, %struct.Memory** %MEMORY
  %loadMem_42880d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 33
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1639 to i64*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 15
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1644 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1643, i64 0, i64 1
  %YMM1.i258 = bitcast %union.VectorReg* %1644 to %"class.std::bitset"*
  %1645 = bitcast %"class.std::bitset"* %YMM1.i258 to i8*
  %1646 = load i64, i64* %RBP.i257
  %1647 = sub i64 %1646, 8
  %1648 = load i64, i64* %PC.i256
  %1649 = add i64 %1648, 5
  store i64 %1649, i64* %PC.i256
  %1650 = inttoptr i64 %1647 to float*
  %1651 = load float, float* %1650
  %1652 = fpext float %1651 to double
  %1653 = bitcast i8* %1645 to double*
  store double %1652, double* %1653, align 1
  store %struct.Memory* %loadMem_42880d, %struct.Memory** %MEMORY
  %loadMem_428812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 33
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1656 to i64*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1658 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1657, i64 0, i64 0
  %XMM0.i251 = bitcast %union.VectorReg* %1658 to %union.vec128_t*
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1660 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1659, i64 0, i64 1
  %XMM1.i252 = bitcast %union.VectorReg* %1660 to %union.vec128_t*
  %1661 = bitcast %union.vec128_t* %XMM1.i252 to i8*
  %1662 = bitcast %union.vec128_t* %XMM0.i251 to i8*
  %1663 = load i64, i64* %PC.i250
  %1664 = add i64 %1663, 4
  store i64 %1664, i64* %PC.i250
  %1665 = bitcast i8* %1661 to double*
  %1666 = load double, double* %1665, align 1
  %1667 = bitcast i8* %1662 to double*
  %1668 = load double, double* %1667, align 1
  %1669 = fcmp uno double %1666, %1668
  br i1 %1669, label %1670, label %1682

; <label>:1670:                                   ; preds = %block_.L_42880a
  %1671 = fadd double %1666, %1668
  %1672 = bitcast double %1671 to i64
  %1673 = and i64 %1672, 9221120237041090560
  %1674 = icmp eq i64 %1673, 9218868437227405312
  %1675 = and i64 %1672, 2251799813685247
  %1676 = icmp ne i64 %1675, 0
  %1677 = and i1 %1674, %1676
  br i1 %1677, label %1678, label %1688

; <label>:1678:                                   ; preds = %1670
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1680 = load i64, i64* %1679, align 8
  %1681 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1680, %struct.Memory* %loadMem_428812)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1682:                                   ; preds = %block_.L_42880a
  %1683 = fcmp ogt double %1666, %1668
  br i1 %1683, label %1688, label %1684

; <label>:1684:                                   ; preds = %1682
  %1685 = fcmp olt double %1666, %1668
  br i1 %1685, label %1688, label %1686

; <label>:1686:                                   ; preds = %1684
  %1687 = fcmp oeq double %1666, %1668
  br i1 %1687, label %1688, label %1695

; <label>:1688:                                   ; preds = %1686, %1684, %1682, %1670
  %1689 = phi i8 [ 0, %1682 ], [ 0, %1684 ], [ 1, %1686 ], [ 1, %1670 ]
  %1690 = phi i8 [ 0, %1682 ], [ 0, %1684 ], [ 0, %1686 ], [ 1, %1670 ]
  %1691 = phi i8 [ 0, %1682 ], [ 1, %1684 ], [ 0, %1686 ], [ 1, %1670 ]
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1689, i8* %1692, align 1
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1690, i8* %1693, align 1
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1691, i8* %1694, align 1
  br label %1695

; <label>:1695:                                   ; preds = %1688, %1686
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1696, align 1
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1697, align 1
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1698, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1678, %1695
  %1699 = phi %struct.Memory* [ %1681, %1678 ], [ %loadMem_428812, %1695 ]
  store %struct.Memory* %1699, %struct.Memory** %MEMORY
  %loadMem_428816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 33
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %1702 to i64*
  %1703 = load i64, i64* %PC.i249
  %1704 = add i64 %1703, 434
  %1705 = load i64, i64* %PC.i249
  %1706 = add i64 %1705, 6
  %1707 = load i64, i64* %PC.i249
  %1708 = add i64 %1707, 6
  store i64 %1708, i64* %PC.i249
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1710 = load i8, i8* %1709, align 1
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1712 = load i8, i8* %1711, align 1
  %1713 = or i8 %1712, %1710
  %1714 = icmp ne i8 %1713, 0
  %1715 = zext i1 %1714 to i8
  store i8 %1715, i8* %BRANCH_TAKEN, align 1
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1717 = select i1 %1714, i64 %1704, i64 %1706
  store i64 %1717, i64* %1716, align 8
  store %struct.Memory* %loadMem_428816, %struct.Memory** %MEMORY
  %loadBr_428816 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_428816 = icmp eq i8 %loadBr_428816, 1
  br i1 %cmpBr_428816, label %block_.L_4289c8, label %block_42881c

block_42881c:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_42881c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 33
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1720 to i64*
  %1721 = load i64, i64* %PC.i248
  %1722 = add i64 %1721, 5
  %1723 = load i64, i64* %PC.i248
  %1724 = add i64 %1723, 5
  store i64 %1724, i64* %PC.i248
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1722, i64* %1725, align 8
  store %struct.Memory* %loadMem_42881c, %struct.Memory** %MEMORY
  br label %block_.L_428821

block_.L_428821:                                  ; preds = %block_.L_4289c3, %block_42881c
  %loadMem1_428821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 33
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1728 to i64*
  %1729 = load i64, i64* %PC.i247
  %1730 = add i64 %1729, 117727
  %1731 = load i64, i64* %PC.i247
  %1732 = add i64 %1731, 5
  %1733 = load i64, i64* %PC.i247
  %1734 = add i64 %1733, 5
  store i64 %1734, i64* %PC.i247
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1736 = load i64, i64* %1735, align 8
  %1737 = add i64 %1736, -8
  %1738 = inttoptr i64 %1737 to i64*
  store i64 %1732, i64* %1738
  store i64 %1737, i64* %1735, align 8
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1730, i64* %1739, align 8
  store %struct.Memory* %loadMem1_428821, %struct.Memory** %MEMORY
  %loadMem2_428821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_428821 = load i64, i64* %3
  %call2_428821 = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64 %loadPC_428821, %struct.Memory* %loadMem2_428821)
  store %struct.Memory* %call2_428821, %struct.Memory** %MEMORY
  %loadMem_428826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 33
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1742 to i64*
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1744 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1743, i64 0, i64 1
  %YMM1.i246 = bitcast %union.VectorReg* %1744 to %"class.std::bitset"*
  %1745 = bitcast %"class.std::bitset"* %YMM1.i246 to i8*
  %1746 = load i64, i64* %PC.i245
  %1747 = add i64 %1746, ptrtoint (%G_0x2bfb2__rip__type* @G_0x2bfb2__rip_ to i64)
  %1748 = load i64, i64* %PC.i245
  %1749 = add i64 %1748, 8
  store i64 %1749, i64* %PC.i245
  %1750 = inttoptr i64 %1747 to double*
  %1751 = load double, double* %1750
  %1752 = bitcast i8* %1745 to double*
  store double %1751, double* %1752, align 1
  %1753 = getelementptr inbounds i8, i8* %1745, i64 8
  %1754 = bitcast i8* %1753 to double*
  store double 0.000000e+00, double* %1754, align 1
  store %struct.Memory* %loadMem_428826, %struct.Memory** %MEMORY
  %loadMem_42882e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 33
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1757 to i64*
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1759 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1758, i64 0, i64 0
  %YMM0.i243 = bitcast %union.VectorReg* %1759 to %"class.std::bitset"*
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1761 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1760, i64 0, i64 0
  %XMM0.i244 = bitcast %union.VectorReg* %1761 to %union.vec128_t*
  %1762 = bitcast %"class.std::bitset"* %YMM0.i243 to i8*
  %1763 = bitcast %union.vec128_t* %XMM0.i244 to i8*
  %1764 = load i64, i64* %PC.i242
  %1765 = add i64 %1764, 4
  store i64 %1765, i64* %PC.i242
  %1766 = bitcast i8* %1762 to <2 x i32>*
  %1767 = load <2 x i32>, <2 x i32>* %1766, align 1
  %1768 = getelementptr inbounds i8, i8* %1762, i64 8
  %1769 = bitcast i8* %1768 to <2 x i32>*
  %1770 = load <2 x i32>, <2 x i32>* %1769, align 1
  %1771 = bitcast i8* %1763 to double*
  %1772 = load double, double* %1771, align 1
  %1773 = fptrunc double %1772 to float
  %1774 = bitcast i8* %1762 to float*
  store float %1773, float* %1774, align 1
  %1775 = extractelement <2 x i32> %1767, i32 1
  %1776 = getelementptr inbounds i8, i8* %1762, i64 4
  %1777 = bitcast i8* %1776 to i32*
  store i32 %1775, i32* %1777, align 1
  %1778 = extractelement <2 x i32> %1770, i32 0
  %1779 = bitcast i8* %1768 to i32*
  store i32 %1778, i32* %1779, align 1
  %1780 = extractelement <2 x i32> %1770, i32 1
  %1781 = getelementptr inbounds i8, i8* %1762, i64 12
  %1782 = bitcast i8* %1781 to i32*
  store i32 %1780, i32* %1782, align 1
  store %struct.Memory* %loadMem_42882e, %struct.Memory** %MEMORY
  %loadMem_428832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 33
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1785 to i64*
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 15
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %1788 to i64*
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1790 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1789, i64 0, i64 0
  %XMM0.i241 = bitcast %union.VectorReg* %1790 to %union.vec128_t*
  %1791 = load i64, i64* %RBP.i240
  %1792 = sub i64 %1791, 12
  %1793 = bitcast %union.vec128_t* %XMM0.i241 to i8*
  %1794 = load i64, i64* %PC.i239
  %1795 = add i64 %1794, 5
  store i64 %1795, i64* %PC.i239
  %1796 = bitcast i8* %1793 to <2 x float>*
  %1797 = load <2 x float>, <2 x float>* %1796, align 1
  %1798 = extractelement <2 x float> %1797, i32 0
  %1799 = inttoptr i64 %1792 to float*
  store float %1798, float* %1799
  store %struct.Memory* %loadMem_428832, %struct.Memory** %MEMORY
  %loadMem_428837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 33
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %1802 to i64*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 15
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %1805 to i64*
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1807 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1806, i64 0, i64 0
  %YMM0.i238 = bitcast %union.VectorReg* %1807 to %"class.std::bitset"*
  %1808 = bitcast %"class.std::bitset"* %YMM0.i238 to i8*
  %1809 = load i64, i64* %RBP.i237
  %1810 = sub i64 %1809, 12
  %1811 = load i64, i64* %PC.i236
  %1812 = add i64 %1811, 5
  store i64 %1812, i64* %PC.i236
  %1813 = inttoptr i64 %1810 to float*
  %1814 = load float, float* %1813
  %1815 = fpext float %1814 to double
  %1816 = bitcast i8* %1808 to double*
  store double %1815, double* %1816, align 1
  store %struct.Memory* %loadMem_428837, %struct.Memory** %MEMORY
  %loadMem_42883c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 33
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %1819 to i64*
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 15
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %1822 to i64*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1824 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1823, i64 0, i64 2
  %YMM2.i235 = bitcast %union.VectorReg* %1824 to %"class.std::bitset"*
  %1825 = bitcast %"class.std::bitset"* %YMM2.i235 to i8*
  %1826 = load i64, i64* %RBP.i234
  %1827 = sub i64 %1826, 8
  %1828 = load i64, i64* %PC.i233
  %1829 = add i64 %1828, 5
  store i64 %1829, i64* %PC.i233
  %1830 = inttoptr i64 %1827 to float*
  %1831 = load float, float* %1830
  %1832 = fpext float %1831 to double
  %1833 = bitcast i8* %1825 to double*
  store double %1832, double* %1833, align 1
  store %struct.Memory* %loadMem_42883c, %struct.Memory** %MEMORY
  %loadMem_428841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 33
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1836 to i64*
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 15
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1841 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1840, i64 0, i64 0
  %XMM0.i232 = bitcast %union.VectorReg* %1841 to %union.vec128_t*
  %1842 = load i64, i64* %RBP.i231
  %1843 = sub i64 %1842, 64
  %1844 = bitcast %union.vec128_t* %XMM0.i232 to i8*
  %1845 = load i64, i64* %PC.i230
  %1846 = add i64 %1845, 5
  store i64 %1846, i64* %PC.i230
  %1847 = bitcast i8* %1844 to double*
  %1848 = load double, double* %1847, align 1
  %1849 = inttoptr i64 %1843 to double*
  store double %1848, double* %1849
  store %struct.Memory* %loadMem_428841, %struct.Memory** %MEMORY
  %loadMem_428846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 33
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1852 to i64*
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1854 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1853, i64 0, i64 0
  %YMM0.i228 = bitcast %union.VectorReg* %1854 to %"class.std::bitset"*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1856 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1855, i64 0, i64 1
  %XMM1.i229 = bitcast %union.VectorReg* %1856 to %union.vec128_t*
  %1857 = bitcast %"class.std::bitset"* %YMM0.i228 to i8*
  %1858 = bitcast %union.vec128_t* %XMM1.i229 to i8*
  %1859 = load i64, i64* %PC.i227
  %1860 = add i64 %1859, 3
  store i64 %1860, i64* %PC.i227
  %1861 = bitcast i8* %1858 to <2 x i32>*
  %1862 = load <2 x i32>, <2 x i32>* %1861, align 1
  %1863 = getelementptr inbounds i8, i8* %1858, i64 8
  %1864 = bitcast i8* %1863 to <2 x i32>*
  %1865 = load <2 x i32>, <2 x i32>* %1864, align 1
  %1866 = extractelement <2 x i32> %1862, i32 0
  %1867 = bitcast i8* %1857 to i32*
  store i32 %1866, i32* %1867, align 1
  %1868 = extractelement <2 x i32> %1862, i32 1
  %1869 = getelementptr inbounds i8, i8* %1857, i64 4
  %1870 = bitcast i8* %1869 to i32*
  store i32 %1868, i32* %1870, align 1
  %1871 = extractelement <2 x i32> %1865, i32 0
  %1872 = getelementptr inbounds i8, i8* %1857, i64 8
  %1873 = bitcast i8* %1872 to i32*
  store i32 %1871, i32* %1873, align 1
  %1874 = extractelement <2 x i32> %1865, i32 1
  %1875 = getelementptr inbounds i8, i8* %1857, i64 12
  %1876 = bitcast i8* %1875 to i32*
  store i32 %1874, i32* %1876, align 1
  store %struct.Memory* %loadMem_428846, %struct.Memory** %MEMORY
  %loadMem_428849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 33
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 15
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1884 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1883, i64 0, i64 2
  %XMM2.i226 = bitcast %union.VectorReg* %1884 to %union.vec128_t*
  %1885 = load i64, i64* %RBP.i225
  %1886 = sub i64 %1885, 72
  %1887 = bitcast %union.vec128_t* %XMM2.i226 to i8*
  %1888 = load i64, i64* %PC.i224
  %1889 = add i64 %1888, 5
  store i64 %1889, i64* %PC.i224
  %1890 = bitcast i8* %1887 to double*
  %1891 = load double, double* %1890, align 1
  %1892 = inttoptr i64 %1886 to double*
  store double %1891, double* %1892
  store %struct.Memory* %loadMem_428849, %struct.Memory** %MEMORY
  %loadMem1_42884e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 33
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %1895 to i64*
  %1896 = load i64, i64* %PC.i223
  %1897 = add i64 %1896, -160814
  %1898 = load i64, i64* %PC.i223
  %1899 = add i64 %1898, 5
  %1900 = load i64, i64* %PC.i223
  %1901 = add i64 %1900, 5
  store i64 %1901, i64* %PC.i223
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1903 = load i64, i64* %1902, align 8
  %1904 = add i64 %1903, -8
  %1905 = inttoptr i64 %1904 to i64*
  store i64 %1899, i64* %1905
  store i64 %1904, i64* %1902, align 8
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1897, i64* %1906, align 8
  store %struct.Memory* %loadMem1_42884e, %struct.Memory** %MEMORY
  %loadMem2_42884e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42884e = load i64, i64* %3
  %1907 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_42884e)
  store %struct.Memory* %1907, %struct.Memory** %MEMORY
  %loadMem_428853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1912 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1911, i64 0, i64 1
  %YMM1.i220 = bitcast %union.VectorReg* %1912 to %"class.std::bitset"*
  %1913 = bitcast %"class.std::bitset"* %YMM1.i220 to i8*
  %1914 = load i64, i64* %PC.i219
  %1915 = add i64 %1914, ptrtoint (%G_0x2bf85__rip__type* @G_0x2bf85__rip_ to i64)
  %1916 = load i64, i64* %PC.i219
  %1917 = add i64 %1916, 8
  store i64 %1917, i64* %PC.i219
  %1918 = inttoptr i64 %1915 to double*
  %1919 = load double, double* %1918
  %1920 = bitcast i8* %1913 to double*
  store double %1919, double* %1920, align 1
  %1921 = getelementptr inbounds i8, i8* %1913, i64 8
  %1922 = bitcast i8* %1921 to double*
  store double 0.000000e+00, double* %1922, align 1
  store %struct.Memory* %loadMem_428853, %struct.Memory** %MEMORY
  %loadMem_42885b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 33
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1925 to i64*
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 15
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %1928 to i64*
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1930 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1929, i64 0, i64 2
  %YMM2.i218 = bitcast %union.VectorReg* %1930 to %"class.std::bitset"*
  %1931 = bitcast %"class.std::bitset"* %YMM2.i218 to i8*
  %1932 = load i64, i64* %RBP.i217
  %1933 = sub i64 %1932, 72
  %1934 = load i64, i64* %PC.i216
  %1935 = add i64 %1934, 5
  store i64 %1935, i64* %PC.i216
  %1936 = inttoptr i64 %1933 to double*
  %1937 = load double, double* %1936
  %1938 = bitcast i8* %1931 to double*
  store double %1937, double* %1938, align 1
  %1939 = getelementptr inbounds i8, i8* %1931, i64 8
  %1940 = bitcast i8* %1939 to double*
  store double 0.000000e+00, double* %1940, align 1
  store %struct.Memory* %loadMem_42885b, %struct.Memory** %MEMORY
  %loadMem_428860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 33
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1943 to i64*
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1945 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1944, i64 0, i64 2
  %YMM2.i214 = bitcast %union.VectorReg* %1945 to %"class.std::bitset"*
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1947 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1946, i64 0, i64 0
  %XMM0.i215 = bitcast %union.VectorReg* %1947 to %union.vec128_t*
  %1948 = bitcast %"class.std::bitset"* %YMM2.i214 to i8*
  %1949 = bitcast %"class.std::bitset"* %YMM2.i214 to i8*
  %1950 = bitcast %union.vec128_t* %XMM0.i215 to i8*
  %1951 = load i64, i64* %PC.i213
  %1952 = add i64 %1951, 4
  store i64 %1952, i64* %PC.i213
  %1953 = bitcast i8* %1949 to double*
  %1954 = load double, double* %1953, align 1
  %1955 = getelementptr inbounds i8, i8* %1949, i64 8
  %1956 = bitcast i8* %1955 to i64*
  %1957 = load i64, i64* %1956, align 1
  %1958 = bitcast i8* %1950 to double*
  %1959 = load double, double* %1958, align 1
  %1960 = fdiv double %1954, %1959
  %1961 = bitcast i8* %1948 to double*
  store double %1960, double* %1961, align 1
  %1962 = getelementptr inbounds i8, i8* %1948, i64 8
  %1963 = bitcast i8* %1962 to i64*
  store i64 %1957, i64* %1963, align 1
  store %struct.Memory* %loadMem_428860, %struct.Memory** %MEMORY
  %loadMem_428864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 33
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1966 to i64*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1968 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1967, i64 0, i64 0
  %YMM0.i211 = bitcast %union.VectorReg* %1968 to %"class.std::bitset"*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1970 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1969, i64 0, i64 1
  %XMM1.i212 = bitcast %union.VectorReg* %1970 to %union.vec128_t*
  %1971 = bitcast %"class.std::bitset"* %YMM0.i211 to i8*
  %1972 = bitcast %union.vec128_t* %XMM1.i212 to i8*
  %1973 = load i64, i64* %PC.i210
  %1974 = add i64 %1973, 3
  store i64 %1974, i64* %PC.i210
  %1975 = bitcast i8* %1972 to <2 x i32>*
  %1976 = load <2 x i32>, <2 x i32>* %1975, align 1
  %1977 = getelementptr inbounds i8, i8* %1972, i64 8
  %1978 = bitcast i8* %1977 to <2 x i32>*
  %1979 = load <2 x i32>, <2 x i32>* %1978, align 1
  %1980 = extractelement <2 x i32> %1976, i32 0
  %1981 = bitcast i8* %1971 to i32*
  store i32 %1980, i32* %1981, align 1
  %1982 = extractelement <2 x i32> %1976, i32 1
  %1983 = getelementptr inbounds i8, i8* %1971, i64 4
  %1984 = bitcast i8* %1983 to i32*
  store i32 %1982, i32* %1984, align 1
  %1985 = extractelement <2 x i32> %1979, i32 0
  %1986 = getelementptr inbounds i8, i8* %1971, i64 8
  %1987 = bitcast i8* %1986 to i32*
  store i32 %1985, i32* %1987, align 1
  %1988 = extractelement <2 x i32> %1979, i32 1
  %1989 = getelementptr inbounds i8, i8* %1971, i64 12
  %1990 = bitcast i8* %1989 to i32*
  store i32 %1988, i32* %1990, align 1
  store %struct.Memory* %loadMem_428864, %struct.Memory** %MEMORY
  %loadMem_428867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1995 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1994, i64 0, i64 0
  %YMM0.i208 = bitcast %union.VectorReg* %1995 to %"class.std::bitset"*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1997 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1996, i64 0, i64 2
  %XMM2.i209 = bitcast %union.VectorReg* %1997 to %union.vec128_t*
  %1998 = bitcast %"class.std::bitset"* %YMM0.i208 to i8*
  %1999 = bitcast %"class.std::bitset"* %YMM0.i208 to i8*
  %2000 = bitcast %union.vec128_t* %XMM2.i209 to i8*
  %2001 = load i64, i64* %PC.i207
  %2002 = add i64 %2001, 4
  store i64 %2002, i64* %PC.i207
  %2003 = bitcast i8* %1999 to double*
  %2004 = load double, double* %2003, align 1
  %2005 = getelementptr inbounds i8, i8* %1999, i64 8
  %2006 = bitcast i8* %2005 to i64*
  %2007 = load i64, i64* %2006, align 1
  %2008 = bitcast i8* %2000 to double*
  %2009 = load double, double* %2008, align 1
  %2010 = fadd double %2004, %2009
  %2011 = bitcast i8* %1998 to double*
  store double %2010, double* %2011, align 1
  %2012 = getelementptr inbounds i8, i8* %1998, i64 8
  %2013 = bitcast i8* %2012 to i64*
  store i64 %2007, i64* %2013, align 1
  store %struct.Memory* %loadMem_428867, %struct.Memory** %MEMORY
  %loadMem_42886b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 33
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 15
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %2019 to i64*
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2021 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2020, i64 0, i64 2
  %YMM2.i206 = bitcast %union.VectorReg* %2021 to %"class.std::bitset"*
  %2022 = bitcast %"class.std::bitset"* %YMM2.i206 to i8*
  %2023 = load i64, i64* %RBP.i205
  %2024 = sub i64 %2023, 64
  %2025 = load i64, i64* %PC.i204
  %2026 = add i64 %2025, 5
  store i64 %2026, i64* %PC.i204
  %2027 = inttoptr i64 %2024 to double*
  %2028 = load double, double* %2027
  %2029 = bitcast i8* %2022 to double*
  store double %2028, double* %2029, align 1
  %2030 = getelementptr inbounds i8, i8* %2022, i64 8
  %2031 = bitcast i8* %2030 to double*
  store double 0.000000e+00, double* %2031, align 1
  store %struct.Memory* %loadMem_42886b, %struct.Memory** %MEMORY
  %loadMem_428870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 33
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %2034 to i64*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2036 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2035, i64 0, i64 2
  %YMM2.i202 = bitcast %union.VectorReg* %2036 to %"class.std::bitset"*
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2038 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2037, i64 0, i64 0
  %XMM0.i203 = bitcast %union.VectorReg* %2038 to %union.vec128_t*
  %2039 = bitcast %"class.std::bitset"* %YMM2.i202 to i8*
  %2040 = bitcast %"class.std::bitset"* %YMM2.i202 to i8*
  %2041 = bitcast %union.vec128_t* %XMM0.i203 to i8*
  %2042 = load i64, i64* %PC.i201
  %2043 = add i64 %2042, 4
  store i64 %2043, i64* %PC.i201
  %2044 = bitcast i8* %2040 to double*
  %2045 = load double, double* %2044, align 1
  %2046 = getelementptr inbounds i8, i8* %2040, i64 8
  %2047 = bitcast i8* %2046 to i64*
  %2048 = load i64, i64* %2047, align 1
  %2049 = bitcast i8* %2041 to double*
  %2050 = load double, double* %2049, align 1
  %2051 = fmul double %2045, %2050
  %2052 = bitcast i8* %2039 to double*
  store double %2051, double* %2052, align 1
  %2053 = getelementptr inbounds i8, i8* %2039, i64 8
  %2054 = bitcast i8* %2053 to i64*
  store i64 %2048, i64* %2054, align 1
  store %struct.Memory* %loadMem_428870, %struct.Memory** %MEMORY
  %loadMem_428874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 33
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2057 to i64*
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2059 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2058, i64 0, i64 0
  %YMM0.i199 = bitcast %union.VectorReg* %2059 to %"class.std::bitset"*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2061 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2060, i64 0, i64 2
  %XMM2.i200 = bitcast %union.VectorReg* %2061 to %union.vec128_t*
  %2062 = bitcast %"class.std::bitset"* %YMM0.i199 to i8*
  %2063 = bitcast %union.vec128_t* %XMM2.i200 to i8*
  %2064 = load i64, i64* %PC.i198
  %2065 = add i64 %2064, 4
  store i64 %2065, i64* %PC.i198
  %2066 = bitcast i8* %2062 to <2 x i32>*
  %2067 = load <2 x i32>, <2 x i32>* %2066, align 1
  %2068 = getelementptr inbounds i8, i8* %2062, i64 8
  %2069 = bitcast i8* %2068 to <2 x i32>*
  %2070 = load <2 x i32>, <2 x i32>* %2069, align 1
  %2071 = bitcast i8* %2063 to double*
  %2072 = load double, double* %2071, align 1
  %2073 = fptrunc double %2072 to float
  %2074 = bitcast i8* %2062 to float*
  store float %2073, float* %2074, align 1
  %2075 = extractelement <2 x i32> %2067, i32 1
  %2076 = getelementptr inbounds i8, i8* %2062, i64 4
  %2077 = bitcast i8* %2076 to i32*
  store i32 %2075, i32* %2077, align 1
  %2078 = extractelement <2 x i32> %2070, i32 0
  %2079 = bitcast i8* %2068 to i32*
  store i32 %2078, i32* %2079, align 1
  %2080 = extractelement <2 x i32> %2070, i32 1
  %2081 = getelementptr inbounds i8, i8* %2062, i64 12
  %2082 = bitcast i8* %2081 to i32*
  store i32 %2080, i32* %2082, align 1
  store %struct.Memory* %loadMem_428874, %struct.Memory** %MEMORY
  %loadMem_428878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 33
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 15
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %2088 to i64*
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2090 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2089, i64 0, i64 0
  %XMM0.i197 = bitcast %union.VectorReg* %2090 to %union.vec128_t*
  %2091 = load i64, i64* %RBP.i196
  %2092 = sub i64 %2091, 16
  %2093 = bitcast %union.vec128_t* %XMM0.i197 to i8*
  %2094 = load i64, i64* %PC.i195
  %2095 = add i64 %2094, 5
  store i64 %2095, i64* %PC.i195
  %2096 = bitcast i8* %2093 to <2 x float>*
  %2097 = load <2 x float>, <2 x float>* %2096, align 1
  %2098 = extractelement <2 x float> %2097, i32 0
  %2099 = inttoptr i64 %2092 to float*
  store float %2098, float* %2099
  store %struct.Memory* %loadMem_428878, %struct.Memory** %MEMORY
  %loadMem_42887d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 33
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2102 to i64*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 15
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %2105 to i64*
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2107 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2106, i64 0, i64 0
  %YMM0.i194 = bitcast %union.VectorReg* %2107 to %"class.std::bitset"*
  %2108 = bitcast %"class.std::bitset"* %YMM0.i194 to i8*
  %2109 = load i64, i64* %RBP.i193
  %2110 = sub i64 %2109, 16
  %2111 = load i64, i64* %PC.i192
  %2112 = add i64 %2111, 5
  store i64 %2112, i64* %PC.i192
  %2113 = inttoptr i64 %2110 to float*
  %2114 = load float, float* %2113
  %2115 = fpext float %2114 to double
  %2116 = bitcast i8* %2108 to double*
  store double %2115, double* %2116, align 1
  store %struct.Memory* %loadMem_42887d, %struct.Memory** %MEMORY
  %loadMem_428882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 33
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2119 to i64*
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2121 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2120, i64 0, i64 0
  %XMM0.i187 = bitcast %union.VectorReg* %2121 to %union.vec128_t*
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2123 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2122, i64 0, i64 1
  %XMM1.i188 = bitcast %union.VectorReg* %2123 to %union.vec128_t*
  %2124 = bitcast %union.vec128_t* %XMM0.i187 to i8*
  %2125 = bitcast %union.vec128_t* %XMM1.i188 to i8*
  %2126 = load i64, i64* %PC.i186
  %2127 = add i64 %2126, 4
  store i64 %2127, i64* %PC.i186
  %2128 = bitcast i8* %2124 to double*
  %2129 = load double, double* %2128, align 1
  %2130 = bitcast i8* %2125 to double*
  %2131 = load double, double* %2130, align 1
  %2132 = fcmp uno double %2129, %2131
  br i1 %2132, label %2133, label %2145

; <label>:2133:                                   ; preds = %block_.L_428821
  %2134 = fadd double %2129, %2131
  %2135 = bitcast double %2134 to i64
  %2136 = and i64 %2135, 9221120237041090560
  %2137 = icmp eq i64 %2136, 9218868437227405312
  %2138 = and i64 %2135, 2251799813685247
  %2139 = icmp ne i64 %2138, 0
  %2140 = and i1 %2137, %2139
  br i1 %2140, label %2141, label %2151

; <label>:2141:                                   ; preds = %2133
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2143 = load i64, i64* %2142, align 8
  %2144 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2143, %struct.Memory* %loadMem_428882)
  br label %routine_ucomisd__xmm1___xmm0.exit189

; <label>:2145:                                   ; preds = %block_.L_428821
  %2146 = fcmp ogt double %2129, %2131
  br i1 %2146, label %2151, label %2147

; <label>:2147:                                   ; preds = %2145
  %2148 = fcmp olt double %2129, %2131
  br i1 %2148, label %2151, label %2149

; <label>:2149:                                   ; preds = %2147
  %2150 = fcmp oeq double %2129, %2131
  br i1 %2150, label %2151, label %2158

; <label>:2151:                                   ; preds = %2149, %2147, %2145, %2133
  %2152 = phi i8 [ 0, %2145 ], [ 0, %2147 ], [ 1, %2149 ], [ 1, %2133 ]
  %2153 = phi i8 [ 0, %2145 ], [ 0, %2147 ], [ 0, %2149 ], [ 1, %2133 ]
  %2154 = phi i8 [ 0, %2145 ], [ 1, %2147 ], [ 0, %2149 ], [ 1, %2133 ]
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2152, i8* %2155, align 1
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2153, i8* %2156, align 1
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2154, i8* %2157, align 1
  br label %2158

; <label>:2158:                                   ; preds = %2151, %2149
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2159, align 1
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2160, align 1
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2161, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit189

routine_ucomisd__xmm1___xmm0.exit189:             ; preds = %2141, %2158
  %2162 = phi %struct.Memory* [ %2144, %2141 ], [ %loadMem_428882, %2158 ]
  store %struct.Memory* %2162, %struct.Memory** %MEMORY
  %loadMem_428886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 33
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %2165 to i64*
  %2166 = load i64, i64* %PC.i185
  %2167 = add i64 %2166, 193
  %2168 = load i64, i64* %PC.i185
  %2169 = add i64 %2168, 6
  %2170 = load i64, i64* %PC.i185
  %2171 = add i64 %2170, 6
  store i64 %2171, i64* %PC.i185
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2173 = load i8, i8* %2172, align 1
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2175 = load i8, i8* %2174, align 1
  %2176 = or i8 %2175, %2173
  %2177 = icmp ne i8 %2176, 0
  %2178 = zext i1 %2177 to i8
  store i8 %2178, i8* %BRANCH_TAKEN, align 1
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2180 = select i1 %2177, i64 %2167, i64 %2169
  store i64 %2180, i64* %2179, align 8
  store %struct.Memory* %loadMem_428886, %struct.Memory** %MEMORY
  %loadBr_428886 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_428886 = icmp eq i8 %loadBr_428886, 1
  br i1 %cmpBr_428886, label %block_.L_428947, label %block_42888c

block_42888c:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit189
  %loadMem_42888c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 33
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2183 to i64*
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2185 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2184, i64 0, i64 0
  %YMM0.i184 = bitcast %union.VectorReg* %2185 to %"class.std::bitset"*
  %2186 = bitcast %"class.std::bitset"* %YMM0.i184 to i8*
  %2187 = load i64, i64* %PC.i183
  %2188 = add i64 %2187, ptrtoint (%G_0x2bf4c__rip__type* @G_0x2bf4c__rip_ to i64)
  %2189 = load i64, i64* %PC.i183
  %2190 = add i64 %2189, 8
  store i64 %2190, i64* %PC.i183
  %2191 = inttoptr i64 %2188 to double*
  %2192 = load double, double* %2191
  %2193 = bitcast i8* %2186 to double*
  store double %2192, double* %2193, align 1
  %2194 = getelementptr inbounds i8, i8* %2186, i64 8
  %2195 = bitcast i8* %2194 to double*
  store double 0.000000e+00, double* %2195, align 1
  store %struct.Memory* %loadMem_42888c, %struct.Memory** %MEMORY
  %loadMem_428894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 33
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %2198 to i64*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2199, i64 0, i64 1
  %YMM1.i182 = bitcast %union.VectorReg* %2200 to %"class.std::bitset"*
  %2201 = bitcast %"class.std::bitset"* %YMM1.i182 to i8*
  %2202 = load i64, i64* %PC.i181
  %2203 = add i64 %2202, ptrtoint (%G_0x2be8c__rip__type* @G_0x2be8c__rip_ to i64)
  %2204 = load i64, i64* %PC.i181
  %2205 = add i64 %2204, 8
  store i64 %2205, i64* %PC.i181
  %2206 = inttoptr i64 %2203 to float*
  %2207 = load float, float* %2206
  %2208 = bitcast i8* %2201 to float*
  store float %2207, float* %2208, align 1
  %2209 = getelementptr inbounds i8, i8* %2201, i64 4
  %2210 = bitcast i8* %2209 to float*
  store float 0.000000e+00, float* %2210, align 1
  %2211 = getelementptr inbounds i8, i8* %2201, i64 8
  %2212 = bitcast i8* %2211 to float*
  store float 0.000000e+00, float* %2212, align 1
  %2213 = getelementptr inbounds i8, i8* %2201, i64 12
  %2214 = bitcast i8* %2213 to float*
  store float 0.000000e+00, float* %2214, align 1
  store %struct.Memory* %loadMem_428894, %struct.Memory** %MEMORY
  %loadMem_42889c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 33
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 15
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %2220 to i64*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2222 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2221, i64 0, i64 1
  %YMM1.i180 = bitcast %union.VectorReg* %2222 to %"class.std::bitset"*
  %2223 = bitcast %"class.std::bitset"* %YMM1.i180 to i8*
  %2224 = bitcast %"class.std::bitset"* %YMM1.i180 to i8*
  %2225 = load i64, i64* %RBP.i179
  %2226 = sub i64 %2225, 16
  %2227 = load i64, i64* %PC.i178
  %2228 = add i64 %2227, 5
  store i64 %2228, i64* %PC.i178
  %2229 = bitcast i8* %2224 to <2 x float>*
  %2230 = load <2 x float>, <2 x float>* %2229, align 1
  %2231 = getelementptr inbounds i8, i8* %2224, i64 8
  %2232 = bitcast i8* %2231 to <2 x i32>*
  %2233 = load <2 x i32>, <2 x i32>* %2232, align 1
  %2234 = inttoptr i64 %2226 to float*
  %2235 = load float, float* %2234
  %2236 = extractelement <2 x float> %2230, i32 0
  %2237 = fsub float %2236, %2235
  %2238 = bitcast i8* %2223 to float*
  store float %2237, float* %2238, align 1
  %2239 = bitcast <2 x float> %2230 to <2 x i32>
  %2240 = extractelement <2 x i32> %2239, i32 1
  %2241 = getelementptr inbounds i8, i8* %2223, i64 4
  %2242 = bitcast i8* %2241 to i32*
  store i32 %2240, i32* %2242, align 1
  %2243 = extractelement <2 x i32> %2233, i32 0
  %2244 = getelementptr inbounds i8, i8* %2223, i64 8
  %2245 = bitcast i8* %2244 to i32*
  store i32 %2243, i32* %2245, align 1
  %2246 = extractelement <2 x i32> %2233, i32 1
  %2247 = getelementptr inbounds i8, i8* %2223, i64 12
  %2248 = bitcast i8* %2247 to i32*
  store i32 %2246, i32* %2248, align 1
  store %struct.Memory* %loadMem_42889c, %struct.Memory** %MEMORY
  %loadMem_4288a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 33
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %2251 to i64*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2253 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2252, i64 0, i64 1
  %YMM1.i176 = bitcast %union.VectorReg* %2253 to %"class.std::bitset"*
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2255 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2254, i64 0, i64 1
  %XMM1.i177 = bitcast %union.VectorReg* %2255 to %union.vec128_t*
  %2256 = bitcast %"class.std::bitset"* %YMM1.i176 to i8*
  %2257 = bitcast %union.vec128_t* %XMM1.i177 to i8*
  %2258 = load i64, i64* %PC.i175
  %2259 = add i64 %2258, 4
  store i64 %2259, i64* %PC.i175
  %2260 = bitcast i8* %2257 to <2 x float>*
  %2261 = load <2 x float>, <2 x float>* %2260, align 1
  %2262 = extractelement <2 x float> %2261, i32 0
  %2263 = fpext float %2262 to double
  %2264 = bitcast i8* %2256 to double*
  store double %2263, double* %2264, align 1
  store %struct.Memory* %loadMem_4288a1, %struct.Memory** %MEMORY
  %loadMem_4288a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 33
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %2267 to i64*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 15
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %2270 to i64*
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2272 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2271, i64 0, i64 2
  %YMM2.i174 = bitcast %union.VectorReg* %2272 to %"class.std::bitset"*
  %2273 = bitcast %"class.std::bitset"* %YMM2.i174 to i8*
  %2274 = load i64, i64* %RBP.i173
  %2275 = sub i64 %2274, 8
  %2276 = load i64, i64* %PC.i172
  %2277 = add i64 %2276, 5
  store i64 %2277, i64* %PC.i172
  %2278 = inttoptr i64 %2275 to float*
  %2279 = load float, float* %2278
  %2280 = fpext float %2279 to double
  %2281 = bitcast i8* %2273 to double*
  store double %2280, double* %2281, align 1
  store %struct.Memory* %loadMem_4288a5, %struct.Memory** %MEMORY
  %loadMem_4288aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 33
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %2284 to i64*
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 15
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %2287 to i64*
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2288, i64 0, i64 2
  %XMM2.i171 = bitcast %union.VectorReg* %2289 to %union.vec128_t*
  %2290 = load i64, i64* %RBP.i170
  %2291 = sub i64 %2290, 80
  %2292 = bitcast %union.vec128_t* %XMM2.i171 to i8*
  %2293 = load i64, i64* %PC.i169
  %2294 = add i64 %2293, 5
  store i64 %2294, i64* %PC.i169
  %2295 = bitcast i8* %2292 to double*
  %2296 = load double, double* %2295, align 1
  %2297 = inttoptr i64 %2291 to double*
  store double %2296, double* %2297
  store %struct.Memory* %loadMem_4288aa, %struct.Memory** %MEMORY
  %loadMem_4288af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 33
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %2300 to i64*
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 15
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %2303 to i64*
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2304, i64 0, i64 1
  %XMM1.i168 = bitcast %union.VectorReg* %2305 to %union.vec128_t*
  %2306 = load i64, i64* %RBP.i167
  %2307 = sub i64 %2306, 88
  %2308 = bitcast %union.vec128_t* %XMM1.i168 to i8*
  %2309 = load i64, i64* %PC.i166
  %2310 = add i64 %2309, 5
  store i64 %2310, i64* %PC.i166
  %2311 = bitcast i8* %2308 to double*
  %2312 = load double, double* %2311, align 1
  %2313 = inttoptr i64 %2307 to double*
  store double %2312, double* %2313
  store %struct.Memory* %loadMem_4288af, %struct.Memory** %MEMORY
  %loadMem1_4288b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 33
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2316 to i64*
  %2317 = load i64, i64* %PC.i165
  %2318 = add i64 %2317, -160916
  %2319 = load i64, i64* %PC.i165
  %2320 = add i64 %2319, 5
  %2321 = load i64, i64* %PC.i165
  %2322 = add i64 %2321, 5
  store i64 %2322, i64* %PC.i165
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2324 = load i64, i64* %2323, align 8
  %2325 = add i64 %2324, -8
  %2326 = inttoptr i64 %2325 to i64*
  store i64 %2320, i64* %2326
  store i64 %2325, i64* %2323, align 8
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2318, i64* %2327, align 8
  store %struct.Memory* %loadMem1_4288b4, %struct.Memory** %MEMORY
  %loadMem2_4288b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4288b4 = load i64, i64* %3
  %2328 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_4288b4)
  store %struct.Memory* %2328, %struct.Memory** %MEMORY
  %loadMem_4288b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 33
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 15
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %2334 to i64*
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2336 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2335, i64 0, i64 1
  %YMM1.i163 = bitcast %union.VectorReg* %2336 to %"class.std::bitset"*
  %2337 = bitcast %"class.std::bitset"* %YMM1.i163 to i8*
  %2338 = load i64, i64* %RBP.i162
  %2339 = sub i64 %2338, 80
  %2340 = load i64, i64* %PC.i161
  %2341 = add i64 %2340, 5
  store i64 %2341, i64* %PC.i161
  %2342 = inttoptr i64 %2339 to double*
  %2343 = load double, double* %2342
  %2344 = bitcast i8* %2337 to double*
  store double %2343, double* %2344, align 1
  %2345 = getelementptr inbounds i8, i8* %2337, i64 8
  %2346 = bitcast i8* %2345 to double*
  store double 0.000000e+00, double* %2346, align 1
  store %struct.Memory* %loadMem_4288b9, %struct.Memory** %MEMORY
  %loadMem_4288be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 33
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %2349 to i64*
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2351 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2350, i64 0, i64 1
  %YMM1.i159 = bitcast %union.VectorReg* %2351 to %"class.std::bitset"*
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2353 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2352, i64 0, i64 0
  %XMM0.i160 = bitcast %union.VectorReg* %2353 to %union.vec128_t*
  %2354 = bitcast %"class.std::bitset"* %YMM1.i159 to i8*
  %2355 = bitcast %"class.std::bitset"* %YMM1.i159 to i8*
  %2356 = bitcast %union.vec128_t* %XMM0.i160 to i8*
  %2357 = load i64, i64* %PC.i158
  %2358 = add i64 %2357, 4
  store i64 %2358, i64* %PC.i158
  %2359 = bitcast i8* %2355 to double*
  %2360 = load double, double* %2359, align 1
  %2361 = getelementptr inbounds i8, i8* %2355, i64 8
  %2362 = bitcast i8* %2361 to i64*
  %2363 = load i64, i64* %2362, align 1
  %2364 = bitcast i8* %2356 to double*
  %2365 = load double, double* %2364, align 1
  %2366 = fdiv double %2360, %2365
  %2367 = bitcast i8* %2354 to double*
  store double %2366, double* %2367, align 1
  %2368 = getelementptr inbounds i8, i8* %2354, i64 8
  %2369 = bitcast i8* %2368 to i64*
  store i64 %2363, i64* %2369, align 1
  store %struct.Memory* %loadMem_4288be, %struct.Memory** %MEMORY
  %loadMem_4288c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 33
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %2372 to i64*
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 15
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %2375 to i64*
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2377 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2376, i64 0, i64 0
  %YMM0.i157 = bitcast %union.VectorReg* %2377 to %"class.std::bitset"*
  %2378 = bitcast %"class.std::bitset"* %YMM0.i157 to i8*
  %2379 = load i64, i64* %RBP.i156
  %2380 = sub i64 %2379, 88
  %2381 = load i64, i64* %PC.i155
  %2382 = add i64 %2381, 5
  store i64 %2382, i64* %PC.i155
  %2383 = inttoptr i64 %2380 to double*
  %2384 = load double, double* %2383
  %2385 = bitcast i8* %2378 to double*
  store double %2384, double* %2385, align 1
  %2386 = getelementptr inbounds i8, i8* %2378, i64 8
  %2387 = bitcast i8* %2386 to double*
  store double 0.000000e+00, double* %2387, align 1
  store %struct.Memory* %loadMem_4288c2, %struct.Memory** %MEMORY
  %loadMem_4288c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 33
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %2390 to i64*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2392 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2391, i64 0, i64 0
  %YMM0.i153 = bitcast %union.VectorReg* %2392 to %"class.std::bitset"*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2394 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2393, i64 0, i64 1
  %XMM1.i154 = bitcast %union.VectorReg* %2394 to %union.vec128_t*
  %2395 = bitcast %"class.std::bitset"* %YMM0.i153 to i8*
  %2396 = bitcast %"class.std::bitset"* %YMM0.i153 to i8*
  %2397 = bitcast %union.vec128_t* %XMM1.i154 to i8*
  %2398 = load i64, i64* %PC.i152
  %2399 = add i64 %2398, 4
  store i64 %2399, i64* %PC.i152
  %2400 = bitcast i8* %2396 to double*
  %2401 = load double, double* %2400, align 1
  %2402 = getelementptr inbounds i8, i8* %2396, i64 8
  %2403 = bitcast i8* %2402 to i64*
  %2404 = load i64, i64* %2403, align 1
  %2405 = bitcast i8* %2397 to double*
  %2406 = load double, double* %2405, align 1
  %2407 = fadd double %2401, %2406
  %2408 = bitcast i8* %2395 to double*
  store double %2407, double* %2408, align 1
  %2409 = getelementptr inbounds i8, i8* %2395, i64 8
  %2410 = bitcast i8* %2409 to i64*
  store i64 %2404, i64* %2410, align 1
  store %struct.Memory* %loadMem_4288c7, %struct.Memory** %MEMORY
  %loadMem_4288cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 33
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 15
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %2416 to i64*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2418 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2417, i64 0, i64 1
  %YMM1.i151 = bitcast %union.VectorReg* %2418 to %"class.std::bitset"*
  %2419 = bitcast %"class.std::bitset"* %YMM1.i151 to i8*
  %2420 = load i64, i64* %RBP.i150
  %2421 = sub i64 %2420, 8
  %2422 = load i64, i64* %PC.i149
  %2423 = add i64 %2422, 5
  store i64 %2423, i64* %PC.i149
  %2424 = inttoptr i64 %2421 to float*
  %2425 = load float, float* %2424
  %2426 = fpext float %2425 to double
  %2427 = bitcast i8* %2419 to double*
  store double %2426, double* %2427, align 1
  store %struct.Memory* %loadMem_4288cb, %struct.Memory** %MEMORY
  %loadMem_4288d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 33
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2430 to i64*
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2432 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2431, i64 0, i64 0
  %YMM0.i147 = bitcast %union.VectorReg* %2432 to %"class.std::bitset"*
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2434 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2433, i64 0, i64 1
  %XMM1.i148 = bitcast %union.VectorReg* %2434 to %union.vec128_t*
  %2435 = bitcast %"class.std::bitset"* %YMM0.i147 to i8*
  %2436 = bitcast %"class.std::bitset"* %YMM0.i147 to i8*
  %2437 = bitcast %union.vec128_t* %XMM1.i148 to i8*
  %2438 = load i64, i64* %PC.i146
  %2439 = add i64 %2438, 4
  store i64 %2439, i64* %PC.i146
  %2440 = bitcast i8* %2436 to double*
  %2441 = load double, double* %2440, align 1
  %2442 = getelementptr inbounds i8, i8* %2436, i64 8
  %2443 = bitcast i8* %2442 to i64*
  %2444 = load i64, i64* %2443, align 1
  %2445 = bitcast i8* %2437 to double*
  %2446 = load double, double* %2445, align 1
  %2447 = fdiv double %2441, %2446
  %2448 = bitcast i8* %2435 to double*
  store double %2447, double* %2448, align 1
  %2449 = getelementptr inbounds i8, i8* %2435, i64 8
  %2450 = bitcast i8* %2449 to i64*
  store i64 %2444, i64* %2450, align 1
  store %struct.Memory* %loadMem_4288d0, %struct.Memory** %MEMORY
  %loadMem1_4288d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 33
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %2453 to i64*
  %2454 = load i64, i64* %PC.i145
  %2455 = add i64 %2454, -160740
  %2456 = load i64, i64* %PC.i145
  %2457 = add i64 %2456, 5
  %2458 = load i64, i64* %PC.i145
  %2459 = add i64 %2458, 5
  store i64 %2459, i64* %PC.i145
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2461 = load i64, i64* %2460, align 8
  %2462 = add i64 %2461, -8
  %2463 = inttoptr i64 %2462 to i64*
  store i64 %2457, i64* %2463
  store i64 %2462, i64* %2460, align 8
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2455, i64* %2464, align 8
  store %struct.Memory* %loadMem1_4288d4, %struct.Memory** %MEMORY
  %loadMem2_4288d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4288d4 = load i64, i64* %3
  %2465 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %loadMem2_4288d4)
  store %struct.Memory* %2465, %struct.Memory** %MEMORY
  %loadMem_4288d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 33
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2468 to i64*
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 1
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %2471 to i64*
  %2472 = load i64, i64* %PC.i138
  %2473 = add i64 %2472, 10
  store i64 %2473, i64* %PC.i138
  store i64 -9223372036854775808, i64* %RAX.i139, align 8
  store %struct.Memory* %loadMem_4288d9, %struct.Memory** %MEMORY
  %loadMem_4288e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 33
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %2476 to i64*
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 5
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %RCX.i136 = bitcast %union.anon* %2479 to i64*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2481 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2480, i64 0, i64 0
  %XMM0.i137 = bitcast %union.VectorReg* %2481 to %union.vec128_t*
  %2482 = bitcast %union.vec128_t* %XMM0.i137 to i8*
  %2483 = load i64, i64* %PC.i135
  %2484 = add i64 %2483, 5
  store i64 %2484, i64* %PC.i135
  %2485 = bitcast i8* %2482 to i64*
  %2486 = load i64, i64* %2485, align 1
  store i64 %2486, i64* %RCX.i136, align 1
  store %struct.Memory* %loadMem_4288e3, %struct.Memory** %MEMORY
  %loadMem_4288e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 1
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 5
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %RCX.i134 = bitcast %union.anon* %2495 to i64*
  %2496 = load i64, i64* %RCX.i134
  %2497 = load i64, i64* %RAX.i133
  %2498 = load i64, i64* %PC.i132
  %2499 = add i64 %2498, 3
  store i64 %2499, i64* %PC.i132
  %2500 = xor i64 %2497, %2496
  store i64 %2500, i64* %RCX.i134, align 8
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2501, align 1
  %2502 = trunc i64 %2500 to i32
  %2503 = and i32 %2502, 255
  %2504 = call i32 @llvm.ctpop.i32(i32 %2503)
  %2505 = trunc i32 %2504 to i8
  %2506 = and i8 %2505, 1
  %2507 = xor i8 %2506, 1
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2507, i8* %2508, align 1
  %2509 = icmp eq i64 %2500, 0
  %2510 = zext i1 %2509 to i8
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2510, i8* %2511, align 1
  %2512 = lshr i64 %2500, 63
  %2513 = trunc i64 %2512 to i8
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2513, i8* %2514, align 1
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2515, align 1
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2516, align 1
  store %struct.Memory* %loadMem_4288e8, %struct.Memory** %MEMORY
  %loadMem_4288eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 33
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %2519 to i64*
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 5
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2522 to i64*
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2524 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2523, i64 0, i64 0
  %YMM0.i131 = bitcast %union.VectorReg* %2524 to %"class.std::bitset"*
  %2525 = bitcast %"class.std::bitset"* %YMM0.i131 to i8*
  %2526 = load i64, i64* %RCX.i
  %2527 = load i64, i64* %PC.i130
  %2528 = add i64 %2527, 5
  store i64 %2528, i64* %PC.i130
  %2529 = bitcast i8* %2525 to i64*
  store i64 %2526, i64* %2529, align 1
  %2530 = getelementptr inbounds i8, i8* %2525, i64 8
  %2531 = bitcast i8* %2530 to i64*
  store i64 0, i64* %2531, align 1
  store %struct.Memory* %loadMem_4288eb, %struct.Memory** %MEMORY
  %loadMem_4288f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 33
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %2534 to i64*
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2536 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2535, i64 0, i64 0
  %YMM0.i128 = bitcast %union.VectorReg* %2536 to %"class.std::bitset"*
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2538 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2537, i64 0, i64 0
  %XMM0.i129 = bitcast %union.VectorReg* %2538 to %union.vec128_t*
  %2539 = bitcast %"class.std::bitset"* %YMM0.i128 to i8*
  %2540 = bitcast %union.vec128_t* %XMM0.i129 to i8*
  %2541 = load i64, i64* %PC.i127
  %2542 = add i64 %2541, 4
  store i64 %2542, i64* %PC.i127
  %2543 = bitcast i8* %2539 to <2 x i32>*
  %2544 = load <2 x i32>, <2 x i32>* %2543, align 1
  %2545 = getelementptr inbounds i8, i8* %2539, i64 8
  %2546 = bitcast i8* %2545 to <2 x i32>*
  %2547 = load <2 x i32>, <2 x i32>* %2546, align 1
  %2548 = bitcast i8* %2540 to double*
  %2549 = load double, double* %2548, align 1
  %2550 = fptrunc double %2549 to float
  %2551 = bitcast i8* %2539 to float*
  store float %2550, float* %2551, align 1
  %2552 = extractelement <2 x i32> %2544, i32 1
  %2553 = getelementptr inbounds i8, i8* %2539, i64 4
  %2554 = bitcast i8* %2553 to i32*
  store i32 %2552, i32* %2554, align 1
  %2555 = extractelement <2 x i32> %2547, i32 0
  %2556 = bitcast i8* %2545 to i32*
  store i32 %2555, i32* %2556, align 1
  %2557 = extractelement <2 x i32> %2547, i32 1
  %2558 = getelementptr inbounds i8, i8* %2539, i64 12
  %2559 = bitcast i8* %2558 to i32*
  store i32 %2557, i32* %2559, align 1
  store %struct.Memory* %loadMem_4288f0, %struct.Memory** %MEMORY
  %loadMem_4288f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2561 = getelementptr inbounds %struct.GPR, %struct.GPR* %2560, i32 0, i32 33
  %2562 = getelementptr inbounds %struct.Reg, %struct.Reg* %2561, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %2562 to i64*
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2564 = getelementptr inbounds %struct.GPR, %struct.GPR* %2563, i32 0, i32 15
  %2565 = getelementptr inbounds %struct.Reg, %struct.Reg* %2564, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %2565 to i64*
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2567 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2566, i64 0, i64 0
  %XMM0.i126 = bitcast %union.VectorReg* %2567 to %union.vec128_t*
  %2568 = load i64, i64* %RBP.i125
  %2569 = sub i64 %2568, 20
  %2570 = bitcast %union.vec128_t* %XMM0.i126 to i8*
  %2571 = load i64, i64* %PC.i124
  %2572 = add i64 %2571, 5
  store i64 %2572, i64* %PC.i124
  %2573 = bitcast i8* %2570 to <2 x float>*
  %2574 = load <2 x float>, <2 x float>* %2573, align 1
  %2575 = extractelement <2 x float> %2574, i32 0
  %2576 = inttoptr i64 %2569 to float*
  store float %2575, float* %2576
  store %struct.Memory* %loadMem_4288f4, %struct.Memory** %MEMORY
  %loadMem1_4288f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 33
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2579 to i64*
  %2580 = load i64, i64* %PC.i123
  %2581 = add i64 %2580, 117511
  %2582 = load i64, i64* %PC.i123
  %2583 = add i64 %2582, 5
  %2584 = load i64, i64* %PC.i123
  %2585 = add i64 %2584, 5
  store i64 %2585, i64* %PC.i123
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2587 = load i64, i64* %2586, align 8
  %2588 = add i64 %2587, -8
  %2589 = inttoptr i64 %2588 to i64*
  store i64 %2583, i64* %2589
  store i64 %2588, i64* %2586, align 8
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2581, i64* %2590, align 8
  store %struct.Memory* %loadMem1_4288f9, %struct.Memory** %MEMORY
  %loadMem2_4288f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4288f9 = load i64, i64* %3
  %call2_4288f9 = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64 %loadPC_4288f9, %struct.Memory* %loadMem2_4288f9)
  store %struct.Memory* %call2_4288f9, %struct.Memory** %MEMORY
  %loadMem_4288fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 33
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2593 to i64*
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2595 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2594, i64 0, i64 1
  %YMM1.i122 = bitcast %union.VectorReg* %2595 to %"class.std::bitset"*
  %2596 = bitcast %"class.std::bitset"* %YMM1.i122 to i8*
  %2597 = load i64, i64* %PC.i121
  %2598 = add i64 %2597, ptrtoint (%G_0x2beda__rip__type* @G_0x2beda__rip_ to i64)
  %2599 = load i64, i64* %PC.i121
  %2600 = add i64 %2599, 8
  store i64 %2600, i64* %PC.i121
  %2601 = inttoptr i64 %2598 to double*
  %2602 = load double, double* %2601
  %2603 = bitcast i8* %2596 to double*
  store double %2602, double* %2603, align 1
  %2604 = getelementptr inbounds i8, i8* %2596, i64 8
  %2605 = bitcast i8* %2604 to double*
  store double 0.000000e+00, double* %2605, align 1
  store %struct.Memory* %loadMem_4288fe, %struct.Memory** %MEMORY
  %loadMem_428906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 33
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2608 to i64*
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 15
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %2611 to i64*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2613 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2612, i64 0, i64 2
  %YMM2.i120 = bitcast %union.VectorReg* %2613 to %"class.std::bitset"*
  %2614 = bitcast %"class.std::bitset"* %YMM2.i120 to i8*
  %2615 = load i64, i64* %RBP.i119
  %2616 = sub i64 %2615, 20
  %2617 = load i64, i64* %PC.i118
  %2618 = add i64 %2617, 5
  store i64 %2618, i64* %PC.i118
  %2619 = inttoptr i64 %2616 to float*
  %2620 = load float, float* %2619
  %2621 = fpext float %2620 to double
  %2622 = bitcast i8* %2614 to double*
  store double %2621, double* %2622, align 1
  store %struct.Memory* %loadMem_428906, %struct.Memory** %MEMORY
  %loadMem_42890b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 33
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 15
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2630 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2629, i64 0, i64 3
  %YMM3.i117 = bitcast %union.VectorReg* %2630 to %"class.std::bitset"*
  %2631 = bitcast %"class.std::bitset"* %YMM3.i117 to i8*
  %2632 = load i64, i64* %RBP.i116
  %2633 = sub i64 %2632, 8
  %2634 = load i64, i64* %PC.i115
  %2635 = add i64 %2634, 5
  store i64 %2635, i64* %PC.i115
  %2636 = inttoptr i64 %2633 to float*
  %2637 = load float, float* %2636
  %2638 = fpext float %2637 to double
  %2639 = bitcast i8* %2631 to double*
  store double %2638, double* %2639, align 1
  store %struct.Memory* %loadMem_42890b, %struct.Memory** %MEMORY
  %loadMem_428910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 33
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2642 to i64*
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2644 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2643, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %2644 to %"class.std::bitset"*
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2646 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2645, i64 0, i64 1
  %XMM1.i114 = bitcast %union.VectorReg* %2646 to %union.vec128_t*
  %2647 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2648 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2649 = bitcast %union.vec128_t* %XMM1.i114 to i8*
  %2650 = load i64, i64* %PC.i113
  %2651 = add i64 %2650, 4
  store i64 %2651, i64* %PC.i113
  %2652 = bitcast i8* %2648 to double*
  %2653 = load double, double* %2652, align 1
  %2654 = getelementptr inbounds i8, i8* %2648, i64 8
  %2655 = bitcast i8* %2654 to i64*
  %2656 = load i64, i64* %2655, align 1
  %2657 = bitcast i8* %2649 to double*
  %2658 = load double, double* %2657, align 1
  %2659 = fsub double %2653, %2658
  %2660 = bitcast i8* %2647 to double*
  store double %2659, double* %2660, align 1
  %2661 = getelementptr inbounds i8, i8* %2647, i64 8
  %2662 = bitcast i8* %2661 to i64*
  store i64 %2656, i64* %2662, align 1
  store %struct.Memory* %loadMem_428910, %struct.Memory** %MEMORY
  %loadMem_428914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 33
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2665 to i64*
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 15
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %2668 to i64*
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2670 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2669, i64 0, i64 0
  %XMM0.i112 = bitcast %union.VectorReg* %2670 to %union.vec128_t*
  %2671 = load i64, i64* %RBP.i111
  %2672 = sub i64 %2671, 96
  %2673 = bitcast %union.vec128_t* %XMM0.i112 to i8*
  %2674 = load i64, i64* %PC.i110
  %2675 = add i64 %2674, 5
  store i64 %2675, i64* %PC.i110
  %2676 = bitcast i8* %2673 to double*
  %2677 = load double, double* %2676, align 1
  %2678 = inttoptr i64 %2672 to double*
  store double %2677, double* %2678
  store %struct.Memory* %loadMem_428914, %struct.Memory** %MEMORY
  %loadMem_428919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 33
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2681 to i64*
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2683 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2682, i64 0, i64 0
  %YMM0.i108 = bitcast %union.VectorReg* %2683 to %"class.std::bitset"*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2685 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2684, i64 0, i64 2
  %XMM2.i109 = bitcast %union.VectorReg* %2685 to %union.vec128_t*
  %2686 = bitcast %"class.std::bitset"* %YMM0.i108 to i8*
  %2687 = bitcast %union.vec128_t* %XMM2.i109 to i8*
  %2688 = load i64, i64* %PC.i107
  %2689 = add i64 %2688, 3
  store i64 %2689, i64* %PC.i107
  %2690 = bitcast i8* %2687 to <2 x i32>*
  %2691 = load <2 x i32>, <2 x i32>* %2690, align 1
  %2692 = getelementptr inbounds i8, i8* %2687, i64 8
  %2693 = bitcast i8* %2692 to <2 x i32>*
  %2694 = load <2 x i32>, <2 x i32>* %2693, align 1
  %2695 = extractelement <2 x i32> %2691, i32 0
  %2696 = bitcast i8* %2686 to i32*
  store i32 %2695, i32* %2696, align 1
  %2697 = extractelement <2 x i32> %2691, i32 1
  %2698 = getelementptr inbounds i8, i8* %2686, i64 4
  %2699 = bitcast i8* %2698 to i32*
  store i32 %2697, i32* %2699, align 1
  %2700 = extractelement <2 x i32> %2694, i32 0
  %2701 = getelementptr inbounds i8, i8* %2686, i64 8
  %2702 = bitcast i8* %2701 to i32*
  store i32 %2700, i32* %2702, align 1
  %2703 = extractelement <2 x i32> %2694, i32 1
  %2704 = getelementptr inbounds i8, i8* %2686, i64 12
  %2705 = bitcast i8* %2704 to i32*
  store i32 %2703, i32* %2705, align 1
  store %struct.Memory* %loadMem_428919, %struct.Memory** %MEMORY
  %loadMem_42891c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 33
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2708 to i64*
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2710 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2709, i64 0, i64 1
  %YMM1.i106 = bitcast %union.VectorReg* %2710 to %"class.std::bitset"*
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2712 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2711, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %2712 to %union.vec128_t*
  %2713 = bitcast %"class.std::bitset"* %YMM1.i106 to i8*
  %2714 = bitcast %union.vec128_t* %XMM3.i to i8*
  %2715 = load i64, i64* %PC.i105
  %2716 = add i64 %2715, 3
  store i64 %2716, i64* %PC.i105
  %2717 = bitcast i8* %2714 to <2 x i32>*
  %2718 = load <2 x i32>, <2 x i32>* %2717, align 1
  %2719 = getelementptr inbounds i8, i8* %2714, i64 8
  %2720 = bitcast i8* %2719 to <2 x i32>*
  %2721 = load <2 x i32>, <2 x i32>* %2720, align 1
  %2722 = extractelement <2 x i32> %2718, i32 0
  %2723 = bitcast i8* %2713 to i32*
  store i32 %2722, i32* %2723, align 1
  %2724 = extractelement <2 x i32> %2718, i32 1
  %2725 = getelementptr inbounds i8, i8* %2713, i64 4
  %2726 = bitcast i8* %2725 to i32*
  store i32 %2724, i32* %2726, align 1
  %2727 = extractelement <2 x i32> %2721, i32 0
  %2728 = getelementptr inbounds i8, i8* %2713, i64 8
  %2729 = bitcast i8* %2728 to i32*
  store i32 %2727, i32* %2729, align 1
  %2730 = extractelement <2 x i32> %2721, i32 1
  %2731 = getelementptr inbounds i8, i8* %2713, i64 12
  %2732 = bitcast i8* %2731 to i32*
  store i32 %2730, i32* %2732, align 1
  store %struct.Memory* %loadMem_42891c, %struct.Memory** %MEMORY
  %loadMem1_42891f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 33
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %2735 to i64*
  %2736 = load i64, i64* %PC.i104
  %2737 = add i64 %2736, -160831
  %2738 = load i64, i64* %PC.i104
  %2739 = add i64 %2738, 5
  %2740 = load i64, i64* %PC.i104
  %2741 = add i64 %2740, 5
  store i64 %2741, i64* %PC.i104
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2743 = load i64, i64* %2742, align 8
  %2744 = add i64 %2743, -8
  %2745 = inttoptr i64 %2744 to i64*
  store i64 %2739, i64* %2745
  store i64 %2744, i64* %2742, align 8
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2737, i64* %2746, align 8
  store %struct.Memory* %loadMem1_42891f, %struct.Memory** %MEMORY
  %loadMem2_42891f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42891f = load i64, i64* %3
  %2747 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %loadMem2_42891f)
  store %struct.Memory* %2747, %struct.Memory** %MEMORY
  %loadMem_428924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 33
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %2750 to i64*
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 15
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %2753 to i64*
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2755 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2754, i64 0, i64 1
  %YMM1.i100 = bitcast %union.VectorReg* %2755 to %"class.std::bitset"*
  %2756 = bitcast %"class.std::bitset"* %YMM1.i100 to i8*
  %2757 = load i64, i64* %RBP.i99
  %2758 = sub i64 %2757, 96
  %2759 = load i64, i64* %PC.i98
  %2760 = add i64 %2759, 5
  store i64 %2760, i64* %PC.i98
  %2761 = inttoptr i64 %2758 to double*
  %2762 = load double, double* %2761
  %2763 = bitcast i8* %2756 to double*
  store double %2762, double* %2763, align 1
  %2764 = getelementptr inbounds i8, i8* %2756, i64 8
  %2765 = bitcast i8* %2764 to double*
  store double 0.000000e+00, double* %2765, align 1
  store %struct.Memory* %loadMem_428924, %struct.Memory** %MEMORY
  %loadMem_428929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 33
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %2768 to i64*
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2770 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2769, i64 0, i64 0
  %XMM0.i92 = bitcast %union.VectorReg* %2770 to %union.vec128_t*
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2772 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2771, i64 0, i64 1
  %XMM1.i93 = bitcast %union.VectorReg* %2772 to %union.vec128_t*
  %2773 = bitcast %union.vec128_t* %XMM0.i92 to i8*
  %2774 = bitcast %union.vec128_t* %XMM1.i93 to i8*
  %2775 = load i64, i64* %PC.i91
  %2776 = add i64 %2775, 4
  store i64 %2776, i64* %PC.i91
  %2777 = bitcast i8* %2773 to double*
  %2778 = load double, double* %2777, align 1
  %2779 = bitcast i8* %2774 to double*
  %2780 = load double, double* %2779, align 1
  %2781 = fcmp uno double %2778, %2780
  br i1 %2781, label %2782, label %2794

; <label>:2782:                                   ; preds = %block_42888c
  %2783 = fadd double %2778, %2780
  %2784 = bitcast double %2783 to i64
  %2785 = and i64 %2784, 9221120237041090560
  %2786 = icmp eq i64 %2785, 9218868437227405312
  %2787 = and i64 %2784, 2251799813685247
  %2788 = icmp ne i64 %2787, 0
  %2789 = and i1 %2786, %2788
  br i1 %2789, label %2790, label %2800

; <label>:2790:                                   ; preds = %2782
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2792 = load i64, i64* %2791, align 8
  %2793 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2792, %struct.Memory* %loadMem_428929)
  br label %routine_ucomisd__xmm1___xmm0.exit94

; <label>:2794:                                   ; preds = %block_42888c
  %2795 = fcmp ogt double %2778, %2780
  br i1 %2795, label %2800, label %2796

; <label>:2796:                                   ; preds = %2794
  %2797 = fcmp olt double %2778, %2780
  br i1 %2797, label %2800, label %2798

; <label>:2798:                                   ; preds = %2796
  %2799 = fcmp oeq double %2778, %2780
  br i1 %2799, label %2800, label %2807

; <label>:2800:                                   ; preds = %2798, %2796, %2794, %2782
  %2801 = phi i8 [ 0, %2794 ], [ 0, %2796 ], [ 1, %2798 ], [ 1, %2782 ]
  %2802 = phi i8 [ 0, %2794 ], [ 0, %2796 ], [ 0, %2798 ], [ 1, %2782 ]
  %2803 = phi i8 [ 0, %2794 ], [ 1, %2796 ], [ 0, %2798 ], [ 1, %2782 ]
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2801, i8* %2804, align 1
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2802, i8* %2805, align 1
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2803, i8* %2806, align 1
  br label %2807

; <label>:2807:                                   ; preds = %2800, %2798
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2808, align 1
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2809, align 1
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2810, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit94

routine_ucomisd__xmm1___xmm0.exit94:              ; preds = %2790, %2807
  %2811 = phi %struct.Memory* [ %2793, %2790 ], [ %loadMem_428929, %2807 ]
  store %struct.Memory* %2811, %struct.Memory** %MEMORY
  %loadMem_42892d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 33
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2814 to i64*
  %2815 = load i64, i64* %PC.i90
  %2816 = add i64 %2815, 21
  %2817 = load i64, i64* %PC.i90
  %2818 = add i64 %2817, 6
  %2819 = load i64, i64* %PC.i90
  %2820 = add i64 %2819, 6
  store i64 %2820, i64* %PC.i90
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2822 = load i8, i8* %2821, align 1
  store i8 %2822, i8* %BRANCH_TAKEN, align 1
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2824 = icmp ne i8 %2822, 0
  %2825 = select i1 %2824, i64 %2816, i64 %2818
  store i64 %2825, i64* %2823, align 8
  store %struct.Memory* %loadMem_42892d, %struct.Memory** %MEMORY
  %loadBr_42892d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42892d = icmp eq i8 %loadBr_42892d, 1
  br i1 %cmpBr_42892d, label %block_.L_428942, label %block_428933

block_428933:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit94
  %loadMem_428933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 33
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %2828 to i64*
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 15
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %2831 to i64*
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2833 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2832, i64 0, i64 0
  %YMM0.i89 = bitcast %union.VectorReg* %2833 to %"class.std::bitset"*
  %2834 = bitcast %"class.std::bitset"* %YMM0.i89 to i8*
  %2835 = load i64, i64* %RBP.i88
  %2836 = sub i64 %2835, 20
  %2837 = load i64, i64* %PC.i87
  %2838 = add i64 %2837, 5
  store i64 %2838, i64* %PC.i87
  %2839 = inttoptr i64 %2836 to float*
  %2840 = load float, float* %2839
  %2841 = bitcast i8* %2834 to float*
  store float %2840, float* %2841, align 1
  %2842 = getelementptr inbounds i8, i8* %2834, i64 4
  %2843 = bitcast i8* %2842 to float*
  store float 0.000000e+00, float* %2843, align 1
  %2844 = getelementptr inbounds i8, i8* %2834, i64 8
  %2845 = bitcast i8* %2844 to float*
  store float 0.000000e+00, float* %2845, align 1
  %2846 = getelementptr inbounds i8, i8* %2834, i64 12
  %2847 = bitcast i8* %2846 to float*
  store float 0.000000e+00, float* %2847, align 1
  store %struct.Memory* %loadMem_428933, %struct.Memory** %MEMORY
  %loadMem_428938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 33
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2850 to i64*
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 15
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %2853 to i64*
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2855 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2854, i64 0, i64 0
  %XMM0.i86 = bitcast %union.VectorReg* %2855 to %union.vec128_t*
  %2856 = load i64, i64* %RBP.i85
  %2857 = sub i64 %2856, 4
  %2858 = bitcast %union.vec128_t* %XMM0.i86 to i8*
  %2859 = load i64, i64* %PC.i84
  %2860 = add i64 %2859, 5
  store i64 %2860, i64* %PC.i84
  %2861 = bitcast i8* %2858 to <2 x float>*
  %2862 = load <2 x float>, <2 x float>* %2861, align 1
  %2863 = extractelement <2 x float> %2862, i32 0
  %2864 = inttoptr i64 %2857 to float*
  store float %2863, float* %2864
  store %struct.Memory* %loadMem_428938, %struct.Memory** %MEMORY
  %loadMem_42893d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 33
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %2867 to i64*
  %2868 = load i64, i64* %PC.i83
  %2869 = add i64 %2868, 169
  %2870 = load i64, i64* %PC.i83
  %2871 = add i64 %2870, 5
  store i64 %2871, i64* %PC.i83
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2869, i64* %2872, align 8
  store %struct.Memory* %loadMem_42893d, %struct.Memory** %MEMORY
  br label %block_.L_4289e6

block_.L_428942:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit94
  %loadMem_428942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 33
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %2875 to i64*
  %2876 = load i64, i64* %PC.i82
  %2877 = add i64 %2876, 129
  %2878 = load i64, i64* %PC.i82
  %2879 = add i64 %2878, 5
  store i64 %2879, i64* %PC.i82
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2877, i64* %2880, align 8
  store %struct.Memory* %loadMem_428942, %struct.Memory** %MEMORY
  br label %block_.L_4289c3

block_.L_428947:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit189
  %loadMem_428947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 33
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %2883 to i64*
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2885 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2884, i64 0, i64 0
  %YMM0.i81 = bitcast %union.VectorReg* %2885 to %"class.std::bitset"*
  %2886 = bitcast %"class.std::bitset"* %YMM0.i81 to i8*
  %2887 = load i64, i64* %PC.i80
  %2888 = add i64 %2887, ptrtoint (%G_0x2be91__rip__type* @G_0x2be91__rip_ to i64)
  %2889 = load i64, i64* %PC.i80
  %2890 = add i64 %2889, 8
  store i64 %2890, i64* %PC.i80
  %2891 = inttoptr i64 %2888 to double*
  %2892 = load double, double* %2891
  %2893 = bitcast i8* %2886 to double*
  store double %2892, double* %2893, align 1
  %2894 = getelementptr inbounds i8, i8* %2886, i64 8
  %2895 = bitcast i8* %2894 to double*
  store double 0.000000e+00, double* %2895, align 1
  store %struct.Memory* %loadMem_428947, %struct.Memory** %MEMORY
  %loadMem_42894f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 33
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %2898 to i64*
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 15
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2903 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2902, i64 0, i64 1
  %YMM1.i79 = bitcast %union.VectorReg* %2903 to %"class.std::bitset"*
  %2904 = bitcast %"class.std::bitset"* %YMM1.i79 to i8*
  %2905 = load i64, i64* %RBP.i78
  %2906 = sub i64 %2905, 16
  %2907 = load i64, i64* %PC.i77
  %2908 = add i64 %2907, 5
  store i64 %2908, i64* %PC.i77
  %2909 = inttoptr i64 %2906 to float*
  %2910 = load float, float* %2909
  %2911 = fpext float %2910 to double
  %2912 = bitcast i8* %2904 to double*
  store double %2911, double* %2912, align 1
  store %struct.Memory* %loadMem_42894f, %struct.Memory** %MEMORY
  %loadMem_428954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 33
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 15
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2920 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2919, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2920 to %"class.std::bitset"*
  %2921 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2922 = load i64, i64* %RBP.i76
  %2923 = sub i64 %2922, 8
  %2924 = load i64, i64* %PC.i75
  %2925 = add i64 %2924, 5
  store i64 %2925, i64* %PC.i75
  %2926 = inttoptr i64 %2923 to float*
  %2927 = load float, float* %2926
  %2928 = fpext float %2927 to double
  %2929 = bitcast i8* %2921 to double*
  store double %2928, double* %2929, align 1
  store %struct.Memory* %loadMem_428954, %struct.Memory** %MEMORY
  %loadMem_428959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 33
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2932 to i64*
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2934 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2933, i64 0, i64 0
  %YMM0.i74 = bitcast %union.VectorReg* %2934 to %"class.std::bitset"*
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2936 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2935, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2936 to %union.vec128_t*
  %2937 = bitcast %"class.std::bitset"* %YMM0.i74 to i8*
  %2938 = bitcast %"class.std::bitset"* %YMM0.i74 to i8*
  %2939 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2940 = load i64, i64* %PC.i73
  %2941 = add i64 %2940, 4
  store i64 %2941, i64* %PC.i73
  %2942 = bitcast i8* %2938 to double*
  %2943 = load double, double* %2942, align 1
  %2944 = getelementptr inbounds i8, i8* %2938, i64 8
  %2945 = bitcast i8* %2944 to i64*
  %2946 = load i64, i64* %2945, align 1
  %2947 = bitcast i8* %2939 to double*
  %2948 = load double, double* %2947, align 1
  %2949 = fdiv double %2943, %2948
  %2950 = bitcast i8* %2937 to double*
  store double %2949, double* %2950, align 1
  %2951 = getelementptr inbounds i8, i8* %2937, i64 8
  %2952 = bitcast i8* %2951 to i64*
  store i64 %2946, i64* %2952, align 1
  store %struct.Memory* %loadMem_428959, %struct.Memory** %MEMORY
  %loadMem_42895d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 33
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2955 to i64*
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 15
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %2958 to i64*
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2960 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2959, i64 0, i64 0
  %XMM0.i72 = bitcast %union.VectorReg* %2960 to %union.vec128_t*
  %2961 = load i64, i64* %RBP.i71
  %2962 = sub i64 %2961, 104
  %2963 = bitcast %union.vec128_t* %XMM0.i72 to i8*
  %2964 = load i64, i64* %PC.i70
  %2965 = add i64 %2964, 5
  store i64 %2965, i64* %PC.i70
  %2966 = bitcast i8* %2963 to double*
  %2967 = load double, double* %2966, align 1
  %2968 = inttoptr i64 %2962 to double*
  store double %2967, double* %2968
  store %struct.Memory* %loadMem_42895d, %struct.Memory** %MEMORY
  %loadMem_428962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2970 = getelementptr inbounds %struct.GPR, %struct.GPR* %2969, i32 0, i32 33
  %2971 = getelementptr inbounds %struct.Reg, %struct.Reg* %2970, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2971 to i64*
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2973 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2972, i64 0, i64 0
  %YMM0.i68 = bitcast %union.VectorReg* %2973 to %"class.std::bitset"*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2975 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2974, i64 0, i64 1
  %XMM1.i69 = bitcast %union.VectorReg* %2975 to %union.vec128_t*
  %2976 = bitcast %"class.std::bitset"* %YMM0.i68 to i8*
  %2977 = bitcast %union.vec128_t* %XMM1.i69 to i8*
  %2978 = load i64, i64* %PC.i67
  %2979 = add i64 %2978, 3
  store i64 %2979, i64* %PC.i67
  %2980 = bitcast i8* %2977 to <2 x i32>*
  %2981 = load <2 x i32>, <2 x i32>* %2980, align 1
  %2982 = getelementptr inbounds i8, i8* %2977, i64 8
  %2983 = bitcast i8* %2982 to <2 x i32>*
  %2984 = load <2 x i32>, <2 x i32>* %2983, align 1
  %2985 = extractelement <2 x i32> %2981, i32 0
  %2986 = bitcast i8* %2976 to i32*
  store i32 %2985, i32* %2986, align 1
  %2987 = extractelement <2 x i32> %2981, i32 1
  %2988 = getelementptr inbounds i8, i8* %2976, i64 4
  %2989 = bitcast i8* %2988 to i32*
  store i32 %2987, i32* %2989, align 1
  %2990 = extractelement <2 x i32> %2984, i32 0
  %2991 = getelementptr inbounds i8, i8* %2976, i64 8
  %2992 = bitcast i8* %2991 to i32*
  store i32 %2990, i32* %2992, align 1
  %2993 = extractelement <2 x i32> %2984, i32 1
  %2994 = getelementptr inbounds i8, i8* %2976, i64 12
  %2995 = bitcast i8* %2994 to i32*
  store i32 %2993, i32* %2995, align 1
  store %struct.Memory* %loadMem_428962, %struct.Memory** %MEMORY
  %loadMem_428965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 33
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2998 to i64*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 15
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3003 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3002, i64 0, i64 1
  %YMM1.i66 = bitcast %union.VectorReg* %3003 to %"class.std::bitset"*
  %3004 = bitcast %"class.std::bitset"* %YMM1.i66 to i8*
  %3005 = load i64, i64* %RBP.i65
  %3006 = sub i64 %3005, 104
  %3007 = load i64, i64* %PC.i64
  %3008 = add i64 %3007, 5
  store i64 %3008, i64* %PC.i64
  %3009 = inttoptr i64 %3006 to double*
  %3010 = load double, double* %3009
  %3011 = bitcast i8* %3004 to double*
  store double %3010, double* %3011, align 1
  %3012 = getelementptr inbounds i8, i8* %3004, i64 8
  %3013 = bitcast i8* %3012 to double*
  store double 0.000000e+00, double* %3013, align 1
  store %struct.Memory* %loadMem_428965, %struct.Memory** %MEMORY
  %loadMem1_42896a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 33
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %3016 to i64*
  %3017 = load i64, i64* %PC.i63
  %3018 = add i64 %3017, -160906
  %3019 = load i64, i64* %PC.i63
  %3020 = add i64 %3019, 5
  %3021 = load i64, i64* %PC.i63
  %3022 = add i64 %3021, 5
  store i64 %3022, i64* %PC.i63
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3024 = load i64, i64* %3023, align 8
  %3025 = add i64 %3024, -8
  %3026 = inttoptr i64 %3025 to i64*
  store i64 %3020, i64* %3026
  store i64 %3025, i64* %3023, align 8
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3018, i64* %3027, align 8
  store %struct.Memory* %loadMem1_42896a, %struct.Memory** %MEMORY
  %loadMem2_42896a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42896a = load i64, i64* %3
  %3028 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %loadMem2_42896a)
  store %struct.Memory* %3028, %struct.Memory** %MEMORY
  %loadMem_42896f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 33
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3031 to i64*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3033 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3032, i64 0, i64 0
  %YMM0.i59 = bitcast %union.VectorReg* %3033 to %"class.std::bitset"*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3035 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3034, i64 0, i64 0
  %XMM0.i60 = bitcast %union.VectorReg* %3035 to %union.vec128_t*
  %3036 = bitcast %"class.std::bitset"* %YMM0.i59 to i8*
  %3037 = bitcast %union.vec128_t* %XMM0.i60 to i8*
  %3038 = load i64, i64* %PC.i58
  %3039 = add i64 %3038, 4
  store i64 %3039, i64* %PC.i58
  %3040 = bitcast i8* %3036 to <2 x i32>*
  %3041 = load <2 x i32>, <2 x i32>* %3040, align 1
  %3042 = getelementptr inbounds i8, i8* %3036, i64 8
  %3043 = bitcast i8* %3042 to <2 x i32>*
  %3044 = load <2 x i32>, <2 x i32>* %3043, align 1
  %3045 = bitcast i8* %3037 to double*
  %3046 = load double, double* %3045, align 1
  %3047 = fptrunc double %3046 to float
  %3048 = bitcast i8* %3036 to float*
  store float %3047, float* %3048, align 1
  %3049 = extractelement <2 x i32> %3041, i32 1
  %3050 = getelementptr inbounds i8, i8* %3036, i64 4
  %3051 = bitcast i8* %3050 to i32*
  store i32 %3049, i32* %3051, align 1
  %3052 = extractelement <2 x i32> %3044, i32 0
  %3053 = bitcast i8* %3042 to i32*
  store i32 %3052, i32* %3053, align 1
  %3054 = extractelement <2 x i32> %3044, i32 1
  %3055 = getelementptr inbounds i8, i8* %3036, i64 12
  %3056 = bitcast i8* %3055 to i32*
  store i32 %3054, i32* %3056, align 1
  store %struct.Memory* %loadMem_42896f, %struct.Memory** %MEMORY
  %loadMem_428973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 33
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %3059 to i64*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 15
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %3062 to i64*
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3064 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3063, i64 0, i64 0
  %XMM0.i57 = bitcast %union.VectorReg* %3064 to %union.vec128_t*
  %3065 = load i64, i64* %RBP.i56
  %3066 = sub i64 %3065, 20
  %3067 = bitcast %union.vec128_t* %XMM0.i57 to i8*
  %3068 = load i64, i64* %PC.i55
  %3069 = add i64 %3068, 5
  store i64 %3069, i64* %PC.i55
  %3070 = bitcast i8* %3067 to <2 x float>*
  %3071 = load <2 x float>, <2 x float>* %3070, align 1
  %3072 = extractelement <2 x float> %3071, i32 0
  %3073 = inttoptr i64 %3066 to float*
  store float %3072, float* %3073
  store %struct.Memory* %loadMem_428973, %struct.Memory** %MEMORY
  %loadMem1_428978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 33
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %3076 to i64*
  %3077 = load i64, i64* %PC.i54
  %3078 = add i64 %3077, 117384
  %3079 = load i64, i64* %PC.i54
  %3080 = add i64 %3079, 5
  %3081 = load i64, i64* %PC.i54
  %3082 = add i64 %3081, 5
  store i64 %3082, i64* %PC.i54
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3084 = load i64, i64* %3083, align 8
  %3085 = add i64 %3084, -8
  %3086 = inttoptr i64 %3085 to i64*
  store i64 %3080, i64* %3086
  store i64 %3085, i64* %3083, align 8
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3078, i64* %3087, align 8
  store %struct.Memory* %loadMem1_428978, %struct.Memory** %MEMORY
  %loadMem2_428978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_428978 = load i64, i64* %3
  %call2_428978 = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64 %loadPC_428978, %struct.Memory* %loadMem2_428978)
  store %struct.Memory* %call2_428978, %struct.Memory** %MEMORY
  %loadMem_42897d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 33
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %3090 to i64*
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 15
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %3093 to i64*
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3095 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3094, i64 0, i64 1
  %YMM1.i53 = bitcast %union.VectorReg* %3095 to %"class.std::bitset"*
  %3096 = bitcast %"class.std::bitset"* %YMM1.i53 to i8*
  %3097 = load i64, i64* %RBP.i52
  %3098 = sub i64 %3097, 20
  %3099 = load i64, i64* %PC.i51
  %3100 = add i64 %3099, 5
  store i64 %3100, i64* %PC.i51
  %3101 = inttoptr i64 %3098 to float*
  %3102 = load float, float* %3101
  %3103 = bitcast i8* %3096 to float*
  store float %3102, float* %3103, align 1
  %3104 = getelementptr inbounds i8, i8* %3096, i64 4
  %3105 = bitcast i8* %3104 to float*
  store float 0.000000e+00, float* %3105, align 1
  %3106 = getelementptr inbounds i8, i8* %3096, i64 8
  %3107 = bitcast i8* %3106 to float*
  store float 0.000000e+00, float* %3107, align 1
  %3108 = getelementptr inbounds i8, i8* %3096, i64 12
  %3109 = bitcast i8* %3108 to float*
  store float 0.000000e+00, float* %3109, align 1
  store %struct.Memory* %loadMem_42897d, %struct.Memory** %MEMORY
  %loadMem_428982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 33
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 1
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %3115 to i64*
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3117 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3116, i64 0, i64 1
  %XMM1.i50 = bitcast %union.VectorReg* %3117 to %union.vec128_t*
  %3118 = bitcast %union.vec128_t* %XMM1.i50 to i8*
  %3119 = load i64, i64* %PC.i48
  %3120 = add i64 %3119, 4
  store i64 %3120, i64* %PC.i48
  %3121 = bitcast i8* %3118 to i64*
  %3122 = load i64, i64* %3121, align 1
  %3123 = trunc i64 %3122 to i32
  %3124 = bitcast i64* %RAX.i49 to [2 x i32]*
  %3125 = bitcast i64* %RAX.i49 to i32*
  store i32 %3123, i32* %3125, align 1
  %3126 = getelementptr inbounds [2 x i32], [2 x i32]* %3124, i64 0, i64 1
  store i32 0, i32* %3126, align 1
  store %struct.Memory* %loadMem_428982, %struct.Memory** %MEMORY
  %loadMem_428986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3128 = getelementptr inbounds %struct.GPR, %struct.GPR* %3127, i32 0, i32 33
  %3129 = getelementptr inbounds %struct.Reg, %struct.Reg* %3128, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3129 to i64*
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 1
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3132 to i64*
  %3133 = load i64, i64* %RAX.i
  %3134 = load i64, i64* %PC.i47
  %3135 = add i64 %3134, 5
  store i64 %3135, i64* %PC.i47
  %3136 = xor i64 -2147483648, %3133
  %3137 = trunc i64 %3136 to i32
  %3138 = and i64 %3136, 4294967295
  store i64 %3138, i64* %RAX.i, align 8
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3139, align 1
  %3140 = and i32 %3137, 255
  %3141 = call i32 @llvm.ctpop.i32(i32 %3140)
  %3142 = trunc i32 %3141 to i8
  %3143 = and i8 %3142, 1
  %3144 = xor i8 %3143, 1
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3144, i8* %3145, align 1
  %3146 = icmp eq i32 %3137, 0
  %3147 = zext i1 %3146 to i8
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3147, i8* %3148, align 1
  %3149 = lshr i32 %3137, 31
  %3150 = trunc i32 %3149 to i8
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3150, i8* %3151, align 1
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3152, align 1
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3153, align 1
  store %struct.Memory* %loadMem_428986, %struct.Memory** %MEMORY
  %loadMem_42898b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 33
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3156 to i64*
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 1
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3159 to i32*
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3161 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3160, i64 0, i64 1
  %YMM1.i46 = bitcast %union.VectorReg* %3161 to %"class.std::bitset"*
  %3162 = bitcast %"class.std::bitset"* %YMM1.i46 to i8*
  %3163 = load i32, i32* %EAX.i
  %3164 = zext i32 %3163 to i64
  %3165 = load i64, i64* %PC.i45
  %3166 = add i64 %3165, 4
  store i64 %3166, i64* %PC.i45
  %3167 = bitcast i8* %3162 to i32*
  store i32 %3163, i32* %3167, align 1
  %3168 = getelementptr inbounds i8, i8* %3162, i64 4
  %3169 = bitcast i8* %3168 to i32*
  store i32 0, i32* %3169, align 1
  %3170 = getelementptr inbounds i8, i8* %3162, i64 8
  %3171 = bitcast i8* %3170 to i32*
  store i32 0, i32* %3171, align 1
  %3172 = getelementptr inbounds i8, i8* %3162, i64 12
  %3173 = bitcast i8* %3172 to i32*
  store i32 0, i32* %3173, align 1
  store %struct.Memory* %loadMem_42898b, %struct.Memory** %MEMORY
  %loadMem_42898f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 33
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3178 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3177, i64 0, i64 1
  %YMM1.i43 = bitcast %union.VectorReg* %3178 to %"class.std::bitset"*
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3180 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3179, i64 0, i64 1
  %XMM1.i44 = bitcast %union.VectorReg* %3180 to %union.vec128_t*
  %3181 = bitcast %"class.std::bitset"* %YMM1.i43 to i8*
  %3182 = bitcast %union.vec128_t* %XMM1.i44 to i8*
  %3183 = load i64, i64* %PC.i42
  %3184 = add i64 %3183, 4
  store i64 %3184, i64* %PC.i42
  %3185 = bitcast i8* %3182 to <2 x float>*
  %3186 = load <2 x float>, <2 x float>* %3185, align 1
  %3187 = extractelement <2 x float> %3186, i32 0
  %3188 = fpext float %3187 to double
  %3189 = bitcast i8* %3181 to double*
  store double %3188, double* %3189, align 1
  store %struct.Memory* %loadMem_42898f, %struct.Memory** %MEMORY
  %loadMem_428993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 33
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3192 to i64*
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 15
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %3195 to i64*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3197 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3196, i64 0, i64 0
  %XMM0.i41 = bitcast %union.VectorReg* %3197 to %union.vec128_t*
  %3198 = load i64, i64* %RBP.i40
  %3199 = sub i64 %3198, 112
  %3200 = bitcast %union.vec128_t* %XMM0.i41 to i8*
  %3201 = load i64, i64* %PC.i39
  %3202 = add i64 %3201, 5
  store i64 %3202, i64* %PC.i39
  %3203 = bitcast i8* %3200 to double*
  %3204 = load double, double* %3203, align 1
  %3205 = inttoptr i64 %3199 to double*
  store double %3204, double* %3205
  store %struct.Memory* %loadMem_428993, %struct.Memory** %MEMORY
  %loadMem_428998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3207 = getelementptr inbounds %struct.GPR, %struct.GPR* %3206, i32 0, i32 33
  %3208 = getelementptr inbounds %struct.Reg, %struct.Reg* %3207, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %3208 to i64*
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3210 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3209, i64 0, i64 0
  %YMM0.i37 = bitcast %union.VectorReg* %3210 to %"class.std::bitset"*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3212 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3211, i64 0, i64 1
  %XMM1.i38 = bitcast %union.VectorReg* %3212 to %union.vec128_t*
  %3213 = bitcast %"class.std::bitset"* %YMM0.i37 to i8*
  %3214 = bitcast %union.vec128_t* %XMM1.i38 to i8*
  %3215 = load i64, i64* %PC.i36
  %3216 = add i64 %3215, 3
  store i64 %3216, i64* %PC.i36
  %3217 = bitcast i8* %3214 to <2 x i32>*
  %3218 = load <2 x i32>, <2 x i32>* %3217, align 1
  %3219 = getelementptr inbounds i8, i8* %3214, i64 8
  %3220 = bitcast i8* %3219 to <2 x i32>*
  %3221 = load <2 x i32>, <2 x i32>* %3220, align 1
  %3222 = extractelement <2 x i32> %3218, i32 0
  %3223 = bitcast i8* %3213 to i32*
  store i32 %3222, i32* %3223, align 1
  %3224 = extractelement <2 x i32> %3218, i32 1
  %3225 = getelementptr inbounds i8, i8* %3213, i64 4
  %3226 = bitcast i8* %3225 to i32*
  store i32 %3224, i32* %3226, align 1
  %3227 = extractelement <2 x i32> %3221, i32 0
  %3228 = getelementptr inbounds i8, i8* %3213, i64 8
  %3229 = bitcast i8* %3228 to i32*
  store i32 %3227, i32* %3229, align 1
  %3230 = extractelement <2 x i32> %3221, i32 1
  %3231 = getelementptr inbounds i8, i8* %3213, i64 12
  %3232 = bitcast i8* %3231 to i32*
  store i32 %3230, i32* %3232, align 1
  store %struct.Memory* %loadMem_428998, %struct.Memory** %MEMORY
  %loadMem1_42899b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 33
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %3235 to i64*
  %3236 = load i64, i64* %PC.i35
  %3237 = add i64 %3236, -161147
  %3238 = load i64, i64* %PC.i35
  %3239 = add i64 %3238, 5
  %3240 = load i64, i64* %PC.i35
  %3241 = add i64 %3240, 5
  store i64 %3241, i64* %PC.i35
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3243 = load i64, i64* %3242, align 8
  %3244 = add i64 %3243, -8
  %3245 = inttoptr i64 %3244 to i64*
  store i64 %3239, i64* %3245
  store i64 %3244, i64* %3242, align 8
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3237, i64* %3246, align 8
  store %struct.Memory* %loadMem1_42899b, %struct.Memory** %MEMORY
  %loadMem2_42899b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42899b = load i64, i64* %3
  %3247 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_42899b)
  store %struct.Memory* %3247, %struct.Memory** %MEMORY
  %loadMem_4289a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 33
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %3250 to i64*
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 15
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %3253 to i64*
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3255 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3254, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3255 to %"class.std::bitset"*
  %3256 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3257 = load i64, i64* %RBP.i32
  %3258 = sub i64 %3257, 112
  %3259 = load i64, i64* %PC.i31
  %3260 = add i64 %3259, 5
  store i64 %3260, i64* %PC.i31
  %3261 = inttoptr i64 %3258 to double*
  %3262 = load double, double* %3261
  %3263 = bitcast i8* %3256 to double*
  store double %3262, double* %3263, align 1
  %3264 = getelementptr inbounds i8, i8* %3256, i64 8
  %3265 = bitcast i8* %3264 to double*
  store double 0.000000e+00, double* %3265, align 1
  store %struct.Memory* %loadMem_4289a0, %struct.Memory** %MEMORY
  %loadMem_4289a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 33
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %3268 to i64*
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3270 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3269, i64 0, i64 0
  %XMM0.i27 = bitcast %union.VectorReg* %3270 to %union.vec128_t*
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3272 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3271, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3272 to %union.vec128_t*
  %3273 = bitcast %union.vec128_t* %XMM0.i27 to i8*
  %3274 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3275 = load i64, i64* %PC.i26
  %3276 = add i64 %3275, 4
  store i64 %3276, i64* %PC.i26
  %3277 = bitcast i8* %3273 to double*
  %3278 = load double, double* %3277, align 1
  %3279 = bitcast i8* %3274 to double*
  %3280 = load double, double* %3279, align 1
  %3281 = fcmp uno double %3278, %3280
  br i1 %3281, label %3282, label %3294

; <label>:3282:                                   ; preds = %block_.L_428947
  %3283 = fadd double %3278, %3280
  %3284 = bitcast double %3283 to i64
  %3285 = and i64 %3284, 9221120237041090560
  %3286 = icmp eq i64 %3285, 9218868437227405312
  %3287 = and i64 %3284, 2251799813685247
  %3288 = icmp ne i64 %3287, 0
  %3289 = and i1 %3286, %3288
  br i1 %3289, label %3290, label %3300

; <label>:3290:                                   ; preds = %3282
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3292 = load i64, i64* %3291, align 8
  %3293 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3292, %struct.Memory* %loadMem_4289a5)
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:3294:                                   ; preds = %block_.L_428947
  %3295 = fcmp ogt double %3278, %3280
  br i1 %3295, label %3300, label %3296

; <label>:3296:                                   ; preds = %3294
  %3297 = fcmp olt double %3278, %3280
  br i1 %3297, label %3300, label %3298

; <label>:3298:                                   ; preds = %3296
  %3299 = fcmp oeq double %3278, %3280
  br i1 %3299, label %3300, label %3307

; <label>:3300:                                   ; preds = %3298, %3296, %3294, %3282
  %3301 = phi i8 [ 0, %3294 ], [ 0, %3296 ], [ 1, %3298 ], [ 1, %3282 ]
  %3302 = phi i8 [ 0, %3294 ], [ 0, %3296 ], [ 0, %3298 ], [ 1, %3282 ]
  %3303 = phi i8 [ 0, %3294 ], [ 1, %3296 ], [ 0, %3298 ], [ 1, %3282 ]
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3301, i8* %3304, align 1
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3302, i8* %3305, align 1
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3303, i8* %3306, align 1
  br label %3307

; <label>:3307:                                   ; preds = %3300, %3298
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3308, align 1
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3309, align 1
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3310, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %3290, %3307
  %3311 = phi %struct.Memory* [ %3293, %3290 ], [ %loadMem_4289a5, %3307 ]
  store %struct.Memory* %3311, %struct.Memory** %MEMORY
  %loadMem_4289a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 33
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3314 to i64*
  %3315 = load i64, i64* %PC.i25
  %3316 = add i64 %3315, 21
  %3317 = load i64, i64* %PC.i25
  %3318 = add i64 %3317, 6
  %3319 = load i64, i64* %PC.i25
  %3320 = add i64 %3319, 6
  store i64 %3320, i64* %PC.i25
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3322 = load i8, i8* %3321, align 1
  store i8 %3322, i8* %BRANCH_TAKEN, align 1
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3324 = icmp ne i8 %3322, 0
  %3325 = select i1 %3324, i64 %3316, i64 %3318
  store i64 %3325, i64* %3323, align 8
  store %struct.Memory* %loadMem_4289a9, %struct.Memory** %MEMORY
  %loadBr_4289a9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4289a9 = icmp eq i8 %loadBr_4289a9, 1
  br i1 %cmpBr_4289a9, label %block_.L_4289be, label %block_4289af

block_4289af:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_4289af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 33
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3328 to i64*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 15
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %3331 to i64*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3333 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3332, i64 0, i64 0
  %YMM0.i24 = bitcast %union.VectorReg* %3333 to %"class.std::bitset"*
  %3334 = bitcast %"class.std::bitset"* %YMM0.i24 to i8*
  %3335 = load i64, i64* %RBP.i23
  %3336 = sub i64 %3335, 20
  %3337 = load i64, i64* %PC.i22
  %3338 = add i64 %3337, 5
  store i64 %3338, i64* %PC.i22
  %3339 = inttoptr i64 %3336 to float*
  %3340 = load float, float* %3339
  %3341 = bitcast i8* %3334 to float*
  store float %3340, float* %3341, align 1
  %3342 = getelementptr inbounds i8, i8* %3334, i64 4
  %3343 = bitcast i8* %3342 to float*
  store float 0.000000e+00, float* %3343, align 1
  %3344 = getelementptr inbounds i8, i8* %3334, i64 8
  %3345 = bitcast i8* %3344 to float*
  store float 0.000000e+00, float* %3345, align 1
  %3346 = getelementptr inbounds i8, i8* %3334, i64 12
  %3347 = bitcast i8* %3346 to float*
  store float 0.000000e+00, float* %3347, align 1
  store %struct.Memory* %loadMem_4289af, %struct.Memory** %MEMORY
  %loadMem_4289b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 33
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3350 to i64*
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 15
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3355 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3354, i64 0, i64 0
  %XMM0.i21 = bitcast %union.VectorReg* %3355 to %union.vec128_t*
  %3356 = load i64, i64* %RBP.i20
  %3357 = sub i64 %3356, 4
  %3358 = bitcast %union.vec128_t* %XMM0.i21 to i8*
  %3359 = load i64, i64* %PC.i19
  %3360 = add i64 %3359, 5
  store i64 %3360, i64* %PC.i19
  %3361 = bitcast i8* %3358 to <2 x float>*
  %3362 = load <2 x float>, <2 x float>* %3361, align 1
  %3363 = extractelement <2 x float> %3362, i32 0
  %3364 = inttoptr i64 %3357 to float*
  store float %3363, float* %3364
  store %struct.Memory* %loadMem_4289b4, %struct.Memory** %MEMORY
  %loadMem_4289b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 33
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3367 to i64*
  %3368 = load i64, i64* %PC.i18
  %3369 = add i64 %3368, 45
  %3370 = load i64, i64* %PC.i18
  %3371 = add i64 %3370, 5
  store i64 %3371, i64* %PC.i18
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3369, i64* %3372, align 8
  store %struct.Memory* %loadMem_4289b9, %struct.Memory** %MEMORY
  br label %block_.L_4289e6

block_.L_4289be:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_4289be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 33
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3375 to i64*
  %3376 = load i64, i64* %PC.i17
  %3377 = add i64 %3376, 5
  %3378 = load i64, i64* %PC.i17
  %3379 = add i64 %3378, 5
  store i64 %3379, i64* %PC.i17
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3377, i64* %3380, align 8
  store %struct.Memory* %loadMem_4289be, %struct.Memory** %MEMORY
  br label %block_.L_4289c3

block_.L_4289c3:                                  ; preds = %block_.L_4289be, %block_.L_428942
  %loadMem_4289c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 33
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3383 to i64*
  %3384 = load i64, i64* %PC.i16
  %3385 = add i64 %3384, -418
  %3386 = load i64, i64* %PC.i16
  %3387 = add i64 %3386, 5
  store i64 %3387, i64* %PC.i16
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3385, i64* %3388, align 8
  store %struct.Memory* %loadMem_4289c3, %struct.Memory** %MEMORY
  br label %block_.L_428821

block_.L_4289c8:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_4289c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 33
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3391 to i64*
  %3392 = load i64, i64* %PC.i15
  %3393 = add i64 %3392, 5
  %3394 = load i64, i64* %PC.i15
  %3395 = add i64 %3394, 5
  store i64 %3395, i64* %PC.i15
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3393, i64* %3396, align 8
  store %struct.Memory* %loadMem_4289c8, %struct.Memory** %MEMORY
  br label %block_.L_4289cd

block_.L_4289cd:                                  ; preds = %block_.L_4289c8
  %loadMem_4289cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 33
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3399 to i64*
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 11
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3402 to i64*
  %3403 = load i64, i64* %PC.i14
  %3404 = add i64 %3403, 10
  store i64 %3404, i64* %PC.i14
  store i64 ptrtoint (%G__0x458473_type* @G__0x458473 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4289cd, %struct.Memory** %MEMORY
  %loadMem_4289d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 33
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 1
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %3411 = bitcast %union.anon* %3410 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3411, i32 0, i32 0
  %3412 = load i64, i64* %PC.i13
  %3413 = add i64 %3412, 2
  store i64 %3413, i64* %PC.i13
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_4289d7, %struct.Memory** %MEMORY
  %loadMem1_4289d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 33
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3416 to i64*
  %3417 = load i64, i64* %PC.i12
  %3418 = add i64 %3417, 90167
  %3419 = load i64, i64* %PC.i12
  %3420 = add i64 %3419, 5
  %3421 = load i64, i64* %PC.i12
  %3422 = add i64 %3421, 5
  store i64 %3422, i64* %PC.i12
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3424 = load i64, i64* %3423, align 8
  %3425 = add i64 %3424, -8
  %3426 = inttoptr i64 %3425 to i64*
  store i64 %3420, i64* %3426
  store i64 %3425, i64* %3423, align 8
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3418, i64* %3427, align 8
  store %struct.Memory* %loadMem1_4289d9, %struct.Memory** %MEMORY
  %loadMem2_4289d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4289d9 = load i64, i64* %3
  %call2_4289d9 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_4289d9, %struct.Memory* %loadMem2_4289d9)
  store %struct.Memory* %call2_4289d9, %struct.Memory** %MEMORY
  %loadMem_4289de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 33
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3430 to i64*
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3432 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3431, i64 0, i64 0
  %YMM0.i10 = bitcast %union.VectorReg* %3432 to %"class.std::bitset"*
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3434 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3433, i64 0, i64 0
  %XMM0.i11 = bitcast %union.VectorReg* %3434 to %union.vec128_t*
  %3435 = bitcast %"class.std::bitset"* %YMM0.i10 to i8*
  %3436 = bitcast %"class.std::bitset"* %YMM0.i10 to i8*
  %3437 = bitcast %union.vec128_t* %XMM0.i11 to i8*
  %3438 = load i64, i64* %PC.i9
  %3439 = add i64 %3438, 3
  store i64 %3439, i64* %PC.i9
  %3440 = bitcast i8* %3436 to i64*
  %3441 = load i64, i64* %3440, align 1
  %3442 = getelementptr inbounds i8, i8* %3436, i64 8
  %3443 = bitcast i8* %3442 to i64*
  %3444 = load i64, i64* %3443, align 1
  %3445 = bitcast i8* %3437 to i64*
  %3446 = load i64, i64* %3445, align 1
  %3447 = getelementptr inbounds i8, i8* %3437, i64 8
  %3448 = bitcast i8* %3447 to i64*
  %3449 = load i64, i64* %3448, align 1
  %3450 = xor i64 %3446, %3441
  %3451 = xor i64 %3449, %3444
  %3452 = trunc i64 %3450 to i32
  %3453 = lshr i64 %3450, 32
  %3454 = trunc i64 %3453 to i32
  %3455 = bitcast i8* %3435 to i32*
  store i32 %3452, i32* %3455, align 1
  %3456 = getelementptr inbounds i8, i8* %3435, i64 4
  %3457 = bitcast i8* %3456 to i32*
  store i32 %3454, i32* %3457, align 1
  %3458 = trunc i64 %3451 to i32
  %3459 = getelementptr inbounds i8, i8* %3435, i64 8
  %3460 = bitcast i8* %3459 to i32*
  store i32 %3458, i32* %3460, align 1
  %3461 = lshr i64 %3451, 32
  %3462 = trunc i64 %3461 to i32
  %3463 = getelementptr inbounds i8, i8* %3435, i64 12
  %3464 = bitcast i8* %3463 to i32*
  store i32 %3462, i32* %3464, align 1
  store %struct.Memory* %loadMem_4289de, %struct.Memory** %MEMORY
  %loadMem_4289e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 33
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3467 to i64*
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 15
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %3470 to i64*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3472 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3471, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3472 to %union.vec128_t*
  %3473 = load i64, i64* %RBP.i8
  %3474 = sub i64 %3473, 4
  %3475 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3476 = load i64, i64* %PC.i7
  %3477 = add i64 %3476, 5
  store i64 %3477, i64* %PC.i7
  %3478 = bitcast i8* %3475 to <2 x float>*
  %3479 = load <2 x float>, <2 x float>* %3478, align 1
  %3480 = extractelement <2 x float> %3479, i32 0
  %3481 = inttoptr i64 %3474 to float*
  store float %3480, float* %3481
  store %struct.Memory* %loadMem_4289e1, %struct.Memory** %MEMORY
  br label %block_.L_4289e6

block_.L_4289e6:                                  ; preds = %block_.L_4289cd, %block_4289af, %block_428933, %block_4287f6
  %loadMem_4289e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 33
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3484 to i64*
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 15
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %3487 to i64*
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3489 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3488, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3489 to %"class.std::bitset"*
  %3490 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3491 = load i64, i64* %RBP.i6
  %3492 = sub i64 %3491, 4
  %3493 = load i64, i64* %PC.i5
  %3494 = add i64 %3493, 5
  store i64 %3494, i64* %PC.i5
  %3495 = inttoptr i64 %3492 to float*
  %3496 = load float, float* %3495
  %3497 = bitcast i8* %3490 to float*
  store float %3496, float* %3497, align 1
  %3498 = getelementptr inbounds i8, i8* %3490, i64 4
  %3499 = bitcast i8* %3498 to float*
  store float 0.000000e+00, float* %3499, align 1
  %3500 = getelementptr inbounds i8, i8* %3490, i64 8
  %3501 = bitcast i8* %3500 to float*
  store float 0.000000e+00, float* %3501, align 1
  %3502 = getelementptr inbounds i8, i8* %3490, i64 12
  %3503 = bitcast i8* %3502 to float*
  store float 0.000000e+00, float* %3503, align 1
  store %struct.Memory* %loadMem_4289e6, %struct.Memory** %MEMORY
  %loadMem_4289eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 33
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3506 to i64*
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 13
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3509 to i64*
  %3510 = load i64, i64* %RSP.i
  %3511 = load i64, i64* %PC.i4
  %3512 = add i64 %3511, 4
  store i64 %3512, i64* %PC.i4
  %3513 = add i64 112, %3510
  store i64 %3513, i64* %RSP.i, align 8
  %3514 = icmp ult i64 %3513, %3510
  %3515 = icmp ult i64 %3513, 112
  %3516 = or i1 %3514, %3515
  %3517 = zext i1 %3516 to i8
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3517, i8* %3518, align 1
  %3519 = trunc i64 %3513 to i32
  %3520 = and i32 %3519, 255
  %3521 = call i32 @llvm.ctpop.i32(i32 %3520)
  %3522 = trunc i32 %3521 to i8
  %3523 = and i8 %3522, 1
  %3524 = xor i8 %3523, 1
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3524, i8* %3525, align 1
  %3526 = xor i64 112, %3510
  %3527 = xor i64 %3526, %3513
  %3528 = lshr i64 %3527, 4
  %3529 = trunc i64 %3528 to i8
  %3530 = and i8 %3529, 1
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3530, i8* %3531, align 1
  %3532 = icmp eq i64 %3513, 0
  %3533 = zext i1 %3532 to i8
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3533, i8* %3534, align 1
  %3535 = lshr i64 %3513, 63
  %3536 = trunc i64 %3535 to i8
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3536, i8* %3537, align 1
  %3538 = lshr i64 %3510, 63
  %3539 = xor i64 %3535, %3538
  %3540 = add i64 %3539, %3535
  %3541 = icmp eq i64 %3540, 2
  %3542 = zext i1 %3541 to i8
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3542, i8* %3543, align 1
  store %struct.Memory* %loadMem_4289eb, %struct.Memory** %MEMORY
  %loadMem_4289ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 33
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3546 to i64*
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 15
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3549 to i64*
  %3550 = load i64, i64* %PC.i2
  %3551 = add i64 %3550, 1
  store i64 %3551, i64* %PC.i2
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3553 = load i64, i64* %3552, align 8
  %3554 = add i64 %3553, 8
  %3555 = inttoptr i64 %3553 to i64*
  %3556 = load i64, i64* %3555
  store i64 %3556, i64* %RBP.i3, align 8
  store i64 %3554, i64* %3552, align 8
  store %struct.Memory* %loadMem_4289ef, %struct.Memory** %MEMORY
  %loadMem_4289f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3558 = getelementptr inbounds %struct.GPR, %struct.GPR* %3557, i32 0, i32 33
  %3559 = getelementptr inbounds %struct.Reg, %struct.Reg* %3558, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3559 to i64*
  %3560 = load i64, i64* %PC.i1
  %3561 = add i64 %3560, 1
  store i64 %3561, i64* %PC.i1
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3564 = load i64, i64* %3563, align 8
  %3565 = inttoptr i64 %3564 to i64*
  %3566 = load i64, i64* %3565
  store i64 %3566, i64* %3562, align 8
  %3567 = add i64 %3564, 8
  store i64 %3567, i64* %3563, align 8
  store %struct.Memory* %loadMem_4289f0, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4289f0
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

define %struct.Memory* @routine_movsd_0x2c140__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x2c140__rip__type* @G_0x2c140__rip_ to i64)
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 8
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
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

define %struct.Memory* @routine_jb_.L_42880a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4286b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x2c11f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x2c11f__rip__type* @G_0x2c11f__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x2c11f__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x2c11f__rip__type* @G_0x2c11f__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x8__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 28
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

define %struct.Memory* @routine_movss_0x2c034__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x2c034__rip__type* @G_0x2c034__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = bitcast i8* %8 to float*
  store float %14, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 4
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %8, i64 8
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 12
  %21 = bitcast i8* %20 to float*
  store float 0.000000e+00, float* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 12
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

define %struct.Memory* @routine_movss_MINUS0xc__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
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

define %struct.Memory* @routine_movaps__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_subss_MINUS0xc__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fsub float %24, %23
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

define %struct.Memory* @routine_divss__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fdiv float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 16
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss_MINUS0x1c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fdiv float %24, %23
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

define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = fpext float %16 to double
  %18 = bitcast i8* %10 to double*
  store double %17, double* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 40
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_callq_.pow_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
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

define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fmul double %16, %21
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 20
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

define %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
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

define %struct.Memory* @routine_movd__xmm0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = bitcast i8* %11 to i64*
  %15 = load i64, i64* %14, align 1
  %16 = trunc i64 %15 to i32
  %17 = bitcast i64* %RAX to [2 x i32]*
  %18 = bitcast i64* %RAX to i32*
  store i32 %16, i32* %18, align 1
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 0, i32* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__0x80000000___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = xor i64 -2147483648, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movd__eax___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to i32*
  store i32 %12, i32* %16, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 0, i32* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to i32*
  store i32 0, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 0, i32* %22, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_MINUS0x8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
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

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = fpext float %16 to double
  %18 = bitcast i8* %10 to double*
  store double %17, double* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.exp_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x2c073__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x2c073__rip__type* @G_0x2c073__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x2c193__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x2c193__rip__type* @G_0x2c193__rip_ to i64)
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

define %struct.Memory* @routine_mulsd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x8__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_divss_MINUS0x1c__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fdiv float %24, %23
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

define %struct.Memory* @routine_cvtss2sd__xmm3___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %union.vec128_t* %XMM3 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = fpext float %16 to double
  %18 = bitcast i8* %10 to double*
  store double %17, double* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm3___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 48
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x2c046__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x2c046__rip__type* @G_0x2c046__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x2c036__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x2c036__rip__type* @G_0x2c036__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
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

define %struct.Memory* @routine_mulsd__xmm0___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
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
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm2___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_divsd__xmm0___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm4___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM4 to i8*
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

define %struct.Memory* @routine_movsd__xmm3__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 56
  %13 = bitcast %union.vec128_t* %XMM3 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 24
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
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

define %struct.Memory* @routine_jb_.L_428805(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
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

define %struct.Memory* @routine_jmpq_.L_4289e6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_4289c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_428821(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x2bfb2__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x2bfb2__rip__type* @G_0x2bfb2__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0xc__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x2bf85__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x2bf85__rip__type* @G_0x2bf85__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
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

define %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
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

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
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

define %struct.Memory* @routine_cvtsd2ss__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_jbe_.L_428947(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x2bf4c__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x2bf4c__rip__type* @G_0x2bf4c__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x2be8c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x2be8c__rip__type* @G_0x2be8c__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = bitcast i8* %8 to float*
  store float %14, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 4
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %8, i64 8
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 12
  %21 = bitcast i8* %20 to float*
  store float 0.000000e+00, float* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subss_MINUS0x10__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fsub float %24, %23
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 88
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
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

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
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

define %struct.Memory* @routine_callq_.log_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 -9223372036854775808, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to i64*
  %15 = load i64, i64* %14, align 1
  store i64 %15, i64* %RCX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = xor i64 %13, %12
  store i64 %16, i64* %RCX, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %17, align 1
  %18 = trunc i64 %16 to i32
  %19 = and i32 %18, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i64 %16, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %16, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  store i64 %12, i64* %15, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to i64*
  store i64 0, i64* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x2beda__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x2beda__rip__type* @G_0x2beda__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x14__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x8__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm3___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
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

define %struct.Memory* @routine_jb_.L_428942(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4289c3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x2be91__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x2be91__rip__type* @G_0x2be91__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
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

define %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
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

define %struct.Memory* @routine_movd__xmm1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to i64*
  %15 = load i64, i64* %14, align 1
  %16 = trunc i64 %15 to i32
  %17 = bitcast i64* %RAX to [2 x i32]*
  %18 = bitcast i64* %RAX to i32*
  store i32 %16, i32* %18, align 1
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 0, i32* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movd__eax___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to i32*
  store i32 %12, i32* %16, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 0, i32* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to i32*
  store i32 0, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 0, i32* %22, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 112
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
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

define %struct.Memory* @routine_jb_.L_4289be(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4289cd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x458473___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x458473_type* @G__0x458473 to i64), i64* %RDI, align 8
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
