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
%G_0x39c25__rip__type = type <{ [4 x i8] }>
%G_0x39cbd__rip__type = type <{ [8 x i8] }>
%G_0x39d0a__rip__type = type <{ [8 x i8] }>
%G_0x39df7__rip__type = type <{ [8 x i8] }>
%G_0x39e9e__rip__type = type <{ [4 x i8] }>
%G_0x39ecf__rip__type = type <{ [8 x i8] }>
%G_0x39ed8__rip__type = type <{ [4 x i8] }>
%G_0x39f06__rip__type = type <{ [8 x i8] }>
%G_0x39f75__rip__type = type <{ [4 x i8] }>
%G_0x39f79__rip__type = type <{ [4 x i8] }>
%G_0x39f7c__rip__type = type <{ [8 x i8] }>
%G_0x3aee3__rip__type = type <{ [16 x i8] }>
%G_0x3b0de__rip__type = type <{ [16 x i8] }>
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
@G_0x39c25__rip_ = global %G_0x39c25__rip__type zeroinitializer
@G_0x39cbd__rip_ = global %G_0x39cbd__rip__type zeroinitializer
@G_0x39d0a__rip_ = global %G_0x39d0a__rip__type zeroinitializer
@G_0x39df7__rip_ = global %G_0x39df7__rip__type zeroinitializer
@G_0x39e9e__rip_ = global %G_0x39e9e__rip__type zeroinitializer
@G_0x39ecf__rip_ = global %G_0x39ecf__rip__type zeroinitializer
@G_0x39ed8__rip_ = global %G_0x39ed8__rip__type zeroinitializer
@G_0x39f06__rip_ = global %G_0x39f06__rip__type zeroinitializer
@G_0x39f75__rip_ = global %G_0x39f75__rip__type zeroinitializer
@G_0x39f79__rip_ = global %G_0x39f79__rip__type zeroinitializer
@G_0x39f7c__rip_ = global %G_0x39f7c__rip__type zeroinitializer
@G_0x3aee3__rip_ = global %G_0x3aee3__rip__type zeroinitializer
@G_0x3b0de__rip_ = global %G_0x3b0de__rip__type zeroinitializer

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

declare %struct.Memory* @sub_41abc0.Lawless416(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @EVDMaxLikelyFit(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_41a7c0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_41a7c0, %struct.Memory** %MEMORY
  %loadMem_41a7c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i41 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i41
  %27 = load i64, i64* %PC.i40
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i40
  store i64 %26, i64* %RBP.i42, align 8
  store %struct.Memory* %loadMem_41a7c1, %struct.Memory** %MEMORY
  %loadMem_41a7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i80 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i80
  %36 = load i64, i64* %PC.i79
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i79
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i80, align 8
  %39 = icmp ult i64 %35, 128
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
  %49 = xor i64 128, %35
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
  store %struct.Memory* %loadMem_41a7c4, %struct.Memory** %MEMORY
  %loadMem_41a7cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 0
  %YMM0.i194 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = bitcast %"class.std::bitset"* %YMM0.i194 to i8*
  %73 = load i64, i64* %PC.i193
  %74 = add i64 %73, ptrtoint (%G_0x39f79__rip__type* @G_0x39f79__rip_ to i64)
  %75 = load i64, i64* %PC.i193
  %76 = add i64 %75, 8
  store i64 %76, i64* %PC.i193
  %77 = inttoptr i64 %74 to float*
  %78 = load float, float* %77
  %79 = bitcast i8* %72 to float*
  store float %78, float* %79, align 1
  %80 = getelementptr inbounds i8, i8* %72, i64 4
  %81 = bitcast i8* %80 to float*
  store float 0.000000e+00, float* %81, align 1
  %82 = getelementptr inbounds i8, i8* %72, i64 8
  %83 = bitcast i8* %82 to float*
  store float 0.000000e+00, float* %83, align 1
  %84 = getelementptr inbounds i8, i8* %72, i64 12
  %85 = bitcast i8* %84 to float*
  store float 0.000000e+00, float* %85, align 1
  store %struct.Memory* %loadMem_41a7cb, %struct.Memory** %MEMORY
  %loadMem_41a7d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %90 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %89, i64 0, i64 1
  %YMM1.i208 = bitcast %union.VectorReg* %90 to %"class.std::bitset"*
  %91 = bitcast %"class.std::bitset"* %YMM1.i208 to i8*
  %92 = load i64, i64* %PC.i207
  %93 = add i64 %92, ptrtoint (%G_0x39f75__rip__type* @G_0x39f75__rip_ to i64)
  %94 = load i64, i64* %PC.i207
  %95 = add i64 %94, 8
  store i64 %95, i64* %PC.i207
  %96 = inttoptr i64 %93 to float*
  %97 = load float, float* %96
  %98 = bitcast i8* %91 to float*
  store float %97, float* %98, align 1
  %99 = getelementptr inbounds i8, i8* %91, i64 4
  %100 = bitcast i8* %99 to float*
  store float 0.000000e+00, float* %100, align 1
  %101 = getelementptr inbounds i8, i8* %91, i64 8
  %102 = bitcast i8* %101 to float*
  store float 0.000000e+00, float* %102, align 1
  %103 = getelementptr inbounds i8, i8* %91, i64 12
  %104 = bitcast i8* %103 to float*
  store float 0.000000e+00, float* %104, align 1
  store %struct.Memory* %loadMem_41a7d3, %struct.Memory** %MEMORY
  %loadMem_41a7db = load %struct.Memory*, %struct.Memory** %MEMORY
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 33
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %107 to i64*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 11
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %RDI.i267 = bitcast %union.anon* %110 to i64*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 15
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %113 to i64*
  %114 = load i64, i64* %RBP.i268
  %115 = sub i64 %114, 16
  %116 = load i64, i64* %RDI.i267
  %117 = load i64, i64* %PC.i266
  %118 = add i64 %117, 4
  store i64 %118, i64* %PC.i266
  %119 = inttoptr i64 %115 to i64*
  store i64 %116, i64* %119
  store %struct.Memory* %loadMem_41a7db, %struct.Memory** %MEMORY
  %loadMem_41a7df = load %struct.Memory*, %struct.Memory** %MEMORY
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 33
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %122 to i64*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 9
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %RSI.i285 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 15
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %128 to i64*
  %129 = load i64, i64* %RBP.i286
  %130 = sub i64 %129, 24
  %131 = load i64, i64* %RSI.i285
  %132 = load i64, i64* %PC.i284
  %133 = add i64 %132, 4
  store i64 %133, i64* %PC.i284
  %134 = inttoptr i64 %130 to i64*
  store i64 %131, i64* %134
  store %struct.Memory* %loadMem_41a7df, %struct.Memory** %MEMORY
  %loadMem_41a7e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %137 to i64*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 7
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %140 to i32*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 15
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %143 to i64*
  %144 = load i64, i64* %RBP.i332
  %145 = sub i64 %144, 28
  %146 = load i32, i32* %EDX.i
  %147 = zext i32 %146 to i64
  %148 = load i64, i64* %PC.i331
  %149 = add i64 %148, 3
  store i64 %149, i64* %PC.i331
  %150 = inttoptr i64 %145 to i32*
  store i32 %146, i32* %150
  store %struct.Memory* %loadMem_41a7e3, %struct.Memory** %MEMORY
  %loadMem_41a7e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 33
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %153 to i64*
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 15
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %159 to i64*
  %160 = load i64, i64* %RBP.i368
  %161 = sub i64 %160, 40
  %162 = load i64, i64* %RCX.i367
  %163 = load i64, i64* %PC.i366
  %164 = add i64 %163, 4
  store i64 %164, i64* %PC.i366
  %165 = inttoptr i64 %161 to i64*
  store i64 %162, i64* %165
  store %struct.Memory* %loadMem_41a7e6, %struct.Memory** %MEMORY
  %loadMem_41a7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 33
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %168 to i64*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 15
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %171 to i64*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 17
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %R8.i395 = bitcast %union.anon* %174 to i64*
  %175 = load i64, i64* %RBP.i394
  %176 = sub i64 %175, 48
  %177 = load i64, i64* %R8.i395
  %178 = load i64, i64* %PC.i393
  %179 = add i64 %178, 4
  store i64 %179, i64* %PC.i393
  %180 = inttoptr i64 %176 to i64*
  store i64 %177, i64* %180
  store %struct.Memory* %loadMem_41a7ea, %struct.Memory** %MEMORY
  %loadMem_41a7ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 33
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %183 to i64*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 15
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %188 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %187, i64 0, i64 1
  %XMM1.i457 = bitcast %union.VectorReg* %188 to %union.vec128_t*
  %189 = load i64, i64* %RBP.i456
  %190 = sub i64 %189, 92
  %191 = bitcast %union.vec128_t* %XMM1.i457 to i8*
  %192 = load i64, i64* %PC.i455
  %193 = add i64 %192, 5
  store i64 %193, i64* %PC.i455
  %194 = bitcast i8* %191 to <2 x float>*
  %195 = load <2 x float>, <2 x float>* %194, align 1
  %196 = extractelement <2 x float> %195, i32 0
  %197 = inttoptr i64 %190 to float*
  store float %196, float* %197
  store %struct.Memory* %loadMem_41a7ee, %struct.Memory** %MEMORY
  %loadMem_41a7f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 33
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 15
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %205 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %204, i64 0, i64 0
  %XMM0.i487 = bitcast %union.VectorReg* %205 to %union.vec128_t*
  %206 = load i64, i64* %RBP.i486
  %207 = sub i64 %206, 52
  %208 = bitcast %union.vec128_t* %XMM0.i487 to i8*
  %209 = load i64, i64* %PC.i485
  %210 = add i64 %209, 5
  store i64 %210, i64* %PC.i485
  %211 = bitcast i8* %208 to <2 x float>*
  %212 = load <2 x float>, <2 x float>* %211, align 1
  %213 = extractelement <2 x float> %212, i32 0
  %214 = inttoptr i64 %207 to float*
  store float %213, float* %214
  store %struct.Memory* %loadMem_41a7f3, %struct.Memory** %MEMORY
  %loadMem_41a7f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 33
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 15
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %RBP.i522
  %222 = sub i64 %221, 96
  %223 = load i64, i64* %PC.i521
  %224 = add i64 %223, 7
  store i64 %224, i64* %PC.i521
  %225 = inttoptr i64 %222 to i32*
  store i32 0, i32* %225
  store %struct.Memory* %loadMem_41a7f8, %struct.Memory** %MEMORY
  br label %block_.L_41a7ff

block_.L_41a7ff:                                  ; preds = %block_.L_41a886, %entry
  %loadMem_41a7ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 33
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %228 to i64*
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 15
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %231 to i64*
  %232 = load i64, i64* %RBP.i520
  %233 = sub i64 %232, 96
  %234 = load i64, i64* %PC.i519
  %235 = add i64 %234, 4
  store i64 %235, i64* %PC.i519
  %236 = inttoptr i64 %233 to i32*
  %237 = load i32, i32* %236
  %238 = sub i32 %237, 100
  %239 = icmp ult i32 %237, 100
  %240 = zext i1 %239 to i8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %240, i8* %241, align 1
  %242 = and i32 %238, 255
  %243 = call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %246, i8* %247, align 1
  %248 = xor i32 %237, 100
  %249 = xor i32 %248, %238
  %250 = lshr i32 %249, 4
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %252, i8* %253, align 1
  %254 = icmp eq i32 %238, 0
  %255 = zext i1 %254 to i8
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %255, i8* %256, align 1
  %257 = lshr i32 %238, 31
  %258 = trunc i32 %257 to i8
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %258, i8* %259, align 1
  %260 = lshr i32 %237, 31
  %261 = xor i32 %257, %260
  %262 = add i32 %261, %260
  %263 = icmp eq i32 %262, 2
  %264 = zext i1 %263 to i8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %264, i8* %265, align 1
  store %struct.Memory* %loadMem_41a7ff, %struct.Memory** %MEMORY
  %loadMem_41a803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 33
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %268 to i64*
  %269 = load i64, i64* %PC.i518
  %270 = add i64 %269, 145
  %271 = load i64, i64* %PC.i518
  %272 = add i64 %271, 6
  %273 = load i64, i64* %PC.i518
  %274 = add i64 %273, 6
  store i64 %274, i64* %PC.i518
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %276 = load i8, i8* %275, align 1
  %277 = icmp ne i8 %276, 0
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %279 = load i8, i8* %278, align 1
  %280 = icmp ne i8 %279, 0
  %281 = xor i1 %277, %280
  %282 = xor i1 %281, true
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %BRANCH_TAKEN, align 1
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %285 = select i1 %281, i64 %272, i64 %270
  store i64 %285, i64* %284, align 8
  store %struct.Memory* %loadMem_41a803, %struct.Memory** %MEMORY
  %loadBr_41a803 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a803 = icmp eq i8 %loadBr_41a803, 1
  br i1 %cmpBr_41a803, label %block_.L_41a894, label %block_41a809

block_41a809:                                     ; preds = %block_.L_41a7ff
  %loadMem_41a809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 33
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %288 to i64*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 5
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %RCX.i516 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 15
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %294 to i64*
  %295 = load i64, i64* %RBP.i517
  %296 = sub i64 %295, 60
  %297 = load i64, i64* %PC.i515
  %298 = add i64 %297, 4
  store i64 %298, i64* %PC.i515
  store i64 %296, i64* %RCX.i516, align 8
  store %struct.Memory* %loadMem_41a809, %struct.Memory** %MEMORY
  %loadMem_41a80d = load %struct.Memory*, %struct.Memory** %MEMORY
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 33
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %301 to i64*
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 15
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %304 to i64*
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 17
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %R8.i514 = bitcast %union.anon* %307 to i64*
  %308 = load i64, i64* %RBP.i513
  %309 = sub i64 %308, 64
  %310 = load i64, i64* %PC.i512
  %311 = add i64 %310, 4
  store i64 %311, i64* %PC.i512
  store i64 %309, i64* %R8.i514, align 8
  store %struct.Memory* %loadMem_41a80d, %struct.Memory** %MEMORY
  %loadMem_41a811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 33
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 11
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %RDI.i510 = bitcast %union.anon* %317 to i64*
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 15
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %320 to i64*
  %321 = load i64, i64* %RBP.i511
  %322 = sub i64 %321, 16
  %323 = load i64, i64* %PC.i509
  %324 = add i64 %323, 4
  store i64 %324, i64* %PC.i509
  %325 = inttoptr i64 %322 to i64*
  %326 = load i64, i64* %325
  store i64 %326, i64* %RDI.i510, align 8
  store %struct.Memory* %loadMem_41a811, %struct.Memory** %MEMORY
  %loadMem_41a815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 33
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %329 to i64*
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 9
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %RSI.i507 = bitcast %union.anon* %332 to i64*
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %334 = getelementptr inbounds %struct.GPR, %struct.GPR* %333, i32 0, i32 15
  %335 = getelementptr inbounds %struct.Reg, %struct.Reg* %334, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %335 to i64*
  %336 = load i64, i64* %RBP.i508
  %337 = sub i64 %336, 24
  %338 = load i64, i64* %PC.i506
  %339 = add i64 %338, 4
  store i64 %339, i64* %PC.i506
  %340 = inttoptr i64 %337 to i64*
  %341 = load i64, i64* %340
  store i64 %341, i64* %RSI.i507, align 8
  store %struct.Memory* %loadMem_41a815, %struct.Memory** %MEMORY
  %loadMem_41a819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 33
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %344 to i64*
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 7
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %RDX.i504 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 15
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %350 to i64*
  %351 = load i64, i64* %RBP.i505
  %352 = sub i64 %351, 28
  %353 = load i64, i64* %PC.i503
  %354 = add i64 %353, 3
  store i64 %354, i64* %PC.i503
  %355 = inttoptr i64 %352 to i32*
  %356 = load i32, i32* %355
  %357 = zext i32 %356 to i64
  store i64 %357, i64* %RDX.i504, align 8
  store %struct.Memory* %loadMem_41a819, %struct.Memory** %MEMORY
  %loadMem_41a81c = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 15
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %365 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %364, i64 0, i64 0
  %YMM0.i502 = bitcast %union.VectorReg* %365 to %"class.std::bitset"*
  %366 = bitcast %"class.std::bitset"* %YMM0.i502 to i8*
  %367 = load i64, i64* %RBP.i501
  %368 = sub i64 %367, 52
  %369 = load i64, i64* %PC.i500
  %370 = add i64 %369, 5
  store i64 %370, i64* %PC.i500
  %371 = inttoptr i64 %368 to float*
  %372 = load float, float* %371
  %373 = bitcast i8* %366 to float*
  store float %372, float* %373, align 1
  %374 = getelementptr inbounds i8, i8* %366, i64 4
  %375 = bitcast i8* %374 to float*
  store float 0.000000e+00, float* %375, align 1
  %376 = getelementptr inbounds i8, i8* %366, i64 8
  %377 = bitcast i8* %376 to float*
  store float 0.000000e+00, float* %377, align 1
  %378 = getelementptr inbounds i8, i8* %366, i64 12
  %379 = bitcast i8* %378 to float*
  store float 0.000000e+00, float* %379, align 1
  store %struct.Memory* %loadMem_41a81c, %struct.Memory** %MEMORY
  %loadMem1_41a821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 33
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %382 to i64*
  %383 = load i64, i64* %PC.i499
  %384 = add i64 %383, 927
  %385 = load i64, i64* %PC.i499
  %386 = add i64 %385, 5
  %387 = load i64, i64* %PC.i499
  %388 = add i64 %387, 5
  store i64 %388, i64* %PC.i499
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = add i64 %390, -8
  %392 = inttoptr i64 %391 to i64*
  store i64 %386, i64* %392
  store i64 %391, i64* %389, align 8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %384, i64* %393, align 8
  store %struct.Memory* %loadMem1_41a821, %struct.Memory** %MEMORY
  %loadMem2_41a821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a821 = load i64, i64* %3
  %call2_41a821 = call %struct.Memory* @sub_41abc0.Lawless416(%struct.State* %0, i64 %loadPC_41a821, %struct.Memory* %loadMem2_41a821)
  store %struct.Memory* %call2_41a821, %struct.Memory** %MEMORY
  %loadMem_41a826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 15
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %401 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %400, i64 0, i64 0
  %YMM0.i498 = bitcast %union.VectorReg* %401 to %"class.std::bitset"*
  %402 = bitcast %"class.std::bitset"* %YMM0.i498 to i8*
  %403 = load i64, i64* %RBP.i497
  %404 = sub i64 %403, 60
  %405 = load i64, i64* %PC.i496
  %406 = add i64 %405, 5
  store i64 %406, i64* %PC.i496
  %407 = inttoptr i64 %404 to float*
  %408 = load float, float* %407
  %409 = fpext float %408 to double
  %410 = bitcast i8* %402 to double*
  store double %409, double* %410, align 1
  store %struct.Memory* %loadMem_41a826, %struct.Memory** %MEMORY
  %loadMem_41a82b = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %415 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %414, i64 0, i64 1
  %YMM1.i495 = bitcast %union.VectorReg* %415 to %"class.std::bitset"*
  %416 = bitcast %"class.std::bitset"* %YMM1.i495 to i8*
  %417 = load i64, i64* %PC.i494
  %418 = add i64 %417, ptrtoint (%G_0x3b0de__rip__type* @G_0x3b0de__rip_ to i64)
  %419 = load i64, i64* %PC.i494
  %420 = add i64 %419, 7
  store i64 %420, i64* %PC.i494
  %421 = inttoptr i64 %418 to float*
  %422 = load float, float* %421
  %423 = add i64 %418, 4
  %424 = inttoptr i64 %423 to float*
  %425 = load float, float* %424
  %426 = add i64 %418, 8
  %427 = inttoptr i64 %426 to float*
  %428 = load float, float* %427
  %429 = add i64 %418, 12
  %430 = inttoptr i64 %429 to float*
  %431 = load float, float* %430
  %432 = bitcast i8* %416 to float*
  store float %422, float* %432, align 1
  %433 = getelementptr inbounds i8, i8* %416, i64 4
  %434 = bitcast i8* %433 to float*
  store float %425, float* %434, align 1
  %435 = getelementptr inbounds i8, i8* %416, i64 8
  %436 = bitcast i8* %435 to float*
  store float %428, float* %436, align 1
  %437 = getelementptr inbounds i8, i8* %416, i64 12
  %438 = bitcast i8* %437 to float*
  store float %431, float* %438, align 1
  store %struct.Memory* %loadMem_41a82b, %struct.Memory** %MEMORY
  %loadMem_41a832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 33
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %441 to i64*
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %443 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %442, i64 0, i64 0
  %YMM0.i492 = bitcast %union.VectorReg* %443 to %"class.std::bitset"*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %445 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %444, i64 0, i64 1
  %XMM1.i493 = bitcast %union.VectorReg* %445 to %union.vec128_t*
  %446 = bitcast %"class.std::bitset"* %YMM0.i492 to i8*
  %447 = bitcast %"class.std::bitset"* %YMM0.i492 to i8*
  %448 = bitcast %union.vec128_t* %XMM1.i493 to i8*
  %449 = load i64, i64* %PC.i491
  %450 = add i64 %449, 4
  store i64 %450, i64* %PC.i491
  %451 = bitcast i8* %447 to i64*
  %452 = load i64, i64* %451, align 1
  %453 = getelementptr inbounds i8, i8* %447, i64 8
  %454 = bitcast i8* %453 to i64*
  %455 = load i64, i64* %454, align 1
  %456 = bitcast i8* %448 to i64*
  %457 = load i64, i64* %456, align 1
  %458 = getelementptr inbounds i8, i8* %448, i64 8
  %459 = bitcast i8* %458 to i64*
  %460 = load i64, i64* %459, align 1
  %461 = and i64 %457, %452
  %462 = and i64 %460, %455
  %463 = trunc i64 %461 to i32
  %464 = lshr i64 %461, 32
  %465 = trunc i64 %464 to i32
  %466 = bitcast i8* %446 to i32*
  store i32 %463, i32* %466, align 1
  %467 = getelementptr inbounds i8, i8* %446, i64 4
  %468 = bitcast i8* %467 to i32*
  store i32 %465, i32* %468, align 1
  %469 = trunc i64 %462 to i32
  %470 = getelementptr inbounds i8, i8* %446, i64 8
  %471 = bitcast i8* %470 to i32*
  store i32 %469, i32* %471, align 1
  %472 = lshr i64 %462, 32
  %473 = trunc i64 %472 to i32
  %474 = getelementptr inbounds i8, i8* %446, i64 12
  %475 = bitcast i8* %474 to i32*
  store i32 %473, i32* %475, align 1
  store %struct.Memory* %loadMem_41a832, %struct.Memory** %MEMORY
  %loadMem_41a836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 33
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %478 to i64*
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %480 = getelementptr inbounds %struct.GPR, %struct.GPR* %479, i32 0, i32 15
  %481 = getelementptr inbounds %struct.Reg, %struct.Reg* %480, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %481 to i64*
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %483 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %482, i64 0, i64 1
  %YMM1.i490 = bitcast %union.VectorReg* %483 to %"class.std::bitset"*
  %484 = bitcast %"class.std::bitset"* %YMM1.i490 to i8*
  %485 = load i64, i64* %RBP.i489
  %486 = sub i64 %485, 92
  %487 = load i64, i64* %PC.i488
  %488 = add i64 %487, 5
  store i64 %488, i64* %PC.i488
  %489 = inttoptr i64 %486 to float*
  %490 = load float, float* %489
  %491 = fpext float %490 to double
  %492 = bitcast i8* %484 to double*
  store double %491, double* %492, align 1
  store %struct.Memory* %loadMem_41a836, %struct.Memory** %MEMORY
  %loadMem_41a83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 33
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %495 to i64*
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %497 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %496, i64 0, i64 0
  %XMM0.i482 = bitcast %union.VectorReg* %497 to %union.vec128_t*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %499 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %498, i64 0, i64 1
  %XMM1.i483 = bitcast %union.VectorReg* %499 to %union.vec128_t*
  %500 = bitcast %union.vec128_t* %XMM1.i483 to i8*
  %501 = bitcast %union.vec128_t* %XMM0.i482 to i8*
  %502 = load i64, i64* %PC.i481
  %503 = add i64 %502, 4
  store i64 %503, i64* %PC.i481
  %504 = bitcast i8* %500 to double*
  %505 = load double, double* %504, align 1
  %506 = bitcast i8* %501 to double*
  %507 = load double, double* %506, align 1
  %508 = fcmp uno double %505, %507
  br i1 %508, label %509, label %521

; <label>:509:                                    ; preds = %block_41a809
  %510 = fadd double %505, %507
  %511 = bitcast double %510 to i64
  %512 = and i64 %511, 9221120237041090560
  %513 = icmp eq i64 %512, 9218868437227405312
  %514 = and i64 %511, 2251799813685247
  %515 = icmp ne i64 %514, 0
  %516 = and i1 %513, %515
  br i1 %516, label %517, label %527

; <label>:517:                                    ; preds = %509
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %519 = load i64, i64* %518, align 8
  %520 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %519, %struct.Memory* %loadMem_41a83b)
  br label %routine_ucomisd__xmm0___xmm1.exit484

; <label>:521:                                    ; preds = %block_41a809
  %522 = fcmp ogt double %505, %507
  br i1 %522, label %527, label %523

; <label>:523:                                    ; preds = %521
  %524 = fcmp olt double %505, %507
  br i1 %524, label %527, label %525

; <label>:525:                                    ; preds = %523
  %526 = fcmp oeq double %505, %507
  br i1 %526, label %527, label %534

; <label>:527:                                    ; preds = %525, %523, %521, %509
  %528 = phi i8 [ 0, %521 ], [ 0, %523 ], [ 1, %525 ], [ 1, %509 ]
  %529 = phi i8 [ 0, %521 ], [ 0, %523 ], [ 0, %525 ], [ 1, %509 ]
  %530 = phi i8 [ 0, %521 ], [ 1, %523 ], [ 0, %525 ], [ 1, %509 ]
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %528, i8* %531, align 1
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %529, i8* %532, align 1
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %530, i8* %533, align 1
  br label %534

; <label>:534:                                    ; preds = %527, %525
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %535, align 1
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %536, align 1
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %537, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit484

routine_ucomisd__xmm0___xmm1.exit484:             ; preds = %517, %534
  %538 = phi %struct.Memory* [ %520, %517 ], [ %loadMem_41a83b, %534 ]
  store %struct.Memory* %538, %struct.Memory** %MEMORY
  %loadMem_41a83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 33
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %541 to i64*
  %542 = load i64, i64* %PC.i480
  %543 = add i64 %542, 11
  %544 = load i64, i64* %PC.i480
  %545 = add i64 %544, 6
  %546 = load i64, i64* %PC.i480
  %547 = add i64 %546, 6
  store i64 %547, i64* %PC.i480
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %549 = load i8, i8* %548, align 1
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %551 = load i8, i8* %550, align 1
  %552 = or i8 %551, %549
  %553 = icmp ne i8 %552, 0
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %BRANCH_TAKEN, align 1
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %556 = select i1 %553, i64 %543, i64 %545
  store i64 %556, i64* %555, align 8
  store %struct.Memory* %loadMem_41a83f, %struct.Memory** %MEMORY
  %loadBr_41a83f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a83f = icmp eq i8 %loadBr_41a83f, 1
  br i1 %cmpBr_41a83f, label %block_.L_41a84a, label %block_41a845

block_41a845:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit484
  %loadMem_41a845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 33
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %559 to i64*
  %560 = load i64, i64* %PC.i479
  %561 = add i64 %560, 79
  %562 = load i64, i64* %PC.i479
  %563 = add i64 %562, 5
  store i64 %563, i64* %PC.i479
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %561, i64* %564, align 8
  store %struct.Memory* %loadMem_41a845, %struct.Memory** %MEMORY
  br label %block_.L_41a894

block_.L_41a84a:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit484
  %loadMem_41a84a = load %struct.Memory*, %struct.Memory** %MEMORY
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 33
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %567 to i64*
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %569 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %568, i64 0, i64 0
  %YMM0.i477 = bitcast %union.VectorReg* %569 to %"class.std::bitset"*
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %571 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %570, i64 0, i64 0
  %XMM0.i478 = bitcast %union.VectorReg* %571 to %union.vec128_t*
  %572 = bitcast %"class.std::bitset"* %YMM0.i477 to i8*
  %573 = bitcast %"class.std::bitset"* %YMM0.i477 to i8*
  %574 = bitcast %union.vec128_t* %XMM0.i478 to i8*
  %575 = load i64, i64* %PC.i476
  %576 = add i64 %575, 3
  store i64 %576, i64* %PC.i476
  %577 = bitcast i8* %573 to i64*
  %578 = load i64, i64* %577, align 1
  %579 = getelementptr inbounds i8, i8* %573, i64 8
  %580 = bitcast i8* %579 to i64*
  %581 = load i64, i64* %580, align 1
  %582 = bitcast i8* %574 to i64*
  %583 = load i64, i64* %582, align 1
  %584 = getelementptr inbounds i8, i8* %574, i64 8
  %585 = bitcast i8* %584 to i64*
  %586 = load i64, i64* %585, align 1
  %587 = xor i64 %583, %578
  %588 = xor i64 %586, %581
  %589 = trunc i64 %587 to i32
  %590 = lshr i64 %587, 32
  %591 = trunc i64 %590 to i32
  %592 = bitcast i8* %572 to i32*
  store i32 %589, i32* %592, align 1
  %593 = getelementptr inbounds i8, i8* %572, i64 4
  %594 = bitcast i8* %593 to i32*
  store i32 %591, i32* %594, align 1
  %595 = trunc i64 %588 to i32
  %596 = getelementptr inbounds i8, i8* %572, i64 8
  %597 = bitcast i8* %596 to i32*
  store i32 %595, i32* %597, align 1
  %598 = lshr i64 %588, 32
  %599 = trunc i64 %598 to i32
  %600 = getelementptr inbounds i8, i8* %572, i64 12
  %601 = bitcast i8* %600 to i32*
  store i32 %599, i32* %601, align 1
  store %struct.Memory* %loadMem_41a84a, %struct.Memory** %MEMORY
  %loadMem_41a84d = load %struct.Memory*, %struct.Memory** %MEMORY
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 33
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %604 to i64*
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 15
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %607 to i64*
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %609 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %608, i64 0, i64 1
  %YMM1.i475 = bitcast %union.VectorReg* %609 to %"class.std::bitset"*
  %610 = bitcast %"class.std::bitset"* %YMM1.i475 to i8*
  %611 = load i64, i64* %RBP.i474
  %612 = sub i64 %611, 52
  %613 = load i64, i64* %PC.i473
  %614 = add i64 %613, 5
  store i64 %614, i64* %PC.i473
  %615 = inttoptr i64 %612 to float*
  %616 = load float, float* %615
  %617 = bitcast i8* %610 to float*
  store float %616, float* %617, align 1
  %618 = getelementptr inbounds i8, i8* %610, i64 4
  %619 = bitcast i8* %618 to float*
  store float 0.000000e+00, float* %619, align 1
  %620 = getelementptr inbounds i8, i8* %610, i64 8
  %621 = bitcast i8* %620 to float*
  store float 0.000000e+00, float* %621, align 1
  %622 = getelementptr inbounds i8, i8* %610, i64 12
  %623 = bitcast i8* %622 to float*
  store float 0.000000e+00, float* %623, align 1
  store %struct.Memory* %loadMem_41a84d, %struct.Memory** %MEMORY
  %loadMem_41a852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %625 = getelementptr inbounds %struct.GPR, %struct.GPR* %624, i32 0, i32 33
  %626 = getelementptr inbounds %struct.Reg, %struct.Reg* %625, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %626 to i64*
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 15
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %629 to i64*
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %631 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %630, i64 0, i64 2
  %YMM2.i472 = bitcast %union.VectorReg* %631 to %"class.std::bitset"*
  %632 = bitcast %"class.std::bitset"* %YMM2.i472 to i8*
  %633 = load i64, i64* %RBP.i471
  %634 = sub i64 %633, 60
  %635 = load i64, i64* %PC.i470
  %636 = add i64 %635, 5
  store i64 %636, i64* %PC.i470
  %637 = inttoptr i64 %634 to float*
  %638 = load float, float* %637
  %639 = bitcast i8* %632 to float*
  store float %638, float* %639, align 1
  %640 = getelementptr inbounds i8, i8* %632, i64 4
  %641 = bitcast i8* %640 to float*
  store float 0.000000e+00, float* %641, align 1
  %642 = getelementptr inbounds i8, i8* %632, i64 8
  %643 = bitcast i8* %642 to float*
  store float 0.000000e+00, float* %643, align 1
  %644 = getelementptr inbounds i8, i8* %632, i64 12
  %645 = bitcast i8* %644 to float*
  store float 0.000000e+00, float* %645, align 1
  store %struct.Memory* %loadMem_41a852, %struct.Memory** %MEMORY
  %loadMem_41a857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 33
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %648 to i64*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 15
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %653 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %652, i64 0, i64 2
  %YMM2.i469 = bitcast %union.VectorReg* %653 to %"class.std::bitset"*
  %654 = bitcast %"class.std::bitset"* %YMM2.i469 to i8*
  %655 = bitcast %"class.std::bitset"* %YMM2.i469 to i8*
  %656 = load i64, i64* %RBP.i468
  %657 = sub i64 %656, 64
  %658 = load i64, i64* %PC.i467
  %659 = add i64 %658, 5
  store i64 %659, i64* %PC.i467
  %660 = bitcast i8* %655 to <2 x float>*
  %661 = load <2 x float>, <2 x float>* %660, align 1
  %662 = getelementptr inbounds i8, i8* %655, i64 8
  %663 = bitcast i8* %662 to <2 x i32>*
  %664 = load <2 x i32>, <2 x i32>* %663, align 1
  %665 = inttoptr i64 %657 to float*
  %666 = load float, float* %665
  %667 = extractelement <2 x float> %661, i32 0
  %668 = fdiv float %667, %666
  %669 = bitcast i8* %654 to float*
  store float %668, float* %669, align 1
  %670 = bitcast <2 x float> %661 to <2 x i32>
  %671 = extractelement <2 x i32> %670, i32 1
  %672 = getelementptr inbounds i8, i8* %654, i64 4
  %673 = bitcast i8* %672 to i32*
  store i32 %671, i32* %673, align 1
  %674 = extractelement <2 x i32> %664, i32 0
  %675 = getelementptr inbounds i8, i8* %654, i64 8
  %676 = bitcast i8* %675 to i32*
  store i32 %674, i32* %676, align 1
  %677 = extractelement <2 x i32> %664, i32 1
  %678 = getelementptr inbounds i8, i8* %654, i64 12
  %679 = bitcast i8* %678 to i32*
  store i32 %677, i32* %679, align 1
  store %struct.Memory* %loadMem_41a857, %struct.Memory** %MEMORY
  %loadMem_41a85c = load %struct.Memory*, %struct.Memory** %MEMORY
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 33
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %682 to i64*
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %684 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %683, i64 0, i64 1
  %YMM1.i465 = bitcast %union.VectorReg* %684 to %"class.std::bitset"*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %686 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %685, i64 0, i64 2
  %XMM2.i466 = bitcast %union.VectorReg* %686 to %union.vec128_t*
  %687 = bitcast %"class.std::bitset"* %YMM1.i465 to i8*
  %688 = bitcast %"class.std::bitset"* %YMM1.i465 to i8*
  %689 = bitcast %union.vec128_t* %XMM2.i466 to i8*
  %690 = load i64, i64* %PC.i464
  %691 = add i64 %690, 4
  store i64 %691, i64* %PC.i464
  %692 = bitcast i8* %688 to <2 x float>*
  %693 = load <2 x float>, <2 x float>* %692, align 1
  %694 = getelementptr inbounds i8, i8* %688, i64 8
  %695 = bitcast i8* %694 to <2 x i32>*
  %696 = load <2 x i32>, <2 x i32>* %695, align 1
  %697 = bitcast i8* %689 to <2 x float>*
  %698 = load <2 x float>, <2 x float>* %697, align 1
  %699 = extractelement <2 x float> %693, i32 0
  %700 = extractelement <2 x float> %698, i32 0
  %701 = fsub float %699, %700
  %702 = bitcast i8* %687 to float*
  store float %701, float* %702, align 1
  %703 = bitcast <2 x float> %693 to <2 x i32>
  %704 = extractelement <2 x i32> %703, i32 1
  %705 = getelementptr inbounds i8, i8* %687, i64 4
  %706 = bitcast i8* %705 to i32*
  store i32 %704, i32* %706, align 1
  %707 = extractelement <2 x i32> %696, i32 0
  %708 = getelementptr inbounds i8, i8* %687, i64 8
  %709 = bitcast i8* %708 to i32*
  store i32 %707, i32* %709, align 1
  %710 = extractelement <2 x i32> %696, i32 1
  %711 = getelementptr inbounds i8, i8* %687, i64 12
  %712 = bitcast i8* %711 to i32*
  store i32 %710, i32* %712, align 1
  store %struct.Memory* %loadMem_41a85c, %struct.Memory** %MEMORY
  %loadMem_41a860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 33
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 15
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %720 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %719, i64 0, i64 1
  %XMM1.i463 = bitcast %union.VectorReg* %720 to %union.vec128_t*
  %721 = load i64, i64* %RBP.i462
  %722 = sub i64 %721, 52
  %723 = bitcast %union.vec128_t* %XMM1.i463 to i8*
  %724 = load i64, i64* %PC.i461
  %725 = add i64 %724, 5
  store i64 %725, i64* %PC.i461
  %726 = bitcast i8* %723 to <2 x float>*
  %727 = load <2 x float>, <2 x float>* %726, align 1
  %728 = extractelement <2 x float> %727, i32 0
  %729 = inttoptr i64 %722 to float*
  store float %728, float* %729
  store %struct.Memory* %loadMem_41a860, %struct.Memory** %MEMORY
  %loadMem_41a865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 33
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %732 to i64*
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 15
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %737 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %736, i64 0, i64 1
  %YMM1.i460 = bitcast %union.VectorReg* %737 to %"class.std::bitset"*
  %738 = bitcast %"class.std::bitset"* %YMM1.i460 to i8*
  %739 = load i64, i64* %RBP.i459
  %740 = sub i64 %739, 52
  %741 = load i64, i64* %PC.i458
  %742 = add i64 %741, 5
  store i64 %742, i64* %PC.i458
  %743 = inttoptr i64 %740 to float*
  %744 = load float, float* %743
  %745 = fpext float %744 to double
  %746 = bitcast i8* %738 to double*
  store double %745, double* %746, align 1
  store %struct.Memory* %loadMem_41a865, %struct.Memory** %MEMORY
  %loadMem_41a86a = load %struct.Memory*, %struct.Memory** %MEMORY
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 33
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %749 to i64*
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %751 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %750, i64 0, i64 0
  %XMM0.i452 = bitcast %union.VectorReg* %751 to %union.vec128_t*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %753 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %752, i64 0, i64 1
  %XMM1.i453 = bitcast %union.VectorReg* %753 to %union.vec128_t*
  %754 = bitcast %union.vec128_t* %XMM0.i452 to i8*
  %755 = bitcast %union.vec128_t* %XMM1.i453 to i8*
  %756 = load i64, i64* %PC.i451
  %757 = add i64 %756, 4
  store i64 %757, i64* %PC.i451
  %758 = bitcast i8* %754 to double*
  %759 = load double, double* %758, align 1
  %760 = bitcast i8* %755 to double*
  %761 = load double, double* %760, align 1
  %762 = fcmp uno double %759, %761
  br i1 %762, label %763, label %775

; <label>:763:                                    ; preds = %block_.L_41a84a
  %764 = fadd double %759, %761
  %765 = bitcast double %764 to i64
  %766 = and i64 %765, 9221120237041090560
  %767 = icmp eq i64 %766, 9218868437227405312
  %768 = and i64 %765, 2251799813685247
  %769 = icmp ne i64 %768, 0
  %770 = and i1 %767, %769
  br i1 %770, label %771, label %781

; <label>:771:                                    ; preds = %763
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %773 = load i64, i64* %772, align 8
  %774 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %773, %struct.Memory* %loadMem_41a86a)
  br label %routine_ucomisd__xmm1___xmm0.exit454

