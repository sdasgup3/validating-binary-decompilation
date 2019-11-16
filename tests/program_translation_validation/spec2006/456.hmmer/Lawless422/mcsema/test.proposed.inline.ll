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
%G_0x39709__rip__type = type <{ [8 x i8] }>
%G_0x397b0__rip__type = type <{ [8 x i8] }>
%G_0x397fe__rip__type = type <{ [8 x i8] }>
%G_0x3982a__rip__type = type <{ [8 x i8] }>
%G_0x398c9__rip__type = type <{ [8 x i8] }>
%G_0x39921__rip__type = type <{ [8 x i8] }>
%G_0x39953__rip__type = type <{ [8 x i8] }>
%G_0x3997a__rip__type = type <{ [8 x i8] }>
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
@G_0x39709__rip_ = global %G_0x39709__rip__type zeroinitializer
@G_0x397b0__rip_ = global %G_0x397b0__rip__type zeroinitializer
@G_0x397fe__rip_ = global %G_0x397fe__rip__type zeroinitializer
@G_0x3982a__rip_ = global %G_0x3982a__rip__type zeroinitializer
@G_0x398c9__rip_ = global %G_0x398c9__rip__type zeroinitializer
@G_0x39921__rip_ = global %G_0x39921__rip__type zeroinitializer
@G_0x39953__rip_ = global %G_0x39953__rip__type zeroinitializer
@G_0x3997a__rip_ = global %G_0x3997a__rip__type zeroinitializer

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

