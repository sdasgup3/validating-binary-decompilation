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
%G_0x3a0c1__rip__type = type <{ [8 x i8] }>
%G_0x3a112__rip__type = type <{ [8 x i8] }>
%G_0x3a15a__rip__type = type <{ [8 x i8] }>
%G_0x3a181__rip__type = type <{ [8 x i8] }>
%G_0x3a24f__rip__type = type <{ [8 x i8] }>
%G_0x3a30e__rip__type = type <{ [4 x i8] }>
%G_0x3a327__rip__type = type <{ [8 x i8] }>
%G_0x3a348__rip__type = type <{ [4 x i8] }>
%G_0x3a366__rip__type = type <{ [8 x i8] }>
%G_0x3a3ec__rip__type = type <{ [8 x i8] }>
%G_0x3a3f5__rip__type = type <{ [4 x i8] }>
%G_0x3a3f9__rip__type = type <{ [4 x i8] }>
%G_0x3b333__rip__type = type <{ [16 x i8] }>
%G_0x3b54e__rip__type = type <{ [16 x i8] }>
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
@G_0x3a0c1__rip_ = global %G_0x3a0c1__rip__type zeroinitializer
@G_0x3a112__rip_ = global %G_0x3a112__rip__type zeroinitializer
@G_0x3a15a__rip_ = global %G_0x3a15a__rip__type zeroinitializer
@G_0x3a181__rip_ = global %G_0x3a181__rip__type zeroinitializer
@G_0x3a24f__rip_ = global %G_0x3a24f__rip__type zeroinitializer
@G_0x3a30e__rip_ = global %G_0x3a30e__rip__type zeroinitializer
@G_0x3a327__rip_ = global %G_0x3a327__rip__type zeroinitializer
@G_0x3a348__rip_ = global %G_0x3a348__rip__type zeroinitializer
@G_0x3a366__rip_ = global %G_0x3a366__rip__type zeroinitializer
@G_0x3a3ec__rip_ = global %G_0x3a3ec__rip__type zeroinitializer
@G_0x3a3f5__rip_ = global %G_0x3a3f5__rip__type zeroinitializer
@G_0x3a3f9__rip_ = global %G_0x3a3f9__rip__type zeroinitializer
@G_0x3b333__rip_ = global %G_0x3b333__rip__type zeroinitializer
@G_0x3b54e__rip_ = global %G_0x3b54e__rip__type zeroinitializer

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

declare %struct.Memory* @sub_41ae20.Lawless422(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @EVDCensoredFit(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_41a340 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_41a340, %struct.Memory** %MEMORY
  %loadMem_41a341 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_41a341, %struct.Memory** %MEMORY
  %loadMem_41a344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i63 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i63
  %36 = load i64, i64* %PC.i62
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i62
  %38 = sub i64 %35, 144
  store i64 %38, i64* %RSP.i63, align 8
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
  store %struct.Memory* %loadMem_41a344, %struct.Memory** %MEMORY
  %loadMem_41a34b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 1
  %YMM1.i113 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = bitcast %"class.std::bitset"* %YMM1.i113 to i8*
  %73 = load i64, i64* %PC.i112
  %74 = add i64 %73, ptrtoint (%G_0x3a3f9__rip__type* @G_0x3a3f9__rip_ to i64)
  %75 = load i64, i64* %PC.i112
  %76 = add i64 %75, 8
  store i64 %76, i64* %PC.i112
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
  store %struct.Memory* %loadMem_41a34b, %struct.Memory** %MEMORY
  %loadMem_41a353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %90 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %89, i64 0, i64 2
  %YMM2.i230 = bitcast %union.VectorReg* %90 to %"class.std::bitset"*
  %91 = bitcast %"class.std::bitset"* %YMM2.i230 to i8*
  %92 = load i64, i64* %PC.i229
  %93 = add i64 %92, ptrtoint (%G_0x3a3f5__rip__type* @G_0x3a3f5__rip_ to i64)
  %94 = load i64, i64* %PC.i229
  %95 = add i64 %94, 8
  store i64 %95, i64* %PC.i229
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
  store %struct.Memory* %loadMem_41a353, %struct.Memory** %MEMORY
  %loadMem_41a35b = load %struct.Memory*, %struct.Memory** %MEMORY
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 33
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %107 to i64*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 11
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %110 to i64*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 15
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %113 to i64*
  %114 = load i64, i64* %RBP.i244
  %115 = sub i64 %114, 16
  %116 = load i64, i64* %RDI.i
  %117 = load i64, i64* %PC.i243
  %118 = add i64 %117, 4
  store i64 %118, i64* %PC.i243
  %119 = inttoptr i64 %115 to i64*
  store i64 %116, i64* %119
  store %struct.Memory* %loadMem_41a35b, %struct.Memory** %MEMORY
  %loadMem_41a35f = load %struct.Memory*, %struct.Memory** %MEMORY
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 33
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %122 to i64*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 9
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %RSI.i309 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 15
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %128 to i64*
  %129 = load i64, i64* %RBP.i310
  %130 = sub i64 %129, 24
  %131 = load i64, i64* %RSI.i309
  %132 = load i64, i64* %PC.i308
  %133 = add i64 %132, 4
  store i64 %133, i64* %PC.i308
  %134 = inttoptr i64 %130 to i64*
  store i64 %131, i64* %134
  store %struct.Memory* %loadMem_41a35f, %struct.Memory** %MEMORY
  %loadMem_41a363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %137 to i64*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 7
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %140 to i32*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 15
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %143 to i64*
  %144 = load i64, i64* %RBP.i327
  %145 = sub i64 %144, 28
  %146 = load i32, i32* %EDX.i
  %147 = zext i32 %146 to i64
  %148 = load i64, i64* %PC.i326
  %149 = add i64 %148, 3
  store i64 %149, i64* %PC.i326
  %150 = inttoptr i64 %145 to i32*
  store i32 %146, i32* %150
  store %struct.Memory* %loadMem_41a363, %struct.Memory** %MEMORY
  %loadMem_41a366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 33
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %153 to i64*
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %156 to i32*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 15
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %159 to i64*
  %160 = load i64, i64* %RBP.i379
  %161 = sub i64 %160, 32
  %162 = load i32, i32* %ECX.i
  %163 = zext i32 %162 to i64
  %164 = load i64, i64* %PC.i378
  %165 = add i64 %164, 3
  store i64 %165, i64* %PC.i378
  %166 = inttoptr i64 %161 to i32*
  store i32 %162, i32* %166
  store %struct.Memory* %loadMem_41a366, %struct.Memory** %MEMORY
  %loadMem_41a369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 33
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %169 to i64*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 15
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %174 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %173, i64 0, i64 0
  %XMM0.i421 = bitcast %union.VectorReg* %174 to %union.vec128_t*
  %175 = load i64, i64* %RBP.i420
  %176 = sub i64 %175, 36
  %177 = bitcast %union.vec128_t* %XMM0.i421 to i8*
  %178 = load i64, i64* %PC.i419
  %179 = add i64 %178, 5
  store i64 %179, i64* %PC.i419
  %180 = bitcast i8* %177 to <2 x float>*
  %181 = load <2 x float>, <2 x float>* %180, align 1
  %182 = extractelement <2 x float> %181, i32 0
  %183 = inttoptr i64 %176 to float*
  store float %182, float* %183
  store %struct.Memory* %loadMem_41a369, %struct.Memory** %MEMORY
  %loadMem_41a36e = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 15
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 17
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %R8.i450 = bitcast %union.anon* %192 to i64*
  %193 = load i64, i64* %RBP.i449
  %194 = sub i64 %193, 48
  %195 = load i64, i64* %R8.i450
  %196 = load i64, i64* %PC.i448
  %197 = add i64 %196, 4
  store i64 %197, i64* %PC.i448
  %198 = inttoptr i64 %194 to i64*
  store i64 %195, i64* %198
  store %struct.Memory* %loadMem_41a36e, %struct.Memory** %MEMORY
  %loadMem_41a372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 33
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 15
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %204 to i64*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 19
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %R9.i518 = bitcast %union.anon* %207 to i64*
  %208 = load i64, i64* %RBP.i517
  %209 = sub i64 %208, 56
  %210 = load i64, i64* %R9.i518
  %211 = load i64, i64* %PC.i516
  %212 = add i64 %211, 4
  store i64 %212, i64* %PC.i516
  %213 = inttoptr i64 %209 to i64*
  store i64 %210, i64* %213
  store %struct.Memory* %loadMem_41a372, %struct.Memory** %MEMORY
  %loadMem_41a376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 33
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %216 to i64*
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 15
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %219 to i64*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %221 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %220, i64 0, i64 2
  %XMM2.i548 = bitcast %union.VectorReg* %221 to %union.vec128_t*
  %222 = load i64, i64* %RBP.i547
  %223 = sub i64 %222, 100
  %224 = bitcast %union.vec128_t* %XMM2.i548 to i8*
  %225 = load i64, i64* %PC.i546
  %226 = add i64 %225, 5
  store i64 %226, i64* %PC.i546
  %227 = bitcast i8* %224 to <2 x float>*
  %228 = load <2 x float>, <2 x float>* %227, align 1
  %229 = extractelement <2 x float> %228, i32 0
  %230 = inttoptr i64 %223 to float*
  store float %229, float* %230
  store %struct.Memory* %loadMem_41a376, %struct.Memory** %MEMORY
  %loadMem_41a37b = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 15
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %238 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %237, i64 0, i64 1
  %XMM1.i592 = bitcast %union.VectorReg* %238 to %union.vec128_t*
  %239 = load i64, i64* %RBP.i591
  %240 = sub i64 %239, 60
  %241 = bitcast %union.vec128_t* %XMM1.i592 to i8*
  %242 = load i64, i64* %PC.i590
  %243 = add i64 %242, 5
  store i64 %243, i64* %PC.i590
  %244 = bitcast i8* %241 to <2 x float>*
  %245 = load <2 x float>, <2 x float>* %244, align 1
  %246 = extractelement <2 x float> %245, i32 0
  %247 = inttoptr i64 %240 to float*
  store float %246, float* %247
  store %struct.Memory* %loadMem_41a37b, %struct.Memory** %MEMORY
  %loadMem_41a380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 33
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %250 to i64*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 15
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %253 to i64*
  %254 = load i64, i64* %RBP.i589
  %255 = sub i64 %254, 104
  %256 = load i64, i64* %PC.i588
  %257 = add i64 %256, 7
  store i64 %257, i64* %PC.i588
  %258 = inttoptr i64 %255 to i32*
  store i32 0, i32* %258
  store %struct.Memory* %loadMem_41a380, %struct.Memory** %MEMORY
  br label %block_.L_41a387

block_.L_41a387:                                  ; preds = %block_.L_41a416, %entry
  %loadMem_41a387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 33
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %261 to i64*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 15
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %RBP.i587 = bitcast %union.anon* %264 to i64*
  %265 = load i64, i64* %RBP.i587
  %266 = sub i64 %265, 104
  %267 = load i64, i64* %PC.i586
  %268 = add i64 %267, 4
  store i64 %268, i64* %PC.i586
  %269 = inttoptr i64 %266 to i32*
  %270 = load i32, i32* %269
  %271 = sub i32 %270, 100
  %272 = icmp ult i32 %270, 100
  %273 = zext i1 %272 to i8
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %273, i8* %274, align 1
  %275 = and i32 %271, 255
  %276 = call i32 @llvm.ctpop.i32(i32 %275)
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %279, i8* %280, align 1
  %281 = xor i32 %270, 100
  %282 = xor i32 %281, %271
  %283 = lshr i32 %282, 4
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %285, i8* %286, align 1
  %287 = icmp eq i32 %271, 0
  %288 = zext i1 %287 to i8
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %288, i8* %289, align 1
  %290 = lshr i32 %271, 31
  %291 = trunc i32 %290 to i8
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %291, i8* %292, align 1
  %293 = lshr i32 %270, 31
  %294 = xor i32 %290, %293
  %295 = add i32 %294, %293
  %296 = icmp eq i32 %295, 2
  %297 = zext i1 %296 to i8
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %297, i8* %298, align 1
  store %struct.Memory* %loadMem_41a387, %struct.Memory** %MEMORY
  %loadMem_41a38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 33
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %301 to i64*
  %302 = load i64, i64* %PC.i585
  %303 = add i64 %302, 153
  %304 = load i64, i64* %PC.i585
  %305 = add i64 %304, 6
  %306 = load i64, i64* %PC.i585
  %307 = add i64 %306, 6
  store i64 %307, i64* %PC.i585
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %309 = load i8, i8* %308, align 1
  %310 = icmp ne i8 %309, 0
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %312 = load i8, i8* %311, align 1
  %313 = icmp ne i8 %312, 0
  %314 = xor i1 %310, %313
  %315 = xor i1 %314, true
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %BRANCH_TAKEN, align 1
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %318 = select i1 %314, i64 %305, i64 %303
  store i64 %318, i64* %317, align 8
  store %struct.Memory* %loadMem_41a38b, %struct.Memory** %MEMORY
  %loadBr_41a38b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a38b = icmp eq i8 %loadBr_41a38b, 1
  br i1 %cmpBr_41a38b, label %block_.L_41a424, label %block_41a391

block_41a391:                                     ; preds = %block_.L_41a387
  %loadMem_41a391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 33
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %321 to i64*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 15
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %324 to i64*
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 17
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %R8.i584 = bitcast %union.anon* %327 to i64*
  %328 = load i64, i64* %RBP.i583
  %329 = sub i64 %328, 68
  %330 = load i64, i64* %PC.i582
  %331 = add i64 %330, 4
  store i64 %331, i64* %PC.i582
  store i64 %329, i64* %R8.i584, align 8
  store %struct.Memory* %loadMem_41a391, %struct.Memory** %MEMORY
  %loadMem_41a395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 15
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 19
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %R9.i581 = bitcast %union.anon* %340 to i64*
  %341 = load i64, i64* %RBP.i580
  %342 = sub i64 %341, 72
  %343 = load i64, i64* %PC.i579
  %344 = add i64 %343, 4
  store i64 %344, i64* %PC.i579
  store i64 %342, i64* %R9.i581, align 8
  store %struct.Memory* %loadMem_41a395, %struct.Memory** %MEMORY
  %loadMem_41a399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 11
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RDI.i577 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 15
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RBP.i578 = bitcast %union.anon* %353 to i64*
  %354 = load i64, i64* %RBP.i578
  %355 = sub i64 %354, 16
  %356 = load i64, i64* %PC.i576
  %357 = add i64 %356, 4
  store i64 %357, i64* %PC.i576
  %358 = inttoptr i64 %355 to i64*
  %359 = load i64, i64* %358
  store i64 %359, i64* %RDI.i577, align 8
  store %struct.Memory* %loadMem_41a399, %struct.Memory** %MEMORY
  %loadMem_41a39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 33
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %362 to i64*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 9
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %RSI.i574 = bitcast %union.anon* %365 to i64*
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 15
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %368 to i64*
  %369 = load i64, i64* %RBP.i575
  %370 = sub i64 %369, 24
  %371 = load i64, i64* %PC.i573
  %372 = add i64 %371, 4
  store i64 %372, i64* %PC.i573
  %373 = inttoptr i64 %370 to i64*
  %374 = load i64, i64* %373
  store i64 %374, i64* %RSI.i574, align 8
  store %struct.Memory* %loadMem_41a39d, %struct.Memory** %MEMORY
  %loadMem_41a3a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 33
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 7
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RDX.i571 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 15
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %383 to i64*
  %384 = load i64, i64* %RBP.i572
  %385 = sub i64 %384, 28
  %386 = load i64, i64* %PC.i570
  %387 = add i64 %386, 3
  store i64 %387, i64* %PC.i570
  %388 = inttoptr i64 %385 to i32*
  %389 = load i32, i32* %388
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RDX.i571, align 8
  store %struct.Memory* %loadMem_41a3a1, %struct.Memory** %MEMORY
  %loadMem_41a3a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 5
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 15
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %399 to i64*
  %400 = load i64, i64* %RBP.i569
  %401 = sub i64 %400, 32
  %402 = load i64, i64* %PC.i567
  %403 = add i64 %402, 3
  store i64 %403, i64* %PC.i567
  %404 = inttoptr i64 %401 to i32*
  %405 = load i32, i32* %404
  %406 = zext i32 %405 to i64
  store i64 %406, i64* %RCX.i568, align 8
  store %struct.Memory* %loadMem_41a3a4, %struct.Memory** %MEMORY
  %loadMem_41a3a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 33
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %409 to i64*
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 15
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %412 to i64*
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %414 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %413, i64 0, i64 0
  %YMM0.i566 = bitcast %union.VectorReg* %414 to %"class.std::bitset"*
  %415 = bitcast %"class.std::bitset"* %YMM0.i566 to i8*
  %416 = load i64, i64* %RBP.i565
  %417 = sub i64 %416, 36
  %418 = load i64, i64* %PC.i564
  %419 = add i64 %418, 5
  store i64 %419, i64* %PC.i564
  %420 = inttoptr i64 %417 to float*
  %421 = load float, float* %420
  %422 = bitcast i8* %415 to float*
  store float %421, float* %422, align 1
  %423 = getelementptr inbounds i8, i8* %415, i64 4
  %424 = bitcast i8* %423 to float*
  store float 0.000000e+00, float* %424, align 1
  %425 = getelementptr inbounds i8, i8* %415, i64 8
  %426 = bitcast i8* %425 to float*
  store float 0.000000e+00, float* %426, align 1
  %427 = getelementptr inbounds i8, i8* %415, i64 12
  %428 = bitcast i8* %427 to float*
  store float 0.000000e+00, float* %428, align 1
  store %struct.Memory* %loadMem_41a3a7, %struct.Memory** %MEMORY
  %loadMem_41a3ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 33
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %431 to i64*
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 15
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %434 to i64*
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %436 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %435, i64 0, i64 1
  %YMM1.i563 = bitcast %union.VectorReg* %436 to %"class.std::bitset"*
  %437 = bitcast %"class.std::bitset"* %YMM1.i563 to i8*
  %438 = load i64, i64* %RBP.i562
  %439 = sub i64 %438, 60
  %440 = load i64, i64* %PC.i561
  %441 = add i64 %440, 5
  store i64 %441, i64* %PC.i561
  %442 = inttoptr i64 %439 to float*
  %443 = load float, float* %442
  %444 = bitcast i8* %437 to float*
  store float %443, float* %444, align 1
  %445 = getelementptr inbounds i8, i8* %437, i64 4
  %446 = bitcast i8* %445 to float*
  store float 0.000000e+00, float* %446, align 1
  %447 = getelementptr inbounds i8, i8* %437, i64 8
  %448 = bitcast i8* %447 to float*
  store float 0.000000e+00, float* %448, align 1
  %449 = getelementptr inbounds i8, i8* %437, i64 12
  %450 = bitcast i8* %449 to float*
  store float 0.000000e+00, float* %450, align 1
  store %struct.Memory* %loadMem_41a3ac, %struct.Memory** %MEMORY
  %loadMem1_41a3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 33
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %453 to i64*
  %454 = load i64, i64* %PC.i560
  %455 = add i64 %454, 2671
  %456 = load i64, i64* %PC.i560
  %457 = add i64 %456, 5
  %458 = load i64, i64* %PC.i560
  %459 = add i64 %458, 5
  store i64 %459, i64* %PC.i560
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = add i64 %461, -8
  %463 = inttoptr i64 %462 to i64*
  store i64 %457, i64* %463
  store i64 %462, i64* %460, align 8
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %455, i64* %464, align 8
  store %struct.Memory* %loadMem1_41a3b1, %struct.Memory** %MEMORY
  %loadMem2_41a3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a3b1 = load i64, i64* %3
  %call2_41a3b1 = call %struct.Memory* @sub_41ae20.Lawless422(%struct.State* %0, i64 %loadPC_41a3b1, %struct.Memory* %loadMem2_41a3b1)
  store %struct.Memory* %call2_41a3b1, %struct.Memory** %MEMORY
  %loadMem_41a3b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 15
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %470 to i64*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %472 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %471, i64 0, i64 0
  %YMM0.i559 = bitcast %union.VectorReg* %472 to %"class.std::bitset"*
  %473 = bitcast %"class.std::bitset"* %YMM0.i559 to i8*
  %474 = load i64, i64* %RBP.i558
  %475 = sub i64 %474, 68
  %476 = load i64, i64* %PC.i557
  %477 = add i64 %476, 5
  store i64 %477, i64* %PC.i557
  %478 = inttoptr i64 %475 to float*
  %479 = load float, float* %478
  %480 = fpext float %479 to double
  %481 = bitcast i8* %473 to double*
  store double %480, double* %481, align 1
  store %struct.Memory* %loadMem_41a3b6, %struct.Memory** %MEMORY
  %loadMem_41a3bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 33
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %484 to i64*
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %486 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %485, i64 0, i64 1
  %YMM1.i556 = bitcast %union.VectorReg* %486 to %"class.std::bitset"*
  %487 = bitcast %"class.std::bitset"* %YMM1.i556 to i8*
  %488 = load i64, i64* %PC.i555
  %489 = add i64 %488, ptrtoint (%G_0x3b54e__rip__type* @G_0x3b54e__rip_ to i64)
  %490 = load i64, i64* %PC.i555
  %491 = add i64 %490, 7
  store i64 %491, i64* %PC.i555
  %492 = inttoptr i64 %489 to float*
  %493 = load float, float* %492
  %494 = add i64 %489, 4
  %495 = inttoptr i64 %494 to float*
  %496 = load float, float* %495
  %497 = add i64 %489, 8
  %498 = inttoptr i64 %497 to float*
  %499 = load float, float* %498
  %500 = add i64 %489, 12
  %501 = inttoptr i64 %500 to float*
  %502 = load float, float* %501
  %503 = bitcast i8* %487 to float*
  store float %493, float* %503, align 1
  %504 = getelementptr inbounds i8, i8* %487, i64 4
  %505 = bitcast i8* %504 to float*
  store float %496, float* %505, align 1
  %506 = getelementptr inbounds i8, i8* %487, i64 8
  %507 = bitcast i8* %506 to float*
  store float %499, float* %507, align 1
  %508 = getelementptr inbounds i8, i8* %487, i64 12
  %509 = bitcast i8* %508 to float*
  store float %502, float* %509, align 1
  store %struct.Memory* %loadMem_41a3bb, %struct.Memory** %MEMORY
  %loadMem_41a3c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 33
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %512 to i64*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %514 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %513, i64 0, i64 0
  %YMM0.i553 = bitcast %union.VectorReg* %514 to %"class.std::bitset"*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %516 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %515, i64 0, i64 1
  %XMM1.i554 = bitcast %union.VectorReg* %516 to %union.vec128_t*
  %517 = bitcast %"class.std::bitset"* %YMM0.i553 to i8*
  %518 = bitcast %"class.std::bitset"* %YMM0.i553 to i8*
  %519 = bitcast %union.vec128_t* %XMM1.i554 to i8*
  %520 = load i64, i64* %PC.i552
  %521 = add i64 %520, 4
  store i64 %521, i64* %PC.i552
  %522 = bitcast i8* %518 to i64*
  %523 = load i64, i64* %522, align 1
  %524 = getelementptr inbounds i8, i8* %518, i64 8
  %525 = bitcast i8* %524 to i64*
  %526 = load i64, i64* %525, align 1
  %527 = bitcast i8* %519 to i64*
  %528 = load i64, i64* %527, align 1
  %529 = getelementptr inbounds i8, i8* %519, i64 8
  %530 = bitcast i8* %529 to i64*
  %531 = load i64, i64* %530, align 1
  %532 = and i64 %528, %523
  %533 = and i64 %531, %526
  %534 = trunc i64 %532 to i32
  %535 = lshr i64 %532, 32
  %536 = trunc i64 %535 to i32
  %537 = bitcast i8* %517 to i32*
  store i32 %534, i32* %537, align 1
  %538 = getelementptr inbounds i8, i8* %517, i64 4
  %539 = bitcast i8* %538 to i32*
  store i32 %536, i32* %539, align 1
  %540 = trunc i64 %533 to i32
  %541 = getelementptr inbounds i8, i8* %517, i64 8
  %542 = bitcast i8* %541 to i32*
  store i32 %540, i32* %542, align 1
  %543 = lshr i64 %533, 32
  %544 = trunc i64 %543 to i32
  %545 = getelementptr inbounds i8, i8* %517, i64 12
  %546 = bitcast i8* %545 to i32*
  store i32 %544, i32* %546, align 1
  store %struct.Memory* %loadMem_41a3c2, %struct.Memory** %MEMORY
  %loadMem_41a3c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 33
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %549 to i64*
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 15
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %552 to i64*
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %554 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %553, i64 0, i64 1
  %YMM1.i551 = bitcast %union.VectorReg* %554 to %"class.std::bitset"*
  %555 = bitcast %"class.std::bitset"* %YMM1.i551 to i8*
  %556 = load i64, i64* %RBP.i550
  %557 = sub i64 %556, 100
  %558 = load i64, i64* %PC.i549
  %559 = add i64 %558, 5
  store i64 %559, i64* %PC.i549
  %560 = inttoptr i64 %557 to float*
  %561 = load float, float* %560
  %562 = fpext float %561 to double
  %563 = bitcast i8* %555 to double*
  store double %562, double* %563, align 1
  store %struct.Memory* %loadMem_41a3c6, %struct.Memory** %MEMORY
  %loadMem_41a3cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 33
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %566 to i64*
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %568 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %567, i64 0, i64 0
  %XMM0.i543 = bitcast %union.VectorReg* %568 to %union.vec128_t*
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %570 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %569, i64 0, i64 1
  %XMM1.i544 = bitcast %union.VectorReg* %570 to %union.vec128_t*
  %571 = bitcast %union.vec128_t* %XMM1.i544 to i8*
  %572 = bitcast %union.vec128_t* %XMM0.i543 to i8*
  %573 = load i64, i64* %PC.i542
  %574 = add i64 %573, 4
  store i64 %574, i64* %PC.i542
  %575 = bitcast i8* %571 to double*
  %576 = load double, double* %575, align 1
  %577 = bitcast i8* %572 to double*
  %578 = load double, double* %577, align 1
  %579 = fcmp uno double %576, %578
  br i1 %579, label %580, label %592

; <label>:580:                                    ; preds = %block_41a391
  %581 = fadd double %576, %578
  %582 = bitcast double %581 to i64
  %583 = and i64 %582, 9221120237041090560
  %584 = icmp eq i64 %583, 9218868437227405312
  %585 = and i64 %582, 2251799813685247
  %586 = icmp ne i64 %585, 0
  %587 = and i1 %584, %586
  br i1 %587, label %588, label %598

; <label>:588:                                    ; preds = %580
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %590 = load i64, i64* %589, align 8
  %591 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %590, %struct.Memory* %loadMem_41a3cb)
  br label %routine_ucomisd__xmm0___xmm1.exit545

; <label>:592:                                    ; preds = %block_41a391
  %593 = fcmp ogt double %576, %578
  br i1 %593, label %598, label %594

; <label>:594:                                    ; preds = %592
  %595 = fcmp olt double %576, %578
  br i1 %595, label %598, label %596

; <label>:596:                                    ; preds = %594
  %597 = fcmp oeq double %576, %578
  br i1 %597, label %598, label %605

; <label>:598:                                    ; preds = %596, %594, %592, %580
  %599 = phi i8 [ 0, %592 ], [ 0, %594 ], [ 1, %596 ], [ 1, %580 ]
  %600 = phi i8 [ 0, %592 ], [ 0, %594 ], [ 0, %596 ], [ 1, %580 ]
  %601 = phi i8 [ 0, %592 ], [ 1, %594 ], [ 0, %596 ], [ 1, %580 ]
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %599, i8* %602, align 1
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %600, i8* %603, align 1
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %601, i8* %604, align 1
  br label %605

; <label>:605:                                    ; preds = %598, %596
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %606, align 1
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %607, align 1
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %608, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit545

routine_ucomisd__xmm0___xmm1.exit545:             ; preds = %588, %605
  %609 = phi %struct.Memory* [ %591, %588 ], [ %loadMem_41a3cb, %605 ]
  store %struct.Memory* %609, %struct.Memory** %MEMORY
  %loadMem_41a3cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 33
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %612 to i64*
  %613 = load i64, i64* %PC.i541
  %614 = add i64 %613, 11
  %615 = load i64, i64* %PC.i541
  %616 = add i64 %615, 6
  %617 = load i64, i64* %PC.i541
  %618 = add i64 %617, 6
  store i64 %618, i64* %PC.i541
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %620 = load i8, i8* %619, align 1
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %622 = load i8, i8* %621, align 1
  %623 = or i8 %622, %620
  %624 = icmp ne i8 %623, 0
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %BRANCH_TAKEN, align 1
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %627 = select i1 %624, i64 %614, i64 %616
  store i64 %627, i64* %626, align 8
  store %struct.Memory* %loadMem_41a3cf, %struct.Memory** %MEMORY
  %loadBr_41a3cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a3cf = icmp eq i8 %loadBr_41a3cf, 1
  br i1 %cmpBr_41a3cf, label %block_.L_41a3da, label %block_41a3d5

block_41a3d5:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit545
  %loadMem_41a3d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 33
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %630 to i64*
  %631 = load i64, i64* %PC.i540
  %632 = add i64 %631, 79
  %633 = load i64, i64* %PC.i540
  %634 = add i64 %633, 5
  store i64 %634, i64* %PC.i540
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %632, i64* %635, align 8
  store %struct.Memory* %loadMem_41a3d5, %struct.Memory** %MEMORY
  br label %block_.L_41a424

block_.L_41a3da:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit545
  %loadMem_41a3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 33
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %640 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %639, i64 0, i64 0
  %YMM0.i538 = bitcast %union.VectorReg* %640 to %"class.std::bitset"*
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %642 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %641, i64 0, i64 0
  %XMM0.i539 = bitcast %union.VectorReg* %642 to %union.vec128_t*
  %643 = bitcast %"class.std::bitset"* %YMM0.i538 to i8*
  %644 = bitcast %"class.std::bitset"* %YMM0.i538 to i8*
  %645 = bitcast %union.vec128_t* %XMM0.i539 to i8*
  %646 = load i64, i64* %PC.i537
  %647 = add i64 %646, 3
  store i64 %647, i64* %PC.i537
  %648 = bitcast i8* %644 to i64*
  %649 = load i64, i64* %648, align 1
  %650 = getelementptr inbounds i8, i8* %644, i64 8
  %651 = bitcast i8* %650 to i64*
  %652 = load i64, i64* %651, align 1
  %653 = bitcast i8* %645 to i64*
  %654 = load i64, i64* %653, align 1
  %655 = getelementptr inbounds i8, i8* %645, i64 8
  %656 = bitcast i8* %655 to i64*
  %657 = load i64, i64* %656, align 1
  %658 = xor i64 %654, %649
  %659 = xor i64 %657, %652
  %660 = trunc i64 %658 to i32
  %661 = lshr i64 %658, 32
  %662 = trunc i64 %661 to i32
  %663 = bitcast i8* %643 to i32*
  store i32 %660, i32* %663, align 1
  %664 = getelementptr inbounds i8, i8* %643, i64 4
  %665 = bitcast i8* %664 to i32*
  store i32 %662, i32* %665, align 1
  %666 = trunc i64 %659 to i32
  %667 = getelementptr inbounds i8, i8* %643, i64 8
  %668 = bitcast i8* %667 to i32*
  store i32 %666, i32* %668, align 1
  %669 = lshr i64 %659, 32
  %670 = trunc i64 %669 to i32
  %671 = getelementptr inbounds i8, i8* %643, i64 12
  %672 = bitcast i8* %671 to i32*
  store i32 %670, i32* %672, align 1
  store %struct.Memory* %loadMem_41a3da, %struct.Memory** %MEMORY
  %loadMem_41a3dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 33
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %675 to i64*
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 15
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %678 to i64*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %680 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %679, i64 0, i64 1
  %YMM1.i536 = bitcast %union.VectorReg* %680 to %"class.std::bitset"*
  %681 = bitcast %"class.std::bitset"* %YMM1.i536 to i8*
  %682 = load i64, i64* %RBP.i535
  %683 = sub i64 %682, 60
  %684 = load i64, i64* %PC.i534
  %685 = add i64 %684, 5
  store i64 %685, i64* %PC.i534
  %686 = inttoptr i64 %683 to float*
  %687 = load float, float* %686
  %688 = bitcast i8* %681 to float*
  store float %687, float* %688, align 1
  %689 = getelementptr inbounds i8, i8* %681, i64 4
  %690 = bitcast i8* %689 to float*
  store float 0.000000e+00, float* %690, align 1
  %691 = getelementptr inbounds i8, i8* %681, i64 8
  %692 = bitcast i8* %691 to float*
  store float 0.000000e+00, float* %692, align 1
  %693 = getelementptr inbounds i8, i8* %681, i64 12
  %694 = bitcast i8* %693 to float*
  store float 0.000000e+00, float* %694, align 1
  store %struct.Memory* %loadMem_41a3dd, %struct.Memory** %MEMORY
  %loadMem_41a3e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 33
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %697 to i64*
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 15
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %702 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %701, i64 0, i64 2
  %YMM2.i533 = bitcast %union.VectorReg* %702 to %"class.std::bitset"*
  %703 = bitcast %"class.std::bitset"* %YMM2.i533 to i8*
  %704 = load i64, i64* %RBP.i532
  %705 = sub i64 %704, 68
  %706 = load i64, i64* %PC.i531
  %707 = add i64 %706, 5
  store i64 %707, i64* %PC.i531
  %708 = inttoptr i64 %705 to float*
  %709 = load float, float* %708
  %710 = bitcast i8* %703 to float*
  store float %709, float* %710, align 1
  %711 = getelementptr inbounds i8, i8* %703, i64 4
  %712 = bitcast i8* %711 to float*
  store float 0.000000e+00, float* %712, align 1
  %713 = getelementptr inbounds i8, i8* %703, i64 8
  %714 = bitcast i8* %713 to float*
  store float 0.000000e+00, float* %714, align 1
  %715 = getelementptr inbounds i8, i8* %703, i64 12
  %716 = bitcast i8* %715 to float*
  store float 0.000000e+00, float* %716, align 1
  store %struct.Memory* %loadMem_41a3e2, %struct.Memory** %MEMORY
  %loadMem_41a3e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 33
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %719 to i64*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 15
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %722 to i64*
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %724 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %723, i64 0, i64 2
  %YMM2.i530 = bitcast %union.VectorReg* %724 to %"class.std::bitset"*
  %725 = bitcast %"class.std::bitset"* %YMM2.i530 to i8*
  %726 = bitcast %"class.std::bitset"* %YMM2.i530 to i8*
  %727 = load i64, i64* %RBP.i529
  %728 = sub i64 %727, 72
  %729 = load i64, i64* %PC.i528
  %730 = add i64 %729, 5
  store i64 %730, i64* %PC.i528
  %731 = bitcast i8* %726 to <2 x float>*
  %732 = load <2 x float>, <2 x float>* %731, align 1
  %733 = getelementptr inbounds i8, i8* %726, i64 8
  %734 = bitcast i8* %733 to <2 x i32>*
  %735 = load <2 x i32>, <2 x i32>* %734, align 1
  %736 = inttoptr i64 %728 to float*
  %737 = load float, float* %736
  %738 = extractelement <2 x float> %732, i32 0
  %739 = fdiv float %738, %737
  %740 = bitcast i8* %725 to float*
  store float %739, float* %740, align 1
  %741 = bitcast <2 x float> %732 to <2 x i32>
  %742 = extractelement <2 x i32> %741, i32 1
  %743 = getelementptr inbounds i8, i8* %725, i64 4
  %744 = bitcast i8* %743 to i32*
  store i32 %742, i32* %744, align 1
  %745 = extractelement <2 x i32> %735, i32 0
  %746 = getelementptr inbounds i8, i8* %725, i64 8
  %747 = bitcast i8* %746 to i32*
  store i32 %745, i32* %747, align 1
  %748 = extractelement <2 x i32> %735, i32 1
  %749 = getelementptr inbounds i8, i8* %725, i64 12
  %750 = bitcast i8* %749 to i32*
  store i32 %748, i32* %750, align 1
  store %struct.Memory* %loadMem_41a3e7, %struct.Memory** %MEMORY
  %loadMem_41a3ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %752 = getelementptr inbounds %struct.GPR, %struct.GPR* %751, i32 0, i32 33
  %753 = getelementptr inbounds %struct.Reg, %struct.Reg* %752, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %753 to i64*
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %755 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %754, i64 0, i64 1
  %YMM1.i526 = bitcast %union.VectorReg* %755 to %"class.std::bitset"*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %757 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %756, i64 0, i64 2
  %XMM2.i527 = bitcast %union.VectorReg* %757 to %union.vec128_t*
  %758 = bitcast %"class.std::bitset"* %YMM1.i526 to i8*
  %759 = bitcast %"class.std::bitset"* %YMM1.i526 to i8*
  %760 = bitcast %union.vec128_t* %XMM2.i527 to i8*
  %761 = load i64, i64* %PC.i525
  %762 = add i64 %761, 4
  store i64 %762, i64* %PC.i525
  %763 = bitcast i8* %759 to <2 x float>*
  %764 = load <2 x float>, <2 x float>* %763, align 1
  %765 = getelementptr inbounds i8, i8* %759, i64 8
  %766 = bitcast i8* %765 to <2 x i32>*
  %767 = load <2 x i32>, <2 x i32>* %766, align 1
  %768 = bitcast i8* %760 to <2 x float>*
  %769 = load <2 x float>, <2 x float>* %768, align 1
  %770 = extractelement <2 x float> %764, i32 0
  %771 = extractelement <2 x float> %769, i32 0
  %772 = fsub float %770, %771
  %773 = bitcast i8* %758 to float*
  store float %772, float* %773, align 1
  %774 = bitcast <2 x float> %764 to <2 x i32>
  %775 = extractelement <2 x i32> %774, i32 1
  %776 = getelementptr inbounds i8, i8* %758, i64 4
  %777 = bitcast i8* %776 to i32*
  store i32 %775, i32* %777, align 1
  %778 = extractelement <2 x i32> %767, i32 0
  %779 = getelementptr inbounds i8, i8* %758, i64 8
  %780 = bitcast i8* %779 to i32*
  store i32 %778, i32* %780, align 1
  %781 = extractelement <2 x i32> %767, i32 1
  %782 = getelementptr inbounds i8, i8* %758, i64 12
  %783 = bitcast i8* %782 to i32*
  store i32 %781, i32* %783, align 1
  store %struct.Memory* %loadMem_41a3ec, %struct.Memory** %MEMORY
  %loadMem_41a3f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 33
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %786 to i64*
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 15
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %789 to i64*
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %791 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %790, i64 0, i64 1
  %XMM1.i524 = bitcast %union.VectorReg* %791 to %union.vec128_t*
  %792 = load i64, i64* %RBP.i523
  %793 = sub i64 %792, 60
  %794 = bitcast %union.vec128_t* %XMM1.i524 to i8*
  %795 = load i64, i64* %PC.i522
  %796 = add i64 %795, 5
  store i64 %796, i64* %PC.i522
  %797 = bitcast i8* %794 to <2 x float>*
  %798 = load <2 x float>, <2 x float>* %797, align 1
  %799 = extractelement <2 x float> %798, i32 0
  %800 = inttoptr i64 %793 to float*
  store float %799, float* %800
  store %struct.Memory* %loadMem_41a3f0, %struct.Memory** %MEMORY
  %loadMem_41a3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 33
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %803 to i64*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 15
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %806 to i64*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %808 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %807, i64 0, i64 1
  %YMM1.i521 = bitcast %union.VectorReg* %808 to %"class.std::bitset"*
  %809 = bitcast %"class.std::bitset"* %YMM1.i521 to i8*
  %810 = load i64, i64* %RBP.i520
  %811 = sub i64 %810, 60
  %812 = load i64, i64* %PC.i519
  %813 = add i64 %812, 5
  store i64 %813, i64* %PC.i519
  %814 = inttoptr i64 %811 to float*
  %815 = load float, float* %814
  %816 = fpext float %815 to double
  %817 = bitcast i8* %809 to double*
  store double %816, double* %817, align 1
  store %struct.Memory* %loadMem_41a3f5, %struct.Memory** %MEMORY
  %loadMem_41a3fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %820 to i64*
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %822 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %821, i64 0, i64 0
  %XMM0.i513 = bitcast %union.VectorReg* %822 to %union.vec128_t*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %824 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %823, i64 0, i64 1
  %XMM1.i514 = bitcast %union.VectorReg* %824 to %union.vec128_t*
  %825 = bitcast %union.vec128_t* %XMM0.i513 to i8*
  %826 = bitcast %union.vec128_t* %XMM1.i514 to i8*
  %827 = load i64, i64* %PC.i512
  %828 = add i64 %827, 4
  store i64 %828, i64* %PC.i512
  %829 = bitcast i8* %825 to double*
  %830 = load double, double* %829, align 1
  %831 = bitcast i8* %826 to double*
  %832 = load double, double* %831, align 1
  %833 = fcmp uno double %830, %832
  br i1 %833, label %834, label %846

; <label>:834:                                    ; preds = %block_.L_41a3da
  %835 = fadd double %830, %832
  %836 = bitcast double %835 to i64
  %837 = and i64 %836, 9221120237041090560
  %838 = icmp eq i64 %837, 9218868437227405312
  %839 = and i64 %836, 2251799813685247
  %840 = icmp ne i64 %839, 0
  %841 = and i1 %838, %840
  br i1 %841, label %842, label %852

; <label>:842:                                    ; preds = %834
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %844 = load i64, i64* %843, align 8
  %845 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %844, %struct.Memory* %loadMem_41a3fa)
  br label %routine_ucomisd__xmm1___xmm0.exit515