; <label>:775:                                    ; preds = %block_.L_41a84a
  %776 = fcmp ogt double %759, %761
  br i1 %776, label %781, label %777

; <label>:777:                                    ; preds = %775
  %778 = fcmp olt double %759, %761
  br i1 %778, label %781, label %779

; <label>:779:                                    ; preds = %777
  %780 = fcmp oeq double %759, %761
  br i1 %780, label %781, label %788

; <label>:781:                                    ; preds = %779, %777, %775, %763
  %782 = phi i8 [ 0, %775 ], [ 0, %777 ], [ 1, %779 ], [ 1, %763 ]
  %783 = phi i8 [ 0, %775 ], [ 0, %777 ], [ 0, %779 ], [ 1, %763 ]
  %784 = phi i8 [ 0, %775 ], [ 1, %777 ], [ 0, %779 ], [ 1, %763 ]
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %782, i8* %785, align 1
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %783, i8* %786, align 1
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %784, i8* %787, align 1
  br label %788

; <label>:788:                                    ; preds = %781, %779
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %789, align 1
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %790, align 1
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %791, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit454

routine_ucomisd__xmm1___xmm0.exit454:             ; preds = %771, %788
  %792 = phi %struct.Memory* [ %774, %771 ], [ %loadMem_41a86a, %788 ]
  store %struct.Memory* %792, %struct.Memory** %MEMORY
  %loadMem_41a86e = load %struct.Memory*, %struct.Memory** %MEMORY
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 33
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %795 to i64*
  %796 = load i64, i64* %PC.i450
  %797 = add i64 %796, 19
  %798 = load i64, i64* %PC.i450
  %799 = add i64 %798, 6
  %800 = load i64, i64* %PC.i450
  %801 = add i64 %800, 6
  store i64 %801, i64* %PC.i450
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %803 = load i8, i8* %802, align 1
  store i8 %803, i8* %BRANCH_TAKEN, align 1
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %805 = icmp ne i8 %803, 0
  %806 = select i1 %805, i64 %797, i64 %799
  store i64 %806, i64* %804, align 8
  store %struct.Memory* %loadMem_41a86e, %struct.Memory** %MEMORY
  %loadBr_41a86e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a86e = icmp eq i8 %loadBr_41a86e, 1
  br i1 %cmpBr_41a86e, label %block_.L_41a881, label %block_41a874

block_41a874:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit454
  %loadMem_41a874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 33
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %809 to i64*
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %811 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %810, i64 0, i64 0
  %YMM0.i449 = bitcast %union.VectorReg* %811 to %"class.std::bitset"*
  %812 = bitcast %"class.std::bitset"* %YMM0.i449 to i8*
  %813 = load i64, i64* %PC.i448
  %814 = add i64 %813, ptrtoint (%G_0x39ed8__rip__type* @G_0x39ed8__rip_ to i64)
  %815 = load i64, i64* %PC.i448
  %816 = add i64 %815, 8
  store i64 %816, i64* %PC.i448
  %817 = inttoptr i64 %814 to float*
  %818 = load float, float* %817
  %819 = bitcast i8* %812 to float*
  store float %818, float* %819, align 1
  %820 = getelementptr inbounds i8, i8* %812, i64 4
  %821 = bitcast i8* %820 to float*
  store float 0.000000e+00, float* %821, align 1
  %822 = getelementptr inbounds i8, i8* %812, i64 8
  %823 = bitcast i8* %822 to float*
  store float 0.000000e+00, float* %823, align 1
  %824 = getelementptr inbounds i8, i8* %812, i64 12
  %825 = bitcast i8* %824 to float*
  store float 0.000000e+00, float* %825, align 1
  store %struct.Memory* %loadMem_41a874, %struct.Memory** %MEMORY
  %loadMem_41a87c = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 15
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %833 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %832, i64 0, i64 0
  %XMM0.i447 = bitcast %union.VectorReg* %833 to %union.vec128_t*
  %834 = load i64, i64* %RBP.i446
  %835 = sub i64 %834, 52
  %836 = bitcast %union.vec128_t* %XMM0.i447 to i8*
  %837 = load i64, i64* %PC.i445
  %838 = add i64 %837, 5
  store i64 %838, i64* %PC.i445
  %839 = bitcast i8* %836 to <2 x float>*
  %840 = load <2 x float>, <2 x float>* %839, align 1
  %841 = extractelement <2 x float> %840, i32 0
  %842 = inttoptr i64 %835 to float*
  store float %841, float* %842
  store %struct.Memory* %loadMem_41a87c, %struct.Memory** %MEMORY
  br label %block_.L_41a881

block_.L_41a881:                                  ; preds = %block_41a874, %routine_ucomisd__xmm1___xmm0.exit454
  %loadMem_41a881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 33
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %845 to i64*
  %846 = load i64, i64* %PC.i444
  %847 = add i64 %846, 5
  %848 = load i64, i64* %PC.i444
  %849 = add i64 %848, 5
  store i64 %849, i64* %PC.i444
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %847, i64* %850, align 8
  store %struct.Memory* %loadMem_41a881, %struct.Memory** %MEMORY
  br label %block_.L_41a886

block_.L_41a886:                                  ; preds = %block_.L_41a881
  %loadMem_41a886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 33
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %853 to i64*
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 1
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %856 to i64*
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 15
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %859 to i64*
  %860 = load i64, i64* %RBP.i443
  %861 = sub i64 %860, 96
  %862 = load i64, i64* %PC.i441
  %863 = add i64 %862, 3
  store i64 %863, i64* %PC.i441
  %864 = inttoptr i64 %861 to i32*
  %865 = load i32, i32* %864
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RAX.i442, align 8
  store %struct.Memory* %loadMem_41a886, %struct.Memory** %MEMORY
  %loadMem_41a889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 1
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %872 to i64*
  %873 = load i64, i64* %RAX.i440
  %874 = load i64, i64* %PC.i439
  %875 = add i64 %874, 3
  store i64 %875, i64* %PC.i439
  %876 = trunc i64 %873 to i32
  %877 = add i32 1, %876
  %878 = zext i32 %877 to i64
  store i64 %878, i64* %RAX.i440, align 8
  %879 = icmp ult i32 %877, %876
  %880 = icmp ult i32 %877, 1
  %881 = or i1 %879, %880
  %882 = zext i1 %881 to i8
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %882, i8* %883, align 1
  %884 = and i32 %877, 255
  %885 = call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %888, i8* %889, align 1
  %890 = xor i64 1, %873
  %891 = trunc i64 %890 to i32
  %892 = xor i32 %891, %877
  %893 = lshr i32 %892, 4
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %895, i8* %896, align 1
  %897 = icmp eq i32 %877, 0
  %898 = zext i1 %897 to i8
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %898, i8* %899, align 1
  %900 = lshr i32 %877, 31
  %901 = trunc i32 %900 to i8
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %901, i8* %902, align 1
  %903 = lshr i32 %876, 31
  %904 = xor i32 %900, %903
  %905 = add i32 %904, %900
  %906 = icmp eq i32 %905, 2
  %907 = zext i1 %906 to i8
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %907, i8* %908, align 1
  store %struct.Memory* %loadMem_41a889, %struct.Memory** %MEMORY
  %loadMem_41a88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %910 = getelementptr inbounds %struct.GPR, %struct.GPR* %909, i32 0, i32 33
  %911 = getelementptr inbounds %struct.Reg, %struct.Reg* %910, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %911 to i64*
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 1
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %EAX.i437 = bitcast %union.anon* %914 to i32*
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 15
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %917 to i64*
  %918 = load i64, i64* %RBP.i438
  %919 = sub i64 %918, 96
  %920 = load i32, i32* %EAX.i437
  %921 = zext i32 %920 to i64
  %922 = load i64, i64* %PC.i436
  %923 = add i64 %922, 3
  store i64 %923, i64* %PC.i436
  %924 = inttoptr i64 %919 to i32*
  store i32 %920, i32* %924
  store %struct.Memory* %loadMem_41a88c, %struct.Memory** %MEMORY
  %loadMem_41a88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 33
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %927 to i64*
  %928 = load i64, i64* %PC.i435
  %929 = add i64 %928, -144
  %930 = load i64, i64* %PC.i435
  %931 = add i64 %930, 5
  store i64 %931, i64* %PC.i435
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %929, i64* %932, align 8
  store %struct.Memory* %loadMem_41a88f, %struct.Memory** %MEMORY
  br label %block_.L_41a7ff

block_.L_41a894:                                  ; preds = %block_41a845, %block_.L_41a7ff
  %loadMem_41a894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 33
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %935 to i64*
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 15
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %938 to i64*
  %939 = load i64, i64* %RBP.i434
  %940 = sub i64 %939, 96
  %941 = load i64, i64* %PC.i433
  %942 = add i64 %941, 4
  store i64 %942, i64* %PC.i433
  %943 = inttoptr i64 %940 to i32*
  %944 = load i32, i32* %943
  %945 = sub i32 %944, 100
  %946 = icmp ult i32 %944, 100
  %947 = zext i1 %946 to i8
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %947, i8* %948, align 1
  %949 = and i32 %945, 255
  %950 = call i32 @llvm.ctpop.i32(i32 %949)
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  %953 = xor i8 %952, 1
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %953, i8* %954, align 1
  %955 = xor i32 %944, 100
  %956 = xor i32 %955, %945
  %957 = lshr i32 %956, 4
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %959, i8* %960, align 1
  %961 = icmp eq i32 %945, 0
  %962 = zext i1 %961 to i8
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %962, i8* %963, align 1
  %964 = lshr i32 %945, 31
  %965 = trunc i32 %964 to i8
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %965, i8* %966, align 1
  %967 = lshr i32 %944, 31
  %968 = xor i32 %964, %967
  %969 = add i32 %968, %967
  %970 = icmp eq i32 %969, 2
  %971 = zext i1 %970 to i8
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %971, i8* %972, align 1
  store %struct.Memory* %loadMem_41a894, %struct.Memory** %MEMORY
  %loadMem_41a898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 33
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %975 to i64*
  %976 = load i64, i64* %PC.i432
  %977 = add i64 %976, 523
  %978 = load i64, i64* %PC.i432
  %979 = add i64 %978, 6
  %980 = load i64, i64* %PC.i432
  %981 = add i64 %980, 6
  store i64 %981, i64* %PC.i432
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %983 = load i8, i8* %982, align 1
  %984 = icmp eq i8 %983, 0
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %BRANCH_TAKEN, align 1
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %987 = select i1 %984, i64 %977, i64 %979
  store i64 %987, i64* %986, align 8
  store %struct.Memory* %loadMem_41a898, %struct.Memory** %MEMORY
  %loadBr_41a898 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a898 = icmp eq i8 %loadBr_41a898, 1
  br i1 %cmpBr_41a898, label %block_.L_41aaa3, label %block_41a89e

block_41a89e:                                     ; preds = %block_.L_41a894
  %loadMem_41a89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 33
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %990 to i64*
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 5
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %RCX.i430 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 15
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %996 to i64*
  %997 = load i64, i64* %RBP.i431
  %998 = sub i64 %997, 60
  %999 = load i64, i64* %PC.i429
  %1000 = add i64 %999, 4
  store i64 %1000, i64* %PC.i429
  store i64 %998, i64* %RCX.i430, align 8
  store %struct.Memory* %loadMem_41a89e, %struct.Memory** %MEMORY
  %loadMem_41a8a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 33
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1003 to i64*
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 15
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 17
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %R8.i428 = bitcast %union.anon* %1009 to i64*
  %1010 = load i64, i64* %RBP.i427
  %1011 = sub i64 %1010, 64
  %1012 = load i64, i64* %PC.i426
  %1013 = add i64 %1012, 4
  store i64 %1013, i64* %PC.i426
  store i64 %1011, i64* %R8.i428, align 8
  store %struct.Memory* %loadMem_41a8a2, %struct.Memory** %MEMORY
  %loadMem_41a8a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 33
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %1016 to i64*
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1018 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1017, i64 0, i64 0
  %YMM0.i425 = bitcast %union.VectorReg* %1018 to %"class.std::bitset"*
  %1019 = bitcast %"class.std::bitset"* %YMM0.i425 to i8*
  %1020 = load i64, i64* %PC.i424
  %1021 = add i64 %1020, ptrtoint (%G_0x39e9e__rip__type* @G_0x39e9e__rip_ to i64)
  %1022 = load i64, i64* %PC.i424
  %1023 = add i64 %1022, 8
  store i64 %1023, i64* %PC.i424
  %1024 = inttoptr i64 %1021 to float*
  %1025 = load float, float* %1024
  %1026 = bitcast i8* %1019 to float*
  store float %1025, float* %1026, align 1
  %1027 = getelementptr inbounds i8, i8* %1019, i64 4
  %1028 = bitcast i8* %1027 to float*
  store float 0.000000e+00, float* %1028, align 1
  %1029 = getelementptr inbounds i8, i8* %1019, i64 8
  %1030 = bitcast i8* %1029 to float*
  store float 0.000000e+00, float* %1030, align 1
  %1031 = getelementptr inbounds i8, i8* %1019, i64 12
  %1032 = bitcast i8* %1031 to float*
  store float 0.000000e+00, float* %1032, align 1
  store %struct.Memory* %loadMem_41a8a6, %struct.Memory** %MEMORY
  %loadMem_41a8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 33
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 15
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %1038 to i64*
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1040 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1039, i64 0, i64 0
  %XMM0.i423 = bitcast %union.VectorReg* %1040 to %union.vec128_t*
  %1041 = load i64, i64* %RBP.i422
  %1042 = sub i64 %1041, 100
  %1043 = bitcast %union.vec128_t* %XMM0.i423 to i8*
  %1044 = load i64, i64* %PC.i421
  %1045 = add i64 %1044, 5
  store i64 %1045, i64* %PC.i421
  %1046 = bitcast i8* %1043 to <2 x float>*
  %1047 = load <2 x float>, <2 x float>* %1046, align 1
  %1048 = extractelement <2 x float> %1047, i32 0
  %1049 = inttoptr i64 %1042 to float*
  store float %1048, float* %1049
  store %struct.Memory* %loadMem_41a8ae, %struct.Memory** %MEMORY
  %loadMem_41a8b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 33
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %1052 to i64*
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 15
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %1055 to i64*
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1057 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1056, i64 0, i64 0
  %XMM0.i420 = bitcast %union.VectorReg* %1057 to %union.vec128_t*
  %1058 = load i64, i64* %RBP.i419
  %1059 = sub i64 %1058, 104
  %1060 = bitcast %union.vec128_t* %XMM0.i420 to i8*
  %1061 = load i64, i64* %PC.i418
  %1062 = add i64 %1061, 5
  store i64 %1062, i64* %PC.i418
  %1063 = bitcast i8* %1060 to <2 x float>*
  %1064 = load <2 x float>, <2 x float>* %1063, align 1
  %1065 = extractelement <2 x float> %1064, i32 0
  %1066 = inttoptr i64 %1059 to float*
  store float %1065, float* %1066
  store %struct.Memory* %loadMem_41a8b3, %struct.Memory** %MEMORY
  %loadMem_41a8b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 33
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %1069 to i64*
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 15
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1074 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1073, i64 0, i64 0
  %XMM0.i417 = bitcast %union.VectorReg* %1074 to %union.vec128_t*
  %1075 = load i64, i64* %RBP.i416
  %1076 = sub i64 %1075, 52
  %1077 = bitcast %union.vec128_t* %XMM0.i417 to i8*
  %1078 = load i64, i64* %PC.i415
  %1079 = add i64 %1078, 5
  store i64 %1079, i64* %PC.i415
  %1080 = bitcast i8* %1077 to <2 x float>*
  %1081 = load <2 x float>, <2 x float>* %1080, align 1
  %1082 = extractelement <2 x float> %1081, i32 0
  %1083 = inttoptr i64 %1076 to float*
  store float %1082, float* %1083
  store %struct.Memory* %loadMem_41a8b8, %struct.Memory** %MEMORY
  %loadMem_41a8bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 33
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 11
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RDI.i413 = bitcast %union.anon* %1089 to i64*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 15
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %1092 to i64*
  %1093 = load i64, i64* %RBP.i414
  %1094 = sub i64 %1093, 16
  %1095 = load i64, i64* %PC.i412
  %1096 = add i64 %1095, 4
  store i64 %1096, i64* %PC.i412
  %1097 = inttoptr i64 %1094 to i64*
  %1098 = load i64, i64* %1097
  store i64 %1098, i64* %RDI.i413, align 8
  store %struct.Memory* %loadMem_41a8bd, %struct.Memory** %MEMORY
  %loadMem_41a8c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 33
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %1101 to i64*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 9
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %RSI.i410 = bitcast %union.anon* %1104 to i64*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 15
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %1107 to i64*
  %1108 = load i64, i64* %RBP.i411
  %1109 = sub i64 %1108, 24
  %1110 = load i64, i64* %PC.i409
  %1111 = add i64 %1110, 4
  store i64 %1111, i64* %PC.i409
  %1112 = inttoptr i64 %1109 to i64*
  %1113 = load i64, i64* %1112
  store i64 %1113, i64* %RSI.i410, align 8
  store %struct.Memory* %loadMem_41a8c1, %struct.Memory** %MEMORY
  %loadMem_41a8c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 33
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 7
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %RDX.i407 = bitcast %union.anon* %1119 to i64*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 15
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %1122 to i64*
  %1123 = load i64, i64* %RBP.i408
  %1124 = sub i64 %1123, 28
  %1125 = load i64, i64* %PC.i406
  %1126 = add i64 %1125, 3
  store i64 %1126, i64* %PC.i406
  %1127 = inttoptr i64 %1124 to i32*
  %1128 = load i32, i32* %1127
  %1129 = zext i32 %1128 to i64
  store i64 %1129, i64* %RDX.i407, align 8
  store %struct.Memory* %loadMem_41a8c5, %struct.Memory** %MEMORY
  %loadMem_41a8c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 33
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %1132 to i64*
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 15
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %1135 to i64*
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1137 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1136, i64 0, i64 0
  %YMM0.i405 = bitcast %union.VectorReg* %1137 to %"class.std::bitset"*
  %1138 = bitcast %"class.std::bitset"* %YMM0.i405 to i8*
  %1139 = load i64, i64* %RBP.i404
  %1140 = sub i64 %1139, 52
  %1141 = load i64, i64* %PC.i403
  %1142 = add i64 %1141, 5
  store i64 %1142, i64* %PC.i403
  %1143 = inttoptr i64 %1140 to float*
  %1144 = load float, float* %1143
  %1145 = bitcast i8* %1138 to float*
  store float %1144, float* %1145, align 1
  %1146 = getelementptr inbounds i8, i8* %1138, i64 4
  %1147 = bitcast i8* %1146 to float*
  store float 0.000000e+00, float* %1147, align 1
  %1148 = getelementptr inbounds i8, i8* %1138, i64 8
  %1149 = bitcast i8* %1148 to float*
  store float 0.000000e+00, float* %1149, align 1
  %1150 = getelementptr inbounds i8, i8* %1138, i64 12
  %1151 = bitcast i8* %1150 to float*
  store float 0.000000e+00, float* %1151, align 1
  store %struct.Memory* %loadMem_41a8c8, %struct.Memory** %MEMORY
  %loadMem1_41a8cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1154 to i64*
  %1155 = load i64, i64* %PC.i402
  %1156 = add i64 %1155, 755
  %1157 = load i64, i64* %PC.i402
  %1158 = add i64 %1157, 5
  %1159 = load i64, i64* %PC.i402
  %1160 = add i64 %1159, 5
  store i64 %1160, i64* %PC.i402
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1162 = load i64, i64* %1161, align 8
  %1163 = add i64 %1162, -8
  %1164 = inttoptr i64 %1163 to i64*
  store i64 %1158, i64* %1164
  store i64 %1163, i64* %1161, align 8
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1156, i64* %1165, align 8
  store %struct.Memory* %loadMem1_41a8cd, %struct.Memory** %MEMORY
  %loadMem2_41a8cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a8cd = load i64, i64* %3
  %call2_41a8cd = call %struct.Memory* @sub_41abc0.Lawless416(%struct.State* %0, i64 %loadPC_41a8cd, %struct.Memory* %loadMem2_41a8cd)
  store %struct.Memory* %call2_41a8cd, %struct.Memory** %MEMORY
  %loadMem_41a8d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 33
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1170 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1169, i64 0, i64 0
  %YMM0.i400 = bitcast %union.VectorReg* %1170 to %"class.std::bitset"*
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1172 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1171, i64 0, i64 0
  %XMM0.i401 = bitcast %union.VectorReg* %1172 to %union.vec128_t*
  %1173 = bitcast %"class.std::bitset"* %YMM0.i400 to i8*
  %1174 = bitcast %"class.std::bitset"* %YMM0.i400 to i8*
  %1175 = bitcast %union.vec128_t* %XMM0.i401 to i8*
  %1176 = load i64, i64* %PC.i399
  %1177 = add i64 %1176, 3
  store i64 %1177, i64* %PC.i399
  %1178 = bitcast i8* %1174 to i64*
  %1179 = load i64, i64* %1178, align 1
  %1180 = getelementptr inbounds i8, i8* %1174, i64 8
  %1181 = bitcast i8* %1180 to i64*
  %1182 = load i64, i64* %1181, align 1
  %1183 = bitcast i8* %1175 to i64*
  %1184 = load i64, i64* %1183, align 1
  %1185 = getelementptr inbounds i8, i8* %1175, i64 8
  %1186 = bitcast i8* %1185 to i64*
  %1187 = load i64, i64* %1186, align 1
  %1188 = xor i64 %1184, %1179
  %1189 = xor i64 %1187, %1182
  %1190 = trunc i64 %1188 to i32
  %1191 = lshr i64 %1188, 32
  %1192 = trunc i64 %1191 to i32
  %1193 = bitcast i8* %1173 to i32*
  store i32 %1190, i32* %1193, align 1
  %1194 = getelementptr inbounds i8, i8* %1173, i64 4
  %1195 = bitcast i8* %1194 to i32*
  store i32 %1192, i32* %1195, align 1
  %1196 = trunc i64 %1189 to i32
  %1197 = getelementptr inbounds i8, i8* %1173, i64 8
  %1198 = bitcast i8* %1197 to i32*
  store i32 %1196, i32* %1198, align 1
  %1199 = lshr i64 %1189, 32
  %1200 = trunc i64 %1199 to i32
  %1201 = getelementptr inbounds i8, i8* %1173, i64 12
  %1202 = bitcast i8* %1201 to i32*
  store i32 %1200, i32* %1202, align 1
  store %struct.Memory* %loadMem_41a8d2, %struct.Memory** %MEMORY
  %loadMem_41a8d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 33
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1205 to i64*
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 15
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %1208 to i64*
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1210 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1209, i64 0, i64 1
  %YMM1.i398 = bitcast %union.VectorReg* %1210 to %"class.std::bitset"*
  %1211 = bitcast %"class.std::bitset"* %YMM1.i398 to i8*
  %1212 = load i64, i64* %RBP.i397
  %1213 = sub i64 %1212, 60
  %1214 = load i64, i64* %PC.i396
  %1215 = add i64 %1214, 5
  store i64 %1215, i64* %PC.i396
  %1216 = inttoptr i64 %1213 to float*
  %1217 = load float, float* %1216
  %1218 = fpext float %1217 to double
  %1219 = bitcast i8* %1211 to double*
  store double %1218, double* %1219, align 1
  store %struct.Memory* %loadMem_41a8d5, %struct.Memory** %MEMORY
  %loadMem_41a8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 33
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %1222 to i64*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1224 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1223, i64 0, i64 0
  %XMM0.i390 = bitcast %union.VectorReg* %1224 to %union.vec128_t*
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1226 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1225, i64 0, i64 1
  %XMM1.i391 = bitcast %union.VectorReg* %1226 to %union.vec128_t*
  %1227 = bitcast %union.vec128_t* %XMM0.i390 to i8*
  %1228 = bitcast %union.vec128_t* %XMM1.i391 to i8*
  %1229 = load i64, i64* %PC.i389
  %1230 = add i64 %1229, 4
  store i64 %1230, i64* %PC.i389
  %1231 = bitcast i8* %1227 to double*
  %1232 = load double, double* %1231, align 1
  %1233 = bitcast i8* %1228 to double*
  %1234 = load double, double* %1233, align 1
  %1235 = fcmp uno double %1232, %1234
  br i1 %1235, label %1236, label %1248