; Function Attrs: alwaysinline
define %struct.Memory* @Lawless422(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_41ae20 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_41ae20, %struct.Memory** %MEMORY
  %loadMem_41ae21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i97 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i97
  %27 = load i64, i64* %PC.i96
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i96
  store i64 %26, i64* %RBP.i98, align 8
  store %struct.Memory* %loadMem_41ae21, %struct.Memory** %MEMORY
  %loadMem_41ae24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i148 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i148
  %36 = load i64, i64* %PC.i147
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i147
  %38 = sub i64 %35, 160
  store i64 %38, i64* %RSP.i148, align 8
  %39 = icmp ult i64 %35, 160
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
  %49 = xor i64 160, %35
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
  store %struct.Memory* %loadMem_41ae24, %struct.Memory** %MEMORY
  %loadMem_41ae2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 2
  %YMM2.i192 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %73 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %72, i64 0, i64 2
  %XMM2.i193 = bitcast %union.VectorReg* %73 to %union.vec128_t*
  %74 = bitcast %"class.std::bitset"* %YMM2.i192 to i8*
  %75 = bitcast %"class.std::bitset"* %YMM2.i192 to i8*
  %76 = bitcast %union.vec128_t* %XMM2.i193 to i8*
  %77 = load i64, i64* %PC.i191
  %78 = add i64 %77, 3
  store i64 %78, i64* %PC.i191
  %79 = bitcast i8* %75 to i64*
  %80 = load i64, i64* %79, align 1
  %81 = getelementptr inbounds i8, i8* %75, i64 8
  %82 = bitcast i8* %81 to i64*
  %83 = load i64, i64* %82, align 1
  %84 = bitcast i8* %76 to i64*
  %85 = load i64, i64* %84, align 1
  %86 = getelementptr inbounds i8, i8* %76, i64 8
  %87 = bitcast i8* %86 to i64*
  %88 = load i64, i64* %87, align 1
  %89 = xor i64 %85, %80
  %90 = xor i64 %88, %83
  %91 = trunc i64 %89 to i32
  %92 = lshr i64 %89, 32
  %93 = trunc i64 %92 to i32
  %94 = bitcast i8* %74 to i32*
  store i32 %91, i32* %94, align 1
  %95 = getelementptr inbounds i8, i8* %74, i64 4
  %96 = bitcast i8* %95 to i32*
  store i32 %93, i32* %96, align 1
  %97 = trunc i64 %90 to i32
  %98 = getelementptr inbounds i8, i8* %74, i64 8
  %99 = bitcast i8* %98 to i32*
  store i32 %97, i32* %99, align 1
  %100 = lshr i64 %90, 32
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds i8, i8* %74, i64 12
  %103 = bitcast i8* %102 to i32*
  store i32 %101, i32* %103, align 1
  store %struct.Memory* %loadMem_41ae2b, %struct.Memory** %MEMORY
  %loadMem_41ae2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 11
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 15
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %112 to i64*
  %113 = load i64, i64* %RBP.i245
  %114 = sub i64 %113, 8
  %115 = load i64, i64* %RDI.i
  %116 = load i64, i64* %PC.i244
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC.i244
  %118 = inttoptr i64 %114 to i64*
  store i64 %115, i64* %118
  store %struct.Memory* %loadMem_41ae2e, %struct.Memory** %MEMORY
  %loadMem_41ae32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 33
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %121 to i64*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 9
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %127 to i64*
  %128 = load i64, i64* %RBP.i315
  %129 = sub i64 %128, 16
  %130 = load i64, i64* %RSI.i
  %131 = load i64, i64* %PC.i314
  %132 = add i64 %131, 4
  store i64 %132, i64* %PC.i314
  %133 = inttoptr i64 %129 to i64*
  store i64 %130, i64* %133
  store %struct.Memory* %loadMem_41ae32, %struct.Memory** %MEMORY
  %loadMem_41ae36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %139 to i32*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 15
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %RBP.i373
  %144 = sub i64 %143, 20
  %145 = load i32, i32* %EDX.i
  %146 = zext i32 %145 to i64
  %147 = load i64, i64* %PC.i372
  %148 = add i64 %147, 3
  store i64 %148, i64* %PC.i372
  %149 = inttoptr i64 %144 to i32*
  store i32 %145, i32* %149
  store %struct.Memory* %loadMem_41ae36, %struct.Memory** %MEMORY
  %loadMem_41ae39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %155 to i32*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %RBP.i490
  %160 = sub i64 %159, 24
  %161 = load i32, i32* %ECX.i
  %162 = zext i32 %161 to i64
  %163 = load i64, i64* %PC.i489
  %164 = add i64 %163, 3
  store i64 %164, i64* %PC.i489
  %165 = inttoptr i64 %160 to i32*
  store i32 %161, i32* %165
  store %struct.Memory* %loadMem_41ae39, %struct.Memory** %MEMORY
  %loadMem_41ae3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 33
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %168 to i64*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 15
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %171 to i64*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %173 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %172, i64 0, i64 0
  %XMM0.i488 = bitcast %union.VectorReg* %173 to %union.vec128_t*
  %174 = load i64, i64* %RBP.i487
  %175 = sub i64 %174, 28
  %176 = bitcast %union.vec128_t* %XMM0.i488 to i8*
  %177 = load i64, i64* %PC.i486
  %178 = add i64 %177, 5
  store i64 %178, i64* %PC.i486
  %179 = bitcast i8* %176 to <2 x float>*
  %180 = load <2 x float>, <2 x float>* %179, align 1
  %181 = extractelement <2 x float> %180, i32 0
  %182 = inttoptr i64 %175 to float*
  store float %181, float* %182
  store %struct.Memory* %loadMem_41ae3c, %struct.Memory** %MEMORY
  %loadMem_41ae41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 33
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %185 to i64*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 15
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %188 to i64*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %190 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %189, i64 0, i64 1
  %XMM1.i485 = bitcast %union.VectorReg* %190 to %union.vec128_t*
  %191 = load i64, i64* %RBP.i484
  %192 = sub i64 %191, 32
  %193 = bitcast %union.vec128_t* %XMM1.i485 to i8*
  %194 = load i64, i64* %PC.i483
  %195 = add i64 %194, 5
  store i64 %195, i64* %PC.i483
  %196 = bitcast i8* %193 to <2 x float>*
  %197 = load <2 x float>, <2 x float>* %196, align 1
  %198 = extractelement <2 x float> %197, i32 0
  %199 = inttoptr i64 %192 to float*
  store float %198, float* %199
  store %struct.Memory* %loadMem_41ae41, %struct.Memory** %MEMORY
  %loadMem_41ae46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 33
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 15
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 17
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %R8.i = bitcast %union.anon* %208 to i64*
  %209 = load i64, i64* %RBP.i482
  %210 = sub i64 %209, 40
  %211 = load i64, i64* %R8.i
  %212 = load i64, i64* %PC.i481
  %213 = add i64 %212, 4
  store i64 %213, i64* %PC.i481
  %214 = inttoptr i64 %210 to i64*
  store i64 %211, i64* %214
  store %struct.Memory* %loadMem_41ae46, %struct.Memory** %MEMORY
  %loadMem_41ae4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 33
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 15
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 19
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %R9.i = bitcast %union.anon* %223 to i64*
  %224 = load i64, i64* %RBP.i480
  %225 = sub i64 %224, 48
  %226 = load i64, i64* %R9.i
  %227 = load i64, i64* %PC.i479
  %228 = add i64 %227, 4
  store i64 %228, i64* %PC.i479
  %229 = inttoptr i64 %225 to i64*
  store i64 %226, i64* %229
  store %struct.Memory* %loadMem_41ae4a, %struct.Memory** %MEMORY
  %loadMem_41ae4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 33
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 15
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %237 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %236, i64 0, i64 2
  %XMM2.i478 = bitcast %union.VectorReg* %237 to %union.vec128_t*
  %238 = load i64, i64* %RBP.i477
  %239 = sub i64 %238, 96
  %240 = bitcast %union.vec128_t* %XMM2.i478 to i8*
  %241 = load i64, i64* %PC.i476
  %242 = add i64 %241, 5
  store i64 %242, i64* %PC.i476
  %243 = bitcast i8* %240 to double*
  %244 = load double, double* %243, align 1
  %245 = inttoptr i64 %239 to double*
  store double %244, double* %245
  store %struct.Memory* %loadMem_41ae4e, %struct.Memory** %MEMORY
  %loadMem_41ae53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 33
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 15
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %251 to i64*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %253 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %252, i64 0, i64 2
  %XMM2.i475 = bitcast %union.VectorReg* %253 to %union.vec128_t*
  %254 = load i64, i64* %RBP.i474
  %255 = sub i64 %254, 72
  %256 = bitcast %union.vec128_t* %XMM2.i475 to i8*
  %257 = load i64, i64* %PC.i473
  %258 = add i64 %257, 5
  store i64 %258, i64* %PC.i473
  %259 = bitcast i8* %256 to double*
  %260 = load double, double* %259, align 1
  %261 = inttoptr i64 %255 to double*
  store double %260, double* %261
  store %struct.Memory* %loadMem_41ae53, %struct.Memory** %MEMORY
  %loadMem_41ae58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 33
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %264 to i64*
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 15
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %268, i64 0, i64 2
  %XMM2.i472 = bitcast %union.VectorReg* %269 to %union.vec128_t*
  %270 = load i64, i64* %RBP.i471
  %271 = sub i64 %270, 80
  %272 = bitcast %union.vec128_t* %XMM2.i472 to i8*
  %273 = load i64, i64* %PC.i470
  %274 = add i64 %273, 5
  store i64 %274, i64* %PC.i470
  %275 = bitcast i8* %272 to double*
  %276 = load double, double* %275, align 1
  %277 = inttoptr i64 %271 to double*
  store double %276, double* %277
  store %struct.Memory* %loadMem_41ae58, %struct.Memory** %MEMORY
  %loadMem_41ae5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 33
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %280 to i64*
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 15
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %284, i64 0, i64 2
  %XMM2.i469 = bitcast %union.VectorReg* %285 to %union.vec128_t*
  %286 = load i64, i64* %RBP.i468
  %287 = sub i64 %286, 64
  %288 = bitcast %union.vec128_t* %XMM2.i469 to i8*
  %289 = load i64, i64* %PC.i467
  %290 = add i64 %289, 5
  store i64 %290, i64* %PC.i467
  %291 = bitcast i8* %288 to double*
  %292 = load double, double* %291, align 1
  %293 = inttoptr i64 %287 to double*
  store double %292, double* %293
  store %struct.Memory* %loadMem_41ae5d, %struct.Memory** %MEMORY
  %loadMem_41ae62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 15
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RBP.i465 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %300, i64 0, i64 2
  %XMM2.i466 = bitcast %union.VectorReg* %301 to %union.vec128_t*
  %302 = load i64, i64* %RBP.i465
  %303 = sub i64 %302, 56
  %304 = bitcast %union.vec128_t* %XMM2.i466 to i8*
  %305 = load i64, i64* %PC.i464
  %306 = add i64 %305, 5
  store i64 %306, i64* %PC.i464
  %307 = bitcast i8* %304 to double*
  %308 = load double, double* %307, align 1
  %309 = inttoptr i64 %303 to double*
  store double %308, double* %309
  store %struct.Memory* %loadMem_41ae62, %struct.Memory** %MEMORY
  %loadMem_41ae67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 33
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 15
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %315 to i64*
  %316 = load i64, i64* %RBP.i463
  %317 = sub i64 %316, 100
  %318 = load i64, i64* %PC.i462
  %319 = add i64 %318, 7
  store i64 %319, i64* %PC.i462
  %320 = inttoptr i64 %317 to i32*
  store i32 0, i32* %320
  store %struct.Memory* %loadMem_41ae67, %struct.Memory** %MEMORY
  br label %block_.L_41ae6e

block_.L_41ae6e:                                  ; preds = %block_.L_41aea9, %entry
  %loadMem_41ae6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 33
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %323 to i64*
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %326 to i64*
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 15
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %329 to i64*
  %330 = load i64, i64* %RBP.i461
  %331 = sub i64 %330, 100
  %332 = load i64, i64* %PC.i459
  %333 = add i64 %332, 3
  store i64 %333, i64* %PC.i459
  %334 = inttoptr i64 %331 to i32*
  %335 = load i32, i32* %334
  %336 = zext i32 %335 to i64
  store i64 %336, i64* %RAX.i460, align 8
  store %struct.Memory* %loadMem_41ae6e, %struct.Memory** %MEMORY
  %loadMem_41ae71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 33
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %339 to i64*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %EAX.i457 = bitcast %union.anon* %342 to i32*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 15
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %345 to i64*
  %346 = load i32, i32* %EAX.i457
  %347 = zext i32 %346 to i64
  %348 = load i64, i64* %RBP.i458
  %349 = sub i64 %348, 20
  %350 = load i64, i64* %PC.i456
  %351 = add i64 %350, 3
  store i64 %351, i64* %PC.i456
  %352 = inttoptr i64 %349 to i32*
  %353 = load i32, i32* %352
  %354 = sub i32 %346, %353
  %355 = icmp ult i32 %346, %353
  %356 = zext i1 %355 to i8
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %356, i8* %357, align 1
  %358 = and i32 %354, 255
  %359 = call i32 @llvm.ctpop.i32(i32 %358)
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %362, i8* %363, align 1
  %364 = xor i32 %353, %346
  %365 = xor i32 %364, %354
  %366 = lshr i32 %365, 4
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %368, i8* %369, align 1
  %370 = icmp eq i32 %354, 0
  %371 = zext i1 %370 to i8
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %371, i8* %372, align 1
  %373 = lshr i32 %354, 31
  %374 = trunc i32 %373 to i8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %374, i8* %375, align 1
  %376 = lshr i32 %346, 31
  %377 = lshr i32 %353, 31
  %378 = xor i32 %377, %376
  %379 = xor i32 %373, %376
  %380 = add i32 %379, %378
  %381 = icmp eq i32 %380, 2
  %382 = zext i1 %381 to i8
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %382, i8* %383, align 1
  store %struct.Memory* %loadMem_41ae71, %struct.Memory** %MEMORY
  %loadMem_41ae74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 33
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %386 to i64*
  %387 = load i64, i64* %PC.i455
  %388 = add i64 %387, 394
  %389 = load i64, i64* %PC.i455
  %390 = add i64 %389, 6
  %391 = load i64, i64* %PC.i455
  %392 = add i64 %391, 6
  store i64 %392, i64* %PC.i455
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %394 = load i8, i8* %393, align 1
  %395 = icmp ne i8 %394, 0
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %397 = load i8, i8* %396, align 1
  %398 = icmp ne i8 %397, 0
  %399 = xor i1 %395, %398
  %400 = xor i1 %399, true
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %BRANCH_TAKEN, align 1
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %403 = select i1 %399, i64 %390, i64 %388
  store i64 %403, i64* %402, align 8
  store %struct.Memory* %loadMem_41ae74, %struct.Memory** %MEMORY
  %loadBr_41ae74 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ae74 = icmp eq i8 %loadBr_41ae74, 1
  br i1 %cmpBr_41ae74, label %block_.L_41affe, label %block_41ae7a

block_41ae7a:                                     ; preds = %block_.L_41ae6e
  %loadMem_41ae7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 33
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %406 to i64*
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 15
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %409 to i64*
  %410 = load i64, i64* %RBP.i454
  %411 = sub i64 %410, 16
  %412 = load i64, i64* %PC.i453
  %413 = add i64 %412, 5
  store i64 %413, i64* %PC.i453
  %414 = inttoptr i64 %411 to i64*
  %415 = load i64, i64* %414
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %416, align 1
  %417 = trunc i64 %415 to i32
  %418 = and i32 %417, 255
  %419 = call i32 @llvm.ctpop.i32(i32 %418)
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = xor i8 %421, 1
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %422, i8* %423, align 1
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %424, align 1
  %425 = icmp eq i64 %415, 0
  %426 = zext i1 %425 to i8
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %426, i8* %427, align 1
  %428 = lshr i64 %415, 63
  %429 = trunc i64 %428 to i8
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %429, i8* %430, align 1
  %431 = lshr i64 %415, 63
  %432 = xor i64 %428, %431
  %433 = add i64 %432, %431
  %434 = icmp eq i64 %433, 2
  %435 = zext i1 %434 to i8
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %435, i8* %436, align 1
  store %struct.Memory* %loadMem_41ae7a, %struct.Memory** %MEMORY
  %loadMem_41ae7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 33
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %439 to i64*
  %440 = load i64, i64* %PC.i452
  %441 = add i64 %440, 24
  %442 = load i64, i64* %PC.i452
  %443 = add i64 %442, 6
  %444 = load i64, i64* %PC.i452
  %445 = add i64 %444, 6
  store i64 %445, i64* %PC.i452
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %447 = load i8, i8* %446, align 1
  %448 = icmp eq i8 %447, 0
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %BRANCH_TAKEN, align 1
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %451 = select i1 %448, i64 %441, i64 %443
  store i64 %451, i64* %450, align 8
  store %struct.Memory* %loadMem_41ae7f, %struct.Memory** %MEMORY
  %loadBr_41ae7f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ae7f = icmp eq i8 %loadBr_41ae7f, 1
  br i1 %cmpBr_41ae7f, label %block_.L_41ae97, label %block_41ae85

block_41ae85:                                     ; preds = %block_41ae7a
  %loadMem_41ae85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 33
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %454 to i64*
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %456 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %455, i64 0, i64 0
  %YMM0.i451 = bitcast %union.VectorReg* %456 to %"class.std::bitset"*
  %457 = bitcast %"class.std::bitset"* %YMM0.i451 to i8*
  %458 = load i64, i64* %PC.i450
  %459 = add i64 %458, ptrtoint (%G_0x39953__rip__type* @G_0x39953__rip_ to i64)
  %460 = load i64, i64* %PC.i450
  %461 = add i64 %460, 8
  store i64 %461, i64* %PC.i450
  %462 = inttoptr i64 %459 to double*
  %463 = load double, double* %462
  %464 = bitcast i8* %457 to double*
  store double %463, double* %464, align 1
  %465 = getelementptr inbounds i8, i8* %457, i64 8
  %466 = bitcast i8* %465 to double*
  store double 0.000000e+00, double* %466, align 1
  store %struct.Memory* %loadMem_41ae85, %struct.Memory** %MEMORY
  %loadMem_41ae8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 33
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %469 to i64*
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 15
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %472 to i64*
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %474 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %473, i64 0, i64 0
  %XMM0.i449 = bitcast %union.VectorReg* %474 to %union.vec128_t*
  %475 = load i64, i64* %RBP.i448
  %476 = sub i64 %475, 112
  %477 = bitcast %union.vec128_t* %XMM0.i449 to i8*
  %478 = load i64, i64* %PC.i447
  %479 = add i64 %478, 5
  store i64 %479, i64* %PC.i447
  %480 = bitcast i8* %477 to double*
  %481 = load double, double* %480, align 1
  %482 = inttoptr i64 %476 to double*
  store double %481, double* %482
  store %struct.Memory* %loadMem_41ae8d, %struct.Memory** %MEMORY
  %loadMem_41ae92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 33
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %485 to i64*
  %486 = load i64, i64* %PC.i446
  %487 = add i64 %486, 23
  %488 = load i64, i64* %PC.i446
  %489 = add i64 %488, 5
  store i64 %489, i64* %PC.i446
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %487, i64* %490, align 8
  store %struct.Memory* %loadMem_41ae92, %struct.Memory** %MEMORY
  br label %block_.L_41aea9

block_.L_41ae97:                                  ; preds = %block_41ae7a
  %loadMem_41ae97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 33
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %496 to i64*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 15
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %499 to i64*
  %500 = load i64, i64* %RBP.i445
  %501 = sub i64 %500, 16
  %502 = load i64, i64* %PC.i443
  %503 = add i64 %502, 4
  store i64 %503, i64* %PC.i443
  %504 = inttoptr i64 %501 to i64*
  %505 = load i64, i64* %504
  store i64 %505, i64* %RAX.i444, align 8
  store %struct.Memory* %loadMem_41ae97, %struct.Memory** %MEMORY
  %loadMem_41ae9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 33
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %508 to i64*
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 5
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 15
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %514 to i64*
  %515 = load i64, i64* %RBP.i442
  %516 = sub i64 %515, 100
  %517 = load i64, i64* %PC.i440
  %518 = add i64 %517, 4
  store i64 %518, i64* %PC.i440
  %519 = inttoptr i64 %516 to i32*
  %520 = load i32, i32* %519
  %521 = sext i32 %520 to i64
  store i64 %521, i64* %RCX.i441, align 8
  store %struct.Memory* %loadMem_41ae9b, %struct.Memory** %MEMORY
  %loadMem_41ae9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 33
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %524 to i64*
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 1
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %527 to i64*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 5
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %RCX.i438 = bitcast %union.anon* %530 to i64*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %532 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %531, i64 0, i64 0
  %YMM0.i439 = bitcast %union.VectorReg* %532 to %"class.std::bitset"*
  %533 = bitcast %"class.std::bitset"* %YMM0.i439 to i8*
  %534 = load i64, i64* %RAX.i437
  %535 = load i64, i64* %RCX.i438
  %536 = mul i64 %535, 4
  %537 = add i64 %536, %534
  %538 = load i64, i64* %PC.i436
  %539 = add i64 %538, 5
  store i64 %539, i64* %PC.i436
  %540 = inttoptr i64 %537 to i32*
  %541 = load i32, i32* %540
  %542 = sitofp i32 %541 to double
  %543 = bitcast i8* %533 to double*
  store double %542, double* %543, align 1
  store %struct.Memory* %loadMem_41ae9f, %struct.Memory** %MEMORY
  %loadMem_41aea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 33
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 15
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %549 to i64*
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %551 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %550, i64 0, i64 0
  %XMM0.i435 = bitcast %union.VectorReg* %551 to %union.vec128_t*
  %552 = load i64, i64* %RBP.i434
  %553 = sub i64 %552, 112
  %554 = bitcast %union.vec128_t* %XMM0.i435 to i8*
  %555 = load i64, i64* %PC.i433
  %556 = add i64 %555, 5
  store i64 %556, i64* %PC.i433
  %557 = bitcast i8* %554 to double*
  %558 = load double, double* %557, align 1
  %559 = inttoptr i64 %553 to double*
  store double %558, double* %559
  store %struct.Memory* %loadMem_41aea4, %struct.Memory** %MEMORY
  br label %block_.L_41aea9

block_.L_41aea9:                                  ; preds = %block_.L_41ae97, %block_41ae85
  %loadMem_41aea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 33
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %562 to i64*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 15
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %565 to i64*
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %567 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %566, i64 0, i64 0
  %YMM0.i432 = bitcast %union.VectorReg* %567 to %"class.std::bitset"*
  %568 = bitcast %"class.std::bitset"* %YMM0.i432 to i8*
  %569 = load i64, i64* %RBP.i431
  %570 = sub i64 %569, 112
  %571 = load i64, i64* %PC.i430
  %572 = add i64 %571, 5
  store i64 %572, i64* %PC.i430
  %573 = inttoptr i64 %570 to double*
  %574 = load double, double* %573
  %575 = bitcast i8* %568 to double*
  store double %574, double* %575, align 1
  %576 = getelementptr inbounds i8, i8* %568, i64 8
  %577 = bitcast i8* %576 to double*
  store double 0.000000e+00, double* %577, align 1
  store %struct.Memory* %loadMem_41aea9, %struct.Memory** %MEMORY
  %loadMem_41aeae = load %struct.Memory*, %struct.Memory** %MEMORY
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 33
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %582 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %581, i64 0, i64 1
  %YMM1.i429 = bitcast %union.VectorReg* %582 to %"class.std::bitset"*
  %583 = bitcast %"class.std::bitset"* %YMM1.i429 to i8*
  %584 = load i64, i64* %PC.i428
  %585 = add i64 %584, ptrtoint (%G_0x3997a__rip__type* @G_0x3997a__rip_ to i64)
  %586 = load i64, i64* %PC.i428
  %587 = add i64 %586, 8
  store i64 %587, i64* %PC.i428
  %588 = inttoptr i64 %585 to double*
  %589 = load double, double* %588
  %590 = bitcast i8* %583 to double*
  store double %589, double* %590, align 1
  %591 = getelementptr inbounds i8, i8* %583, i64 8
  %592 = bitcast i8* %591 to double*
  store double 0.000000e+00, double* %592, align 1
  store %struct.Memory* %loadMem_41aeae, %struct.Memory** %MEMORY
  %loadMem_41aeb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 33
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %595 to i64*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 15
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %600 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %599, i64 0, i64 0
  %XMM0.i427 = bitcast %union.VectorReg* %600 to %union.vec128_t*
  %601 = load i64, i64* %RBP.i426
  %602 = sub i64 %601, 88
  %603 = bitcast %union.vec128_t* %XMM0.i427 to i8*
  %604 = load i64, i64* %PC.i425
  %605 = add i64 %604, 5
  store i64 %605, i64* %PC.i425
  %606 = bitcast i8* %603 to double*
  %607 = load double, double* %606, align 1
  %608 = inttoptr i64 %602 to double*
  store double %607, double* %608
  store %struct.Memory* %loadMem_41aeb6, %struct.Memory** %MEMORY
  %loadMem_41aebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 33
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 15
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %616 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %615, i64 0, i64 0
  %YMM0.i424 = bitcast %union.VectorReg* %616 to %"class.std::bitset"*
  %617 = bitcast %"class.std::bitset"* %YMM0.i424 to i8*
  %618 = load i64, i64* %RBP.i423
  %619 = sub i64 %618, 88
  %620 = load i64, i64* %PC.i422
  %621 = add i64 %620, 5
  store i64 %621, i64* %PC.i422
  %622 = inttoptr i64 %619 to double*
  %623 = load double, double* %622
  %624 = bitcast i8* %617 to double*
  store double %623, double* %624, align 1
  %625 = getelementptr inbounds i8, i8* %617, i64 8
  %626 = bitcast i8* %625 to double*
  store double 0.000000e+00, double* %626, align 1
  store %struct.Memory* %loadMem_41aebb, %struct.Memory** %MEMORY
  %loadMem_41aec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 33
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %629 to i64*
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 1
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %RAX.i420 = bitcast %union.anon* %632 to i64*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 15
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %635 to i64*
  %636 = load i64, i64* %RBP.i421
  %637 = sub i64 %636, 8
  %638 = load i64, i64* %PC.i419
  %639 = add i64 %638, 4
  store i64 %639, i64* %PC.i419
  %640 = inttoptr i64 %637 to i64*
  %641 = load i64, i64* %640
  store i64 %641, i64* %RAX.i420, align 8
  store %struct.Memory* %loadMem_41aec0, %struct.Memory** %MEMORY
  %loadMem_41aec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 33
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %644 to i64*
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 5
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %RCX.i417 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 15
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %650 to i64*
  %651 = load i64, i64* %RBP.i418
  %652 = sub i64 %651, 100
  %653 = load i64, i64* %PC.i416
  %654 = add i64 %653, 4
  store i64 %654, i64* %PC.i416
  %655 = inttoptr i64 %652 to i32*
  %656 = load i32, i32* %655
  %657 = sext i32 %656 to i64
  store i64 %657, i64* %RCX.i417, align 8
  store %struct.Memory* %loadMem_41aec4, %struct.Memory** %MEMORY
  %loadMem_41aec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 33
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 1
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 5
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %RCX.i414 = bitcast %union.anon* %666 to i64*
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %668 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %667, i64 0, i64 2
  %YMM2.i415 = bitcast %union.VectorReg* %668 to %"class.std::bitset"*
  %669 = bitcast %"class.std::bitset"* %YMM2.i415 to i8*
  %670 = load i64, i64* %RAX.i413
  %671 = load i64, i64* %RCX.i414
  %672 = mul i64 %671, 4
  %673 = add i64 %672, %670
  %674 = load i64, i64* %PC.i412
  %675 = add i64 %674, 5
  store i64 %675, i64* %PC.i412
  %676 = inttoptr i64 %673 to float*
  %677 = load float, float* %676
  %678 = fpext float %677 to double
  %679 = bitcast i8* %669 to double*
  store double %678, double* %679, align 1
  store %struct.Memory* %loadMem_41aec8, %struct.Memory** %MEMORY
  %loadMem_41aecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 33
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %682 to i64*
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %684 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %683, i64 0, i64 0
  %YMM0.i410 = bitcast %union.VectorReg* %684 to %"class.std::bitset"*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %686 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %685, i64 0, i64 2
  %XMM2.i411 = bitcast %union.VectorReg* %686 to %union.vec128_t*
  %687 = bitcast %"class.std::bitset"* %YMM0.i410 to i8*
  %688 = bitcast %"class.std::bitset"* %YMM0.i410 to i8*
  %689 = bitcast %union.vec128_t* %XMM2.i411 to i8*
  %690 = load i64, i64* %PC.i409
  %691 = add i64 %690, 4
  store i64 %691, i64* %PC.i409
  %692 = bitcast i8* %688 to double*
  %693 = load double, double* %692, align 1
  %694 = getelementptr inbounds i8, i8* %688, i64 8
  %695 = bitcast i8* %694 to i64*
  %696 = load i64, i64* %695, align 1
  %697 = bitcast i8* %689 to double*
  %698 = load double, double* %697, align 1
  %699 = fmul double %693, %698
  %700 = bitcast i8* %687 to double*
  store double %699, double* %700, align 1
  %701 = getelementptr inbounds i8, i8* %687, i64 8
  %702 = bitcast i8* %701 to i64*
  store i64 %696, i64* %702, align 1
  store %struct.Memory* %loadMem_41aecd, %struct.Memory** %MEMORY
  %loadMem_41aed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 15
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %710 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %709, i64 0, i64 0
  %YMM0.i408 = bitcast %union.VectorReg* %710 to %"class.std::bitset"*
  %711 = bitcast %"class.std::bitset"* %YMM0.i408 to i8*
  %712 = bitcast %"class.std::bitset"* %YMM0.i408 to i8*
  %713 = load i64, i64* %RBP.i407
  %714 = sub i64 %713, 80
  %715 = load i64, i64* %PC.i406
  %716 = add i64 %715, 5
  store i64 %716, i64* %PC.i406
  %717 = bitcast i8* %712 to double*
  %718 = load double, double* %717, align 1
  %719 = getelementptr inbounds i8, i8* %712, i64 8
  %720 = bitcast i8* %719 to i64*
  %721 = load i64, i64* %720, align 1
  %722 = inttoptr i64 %714 to double*
  %723 = load double, double* %722
  %724 = fadd double %718, %723
  %725 = bitcast i8* %711 to double*
  store double %724, double* %725, align 1
  %726 = getelementptr inbounds i8, i8* %711, i64 8
  %727 = bitcast i8* %726 to i64*
  store i64 %721, i64* %727, align 1
  store %struct.Memory* %loadMem_41aed1, %struct.Memory** %MEMORY
  %loadMem_41aed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 33
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 15
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %733 to i64*
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %735 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %734, i64 0, i64 0
  %XMM0.i405 = bitcast %union.VectorReg* %735 to %union.vec128_t*
  %736 = load i64, i64* %RBP.i404
  %737 = sub i64 %736, 80
  %738 = bitcast %union.vec128_t* %XMM0.i405 to i8*
  %739 = load i64, i64* %PC.i403
  %740 = add i64 %739, 5
  store i64 %740, i64* %PC.i403
  %741 = bitcast i8* %738 to double*
  %742 = load double, double* %741, align 1
  %743 = inttoptr i64 %737 to double*
  store double %742, double* %743
  store %struct.Memory* %loadMem_41aed6, %struct.Memory** %MEMORY
  %loadMem_41aedb = load %struct.Memory*, %struct.Memory** %MEMORY
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 33
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %746 to i64*
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 15
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %749 to i64*
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %751 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %750, i64 0, i64 0
  %YMM0.i402 = bitcast %union.VectorReg* %751 to %"class.std::bitset"*
  %752 = bitcast %"class.std::bitset"* %YMM0.i402 to i8*
  %753 = load i64, i64* %RBP.i401
  %754 = sub i64 %753, 88
  %755 = load i64, i64* %PC.i400
  %756 = add i64 %755, 5
  store i64 %756, i64* %PC.i400
  %757 = inttoptr i64 %754 to double*
  %758 = load double, double* %757
  %759 = bitcast i8* %752 to double*
  store double %758, double* %759, align 1
  %760 = getelementptr inbounds i8, i8* %752, i64 8
  %761 = bitcast i8* %760 to double*
  store double 0.000000e+00, double* %761, align 1
  store %struct.Memory* %loadMem_41aedb, %struct.Memory** %MEMORY
  %loadMem_41aee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 33
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %764 to i64*
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 15
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %767 to i64*
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %769 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %768, i64 0, i64 2
  %YMM2.i399 = bitcast %union.VectorReg* %769 to %"class.std::bitset"*
  %770 = bitcast %"class.std::bitset"* %YMM2.i399 to i8*
  %771 = load i64, i64* %RBP.i398
  %772 = sub i64 %771, 32
  %773 = load i64, i64* %PC.i397
  %774 = add i64 %773, 5
  store i64 %774, i64* %PC.i397
  %775 = inttoptr i64 %772 to float*
  %776 = load float, float* %775
  %777 = fpext float %776 to double
  %778 = bitcast i8* %770 to double*
  store double %777, double* %778, align 1
  store %struct.Memory* %loadMem_41aee0, %struct.Memory** %MEMORY
  %loadMem_41aee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 33
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %781 to i64*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %783 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %782, i64 0, i64 1
  %YMM1.i395 = bitcast %union.VectorReg* %783 to %"class.std::bitset"*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %785 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %784, i64 0, i64 2
  %XMM2.i396 = bitcast %union.VectorReg* %785 to %union.vec128_t*
  %786 = bitcast %"class.std::bitset"* %YMM1.i395 to i8*
  %787 = bitcast %"class.std::bitset"* %YMM1.i395 to i8*
  %788 = bitcast %union.vec128_t* %XMM2.i396 to i8*
  %789 = load i64, i64* %PC.i394
  %790 = add i64 %789, 4
  store i64 %790, i64* %PC.i394
  %791 = bitcast i8* %787 to double*
  %792 = load double, double* %791, align 1
  %793 = getelementptr inbounds i8, i8* %787, i64 8
  %794 = bitcast i8* %793 to i64*
  %795 = load i64, i64* %794, align 1
  %796 = bitcast i8* %788 to double*
  %797 = load double, double* %796, align 1
  %798 = fmul double %792, %797
  %799 = bitcast i8* %786 to double*
  store double %798, double* %799, align 1
  %800 = getelementptr inbounds i8, i8* %786, i64 8
  %801 = bitcast i8* %800 to i64*
  store i64 %795, i64* %801, align 1
  store %struct.Memory* %loadMem_41aee5, %struct.Memory** %MEMORY
  %loadMem_41aee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 33
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %804 to i64*
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 1
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %807 to i64*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 15
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %810 to i64*
  %811 = load i64, i64* %RBP.i393
  %812 = sub i64 %811, 8
  %813 = load i64, i64* %PC.i391
  %814 = add i64 %813, 4
  store i64 %814, i64* %PC.i391
  %815 = inttoptr i64 %812 to i64*
  %816 = load i64, i64* %815
  store i64 %816, i64* %RAX.i392, align 8
  store %struct.Memory* %loadMem_41aee9, %struct.Memory** %MEMORY
  %loadMem_41aeed = load %struct.Memory*, %struct.Memory** %MEMORY
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 33
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %819 to i64*
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 5
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %RCX.i389 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 15
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %825 to i64*
  %826 = load i64, i64* %RBP.i390
  %827 = sub i64 %826, 100
  %828 = load i64, i64* %PC.i388
  %829 = add i64 %828, 4
  store i64 %829, i64* %PC.i388
  %830 = inttoptr i64 %827 to i32*
  %831 = load i32, i32* %830
  %832 = sext i32 %831 to i64
  store i64 %832, i64* %RCX.i389, align 8
  store %struct.Memory* %loadMem_41aeed, %struct.Memory** %MEMORY
  %loadMem_41aef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 33
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 1
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %838 to i64*
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 5
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %RCX.i386 = bitcast %union.anon* %841 to i64*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %843 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %842, i64 0, i64 2
  %YMM2.i387 = bitcast %union.VectorReg* %843 to %"class.std::bitset"*
  %844 = bitcast %"class.std::bitset"* %YMM2.i387 to i8*
  %845 = load i64, i64* %RAX.i385
  %846 = load i64, i64* %RCX.i386
  %847 = mul i64 %846, 4
  %848 = add i64 %847, %845
  %849 = load i64, i64* %PC.i384
  %850 = add i64 %849, 5
  store i64 %850, i64* %PC.i384
  %851 = inttoptr i64 %848 to float*
  %852 = load float, float* %851
  %853 = fpext float %852 to double
  %854 = bitcast i8* %844 to double*
  store double %853, double* %854, align 1
  store %struct.Memory* %loadMem_41aef1, %struct.Memory** %MEMORY
  %loadMem_41aef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 33
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %857 to i64*
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %859 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %858, i64 0, i64 1
  %YMM1.i382 = bitcast %union.VectorReg* %859 to %"class.std::bitset"*
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %861 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %860, i64 0, i64 2
  %XMM2.i383 = bitcast %union.VectorReg* %861 to %union.vec128_t*
  %862 = bitcast %"class.std::bitset"* %YMM1.i382 to i8*
  %863 = bitcast %"class.std::bitset"* %YMM1.i382 to i8*
  %864 = bitcast %union.vec128_t* %XMM2.i383 to i8*
  %865 = load i64, i64* %PC.i381
  %866 = add i64 %865, 4
  store i64 %866, i64* %PC.i381
  %867 = bitcast i8* %863 to double*
  %868 = load double, double* %867, align 1
  %869 = getelementptr inbounds i8, i8* %863, i64 8
  %870 = bitcast i8* %869 to i64*
  %871 = load i64, i64* %870, align 1
  %872 = bitcast i8* %864 to double*
  %873 = load double, double* %872, align 1
  %874 = fmul double %868, %873
  %875 = bitcast i8* %862 to double*
  store double %874, double* %875, align 1
  %876 = getelementptr inbounds i8, i8* %862, i64 8
  %877 = bitcast i8* %876 to i64*
  store i64 %871, i64* %877, align 1
  store %struct.Memory* %loadMem_41aef6, %struct.Memory** %MEMORY
  %loadMem_41aefa = load %struct.Memory*, %struct.Memory** %MEMORY
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 33
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %880 to i64*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 15
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %883 to i64*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %885 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %884, i64 0, i64 0
  %XMM0.i380 = bitcast %union.VectorReg* %885 to %union.vec128_t*
  %886 = load i64, i64* %RBP.i379
  %887 = sub i64 %886, 120
  %888 = bitcast %union.vec128_t* %XMM0.i380 to i8*
  %889 = load i64, i64* %PC.i378
  %890 = add i64 %889, 5
  store i64 %890, i64* %PC.i378
  %891 = bitcast i8* %888 to double*
  %892 = load double, double* %891, align 1
  %893 = inttoptr i64 %887 to double*
  store double %892, double* %893
  store %struct.Memory* %loadMem_41aefa, %struct.Memory** %MEMORY
  %loadMem_41aeff = load %struct.Memory*, %struct.Memory** %MEMORY
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 33
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %896 to i64*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %898 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %897, i64 0, i64 0
  %YMM0.i376 = bitcast %union.VectorReg* %898 to %"class.std::bitset"*
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %900 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %899, i64 0, i64 1
  %XMM1.i377 = bitcast %union.VectorReg* %900 to %union.vec128_t*
  %901 = bitcast %"class.std::bitset"* %YMM0.i376 to i8*
  %902 = bitcast %union.vec128_t* %XMM1.i377 to i8*
  %903 = load i64, i64* %PC.i375
  %904 = add i64 %903, 3
  store i64 %904, i64* %PC.i375
  %905 = bitcast i8* %902 to <2 x i32>*
  %906 = load <2 x i32>, <2 x i32>* %905, align 1
  %907 = getelementptr inbounds i8, i8* %902, i64 8
  %908 = bitcast i8* %907 to <2 x i32>*
  %909 = load <2 x i32>, <2 x i32>* %908, align 1
  %910 = extractelement <2 x i32> %906, i32 0
  %911 = bitcast i8* %901 to i32*
  store i32 %910, i32* %911, align 1
  %912 = extractelement <2 x i32> %906, i32 1
  %913 = getelementptr inbounds i8, i8* %901, i64 4
  %914 = bitcast i8* %913 to i32*
  store i32 %912, i32* %914, align 1
  %915 = extractelement <2 x i32> %909, i32 0
  %916 = getelementptr inbounds i8, i8* %901, i64 8
  %917 = bitcast i8* %916 to i32*
  store i32 %915, i32* %917, align 1
  %918 = extractelement <2 x i32> %909, i32 1
  %919 = getelementptr inbounds i8, i8* %901, i64 12
  %920 = bitcast i8* %919 to i32*
  store i32 %918, i32* %920, align 1
  store %struct.Memory* %loadMem_41aeff, %struct.Memory** %MEMORY
  %loadMem1_41af02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 33
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %923 to i64*
  %924 = load i64, i64* %PC.i374
  %925 = add i64 %924, -105186
  %926 = load i64, i64* %PC.i374
  %927 = add i64 %926, 5
  %928 = load i64, i64* %PC.i374
  %929 = add i64 %928, 5
  store i64 %929, i64* %PC.i374
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %931 = load i64, i64* %930, align 8
  %932 = add i64 %931, -8
  %933 = inttoptr i64 %932 to i64*
  store i64 %927, i64* %933
  store i64 %932, i64* %930, align 8
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %925, i64* %934, align 8
  store %struct.Memory* %loadMem1_41af02, %struct.Memory** %MEMORY
  %loadMem2_41af02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41af02 = load i64, i64* %3
  %935 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_41af02)
  store %struct.Memory* %935, %struct.Memory** %MEMORY
  %loadMem_41af07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 33
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %938 to i64*
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %940 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %939, i64 0, i64 1
  %YMM1.i371 = bitcast %union.VectorReg* %940 to %"class.std::bitset"*
  %941 = bitcast %"class.std::bitset"* %YMM1.i371 to i8*
  %942 = load i64, i64* %PC.i370
  %943 = add i64 %942, ptrtoint (%G_0x39921__rip__type* @G_0x39921__rip_ to i64)
  %944 = load i64, i64* %PC.i370
  %945 = add i64 %944, 8
  store i64 %945, i64* %PC.i370
  %946 = inttoptr i64 %943 to double*
  %947 = load double, double* %946
  %948 = bitcast i8* %941 to double*
  store double %947, double* %948, align 1
  %949 = getelementptr inbounds i8, i8* %941, i64 8
  %950 = bitcast i8* %949 to double*
  store double 0.000000e+00, double* %950, align 1
  store %struct.Memory* %loadMem_41af07, %struct.Memory** %MEMORY
  %loadMem_41af0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %953 to i64*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 15
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %956 to i64*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %958 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %957, i64 0, i64 2
  %YMM2.i369 = bitcast %union.VectorReg* %958 to %"class.std::bitset"*
  %959 = bitcast %"class.std::bitset"* %YMM2.i369 to i8*
  %960 = load i64, i64* %RBP.i368
  %961 = sub i64 %960, 120
  %962 = load i64, i64* %PC.i367
  %963 = add i64 %962, 5
  store i64 %963, i64* %PC.i367
  %964 = inttoptr i64 %961 to double*
  %965 = load double, double* %964
  %966 = bitcast i8* %959 to double*
  store double %965, double* %966, align 1
  %967 = getelementptr inbounds i8, i8* %959, i64 8
  %968 = bitcast i8* %967 to double*
  store double 0.000000e+00, double* %968, align 1
  store %struct.Memory* %loadMem_41af0f, %struct.Memory** %MEMORY
  %loadMem_41af14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 33
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %971 to i64*
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %973 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %972, i64 0, i64 2
  %YMM2.i365 = bitcast %union.VectorReg* %973 to %"class.std::bitset"*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %975 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %974, i64 0, i64 0
  %XMM0.i366 = bitcast %union.VectorReg* %975 to %union.vec128_t*
  %976 = bitcast %"class.std::bitset"* %YMM2.i365 to i8*
  %977 = bitcast %"class.std::bitset"* %YMM2.i365 to i8*
  %978 = bitcast %union.vec128_t* %XMM0.i366 to i8*
  %979 = load i64, i64* %PC.i364
  %980 = add i64 %979, 4
  store i64 %980, i64* %PC.i364
  %981 = bitcast i8* %977 to double*
  %982 = load double, double* %981, align 1
  %983 = getelementptr inbounds i8, i8* %977, i64 8
  %984 = bitcast i8* %983 to i64*
  %985 = load i64, i64* %984, align 1
  %986 = bitcast i8* %978 to double*
  %987 = load double, double* %986, align 1
  %988 = fmul double %982, %987
  %989 = bitcast i8* %976 to double*
  store double %988, double* %989, align 1
  %990 = getelementptr inbounds i8, i8* %976, i64 8
  %991 = bitcast i8* %990 to i64*
  store i64 %985, i64* %991, align 1
  store %struct.Memory* %loadMem_41af14, %struct.Memory** %MEMORY
  %loadMem_41af18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 15
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %999 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %998, i64 0, i64 2
  %YMM2.i363 = bitcast %union.VectorReg* %999 to %"class.std::bitset"*
  %1000 = bitcast %"class.std::bitset"* %YMM2.i363 to i8*
  %1001 = bitcast %"class.std::bitset"* %YMM2.i363 to i8*
  %1002 = load i64, i64* %RBP.i362
  %1003 = sub i64 %1002, 56
  %1004 = load i64, i64* %PC.i361
  %1005 = add i64 %1004, 5
  store i64 %1005, i64* %PC.i361
  %1006 = bitcast i8* %1001 to double*
  %1007 = load double, double* %1006, align 1
  %1008 = getelementptr inbounds i8, i8* %1001, i64 8
  %1009 = bitcast i8* %1008 to i64*
  %1010 = load i64, i64* %1009, align 1
  %1011 = inttoptr i64 %1003 to double*
  %1012 = load double, double* %1011
  %1013 = fadd double %1007, %1012
  %1014 = bitcast i8* %1000 to double*
  store double %1013, double* %1014, align 1
  %1015 = getelementptr inbounds i8, i8* %1000, i64 8
  %1016 = bitcast i8* %1015 to i64*
  store i64 %1010, i64* %1016, align 1
  store %struct.Memory* %loadMem_41af18, %struct.Memory** %MEMORY
  %loadMem_41af1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 33
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %1019 to i64*
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 15
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1024 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1023, i64 0, i64 2
  %XMM2.i360 = bitcast %union.VectorReg* %1024 to %union.vec128_t*
  %1025 = load i64, i64* %RBP.i359
  %1026 = sub i64 %1025, 56
  %1027 = bitcast %union.vec128_t* %XMM2.i360 to i8*
  %1028 = load i64, i64* %PC.i358
  %1029 = add i64 %1028, 5
  store i64 %1029, i64* %PC.i358
  %1030 = bitcast i8* %1027 to double*
  %1031 = load double, double* %1030, align 1
  %1032 = inttoptr i64 %1026 to double*
  store double %1031, double* %1032
  store %struct.Memory* %loadMem_41af1d, %struct.Memory** %MEMORY
  %loadMem_41af22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 33
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 15
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %1038 to i64*
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1040 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1039, i64 0, i64 0
  %YMM0.i357 = bitcast %union.VectorReg* %1040 to %"class.std::bitset"*
  %1041 = bitcast %"class.std::bitset"* %YMM0.i357 to i8*
  %1042 = load i64, i64* %RBP.i356
  %1043 = sub i64 %1042, 88
  %1044 = load i64, i64* %PC.i355
  %1045 = add i64 %1044, 5
  store i64 %1045, i64* %PC.i355
  %1046 = inttoptr i64 %1043 to double*
  %1047 = load double, double* %1046
  %1048 = bitcast i8* %1041 to double*
  store double %1047, double* %1048, align 1
  %1049 = getelementptr inbounds i8, i8* %1041, i64 8
  %1050 = bitcast i8* %1049 to double*
  store double 0.000000e+00, double* %1050, align 1
  store %struct.Memory* %loadMem_41af22, %struct.Memory** %MEMORY
  %loadMem_41af27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 33
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1053 to i64*
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 1
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 15
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %1059 to i64*
  %1060 = load i64, i64* %RBP.i354
  %1061 = sub i64 %1060, 8
  %1062 = load i64, i64* %PC.i352
  %1063 = add i64 %1062, 4
  store i64 %1063, i64* %PC.i352
  %1064 = inttoptr i64 %1061 to i64*
  %1065 = load i64, i64* %1064
  store i64 %1065, i64* %RAX.i353, align 8
  store %struct.Memory* %loadMem_41af27, %struct.Memory** %MEMORY
  %loadMem_41af2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1067 = getelementptr inbounds %struct.GPR, %struct.GPR* %1066, i32 0, i32 33
  %1068 = getelementptr inbounds %struct.Reg, %struct.Reg* %1067, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %1068 to i64*
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 5
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %RCX.i350 = bitcast %union.anon* %1071 to i64*
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 15
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %1074 to i64*
  %1075 = load i64, i64* %RBP.i351
  %1076 = sub i64 %1075, 100
  %1077 = load i64, i64* %PC.i349
  %1078 = add i64 %1077, 4
  store i64 %1078, i64* %PC.i349
  %1079 = inttoptr i64 %1076 to i32*
  %1080 = load i32, i32* %1079
  %1081 = sext i32 %1080 to i64
  store i64 %1081, i64* %RCX.i350, align 8
  store %struct.Memory* %loadMem_41af2b, %struct.Memory** %MEMORY
  %loadMem_41af2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 33
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %1084 to i64*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 1
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %1087 to i64*
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 5
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %1090 to i64*
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1092 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1091, i64 0, i64 2
  %YMM2.i348 = bitcast %union.VectorReg* %1092 to %"class.std::bitset"*
  %1093 = bitcast %"class.std::bitset"* %YMM2.i348 to i8*
  %1094 = load i64, i64* %RAX.i346
  %1095 = load i64, i64* %RCX.i347
  %1096 = mul i64 %1095, 4
  %1097 = add i64 %1096, %1094
  %1098 = load i64, i64* %PC.i345
  %1099 = add i64 %1098, 5
  store i64 %1099, i64* %PC.i345
  %1100 = inttoptr i64 %1097 to float*
  %1101 = load float, float* %1100
  %1102 = fpext float %1101 to double
  %1103 = bitcast i8* %1093 to double*
  store double %1102, double* %1103, align 1
  store %struct.Memory* %loadMem_41af2f, %struct.Memory** %MEMORY
  %loadMem_41af34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 33
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %1106 to i64*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1108 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1107, i64 0, i64 0
  %YMM0.i343 = bitcast %union.VectorReg* %1108 to %"class.std::bitset"*
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1110 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1109, i64 0, i64 2
  %XMM2.i344 = bitcast %union.VectorReg* %1110 to %union.vec128_t*
  %1111 = bitcast %"class.std::bitset"* %YMM0.i343 to i8*
  %1112 = bitcast %"class.std::bitset"* %YMM0.i343 to i8*
  %1113 = bitcast %union.vec128_t* %XMM2.i344 to i8*
  %1114 = load i64, i64* %PC.i342
  %1115 = add i64 %1114, 4
  store i64 %1115, i64* %PC.i342
  %1116 = bitcast i8* %1112 to double*
  %1117 = load double, double* %1116, align 1
  %1118 = getelementptr inbounds i8, i8* %1112, i64 8
  %1119 = bitcast i8* %1118 to i64*
  %1120 = load i64, i64* %1119, align 1
  %1121 = bitcast i8* %1113 to double*
  %1122 = load double, double* %1121, align 1
  %1123 = fmul double %1117, %1122
  %1124 = bitcast i8* %1111 to double*
  store double %1123, double* %1124, align 1
  %1125 = getelementptr inbounds i8, i8* %1111, i64 8
  %1126 = bitcast i8* %1125 to i64*
  store i64 %1120, i64* %1126, align 1
  store %struct.Memory* %loadMem_41af34, %struct.Memory** %MEMORY
  %loadMem_41af38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 33
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 15
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %1132 to i64*
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1134 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1133, i64 0, i64 2
  %YMM2.i341 = bitcast %union.VectorReg* %1134 to %"class.std::bitset"*
  %1135 = bitcast %"class.std::bitset"* %YMM2.i341 to i8*
  %1136 = load i64, i64* %RBP.i340
  %1137 = sub i64 %1136, 32
  %1138 = load i64, i64* %PC.i339
  %1139 = add i64 %1138, 5
  store i64 %1139, i64* %PC.i339
  %1140 = inttoptr i64 %1137 to float*
  %1141 = load float, float* %1140
  %1142 = fpext float %1141 to double
  %1143 = bitcast i8* %1135 to double*
  store double %1142, double* %1143, align 1
  store %struct.Memory* %loadMem_41af38, %struct.Memory** %MEMORY
  %loadMem_41af3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 33
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %1146 to i64*
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1148 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1147, i64 0, i64 1
  %YMM1.i337 = bitcast %union.VectorReg* %1148 to %"class.std::bitset"*
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1150 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1149, i64 0, i64 2
  %XMM2.i338 = bitcast %union.VectorReg* %1150 to %union.vec128_t*
  %1151 = bitcast %"class.std::bitset"* %YMM1.i337 to i8*
  %1152 = bitcast %"class.std::bitset"* %YMM1.i337 to i8*
  %1153 = bitcast %union.vec128_t* %XMM2.i338 to i8*
  %1154 = load i64, i64* %PC.i336
  %1155 = add i64 %1154, 4
  store i64 %1155, i64* %PC.i336
  %1156 = bitcast i8* %1152 to double*
  %1157 = load double, double* %1156, align 1
  %1158 = getelementptr inbounds i8, i8* %1152, i64 8
  %1159 = bitcast i8* %1158 to i64*
  %1160 = load i64, i64* %1159, align 1
  %1161 = bitcast i8* %1153 to double*
  %1162 = load double, double* %1161, align 1
  %1163 = fmul double %1157, %1162
  %1164 = bitcast i8* %1151 to double*
  store double %1163, double* %1164, align 1
  %1165 = getelementptr inbounds i8, i8* %1151, i64 8
  %1166 = bitcast i8* %1165 to i64*
  store i64 %1160, i64* %1166, align 1
  store %struct.Memory* %loadMem_41af3d, %struct.Memory** %MEMORY
  %loadMem_41af41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 33
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %1169 to i64*
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 1
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %1172 to i64*
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 15
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %1175 to i64*
  %1176 = load i64, i64* %RBP.i335
  %1177 = sub i64 %1176, 8
  %1178 = load i64, i64* %PC.i333
  %1179 = add i64 %1178, 4
  store i64 %1179, i64* %PC.i333
  %1180 = inttoptr i64 %1177 to i64*
  %1181 = load i64, i64* %1180
  store i64 %1181, i64* %RAX.i334, align 8
  store %struct.Memory* %loadMem_41af41, %struct.Memory** %MEMORY
  %loadMem_41af45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 33
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %1184 to i64*
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 5
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 15
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %1190 to i64*
  %1191 = load i64, i64* %RBP.i332
  %1192 = sub i64 %1191, 100
  %1193 = load i64, i64* %PC.i330
  %1194 = add i64 %1193, 4
  store i64 %1194, i64* %PC.i330
  %1195 = inttoptr i64 %1192 to i32*
  %1196 = load i32, i32* %1195
  %1197 = sext i32 %1196 to i64
  store i64 %1197, i64* %RCX.i331, align 8
  store %struct.Memory* %loadMem_41af45, %struct.Memory** %MEMORY
  %loadMem_41af49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 33
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %1200 to i64*
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 1
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 5
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %RCX.i328 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1208 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1207, i64 0, i64 2
  %YMM2.i329 = bitcast %union.VectorReg* %1208 to %"class.std::bitset"*
  %1209 = bitcast %"class.std::bitset"* %YMM2.i329 to i8*
  %1210 = load i64, i64* %RAX.i327
  %1211 = load i64, i64* %RCX.i328
  %1212 = mul i64 %1211, 4
  %1213 = add i64 %1212, %1210
  %1214 = load i64, i64* %PC.i326
  %1215 = add i64 %1214, 5
  store i64 %1215, i64* %PC.i326
  %1216 = inttoptr i64 %1213 to float*
  %1217 = load float, float* %1216
  %1218 = fpext float %1217 to double
  %1219 = bitcast i8* %1209 to double*
  store double %1218, double* %1219, align 1
  store %struct.Memory* %loadMem_41af49, %struct.Memory** %MEMORY
  %loadMem_41af4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 33
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %1222 to i64*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1224 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1223, i64 0, i64 1
  %YMM1.i324 = bitcast %union.VectorReg* %1224 to %"class.std::bitset"*
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1226 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1225, i64 0, i64 2
  %XMM2.i325 = bitcast %union.VectorReg* %1226 to %union.vec128_t*
  %1227 = bitcast %"class.std::bitset"* %YMM1.i324 to i8*
  %1228 = bitcast %"class.std::bitset"* %YMM1.i324 to i8*
  %1229 = bitcast %union.vec128_t* %XMM2.i325 to i8*
  %1230 = load i64, i64* %PC.i323
  %1231 = add i64 %1230, 4
  store i64 %1231, i64* %PC.i323
  %1232 = bitcast i8* %1228 to double*
  %1233 = load double, double* %1232, align 1
  %1234 = getelementptr inbounds i8, i8* %1228, i64 8
  %1235 = bitcast i8* %1234 to i64*
  %1236 = load i64, i64* %1235, align 1
  %1237 = bitcast i8* %1229 to double*
  %1238 = load double, double* %1237, align 1
  %1239 = fmul double %1233, %1238
  %1240 = bitcast i8* %1227 to double*
  store double %1239, double* %1240, align 1
  %1241 = getelementptr inbounds i8, i8* %1227, i64 8
  %1242 = bitcast i8* %1241 to i64*
  store i64 %1236, i64* %1242, align 1
  store %struct.Memory* %loadMem_41af4e, %struct.Memory** %MEMORY
  %loadMem_41af52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1244 = getelementptr inbounds %struct.GPR, %struct.GPR* %1243, i32 0, i32 33
  %1245 = getelementptr inbounds %struct.Reg, %struct.Reg* %1244, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1245 to i64*
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 15
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1250 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1249, i64 0, i64 0
  %XMM0.i322 = bitcast %union.VectorReg* %1250 to %union.vec128_t*
  %1251 = load i64, i64* %RBP.i321
  %1252 = sub i64 %1251, 128
  %1253 = bitcast %union.vec128_t* %XMM0.i322 to i8*
  %1254 = load i64, i64* %PC.i320
  %1255 = add i64 %1254, 5
  store i64 %1255, i64* %PC.i320
  %1256 = bitcast i8* %1253 to double*
  %1257 = load double, double* %1256, align 1
  %1258 = inttoptr i64 %1252 to double*
  store double %1257, double* %1258
  store %struct.Memory* %loadMem_41af52, %struct.Memory** %MEMORY
  %loadMem_41af57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 33
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1261 to i64*
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1262, i64 0, i64 0
  %YMM0.i318 = bitcast %union.VectorReg* %1263 to %"class.std::bitset"*
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1264, i64 0, i64 1
  %XMM1.i319 = bitcast %union.VectorReg* %1265 to %union.vec128_t*
  %1266 = bitcast %"class.std::bitset"* %YMM0.i318 to i8*
  %1267 = bitcast %union.vec128_t* %XMM1.i319 to i8*
  %1268 = load i64, i64* %PC.i317
  %1269 = add i64 %1268, 3
  store i64 %1269, i64* %PC.i317
  %1270 = bitcast i8* %1267 to <2 x i32>*
  %1271 = load <2 x i32>, <2 x i32>* %1270, align 1
  %1272 = getelementptr inbounds i8, i8* %1267, i64 8
  %1273 = bitcast i8* %1272 to <2 x i32>*
  %1274 = load <2 x i32>, <2 x i32>* %1273, align 1
  %1275 = extractelement <2 x i32> %1271, i32 0
  %1276 = bitcast i8* %1266 to i32*
  store i32 %1275, i32* %1276, align 1
  %1277 = extractelement <2 x i32> %1271, i32 1
  %1278 = getelementptr inbounds i8, i8* %1266, i64 4
  %1279 = bitcast i8* %1278 to i32*
  store i32 %1277, i32* %1279, align 1
  %1280 = extractelement <2 x i32> %1274, i32 0
  %1281 = getelementptr inbounds i8, i8* %1266, i64 8
  %1282 = bitcast i8* %1281 to i32*
  store i32 %1280, i32* %1282, align 1
  %1283 = extractelement <2 x i32> %1274, i32 1
  %1284 = getelementptr inbounds i8, i8* %1266, i64 12
  %1285 = bitcast i8* %1284 to i32*
  store i32 %1283, i32* %1285, align 1
  store %struct.Memory* %loadMem_41af57, %struct.Memory** %MEMORY
  %loadMem1_41af5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1288 to i64*
  %1289 = load i64, i64* %PC.i316
  %1290 = add i64 %1289, -105274
  %1291 = load i64, i64* %PC.i316
  %1292 = add i64 %1291, 5
  %1293 = load i64, i64* %PC.i316
  %1294 = add i64 %1293, 5
  store i64 %1294, i64* %PC.i316
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1296 = load i64, i64* %1295, align 8
  %1297 = add i64 %1296, -8
  %1298 = inttoptr i64 %1297 to i64*
  store i64 %1292, i64* %1298
  store i64 %1297, i64* %1295, align 8
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1290, i64* %1299, align 8
  store %struct.Memory* %loadMem1_41af5a, %struct.Memory** %MEMORY
  %loadMem2_41af5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41af5a = load i64, i64* %3
  %1300 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_41af5a)
  store %struct.Memory* %1300, %struct.Memory** %MEMORY
  %loadMem_41af5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 33
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %1303 to i64*
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1304, i64 0, i64 1
  %YMM1.i313 = bitcast %union.VectorReg* %1305 to %"class.std::bitset"*
  %1306 = bitcast %"class.std::bitset"* %YMM1.i313 to i8*
  %1307 = load i64, i64* %PC.i312
  %1308 = add i64 %1307, ptrtoint (%G_0x398c9__rip__type* @G_0x398c9__rip_ to i64)
  %1309 = load i64, i64* %PC.i312
  %1310 = add i64 %1309, 8
  store i64 %1310, i64* %PC.i312
  %1311 = inttoptr i64 %1308 to double*
  %1312 = load double, double* %1311
  %1313 = bitcast i8* %1306 to double*
  store double %1312, double* %1313, align 1
  %1314 = getelementptr inbounds i8, i8* %1306, i64 8
  %1315 = bitcast i8* %1314 to double*
  store double 0.000000e+00, double* %1315, align 1
  store %struct.Memory* %loadMem_41af5f, %struct.Memory** %MEMORY
  %loadMem_41af67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 33
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1318 to i64*
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1320 = getelementptr inbounds %struct.GPR, %struct.GPR* %1319, i32 0, i32 15
  %1321 = getelementptr inbounds %struct.Reg, %struct.Reg* %1320, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %1321 to i64*
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1323 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1322, i64 0, i64 2
  %YMM2.i311 = bitcast %union.VectorReg* %1323 to %"class.std::bitset"*
  %1324 = bitcast %"class.std::bitset"* %YMM2.i311 to i8*
  %1325 = load i64, i64* %RBP.i310
  %1326 = sub i64 %1325, 128
  %1327 = load i64, i64* %PC.i309
  %1328 = add i64 %1327, 5
  store i64 %1328, i64* %PC.i309
  %1329 = inttoptr i64 %1326 to double*
  %1330 = load double, double* %1329
  %1331 = bitcast i8* %1324 to double*
  store double %1330, double* %1331, align 1
  %1332 = getelementptr inbounds i8, i8* %1324, i64 8
  %1333 = bitcast i8* %1332 to double*
  store double 0.000000e+00, double* %1333, align 1
  store %struct.Memory* %loadMem_41af67, %struct.Memory** %MEMORY
  %loadMem_41af6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1335 = getelementptr inbounds %struct.GPR, %struct.GPR* %1334, i32 0, i32 33
  %1336 = getelementptr inbounds %struct.Reg, %struct.Reg* %1335, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1336 to i64*
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1338 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1337, i64 0, i64 2
  %YMM2.i307 = bitcast %union.VectorReg* %1338 to %"class.std::bitset"*
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1340 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1339, i64 0, i64 0
  %XMM0.i308 = bitcast %union.VectorReg* %1340 to %union.vec128_t*
  %1341 = bitcast %"class.std::bitset"* %YMM2.i307 to i8*
  %1342 = bitcast %"class.std::bitset"* %YMM2.i307 to i8*
  %1343 = bitcast %union.vec128_t* %XMM0.i308 to i8*
  %1344 = load i64, i64* %PC.i306
  %1345 = add i64 %1344, 4
  store i64 %1345, i64* %PC.i306
  %1346 = bitcast i8* %1342 to double*
  %1347 = load double, double* %1346, align 1
  %1348 = getelementptr inbounds i8, i8* %1342, i64 8
  %1349 = bitcast i8* %1348 to i64*
  %1350 = load i64, i64* %1349, align 1
  %1351 = bitcast i8* %1343 to double*
  %1352 = load double, double* %1351, align 1
  %1353 = fmul double %1347, %1352
  %1354 = bitcast i8* %1341 to double*
  store double %1353, double* %1354, align 1
  %1355 = getelementptr inbounds i8, i8* %1341, i64 8
  %1356 = bitcast i8* %1355 to i64*
  store i64 %1350, i64* %1356, align 1
  store %struct.Memory* %loadMem_41af6c, %struct.Memory** %MEMORY
  %loadMem_41af70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 33
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 15
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %1362 to i64*
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1364 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1363, i64 0, i64 2
  %YMM2.i305 = bitcast %union.VectorReg* %1364 to %"class.std::bitset"*
  %1365 = bitcast %"class.std::bitset"* %YMM2.i305 to i8*
  %1366 = bitcast %"class.std::bitset"* %YMM2.i305 to i8*
  %1367 = load i64, i64* %RBP.i304
  %1368 = sub i64 %1367, 64
  %1369 = load i64, i64* %PC.i303
  %1370 = add i64 %1369, 5
  store i64 %1370, i64* %PC.i303
  %1371 = bitcast i8* %1366 to double*
  %1372 = load double, double* %1371, align 1
  %1373 = getelementptr inbounds i8, i8* %1366, i64 8
  %1374 = bitcast i8* %1373 to i64*
  %1375 = load i64, i64* %1374, align 1
  %1376 = inttoptr i64 %1368 to double*
  %1377 = load double, double* %1376
  %1378 = fadd double %1372, %1377
  %1379 = bitcast i8* %1365 to double*
  store double %1378, double* %1379, align 1
  %1380 = getelementptr inbounds i8, i8* %1365, i64 8
  %1381 = bitcast i8* %1380 to i64*
  store i64 %1375, i64* %1381, align 1
  store %struct.Memory* %loadMem_41af70, %struct.Memory** %MEMORY
  %loadMem_41af75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 33
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %1384 to i64*
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 15
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %1387 to i64*
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1389 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1388, i64 0, i64 2
  %XMM2.i302 = bitcast %union.VectorReg* %1389 to %union.vec128_t*
  %1390 = load i64, i64* %RBP.i301
  %1391 = sub i64 %1390, 64
  %1392 = bitcast %union.vec128_t* %XMM2.i302 to i8*
  %1393 = load i64, i64* %PC.i300
  %1394 = add i64 %1393, 5
  store i64 %1394, i64* %PC.i300
  %1395 = bitcast i8* %1392 to double*
  %1396 = load double, double* %1395, align 1
  %1397 = inttoptr i64 %1391 to double*
  store double %1396, double* %1397
  store %struct.Memory* %loadMem_41af75, %struct.Memory** %MEMORY
  %loadMem_41af7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 33
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1400 to i64*
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 15
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1405 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1404, i64 0, i64 0
  %YMM0.i299 = bitcast %union.VectorReg* %1405 to %"class.std::bitset"*
  %1406 = bitcast %"class.std::bitset"* %YMM0.i299 to i8*
  %1407 = load i64, i64* %RBP.i298
  %1408 = sub i64 %1407, 88
  %1409 = load i64, i64* %PC.i297
  %1410 = add i64 %1409, 5
  store i64 %1410, i64* %PC.i297
  %1411 = inttoptr i64 %1408 to double*
  %1412 = load double, double* %1411
  %1413 = bitcast i8* %1406 to double*
  store double %1412, double* %1413, align 1
  %1414 = getelementptr inbounds i8, i8* %1406, i64 8
  %1415 = bitcast i8* %1414 to double*
  store double 0.000000e+00, double* %1415, align 1
  store %struct.Memory* %loadMem_41af7a, %struct.Memory** %MEMORY
  %loadMem_41af7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 33
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %1418 to i64*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 1
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %1421 to i64*
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 15
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %1424 to i64*
  %1425 = load i64, i64* %RBP.i296
  %1426 = sub i64 %1425, 8
  %1427 = load i64, i64* %PC.i294
  %1428 = add i64 %1427, 4
  store i64 %1428, i64* %PC.i294
  %1429 = inttoptr i64 %1426 to i64*
  %1430 = load i64, i64* %1429
  store i64 %1430, i64* %RAX.i295, align 8
  store %struct.Memory* %loadMem_41af7f, %struct.Memory** %MEMORY
  %loadMem_41af83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 33
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %1433 to i64*
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 5
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %RCX.i292 = bitcast %union.anon* %1436 to i64*
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 15
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %1439 to i64*
  %1440 = load i64, i64* %RBP.i293
  %1441 = sub i64 %1440, 100
  %1442 = load i64, i64* %PC.i291
  %1443 = add i64 %1442, 4
  store i64 %1443, i64* %PC.i291
  %1444 = inttoptr i64 %1441 to i32*
  %1445 = load i32, i32* %1444
  %1446 = sext i32 %1445 to i64
  store i64 %1446, i64* %RCX.i292, align 8
  store %struct.Memory* %loadMem_41af83, %struct.Memory** %MEMORY
  %loadMem_41af87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 33
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %1449 to i64*
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 1
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 5
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %RCX.i289 = bitcast %union.anon* %1455 to i64*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1457 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1456, i64 0, i64 2
  %YMM2.i290 = bitcast %union.VectorReg* %1457 to %"class.std::bitset"*
  %1458 = bitcast %"class.std::bitset"* %YMM2.i290 to i8*
  %1459 = load i64, i64* %RAX.i288
  %1460 = load i64, i64* %RCX.i289
  %1461 = mul i64 %1460, 4
  %1462 = add i64 %1461, %1459
  %1463 = load i64, i64* %PC.i287
  %1464 = add i64 %1463, 5
  store i64 %1464, i64* %PC.i287
  %1465 = inttoptr i64 %1462 to float*
  %1466 = load float, float* %1465
  %1467 = fpext float %1466 to double
  %1468 = bitcast i8* %1458 to double*
  store double %1467, double* %1468, align 1
  store %struct.Memory* %loadMem_41af87, %struct.Memory** %MEMORY
  %loadMem_41af8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 33
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1471 to i64*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1473 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1472, i64 0, i64 0
  %YMM0.i285 = bitcast %union.VectorReg* %1473 to %"class.std::bitset"*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1475 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1474, i64 0, i64 2
  %XMM2.i286 = bitcast %union.VectorReg* %1475 to %union.vec128_t*
  %1476 = bitcast %"class.std::bitset"* %YMM0.i285 to i8*
  %1477 = bitcast %"class.std::bitset"* %YMM0.i285 to i8*
  %1478 = bitcast %union.vec128_t* %XMM2.i286 to i8*
  %1479 = load i64, i64* %PC.i284
  %1480 = add i64 %1479, 4
  store i64 %1480, i64* %PC.i284
  %1481 = bitcast i8* %1477 to double*
  %1482 = load double, double* %1481, align 1
  %1483 = getelementptr inbounds i8, i8* %1477, i64 8
  %1484 = bitcast i8* %1483 to i64*
  %1485 = load i64, i64* %1484, align 1
  %1486 = bitcast i8* %1478 to double*
  %1487 = load double, double* %1486, align 1
  %1488 = fmul double %1482, %1487
  %1489 = bitcast i8* %1476 to double*
  store double %1488, double* %1489, align 1
  %1490 = getelementptr inbounds i8, i8* %1476, i64 8
  %1491 = bitcast i8* %1490 to i64*
  store i64 %1485, i64* %1491, align 1
  store %struct.Memory* %loadMem_41af8c, %struct.Memory** %MEMORY
  %loadMem_41af90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 33
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %1494 to i64*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 1
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %1497 to i64*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 15
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %1500 to i64*
  %1501 = load i64, i64* %RBP.i283
  %1502 = sub i64 %1501, 8
  %1503 = load i64, i64* %PC.i281
  %1504 = add i64 %1503, 4
  store i64 %1504, i64* %PC.i281
  %1505 = inttoptr i64 %1502 to i64*
  %1506 = load i64, i64* %1505
  store i64 %1506, i64* %RAX.i282, align 8
  store %struct.Memory* %loadMem_41af90, %struct.Memory** %MEMORY
  %loadMem_41af94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 33
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 5
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 15
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %1515 to i64*
  %1516 = load i64, i64* %RBP.i280
  %1517 = sub i64 %1516, 100
  %1518 = load i64, i64* %PC.i278
  %1519 = add i64 %1518, 4
  store i64 %1519, i64* %PC.i278
  %1520 = inttoptr i64 %1517 to i32*
  %1521 = load i32, i32* %1520
  %1522 = sext i32 %1521 to i64
  store i64 %1522, i64* %RCX.i279, align 8
  store %struct.Memory* %loadMem_41af94, %struct.Memory** %MEMORY
  %loadMem_41af98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 33
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %1525 to i64*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 1
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 5
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1533 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1532, i64 0, i64 2
  %YMM2.i277 = bitcast %union.VectorReg* %1533 to %"class.std::bitset"*
  %1534 = bitcast %"class.std::bitset"* %YMM2.i277 to i8*
  %1535 = load i64, i64* %RAX.i275
  %1536 = load i64, i64* %RCX.i276
  %1537 = mul i64 %1536, 4
  %1538 = add i64 %1537, %1535
  %1539 = load i64, i64* %PC.i274
  %1540 = add i64 %1539, 5
  store i64 %1540, i64* %PC.i274
  %1541 = inttoptr i64 %1538 to float*
  %1542 = load float, float* %1541
  %1543 = fpext float %1542 to double
  %1544 = bitcast i8* %1534 to double*
  store double %1543, double* %1544, align 1
  store %struct.Memory* %loadMem_41af98, %struct.Memory** %MEMORY
  %loadMem_41af9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 33
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1549 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1548, i64 0, i64 0
  %YMM0.i272 = bitcast %union.VectorReg* %1549 to %"class.std::bitset"*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1551 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1550, i64 0, i64 2
  %XMM2.i273 = bitcast %union.VectorReg* %1551 to %union.vec128_t*
  %1552 = bitcast %"class.std::bitset"* %YMM0.i272 to i8*
  %1553 = bitcast %"class.std::bitset"* %YMM0.i272 to i8*
  %1554 = bitcast %union.vec128_t* %XMM2.i273 to i8*
  %1555 = load i64, i64* %PC.i271
  %1556 = add i64 %1555, 4
  store i64 %1556, i64* %PC.i271
  %1557 = bitcast i8* %1553 to double*
  %1558 = load double, double* %1557, align 1
  %1559 = getelementptr inbounds i8, i8* %1553, i64 8
  %1560 = bitcast i8* %1559 to i64*
  %1561 = load i64, i64* %1560, align 1
  %1562 = bitcast i8* %1554 to double*
  %1563 = load double, double* %1562, align 1
  %1564 = fmul double %1558, %1563
  %1565 = bitcast i8* %1552 to double*
  store double %1564, double* %1565, align 1
  %1566 = getelementptr inbounds i8, i8* %1552, i64 8
  %1567 = bitcast i8* %1566 to i64*
  store i64 %1561, i64* %1567, align 1
  store %struct.Memory* %loadMem_41af9d, %struct.Memory** %MEMORY
  %loadMem_41afa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 33
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %1570 to i64*
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 15
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1575 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1574, i64 0, i64 2
  %YMM2.i270 = bitcast %union.VectorReg* %1575 to %"class.std::bitset"*
  %1576 = bitcast %"class.std::bitset"* %YMM2.i270 to i8*
  %1577 = load i64, i64* %RBP.i269
  %1578 = sub i64 %1577, 32
  %1579 = load i64, i64* %PC.i268
  %1580 = add i64 %1579, 5
  store i64 %1580, i64* %PC.i268
  %1581 = inttoptr i64 %1578 to float*
  %1582 = load float, float* %1581
  %1583 = fpext float %1582 to double
  %1584 = bitcast i8* %1576 to double*
  store double %1583, double* %1584, align 1
  store %struct.Memory* %loadMem_41afa1, %struct.Memory** %MEMORY
  %loadMem_41afa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 33
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %1587 to i64*
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1589 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1588, i64 0, i64 1
  %YMM1.i266 = bitcast %union.VectorReg* %1589 to %"class.std::bitset"*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1591 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1590, i64 0, i64 2
  %XMM2.i267 = bitcast %union.VectorReg* %1591 to %union.vec128_t*
  %1592 = bitcast %"class.std::bitset"* %YMM1.i266 to i8*
  %1593 = bitcast %"class.std::bitset"* %YMM1.i266 to i8*
  %1594 = bitcast %union.vec128_t* %XMM2.i267 to i8*
  %1595 = load i64, i64* %PC.i265
  %1596 = add i64 %1595, 4
  store i64 %1596, i64* %PC.i265
  %1597 = bitcast i8* %1593 to double*
  %1598 = load double, double* %1597, align 1
  %1599 = getelementptr inbounds i8, i8* %1593, i64 8
  %1600 = bitcast i8* %1599 to i64*
  %1601 = load i64, i64* %1600, align 1
  %1602 = bitcast i8* %1594 to double*
  %1603 = load double, double* %1602, align 1
  %1604 = fmul double %1598, %1603
  %1605 = bitcast i8* %1592 to double*
  store double %1604, double* %1605, align 1
  %1606 = getelementptr inbounds i8, i8* %1592, i64 8
  %1607 = bitcast i8* %1606 to i64*
  store i64 %1601, i64* %1607, align 1
  store %struct.Memory* %loadMem_41afa6, %struct.Memory** %MEMORY
  %loadMem_41afaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 33
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1610 to i64*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 1
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %1613 to i64*
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 15
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %1616 to i64*
  %1617 = load i64, i64* %RBP.i264
  %1618 = sub i64 %1617, 8
  %1619 = load i64, i64* %PC.i262
  %1620 = add i64 %1619, 4
  store i64 %1620, i64* %PC.i262
  %1621 = inttoptr i64 %1618 to i64*
  %1622 = load i64, i64* %1621
  store i64 %1622, i64* %RAX.i263, align 8
  store %struct.Memory* %loadMem_41afaa, %struct.Memory** %MEMORY
  %loadMem_41afae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 33
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %1625 to i64*
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 5
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %1628 to i64*
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 15
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %1631 to i64*
  %1632 = load i64, i64* %RBP.i261
  %1633 = sub i64 %1632, 100
  %1634 = load i64, i64* %PC.i259
  %1635 = add i64 %1634, 4
  store i64 %1635, i64* %PC.i259
  %1636 = inttoptr i64 %1633 to i32*
  %1637 = load i32, i32* %1636
  %1638 = sext i32 %1637 to i64
  store i64 %1638, i64* %RCX.i260, align 8
  store %struct.Memory* %loadMem_41afae, %struct.Memory** %MEMORY
  %loadMem_41afb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 33
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1641 to i64*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 1
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %1644 to i64*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 5
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %1647 to i64*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1649 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1648, i64 0, i64 2
  %YMM2.i258 = bitcast %union.VectorReg* %1649 to %"class.std::bitset"*
  %1650 = bitcast %"class.std::bitset"* %YMM2.i258 to i8*
  %1651 = load i64, i64* %RAX.i257
  %1652 = load i64, i64* %RCX.i
  %1653 = mul i64 %1652, 4
  %1654 = add i64 %1653, %1651
  %1655 = load i64, i64* %PC.i256
  %1656 = add i64 %1655, 5
  store i64 %1656, i64* %PC.i256
  %1657 = inttoptr i64 %1654 to float*
  %1658 = load float, float* %1657
  %1659 = fpext float %1658 to double
  %1660 = bitcast i8* %1650 to double*
  store double %1659, double* %1660, align 1
  store %struct.Memory* %loadMem_41afb2, %struct.Memory** %MEMORY
  %loadMem_41afb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 33
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %1663 to i64*
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1665 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1664, i64 0, i64 1
  %YMM1.i254 = bitcast %union.VectorReg* %1665 to %"class.std::bitset"*
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1667 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1666, i64 0, i64 2
  %XMM2.i255 = bitcast %union.VectorReg* %1667 to %union.vec128_t*
  %1668 = bitcast %"class.std::bitset"* %YMM1.i254 to i8*
  %1669 = bitcast %"class.std::bitset"* %YMM1.i254 to i8*
  %1670 = bitcast %union.vec128_t* %XMM2.i255 to i8*
  %1671 = load i64, i64* %PC.i253
  %1672 = add i64 %1671, 4
  store i64 %1672, i64* %PC.i253
  %1673 = bitcast i8* %1669 to double*
  %1674 = load double, double* %1673, align 1
  %1675 = getelementptr inbounds i8, i8* %1669, i64 8
  %1676 = bitcast i8* %1675 to i64*
  %1677 = load i64, i64* %1676, align 1
  %1678 = bitcast i8* %1670 to double*
  %1679 = load double, double* %1678, align 1
  %1680 = fmul double %1674, %1679
  %1681 = bitcast i8* %1668 to double*
  store double %1680, double* %1681, align 1
  %1682 = getelementptr inbounds i8, i8* %1668, i64 8
  %1683 = bitcast i8* %1682 to i64*
  store i64 %1677, i64* %1683, align 1
  store %struct.Memory* %loadMem_41afb7, %struct.Memory** %MEMORY
  %loadMem_41afbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1685 = getelementptr inbounds %struct.GPR, %struct.GPR* %1684, i32 0, i32 33
  %1686 = getelementptr inbounds %struct.Reg, %struct.Reg* %1685, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1686 to i64*
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 15
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %1689 to i64*
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1691 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1690, i64 0, i64 0
  %XMM0.i252 = bitcast %union.VectorReg* %1691 to %union.vec128_t*
  %1692 = load i64, i64* %RBP.i251
  %1693 = sub i64 %1692, 136
  %1694 = bitcast %union.vec128_t* %XMM0.i252 to i8*
  %1695 = load i64, i64* %PC.i250
  %1696 = add i64 %1695, 8
  store i64 %1696, i64* %PC.i250
  %1697 = bitcast i8* %1694 to double*
  %1698 = load double, double* %1697, align 1
  %1699 = inttoptr i64 %1693 to double*
  store double %1698, double* %1699
  store %struct.Memory* %loadMem_41afbb, %struct.Memory** %MEMORY
  %loadMem_41afc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 33
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1702 to i64*
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1704 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1703, i64 0, i64 0
  %YMM0.i248 = bitcast %union.VectorReg* %1704 to %"class.std::bitset"*
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1706 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1705, i64 0, i64 1
  %XMM1.i249 = bitcast %union.VectorReg* %1706 to %union.vec128_t*
  %1707 = bitcast %"class.std::bitset"* %YMM0.i248 to i8*
  %1708 = bitcast %union.vec128_t* %XMM1.i249 to i8*
  %1709 = load i64, i64* %PC.i247
  %1710 = add i64 %1709, 3
  store i64 %1710, i64* %PC.i247
  %1711 = bitcast i8* %1708 to <2 x i32>*
  %1712 = load <2 x i32>, <2 x i32>* %1711, align 1
  %1713 = getelementptr inbounds i8, i8* %1708, i64 8
  %1714 = bitcast i8* %1713 to <2 x i32>*
  %1715 = load <2 x i32>, <2 x i32>* %1714, align 1
  %1716 = extractelement <2 x i32> %1712, i32 0
  %1717 = bitcast i8* %1707 to i32*
  store i32 %1716, i32* %1717, align 1
  %1718 = extractelement <2 x i32> %1712, i32 1
  %1719 = getelementptr inbounds i8, i8* %1707, i64 4
  %1720 = bitcast i8* %1719 to i32*
  store i32 %1718, i32* %1720, align 1
  %1721 = extractelement <2 x i32> %1715, i32 0
  %1722 = getelementptr inbounds i8, i8* %1707, i64 8
  %1723 = bitcast i8* %1722 to i32*
  store i32 %1721, i32* %1723, align 1
  %1724 = extractelement <2 x i32> %1715, i32 1
  %1725 = getelementptr inbounds i8, i8* %1707, i64 12
  %1726 = bitcast i8* %1725 to i32*
  store i32 %1724, i32* %1726, align 1
  store %struct.Memory* %loadMem_41afc3, %struct.Memory** %MEMORY
  %loadMem1_41afc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 33
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %1729 to i64*
  %1730 = load i64, i64* %PC.i246
  %1731 = add i64 %1730, -105382
  %1732 = load i64, i64* %PC.i246
  %1733 = add i64 %1732, 5
  %1734 = load i64, i64* %PC.i246
  %1735 = add i64 %1734, 5
  store i64 %1735, i64* %PC.i246
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1737 = load i64, i64* %1736, align 8
  %1738 = add i64 %1737, -8
  %1739 = inttoptr i64 %1738 to i64*
  store i64 %1733, i64* %1739
  store i64 %1738, i64* %1736, align 8
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1731, i64* %1740, align 8
  store %struct.Memory* %loadMem1_41afc6, %struct.Memory** %MEMORY
  %loadMem2_41afc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41afc6 = load i64, i64* %3
  %1741 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_41afc6)
  store %struct.Memory* %1741, %struct.Memory** %MEMORY
  %loadMem_41afcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 33
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 15
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1749 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1748, i64 0, i64 1
  %YMM1.i243 = bitcast %union.VectorReg* %1749 to %"class.std::bitset"*
  %1750 = bitcast %"class.std::bitset"* %YMM1.i243 to i8*
  %1751 = load i64, i64* %RBP.i242
  %1752 = sub i64 %1751, 136
  %1753 = load i64, i64* %PC.i241
  %1754 = add i64 %1753, 8
  store i64 %1754, i64* %PC.i241
  %1755 = inttoptr i64 %1752 to double*
  %1756 = load double, double* %1755
  %1757 = bitcast i8* %1750 to double*
  store double %1756, double* %1757, align 1
  %1758 = getelementptr inbounds i8, i8* %1750, i64 8
  %1759 = bitcast i8* %1758 to double*
  store double 0.000000e+00, double* %1759, align 1
  store %struct.Memory* %loadMem_41afcb, %struct.Memory** %MEMORY
  %loadMem_41afd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 33
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %1762 to i64*
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1764 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1763, i64 0, i64 1
  %YMM1.i239 = bitcast %union.VectorReg* %1764 to %"class.std::bitset"*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1766 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1765, i64 0, i64 0
  %XMM0.i240 = bitcast %union.VectorReg* %1766 to %union.vec128_t*
  %1767 = bitcast %"class.std::bitset"* %YMM1.i239 to i8*
  %1768 = bitcast %"class.std::bitset"* %YMM1.i239 to i8*
  %1769 = bitcast %union.vec128_t* %XMM0.i240 to i8*
  %1770 = load i64, i64* %PC.i238
  %1771 = add i64 %1770, 4
  store i64 %1771, i64* %PC.i238
  %1772 = bitcast i8* %1768 to double*
  %1773 = load double, double* %1772, align 1
  %1774 = getelementptr inbounds i8, i8* %1768, i64 8
  %1775 = bitcast i8* %1774 to i64*
  %1776 = load i64, i64* %1775, align 1
  %1777 = bitcast i8* %1769 to double*
  %1778 = load double, double* %1777, align 1
  %1779 = fmul double %1773, %1778
  %1780 = bitcast i8* %1767 to double*
  store double %1779, double* %1780, align 1
  %1781 = getelementptr inbounds i8, i8* %1767, i64 8
  %1782 = bitcast i8* %1781 to i64*
  store i64 %1776, i64* %1782, align 1
  store %struct.Memory* %loadMem_41afd3, %struct.Memory** %MEMORY
  %loadMem_41afd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 33
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %1785 to i64*
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 15
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %1788 to i64*
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1790 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1789, i64 0, i64 1
  %YMM1.i237 = bitcast %union.VectorReg* %1790 to %"class.std::bitset"*
  %1791 = bitcast %"class.std::bitset"* %YMM1.i237 to i8*
  %1792 = bitcast %"class.std::bitset"* %YMM1.i237 to i8*
  %1793 = load i64, i64* %RBP.i236
  %1794 = sub i64 %1793, 72
  %1795 = load i64, i64* %PC.i235
  %1796 = add i64 %1795, 5
  store i64 %1796, i64* %PC.i235
  %1797 = bitcast i8* %1792 to double*
  %1798 = load double, double* %1797, align 1
  %1799 = getelementptr inbounds i8, i8* %1792, i64 8
  %1800 = bitcast i8* %1799 to i64*
  %1801 = load i64, i64* %1800, align 1
  %1802 = inttoptr i64 %1794 to double*
  %1803 = load double, double* %1802
  %1804 = fadd double %1798, %1803
  %1805 = bitcast i8* %1791 to double*
  store double %1804, double* %1805, align 1
  %1806 = getelementptr inbounds i8, i8* %1791, i64 8
  %1807 = bitcast i8* %1806 to i64*
  store i64 %1801, i64* %1807, align 1
  store %struct.Memory* %loadMem_41afd7, %struct.Memory** %MEMORY
  %loadMem_41afdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 33
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %1810 to i64*
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 15
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %1813 to i64*
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1815 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1814, i64 0, i64 1
  %XMM1.i234 = bitcast %union.VectorReg* %1815 to %union.vec128_t*
  %1816 = load i64, i64* %RBP.i233
  %1817 = sub i64 %1816, 72
  %1818 = bitcast %union.vec128_t* %XMM1.i234 to i8*
  %1819 = load i64, i64* %PC.i232
  %1820 = add i64 %1819, 5
  store i64 %1820, i64* %PC.i232
  %1821 = bitcast i8* %1818 to double*
  %1822 = load double, double* %1821, align 1
  %1823 = inttoptr i64 %1817 to double*
  store double %1822, double* %1823
  store %struct.Memory* %loadMem_41afdc, %struct.Memory** %MEMORY
  %loadMem_41afe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 33
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 15
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1831 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1830, i64 0, i64 0
  %YMM0.i231 = bitcast %union.VectorReg* %1831 to %"class.std::bitset"*
  %1832 = bitcast %"class.std::bitset"* %YMM0.i231 to i8*
  %1833 = load i64, i64* %RBP.i230
  %1834 = sub i64 %1833, 88
  %1835 = load i64, i64* %PC.i229
  %1836 = add i64 %1835, 5
  store i64 %1836, i64* %PC.i229
  %1837 = inttoptr i64 %1834 to double*
  %1838 = load double, double* %1837
  %1839 = bitcast i8* %1832 to double*
  store double %1838, double* %1839, align 1
  %1840 = getelementptr inbounds i8, i8* %1832, i64 8
  %1841 = bitcast i8* %1840 to double*
  store double 0.000000e+00, double* %1841, align 1
  store %struct.Memory* %loadMem_41afe1, %struct.Memory** %MEMORY
  %loadMem_41afe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 33
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %1844 to i64*
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 15
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %1847 to i64*
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1849 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1848, i64 0, i64 0
  %YMM0.i228 = bitcast %union.VectorReg* %1849 to %"class.std::bitset"*
  %1850 = bitcast %"class.std::bitset"* %YMM0.i228 to i8*
  %1851 = bitcast %"class.std::bitset"* %YMM0.i228 to i8*
  %1852 = load i64, i64* %RBP.i227
  %1853 = sub i64 %1852, 96
  %1854 = load i64, i64* %PC.i226
  %1855 = add i64 %1854, 5
  store i64 %1855, i64* %PC.i226
  %1856 = bitcast i8* %1851 to double*
  %1857 = load double, double* %1856, align 1
  %1858 = getelementptr inbounds i8, i8* %1851, i64 8
  %1859 = bitcast i8* %1858 to i64*
  %1860 = load i64, i64* %1859, align 1
  %1861 = inttoptr i64 %1853 to double*
  %1862 = load double, double* %1861
  %1863 = fadd double %1857, %1862
  %1864 = bitcast i8* %1850 to double*
  store double %1863, double* %1864, align 1
  %1865 = getelementptr inbounds i8, i8* %1850, i64 8
  %1866 = bitcast i8* %1865 to i64*
  store i64 %1860, i64* %1866, align 1
  store %struct.Memory* %loadMem_41afe6, %struct.Memory** %MEMORY
  %loadMem_41afeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 33
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 15
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %1872 to i64*
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1874 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1873, i64 0, i64 0
  %XMM0.i225 = bitcast %union.VectorReg* %1874 to %union.vec128_t*
  %1875 = load i64, i64* %RBP.i224
  %1876 = sub i64 %1875, 96
  %1877 = bitcast %union.vec128_t* %XMM0.i225 to i8*
  %1878 = load i64, i64* %PC.i223
  %1879 = add i64 %1878, 5
  store i64 %1879, i64* %PC.i223
  %1880 = bitcast i8* %1877 to double*
  %1881 = load double, double* %1880, align 1
  %1882 = inttoptr i64 %1876 to double*
  store double %1881, double* %1882
  store %struct.Memory* %loadMem_41afeb, %struct.Memory** %MEMORY
  %loadMem_41aff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 33
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 1
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %1888 to i64*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 15
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %1891 to i64*
  %1892 = load i64, i64* %RBP.i222
  %1893 = sub i64 %1892, 100
  %1894 = load i64, i64* %PC.i220
  %1895 = add i64 %1894, 3
  store i64 %1895, i64* %PC.i220
  %1896 = inttoptr i64 %1893 to i32*
  %1897 = load i32, i32* %1896
  %1898 = zext i32 %1897 to i64
  store i64 %1898, i64* %RAX.i221, align 8
  store %struct.Memory* %loadMem_41aff0, %struct.Memory** %MEMORY
  %loadMem_41aff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 33
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %1901 to i64*
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 1
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %1904 to i64*
  %1905 = load i64, i64* %RAX.i219
  %1906 = load i64, i64* %PC.i218
  %1907 = add i64 %1906, 3
  store i64 %1907, i64* %PC.i218
  %1908 = trunc i64 %1905 to i32
  %1909 = add i32 1, %1908
  %1910 = zext i32 %1909 to i64
  store i64 %1910, i64* %RAX.i219, align 8
  %1911 = icmp ult i32 %1909, %1908
  %1912 = icmp ult i32 %1909, 1
  %1913 = or i1 %1911, %1912
  %1914 = zext i1 %1913 to i8
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1914, i8* %1915, align 1
  %1916 = and i32 %1909, 255
  %1917 = call i32 @llvm.ctpop.i32(i32 %1916)
  %1918 = trunc i32 %1917 to i8
  %1919 = and i8 %1918, 1
  %1920 = xor i8 %1919, 1
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1920, i8* %1921, align 1
  %1922 = xor i64 1, %1905
  %1923 = trunc i64 %1922 to i32
  %1924 = xor i32 %1923, %1909
  %1925 = lshr i32 %1924, 4
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1927, i8* %1928, align 1
  %1929 = icmp eq i32 %1909, 0
  %1930 = zext i1 %1929 to i8
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1930, i8* %1931, align 1
  %1932 = lshr i32 %1909, 31
  %1933 = trunc i32 %1932 to i8
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1933, i8* %1934, align 1
  %1935 = lshr i32 %1908, 31
  %1936 = xor i32 %1932, %1935
  %1937 = add i32 %1936, %1932
  %1938 = icmp eq i32 %1937, 2
  %1939 = zext i1 %1938 to i8
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1939, i8* %1940, align 1
  store %struct.Memory* %loadMem_41aff3, %struct.Memory** %MEMORY
  %loadMem_41aff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 33
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1943 to i64*
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 1
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1946 to i32*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 15
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %1949 to i64*
  %1950 = load i64, i64* %RBP.i217
  %1951 = sub i64 %1950, 100
  %1952 = load i32, i32* %EAX.i
  %1953 = zext i32 %1952 to i64
  %1954 = load i64, i64* %PC.i216
  %1955 = add i64 %1954, 3
  store i64 %1955, i64* %PC.i216
  %1956 = inttoptr i64 %1951 to i32*
  store i32 %1952, i32* %1956
  store %struct.Memory* %loadMem_41aff6, %struct.Memory** %MEMORY
  %loadMem_41aff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 33
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %1959 to i64*
  %1960 = load i64, i64* %PC.i215
  %1961 = add i64 %1960, -395
  %1962 = load i64, i64* %PC.i215
  %1963 = add i64 %1962, 5
  store i64 %1963, i64* %PC.i215
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1961, i64* %1964, align 8
  store %struct.Memory* %loadMem_41aff9, %struct.Memory** %MEMORY
  br label %block_.L_41ae6e