; <label>:846:                                    ; preds = %block_.L_41a3da
  %847 = fcmp ogt double %830, %832
  br i1 %847, label %852, label %848

; <label>:848:                                    ; preds = %846
  %849 = fcmp olt double %830, %832
  br i1 %849, label %852, label %850

; <label>:850:                                    ; preds = %848
  %851 = fcmp oeq double %830, %832
  br i1 %851, label %852, label %859

; <label>:852:                                    ; preds = %850, %848, %846, %834
  %853 = phi i8 [ 0, %846 ], [ 0, %848 ], [ 1, %850 ], [ 1, %834 ]
  %854 = phi i8 [ 0, %846 ], [ 0, %848 ], [ 0, %850 ], [ 1, %834 ]
  %855 = phi i8 [ 0, %846 ], [ 1, %848 ], [ 0, %850 ], [ 1, %834 ]
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %853, i8* %856, align 1
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %854, i8* %857, align 1
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %855, i8* %858, align 1
  br label %859

; <label>:859:                                    ; preds = %852, %850
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %860, align 1
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %861, align 1
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %862, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit515

routine_ucomisd__xmm1___xmm0.exit515:             ; preds = %842, %859
  %863 = phi %struct.Memory* [ %845, %842 ], [ %loadMem_41a3fa, %859 ]
  store %struct.Memory* %863, %struct.Memory** %MEMORY
  %loadMem_41a3fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 33
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %866 to i64*
  %867 = load i64, i64* %PC.i511
  %868 = add i64 %867, 19
  %869 = load i64, i64* %PC.i511
  %870 = add i64 %869, 6
  %871 = load i64, i64* %PC.i511
  %872 = add i64 %871, 6
  store i64 %872, i64* %PC.i511
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %874 = load i8, i8* %873, align 1
  store i8 %874, i8* %BRANCH_TAKEN, align 1
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %876 = icmp ne i8 %874, 0
  %877 = select i1 %876, i64 %868, i64 %870
  store i64 %877, i64* %875, align 8
  store %struct.Memory* %loadMem_41a3fe, %struct.Memory** %MEMORY
  %loadBr_41a3fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a3fe = icmp eq i8 %loadBr_41a3fe, 1
  br i1 %cmpBr_41a3fe, label %block_.L_41a411, label %block_41a404

block_41a404:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit515
  %loadMem_41a404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 33
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %880 to i64*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %882 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %881, i64 0, i64 0
  %YMM0.i510 = bitcast %union.VectorReg* %882 to %"class.std::bitset"*
  %883 = bitcast %"class.std::bitset"* %YMM0.i510 to i8*
  %884 = load i64, i64* %PC.i509
  %885 = add i64 %884, ptrtoint (%G_0x3a348__rip__type* @G_0x3a348__rip_ to i64)
  %886 = load i64, i64* %PC.i509
  %887 = add i64 %886, 8
  store i64 %887, i64* %PC.i509
  %888 = inttoptr i64 %885 to float*
  %889 = load float, float* %888
  %890 = bitcast i8* %883 to float*
  store float %889, float* %890, align 1
  %891 = getelementptr inbounds i8, i8* %883, i64 4
  %892 = bitcast i8* %891 to float*
  store float 0.000000e+00, float* %892, align 1
  %893 = getelementptr inbounds i8, i8* %883, i64 8
  %894 = bitcast i8* %893 to float*
  store float 0.000000e+00, float* %894, align 1
  %895 = getelementptr inbounds i8, i8* %883, i64 12
  %896 = bitcast i8* %895 to float*
  store float 0.000000e+00, float* %896, align 1
  store %struct.Memory* %loadMem_41a404, %struct.Memory** %MEMORY
  %loadMem_41a40c = load %struct.Memory*, %struct.Memory** %MEMORY
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 33
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 15
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %902 to i64*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %904 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %903, i64 0, i64 0
  %XMM0.i508 = bitcast %union.VectorReg* %904 to %union.vec128_t*
  %905 = load i64, i64* %RBP.i507
  %906 = sub i64 %905, 60
  %907 = bitcast %union.vec128_t* %XMM0.i508 to i8*
  %908 = load i64, i64* %PC.i506
  %909 = add i64 %908, 5
  store i64 %909, i64* %PC.i506
  %910 = bitcast i8* %907 to <2 x float>*
  %911 = load <2 x float>, <2 x float>* %910, align 1
  %912 = extractelement <2 x float> %911, i32 0
  %913 = inttoptr i64 %906 to float*
  store float %912, float* %913
  store %struct.Memory* %loadMem_41a40c, %struct.Memory** %MEMORY
  br label %block_.L_41a411

block_.L_41a411:                                  ; preds = %block_41a404, %routine_ucomisd__xmm1___xmm0.exit515
  %loadMem_41a411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 33
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %916 to i64*
  %917 = load i64, i64* %PC.i505
  %918 = add i64 %917, 5
  %919 = load i64, i64* %PC.i505
  %920 = add i64 %919, 5
  store i64 %920, i64* %PC.i505
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %918, i64* %921, align 8
  store %struct.Memory* %loadMem_41a411, %struct.Memory** %MEMORY
  br label %block_.L_41a416

block_.L_41a416:                                  ; preds = %block_.L_41a411
  %loadMem_41a416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 33
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %924 to i64*
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 1
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %RAX.i503 = bitcast %union.anon* %927 to i64*
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 15
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %930 to i64*
  %931 = load i64, i64* %RBP.i504
  %932 = sub i64 %931, 104
  %933 = load i64, i64* %PC.i502
  %934 = add i64 %933, 3
  store i64 %934, i64* %PC.i502
  %935 = inttoptr i64 %932 to i32*
  %936 = load i32, i32* %935
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RAX.i503, align 8
  store %struct.Memory* %loadMem_41a416, %struct.Memory** %MEMORY
  %loadMem_41a419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 33
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %940 to i64*
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 1
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %943 to i64*
  %944 = load i64, i64* %RAX.i501
  %945 = load i64, i64* %PC.i500
  %946 = add i64 %945, 3
  store i64 %946, i64* %PC.i500
  %947 = trunc i64 %944 to i32
  %948 = add i32 1, %947
  %949 = zext i32 %948 to i64
  store i64 %949, i64* %RAX.i501, align 8
  %950 = icmp ult i32 %948, %947
  %951 = icmp ult i32 %948, 1
  %952 = or i1 %950, %951
  %953 = zext i1 %952 to i8
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %953, i8* %954, align 1
  %955 = and i32 %948, 255
  %956 = call i32 @llvm.ctpop.i32(i32 %955)
  %957 = trunc i32 %956 to i8
  %958 = and i8 %957, 1
  %959 = xor i8 %958, 1
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %959, i8* %960, align 1
  %961 = xor i64 1, %944
  %962 = trunc i64 %961 to i32
  %963 = xor i32 %962, %948
  %964 = lshr i32 %963, 4
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %966, i8* %967, align 1
  %968 = icmp eq i32 %948, 0
  %969 = zext i1 %968 to i8
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %969, i8* %970, align 1
  %971 = lshr i32 %948, 31
  %972 = trunc i32 %971 to i8
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %972, i8* %973, align 1
  %974 = lshr i32 %947, 31
  %975 = xor i32 %971, %974
  %976 = add i32 %975, %971
  %977 = icmp eq i32 %976, 2
  %978 = zext i1 %977 to i8
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %978, i8* %979, align 1
  store %struct.Memory* %loadMem_41a419, %struct.Memory** %MEMORY
  %loadMem_41a41c = load %struct.Memory*, %struct.Memory** %MEMORY
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 33
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %982 to i64*
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 1
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %EAX.i498 = bitcast %union.anon* %985 to i32*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 15
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %988 to i64*
  %989 = load i64, i64* %RBP.i499
  %990 = sub i64 %989, 104
  %991 = load i32, i32* %EAX.i498
  %992 = zext i32 %991 to i64
  %993 = load i64, i64* %PC.i497
  %994 = add i64 %993, 3
  store i64 %994, i64* %PC.i497
  %995 = inttoptr i64 %990 to i32*
  store i32 %991, i32* %995
  store %struct.Memory* %loadMem_41a41c, %struct.Memory** %MEMORY
  %loadMem_41a41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 33
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %998 to i64*
  %999 = load i64, i64* %PC.i496
  %1000 = add i64 %999, -152
  %1001 = load i64, i64* %PC.i496
  %1002 = add i64 %1001, 5
  store i64 %1002, i64* %PC.i496
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1000, i64* %1003, align 8
  store %struct.Memory* %loadMem_41a41f, %struct.Memory** %MEMORY
  br label %block_.L_41a387

block_.L_41a424:                                  ; preds = %block_41a3d5, %block_.L_41a387
  %loadMem_41a424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 33
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 15
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %1009 to i64*
  %1010 = load i64, i64* %RBP.i495
  %1011 = sub i64 %1010, 104
  %1012 = load i64, i64* %PC.i494
  %1013 = add i64 %1012, 4
  store i64 %1013, i64* %PC.i494
  %1014 = inttoptr i64 %1011 to i32*
  %1015 = load i32, i32* %1014
  %1016 = sub i32 %1015, 100
  %1017 = icmp ult i32 %1015, 100
  %1018 = zext i1 %1017 to i8
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1018, i8* %1019, align 1
  %1020 = and i32 %1016, 255
  %1021 = call i32 @llvm.ctpop.i32(i32 %1020)
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  %1024 = xor i8 %1023, 1
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1024, i8* %1025, align 1
  %1026 = xor i32 %1015, 100
  %1027 = xor i32 %1026, %1016
  %1028 = lshr i32 %1027, 4
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1030, i8* %1031, align 1
  %1032 = icmp eq i32 %1016, 0
  %1033 = zext i1 %1032 to i8
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1033, i8* %1034, align 1
  %1035 = lshr i32 %1016, 31
  %1036 = trunc i32 %1035 to i8
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1036, i8* %1037, align 1
  %1038 = lshr i32 %1015, 31
  %1039 = xor i32 %1035, %1038
  %1040 = add i32 %1039, %1038
  %1041 = icmp eq i32 %1040, 2
  %1042 = zext i1 %1041 to i8
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1042, i8* %1043, align 1
  store %struct.Memory* %loadMem_41a424, %struct.Memory** %MEMORY
  %loadMem_41a428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 33
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %1046 to i64*
  %1047 = load i64, i64* %PC.i493
  %1048 = add i64 %1047, 555
  %1049 = load i64, i64* %PC.i493
  %1050 = add i64 %1049, 6
  %1051 = load i64, i64* %PC.i493
  %1052 = add i64 %1051, 6
  store i64 %1052, i64* %PC.i493
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1054 = load i8, i8* %1053, align 1
  %1055 = icmp eq i8 %1054, 0
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %BRANCH_TAKEN, align 1
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1058 = select i1 %1055, i64 %1048, i64 %1050
  store i64 %1058, i64* %1057, align 8
  store %struct.Memory* %loadMem_41a428, %struct.Memory** %MEMORY
  %loadBr_41a428 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a428 = icmp eq i8 %loadBr_41a428, 1
  br i1 %cmpBr_41a428, label %block_.L_41a653, label %block_41a42e

block_41a42e:                                     ; preds = %block_.L_41a424
  %loadMem_41a42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 33
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 15
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %1064 to i64*
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 17
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %R8.i492 = bitcast %union.anon* %1067 to i64*
  %1068 = load i64, i64* %RBP.i491
  %1069 = sub i64 %1068, 68
  %1070 = load i64, i64* %PC.i490
  %1071 = add i64 %1070, 4
  store i64 %1071, i64* %PC.i490
  store i64 %1069, i64* %R8.i492, align 8
  store %struct.Memory* %loadMem_41a42e, %struct.Memory** %MEMORY
  %loadMem_41a432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 33
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 15
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %1077 to i64*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 19
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %R9.i489 = bitcast %union.anon* %1080 to i64*
  %1081 = load i64, i64* %RBP.i488
  %1082 = sub i64 %1081, 72
  %1083 = load i64, i64* %PC.i487
  %1084 = add i64 %1083, 4
  store i64 %1084, i64* %PC.i487
  store i64 %1082, i64* %R9.i489, align 8
  store %struct.Memory* %loadMem_41a432, %struct.Memory** %MEMORY
  %loadMem_41a436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 33
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1087 to i64*
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1089 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1088, i64 0, i64 0
  %YMM0.i486 = bitcast %union.VectorReg* %1089 to %"class.std::bitset"*
  %1090 = bitcast %"class.std::bitset"* %YMM0.i486 to i8*
  %1091 = load i64, i64* %PC.i485
  %1092 = add i64 %1091, ptrtoint (%G_0x3a30e__rip__type* @G_0x3a30e__rip_ to i64)
  %1093 = load i64, i64* %PC.i485
  %1094 = add i64 %1093, 8
  store i64 %1094, i64* %PC.i485
  %1095 = inttoptr i64 %1092 to float*
  %1096 = load float, float* %1095
  %1097 = bitcast i8* %1090 to float*
  store float %1096, float* %1097, align 1
  %1098 = getelementptr inbounds i8, i8* %1090, i64 4
  %1099 = bitcast i8* %1098 to float*
  store float 0.000000e+00, float* %1099, align 1
  %1100 = getelementptr inbounds i8, i8* %1090, i64 8
  %1101 = bitcast i8* %1100 to float*
  store float 0.000000e+00, float* %1101, align 1
  %1102 = getelementptr inbounds i8, i8* %1090, i64 12
  %1103 = bitcast i8* %1102 to float*
  store float 0.000000e+00, float* %1103, align 1
  store %struct.Memory* %loadMem_41a436, %struct.Memory** %MEMORY
  %loadMem_41a43e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 33
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %1106 to i64*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 15
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %1109 to i64*
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1111 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1110, i64 0, i64 0
  %XMM0.i484 = bitcast %union.VectorReg* %1111 to %union.vec128_t*
  %1112 = load i64, i64* %RBP.i483
  %1113 = sub i64 %1112, 108
  %1114 = bitcast %union.vec128_t* %XMM0.i484 to i8*
  %1115 = load i64, i64* %PC.i482
  %1116 = add i64 %1115, 5
  store i64 %1116, i64* %PC.i482
  %1117 = bitcast i8* %1114 to <2 x float>*
  %1118 = load <2 x float>, <2 x float>* %1117, align 1
  %1119 = extractelement <2 x float> %1118, i32 0
  %1120 = inttoptr i64 %1113 to float*
  store float %1119, float* %1120
  store %struct.Memory* %loadMem_41a43e, %struct.Memory** %MEMORY
  %loadMem_41a443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 33
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1123 to i64*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 15
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %1126 to i64*
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1128 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1127, i64 0, i64 0
  %XMM0.i481 = bitcast %union.VectorReg* %1128 to %union.vec128_t*
  %1129 = load i64, i64* %RBP.i480
  %1130 = sub i64 %1129, 112
  %1131 = bitcast %union.vec128_t* %XMM0.i481 to i8*
  %1132 = load i64, i64* %PC.i479
  %1133 = add i64 %1132, 5
  store i64 %1133, i64* %PC.i479
  %1134 = bitcast i8* %1131 to <2 x float>*
  %1135 = load <2 x float>, <2 x float>* %1134, align 1
  %1136 = extractelement <2 x float> %1135, i32 0
  %1137 = inttoptr i64 %1130 to float*
  store float %1136, float* %1137
  store %struct.Memory* %loadMem_41a443, %struct.Memory** %MEMORY
  %loadMem_41a448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 33
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %1140 to i64*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 15
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %1143 to i64*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1145 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1144, i64 0, i64 0
  %XMM0.i478 = bitcast %union.VectorReg* %1145 to %union.vec128_t*
  %1146 = load i64, i64* %RBP.i477
  %1147 = sub i64 %1146, 60
  %1148 = bitcast %union.vec128_t* %XMM0.i478 to i8*
  %1149 = load i64, i64* %PC.i476
  %1150 = add i64 %1149, 5
  store i64 %1150, i64* %PC.i476
  %1151 = bitcast i8* %1148 to <2 x float>*
  %1152 = load <2 x float>, <2 x float>* %1151, align 1
  %1153 = extractelement <2 x float> %1152, i32 0
  %1154 = inttoptr i64 %1147 to float*
  store float %1153, float* %1154
  store %struct.Memory* %loadMem_41a448, %struct.Memory** %MEMORY
  %loadMem_41a44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 33
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 11
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %RDI.i474 = bitcast %union.anon* %1160 to i64*
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 15
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %1163 to i64*
  %1164 = load i64, i64* %RBP.i475
  %1165 = sub i64 %1164, 16
  %1166 = load i64, i64* %PC.i473
  %1167 = add i64 %1166, 4
  store i64 %1167, i64* %PC.i473
  %1168 = inttoptr i64 %1165 to i64*
  %1169 = load i64, i64* %1168
  store i64 %1169, i64* %RDI.i474, align 8
  store %struct.Memory* %loadMem_41a44d, %struct.Memory** %MEMORY
  %loadMem_41a451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 33
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %1172 to i64*
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 9
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %RSI.i471 = bitcast %union.anon* %1175 to i64*
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 15
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %1178 to i64*
  %1179 = load i64, i64* %RBP.i472
  %1180 = sub i64 %1179, 24
  %1181 = load i64, i64* %PC.i470
  %1182 = add i64 %1181, 4
  store i64 %1182, i64* %PC.i470
  %1183 = inttoptr i64 %1180 to i64*
  %1184 = load i64, i64* %1183
  store i64 %1184, i64* %RSI.i471, align 8
  store %struct.Memory* %loadMem_41a451, %struct.Memory** %MEMORY
  %loadMem_41a455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 7
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RDX.i468 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 15
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %1193 to i64*
  %1194 = load i64, i64* %RBP.i469
  %1195 = sub i64 %1194, 28
  %1196 = load i64, i64* %PC.i467
  %1197 = add i64 %1196, 3
  store i64 %1197, i64* %PC.i467
  %1198 = inttoptr i64 %1195 to i32*
  %1199 = load i32, i32* %1198
  %1200 = zext i32 %1199 to i64
  store i64 %1200, i64* %RDX.i468, align 8
  store %struct.Memory* %loadMem_41a455, %struct.Memory** %MEMORY
  %loadMem_41a458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 33
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 5
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %RCX.i465 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 15
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %1209 to i64*
  %1210 = load i64, i64* %RBP.i466
  %1211 = sub i64 %1210, 32
  %1212 = load i64, i64* %PC.i464
  %1213 = add i64 %1212, 3
  store i64 %1213, i64* %PC.i464
  %1214 = inttoptr i64 %1211 to i32*
  %1215 = load i32, i32* %1214
  %1216 = zext i32 %1215 to i64
  store i64 %1216, i64* %RCX.i465, align 8
  store %struct.Memory* %loadMem_41a458, %struct.Memory** %MEMORY
  %loadMem_41a45b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 33
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %1219 to i64*
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 15
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %1222 to i64*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1224 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1223, i64 0, i64 0
  %YMM0.i463 = bitcast %union.VectorReg* %1224 to %"class.std::bitset"*
  %1225 = bitcast %"class.std::bitset"* %YMM0.i463 to i8*
  %1226 = load i64, i64* %RBP.i462
  %1227 = sub i64 %1226, 36
  %1228 = load i64, i64* %PC.i461
  %1229 = add i64 %1228, 5
  store i64 %1229, i64* %PC.i461
  %1230 = inttoptr i64 %1227 to float*
  %1231 = load float, float* %1230
  %1232 = bitcast i8* %1225 to float*
  store float %1231, float* %1232, align 1
  %1233 = getelementptr inbounds i8, i8* %1225, i64 4
  %1234 = bitcast i8* %1233 to float*
  store float 0.000000e+00, float* %1234, align 1
  %1235 = getelementptr inbounds i8, i8* %1225, i64 8
  %1236 = bitcast i8* %1235 to float*
  store float 0.000000e+00, float* %1236, align 1
  %1237 = getelementptr inbounds i8, i8* %1225, i64 12
  %1238 = bitcast i8* %1237 to float*
  store float 0.000000e+00, float* %1238, align 1
  store %struct.Memory* %loadMem_41a45b, %struct.Memory** %MEMORY
  %loadMem_41a460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 33
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %1241 to i64*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 15
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %1244 to i64*
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1246 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1245, i64 0, i64 1
  %YMM1.i460 = bitcast %union.VectorReg* %1246 to %"class.std::bitset"*
  %1247 = bitcast %"class.std::bitset"* %YMM1.i460 to i8*
  %1248 = load i64, i64* %RBP.i459
  %1249 = sub i64 %1248, 60
  %1250 = load i64, i64* %PC.i458
  %1251 = add i64 %1250, 5
  store i64 %1251, i64* %PC.i458
  %1252 = inttoptr i64 %1249 to float*
  %1253 = load float, float* %1252
  %1254 = bitcast i8* %1247 to float*
  store float %1253, float* %1254, align 1
  %1255 = getelementptr inbounds i8, i8* %1247, i64 4
  %1256 = bitcast i8* %1255 to float*
  store float 0.000000e+00, float* %1256, align 1
  %1257 = getelementptr inbounds i8, i8* %1247, i64 8
  %1258 = bitcast i8* %1257 to float*
  store float 0.000000e+00, float* %1258, align 1
  %1259 = getelementptr inbounds i8, i8* %1247, i64 12
  %1260 = bitcast i8* %1259 to float*
  store float 0.000000e+00, float* %1260, align 1
  store %struct.Memory* %loadMem_41a460, %struct.Memory** %MEMORY
  %loadMem1_41a465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 33
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %PC.i457
  %1265 = add i64 %1264, 2491
  %1266 = load i64, i64* %PC.i457
  %1267 = add i64 %1266, 5
  %1268 = load i64, i64* %PC.i457
  %1269 = add i64 %1268, 5
  store i64 %1269, i64* %PC.i457
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1271 = load i64, i64* %1270, align 8
  %1272 = add i64 %1271, -8
  %1273 = inttoptr i64 %1272 to i64*
  store i64 %1267, i64* %1273
  store i64 %1272, i64* %1270, align 8
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1265, i64* %1274, align 8
  store %struct.Memory* %loadMem1_41a465, %struct.Memory** %MEMORY
  %loadMem2_41a465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a465 = load i64, i64* %3
  %call2_41a465 = call %struct.Memory* @sub_41ae20.Lawless422(%struct.State* %0, i64 %loadPC_41a465, %struct.Memory* %loadMem2_41a465)
  store %struct.Memory* %call2_41a465, %struct.Memory** %MEMORY
  %loadMem_41a46a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 33
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1277 to i64*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1278, i64 0, i64 0
  %YMM0.i455 = bitcast %union.VectorReg* %1279 to %"class.std::bitset"*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1280, i64 0, i64 0
  %XMM0.i456 = bitcast %union.VectorReg* %1281 to %union.vec128_t*
  %1282 = bitcast %"class.std::bitset"* %YMM0.i455 to i8*
  %1283 = bitcast %"class.std::bitset"* %YMM0.i455 to i8*
  %1284 = bitcast %union.vec128_t* %XMM0.i456 to i8*
  %1285 = load i64, i64* %PC.i454
  %1286 = add i64 %1285, 3
  store i64 %1286, i64* %PC.i454
  %1287 = bitcast i8* %1283 to i64*
  %1288 = load i64, i64* %1287, align 1
  %1289 = getelementptr inbounds i8, i8* %1283, i64 8
  %1290 = bitcast i8* %1289 to i64*
  %1291 = load i64, i64* %1290, align 1
  %1292 = bitcast i8* %1284 to i64*
  %1293 = load i64, i64* %1292, align 1
  %1294 = getelementptr inbounds i8, i8* %1284, i64 8
  %1295 = bitcast i8* %1294 to i64*
  %1296 = load i64, i64* %1295, align 1
  %1297 = xor i64 %1293, %1288
  %1298 = xor i64 %1296, %1291
  %1299 = trunc i64 %1297 to i32
  %1300 = lshr i64 %1297, 32
  %1301 = trunc i64 %1300 to i32
  %1302 = bitcast i8* %1282 to i32*
  store i32 %1299, i32* %1302, align 1
  %1303 = getelementptr inbounds i8, i8* %1282, i64 4
  %1304 = bitcast i8* %1303 to i32*
  store i32 %1301, i32* %1304, align 1
  %1305 = trunc i64 %1298 to i32
  %1306 = getelementptr inbounds i8, i8* %1282, i64 8
  %1307 = bitcast i8* %1306 to i32*
  store i32 %1305, i32* %1307, align 1
  %1308 = lshr i64 %1298, 32
  %1309 = trunc i64 %1308 to i32
  %1310 = getelementptr inbounds i8, i8* %1282, i64 12
  %1311 = bitcast i8* %1310 to i32*
  store i32 %1309, i32* %1311, align 1
  store %struct.Memory* %loadMem_41a46a, %struct.Memory** %MEMORY
  %loadMem_41a46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 33
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 15
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %1317 to i64*
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1318, i64 0, i64 1
  %YMM1.i453 = bitcast %union.VectorReg* %1319 to %"class.std::bitset"*
  %1320 = bitcast %"class.std::bitset"* %YMM1.i453 to i8*
  %1321 = load i64, i64* %RBP.i452
  %1322 = sub i64 %1321, 68
  %1323 = load i64, i64* %PC.i451
  %1324 = add i64 %1323, 5
  store i64 %1324, i64* %PC.i451
  %1325 = inttoptr i64 %1322 to float*
  %1326 = load float, float* %1325
  %1327 = fpext float %1326 to double
  %1328 = bitcast i8* %1320 to double*
  store double %1327, double* %1328, align 1
  store %struct.Memory* %loadMem_41a46d, %struct.Memory** %MEMORY
  %loadMem_41a472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 33
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1331 to i64*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1333 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1332, i64 0, i64 0
  %XMM0.i445 = bitcast %union.VectorReg* %1333 to %union.vec128_t*
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1335 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1334, i64 0, i64 1
  %XMM1.i446 = bitcast %union.VectorReg* %1335 to %union.vec128_t*
  %1336 = bitcast %union.vec128_t* %XMM0.i445 to i8*
  %1337 = bitcast %union.vec128_t* %XMM1.i446 to i8*
  %1338 = load i64, i64* %PC.i444
  %1339 = add i64 %1338, 4
  store i64 %1339, i64* %PC.i444
  %1340 = bitcast i8* %1336 to double*
  %1341 = load double, double* %1340, align 1
  %1342 = bitcast i8* %1337 to double*
  %1343 = load double, double* %1342, align 1
  %1344 = fcmp uno double %1341, %1343
  br i1 %1344, label %1345, label %1357