; <label>:1236:                                   ; preds = %block_41a89e
  %1237 = fadd double %1232, %1234
  %1238 = bitcast double %1237 to i64
  %1239 = and i64 %1238, 9221120237041090560
  %1240 = icmp eq i64 %1239, 9218868437227405312
  %1241 = and i64 %1238, 2251799813685247
  %1242 = icmp ne i64 %1241, 0
  %1243 = and i1 %1240, %1242
  br i1 %1243, label %1244, label %1254

; <label>:1244:                                   ; preds = %1236
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1246 = load i64, i64* %1245, align 8
  %1247 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1246, %struct.Memory* %loadMem_41a8da)
  br label %routine_ucomisd__xmm1___xmm0.exit392

; <label>:1248:                                   ; preds = %block_41a89e
  %1249 = fcmp ogt double %1232, %1234
  br i1 %1249, label %1254, label %1250

; <label>:1250:                                   ; preds = %1248
  %1251 = fcmp olt double %1232, %1234
  br i1 %1251, label %1254, label %1252

; <label>:1252:                                   ; preds = %1250
  %1253 = fcmp oeq double %1232, %1234
  br i1 %1253, label %1254, label %1261

; <label>:1254:                                   ; preds = %1252, %1250, %1248, %1236
  %1255 = phi i8 [ 0, %1248 ], [ 0, %1250 ], [ 1, %1252 ], [ 1, %1236 ]
  %1256 = phi i8 [ 0, %1248 ], [ 0, %1250 ], [ 0, %1252 ], [ 1, %1236 ]
  %1257 = phi i8 [ 0, %1248 ], [ 1, %1250 ], [ 0, %1252 ], [ 1, %1236 ]
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1255, i8* %1258, align 1
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1256, i8* %1259, align 1
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1257, i8* %1260, align 1
  br label %1261

; <label>:1261:                                   ; preds = %1254, %1252
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1262, align 1
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1263, align 1
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1264, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit392

routine_ucomisd__xmm1___xmm0.exit392:             ; preds = %1244, %1261
  %1265 = phi %struct.Memory* [ %1247, %1244 ], [ %loadMem_41a8da, %1261 ]
  store %struct.Memory* %1265, %struct.Memory** %MEMORY
  %loadMem_41a8de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 33
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %1268 to i64*
  %1269 = load i64, i64* %PC.i388
  %1270 = add i64 %1269, 119
  %1271 = load i64, i64* %PC.i388
  %1272 = add i64 %1271, 6
  %1273 = load i64, i64* %PC.i388
  %1274 = add i64 %1273, 6
  store i64 %1274, i64* %PC.i388
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1276 = load i8, i8* %1275, align 1
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1278 = load i8, i8* %1277, align 1
  %1279 = or i8 %1278, %1276
  %1280 = icmp ne i8 %1279, 0
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %BRANCH_TAKEN, align 1
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1283 = select i1 %1280, i64 %1270, i64 %1272
  store i64 %1283, i64* %1282, align 8
  store %struct.Memory* %loadMem_41a8de, %struct.Memory** %MEMORY
  %loadBr_41a8de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a8de = icmp eq i8 %loadBr_41a8de, 1
  br i1 %cmpBr_41a8de, label %block_.L_41a955, label %block_41a8e4

block_41a8e4:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit392
  %loadMem_41a8e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 33
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %1286 to i64*
  %1287 = load i64, i64* %PC.i387
  %1288 = add i64 %1287, 5
  %1289 = load i64, i64* %PC.i387
  %1290 = add i64 %1289, 5
  store i64 %1290, i64* %PC.i387
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1288, i64* %1291, align 8
  store %struct.Memory* %loadMem_41a8e4, %struct.Memory** %MEMORY
  br label %block_.L_41a8e9

block_.L_41a8e9:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit, %block_41a8e4
  %loadMem_41a8e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 33
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %1294 to i64*
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1296 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1295, i64 0, i64 0
  %YMM0.i385 = bitcast %union.VectorReg* %1296 to %"class.std::bitset"*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1298 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1297, i64 0, i64 0
  %XMM0.i386 = bitcast %union.VectorReg* %1298 to %union.vec128_t*
  %1299 = bitcast %"class.std::bitset"* %YMM0.i385 to i8*
  %1300 = bitcast %"class.std::bitset"* %YMM0.i385 to i8*
  %1301 = bitcast %union.vec128_t* %XMM0.i386 to i8*
  %1302 = load i64, i64* %PC.i384
  %1303 = add i64 %1302, 3
  store i64 %1303, i64* %PC.i384
  %1304 = bitcast i8* %1300 to i64*
  %1305 = load i64, i64* %1304, align 1
  %1306 = getelementptr inbounds i8, i8* %1300, i64 8
  %1307 = bitcast i8* %1306 to i64*
  %1308 = load i64, i64* %1307, align 1
  %1309 = bitcast i8* %1301 to i64*
  %1310 = load i64, i64* %1309, align 1
  %1311 = getelementptr inbounds i8, i8* %1301, i64 8
  %1312 = bitcast i8* %1311 to i64*
  %1313 = load i64, i64* %1312, align 1
  %1314 = xor i64 %1310, %1305
  %1315 = xor i64 %1313, %1308
  %1316 = trunc i64 %1314 to i32
  %1317 = lshr i64 %1314, 32
  %1318 = trunc i64 %1317 to i32
  %1319 = bitcast i8* %1299 to i32*
  store i32 %1316, i32* %1319, align 1
  %1320 = getelementptr inbounds i8, i8* %1299, i64 4
  %1321 = bitcast i8* %1320 to i32*
  store i32 %1318, i32* %1321, align 1
  %1322 = trunc i64 %1315 to i32
  %1323 = getelementptr inbounds i8, i8* %1299, i64 8
  %1324 = bitcast i8* %1323 to i32*
  store i32 %1322, i32* %1324, align 1
  %1325 = lshr i64 %1315, 32
  %1326 = trunc i64 %1325 to i32
  %1327 = getelementptr inbounds i8, i8* %1299, i64 12
  %1328 = bitcast i8* %1327 to i32*
  store i32 %1326, i32* %1328, align 1
  store %struct.Memory* %loadMem_41a8e9, %struct.Memory** %MEMORY
  %loadMem_41a8ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 33
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %1331 to i64*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1333 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1332, i64 0, i64 1
  %YMM1.i383 = bitcast %union.VectorReg* %1333 to %"class.std::bitset"*
  %1334 = bitcast %"class.std::bitset"* %YMM1.i383 to i8*
  %1335 = load i64, i64* %PC.i382
  %1336 = add i64 %1335, ptrtoint (%G_0x39f7c__rip__type* @G_0x39f7c__rip_ to i64)
  %1337 = load i64, i64* %PC.i382
  %1338 = add i64 %1337, 8
  store i64 %1338, i64* %PC.i382
  %1339 = inttoptr i64 %1336 to double*
  %1340 = load double, double* %1339
  %1341 = bitcast i8* %1334 to double*
  store double %1340, double* %1341, align 1
  %1342 = getelementptr inbounds i8, i8* %1334, i64 8
  %1343 = bitcast i8* %1342 to double*
  store double 0.000000e+00, double* %1343, align 1
  store %struct.Memory* %loadMem_41a8ec, %struct.Memory** %MEMORY
  %loadMem_41a8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 33
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %1346 to i64*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 15
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %1349 to i64*
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1351 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1350, i64 0, i64 2
  %YMM2.i381 = bitcast %union.VectorReg* %1351 to %"class.std::bitset"*
  %1352 = bitcast %"class.std::bitset"* %YMM2.i381 to i8*
  %1353 = load i64, i64* %RBP.i380
  %1354 = sub i64 %1353, 100
  %1355 = load i64, i64* %PC.i379
  %1356 = add i64 %1355, 5
  store i64 %1356, i64* %PC.i379
  %1357 = inttoptr i64 %1354 to float*
  %1358 = load float, float* %1357
  %1359 = fpext float %1358 to double
  %1360 = bitcast i8* %1352 to double*
  store double %1359, double* %1360, align 1
  store %struct.Memory* %loadMem_41a8f4, %struct.Memory** %MEMORY
  %loadMem_41a8f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 33
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %1363 to i64*
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1365 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1364, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %1365 to %"class.std::bitset"*
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1367 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1366, i64 0, i64 1
  %XMM1.i378 = bitcast %union.VectorReg* %1367 to %union.vec128_t*
  %1368 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %1369 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %1370 = bitcast %union.vec128_t* %XMM1.i378 to i8*
  %1371 = load i64, i64* %PC.i377
  %1372 = add i64 %1371, 4
  store i64 %1372, i64* %PC.i377
  %1373 = bitcast i8* %1369 to double*
  %1374 = load double, double* %1373, align 1
  %1375 = getelementptr inbounds i8, i8* %1369, i64 8
  %1376 = bitcast i8* %1375 to i64*
  %1377 = load i64, i64* %1376, align 1
  %1378 = bitcast i8* %1370 to double*
  %1379 = load double, double* %1378, align 1
  %1380 = fsub double %1374, %1379
  %1381 = bitcast i8* %1368 to double*
  store double %1380, double* %1381, align 1
  %1382 = getelementptr inbounds i8, i8* %1368, i64 8
  %1383 = bitcast i8* %1382 to i64*
  store i64 %1377, i64* %1383, align 1
  store %struct.Memory* %loadMem_41a8f9, %struct.Memory** %MEMORY
  %loadMem_41a8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 33
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1386 to i64*
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1388 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1387, i64 0, i64 1
  %YMM1.i376 = bitcast %union.VectorReg* %1388 to %"class.std::bitset"*
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1390 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1389, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %1390 to %union.vec128_t*
  %1391 = bitcast %"class.std::bitset"* %YMM1.i376 to i8*
  %1392 = bitcast %union.vec128_t* %XMM2.i to i8*
  %1393 = load i64, i64* %PC.i375
  %1394 = add i64 %1393, 4
  store i64 %1394, i64* %PC.i375
  %1395 = bitcast i8* %1391 to <2 x i32>*
  %1396 = load <2 x i32>, <2 x i32>* %1395, align 1
  %1397 = getelementptr inbounds i8, i8* %1391, i64 8
  %1398 = bitcast i8* %1397 to <2 x i32>*
  %1399 = load <2 x i32>, <2 x i32>* %1398, align 1
  %1400 = bitcast i8* %1392 to double*
  %1401 = load double, double* %1400, align 1
  %1402 = fptrunc double %1401 to float
  %1403 = bitcast i8* %1391 to float*
  store float %1402, float* %1403, align 1
  %1404 = extractelement <2 x i32> %1396, i32 1
  %1405 = getelementptr inbounds i8, i8* %1391, i64 4
  %1406 = bitcast i8* %1405 to i32*
  store i32 %1404, i32* %1406, align 1
  %1407 = extractelement <2 x i32> %1399, i32 0
  %1408 = bitcast i8* %1397 to i32*
  store i32 %1407, i32* %1408, align 1
  %1409 = extractelement <2 x i32> %1399, i32 1
  %1410 = getelementptr inbounds i8, i8* %1391, i64 12
  %1411 = bitcast i8* %1410 to i32*
  store i32 %1409, i32* %1411, align 1
  store %struct.Memory* %loadMem_41a8fd, %struct.Memory** %MEMORY
  %loadMem_41a901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 33
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 15
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %1417 to i64*
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1419 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1418, i64 0, i64 1
  %XMM1.i374 = bitcast %union.VectorReg* %1419 to %union.vec128_t*
  %1420 = load i64, i64* %RBP.i373
  %1421 = sub i64 %1420, 100
  %1422 = bitcast %union.vec128_t* %XMM1.i374 to i8*
  %1423 = load i64, i64* %PC.i372
  %1424 = add i64 %1423, 5
  store i64 %1424, i64* %PC.i372
  %1425 = bitcast i8* %1422 to <2 x float>*
  %1426 = load <2 x float>, <2 x float>* %1425, align 1
  %1427 = extractelement <2 x float> %1426, i32 0
  %1428 = inttoptr i64 %1421 to float*
  store float %1427, float* %1428
  store %struct.Memory* %loadMem_41a901, %struct.Memory** %MEMORY
  %loadMem_41a906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 33
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 15
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %1434 to i64*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1436 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1435, i64 0, i64 1
  %YMM1.i371 = bitcast %union.VectorReg* %1436 to %"class.std::bitset"*
  %1437 = bitcast %"class.std::bitset"* %YMM1.i371 to i8*
  %1438 = load i64, i64* %RBP.i370
  %1439 = sub i64 %1438, 100
  %1440 = load i64, i64* %PC.i369
  %1441 = add i64 %1440, 5
  store i64 %1441, i64* %PC.i369
  %1442 = inttoptr i64 %1439 to float*
  %1443 = load float, float* %1442
  %1444 = fpext float %1443 to double
  %1445 = bitcast i8* %1437 to double*
  store double %1444, double* %1445, align 1
  store %struct.Memory* %loadMem_41a906, %struct.Memory** %MEMORY
  %loadMem_41a90b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 33
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %1448 to i64*
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1450 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1449, i64 0, i64 0
  %XMM0.i363 = bitcast %union.VectorReg* %1450 to %union.vec128_t*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1452 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1451, i64 0, i64 1
  %XMM1.i364 = bitcast %union.VectorReg* %1452 to %union.vec128_t*
  %1453 = bitcast %union.vec128_t* %XMM0.i363 to i8*
  %1454 = bitcast %union.vec128_t* %XMM1.i364 to i8*
  %1455 = load i64, i64* %PC.i362
  %1456 = add i64 %1455, 4
  store i64 %1456, i64* %PC.i362
  %1457 = bitcast i8* %1453 to double*
  %1458 = load double, double* %1457, align 1
  %1459 = bitcast i8* %1454 to double*
  %1460 = load double, double* %1459, align 1
  %1461 = fcmp uno double %1458, %1460
  br i1 %1461, label %1462, label %1474

; <label>:1462:                                   ; preds = %block_.L_41a8e9
  %1463 = fadd double %1458, %1460
  %1464 = bitcast double %1463 to i64
  %1465 = and i64 %1464, 9221120237041090560
  %1466 = icmp eq i64 %1465, 9218868437227405312
  %1467 = and i64 %1464, 2251799813685247
  %1468 = icmp ne i64 %1467, 0
  %1469 = and i1 %1466, %1468
  br i1 %1469, label %1470, label %1480

; <label>:1470:                                   ; preds = %1462
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1472 = load i64, i64* %1471, align 8
  %1473 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1472, %struct.Memory* %loadMem_41a90b)
  br label %routine_ucomisd__xmm1___xmm0.exit365

; <label>:1474:                                   ; preds = %block_.L_41a8e9
  %1475 = fcmp ogt double %1458, %1460
  br i1 %1475, label %1480, label %1476

; <label>:1476:                                   ; preds = %1474
  %1477 = fcmp olt double %1458, %1460
  br i1 %1477, label %1480, label %1478

; <label>:1478:                                   ; preds = %1476
  %1479 = fcmp oeq double %1458, %1460
  br i1 %1479, label %1480, label %1487

; <label>:1480:                                   ; preds = %1478, %1476, %1474, %1462
  %1481 = phi i8 [ 0, %1474 ], [ 0, %1476 ], [ 1, %1478 ], [ 1, %1462 ]
  %1482 = phi i8 [ 0, %1474 ], [ 0, %1476 ], [ 0, %1478 ], [ 1, %1462 ]
  %1483 = phi i8 [ 0, %1474 ], [ 1, %1476 ], [ 0, %1478 ], [ 1, %1462 ]
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1481, i8* %1484, align 1
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1482, i8* %1485, align 1
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1483, i8* %1486, align 1
  br label %1487

; <label>:1487:                                   ; preds = %1480, %1478
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1488, align 1
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1489, align 1
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1490, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit365

routine_ucomisd__xmm1___xmm0.exit365:             ; preds = %1470, %1487
  %1491 = phi %struct.Memory* [ %1473, %1470 ], [ %loadMem_41a90b, %1487 ]
  store %struct.Memory* %1491, %struct.Memory** %MEMORY
  %loadMem_41a90f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 33
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %1494 to i64*
  %1495 = load i64, i64* %PC.i361
  %1496 = add i64 %1495, 18
  %1497 = load i64, i64* %PC.i361
  %1498 = add i64 %1497, 6
  %1499 = load i64, i64* %PC.i361
  %1500 = add i64 %1499, 6
  store i64 %1500, i64* %PC.i361
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1502 = load i8, i8* %1501, align 1
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1504 = load i8, i8* %1503, align 1
  %1505 = or i8 %1504, %1502
  %1506 = icmp ne i8 %1505, 0
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %BRANCH_TAKEN, align 1
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1509 = select i1 %1506, i64 %1496, i64 %1498
  store i64 %1509, i64* %1508, align 8
  store %struct.Memory* %loadMem_41a90f, %struct.Memory** %MEMORY
  %loadBr_41a90f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a90f = icmp eq i8 %loadBr_41a90f, 1
  br i1 %cmpBr_41a90f, label %block_.L_41a921, label %block_41a915

block_41a915:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit365
  %loadMem_41a915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 15
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %1515 to i64*
  %1516 = load i64, i64* %RBP.i360
  %1517 = sub i64 %1516, 4
  %1518 = load i64, i64* %PC.i359
  %1519 = add i64 %1518, 7
  store i64 %1519, i64* %PC.i359
  %1520 = inttoptr i64 %1517 to i32*
  store i32 0, i32* %1520
  store %struct.Memory* %loadMem_41a915, %struct.Memory** %MEMORY
  %loadMem_41a91c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 33
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %1523 to i64*
  %1524 = load i64, i64* %PC.i358
  %1525 = add i64 %1524, 654
  %1526 = load i64, i64* %PC.i358
  %1527 = add i64 %1526, 5
  store i64 %1527, i64* %PC.i358
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1525, i64* %1528, align 8
  store %struct.Memory* %loadMem_41a91c, %struct.Memory** %MEMORY
  br label %block_.L_41abaa

block_.L_41a921:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit365
  %loadMem_41a921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 33
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 5
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RCX.i356 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 15
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %1537 to i64*
  %1538 = load i64, i64* %RBP.i357
  %1539 = sub i64 %1538, 60
  %1540 = load i64, i64* %PC.i355
  %1541 = add i64 %1540, 4
  store i64 %1541, i64* %PC.i355
  store i64 %1539, i64* %RCX.i356, align 8
  store %struct.Memory* %loadMem_41a921, %struct.Memory** %MEMORY
  %loadMem_41a925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 15
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 17
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %R8.i354 = bitcast %union.anon* %1550 to i64*
  %1551 = load i64, i64* %RBP.i353
  %1552 = sub i64 %1551, 64
  %1553 = load i64, i64* %PC.i352
  %1554 = add i64 %1553, 4
  store i64 %1554, i64* %PC.i352
  store i64 %1552, i64* %R8.i354, align 8
  store %struct.Memory* %loadMem_41a925, %struct.Memory** %MEMORY
  %loadMem_41a929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 11
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RDI.i350 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 15
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %1563 to i64*
  %1564 = load i64, i64* %RBP.i351
  %1565 = sub i64 %1564, 16
  %1566 = load i64, i64* %PC.i349
  %1567 = add i64 %1566, 4
  store i64 %1567, i64* %PC.i349
  %1568 = inttoptr i64 %1565 to i64*
  %1569 = load i64, i64* %1568
  store i64 %1569, i64* %RDI.i350, align 8
  store %struct.Memory* %loadMem_41a929, %struct.Memory** %MEMORY
  %loadMem_41a92d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 33
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %1572 to i64*
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 9
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %RSI.i347 = bitcast %union.anon* %1575 to i64*
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 15
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %1578 to i64*
  %1579 = load i64, i64* %RBP.i348
  %1580 = sub i64 %1579, 24
  %1581 = load i64, i64* %PC.i346
  %1582 = add i64 %1581, 4
  store i64 %1582, i64* %PC.i346
  %1583 = inttoptr i64 %1580 to i64*
  %1584 = load i64, i64* %1583
  store i64 %1584, i64* %RSI.i347, align 8
  store %struct.Memory* %loadMem_41a92d, %struct.Memory** %MEMORY
  %loadMem_41a931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 33
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %1587 to i64*
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 7
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %RDX.i344 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 15
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %1593 to i64*
  %1594 = load i64, i64* %RBP.i345
  %1595 = sub i64 %1594, 28
  %1596 = load i64, i64* %PC.i343
  %1597 = add i64 %1596, 3
  store i64 %1597, i64* %PC.i343
  %1598 = inttoptr i64 %1595 to i32*
  %1599 = load i32, i32* %1598
  %1600 = zext i32 %1599 to i64
  store i64 %1600, i64* %RDX.i344, align 8
  store %struct.Memory* %loadMem_41a931, %struct.Memory** %MEMORY
  %loadMem_41a934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 33
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1603 to i64*
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 15
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %1606 to i64*
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1608 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1607, i64 0, i64 0
  %YMM0.i342 = bitcast %union.VectorReg* %1608 to %"class.std::bitset"*
  %1609 = bitcast %"class.std::bitset"* %YMM0.i342 to i8*
  %1610 = load i64, i64* %RBP.i341
  %1611 = sub i64 %1610, 100
  %1612 = load i64, i64* %PC.i340
  %1613 = add i64 %1612, 5
  store i64 %1613, i64* %PC.i340
  %1614 = inttoptr i64 %1611 to float*
  %1615 = load float, float* %1614
  %1616 = bitcast i8* %1609 to float*
  store float %1615, float* %1616, align 1
  %1617 = getelementptr inbounds i8, i8* %1609, i64 4
  %1618 = bitcast i8* %1617 to float*
  store float 0.000000e+00, float* %1618, align 1
  %1619 = getelementptr inbounds i8, i8* %1609, i64 8
  %1620 = bitcast i8* %1619 to float*
  store float 0.000000e+00, float* %1620, align 1
  %1621 = getelementptr inbounds i8, i8* %1609, i64 12
  %1622 = bitcast i8* %1621 to float*
  store float 0.000000e+00, float* %1622, align 1
  store %struct.Memory* %loadMem_41a934, %struct.Memory** %MEMORY
  %loadMem1_41a939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 33
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %1625 to i64*
  %1626 = load i64, i64* %PC.i339
  %1627 = add i64 %1626, 647
  %1628 = load i64, i64* %PC.i339
  %1629 = add i64 %1628, 5
  %1630 = load i64, i64* %PC.i339
  %1631 = add i64 %1630, 5
  store i64 %1631, i64* %PC.i339
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1633 = load i64, i64* %1632, align 8
  %1634 = add i64 %1633, -8
  %1635 = inttoptr i64 %1634 to i64*
  store i64 %1629, i64* %1635
  store i64 %1634, i64* %1632, align 8
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1627, i64* %1636, align 8
  store %struct.Memory* %loadMem1_41a939, %struct.Memory** %MEMORY
  %loadMem2_41a939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a939 = load i64, i64* %3
  %call2_41a939 = call %struct.Memory* @sub_41abc0.Lawless416(%struct.State* %0, i64 %loadPC_41a939, %struct.Memory* %loadMem2_41a939)
  store %struct.Memory* %call2_41a939, %struct.Memory** %MEMORY
  %loadMem_41a93e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 33
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %1639 to i64*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1641 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1640, i64 0, i64 0
  %YMM0.i337 = bitcast %union.VectorReg* %1641 to %"class.std::bitset"*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1643 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1642, i64 0, i64 0
  %XMM0.i338 = bitcast %union.VectorReg* %1643 to %union.vec128_t*
  %1644 = bitcast %"class.std::bitset"* %YMM0.i337 to i8*
  %1645 = bitcast %"class.std::bitset"* %YMM0.i337 to i8*
  %1646 = bitcast %union.vec128_t* %XMM0.i338 to i8*
  %1647 = load i64, i64* %PC.i336
  %1648 = add i64 %1647, 3
  store i64 %1648, i64* %PC.i336
  %1649 = bitcast i8* %1645 to i64*
  %1650 = load i64, i64* %1649, align 1
  %1651 = getelementptr inbounds i8, i8* %1645, i64 8
  %1652 = bitcast i8* %1651 to i64*
  %1653 = load i64, i64* %1652, align 1
  %1654 = bitcast i8* %1646 to i64*
  %1655 = load i64, i64* %1654, align 1
  %1656 = getelementptr inbounds i8, i8* %1646, i64 8
  %1657 = bitcast i8* %1656 to i64*
  %1658 = load i64, i64* %1657, align 1
  %1659 = xor i64 %1655, %1650
  %1660 = xor i64 %1658, %1653
  %1661 = trunc i64 %1659 to i32
  %1662 = lshr i64 %1659, 32
  %1663 = trunc i64 %1662 to i32
  %1664 = bitcast i8* %1644 to i32*
  store i32 %1661, i32* %1664, align 1
  %1665 = getelementptr inbounds i8, i8* %1644, i64 4
  %1666 = bitcast i8* %1665 to i32*
  store i32 %1663, i32* %1666, align 1
  %1667 = trunc i64 %1660 to i32
  %1668 = getelementptr inbounds i8, i8* %1644, i64 8
  %1669 = bitcast i8* %1668 to i32*
  store i32 %1667, i32* %1669, align 1
  %1670 = lshr i64 %1660, 32
  %1671 = trunc i64 %1670 to i32
  %1672 = getelementptr inbounds i8, i8* %1644, i64 12
  %1673 = bitcast i8* %1672 to i32*
  store i32 %1671, i32* %1673, align 1
  store %struct.Memory* %loadMem_41a93e, %struct.Memory** %MEMORY
  %loadMem_41a941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 33
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %1676 to i64*
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 15
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %1679 to i64*
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1681 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1680, i64 0, i64 1
  %YMM1.i335 = bitcast %union.VectorReg* %1681 to %"class.std::bitset"*
  %1682 = bitcast %"class.std::bitset"* %YMM1.i335 to i8*
  %1683 = load i64, i64* %RBP.i334
  %1684 = sub i64 %1683, 60
  %1685 = load i64, i64* %PC.i333
  %1686 = add i64 %1685, 5
  store i64 %1686, i64* %PC.i333
  %1687 = inttoptr i64 %1684 to float*
  %1688 = load float, float* %1687
  %1689 = fpext float %1688 to double
  %1690 = bitcast i8* %1682 to double*
  store double %1689, double* %1690, align 1
  store %struct.Memory* %loadMem_41a941, %struct.Memory** %MEMORY
  %loadMem_41a946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 33
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1693 to i64*
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1695 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1694, i64 0, i64 0
  %XMM0.i329 = bitcast %union.VectorReg* %1695 to %union.vec128_t*
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1697 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1696, i64 0, i64 1
  %XMM1.i330 = bitcast %union.VectorReg* %1697 to %union.vec128_t*
  %1698 = bitcast %union.vec128_t* %XMM0.i329 to i8*
  %1699 = bitcast %union.vec128_t* %XMM1.i330 to i8*
  %1700 = load i64, i64* %PC.i328
  %1701 = add i64 %1700, 4
  store i64 %1701, i64* %PC.i328
  %1702 = bitcast i8* %1698 to double*
  %1703 = load double, double* %1702, align 1
  %1704 = bitcast i8* %1699 to double*
  %1705 = load double, double* %1704, align 1
  %1706 = fcmp uno double %1703, %1705
  br i1 %1706, label %1707, label %1719

; <label>:1707:                                   ; preds = %block_.L_41a921
  %1708 = fadd double %1703, %1705
  %1709 = bitcast double %1708 to i64
  %1710 = and i64 %1709, 9221120237041090560
  %1711 = icmp eq i64 %1710, 9218868437227405312
  %1712 = and i64 %1709, 2251799813685247
  %1713 = icmp ne i64 %1712, 0
  %1714 = and i1 %1711, %1713
  br i1 %1714, label %1715, label %1725

; <label>:1715:                                   ; preds = %1707
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1717 = load i64, i64* %1716, align 8
  %1718 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1717, %struct.Memory* %loadMem_41a946)
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:1719:                                   ; preds = %block_.L_41a921
  %1720 = fcmp ogt double %1703, %1705
  br i1 %1720, label %1725, label %1721

; <label>:1721:                                   ; preds = %1719
  %1722 = fcmp olt double %1703, %1705
  br i1 %1722, label %1725, label %1723

; <label>:1723:                                   ; preds = %1721
  %1724 = fcmp oeq double %1703, %1705
  br i1 %1724, label %1725, label %1732