block_.L_41affe:                                  ; preds = %block_.L_41ae6e
  %loadMem_41affe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 33
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1967 to i64*
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1969 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1968, i64 0, i64 0
  %YMM0.i214 = bitcast %union.VectorReg* %1969 to %"class.std::bitset"*
  %1970 = bitcast %"class.std::bitset"* %YMM0.i214 to i8*
  %1971 = load i64, i64* %PC.i213
  %1972 = add i64 %1971, ptrtoint (%G_0x3982a__rip__type* @G_0x3982a__rip_ to i64)
  %1973 = load i64, i64* %PC.i213
  %1974 = add i64 %1973, 8
  store i64 %1974, i64* %PC.i213
  %1975 = inttoptr i64 %1972 to double*
  %1976 = load double, double* %1975
  %1977 = bitcast i8* %1970 to double*
  store double %1976, double* %1977, align 1
  %1978 = getelementptr inbounds i8, i8* %1970, i64 8
  %1979 = bitcast i8* %1978 to double*
  store double 0.000000e+00, double* %1979, align 1
  store %struct.Memory* %loadMem_41affe, %struct.Memory** %MEMORY
  %loadMem_41b006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 33
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1982 to i64*
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 15
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %1985 to i64*
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1987 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1986, i64 0, i64 1
  %YMM1.i212 = bitcast %union.VectorReg* %1987 to %"class.std::bitset"*
  %1988 = bitcast %"class.std::bitset"* %YMM1.i212 to i8*
  %1989 = load i64, i64* %RBP.i211
  %1990 = sub i64 %1989, 24
  %1991 = load i64, i64* %PC.i210
  %1992 = add i64 %1991, 5
  store i64 %1992, i64* %PC.i210
  %1993 = inttoptr i64 %1990 to i32*
  %1994 = load i32, i32* %1993
  %1995 = sitofp i32 %1994 to double
  %1996 = bitcast i8* %1988 to double*
  store double %1995, double* %1996, align 1
  store %struct.Memory* %loadMem_41b006, %struct.Memory** %MEMORY
  %loadMem_41b00b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 33
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %1999 to i64*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 15
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %2002 to i64*
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2004 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2003, i64 0, i64 2
  %YMM2.i209 = bitcast %union.VectorReg* %2004 to %"class.std::bitset"*
  %2005 = bitcast %"class.std::bitset"* %YMM2.i209 to i8*
  %2006 = load i64, i64* %RBP.i208
  %2007 = sub i64 %2006, 32
  %2008 = load i64, i64* %PC.i207
  %2009 = add i64 %2008, 5
  store i64 %2009, i64* %PC.i207
  %2010 = inttoptr i64 %2007 to float*
  %2011 = load float, float* %2010
  %2012 = fpext float %2011 to double
  %2013 = bitcast i8* %2005 to double*
  store double %2012, double* %2013, align 1
  store %struct.Memory* %loadMem_41b00b, %struct.Memory** %MEMORY
  %loadMem_41b010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 33
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2018 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2017, i64 0, i64 0
  %YMM0.i205 = bitcast %union.VectorReg* %2018 to %"class.std::bitset"*
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2020 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2019, i64 0, i64 2
  %XMM2.i206 = bitcast %union.VectorReg* %2020 to %union.vec128_t*
  %2021 = bitcast %"class.std::bitset"* %YMM0.i205 to i8*
  %2022 = bitcast %"class.std::bitset"* %YMM0.i205 to i8*
  %2023 = bitcast %union.vec128_t* %XMM2.i206 to i8*
  %2024 = load i64, i64* %PC.i204
  %2025 = add i64 %2024, 4
  store i64 %2025, i64* %PC.i204
  %2026 = bitcast i8* %2022 to double*
  %2027 = load double, double* %2026, align 1
  %2028 = getelementptr inbounds i8, i8* %2022, i64 8
  %2029 = bitcast i8* %2028 to i64*
  %2030 = load i64, i64* %2029, align 1
  %2031 = bitcast i8* %2023 to double*
  %2032 = load double, double* %2031, align 1
  %2033 = fmul double %2027, %2032
  %2034 = bitcast i8* %2021 to double*
  store double %2033, double* %2034, align 1
  %2035 = getelementptr inbounds i8, i8* %2021, i64 8
  %2036 = bitcast i8* %2035 to i64*
  store i64 %2030, i64* %2036, align 1
  store %struct.Memory* %loadMem_41b010, %struct.Memory** %MEMORY
  %loadMem_41b014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 33
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %2039 to i64*
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 15
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %2042 to i64*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2044 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2043, i64 0, i64 2
  %YMM2.i203 = bitcast %union.VectorReg* %2044 to %"class.std::bitset"*
  %2045 = bitcast %"class.std::bitset"* %YMM2.i203 to i8*
  %2046 = load i64, i64* %RBP.i202
  %2047 = sub i64 %2046, 28
  %2048 = load i64, i64* %PC.i201
  %2049 = add i64 %2048, 5
  store i64 %2049, i64* %PC.i201
  %2050 = inttoptr i64 %2047 to float*
  %2051 = load float, float* %2050
  %2052 = fpext float %2051 to double
  %2053 = bitcast i8* %2045 to double*
  store double %2052, double* %2053, align 1
  store %struct.Memory* %loadMem_41b014, %struct.Memory** %MEMORY
  %loadMem_41b019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 33
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2056 to i64*
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2058 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2057, i64 0, i64 0
  %YMM0.i199 = bitcast %union.VectorReg* %2058 to %"class.std::bitset"*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2060 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2059, i64 0, i64 2
  %XMM2.i200 = bitcast %union.VectorReg* %2060 to %union.vec128_t*
  %2061 = bitcast %"class.std::bitset"* %YMM0.i199 to i8*
  %2062 = bitcast %"class.std::bitset"* %YMM0.i199 to i8*
  %2063 = bitcast %union.vec128_t* %XMM2.i200 to i8*
  %2064 = load i64, i64* %PC.i198
  %2065 = add i64 %2064, 4
  store i64 %2065, i64* %PC.i198
  %2066 = bitcast i8* %2062 to double*
  %2067 = load double, double* %2066, align 1
  %2068 = getelementptr inbounds i8, i8* %2062, i64 8
  %2069 = bitcast i8* %2068 to i64*
  %2070 = load i64, i64* %2069, align 1
  %2071 = bitcast i8* %2063 to double*
  %2072 = load double, double* %2071, align 1
  %2073 = fmul double %2067, %2072
  %2074 = bitcast i8* %2061 to double*
  store double %2073, double* %2074, align 1
  %2075 = getelementptr inbounds i8, i8* %2061, i64 8
  %2076 = bitcast i8* %2075 to i64*
  store i64 %2070, i64* %2076, align 1
  store %struct.Memory* %loadMem_41b019, %struct.Memory** %MEMORY
  %loadMem_41b01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 33
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 15
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %2082 to i64*
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2084 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2083, i64 0, i64 1
  %XMM1.i197 = bitcast %union.VectorReg* %2084 to %union.vec128_t*
  %2085 = load i64, i64* %RBP.i196
  %2086 = sub i64 %2085, 144
  %2087 = bitcast %union.vec128_t* %XMM1.i197 to i8*
  %2088 = load i64, i64* %PC.i195
  %2089 = add i64 %2088, 8
  store i64 %2089, i64* %PC.i195
  %2090 = bitcast i8* %2087 to double*
  %2091 = load double, double* %2090, align 1
  %2092 = inttoptr i64 %2086 to double*
  store double %2091, double* %2092
  store %struct.Memory* %loadMem_41b01d, %struct.Memory** %MEMORY
  %loadMem1_41b025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 33
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %2095 to i64*
  %2096 = load i64, i64* %PC.i194
  %2097 = add i64 %2096, -105477
  %2098 = load i64, i64* %PC.i194
  %2099 = add i64 %2098, 5
  %2100 = load i64, i64* %PC.i194
  %2101 = add i64 %2100, 5
  store i64 %2101, i64* %PC.i194
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2103 = load i64, i64* %2102, align 8
  %2104 = add i64 %2103, -8
  %2105 = inttoptr i64 %2104 to i64*
  store i64 %2099, i64* %2105
  store i64 %2104, i64* %2102, align 8
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2097, i64* %2106, align 8
  store %struct.Memory* %loadMem1_41b025, %struct.Memory** %MEMORY
  %loadMem2_41b025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b025 = load i64, i64* %3
  %2107 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_41b025)
  store %struct.Memory* %2107, %struct.Memory** %MEMORY
  %loadMem_41b02a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 33
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2112 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2111, i64 0, i64 1
  %YMM1.i190 = bitcast %union.VectorReg* %2112 to %"class.std::bitset"*
  %2113 = bitcast %"class.std::bitset"* %YMM1.i190 to i8*
  %2114 = load i64, i64* %PC.i189
  %2115 = add i64 %2114, ptrtoint (%G_0x397fe__rip__type* @G_0x397fe__rip_ to i64)
  %2116 = load i64, i64* %PC.i189
  %2117 = add i64 %2116, 8
  store i64 %2117, i64* %PC.i189
  %2118 = inttoptr i64 %2115 to double*
  %2119 = load double, double* %2118
  %2120 = bitcast i8* %2113 to double*
  store double %2119, double* %2120, align 1
  %2121 = getelementptr inbounds i8, i8* %2113, i64 8
  %2122 = bitcast i8* %2121 to double*
  store double 0.000000e+00, double* %2122, align 1
  store %struct.Memory* %loadMem_41b02a, %struct.Memory** %MEMORY
  %loadMem_41b032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 33
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2125 to i64*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 15
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %2128 to i64*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2130 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2129, i64 0, i64 2
  %YMM2.i188 = bitcast %union.VectorReg* %2130 to %"class.std::bitset"*
  %2131 = bitcast %"class.std::bitset"* %YMM2.i188 to i8*
  %2132 = load i64, i64* %RBP.i187
  %2133 = sub i64 %2132, 144
  %2134 = load i64, i64* %PC.i186
  %2135 = add i64 %2134, 8
  store i64 %2135, i64* %PC.i186
  %2136 = inttoptr i64 %2133 to double*
  %2137 = load double, double* %2136
  %2138 = bitcast i8* %2131 to double*
  store double %2137, double* %2138, align 1
  %2139 = getelementptr inbounds i8, i8* %2131, i64 8
  %2140 = bitcast i8* %2139 to double*
  store double 0.000000e+00, double* %2140, align 1
  store %struct.Memory* %loadMem_41b032, %struct.Memory** %MEMORY
  %loadMem_41b03a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 33
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2143 to i64*
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2145 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2144, i64 0, i64 2
  %YMM2.i184 = bitcast %union.VectorReg* %2145 to %"class.std::bitset"*
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2147 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2146, i64 0, i64 0
  %XMM0.i185 = bitcast %union.VectorReg* %2147 to %union.vec128_t*
  %2148 = bitcast %"class.std::bitset"* %YMM2.i184 to i8*
  %2149 = bitcast %"class.std::bitset"* %YMM2.i184 to i8*
  %2150 = bitcast %union.vec128_t* %XMM0.i185 to i8*
  %2151 = load i64, i64* %PC.i183
  %2152 = add i64 %2151, 4
  store i64 %2152, i64* %PC.i183
  %2153 = bitcast i8* %2149 to double*
  %2154 = load double, double* %2153, align 1
  %2155 = getelementptr inbounds i8, i8* %2149, i64 8
  %2156 = bitcast i8* %2155 to i64*
  %2157 = load i64, i64* %2156, align 1
  %2158 = bitcast i8* %2150 to double*
  %2159 = load double, double* %2158, align 1
  %2160 = fmul double %2154, %2159
  %2161 = bitcast i8* %2148 to double*
  store double %2160, double* %2161, align 1
  %2162 = getelementptr inbounds i8, i8* %2148, i64 8
  %2163 = bitcast i8* %2162 to i64*
  store i64 %2157, i64* %2163, align 1
  store %struct.Memory* %loadMem_41b03a, %struct.Memory** %MEMORY
  %loadMem_41b03e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 33
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 15
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %2169 to i64*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2171 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2170, i64 0, i64 2
  %YMM2.i182 = bitcast %union.VectorReg* %2171 to %"class.std::bitset"*
  %2172 = bitcast %"class.std::bitset"* %YMM2.i182 to i8*
  %2173 = bitcast %"class.std::bitset"* %YMM2.i182 to i8*
  %2174 = load i64, i64* %RBP.i181
  %2175 = sub i64 %2174, 56
  %2176 = load i64, i64* %PC.i180
  %2177 = add i64 %2176, 5
  store i64 %2177, i64* %PC.i180
  %2178 = bitcast i8* %2173 to double*
  %2179 = load double, double* %2178, align 1
  %2180 = getelementptr inbounds i8, i8* %2173, i64 8
  %2181 = bitcast i8* %2180 to i64*
  %2182 = load i64, i64* %2181, align 1
  %2183 = inttoptr i64 %2175 to double*
  %2184 = load double, double* %2183
  %2185 = fadd double %2179, %2184
  %2186 = bitcast i8* %2172 to double*
  store double %2185, double* %2186, align 1
  %2187 = getelementptr inbounds i8, i8* %2172, i64 8
  %2188 = bitcast i8* %2187 to i64*
  store i64 %2182, i64* %2188, align 1
  store %struct.Memory* %loadMem_41b03e, %struct.Memory** %MEMORY
  %loadMem_41b043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 33
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 15
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %2194 to i64*
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2196 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2195, i64 0, i64 2
  %XMM2.i179 = bitcast %union.VectorReg* %2196 to %union.vec128_t*
  %2197 = load i64, i64* %RBP.i178
  %2198 = sub i64 %2197, 56
  %2199 = bitcast %union.vec128_t* %XMM2.i179 to i8*
  %2200 = load i64, i64* %PC.i177
  %2201 = add i64 %2200, 5
  store i64 %2201, i64* %PC.i177
  %2202 = bitcast i8* %2199 to double*
  %2203 = load double, double* %2202, align 1
  %2204 = inttoptr i64 %2198 to double*
  store double %2203, double* %2204
  store %struct.Memory* %loadMem_41b043, %struct.Memory** %MEMORY
  %loadMem_41b048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 33
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2207 to i64*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 15
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %2210 to i64*
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2212 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2211, i64 0, i64 0
  %YMM0.i176 = bitcast %union.VectorReg* %2212 to %"class.std::bitset"*
  %2213 = bitcast %"class.std::bitset"* %YMM0.i176 to i8*
  %2214 = load i64, i64* %RBP.i175
  %2215 = sub i64 %2214, 24
  %2216 = load i64, i64* %PC.i174
  %2217 = add i64 %2216, 5
  store i64 %2217, i64* %PC.i174
  %2218 = inttoptr i64 %2215 to i32*
  %2219 = load i32, i32* %2218
  %2220 = sitofp i32 %2219 to double
  %2221 = bitcast i8* %2213 to double*
  store double %2220, double* %2221, align 1
  store %struct.Memory* %loadMem_41b048, %struct.Memory** %MEMORY
  %loadMem_41b04d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 33
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %2224 to i64*
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 15
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %2227 to i64*
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2229 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2228, i64 0, i64 2
  %YMM2.i173 = bitcast %union.VectorReg* %2229 to %"class.std::bitset"*
  %2230 = bitcast %"class.std::bitset"* %YMM2.i173 to i8*
  %2231 = load i64, i64* %RBP.i172
  %2232 = sub i64 %2231, 28
  %2233 = load i64, i64* %PC.i171
  %2234 = add i64 %2233, 5
  store i64 %2234, i64* %PC.i171
  %2235 = inttoptr i64 %2232 to float*
  %2236 = load float, float* %2235
  %2237 = fpext float %2236 to double
  %2238 = bitcast i8* %2230 to double*
  store double %2237, double* %2238, align 1
  store %struct.Memory* %loadMem_41b04d, %struct.Memory** %MEMORY
  %loadMem_41b052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 33
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %2241 to i64*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2243 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2242, i64 0, i64 0
  %YMM0.i169 = bitcast %union.VectorReg* %2243 to %"class.std::bitset"*
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2245 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2244, i64 0, i64 2
  %XMM2.i170 = bitcast %union.VectorReg* %2245 to %union.vec128_t*
  %2246 = bitcast %"class.std::bitset"* %YMM0.i169 to i8*
  %2247 = bitcast %"class.std::bitset"* %YMM0.i169 to i8*
  %2248 = bitcast %union.vec128_t* %XMM2.i170 to i8*
  %2249 = load i64, i64* %PC.i168
  %2250 = add i64 %2249, 4
  store i64 %2250, i64* %PC.i168
  %2251 = bitcast i8* %2247 to double*
  %2252 = load double, double* %2251, align 1
  %2253 = getelementptr inbounds i8, i8* %2247, i64 8
  %2254 = bitcast i8* %2253 to i64*
  %2255 = load i64, i64* %2254, align 1
  %2256 = bitcast i8* %2248 to double*
  %2257 = load double, double* %2256, align 1
  %2258 = fmul double %2252, %2257
  %2259 = bitcast i8* %2246 to double*
  store double %2258, double* %2259, align 1
  %2260 = getelementptr inbounds i8, i8* %2246, i64 8
  %2261 = bitcast i8* %2260 to i64*
  store i64 %2255, i64* %2261, align 1
  store %struct.Memory* %loadMem_41b052, %struct.Memory** %MEMORY
  %loadMem_41b056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 33
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2264 to i64*
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 15
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %2267 to i64*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2268, i64 0, i64 2
  %YMM2.i167 = bitcast %union.VectorReg* %2269 to %"class.std::bitset"*
  %2270 = bitcast %"class.std::bitset"* %YMM2.i167 to i8*
  %2271 = load i64, i64* %RBP.i166
  %2272 = sub i64 %2271, 32
  %2273 = load i64, i64* %PC.i165
  %2274 = add i64 %2273, 5
  store i64 %2274, i64* %PC.i165
  %2275 = inttoptr i64 %2272 to float*
  %2276 = load float, float* %2275
  %2277 = fpext float %2276 to double
  %2278 = bitcast i8* %2270 to double*
  store double %2277, double* %2278, align 1
  store %struct.Memory* %loadMem_41b056, %struct.Memory** %MEMORY
  %loadMem_41b05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 33
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2281 to i64*
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2282, i64 0, i64 1
  %YMM1.i163 = bitcast %union.VectorReg* %2283 to %"class.std::bitset"*
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2284, i64 0, i64 2
  %XMM2.i164 = bitcast %union.VectorReg* %2285 to %union.vec128_t*
  %2286 = bitcast %"class.std::bitset"* %YMM1.i163 to i8*
  %2287 = bitcast %"class.std::bitset"* %YMM1.i163 to i8*
  %2288 = bitcast %union.vec128_t* %XMM2.i164 to i8*
  %2289 = load i64, i64* %PC.i162
  %2290 = add i64 %2289, 4
  store i64 %2290, i64* %PC.i162
  %2291 = bitcast i8* %2287 to double*
  %2292 = load double, double* %2291, align 1
  %2293 = getelementptr inbounds i8, i8* %2287, i64 8
  %2294 = bitcast i8* %2293 to i64*
  %2295 = load i64, i64* %2294, align 1
  %2296 = bitcast i8* %2288 to double*
  %2297 = load double, double* %2296, align 1
  %2298 = fmul double %2292, %2297
  %2299 = bitcast i8* %2286 to double*
  store double %2298, double* %2299, align 1
  %2300 = getelementptr inbounds i8, i8* %2286, i64 8
  %2301 = bitcast i8* %2300 to i64*
  store i64 %2295, i64* %2301, align 1
  store %struct.Memory* %loadMem_41b05b, %struct.Memory** %MEMORY
  %loadMem_41b05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 33
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2304 to i64*
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 15
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %2307 to i64*
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2308, i64 0, i64 2
  %YMM2.i161 = bitcast %union.VectorReg* %2309 to %"class.std::bitset"*
  %2310 = bitcast %"class.std::bitset"* %YMM2.i161 to i8*
  %2311 = load i64, i64* %RBP.i160
  %2312 = sub i64 %2311, 28
  %2313 = load i64, i64* %PC.i159
  %2314 = add i64 %2313, 5
  store i64 %2314, i64* %PC.i159
  %2315 = inttoptr i64 %2312 to float*
  %2316 = load float, float* %2315
  %2317 = fpext float %2316 to double
  %2318 = bitcast i8* %2310 to double*
  store double %2317, double* %2318, align 1
  store %struct.Memory* %loadMem_41b05f, %struct.Memory** %MEMORY
  %loadMem_41b064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 33
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %2321 to i64*
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2323 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2322, i64 0, i64 1
  %YMM1.i157 = bitcast %union.VectorReg* %2323 to %"class.std::bitset"*
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2325 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2324, i64 0, i64 2
  %XMM2.i158 = bitcast %union.VectorReg* %2325 to %union.vec128_t*
  %2326 = bitcast %"class.std::bitset"* %YMM1.i157 to i8*
  %2327 = bitcast %"class.std::bitset"* %YMM1.i157 to i8*
  %2328 = bitcast %union.vec128_t* %XMM2.i158 to i8*
  %2329 = load i64, i64* %PC.i156
  %2330 = add i64 %2329, 4
  store i64 %2330, i64* %PC.i156
  %2331 = bitcast i8* %2327 to double*
  %2332 = load double, double* %2331, align 1
  %2333 = getelementptr inbounds i8, i8* %2327, i64 8
  %2334 = bitcast i8* %2333 to i64*
  %2335 = load i64, i64* %2334, align 1
  %2336 = bitcast i8* %2328 to double*
  %2337 = load double, double* %2336, align 1
  %2338 = fmul double %2332, %2337
  %2339 = bitcast i8* %2326 to double*
  store double %2338, double* %2339, align 1
  %2340 = getelementptr inbounds i8, i8* %2326, i64 8
  %2341 = bitcast i8* %2340 to i64*
  store i64 %2335, i64* %2341, align 1
  store %struct.Memory* %loadMem_41b064, %struct.Memory** %MEMORY
  %loadMem_41b068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 33
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2344 to i64*
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 15
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %2347 to i64*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2349 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2348, i64 0, i64 0
  %XMM0.i155 = bitcast %union.VectorReg* %2349 to %union.vec128_t*
  %2350 = load i64, i64* %RBP.i154
  %2351 = sub i64 %2350, 152
  %2352 = bitcast %union.vec128_t* %XMM0.i155 to i8*
  %2353 = load i64, i64* %PC.i153
  %2354 = add i64 %2353, 8
  store i64 %2354, i64* %PC.i153
  %2355 = bitcast i8* %2352 to double*
  %2356 = load double, double* %2355, align 1
  %2357 = inttoptr i64 %2351 to double*
  store double %2356, double* %2357
  store %struct.Memory* %loadMem_41b068, %struct.Memory** %MEMORY
  %loadMem_41b070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 33
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %2360 to i64*
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2362 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2361, i64 0, i64 0
  %YMM0.i151 = bitcast %union.VectorReg* %2362 to %"class.std::bitset"*
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2364 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2363, i64 0, i64 1
  %XMM1.i152 = bitcast %union.VectorReg* %2364 to %union.vec128_t*
  %2365 = bitcast %"class.std::bitset"* %YMM0.i151 to i8*
  %2366 = bitcast %union.vec128_t* %XMM1.i152 to i8*
  %2367 = load i64, i64* %PC.i150
  %2368 = add i64 %2367, 3
  store i64 %2368, i64* %PC.i150
  %2369 = bitcast i8* %2366 to <2 x i32>*
  %2370 = load <2 x i32>, <2 x i32>* %2369, align 1
  %2371 = getelementptr inbounds i8, i8* %2366, i64 8
  %2372 = bitcast i8* %2371 to <2 x i32>*
  %2373 = load <2 x i32>, <2 x i32>* %2372, align 1
  %2374 = extractelement <2 x i32> %2370, i32 0
  %2375 = bitcast i8* %2365 to i32*
  store i32 %2374, i32* %2375, align 1
  %2376 = extractelement <2 x i32> %2370, i32 1
  %2377 = getelementptr inbounds i8, i8* %2365, i64 4
  %2378 = bitcast i8* %2377 to i32*
  store i32 %2376, i32* %2378, align 1
  %2379 = extractelement <2 x i32> %2373, i32 0
  %2380 = getelementptr inbounds i8, i8* %2365, i64 8
  %2381 = bitcast i8* %2380 to i32*
  store i32 %2379, i32* %2381, align 1
  %2382 = extractelement <2 x i32> %2373, i32 1
  %2383 = getelementptr inbounds i8, i8* %2365, i64 12
  %2384 = bitcast i8* %2383 to i32*
  store i32 %2382, i32* %2384, align 1
  store %struct.Memory* %loadMem_41b070, %struct.Memory** %MEMORY
  %loadMem1_41b073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2386 = getelementptr inbounds %struct.GPR, %struct.GPR* %2385, i32 0, i32 33
  %2387 = getelementptr inbounds %struct.Reg, %struct.Reg* %2386, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %2387 to i64*
  %2388 = load i64, i64* %PC.i149
  %2389 = add i64 %2388, -105555
  %2390 = load i64, i64* %PC.i149
  %2391 = add i64 %2390, 5
  %2392 = load i64, i64* %PC.i149
  %2393 = add i64 %2392, 5
  store i64 %2393, i64* %PC.i149
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2395 = load i64, i64* %2394, align 8
  %2396 = add i64 %2395, -8
  %2397 = inttoptr i64 %2396 to i64*
  store i64 %2391, i64* %2397
  store i64 %2396, i64* %2394, align 8
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2389, i64* %2398, align 8
  store %struct.Memory* %loadMem1_41b073, %struct.Memory** %MEMORY
  %loadMem2_41b073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b073 = load i64, i64* %3
  %2399 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_41b073)
  store %struct.Memory* %2399, %struct.Memory** %MEMORY
  %loadMem_41b078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 33
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2404 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2403, i64 0, i64 1
  %YMM1.i146 = bitcast %union.VectorReg* %2404 to %"class.std::bitset"*
  %2405 = bitcast %"class.std::bitset"* %YMM1.i146 to i8*
  %2406 = load i64, i64* %PC.i145
  %2407 = add i64 %2406, ptrtoint (%G_0x397b0__rip__type* @G_0x397b0__rip_ to i64)
  %2408 = load i64, i64* %PC.i145
  %2409 = add i64 %2408, 8
  store i64 %2409, i64* %PC.i145
  %2410 = inttoptr i64 %2407 to double*
  %2411 = load double, double* %2410
  %2412 = bitcast i8* %2405 to double*
  store double %2411, double* %2412, align 1
  %2413 = getelementptr inbounds i8, i8* %2405, i64 8
  %2414 = bitcast i8* %2413 to double*
  store double 0.000000e+00, double* %2414, align 1
  store %struct.Memory* %loadMem_41b078, %struct.Memory** %MEMORY
  %loadMem_41b080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 33
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %2417 to i64*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 15
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %2420 to i64*
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2422 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2421, i64 0, i64 2
  %YMM2.i144 = bitcast %union.VectorReg* %2422 to %"class.std::bitset"*
  %2423 = bitcast %"class.std::bitset"* %YMM2.i144 to i8*
  %2424 = load i64, i64* %RBP.i143
  %2425 = sub i64 %2424, 152
  %2426 = load i64, i64* %PC.i142
  %2427 = add i64 %2426, 8
  store i64 %2427, i64* %PC.i142
  %2428 = inttoptr i64 %2425 to double*
  %2429 = load double, double* %2428
  %2430 = bitcast i8* %2423 to double*
  store double %2429, double* %2430, align 1
  %2431 = getelementptr inbounds i8, i8* %2423, i64 8
  %2432 = bitcast i8* %2431 to double*
  store double 0.000000e+00, double* %2432, align 1
  store %struct.Memory* %loadMem_41b080, %struct.Memory** %MEMORY
  %loadMem_41b088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2434 = getelementptr inbounds %struct.GPR, %struct.GPR* %2433, i32 0, i32 33
  %2435 = getelementptr inbounds %struct.Reg, %struct.Reg* %2434, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %2435 to i64*
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2437 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2436, i64 0, i64 2
  %YMM2.i140 = bitcast %union.VectorReg* %2437 to %"class.std::bitset"*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2439 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2438, i64 0, i64 0
  %XMM0.i141 = bitcast %union.VectorReg* %2439 to %union.vec128_t*
  %2440 = bitcast %"class.std::bitset"* %YMM2.i140 to i8*
  %2441 = bitcast %"class.std::bitset"* %YMM2.i140 to i8*
  %2442 = bitcast %union.vec128_t* %XMM0.i141 to i8*
  %2443 = load i64, i64* %PC.i139
  %2444 = add i64 %2443, 4
  store i64 %2444, i64* %PC.i139
  %2445 = bitcast i8* %2441 to double*
  %2446 = load double, double* %2445, align 1
  %2447 = getelementptr inbounds i8, i8* %2441, i64 8
  %2448 = bitcast i8* %2447 to i64*
  %2449 = load i64, i64* %2448, align 1
  %2450 = bitcast i8* %2442 to double*
  %2451 = load double, double* %2450, align 1
  %2452 = fmul double %2446, %2451
  %2453 = bitcast i8* %2440 to double*
  store double %2452, double* %2453, align 1
  %2454 = getelementptr inbounds i8, i8* %2440, i64 8
  %2455 = bitcast i8* %2454 to i64*
  store i64 %2449, i64* %2455, align 1
  store %struct.Memory* %loadMem_41b088, %struct.Memory** %MEMORY
  %loadMem_41b08c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 33
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %2458 to i64*
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 15
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2463 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2462, i64 0, i64 2
  %YMM2.i138 = bitcast %union.VectorReg* %2463 to %"class.std::bitset"*
  %2464 = bitcast %"class.std::bitset"* %YMM2.i138 to i8*
  %2465 = bitcast %"class.std::bitset"* %YMM2.i138 to i8*
  %2466 = load i64, i64* %RBP.i137
  %2467 = sub i64 %2466, 64
  %2468 = load i64, i64* %PC.i136
  %2469 = add i64 %2468, 5
  store i64 %2469, i64* %PC.i136
  %2470 = bitcast i8* %2465 to double*
  %2471 = load double, double* %2470, align 1
  %2472 = getelementptr inbounds i8, i8* %2465, i64 8
  %2473 = bitcast i8* %2472 to i64*
  %2474 = load i64, i64* %2473, align 1
  %2475 = inttoptr i64 %2467 to double*
  %2476 = load double, double* %2475
  %2477 = fadd double %2471, %2476
  %2478 = bitcast i8* %2464 to double*
  store double %2477, double* %2478, align 1
  %2479 = getelementptr inbounds i8, i8* %2464, i64 8
  %2480 = bitcast i8* %2479 to i64*
  store i64 %2474, i64* %2480, align 1
  store %struct.Memory* %loadMem_41b08c, %struct.Memory** %MEMORY
  %loadMem_41b091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 33
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 15
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2488 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2487, i64 0, i64 2
  %XMM2.i135 = bitcast %union.VectorReg* %2488 to %union.vec128_t*
  %2489 = load i64, i64* %RBP.i134
  %2490 = sub i64 %2489, 64
  %2491 = bitcast %union.vec128_t* %XMM2.i135 to i8*
  %2492 = load i64, i64* %PC.i133
  %2493 = add i64 %2492, 5
  store i64 %2493, i64* %PC.i133
  %2494 = bitcast i8* %2491 to double*
  %2495 = load double, double* %2494, align 1
  %2496 = inttoptr i64 %2490 to double*
  store double %2495, double* %2496
  store %struct.Memory* %loadMem_41b091, %struct.Memory** %MEMORY
  %loadMem_41b096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 33
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %2499 to i64*
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 15
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %2502 to i64*
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2504 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2503, i64 0, i64 0
  %YMM0.i132 = bitcast %union.VectorReg* %2504 to %"class.std::bitset"*
  %2505 = bitcast %"class.std::bitset"* %YMM0.i132 to i8*
  %2506 = load i64, i64* %RBP.i131
  %2507 = sub i64 %2506, 24
  %2508 = load i64, i64* %PC.i130
  %2509 = add i64 %2508, 5
  store i64 %2509, i64* %PC.i130
  %2510 = inttoptr i64 %2507 to i32*
  %2511 = load i32, i32* %2510
  %2512 = sitofp i32 %2511 to double
  %2513 = bitcast i8* %2505 to double*
  store double %2512, double* %2513, align 1
  store %struct.Memory* %loadMem_41b096, %struct.Memory** %MEMORY
  %loadMem_41b09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 33
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 15
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %2519 to i64*
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2521 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2520, i64 0, i64 2
  %YMM2.i129 = bitcast %union.VectorReg* %2521 to %"class.std::bitset"*
  %2522 = bitcast %"class.std::bitset"* %YMM2.i129 to i8*
  %2523 = load i64, i64* %RBP.i128
  %2524 = sub i64 %2523, 28
  %2525 = load i64, i64* %PC.i127
  %2526 = add i64 %2525, 5
  store i64 %2526, i64* %PC.i127
  %2527 = inttoptr i64 %2524 to float*
  %2528 = load float, float* %2527
  %2529 = fpext float %2528 to double
  %2530 = bitcast i8* %2522 to double*
  store double %2529, double* %2530, align 1
  store %struct.Memory* %loadMem_41b09b, %struct.Memory** %MEMORY
  %loadMem_41b0a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 33
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %2533 to i64*
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2535 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2534, i64 0, i64 0
  %YMM0.i125 = bitcast %union.VectorReg* %2535 to %"class.std::bitset"*
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2537 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2536, i64 0, i64 2
  %XMM2.i126 = bitcast %union.VectorReg* %2537 to %union.vec128_t*
  %2538 = bitcast %"class.std::bitset"* %YMM0.i125 to i8*
  %2539 = bitcast %"class.std::bitset"* %YMM0.i125 to i8*
  %2540 = bitcast %union.vec128_t* %XMM2.i126 to i8*
  %2541 = load i64, i64* %PC.i124
  %2542 = add i64 %2541, 4
  store i64 %2542, i64* %PC.i124
  %2543 = bitcast i8* %2539 to double*
  %2544 = load double, double* %2543, align 1
  %2545 = getelementptr inbounds i8, i8* %2539, i64 8
  %2546 = bitcast i8* %2545 to i64*
  %2547 = load i64, i64* %2546, align 1
  %2548 = bitcast i8* %2540 to double*
  %2549 = load double, double* %2548, align 1
  %2550 = fmul double %2544, %2549
  %2551 = bitcast i8* %2538 to double*
  store double %2550, double* %2551, align 1
  %2552 = getelementptr inbounds i8, i8* %2538, i64 8
  %2553 = bitcast i8* %2552 to i64*
  store i64 %2547, i64* %2553, align 1
  store %struct.Memory* %loadMem_41b0a0, %struct.Memory** %MEMORY
  %loadMem_41b0a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2555 = getelementptr inbounds %struct.GPR, %struct.GPR* %2554, i32 0, i32 33
  %2556 = getelementptr inbounds %struct.Reg, %struct.Reg* %2555, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2556 to i64*
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2558 = getelementptr inbounds %struct.GPR, %struct.GPR* %2557, i32 0, i32 15
  %2559 = getelementptr inbounds %struct.Reg, %struct.Reg* %2558, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %2559 to i64*
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2561 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2560, i64 0, i64 2
  %YMM2.i123 = bitcast %union.VectorReg* %2561 to %"class.std::bitset"*
  %2562 = bitcast %"class.std::bitset"* %YMM2.i123 to i8*
  %2563 = load i64, i64* %RBP.i122
  %2564 = sub i64 %2563, 28
  %2565 = load i64, i64* %PC.i121
  %2566 = add i64 %2565, 5
  store i64 %2566, i64* %PC.i121
  %2567 = inttoptr i64 %2564 to float*
  %2568 = load float, float* %2567
  %2569 = fpext float %2568 to double
  %2570 = bitcast i8* %2562 to double*
  store double %2569, double* %2570, align 1
  store %struct.Memory* %loadMem_41b0a4, %struct.Memory** %MEMORY
  %loadMem_41b0a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 33
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2573 to i64*
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2575 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2574, i64 0, i64 0
  %YMM0.i119 = bitcast %union.VectorReg* %2575 to %"class.std::bitset"*
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2577 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2576, i64 0, i64 2
  %XMM2.i120 = bitcast %union.VectorReg* %2577 to %union.vec128_t*
  %2578 = bitcast %"class.std::bitset"* %YMM0.i119 to i8*
  %2579 = bitcast %"class.std::bitset"* %YMM0.i119 to i8*
  %2580 = bitcast %union.vec128_t* %XMM2.i120 to i8*
  %2581 = load i64, i64* %PC.i118
  %2582 = add i64 %2581, 4
  store i64 %2582, i64* %PC.i118
  %2583 = bitcast i8* %2579 to double*
  %2584 = load double, double* %2583, align 1
  %2585 = getelementptr inbounds i8, i8* %2579, i64 8
  %2586 = bitcast i8* %2585 to i64*
  %2587 = load i64, i64* %2586, align 1
  %2588 = bitcast i8* %2580 to double*
  %2589 = load double, double* %2588, align 1
  %2590 = fmul double %2584, %2589
  %2591 = bitcast i8* %2578 to double*
  store double %2590, double* %2591, align 1
  %2592 = getelementptr inbounds i8, i8* %2578, i64 8
  %2593 = bitcast i8* %2592 to i64*
  store i64 %2587, i64* %2593, align 1
  store %struct.Memory* %loadMem_41b0a9, %struct.Memory** %MEMORY
  %loadMem_41b0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 33
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2596 to i64*
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 15
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %2599 to i64*
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2601 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2600, i64 0, i64 2
  %YMM2.i117 = bitcast %union.VectorReg* %2601 to %"class.std::bitset"*
  %2602 = bitcast %"class.std::bitset"* %YMM2.i117 to i8*
  %2603 = load i64, i64* %RBP.i116
  %2604 = sub i64 %2603, 32
  %2605 = load i64, i64* %PC.i115
  %2606 = add i64 %2605, 5
  store i64 %2606, i64* %PC.i115
  %2607 = inttoptr i64 %2604 to float*
  %2608 = load float, float* %2607
  %2609 = fpext float %2608 to double
  %2610 = bitcast i8* %2602 to double*
  store double %2609, double* %2610, align 1
  store %struct.Memory* %loadMem_41b0ad, %struct.Memory** %MEMORY
  %loadMem_41b0b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 33
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %2613 to i64*
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2615 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2614, i64 0, i64 1
  %YMM1.i113 = bitcast %union.VectorReg* %2615 to %"class.std::bitset"*
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2617 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2616, i64 0, i64 2
  %XMM2.i114 = bitcast %union.VectorReg* %2617 to %union.vec128_t*
  %2618 = bitcast %"class.std::bitset"* %YMM1.i113 to i8*
  %2619 = bitcast %"class.std::bitset"* %YMM1.i113 to i8*
  %2620 = bitcast %union.vec128_t* %XMM2.i114 to i8*
  %2621 = load i64, i64* %PC.i112
  %2622 = add i64 %2621, 4
  store i64 %2622, i64* %PC.i112
  %2623 = bitcast i8* %2619 to double*
  %2624 = load double, double* %2623, align 1
  %2625 = getelementptr inbounds i8, i8* %2619, i64 8
  %2626 = bitcast i8* %2625 to i64*
  %2627 = load i64, i64* %2626, align 1
  %2628 = bitcast i8* %2620 to double*
  %2629 = load double, double* %2628, align 1
  %2630 = fmul double %2624, %2629
  %2631 = bitcast i8* %2618 to double*
  store double %2630, double* %2631, align 1
  %2632 = getelementptr inbounds i8, i8* %2618, i64 8
  %2633 = bitcast i8* %2632 to i64*
  store i64 %2627, i64* %2633, align 1
  store %struct.Memory* %loadMem_41b0b2, %struct.Memory** %MEMORY
  %loadMem_41b0b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 33
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %2636 to i64*
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 15
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %2639 to i64*
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2641 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2640, i64 0, i64 2
  %YMM2.i111 = bitcast %union.VectorReg* %2641 to %"class.std::bitset"*
  %2642 = bitcast %"class.std::bitset"* %YMM2.i111 to i8*
  %2643 = load i64, i64* %RBP.i110
  %2644 = sub i64 %2643, 28
  %2645 = load i64, i64* %PC.i109
  %2646 = add i64 %2645, 5
  store i64 %2646, i64* %PC.i109
  %2647 = inttoptr i64 %2644 to float*
  %2648 = load float, float* %2647
  %2649 = fpext float %2648 to double
  %2650 = bitcast i8* %2642 to double*
  store double %2649, double* %2650, align 1
  store %struct.Memory* %loadMem_41b0b6, %struct.Memory** %MEMORY
  %loadMem_41b0bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 33
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2655 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2654, i64 0, i64 1
  %YMM1.i107 = bitcast %union.VectorReg* %2655 to %"class.std::bitset"*
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2657 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2656, i64 0, i64 2
  %XMM2.i108 = bitcast %union.VectorReg* %2657 to %union.vec128_t*
  %2658 = bitcast %"class.std::bitset"* %YMM1.i107 to i8*
  %2659 = bitcast %"class.std::bitset"* %YMM1.i107 to i8*
  %2660 = bitcast %union.vec128_t* %XMM2.i108 to i8*
  %2661 = load i64, i64* %PC.i106
  %2662 = add i64 %2661, 4
  store i64 %2662, i64* %PC.i106
  %2663 = bitcast i8* %2659 to double*
  %2664 = load double, double* %2663, align 1
  %2665 = getelementptr inbounds i8, i8* %2659, i64 8
  %2666 = bitcast i8* %2665 to i64*
  %2667 = load i64, i64* %2666, align 1
  %2668 = bitcast i8* %2660 to double*
  %2669 = load double, double* %2668, align 1
  %2670 = fmul double %2664, %2669
  %2671 = bitcast i8* %2658 to double*
  store double %2670, double* %2671, align 1
  %2672 = getelementptr inbounds i8, i8* %2658, i64 8
  %2673 = bitcast i8* %2672 to i64*
  store i64 %2667, i64* %2673, align 1
  store %struct.Memory* %loadMem_41b0bb, %struct.Memory** %MEMORY
  %loadMem_41b0bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 33
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 15
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %2679 to i64*
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2681 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2680, i64 0, i64 0
  %XMM0.i105 = bitcast %union.VectorReg* %2681 to %union.vec128_t*
  %2682 = load i64, i64* %RBP.i104
  %2683 = sub i64 %2682, 160
  %2684 = bitcast %union.vec128_t* %XMM0.i105 to i8*
  %2685 = load i64, i64* %PC.i103
  %2686 = add i64 %2685, 8
  store i64 %2686, i64* %PC.i103
  %2687 = bitcast i8* %2684 to double*
  %2688 = load double, double* %2687, align 1
  %2689 = inttoptr i64 %2683 to double*
  store double %2688, double* %2689
  store %struct.Memory* %loadMem_41b0bf, %struct.Memory** %MEMORY
  %loadMem_41b0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 33
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2692 to i64*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2694 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2693, i64 0, i64 0
  %YMM0.i101 = bitcast %union.VectorReg* %2694 to %"class.std::bitset"*
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2696 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2695, i64 0, i64 1
  %XMM1.i102 = bitcast %union.VectorReg* %2696 to %union.vec128_t*
  %2697 = bitcast %"class.std::bitset"* %YMM0.i101 to i8*
  %2698 = bitcast %union.vec128_t* %XMM1.i102 to i8*
  %2699 = load i64, i64* %PC.i100
  %2700 = add i64 %2699, 3
  store i64 %2700, i64* %PC.i100
  %2701 = bitcast i8* %2698 to <2 x i32>*
  %2702 = load <2 x i32>, <2 x i32>* %2701, align 1
  %2703 = getelementptr inbounds i8, i8* %2698, i64 8
  %2704 = bitcast i8* %2703 to <2 x i32>*
  %2705 = load <2 x i32>, <2 x i32>* %2704, align 1
  %2706 = extractelement <2 x i32> %2702, i32 0
  %2707 = bitcast i8* %2697 to i32*
  store i32 %2706, i32* %2707, align 1
  %2708 = extractelement <2 x i32> %2702, i32 1
  %2709 = getelementptr inbounds i8, i8* %2697, i64 4
  %2710 = bitcast i8* %2709 to i32*
  store i32 %2708, i32* %2710, align 1
  %2711 = extractelement <2 x i32> %2705, i32 0
  %2712 = getelementptr inbounds i8, i8* %2697, i64 8
  %2713 = bitcast i8* %2712 to i32*
  store i32 %2711, i32* %2713, align 1
  %2714 = extractelement <2 x i32> %2705, i32 1
  %2715 = getelementptr inbounds i8, i8* %2697, i64 12
  %2716 = bitcast i8* %2715 to i32*
  store i32 %2714, i32* %2716, align 1
  store %struct.Memory* %loadMem_41b0c7, %struct.Memory** %MEMORY
  %loadMem1_41b0ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 33
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %2719 to i64*
  %2720 = load i64, i64* %PC.i99
  %2721 = add i64 %2720, -105642
  %2722 = load i64, i64* %PC.i99
  %2723 = add i64 %2722, 5
  %2724 = load i64, i64* %PC.i99
  %2725 = add i64 %2724, 5
  store i64 %2725, i64* %PC.i99
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2727 = load i64, i64* %2726, align 8
  %2728 = add i64 %2727, -8
  %2729 = inttoptr i64 %2728 to i64*
  store i64 %2723, i64* %2729
  store i64 %2728, i64* %2726, align 8
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2721, i64* %2730, align 8
  store %struct.Memory* %loadMem1_41b0ca, %struct.Memory** %MEMORY
  %loadMem2_41b0ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b0ca = load i64, i64* %3
  %2731 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_41b0ca)
  store %struct.Memory* %2731, %struct.Memory** %MEMORY
  %loadMem_41b0cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 33
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2736 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2735, i64 0, i64 1
  %YMM1.i95 = bitcast %union.VectorReg* %2736 to %"class.std::bitset"*
  %2737 = bitcast %"class.std::bitset"* %YMM1.i95 to i8*
  %2738 = load i64, i64* %PC.i94
  %2739 = add i64 %2738, ptrtoint (%G_0x39709__rip__type* @G_0x39709__rip_ to i64)
  %2740 = load i64, i64* %PC.i94
  %2741 = add i64 %2740, 8
  store i64 %2741, i64* %PC.i94
  %2742 = inttoptr i64 %2739 to double*
  %2743 = load double, double* %2742
  %2744 = bitcast i8* %2737 to double*
  store double %2743, double* %2744, align 1
  %2745 = getelementptr inbounds i8, i8* %2737, i64 8
  %2746 = bitcast i8* %2745 to double*
  store double 0.000000e+00, double* %2746, align 1
  store %struct.Memory* %loadMem_41b0cf, %struct.Memory** %MEMORY
  %loadMem_41b0d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 33
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %2749 to i64*
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 15
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %2752 to i64*
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2754 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2753, i64 0, i64 2
  %YMM2.i93 = bitcast %union.VectorReg* %2754 to %"class.std::bitset"*
  %2755 = bitcast %"class.std::bitset"* %YMM2.i93 to i8*
  %2756 = load i64, i64* %RBP.i92
  %2757 = sub i64 %2756, 160
  %2758 = load i64, i64* %PC.i91
  %2759 = add i64 %2758, 8
  store i64 %2759, i64* %PC.i91
  %2760 = inttoptr i64 %2757 to double*
  %2761 = load double, double* %2760
  %2762 = bitcast i8* %2755 to double*
  store double %2761, double* %2762, align 1
  %2763 = getelementptr inbounds i8, i8* %2755, i64 8
  %2764 = bitcast i8* %2763 to double*
  store double 0.000000e+00, double* %2764, align 1
  store %struct.Memory* %loadMem_41b0d7, %struct.Memory** %MEMORY
  %loadMem_41b0df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 33
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %2767 to i64*
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2769 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2768, i64 0, i64 2
  %YMM2.i89 = bitcast %union.VectorReg* %2769 to %"class.std::bitset"*
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2771 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2770, i64 0, i64 0
  %XMM0.i90 = bitcast %union.VectorReg* %2771 to %union.vec128_t*
  %2772 = bitcast %"class.std::bitset"* %YMM2.i89 to i8*
  %2773 = bitcast %"class.std::bitset"* %YMM2.i89 to i8*
  %2774 = bitcast %union.vec128_t* %XMM0.i90 to i8*
  %2775 = load i64, i64* %PC.i88
  %2776 = add i64 %2775, 4
  store i64 %2776, i64* %PC.i88
  %2777 = bitcast i8* %2773 to double*
  %2778 = load double, double* %2777, align 1
  %2779 = getelementptr inbounds i8, i8* %2773, i64 8
  %2780 = bitcast i8* %2779 to i64*
  %2781 = load i64, i64* %2780, align 1
  %2782 = bitcast i8* %2774 to double*
  %2783 = load double, double* %2782, align 1
  %2784 = fmul double %2778, %2783
  %2785 = bitcast i8* %2772 to double*
  store double %2784, double* %2785, align 1
  %2786 = getelementptr inbounds i8, i8* %2772, i64 8
  %2787 = bitcast i8* %2786 to i64*
  store i64 %2781, i64* %2787, align 1
  store %struct.Memory* %loadMem_41b0df, %struct.Memory** %MEMORY
  %loadMem_41b0e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 33
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %2790 to i64*
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2792 = getelementptr inbounds %struct.GPR, %struct.GPR* %2791, i32 0, i32 15
  %2793 = getelementptr inbounds %struct.Reg, %struct.Reg* %2792, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %2793 to i64*
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2795 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2794, i64 0, i64 2
  %YMM2.i87 = bitcast %union.VectorReg* %2795 to %"class.std::bitset"*
  %2796 = bitcast %"class.std::bitset"* %YMM2.i87 to i8*
  %2797 = bitcast %"class.std::bitset"* %YMM2.i87 to i8*
  %2798 = load i64, i64* %RBP.i86
  %2799 = sub i64 %2798, 72
  %2800 = load i64, i64* %PC.i85
  %2801 = add i64 %2800, 5
  store i64 %2801, i64* %PC.i85
  %2802 = bitcast i8* %2797 to double*
  %2803 = load double, double* %2802, align 1
  %2804 = getelementptr inbounds i8, i8* %2797, i64 8
  %2805 = bitcast i8* %2804 to i64*
  %2806 = load i64, i64* %2805, align 1
  %2807 = inttoptr i64 %2799 to double*
  %2808 = load double, double* %2807
  %2809 = fadd double %2803, %2808
  %2810 = bitcast i8* %2796 to double*
  store double %2809, double* %2810, align 1
  %2811 = getelementptr inbounds i8, i8* %2796, i64 8
  %2812 = bitcast i8* %2811 to i64*
  store i64 %2806, i64* %2812, align 1
  store %struct.Memory* %loadMem_41b0e3, %struct.Memory** %MEMORY
  %loadMem_41b0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 33
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %2815 to i64*
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 15
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %2818 to i64*
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2820 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2819, i64 0, i64 2
  %XMM2.i84 = bitcast %union.VectorReg* %2820 to %union.vec128_t*
  %2821 = load i64, i64* %RBP.i83
  %2822 = sub i64 %2821, 72
  %2823 = bitcast %union.vec128_t* %XMM2.i84 to i8*
  %2824 = load i64, i64* %PC.i82
  %2825 = add i64 %2824, 5
  store i64 %2825, i64* %PC.i82
  %2826 = bitcast i8* %2823 to double*
  %2827 = load double, double* %2826, align 1
  %2828 = inttoptr i64 %2822 to double*
  store double %2827, double* %2828
  store %struct.Memory* %loadMem_41b0e8, %struct.Memory** %MEMORY
  %loadMem_41b0ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 33
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %2831 to i64*
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 15
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %2834 to i64*
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2836 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2835, i64 0, i64 0
  %YMM0.i81 = bitcast %union.VectorReg* %2836 to %"class.std::bitset"*
  %2837 = bitcast %"class.std::bitset"* %YMM0.i81 to i8*
  %2838 = load i64, i64* %RBP.i80
  %2839 = sub i64 %2838, 32
  %2840 = load i64, i64* %PC.i79
  %2841 = add i64 %2840, 5
  store i64 %2841, i64* %PC.i79
  %2842 = inttoptr i64 %2839 to float*
  %2843 = load float, float* %2842
  %2844 = fpext float %2843 to double
  %2845 = bitcast i8* %2837 to double*
  store double %2844, double* %2845, align 1
  store %struct.Memory* %loadMem_41b0ed, %struct.Memory** %MEMORY
  %loadMem_41b0f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 33
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2848 to i64*
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2850 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2849, i64 0, i64 2
  %YMM2.i77 = bitcast %union.VectorReg* %2850 to %"class.std::bitset"*
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2852 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2851, i64 0, i64 1
  %XMM1.i78 = bitcast %union.VectorReg* %2852 to %union.vec128_t*
  %2853 = bitcast %"class.std::bitset"* %YMM2.i77 to i8*
  %2854 = bitcast %union.vec128_t* %XMM1.i78 to i8*
  %2855 = load i64, i64* %PC.i76
  %2856 = add i64 %2855, 3
  store i64 %2856, i64* %PC.i76
  %2857 = bitcast i8* %2854 to <2 x i32>*
  %2858 = load <2 x i32>, <2 x i32>* %2857, align 1
  %2859 = getelementptr inbounds i8, i8* %2854, i64 8
  %2860 = bitcast i8* %2859 to <2 x i32>*
  %2861 = load <2 x i32>, <2 x i32>* %2860, align 1
  %2862 = extractelement <2 x i32> %2858, i32 0
  %2863 = bitcast i8* %2853 to i32*
  store i32 %2862, i32* %2863, align 1
  %2864 = extractelement <2 x i32> %2858, i32 1
  %2865 = getelementptr inbounds i8, i8* %2853, i64 4
  %2866 = bitcast i8* %2865 to i32*
  store i32 %2864, i32* %2866, align 1
  %2867 = extractelement <2 x i32> %2861, i32 0
  %2868 = getelementptr inbounds i8, i8* %2853, i64 8
  %2869 = bitcast i8* %2868 to i32*
  store i32 %2867, i32* %2869, align 1
  %2870 = extractelement <2 x i32> %2861, i32 1
  %2871 = getelementptr inbounds i8, i8* %2853, i64 12
  %2872 = bitcast i8* %2871 to i32*
  store i32 %2870, i32* %2872, align 1
  store %struct.Memory* %loadMem_41b0f2, %struct.Memory** %MEMORY
  %loadMem_41b0f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 33
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2875 to i64*
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2877 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2876, i64 0, i64 2
  %YMM2.i74 = bitcast %union.VectorReg* %2877 to %"class.std::bitset"*
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2879 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2878, i64 0, i64 0
  %XMM0.i75 = bitcast %union.VectorReg* %2879 to %union.vec128_t*
  %2880 = bitcast %"class.std::bitset"* %YMM2.i74 to i8*
  %2881 = bitcast %"class.std::bitset"* %YMM2.i74 to i8*
  %2882 = bitcast %union.vec128_t* %XMM0.i75 to i8*
  %2883 = load i64, i64* %PC.i73
  %2884 = add i64 %2883, 4
  store i64 %2884, i64* %PC.i73
  %2885 = bitcast i8* %2881 to double*
  %2886 = load double, double* %2885, align 1
  %2887 = getelementptr inbounds i8, i8* %2881, i64 8
  %2888 = bitcast i8* %2887 to i64*
  %2889 = load i64, i64* %2888, align 1
  %2890 = bitcast i8* %2882 to double*
  %2891 = load double, double* %2890, align 1
  %2892 = fdiv double %2886, %2891
  %2893 = bitcast i8* %2880 to double*
  store double %2892, double* %2893, align 1
  %2894 = getelementptr inbounds i8, i8* %2880, i64 8
  %2895 = bitcast i8* %2894 to i64*
  store i64 %2889, i64* %2895, align 1
  store %struct.Memory* %loadMem_41b0f5, %struct.Memory** %MEMORY
  %loadMem_41b0f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 33
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2898 to i64*
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 15
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2903 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2902, i64 0, i64 0
  %YMM0.i72 = bitcast %union.VectorReg* %2903 to %"class.std::bitset"*
  %2904 = bitcast %"class.std::bitset"* %YMM0.i72 to i8*
  %2905 = load i64, i64* %RBP.i71
  %2906 = sub i64 %2905, 80
  %2907 = load i64, i64* %PC.i70
  %2908 = add i64 %2907, 5
  store i64 %2908, i64* %PC.i70
  %2909 = inttoptr i64 %2906 to double*
  %2910 = load double, double* %2909
  %2911 = bitcast i8* %2904 to double*
  store double %2910, double* %2911, align 1
  %2912 = getelementptr inbounds i8, i8* %2904, i64 8
  %2913 = bitcast i8* %2912 to double*
  store double 0.000000e+00, double* %2913, align 1
  store %struct.Memory* %loadMem_41b0f9, %struct.Memory** %MEMORY
  %loadMem_41b0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 33
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2916 to i64*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 15
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %2919 to i64*
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2921 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2920, i64 0, i64 0
  %YMM0.i69 = bitcast %union.VectorReg* %2921 to %"class.std::bitset"*
  %2922 = bitcast %"class.std::bitset"* %YMM0.i69 to i8*
  %2923 = bitcast %"class.std::bitset"* %YMM0.i69 to i8*
  %2924 = load i64, i64* %RBP.i68
  %2925 = sub i64 %2924, 96
  %2926 = load i64, i64* %PC.i67
  %2927 = add i64 %2926, 5
  store i64 %2927, i64* %PC.i67
  %2928 = bitcast i8* %2923 to double*
  %2929 = load double, double* %2928, align 1
  %2930 = getelementptr inbounds i8, i8* %2923, i64 8
  %2931 = bitcast i8* %2930 to i64*
  %2932 = load i64, i64* %2931, align 1
  %2933 = inttoptr i64 %2925 to double*
  %2934 = load double, double* %2933
  %2935 = fdiv double %2929, %2934
  %2936 = bitcast i8* %2922 to double*
  store double %2935, double* %2936, align 1
  %2937 = getelementptr inbounds i8, i8* %2922, i64 8
  %2938 = bitcast i8* %2937 to i64*
  store i64 %2932, i64* %2938, align 1
  store %struct.Memory* %loadMem_41b0fe, %struct.Memory** %MEMORY
  %loadMem_41b103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 33
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2941 to i64*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2943 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2942, i64 0, i64 2
  %YMM2.i65 = bitcast %union.VectorReg* %2943 to %"class.std::bitset"*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2945 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2944, i64 0, i64 0
  %XMM0.i66 = bitcast %union.VectorReg* %2945 to %union.vec128_t*
  %2946 = bitcast %"class.std::bitset"* %YMM2.i65 to i8*
  %2947 = bitcast %"class.std::bitset"* %YMM2.i65 to i8*
  %2948 = bitcast %union.vec128_t* %XMM0.i66 to i8*
  %2949 = load i64, i64* %PC.i64
  %2950 = add i64 %2949, 4
  store i64 %2950, i64* %PC.i64
  %2951 = bitcast i8* %2947 to double*
  %2952 = load double, double* %2951, align 1
  %2953 = getelementptr inbounds i8, i8* %2947, i64 8
  %2954 = bitcast i8* %2953 to i64*
  %2955 = load i64, i64* %2954, align 1
  %2956 = bitcast i8* %2948 to double*
  %2957 = load double, double* %2956, align 1
  %2958 = fsub double %2952, %2957
  %2959 = bitcast i8* %2946 to double*
  store double %2958, double* %2959, align 1
  %2960 = getelementptr inbounds i8, i8* %2946, i64 8
  %2961 = bitcast i8* %2960 to i64*
  store i64 %2955, i64* %2961, align 1
  store %struct.Memory* %loadMem_41b103, %struct.Memory** %MEMORY
  %loadMem_41b107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 33
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2964 to i64*
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 15
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %2967 to i64*
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2969 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2968, i64 0, i64 0
  %YMM0.i63 = bitcast %union.VectorReg* %2969 to %"class.std::bitset"*
  %2970 = bitcast %"class.std::bitset"* %YMM0.i63 to i8*
  %2971 = load i64, i64* %RBP.i62
  %2972 = sub i64 %2971, 64
  %2973 = load i64, i64* %PC.i61
  %2974 = add i64 %2973, 5
  store i64 %2974, i64* %PC.i61
  %2975 = inttoptr i64 %2972 to double*
  %2976 = load double, double* %2975
  %2977 = bitcast i8* %2970 to double*
  store double %2976, double* %2977, align 1
  %2978 = getelementptr inbounds i8, i8* %2970, i64 8
  %2979 = bitcast i8* %2978 to double*
  store double 0.000000e+00, double* %2979, align 1
  store %struct.Memory* %loadMem_41b107, %struct.Memory** %MEMORY
  %loadMem_41b10c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 33
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2982 to i64*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 15
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2987 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2986, i64 0, i64 0
  %YMM0.i60 = bitcast %union.VectorReg* %2987 to %"class.std::bitset"*
  %2988 = bitcast %"class.std::bitset"* %YMM0.i60 to i8*
  %2989 = bitcast %"class.std::bitset"* %YMM0.i60 to i8*
  %2990 = load i64, i64* %RBP.i59
  %2991 = sub i64 %2990, 56
  %2992 = load i64, i64* %PC.i58
  %2993 = add i64 %2992, 5
  store i64 %2993, i64* %PC.i58
  %2994 = bitcast i8* %2989 to double*
  %2995 = load double, double* %2994, align 1
  %2996 = getelementptr inbounds i8, i8* %2989, i64 8
  %2997 = bitcast i8* %2996 to i64*
  %2998 = load i64, i64* %2997, align 1
  %2999 = inttoptr i64 %2991 to double*
  %3000 = load double, double* %2999
  %3001 = fdiv double %2995, %3000
  %3002 = bitcast i8* %2988 to double*
  store double %3001, double* %3002, align 1
  %3003 = getelementptr inbounds i8, i8* %2988, i64 8
  %3004 = bitcast i8* %3003 to i64*
  store i64 %2998, i64* %3004, align 1
  store %struct.Memory* %loadMem_41b10c, %struct.Memory** %MEMORY
  %loadMem_41b111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 33
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %3007 to i64*
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3009 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3008, i64 0, i64 2
  %YMM2.i56 = bitcast %union.VectorReg* %3009 to %"class.std::bitset"*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3011 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3010, i64 0, i64 0
  %XMM0.i57 = bitcast %union.VectorReg* %3011 to %union.vec128_t*
  %3012 = bitcast %"class.std::bitset"* %YMM2.i56 to i8*
  %3013 = bitcast %"class.std::bitset"* %YMM2.i56 to i8*
  %3014 = bitcast %union.vec128_t* %XMM0.i57 to i8*
  %3015 = load i64, i64* %PC.i55
  %3016 = add i64 %3015, 4
  store i64 %3016, i64* %PC.i55
  %3017 = bitcast i8* %3013 to double*
  %3018 = load double, double* %3017, align 1
  %3019 = getelementptr inbounds i8, i8* %3013, i64 8
  %3020 = bitcast i8* %3019 to i64*
  %3021 = load i64, i64* %3020, align 1
  %3022 = bitcast i8* %3014 to double*
  %3023 = load double, double* %3022, align 1
  %3024 = fadd double %3018, %3023
  %3025 = bitcast i8* %3012 to double*
  store double %3024, double* %3025, align 1
  %3026 = getelementptr inbounds i8, i8* %3012, i64 8
  %3027 = bitcast i8* %3026 to i64*
  store i64 %3021, i64* %3027, align 1
  store %struct.Memory* %loadMem_41b111, %struct.Memory** %MEMORY
  %loadMem_41b115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 33
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3030 to i64*
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3032 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3031, i64 0, i64 0
  %YMM0.i53 = bitcast %union.VectorReg* %3032 to %"class.std::bitset"*
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3034 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3033, i64 0, i64 2
  %XMM2.i54 = bitcast %union.VectorReg* %3034 to %union.vec128_t*
  %3035 = bitcast %"class.std::bitset"* %YMM0.i53 to i8*
  %3036 = bitcast %union.vec128_t* %XMM2.i54 to i8*
  %3037 = load i64, i64* %PC.i52
  %3038 = add i64 %3037, 4
  store i64 %3038, i64* %PC.i52
  %3039 = bitcast i8* %3035 to <2 x i32>*
  %3040 = load <2 x i32>, <2 x i32>* %3039, align 1
  %3041 = getelementptr inbounds i8, i8* %3035, i64 8
  %3042 = bitcast i8* %3041 to <2 x i32>*
  %3043 = load <2 x i32>, <2 x i32>* %3042, align 1
  %3044 = bitcast i8* %3036 to double*
  %3045 = load double, double* %3044, align 1
  %3046 = fptrunc double %3045 to float
  %3047 = bitcast i8* %3035 to float*
  store float %3046, float* %3047, align 1
  %3048 = extractelement <2 x i32> %3040, i32 1
  %3049 = getelementptr inbounds i8, i8* %3035, i64 4
  %3050 = bitcast i8* %3049 to i32*
  store i32 %3048, i32* %3050, align 1
  %3051 = extractelement <2 x i32> %3043, i32 0
  %3052 = bitcast i8* %3041 to i32*
  store i32 %3051, i32* %3052, align 1
  %3053 = extractelement <2 x i32> %3043, i32 1
  %3054 = getelementptr inbounds i8, i8* %3035, i64 12
  %3055 = bitcast i8* %3054 to i32*
  store i32 %3053, i32* %3055, align 1
  store %struct.Memory* %loadMem_41b115, %struct.Memory** %MEMORY
  %loadMem_41b119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3057 = getelementptr inbounds %struct.GPR, %struct.GPR* %3056, i32 0, i32 33
  %3058 = getelementptr inbounds %struct.Reg, %struct.Reg* %3057, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3058 to i64*
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3060 = getelementptr inbounds %struct.GPR, %struct.GPR* %3059, i32 0, i32 1
  %3061 = getelementptr inbounds %struct.Reg, %struct.Reg* %3060, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %3061 to i64*
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 15
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %3064 to i64*
  %3065 = load i64, i64* %RBP.i51
  %3066 = sub i64 %3065, 40
  %3067 = load i64, i64* %PC.i49
  %3068 = add i64 %3067, 4
  store i64 %3068, i64* %PC.i49
  %3069 = inttoptr i64 %3066 to i64*
  %3070 = load i64, i64* %3069
  store i64 %3070, i64* %RAX.i50, align 8
  store %struct.Memory* %loadMem_41b119, %struct.Memory** %MEMORY
  %loadMem_41b11d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 33
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %3073 to i64*
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 1
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %3076 to i64*
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3078 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3077, i64 0, i64 0
  %XMM0.i48 = bitcast %union.VectorReg* %3078 to %union.vec128_t*
  %3079 = load i64, i64* %RAX.i47
  %3080 = bitcast %union.vec128_t* %XMM0.i48 to i8*
  %3081 = load i64, i64* %PC.i46
  %3082 = add i64 %3081, 4
  store i64 %3082, i64* %PC.i46
  %3083 = bitcast i8* %3080 to <2 x float>*
  %3084 = load <2 x float>, <2 x float>* %3083, align 1
  %3085 = extractelement <2 x float> %3084, i32 0
  %3086 = inttoptr i64 %3079 to float*
  store float %3085, float* %3086
  store %struct.Memory* %loadMem_41b11d, %struct.Memory** %MEMORY
  %loadMem_41b121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 33
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %3089 to i64*
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 15
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3094 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3093, i64 0, i64 0
  %YMM0.i45 = bitcast %union.VectorReg* %3094 to %"class.std::bitset"*
  %3095 = bitcast %"class.std::bitset"* %YMM0.i45 to i8*
  %3096 = load i64, i64* %RBP.i44
  %3097 = sub i64 %3096, 64
  %3098 = load i64, i64* %PC.i43
  %3099 = add i64 %3098, 5
  store i64 %3099, i64* %PC.i43
  %3100 = inttoptr i64 %3097 to double*
  %3101 = load double, double* %3100
  %3102 = bitcast i8* %3095 to double*
  store double %3101, double* %3102, align 1
  %3103 = getelementptr inbounds i8, i8* %3095, i64 8
  %3104 = bitcast i8* %3103 to double*
  store double 0.000000e+00, double* %3104, align 1
  store %struct.Memory* %loadMem_41b121, %struct.Memory** %MEMORY
  %loadMem_41b126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 33
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %3107 to i64*
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3109 = getelementptr inbounds %struct.GPR, %struct.GPR* %3108, i32 0, i32 15
  %3110 = getelementptr inbounds %struct.Reg, %struct.Reg* %3109, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %3110 to i64*
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3112 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3111, i64 0, i64 0
  %YMM0.i42 = bitcast %union.VectorReg* %3112 to %"class.std::bitset"*
  %3113 = bitcast %"class.std::bitset"* %YMM0.i42 to i8*
  %3114 = bitcast %"class.std::bitset"* %YMM0.i42 to i8*
  %3115 = load i64, i64* %RBP.i41
  %3116 = sub i64 %3115, 56
  %3117 = load i64, i64* %PC.i40
  %3118 = add i64 %3117, 5
  store i64 %3118, i64* %PC.i40
  %3119 = bitcast i8* %3114 to double*
  %3120 = load double, double* %3119, align 1
  %3121 = getelementptr inbounds i8, i8* %3114, i64 8
  %3122 = bitcast i8* %3121 to i64*
  %3123 = load i64, i64* %3122, align 1
  %3124 = inttoptr i64 %3116 to double*
  %3125 = load double, double* %3124
  %3126 = fdiv double %3120, %3125
  %3127 = bitcast i8* %3113 to double*
  store double %3126, double* %3127, align 1
  %3128 = getelementptr inbounds i8, i8* %3113, i64 8
  %3129 = bitcast i8* %3128 to i64*
  store i64 %3123, i64* %3129, align 1
  store %struct.Memory* %loadMem_41b126, %struct.Memory** %MEMORY
  %loadMem_41b12b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 33
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3132 to i64*
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 15
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %3135 to i64*
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3137 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3136, i64 0, i64 2
  %YMM2.i39 = bitcast %union.VectorReg* %3137 to %"class.std::bitset"*
  %3138 = bitcast %"class.std::bitset"* %YMM2.i39 to i8*
  %3139 = load i64, i64* %RBP.i38
  %3140 = sub i64 %3139, 64
  %3141 = load i64, i64* %PC.i37
  %3142 = add i64 %3141, 5
  store i64 %3142, i64* %PC.i37
  %3143 = inttoptr i64 %3140 to double*
  %3144 = load double, double* %3143
  %3145 = bitcast i8* %3138 to double*
  store double %3144, double* %3145, align 1
  %3146 = getelementptr inbounds i8, i8* %3138, i64 8
  %3147 = bitcast i8* %3146 to double*
  store double 0.000000e+00, double* %3147, align 1
  store %struct.Memory* %loadMem_41b12b, %struct.Memory** %MEMORY
  %loadMem_41b130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 33
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %3150 to i64*
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 15
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %3153 to i64*
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3155 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3154, i64 0, i64 2
  %YMM2.i36 = bitcast %union.VectorReg* %3155 to %"class.std::bitset"*
  %3156 = bitcast %"class.std::bitset"* %YMM2.i36 to i8*
  %3157 = bitcast %"class.std::bitset"* %YMM2.i36 to i8*
  %3158 = load i64, i64* %RBP.i35
  %3159 = sub i64 %3158, 56
  %3160 = load i64, i64* %PC.i34
  %3161 = add i64 %3160, 5
  store i64 %3161, i64* %PC.i34
  %3162 = bitcast i8* %3157 to double*
  %3163 = load double, double* %3162, align 1
  %3164 = getelementptr inbounds i8, i8* %3157, i64 8
  %3165 = bitcast i8* %3164 to i64*
  %3166 = load i64, i64* %3165, align 1
  %3167 = inttoptr i64 %3159 to double*
  %3168 = load double, double* %3167
  %3169 = fdiv double %3163, %3168
  %3170 = bitcast i8* %3156 to double*
  store double %3169, double* %3170, align 1
  %3171 = getelementptr inbounds i8, i8* %3156, i64 8
  %3172 = bitcast i8* %3171 to i64*
  store i64 %3166, i64* %3172, align 1
  store %struct.Memory* %loadMem_41b130, %struct.Memory** %MEMORY
  %loadMem_41b135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 33
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %3175 to i64*
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3177 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3176, i64 0, i64 0
  %YMM0.i32 = bitcast %union.VectorReg* %3177 to %"class.std::bitset"*
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3179 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3178, i64 0, i64 2
  %XMM2.i33 = bitcast %union.VectorReg* %3179 to %union.vec128_t*
  %3180 = bitcast %"class.std::bitset"* %YMM0.i32 to i8*
  %3181 = bitcast %"class.std::bitset"* %YMM0.i32 to i8*
  %3182 = bitcast %union.vec128_t* %XMM2.i33 to i8*
  %3183 = load i64, i64* %PC.i31
  %3184 = add i64 %3183, 4
  store i64 %3184, i64* %PC.i31
  %3185 = bitcast i8* %3181 to double*
  %3186 = load double, double* %3185, align 1
  %3187 = getelementptr inbounds i8, i8* %3181, i64 8
  %3188 = bitcast i8* %3187 to i64*
  %3189 = load i64, i64* %3188, align 1
  %3190 = bitcast i8* %3182 to double*
  %3191 = load double, double* %3190, align 1
  %3192 = fmul double %3186, %3191
  %3193 = bitcast i8* %3180 to double*
  store double %3192, double* %3193, align 1
  %3194 = getelementptr inbounds i8, i8* %3180, i64 8
  %3195 = bitcast i8* %3194 to i64*
  store i64 %3189, i64* %3195, align 1
  store %struct.Memory* %loadMem_41b135, %struct.Memory** %MEMORY
  %loadMem_41b139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 33
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3198 to i64*
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 15
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %3201 to i64*
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3203 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3202, i64 0, i64 2
  %YMM2.i30 = bitcast %union.VectorReg* %3203 to %"class.std::bitset"*
  %3204 = bitcast %"class.std::bitset"* %YMM2.i30 to i8*
  %3205 = load i64, i64* %RBP.i29
  %3206 = sub i64 %3205, 72
  %3207 = load i64, i64* %PC.i28
  %3208 = add i64 %3207, 5
  store i64 %3208, i64* %PC.i28
  %3209 = inttoptr i64 %3206 to double*
  %3210 = load double, double* %3209
  %3211 = bitcast i8* %3204 to double*
  store double %3210, double* %3211, align 1
  %3212 = getelementptr inbounds i8, i8* %3204, i64 8
  %3213 = bitcast i8* %3212 to double*
  store double 0.000000e+00, double* %3213, align 1
  store %struct.Memory* %loadMem_41b139, %struct.Memory** %MEMORY
  %loadMem_41b13e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 33
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3216 to i64*
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 15
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %3219 to i64*
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3221 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3220, i64 0, i64 2
  %YMM2.i27 = bitcast %union.VectorReg* %3221 to %"class.std::bitset"*
  %3222 = bitcast %"class.std::bitset"* %YMM2.i27 to i8*
  %3223 = bitcast %"class.std::bitset"* %YMM2.i27 to i8*
  %3224 = load i64, i64* %RBP.i26
  %3225 = sub i64 %3224, 56
  %3226 = load i64, i64* %PC.i25
  %3227 = add i64 %3226, 5
  store i64 %3227, i64* %PC.i25
  %3228 = bitcast i8* %3223 to double*
  %3229 = load double, double* %3228, align 1
  %3230 = getelementptr inbounds i8, i8* %3223, i64 8
  %3231 = bitcast i8* %3230 to i64*
  %3232 = load i64, i64* %3231, align 1
  %3233 = inttoptr i64 %3225 to double*
  %3234 = load double, double* %3233
  %3235 = fdiv double %3229, %3234
  %3236 = bitcast i8* %3222 to double*
  store double %3235, double* %3236, align 1
  %3237 = getelementptr inbounds i8, i8* %3222, i64 8
  %3238 = bitcast i8* %3237 to i64*
  store i64 %3232, i64* %3238, align 1
  store %struct.Memory* %loadMem_41b13e, %struct.Memory** %MEMORY
  %loadMem_41b143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 33
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3241 to i64*
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3243 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3242, i64 0, i64 0
  %YMM0.i23 = bitcast %union.VectorReg* %3243 to %"class.std::bitset"*
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3245 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3244, i64 0, i64 2
  %XMM2.i24 = bitcast %union.VectorReg* %3245 to %union.vec128_t*
  %3246 = bitcast %"class.std::bitset"* %YMM0.i23 to i8*
  %3247 = bitcast %"class.std::bitset"* %YMM0.i23 to i8*
  %3248 = bitcast %union.vec128_t* %XMM2.i24 to i8*
  %3249 = load i64, i64* %PC.i22
  %3250 = add i64 %3249, 4
  store i64 %3250, i64* %PC.i22
  %3251 = bitcast i8* %3247 to double*
  %3252 = load double, double* %3251, align 1
  %3253 = getelementptr inbounds i8, i8* %3247, i64 8
  %3254 = bitcast i8* %3253 to i64*
  %3255 = load i64, i64* %3254, align 1
  %3256 = bitcast i8* %3248 to double*
  %3257 = load double, double* %3256, align 1
  %3258 = fsub double %3252, %3257
  %3259 = bitcast i8* %3246 to double*
  store double %3258, double* %3259, align 1
  %3260 = getelementptr inbounds i8, i8* %3246, i64 8
  %3261 = bitcast i8* %3260 to i64*
  store i64 %3255, i64* %3261, align 1
  store %struct.Memory* %loadMem_41b143, %struct.Memory** %MEMORY
  %loadMem_41b147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 33
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3264 to i64*
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 15
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %3267 to i64*
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3268, i64 0, i64 2
  %YMM2.i21 = bitcast %union.VectorReg* %3269 to %"class.std::bitset"*
  %3270 = bitcast %"class.std::bitset"* %YMM2.i21 to i8*
  %3271 = load i64, i64* %RBP.i20
  %3272 = sub i64 %3271, 32
  %3273 = load i64, i64* %PC.i19
  %3274 = add i64 %3273, 5
  store i64 %3274, i64* %PC.i19
  %3275 = inttoptr i64 %3272 to float*
  %3276 = load float, float* %3275
  %3277 = bitcast i8* %3270 to float*
  store float %3276, float* %3277, align 1
  %3278 = getelementptr inbounds i8, i8* %3270, i64 4
  %3279 = bitcast i8* %3278 to float*
  store float 0.000000e+00, float* %3279, align 1
  %3280 = getelementptr inbounds i8, i8* %3270, i64 8
  %3281 = bitcast i8* %3280 to float*
  store float 0.000000e+00, float* %3281, align 1
  %3282 = getelementptr inbounds i8, i8* %3270, i64 12
  %3283 = bitcast i8* %3282 to float*
  store float 0.000000e+00, float* %3283, align 1
  store %struct.Memory* %loadMem_41b147, %struct.Memory** %MEMORY
  %loadMem_41b14c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 33
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3286 to i64*
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3288 = getelementptr inbounds %struct.GPR, %struct.GPR* %3287, i32 0, i32 15
  %3289 = getelementptr inbounds %struct.Reg, %struct.Reg* %3288, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %3289 to i64*
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3290, i64 0, i64 2
  %YMM2.i18 = bitcast %union.VectorReg* %3291 to %"class.std::bitset"*
  %3292 = bitcast %"class.std::bitset"* %YMM2.i18 to i8*
  %3293 = bitcast %"class.std::bitset"* %YMM2.i18 to i8*
  %3294 = load i64, i64* %RBP.i17
  %3295 = sub i64 %3294, 32
  %3296 = load i64, i64* %PC.i16
  %3297 = add i64 %3296, 5
  store i64 %3297, i64* %PC.i16
  %3298 = bitcast i8* %3293 to <2 x float>*
  %3299 = load <2 x float>, <2 x float>* %3298, align 1
  %3300 = getelementptr inbounds i8, i8* %3293, i64 8
  %3301 = bitcast i8* %3300 to <2 x i32>*
  %3302 = load <2 x i32>, <2 x i32>* %3301, align 1
  %3303 = inttoptr i64 %3295 to float*
  %3304 = load float, float* %3303
  %3305 = extractelement <2 x float> %3299, i32 0
  %3306 = fmul float %3305, %3304
  %3307 = bitcast i8* %3292 to float*
  store float %3306, float* %3307, align 1
  %3308 = bitcast <2 x float> %3299 to <2 x i32>
  %3309 = extractelement <2 x i32> %3308, i32 1
  %3310 = getelementptr inbounds i8, i8* %3292, i64 4
  %3311 = bitcast i8* %3310 to i32*
  store i32 %3309, i32* %3311, align 1
  %3312 = extractelement <2 x i32> %3302, i32 0
  %3313 = getelementptr inbounds i8, i8* %3292, i64 8
  %3314 = bitcast i8* %3313 to i32*
  store i32 %3312, i32* %3314, align 1
  %3315 = extractelement <2 x i32> %3302, i32 1
  %3316 = getelementptr inbounds i8, i8* %3292, i64 12
  %3317 = bitcast i8* %3316 to i32*
  store i32 %3315, i32* %3317, align 1
  store %struct.Memory* %loadMem_41b14c, %struct.Memory** %MEMORY
  %loadMem_41b151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 33
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3320 to i64*
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3321, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %3322 to %"class.std::bitset"*
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3324 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3323, i64 0, i64 2
  %XMM2.i15 = bitcast %union.VectorReg* %3324 to %union.vec128_t*
  %3325 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3326 = bitcast %union.vec128_t* %XMM2.i15 to i8*
  %3327 = load i64, i64* %PC.i14
  %3328 = add i64 %3327, 4
  store i64 %3328, i64* %PC.i14
  %3329 = bitcast i8* %3326 to <2 x float>*
  %3330 = load <2 x float>, <2 x float>* %3329, align 1
  %3331 = extractelement <2 x float> %3330, i32 0
  %3332 = fpext float %3331 to double
  %3333 = bitcast i8* %3325 to double*
  store double %3332, double* %3333, align 1
  store %struct.Memory* %loadMem_41b151, %struct.Memory** %MEMORY
  %loadMem_41b155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 33
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3336 to i64*
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3338 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3337, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3338 to %"class.std::bitset"*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3340 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3339, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %3340 to %union.vec128_t*
  %3341 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3342 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3343 = bitcast %union.vec128_t* %XMM2.i to i8*
  %3344 = load i64, i64* %PC.i13
  %3345 = add i64 %3344, 4
  store i64 %3345, i64* %PC.i13
  %3346 = bitcast i8* %3342 to double*
  %3347 = load double, double* %3346, align 1
  %3348 = getelementptr inbounds i8, i8* %3342, i64 8
  %3349 = bitcast i8* %3348 to i64*
  %3350 = load i64, i64* %3349, align 1
  %3351 = bitcast i8* %3343 to double*
  %3352 = load double, double* %3351, align 1
  %3353 = fdiv double %3347, %3352
  %3354 = bitcast i8* %3341 to double*
  store double %3353, double* %3354, align 1
  %3355 = getelementptr inbounds i8, i8* %3341, i64 8
  %3356 = bitcast i8* %3355 to i64*
  store i64 %3350, i64* %3356, align 1
  store %struct.Memory* %loadMem_41b155, %struct.Memory** %MEMORY
  %loadMem_41b159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 33
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3359 to i64*
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3361 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3360, i64 0, i64 0
  %YMM0.i12 = bitcast %union.VectorReg* %3361 to %"class.std::bitset"*
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3363 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3362, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3363 to %union.vec128_t*
  %3364 = bitcast %"class.std::bitset"* %YMM0.i12 to i8*
  %3365 = bitcast %"class.std::bitset"* %YMM0.i12 to i8*
  %3366 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3367 = load i64, i64* %PC.i11
  %3368 = add i64 %3367, 4
  store i64 %3368, i64* %PC.i11
  %3369 = bitcast i8* %3365 to double*
  %3370 = load double, double* %3369, align 1
  %3371 = getelementptr inbounds i8, i8* %3365, i64 8
  %3372 = bitcast i8* %3371 to i64*
  %3373 = load i64, i64* %3372, align 1
  %3374 = bitcast i8* %3366 to double*
  %3375 = load double, double* %3374, align 1
  %3376 = fsub double %3370, %3375
  %3377 = bitcast i8* %3364 to double*
  store double %3376, double* %3377, align 1
  %3378 = getelementptr inbounds i8, i8* %3364, i64 8
  %3379 = bitcast i8* %3378 to i64*
  store i64 %3373, i64* %3379, align 1
  store %struct.Memory* %loadMem_41b159, %struct.Memory** %MEMORY
  %loadMem_41b15d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 33
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3382 to i64*
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3384 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3383, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3384 to %"class.std::bitset"*
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3386 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3385, i64 0, i64 0
  %XMM0.i10 = bitcast %union.VectorReg* %3386 to %union.vec128_t*
  %3387 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3388 = bitcast %union.vec128_t* %XMM0.i10 to i8*
  %3389 = load i64, i64* %PC.i9
  %3390 = add i64 %3389, 4
  store i64 %3390, i64* %PC.i9
  %3391 = bitcast i8* %3387 to <2 x i32>*
  %3392 = load <2 x i32>, <2 x i32>* %3391, align 1
  %3393 = getelementptr inbounds i8, i8* %3387, i64 8
  %3394 = bitcast i8* %3393 to <2 x i32>*
  %3395 = load <2 x i32>, <2 x i32>* %3394, align 1
  %3396 = bitcast i8* %3388 to double*
  %3397 = load double, double* %3396, align 1
  %3398 = fptrunc double %3397 to float
  %3399 = bitcast i8* %3387 to float*
  store float %3398, float* %3399, align 1
  %3400 = extractelement <2 x i32> %3392, i32 1
  %3401 = getelementptr inbounds i8, i8* %3387, i64 4
  %3402 = bitcast i8* %3401 to i32*
  store i32 %3400, i32* %3402, align 1
  %3403 = extractelement <2 x i32> %3395, i32 0
  %3404 = bitcast i8* %3393 to i32*
  store i32 %3403, i32* %3404, align 1
  %3405 = extractelement <2 x i32> %3395, i32 1
  %3406 = getelementptr inbounds i8, i8* %3387, i64 12
  %3407 = bitcast i8* %3406 to i32*
  store i32 %3405, i32* %3407, align 1
  store %struct.Memory* %loadMem_41b15d, %struct.Memory** %MEMORY
  %loadMem_41b161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 33
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 1
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RAX.i7 = bitcast %union.anon* %3413 to i64*
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 15
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %3416 to i64*
  %3417 = load i64, i64* %RBP.i8
  %3418 = sub i64 %3417, 48
  %3419 = load i64, i64* %PC.i6
  %3420 = add i64 %3419, 4
  store i64 %3420, i64* %PC.i6
  %3421 = inttoptr i64 %3418 to i64*
  %3422 = load i64, i64* %3421
  store i64 %3422, i64* %RAX.i7, align 8
  store %struct.Memory* %loadMem_41b161, %struct.Memory** %MEMORY
  %loadMem_41b165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 33
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3425 to i64*
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 1
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3428 to i64*
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3430 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3429, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3430 to %union.vec128_t*
  %3431 = load i64, i64* %RAX.i
  %3432 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3433 = load i64, i64* %PC.i5
  %3434 = add i64 %3433, 4
  store i64 %3434, i64* %PC.i5
  %3435 = bitcast i8* %3432 to <2 x float>*
  %3436 = load <2 x float>, <2 x float>* %3435, align 1
  %3437 = extractelement <2 x float> %3436, i32 0
  %3438 = inttoptr i64 %3431 to float*
  store float %3437, float* %3438
  store %struct.Memory* %loadMem_41b165, %struct.Memory** %MEMORY
  %loadMem_41b169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3440 = getelementptr inbounds %struct.GPR, %struct.GPR* %3439, i32 0, i32 33
  %3441 = getelementptr inbounds %struct.Reg, %struct.Reg* %3440, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3441 to i64*
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3443 = getelementptr inbounds %struct.GPR, %struct.GPR* %3442, i32 0, i32 13
  %3444 = getelementptr inbounds %struct.Reg, %struct.Reg* %3443, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3444 to i64*
  %3445 = load i64, i64* %RSP.i
  %3446 = load i64, i64* %PC.i4
  %3447 = add i64 %3446, 7
  store i64 %3447, i64* %PC.i4
  %3448 = add i64 160, %3445
  store i64 %3448, i64* %RSP.i, align 8
  %3449 = icmp ult i64 %3448, %3445
  %3450 = icmp ult i64 %3448, 160
  %3451 = or i1 %3449, %3450
  %3452 = zext i1 %3451 to i8
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3452, i8* %3453, align 1
  %3454 = trunc i64 %3448 to i32
  %3455 = and i32 %3454, 255
  %3456 = call i32 @llvm.ctpop.i32(i32 %3455)
  %3457 = trunc i32 %3456 to i8
  %3458 = and i8 %3457, 1
  %3459 = xor i8 %3458, 1
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3459, i8* %3460, align 1
  %3461 = xor i64 160, %3445
  %3462 = xor i64 %3461, %3448
  %3463 = lshr i64 %3462, 4
  %3464 = trunc i64 %3463 to i8
  %3465 = and i8 %3464, 1
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3465, i8* %3466, align 1
  %3467 = icmp eq i64 %3448, 0
  %3468 = zext i1 %3467 to i8
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3468, i8* %3469, align 1
  %3470 = lshr i64 %3448, 63
  %3471 = trunc i64 %3470 to i8
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3471, i8* %3472, align 1
  %3473 = lshr i64 %3445, 63
  %3474 = xor i64 %3470, %3473
  %3475 = add i64 %3474, %3470
  %3476 = icmp eq i64 %3475, 2
  %3477 = zext i1 %3476 to i8
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3477, i8* %3478, align 1
  store %struct.Memory* %loadMem_41b169, %struct.Memory** %MEMORY
  %loadMem_41b170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 33
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3481 to i64*
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 15
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3484 to i64*
  %3485 = load i64, i64* %PC.i2
  %3486 = add i64 %3485, 1
  store i64 %3486, i64* %PC.i2
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3488 = load i64, i64* %3487, align 8
  %3489 = add i64 %3488, 8
  %3490 = inttoptr i64 %3488 to i64*
  %3491 = load i64, i64* %3490
  store i64 %3491, i64* %RBP.i3, align 8
  store i64 %3489, i64* %3487, align 8
  store %struct.Memory* %loadMem_41b170, %struct.Memory** %MEMORY
  %loadMem_41b171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 33
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3494 to i64*
  %3495 = load i64, i64* %PC.i1
  %3496 = add i64 %3495, 1
  store i64 %3496, i64* %PC.i1
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3499 = load i64, i64* %3498, align 8
  %3500 = inttoptr i64 %3499 to i64*
  %3501 = load i64, i64* %3500
  store i64 %3501, i64* %3497, align 8
  %3502 = add i64 %3499, 8
  store i64 %3502, i64* %3498, align 8
  store %struct.Memory* %loadMem_41b171, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_41b171
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