; <label>:1345:                                   ; preds = %block_41a42e
  %1346 = fadd double %1341, %1343
  %1347 = bitcast double %1346 to i64
  %1348 = and i64 %1347, 9221120237041090560
  %1349 = icmp eq i64 %1348, 9218868437227405312
  %1350 = and i64 %1347, 2251799813685247
  %1351 = icmp ne i64 %1350, 0
  %1352 = and i1 %1349, %1351
  br i1 %1352, label %1353, label %1363

; <label>:1353:                                   ; preds = %1345
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1355 = load i64, i64* %1354, align 8
  %1356 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1355, %struct.Memory* %loadMem_41a472)
  br label %routine_ucomisd__xmm1___xmm0.exit447

; <label>:1357:                                   ; preds = %block_41a42e
  %1358 = fcmp ogt double %1341, %1343
  br i1 %1358, label %1363, label %1359

; <label>:1359:                                   ; preds = %1357
  %1360 = fcmp olt double %1341, %1343
  br i1 %1360, label %1363, label %1361

; <label>:1361:                                   ; preds = %1359
  %1362 = fcmp oeq double %1341, %1343
  br i1 %1362, label %1363, label %1370

; <label>:1363:                                   ; preds = %1361, %1359, %1357, %1345
  %1364 = phi i8 [ 0, %1357 ], [ 0, %1359 ], [ 1, %1361 ], [ 1, %1345 ]
  %1365 = phi i8 [ 0, %1357 ], [ 0, %1359 ], [ 0, %1361 ], [ 1, %1345 ]
  %1366 = phi i8 [ 0, %1357 ], [ 1, %1359 ], [ 0, %1361 ], [ 1, %1345 ]
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1364, i8* %1367, align 1
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1365, i8* %1368, align 1
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1366, i8* %1369, align 1
  br label %1370

; <label>:1370:                                   ; preds = %1363, %1361
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1371, align 1
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1372, align 1
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1373, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit447

routine_ucomisd__xmm1___xmm0.exit447:             ; preds = %1353, %1370
  %1374 = phi %struct.Memory* [ %1356, %1353 ], [ %loadMem_41a472, %1370 ]
  store %struct.Memory* %1374, %struct.Memory** %MEMORY
  %loadMem_41a476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 33
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %1377 to i64*
  %1378 = load i64, i64* %PC.i443
  %1379 = add i64 %1378, 127
  %1380 = load i64, i64* %PC.i443
  %1381 = add i64 %1380, 6
  %1382 = load i64, i64* %PC.i443
  %1383 = add i64 %1382, 6
  store i64 %1383, i64* %PC.i443
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1385 = load i8, i8* %1384, align 1
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1387 = load i8, i8* %1386, align 1
  %1388 = or i8 %1387, %1385
  %1389 = icmp ne i8 %1388, 0
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %BRANCH_TAKEN, align 1
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1392 = select i1 %1389, i64 %1379, i64 %1381
  store i64 %1392, i64* %1391, align 8
  store %struct.Memory* %loadMem_41a476, %struct.Memory** %MEMORY
  %loadBr_41a476 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a476 = icmp eq i8 %loadBr_41a476, 1
  br i1 %cmpBr_41a476, label %block_.L_41a4f5, label %block_41a47c

block_41a47c:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit447
  %loadMem_41a47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 33
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %1395 to i64*
  %1396 = load i64, i64* %PC.i442
  %1397 = add i64 %1396, 5
  %1398 = load i64, i64* %PC.i442
  %1399 = add i64 %1398, 5
  store i64 %1399, i64* %PC.i442
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1397, i64* %1400, align 8
  store %struct.Memory* %loadMem_41a47c, %struct.Memory** %MEMORY
  br label %block_.L_41a481

block_.L_41a481:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit, %block_41a47c
  %loadMem_41a481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 33
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1405 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1404, i64 0, i64 0
  %YMM0.i440 = bitcast %union.VectorReg* %1405 to %"class.std::bitset"*
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1407 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1406, i64 0, i64 0
  %XMM0.i441 = bitcast %union.VectorReg* %1407 to %union.vec128_t*
  %1408 = bitcast %"class.std::bitset"* %YMM0.i440 to i8*
  %1409 = bitcast %"class.std::bitset"* %YMM0.i440 to i8*
  %1410 = bitcast %union.vec128_t* %XMM0.i441 to i8*
  %1411 = load i64, i64* %PC.i439
  %1412 = add i64 %1411, 3
  store i64 %1412, i64* %PC.i439
  %1413 = bitcast i8* %1409 to i64*
  %1414 = load i64, i64* %1413, align 1
  %1415 = getelementptr inbounds i8, i8* %1409, i64 8
  %1416 = bitcast i8* %1415 to i64*
  %1417 = load i64, i64* %1416, align 1
  %1418 = bitcast i8* %1410 to i64*
  %1419 = load i64, i64* %1418, align 1
  %1420 = getelementptr inbounds i8, i8* %1410, i64 8
  %1421 = bitcast i8* %1420 to i64*
  %1422 = load i64, i64* %1421, align 1
  %1423 = xor i64 %1419, %1414
  %1424 = xor i64 %1422, %1417
  %1425 = trunc i64 %1423 to i32
  %1426 = lshr i64 %1423, 32
  %1427 = trunc i64 %1426 to i32
  %1428 = bitcast i8* %1408 to i32*
  store i32 %1425, i32* %1428, align 1
  %1429 = getelementptr inbounds i8, i8* %1408, i64 4
  %1430 = bitcast i8* %1429 to i32*
  store i32 %1427, i32* %1430, align 1
  %1431 = trunc i64 %1424 to i32
  %1432 = getelementptr inbounds i8, i8* %1408, i64 8
  %1433 = bitcast i8* %1432 to i32*
  store i32 %1431, i32* %1433, align 1
  %1434 = lshr i64 %1424, 32
  %1435 = trunc i64 %1434 to i32
  %1436 = getelementptr inbounds i8, i8* %1408, i64 12
  %1437 = bitcast i8* %1436 to i32*
  store i32 %1435, i32* %1437, align 1
  store %struct.Memory* %loadMem_41a481, %struct.Memory** %MEMORY
  %loadMem_41a484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 33
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1442 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1441, i64 0, i64 1
  %YMM1.i438 = bitcast %union.VectorReg* %1442 to %"class.std::bitset"*
  %1443 = bitcast %"class.std::bitset"* %YMM1.i438 to i8*
  %1444 = load i64, i64* %PC.i437
  %1445 = add i64 %1444, ptrtoint (%G_0x3a3ec__rip__type* @G_0x3a3ec__rip_ to i64)
  %1446 = load i64, i64* %PC.i437
  %1447 = add i64 %1446, 8
  store i64 %1447, i64* %PC.i437
  %1448 = inttoptr i64 %1445 to double*
  %1449 = load double, double* %1448
  %1450 = bitcast i8* %1443 to double*
  store double %1449, double* %1450, align 1
  %1451 = getelementptr inbounds i8, i8* %1443, i64 8
  %1452 = bitcast i8* %1451 to double*
  store double 0.000000e+00, double* %1452, align 1
  store %struct.Memory* %loadMem_41a484, %struct.Memory** %MEMORY
  %loadMem_41a48c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 33
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %1455 to i64*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 15
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %1458 to i64*
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1460 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1459, i64 0, i64 2
  %YMM2.i436 = bitcast %union.VectorReg* %1460 to %"class.std::bitset"*
  %1461 = bitcast %"class.std::bitset"* %YMM2.i436 to i8*
  %1462 = load i64, i64* %RBP.i435
  %1463 = sub i64 %1462, 108
  %1464 = load i64, i64* %PC.i434
  %1465 = add i64 %1464, 5
  store i64 %1465, i64* %PC.i434
  %1466 = inttoptr i64 %1463 to float*
  %1467 = load float, float* %1466
  %1468 = fpext float %1467 to double
  %1469 = bitcast i8* %1461 to double*
  store double %1468, double* %1469, align 1
  store %struct.Memory* %loadMem_41a48c, %struct.Memory** %MEMORY
  %loadMem_41a491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 33
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %1472 to i64*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1474 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1473, i64 0, i64 2
  %YMM2.i432 = bitcast %union.VectorReg* %1474 to %"class.std::bitset"*
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1476 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1475, i64 0, i64 1
  %XMM1.i433 = bitcast %union.VectorReg* %1476 to %union.vec128_t*
  %1477 = bitcast %"class.std::bitset"* %YMM2.i432 to i8*
  %1478 = bitcast %"class.std::bitset"* %YMM2.i432 to i8*
  %1479 = bitcast %union.vec128_t* %XMM1.i433 to i8*
  %1480 = load i64, i64* %PC.i431
  %1481 = add i64 %1480, 4
  store i64 %1481, i64* %PC.i431
  %1482 = bitcast i8* %1478 to double*
  %1483 = load double, double* %1482, align 1
  %1484 = getelementptr inbounds i8, i8* %1478, i64 8
  %1485 = bitcast i8* %1484 to i64*
  %1486 = load i64, i64* %1485, align 1
  %1487 = bitcast i8* %1479 to double*
  %1488 = load double, double* %1487, align 1
  %1489 = fsub double %1483, %1488
  %1490 = bitcast i8* %1477 to double*
  store double %1489, double* %1490, align 1
  %1491 = getelementptr inbounds i8, i8* %1477, i64 8
  %1492 = bitcast i8* %1491 to i64*
  store i64 %1486, i64* %1492, align 1
  store %struct.Memory* %loadMem_41a491, %struct.Memory** %MEMORY
  %loadMem_41a495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 33
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1497 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1496, i64 0, i64 1
  %YMM1.i429 = bitcast %union.VectorReg* %1497 to %"class.std::bitset"*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1499 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1498, i64 0, i64 2
  %XMM2.i430 = bitcast %union.VectorReg* %1499 to %union.vec128_t*
  %1500 = bitcast %"class.std::bitset"* %YMM1.i429 to i8*
  %1501 = bitcast %union.vec128_t* %XMM2.i430 to i8*
  %1502 = load i64, i64* %PC.i428
  %1503 = add i64 %1502, 4
  store i64 %1503, i64* %PC.i428
  %1504 = bitcast i8* %1500 to <2 x i32>*
  %1505 = load <2 x i32>, <2 x i32>* %1504, align 1
  %1506 = getelementptr inbounds i8, i8* %1500, i64 8
  %1507 = bitcast i8* %1506 to <2 x i32>*
  %1508 = load <2 x i32>, <2 x i32>* %1507, align 1
  %1509 = bitcast i8* %1501 to double*
  %1510 = load double, double* %1509, align 1
  %1511 = fptrunc double %1510 to float
  %1512 = bitcast i8* %1500 to float*
  store float %1511, float* %1512, align 1
  %1513 = extractelement <2 x i32> %1505, i32 1
  %1514 = getelementptr inbounds i8, i8* %1500, i64 4
  %1515 = bitcast i8* %1514 to i32*
  store i32 %1513, i32* %1515, align 1
  %1516 = extractelement <2 x i32> %1508, i32 0
  %1517 = bitcast i8* %1506 to i32*
  store i32 %1516, i32* %1517, align 1
  %1518 = extractelement <2 x i32> %1508, i32 1
  %1519 = getelementptr inbounds i8, i8* %1500, i64 12
  %1520 = bitcast i8* %1519 to i32*
  store i32 %1518, i32* %1520, align 1
  store %struct.Memory* %loadMem_41a495, %struct.Memory** %MEMORY
  %loadMem_41a499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 33
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %1523 to i64*
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 15
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %1526 to i64*
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1528 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1527, i64 0, i64 1
  %XMM1.i427 = bitcast %union.VectorReg* %1528 to %union.vec128_t*
  %1529 = load i64, i64* %RBP.i426
  %1530 = sub i64 %1529, 108
  %1531 = bitcast %union.vec128_t* %XMM1.i427 to i8*
  %1532 = load i64, i64* %PC.i425
  %1533 = add i64 %1532, 5
  store i64 %1533, i64* %PC.i425
  %1534 = bitcast i8* %1531 to <2 x float>*
  %1535 = load <2 x float>, <2 x float>* %1534, align 1
  %1536 = extractelement <2 x float> %1535, i32 0
  %1537 = inttoptr i64 %1530 to float*
  store float %1536, float* %1537
  store %struct.Memory* %loadMem_41a499, %struct.Memory** %MEMORY
  %loadMem_41a49e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 33
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1540 to i64*
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 15
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %1543 to i64*
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1545 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1544, i64 0, i64 1
  %YMM1.i424 = bitcast %union.VectorReg* %1545 to %"class.std::bitset"*
  %1546 = bitcast %"class.std::bitset"* %YMM1.i424 to i8*
  %1547 = load i64, i64* %RBP.i423
  %1548 = sub i64 %1547, 108
  %1549 = load i64, i64* %PC.i422
  %1550 = add i64 %1549, 5
  store i64 %1550, i64* %PC.i422
  %1551 = inttoptr i64 %1548 to float*
  %1552 = load float, float* %1551
  %1553 = fpext float %1552 to double
  %1554 = bitcast i8* %1546 to double*
  store double %1553, double* %1554, align 1
  store %struct.Memory* %loadMem_41a49e, %struct.Memory** %MEMORY
  %loadMem_41a4a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1559 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1558, i64 0, i64 0
  %XMM0.i416 = bitcast %union.VectorReg* %1559 to %union.vec128_t*
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1561 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1560, i64 0, i64 1
  %XMM1.i417 = bitcast %union.VectorReg* %1561 to %union.vec128_t*
  %1562 = bitcast %union.vec128_t* %XMM0.i416 to i8*
  %1563 = bitcast %union.vec128_t* %XMM1.i417 to i8*
  %1564 = load i64, i64* %PC.i415
  %1565 = add i64 %1564, 4
  store i64 %1565, i64* %PC.i415
  %1566 = bitcast i8* %1562 to double*
  %1567 = load double, double* %1566, align 1
  %1568 = bitcast i8* %1563 to double*
  %1569 = load double, double* %1568, align 1
  %1570 = fcmp uno double %1567, %1569
  br i1 %1570, label %1571, label %1583

; <label>:1571:                                   ; preds = %block_.L_41a481
  %1572 = fadd double %1567, %1569
  %1573 = bitcast double %1572 to i64
  %1574 = and i64 %1573, 9221120237041090560
  %1575 = icmp eq i64 %1574, 9218868437227405312
  %1576 = and i64 %1573, 2251799813685247
  %1577 = icmp ne i64 %1576, 0
  %1578 = and i1 %1575, %1577
  br i1 %1578, label %1579, label %1589

; <label>:1579:                                   ; preds = %1571
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1581 = load i64, i64* %1580, align 8
  %1582 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1581, %struct.Memory* %loadMem_41a4a3)
  br label %routine_ucomisd__xmm1___xmm0.exit418

; <label>:1583:                                   ; preds = %block_.L_41a481
  %1584 = fcmp ogt double %1567, %1569
  br i1 %1584, label %1589, label %1585

; <label>:1585:                                   ; preds = %1583
  %1586 = fcmp olt double %1567, %1569
  br i1 %1586, label %1589, label %1587

; <label>:1587:                                   ; preds = %1585
  %1588 = fcmp oeq double %1567, %1569
  br i1 %1588, label %1589, label %1596

; <label>:1589:                                   ; preds = %1587, %1585, %1583, %1571
  %1590 = phi i8 [ 0, %1583 ], [ 0, %1585 ], [ 1, %1587 ], [ 1, %1571 ]
  %1591 = phi i8 [ 0, %1583 ], [ 0, %1585 ], [ 0, %1587 ], [ 1, %1571 ]
  %1592 = phi i8 [ 0, %1583 ], [ 1, %1585 ], [ 0, %1587 ], [ 1, %1571 ]
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1590, i8* %1593, align 1
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1591, i8* %1594, align 1
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1592, i8* %1595, align 1
  br label %1596

; <label>:1596:                                   ; preds = %1589, %1587
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1597, align 1
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1598, align 1
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1599, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit418

routine_ucomisd__xmm1___xmm0.exit418:             ; preds = %1579, %1596
  %1600 = phi %struct.Memory* [ %1582, %1579 ], [ %loadMem_41a4a3, %1596 ]
  store %struct.Memory* %1600, %struct.Memory** %MEMORY
  %loadMem_41a4a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 33
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1603 to i64*
  %1604 = load i64, i64* %PC.i414
  %1605 = add i64 %1604, 18
  %1606 = load i64, i64* %PC.i414
  %1607 = add i64 %1606, 6
  %1608 = load i64, i64* %PC.i414
  %1609 = add i64 %1608, 6
  store i64 %1609, i64* %PC.i414
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1611 = load i8, i8* %1610, align 1
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1613 = load i8, i8* %1612, align 1
  %1614 = or i8 %1613, %1611
  %1615 = icmp ne i8 %1614, 0
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %BRANCH_TAKEN, align 1
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1618 = select i1 %1615, i64 %1605, i64 %1607
  store i64 %1618, i64* %1617, align 8
  store %struct.Memory* %loadMem_41a4a7, %struct.Memory** %MEMORY
  %loadBr_41a4a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a4a7 = icmp eq i8 %loadBr_41a4a7, 1
  br i1 %cmpBr_41a4a7, label %block_.L_41a4b9, label %block_41a4ad

block_41a4ad:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit418
  %loadMem_41a4ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 33
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %1621 to i64*
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 15
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %1624 to i64*
  %1625 = load i64, i64* %RBP.i413
  %1626 = sub i64 %1625, 4
  %1627 = load i64, i64* %PC.i412
  %1628 = add i64 %1627, 7
  store i64 %1628, i64* %PC.i412
  %1629 = inttoptr i64 %1626 to i32*
  store i32 0, i32* %1629
  store %struct.Memory* %loadMem_41a4ad, %struct.Memory** %MEMORY
  %loadMem_41a4b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %1632 to i64*
  %1633 = load i64, i64* %PC.i411
  %1634 = add i64 %1633, 754
  %1635 = load i64, i64* %PC.i411
  %1636 = add i64 %1635, 5
  store i64 %1636, i64* %PC.i411
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1634, i64* %1637, align 8
  store %struct.Memory* %loadMem_41a4b4, %struct.Memory** %MEMORY
  br label %block_.L_41a7a6

block_.L_41a4b9:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit418
  %loadMem_41a4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 33
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1640 to i64*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 15
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %1643 to i64*
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 17
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %R8.i410 = bitcast %union.anon* %1646 to i64*
  %1647 = load i64, i64* %RBP.i409
  %1648 = sub i64 %1647, 68
  %1649 = load i64, i64* %PC.i408
  %1650 = add i64 %1649, 4
  store i64 %1650, i64* %PC.i408
  store i64 %1648, i64* %R8.i410, align 8
  store %struct.Memory* %loadMem_41a4b9, %struct.Memory** %MEMORY
  %loadMem_41a4bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 33
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %1653 to i64*
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 15
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %1656 to i64*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 19
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %R9.i407 = bitcast %union.anon* %1659 to i64*
  %1660 = load i64, i64* %RBP.i406
  %1661 = sub i64 %1660, 72
  %1662 = load i64, i64* %PC.i405
  %1663 = add i64 %1662, 4
  store i64 %1663, i64* %PC.i405
  store i64 %1661, i64* %R9.i407, align 8
  store %struct.Memory* %loadMem_41a4bd, %struct.Memory** %MEMORY
  %loadMem_41a4c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 33
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1666 to i64*
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 11
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %RDI.i403 = bitcast %union.anon* %1669 to i64*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 15
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %1672 to i64*
  %1673 = load i64, i64* %RBP.i404
  %1674 = sub i64 %1673, 16
  %1675 = load i64, i64* %PC.i402
  %1676 = add i64 %1675, 4
  store i64 %1676, i64* %PC.i402
  %1677 = inttoptr i64 %1674 to i64*
  %1678 = load i64, i64* %1677
  store i64 %1678, i64* %RDI.i403, align 8
  store %struct.Memory* %loadMem_41a4c1, %struct.Memory** %MEMORY
  %loadMem_41a4c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 33
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1681 to i64*
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 9
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %RSI.i400 = bitcast %union.anon* %1684 to i64*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 15
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %1687 to i64*
  %1688 = load i64, i64* %RBP.i401
  %1689 = sub i64 %1688, 24
  %1690 = load i64, i64* %PC.i399
  %1691 = add i64 %1690, 4
  store i64 %1691, i64* %PC.i399
  %1692 = inttoptr i64 %1689 to i64*
  %1693 = load i64, i64* %1692
  store i64 %1693, i64* %RSI.i400, align 8
  store %struct.Memory* %loadMem_41a4c5, %struct.Memory** %MEMORY
  %loadMem_41a4c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 33
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1696 to i64*
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 7
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %RDX.i397 = bitcast %union.anon* %1699 to i64*
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 15
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %1702 to i64*
  %1703 = load i64, i64* %RBP.i398
  %1704 = sub i64 %1703, 28
  %1705 = load i64, i64* %PC.i396
  %1706 = add i64 %1705, 3
  store i64 %1706, i64* %PC.i396
  %1707 = inttoptr i64 %1704 to i32*
  %1708 = load i32, i32* %1707
  %1709 = zext i32 %1708 to i64
  store i64 %1709, i64* %RDX.i397, align 8
  store %struct.Memory* %loadMem_41a4c9, %struct.Memory** %MEMORY
  %loadMem_41a4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 33
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %1712 to i64*
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 5
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %RCX.i394 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 15
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %1718 to i64*
  %1719 = load i64, i64* %RBP.i395
  %1720 = sub i64 %1719, 32
  %1721 = load i64, i64* %PC.i393
  %1722 = add i64 %1721, 3
  store i64 %1722, i64* %PC.i393
  %1723 = inttoptr i64 %1720 to i32*
  %1724 = load i32, i32* %1723
  %1725 = zext i32 %1724 to i64
  store i64 %1725, i64* %RCX.i394, align 8
  store %struct.Memory* %loadMem_41a4cc, %struct.Memory** %MEMORY
  %loadMem_41a4cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 33
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %1728 to i64*
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 15
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1733 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1732, i64 0, i64 0
  %YMM0.i392 = bitcast %union.VectorReg* %1733 to %"class.std::bitset"*
  %1734 = bitcast %"class.std::bitset"* %YMM0.i392 to i8*
  %1735 = load i64, i64* %RBP.i391
  %1736 = sub i64 %1735, 36
  %1737 = load i64, i64* %PC.i390
  %1738 = add i64 %1737, 5
  store i64 %1738, i64* %PC.i390
  %1739 = inttoptr i64 %1736 to float*
  %1740 = load float, float* %1739
  %1741 = bitcast i8* %1734 to float*
  store float %1740, float* %1741, align 1
  %1742 = getelementptr inbounds i8, i8* %1734, i64 4
  %1743 = bitcast i8* %1742 to float*
  store float 0.000000e+00, float* %1743, align 1
  %1744 = getelementptr inbounds i8, i8* %1734, i64 8
  %1745 = bitcast i8* %1744 to float*
  store float 0.000000e+00, float* %1745, align 1
  %1746 = getelementptr inbounds i8, i8* %1734, i64 12
  %1747 = bitcast i8* %1746 to float*
  store float 0.000000e+00, float* %1747, align 1
  store %struct.Memory* %loadMem_41a4cf, %struct.Memory** %MEMORY
  %loadMem_41a4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 33
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %1750 to i64*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 15
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %1753 to i64*
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1755 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1754, i64 0, i64 1
  %YMM1.i389 = bitcast %union.VectorReg* %1755 to %"class.std::bitset"*
  %1756 = bitcast %"class.std::bitset"* %YMM1.i389 to i8*
  %1757 = load i64, i64* %RBP.i388
  %1758 = sub i64 %1757, 108
  %1759 = load i64, i64* %PC.i387
  %1760 = add i64 %1759, 5
  store i64 %1760, i64* %PC.i387
  %1761 = inttoptr i64 %1758 to float*
  %1762 = load float, float* %1761
  %1763 = bitcast i8* %1756 to float*
  store float %1762, float* %1763, align 1
  %1764 = getelementptr inbounds i8, i8* %1756, i64 4
  %1765 = bitcast i8* %1764 to float*
  store float 0.000000e+00, float* %1765, align 1
  %1766 = getelementptr inbounds i8, i8* %1756, i64 8
  %1767 = bitcast i8* %1766 to float*
  store float 0.000000e+00, float* %1767, align 1
  %1768 = getelementptr inbounds i8, i8* %1756, i64 12
  %1769 = bitcast i8* %1768 to float*
  store float 0.000000e+00, float* %1769, align 1
  store %struct.Memory* %loadMem_41a4d4, %struct.Memory** %MEMORY
  %loadMem1_41a4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 33
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %1772 to i64*
  %1773 = load i64, i64* %PC.i386
  %1774 = add i64 %1773, 2375
  %1775 = load i64, i64* %PC.i386
  %1776 = add i64 %1775, 5
  %1777 = load i64, i64* %PC.i386
  %1778 = add i64 %1777, 5
  store i64 %1778, i64* %PC.i386
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1780 = load i64, i64* %1779, align 8
  %1781 = add i64 %1780, -8
  %1782 = inttoptr i64 %1781 to i64*
  store i64 %1776, i64* %1782
  store i64 %1781, i64* %1779, align 8
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1774, i64* %1783, align 8
  store %struct.Memory* %loadMem1_41a4d9, %struct.Memory** %MEMORY
  %loadMem2_41a4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a4d9 = load i64, i64* %3
  %call2_41a4d9 = call %struct.Memory* @sub_41ae20.Lawless422(%struct.State* %0, i64 %loadPC_41a4d9, %struct.Memory* %loadMem2_41a4d9)
  store %struct.Memory* %call2_41a4d9, %struct.Memory** %MEMORY
  %loadMem_41a4de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 33
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1788 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1787, i64 0, i64 0
  %YMM0.i384 = bitcast %union.VectorReg* %1788 to %"class.std::bitset"*
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1790 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1789, i64 0, i64 0
  %XMM0.i385 = bitcast %union.VectorReg* %1790 to %union.vec128_t*
  %1791 = bitcast %"class.std::bitset"* %YMM0.i384 to i8*
  %1792 = bitcast %"class.std::bitset"* %YMM0.i384 to i8*
  %1793 = bitcast %union.vec128_t* %XMM0.i385 to i8*
  %1794 = load i64, i64* %PC.i383
  %1795 = add i64 %1794, 3
  store i64 %1795, i64* %PC.i383
  %1796 = bitcast i8* %1792 to i64*
  %1797 = load i64, i64* %1796, align 1
  %1798 = getelementptr inbounds i8, i8* %1792, i64 8
  %1799 = bitcast i8* %1798 to i64*
  %1800 = load i64, i64* %1799, align 1
  %1801 = bitcast i8* %1793 to i64*
  %1802 = load i64, i64* %1801, align 1
  %1803 = getelementptr inbounds i8, i8* %1793, i64 8
  %1804 = bitcast i8* %1803 to i64*
  %1805 = load i64, i64* %1804, align 1
  %1806 = xor i64 %1802, %1797
  %1807 = xor i64 %1805, %1800
  %1808 = trunc i64 %1806 to i32
  %1809 = lshr i64 %1806, 32
  %1810 = trunc i64 %1809 to i32
  %1811 = bitcast i8* %1791 to i32*
  store i32 %1808, i32* %1811, align 1
  %1812 = getelementptr inbounds i8, i8* %1791, i64 4
  %1813 = bitcast i8* %1812 to i32*
  store i32 %1810, i32* %1813, align 1
  %1814 = trunc i64 %1807 to i32
  %1815 = getelementptr inbounds i8, i8* %1791, i64 8
  %1816 = bitcast i8* %1815 to i32*
  store i32 %1814, i32* %1816, align 1
  %1817 = lshr i64 %1807, 32
  %1818 = trunc i64 %1817 to i32
  %1819 = getelementptr inbounds i8, i8* %1791, i64 12
  %1820 = bitcast i8* %1819 to i32*
  store i32 %1818, i32* %1820, align 1
  store %struct.Memory* %loadMem_41a4de, %struct.Memory** %MEMORY
  %loadMem_41a4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 33
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %1823 to i64*
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 15
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1828 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1827, i64 0, i64 1
  %YMM1.i382 = bitcast %union.VectorReg* %1828 to %"class.std::bitset"*
  %1829 = bitcast %"class.std::bitset"* %YMM1.i382 to i8*
  %1830 = load i64, i64* %RBP.i381
  %1831 = sub i64 %1830, 68
  %1832 = load i64, i64* %PC.i380
  %1833 = add i64 %1832, 5
  store i64 %1833, i64* %PC.i380
  %1834 = inttoptr i64 %1831 to float*
  %1835 = load float, float* %1834
  %1836 = fpext float %1835 to double
  %1837 = bitcast i8* %1829 to double*
  store double %1836, double* %1837, align 1
  store %struct.Memory* %loadMem_41a4e1, %struct.Memory** %MEMORY
  %loadMem_41a4e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 33
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1840 to i64*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1842 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1841, i64 0, i64 0
  %XMM0.i376 = bitcast %union.VectorReg* %1842 to %union.vec128_t*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1844 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1843, i64 0, i64 1
  %XMM1.i377 = bitcast %union.VectorReg* %1844 to %union.vec128_t*
  %1845 = bitcast %union.vec128_t* %XMM0.i376 to i8*
  %1846 = bitcast %union.vec128_t* %XMM1.i377 to i8*
  %1847 = load i64, i64* %PC.i375
  %1848 = add i64 %1847, 4
  store i64 %1848, i64* %PC.i375
  %1849 = bitcast i8* %1845 to double*
  %1850 = load double, double* %1849, align 1
  %1851 = bitcast i8* %1846 to double*
  %1852 = load double, double* %1851, align 1
  %1853 = fcmp uno double %1850, %1852
  br i1 %1853, label %1854, label %1866

; <label>:1854:                                   ; preds = %block_.L_41a4b9
  %1855 = fadd double %1850, %1852
  %1856 = bitcast double %1855 to i64
  %1857 = and i64 %1856, 9221120237041090560
  %1858 = icmp eq i64 %1857, 9218868437227405312
  %1859 = and i64 %1856, 2251799813685247
  %1860 = icmp ne i64 %1859, 0
  %1861 = and i1 %1858, %1860
  br i1 %1861, label %1862, label %1872

; <label>:1862:                                   ; preds = %1854
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1864 = load i64, i64* %1863, align 8
  %1865 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1864, %struct.Memory* %loadMem_41a4e6)
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:1866:                                   ; preds = %block_.L_41a4b9
  %1867 = fcmp ogt double %1850, %1852
  br i1 %1867, label %1872, label %1868

; <label>:1868:                                   ; preds = %1866
  %1869 = fcmp olt double %1850, %1852
  br i1 %1869, label %1872, label %1870

; <label>:1870:                                   ; preds = %1868
  %1871 = fcmp oeq double %1850, %1852
  br i1 %1871, label %1872, label %1879

; <label>:1872:                                   ; preds = %1870, %1868, %1866, %1854
  %1873 = phi i8 [ 0, %1866 ], [ 0, %1868 ], [ 1, %1870 ], [ 1, %1854 ]
  %1874 = phi i8 [ 0, %1866 ], [ 0, %1868 ], [ 0, %1870 ], [ 1, %1854 ]
  %1875 = phi i8 [ 0, %1866 ], [ 1, %1868 ], [ 0, %1870 ], [ 1, %1854 ]
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1873, i8* %1876, align 1
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1874, i8* %1877, align 1
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1875, i8* %1878, align 1
  br label %1879

; <label>:1879:                                   ; preds = %1872, %1870
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1880, align 1
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1881, align 1
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1882, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %1862, %1879
  %1883 = phi %struct.Memory* [ %1865, %1862 ], [ %loadMem_41a4e6, %1879 ]
  store %struct.Memory* %1883, %struct.Memory** %MEMORY
  %loadMem_41a4ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 33
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %1886 to i64*
  %1887 = load i64, i64* %PC.i374
  %1888 = add i64 %1887, -105
  %1889 = load i64, i64* %PC.i374
  %1890 = add i64 %1889, 6
  %1891 = load i64, i64* %PC.i374
  %1892 = add i64 %1891, 6
  store i64 %1892, i64* %PC.i374
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1894 = load i8, i8* %1893, align 1
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1896 = load i8, i8* %1895, align 1
  %1897 = or i8 %1896, %1894
  %1898 = icmp eq i8 %1897, 0
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %BRANCH_TAKEN, align 1
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1901 = select i1 %1898, i64 %1888, i64 %1890
  store i64 %1901, i64* %1900, align 8
  store %struct.Memory* %loadMem_41a4ea, %struct.Memory** %MEMORY
  %loadBr_41a4ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a4ea = icmp eq i8 %loadBr_41a4ea, 1
  br i1 %cmpBr_41a4ea, label %block_.L_41a481, label %block_41a4f0

block_41a4f0:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_41a4f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 33
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1904 to i64*
  %1905 = load i64, i64* %PC.i373
  %1906 = add i64 %1905, 136
  %1907 = load i64, i64* %PC.i373
  %1908 = add i64 %1907, 5
  store i64 %1908, i64* %PC.i373
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1906, i64* %1909, align 8
  store %struct.Memory* %loadMem_41a4f0, %struct.Memory** %MEMORY
  br label %block_.L_41a578

block_.L_41a4f5:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit447
  %loadMem_41a4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 33
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %1912 to i64*
  %1913 = load i64, i64* %PC.i372
  %1914 = add i64 %1913, 5
  %1915 = load i64, i64* %PC.i372
  %1916 = add i64 %1915, 5
  store i64 %1916, i64* %PC.i372
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1914, i64* %1917, align 8
  store %struct.Memory* %loadMem_41a4f5, %struct.Memory** %MEMORY
  br label %block_.L_41a4fa