; <label>:1725:                                   ; preds = %1723, %1721, %1719, %1707
  %1726 = phi i8 [ 0, %1719 ], [ 0, %1721 ], [ 1, %1723 ], [ 1, %1707 ]
  %1727 = phi i8 [ 0, %1719 ], [ 0, %1721 ], [ 0, %1723 ], [ 1, %1707 ]
  %1728 = phi i8 [ 0, %1719 ], [ 1, %1721 ], [ 0, %1723 ], [ 1, %1707 ]
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1726, i8* %1729, align 1
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1727, i8* %1730, align 1
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1728, i8* %1731, align 1
  br label %1732

; <label>:1732:                                   ; preds = %1725, %1723
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1733, align 1
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1734, align 1
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1735, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %1715, %1732
  %1736 = phi %struct.Memory* [ %1718, %1715 ], [ %loadMem_41a946, %1732 ]
  store %struct.Memory* %1736, %struct.Memory** %MEMORY
  %loadMem_41a94a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 33
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %1739 to i64*
  %1740 = load i64, i64* %PC.i327
  %1741 = add i64 %1740, -97
  %1742 = load i64, i64* %PC.i327
  %1743 = add i64 %1742, 6
  %1744 = load i64, i64* %PC.i327
  %1745 = add i64 %1744, 6
  store i64 %1745, i64* %PC.i327
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1747 = load i8, i8* %1746, align 1
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1749 = load i8, i8* %1748, align 1
  %1750 = or i8 %1749, %1747
  %1751 = icmp eq i8 %1750, 0
  %1752 = zext i1 %1751 to i8
  store i8 %1752, i8* %BRANCH_TAKEN, align 1
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1754 = select i1 %1751, i64 %1741, i64 %1743
  store i64 %1754, i64* %1753, align 8
  store %struct.Memory* %loadMem_41a94a, %struct.Memory** %MEMORY
  %loadBr_41a94a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a94a = icmp eq i8 %loadBr_41a94a, 1
  br i1 %cmpBr_41a94a, label %block_.L_41a8e9, label %block_41a950

block_41a950:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_41a950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 33
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %1757 to i64*
  %1758 = load i64, i64* %PC.i326
  %1759 = add i64 %1758, 128
  %1760 = load i64, i64* %PC.i326
  %1761 = add i64 %1760, 5
  store i64 %1761, i64* %PC.i326
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1759, i64* %1762, align 8
  store %struct.Memory* %loadMem_41a950, %struct.Memory** %MEMORY
  br label %block_.L_41a9d0

block_.L_41a955:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit392
  %loadMem_41a955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 33
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1765 to i64*
  %1766 = load i64, i64* %PC.i325
  %1767 = add i64 %1766, 5
  %1768 = load i64, i64* %PC.i325
  %1769 = add i64 %1768, 5
  store i64 %1769, i64* %PC.i325
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1767, i64* %1770, align 8
  store %struct.Memory* %loadMem_41a955, %struct.Memory** %MEMORY
  br label %block_.L_41a95a

block_.L_41a95a:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit265, %block_.L_41a955
  %loadMem_41a95a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 33
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1773 to i64*
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 5
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %RCX.i323 = bitcast %union.anon* %1776 to i64*
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 15
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %1779 to i64*
  %1780 = load i64, i64* %RBP.i324
  %1781 = sub i64 %1780, 60
  %1782 = load i64, i64* %PC.i322
  %1783 = add i64 %1782, 4
  store i64 %1783, i64* %PC.i322
  store i64 %1781, i64* %RCX.i323, align 8
  store %struct.Memory* %loadMem_41a95a, %struct.Memory** %MEMORY
  %loadMem_41a95e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 33
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 15
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %1789 to i64*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 17
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %R8.i321 = bitcast %union.anon* %1792 to i64*
  %1793 = load i64, i64* %RBP.i320
  %1794 = sub i64 %1793, 64
  %1795 = load i64, i64* %PC.i319
  %1796 = add i64 %1795, 4
  store i64 %1796, i64* %PC.i319
  store i64 %1794, i64* %R8.i321, align 8
  store %struct.Memory* %loadMem_41a95e, %struct.Memory** %MEMORY
  %loadMem_41a962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1799 to i64*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1801 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1800, i64 0, i64 0
  %YMM0.i318 = bitcast %union.VectorReg* %1801 to %"class.std::bitset"*
  %1802 = bitcast %"class.std::bitset"* %YMM0.i318 to i8*
  %1803 = load i64, i64* %PC.i317
  %1804 = add i64 %1803, ptrtoint (%G_0x39f06__rip__type* @G_0x39f06__rip_ to i64)
  %1805 = load i64, i64* %PC.i317
  %1806 = add i64 %1805, 8
  store i64 %1806, i64* %PC.i317
  %1807 = inttoptr i64 %1804 to double*
  %1808 = load double, double* %1807
  %1809 = bitcast i8* %1802 to double*
  store double %1808, double* %1809, align 1
  %1810 = getelementptr inbounds i8, i8* %1802, i64 8
  %1811 = bitcast i8* %1810 to double*
  store double 0.000000e+00, double* %1811, align 1
  store %struct.Memory* %loadMem_41a962, %struct.Memory** %MEMORY
  %loadMem_41a96a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 33
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 15
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %1817 to i64*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1819 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1818, i64 0, i64 1
  %YMM1.i316 = bitcast %union.VectorReg* %1819 to %"class.std::bitset"*
  %1820 = bitcast %"class.std::bitset"* %YMM1.i316 to i8*
  %1821 = load i64, i64* %RBP.i315
  %1822 = sub i64 %1821, 104
  %1823 = load i64, i64* %PC.i314
  %1824 = add i64 %1823, 5
  store i64 %1824, i64* %PC.i314
  %1825 = inttoptr i64 %1822 to float*
  %1826 = load float, float* %1825
  %1827 = fpext float %1826 to double
  %1828 = bitcast i8* %1820 to double*
  store double %1827, double* %1828, align 1
  store %struct.Memory* %loadMem_41a96a, %struct.Memory** %MEMORY
  %loadMem_41a96f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 33
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1831 to i64*
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1833 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1832, i64 0, i64 1
  %YMM1.i312 = bitcast %union.VectorReg* %1833 to %"class.std::bitset"*
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1835 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1834, i64 0, i64 0
  %XMM0.i313 = bitcast %union.VectorReg* %1835 to %union.vec128_t*
  %1836 = bitcast %"class.std::bitset"* %YMM1.i312 to i8*
  %1837 = bitcast %"class.std::bitset"* %YMM1.i312 to i8*
  %1838 = bitcast %union.vec128_t* %XMM0.i313 to i8*
  %1839 = load i64, i64* %PC.i311
  %1840 = add i64 %1839, 4
  store i64 %1840, i64* %PC.i311
  %1841 = bitcast i8* %1837 to double*
  %1842 = load double, double* %1841, align 1
  %1843 = getelementptr inbounds i8, i8* %1837, i64 8
  %1844 = bitcast i8* %1843 to i64*
  %1845 = load i64, i64* %1844, align 1
  %1846 = bitcast i8* %1838 to double*
  %1847 = load double, double* %1846, align 1
  %1848 = fadd double %1842, %1847
  %1849 = bitcast i8* %1836 to double*
  store double %1848, double* %1849, align 1
  %1850 = getelementptr inbounds i8, i8* %1836, i64 8
  %1851 = bitcast i8* %1850 to i64*
  store i64 %1845, i64* %1851, align 1
  store %struct.Memory* %loadMem_41a96f, %struct.Memory** %MEMORY
  %loadMem_41a973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1856 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1855, i64 0, i64 0
  %YMM0.i309 = bitcast %union.VectorReg* %1856 to %"class.std::bitset"*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1858 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1857, i64 0, i64 1
  %XMM1.i310 = bitcast %union.VectorReg* %1858 to %union.vec128_t*
  %1859 = bitcast %"class.std::bitset"* %YMM0.i309 to i8*
  %1860 = bitcast %union.vec128_t* %XMM1.i310 to i8*
  %1861 = load i64, i64* %PC.i308
  %1862 = add i64 %1861, 4
  store i64 %1862, i64* %PC.i308
  %1863 = bitcast i8* %1859 to <2 x i32>*
  %1864 = load <2 x i32>, <2 x i32>* %1863, align 1
  %1865 = getelementptr inbounds i8, i8* %1859, i64 8
  %1866 = bitcast i8* %1865 to <2 x i32>*
  %1867 = load <2 x i32>, <2 x i32>* %1866, align 1
  %1868 = bitcast i8* %1860 to double*
  %1869 = load double, double* %1868, align 1
  %1870 = fptrunc double %1869 to float
  %1871 = bitcast i8* %1859 to float*
  store float %1870, float* %1871, align 1
  %1872 = extractelement <2 x i32> %1864, i32 1
  %1873 = getelementptr inbounds i8, i8* %1859, i64 4
  %1874 = bitcast i8* %1873 to i32*
  store i32 %1872, i32* %1874, align 1
  %1875 = extractelement <2 x i32> %1867, i32 0
  %1876 = bitcast i8* %1865 to i32*
  store i32 %1875, i32* %1876, align 1
  %1877 = extractelement <2 x i32> %1867, i32 1
  %1878 = getelementptr inbounds i8, i8* %1859, i64 12
  %1879 = bitcast i8* %1878 to i32*
  store i32 %1877, i32* %1879, align 1
  store %struct.Memory* %loadMem_41a973, %struct.Memory** %MEMORY
  %loadMem_41a977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 33
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 15
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1887 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1886, i64 0, i64 0
  %XMM0.i307 = bitcast %union.VectorReg* %1887 to %union.vec128_t*
  %1888 = load i64, i64* %RBP.i306
  %1889 = sub i64 %1888, 104
  %1890 = bitcast %union.vec128_t* %XMM0.i307 to i8*
  %1891 = load i64, i64* %PC.i305
  %1892 = add i64 %1891, 5
  store i64 %1892, i64* %PC.i305
  %1893 = bitcast i8* %1890 to <2 x float>*
  %1894 = load <2 x float>, <2 x float>* %1893, align 1
  %1895 = extractelement <2 x float> %1894, i32 0
  %1896 = inttoptr i64 %1889 to float*
  store float %1895, float* %1896
  store %struct.Memory* %loadMem_41a977, %struct.Memory** %MEMORY
  %loadMem_41a97c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 33
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %1899 to i64*
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 11
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %RDI.i303 = bitcast %union.anon* %1902 to i64*
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 15
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %1905 to i64*
  %1906 = load i64, i64* %RBP.i304
  %1907 = sub i64 %1906, 16
  %1908 = load i64, i64* %PC.i302
  %1909 = add i64 %1908, 4
  store i64 %1909, i64* %PC.i302
  %1910 = inttoptr i64 %1907 to i64*
  %1911 = load i64, i64* %1910
  store i64 %1911, i64* %RDI.i303, align 8
  store %struct.Memory* %loadMem_41a97c, %struct.Memory** %MEMORY
  %loadMem_41a980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 33
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 9
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %RSI.i300 = bitcast %union.anon* %1917 to i64*
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 15
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %1920 to i64*
  %1921 = load i64, i64* %RBP.i301
  %1922 = sub i64 %1921, 24
  %1923 = load i64, i64* %PC.i299
  %1924 = add i64 %1923, 4
  store i64 %1924, i64* %PC.i299
  %1925 = inttoptr i64 %1922 to i64*
  %1926 = load i64, i64* %1925
  store i64 %1926, i64* %RSI.i300, align 8
  store %struct.Memory* %loadMem_41a980, %struct.Memory** %MEMORY
  %loadMem_41a984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 33
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1929 to i64*
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 7
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %RDX.i297 = bitcast %union.anon* %1932 to i64*
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 15
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %1935 to i64*
  %1936 = load i64, i64* %RBP.i298
  %1937 = sub i64 %1936, 28
  %1938 = load i64, i64* %PC.i296
  %1939 = add i64 %1938, 3
  store i64 %1939, i64* %PC.i296
  %1940 = inttoptr i64 %1937 to i32*
  %1941 = load i32, i32* %1940
  %1942 = zext i32 %1941 to i64
  store i64 %1942, i64* %RDX.i297, align 8
  store %struct.Memory* %loadMem_41a984, %struct.Memory** %MEMORY
  %loadMem_41a987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 33
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1945 to i64*
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 15
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %1948 to i64*
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1950 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1949, i64 0, i64 0
  %YMM0.i295 = bitcast %union.VectorReg* %1950 to %"class.std::bitset"*
  %1951 = bitcast %"class.std::bitset"* %YMM0.i295 to i8*
  %1952 = load i64, i64* %RBP.i294
  %1953 = sub i64 %1952, 104
  %1954 = load i64, i64* %PC.i293
  %1955 = add i64 %1954, 5
  store i64 %1955, i64* %PC.i293
  %1956 = inttoptr i64 %1953 to float*
  %1957 = load float, float* %1956
  %1958 = bitcast i8* %1951 to float*
  store float %1957, float* %1958, align 1
  %1959 = getelementptr inbounds i8, i8* %1951, i64 4
  %1960 = bitcast i8* %1959 to float*
  store float 0.000000e+00, float* %1960, align 1
  %1961 = getelementptr inbounds i8, i8* %1951, i64 8
  %1962 = bitcast i8* %1961 to float*
  store float 0.000000e+00, float* %1962, align 1
  %1963 = getelementptr inbounds i8, i8* %1951, i64 12
  %1964 = bitcast i8* %1963 to float*
  store float 0.000000e+00, float* %1964, align 1
  store %struct.Memory* %loadMem_41a987, %struct.Memory** %MEMORY
  %loadMem1_41a98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 33
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %1967 to i64*
  %1968 = load i64, i64* %PC.i292
  %1969 = add i64 %1968, 564
  %1970 = load i64, i64* %PC.i292
  %1971 = add i64 %1970, 5
  %1972 = load i64, i64* %PC.i292
  %1973 = add i64 %1972, 5
  store i64 %1973, i64* %PC.i292
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1975 = load i64, i64* %1974, align 8
  %1976 = add i64 %1975, -8
  %1977 = inttoptr i64 %1976 to i64*
  store i64 %1971, i64* %1977
  store i64 %1976, i64* %1974, align 8
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1969, i64* %1978, align 8
  store %struct.Memory* %loadMem1_41a98c, %struct.Memory** %MEMORY
  %loadMem2_41a98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a98c = load i64, i64* %3
  %call2_41a98c = call %struct.Memory* @sub_41abc0.Lawless416(%struct.State* %0, i64 %loadPC_41a98c, %struct.Memory* %loadMem2_41a98c)
  store %struct.Memory* %call2_41a98c, %struct.Memory** %MEMORY
  %loadMem_41a991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 33
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1983 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1982, i64 0, i64 0
  %YMM0.i291 = bitcast %union.VectorReg* %1983 to %"class.std::bitset"*
  %1984 = bitcast %"class.std::bitset"* %YMM0.i291 to i8*
  %1985 = load i64, i64* %PC.i290
  %1986 = add i64 %1985, ptrtoint (%G_0x39ecf__rip__type* @G_0x39ecf__rip_ to i64)
  %1987 = load i64, i64* %PC.i290
  %1988 = add i64 %1987, 8
  store i64 %1988, i64* %PC.i290
  %1989 = inttoptr i64 %1986 to double*
  %1990 = load double, double* %1989
  %1991 = bitcast i8* %1984 to double*
  store double %1990, double* %1991, align 1
  %1992 = getelementptr inbounds i8, i8* %1984, i64 8
  %1993 = bitcast i8* %1992 to double*
  store double 0.000000e+00, double* %1993, align 1
  store %struct.Memory* %loadMem_41a991, %struct.Memory** %MEMORY
  %loadMem_41a999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 33
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 15
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %1999 to i64*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2001 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2000, i64 0, i64 1
  %YMM1.i289 = bitcast %union.VectorReg* %2001 to %"class.std::bitset"*
  %2002 = bitcast %"class.std::bitset"* %YMM1.i289 to i8*
  %2003 = load i64, i64* %RBP.i288
  %2004 = sub i64 %2003, 104
  %2005 = load i64, i64* %PC.i287
  %2006 = add i64 %2005, 5
  store i64 %2006, i64* %PC.i287
  %2007 = inttoptr i64 %2004 to float*
  %2008 = load float, float* %2007
  %2009 = fpext float %2008 to double
  %2010 = bitcast i8* %2002 to double*
  store double %2009, double* %2010, align 1
  store %struct.Memory* %loadMem_41a999, %struct.Memory** %MEMORY
  %loadMem_41a99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 33
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %2013 to i64*
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2015 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2014, i64 0, i64 0
  %XMM0.i281 = bitcast %union.VectorReg* %2015 to %union.vec128_t*
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2017 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2016, i64 0, i64 1
  %XMM1.i282 = bitcast %union.VectorReg* %2017 to %union.vec128_t*
  %2018 = bitcast %union.vec128_t* %XMM1.i282 to i8*
  %2019 = bitcast %union.vec128_t* %XMM0.i281 to i8*
  %2020 = load i64, i64* %PC.i280
  %2021 = add i64 %2020, 4
  store i64 %2021, i64* %PC.i280
  %2022 = bitcast i8* %2018 to double*
  %2023 = load double, double* %2022, align 1
  %2024 = bitcast i8* %2019 to double*
  %2025 = load double, double* %2024, align 1
  %2026 = fcmp uno double %2023, %2025
  br i1 %2026, label %2027, label %2039

; <label>:2027:                                   ; preds = %block_.L_41a95a
  %2028 = fadd double %2023, %2025
  %2029 = bitcast double %2028 to i64
  %2030 = and i64 %2029, 9221120237041090560
  %2031 = icmp eq i64 %2030, 9218868437227405312
  %2032 = and i64 %2029, 2251799813685247
  %2033 = icmp ne i64 %2032, 0
  %2034 = and i1 %2031, %2033
  br i1 %2034, label %2035, label %2045

; <label>:2035:                                   ; preds = %2027
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2037 = load i64, i64* %2036, align 8
  %2038 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2037, %struct.Memory* %loadMem_41a99e)
  br label %routine_ucomisd__xmm0___xmm1.exit283

; <label>:2039:                                   ; preds = %block_.L_41a95a
  %2040 = fcmp ogt double %2023, %2025
  br i1 %2040, label %2045, label %2041

; <label>:2041:                                   ; preds = %2039
  %2042 = fcmp olt double %2023, %2025
  br i1 %2042, label %2045, label %2043

; <label>:2043:                                   ; preds = %2041
  %2044 = fcmp oeq double %2023, %2025
  br i1 %2044, label %2045, label %2052

; <label>:2045:                                   ; preds = %2043, %2041, %2039, %2027
  %2046 = phi i8 [ 0, %2039 ], [ 0, %2041 ], [ 1, %2043 ], [ 1, %2027 ]
  %2047 = phi i8 [ 0, %2039 ], [ 0, %2041 ], [ 0, %2043 ], [ 1, %2027 ]
  %2048 = phi i8 [ 0, %2039 ], [ 1, %2041 ], [ 0, %2043 ], [ 1, %2027 ]
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2046, i8* %2049, align 1
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2047, i8* %2050, align 1
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2048, i8* %2051, align 1
  br label %2052

; <label>:2052:                                   ; preds = %2045, %2043
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2053, align 1
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2054, align 1
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2055, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit283

routine_ucomisd__xmm0___xmm1.exit283:             ; preds = %2035, %2052
  %2056 = phi %struct.Memory* [ %2038, %2035 ], [ %loadMem_41a99e, %2052 ]
  store %struct.Memory* %2056, %struct.Memory** %MEMORY
  %loadMem_41a9a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 33
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %2059 to i64*
  %2060 = load i64, i64* %PC.i279
  %2061 = add i64 %2060, 18
  %2062 = load i64, i64* %PC.i279
  %2063 = add i64 %2062, 6
  %2064 = load i64, i64* %PC.i279
  %2065 = add i64 %2064, 6
  store i64 %2065, i64* %PC.i279
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2067 = load i8, i8* %2066, align 1
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2069 = load i8, i8* %2068, align 1
  %2070 = or i8 %2069, %2067
  %2071 = icmp ne i8 %2070, 0
  %2072 = zext i1 %2071 to i8
  store i8 %2072, i8* %BRANCH_TAKEN, align 1
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2074 = select i1 %2071, i64 %2061, i64 %2063
  store i64 %2074, i64* %2073, align 8
  store %struct.Memory* %loadMem_41a9a2, %struct.Memory** %MEMORY
  %loadBr_41a9a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a9a2 = icmp eq i8 %loadBr_41a9a2, 1
  br i1 %cmpBr_41a9a2, label %block_.L_41a9b4, label %block_41a9a8

block_41a9a8:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit283
  %loadMem_41a9a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 33
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 15
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %2080 to i64*
  %2081 = load i64, i64* %RBP.i278
  %2082 = sub i64 %2081, 4
  %2083 = load i64, i64* %PC.i277
  %2084 = add i64 %2083, 7
  store i64 %2084, i64* %PC.i277
  %2085 = inttoptr i64 %2082 to i32*
  store i32 0, i32* %2085
  store %struct.Memory* %loadMem_41a9a8, %struct.Memory** %MEMORY
  %loadMem_41a9af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 33
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %2088 to i64*
  %2089 = load i64, i64* %PC.i276
  %2090 = add i64 %2089, 507
  %2091 = load i64, i64* %PC.i276
  %2092 = add i64 %2091, 5
  store i64 %2092, i64* %PC.i276
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2090, i64* %2093, align 8
  store %struct.Memory* %loadMem_41a9af, %struct.Memory** %MEMORY
  br label %block_.L_41abaa

block_.L_41a9b4:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit283
  %loadMem_41a9b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 33
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %2096 to i64*
  %2097 = load i64, i64* %PC.i275
  %2098 = add i64 %2097, 5
  %2099 = load i64, i64* %PC.i275
  %2100 = add i64 %2099, 5
  store i64 %2100, i64* %PC.i275
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2098, i64* %2101, align 8
  store %struct.Memory* %loadMem_41a9b4, %struct.Memory** %MEMORY
  br label %block_.L_41a9b9

block_.L_41a9b9:                                  ; preds = %block_.L_41a9b4
  %loadMem_41a9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 33
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2104 to i64*
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2106 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2105, i64 0, i64 0
  %YMM0.i273 = bitcast %union.VectorReg* %2106 to %"class.std::bitset"*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2108 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2107, i64 0, i64 0
  %XMM0.i274 = bitcast %union.VectorReg* %2108 to %union.vec128_t*
  %2109 = bitcast %"class.std::bitset"* %YMM0.i273 to i8*
  %2110 = bitcast %"class.std::bitset"* %YMM0.i273 to i8*
  %2111 = bitcast %union.vec128_t* %XMM0.i274 to i8*
  %2112 = load i64, i64* %PC.i272
  %2113 = add i64 %2112, 3
  store i64 %2113, i64* %PC.i272
  %2114 = bitcast i8* %2110 to i64*
  %2115 = load i64, i64* %2114, align 1
  %2116 = getelementptr inbounds i8, i8* %2110, i64 8
  %2117 = bitcast i8* %2116 to i64*
  %2118 = load i64, i64* %2117, align 1
  %2119 = bitcast i8* %2111 to i64*
  %2120 = load i64, i64* %2119, align 1
  %2121 = getelementptr inbounds i8, i8* %2111, i64 8
  %2122 = bitcast i8* %2121 to i64*
  %2123 = load i64, i64* %2122, align 1
  %2124 = xor i64 %2120, %2115
  %2125 = xor i64 %2123, %2118
  %2126 = trunc i64 %2124 to i32
  %2127 = lshr i64 %2124, 32
  %2128 = trunc i64 %2127 to i32
  %2129 = bitcast i8* %2109 to i32*
  store i32 %2126, i32* %2129, align 1
  %2130 = getelementptr inbounds i8, i8* %2109, i64 4
  %2131 = bitcast i8* %2130 to i32*
  store i32 %2128, i32* %2131, align 1
  %2132 = trunc i64 %2125 to i32
  %2133 = getelementptr inbounds i8, i8* %2109, i64 8
  %2134 = bitcast i8* %2133 to i32*
  store i32 %2132, i32* %2134, align 1
  %2135 = lshr i64 %2125, 32
  %2136 = trunc i64 %2135 to i32
  %2137 = getelementptr inbounds i8, i8* %2109, i64 12
  %2138 = bitcast i8* %2137 to i32*
  store i32 %2136, i32* %2138, align 1
  store %struct.Memory* %loadMem_41a9b9, %struct.Memory** %MEMORY
  %loadMem_41a9bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 33
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2141 to i64*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 15
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %2144 to i64*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2146 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2145, i64 0, i64 1
  %YMM1.i271 = bitcast %union.VectorReg* %2146 to %"class.std::bitset"*
  %2147 = bitcast %"class.std::bitset"* %YMM1.i271 to i8*
  %2148 = load i64, i64* %RBP.i270
  %2149 = sub i64 %2148, 60
  %2150 = load i64, i64* %PC.i269
  %2151 = add i64 %2150, 5
  store i64 %2151, i64* %PC.i269
  %2152 = inttoptr i64 %2149 to float*
  %2153 = load float, float* %2152
  %2154 = fpext float %2153 to double
  %2155 = bitcast i8* %2147 to double*
  store double %2154, double* %2155, align 1
  store %struct.Memory* %loadMem_41a9bc, %struct.Memory** %MEMORY
  %loadMem_41a9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 33
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %2158 to i64*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2160 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2159, i64 0, i64 0
  %XMM0.i263 = bitcast %union.VectorReg* %2160 to %union.vec128_t*
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2162 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2161, i64 0, i64 1
  %XMM1.i264 = bitcast %union.VectorReg* %2162 to %union.vec128_t*
  %2163 = bitcast %union.vec128_t* %XMM1.i264 to i8*
  %2164 = bitcast %union.vec128_t* %XMM0.i263 to i8*
  %2165 = load i64, i64* %PC.i262
  %2166 = add i64 %2165, 4
  store i64 %2166, i64* %PC.i262
  %2167 = bitcast i8* %2163 to double*
  %2168 = load double, double* %2167, align 1
  %2169 = bitcast i8* %2164 to double*
  %2170 = load double, double* %2169, align 1
  %2171 = fcmp uno double %2168, %2170
  br i1 %2171, label %2172, label %2184

; <label>:2172:                                   ; preds = %block_.L_41a9b9
  %2173 = fadd double %2168, %2170
  %2174 = bitcast double %2173 to i64
  %2175 = and i64 %2174, 9221120237041090560
  %2176 = icmp eq i64 %2175, 9218868437227405312
  %2177 = and i64 %2174, 2251799813685247
  %2178 = icmp ne i64 %2177, 0
  %2179 = and i1 %2176, %2178
  br i1 %2179, label %2180, label %2190

; <label>:2180:                                   ; preds = %2172
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2182 = load i64, i64* %2181, align 8
  %2183 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2182, %struct.Memory* %loadMem_41a9c1)
  br label %routine_ucomisd__xmm0___xmm1.exit265

; <label>:2184:                                   ; preds = %block_.L_41a9b9
  %2185 = fcmp ogt double %2168, %2170
  br i1 %2185, label %2190, label %2186

; <label>:2186:                                   ; preds = %2184
  %2187 = fcmp olt double %2168, %2170
  br i1 %2187, label %2190, label %2188

; <label>:2188:                                   ; preds = %2186
  %2189 = fcmp oeq double %2168, %2170
  br i1 %2189, label %2190, label %2197

; <label>:2190:                                   ; preds = %2188, %2186, %2184, %2172
  %2191 = phi i8 [ 0, %2184 ], [ 0, %2186 ], [ 1, %2188 ], [ 1, %2172 ]
  %2192 = phi i8 [ 0, %2184 ], [ 0, %2186 ], [ 0, %2188 ], [ 1, %2172 ]
  %2193 = phi i8 [ 0, %2184 ], [ 1, %2186 ], [ 0, %2188 ], [ 1, %2172 ]
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2191, i8* %2194, align 1
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2192, i8* %2195, align 1
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2193, i8* %2196, align 1
  br label %2197

; <label>:2197:                                   ; preds = %2190, %2188
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2198, align 1
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2199, align 1
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2200, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit265

routine_ucomisd__xmm0___xmm1.exit265:             ; preds = %2180, %2197
  %2201 = phi %struct.Memory* [ %2183, %2180 ], [ %loadMem_41a9c1, %2197 ]
  store %struct.Memory* %2201, %struct.Memory** %MEMORY
  %loadMem_41a9c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 33
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2204 to i64*
  %2205 = load i64, i64* %PC.i261
  %2206 = add i64 %2205, -107
  %2207 = load i64, i64* %PC.i261
  %2208 = add i64 %2207, 6
  %2209 = load i64, i64* %PC.i261
  %2210 = add i64 %2209, 6
  store i64 %2210, i64* %PC.i261
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2212 = load i8, i8* %2211, align 1
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2214 = load i8, i8* %2213, align 1
  %2215 = or i8 %2214, %2212
  %2216 = icmp eq i8 %2215, 0
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %BRANCH_TAKEN, align 1
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2219 = select i1 %2216, i64 %2206, i64 %2208
  store i64 %2219, i64* %2218, align 8
  store %struct.Memory* %loadMem_41a9c5, %struct.Memory** %MEMORY
  %loadBr_41a9c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a9c5 = icmp eq i8 %loadBr_41a9c5, 1
  br i1 %cmpBr_41a9c5, label %block_.L_41a95a, label %block_41a9cb

block_41a9cb:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit265
  %loadMem_41a9cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 33
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %2222 to i64*
  %2223 = load i64, i64* %PC.i260
  %2224 = add i64 %2223, 5
  %2225 = load i64, i64* %PC.i260
  %2226 = add i64 %2225, 5
  store i64 %2226, i64* %PC.i260
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2224, i64* %2227, align 8
  store %struct.Memory* %loadMem_41a9cb, %struct.Memory** %MEMORY
  br label %block_.L_41a9d0

block_.L_41a9d0:                                  ; preds = %block_41a9cb, %block_41a950
  %loadMem_41a9d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 33
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %2230 to i64*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 15
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %2233 to i64*
  %2234 = load i64, i64* %RBP.i259
  %2235 = sub i64 %2234, 96
  %2236 = load i64, i64* %PC.i258
  %2237 = add i64 %2236, 7
  store i64 %2237, i64* %PC.i258
  %2238 = inttoptr i64 %2235 to i32*
  store i32 0, i32* %2238
  store %struct.Memory* %loadMem_41a9d0, %struct.Memory** %MEMORY
  br label %block_.L_41a9d7