define %struct.Memory* @routine_subq__0xa0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 160
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 160
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
  %23 = xor i64 160, %9
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

define %struct.Memory* @routine_xorps__xmm2___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 32
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

define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 96
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 64
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 56
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

define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jge_.L_41affe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_41ae97(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x39953__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39953__rip__type* @G_0x39953__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_41aea9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
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

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_0x3997a__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3997a__rip__type* @G_0x3997a__rip_ to i64)
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

define %struct.Memory* @routine_addsd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
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

define %struct.Memory* @routine_movsd_0x39921__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39921__rip__type* @G_0x39921__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addsd_MINUS0x38__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 56
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

define %struct.Memory* @routine_movsd_0x398c9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x398c9__rip__type* @G_0x398c9__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addsd_MINUS0x40__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41ae6e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x3982a__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3982a__rip__type* @G_0x3982a__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
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

define %struct.Memory* @routine_movsd_0x397fe__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x397fe__rip__type* @G_0x397fe__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 152
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

define %struct.Memory* @routine_movsd_0x397b0__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x397b0__rip__type* @G_0x397b0__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 160
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

define %struct.Memory* @routine_movsd_0x39709__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39709__rip__type* @G_0x39709__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
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

define %struct.Memory* @routine_addsd_MINUS0x48__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
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

define %struct.Memory* @routine_subsd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_MINUS0x38__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 56
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

define %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
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

define %struct.Memory* @routine_divsd_MINUS0x38__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 56
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

define %struct.Memory* @routine_subsd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x20__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
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

define %struct.Memory* @routine_mulss_MINUS0x20__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
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

define %struct.Memory* @routine_cvtss2sd__xmm2___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
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

define %struct.Memory* @routine_addq__0xa0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 160, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 160
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
  %25 = xor i64 160, %9
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