block_.L_41a4fa:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit307, %block_.L_41a4f5
  %loadMem_41a4fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 33
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 15
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 17
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %R8.i371 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %RBP.i370
  %1928 = sub i64 %1927, 68
  %1929 = load i64, i64* %PC.i369
  %1930 = add i64 %1929, 4
  store i64 %1930, i64* %PC.i369
  store i64 %1928, i64* %R8.i371, align 8
  store %struct.Memory* %loadMem_41a4fa, %struct.Memory** %MEMORY
  %loadMem_41a4fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 33
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %1933 to i64*
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 15
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 19
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %R9.i368 = bitcast %union.anon* %1939 to i64*
  %1940 = load i64, i64* %RBP.i367
  %1941 = sub i64 %1940, 72
  %1942 = load i64, i64* %PC.i366
  %1943 = add i64 %1942, 4
  store i64 %1943, i64* %PC.i366
  store i64 %1941, i64* %R9.i368, align 8
  store %struct.Memory* %loadMem_41a4fe, %struct.Memory** %MEMORY
  %loadMem_41a502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 33
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %1946 to i64*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1948 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1947, i64 0, i64 0
  %YMM0.i365 = bitcast %union.VectorReg* %1948 to %"class.std::bitset"*
  %1949 = bitcast %"class.std::bitset"* %YMM0.i365 to i8*
  %1950 = load i64, i64* %PC.i364
  %1951 = add i64 %1950, ptrtoint (%G_0x3a366__rip__type* @G_0x3a366__rip_ to i64)
  %1952 = load i64, i64* %PC.i364
  %1953 = add i64 %1952, 8
  store i64 %1953, i64* %PC.i364
  %1954 = inttoptr i64 %1951 to double*
  %1955 = load double, double* %1954
  %1956 = bitcast i8* %1949 to double*
  store double %1955, double* %1956, align 1
  %1957 = getelementptr inbounds i8, i8* %1949, i64 8
  %1958 = bitcast i8* %1957 to double*
  store double 0.000000e+00, double* %1958, align 1
  store %struct.Memory* %loadMem_41a502, %struct.Memory** %MEMORY
  %loadMem_41a50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 33
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %1961 to i64*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 15
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1966 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1965, i64 0, i64 1
  %YMM1.i363 = bitcast %union.VectorReg* %1966 to %"class.std::bitset"*
  %1967 = bitcast %"class.std::bitset"* %YMM1.i363 to i8*
  %1968 = load i64, i64* %RBP.i362
  %1969 = sub i64 %1968, 112
  %1970 = load i64, i64* %PC.i361
  %1971 = add i64 %1970, 5
  store i64 %1971, i64* %PC.i361
  %1972 = inttoptr i64 %1969 to float*
  %1973 = load float, float* %1972
  %1974 = fpext float %1973 to double
  %1975 = bitcast i8* %1967 to double*
  store double %1974, double* %1975, align 1
  store %struct.Memory* %loadMem_41a50a, %struct.Memory** %MEMORY
  %loadMem_41a50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 33
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1980 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1979, i64 0, i64 1
  %YMM1.i359 = bitcast %union.VectorReg* %1980 to %"class.std::bitset"*
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1982 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1981, i64 0, i64 0
  %XMM0.i360 = bitcast %union.VectorReg* %1982 to %union.vec128_t*
  %1983 = bitcast %"class.std::bitset"* %YMM1.i359 to i8*
  %1984 = bitcast %"class.std::bitset"* %YMM1.i359 to i8*
  %1985 = bitcast %union.vec128_t* %XMM0.i360 to i8*
  %1986 = load i64, i64* %PC.i358
  %1987 = add i64 %1986, 4
  store i64 %1987, i64* %PC.i358
  %1988 = bitcast i8* %1984 to double*
  %1989 = load double, double* %1988, align 1
  %1990 = getelementptr inbounds i8, i8* %1984, i64 8
  %1991 = bitcast i8* %1990 to i64*
  %1992 = load i64, i64* %1991, align 1
  %1993 = bitcast i8* %1985 to double*
  %1994 = load double, double* %1993, align 1
  %1995 = fadd double %1989, %1994
  %1996 = bitcast i8* %1983 to double*
  store double %1995, double* %1996, align 1
  %1997 = getelementptr inbounds i8, i8* %1983, i64 8
  %1998 = bitcast i8* %1997 to i64*
  store i64 %1992, i64* %1998, align 1
  store %struct.Memory* %loadMem_41a50f, %struct.Memory** %MEMORY
  %loadMem_41a513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 33
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %2001 to i64*
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2003 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2002, i64 0, i64 0
  %YMM0.i356 = bitcast %union.VectorReg* %2003 to %"class.std::bitset"*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2005 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2004, i64 0, i64 1
  %XMM1.i357 = bitcast %union.VectorReg* %2005 to %union.vec128_t*
  %2006 = bitcast %"class.std::bitset"* %YMM0.i356 to i8*
  %2007 = bitcast %union.vec128_t* %XMM1.i357 to i8*
  %2008 = load i64, i64* %PC.i355
  %2009 = add i64 %2008, 4
  store i64 %2009, i64* %PC.i355
  %2010 = bitcast i8* %2006 to <2 x i32>*
  %2011 = load <2 x i32>, <2 x i32>* %2010, align 1
  %2012 = getelementptr inbounds i8, i8* %2006, i64 8
  %2013 = bitcast i8* %2012 to <2 x i32>*
  %2014 = load <2 x i32>, <2 x i32>* %2013, align 1
  %2015 = bitcast i8* %2007 to double*
  %2016 = load double, double* %2015, align 1
  %2017 = fptrunc double %2016 to float
  %2018 = bitcast i8* %2006 to float*
  store float %2017, float* %2018, align 1
  %2019 = extractelement <2 x i32> %2011, i32 1
  %2020 = getelementptr inbounds i8, i8* %2006, i64 4
  %2021 = bitcast i8* %2020 to i32*
  store i32 %2019, i32* %2021, align 1
  %2022 = extractelement <2 x i32> %2014, i32 0
  %2023 = bitcast i8* %2012 to i32*
  store i32 %2022, i32* %2023, align 1
  %2024 = extractelement <2 x i32> %2014, i32 1
  %2025 = getelementptr inbounds i8, i8* %2006, i64 12
  %2026 = bitcast i8* %2025 to i32*
  store i32 %2024, i32* %2026, align 1
  store %struct.Memory* %loadMem_41a513, %struct.Memory** %MEMORY
  %loadMem_41a517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 33
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %2029 to i64*
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 15
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %2032 to i64*
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2034 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2033, i64 0, i64 0
  %XMM0.i354 = bitcast %union.VectorReg* %2034 to %union.vec128_t*
  %2035 = load i64, i64* %RBP.i353
  %2036 = sub i64 %2035, 112
  %2037 = bitcast %union.vec128_t* %XMM0.i354 to i8*
  %2038 = load i64, i64* %PC.i352
  %2039 = add i64 %2038, 5
  store i64 %2039, i64* %PC.i352
  %2040 = bitcast i8* %2037 to <2 x float>*
  %2041 = load <2 x float>, <2 x float>* %2040, align 1
  %2042 = extractelement <2 x float> %2041, i32 0
  %2043 = inttoptr i64 %2036 to float*
  store float %2042, float* %2043
  store %struct.Memory* %loadMem_41a517, %struct.Memory** %MEMORY
  %loadMem_41a51c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 33
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %2046 to i64*
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 11
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %RDI.i350 = bitcast %union.anon* %2049 to i64*
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2051 = getelementptr inbounds %struct.GPR, %struct.GPR* %2050, i32 0, i32 15
  %2052 = getelementptr inbounds %struct.Reg, %struct.Reg* %2051, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %2052 to i64*
  %2053 = load i64, i64* %RBP.i351
  %2054 = sub i64 %2053, 16
  %2055 = load i64, i64* %PC.i349
  %2056 = add i64 %2055, 4
  store i64 %2056, i64* %PC.i349
  %2057 = inttoptr i64 %2054 to i64*
  %2058 = load i64, i64* %2057
  store i64 %2058, i64* %RDI.i350, align 8
  store %struct.Memory* %loadMem_41a51c, %struct.Memory** %MEMORY
  %loadMem_41a520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 33
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %2061 to i64*
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 9
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %RSI.i347 = bitcast %union.anon* %2064 to i64*
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2066 = getelementptr inbounds %struct.GPR, %struct.GPR* %2065, i32 0, i32 15
  %2067 = getelementptr inbounds %struct.Reg, %struct.Reg* %2066, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %2067 to i64*
  %2068 = load i64, i64* %RBP.i348
  %2069 = sub i64 %2068, 24
  %2070 = load i64, i64* %PC.i346
  %2071 = add i64 %2070, 4
  store i64 %2071, i64* %PC.i346
  %2072 = inttoptr i64 %2069 to i64*
  %2073 = load i64, i64* %2072
  store i64 %2073, i64* %RSI.i347, align 8
  store %struct.Memory* %loadMem_41a520, %struct.Memory** %MEMORY
  %loadMem_41a524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 33
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2076 to i64*
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 7
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %RDX.i344 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 15
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %2082 to i64*
  %2083 = load i64, i64* %RBP.i345
  %2084 = sub i64 %2083, 28
  %2085 = load i64, i64* %PC.i343
  %2086 = add i64 %2085, 3
  store i64 %2086, i64* %PC.i343
  %2087 = inttoptr i64 %2084 to i32*
  %2088 = load i32, i32* %2087
  %2089 = zext i32 %2088 to i64
  store i64 %2089, i64* %RDX.i344, align 8
  store %struct.Memory* %loadMem_41a524, %struct.Memory** %MEMORY
  %loadMem_41a527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 33
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2092 to i64*
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 5
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %2095 to i64*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 15
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %2098 to i64*
  %2099 = load i64, i64* %RBP.i342
  %2100 = sub i64 %2099, 32
  %2101 = load i64, i64* %PC.i340
  %2102 = add i64 %2101, 3
  store i64 %2102, i64* %PC.i340
  %2103 = inttoptr i64 %2100 to i32*
  %2104 = load i32, i32* %2103
  %2105 = zext i32 %2104 to i64
  store i64 %2105, i64* %RCX.i341, align 8
  store %struct.Memory* %loadMem_41a527, %struct.Memory** %MEMORY
  %loadMem_41a52a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 33
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2108 to i64*
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 15
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %2111 to i64*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2113 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2112, i64 0, i64 0
  %YMM0.i339 = bitcast %union.VectorReg* %2113 to %"class.std::bitset"*
  %2114 = bitcast %"class.std::bitset"* %YMM0.i339 to i8*
  %2115 = load i64, i64* %RBP.i338
  %2116 = sub i64 %2115, 36
  %2117 = load i64, i64* %PC.i337
  %2118 = add i64 %2117, 5
  store i64 %2118, i64* %PC.i337
  %2119 = inttoptr i64 %2116 to float*
  %2120 = load float, float* %2119
  %2121 = bitcast i8* %2114 to float*
  store float %2120, float* %2121, align 1
  %2122 = getelementptr inbounds i8, i8* %2114, i64 4
  %2123 = bitcast i8* %2122 to float*
  store float 0.000000e+00, float* %2123, align 1
  %2124 = getelementptr inbounds i8, i8* %2114, i64 8
  %2125 = bitcast i8* %2124 to float*
  store float 0.000000e+00, float* %2125, align 1
  %2126 = getelementptr inbounds i8, i8* %2114, i64 12
  %2127 = bitcast i8* %2126 to float*
  store float 0.000000e+00, float* %2127, align 1
  store %struct.Memory* %loadMem_41a52a, %struct.Memory** %MEMORY
  %loadMem_41a52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 33
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %2130 to i64*
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2132 = getelementptr inbounds %struct.GPR, %struct.GPR* %2131, i32 0, i32 15
  %2133 = getelementptr inbounds %struct.Reg, %struct.Reg* %2132, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %2133 to i64*
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2135 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2134, i64 0, i64 1
  %YMM1.i336 = bitcast %union.VectorReg* %2135 to %"class.std::bitset"*
  %2136 = bitcast %"class.std::bitset"* %YMM1.i336 to i8*
  %2137 = load i64, i64* %RBP.i335
  %2138 = sub i64 %2137, 108
  %2139 = load i64, i64* %PC.i334
  %2140 = add i64 %2139, 5
  store i64 %2140, i64* %PC.i334
  %2141 = inttoptr i64 %2138 to float*
  %2142 = load float, float* %2141
  %2143 = bitcast i8* %2136 to float*
  store float %2142, float* %2143, align 1
  %2144 = getelementptr inbounds i8, i8* %2136, i64 4
  %2145 = bitcast i8* %2144 to float*
  store float 0.000000e+00, float* %2145, align 1
  %2146 = getelementptr inbounds i8, i8* %2136, i64 8
  %2147 = bitcast i8* %2146 to float*
  store float 0.000000e+00, float* %2147, align 1
  %2148 = getelementptr inbounds i8, i8* %2136, i64 12
  %2149 = bitcast i8* %2148 to float*
  store float 0.000000e+00, float* %2149, align 1
  store %struct.Memory* %loadMem_41a52f, %struct.Memory** %MEMORY
  %loadMem1_41a534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 33
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %2152 to i64*
  %2153 = load i64, i64* %PC.i333
  %2154 = add i64 %2153, 2284
  %2155 = load i64, i64* %PC.i333
  %2156 = add i64 %2155, 5
  %2157 = load i64, i64* %PC.i333
  %2158 = add i64 %2157, 5
  store i64 %2158, i64* %PC.i333
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2160 = load i64, i64* %2159, align 8
  %2161 = add i64 %2160, -8
  %2162 = inttoptr i64 %2161 to i64*
  store i64 %2156, i64* %2162
  store i64 %2161, i64* %2159, align 8
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2154, i64* %2163, align 8
  store %struct.Memory* %loadMem1_41a534, %struct.Memory** %MEMORY
  %loadMem2_41a534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a534 = load i64, i64* %3
  %call2_41a534 = call %struct.Memory* @sub_41ae20.Lawless422(%struct.State* %0, i64 %loadPC_41a534, %struct.Memory* %loadMem2_41a534)
  store %struct.Memory* %call2_41a534, %struct.Memory** %MEMORY
  %loadMem_41a539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 33
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2168 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2167, i64 0, i64 0
  %YMM0.i332 = bitcast %union.VectorReg* %2168 to %"class.std::bitset"*
  %2169 = bitcast %"class.std::bitset"* %YMM0.i332 to i8*
  %2170 = load i64, i64* %PC.i331
  %2171 = add i64 %2170, ptrtoint (%G_0x3a327__rip__type* @G_0x3a327__rip_ to i64)
  %2172 = load i64, i64* %PC.i331
  %2173 = add i64 %2172, 8
  store i64 %2173, i64* %PC.i331
  %2174 = inttoptr i64 %2171 to double*
  %2175 = load double, double* %2174
  %2176 = bitcast i8* %2169 to double*
  store double %2175, double* %2176, align 1
  %2177 = getelementptr inbounds i8, i8* %2169, i64 8
  %2178 = bitcast i8* %2177 to double*
  store double 0.000000e+00, double* %2178, align 1
  store %struct.Memory* %loadMem_41a539, %struct.Memory** %MEMORY
  %loadMem_41a541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 33
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %2181 to i64*
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 15
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %2184 to i64*
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2186 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2185, i64 0, i64 1
  %YMM1.i330 = bitcast %union.VectorReg* %2186 to %"class.std::bitset"*
  %2187 = bitcast %"class.std::bitset"* %YMM1.i330 to i8*
  %2188 = load i64, i64* %RBP.i329
  %2189 = sub i64 %2188, 112
  %2190 = load i64, i64* %PC.i328
  %2191 = add i64 %2190, 5
  store i64 %2191, i64* %PC.i328
  %2192 = inttoptr i64 %2189 to float*
  %2193 = load float, float* %2192
  %2194 = fpext float %2193 to double
  %2195 = bitcast i8* %2187 to double*
  store double %2194, double* %2195, align 1
  store %struct.Memory* %loadMem_41a541, %struct.Memory** %MEMORY
  %loadMem_41a546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 33
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %2198 to i64*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2199, i64 0, i64 0
  %XMM0.i323 = bitcast %union.VectorReg* %2200 to %union.vec128_t*
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2202 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2201, i64 0, i64 1
  %XMM1.i324 = bitcast %union.VectorReg* %2202 to %union.vec128_t*
  %2203 = bitcast %union.vec128_t* %XMM1.i324 to i8*
  %2204 = bitcast %union.vec128_t* %XMM0.i323 to i8*
  %2205 = load i64, i64* %PC.i322
  %2206 = add i64 %2205, 4
  store i64 %2206, i64* %PC.i322
  %2207 = bitcast i8* %2203 to double*
  %2208 = load double, double* %2207, align 1
  %2209 = bitcast i8* %2204 to double*
  %2210 = load double, double* %2209, align 1
  %2211 = fcmp uno double %2208, %2210
  br i1 %2211, label %2212, label %2224

; <label>:2212:                                   ; preds = %block_.L_41a4fa
  %2213 = fadd double %2208, %2210
  %2214 = bitcast double %2213 to i64
  %2215 = and i64 %2214, 9221120237041090560
  %2216 = icmp eq i64 %2215, 9218868437227405312
  %2217 = and i64 %2214, 2251799813685247
  %2218 = icmp ne i64 %2217, 0
  %2219 = and i1 %2216, %2218
  br i1 %2219, label %2220, label %2230

; <label>:2220:                                   ; preds = %2212
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2222 = load i64, i64* %2221, align 8
  %2223 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2222, %struct.Memory* %loadMem_41a546)
  br label %routine_ucomisd__xmm0___xmm1.exit325

; <label>:2224:                                   ; preds = %block_.L_41a4fa
  %2225 = fcmp ogt double %2208, %2210
  br i1 %2225, label %2230, label %2226

; <label>:2226:                                   ; preds = %2224
  %2227 = fcmp olt double %2208, %2210
  br i1 %2227, label %2230, label %2228

; <label>:2228:                                   ; preds = %2226
  %2229 = fcmp oeq double %2208, %2210
  br i1 %2229, label %2230, label %2237

; <label>:2230:                                   ; preds = %2228, %2226, %2224, %2212
  %2231 = phi i8 [ 0, %2224 ], [ 0, %2226 ], [ 1, %2228 ], [ 1, %2212 ]
  %2232 = phi i8 [ 0, %2224 ], [ 0, %2226 ], [ 0, %2228 ], [ 1, %2212 ]
  %2233 = phi i8 [ 0, %2224 ], [ 1, %2226 ], [ 0, %2228 ], [ 1, %2212 ]
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2231, i8* %2234, align 1
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2232, i8* %2235, align 1
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2233, i8* %2236, align 1
  br label %2237

; <label>:2237:                                   ; preds = %2230, %2228
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2238, align 1
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2239, align 1
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2240, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit325

routine_ucomisd__xmm0___xmm1.exit325:             ; preds = %2220, %2237
  %2241 = phi %struct.Memory* [ %2223, %2220 ], [ %loadMem_41a546, %2237 ]
  store %struct.Memory* %2241, %struct.Memory** %MEMORY
  %loadMem_41a54a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 33
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %2244 to i64*
  %2245 = load i64, i64* %PC.i321
  %2246 = add i64 %2245, 18
  %2247 = load i64, i64* %PC.i321
  %2248 = add i64 %2247, 6
  %2249 = load i64, i64* %PC.i321
  %2250 = add i64 %2249, 6
  store i64 %2250, i64* %PC.i321
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2252 = load i8, i8* %2251, align 1
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2254 = load i8, i8* %2253, align 1
  %2255 = or i8 %2254, %2252
  %2256 = icmp ne i8 %2255, 0
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %BRANCH_TAKEN, align 1
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2259 = select i1 %2256, i64 %2246, i64 %2248
  store i64 %2259, i64* %2258, align 8
  store %struct.Memory* %loadMem_41a54a, %struct.Memory** %MEMORY
  %loadBr_41a54a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a54a = icmp eq i8 %loadBr_41a54a, 1
  br i1 %cmpBr_41a54a, label %block_.L_41a55c, label %block_41a550

block_41a550:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit325
  %loadMem_41a550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 33
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 15
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %2265 to i64*
  %2266 = load i64, i64* %RBP.i320
  %2267 = sub i64 %2266, 4
  %2268 = load i64, i64* %PC.i319
  %2269 = add i64 %2268, 7
  store i64 %2269, i64* %PC.i319
  %2270 = inttoptr i64 %2267 to i32*
  store i32 0, i32* %2270
  store %struct.Memory* %loadMem_41a550, %struct.Memory** %MEMORY
  %loadMem_41a557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 33
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %2273 to i64*
  %2274 = load i64, i64* %PC.i318
  %2275 = add i64 %2274, 591
  %2276 = load i64, i64* %PC.i318
  %2277 = add i64 %2276, 5
  store i64 %2277, i64* %PC.i318
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2275, i64* %2278, align 8
  store %struct.Memory* %loadMem_41a557, %struct.Memory** %MEMORY
  br label %block_.L_41a7a6

block_.L_41a55c:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit325
  %loadMem_41a55c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 33
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %2281 to i64*
  %2282 = load i64, i64* %PC.i317
  %2283 = add i64 %2282, 5
  %2284 = load i64, i64* %PC.i317
  %2285 = add i64 %2284, 5
  store i64 %2285, i64* %PC.i317
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2283, i64* %2286, align 8
  store %struct.Memory* %loadMem_41a55c, %struct.Memory** %MEMORY
  br label %block_.L_41a561

block_.L_41a561:                                  ; preds = %block_.L_41a55c
  %loadMem_41a561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 33
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %2289 to i64*
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2290, i64 0, i64 0
  %YMM0.i315 = bitcast %union.VectorReg* %2291 to %"class.std::bitset"*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2292, i64 0, i64 0
  %XMM0.i316 = bitcast %union.VectorReg* %2293 to %union.vec128_t*
  %2294 = bitcast %"class.std::bitset"* %YMM0.i315 to i8*
  %2295 = bitcast %"class.std::bitset"* %YMM0.i315 to i8*
  %2296 = bitcast %union.vec128_t* %XMM0.i316 to i8*
  %2297 = load i64, i64* %PC.i314
  %2298 = add i64 %2297, 3
  store i64 %2298, i64* %PC.i314
  %2299 = bitcast i8* %2295 to i64*
  %2300 = load i64, i64* %2299, align 1
  %2301 = getelementptr inbounds i8, i8* %2295, i64 8
  %2302 = bitcast i8* %2301 to i64*
  %2303 = load i64, i64* %2302, align 1
  %2304 = bitcast i8* %2296 to i64*
  %2305 = load i64, i64* %2304, align 1
  %2306 = getelementptr inbounds i8, i8* %2296, i64 8
  %2307 = bitcast i8* %2306 to i64*
  %2308 = load i64, i64* %2307, align 1
  %2309 = xor i64 %2305, %2300
  %2310 = xor i64 %2308, %2303
  %2311 = trunc i64 %2309 to i32
  %2312 = lshr i64 %2309, 32
  %2313 = trunc i64 %2312 to i32
  %2314 = bitcast i8* %2294 to i32*
  store i32 %2311, i32* %2314, align 1
  %2315 = getelementptr inbounds i8, i8* %2294, i64 4
  %2316 = bitcast i8* %2315 to i32*
  store i32 %2313, i32* %2316, align 1
  %2317 = trunc i64 %2310 to i32
  %2318 = getelementptr inbounds i8, i8* %2294, i64 8
  %2319 = bitcast i8* %2318 to i32*
  store i32 %2317, i32* %2319, align 1
  %2320 = lshr i64 %2310, 32
  %2321 = trunc i64 %2320 to i32
  %2322 = getelementptr inbounds i8, i8* %2294, i64 12
  %2323 = bitcast i8* %2322 to i32*
  store i32 %2321, i32* %2323, align 1
  store %struct.Memory* %loadMem_41a561, %struct.Memory** %MEMORY
  %loadMem_41a564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 33
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2326 to i64*
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 15
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2331 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2330, i64 0, i64 1
  %YMM1.i313 = bitcast %union.VectorReg* %2331 to %"class.std::bitset"*
  %2332 = bitcast %"class.std::bitset"* %YMM1.i313 to i8*
  %2333 = load i64, i64* %RBP.i312
  %2334 = sub i64 %2333, 68
  %2335 = load i64, i64* %PC.i311
  %2336 = add i64 %2335, 5
  store i64 %2336, i64* %PC.i311
  %2337 = inttoptr i64 %2334 to float*
  %2338 = load float, float* %2337
  %2339 = fpext float %2338 to double
  %2340 = bitcast i8* %2332 to double*
  store double %2339, double* %2340, align 1
  store %struct.Memory* %loadMem_41a564, %struct.Memory** %MEMORY
  %loadMem_41a569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 33
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %2343 to i64*
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2345 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2344, i64 0, i64 0
  %XMM0.i305 = bitcast %union.VectorReg* %2345 to %union.vec128_t*
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2347 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2346, i64 0, i64 1
  %XMM1.i306 = bitcast %union.VectorReg* %2347 to %union.vec128_t*
  %2348 = bitcast %union.vec128_t* %XMM1.i306 to i8*
  %2349 = bitcast %union.vec128_t* %XMM0.i305 to i8*
  %2350 = load i64, i64* %PC.i304
  %2351 = add i64 %2350, 4
  store i64 %2351, i64* %PC.i304
  %2352 = bitcast i8* %2348 to double*
  %2353 = load double, double* %2352, align 1
  %2354 = bitcast i8* %2349 to double*
  %2355 = load double, double* %2354, align 1
  %2356 = fcmp uno double %2353, %2355
  br i1 %2356, label %2357, label %2369

; <label>:2357:                                   ; preds = %block_.L_41a561
  %2358 = fadd double %2353, %2355
  %2359 = bitcast double %2358 to i64
  %2360 = and i64 %2359, 9221120237041090560
  %2361 = icmp eq i64 %2360, 9218868437227405312
  %2362 = and i64 %2359, 2251799813685247
  %2363 = icmp ne i64 %2362, 0
  %2364 = and i1 %2361, %2363
  br i1 %2364, label %2365, label %2375

; <label>:2365:                                   ; preds = %2357
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2367 = load i64, i64* %2366, align 8
  %2368 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2367, %struct.Memory* %loadMem_41a569)
  br label %routine_ucomisd__xmm0___xmm1.exit307

; <label>:2369:                                   ; preds = %block_.L_41a561
  %2370 = fcmp ogt double %2353, %2355
  br i1 %2370, label %2375, label %2371

; <label>:2371:                                   ; preds = %2369
  %2372 = fcmp olt double %2353, %2355
  br i1 %2372, label %2375, label %2373

; <label>:2373:                                   ; preds = %2371
  %2374 = fcmp oeq double %2353, %2355
  br i1 %2374, label %2375, label %2382

; <label>:2375:                                   ; preds = %2373, %2371, %2369, %2357
  %2376 = phi i8 [ 0, %2369 ], [ 0, %2371 ], [ 1, %2373 ], [ 1, %2357 ]
  %2377 = phi i8 [ 0, %2369 ], [ 0, %2371 ], [ 0, %2373 ], [ 1, %2357 ]
  %2378 = phi i8 [ 0, %2369 ], [ 1, %2371 ], [ 0, %2373 ], [ 1, %2357 ]
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2376, i8* %2379, align 1
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2377, i8* %2380, align 1
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2378, i8* %2381, align 1
  br label %2382

; <label>:2382:                                   ; preds = %2375, %2373
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2383, align 1
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2384, align 1
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2385, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit307

routine_ucomisd__xmm0___xmm1.exit307:             ; preds = %2365, %2382
  %2386 = phi %struct.Memory* [ %2368, %2365 ], [ %loadMem_41a569, %2382 ]
  store %struct.Memory* %2386, %struct.Memory** %MEMORY
  %loadMem_41a56d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 33
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %2389 to i64*
  %2390 = load i64, i64* %PC.i303
  %2391 = add i64 %2390, -115
  %2392 = load i64, i64* %PC.i303
  %2393 = add i64 %2392, 6
  %2394 = load i64, i64* %PC.i303
  %2395 = add i64 %2394, 6
  store i64 %2395, i64* %PC.i303
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2397 = load i8, i8* %2396, align 1
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2399 = load i8, i8* %2398, align 1
  %2400 = or i8 %2399, %2397
  %2401 = icmp eq i8 %2400, 0
  %2402 = zext i1 %2401 to i8
  store i8 %2402, i8* %BRANCH_TAKEN, align 1
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2404 = select i1 %2401, i64 %2391, i64 %2393
  store i64 %2404, i64* %2403, align 8
  store %struct.Memory* %loadMem_41a56d, %struct.Memory** %MEMORY
  %loadBr_41a56d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a56d = icmp eq i8 %loadBr_41a56d, 1
  br i1 %cmpBr_41a56d, label %block_.L_41a4fa, label %block_41a573

block_41a573:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit307
  %loadMem_41a573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 33
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2407 to i64*
  %2408 = load i64, i64* %PC.i302
  %2409 = add i64 %2408, 5
  %2410 = load i64, i64* %PC.i302
  %2411 = add i64 %2410, 5
  store i64 %2411, i64* %PC.i302
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2409, i64* %2412, align 8
  store %struct.Memory* %loadMem_41a573, %struct.Memory** %MEMORY
  br label %block_.L_41a578

block_.L_41a578:                                  ; preds = %block_41a573, %block_41a4f0
  %loadMem_41a578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 33
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %2415 to i64*
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 15
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %2418 to i64*
  %2419 = load i64, i64* %RBP.i301
  %2420 = sub i64 %2419, 104
  %2421 = load i64, i64* %PC.i300
  %2422 = add i64 %2421, 7
  store i64 %2422, i64* %PC.i300
  %2423 = inttoptr i64 %2420 to i32*
  store i32 0, i32* %2423
  store %struct.Memory* %loadMem_41a578, %struct.Memory** %MEMORY
  br label %block_.L_41a57f

block_.L_41a57f:                                  ; preds = %block_.L_41a625, %block_.L_41a578
  %loadMem_41a57f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2425 = getelementptr inbounds %struct.GPR, %struct.GPR* %2424, i32 0, i32 33
  %2426 = getelementptr inbounds %struct.Reg, %struct.Reg* %2425, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %2426 to i64*
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 15
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %2429 to i64*
  %2430 = load i64, i64* %RBP.i299
  %2431 = sub i64 %2430, 104
  %2432 = load i64, i64* %PC.i298
  %2433 = add i64 %2432, 4
  store i64 %2433, i64* %PC.i298
  %2434 = inttoptr i64 %2431 to i32*
  %2435 = load i32, i32* %2434
  %2436 = sub i32 %2435, 100
  %2437 = icmp ult i32 %2435, 100
  %2438 = zext i1 %2437 to i8
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2438, i8* %2439, align 1
  %2440 = and i32 %2436, 255
  %2441 = call i32 @llvm.ctpop.i32(i32 %2440)
  %2442 = trunc i32 %2441 to i8
  %2443 = and i8 %2442, 1
  %2444 = xor i8 %2443, 1
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2444, i8* %2445, align 1
  %2446 = xor i32 %2435, 100
  %2447 = xor i32 %2446, %2436
  %2448 = lshr i32 %2447, 4
  %2449 = trunc i32 %2448 to i8
  %2450 = and i8 %2449, 1
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2450, i8* %2451, align 1
  %2452 = icmp eq i32 %2436, 0
  %2453 = zext i1 %2452 to i8
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2453, i8* %2454, align 1
  %2455 = lshr i32 %2436, 31
  %2456 = trunc i32 %2455 to i8
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2456, i8* %2457, align 1
  %2458 = lshr i32 %2435, 31
  %2459 = xor i32 %2455, %2458
  %2460 = add i32 %2459, %2458
  %2461 = icmp eq i32 %2460, 2
  %2462 = zext i1 %2461 to i8
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2462, i8* %2463, align 1
  store %struct.Memory* %loadMem_41a57f, %struct.Memory** %MEMORY
  %loadMem_41a583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 33
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %2466 to i64*
  %2467 = load i64, i64* %PC.i297
  %2468 = add i64 %2467, 176
  %2469 = load i64, i64* %PC.i297
  %2470 = add i64 %2469, 6
  %2471 = load i64, i64* %PC.i297
  %2472 = add i64 %2471, 6
  store i64 %2472, i64* %PC.i297
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2474 = load i8, i8* %2473, align 1
  %2475 = icmp ne i8 %2474, 0
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2477 = load i8, i8* %2476, align 1
  %2478 = icmp ne i8 %2477, 0
  %2479 = xor i1 %2475, %2478
  %2480 = xor i1 %2479, true
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %BRANCH_TAKEN, align 1
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2483 = select i1 %2479, i64 %2470, i64 %2468
  store i64 %2483, i64* %2482, align 8
  store %struct.Memory* %loadMem_41a583, %struct.Memory** %MEMORY
  %loadBr_41a583 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a583 = icmp eq i8 %loadBr_41a583, 1
  br i1 %cmpBr_41a583, label %block_.L_41a633, label %block_41a589