block_.L_41a9d7:                                  ; preds = %block_.L_41aa75, %block_.L_41a9d0
  %loadMem_41a9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 33
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2241 to i64*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 15
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %2244 to i64*
  %2245 = load i64, i64* %RBP.i257
  %2246 = sub i64 %2245, 96
  %2247 = load i64, i64* %PC.i256
  %2248 = add i64 %2247, 4
  store i64 %2248, i64* %PC.i256
  %2249 = inttoptr i64 %2246 to i32*
  %2250 = load i32, i32* %2249
  %2251 = sub i32 %2250, 100
  %2252 = icmp ult i32 %2250, 100
  %2253 = zext i1 %2252 to i8
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2253, i8* %2254, align 1
  %2255 = and i32 %2251, 255
  %2256 = call i32 @llvm.ctpop.i32(i32 %2255)
  %2257 = trunc i32 %2256 to i8
  %2258 = and i8 %2257, 1
  %2259 = xor i8 %2258, 1
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2259, i8* %2260, align 1
  %2261 = xor i32 %2250, 100
  %2262 = xor i32 %2261, %2251
  %2263 = lshr i32 %2262, 4
  %2264 = trunc i32 %2263 to i8
  %2265 = and i8 %2264, 1
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2265, i8* %2266, align 1
  %2267 = icmp eq i32 %2251, 0
  %2268 = zext i1 %2267 to i8
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2268, i8* %2269, align 1
  %2270 = lshr i32 %2251, 31
  %2271 = trunc i32 %2270 to i8
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2271, i8* %2272, align 1
  %2273 = lshr i32 %2250, 31
  %2274 = xor i32 %2270, %2273
  %2275 = add i32 %2274, %2273
  %2276 = icmp eq i32 %2275, 2
  %2277 = zext i1 %2276 to i8
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2277, i8* %2278, align 1
  store %struct.Memory* %loadMem_41a9d7, %struct.Memory** %MEMORY
  %loadMem_41a9db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 33
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %2281 to i64*
  %2282 = load i64, i64* %PC.i255
  %2283 = add i64 %2282, 168
  %2284 = load i64, i64* %PC.i255
  %2285 = add i64 %2284, 6
  %2286 = load i64, i64* %PC.i255
  %2287 = add i64 %2286, 6
  store i64 %2287, i64* %PC.i255
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2289 = load i8, i8* %2288, align 1
  %2290 = icmp ne i8 %2289, 0
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2292 = load i8, i8* %2291, align 1
  %2293 = icmp ne i8 %2292, 0
  %2294 = xor i1 %2290, %2293
  %2295 = xor i1 %2294, true
  %2296 = zext i1 %2295 to i8
  store i8 %2296, i8* %BRANCH_TAKEN, align 1
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2298 = select i1 %2294, i64 %2285, i64 %2283
  store i64 %2298, i64* %2297, align 8
  store %struct.Memory* %loadMem_41a9db, %struct.Memory** %MEMORY
  %loadBr_41a9db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a9db = icmp eq i8 %loadBr_41a9db, 1
  br i1 %cmpBr_41a9db, label %block_.L_41aa83, label %block_41a9e1

block_41a9e1:                                     ; preds = %block_.L_41a9d7
  %loadMem_41a9e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 33
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %2301 to i64*
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 5
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %RCX.i253 = bitcast %union.anon* %2304 to i64*
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 15
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %2307 to i64*
  %2308 = load i64, i64* %RBP.i254
  %2309 = sub i64 %2308, 60
  %2310 = load i64, i64* %PC.i252
  %2311 = add i64 %2310, 4
  store i64 %2311, i64* %PC.i252
  store i64 %2309, i64* %RCX.i253, align 8
  store %struct.Memory* %loadMem_41a9e1, %struct.Memory** %MEMORY
  %loadMem_41a9e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 33
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2314 to i64*
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 15
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %2317 to i64*
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 17
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %R8.i = bitcast %union.anon* %2320 to i64*
  %2321 = load i64, i64* %RBP.i251
  %2322 = sub i64 %2321, 64
  %2323 = load i64, i64* %PC.i250
  %2324 = add i64 %2323, 4
  store i64 %2324, i64* %PC.i250
  store i64 %2322, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_41a9e5, %struct.Memory** %MEMORY
  %loadMem_41a9e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 33
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %2327 to i64*
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2329 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2328, i64 0, i64 0
  %YMM0.i249 = bitcast %union.VectorReg* %2329 to %"class.std::bitset"*
  %2330 = bitcast %"class.std::bitset"* %YMM0.i249 to i8*
  %2331 = load i64, i64* %PC.i248
  %2332 = add i64 %2331, ptrtoint (%G_0x39df7__rip__type* @G_0x39df7__rip_ to i64)
  %2333 = load i64, i64* %PC.i248
  %2334 = add i64 %2333, 8
  store i64 %2334, i64* %PC.i248
  %2335 = inttoptr i64 %2332 to double*
  %2336 = load double, double* %2335
  %2337 = bitcast i8* %2330 to double*
  store double %2336, double* %2337, align 1
  %2338 = getelementptr inbounds i8, i8* %2330, i64 8
  %2339 = bitcast i8* %2338 to double*
  store double 0.000000e+00, double* %2339, align 1
  store %struct.Memory* %loadMem_41a9e9, %struct.Memory** %MEMORY
  %loadMem_41a9f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 33
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 15
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %2345 to i64*
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2347 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2346, i64 0, i64 1
  %YMM1.i247 = bitcast %union.VectorReg* %2347 to %"class.std::bitset"*
  %2348 = bitcast %"class.std::bitset"* %YMM1.i247 to i8*
  %2349 = load i64, i64* %RBP.i246
  %2350 = sub i64 %2349, 100
  %2351 = load i64, i64* %PC.i245
  %2352 = add i64 %2351, 5
  store i64 %2352, i64* %PC.i245
  %2353 = inttoptr i64 %2350 to float*
  %2354 = load float, float* %2353
  %2355 = bitcast i8* %2348 to float*
  store float %2354, float* %2355, align 1
  %2356 = getelementptr inbounds i8, i8* %2348, i64 4
  %2357 = bitcast i8* %2356 to float*
  store float 0.000000e+00, float* %2357, align 1
  %2358 = getelementptr inbounds i8, i8* %2348, i64 8
  %2359 = bitcast i8* %2358 to float*
  store float 0.000000e+00, float* %2359, align 1
  %2360 = getelementptr inbounds i8, i8* %2348, i64 12
  %2361 = bitcast i8* %2360 to float*
  store float 0.000000e+00, float* %2361, align 1
  store %struct.Memory* %loadMem_41a9f1, %struct.Memory** %MEMORY
  %loadMem_41a9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 15
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2369 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2368, i64 0, i64 1
  %YMM1.i244 = bitcast %union.VectorReg* %2369 to %"class.std::bitset"*
  %2370 = bitcast %"class.std::bitset"* %YMM1.i244 to i8*
  %2371 = bitcast %"class.std::bitset"* %YMM1.i244 to i8*
  %2372 = load i64, i64* %RBP.i243
  %2373 = sub i64 %2372, 104
  %2374 = load i64, i64* %PC.i242
  %2375 = add i64 %2374, 5
  store i64 %2375, i64* %PC.i242
  %2376 = bitcast i8* %2371 to <2 x float>*
  %2377 = load <2 x float>, <2 x float>* %2376, align 1
  %2378 = getelementptr inbounds i8, i8* %2371, i64 8
  %2379 = bitcast i8* %2378 to <2 x i32>*
  %2380 = load <2 x i32>, <2 x i32>* %2379, align 1
  %2381 = inttoptr i64 %2373 to float*
  %2382 = load float, float* %2381
  %2383 = extractelement <2 x float> %2377, i32 0
  %2384 = fadd float %2383, %2382
  %2385 = bitcast i8* %2370 to float*
  store float %2384, float* %2385, align 1
  %2386 = bitcast <2 x float> %2377 to <2 x i32>
  %2387 = extractelement <2 x i32> %2386, i32 1
  %2388 = getelementptr inbounds i8, i8* %2370, i64 4
  %2389 = bitcast i8* %2388 to i32*
  store i32 %2387, i32* %2389, align 1
  %2390 = extractelement <2 x i32> %2380, i32 0
  %2391 = getelementptr inbounds i8, i8* %2370, i64 8
  %2392 = bitcast i8* %2391 to i32*
  store i32 %2390, i32* %2392, align 1
  %2393 = extractelement <2 x i32> %2380, i32 1
  %2394 = getelementptr inbounds i8, i8* %2370, i64 12
  %2395 = bitcast i8* %2394 to i32*
  store i32 %2393, i32* %2395, align 1
  store %struct.Memory* %loadMem_41a9f6, %struct.Memory** %MEMORY
  %loadMem_41a9fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 33
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %2398 to i64*
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2400 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2399, i64 0, i64 1
  %YMM1.i240 = bitcast %union.VectorReg* %2400 to %"class.std::bitset"*
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2402 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2401, i64 0, i64 1
  %XMM1.i241 = bitcast %union.VectorReg* %2402 to %union.vec128_t*
  %2403 = bitcast %"class.std::bitset"* %YMM1.i240 to i8*
  %2404 = bitcast %union.vec128_t* %XMM1.i241 to i8*
  %2405 = load i64, i64* %PC.i239
  %2406 = add i64 %2405, 4
  store i64 %2406, i64* %PC.i239
  %2407 = bitcast i8* %2404 to <2 x float>*
  %2408 = load <2 x float>, <2 x float>* %2407, align 1
  %2409 = extractelement <2 x float> %2408, i32 0
  %2410 = fpext float %2409 to double
  %2411 = bitcast i8* %2403 to double*
  store double %2410, double* %2411, align 1
  store %struct.Memory* %loadMem_41a9fb, %struct.Memory** %MEMORY
  %loadMem_41a9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 33
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2416 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2415, i64 0, i64 1
  %YMM1.i237 = bitcast %union.VectorReg* %2416 to %"class.std::bitset"*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2418 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2417, i64 0, i64 0
  %XMM0.i238 = bitcast %union.VectorReg* %2418 to %union.vec128_t*
  %2419 = bitcast %"class.std::bitset"* %YMM1.i237 to i8*
  %2420 = bitcast %"class.std::bitset"* %YMM1.i237 to i8*
  %2421 = bitcast %union.vec128_t* %XMM0.i238 to i8*
  %2422 = load i64, i64* %PC.i236
  %2423 = add i64 %2422, 4
  store i64 %2423, i64* %PC.i236
  %2424 = bitcast i8* %2420 to double*
  %2425 = load double, double* %2424, align 1
  %2426 = getelementptr inbounds i8, i8* %2420, i64 8
  %2427 = bitcast i8* %2426 to i64*
  %2428 = load i64, i64* %2427, align 1
  %2429 = bitcast i8* %2421 to double*
  %2430 = load double, double* %2429, align 1
  %2431 = fdiv double %2425, %2430
  %2432 = bitcast i8* %2419 to double*
  store double %2431, double* %2432, align 1
  %2433 = getelementptr inbounds i8, i8* %2419, i64 8
  %2434 = bitcast i8* %2433 to i64*
  store i64 %2428, i64* %2434, align 1
  store %struct.Memory* %loadMem_41a9ff, %struct.Memory** %MEMORY
  %loadMem_41aa03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 33
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2439 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2438, i64 0, i64 0
  %YMM0.i234 = bitcast %union.VectorReg* %2439 to %"class.std::bitset"*
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2441 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2440, i64 0, i64 1
  %XMM1.i235 = bitcast %union.VectorReg* %2441 to %union.vec128_t*
  %2442 = bitcast %"class.std::bitset"* %YMM0.i234 to i8*
  %2443 = bitcast %union.vec128_t* %XMM1.i235 to i8*
  %2444 = load i64, i64* %PC.i233
  %2445 = add i64 %2444, 4
  store i64 %2445, i64* %PC.i233
  %2446 = bitcast i8* %2442 to <2 x i32>*
  %2447 = load <2 x i32>, <2 x i32>* %2446, align 1
  %2448 = getelementptr inbounds i8, i8* %2442, i64 8
  %2449 = bitcast i8* %2448 to <2 x i32>*
  %2450 = load <2 x i32>, <2 x i32>* %2449, align 1
  %2451 = bitcast i8* %2443 to double*
  %2452 = load double, double* %2451, align 1
  %2453 = fptrunc double %2452 to float
  %2454 = bitcast i8* %2442 to float*
  store float %2453, float* %2454, align 1
  %2455 = extractelement <2 x i32> %2447, i32 1
  %2456 = getelementptr inbounds i8, i8* %2442, i64 4
  %2457 = bitcast i8* %2456 to i32*
  store i32 %2455, i32* %2457, align 1
  %2458 = extractelement <2 x i32> %2450, i32 0
  %2459 = bitcast i8* %2448 to i32*
  store i32 %2458, i32* %2459, align 1
  %2460 = extractelement <2 x i32> %2450, i32 1
  %2461 = getelementptr inbounds i8, i8* %2442, i64 12
  %2462 = bitcast i8* %2461 to i32*
  store i32 %2460, i32* %2462, align 1
  store %struct.Memory* %loadMem_41aa03, %struct.Memory** %MEMORY
  %loadMem_41aa07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 33
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2465 to i64*
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 15
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %2468 to i64*
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2470 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2469, i64 0, i64 0
  %XMM0.i232 = bitcast %union.VectorReg* %2470 to %union.vec128_t*
  %2471 = load i64, i64* %RBP.i231
  %2472 = sub i64 %2471, 108
  %2473 = bitcast %union.vec128_t* %XMM0.i232 to i8*
  %2474 = load i64, i64* %PC.i230
  %2475 = add i64 %2474, 5
  store i64 %2475, i64* %PC.i230
  %2476 = bitcast i8* %2473 to <2 x float>*
  %2477 = load <2 x float>, <2 x float>* %2476, align 1
  %2478 = extractelement <2 x float> %2477, i32 0
  %2479 = inttoptr i64 %2472 to float*
  store float %2478, float* %2479
  store %struct.Memory* %loadMem_41aa07, %struct.Memory** %MEMORY
  %loadMem_41aa0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 33
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 11
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %2485 to i64*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 15
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %2488 to i64*
  %2489 = load i64, i64* %RBP.i229
  %2490 = sub i64 %2489, 16
  %2491 = load i64, i64* %PC.i228
  %2492 = add i64 %2491, 4
  store i64 %2492, i64* %PC.i228
  %2493 = inttoptr i64 %2490 to i64*
  %2494 = load i64, i64* %2493
  store i64 %2494, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_41aa0c, %struct.Memory** %MEMORY
  %loadMem_41aa10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 33
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 9
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2500 to i64*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 15
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %2503 to i64*
  %2504 = load i64, i64* %RBP.i227
  %2505 = sub i64 %2504, 24
  %2506 = load i64, i64* %PC.i226
  %2507 = add i64 %2506, 4
  store i64 %2507, i64* %PC.i226
  %2508 = inttoptr i64 %2505 to i64*
  %2509 = load i64, i64* %2508
  store i64 %2509, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_41aa10, %struct.Memory** %MEMORY
  %loadMem_41aa14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 33
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %2512 to i64*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 7
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 15
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %2518 to i64*
  %2519 = load i64, i64* %RBP.i225
  %2520 = sub i64 %2519, 28
  %2521 = load i64, i64* %PC.i224
  %2522 = add i64 %2521, 3
  store i64 %2522, i64* %PC.i224
  %2523 = inttoptr i64 %2520 to i32*
  %2524 = load i32, i32* %2523
  %2525 = zext i32 %2524 to i64
  store i64 %2525, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_41aa14, %struct.Memory** %MEMORY
  %loadMem_41aa17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 15
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2533 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2532, i64 0, i64 0
  %YMM0.i223 = bitcast %union.VectorReg* %2533 to %"class.std::bitset"*
  %2534 = bitcast %"class.std::bitset"* %YMM0.i223 to i8*
  %2535 = load i64, i64* %RBP.i222
  %2536 = sub i64 %2535, 108
  %2537 = load i64, i64* %PC.i221
  %2538 = add i64 %2537, 5
  store i64 %2538, i64* %PC.i221
  %2539 = inttoptr i64 %2536 to float*
  %2540 = load float, float* %2539
  %2541 = bitcast i8* %2534 to float*
  store float %2540, float* %2541, align 1
  %2542 = getelementptr inbounds i8, i8* %2534, i64 4
  %2543 = bitcast i8* %2542 to float*
  store float 0.000000e+00, float* %2543, align 1
  %2544 = getelementptr inbounds i8, i8* %2534, i64 8
  %2545 = bitcast i8* %2544 to float*
  store float 0.000000e+00, float* %2545, align 1
  %2546 = getelementptr inbounds i8, i8* %2534, i64 12
  %2547 = bitcast i8* %2546 to float*
  store float 0.000000e+00, float* %2547, align 1
  store %struct.Memory* %loadMem_41aa17, %struct.Memory** %MEMORY
  %loadMem1_41aa1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 33
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %2550 to i64*
  %2551 = load i64, i64* %PC.i220
  %2552 = add i64 %2551, 420
  %2553 = load i64, i64* %PC.i220
  %2554 = add i64 %2553, 5
  %2555 = load i64, i64* %PC.i220
  %2556 = add i64 %2555, 5
  store i64 %2556, i64* %PC.i220
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2558 = load i64, i64* %2557, align 8
  %2559 = add i64 %2558, -8
  %2560 = inttoptr i64 %2559 to i64*
  store i64 %2554, i64* %2560
  store i64 %2559, i64* %2557, align 8
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2552, i64* %2561, align 8
  store %struct.Memory* %loadMem1_41aa1c, %struct.Memory** %MEMORY
  %loadMem2_41aa1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41aa1c = load i64, i64* %3
  %call2_41aa1c = call %struct.Memory* @sub_41abc0.Lawless416(%struct.State* %0, i64 %loadPC_41aa1c, %struct.Memory* %loadMem2_41aa1c)
  store %struct.Memory* %call2_41aa1c, %struct.Memory** %MEMORY
  %loadMem_41aa21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 33
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 15
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2569 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2568, i64 0, i64 0
  %YMM0.i219 = bitcast %union.VectorReg* %2569 to %"class.std::bitset"*
  %2570 = bitcast %"class.std::bitset"* %YMM0.i219 to i8*
  %2571 = load i64, i64* %RBP.i218
  %2572 = sub i64 %2571, 60
  %2573 = load i64, i64* %PC.i217
  %2574 = add i64 %2573, 5
  store i64 %2574, i64* %PC.i217
  %2575 = inttoptr i64 %2572 to float*
  %2576 = load float, float* %2575
  %2577 = fpext float %2576 to double
  %2578 = bitcast i8* %2570 to double*
  store double %2577, double* %2578, align 1
  store %struct.Memory* %loadMem_41aa21, %struct.Memory** %MEMORY
  %loadMem_41aa26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 33
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %2581 to i64*
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2583 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2582, i64 0, i64 1
  %YMM1.i216 = bitcast %union.VectorReg* %2583 to %"class.std::bitset"*
  %2584 = bitcast %"class.std::bitset"* %YMM1.i216 to i8*
  %2585 = load i64, i64* %PC.i215
  %2586 = add i64 %2585, ptrtoint (%G_0x3aee3__rip__type* @G_0x3aee3__rip_ to i64)
  %2587 = load i64, i64* %PC.i215
  %2588 = add i64 %2587, 7
  store i64 %2588, i64* %PC.i215
  %2589 = inttoptr i64 %2586 to float*
  %2590 = load float, float* %2589
  %2591 = add i64 %2586, 4
  %2592 = inttoptr i64 %2591 to float*
  %2593 = load float, float* %2592
  %2594 = add i64 %2586, 8
  %2595 = inttoptr i64 %2594 to float*
  %2596 = load float, float* %2595
  %2597 = add i64 %2586, 12
  %2598 = inttoptr i64 %2597 to float*
  %2599 = load float, float* %2598
  %2600 = bitcast i8* %2584 to float*
  store float %2590, float* %2600, align 1
  %2601 = getelementptr inbounds i8, i8* %2584, i64 4
  %2602 = bitcast i8* %2601 to float*
  store float %2593, float* %2602, align 1
  %2603 = getelementptr inbounds i8, i8* %2584, i64 8
  %2604 = bitcast i8* %2603 to float*
  store float %2596, float* %2604, align 1
  %2605 = getelementptr inbounds i8, i8* %2584, i64 12
  %2606 = bitcast i8* %2605 to float*
  store float %2599, float* %2606, align 1
  store %struct.Memory* %loadMem_41aa26, %struct.Memory** %MEMORY
  %loadMem_41aa2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 33
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2609 to i64*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2611 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2610, i64 0, i64 0
  %YMM0.i213 = bitcast %union.VectorReg* %2611 to %"class.std::bitset"*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2613 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2612, i64 0, i64 1
  %XMM1.i214 = bitcast %union.VectorReg* %2613 to %union.vec128_t*
  %2614 = bitcast %"class.std::bitset"* %YMM0.i213 to i8*
  %2615 = bitcast %"class.std::bitset"* %YMM0.i213 to i8*
  %2616 = bitcast %union.vec128_t* %XMM1.i214 to i8*
  %2617 = load i64, i64* %PC.i212
  %2618 = add i64 %2617, 4
  store i64 %2618, i64* %PC.i212
  %2619 = bitcast i8* %2615 to i64*
  %2620 = load i64, i64* %2619, align 1
  %2621 = getelementptr inbounds i8, i8* %2615, i64 8
  %2622 = bitcast i8* %2621 to i64*
  %2623 = load i64, i64* %2622, align 1
  %2624 = bitcast i8* %2616 to i64*
  %2625 = load i64, i64* %2624, align 1
  %2626 = getelementptr inbounds i8, i8* %2616, i64 8
  %2627 = bitcast i8* %2626 to i64*
  %2628 = load i64, i64* %2627, align 1
  %2629 = and i64 %2625, %2620
  %2630 = and i64 %2628, %2623
  %2631 = trunc i64 %2629 to i32
  %2632 = lshr i64 %2629, 32
  %2633 = trunc i64 %2632 to i32
  %2634 = bitcast i8* %2614 to i32*
  store i32 %2631, i32* %2634, align 1
  %2635 = getelementptr inbounds i8, i8* %2614, i64 4
  %2636 = bitcast i8* %2635 to i32*
  store i32 %2633, i32* %2636, align 1
  %2637 = trunc i64 %2630 to i32
  %2638 = getelementptr inbounds i8, i8* %2614, i64 8
  %2639 = bitcast i8* %2638 to i32*
  store i32 %2637, i32* %2639, align 1
  %2640 = lshr i64 %2630, 32
  %2641 = trunc i64 %2640 to i32
  %2642 = getelementptr inbounds i8, i8* %2614, i64 12
  %2643 = bitcast i8* %2642 to i32*
  store i32 %2641, i32* %2643, align 1
  store %struct.Memory* %loadMem_41aa2d, %struct.Memory** %MEMORY
  %loadMem_41aa31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 33
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2646 to i64*
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2648 = getelementptr inbounds %struct.GPR, %struct.GPR* %2647, i32 0, i32 15
  %2649 = getelementptr inbounds %struct.Reg, %struct.Reg* %2648, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %2649 to i64*
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2651 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2650, i64 0, i64 1
  %YMM1.i211 = bitcast %union.VectorReg* %2651 to %"class.std::bitset"*
  %2652 = bitcast %"class.std::bitset"* %YMM1.i211 to i8*
  %2653 = load i64, i64* %RBP.i210
  %2654 = sub i64 %2653, 92
  %2655 = load i64, i64* %PC.i209
  %2656 = add i64 %2655, 5
  store i64 %2656, i64* %PC.i209
  %2657 = inttoptr i64 %2654 to float*
  %2658 = load float, float* %2657
  %2659 = fpext float %2658 to double
  %2660 = bitcast i8* %2652 to double*
  store double %2659, double* %2660, align 1
  store %struct.Memory* %loadMem_41aa31, %struct.Memory** %MEMORY
  %loadMem_41aa36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 33
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2663 to i64*
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2665 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2664, i64 0, i64 0
  %XMM0.i204 = bitcast %union.VectorReg* %2665 to %union.vec128_t*
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2667 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2666, i64 0, i64 1
  %XMM1.i205 = bitcast %union.VectorReg* %2667 to %union.vec128_t*
  %2668 = bitcast %union.vec128_t* %XMM1.i205 to i8*
  %2669 = bitcast %union.vec128_t* %XMM0.i204 to i8*
  %2670 = load i64, i64* %PC.i203
  %2671 = add i64 %2670, 4
  store i64 %2671, i64* %PC.i203
  %2672 = bitcast i8* %2668 to double*
  %2673 = load double, double* %2672, align 1
  %2674 = bitcast i8* %2669 to double*
  %2675 = load double, double* %2674, align 1
  %2676 = fcmp uno double %2673, %2675
  br i1 %2676, label %2677, label %2689

; <label>:2677:                                   ; preds = %block_41a9e1
  %2678 = fadd double %2673, %2675
  %2679 = bitcast double %2678 to i64
  %2680 = and i64 %2679, 9221120237041090560
  %2681 = icmp eq i64 %2680, 9218868437227405312
  %2682 = and i64 %2679, 2251799813685247
  %2683 = icmp ne i64 %2682, 0
  %2684 = and i1 %2681, %2683
  br i1 %2684, label %2685, label %2695

; <label>:2685:                                   ; preds = %2677
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2687 = load i64, i64* %2686, align 8
  %2688 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2687, %struct.Memory* %loadMem_41aa36)
  br label %routine_ucomisd__xmm0___xmm1.exit206

; <label>:2689:                                   ; preds = %block_41a9e1
  %2690 = fcmp ogt double %2673, %2675
  br i1 %2690, label %2695, label %2691

; <label>:2691:                                   ; preds = %2689
  %2692 = fcmp olt double %2673, %2675
  br i1 %2692, label %2695, label %2693

; <label>:2693:                                   ; preds = %2691
  %2694 = fcmp oeq double %2673, %2675
  br i1 %2694, label %2695, label %2702

; <label>:2695:                                   ; preds = %2693, %2691, %2689, %2677
  %2696 = phi i8 [ 0, %2689 ], [ 0, %2691 ], [ 1, %2693 ], [ 1, %2677 ]
  %2697 = phi i8 [ 0, %2689 ], [ 0, %2691 ], [ 0, %2693 ], [ 1, %2677 ]
  %2698 = phi i8 [ 0, %2689 ], [ 1, %2691 ], [ 0, %2693 ], [ 1, %2677 ]
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2696, i8* %2699, align 1
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2697, i8* %2700, align 1
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2698, i8* %2701, align 1
  br label %2702

; <label>:2702:                                   ; preds = %2695, %2693
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2703, align 1
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2704, align 1
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2705, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit206

routine_ucomisd__xmm0___xmm1.exit206:             ; preds = %2685, %2702
  %2706 = phi %struct.Memory* [ %2688, %2685 ], [ %loadMem_41aa36, %2702 ]
  store %struct.Memory* %2706, %struct.Memory** %MEMORY
  %loadMem_41aa3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 33
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %2709 to i64*
  %2710 = load i64, i64* %PC.i202
  %2711 = add i64 %2710, 11
  %2712 = load i64, i64* %PC.i202
  %2713 = add i64 %2712, 6
  %2714 = load i64, i64* %PC.i202
  %2715 = add i64 %2714, 6
  store i64 %2715, i64* %PC.i202
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2717 = load i8, i8* %2716, align 1
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2719 = load i8, i8* %2718, align 1
  %2720 = or i8 %2719, %2717
  %2721 = icmp ne i8 %2720, 0
  %2722 = zext i1 %2721 to i8
  store i8 %2722, i8* %BRANCH_TAKEN, align 1
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2724 = select i1 %2721, i64 %2711, i64 %2713
  store i64 %2724, i64* %2723, align 8
  store %struct.Memory* %loadMem_41aa3a, %struct.Memory** %MEMORY
  %loadBr_41aa3a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41aa3a = icmp eq i8 %loadBr_41aa3a, 1
  br i1 %cmpBr_41aa3a, label %block_.L_41aa45, label %block_41aa40

block_41aa40:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit206
  %loadMem_41aa40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 33
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %2727 to i64*
  %2728 = load i64, i64* %PC.i201
  %2729 = add i64 %2728, 67
  %2730 = load i64, i64* %PC.i201
  %2731 = add i64 %2730, 5
  store i64 %2731, i64* %PC.i201
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2729, i64* %2732, align 8
  store %struct.Memory* %loadMem_41aa40, %struct.Memory** %MEMORY
  br label %block_.L_41aa83

block_.L_41aa45:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit206
  %loadMem_41aa45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 33
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2735 to i64*
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2737 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2736, i64 0, i64 0
  %YMM0.i199 = bitcast %union.VectorReg* %2737 to %"class.std::bitset"*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2739 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2738, i64 0, i64 0
  %XMM0.i200 = bitcast %union.VectorReg* %2739 to %union.vec128_t*
  %2740 = bitcast %"class.std::bitset"* %YMM0.i199 to i8*
  %2741 = bitcast %"class.std::bitset"* %YMM0.i199 to i8*
  %2742 = bitcast %union.vec128_t* %XMM0.i200 to i8*
  %2743 = load i64, i64* %PC.i198
  %2744 = add i64 %2743, 3
  store i64 %2744, i64* %PC.i198
  %2745 = bitcast i8* %2741 to i64*
  %2746 = load i64, i64* %2745, align 1
  %2747 = getelementptr inbounds i8, i8* %2741, i64 8
  %2748 = bitcast i8* %2747 to i64*
  %2749 = load i64, i64* %2748, align 1
  %2750 = bitcast i8* %2742 to i64*
  %2751 = load i64, i64* %2750, align 1
  %2752 = getelementptr inbounds i8, i8* %2742, i64 8
  %2753 = bitcast i8* %2752 to i64*
  %2754 = load i64, i64* %2753, align 1
  %2755 = xor i64 %2751, %2746
  %2756 = xor i64 %2754, %2749
  %2757 = trunc i64 %2755 to i32
  %2758 = lshr i64 %2755, 32
  %2759 = trunc i64 %2758 to i32
  %2760 = bitcast i8* %2740 to i32*
  store i32 %2757, i32* %2760, align 1
  %2761 = getelementptr inbounds i8, i8* %2740, i64 4
  %2762 = bitcast i8* %2761 to i32*
  store i32 %2759, i32* %2762, align 1
  %2763 = trunc i64 %2756 to i32
  %2764 = getelementptr inbounds i8, i8* %2740, i64 8
  %2765 = bitcast i8* %2764 to i32*
  store i32 %2763, i32* %2765, align 1
  %2766 = lshr i64 %2756, 32
  %2767 = trunc i64 %2766 to i32
  %2768 = getelementptr inbounds i8, i8* %2740, i64 12
  %2769 = bitcast i8* %2768 to i32*
  store i32 %2767, i32* %2769, align 1
  store %struct.Memory* %loadMem_41aa45, %struct.Memory** %MEMORY
  %loadMem_41aa48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 33
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2772 to i64*
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 15
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2777 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2776, i64 0, i64 1
  %YMM1.i197 = bitcast %union.VectorReg* %2777 to %"class.std::bitset"*
  %2778 = bitcast %"class.std::bitset"* %YMM1.i197 to i8*
  %2779 = load i64, i64* %RBP.i196
  %2780 = sub i64 %2779, 60
  %2781 = load i64, i64* %PC.i195
  %2782 = add i64 %2781, 5
  store i64 %2782, i64* %PC.i195
  %2783 = inttoptr i64 %2780 to float*
  %2784 = load float, float* %2783
  %2785 = fpext float %2784 to double
  %2786 = bitcast i8* %2778 to double*
  store double %2785, double* %2786, align 1
  store %struct.Memory* %loadMem_41aa48, %struct.Memory** %MEMORY
  %loadMem_41aa4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 33
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %2789 to i64*
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2791 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2790, i64 0, i64 0
  %XMM0.i191 = bitcast %union.VectorReg* %2791 to %union.vec128_t*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2793 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2792, i64 0, i64 1
  %XMM1.i192 = bitcast %union.VectorReg* %2793 to %union.vec128_t*
  %2794 = bitcast %union.vec128_t* %XMM1.i192 to i8*
  %2795 = bitcast %union.vec128_t* %XMM0.i191 to i8*
  %2796 = load i64, i64* %PC.i190
  %2797 = add i64 %2796, 4
  store i64 %2797, i64* %PC.i190
  %2798 = bitcast i8* %2794 to double*
  %2799 = load double, double* %2798, align 1
  %2800 = bitcast i8* %2795 to double*
  %2801 = load double, double* %2800, align 1
  %2802 = fcmp uno double %2799, %2801
  br i1 %2802, label %2803, label %2815