block_41a589:                                     ; preds = %block_.L_41a57f
  %loadMem_41a589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 33
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 15
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 17
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %R8.i = bitcast %union.anon* %2492 to i64*
  %2493 = load i64, i64* %RBP.i296
  %2494 = sub i64 %2493, 68
  %2495 = load i64, i64* %PC.i295
  %2496 = add i64 %2495, 4
  store i64 %2496, i64* %PC.i295
  store i64 %2494, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_41a589, %struct.Memory** %MEMORY
  %loadMem_41a58d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 33
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %2499 to i64*
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 15
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %2502 to i64*
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 19
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %R9.i = bitcast %union.anon* %2505 to i64*
  %2506 = load i64, i64* %RBP.i294
  %2507 = sub i64 %2506, 72
  %2508 = load i64, i64* %PC.i293
  %2509 = add i64 %2508, 4
  store i64 %2509, i64* %PC.i293
  store i64 %2507, i64* %R9.i, align 8
  store %struct.Memory* %loadMem_41a58d, %struct.Memory** %MEMORY
  %loadMem_41a591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 33
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2512 to i64*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2514 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2513, i64 0, i64 0
  %YMM0.i292 = bitcast %union.VectorReg* %2514 to %"class.std::bitset"*
  %2515 = bitcast %"class.std::bitset"* %YMM0.i292 to i8*
  %2516 = load i64, i64* %PC.i291
  %2517 = add i64 %2516, ptrtoint (%G_0x3a24f__rip__type* @G_0x3a24f__rip_ to i64)
  %2518 = load i64, i64* %PC.i291
  %2519 = add i64 %2518, 8
  store i64 %2519, i64* %PC.i291
  %2520 = inttoptr i64 %2517 to double*
  %2521 = load double, double* %2520
  %2522 = bitcast i8* %2515 to double*
  store double %2521, double* %2522, align 1
  %2523 = getelementptr inbounds i8, i8* %2515, i64 8
  %2524 = bitcast i8* %2523 to double*
  store double 0.000000e+00, double* %2524, align 1
  store %struct.Memory* %loadMem_41a591, %struct.Memory** %MEMORY
  %loadMem_41a599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 33
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %2527 to i64*
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 15
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %2530 to i64*
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2532 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2531, i64 0, i64 1
  %YMM1.i290 = bitcast %union.VectorReg* %2532 to %"class.std::bitset"*
  %2533 = bitcast %"class.std::bitset"* %YMM1.i290 to i8*
  %2534 = load i64, i64* %RBP.i289
  %2535 = sub i64 %2534, 108
  %2536 = load i64, i64* %PC.i288
  %2537 = add i64 %2536, 5
  store i64 %2537, i64* %PC.i288
  %2538 = inttoptr i64 %2535 to float*
  %2539 = load float, float* %2538
  %2540 = bitcast i8* %2533 to float*
  store float %2539, float* %2540, align 1
  %2541 = getelementptr inbounds i8, i8* %2533, i64 4
  %2542 = bitcast i8* %2541 to float*
  store float 0.000000e+00, float* %2542, align 1
  %2543 = getelementptr inbounds i8, i8* %2533, i64 8
  %2544 = bitcast i8* %2543 to float*
  store float 0.000000e+00, float* %2544, align 1
  %2545 = getelementptr inbounds i8, i8* %2533, i64 12
  %2546 = bitcast i8* %2545 to float*
  store float 0.000000e+00, float* %2546, align 1
  store %struct.Memory* %loadMem_41a599, %struct.Memory** %MEMORY
  %loadMem_41a59e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2548 = getelementptr inbounds %struct.GPR, %struct.GPR* %2547, i32 0, i32 33
  %2549 = getelementptr inbounds %struct.Reg, %struct.Reg* %2548, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %2549 to i64*
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2551 = getelementptr inbounds %struct.GPR, %struct.GPR* %2550, i32 0, i32 15
  %2552 = getelementptr inbounds %struct.Reg, %struct.Reg* %2551, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %2552 to i64*
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2554 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2553, i64 0, i64 1
  %YMM1.i287 = bitcast %union.VectorReg* %2554 to %"class.std::bitset"*
  %2555 = bitcast %"class.std::bitset"* %YMM1.i287 to i8*
  %2556 = bitcast %"class.std::bitset"* %YMM1.i287 to i8*
  %2557 = load i64, i64* %RBP.i286
  %2558 = sub i64 %2557, 112
  %2559 = load i64, i64* %PC.i285
  %2560 = add i64 %2559, 5
  store i64 %2560, i64* %PC.i285
  %2561 = bitcast i8* %2556 to <2 x float>*
  %2562 = load <2 x float>, <2 x float>* %2561, align 1
  %2563 = getelementptr inbounds i8, i8* %2556, i64 8
  %2564 = bitcast i8* %2563 to <2 x i32>*
  %2565 = load <2 x i32>, <2 x i32>* %2564, align 1
  %2566 = inttoptr i64 %2558 to float*
  %2567 = load float, float* %2566
  %2568 = extractelement <2 x float> %2562, i32 0
  %2569 = fadd float %2568, %2567
  %2570 = bitcast i8* %2555 to float*
  store float %2569, float* %2570, align 1
  %2571 = bitcast <2 x float> %2562 to <2 x i32>
  %2572 = extractelement <2 x i32> %2571, i32 1
  %2573 = getelementptr inbounds i8, i8* %2555, i64 4
  %2574 = bitcast i8* %2573 to i32*
  store i32 %2572, i32* %2574, align 1
  %2575 = extractelement <2 x i32> %2565, i32 0
  %2576 = getelementptr inbounds i8, i8* %2555, i64 8
  %2577 = bitcast i8* %2576 to i32*
  store i32 %2575, i32* %2577, align 1
  %2578 = extractelement <2 x i32> %2565, i32 1
  %2579 = getelementptr inbounds i8, i8* %2555, i64 12
  %2580 = bitcast i8* %2579 to i32*
  store i32 %2578, i32* %2580, align 1
  store %struct.Memory* %loadMem_41a59e, %struct.Memory** %MEMORY
  %loadMem_41a5a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2582 = getelementptr inbounds %struct.GPR, %struct.GPR* %2581, i32 0, i32 33
  %2583 = getelementptr inbounds %struct.Reg, %struct.Reg* %2582, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %2583 to i64*
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2585 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2584, i64 0, i64 1
  %YMM1.i283 = bitcast %union.VectorReg* %2585 to %"class.std::bitset"*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2587 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2586, i64 0, i64 1
  %XMM1.i284 = bitcast %union.VectorReg* %2587 to %union.vec128_t*
  %2588 = bitcast %"class.std::bitset"* %YMM1.i283 to i8*
  %2589 = bitcast %union.vec128_t* %XMM1.i284 to i8*
  %2590 = load i64, i64* %PC.i282
  %2591 = add i64 %2590, 4
  store i64 %2591, i64* %PC.i282
  %2592 = bitcast i8* %2589 to <2 x float>*
  %2593 = load <2 x float>, <2 x float>* %2592, align 1
  %2594 = extractelement <2 x float> %2593, i32 0
  %2595 = fpext float %2594 to double
  %2596 = bitcast i8* %2588 to double*
  store double %2595, double* %2596, align 1
  store %struct.Memory* %loadMem_41a5a3, %struct.Memory** %MEMORY
  %loadMem_41a5a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 33
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %2599 to i64*
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2601 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2600, i64 0, i64 1
  %YMM1.i280 = bitcast %union.VectorReg* %2601 to %"class.std::bitset"*
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2603 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2602, i64 0, i64 0
  %XMM0.i281 = bitcast %union.VectorReg* %2603 to %union.vec128_t*
  %2604 = bitcast %"class.std::bitset"* %YMM1.i280 to i8*
  %2605 = bitcast %"class.std::bitset"* %YMM1.i280 to i8*
  %2606 = bitcast %union.vec128_t* %XMM0.i281 to i8*
  %2607 = load i64, i64* %PC.i279
  %2608 = add i64 %2607, 4
  store i64 %2608, i64* %PC.i279
  %2609 = bitcast i8* %2605 to double*
  %2610 = load double, double* %2609, align 1
  %2611 = getelementptr inbounds i8, i8* %2605, i64 8
  %2612 = bitcast i8* %2611 to i64*
  %2613 = load i64, i64* %2612, align 1
  %2614 = bitcast i8* %2606 to double*
  %2615 = load double, double* %2614, align 1
  %2616 = fdiv double %2610, %2615
  %2617 = bitcast i8* %2604 to double*
  store double %2616, double* %2617, align 1
  %2618 = getelementptr inbounds i8, i8* %2604, i64 8
  %2619 = bitcast i8* %2618 to i64*
  store i64 %2613, i64* %2619, align 1
  store %struct.Memory* %loadMem_41a5a7, %struct.Memory** %MEMORY
  %loadMem_41a5ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2621 = getelementptr inbounds %struct.GPR, %struct.GPR* %2620, i32 0, i32 33
  %2622 = getelementptr inbounds %struct.Reg, %struct.Reg* %2621, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %2622 to i64*
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2624 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2623, i64 0, i64 0
  %YMM0.i277 = bitcast %union.VectorReg* %2624 to %"class.std::bitset"*
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2626 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2625, i64 0, i64 1
  %XMM1.i278 = bitcast %union.VectorReg* %2626 to %union.vec128_t*
  %2627 = bitcast %"class.std::bitset"* %YMM0.i277 to i8*
  %2628 = bitcast %union.vec128_t* %XMM1.i278 to i8*
  %2629 = load i64, i64* %PC.i276
  %2630 = add i64 %2629, 4
  store i64 %2630, i64* %PC.i276
  %2631 = bitcast i8* %2627 to <2 x i32>*
  %2632 = load <2 x i32>, <2 x i32>* %2631, align 1
  %2633 = getelementptr inbounds i8, i8* %2627, i64 8
  %2634 = bitcast i8* %2633 to <2 x i32>*
  %2635 = load <2 x i32>, <2 x i32>* %2634, align 1
  %2636 = bitcast i8* %2628 to double*
  %2637 = load double, double* %2636, align 1
  %2638 = fptrunc double %2637 to float
  %2639 = bitcast i8* %2627 to float*
  store float %2638, float* %2639, align 1
  %2640 = extractelement <2 x i32> %2632, i32 1
  %2641 = getelementptr inbounds i8, i8* %2627, i64 4
  %2642 = bitcast i8* %2641 to i32*
  store i32 %2640, i32* %2642, align 1
  %2643 = extractelement <2 x i32> %2635, i32 0
  %2644 = bitcast i8* %2633 to i32*
  store i32 %2643, i32* %2644, align 1
  %2645 = extractelement <2 x i32> %2635, i32 1
  %2646 = getelementptr inbounds i8, i8* %2627, i64 12
  %2647 = bitcast i8* %2646 to i32*
  store i32 %2645, i32* %2647, align 1
  store %struct.Memory* %loadMem_41a5ab, %struct.Memory** %MEMORY
  %loadMem_41a5af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 15
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2655 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2654, i64 0, i64 0
  %XMM0.i275 = bitcast %union.VectorReg* %2655 to %union.vec128_t*
  %2656 = load i64, i64* %RBP.i274
  %2657 = sub i64 %2656, 116
  %2658 = bitcast %union.vec128_t* %XMM0.i275 to i8*
  %2659 = load i64, i64* %PC.i273
  %2660 = add i64 %2659, 5
  store i64 %2660, i64* %PC.i273
  %2661 = bitcast i8* %2658 to <2 x float>*
  %2662 = load <2 x float>, <2 x float>* %2661, align 1
  %2663 = extractelement <2 x float> %2662, i32 0
  %2664 = inttoptr i64 %2657 to float*
  store float %2663, float* %2664
  store %struct.Memory* %loadMem_41a5af, %struct.Memory** %MEMORY
  %loadMem_41a5b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 33
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %2667 to i64*
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 11
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %RDI.i271 = bitcast %union.anon* %2670 to i64*
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 15
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %2673 to i64*
  %2674 = load i64, i64* %RBP.i272
  %2675 = sub i64 %2674, 16
  %2676 = load i64, i64* %PC.i270
  %2677 = add i64 %2676, 4
  store i64 %2677, i64* %PC.i270
  %2678 = inttoptr i64 %2675 to i64*
  %2679 = load i64, i64* %2678
  store i64 %2679, i64* %RDI.i271, align 8
  store %struct.Memory* %loadMem_41a5b4, %struct.Memory** %MEMORY
  %loadMem_41a5b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 33
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 9
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2685 to i64*
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 15
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %2688 to i64*
  %2689 = load i64, i64* %RBP.i269
  %2690 = sub i64 %2689, 24
  %2691 = load i64, i64* %PC.i268
  %2692 = add i64 %2691, 4
  store i64 %2692, i64* %PC.i268
  %2693 = inttoptr i64 %2690 to i64*
  %2694 = load i64, i64* %2693
  store i64 %2694, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_41a5b8, %struct.Memory** %MEMORY
  %loadMem_41a5bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 33
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2697 to i64*
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 7
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 15
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %2703 to i64*
  %2704 = load i64, i64* %RBP.i267
  %2705 = sub i64 %2704, 28
  %2706 = load i64, i64* %PC.i266
  %2707 = add i64 %2706, 3
  store i64 %2707, i64* %PC.i266
  %2708 = inttoptr i64 %2705 to i32*
  %2709 = load i32, i32* %2708
  %2710 = zext i32 %2709 to i64
  store i64 %2710, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_41a5bc, %struct.Memory** %MEMORY
  %loadMem_41a5bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 33
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2713 to i64*
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 5
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 15
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %2719 to i64*
  %2720 = load i64, i64* %RBP.i265
  %2721 = sub i64 %2720, 32
  %2722 = load i64, i64* %PC.i263
  %2723 = add i64 %2722, 3
  store i64 %2723, i64* %PC.i263
  %2724 = inttoptr i64 %2721 to i32*
  %2725 = load i32, i32* %2724
  %2726 = zext i32 %2725 to i64
  store i64 %2726, i64* %RCX.i264, align 8
  store %struct.Memory* %loadMem_41a5bf, %struct.Memory** %MEMORY
  %loadMem_41a5c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 33
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %2729 to i64*
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 15
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %2732 to i64*
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2734 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2733, i64 0, i64 0
  %YMM0.i262 = bitcast %union.VectorReg* %2734 to %"class.std::bitset"*
  %2735 = bitcast %"class.std::bitset"* %YMM0.i262 to i8*
  %2736 = load i64, i64* %RBP.i261
  %2737 = sub i64 %2736, 36
  %2738 = load i64, i64* %PC.i260
  %2739 = add i64 %2738, 5
  store i64 %2739, i64* %PC.i260
  %2740 = inttoptr i64 %2737 to float*
  %2741 = load float, float* %2740
  %2742 = bitcast i8* %2735 to float*
  store float %2741, float* %2742, align 1
  %2743 = getelementptr inbounds i8, i8* %2735, i64 4
  %2744 = bitcast i8* %2743 to float*
  store float 0.000000e+00, float* %2744, align 1
  %2745 = getelementptr inbounds i8, i8* %2735, i64 8
  %2746 = bitcast i8* %2745 to float*
  store float 0.000000e+00, float* %2746, align 1
  %2747 = getelementptr inbounds i8, i8* %2735, i64 12
  %2748 = bitcast i8* %2747 to float*
  store float 0.000000e+00, float* %2748, align 1
  store %struct.Memory* %loadMem_41a5c2, %struct.Memory** %MEMORY
  %loadMem_41a5c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 33
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 15
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %2754 to i64*
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2756 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2755, i64 0, i64 1
  %YMM1.i259 = bitcast %union.VectorReg* %2756 to %"class.std::bitset"*
  %2757 = bitcast %"class.std::bitset"* %YMM1.i259 to i8*
  %2758 = load i64, i64* %RBP.i258
  %2759 = sub i64 %2758, 108
  %2760 = load i64, i64* %PC.i257
  %2761 = add i64 %2760, 5
  store i64 %2761, i64* %PC.i257
  %2762 = inttoptr i64 %2759 to float*
  %2763 = load float, float* %2762
  %2764 = bitcast i8* %2757 to float*
  store float %2763, float* %2764, align 1
  %2765 = getelementptr inbounds i8, i8* %2757, i64 4
  %2766 = bitcast i8* %2765 to float*
  store float 0.000000e+00, float* %2766, align 1
  %2767 = getelementptr inbounds i8, i8* %2757, i64 8
  %2768 = bitcast i8* %2767 to float*
  store float 0.000000e+00, float* %2768, align 1
  %2769 = getelementptr inbounds i8, i8* %2757, i64 12
  %2770 = bitcast i8* %2769 to float*
  store float 0.000000e+00, float* %2770, align 1
  store %struct.Memory* %loadMem_41a5c7, %struct.Memory** %MEMORY
  %loadMem1_41a5cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 33
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2773 to i64*
  %2774 = load i64, i64* %PC.i256
  %2775 = add i64 %2774, 2132
  %2776 = load i64, i64* %PC.i256
  %2777 = add i64 %2776, 5
  %2778 = load i64, i64* %PC.i256
  %2779 = add i64 %2778, 5
  store i64 %2779, i64* %PC.i256
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2781 = load i64, i64* %2780, align 8
  %2782 = add i64 %2781, -8
  %2783 = inttoptr i64 %2782 to i64*
  store i64 %2777, i64* %2783
  store i64 %2782, i64* %2780, align 8
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2775, i64* %2784, align 8
  store %struct.Memory* %loadMem1_41a5cc, %struct.Memory** %MEMORY
  %loadMem2_41a5cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a5cc = load i64, i64* %3
  %call2_41a5cc = call %struct.Memory* @sub_41ae20.Lawless422(%struct.State* %0, i64 %loadPC_41a5cc, %struct.Memory* %loadMem2_41a5cc)
  store %struct.Memory* %call2_41a5cc, %struct.Memory** %MEMORY
  %loadMem_41a5d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 33
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2787 to i64*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 15
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %2790 to i64*
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2792 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2791, i64 0, i64 0
  %YMM0.i255 = bitcast %union.VectorReg* %2792 to %"class.std::bitset"*
  %2793 = bitcast %"class.std::bitset"* %YMM0.i255 to i8*
  %2794 = load i64, i64* %RBP.i254
  %2795 = sub i64 %2794, 68
  %2796 = load i64, i64* %PC.i253
  %2797 = add i64 %2796, 5
  store i64 %2797, i64* %PC.i253
  %2798 = inttoptr i64 %2795 to float*
  %2799 = load float, float* %2798
  %2800 = fpext float %2799 to double
  %2801 = bitcast i8* %2793 to double*
  store double %2800, double* %2801, align 1
  store %struct.Memory* %loadMem_41a5d1, %struct.Memory** %MEMORY
  %loadMem_41a5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2803 = getelementptr inbounds %struct.GPR, %struct.GPR* %2802, i32 0, i32 33
  %2804 = getelementptr inbounds %struct.Reg, %struct.Reg* %2803, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %2804 to i64*
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2806 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2805, i64 0, i64 1
  %YMM1.i252 = bitcast %union.VectorReg* %2806 to %"class.std::bitset"*
  %2807 = bitcast %"class.std::bitset"* %YMM1.i252 to i8*
  %2808 = load i64, i64* %PC.i251
  %2809 = add i64 %2808, ptrtoint (%G_0x3b333__rip__type* @G_0x3b333__rip_ to i64)
  %2810 = load i64, i64* %PC.i251
  %2811 = add i64 %2810, 7
  store i64 %2811, i64* %PC.i251
  %2812 = inttoptr i64 %2809 to float*
  %2813 = load float, float* %2812
  %2814 = add i64 %2809, 4
  %2815 = inttoptr i64 %2814 to float*
  %2816 = load float, float* %2815
  %2817 = add i64 %2809, 8
  %2818 = inttoptr i64 %2817 to float*
  %2819 = load float, float* %2818
  %2820 = add i64 %2809, 12
  %2821 = inttoptr i64 %2820 to float*
  %2822 = load float, float* %2821
  %2823 = bitcast i8* %2807 to float*
  store float %2813, float* %2823, align 1
  %2824 = getelementptr inbounds i8, i8* %2807, i64 4
  %2825 = bitcast i8* %2824 to float*
  store float %2816, float* %2825, align 1
  %2826 = getelementptr inbounds i8, i8* %2807, i64 8
  %2827 = bitcast i8* %2826 to float*
  store float %2819, float* %2827, align 1
  %2828 = getelementptr inbounds i8, i8* %2807, i64 12
  %2829 = bitcast i8* %2828 to float*
  store float %2822, float* %2829, align 1
  store %struct.Memory* %loadMem_41a5d6, %struct.Memory** %MEMORY
  %loadMem_41a5dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 33
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %2832 to i64*
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2834 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2833, i64 0, i64 0
  %YMM0.i249 = bitcast %union.VectorReg* %2834 to %"class.std::bitset"*
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2836 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2835, i64 0, i64 1
  %XMM1.i250 = bitcast %union.VectorReg* %2836 to %union.vec128_t*
  %2837 = bitcast %"class.std::bitset"* %YMM0.i249 to i8*
  %2838 = bitcast %"class.std::bitset"* %YMM0.i249 to i8*
  %2839 = bitcast %union.vec128_t* %XMM1.i250 to i8*
  %2840 = load i64, i64* %PC.i248
  %2841 = add i64 %2840, 4
  store i64 %2841, i64* %PC.i248
  %2842 = bitcast i8* %2838 to i64*
  %2843 = load i64, i64* %2842, align 1
  %2844 = getelementptr inbounds i8, i8* %2838, i64 8
  %2845 = bitcast i8* %2844 to i64*
  %2846 = load i64, i64* %2845, align 1
  %2847 = bitcast i8* %2839 to i64*
  %2848 = load i64, i64* %2847, align 1
  %2849 = getelementptr inbounds i8, i8* %2839, i64 8
  %2850 = bitcast i8* %2849 to i64*
  %2851 = load i64, i64* %2850, align 1
  %2852 = and i64 %2848, %2843
  %2853 = and i64 %2851, %2846
  %2854 = trunc i64 %2852 to i32
  %2855 = lshr i64 %2852, 32
  %2856 = trunc i64 %2855 to i32
  %2857 = bitcast i8* %2837 to i32*
  store i32 %2854, i32* %2857, align 1
  %2858 = getelementptr inbounds i8, i8* %2837, i64 4
  %2859 = bitcast i8* %2858 to i32*
  store i32 %2856, i32* %2859, align 1
  %2860 = trunc i64 %2853 to i32
  %2861 = getelementptr inbounds i8, i8* %2837, i64 8
  %2862 = bitcast i8* %2861 to i32*
  store i32 %2860, i32* %2862, align 1
  %2863 = lshr i64 %2853, 32
  %2864 = trunc i64 %2863 to i32
  %2865 = getelementptr inbounds i8, i8* %2837, i64 12
  %2866 = bitcast i8* %2865 to i32*
  store i32 %2864, i32* %2866, align 1
  store %struct.Memory* %loadMem_41a5dd, %struct.Memory** %MEMORY
  %loadMem_41a5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 33
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %2869 to i64*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 15
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %2872 to i64*
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2874 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2873, i64 0, i64 1
  %YMM1.i247 = bitcast %union.VectorReg* %2874 to %"class.std::bitset"*
  %2875 = bitcast %"class.std::bitset"* %YMM1.i247 to i8*
  %2876 = load i64, i64* %RBP.i246
  %2877 = sub i64 %2876, 100
  %2878 = load i64, i64* %PC.i245
  %2879 = add i64 %2878, 5
  store i64 %2879, i64* %PC.i245
  %2880 = inttoptr i64 %2877 to float*
  %2881 = load float, float* %2880
  %2882 = fpext float %2881 to double
  %2883 = bitcast i8* %2875 to double*
  store double %2882, double* %2883, align 1
  store %struct.Memory* %loadMem_41a5e1, %struct.Memory** %MEMORY
  %loadMem_41a5e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 33
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %2886 to i64*
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2888 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2887, i64 0, i64 0
  %XMM0.i240 = bitcast %union.VectorReg* %2888 to %union.vec128_t*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2890 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2889, i64 0, i64 1
  %XMM1.i241 = bitcast %union.VectorReg* %2890 to %union.vec128_t*
  %2891 = bitcast %union.vec128_t* %XMM1.i241 to i8*
  %2892 = bitcast %union.vec128_t* %XMM0.i240 to i8*
  %2893 = load i64, i64* %PC.i239
  %2894 = add i64 %2893, 4
  store i64 %2894, i64* %PC.i239
  %2895 = bitcast i8* %2891 to double*
  %2896 = load double, double* %2895, align 1
  %2897 = bitcast i8* %2892 to double*
  %2898 = load double, double* %2897, align 1
  %2899 = fcmp uno double %2896, %2898
  br i1 %2899, label %2900, label %2912

; <label>:2900:                                   ; preds = %block_41a589
  %2901 = fadd double %2896, %2898
  %2902 = bitcast double %2901 to i64
  %2903 = and i64 %2902, 9221120237041090560
  %2904 = icmp eq i64 %2903, 9218868437227405312
  %2905 = and i64 %2902, 2251799813685247
  %2906 = icmp ne i64 %2905, 0
  %2907 = and i1 %2904, %2906
  br i1 %2907, label %2908, label %2918

; <label>:2908:                                   ; preds = %2900
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2910 = load i64, i64* %2909, align 8
  %2911 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2910, %struct.Memory* %loadMem_41a5e6)
  br label %routine_ucomisd__xmm0___xmm1.exit242

; <label>:2912:                                   ; preds = %block_41a589
  %2913 = fcmp ogt double %2896, %2898
  br i1 %2913, label %2918, label %2914

; <label>:2914:                                   ; preds = %2912
  %2915 = fcmp olt double %2896, %2898
  br i1 %2915, label %2918, label %2916

; <label>:2916:                                   ; preds = %2914
  %2917 = fcmp oeq double %2896, %2898
  br i1 %2917, label %2918, label %2925

; <label>:2918:                                   ; preds = %2916, %2914, %2912, %2900
  %2919 = phi i8 [ 0, %2912 ], [ 0, %2914 ], [ 1, %2916 ], [ 1, %2900 ]
  %2920 = phi i8 [ 0, %2912 ], [ 0, %2914 ], [ 0, %2916 ], [ 1, %2900 ]
  %2921 = phi i8 [ 0, %2912 ], [ 1, %2914 ], [ 0, %2916 ], [ 1, %2900 ]
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2919, i8* %2922, align 1
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2920, i8* %2923, align 1
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2921, i8* %2924, align 1
  br label %2925

; <label>:2925:                                   ; preds = %2918, %2916
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2926, align 1
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2927, align 1
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2928, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit242

routine_ucomisd__xmm0___xmm1.exit242:             ; preds = %2908, %2925
  %2929 = phi %struct.Memory* [ %2911, %2908 ], [ %loadMem_41a5e6, %2925 ]
  store %struct.Memory* %2929, %struct.Memory** %MEMORY
  %loadMem_41a5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 33
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %2932 to i64*
  %2933 = load i64, i64* %PC.i238
  %2934 = add i64 %2933, 11
  %2935 = load i64, i64* %PC.i238
  %2936 = add i64 %2935, 6
  %2937 = load i64, i64* %PC.i238
  %2938 = add i64 %2937, 6
  store i64 %2938, i64* %PC.i238
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2940 = load i8, i8* %2939, align 1
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2942 = load i8, i8* %2941, align 1
  %2943 = or i8 %2942, %2940
  %2944 = icmp ne i8 %2943, 0
  %2945 = zext i1 %2944 to i8
  store i8 %2945, i8* %BRANCH_TAKEN, align 1
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2947 = select i1 %2944, i64 %2934, i64 %2936
  store i64 %2947, i64* %2946, align 8
  store %struct.Memory* %loadMem_41a5ea, %struct.Memory** %MEMORY
  %loadBr_41a5ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a5ea = icmp eq i8 %loadBr_41a5ea, 1
  br i1 %cmpBr_41a5ea, label %block_.L_41a5f5, label %block_41a5f0

block_41a5f0:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit242
  %loadMem_41a5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 33
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %2950 to i64*
  %2951 = load i64, i64* %PC.i237
  %2952 = add i64 %2951, 67
  %2953 = load i64, i64* %PC.i237
  %2954 = add i64 %2953, 5
  store i64 %2954, i64* %PC.i237
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2952, i64* %2955, align 8
  store %struct.Memory* %loadMem_41a5f0, %struct.Memory** %MEMORY
  br label %block_.L_41a633

block_.L_41a5f5:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit242
  %loadMem_41a5f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 33
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %2958 to i64*
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2960 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2959, i64 0, i64 0
  %YMM0.i235 = bitcast %union.VectorReg* %2960 to %"class.std::bitset"*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2962 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2961, i64 0, i64 0
  %XMM0.i236 = bitcast %union.VectorReg* %2962 to %union.vec128_t*
  %2963 = bitcast %"class.std::bitset"* %YMM0.i235 to i8*
  %2964 = bitcast %"class.std::bitset"* %YMM0.i235 to i8*
  %2965 = bitcast %union.vec128_t* %XMM0.i236 to i8*
  %2966 = load i64, i64* %PC.i234
  %2967 = add i64 %2966, 3
  store i64 %2967, i64* %PC.i234
  %2968 = bitcast i8* %2964 to i64*
  %2969 = load i64, i64* %2968, align 1
  %2970 = getelementptr inbounds i8, i8* %2964, i64 8
  %2971 = bitcast i8* %2970 to i64*
  %2972 = load i64, i64* %2971, align 1
  %2973 = bitcast i8* %2965 to i64*
  %2974 = load i64, i64* %2973, align 1
  %2975 = getelementptr inbounds i8, i8* %2965, i64 8
  %2976 = bitcast i8* %2975 to i64*
  %2977 = load i64, i64* %2976, align 1
  %2978 = xor i64 %2974, %2969
  %2979 = xor i64 %2977, %2972
  %2980 = trunc i64 %2978 to i32
  %2981 = lshr i64 %2978, 32
  %2982 = trunc i64 %2981 to i32
  %2983 = bitcast i8* %2963 to i32*
  store i32 %2980, i32* %2983, align 1
  %2984 = getelementptr inbounds i8, i8* %2963, i64 4
  %2985 = bitcast i8* %2984 to i32*
  store i32 %2982, i32* %2985, align 1
  %2986 = trunc i64 %2979 to i32
  %2987 = getelementptr inbounds i8, i8* %2963, i64 8
  %2988 = bitcast i8* %2987 to i32*
  store i32 %2986, i32* %2988, align 1
  %2989 = lshr i64 %2979, 32
  %2990 = trunc i64 %2989 to i32
  %2991 = getelementptr inbounds i8, i8* %2963, i64 12
  %2992 = bitcast i8* %2991 to i32*
  store i32 %2990, i32* %2992, align 1
  store %struct.Memory* %loadMem_41a5f5, %struct.Memory** %MEMORY
  %loadMem_41a5f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 33
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %2995 to i64*
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 15
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %2998 to i64*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3000 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2999, i64 0, i64 1
  %YMM1.i233 = bitcast %union.VectorReg* %3000 to %"class.std::bitset"*
  %3001 = bitcast %"class.std::bitset"* %YMM1.i233 to i8*
  %3002 = load i64, i64* %RBP.i232
  %3003 = sub i64 %3002, 68
  %3004 = load i64, i64* %PC.i231
  %3005 = add i64 %3004, 5
  store i64 %3005, i64* %PC.i231
  %3006 = inttoptr i64 %3003 to float*
  %3007 = load float, float* %3006
  %3008 = fpext float %3007 to double
  %3009 = bitcast i8* %3001 to double*
  store double %3008, double* %3009, align 1
  store %struct.Memory* %loadMem_41a5f8, %struct.Memory** %MEMORY
  %loadMem_41a5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 33
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3012 to i64*
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3014 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3013, i64 0, i64 0
  %XMM0.i227 = bitcast %union.VectorReg* %3014 to %union.vec128_t*
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3016 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3015, i64 0, i64 1
  %XMM1.i228 = bitcast %union.VectorReg* %3016 to %union.vec128_t*
  %3017 = bitcast %union.vec128_t* %XMM1.i228 to i8*
  %3018 = bitcast %union.vec128_t* %XMM0.i227 to i8*
  %3019 = load i64, i64* %PC.i226
  %3020 = add i64 %3019, 4
  store i64 %3020, i64* %PC.i226
  %3021 = bitcast i8* %3017 to double*
  %3022 = load double, double* %3021, align 1
  %3023 = bitcast i8* %3018 to double*
  %3024 = load double, double* %3023, align 1
  %3025 = fcmp uno double %3022, %3024
  br i1 %3025, label %3026, label %3038

; <label>:3026:                                   ; preds = %block_.L_41a5f5
  %3027 = fadd double %3022, %3024
  %3028 = bitcast double %3027 to i64
  %3029 = and i64 %3028, 9221120237041090560
  %3030 = icmp eq i64 %3029, 9218868437227405312
  %3031 = and i64 %3028, 2251799813685247
  %3032 = icmp ne i64 %3031, 0
  %3033 = and i1 %3030, %3032
  br i1 %3033, label %3034, label %3044

; <label>:3034:                                   ; preds = %3026
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3036 = load i64, i64* %3035, align 8
  %3037 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3036, %struct.Memory* %loadMem_41a5fd)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:3038:                                   ; preds = %block_.L_41a5f5
  %3039 = fcmp ogt double %3022, %3024
  br i1 %3039, label %3044, label %3040

; <label>:3040:                                   ; preds = %3038
  %3041 = fcmp olt double %3022, %3024
  br i1 %3041, label %3044, label %3042

; <label>:3042:                                   ; preds = %3040
  %3043 = fcmp oeq double %3022, %3024
  br i1 %3043, label %3044, label %3051

; <label>:3044:                                   ; preds = %3042, %3040, %3038, %3026
  %3045 = phi i8 [ 0, %3038 ], [ 0, %3040 ], [ 1, %3042 ], [ 1, %3026 ]
  %3046 = phi i8 [ 0, %3038 ], [ 0, %3040 ], [ 0, %3042 ], [ 1, %3026 ]
  %3047 = phi i8 [ 0, %3038 ], [ 1, %3040 ], [ 0, %3042 ], [ 1, %3026 ]
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3045, i8* %3048, align 1
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3046, i8* %3049, align 1
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3047, i8* %3050, align 1
  br label %3051