; <label>:2803:                                   ; preds = %block_.L_41aa45
  %2804 = fadd double %2799, %2801
  %2805 = bitcast double %2804 to i64
  %2806 = and i64 %2805, 9221120237041090560
  %2807 = icmp eq i64 %2806, 9218868437227405312
  %2808 = and i64 %2805, 2251799813685247
  %2809 = icmp ne i64 %2808, 0
  %2810 = and i1 %2807, %2809
  br i1 %2810, label %2811, label %2821

; <label>:2811:                                   ; preds = %2803
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2813 = load i64, i64* %2812, align 8
  %2814 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2813, %struct.Memory* %loadMem_41aa4d)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:2815:                                   ; preds = %block_.L_41aa45
  %2816 = fcmp ogt double %2799, %2801
  br i1 %2816, label %2821, label %2817

; <label>:2817:                                   ; preds = %2815
  %2818 = fcmp olt double %2799, %2801
  br i1 %2818, label %2821, label %2819

; <label>:2819:                                   ; preds = %2817
  %2820 = fcmp oeq double %2799, %2801
  br i1 %2820, label %2821, label %2828

; <label>:2821:                                   ; preds = %2819, %2817, %2815, %2803
  %2822 = phi i8 [ 0, %2815 ], [ 0, %2817 ], [ 1, %2819 ], [ 1, %2803 ]
  %2823 = phi i8 [ 0, %2815 ], [ 0, %2817 ], [ 0, %2819 ], [ 1, %2803 ]
  %2824 = phi i8 [ 0, %2815 ], [ 1, %2817 ], [ 0, %2819 ], [ 1, %2803 ]
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2822, i8* %2825, align 1
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2823, i8* %2826, align 1
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2824, i8* %2827, align 1
  br label %2828

; <label>:2828:                                   ; preds = %2821, %2819
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2829, align 1
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2830, align 1
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2831, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %2811, %2828
  %2832 = phi %struct.Memory* [ %2814, %2811 ], [ %loadMem_41aa4d, %2828 ]
  store %struct.Memory* %2832, %struct.Memory** %MEMORY
  %loadMem_41aa51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 33
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2835 to i64*
  %2836 = load i64, i64* %PC.i189
  %2837 = add i64 %2836, 21
  %2838 = load i64, i64* %PC.i189
  %2839 = add i64 %2838, 6
  %2840 = load i64, i64* %PC.i189
  %2841 = add i64 %2840, 6
  store i64 %2841, i64* %PC.i189
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2843 = load i8, i8* %2842, align 1
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2845 = load i8, i8* %2844, align 1
  %2846 = or i8 %2845, %2843
  %2847 = icmp ne i8 %2846, 0
  %2848 = zext i1 %2847 to i8
  store i8 %2848, i8* %BRANCH_TAKEN, align 1
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2850 = select i1 %2847, i64 %2837, i64 %2839
  store i64 %2850, i64* %2849, align 8
  store %struct.Memory* %loadMem_41aa51, %struct.Memory** %MEMORY
  %loadBr_41aa51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41aa51 = icmp eq i8 %loadBr_41aa51, 1
  br i1 %cmpBr_41aa51, label %block_.L_41aa66, label %block_41aa57

block_41aa57:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_41aa57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 33
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2853 to i64*
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 15
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %2856 to i64*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2858 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2857, i64 0, i64 0
  %YMM0.i188 = bitcast %union.VectorReg* %2858 to %"class.std::bitset"*
  %2859 = bitcast %"class.std::bitset"* %YMM0.i188 to i8*
  %2860 = load i64, i64* %RBP.i187
  %2861 = sub i64 %2860, 108
  %2862 = load i64, i64* %PC.i186
  %2863 = add i64 %2862, 5
  store i64 %2863, i64* %PC.i186
  %2864 = inttoptr i64 %2861 to float*
  %2865 = load float, float* %2864
  %2866 = bitcast i8* %2859 to float*
  store float %2865, float* %2866, align 1
  %2867 = getelementptr inbounds i8, i8* %2859, i64 4
  %2868 = bitcast i8* %2867 to float*
  store float 0.000000e+00, float* %2868, align 1
  %2869 = getelementptr inbounds i8, i8* %2859, i64 8
  %2870 = bitcast i8* %2869 to float*
  store float 0.000000e+00, float* %2870, align 1
  %2871 = getelementptr inbounds i8, i8* %2859, i64 12
  %2872 = bitcast i8* %2871 to float*
  store float 0.000000e+00, float* %2872, align 1
  store %struct.Memory* %loadMem_41aa57, %struct.Memory** %MEMORY
  %loadMem_41aa5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 33
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2875 to i64*
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 15
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %2878 to i64*
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2880 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2879, i64 0, i64 0
  %XMM0.i185 = bitcast %union.VectorReg* %2880 to %union.vec128_t*
  %2881 = load i64, i64* %RBP.i184
  %2882 = sub i64 %2881, 100
  %2883 = bitcast %union.vec128_t* %XMM0.i185 to i8*
  %2884 = load i64, i64* %PC.i183
  %2885 = add i64 %2884, 5
  store i64 %2885, i64* %PC.i183
  %2886 = bitcast i8* %2883 to <2 x float>*
  %2887 = load <2 x float>, <2 x float>* %2886, align 1
  %2888 = extractelement <2 x float> %2887, i32 0
  %2889 = inttoptr i64 %2882 to float*
  store float %2888, float* %2889
  store %struct.Memory* %loadMem_41aa5c, %struct.Memory** %MEMORY
  %loadMem_41aa61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 33
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2892 to i64*
  %2893 = load i64, i64* %PC.i182
  %2894 = add i64 %2893, 15
  %2895 = load i64, i64* %PC.i182
  %2896 = add i64 %2895, 5
  store i64 %2896, i64* %PC.i182
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2894, i64* %2897, align 8
  store %struct.Memory* %loadMem_41aa61, %struct.Memory** %MEMORY
  br label %block_.L_41aa70

block_.L_41aa66:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_41aa66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 33
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %2900 to i64*
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 15
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %2903 to i64*
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2905 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2904, i64 0, i64 0
  %YMM0.i181 = bitcast %union.VectorReg* %2905 to %"class.std::bitset"*
  %2906 = bitcast %"class.std::bitset"* %YMM0.i181 to i8*
  %2907 = load i64, i64* %RBP.i180
  %2908 = sub i64 %2907, 108
  %2909 = load i64, i64* %PC.i179
  %2910 = add i64 %2909, 5
  store i64 %2910, i64* %PC.i179
  %2911 = inttoptr i64 %2908 to float*
  %2912 = load float, float* %2911
  %2913 = bitcast i8* %2906 to float*
  store float %2912, float* %2913, align 1
  %2914 = getelementptr inbounds i8, i8* %2906, i64 4
  %2915 = bitcast i8* %2914 to float*
  store float 0.000000e+00, float* %2915, align 1
  %2916 = getelementptr inbounds i8, i8* %2906, i64 8
  %2917 = bitcast i8* %2916 to float*
  store float 0.000000e+00, float* %2917, align 1
  %2918 = getelementptr inbounds i8, i8* %2906, i64 12
  %2919 = bitcast i8* %2918 to float*
  store float 0.000000e+00, float* %2919, align 1
  store %struct.Memory* %loadMem_41aa66, %struct.Memory** %MEMORY
  %loadMem_41aa6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 33
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2922 to i64*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 15
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %2925 to i64*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2927 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2926, i64 0, i64 0
  %XMM0.i178 = bitcast %union.VectorReg* %2927 to %union.vec128_t*
  %2928 = load i64, i64* %RBP.i177
  %2929 = sub i64 %2928, 104
  %2930 = bitcast %union.vec128_t* %XMM0.i178 to i8*
  %2931 = load i64, i64* %PC.i176
  %2932 = add i64 %2931, 5
  store i64 %2932, i64* %PC.i176
  %2933 = bitcast i8* %2930 to <2 x float>*
  %2934 = load <2 x float>, <2 x float>* %2933, align 1
  %2935 = extractelement <2 x float> %2934, i32 0
  %2936 = inttoptr i64 %2929 to float*
  store float %2935, float* %2936
  store %struct.Memory* %loadMem_41aa6b, %struct.Memory** %MEMORY
  br label %block_.L_41aa70

block_.L_41aa70:                                  ; preds = %block_.L_41aa66, %block_41aa57
  %loadMem_41aa70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 33
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %2939 to i64*
  %2940 = load i64, i64* %PC.i175
  %2941 = add i64 %2940, 5
  %2942 = load i64, i64* %PC.i175
  %2943 = add i64 %2942, 5
  store i64 %2943, i64* %PC.i175
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2941, i64* %2944, align 8
  store %struct.Memory* %loadMem_41aa70, %struct.Memory** %MEMORY
  br label %block_.L_41aa75

block_.L_41aa75:                                  ; preds = %block_.L_41aa70
  %loadMem_41aa75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 33
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %2947 to i64*
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 1
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %2950 to i64*
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 15
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %2953 to i64*
  %2954 = load i64, i64* %RBP.i174
  %2955 = sub i64 %2954, 96
  %2956 = load i64, i64* %PC.i172
  %2957 = add i64 %2956, 3
  store i64 %2957, i64* %PC.i172
  %2958 = inttoptr i64 %2955 to i32*
  %2959 = load i32, i32* %2958
  %2960 = zext i32 %2959 to i64
  store i64 %2960, i64* %RAX.i173, align 8
  store %struct.Memory* %loadMem_41aa75, %struct.Memory** %MEMORY
  %loadMem_41aa78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 33
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2963 to i64*
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 1
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %2966 to i64*
  %2967 = load i64, i64* %RAX.i171
  %2968 = load i64, i64* %PC.i170
  %2969 = add i64 %2968, 3
  store i64 %2969, i64* %PC.i170
  %2970 = trunc i64 %2967 to i32
  %2971 = add i32 1, %2970
  %2972 = zext i32 %2971 to i64
  store i64 %2972, i64* %RAX.i171, align 8
  %2973 = icmp ult i32 %2971, %2970
  %2974 = icmp ult i32 %2971, 1
  %2975 = or i1 %2973, %2974
  %2976 = zext i1 %2975 to i8
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2976, i8* %2977, align 1
  %2978 = and i32 %2971, 255
  %2979 = call i32 @llvm.ctpop.i32(i32 %2978)
  %2980 = trunc i32 %2979 to i8
  %2981 = and i8 %2980, 1
  %2982 = xor i8 %2981, 1
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2982, i8* %2983, align 1
  %2984 = xor i64 1, %2967
  %2985 = trunc i64 %2984 to i32
  %2986 = xor i32 %2985, %2971
  %2987 = lshr i32 %2986, 4
  %2988 = trunc i32 %2987 to i8
  %2989 = and i8 %2988, 1
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2989, i8* %2990, align 1
  %2991 = icmp eq i32 %2971, 0
  %2992 = zext i1 %2991 to i8
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2992, i8* %2993, align 1
  %2994 = lshr i32 %2971, 31
  %2995 = trunc i32 %2994 to i8
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2995, i8* %2996, align 1
  %2997 = lshr i32 %2970, 31
  %2998 = xor i32 %2994, %2997
  %2999 = add i32 %2998, %2994
  %3000 = icmp eq i32 %2999, 2
  %3001 = zext i1 %3000 to i8
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3001, i8* %3002, align 1
  store %struct.Memory* %loadMem_41aa78, %struct.Memory** %MEMORY
  %loadMem_41aa7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 33
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %3005 to i64*
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 1
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %EAX.i168 = bitcast %union.anon* %3008 to i32*
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 15
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %3011 to i64*
  %3012 = load i64, i64* %RBP.i169
  %3013 = sub i64 %3012, 96
  %3014 = load i32, i32* %EAX.i168
  %3015 = zext i32 %3014 to i64
  %3016 = load i64, i64* %PC.i167
  %3017 = add i64 %3016, 3
  store i64 %3017, i64* %PC.i167
  %3018 = inttoptr i64 %3013 to i32*
  store i32 %3014, i32* %3018
  store %struct.Memory* %loadMem_41aa7b, %struct.Memory** %MEMORY
  %loadMem_41aa7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3021 to i64*
  %3022 = load i64, i64* %PC.i166
  %3023 = add i64 %3022, -167
  %3024 = load i64, i64* %PC.i166
  %3025 = add i64 %3024, 5
  store i64 %3025, i64* %PC.i166
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3023, i64* %3026, align 8
  store %struct.Memory* %loadMem_41aa7e, %struct.Memory** %MEMORY
  br label %block_.L_41a9d7

block_.L_41aa83:                                  ; preds = %block_41aa40, %block_.L_41a9d7
  %loadMem_41aa83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 33
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %3029 to i64*
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3031 = getelementptr inbounds %struct.GPR, %struct.GPR* %3030, i32 0, i32 15
  %3032 = getelementptr inbounds %struct.Reg, %struct.Reg* %3031, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %3032 to i64*
  %3033 = load i64, i64* %RBP.i165
  %3034 = sub i64 %3033, 96
  %3035 = load i64, i64* %PC.i164
  %3036 = add i64 %3035, 4
  store i64 %3036, i64* %PC.i164
  %3037 = inttoptr i64 %3034 to i32*
  %3038 = load i32, i32* %3037
  %3039 = sub i32 %3038, 100
  %3040 = icmp ult i32 %3038, 100
  %3041 = zext i1 %3040 to i8
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3041, i8* %3042, align 1
  %3043 = and i32 %3039, 255
  %3044 = call i32 @llvm.ctpop.i32(i32 %3043)
  %3045 = trunc i32 %3044 to i8
  %3046 = and i8 %3045, 1
  %3047 = xor i8 %3046, 1
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3047, i8* %3048, align 1
  %3049 = xor i32 %3038, 100
  %3050 = xor i32 %3049, %3039
  %3051 = lshr i32 %3050, 4
  %3052 = trunc i32 %3051 to i8
  %3053 = and i8 %3052, 1
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3053, i8* %3054, align 1
  %3055 = icmp eq i32 %3039, 0
  %3056 = zext i1 %3055 to i8
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3056, i8* %3057, align 1
  %3058 = lshr i32 %3039, 31
  %3059 = trunc i32 %3058 to i8
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3059, i8* %3060, align 1
  %3061 = lshr i32 %3038, 31
  %3062 = xor i32 %3058, %3061
  %3063 = add i32 %3062, %3061
  %3064 = icmp eq i32 %3063, 2
  %3065 = zext i1 %3064 to i8
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3065, i8* %3066, align 1
  store %struct.Memory* %loadMem_41aa83, %struct.Memory** %MEMORY
  %loadMem_41aa87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 33
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3069 to i64*
  %3070 = load i64, i64* %PC.i163
  %3071 = add i64 %3070, 18
  %3072 = load i64, i64* %PC.i163
  %3073 = add i64 %3072, 6
  %3074 = load i64, i64* %PC.i163
  %3075 = add i64 %3074, 6
  store i64 %3075, i64* %PC.i163
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3077 = load i8, i8* %3076, align 1
  %3078 = icmp eq i8 %3077, 0
  %3079 = zext i1 %3078 to i8
  store i8 %3079, i8* %BRANCH_TAKEN, align 1
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3081 = select i1 %3078, i64 %3071, i64 %3073
  store i64 %3081, i64* %3080, align 8
  store %struct.Memory* %loadMem_41aa87, %struct.Memory** %MEMORY
  %loadBr_41aa87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41aa87 = icmp eq i8 %loadBr_41aa87, 1
  br i1 %cmpBr_41aa87, label %block_.L_41aa99, label %block_41aa8d

block_41aa8d:                                     ; preds = %block_.L_41aa83
  %loadMem_41aa8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 33
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %3084 to i64*
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 15
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %3087 to i64*
  %3088 = load i64, i64* %RBP.i162
  %3089 = sub i64 %3088, 4
  %3090 = load i64, i64* %PC.i161
  %3091 = add i64 %3090, 7
  store i64 %3091, i64* %PC.i161
  %3092 = inttoptr i64 %3089 to i32*
  store i32 0, i32* %3092
  store %struct.Memory* %loadMem_41aa8d, %struct.Memory** %MEMORY
  %loadMem_41aa94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 33
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3095 to i64*
  %3096 = load i64, i64* %PC.i160
  %3097 = add i64 %3096, 278
  %3098 = load i64, i64* %PC.i160
  %3099 = add i64 %3098, 5
  store i64 %3099, i64* %PC.i160
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3097, i64* %3100, align 8
  store %struct.Memory* %loadMem_41aa94, %struct.Memory** %MEMORY
  br label %block_.L_41abaa

block_.L_41aa99:                                  ; preds = %block_.L_41aa83
  %loadMem_41aa99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 33
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3103 to i64*
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 15
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3108 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3107, i64 0, i64 0
  %YMM0.i159 = bitcast %union.VectorReg* %3108 to %"class.std::bitset"*
  %3109 = bitcast %"class.std::bitset"* %YMM0.i159 to i8*
  %3110 = load i64, i64* %RBP.i158
  %3111 = sub i64 %3110, 108
  %3112 = load i64, i64* %PC.i157
  %3113 = add i64 %3112, 5
  store i64 %3113, i64* %PC.i157
  %3114 = inttoptr i64 %3111 to float*
  %3115 = load float, float* %3114
  %3116 = bitcast i8* %3109 to float*
  store float %3115, float* %3116, align 1
  %3117 = getelementptr inbounds i8, i8* %3109, i64 4
  %3118 = bitcast i8* %3117 to float*
  store float 0.000000e+00, float* %3118, align 1
  %3119 = getelementptr inbounds i8, i8* %3109, i64 8
  %3120 = bitcast i8* %3119 to float*
  store float 0.000000e+00, float* %3120, align 1
  %3121 = getelementptr inbounds i8, i8* %3109, i64 12
  %3122 = bitcast i8* %3121 to float*
  store float 0.000000e+00, float* %3122, align 1
  store %struct.Memory* %loadMem_41aa99, %struct.Memory** %MEMORY
  %loadMem_41aa9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 33
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %3125 to i64*
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 15
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %3128 to i64*
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3130 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3129, i64 0, i64 0
  %XMM0.i156 = bitcast %union.VectorReg* %3130 to %union.vec128_t*
  %3131 = load i64, i64* %RBP.i155
  %3132 = sub i64 %3131, 52
  %3133 = bitcast %union.vec128_t* %XMM0.i156 to i8*
  %3134 = load i64, i64* %PC.i154
  %3135 = add i64 %3134, 5
  store i64 %3135, i64* %PC.i154
  %3136 = bitcast i8* %3133 to <2 x float>*
  %3137 = load <2 x float>, <2 x float>* %3136, align 1
  %3138 = extractelement <2 x float> %3137, i32 0
  %3139 = inttoptr i64 %3132 to float*
  store float %3138, float* %3139
  store %struct.Memory* %loadMem_41aa9e, %struct.Memory** %MEMORY
  br label %block_.L_41aaa3

block_.L_41aaa3:                                  ; preds = %block_.L_41aa99, %block_.L_41a894
  %loadMem_41aaa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 33
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3144 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3143, i64 0, i64 0
  %YMM0.i152 = bitcast %union.VectorReg* %3144 to %"class.std::bitset"*
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3146 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3145, i64 0, i64 0
  %XMM0.i153 = bitcast %union.VectorReg* %3146 to %union.vec128_t*
  %3147 = bitcast %"class.std::bitset"* %YMM0.i152 to i8*
  %3148 = bitcast %"class.std::bitset"* %YMM0.i152 to i8*
  %3149 = bitcast %union.vec128_t* %XMM0.i153 to i8*
  %3150 = load i64, i64* %PC.i151
  %3151 = add i64 %3150, 3
  store i64 %3151, i64* %PC.i151
  %3152 = bitcast i8* %3148 to i64*
  %3153 = load i64, i64* %3152, align 1
  %3154 = getelementptr inbounds i8, i8* %3148, i64 8
  %3155 = bitcast i8* %3154 to i64*
  %3156 = load i64, i64* %3155, align 1
  %3157 = bitcast i8* %3149 to i64*
  %3158 = load i64, i64* %3157, align 1
  %3159 = getelementptr inbounds i8, i8* %3149, i64 8
  %3160 = bitcast i8* %3159 to i64*
  %3161 = load i64, i64* %3160, align 1
  %3162 = xor i64 %3158, %3153
  %3163 = xor i64 %3161, %3156
  %3164 = trunc i64 %3162 to i32
  %3165 = lshr i64 %3162, 32
  %3166 = trunc i64 %3165 to i32
  %3167 = bitcast i8* %3147 to i32*
  store i32 %3164, i32* %3167, align 1
  %3168 = getelementptr inbounds i8, i8* %3147, i64 4
  %3169 = bitcast i8* %3168 to i32*
  store i32 %3166, i32* %3169, align 1
  %3170 = trunc i64 %3163 to i32
  %3171 = getelementptr inbounds i8, i8* %3147, i64 8
  %3172 = bitcast i8* %3171 to i32*
  store i32 %3170, i32* %3172, align 1
  %3173 = lshr i64 %3163, 32
  %3174 = trunc i64 %3173 to i32
  %3175 = getelementptr inbounds i8, i8* %3147, i64 12
  %3176 = bitcast i8* %3175 to i32*
  store i32 %3174, i32* %3176, align 1
  store %struct.Memory* %loadMem_41aaa3, %struct.Memory** %MEMORY
  %loadMem_41aaa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 33
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 15
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %3182 to i64*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3184 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3183, i64 0, i64 0
  %XMM0.i150 = bitcast %union.VectorReg* %3184 to %union.vec128_t*
  %3185 = load i64, i64* %RBP.i149
  %3186 = sub i64 %3185, 72
  %3187 = bitcast %union.vec128_t* %XMM0.i150 to i8*
  %3188 = load i64, i64* %PC.i148
  %3189 = add i64 %3188, 5
  store i64 %3189, i64* %PC.i148
  %3190 = bitcast i8* %3187 to double*
  %3191 = load double, double* %3190, align 1
  %3192 = inttoptr i64 %3186 to double*
  store double %3191, double* %3192
  store %struct.Memory* %loadMem_41aaa6, %struct.Memory** %MEMORY
  %loadMem_41aaab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 33
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3195 to i64*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 15
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %3198 to i64*
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3199, i64 0, i64 0
  %XMM0.i147 = bitcast %union.VectorReg* %3200 to %union.vec128_t*
  %3201 = load i64, i64* %RBP.i146
  %3202 = sub i64 %3201, 88
  %3203 = bitcast %union.vec128_t* %XMM0.i147 to i8*
  %3204 = load i64, i64* %PC.i145
  %3205 = add i64 %3204, 5
  store i64 %3205, i64* %PC.i145
  %3206 = bitcast i8* %3203 to double*
  %3207 = load double, double* %3206, align 1
  %3208 = inttoptr i64 %3202 to double*
  store double %3207, double* %3208
  store %struct.Memory* %loadMem_41aaab, %struct.Memory** %MEMORY
  %loadMem_41aab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 33
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %3211 to i64*
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 15
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %3214 to i64*
  %3215 = load i64, i64* %RBP.i144
  %3216 = sub i64 %3215, 96
  %3217 = load i64, i64* %PC.i143
  %3218 = add i64 %3217, 7
  store i64 %3218, i64* %PC.i143
  %3219 = inttoptr i64 %3216 to i32*
  store i32 0, i32* %3219
  store %struct.Memory* %loadMem_41aab0, %struct.Memory** %MEMORY
  br label %block_.L_41aab7

block_.L_41aab7:                                  ; preds = %block_.L_41aaf2, %block_.L_41aaa3
  %loadMem_41aab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 33
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %3222 to i64*
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 1
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %3225 to i64*
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 15
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %3228 to i64*
  %3229 = load i64, i64* %RBP.i142
  %3230 = sub i64 %3229, 96
  %3231 = load i64, i64* %PC.i140
  %3232 = add i64 %3231, 3
  store i64 %3232, i64* %PC.i140
  %3233 = inttoptr i64 %3230 to i32*
  %3234 = load i32, i32* %3233
  %3235 = zext i32 %3234 to i64
  store i64 %3235, i64* %RAX.i141, align 8
  store %struct.Memory* %loadMem_41aab7, %struct.Memory** %MEMORY
  %loadMem_41aaba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 33
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %3238 to i64*
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 1
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %EAX.i138 = bitcast %union.anon* %3241 to i32*
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 15
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %3244 to i64*
  %3245 = load i32, i32* %EAX.i138
  %3246 = zext i32 %3245 to i64
  %3247 = load i64, i64* %RBP.i139
  %3248 = sub i64 %3247, 28
  %3249 = load i64, i64* %PC.i137
  %3250 = add i64 %3249, 3
  store i64 %3250, i64* %PC.i137
  %3251 = inttoptr i64 %3248 to i32*
  %3252 = load i32, i32* %3251
  %3253 = sub i32 %3245, %3252
  %3254 = icmp ult i32 %3245, %3252
  %3255 = zext i1 %3254 to i8
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3255, i8* %3256, align 1
  %3257 = and i32 %3253, 255
  %3258 = call i32 @llvm.ctpop.i32(i32 %3257)
  %3259 = trunc i32 %3258 to i8
  %3260 = and i8 %3259, 1
  %3261 = xor i8 %3260, 1
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3261, i8* %3262, align 1
  %3263 = xor i32 %3252, %3245
  %3264 = xor i32 %3263, %3253
  %3265 = lshr i32 %3264, 4
  %3266 = trunc i32 %3265 to i8
  %3267 = and i8 %3266, 1
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3267, i8* %3268, align 1
  %3269 = icmp eq i32 %3253, 0
  %3270 = zext i1 %3269 to i8
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3270, i8* %3271, align 1
  %3272 = lshr i32 %3253, 31
  %3273 = trunc i32 %3272 to i8
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3273, i8* %3274, align 1
  %3275 = lshr i32 %3245, 31
  %3276 = lshr i32 %3252, 31
  %3277 = xor i32 %3276, %3275
  %3278 = xor i32 %3272, %3275
  %3279 = add i32 %3278, %3277
  %3280 = icmp eq i32 %3279, 2
  %3281 = zext i1 %3280 to i8
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3281, i8* %3282, align 1
  store %struct.Memory* %loadMem_41aaba, %struct.Memory** %MEMORY
  %loadMem_41aabd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 33
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %3285 to i64*
  %3286 = load i64, i64* %PC.i136
  %3287 = add i64 %3286, 159
  %3288 = load i64, i64* %PC.i136
  %3289 = add i64 %3288, 6
  %3290 = load i64, i64* %PC.i136
  %3291 = add i64 %3290, 6
  store i64 %3291, i64* %PC.i136
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3293 = load i8, i8* %3292, align 1
  %3294 = icmp ne i8 %3293, 0
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3296 = load i8, i8* %3295, align 1
  %3297 = icmp ne i8 %3296, 0
  %3298 = xor i1 %3294, %3297
  %3299 = xor i1 %3298, true
  %3300 = zext i1 %3299 to i8
  store i8 %3300, i8* %BRANCH_TAKEN, align 1
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3302 = select i1 %3298, i64 %3289, i64 %3287
  store i64 %3302, i64* %3301, align 8
  store %struct.Memory* %loadMem_41aabd, %struct.Memory** %MEMORY
  %loadBr_41aabd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41aabd = icmp eq i8 %loadBr_41aabd, 1
  br i1 %cmpBr_41aabd, label %block_.L_41ab5c, label %block_41aac3

block_41aac3:                                     ; preds = %block_.L_41aab7
  %loadMem_41aac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 33
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %3305 to i64*
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3307 = getelementptr inbounds %struct.GPR, %struct.GPR* %3306, i32 0, i32 15
  %3308 = getelementptr inbounds %struct.Reg, %struct.Reg* %3307, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %3308 to i64*
  %3309 = load i64, i64* %RBP.i135
  %3310 = sub i64 %3309, 24
  %3311 = load i64, i64* %PC.i134
  %3312 = add i64 %3311, 5
  store i64 %3312, i64* %PC.i134
  %3313 = inttoptr i64 %3310 to i64*
  %3314 = load i64, i64* %3313
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3315, align 1
  %3316 = trunc i64 %3314 to i32
  %3317 = and i32 %3316, 255
  %3318 = call i32 @llvm.ctpop.i32(i32 %3317)
  %3319 = trunc i32 %3318 to i8
  %3320 = and i8 %3319, 1
  %3321 = xor i8 %3320, 1
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3321, i8* %3322, align 1
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3323, align 1
  %3324 = icmp eq i64 %3314, 0
  %3325 = zext i1 %3324 to i8
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3325, i8* %3326, align 1
  %3327 = lshr i64 %3314, 63
  %3328 = trunc i64 %3327 to i8
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3328, i8* %3329, align 1
  %3330 = lshr i64 %3314, 63
  %3331 = xor i64 %3327, %3330
  %3332 = add i64 %3331, %3330
  %3333 = icmp eq i64 %3332, 2
  %3334 = zext i1 %3333 to i8
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3334, i8* %3335, align 1
  store %struct.Memory* %loadMem_41aac3, %struct.Memory** %MEMORY
  %loadMem_41aac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 33
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %3338 to i64*
  %3339 = load i64, i64* %PC.i133
  %3340 = add i64 %3339, 24
  %3341 = load i64, i64* %PC.i133
  %3342 = add i64 %3341, 6
  %3343 = load i64, i64* %PC.i133
  %3344 = add i64 %3343, 6
  store i64 %3344, i64* %PC.i133
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3346 = load i8, i8* %3345, align 1
  %3347 = icmp eq i8 %3346, 0
  %3348 = zext i1 %3347 to i8
  store i8 %3348, i8* %BRANCH_TAKEN, align 1
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3350 = select i1 %3347, i64 %3340, i64 %3342
  store i64 %3350, i64* %3349, align 8
  store %struct.Memory* %loadMem_41aac8, %struct.Memory** %MEMORY
  %loadBr_41aac8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41aac8 = icmp eq i8 %loadBr_41aac8, 1
  br i1 %cmpBr_41aac8, label %block_.L_41aae0, label %block_41aace

block_41aace:                                     ; preds = %block_41aac3
  %loadMem_41aace = load %struct.Memory*, %struct.Memory** %MEMORY
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 33
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3355 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3354, i64 0, i64 0
  %YMM0.i132 = bitcast %union.VectorReg* %3355 to %"class.std::bitset"*
  %3356 = bitcast %"class.std::bitset"* %YMM0.i132 to i8*
  %3357 = load i64, i64* %PC.i131
  %3358 = add i64 %3357, ptrtoint (%G_0x39d0a__rip__type* @G_0x39d0a__rip_ to i64)
  %3359 = load i64, i64* %PC.i131
  %3360 = add i64 %3359, 8
  store i64 %3360, i64* %PC.i131
  %3361 = inttoptr i64 %3358 to double*
  %3362 = load double, double* %3361
  %3363 = bitcast i8* %3356 to double*
  store double %3362, double* %3363, align 1
  %3364 = getelementptr inbounds i8, i8* %3356, i64 8
  %3365 = bitcast i8* %3364 to double*
  store double 0.000000e+00, double* %3365, align 1
  store %struct.Memory* %loadMem_41aace, %struct.Memory** %MEMORY
  %loadMem_41aad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 33
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %3368 to i64*
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 15
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %3371 to i64*
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3373 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3372, i64 0, i64 0
  %XMM0.i130 = bitcast %union.VectorReg* %3373 to %union.vec128_t*
  %3374 = load i64, i64* %RBP.i129
  %3375 = sub i64 %3374, 120
  %3376 = bitcast %union.vec128_t* %XMM0.i130 to i8*
  %3377 = load i64, i64* %PC.i128
  %3378 = add i64 %3377, 5
  store i64 %3378, i64* %PC.i128
  %3379 = bitcast i8* %3376 to double*
  %3380 = load double, double* %3379, align 1
  %3381 = inttoptr i64 %3375 to double*
  store double %3380, double* %3381
  store %struct.Memory* %loadMem_41aad6, %struct.Memory** %MEMORY
  %loadMem_41aadb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 33
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %3384 to i64*
  %3385 = load i64, i64* %PC.i127
  %3386 = add i64 %3385, 23
  %3387 = load i64, i64* %PC.i127
  %3388 = add i64 %3387, 5
  store i64 %3388, i64* %PC.i127
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3386, i64* %3389, align 8
  store %struct.Memory* %loadMem_41aadb, %struct.Memory** %MEMORY
  br label %block_.L_41aaf2

block_.L_41aae0:                                  ; preds = %block_41aac3
  %loadMem_41aae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 33
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %3392 to i64*
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 1
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %3395 to i64*
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 15
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %3398 to i64*
  %3399 = load i64, i64* %RBP.i126
  %3400 = sub i64 %3399, 24
  %3401 = load i64, i64* %PC.i124
  %3402 = add i64 %3401, 4
  store i64 %3402, i64* %PC.i124
  %3403 = inttoptr i64 %3400 to i64*
  %3404 = load i64, i64* %3403
  store i64 %3404, i64* %RAX.i125, align 8
  store %struct.Memory* %loadMem_41aae0, %struct.Memory** %MEMORY
  %loadMem_41aae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 33
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 5
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RCX.i122 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 15
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %3413 to i64*
  %3414 = load i64, i64* %RBP.i123
  %3415 = sub i64 %3414, 96
  %3416 = load i64, i64* %PC.i121
  %3417 = add i64 %3416, 4
  store i64 %3417, i64* %PC.i121
  %3418 = inttoptr i64 %3415 to i32*
  %3419 = load i32, i32* %3418
  %3420 = sext i32 %3419 to i64
  store i64 %3420, i64* %RCX.i122, align 8
  store %struct.Memory* %loadMem_41aae4, %struct.Memory** %MEMORY
  %loadMem_41aae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 33
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %3423 to i64*
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 1
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %3426 to i64*
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3428 = getelementptr inbounds %struct.GPR, %struct.GPR* %3427, i32 0, i32 5
  %3429 = getelementptr inbounds %struct.Reg, %struct.Reg* %3428, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %3429 to i64*
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3431 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3430, i64 0, i64 0
  %YMM0.i120 = bitcast %union.VectorReg* %3431 to %"class.std::bitset"*
  %3432 = bitcast %"class.std::bitset"* %YMM0.i120 to i8*
  %3433 = load i64, i64* %RAX.i118
  %3434 = load i64, i64* %RCX.i119
  %3435 = mul i64 %3434, 4
  %3436 = add i64 %3435, %3433
  %3437 = load i64, i64* %PC.i117
  %3438 = add i64 %3437, 5
  store i64 %3438, i64* %PC.i117
  %3439 = inttoptr i64 %3436 to i32*
  %3440 = load i32, i32* %3439
  %3441 = sitofp i32 %3440 to double
  %3442 = bitcast i8* %3432 to double*
  store double %3441, double* %3442, align 1
  store %struct.Memory* %loadMem_41aae8, %struct.Memory** %MEMORY
  %loadMem_41aaed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 33
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3445 to i64*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 15
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %3448 to i64*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3450 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3449, i64 0, i64 0
  %XMM0.i116 = bitcast %union.VectorReg* %3450 to %union.vec128_t*
  %3451 = load i64, i64* %RBP.i115
  %3452 = sub i64 %3451, 120
  %3453 = bitcast %union.vec128_t* %XMM0.i116 to i8*
  %3454 = load i64, i64* %PC.i114
  %3455 = add i64 %3454, 5
  store i64 %3455, i64* %PC.i114
  %3456 = bitcast i8* %3453 to double*
  %3457 = load double, double* %3456, align 1
  %3458 = inttoptr i64 %3452 to double*
  store double %3457, double* %3458
  store %struct.Memory* %loadMem_41aaed, %struct.Memory** %MEMORY
  br label %block_.L_41aaf2

block_.L_41aaf2:                                  ; preds = %block_.L_41aae0, %block_41aace
  %loadMem_41aaf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 33
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %3461 to i64*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 15
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %3464 to i64*
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3466 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3465, i64 0, i64 0
  %YMM0.i113 = bitcast %union.VectorReg* %3466 to %"class.std::bitset"*
  %3467 = bitcast %"class.std::bitset"* %YMM0.i113 to i8*
  %3468 = load i64, i64* %RBP.i112
  %3469 = sub i64 %3468, 120
  %3470 = load i64, i64* %PC.i111
  %3471 = add i64 %3470, 5
  store i64 %3471, i64* %PC.i111
  %3472 = inttoptr i64 %3469 to double*
  %3473 = load double, double* %3472
  %3474 = bitcast i8* %3467 to double*
  store double %3473, double* %3474, align 1
  %3475 = getelementptr inbounds i8, i8* %3467, i64 8
  %3476 = bitcast i8* %3475 to double*
  store double 0.000000e+00, double* %3476, align 1
  store %struct.Memory* %loadMem_41aaf2, %struct.Memory** %MEMORY
  %loadMem_41aaf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 33
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %3479 to i64*
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3481 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3480, i64 0, i64 1
  %YMM1.i110 = bitcast %union.VectorReg* %3481 to %"class.std::bitset"*
  %3482 = bitcast %"class.std::bitset"* %YMM1.i110 to i8*
  %3483 = load i64, i64* %PC.i109
  %3484 = add i64 %3483, ptrtoint (%G_0x39c25__rip__type* @G_0x39c25__rip_ to i64)
  %3485 = load i64, i64* %PC.i109
  %3486 = add i64 %3485, 8
  store i64 %3486, i64* %PC.i109
  %3487 = inttoptr i64 %3484 to float*
  %3488 = load float, float* %3487
  %3489 = bitcast i8* %3482 to float*
  store float %3488, float* %3489, align 1
  %3490 = getelementptr inbounds i8, i8* %3482, i64 4
  %3491 = bitcast i8* %3490 to float*
  store float 0.000000e+00, float* %3491, align 1
  %3492 = getelementptr inbounds i8, i8* %3482, i64 8
  %3493 = bitcast i8* %3492 to float*
  store float 0.000000e+00, float* %3493, align 1
  %3494 = getelementptr inbounds i8, i8* %3482, i64 12
  %3495 = bitcast i8* %3494 to float*
  store float 0.000000e+00, float* %3495, align 1
  store %struct.Memory* %loadMem_41aaf7, %struct.Memory** %MEMORY
  %loadMem_41aaff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 33
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %3498 to i64*
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 15
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %3501 to i64*
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3503 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3502, i64 0, i64 0
  %XMM0.i108 = bitcast %union.VectorReg* %3503 to %union.vec128_t*
  %3504 = load i64, i64* %RBP.i107
  %3505 = sub i64 %3504, 80
  %3506 = bitcast %union.vec128_t* %XMM0.i108 to i8*
  %3507 = load i64, i64* %PC.i106
  %3508 = add i64 %3507, 5
  store i64 %3508, i64* %PC.i106
  %3509 = bitcast i8* %3506 to double*
  %3510 = load double, double* %3509, align 1
  %3511 = inttoptr i64 %3505 to double*
  store double %3510, double* %3511
  store %struct.Memory* %loadMem_41aaff, %struct.Memory** %MEMORY
  %loadMem_41ab04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 33
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %3514 to i64*
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 15
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %3517 to i64*
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3519 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3518, i64 0, i64 0
  %YMM0.i105 = bitcast %union.VectorReg* %3519 to %"class.std::bitset"*
  %3520 = bitcast %"class.std::bitset"* %YMM0.i105 to i8*
  %3521 = load i64, i64* %RBP.i104
  %3522 = sub i64 %3521, 80
  %3523 = load i64, i64* %PC.i103
  %3524 = add i64 %3523, 5
  store i64 %3524, i64* %PC.i103
  %3525 = inttoptr i64 %3522 to double*
  %3526 = load double, double* %3525
  %3527 = bitcast i8* %3520 to double*
  store double %3526, double* %3527, align 1
  %3528 = getelementptr inbounds i8, i8* %3520, i64 8
  %3529 = bitcast i8* %3528 to double*
  store double 0.000000e+00, double* %3529, align 1
  store %struct.Memory* %loadMem_41ab04, %struct.Memory** %MEMORY
  %loadMem_41ab09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 33
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %3532 to i64*
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3534 = getelementptr inbounds %struct.GPR, %struct.GPR* %3533, i32 0, i32 15
  %3535 = getelementptr inbounds %struct.Reg, %struct.Reg* %3534, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %3535 to i64*
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3537 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3536, i64 0, i64 1
  %YMM1.i102 = bitcast %union.VectorReg* %3537 to %"class.std::bitset"*
  %3538 = bitcast %"class.std::bitset"* %YMM1.i102 to i8*
  %3539 = bitcast %"class.std::bitset"* %YMM1.i102 to i8*
  %3540 = load i64, i64* %RBP.i101
  %3541 = sub i64 %3540, 52
  %3542 = load i64, i64* %PC.i100
  %3543 = add i64 %3542, 5
  store i64 %3543, i64* %PC.i100
  %3544 = bitcast i8* %3539 to <2 x float>*
  %3545 = load <2 x float>, <2 x float>* %3544, align 1
  %3546 = getelementptr inbounds i8, i8* %3539, i64 8
  %3547 = bitcast i8* %3546 to <2 x i32>*
  %3548 = load <2 x i32>, <2 x i32>* %3547, align 1
  %3549 = inttoptr i64 %3541 to float*
  %3550 = load float, float* %3549
  %3551 = extractelement <2 x float> %3545, i32 0
  %3552 = fmul float %3551, %3550
  %3553 = bitcast i8* %3538 to float*
  store float %3552, float* %3553, align 1
  %3554 = bitcast <2 x float> %3545 to <2 x i32>
  %3555 = extractelement <2 x i32> %3554, i32 1
  %3556 = getelementptr inbounds i8, i8* %3538, i64 4
  %3557 = bitcast i8* %3556 to i32*
  store i32 %3555, i32* %3557, align 1
  %3558 = extractelement <2 x i32> %3548, i32 0
  %3559 = getelementptr inbounds i8, i8* %3538, i64 8
  %3560 = bitcast i8* %3559 to i32*
  store i32 %3558, i32* %3560, align 1
  %3561 = extractelement <2 x i32> %3548, i32 1
  %3562 = getelementptr inbounds i8, i8* %3538, i64 12
  %3563 = bitcast i8* %3562 to i32*
  store i32 %3561, i32* %3563, align 1
  store %struct.Memory* %loadMem_41ab09, %struct.Memory** %MEMORY
  %loadMem_41ab0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3565 = getelementptr inbounds %struct.GPR, %struct.GPR* %3564, i32 0, i32 33
  %3566 = getelementptr inbounds %struct.Reg, %struct.Reg* %3565, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %3566 to i64*
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 1
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %3569 to i64*
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 15
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %3572 to i64*
  %3573 = load i64, i64* %RBP.i99
  %3574 = sub i64 %3573, 16
  %3575 = load i64, i64* %PC.i97
  %3576 = add i64 %3575, 4
  store i64 %3576, i64* %PC.i97
  %3577 = inttoptr i64 %3574 to i64*
  %3578 = load i64, i64* %3577
  store i64 %3578, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_41ab0e, %struct.Memory** %MEMORY
  %loadMem_41ab12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 33
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %3581 to i64*
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 5
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %3584 to i64*
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 15
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %3587 to i64*
  %3588 = load i64, i64* %RBP.i96
  %3589 = sub i64 %3588, 96
  %3590 = load i64, i64* %PC.i94
  %3591 = add i64 %3590, 4
  store i64 %3591, i64* %PC.i94
  %3592 = inttoptr i64 %3589 to i32*
  %3593 = load i32, i32* %3592
  %3594 = sext i32 %3593 to i64
  store i64 %3594, i64* %RCX.i95, align 8
  store %struct.Memory* %loadMem_41ab12, %struct.Memory** %MEMORY
  %loadMem_41ab16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 33
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %3597 to i64*
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 1
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %3600 to i64*
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 5
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3603 to i64*
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3605 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3604, i64 0, i64 1
  %YMM1.i93 = bitcast %union.VectorReg* %3605 to %"class.std::bitset"*
  %3606 = bitcast %"class.std::bitset"* %YMM1.i93 to i8*
  %3607 = bitcast %"class.std::bitset"* %YMM1.i93 to i8*
  %3608 = load i64, i64* %RAX.i92
  %3609 = load i64, i64* %RCX.i
  %3610 = mul i64 %3609, 4
  %3611 = add i64 %3610, %3608
  %3612 = load i64, i64* %PC.i91
  %3613 = add i64 %3612, 5
  store i64 %3613, i64* %PC.i91
  %3614 = bitcast i8* %3607 to <2 x float>*
  %3615 = load <2 x float>, <2 x float>* %3614, align 1
  %3616 = getelementptr inbounds i8, i8* %3607, i64 8
  %3617 = bitcast i8* %3616 to <2 x i32>*
  %3618 = load <2 x i32>, <2 x i32>* %3617, align 1
  %3619 = inttoptr i64 %3611 to float*
  %3620 = load float, float* %3619
  %3621 = extractelement <2 x float> %3615, i32 0
  %3622 = fmul float %3621, %3620
  %3623 = bitcast i8* %3606 to float*
  store float %3622, float* %3623, align 1
  %3624 = bitcast <2 x float> %3615 to <2 x i32>
  %3625 = extractelement <2 x i32> %3624, i32 1
  %3626 = getelementptr inbounds i8, i8* %3606, i64 4
  %3627 = bitcast i8* %3626 to i32*
  store i32 %3625, i32* %3627, align 1
  %3628 = extractelement <2 x i32> %3618, i32 0
  %3629 = getelementptr inbounds i8, i8* %3606, i64 8
  %3630 = bitcast i8* %3629 to i32*
  store i32 %3628, i32* %3630, align 1
  %3631 = extractelement <2 x i32> %3618, i32 1
  %3632 = getelementptr inbounds i8, i8* %3606, i64 12
  %3633 = bitcast i8* %3632 to i32*
  store i32 %3631, i32* %3633, align 1
  store %struct.Memory* %loadMem_41ab16, %struct.Memory** %MEMORY
  %loadMem_41ab1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 33
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %3636 to i64*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3638 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3637, i64 0, i64 1
  %YMM1.i89 = bitcast %union.VectorReg* %3638 to %"class.std::bitset"*
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3640 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3639, i64 0, i64 1
  %XMM1.i90 = bitcast %union.VectorReg* %3640 to %union.vec128_t*
  %3641 = bitcast %"class.std::bitset"* %YMM1.i89 to i8*
  %3642 = bitcast %union.vec128_t* %XMM1.i90 to i8*
  %3643 = load i64, i64* %PC.i88
  %3644 = add i64 %3643, 4
  store i64 %3644, i64* %PC.i88
  %3645 = bitcast i8* %3642 to <2 x float>*
  %3646 = load <2 x float>, <2 x float>* %3645, align 1
  %3647 = extractelement <2 x float> %3646, i32 0
  %3648 = fpext float %3647 to double
  %3649 = bitcast i8* %3641 to double*
  store double %3648, double* %3649, align 1
  store %struct.Memory* %loadMem_41ab1b, %struct.Memory** %MEMORY
  %loadMem_41ab1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 33
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %3652 to i64*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 15
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %3655 to i64*
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3657 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3656, i64 0, i64 0
  %XMM0.i87 = bitcast %union.VectorReg* %3657 to %union.vec128_t*
  %3658 = load i64, i64* %RBP.i86
  %3659 = sub i64 %3658, 128
  %3660 = bitcast %union.vec128_t* %XMM0.i87 to i8*
  %3661 = load i64, i64* %PC.i85
  %3662 = add i64 %3661, 5
  store i64 %3662, i64* %PC.i85
  %3663 = bitcast i8* %3660 to double*
  %3664 = load double, double* %3663, align 1
  %3665 = inttoptr i64 %3659 to double*
  store double %3664, double* %3665
  store %struct.Memory* %loadMem_41ab1f, %struct.Memory** %MEMORY
  %loadMem_41ab24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 33
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3668 to i64*
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3670 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3669, i64 0, i64 0
  %YMM0.i83 = bitcast %union.VectorReg* %3670 to %"class.std::bitset"*
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3672 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3671, i64 0, i64 1
  %XMM1.i84 = bitcast %union.VectorReg* %3672 to %union.vec128_t*
  %3673 = bitcast %"class.std::bitset"* %YMM0.i83 to i8*
  %3674 = bitcast %union.vec128_t* %XMM1.i84 to i8*
  %3675 = load i64, i64* %PC.i82
  %3676 = add i64 %3675, 3
  store i64 %3676, i64* %PC.i82
  %3677 = bitcast i8* %3674 to <2 x i32>*
  %3678 = load <2 x i32>, <2 x i32>* %3677, align 1
  %3679 = getelementptr inbounds i8, i8* %3674, i64 8
  %3680 = bitcast i8* %3679 to <2 x i32>*
  %3681 = load <2 x i32>, <2 x i32>* %3680, align 1
  %3682 = extractelement <2 x i32> %3678, i32 0
  %3683 = bitcast i8* %3673 to i32*
  store i32 %3682, i32* %3683, align 1
  %3684 = extractelement <2 x i32> %3678, i32 1
  %3685 = getelementptr inbounds i8, i8* %3673, i64 4
  %3686 = bitcast i8* %3685 to i32*
  store i32 %3684, i32* %3686, align 1
  %3687 = extractelement <2 x i32> %3681, i32 0
  %3688 = getelementptr inbounds i8, i8* %3673, i64 8
  %3689 = bitcast i8* %3688 to i32*
  store i32 %3687, i32* %3689, align 1
  %3690 = extractelement <2 x i32> %3681, i32 1
  %3691 = getelementptr inbounds i8, i8* %3673, i64 12
  %3692 = bitcast i8* %3691 to i32*
  store i32 %3690, i32* %3692, align 1
  store %struct.Memory* %loadMem_41ab24, %struct.Memory** %MEMORY
  %loadMem1_41ab27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3694 = getelementptr inbounds %struct.GPR, %struct.GPR* %3693, i32 0, i32 33
  %3695 = getelementptr inbounds %struct.Reg, %struct.Reg* %3694, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %3695 to i64*
  %3696 = load i64, i64* %PC.i81
  %3697 = add i64 %3696, -104199
  %3698 = load i64, i64* %PC.i81
  %3699 = add i64 %3698, 5
  %3700 = load i64, i64* %PC.i81
  %3701 = add i64 %3700, 5
  store i64 %3701, i64* %PC.i81
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3703 = load i64, i64* %3702, align 8
  %3704 = add i64 %3703, -8
  %3705 = inttoptr i64 %3704 to i64*
  store i64 %3699, i64* %3705
  store i64 %3704, i64* %3702, align 8
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3697, i64* %3706, align 8
  store %struct.Memory* %loadMem1_41ab27, %struct.Memory** %MEMORY
  %loadMem2_41ab27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ab27 = load i64, i64* %3
  %3707 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_41ab27)
  store %struct.Memory* %3707, %struct.Memory** %MEMORY
  %loadMem_41ab2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3709 = getelementptr inbounds %struct.GPR, %struct.GPR* %3708, i32 0, i32 33
  %3710 = getelementptr inbounds %struct.Reg, %struct.Reg* %3709, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3710 to i64*
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3712 = getelementptr inbounds %struct.GPR, %struct.GPR* %3711, i32 0, i32 15
  %3713 = getelementptr inbounds %struct.Reg, %struct.Reg* %3712, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %3713 to i64*
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3715 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3714, i64 0, i64 1
  %YMM1.i78 = bitcast %union.VectorReg* %3715 to %"class.std::bitset"*
  %3716 = bitcast %"class.std::bitset"* %YMM1.i78 to i8*
  %3717 = load i64, i64* %RBP.i77
  %3718 = sub i64 %3717, 128
  %3719 = load i64, i64* %PC.i76
  %3720 = add i64 %3719, 5
  store i64 %3720, i64* %PC.i76
  %3721 = inttoptr i64 %3718 to double*
  %3722 = load double, double* %3721
  %3723 = bitcast i8* %3716 to double*
  store double %3722, double* %3723, align 1
  %3724 = getelementptr inbounds i8, i8* %3716, i64 8
  %3725 = bitcast i8* %3724 to double*
  store double 0.000000e+00, double* %3725, align 1
  store %struct.Memory* %loadMem_41ab2c, %struct.Memory** %MEMORY
  %loadMem_41ab31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 33
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3728 to i64*
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3730 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3729, i64 0, i64 1
  %YMM1.i74 = bitcast %union.VectorReg* %3730 to %"class.std::bitset"*
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3732 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3731, i64 0, i64 0
  %XMM0.i75 = bitcast %union.VectorReg* %3732 to %union.vec128_t*
  %3733 = bitcast %"class.std::bitset"* %YMM1.i74 to i8*
  %3734 = bitcast %"class.std::bitset"* %YMM1.i74 to i8*
  %3735 = bitcast %union.vec128_t* %XMM0.i75 to i8*
  %3736 = load i64, i64* %PC.i73
  %3737 = add i64 %3736, 4
  store i64 %3737, i64* %PC.i73
  %3738 = bitcast i8* %3734 to double*
  %3739 = load double, double* %3738, align 1
  %3740 = getelementptr inbounds i8, i8* %3734, i64 8
  %3741 = bitcast i8* %3740 to i64*
  %3742 = load i64, i64* %3741, align 1
  %3743 = bitcast i8* %3735 to double*
  %3744 = load double, double* %3743, align 1
  %3745 = fmul double %3739, %3744
  %3746 = bitcast i8* %3733 to double*
  store double %3745, double* %3746, align 1
  %3747 = getelementptr inbounds i8, i8* %3733, i64 8
  %3748 = bitcast i8* %3747 to i64*
  store i64 %3742, i64* %3748, align 1
  store %struct.Memory* %loadMem_41ab31, %struct.Memory** %MEMORY
  %loadMem_41ab35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 33
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3751 to i64*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 15
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %3754 to i64*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3756 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3755, i64 0, i64 1
  %YMM1.i72 = bitcast %union.VectorReg* %3756 to %"class.std::bitset"*
  %3757 = bitcast %"class.std::bitset"* %YMM1.i72 to i8*
  %3758 = bitcast %"class.std::bitset"* %YMM1.i72 to i8*
  %3759 = load i64, i64* %RBP.i71
  %3760 = sub i64 %3759, 72
  %3761 = load i64, i64* %PC.i70
  %3762 = add i64 %3761, 5
  store i64 %3762, i64* %PC.i70
  %3763 = bitcast i8* %3758 to double*
  %3764 = load double, double* %3763, align 1
  %3765 = getelementptr inbounds i8, i8* %3758, i64 8
  %3766 = bitcast i8* %3765 to i64*
  %3767 = load i64, i64* %3766, align 1
  %3768 = inttoptr i64 %3760 to double*
  %3769 = load double, double* %3768
  %3770 = fadd double %3764, %3769
  %3771 = bitcast i8* %3757 to double*
  store double %3770, double* %3771, align 1
  %3772 = getelementptr inbounds i8, i8* %3757, i64 8
  %3773 = bitcast i8* %3772 to i64*
  store i64 %3767, i64* %3773, align 1
  store %struct.Memory* %loadMem_41ab35, %struct.Memory** %MEMORY
  %loadMem_41ab3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 33
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %3776 to i64*
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 15
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %3779 to i64*
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3781 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3780, i64 0, i64 1
  %XMM1.i69 = bitcast %union.VectorReg* %3781 to %union.vec128_t*
  %3782 = load i64, i64* %RBP.i68
  %3783 = sub i64 %3782, 72
  %3784 = bitcast %union.vec128_t* %XMM1.i69 to i8*
  %3785 = load i64, i64* %PC.i67
  %3786 = add i64 %3785, 5
  store i64 %3786, i64* %PC.i67
  %3787 = bitcast i8* %3784 to double*
  %3788 = load double, double* %3787, align 1
  %3789 = inttoptr i64 %3783 to double*
  store double %3788, double* %3789
  store %struct.Memory* %loadMem_41ab3a, %struct.Memory** %MEMORY
  %loadMem_41ab3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 33
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3792 to i64*
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 15
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %3795 to i64*
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3797 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3796, i64 0, i64 0
  %YMM0.i66 = bitcast %union.VectorReg* %3797 to %"class.std::bitset"*
  %3798 = bitcast %"class.std::bitset"* %YMM0.i66 to i8*
  %3799 = load i64, i64* %RBP.i65
  %3800 = sub i64 %3799, 80
  %3801 = load i64, i64* %PC.i64
  %3802 = add i64 %3801, 5
  store i64 %3802, i64* %PC.i64
  %3803 = inttoptr i64 %3800 to double*
  %3804 = load double, double* %3803
  %3805 = bitcast i8* %3798 to double*
  store double %3804, double* %3805, align 1
  %3806 = getelementptr inbounds i8, i8* %3798, i64 8
  %3807 = bitcast i8* %3806 to double*
  store double 0.000000e+00, double* %3807, align 1
  store %struct.Memory* %loadMem_41ab3f, %struct.Memory** %MEMORY
  %loadMem_41ab44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 33
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %3810 to i64*
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 15
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %3813 to i64*
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3815 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3814, i64 0, i64 0
  %YMM0.i63 = bitcast %union.VectorReg* %3815 to %"class.std::bitset"*
  %3816 = bitcast %"class.std::bitset"* %YMM0.i63 to i8*
  %3817 = bitcast %"class.std::bitset"* %YMM0.i63 to i8*
  %3818 = load i64, i64* %RBP.i62
  %3819 = sub i64 %3818, 88
  %3820 = load i64, i64* %PC.i61
  %3821 = add i64 %3820, 5
  store i64 %3821, i64* %PC.i61
  %3822 = bitcast i8* %3817 to double*
  %3823 = load double, double* %3822, align 1
  %3824 = getelementptr inbounds i8, i8* %3817, i64 8
  %3825 = bitcast i8* %3824 to i64*
  %3826 = load i64, i64* %3825, align 1
  %3827 = inttoptr i64 %3819 to double*
  %3828 = load double, double* %3827
  %3829 = fadd double %3823, %3828
  %3830 = bitcast i8* %3816 to double*
  store double %3829, double* %3830, align 1
  %3831 = getelementptr inbounds i8, i8* %3816, i64 8
  %3832 = bitcast i8* %3831 to i64*
  store i64 %3826, i64* %3832, align 1
  store %struct.Memory* %loadMem_41ab44, %struct.Memory** %MEMORY
  %loadMem_41ab49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 33
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3835 to i64*
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 15
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %3838 to i64*
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3840 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3839, i64 0, i64 0
  %XMM0.i60 = bitcast %union.VectorReg* %3840 to %union.vec128_t*
  %3841 = load i64, i64* %RBP.i59
  %3842 = sub i64 %3841, 88
  %3843 = bitcast %union.vec128_t* %XMM0.i60 to i8*
  %3844 = load i64, i64* %PC.i58
  %3845 = add i64 %3844, 5
  store i64 %3845, i64* %PC.i58
  %3846 = bitcast i8* %3843 to double*
  %3847 = load double, double* %3846, align 1
  %3848 = inttoptr i64 %3842 to double*
  store double %3847, double* %3848
  store %struct.Memory* %loadMem_41ab49, %struct.Memory** %MEMORY
  %loadMem_41ab4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 33
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %3851 to i64*
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 1
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %3854 to i64*
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 15
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %3857 to i64*
  %3858 = load i64, i64* %RBP.i57
  %3859 = sub i64 %3858, 96
  %3860 = load i64, i64* %PC.i55
  %3861 = add i64 %3860, 3
  store i64 %3861, i64* %PC.i55
  %3862 = inttoptr i64 %3859 to i32*
  %3863 = load i32, i32* %3862
  %3864 = zext i32 %3863 to i64
  store i64 %3864, i64* %RAX.i56, align 8
  store %struct.Memory* %loadMem_41ab4e, %struct.Memory** %MEMORY
  %loadMem_41ab51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 33
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %3867 to i64*
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 1
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %3870 to i64*
  %3871 = load i64, i64* %RAX.i54
  %3872 = load i64, i64* %PC.i53
  %3873 = add i64 %3872, 3
  store i64 %3873, i64* %PC.i53
  %3874 = trunc i64 %3871 to i32
  %3875 = add i32 1, %3874
  %3876 = zext i32 %3875 to i64
  store i64 %3876, i64* %RAX.i54, align 8
  %3877 = icmp ult i32 %3875, %3874
  %3878 = icmp ult i32 %3875, 1
  %3879 = or i1 %3877, %3878
  %3880 = zext i1 %3879 to i8
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3880, i8* %3881, align 1
  %3882 = and i32 %3875, 255
  %3883 = call i32 @llvm.ctpop.i32(i32 %3882)
  %3884 = trunc i32 %3883 to i8
  %3885 = and i8 %3884, 1
  %3886 = xor i8 %3885, 1
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3886, i8* %3887, align 1
  %3888 = xor i64 1, %3871
  %3889 = trunc i64 %3888 to i32
  %3890 = xor i32 %3889, %3875
  %3891 = lshr i32 %3890, 4
  %3892 = trunc i32 %3891 to i8
  %3893 = and i8 %3892, 1
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3893, i8* %3894, align 1
  %3895 = icmp eq i32 %3875, 0
  %3896 = zext i1 %3895 to i8
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3896, i8* %3897, align 1
  %3898 = lshr i32 %3875, 31
  %3899 = trunc i32 %3898 to i8
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3899, i8* %3900, align 1
  %3901 = lshr i32 %3874, 31
  %3902 = xor i32 %3898, %3901
  %3903 = add i32 %3902, %3898
  %3904 = icmp eq i32 %3903, 2
  %3905 = zext i1 %3904 to i8
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3905, i8* %3906, align 1
  store %struct.Memory* %loadMem_41ab51, %struct.Memory** %MEMORY
  %loadMem_41ab54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 33
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %3909 to i64*
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 1
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3912 to i32*
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3914 = getelementptr inbounds %struct.GPR, %struct.GPR* %3913, i32 0, i32 15
  %3915 = getelementptr inbounds %struct.Reg, %struct.Reg* %3914, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %3915 to i64*
  %3916 = load i64, i64* %RBP.i52
  %3917 = sub i64 %3916, 96
  %3918 = load i32, i32* %EAX.i
  %3919 = zext i32 %3918 to i64
  %3920 = load i64, i64* %PC.i51
  %3921 = add i64 %3920, 3
  store i64 %3921, i64* %PC.i51
  %3922 = inttoptr i64 %3917 to i32*
  store i32 %3918, i32* %3922
  store %struct.Memory* %loadMem_41ab54, %struct.Memory** %MEMORY
  %loadMem_41ab57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 33
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %3925 to i64*
  %3926 = load i64, i64* %PC.i50
  %3927 = add i64 %3926, -160
  %3928 = load i64, i64* %PC.i50
  %3929 = add i64 %3928, 5
  store i64 %3929, i64* %PC.i50
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3927, i64* %3930, align 8
  store %struct.Memory* %loadMem_41ab57, %struct.Memory** %MEMORY
  br label %block_.L_41aab7