; <label>:3051:                                   ; preds = %3044, %3042
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3052, align 1
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3053, align 1
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3054, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %3034, %3051
  %3055 = phi %struct.Memory* [ %3037, %3034 ], [ %loadMem_41a5fd, %3051 ]
  store %struct.Memory* %3055, %struct.Memory** %MEMORY
  %loadMem_41a601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3057 = getelementptr inbounds %struct.GPR, %struct.GPR* %3056, i32 0, i32 33
  %3058 = getelementptr inbounds %struct.Reg, %struct.Reg* %3057, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %3058 to i64*
  %3059 = load i64, i64* %PC.i225
  %3060 = add i64 %3059, 21
  %3061 = load i64, i64* %PC.i225
  %3062 = add i64 %3061, 6
  %3063 = load i64, i64* %PC.i225
  %3064 = add i64 %3063, 6
  store i64 %3064, i64* %PC.i225
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3066 = load i8, i8* %3065, align 1
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3068 = load i8, i8* %3067, align 1
  %3069 = or i8 %3068, %3066
  %3070 = icmp ne i8 %3069, 0
  %3071 = zext i1 %3070 to i8
  store i8 %3071, i8* %BRANCH_TAKEN, align 1
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3073 = select i1 %3070, i64 %3060, i64 %3062
  store i64 %3073, i64* %3072, align 8
  store %struct.Memory* %loadMem_41a601, %struct.Memory** %MEMORY
  %loadBr_41a601 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a601 = icmp eq i8 %loadBr_41a601, 1
  br i1 %cmpBr_41a601, label %block_.L_41a616, label %block_41a607

block_41a607:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_41a607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 33
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %3076 to i64*
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 15
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3081 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3080, i64 0, i64 0
  %YMM0.i224 = bitcast %union.VectorReg* %3081 to %"class.std::bitset"*
  %3082 = bitcast %"class.std::bitset"* %YMM0.i224 to i8*
  %3083 = load i64, i64* %RBP.i223
  %3084 = sub i64 %3083, 116
  %3085 = load i64, i64* %PC.i222
  %3086 = add i64 %3085, 5
  store i64 %3086, i64* %PC.i222
  %3087 = inttoptr i64 %3084 to float*
  %3088 = load float, float* %3087
  %3089 = bitcast i8* %3082 to float*
  store float %3088, float* %3089, align 1
  %3090 = getelementptr inbounds i8, i8* %3082, i64 4
  %3091 = bitcast i8* %3090 to float*
  store float 0.000000e+00, float* %3091, align 1
  %3092 = getelementptr inbounds i8, i8* %3082, i64 8
  %3093 = bitcast i8* %3092 to float*
  store float 0.000000e+00, float* %3093, align 1
  %3094 = getelementptr inbounds i8, i8* %3082, i64 12
  %3095 = bitcast i8* %3094 to float*
  store float 0.000000e+00, float* %3095, align 1
  store %struct.Memory* %loadMem_41a607, %struct.Memory** %MEMORY
  %loadMem_41a60c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 33
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3098 to i64*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 15
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3103 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3102, i64 0, i64 0
  %XMM0.i221 = bitcast %union.VectorReg* %3103 to %union.vec128_t*
  %3104 = load i64, i64* %RBP.i220
  %3105 = sub i64 %3104, 108
  %3106 = bitcast %union.vec128_t* %XMM0.i221 to i8*
  %3107 = load i64, i64* %PC.i219
  %3108 = add i64 %3107, 5
  store i64 %3108, i64* %PC.i219
  %3109 = bitcast i8* %3106 to <2 x float>*
  %3110 = load <2 x float>, <2 x float>* %3109, align 1
  %3111 = extractelement <2 x float> %3110, i32 0
  %3112 = inttoptr i64 %3105 to float*
  store float %3111, float* %3112
  store %struct.Memory* %loadMem_41a60c, %struct.Memory** %MEMORY
  %loadMem_41a611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 33
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3115 to i64*
  %3116 = load i64, i64* %PC.i218
  %3117 = add i64 %3116, 15
  %3118 = load i64, i64* %PC.i218
  %3119 = add i64 %3118, 5
  store i64 %3119, i64* %PC.i218
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3117, i64* %3120, align 8
  store %struct.Memory* %loadMem_41a611, %struct.Memory** %MEMORY
  br label %block_.L_41a620

block_.L_41a616:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_41a616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 33
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %3123 to i64*
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 15
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %3126 to i64*
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3128 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3127, i64 0, i64 0
  %YMM0.i217 = bitcast %union.VectorReg* %3128 to %"class.std::bitset"*
  %3129 = bitcast %"class.std::bitset"* %YMM0.i217 to i8*
  %3130 = load i64, i64* %RBP.i216
  %3131 = sub i64 %3130, 116
  %3132 = load i64, i64* %PC.i215
  %3133 = add i64 %3132, 5
  store i64 %3133, i64* %PC.i215
  %3134 = inttoptr i64 %3131 to float*
  %3135 = load float, float* %3134
  %3136 = bitcast i8* %3129 to float*
  store float %3135, float* %3136, align 1
  %3137 = getelementptr inbounds i8, i8* %3129, i64 4
  %3138 = bitcast i8* %3137 to float*
  store float 0.000000e+00, float* %3138, align 1
  %3139 = getelementptr inbounds i8, i8* %3129, i64 8
  %3140 = bitcast i8* %3139 to float*
  store float 0.000000e+00, float* %3140, align 1
  %3141 = getelementptr inbounds i8, i8* %3129, i64 12
  %3142 = bitcast i8* %3141 to float*
  store float 0.000000e+00, float* %3142, align 1
  store %struct.Memory* %loadMem_41a616, %struct.Memory** %MEMORY
  %loadMem_41a61b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 33
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %3145 to i64*
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 15
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %3148 to i64*
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3150 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3149, i64 0, i64 0
  %XMM0.i214 = bitcast %union.VectorReg* %3150 to %union.vec128_t*
  %3151 = load i64, i64* %RBP.i213
  %3152 = sub i64 %3151, 112
  %3153 = bitcast %union.vec128_t* %XMM0.i214 to i8*
  %3154 = load i64, i64* %PC.i212
  %3155 = add i64 %3154, 5
  store i64 %3155, i64* %PC.i212
  %3156 = bitcast i8* %3153 to <2 x float>*
  %3157 = load <2 x float>, <2 x float>* %3156, align 1
  %3158 = extractelement <2 x float> %3157, i32 0
  %3159 = inttoptr i64 %3152 to float*
  store float %3158, float* %3159
  store %struct.Memory* %loadMem_41a61b, %struct.Memory** %MEMORY
  br label %block_.L_41a620

block_.L_41a620:                                  ; preds = %block_.L_41a616, %block_41a607
  %loadMem_41a620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 33
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %3162 to i64*
  %3163 = load i64, i64* %PC.i211
  %3164 = add i64 %3163, 5
  %3165 = load i64, i64* %PC.i211
  %3166 = add i64 %3165, 5
  store i64 %3166, i64* %PC.i211
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3164, i64* %3167, align 8
  store %struct.Memory* %loadMem_41a620, %struct.Memory** %MEMORY
  br label %block_.L_41a625

block_.L_41a625:                                  ; preds = %block_.L_41a620
  %loadMem_41a625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 33
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3170 to i64*
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 1
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %3173 to i64*
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 15
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %3176 to i64*
  %3177 = load i64, i64* %RBP.i210
  %3178 = sub i64 %3177, 104
  %3179 = load i64, i64* %PC.i208
  %3180 = add i64 %3179, 3
  store i64 %3180, i64* %PC.i208
  %3181 = inttoptr i64 %3178 to i32*
  %3182 = load i32, i32* %3181
  %3183 = zext i32 %3182 to i64
  store i64 %3183, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_41a625, %struct.Memory** %MEMORY
  %loadMem_41a628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 33
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %3186 to i64*
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 1
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %3189 to i64*
  %3190 = load i64, i64* %RAX.i207
  %3191 = load i64, i64* %PC.i206
  %3192 = add i64 %3191, 3
  store i64 %3192, i64* %PC.i206
  %3193 = trunc i64 %3190 to i32
  %3194 = add i32 1, %3193
  %3195 = zext i32 %3194 to i64
  store i64 %3195, i64* %RAX.i207, align 8
  %3196 = icmp ult i32 %3194, %3193
  %3197 = icmp ult i32 %3194, 1
  %3198 = or i1 %3196, %3197
  %3199 = zext i1 %3198 to i8
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3199, i8* %3200, align 1
  %3201 = and i32 %3194, 255
  %3202 = call i32 @llvm.ctpop.i32(i32 %3201)
  %3203 = trunc i32 %3202 to i8
  %3204 = and i8 %3203, 1
  %3205 = xor i8 %3204, 1
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3205, i8* %3206, align 1
  %3207 = xor i64 1, %3190
  %3208 = trunc i64 %3207 to i32
  %3209 = xor i32 %3208, %3194
  %3210 = lshr i32 %3209, 4
  %3211 = trunc i32 %3210 to i8
  %3212 = and i8 %3211, 1
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3212, i8* %3213, align 1
  %3214 = icmp eq i32 %3194, 0
  %3215 = zext i1 %3214 to i8
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3215, i8* %3216, align 1
  %3217 = lshr i32 %3194, 31
  %3218 = trunc i32 %3217 to i8
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3218, i8* %3219, align 1
  %3220 = lshr i32 %3193, 31
  %3221 = xor i32 %3217, %3220
  %3222 = add i32 %3221, %3217
  %3223 = icmp eq i32 %3222, 2
  %3224 = zext i1 %3223 to i8
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3224, i8* %3225, align 1
  store %struct.Memory* %loadMem_41a628, %struct.Memory** %MEMORY
  %loadMem_41a62b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 33
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3228 to i64*
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 1
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %EAX.i204 = bitcast %union.anon* %3231 to i32*
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 15
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %3234 to i64*
  %3235 = load i64, i64* %RBP.i205
  %3236 = sub i64 %3235, 104
  %3237 = load i32, i32* %EAX.i204
  %3238 = zext i32 %3237 to i64
  %3239 = load i64, i64* %PC.i203
  %3240 = add i64 %3239, 3
  store i64 %3240, i64* %PC.i203
  %3241 = inttoptr i64 %3236 to i32*
  store i32 %3237, i32* %3241
  store %struct.Memory* %loadMem_41a62b, %struct.Memory** %MEMORY
  %loadMem_41a62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 33
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %3244 to i64*
  %3245 = load i64, i64* %PC.i202
  %3246 = add i64 %3245, -175
  %3247 = load i64, i64* %PC.i202
  %3248 = add i64 %3247, 5
  store i64 %3248, i64* %PC.i202
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3246, i64* %3249, align 8
  store %struct.Memory* %loadMem_41a62e, %struct.Memory** %MEMORY
  br label %block_.L_41a57f

block_.L_41a633:                                  ; preds = %block_41a5f0, %block_.L_41a57f
  %loadMem_41a633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 33
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3252 to i64*
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3254 = getelementptr inbounds %struct.GPR, %struct.GPR* %3253, i32 0, i32 15
  %3255 = getelementptr inbounds %struct.Reg, %struct.Reg* %3254, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %3255 to i64*
  %3256 = load i64, i64* %RBP.i201
  %3257 = sub i64 %3256, 104
  %3258 = load i64, i64* %PC.i200
  %3259 = add i64 %3258, 4
  store i64 %3259, i64* %PC.i200
  %3260 = inttoptr i64 %3257 to i32*
  %3261 = load i32, i32* %3260
  %3262 = sub i32 %3261, 100
  %3263 = icmp ult i32 %3261, 100
  %3264 = zext i1 %3263 to i8
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3264, i8* %3265, align 1
  %3266 = and i32 %3262, 255
  %3267 = call i32 @llvm.ctpop.i32(i32 %3266)
  %3268 = trunc i32 %3267 to i8
  %3269 = and i8 %3268, 1
  %3270 = xor i8 %3269, 1
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3270, i8* %3271, align 1
  %3272 = xor i32 %3261, 100
  %3273 = xor i32 %3272, %3262
  %3274 = lshr i32 %3273, 4
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3276, i8* %3277, align 1
  %3278 = icmp eq i32 %3262, 0
  %3279 = zext i1 %3278 to i8
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3279, i8* %3280, align 1
  %3281 = lshr i32 %3262, 31
  %3282 = trunc i32 %3281 to i8
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3282, i8* %3283, align 1
  %3284 = lshr i32 %3261, 31
  %3285 = xor i32 %3281, %3284
  %3286 = add i32 %3285, %3284
  %3287 = icmp eq i32 %3286, 2
  %3288 = zext i1 %3287 to i8
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3288, i8* %3289, align 1
  store %struct.Memory* %loadMem_41a633, %struct.Memory** %MEMORY
  %loadMem_41a637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3291 = getelementptr inbounds %struct.GPR, %struct.GPR* %3290, i32 0, i32 33
  %3292 = getelementptr inbounds %struct.Reg, %struct.Reg* %3291, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %3292 to i64*
  %3293 = load i64, i64* %PC.i199
  %3294 = add i64 %3293, 18
  %3295 = load i64, i64* %PC.i199
  %3296 = add i64 %3295, 6
  %3297 = load i64, i64* %PC.i199
  %3298 = add i64 %3297, 6
  store i64 %3298, i64* %PC.i199
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3300 = load i8, i8* %3299, align 1
  %3301 = icmp eq i8 %3300, 0
  %3302 = zext i1 %3301 to i8
  store i8 %3302, i8* %BRANCH_TAKEN, align 1
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3304 = select i1 %3301, i64 %3294, i64 %3296
  store i64 %3304, i64* %3303, align 8
  store %struct.Memory* %loadMem_41a637, %struct.Memory** %MEMORY
  %loadBr_41a637 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a637 = icmp eq i8 %loadBr_41a637, 1
  br i1 %cmpBr_41a637, label %block_.L_41a649, label %block_41a63d

block_41a63d:                                     ; preds = %block_.L_41a633
  %loadMem_41a63d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %3307 to i64*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 15
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %3310 to i64*
  %3311 = load i64, i64* %RBP.i198
  %3312 = sub i64 %3311, 4
  %3313 = load i64, i64* %PC.i197
  %3314 = add i64 %3313, 7
  store i64 %3314, i64* %PC.i197
  %3315 = inttoptr i64 %3312 to i32*
  store i32 0, i32* %3315
  store %struct.Memory* %loadMem_41a63d, %struct.Memory** %MEMORY
  %loadMem_41a644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 33
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %3318 to i64*
  %3319 = load i64, i64* %PC.i196
  %3320 = add i64 %3319, 354
  %3321 = load i64, i64* %PC.i196
  %3322 = add i64 %3321, 5
  store i64 %3322, i64* %PC.i196
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3320, i64* %3323, align 8
  store %struct.Memory* %loadMem_41a644, %struct.Memory** %MEMORY
  br label %block_.L_41a7a6

block_.L_41a649:                                  ; preds = %block_.L_41a633
  %loadMem_41a649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 33
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 15
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %3329 to i64*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3331 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3330, i64 0, i64 0
  %YMM0.i195 = bitcast %union.VectorReg* %3331 to %"class.std::bitset"*
  %3332 = bitcast %"class.std::bitset"* %YMM0.i195 to i8*
  %3333 = load i64, i64* %RBP.i194
  %3334 = sub i64 %3333, 116
  %3335 = load i64, i64* %PC.i193
  %3336 = add i64 %3335, 5
  store i64 %3336, i64* %PC.i193
  %3337 = inttoptr i64 %3334 to float*
  %3338 = load float, float* %3337
  %3339 = bitcast i8* %3332 to float*
  store float %3338, float* %3339, align 1
  %3340 = getelementptr inbounds i8, i8* %3332, i64 4
  %3341 = bitcast i8* %3340 to float*
  store float 0.000000e+00, float* %3341, align 1
  %3342 = getelementptr inbounds i8, i8* %3332, i64 8
  %3343 = bitcast i8* %3342 to float*
  store float 0.000000e+00, float* %3343, align 1
  %3344 = getelementptr inbounds i8, i8* %3332, i64 12
  %3345 = bitcast i8* %3344 to float*
  store float 0.000000e+00, float* %3345, align 1
  store %struct.Memory* %loadMem_41a649, %struct.Memory** %MEMORY
  %loadMem_41a64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3347 = getelementptr inbounds %struct.GPR, %struct.GPR* %3346, i32 0, i32 33
  %3348 = getelementptr inbounds %struct.Reg, %struct.Reg* %3347, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3348 to i64*
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3350 = getelementptr inbounds %struct.GPR, %struct.GPR* %3349, i32 0, i32 15
  %3351 = getelementptr inbounds %struct.Reg, %struct.Reg* %3350, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %3351 to i64*
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3353 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3352, i64 0, i64 0
  %XMM0.i192 = bitcast %union.VectorReg* %3353 to %union.vec128_t*
  %3354 = load i64, i64* %RBP.i191
  %3355 = sub i64 %3354, 60
  %3356 = bitcast %union.vec128_t* %XMM0.i192 to i8*
  %3357 = load i64, i64* %PC.i190
  %3358 = add i64 %3357, 5
  store i64 %3358, i64* %PC.i190
  %3359 = bitcast i8* %3356 to <2 x float>*
  %3360 = load <2 x float>, <2 x float>* %3359, align 1
  %3361 = extractelement <2 x float> %3360, i32 0
  %3362 = inttoptr i64 %3355 to float*
  store float %3361, float* %3362
  store %struct.Memory* %loadMem_41a64e, %struct.Memory** %MEMORY
  br label %block_.L_41a653

block_.L_41a653:                                  ; preds = %block_.L_41a649, %block_.L_41a424
  %loadMem_41a653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 33
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3365 to i64*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3367 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3366, i64 0, i64 0
  %YMM0.i188 = bitcast %union.VectorReg* %3367 to %"class.std::bitset"*
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3369 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3368, i64 0, i64 0
  %XMM0.i189 = bitcast %union.VectorReg* %3369 to %union.vec128_t*
  %3370 = bitcast %"class.std::bitset"* %YMM0.i188 to i8*
  %3371 = bitcast %"class.std::bitset"* %YMM0.i188 to i8*
  %3372 = bitcast %union.vec128_t* %XMM0.i189 to i8*
  %3373 = load i64, i64* %PC.i187
  %3374 = add i64 %3373, 3
  store i64 %3374, i64* %PC.i187
  %3375 = bitcast i8* %3371 to i64*
  %3376 = load i64, i64* %3375, align 1
  %3377 = getelementptr inbounds i8, i8* %3371, i64 8
  %3378 = bitcast i8* %3377 to i64*
  %3379 = load i64, i64* %3378, align 1
  %3380 = bitcast i8* %3372 to i64*
  %3381 = load i64, i64* %3380, align 1
  %3382 = getelementptr inbounds i8, i8* %3372, i64 8
  %3383 = bitcast i8* %3382 to i64*
  %3384 = load i64, i64* %3383, align 1
  %3385 = xor i64 %3381, %3376
  %3386 = xor i64 %3384, %3379
  %3387 = trunc i64 %3385 to i32
  %3388 = lshr i64 %3385, 32
  %3389 = trunc i64 %3388 to i32
  %3390 = bitcast i8* %3370 to i32*
  store i32 %3387, i32* %3390, align 1
  %3391 = getelementptr inbounds i8, i8* %3370, i64 4
  %3392 = bitcast i8* %3391 to i32*
  store i32 %3389, i32* %3392, align 1
  %3393 = trunc i64 %3386 to i32
  %3394 = getelementptr inbounds i8, i8* %3370, i64 8
  %3395 = bitcast i8* %3394 to i32*
  store i32 %3393, i32* %3395, align 1
  %3396 = lshr i64 %3386, 32
  %3397 = trunc i64 %3396 to i32
  %3398 = getelementptr inbounds i8, i8* %3370, i64 12
  %3399 = bitcast i8* %3398 to i32*
  store i32 %3397, i32* %3399, align 1
  store %struct.Memory* %loadMem_41a653, %struct.Memory** %MEMORY
  %loadMem_41a656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 33
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3402 to i64*
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 15
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %3405 to i64*
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3407 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3406, i64 0, i64 0
  %XMM0.i186 = bitcast %union.VectorReg* %3407 to %union.vec128_t*
  %3408 = load i64, i64* %RBP.i185
  %3409 = sub i64 %3408, 96
  %3410 = bitcast %union.vec128_t* %XMM0.i186 to i8*
  %3411 = load i64, i64* %PC.i184
  %3412 = add i64 %3411, 5
  store i64 %3412, i64* %PC.i184
  %3413 = bitcast i8* %3410 to double*
  %3414 = load double, double* %3413, align 1
  %3415 = inttoptr i64 %3409 to double*
  store double %3414, double* %3415
  store %struct.Memory* %loadMem_41a656, %struct.Memory** %MEMORY
  %loadMem_41a65b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3417 = getelementptr inbounds %struct.GPR, %struct.GPR* %3416, i32 0, i32 33
  %3418 = getelementptr inbounds %struct.Reg, %struct.Reg* %3417, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %3418 to i64*
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 15
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %3421 to i64*
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3423 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3422, i64 0, i64 0
  %XMM0.i183 = bitcast %union.VectorReg* %3423 to %union.vec128_t*
  %3424 = load i64, i64* %RBP.i182
  %3425 = sub i64 %3424, 80
  %3426 = bitcast %union.vec128_t* %XMM0.i183 to i8*
  %3427 = load i64, i64* %PC.i181
  %3428 = add i64 %3427, 5
  store i64 %3428, i64* %PC.i181
  %3429 = bitcast i8* %3426 to double*
  %3430 = load double, double* %3429, align 1
  %3431 = inttoptr i64 %3425 to double*
  store double %3430, double* %3431
  store %struct.Memory* %loadMem_41a65b, %struct.Memory** %MEMORY
  %loadMem_41a660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 33
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3434 to i64*
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 15
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %3437 to i64*
  %3438 = load i64, i64* %RBP.i180
  %3439 = sub i64 %3438, 104
  %3440 = load i64, i64* %PC.i179
  %3441 = add i64 %3440, 7
  store i64 %3441, i64* %PC.i179
  %3442 = inttoptr i64 %3439 to i32*
  store i32 0, i32* %3442
  store %struct.Memory* %loadMem_41a660, %struct.Memory** %MEMORY
  br label %block_.L_41a667

block_.L_41a667:                                  ; preds = %block_.L_41a6a2, %block_.L_41a653
  %loadMem_41a667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 33
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %3445 to i64*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 1
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %3448 to i64*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 15
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %3451 to i64*
  %3452 = load i64, i64* %RBP.i178
  %3453 = sub i64 %3452, 104
  %3454 = load i64, i64* %PC.i176
  %3455 = add i64 %3454, 3
  store i64 %3455, i64* %PC.i176
  %3456 = inttoptr i64 %3453 to i32*
  %3457 = load i32, i32* %3456
  %3458 = zext i32 %3457 to i64
  store i64 %3458, i64* %RAX.i177, align 8
  store %struct.Memory* %loadMem_41a667, %struct.Memory** %MEMORY
  %loadMem_41a66a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 33
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %3461 to i64*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 1
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %EAX.i174 = bitcast %union.anon* %3464 to i32*
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 15
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %3467 to i64*
  %3468 = load i32, i32* %EAX.i174
  %3469 = zext i32 %3468 to i64
  %3470 = load i64, i64* %RBP.i175
  %3471 = sub i64 %3470, 28
  %3472 = load i64, i64* %PC.i173
  %3473 = add i64 %3472, 3
  store i64 %3473, i64* %PC.i173
  %3474 = inttoptr i64 %3471 to i32*
  %3475 = load i32, i32* %3474
  %3476 = sub i32 %3468, %3475
  %3477 = icmp ult i32 %3468, %3475
  %3478 = zext i1 %3477 to i8
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3478, i8* %3479, align 1
  %3480 = and i32 %3476, 255
  %3481 = call i32 @llvm.ctpop.i32(i32 %3480)
  %3482 = trunc i32 %3481 to i8
  %3483 = and i8 %3482, 1
  %3484 = xor i8 %3483, 1
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3484, i8* %3485, align 1
  %3486 = xor i32 %3475, %3468
  %3487 = xor i32 %3486, %3476
  %3488 = lshr i32 %3487, 4
  %3489 = trunc i32 %3488 to i8
  %3490 = and i8 %3489, 1
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3490, i8* %3491, align 1
  %3492 = icmp eq i32 %3476, 0
  %3493 = zext i1 %3492 to i8
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3493, i8* %3494, align 1
  %3495 = lshr i32 %3476, 31
  %3496 = trunc i32 %3495 to i8
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3496, i8* %3497, align 1
  %3498 = lshr i32 %3468, 31
  %3499 = lshr i32 %3475, 31
  %3500 = xor i32 %3499, %3498
  %3501 = xor i32 %3495, %3498
  %3502 = add i32 %3501, %3500
  %3503 = icmp eq i32 %3502, 2
  %3504 = zext i1 %3503 to i8
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3504, i8* %3505, align 1
  store %struct.Memory* %loadMem_41a66a, %struct.Memory** %MEMORY
  %loadMem_41a66d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3508 to i64*
  %3509 = load i64, i64* %PC.i172
  %3510 = add i64 %3509, 169
  %3511 = load i64, i64* %PC.i172
  %3512 = add i64 %3511, 6
  %3513 = load i64, i64* %PC.i172
  %3514 = add i64 %3513, 6
  store i64 %3514, i64* %PC.i172
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3516 = load i8, i8* %3515, align 1
  %3517 = icmp ne i8 %3516, 0
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3519 = load i8, i8* %3518, align 1
  %3520 = icmp ne i8 %3519, 0
  %3521 = xor i1 %3517, %3520
  %3522 = xor i1 %3521, true
  %3523 = zext i1 %3522 to i8
  store i8 %3523, i8* %BRANCH_TAKEN, align 1
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3525 = select i1 %3521, i64 %3512, i64 %3510
  store i64 %3525, i64* %3524, align 8
  store %struct.Memory* %loadMem_41a66d, %struct.Memory** %MEMORY
  %loadBr_41a66d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a66d = icmp eq i8 %loadBr_41a66d, 1
  br i1 %cmpBr_41a66d, label %block_.L_41a716, label %block_41a673

block_41a673:                                     ; preds = %block_.L_41a667
  %loadMem_41a673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 33
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %3528 to i64*
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 15
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %3531 to i64*
  %3532 = load i64, i64* %RBP.i171
  %3533 = sub i64 %3532, 24
  %3534 = load i64, i64* %PC.i170
  %3535 = add i64 %3534, 5
  store i64 %3535, i64* %PC.i170
  %3536 = inttoptr i64 %3533 to i64*
  %3537 = load i64, i64* %3536
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3538, align 1
  %3539 = trunc i64 %3537 to i32
  %3540 = and i32 %3539, 255
  %3541 = call i32 @llvm.ctpop.i32(i32 %3540)
  %3542 = trunc i32 %3541 to i8
  %3543 = and i8 %3542, 1
  %3544 = xor i8 %3543, 1
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3544, i8* %3545, align 1
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3546, align 1
  %3547 = icmp eq i64 %3537, 0
  %3548 = zext i1 %3547 to i8
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3548, i8* %3549, align 1
  %3550 = lshr i64 %3537, 63
  %3551 = trunc i64 %3550 to i8
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3551, i8* %3552, align 1
  %3553 = lshr i64 %3537, 63
  %3554 = xor i64 %3550, %3553
  %3555 = add i64 %3554, %3553
  %3556 = icmp eq i64 %3555, 2
  %3557 = zext i1 %3556 to i8
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3557, i8* %3558, align 1
  store %struct.Memory* %loadMem_41a673, %struct.Memory** %MEMORY
  %loadMem_41a678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 33
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3561 to i64*
  %3562 = load i64, i64* %PC.i169
  %3563 = add i64 %3562, 24
  %3564 = load i64, i64* %PC.i169
  %3565 = add i64 %3564, 6
  %3566 = load i64, i64* %PC.i169
  %3567 = add i64 %3566, 6
  store i64 %3567, i64* %PC.i169
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3569 = load i8, i8* %3568, align 1
  %3570 = icmp eq i8 %3569, 0
  %3571 = zext i1 %3570 to i8
  store i8 %3571, i8* %BRANCH_TAKEN, align 1
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3573 = select i1 %3570, i64 %3563, i64 %3565
  store i64 %3573, i64* %3572, align 8
  store %struct.Memory* %loadMem_41a678, %struct.Memory** %MEMORY
  %loadBr_41a678 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a678 = icmp eq i8 %loadBr_41a678, 1
  br i1 %cmpBr_41a678, label %block_.L_41a690, label %block_41a67e

block_41a67e:                                     ; preds = %block_41a673
  %loadMem_41a67e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 33
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %3576 to i64*
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3578 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3577, i64 0, i64 0
  %YMM0.i168 = bitcast %union.VectorReg* %3578 to %"class.std::bitset"*
  %3579 = bitcast %"class.std::bitset"* %YMM0.i168 to i8*
  %3580 = load i64, i64* %PC.i167
  %3581 = add i64 %3580, ptrtoint (%G_0x3a15a__rip__type* @G_0x3a15a__rip_ to i64)
  %3582 = load i64, i64* %PC.i167
  %3583 = add i64 %3582, 8
  store i64 %3583, i64* %PC.i167
  %3584 = inttoptr i64 %3581 to double*
  %3585 = load double, double* %3584
  %3586 = bitcast i8* %3579 to double*
  store double %3585, double* %3586, align 1
  %3587 = getelementptr inbounds i8, i8* %3579, i64 8
  %3588 = bitcast i8* %3587 to double*
  store double 0.000000e+00, double* %3588, align 1
  store %struct.Memory* %loadMem_41a67e, %struct.Memory** %MEMORY
  %loadMem_41a686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 33
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %3591 to i64*
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 15
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %3594 to i64*
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3596 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3595, i64 0, i64 0
  %XMM0.i166 = bitcast %union.VectorReg* %3596 to %union.vec128_t*
  %3597 = load i64, i64* %RBP.i165
  %3598 = sub i64 %3597, 128
  %3599 = bitcast %union.vec128_t* %XMM0.i166 to i8*
  %3600 = load i64, i64* %PC.i164
  %3601 = add i64 %3600, 5
  store i64 %3601, i64* %PC.i164
  %3602 = bitcast i8* %3599 to double*
  %3603 = load double, double* %3602, align 1
  %3604 = inttoptr i64 %3598 to double*
  store double %3603, double* %3604
  store %struct.Memory* %loadMem_41a686, %struct.Memory** %MEMORY
  %loadMem_41a68b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3606 = getelementptr inbounds %struct.GPR, %struct.GPR* %3605, i32 0, i32 33
  %3607 = getelementptr inbounds %struct.Reg, %struct.Reg* %3606, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3607 to i64*
  %3608 = load i64, i64* %PC.i163
  %3609 = add i64 %3608, 23
  %3610 = load i64, i64* %PC.i163
  %3611 = add i64 %3610, 5
  store i64 %3611, i64* %PC.i163
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3609, i64* %3612, align 8
  store %struct.Memory* %loadMem_41a68b, %struct.Memory** %MEMORY
  br label %block_.L_41a6a2

block_.L_41a690:                                  ; preds = %block_41a673
  %loadMem_41a690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3614 = getelementptr inbounds %struct.GPR, %struct.GPR* %3613, i32 0, i32 33
  %3615 = getelementptr inbounds %struct.Reg, %struct.Reg* %3614, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3615 to i64*
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3617 = getelementptr inbounds %struct.GPR, %struct.GPR* %3616, i32 0, i32 1
  %3618 = getelementptr inbounds %struct.Reg, %struct.Reg* %3617, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %3618 to i64*
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 15
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %3621 to i64*
  %3622 = load i64, i64* %RBP.i162
  %3623 = sub i64 %3622, 24
  %3624 = load i64, i64* %PC.i160
  %3625 = add i64 %3624, 4
  store i64 %3625, i64* %PC.i160
  %3626 = inttoptr i64 %3623 to i64*
  %3627 = load i64, i64* %3626
  store i64 %3627, i64* %RAX.i161, align 8
  store %struct.Memory* %loadMem_41a690, %struct.Memory** %MEMORY
  %loadMem_41a694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 33
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3630 to i64*
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 5
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %RCX.i158 = bitcast %union.anon* %3633 to i64*
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 15
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %3636 to i64*
  %3637 = load i64, i64* %RBP.i159
  %3638 = sub i64 %3637, 104
  %3639 = load i64, i64* %PC.i157
  %3640 = add i64 %3639, 4
  store i64 %3640, i64* %PC.i157
  %3641 = inttoptr i64 %3638 to i32*
  %3642 = load i32, i32* %3641
  %3643 = sext i32 %3642 to i64
  store i64 %3643, i64* %RCX.i158, align 8
  store %struct.Memory* %loadMem_41a694, %struct.Memory** %MEMORY
  %loadMem_41a698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 33
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %3646 to i64*
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 1
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 5
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %3652 to i64*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3654 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3653, i64 0, i64 0
  %YMM0.i156 = bitcast %union.VectorReg* %3654 to %"class.std::bitset"*
  %3655 = bitcast %"class.std::bitset"* %YMM0.i156 to i8*
  %3656 = load i64, i64* %RAX.i154
  %3657 = load i64, i64* %RCX.i155
  %3658 = mul i64 %3657, 4
  %3659 = add i64 %3658, %3656
  %3660 = load i64, i64* %PC.i153
  %3661 = add i64 %3660, 5
  store i64 %3661, i64* %PC.i153
  %3662 = inttoptr i64 %3659 to i32*
  %3663 = load i32, i32* %3662
  %3664 = sitofp i32 %3663 to double
  %3665 = bitcast i8* %3655 to double*
  store double %3664, double* %3665, align 1
  store %struct.Memory* %loadMem_41a698, %struct.Memory** %MEMORY
  %loadMem_41a69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 33
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %3668 to i64*
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3670 = getelementptr inbounds %struct.GPR, %struct.GPR* %3669, i32 0, i32 15
  %3671 = getelementptr inbounds %struct.Reg, %struct.Reg* %3670, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %3671 to i64*
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3673 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3672, i64 0, i64 0
  %XMM0.i152 = bitcast %union.VectorReg* %3673 to %union.vec128_t*
  %3674 = load i64, i64* %RBP.i151
  %3675 = sub i64 %3674, 128
  %3676 = bitcast %union.vec128_t* %XMM0.i152 to i8*
  %3677 = load i64, i64* %PC.i150
  %3678 = add i64 %3677, 5
  store i64 %3678, i64* %PC.i150
  %3679 = bitcast i8* %3676 to double*
  %3680 = load double, double* %3679, align 1
  %3681 = inttoptr i64 %3675 to double*
  store double %3680, double* %3681
  store %struct.Memory* %loadMem_41a69d, %struct.Memory** %MEMORY
  br label %block_.L_41a6a2

block_.L_41a6a2:                                  ; preds = %block_.L_41a690, %block_41a67e
  %loadMem_41a6a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 33
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %3684 to i64*
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 15
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3689 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3688, i64 0, i64 0
  %YMM0.i149 = bitcast %union.VectorReg* %3689 to %"class.std::bitset"*
  %3690 = bitcast %"class.std::bitset"* %YMM0.i149 to i8*
  %3691 = load i64, i64* %RBP.i148
  %3692 = sub i64 %3691, 128
  %3693 = load i64, i64* %PC.i147
  %3694 = add i64 %3693, 5
  store i64 %3694, i64* %PC.i147
  %3695 = inttoptr i64 %3692 to double*
  %3696 = load double, double* %3695
  %3697 = bitcast i8* %3690 to double*
  store double %3696, double* %3697, align 1
  %3698 = getelementptr inbounds i8, i8* %3690, i64 8
  %3699 = bitcast i8* %3698 to double*
  store double 0.000000e+00, double* %3699, align 1
  store %struct.Memory* %loadMem_41a6a2, %struct.Memory** %MEMORY
  %loadMem_41a6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 33
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3702 to i64*
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3704 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3703, i64 0, i64 1
  %YMM1.i146 = bitcast %union.VectorReg* %3704 to %"class.std::bitset"*
  %3705 = bitcast %"class.std::bitset"* %YMM1.i146 to i8*
  %3706 = load i64, i64* %PC.i145
  %3707 = add i64 %3706, ptrtoint (%G_0x3a181__rip__type* @G_0x3a181__rip_ to i64)
  %3708 = load i64, i64* %PC.i145
  %3709 = add i64 %3708, 8
  store i64 %3709, i64* %PC.i145
  %3710 = inttoptr i64 %3707 to double*
  %3711 = load double, double* %3710
  %3712 = bitcast i8* %3705 to double*
  store double %3711, double* %3712, align 1
  %3713 = getelementptr inbounds i8, i8* %3705, i64 8
  %3714 = bitcast i8* %3713 to double*
  store double 0.000000e+00, double* %3714, align 1
  store %struct.Memory* %loadMem_41a6a7, %struct.Memory** %MEMORY
  %loadMem_41a6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 33
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %3717 to i64*
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 15
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %3720 to i64*
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3722 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3721, i64 0, i64 0
  %XMM0.i144 = bitcast %union.VectorReg* %3722 to %union.vec128_t*
  %3723 = load i64, i64* %RBP.i143
  %3724 = sub i64 %3723, 88
  %3725 = bitcast %union.vec128_t* %XMM0.i144 to i8*
  %3726 = load i64, i64* %PC.i142
  %3727 = add i64 %3726, 5
  store i64 %3727, i64* %PC.i142
  %3728 = bitcast i8* %3725 to double*
  %3729 = load double, double* %3728, align 1
  %3730 = inttoptr i64 %3724 to double*
  store double %3729, double* %3730
  store %struct.Memory* %loadMem_41a6af, %struct.Memory** %MEMORY
  %loadMem_41a6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 33
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %3733 to i64*
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 15
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %3736 to i64*
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3738 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3737, i64 0, i64 0
  %YMM0.i141 = bitcast %union.VectorReg* %3738 to %"class.std::bitset"*
  %3739 = bitcast %"class.std::bitset"* %YMM0.i141 to i8*
  %3740 = load i64, i64* %RBP.i140
  %3741 = sub i64 %3740, 88
  %3742 = load i64, i64* %PC.i139
  %3743 = add i64 %3742, 5
  store i64 %3743, i64* %PC.i139
  %3744 = inttoptr i64 %3741 to double*
  %3745 = load double, double* %3744
  %3746 = bitcast i8* %3739 to double*
  store double %3745, double* %3746, align 1
  %3747 = getelementptr inbounds i8, i8* %3739, i64 8
  %3748 = bitcast i8* %3747 to double*
  store double 0.000000e+00, double* %3748, align 1
  store %struct.Memory* %loadMem_41a6b4, %struct.Memory** %MEMORY
  %loadMem_41a6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 33
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %3751 to i64*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 15
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %3754 to i64*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3756 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3755, i64 0, i64 2
  %YMM2.i138 = bitcast %union.VectorReg* %3756 to %"class.std::bitset"*
  %3757 = bitcast %"class.std::bitset"* %YMM2.i138 to i8*
  %3758 = load i64, i64* %RBP.i137
  %3759 = sub i64 %3758, 60
  %3760 = load i64, i64* %PC.i136
  %3761 = add i64 %3760, 5
  store i64 %3761, i64* %PC.i136
  %3762 = inttoptr i64 %3759 to float*
  %3763 = load float, float* %3762
  %3764 = fpext float %3763 to double
  %3765 = bitcast i8* %3757 to double*
  store double %3764, double* %3765, align 1
  store %struct.Memory* %loadMem_41a6b9, %struct.Memory** %MEMORY
  %loadMem_41a6be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 33
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %3768 to i64*
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3770 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3769, i64 0, i64 1
  %YMM1.i134 = bitcast %union.VectorReg* %3770 to %"class.std::bitset"*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3772 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3771, i64 0, i64 2
  %XMM2.i135 = bitcast %union.VectorReg* %3772 to %union.vec128_t*
  %3773 = bitcast %"class.std::bitset"* %YMM1.i134 to i8*
  %3774 = bitcast %"class.std::bitset"* %YMM1.i134 to i8*
  %3775 = bitcast %union.vec128_t* %XMM2.i135 to i8*
  %3776 = load i64, i64* %PC.i133
  %3777 = add i64 %3776, 4
  store i64 %3777, i64* %PC.i133
  %3778 = bitcast i8* %3774 to double*
  %3779 = load double, double* %3778, align 1
  %3780 = getelementptr inbounds i8, i8* %3774, i64 8
  %3781 = bitcast i8* %3780 to i64*
  %3782 = load i64, i64* %3781, align 1
  %3783 = bitcast i8* %3775 to double*
  %3784 = load double, double* %3783, align 1
  %3785 = fmul double %3779, %3784
  %3786 = bitcast i8* %3773 to double*
  store double %3785, double* %3786, align 1
  %3787 = getelementptr inbounds i8, i8* %3773, i64 8
  %3788 = bitcast i8* %3787 to i64*
  store i64 %3782, i64* %3788, align 1
  store %struct.Memory* %loadMem_41a6be, %struct.Memory** %MEMORY
  %loadMem_41a6c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 33
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %3791 to i64*
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 1
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %3794 to i64*
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 15
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %3797 to i64*
  %3798 = load i64, i64* %RBP.i132
  %3799 = sub i64 %3798, 16
  %3800 = load i64, i64* %PC.i130
  %3801 = add i64 %3800, 4
  store i64 %3801, i64* %PC.i130
  %3802 = inttoptr i64 %3799 to i64*
  %3803 = load i64, i64* %3802
  store i64 %3803, i64* %RAX.i131, align 8
  store %struct.Memory* %loadMem_41a6c2, %struct.Memory** %MEMORY
  %loadMem_41a6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 33
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %3806 to i64*
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3808 = getelementptr inbounds %struct.GPR, %struct.GPR* %3807, i32 0, i32 5
  %3809 = getelementptr inbounds %struct.Reg, %struct.Reg* %3808, i32 0, i32 0
  %RCX.i128 = bitcast %union.anon* %3809 to i64*
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3811 = getelementptr inbounds %struct.GPR, %struct.GPR* %3810, i32 0, i32 15
  %3812 = getelementptr inbounds %struct.Reg, %struct.Reg* %3811, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %3812 to i64*
  %3813 = load i64, i64* %RBP.i129
  %3814 = sub i64 %3813, 104
  %3815 = load i64, i64* %PC.i127
  %3816 = add i64 %3815, 4
  store i64 %3816, i64* %PC.i127
  %3817 = inttoptr i64 %3814 to i32*
  %3818 = load i32, i32* %3817
  %3819 = sext i32 %3818 to i64
  store i64 %3819, i64* %RCX.i128, align 8
  store %struct.Memory* %loadMem_41a6c6, %struct.Memory** %MEMORY
  %loadMem_41a6ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 33
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %3822 to i64*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 1
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %3825 to i64*
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 5
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3828 to i64*
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3830 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3829, i64 0, i64 2
  %YMM2.i126 = bitcast %union.VectorReg* %3830 to %"class.std::bitset"*
  %3831 = bitcast %"class.std::bitset"* %YMM2.i126 to i8*
  %3832 = load i64, i64* %RAX.i125
  %3833 = load i64, i64* %RCX.i
  %3834 = mul i64 %3833, 4
  %3835 = add i64 %3834, %3832
  %3836 = load i64, i64* %PC.i124
  %3837 = add i64 %3836, 5
  store i64 %3837, i64* %PC.i124
  %3838 = inttoptr i64 %3835 to float*
  %3839 = load float, float* %3838
  %3840 = fpext float %3839 to double
  %3841 = bitcast i8* %3831 to double*
  store double %3840, double* %3841, align 1
  store %struct.Memory* %loadMem_41a6ca, %struct.Memory** %MEMORY
  %loadMem_41a6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 33
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %3844 to i64*
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3846 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3845, i64 0, i64 1
  %YMM1.i122 = bitcast %union.VectorReg* %3846 to %"class.std::bitset"*
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3848 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3847, i64 0, i64 2
  %XMM2.i123 = bitcast %union.VectorReg* %3848 to %union.vec128_t*
  %3849 = bitcast %"class.std::bitset"* %YMM1.i122 to i8*
  %3850 = bitcast %"class.std::bitset"* %YMM1.i122 to i8*
  %3851 = bitcast %union.vec128_t* %XMM2.i123 to i8*
  %3852 = load i64, i64* %PC.i121
  %3853 = add i64 %3852, 4
  store i64 %3853, i64* %PC.i121
  %3854 = bitcast i8* %3850 to double*
  %3855 = load double, double* %3854, align 1
  %3856 = getelementptr inbounds i8, i8* %3850, i64 8
  %3857 = bitcast i8* %3856 to i64*
  %3858 = load i64, i64* %3857, align 1
  %3859 = bitcast i8* %3851 to double*
  %3860 = load double, double* %3859, align 1
  %3861 = fmul double %3855, %3860
  %3862 = bitcast i8* %3849 to double*
  store double %3861, double* %3862, align 1
  %3863 = getelementptr inbounds i8, i8* %3849, i64 8
  %3864 = bitcast i8* %3863 to i64*
  store i64 %3858, i64* %3864, align 1
  store %struct.Memory* %loadMem_41a6cf, %struct.Memory** %MEMORY
  %loadMem_41a6d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 33
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %3867 to i64*
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 15
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %3870 to i64*
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3872 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3871, i64 0, i64 0
  %XMM0.i120 = bitcast %union.VectorReg* %3872 to %union.vec128_t*
  %3873 = load i64, i64* %RBP.i119
  %3874 = sub i64 %3873, 136
  %3875 = bitcast %union.vec128_t* %XMM0.i120 to i8*
  %3876 = load i64, i64* %PC.i118
  %3877 = add i64 %3876, 8
  store i64 %3877, i64* %PC.i118
  %3878 = bitcast i8* %3875 to double*
  %3879 = load double, double* %3878, align 1
  %3880 = inttoptr i64 %3874 to double*
  store double %3879, double* %3880
  store %struct.Memory* %loadMem_41a6d3, %struct.Memory** %MEMORY
  %loadMem_41a6db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 33
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %3883 to i64*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3885 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3884, i64 0, i64 0
  %YMM0.i116 = bitcast %union.VectorReg* %3885 to %"class.std::bitset"*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3887 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3886, i64 0, i64 1
  %XMM1.i117 = bitcast %union.VectorReg* %3887 to %union.vec128_t*
  %3888 = bitcast %"class.std::bitset"* %YMM0.i116 to i8*
  %3889 = bitcast %union.vec128_t* %XMM1.i117 to i8*
  %3890 = load i64, i64* %PC.i115
  %3891 = add i64 %3890, 3
  store i64 %3891, i64* %PC.i115
  %3892 = bitcast i8* %3889 to <2 x i32>*
  %3893 = load <2 x i32>, <2 x i32>* %3892, align 1
  %3894 = getelementptr inbounds i8, i8* %3889, i64 8
  %3895 = bitcast i8* %3894 to <2 x i32>*
  %3896 = load <2 x i32>, <2 x i32>* %3895, align 1
  %3897 = extractelement <2 x i32> %3893, i32 0
  %3898 = bitcast i8* %3888 to i32*
  store i32 %3897, i32* %3898, align 1
  %3899 = extractelement <2 x i32> %3893, i32 1
  %3900 = getelementptr inbounds i8, i8* %3888, i64 4
  %3901 = bitcast i8* %3900 to i32*
  store i32 %3899, i32* %3901, align 1
  %3902 = extractelement <2 x i32> %3896, i32 0
  %3903 = getelementptr inbounds i8, i8* %3888, i64 8
  %3904 = bitcast i8* %3903 to i32*
  store i32 %3902, i32* %3904, align 1
  %3905 = extractelement <2 x i32> %3896, i32 1
  %3906 = getelementptr inbounds i8, i8* %3888, i64 12
  %3907 = bitcast i8* %3906 to i32*
  store i32 %3905, i32* %3907, align 1
  store %struct.Memory* %loadMem_41a6db, %struct.Memory** %MEMORY
  %loadMem1_41a6de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 33
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3910 to i64*
  %3911 = load i64, i64* %PC.i114
  %3912 = add i64 %3911, -103102
  %3913 = load i64, i64* %PC.i114
  %3914 = add i64 %3913, 5
  %3915 = load i64, i64* %PC.i114
  %3916 = add i64 %3915, 5
  store i64 %3916, i64* %PC.i114
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3918 = load i64, i64* %3917, align 8
  %3919 = add i64 %3918, -8
  %3920 = inttoptr i64 %3919 to i64*
  store i64 %3914, i64* %3920
  store i64 %3919, i64* %3917, align 8
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3912, i64* %3921, align 8
  store %struct.Memory* %loadMem1_41a6de, %struct.Memory** %MEMORY
  %loadMem2_41a6de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a6de = load i64, i64* %3
  %3922 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_41a6de)
  store %struct.Memory* %3922, %struct.Memory** %MEMORY
  %loadMem_41a6e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 33
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %3925 to i64*
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 15
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %3928 to i64*
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3930 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3929, i64 0, i64 1
  %YMM1.i111 = bitcast %union.VectorReg* %3930 to %"class.std::bitset"*
  %3931 = bitcast %"class.std::bitset"* %YMM1.i111 to i8*
  %3932 = load i64, i64* %RBP.i110
  %3933 = sub i64 %3932, 136
  %3934 = load i64, i64* %PC.i109
  %3935 = add i64 %3934, 8
  store i64 %3935, i64* %PC.i109
  %3936 = inttoptr i64 %3933 to double*
  %3937 = load double, double* %3936
  %3938 = bitcast i8* %3931 to double*
  store double %3937, double* %3938, align 1
  %3939 = getelementptr inbounds i8, i8* %3931, i64 8
  %3940 = bitcast i8* %3939 to double*
  store double 0.000000e+00, double* %3940, align 1
  store %struct.Memory* %loadMem_41a6e3, %struct.Memory** %MEMORY
  %loadMem_41a6eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 33
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %3943 to i64*
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3945 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3944, i64 0, i64 1
  %YMM1.i107 = bitcast %union.VectorReg* %3945 to %"class.std::bitset"*
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3947 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3946, i64 0, i64 0
  %XMM0.i108 = bitcast %union.VectorReg* %3947 to %union.vec128_t*
  %3948 = bitcast %"class.std::bitset"* %YMM1.i107 to i8*
  %3949 = bitcast %"class.std::bitset"* %YMM1.i107 to i8*
  %3950 = bitcast %union.vec128_t* %XMM0.i108 to i8*
  %3951 = load i64, i64* %PC.i106
  %3952 = add i64 %3951, 4
  store i64 %3952, i64* %PC.i106
  %3953 = bitcast i8* %3949 to double*
  %3954 = load double, double* %3953, align 1
  %3955 = getelementptr inbounds i8, i8* %3949, i64 8
  %3956 = bitcast i8* %3955 to i64*
  %3957 = load i64, i64* %3956, align 1
  %3958 = bitcast i8* %3950 to double*
  %3959 = load double, double* %3958, align 1
  %3960 = fmul double %3954, %3959
  %3961 = bitcast i8* %3948 to double*
  store double %3960, double* %3961, align 1
  %3962 = getelementptr inbounds i8, i8* %3948, i64 8
  %3963 = bitcast i8* %3962 to i64*
  store i64 %3957, i64* %3963, align 1
  store %struct.Memory* %loadMem_41a6eb, %struct.Memory** %MEMORY
  %loadMem_41a6ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 33
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %3966 to i64*
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 15
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %3969 to i64*
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3971 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3970, i64 0, i64 1
  %YMM1.i105 = bitcast %union.VectorReg* %3971 to %"class.std::bitset"*
  %3972 = bitcast %"class.std::bitset"* %YMM1.i105 to i8*
  %3973 = bitcast %"class.std::bitset"* %YMM1.i105 to i8*
  %3974 = load i64, i64* %RBP.i104
  %3975 = sub i64 %3974, 80
  %3976 = load i64, i64* %PC.i103
  %3977 = add i64 %3976, 5
  store i64 %3977, i64* %PC.i103
  %3978 = bitcast i8* %3973 to double*
  %3979 = load double, double* %3978, align 1
  %3980 = getelementptr inbounds i8, i8* %3973, i64 8
  %3981 = bitcast i8* %3980 to i64*
  %3982 = load i64, i64* %3981, align 1
  %3983 = inttoptr i64 %3975 to double*
  %3984 = load double, double* %3983
  %3985 = fadd double %3979, %3984
  %3986 = bitcast i8* %3972 to double*
  store double %3985, double* %3986, align 1
  %3987 = getelementptr inbounds i8, i8* %3972, i64 8
  %3988 = bitcast i8* %3987 to i64*
  store i64 %3982, i64* %3988, align 1
  store %struct.Memory* %loadMem_41a6ef, %struct.Memory** %MEMORY
  %loadMem_41a6f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 33
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %3991 to i64*
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 15
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %3994 to i64*
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3996 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3995, i64 0, i64 1
  %XMM1.i102 = bitcast %union.VectorReg* %3996 to %union.vec128_t*
  %3997 = load i64, i64* %RBP.i101
  %3998 = sub i64 %3997, 80
  %3999 = bitcast %union.vec128_t* %XMM1.i102 to i8*
  %4000 = load i64, i64* %PC.i100
  %4001 = add i64 %4000, 5
  store i64 %4001, i64* %PC.i100
  %4002 = bitcast i8* %3999 to double*
  %4003 = load double, double* %4002, align 1
  %4004 = inttoptr i64 %3998 to double*
  store double %4003, double* %4004
  store %struct.Memory* %loadMem_41a6f4, %struct.Memory** %MEMORY
  %loadMem_41a6f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 33
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %4007 to i64*
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 15
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %4010 to i64*
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4012 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4011, i64 0, i64 0
  %YMM0.i99 = bitcast %union.VectorReg* %4012 to %"class.std::bitset"*
  %4013 = bitcast %"class.std::bitset"* %YMM0.i99 to i8*
  %4014 = load i64, i64* %RBP.i98
  %4015 = sub i64 %4014, 88
  %4016 = load i64, i64* %PC.i97
  %4017 = add i64 %4016, 5
  store i64 %4017, i64* %PC.i97
  %4018 = inttoptr i64 %4015 to double*
  %4019 = load double, double* %4018
  %4020 = bitcast i8* %4013 to double*
  store double %4019, double* %4020, align 1
  %4021 = getelementptr inbounds i8, i8* %4013, i64 8
  %4022 = bitcast i8* %4021 to double*
  store double 0.000000e+00, double* %4022, align 1
  store %struct.Memory* %loadMem_41a6f9, %struct.Memory** %MEMORY
  %loadMem_41a6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4024 = getelementptr inbounds %struct.GPR, %struct.GPR* %4023, i32 0, i32 33
  %4025 = getelementptr inbounds %struct.Reg, %struct.Reg* %4024, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %4025 to i64*
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4027 = getelementptr inbounds %struct.GPR, %struct.GPR* %4026, i32 0, i32 15
  %4028 = getelementptr inbounds %struct.Reg, %struct.Reg* %4027, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %4028 to i64*
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4030 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4029, i64 0, i64 0
  %YMM0.i96 = bitcast %union.VectorReg* %4030 to %"class.std::bitset"*
  %4031 = bitcast %"class.std::bitset"* %YMM0.i96 to i8*
  %4032 = bitcast %"class.std::bitset"* %YMM0.i96 to i8*
  %4033 = load i64, i64* %RBP.i95
  %4034 = sub i64 %4033, 96
  %4035 = load i64, i64* %PC.i94
  %4036 = add i64 %4035, 5
  store i64 %4036, i64* %PC.i94
  %4037 = bitcast i8* %4032 to double*
  %4038 = load double, double* %4037, align 1
  %4039 = getelementptr inbounds i8, i8* %4032, i64 8
  %4040 = bitcast i8* %4039 to i64*
  %4041 = load i64, i64* %4040, align 1
  %4042 = inttoptr i64 %4034 to double*
  %4043 = load double, double* %4042
  %4044 = fadd double %4038, %4043
  %4045 = bitcast i8* %4031 to double*
  store double %4044, double* %4045, align 1
  %4046 = getelementptr inbounds i8, i8* %4031, i64 8
  %4047 = bitcast i8* %4046 to i64*
  store i64 %4041, i64* %4047, align 1
  store %struct.Memory* %loadMem_41a6fe, %struct.Memory** %MEMORY
  %loadMem_41a703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 33
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4050 to i64*
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 15
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %4053 to i64*
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4055 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4054, i64 0, i64 0
  %XMM0.i93 = bitcast %union.VectorReg* %4055 to %union.vec128_t*
  %4056 = load i64, i64* %RBP.i92
  %4057 = sub i64 %4056, 96
  %4058 = bitcast %union.vec128_t* %XMM0.i93 to i8*
  %4059 = load i64, i64* %PC.i91
  %4060 = add i64 %4059, 5
  store i64 %4060, i64* %PC.i91
  %4061 = bitcast i8* %4058 to double*
  %4062 = load double, double* %4061, align 1
  %4063 = inttoptr i64 %4057 to double*
  store double %4062, double* %4063
  store %struct.Memory* %loadMem_41a703, %struct.Memory** %MEMORY
  %loadMem_41a708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 33
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %4066 to i64*
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 1
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %4069 to i64*
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 15
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %4072 to i64*
  %4073 = load i64, i64* %RBP.i90
  %4074 = sub i64 %4073, 104
  %4075 = load i64, i64* %PC.i88
  %4076 = add i64 %4075, 3
  store i64 %4076, i64* %PC.i88
  %4077 = inttoptr i64 %4074 to i32*
  %4078 = load i32, i32* %4077
  %4079 = zext i32 %4078 to i64
  store i64 %4079, i64* %RAX.i89, align 8
  store %struct.Memory* %loadMem_41a708, %struct.Memory** %MEMORY
  %loadMem_41a70b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 33
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4082 to i64*
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 1
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %4085 to i64*
  %4086 = load i64, i64* %RAX.i87
  %4087 = load i64, i64* %PC.i86
  %4088 = add i64 %4087, 3
  store i64 %4088, i64* %PC.i86
  %4089 = trunc i64 %4086 to i32
  %4090 = add i32 1, %4089
  %4091 = zext i32 %4090 to i64
  store i64 %4091, i64* %RAX.i87, align 8
  %4092 = icmp ult i32 %4090, %4089
  %4093 = icmp ult i32 %4090, 1
  %4094 = or i1 %4092, %4093
  %4095 = zext i1 %4094 to i8
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4095, i8* %4096, align 1
  %4097 = and i32 %4090, 255
  %4098 = call i32 @llvm.ctpop.i32(i32 %4097)
  %4099 = trunc i32 %4098 to i8
  %4100 = and i8 %4099, 1
  %4101 = xor i8 %4100, 1
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4101, i8* %4102, align 1
  %4103 = xor i64 1, %4086
  %4104 = trunc i64 %4103 to i32
  %4105 = xor i32 %4104, %4090
  %4106 = lshr i32 %4105, 4
  %4107 = trunc i32 %4106 to i8
  %4108 = and i8 %4107, 1
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4108, i8* %4109, align 1
  %4110 = icmp eq i32 %4090, 0
  %4111 = zext i1 %4110 to i8
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4111, i8* %4112, align 1
  %4113 = lshr i32 %4090, 31
  %4114 = trunc i32 %4113 to i8
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4114, i8* %4115, align 1
  %4116 = lshr i32 %4089, 31
  %4117 = xor i32 %4113, %4116
  %4118 = add i32 %4117, %4113
  %4119 = icmp eq i32 %4118, 2
  %4120 = zext i1 %4119 to i8
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4120, i8* %4121, align 1
  store %struct.Memory* %loadMem_41a70b, %struct.Memory** %MEMORY
  %loadMem_41a70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4123 = getelementptr inbounds %struct.GPR, %struct.GPR* %4122, i32 0, i32 33
  %4124 = getelementptr inbounds %struct.Reg, %struct.Reg* %4123, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4124 to i64*
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4126 = getelementptr inbounds %struct.GPR, %struct.GPR* %4125, i32 0, i32 1
  %4127 = getelementptr inbounds %struct.Reg, %struct.Reg* %4126, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4127 to i32*
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 15
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %4130 to i64*
  %4131 = load i64, i64* %RBP.i85
  %4132 = sub i64 %4131, 104
  %4133 = load i32, i32* %EAX.i
  %4134 = zext i32 %4133 to i64
  %4135 = load i64, i64* %PC.i84
  %4136 = add i64 %4135, 3
  store i64 %4136, i64* %PC.i84
  %4137 = inttoptr i64 %4132 to i32*
  store i32 %4133, i32* %4137
  store %struct.Memory* %loadMem_41a70e, %struct.Memory** %MEMORY
  %loadMem_41a711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 33
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %4140 to i64*
  %4141 = load i64, i64* %PC.i83
  %4142 = add i64 %4141, -170
  %4143 = load i64, i64* %PC.i83
  %4144 = add i64 %4143, 5
  store i64 %4144, i64* %PC.i83
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4142, i64* %4145, align 8
  store %struct.Memory* %loadMem_41a711, %struct.Memory** %MEMORY
  br label %block_.L_41a667