block_.L_41ab5c:                                  ; preds = %block_.L_41aab7
  %loadMem_41ab5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 33
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3933 to i64*
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 15
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %3936 to i64*
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3938 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3937, i64 0, i64 0
  %YMM0.i49 = bitcast %union.VectorReg* %3938 to %"class.std::bitset"*
  %3939 = bitcast %"class.std::bitset"* %YMM0.i49 to i8*
  %3940 = load i64, i64* %RBP.i48
  %3941 = sub i64 %3940, 72
  %3942 = load i64, i64* %PC.i47
  %3943 = add i64 %3942, 5
  store i64 %3943, i64* %PC.i47
  %3944 = inttoptr i64 %3941 to double*
  %3945 = load double, double* %3944
  %3946 = bitcast i8* %3939 to double*
  store double %3945, double* %3946, align 1
  %3947 = getelementptr inbounds i8, i8* %3939, i64 8
  %3948 = bitcast i8* %3947 to double*
  store double 0.000000e+00, double* %3948, align 1
  store %struct.Memory* %loadMem_41ab5c, %struct.Memory** %MEMORY
  %loadMem_41ab61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3950 = getelementptr inbounds %struct.GPR, %struct.GPR* %3949, i32 0, i32 33
  %3951 = getelementptr inbounds %struct.Reg, %struct.Reg* %3950, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3951 to i64*
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 15
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %3954 to i64*
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3956 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3955, i64 0, i64 0
  %YMM0.i46 = bitcast %union.VectorReg* %3956 to %"class.std::bitset"*
  %3957 = bitcast %"class.std::bitset"* %YMM0.i46 to i8*
  %3958 = bitcast %"class.std::bitset"* %YMM0.i46 to i8*
  %3959 = load i64, i64* %RBP.i45
  %3960 = sub i64 %3959, 88
  %3961 = load i64, i64* %PC.i44
  %3962 = add i64 %3961, 5
  store i64 %3962, i64* %PC.i44
  %3963 = bitcast i8* %3958 to double*
  %3964 = load double, double* %3963, align 1
  %3965 = getelementptr inbounds i8, i8* %3958, i64 8
  %3966 = bitcast i8* %3965 to i64*
  %3967 = load i64, i64* %3966, align 1
  %3968 = inttoptr i64 %3960 to double*
  %3969 = load double, double* %3968
  %3970 = fdiv double %3964, %3969
  %3971 = bitcast i8* %3957 to double*
  store double %3970, double* %3971, align 1
  %3972 = getelementptr inbounds i8, i8* %3957, i64 8
  %3973 = bitcast i8* %3972 to i64*
  store i64 %3967, i64* %3973, align 1
  store %struct.Memory* %loadMem_41ab61, %struct.Memory** %MEMORY
  %loadMem1_41ab66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3975 = getelementptr inbounds %struct.GPR, %struct.GPR* %3974, i32 0, i32 33
  %3976 = getelementptr inbounds %struct.Reg, %struct.Reg* %3975, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %3976 to i64*
  %3977 = load i64, i64* %PC.i43
  %3978 = add i64 %3977, -104054
  %3979 = load i64, i64* %PC.i43
  %3980 = add i64 %3979, 5
  %3981 = load i64, i64* %PC.i43
  %3982 = add i64 %3981, 5
  store i64 %3982, i64* %PC.i43
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3984 = load i64, i64* %3983, align 8
  %3985 = add i64 %3984, -8
  %3986 = inttoptr i64 %3985 to i64*
  store i64 %3980, i64* %3986
  store i64 %3985, i64* %3983, align 8
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3978, i64* %3987, align 8
  store %struct.Memory* %loadMem1_41ab66, %struct.Memory** %MEMORY
  %loadMem2_41ab66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ab66 = load i64, i64* %3
  %3988 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %loadMem2_41ab66)
  store %struct.Memory* %3988, %struct.Memory** %MEMORY
  %loadMem_41ab6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 33
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %3991 to i64*
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3993 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3992, i64 0, i64 1
  %YMM1.i39 = bitcast %union.VectorReg* %3993 to %"class.std::bitset"*
  %3994 = bitcast %"class.std::bitset"* %YMM1.i39 to i8*
  %3995 = load i64, i64* %PC.i38
  %3996 = add i64 %3995, ptrtoint (%G_0x39cbd__rip__type* @G_0x39cbd__rip_ to i64)
  %3997 = load i64, i64* %PC.i38
  %3998 = add i64 %3997, 8
  store i64 %3998, i64* %PC.i38
  %3999 = inttoptr i64 %3996 to double*
  %4000 = load double, double* %3999
  %4001 = bitcast i8* %3994 to double*
  store double %4000, double* %4001, align 1
  %4002 = getelementptr inbounds i8, i8* %3994, i64 8
  %4003 = bitcast i8* %4002 to double*
  store double 0.000000e+00, double* %4003, align 1
  store %struct.Memory* %loadMem_41ab6b, %struct.Memory** %MEMORY
  %loadMem_41ab73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 33
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %4006 to i64*
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4008 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4007, i64 0, i64 1
  %YMM1.i36 = bitcast %union.VectorReg* %4008 to %"class.std::bitset"*
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4010 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4009, i64 0, i64 0
  %XMM0.i37 = bitcast %union.VectorReg* %4010 to %union.vec128_t*
  %4011 = bitcast %"class.std::bitset"* %YMM1.i36 to i8*
  %4012 = bitcast %"class.std::bitset"* %YMM1.i36 to i8*
  %4013 = bitcast %union.vec128_t* %XMM0.i37 to i8*
  %4014 = load i64, i64* %PC.i35
  %4015 = add i64 %4014, 4
  store i64 %4015, i64* %PC.i35
  %4016 = bitcast i8* %4012 to double*
  %4017 = load double, double* %4016, align 1
  %4018 = getelementptr inbounds i8, i8* %4012, i64 8
  %4019 = bitcast i8* %4018 to i64*
  %4020 = load i64, i64* %4019, align 1
  %4021 = bitcast i8* %4013 to double*
  %4022 = load double, double* %4021, align 1
  %4023 = fmul double %4017, %4022
  %4024 = bitcast i8* %4011 to double*
  store double %4023, double* %4024, align 1
  %4025 = getelementptr inbounds i8, i8* %4011, i64 8
  %4026 = bitcast i8* %4025 to i64*
  store i64 %4020, i64* %4026, align 1
  store %struct.Memory* %loadMem_41ab73, %struct.Memory** %MEMORY
  %loadMem_41ab77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4028 = getelementptr inbounds %struct.GPR, %struct.GPR* %4027, i32 0, i32 33
  %4029 = getelementptr inbounds %struct.Reg, %struct.Reg* %4028, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4029 to i64*
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 15
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %4032 to i64*
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4034 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4033, i64 0, i64 0
  %YMM0.i34 = bitcast %union.VectorReg* %4034 to %"class.std::bitset"*
  %4035 = bitcast %"class.std::bitset"* %YMM0.i34 to i8*
  %4036 = load i64, i64* %RBP.i33
  %4037 = sub i64 %4036, 52
  %4038 = load i64, i64* %PC.i32
  %4039 = add i64 %4038, 5
  store i64 %4039, i64* %PC.i32
  %4040 = inttoptr i64 %4037 to float*
  %4041 = load float, float* %4040
  %4042 = fpext float %4041 to double
  %4043 = bitcast i8* %4035 to double*
  store double %4042, double* %4043, align 1
  store %struct.Memory* %loadMem_41ab77, %struct.Memory** %MEMORY
  %loadMem_41ab7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 33
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %4046 to i64*
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4048 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4047, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %4048 to %"class.std::bitset"*
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4050 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4049, i64 0, i64 0
  %XMM0.i31 = bitcast %union.VectorReg* %4050 to %union.vec128_t*
  %4051 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4052 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4053 = bitcast %union.vec128_t* %XMM0.i31 to i8*
  %4054 = load i64, i64* %PC.i30
  %4055 = add i64 %4054, 4
  store i64 %4055, i64* %PC.i30
  %4056 = bitcast i8* %4052 to double*
  %4057 = load double, double* %4056, align 1
  %4058 = getelementptr inbounds i8, i8* %4052, i64 8
  %4059 = bitcast i8* %4058 to i64*
  %4060 = load i64, i64* %4059, align 1
  %4061 = bitcast i8* %4053 to double*
  %4062 = load double, double* %4061, align 1
  %4063 = fdiv double %4057, %4062
  %4064 = bitcast i8* %4051 to double*
  store double %4063, double* %4064, align 1
  %4065 = getelementptr inbounds i8, i8* %4051, i64 8
  %4066 = bitcast i8* %4065 to i64*
  store i64 %4060, i64* %4066, align 1
  store %struct.Memory* %loadMem_41ab7c, %struct.Memory** %MEMORY
  %loadMem_41ab80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 33
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4069 to i64*
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4071 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4070, i64 0, i64 0
  %YMM0.i29 = bitcast %union.VectorReg* %4071 to %"class.std::bitset"*
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4073 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4072, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4073 to %union.vec128_t*
  %4074 = bitcast %"class.std::bitset"* %YMM0.i29 to i8*
  %4075 = bitcast %union.vec128_t* %XMM1.i to i8*
  %4076 = load i64, i64* %PC.i28
  %4077 = add i64 %4076, 4
  store i64 %4077, i64* %PC.i28
  %4078 = bitcast i8* %4074 to <2 x i32>*
  %4079 = load <2 x i32>, <2 x i32>* %4078, align 1
  %4080 = getelementptr inbounds i8, i8* %4074, i64 8
  %4081 = bitcast i8* %4080 to <2 x i32>*
  %4082 = load <2 x i32>, <2 x i32>* %4081, align 1
  %4083 = bitcast i8* %4075 to double*
  %4084 = load double, double* %4083, align 1
  %4085 = fptrunc double %4084 to float
  %4086 = bitcast i8* %4074 to float*
  store float %4085, float* %4086, align 1
  %4087 = extractelement <2 x i32> %4079, i32 1
  %4088 = getelementptr inbounds i8, i8* %4074, i64 4
  %4089 = bitcast i8* %4088 to i32*
  store i32 %4087, i32* %4089, align 1
  %4090 = extractelement <2 x i32> %4082, i32 0
  %4091 = bitcast i8* %4080 to i32*
  store i32 %4090, i32* %4091, align 1
  %4092 = extractelement <2 x i32> %4082, i32 1
  %4093 = getelementptr inbounds i8, i8* %4074, i64 12
  %4094 = bitcast i8* %4093 to i32*
  store i32 %4092, i32* %4094, align 1
  store %struct.Memory* %loadMem_41ab80, %struct.Memory** %MEMORY
  %loadMem_41ab84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 33
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %4097 to i64*
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4099 = getelementptr inbounds %struct.GPR, %struct.GPR* %4098, i32 0, i32 15
  %4100 = getelementptr inbounds %struct.Reg, %struct.Reg* %4099, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %4100 to i64*
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4102 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4101, i64 0, i64 0
  %XMM0.i27 = bitcast %union.VectorReg* %4102 to %union.vec128_t*
  %4103 = load i64, i64* %RBP.i26
  %4104 = sub i64 %4103, 56
  %4105 = bitcast %union.vec128_t* %XMM0.i27 to i8*
  %4106 = load i64, i64* %PC.i25
  %4107 = add i64 %4106, 5
  store i64 %4107, i64* %PC.i25
  %4108 = bitcast i8* %4105 to <2 x float>*
  %4109 = load <2 x float>, <2 x float>* %4108, align 1
  %4110 = extractelement <2 x float> %4109, i32 0
  %4111 = inttoptr i64 %4104 to float*
  store float %4110, float* %4111
  store %struct.Memory* %loadMem_41ab84, %struct.Memory** %MEMORY
  %loadMem_41ab89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 33
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4114 to i64*
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 15
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %4117 to i64*
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4119 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4118, i64 0, i64 0
  %YMM0.i24 = bitcast %union.VectorReg* %4119 to %"class.std::bitset"*
  %4120 = bitcast %"class.std::bitset"* %YMM0.i24 to i8*
  %4121 = load i64, i64* %RBP.i23
  %4122 = sub i64 %4121, 52
  %4123 = load i64, i64* %PC.i22
  %4124 = add i64 %4123, 5
  store i64 %4124, i64* %PC.i22
  %4125 = inttoptr i64 %4122 to float*
  %4126 = load float, float* %4125
  %4127 = bitcast i8* %4120 to float*
  store float %4126, float* %4127, align 1
  %4128 = getelementptr inbounds i8, i8* %4120, i64 4
  %4129 = bitcast i8* %4128 to float*
  store float 0.000000e+00, float* %4129, align 1
  %4130 = getelementptr inbounds i8, i8* %4120, i64 8
  %4131 = bitcast i8* %4130 to float*
  store float 0.000000e+00, float* %4131, align 1
  %4132 = getelementptr inbounds i8, i8* %4120, i64 12
  %4133 = bitcast i8* %4132 to float*
  store float 0.000000e+00, float* %4133, align 1
  store %struct.Memory* %loadMem_41ab89, %struct.Memory** %MEMORY
  %loadMem_41ab8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4135 = getelementptr inbounds %struct.GPR, %struct.GPR* %4134, i32 0, i32 33
  %4136 = getelementptr inbounds %struct.Reg, %struct.Reg* %4135, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %4136 to i64*
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4138 = getelementptr inbounds %struct.GPR, %struct.GPR* %4137, i32 0, i32 1
  %4139 = getelementptr inbounds %struct.Reg, %struct.Reg* %4138, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %4139 to i64*
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4141 = getelementptr inbounds %struct.GPR, %struct.GPR* %4140, i32 0, i32 15
  %4142 = getelementptr inbounds %struct.Reg, %struct.Reg* %4141, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %4142 to i64*
  %4143 = load i64, i64* %RBP.i21
  %4144 = sub i64 %4143, 48
  %4145 = load i64, i64* %PC.i19
  %4146 = add i64 %4145, 4
  store i64 %4146, i64* %PC.i19
  %4147 = inttoptr i64 %4144 to i64*
  %4148 = load i64, i64* %4147
  store i64 %4148, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_41ab8e, %struct.Memory** %MEMORY
  %loadMem_41ab92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 33
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4151 to i64*
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 1
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %4154 to i64*
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4156 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4155, i64 0, i64 0
  %XMM0.i18 = bitcast %union.VectorReg* %4156 to %union.vec128_t*
  %4157 = load i64, i64* %RAX.i17
  %4158 = bitcast %union.vec128_t* %XMM0.i18 to i8*
  %4159 = load i64, i64* %PC.i16
  %4160 = add i64 %4159, 4
  store i64 %4160, i64* %PC.i16
  %4161 = bitcast i8* %4158 to <2 x float>*
  %4162 = load <2 x float>, <2 x float>* %4161, align 1
  %4163 = extractelement <2 x float> %4162, i32 0
  %4164 = inttoptr i64 %4157 to float*
  store float %4163, float* %4164
  store %struct.Memory* %loadMem_41ab92, %struct.Memory** %MEMORY
  %loadMem_41ab96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 33
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4167 to i64*
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4169 = getelementptr inbounds %struct.GPR, %struct.GPR* %4168, i32 0, i32 15
  %4170 = getelementptr inbounds %struct.Reg, %struct.Reg* %4169, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %4170 to i64*
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4172 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4171, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %4172 to %"class.std::bitset"*
  %4173 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4174 = load i64, i64* %RBP.i15
  %4175 = sub i64 %4174, 56
  %4176 = load i64, i64* %PC.i14
  %4177 = add i64 %4176, 5
  store i64 %4177, i64* %PC.i14
  %4178 = inttoptr i64 %4175 to float*
  %4179 = load float, float* %4178
  %4180 = bitcast i8* %4173 to float*
  store float %4179, float* %4180, align 1
  %4181 = getelementptr inbounds i8, i8* %4173, i64 4
  %4182 = bitcast i8* %4181 to float*
  store float 0.000000e+00, float* %4182, align 1
  %4183 = getelementptr inbounds i8, i8* %4173, i64 8
  %4184 = bitcast i8* %4183 to float*
  store float 0.000000e+00, float* %4184, align 1
  %4185 = getelementptr inbounds i8, i8* %4173, i64 12
  %4186 = bitcast i8* %4185 to float*
  store float 0.000000e+00, float* %4186, align 1
  store %struct.Memory* %loadMem_41ab96, %struct.Memory** %MEMORY
  %loadMem_41ab9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 33
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4189 to i64*
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4191 = getelementptr inbounds %struct.GPR, %struct.GPR* %4190, i32 0, i32 1
  %4192 = getelementptr inbounds %struct.Reg, %struct.Reg* %4191, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %4192 to i64*
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4194 = getelementptr inbounds %struct.GPR, %struct.GPR* %4193, i32 0, i32 15
  %4195 = getelementptr inbounds %struct.Reg, %struct.Reg* %4194, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %4195 to i64*
  %4196 = load i64, i64* %RBP.i13
  %4197 = sub i64 %4196, 40
  %4198 = load i64, i64* %PC.i11
  %4199 = add i64 %4198, 4
  store i64 %4199, i64* %PC.i11
  %4200 = inttoptr i64 %4197 to i64*
  %4201 = load i64, i64* %4200
  store i64 %4201, i64* %RAX.i12, align 8
  store %struct.Memory* %loadMem_41ab9b, %struct.Memory** %MEMORY
  %loadMem_41ab9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 33
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4204 to i64*
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 1
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %4207 to i64*
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4209 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4208, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %4209 to %union.vec128_t*
  %4210 = load i64, i64* %RAX.i10
  %4211 = bitcast %union.vec128_t* %XMM0.i to i8*
  %4212 = load i64, i64* %PC.i9
  %4213 = add i64 %4212, 4
  store i64 %4213, i64* %PC.i9
  %4214 = bitcast i8* %4211 to <2 x float>*
  %4215 = load <2 x float>, <2 x float>* %4214, align 1
  %4216 = extractelement <2 x float> %4215, i32 0
  %4217 = inttoptr i64 %4210 to float*
  store float %4216, float* %4217
  store %struct.Memory* %loadMem_41ab9f, %struct.Memory** %MEMORY
  %loadMem_41aba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4219 = getelementptr inbounds %struct.GPR, %struct.GPR* %4218, i32 0, i32 33
  %4220 = getelementptr inbounds %struct.Reg, %struct.Reg* %4219, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4220 to i64*
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 15
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %4223 to i64*
  %4224 = load i64, i64* %RBP.i8
  %4225 = sub i64 %4224, 4
  %4226 = load i64, i64* %PC.i7
  %4227 = add i64 %4226, 7
  store i64 %4227, i64* %PC.i7
  %4228 = inttoptr i64 %4225 to i32*
  store i32 1, i32* %4228
  store %struct.Memory* %loadMem_41aba3, %struct.Memory** %MEMORY
  br label %block_.L_41abaa

block_.L_41abaa:                                  ; preds = %block_.L_41ab5c, %block_41aa8d, %block_41a9a8, %block_41a915
  %loadMem_41abaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4230 = getelementptr inbounds %struct.GPR, %struct.GPR* %4229, i32 0, i32 33
  %4231 = getelementptr inbounds %struct.Reg, %struct.Reg* %4230, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4231 to i64*
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 1
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4234 to i64*
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 15
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %4237 to i64*
  %4238 = load i64, i64* %RBP.i6
  %4239 = sub i64 %4238, 4
  %4240 = load i64, i64* %PC.i5
  %4241 = add i64 %4240, 3
  store i64 %4241, i64* %PC.i5
  %4242 = inttoptr i64 %4239 to i32*
  %4243 = load i32, i32* %4242
  %4244 = zext i32 %4243 to i64
  store i64 %4244, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_41abaa, %struct.Memory** %MEMORY
  %loadMem_41abad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 33
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4247 to i64*
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 13
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4250 to i64*
  %4251 = load i64, i64* %RSP.i
  %4252 = load i64, i64* %PC.i4
  %4253 = add i64 %4252, 7
  store i64 %4253, i64* %PC.i4
  %4254 = add i64 128, %4251
  store i64 %4254, i64* %RSP.i, align 8
  %4255 = icmp ult i64 %4254, %4251
  %4256 = icmp ult i64 %4254, 128
  %4257 = or i1 %4255, %4256
  %4258 = zext i1 %4257 to i8
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4258, i8* %4259, align 1
  %4260 = trunc i64 %4254 to i32
  %4261 = and i32 %4260, 255
  %4262 = call i32 @llvm.ctpop.i32(i32 %4261)
  %4263 = trunc i32 %4262 to i8
  %4264 = and i8 %4263, 1
  %4265 = xor i8 %4264, 1
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4265, i8* %4266, align 1
  %4267 = xor i64 128, %4251
  %4268 = xor i64 %4267, %4254
  %4269 = lshr i64 %4268, 4
  %4270 = trunc i64 %4269 to i8
  %4271 = and i8 %4270, 1
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4271, i8* %4272, align 1
  %4273 = icmp eq i64 %4254, 0
  %4274 = zext i1 %4273 to i8
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4274, i8* %4275, align 1
  %4276 = lshr i64 %4254, 63
  %4277 = trunc i64 %4276 to i8
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4277, i8* %4278, align 1
  %4279 = lshr i64 %4251, 63
  %4280 = xor i64 %4276, %4279
  %4281 = add i64 %4280, %4276
  %4282 = icmp eq i64 %4281, 2
  %4283 = zext i1 %4282 to i8
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4283, i8* %4284, align 1
  store %struct.Memory* %loadMem_41abad, %struct.Memory** %MEMORY
  %loadMem_41abb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 33
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4287 to i64*
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4289 = getelementptr inbounds %struct.GPR, %struct.GPR* %4288, i32 0, i32 15
  %4290 = getelementptr inbounds %struct.Reg, %struct.Reg* %4289, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4290 to i64*
  %4291 = load i64, i64* %PC.i2
  %4292 = add i64 %4291, 1
  store i64 %4292, i64* %PC.i2
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4294 = load i64, i64* %4293, align 8
  %4295 = add i64 %4294, 8
  %4296 = inttoptr i64 %4294 to i64*
  %4297 = load i64, i64* %4296
  store i64 %4297, i64* %RBP.i3, align 8
  store i64 %4295, i64* %4293, align 8
  store %struct.Memory* %loadMem_41abb4, %struct.Memory** %MEMORY
  %loadMem_41abb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4299 = getelementptr inbounds %struct.GPR, %struct.GPR* %4298, i32 0, i32 33
  %4300 = getelementptr inbounds %struct.Reg, %struct.Reg* %4299, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4300 to i64*
  %4301 = load i64, i64* %PC.i1
  %4302 = add i64 %4301, 1
  store i64 %4302, i64* %PC.i1
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4305 = load i64, i64* %4304, align 8
  %4306 = inttoptr i64 %4305 to i64*
  %4307 = load i64, i64* %4306
  store i64 %4307, i64* %4303, align 8
  %4308 = add i64 %4305, 8
  store i64 %4308, i64* %4304, align 8
  store %struct.Memory* %loadMem_41abb5, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_41abb5
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

define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 128
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 128
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
  %23 = xor i64 128, %9
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

define %struct.Memory* @routine_movss_0x39f79__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39f79__rip__type* @G_0x39f79__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x39f75__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39f75__rip__type* @G_0x39f75__rip_ to i64)
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

define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 92
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 52
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

define %struct.Memory* @routine_movl__0x0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x64__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 100
  %16 = icmp ult i32 %14, 100
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
  %25 = xor i32 %14, 100
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

define %struct.Memory* @routine_jge_.L_41a894(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x3c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x40__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %R8, align 8
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_movss_MINUS0x34__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
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

define %struct.Memory* @routine_callq_.Lawless416(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x3c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
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

define %struct.Memory* @routine_movaps_0x3b0de__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3b0de__rip__type* @G_0x3b0de__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = add i64 %10, 4
  %16 = inttoptr i64 %15 to float*
  %17 = load float, float* %16
  %18 = add i64 %10, 8
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %10, 12
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %8 to float*
  store float %14, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %8, i64 4
  %26 = bitcast i8* %25 to float*
  store float %17, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %8, i64 8
  %28 = bitcast i8* %27 to float*
  store float %20, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to float*
  store float %23, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pand__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %25 = and i64 %21, %16
  %26 = and i64 %24, %19
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x5c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
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

define %struct.Memory* @routine_jbe_.L_41a84a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41a894(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0x34__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
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

define %struct.Memory* @routine_movss_MINUS0x3c__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
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

define %struct.Memory* @routine_divss_MINUS0x40__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 64
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

define %struct.Memory* @routine_subss__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fsub float %22, %23
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 52
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x34__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
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

define %struct.Memory* @routine_jb_.L_41a881(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0x39ed8__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39ed8__rip__type* @G_0x39ed8__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_41a886(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41a7ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_41aaa3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0x39e9e__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39e9e__rip__type* @G_0x39e9e__rip_ to i64)
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 100
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x3c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
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

define %struct.Memory* @routine_jbe_.L_41a955(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41a8e9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x39f7c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39f7c__rip__type* @G_0x39f7c__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x64__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
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

define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsd2ss__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 100
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x64__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
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

define %struct.Memory* @routine_jbe_.L_41a921(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41abaa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0x64__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
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

define %struct.Memory* @routine_ja_.L_41a8e9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %17 = icmp eq i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41a9d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41a95a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x39f06__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39f06__rip__type* @G_0x39f06__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x68__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
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

define %struct.Memory* @routine_movsd_0x39ecf__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39ecf__rip__type* @G_0x39ecf__rip_ to i64)
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

define %struct.Memory* @routine_jbe_.L_41a9b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41a9b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_ja_.L_41a95a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %17 = icmp eq i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_41aa83(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x39df7__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39df7__rip__type* @G_0x39df7__rip_ to i64)
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

define %struct.Memory* @routine_movss_MINUS0x64__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
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

define %struct.Memory* @routine_addss_MINUS0x68__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 104
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 108
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

define %struct.Memory* @routine_movss_MINUS0x6c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
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

define %struct.Memory* @routine_movaps_0x3aee3__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3aee3__rip__type* @G_0x3aee3__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = add i64 %10, 4
  %16 = inttoptr i64 %15 to float*
  %17 = load float, float* %16
  %18 = add i64 %10, 8
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %10, 12
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %8 to float*
  store float %14, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %8, i64 4
  %26 = bitcast i8* %25 to float*
  store float %17, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %8, i64 8
  %28 = bitcast i8* %27 to float*
  store float %20, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to float*
  store float %23, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_41aa45(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41aa83(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jbe_.L_41aa66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41aa70(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41aa75(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41a9d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_41aa99(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 72
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 88
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

define %struct.Memory* @routine_jge_.L_41ab5c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_41aae0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x39d0a__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39d0a__rip__type* @G_0x39d0a__rip_ to i64)
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 120
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

define %struct.Memory* @routine_jmpq_.L_41aaf2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x60__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
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

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
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

define %struct.Memory* @routine_movss_0x39c25__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39c25__rip__type* @G_0x39c25__rip_ to i64)
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 80
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

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_mulss_MINUS0x34__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 52
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
  %25 = fmul float %24, %23
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

define %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to <2 x i32>*
  %26 = load <2 x i32>, <2 x i32>* %25, align 1
  %27 = inttoptr i64 %19 to float*
  %28 = load float, float* %27
  %29 = extractelement <2 x float> %23, i32 0
  %30 = fmul float %29, %28
  %31 = bitcast i8* %14 to float*
  store float %30, float* %31, align 1
  %32 = bitcast <2 x float> %23 to <2 x i32>
  %33 = extractelement <2 x i32> %32, i32 1
  %34 = getelementptr inbounds i8, i8* %14, i64 4
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = extractelement <2 x i32> %26, i32 0
  %37 = getelementptr inbounds i8, i8* %14, i64 8
  %38 = bitcast i8* %37 to i32*
  store i32 %36, i32* %38, align 1
  %39 = extractelement <2 x i32> %26, i32 1
  %40 = getelementptr inbounds i8, i8* %14, i64 12
  %41 = bitcast i8* %40 to i32*
  store i32 %39, i32* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 128
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

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
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

define %struct.Memory* @routine_addsd_MINUS0x48__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 72
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

define %struct.Memory* @routine_addsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41aab7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_divsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fdiv double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
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

define %struct.Memory* @routine_movsd_0x39cbd__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39cbd__rip__type* @G_0x39cbd__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x34__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 56
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

define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %12 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = extractelement <2 x float> %16, i32 0
  %18 = inttoptr i64 %11 to float*
  store float %17, float* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x38__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 128, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 128
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
  %25 = xor i64 128, %9
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