block_.L_41a716:                                  ; preds = %block_.L_41a667
  %loadMem_41a716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4147 = getelementptr inbounds %struct.GPR, %struct.GPR* %4146, i32 0, i32 33
  %4148 = getelementptr inbounds %struct.Reg, %struct.Reg* %4147, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4148 to i64*
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4150 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4149, i64 0, i64 0
  %YMM0.i82 = bitcast %union.VectorReg* %4150 to %"class.std::bitset"*
  %4151 = bitcast %"class.std::bitset"* %YMM0.i82 to i8*
  %4152 = load i64, i64* %PC.i81
  %4153 = add i64 %4152, ptrtoint (%G_0x3a112__rip__type* @G_0x3a112__rip_ to i64)
  %4154 = load i64, i64* %PC.i81
  %4155 = add i64 %4154, 8
  store i64 %4155, i64* %PC.i81
  %4156 = inttoptr i64 %4153 to double*
  %4157 = load double, double* %4156
  %4158 = bitcast i8* %4151 to double*
  store double %4157, double* %4158, align 1
  %4159 = getelementptr inbounds i8, i8* %4151, i64 8
  %4160 = bitcast i8* %4159 to double*
  store double 0.000000e+00, double* %4160, align 1
  store %struct.Memory* %loadMem_41a716, %struct.Memory** %MEMORY
  %loadMem_41a71e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4162 = getelementptr inbounds %struct.GPR, %struct.GPR* %4161, i32 0, i32 33
  %4163 = getelementptr inbounds %struct.Reg, %struct.Reg* %4162, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4163 to i64*
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4165 = getelementptr inbounds %struct.GPR, %struct.GPR* %4164, i32 0, i32 15
  %4166 = getelementptr inbounds %struct.Reg, %struct.Reg* %4165, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %4166 to i64*
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4168 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4167, i64 0, i64 1
  %YMM1.i80 = bitcast %union.VectorReg* %4168 to %"class.std::bitset"*
  %4169 = bitcast %"class.std::bitset"* %YMM1.i80 to i8*
  %4170 = load i64, i64* %RBP.i79
  %4171 = sub i64 %4170, 32
  %4172 = load i64, i64* %PC.i78
  %4173 = add i64 %4172, 5
  store i64 %4173, i64* %PC.i78
  %4174 = inttoptr i64 %4171 to i32*
  %4175 = load i32, i32* %4174
  %4176 = sitofp i32 %4175 to double
  %4177 = bitcast i8* %4169 to double*
  store double %4176, double* %4177, align 1
  store %struct.Memory* %loadMem_41a71e, %struct.Memory** %MEMORY
  %loadMem_41a723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4179 = getelementptr inbounds %struct.GPR, %struct.GPR* %4178, i32 0, i32 33
  %4180 = getelementptr inbounds %struct.Reg, %struct.Reg* %4179, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4180 to i64*
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 15
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %4183 to i64*
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4185 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4184, i64 0, i64 2
  %YMM2.i77 = bitcast %union.VectorReg* %4185 to %"class.std::bitset"*
  %4186 = bitcast %"class.std::bitset"* %YMM2.i77 to i8*
  %4187 = load i64, i64* %RBP.i76
  %4188 = sub i64 %4187, 60
  %4189 = load i64, i64* %PC.i75
  %4190 = add i64 %4189, 5
  store i64 %4190, i64* %PC.i75
  %4191 = inttoptr i64 %4188 to float*
  %4192 = load float, float* %4191
  %4193 = fpext float %4192 to double
  %4194 = bitcast i8* %4186 to double*
  store double %4193, double* %4194, align 1
  store %struct.Memory* %loadMem_41a723, %struct.Memory** %MEMORY
  %loadMem_41a728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4196 = getelementptr inbounds %struct.GPR, %struct.GPR* %4195, i32 0, i32 33
  %4197 = getelementptr inbounds %struct.Reg, %struct.Reg* %4196, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4197 to i64*
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4199 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4198, i64 0, i64 0
  %YMM0.i73 = bitcast %union.VectorReg* %4199 to %"class.std::bitset"*
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4201 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4200, i64 0, i64 2
  %XMM2.i74 = bitcast %union.VectorReg* %4201 to %union.vec128_t*
  %4202 = bitcast %"class.std::bitset"* %YMM0.i73 to i8*
  %4203 = bitcast %"class.std::bitset"* %YMM0.i73 to i8*
  %4204 = bitcast %union.vec128_t* %XMM2.i74 to i8*
  %4205 = load i64, i64* %PC.i72
  %4206 = add i64 %4205, 4
  store i64 %4206, i64* %PC.i72
  %4207 = bitcast i8* %4203 to double*
  %4208 = load double, double* %4207, align 1
  %4209 = getelementptr inbounds i8, i8* %4203, i64 8
  %4210 = bitcast i8* %4209 to i64*
  %4211 = load i64, i64* %4210, align 1
  %4212 = bitcast i8* %4204 to double*
  %4213 = load double, double* %4212, align 1
  %4214 = fmul double %4208, %4213
  %4215 = bitcast i8* %4202 to double*
  store double %4214, double* %4215, align 1
  %4216 = getelementptr inbounds i8, i8* %4202, i64 8
  %4217 = bitcast i8* %4216 to i64*
  store i64 %4211, i64* %4217, align 1
  store %struct.Memory* %loadMem_41a728, %struct.Memory** %MEMORY
  %loadMem_41a72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4219 = getelementptr inbounds %struct.GPR, %struct.GPR* %4218, i32 0, i32 33
  %4220 = getelementptr inbounds %struct.Reg, %struct.Reg* %4219, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %4220 to i64*
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 15
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %4223 to i64*
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4225 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4224, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %4225 to %"class.std::bitset"*
  %4226 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %4227 = load i64, i64* %RBP.i71
  %4228 = sub i64 %4227, 36
  %4229 = load i64, i64* %PC.i70
  %4230 = add i64 %4229, 5
  store i64 %4230, i64* %PC.i70
  %4231 = inttoptr i64 %4228 to float*
  %4232 = load float, float* %4231
  %4233 = fpext float %4232 to double
  %4234 = bitcast i8* %4226 to double*
  store double %4233, double* %4234, align 1
  store %struct.Memory* %loadMem_41a72c, %struct.Memory** %MEMORY
  %loadMem_41a731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 33
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4237 to i64*
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4239 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4238, i64 0, i64 0
  %YMM0.i69 = bitcast %union.VectorReg* %4239 to %"class.std::bitset"*
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4241 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4240, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %4241 to %union.vec128_t*
  %4242 = bitcast %"class.std::bitset"* %YMM0.i69 to i8*
  %4243 = bitcast %"class.std::bitset"* %YMM0.i69 to i8*
  %4244 = bitcast %union.vec128_t* %XMM2.i to i8*
  %4245 = load i64, i64* %PC.i68
  %4246 = add i64 %4245, 4
  store i64 %4246, i64* %PC.i68
  %4247 = bitcast i8* %4243 to double*
  %4248 = load double, double* %4247, align 1
  %4249 = getelementptr inbounds i8, i8* %4243, i64 8
  %4250 = bitcast i8* %4249 to i64*
  %4251 = load i64, i64* %4250, align 1
  %4252 = bitcast i8* %4244 to double*
  %4253 = load double, double* %4252, align 1
  %4254 = fmul double %4248, %4253
  %4255 = bitcast i8* %4242 to double*
  store double %4254, double* %4255, align 1
  %4256 = getelementptr inbounds i8, i8* %4242, i64 8
  %4257 = bitcast i8* %4256 to i64*
  store i64 %4251, i64* %4257, align 1
  store %struct.Memory* %loadMem_41a731, %struct.Memory** %MEMORY
  %loadMem_41a735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4259 = getelementptr inbounds %struct.GPR, %struct.GPR* %4258, i32 0, i32 33
  %4260 = getelementptr inbounds %struct.Reg, %struct.Reg* %4259, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4260 to i64*
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4262 = getelementptr inbounds %struct.GPR, %struct.GPR* %4261, i32 0, i32 15
  %4263 = getelementptr inbounds %struct.Reg, %struct.Reg* %4262, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %4263 to i64*
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4264, i64 0, i64 1
  %XMM1.i67 = bitcast %union.VectorReg* %4265 to %union.vec128_t*
  %4266 = load i64, i64* %RBP.i66
  %4267 = sub i64 %4266, 144
  %4268 = bitcast %union.vec128_t* %XMM1.i67 to i8*
  %4269 = load i64, i64* %PC.i65
  %4270 = add i64 %4269, 8
  store i64 %4270, i64* %PC.i65
  %4271 = bitcast i8* %4268 to double*
  %4272 = load double, double* %4271, align 1
  %4273 = inttoptr i64 %4267 to double*
  store double %4272, double* %4273
  store %struct.Memory* %loadMem_41a735, %struct.Memory** %MEMORY
  %loadMem1_41a73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4275 = getelementptr inbounds %struct.GPR, %struct.GPR* %4274, i32 0, i32 33
  %4276 = getelementptr inbounds %struct.Reg, %struct.Reg* %4275, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %4276 to i64*
  %4277 = load i64, i64* %PC.i64
  %4278 = add i64 %4277, -103197
  %4279 = load i64, i64* %PC.i64
  %4280 = add i64 %4279, 5
  %4281 = load i64, i64* %PC.i64
  %4282 = add i64 %4281, 5
  store i64 %4282, i64* %PC.i64
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4284 = load i64, i64* %4283, align 8
  %4285 = add i64 %4284, -8
  %4286 = inttoptr i64 %4285 to i64*
  store i64 %4280, i64* %4286
  store i64 %4285, i64* %4283, align 8
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4278, i64* %4287, align 8
  store %struct.Memory* %loadMem1_41a73d, %struct.Memory** %MEMORY
  %loadMem2_41a73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a73d = load i64, i64* %3
  %4288 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_41a73d)
  store %struct.Memory* %4288, %struct.Memory** %MEMORY
  %loadMem_41a742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4290 = getelementptr inbounds %struct.GPR, %struct.GPR* %4289, i32 0, i32 33
  %4291 = getelementptr inbounds %struct.Reg, %struct.Reg* %4290, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %4291 to i64*
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4293 = getelementptr inbounds %struct.GPR, %struct.GPR* %4292, i32 0, i32 15
  %4294 = getelementptr inbounds %struct.Reg, %struct.Reg* %4293, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %4294 to i64*
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4296 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4295, i64 0, i64 1
  %YMM1.i61 = bitcast %union.VectorReg* %4296 to %"class.std::bitset"*
  %4297 = bitcast %"class.std::bitset"* %YMM1.i61 to i8*
  %4298 = load i64, i64* %RBP.i60
  %4299 = sub i64 %4298, 144
  %4300 = load i64, i64* %PC.i59
  %4301 = add i64 %4300, 8
  store i64 %4301, i64* %PC.i59
  %4302 = inttoptr i64 %4299 to double*
  %4303 = load double, double* %4302
  %4304 = bitcast i8* %4297 to double*
  store double %4303, double* %4304, align 1
  %4305 = getelementptr inbounds i8, i8* %4297, i64 8
  %4306 = bitcast i8* %4305 to double*
  store double 0.000000e+00, double* %4306, align 1
  store %struct.Memory* %loadMem_41a742, %struct.Memory** %MEMORY
  %loadMem_41a74a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 33
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4309 to i64*
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4310, i64 0, i64 1
  %YMM1.i57 = bitcast %union.VectorReg* %4311 to %"class.std::bitset"*
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4312, i64 0, i64 0
  %XMM0.i58 = bitcast %union.VectorReg* %4313 to %union.vec128_t*
  %4314 = bitcast %"class.std::bitset"* %YMM1.i57 to i8*
  %4315 = bitcast %"class.std::bitset"* %YMM1.i57 to i8*
  %4316 = bitcast %union.vec128_t* %XMM0.i58 to i8*
  %4317 = load i64, i64* %PC.i56
  %4318 = add i64 %4317, 4
  store i64 %4318, i64* %PC.i56
  %4319 = bitcast i8* %4315 to double*
  %4320 = load double, double* %4319, align 1
  %4321 = getelementptr inbounds i8, i8* %4315, i64 8
  %4322 = bitcast i8* %4321 to i64*
  %4323 = load i64, i64* %4322, align 1
  %4324 = bitcast i8* %4316 to double*
  %4325 = load double, double* %4324, align 1
  %4326 = fmul double %4320, %4325
  %4327 = bitcast i8* %4314 to double*
  store double %4326, double* %4327, align 1
  %4328 = getelementptr inbounds i8, i8* %4314, i64 8
  %4329 = bitcast i8* %4328 to i64*
  store i64 %4323, i64* %4329, align 1
  store %struct.Memory* %loadMem_41a74a, %struct.Memory** %MEMORY
  %loadMem_41a74e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 33
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4332 to i64*
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 15
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %4335 to i64*
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4337 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4336, i64 0, i64 1
  %YMM1.i55 = bitcast %union.VectorReg* %4337 to %"class.std::bitset"*
  %4338 = bitcast %"class.std::bitset"* %YMM1.i55 to i8*
  %4339 = bitcast %"class.std::bitset"* %YMM1.i55 to i8*
  %4340 = load i64, i64* %RBP.i54
  %4341 = sub i64 %4340, 80
  %4342 = load i64, i64* %PC.i53
  %4343 = add i64 %4342, 5
  store i64 %4343, i64* %PC.i53
  %4344 = bitcast i8* %4339 to double*
  %4345 = load double, double* %4344, align 1
  %4346 = getelementptr inbounds i8, i8* %4339, i64 8
  %4347 = bitcast i8* %4346 to i64*
  %4348 = load i64, i64* %4347, align 1
  %4349 = inttoptr i64 %4341 to double*
  %4350 = load double, double* %4349
  %4351 = fadd double %4345, %4350
  %4352 = bitcast i8* %4338 to double*
  store double %4351, double* %4352, align 1
  %4353 = getelementptr inbounds i8, i8* %4338, i64 8
  %4354 = bitcast i8* %4353 to i64*
  store i64 %4348, i64* %4354, align 1
  store %struct.Memory* %loadMem_41a74e, %struct.Memory** %MEMORY
  %loadMem_41a753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 33
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %4357 to i64*
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 15
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %4360 to i64*
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4362 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4361, i64 0, i64 1
  %XMM1.i52 = bitcast %union.VectorReg* %4362 to %union.vec128_t*
  %4363 = load i64, i64* %RBP.i51
  %4364 = sub i64 %4363, 80
  %4365 = bitcast %union.vec128_t* %XMM1.i52 to i8*
  %4366 = load i64, i64* %PC.i50
  %4367 = add i64 %4366, 5
  store i64 %4367, i64* %PC.i50
  %4368 = bitcast i8* %4365 to double*
  %4369 = load double, double* %4368, align 1
  %4370 = inttoptr i64 %4364 to double*
  store double %4369, double* %4370
  store %struct.Memory* %loadMem_41a753, %struct.Memory** %MEMORY
  %loadMem_41a758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 33
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %4373 to i64*
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4375 = getelementptr inbounds %struct.GPR, %struct.GPR* %4374, i32 0, i32 15
  %4376 = getelementptr inbounds %struct.Reg, %struct.Reg* %4375, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %4376 to i64*
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4378 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4377, i64 0, i64 0
  %YMM0.i49 = bitcast %union.VectorReg* %4378 to %"class.std::bitset"*
  %4379 = bitcast %"class.std::bitset"* %YMM0.i49 to i8*
  %4380 = load i64, i64* %RBP.i48
  %4381 = sub i64 %4380, 80
  %4382 = load i64, i64* %PC.i47
  %4383 = add i64 %4382, 5
  store i64 %4383, i64* %PC.i47
  %4384 = inttoptr i64 %4381 to double*
  %4385 = load double, double* %4384
  %4386 = bitcast i8* %4379 to double*
  store double %4385, double* %4386, align 1
  %4387 = getelementptr inbounds i8, i8* %4379, i64 8
  %4388 = bitcast i8* %4387 to double*
  store double 0.000000e+00, double* %4388, align 1
  store %struct.Memory* %loadMem_41a758, %struct.Memory** %MEMORY
  %loadMem_41a75d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 33
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4391 to i64*
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 15
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %4394 to i64*
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4396 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4395, i64 0, i64 0
  %YMM0.i46 = bitcast %union.VectorReg* %4396 to %"class.std::bitset"*
  %4397 = bitcast %"class.std::bitset"* %YMM0.i46 to i8*
  %4398 = bitcast %"class.std::bitset"* %YMM0.i46 to i8*
  %4399 = load i64, i64* %RBP.i45
  %4400 = sub i64 %4399, 96
  %4401 = load i64, i64* %PC.i44
  %4402 = add i64 %4401, 5
  store i64 %4402, i64* %PC.i44
  %4403 = bitcast i8* %4398 to double*
  %4404 = load double, double* %4403, align 1
  %4405 = getelementptr inbounds i8, i8* %4398, i64 8
  %4406 = bitcast i8* %4405 to i64*
  %4407 = load i64, i64* %4406, align 1
  %4408 = inttoptr i64 %4400 to double*
  %4409 = load double, double* %4408
  %4410 = fdiv double %4404, %4409
  %4411 = bitcast i8* %4397 to double*
  store double %4410, double* %4411, align 1
  %4412 = getelementptr inbounds i8, i8* %4397, i64 8
  %4413 = bitcast i8* %4412 to i64*
  store i64 %4407, i64* %4413, align 1
  store %struct.Memory* %loadMem_41a75d, %struct.Memory** %MEMORY
  %loadMem1_41a762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 33
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %4416 to i64*
  %4417 = load i64, i64* %PC.i43
  %4418 = add i64 %4417, -103026
  %4419 = load i64, i64* %PC.i43
  %4420 = add i64 %4419, 5
  %4421 = load i64, i64* %PC.i43
  %4422 = add i64 %4421, 5
  store i64 %4422, i64* %PC.i43
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4424 = load i64, i64* %4423, align 8
  %4425 = add i64 %4424, -8
  %4426 = inttoptr i64 %4425 to i64*
  store i64 %4420, i64* %4426
  store i64 %4425, i64* %4423, align 8
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4418, i64* %4427, align 8
  store %struct.Memory* %loadMem1_41a762, %struct.Memory** %MEMORY
  %loadMem2_41a762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a762 = load i64, i64* %3
  %4428 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %loadMem2_41a762)
  store %struct.Memory* %4428, %struct.Memory** %MEMORY
  %loadMem_41a767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 33
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %4431 to i64*
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4433 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4432, i64 0, i64 1
  %YMM1.i39 = bitcast %union.VectorReg* %4433 to %"class.std::bitset"*
  %4434 = bitcast %"class.std::bitset"* %YMM1.i39 to i8*
  %4435 = load i64, i64* %PC.i38
  %4436 = add i64 %4435, ptrtoint (%G_0x3a0c1__rip__type* @G_0x3a0c1__rip_ to i64)
  %4437 = load i64, i64* %PC.i38
  %4438 = add i64 %4437, 8
  store i64 %4438, i64* %PC.i38
  %4439 = inttoptr i64 %4436 to double*
  %4440 = load double, double* %4439
  %4441 = bitcast i8* %4434 to double*
  store double %4440, double* %4441, align 1
  %4442 = getelementptr inbounds i8, i8* %4434, i64 8
  %4443 = bitcast i8* %4442 to double*
  store double 0.000000e+00, double* %4443, align 1
  store %struct.Memory* %loadMem_41a767, %struct.Memory** %MEMORY
  %loadMem_41a76f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 33
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %4446 to i64*
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4448 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4447, i64 0, i64 1
  %YMM1.i36 = bitcast %union.VectorReg* %4448 to %"class.std::bitset"*
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4450 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4449, i64 0, i64 0
  %XMM0.i37 = bitcast %union.VectorReg* %4450 to %union.vec128_t*
  %4451 = bitcast %"class.std::bitset"* %YMM1.i36 to i8*
  %4452 = bitcast %"class.std::bitset"* %YMM1.i36 to i8*
  %4453 = bitcast %union.vec128_t* %XMM0.i37 to i8*
  %4454 = load i64, i64* %PC.i35
  %4455 = add i64 %4454, 4
  store i64 %4455, i64* %PC.i35
  %4456 = bitcast i8* %4452 to double*
  %4457 = load double, double* %4456, align 1
  %4458 = getelementptr inbounds i8, i8* %4452, i64 8
  %4459 = bitcast i8* %4458 to i64*
  %4460 = load i64, i64* %4459, align 1
  %4461 = bitcast i8* %4453 to double*
  %4462 = load double, double* %4461, align 1
  %4463 = fmul double %4457, %4462
  %4464 = bitcast i8* %4451 to double*
  store double %4463, double* %4464, align 1
  %4465 = getelementptr inbounds i8, i8* %4451, i64 8
  %4466 = bitcast i8* %4465 to i64*
  store i64 %4460, i64* %4466, align 1
  store %struct.Memory* %loadMem_41a76f, %struct.Memory** %MEMORY
  %loadMem_41a773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 33
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4469 to i64*
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 15
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %4472 to i64*
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4474 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4473, i64 0, i64 0
  %YMM0.i34 = bitcast %union.VectorReg* %4474 to %"class.std::bitset"*
  %4475 = bitcast %"class.std::bitset"* %YMM0.i34 to i8*
  %4476 = load i64, i64* %RBP.i33
  %4477 = sub i64 %4476, 60
  %4478 = load i64, i64* %PC.i32
  %4479 = add i64 %4478, 5
  store i64 %4479, i64* %PC.i32
  %4480 = inttoptr i64 %4477 to float*
  %4481 = load float, float* %4480
  %4482 = fpext float %4481 to double
  %4483 = bitcast i8* %4475 to double*
  store double %4482, double* %4483, align 1
  store %struct.Memory* %loadMem_41a773, %struct.Memory** %MEMORY
  %loadMem_41a778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4485 = getelementptr inbounds %struct.GPR, %struct.GPR* %4484, i32 0, i32 33
  %4486 = getelementptr inbounds %struct.Reg, %struct.Reg* %4485, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %4486 to i64*
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4488 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4487, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %4488 to %"class.std::bitset"*
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4490 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4489, i64 0, i64 0
  %XMM0.i31 = bitcast %union.VectorReg* %4490 to %union.vec128_t*
  %4491 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4492 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4493 = bitcast %union.vec128_t* %XMM0.i31 to i8*
  %4494 = load i64, i64* %PC.i30
  %4495 = add i64 %4494, 4
  store i64 %4495, i64* %PC.i30
  %4496 = bitcast i8* %4492 to double*
  %4497 = load double, double* %4496, align 1
  %4498 = getelementptr inbounds i8, i8* %4492, i64 8
  %4499 = bitcast i8* %4498 to i64*
  %4500 = load i64, i64* %4499, align 1
  %4501 = bitcast i8* %4493 to double*
  %4502 = load double, double* %4501, align 1
  %4503 = fdiv double %4497, %4502
  %4504 = bitcast i8* %4491 to double*
  store double %4503, double* %4504, align 1
  %4505 = getelementptr inbounds i8, i8* %4491, i64 8
  %4506 = bitcast i8* %4505 to i64*
  store i64 %4500, i64* %4506, align 1
  store %struct.Memory* %loadMem_41a778, %struct.Memory** %MEMORY
  %loadMem_41a77c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4508 = getelementptr inbounds %struct.GPR, %struct.GPR* %4507, i32 0, i32 33
  %4509 = getelementptr inbounds %struct.Reg, %struct.Reg* %4508, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4509 to i64*
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4511 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4510, i64 0, i64 0
  %YMM0.i29 = bitcast %union.VectorReg* %4511 to %"class.std::bitset"*
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4513 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4512, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4513 to %union.vec128_t*
  %4514 = bitcast %"class.std::bitset"* %YMM0.i29 to i8*
  %4515 = bitcast %union.vec128_t* %XMM1.i to i8*
  %4516 = load i64, i64* %PC.i28
  %4517 = add i64 %4516, 4
  store i64 %4517, i64* %PC.i28
  %4518 = bitcast i8* %4514 to <2 x i32>*
  %4519 = load <2 x i32>, <2 x i32>* %4518, align 1
  %4520 = getelementptr inbounds i8, i8* %4514, i64 8
  %4521 = bitcast i8* %4520 to <2 x i32>*
  %4522 = load <2 x i32>, <2 x i32>* %4521, align 1
  %4523 = bitcast i8* %4515 to double*
  %4524 = load double, double* %4523, align 1
  %4525 = fptrunc double %4524 to float
  %4526 = bitcast i8* %4514 to float*
  store float %4525, float* %4526, align 1
  %4527 = extractelement <2 x i32> %4519, i32 1
  %4528 = getelementptr inbounds i8, i8* %4514, i64 4
  %4529 = bitcast i8* %4528 to i32*
  store i32 %4527, i32* %4529, align 1
  %4530 = extractelement <2 x i32> %4522, i32 0
  %4531 = bitcast i8* %4520 to i32*
  store i32 %4530, i32* %4531, align 1
  %4532 = extractelement <2 x i32> %4522, i32 1
  %4533 = getelementptr inbounds i8, i8* %4514, i64 12
  %4534 = bitcast i8* %4533 to i32*
  store i32 %4532, i32* %4534, align 1
  store %struct.Memory* %loadMem_41a77c, %struct.Memory** %MEMORY
  %loadMem_41a780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4536 = getelementptr inbounds %struct.GPR, %struct.GPR* %4535, i32 0, i32 33
  %4537 = getelementptr inbounds %struct.Reg, %struct.Reg* %4536, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %4537 to i64*
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4539 = getelementptr inbounds %struct.GPR, %struct.GPR* %4538, i32 0, i32 15
  %4540 = getelementptr inbounds %struct.Reg, %struct.Reg* %4539, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %4540 to i64*
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4542 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4541, i64 0, i64 0
  %XMM0.i27 = bitcast %union.VectorReg* %4542 to %union.vec128_t*
  %4543 = load i64, i64* %RBP.i26
  %4544 = sub i64 %4543, 64
  %4545 = bitcast %union.vec128_t* %XMM0.i27 to i8*
  %4546 = load i64, i64* %PC.i25
  %4547 = add i64 %4546, 5
  store i64 %4547, i64* %PC.i25
  %4548 = bitcast i8* %4545 to <2 x float>*
  %4549 = load <2 x float>, <2 x float>* %4548, align 1
  %4550 = extractelement <2 x float> %4549, i32 0
  %4551 = inttoptr i64 %4544 to float*
  store float %4550, float* %4551
  store %struct.Memory* %loadMem_41a780, %struct.Memory** %MEMORY
  %loadMem_41a785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 33
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4554 to i64*
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 15
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %4557 to i64*
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4559 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4558, i64 0, i64 0
  %YMM0.i24 = bitcast %union.VectorReg* %4559 to %"class.std::bitset"*
  %4560 = bitcast %"class.std::bitset"* %YMM0.i24 to i8*
  %4561 = load i64, i64* %RBP.i23
  %4562 = sub i64 %4561, 60
  %4563 = load i64, i64* %PC.i22
  %4564 = add i64 %4563, 5
  store i64 %4564, i64* %PC.i22
  %4565 = inttoptr i64 %4562 to float*
  %4566 = load float, float* %4565
  %4567 = bitcast i8* %4560 to float*
  store float %4566, float* %4567, align 1
  %4568 = getelementptr inbounds i8, i8* %4560, i64 4
  %4569 = bitcast i8* %4568 to float*
  store float 0.000000e+00, float* %4569, align 1
  %4570 = getelementptr inbounds i8, i8* %4560, i64 8
  %4571 = bitcast i8* %4570 to float*
  store float 0.000000e+00, float* %4571, align 1
  %4572 = getelementptr inbounds i8, i8* %4560, i64 12
  %4573 = bitcast i8* %4572 to float*
  store float 0.000000e+00, float* %4573, align 1
  store %struct.Memory* %loadMem_41a785, %struct.Memory** %MEMORY
  %loadMem_41a78a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4575 = getelementptr inbounds %struct.GPR, %struct.GPR* %4574, i32 0, i32 33
  %4576 = getelementptr inbounds %struct.Reg, %struct.Reg* %4575, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %4576 to i64*
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4578 = getelementptr inbounds %struct.GPR, %struct.GPR* %4577, i32 0, i32 1
  %4579 = getelementptr inbounds %struct.Reg, %struct.Reg* %4578, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %4579 to i64*
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4581 = getelementptr inbounds %struct.GPR, %struct.GPR* %4580, i32 0, i32 15
  %4582 = getelementptr inbounds %struct.Reg, %struct.Reg* %4581, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %4582 to i64*
  %4583 = load i64, i64* %RBP.i21
  %4584 = sub i64 %4583, 56
  %4585 = load i64, i64* %PC.i19
  %4586 = add i64 %4585, 4
  store i64 %4586, i64* %PC.i19
  %4587 = inttoptr i64 %4584 to i64*
  %4588 = load i64, i64* %4587
  store i64 %4588, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_41a78a, %struct.Memory** %MEMORY
  %loadMem_41a78e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4590 = getelementptr inbounds %struct.GPR, %struct.GPR* %4589, i32 0, i32 33
  %4591 = getelementptr inbounds %struct.Reg, %struct.Reg* %4590, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4591 to i64*
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4593 = getelementptr inbounds %struct.GPR, %struct.GPR* %4592, i32 0, i32 1
  %4594 = getelementptr inbounds %struct.Reg, %struct.Reg* %4593, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %4594 to i64*
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4596 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4595, i64 0, i64 0
  %XMM0.i18 = bitcast %union.VectorReg* %4596 to %union.vec128_t*
  %4597 = load i64, i64* %RAX.i17
  %4598 = bitcast %union.vec128_t* %XMM0.i18 to i8*
  %4599 = load i64, i64* %PC.i16
  %4600 = add i64 %4599, 4
  store i64 %4600, i64* %PC.i16
  %4601 = bitcast i8* %4598 to <2 x float>*
  %4602 = load <2 x float>, <2 x float>* %4601, align 1
  %4603 = extractelement <2 x float> %4602, i32 0
  %4604 = inttoptr i64 %4597 to float*
  store float %4603, float* %4604
  store %struct.Memory* %loadMem_41a78e, %struct.Memory** %MEMORY
  %loadMem_41a792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 33
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4607 to i64*
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 15
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %4610 to i64*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4612 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4611, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %4612 to %"class.std::bitset"*
  %4613 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4614 = load i64, i64* %RBP.i15
  %4615 = sub i64 %4614, 64
  %4616 = load i64, i64* %PC.i14
  %4617 = add i64 %4616, 5
  store i64 %4617, i64* %PC.i14
  %4618 = inttoptr i64 %4615 to float*
  %4619 = load float, float* %4618
  %4620 = bitcast i8* %4613 to float*
  store float %4619, float* %4620, align 1
  %4621 = getelementptr inbounds i8, i8* %4613, i64 4
  %4622 = bitcast i8* %4621 to float*
  store float 0.000000e+00, float* %4622, align 1
  %4623 = getelementptr inbounds i8, i8* %4613, i64 8
  %4624 = bitcast i8* %4623 to float*
  store float 0.000000e+00, float* %4624, align 1
  %4625 = getelementptr inbounds i8, i8* %4613, i64 12
  %4626 = bitcast i8* %4625 to float*
  store float 0.000000e+00, float* %4626, align 1
  store %struct.Memory* %loadMem_41a792, %struct.Memory** %MEMORY
  %loadMem_41a797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4628 = getelementptr inbounds %struct.GPR, %struct.GPR* %4627, i32 0, i32 33
  %4629 = getelementptr inbounds %struct.Reg, %struct.Reg* %4628, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4629 to i64*
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 1
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %4632 to i64*
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 15
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %4635 to i64*
  %4636 = load i64, i64* %RBP.i13
  %4637 = sub i64 %4636, 48
  %4638 = load i64, i64* %PC.i11
  %4639 = add i64 %4638, 4
  store i64 %4639, i64* %PC.i11
  %4640 = inttoptr i64 %4637 to i64*
  %4641 = load i64, i64* %4640
  store i64 %4641, i64* %RAX.i12, align 8
  store %struct.Memory* %loadMem_41a797, %struct.Memory** %MEMORY
  %loadMem_41a79b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4643 = getelementptr inbounds %struct.GPR, %struct.GPR* %4642, i32 0, i32 33
  %4644 = getelementptr inbounds %struct.Reg, %struct.Reg* %4643, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4644 to i64*
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4646 = getelementptr inbounds %struct.GPR, %struct.GPR* %4645, i32 0, i32 1
  %4647 = getelementptr inbounds %struct.Reg, %struct.Reg* %4646, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %4647 to i64*
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4649 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4648, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %4649 to %union.vec128_t*
  %4650 = load i64, i64* %RAX.i10
  %4651 = bitcast %union.vec128_t* %XMM0.i to i8*
  %4652 = load i64, i64* %PC.i9
  %4653 = add i64 %4652, 4
  store i64 %4653, i64* %PC.i9
  %4654 = bitcast i8* %4651 to <2 x float>*
  %4655 = load <2 x float>, <2 x float>* %4654, align 1
  %4656 = extractelement <2 x float> %4655, i32 0
  %4657 = inttoptr i64 %4650 to float*
  store float %4656, float* %4657
  store %struct.Memory* %loadMem_41a79b, %struct.Memory** %MEMORY
  %loadMem_41a79f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4659 = getelementptr inbounds %struct.GPR, %struct.GPR* %4658, i32 0, i32 33
  %4660 = getelementptr inbounds %struct.Reg, %struct.Reg* %4659, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4660 to i64*
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 15
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %4663 to i64*
  %4664 = load i64, i64* %RBP.i8
  %4665 = sub i64 %4664, 4
  %4666 = load i64, i64* %PC.i7
  %4667 = add i64 %4666, 7
  store i64 %4667, i64* %PC.i7
  %4668 = inttoptr i64 %4665 to i32*
  store i32 1, i32* %4668
  store %struct.Memory* %loadMem_41a79f, %struct.Memory** %MEMORY
  br label %block_.L_41a7a6

block_.L_41a7a6:                                  ; preds = %block_.L_41a716, %block_41a63d, %block_41a550, %block_41a4ad
  %loadMem_41a7a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4670 = getelementptr inbounds %struct.GPR, %struct.GPR* %4669, i32 0, i32 33
  %4671 = getelementptr inbounds %struct.Reg, %struct.Reg* %4670, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4671 to i64*
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4673 = getelementptr inbounds %struct.GPR, %struct.GPR* %4672, i32 0, i32 1
  %4674 = getelementptr inbounds %struct.Reg, %struct.Reg* %4673, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4674 to i64*
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 15
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %4677 to i64*
  %4678 = load i64, i64* %RBP.i6
  %4679 = sub i64 %4678, 4
  %4680 = load i64, i64* %PC.i5
  %4681 = add i64 %4680, 3
  store i64 %4681, i64* %PC.i5
  %4682 = inttoptr i64 %4679 to i32*
  %4683 = load i32, i32* %4682
  %4684 = zext i32 %4683 to i64
  store i64 %4684, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_41a7a6, %struct.Memory** %MEMORY
  %loadMem_41a7a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4686 = getelementptr inbounds %struct.GPR, %struct.GPR* %4685, i32 0, i32 33
  %4687 = getelementptr inbounds %struct.Reg, %struct.Reg* %4686, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4687 to i64*
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 13
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4690 to i64*
  %4691 = load i64, i64* %RSP.i
  %4692 = load i64, i64* %PC.i4
  %4693 = add i64 %4692, 7
  store i64 %4693, i64* %PC.i4
  %4694 = add i64 144, %4691
  store i64 %4694, i64* %RSP.i, align 8
  %4695 = icmp ult i64 %4694, %4691
  %4696 = icmp ult i64 %4694, 144
  %4697 = or i1 %4695, %4696
  %4698 = zext i1 %4697 to i8
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4698, i8* %4699, align 1
  %4700 = trunc i64 %4694 to i32
  %4701 = and i32 %4700, 255
  %4702 = call i32 @llvm.ctpop.i32(i32 %4701)
  %4703 = trunc i32 %4702 to i8
  %4704 = and i8 %4703, 1
  %4705 = xor i8 %4704, 1
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4705, i8* %4706, align 1
  %4707 = xor i64 144, %4691
  %4708 = xor i64 %4707, %4694
  %4709 = lshr i64 %4708, 4
  %4710 = trunc i64 %4709 to i8
  %4711 = and i8 %4710, 1
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4711, i8* %4712, align 1
  %4713 = icmp eq i64 %4694, 0
  %4714 = zext i1 %4713 to i8
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4714, i8* %4715, align 1
  %4716 = lshr i64 %4694, 63
  %4717 = trunc i64 %4716 to i8
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4717, i8* %4718, align 1
  %4719 = lshr i64 %4691, 63
  %4720 = xor i64 %4716, %4719
  %4721 = add i64 %4720, %4716
  %4722 = icmp eq i64 %4721, 2
  %4723 = zext i1 %4722 to i8
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4723, i8* %4724, align 1
  store %struct.Memory* %loadMem_41a7a9, %struct.Memory** %MEMORY
  %loadMem_41a7b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 33
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4727 to i64*
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4729 = getelementptr inbounds %struct.GPR, %struct.GPR* %4728, i32 0, i32 15
  %4730 = getelementptr inbounds %struct.Reg, %struct.Reg* %4729, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4730 to i64*
  %4731 = load i64, i64* %PC.i2
  %4732 = add i64 %4731, 1
  store i64 %4732, i64* %PC.i2
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4734 = load i64, i64* %4733, align 8
  %4735 = add i64 %4734, 8
  %4736 = inttoptr i64 %4734 to i64*
  %4737 = load i64, i64* %4736
  store i64 %4737, i64* %RBP.i3, align 8
  store i64 %4735, i64* %4733, align 8
  store %struct.Memory* %loadMem_41a7b0, %struct.Memory** %MEMORY
  %loadMem_41a7b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 33
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4740 to i64*
  %4741 = load i64, i64* %PC.i1
  %4742 = add i64 %4741, 1
  store i64 %4742, i64* %PC.i1
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4745 = load i64, i64* %4744, align 8
  %4746 = inttoptr i64 %4745 to i64*
  %4747 = load i64, i64* %4746
  store i64 %4747, i64* %4743, align 8
  %4748 = add i64 %4745, 8
  store i64 %4748, i64* %4744, align 8
  store %struct.Memory* %loadMem_41a7b1, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_41a7b1
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

define %struct.Memory* @routine_movss_0x3a3f9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3a3f9__rip__type* @G_0x3a3f9__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x3a3f5__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3a3f5__rip__type* @G_0x3a3f5__rip_ to i64)
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

define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 36
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

define %struct.Memory* @routine_movq__r9__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm2__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 100
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 60
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

define %struct.Memory* @routine_cmpl__0x64__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_41a424(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x44__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x48__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R9, align 8
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

define %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
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

define %struct.Memory* @routine_movss_MINUS0x3c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_callq_.Lawless422(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x44__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
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

define %struct.Memory* @routine_movaps_0x3b54e__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3b54e__rip__type* @G_0x3b54e__rip_ to i64)
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

define %struct.Memory* @routine_jbe_.L_41a3da(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41a424(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0x44__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
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

define %struct.Memory* @routine_divss_MINUS0x48__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
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

define %struct.Memory* @routine_jb_.L_41a411(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0x3a348__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3a348__rip__type* @G_0x3a348__rip_ to i64)
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 60
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

define %struct.Memory* @routine_jmpq_.L_41a416(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
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

define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41a387(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_41a653(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0x3a30e__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3a30e__rip__type* @G_0x3a30e__rip_ to i64)
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x44__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_41a4f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41a481(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x3a3ec__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3a3ec__rip__type* @G_0x3a3ec__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x6c__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 108
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x6c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
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

define %struct.Memory* @routine_jbe_.L_41a4b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41a7a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0x6c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_ja_.L_41a481(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41a578(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41a4fa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x3a366__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3a366__rip__type* @G_0x3a366__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x70__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_0x3a327__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3a327__rip__type* @G_0x3a327__rip_ to i64)
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

define %struct.Memory* @routine_jbe_.L_41a55c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41a561(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_ja_.L_41a4fa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_41a633(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x3a24f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3a24f__rip__type* @G_0x3a24f__rip_ to i64)
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

define %struct.Memory* @routine_addss_MINUS0x70__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 112
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

define %struct.Memory* @routine_movaps_0x3b333__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3b333__rip__type* @G_0x3b333__rip_ to i64)
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

define %struct.Memory* @routine_jbe_.L_41a5f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41a633(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jbe_.L_41a616(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_MINUS0x74__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
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

define %struct.Memory* @routine_jmpq_.L_41a620(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41a625(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41a57f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_41a649(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_41a716(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_41a690(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x3a15a__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3a15a__rip__type* @G_0x3a15a__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_41a6a2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
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

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_0x3a181__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3a181__rip__type* @G_0x3a181__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x3c__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to float*
  %22 = load float, float* %21
  %23 = fpext float %22 to double
  %24 = bitcast i8* %14 to double*
  store double %23, double* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 136
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

define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
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

define %struct.Memory* @routine_addsd_MINUS0x50__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 80
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

define %struct.Memory* @routine_addsd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
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

define %struct.Memory* @routine_jmpq_.L_41a667(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x3a112__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3a112__rip__type* @G_0x3a112__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
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

define %struct.Memory* @routine_mulsd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
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

define %struct.Memory* @routine_divsd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
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

define %struct.Memory* @routine_movsd_0x3a0c1__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3a0c1__rip__type* @G_0x3a0c1__rip_ to i64)
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x3c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movss_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
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
