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
%G_0x2cff8__rip__type = type <{ [8 x i8] }>
%G_0x2d09b__rip__type = type <{ [8 x i8] }>
%G_0x2d1d5__rip__type = type <{ [8 x i8] }>
%G_0x676ffc_type = type <{ [4 x i8] }>
%G__0x4583c6_type = type <{ [8 x i8] }>
%G__0x662070_type = type <{ [8 x i8] }>
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
@G_0x2cff8__rip_ = global %G_0x2cff8__rip__type zeroinitializer
@G_0x2d09b__rip_ = global %G_0x2d09b__rip__type zeroinitializer
@G_0x2d1d5__rip_ = global %G_0x2d1d5__rip__type zeroinitializer
@G_0x676ffc = global %G_0x676ffc_type zeroinitializer
@G__0x4583c6 = global %G__0x4583c6_type zeroinitializer
@G__0x662070 = global %G__0x662070_type zeroinitializer

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

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @XNU(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4276c0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4276c0, %struct.Memory** %MEMORY
  %loadMem_4276c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i12 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i12
  %27 = load i64, i64* %PC.i11
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i11
  store i64 %26, i64* %RBP.i13, align 8
  store %struct.Memory* %loadMem_4276c1, %struct.Memory** %MEMORY
  %loadMem_4276c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i387 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i387
  %36 = load i64, i64* %PC.i386
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i386
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i387, align 8
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
  store %struct.Memory* %loadMem_4276c4, %struct.Memory** %MEMORY
  %loadMem_4276cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 0
  %YMM0.i408 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = bitcast %"class.std::bitset"* %YMM0.i408 to i8*
  %73 = load i64, i64* %PC.i407
  %74 = add i64 %73, ptrtoint (%G_0x2d1d5__rip__type* @G_0x2d1d5__rip_ to i64)
  %75 = load i64, i64* %PC.i407
  %76 = add i64 %75, 8
  store i64 %76, i64* %PC.i407
  %77 = inttoptr i64 %74 to double*
  %78 = load double, double* %77
  %79 = bitcast i8* %72 to double*
  store double %78, double* %79, align 1
  %80 = getelementptr inbounds i8, i8* %72, i64 8
  %81 = bitcast i8* %80 to double*
  store double 0.000000e+00, double* %81, align 1
  store %struct.Memory* %loadMem_4276cb, %struct.Memory** %MEMORY
  %loadMem_4276d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %86 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %85, i64 0, i64 1
  %YMM1.i426 = bitcast %union.VectorReg* %86 to %"class.std::bitset"*
  %87 = bitcast %"class.std::bitset"* %YMM1.i426 to i8*
  %88 = load i64, i64* %PC.i425
  %89 = add i64 %88, ptrtoint (%G_0x2d1d5__rip__type* @G_0x2d1d5__rip_ to i64)
  %90 = load i64, i64* %PC.i425
  %91 = add i64 %90, 8
  store i64 %91, i64* %PC.i425
  %92 = inttoptr i64 %89 to double*
  %93 = load double, double* %92
  %94 = bitcast i8* %87 to double*
  store double %93, double* %94, align 1
  %95 = getelementptr inbounds i8, i8* %87, i64 8
  %96 = bitcast i8* %95 to double*
  store double 0.000000e+00, double* %96, align 1
  store %struct.Memory* %loadMem_4276d3, %struct.Memory** %MEMORY
  %loadMem_4276db = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %100, i64 0, i64 2
  %YMM2.i445 = bitcast %union.VectorReg* %101 to %"class.std::bitset"*
  %102 = bitcast %"class.std::bitset"* %YMM2.i445 to i8*
  %103 = load i64, i64* %PC.i444
  %104 = add i64 %103, ptrtoint (%G_0x2d1d5__rip__type* @G_0x2d1d5__rip_ to i64)
  %105 = load i64, i64* %PC.i444
  %106 = add i64 %105, 8
  store i64 %106, i64* %PC.i444
  %107 = inttoptr i64 %104 to double*
  %108 = load double, double* %107
  %109 = bitcast i8* %102 to double*
  store double %108, double* %109, align 1
  %110 = getelementptr inbounds i8, i8* %102, i64 8
  %111 = bitcast i8* %110 to double*
  store double 0.000000e+00, double* %111, align 1
  store %struct.Memory* %loadMem_4276db, %struct.Memory** %MEMORY
  %loadMem_4276e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %116 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %115, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %116 to %"class.std::bitset"*
  %117 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %118 = load i64, i64* %PC.i469
  %119 = add i64 %118, ptrtoint (%G_0x2d1d5__rip__type* @G_0x2d1d5__rip_ to i64)
  %120 = load i64, i64* %PC.i469
  %121 = add i64 %120, 8
  store i64 %121, i64* %PC.i469
  %122 = inttoptr i64 %119 to double*
  %123 = load double, double* %122
  %124 = bitcast i8* %117 to double*
  store double %123, double* %124, align 1
  %125 = getelementptr inbounds i8, i8* %117, i64 8
  %126 = bitcast i8* %125 to double*
  store double 0.000000e+00, double* %126, align 1
  store %struct.Memory* %loadMem_4276e3, %struct.Memory** %MEMORY
  %loadMem_4276eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 33
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %129 to i64*
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 11
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %RDI.i561 = bitcast %union.anon* %132 to i64*
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 15
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %135 to i64*
  %136 = load i64, i64* %RBP.i562
  %137 = sub i64 %136, 16
  %138 = load i64, i64* %RDI.i561
  %139 = load i64, i64* %PC.i560
  %140 = add i64 %139, 4
  store i64 %140, i64* %PC.i560
  %141 = inttoptr i64 %137 to i64*
  store i64 %138, i64* %141
  store %struct.Memory* %loadMem_4276eb, %struct.Memory** %MEMORY
  %loadMem_4276ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 33
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 9
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %ESI.i558 = bitcast %union.anon* %147 to i32*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 15
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %RBP.i559 = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %RBP.i559
  %152 = sub i64 %151, 20
  %153 = load i32, i32* %ESI.i558
  %154 = zext i32 %153 to i64
  %155 = load i64, i64* %PC.i557
  %156 = add i64 %155, 3
  store i64 %156, i64* %PC.i557
  %157 = inttoptr i64 %152 to i32*
  store i32 %153, i32* %157
  store %struct.Memory* %loadMem_4276ef, %struct.Memory** %MEMORY
  %loadMem_4276f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 33
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 15
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %RBP.i556
  %165 = sub i64 %164, 68
  %166 = load i64, i64* %PC.i555
  %167 = add i64 %166, 7
  store i64 %167, i64* %PC.i555
  %168 = inttoptr i64 %165 to i32*
  store i32 4, i32* %168
  store %struct.Memory* %loadMem_4276f2, %struct.Memory** %MEMORY
  %loadMem_4276f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 33
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %171 to i64*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 15
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %174 to i64*
  %175 = load i64, i64* %RBP.i554
  %176 = sub i64 %175, 72
  %177 = load i64, i64* %PC.i553
  %178 = add i64 %177, 7
  store i64 %178, i64* %PC.i553
  %179 = inttoptr i64 %176 to i32*
  store i32 1, i32* %179
  store %struct.Memory* %loadMem_4276f9, %struct.Memory** %MEMORY
  %loadMem_427700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 33
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 15
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %185 to i64*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %187 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %186, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %187 to %union.vec128_t*
  %188 = load i64, i64* %RBP.i552
  %189 = sub i64 %188, 80
  %190 = bitcast %union.vec128_t* %XMM3.i to i8*
  %191 = load i64, i64* %PC.i551
  %192 = add i64 %191, 5
  store i64 %192, i64* %PC.i551
  %193 = bitcast i8* %190 to double*
  %194 = load double, double* %193, align 1
  %195 = inttoptr i64 %189 to double*
  store double %194, double* %195
  store %struct.Memory* %loadMem_427700, %struct.Memory** %MEMORY
  %loadMem_427705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 15
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %203 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %202, i64 0, i64 2
  %XMM2.i550 = bitcast %union.VectorReg* %203 to %union.vec128_t*
  %204 = load i64, i64* %RBP.i549
  %205 = sub i64 %204, 96
  %206 = bitcast %union.vec128_t* %XMM2.i550 to i8*
  %207 = load i64, i64* %PC.i548
  %208 = add i64 %207, 5
  store i64 %208, i64* %PC.i548
  %209 = bitcast i8* %206 to double*
  %210 = load double, double* %209, align 1
  %211 = inttoptr i64 %205 to double*
  store double %210, double* %211
  store %struct.Memory* %loadMem_427705, %struct.Memory** %MEMORY
  %loadMem_42770a = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 15
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %219 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %218, i64 0, i64 1
  %XMM1.i547 = bitcast %union.VectorReg* %219 to %union.vec128_t*
  %220 = load i64, i64* %RBP.i546
  %221 = sub i64 %220, 104
  %222 = bitcast %union.vec128_t* %XMM1.i547 to i8*
  %223 = load i64, i64* %PC.i545
  %224 = add i64 %223, 5
  store i64 %224, i64* %PC.i545
  %225 = bitcast i8* %222 to double*
  %226 = load double, double* %225, align 1
  %227 = inttoptr i64 %221 to double*
  store double %226, double* %227
  store %struct.Memory* %loadMem_42770a, %struct.Memory** %MEMORY
  %loadMem_42770f = load %struct.Memory*, %struct.Memory** %MEMORY
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 33
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %230 to i64*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 15
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %234, i64 0, i64 0
  %XMM0.i544 = bitcast %union.VectorReg* %235 to %union.vec128_t*
  %236 = load i64, i64* %RBP.i543
  %237 = sub i64 %236, 112
  %238 = bitcast %union.vec128_t* %XMM0.i544 to i8*
  %239 = load i64, i64* %PC.i542
  %240 = add i64 %239, 5
  store i64 %240, i64* %PC.i542
  %241 = bitcast i8* %238 to double*
  %242 = load double, double* %241, align 1
  %243 = inttoptr i64 %237 to double*
  store double %242, double* %243
  store %struct.Memory* %loadMem_42770f, %struct.Memory** %MEMORY
  %loadMem_427714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 33
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %246 to i64*
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 15
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %249 to i64*
  %250 = load i64, i64* %RBP.i541
  %251 = sub i64 %250, 116
  %252 = load i64, i64* %PC.i540
  %253 = add i64 %252, 7
  store i64 %253, i64* %PC.i540
  %254 = inttoptr i64 %251 to i32*
  store i32 0, i32* %254
  store %struct.Memory* %loadMem_427714, %struct.Memory** %MEMORY
  %loadMem_42771b = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 15
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %260 to i64*
  %261 = load i64, i64* %RBP.i539
  %262 = sub i64 %261, 20
  %263 = load i64, i64* %PC.i538
  %264 = add i64 %263, 4
  store i64 %264, i64* %PC.i538
  %265 = inttoptr i64 %262 to i32*
  %266 = load i32, i32* %265
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %267, align 1
  %268 = and i32 %266, 255
  %269 = call i32 @llvm.ctpop.i32(i32 %268)
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = xor i8 %271, 1
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %272, i8* %273, align 1
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %274, align 1
  %275 = icmp eq i32 %266, 0
  %276 = zext i1 %275 to i8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %276, i8* %277, align 1
  %278 = lshr i32 %266, 31
  %279 = trunc i32 %278 to i8
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %279, i8* %280, align 1
  %281 = lshr i32 %266, 31
  %282 = xor i32 %278, %281
  %283 = add i32 %282, %281
  %284 = icmp eq i32 %283, 2
  %285 = zext i1 %284 to i8
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %285, i8* %286, align 1
  store %struct.Memory* %loadMem_42771b, %struct.Memory** %MEMORY
  %loadMem_42771f = load %struct.Memory*, %struct.Memory** %MEMORY
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 33
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %289 to i64*
  %290 = load i64, i64* %PC.i537
  %291 = add i64 %290, 18
  %292 = load i64, i64* %PC.i537
  %293 = add i64 %292, 6
  %294 = load i64, i64* %PC.i537
  %295 = add i64 %294, 6
  store i64 %295, i64* %PC.i537
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %297 = load i8, i8* %296, align 1
  %298 = icmp eq i8 %297, 0
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %BRANCH_TAKEN, align 1
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %301 = select i1 %298, i64 %291, i64 %293
  store i64 %301, i64* %300, align 8
  store %struct.Memory* %loadMem_42771f, %struct.Memory** %MEMORY
  %loadBr_42771f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42771f = icmp eq i8 %loadBr_42771f, 1
  br i1 %cmpBr_42771f, label %block_.L_427731, label %block_427725

block_427725:                                     ; preds = %entry
  %loadMem_427725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 33
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %304 to i64*
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 15
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %307 to i64*
  %308 = load i64, i64* %RBP.i536
  %309 = sub i64 %308, 4
  %310 = load i64, i64* %PC.i535
  %311 = add i64 %310, 7
  store i64 %311, i64* %PC.i535
  %312 = inttoptr i64 %309 to i32*
  store i32 0, i32* %312
  store %struct.Memory* %loadMem_427725, %struct.Memory** %MEMORY
  %loadMem_42772c = load %struct.Memory*, %struct.Memory** %MEMORY
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 33
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %315 to i64*
  %316 = load i64, i64* %PC.i534
  %317 = add i64 %316, 880
  %318 = load i64, i64* %PC.i534
  %319 = add i64 %318, 5
  store i64 %319, i64* %PC.i534
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %317, i64* %320, align 8
  store %struct.Memory* %loadMem_42772c, %struct.Memory** %MEMORY
  br label %block_.L_427a9c

block_.L_427731:                                  ; preds = %entry
  %loadMem_427731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 33
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %323 to i64*
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 11
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %RDI.i533 = bitcast %union.anon* %326 to i64*
  %327 = load i64, i64* %PC.i532
  %328 = add i64 %327, 10
  store i64 %328, i64* %PC.i532
  store i64 ptrtoint (%G__0x4583c6_type* @G__0x4583c6 to i64), i64* %RDI.i533, align 8
  store %struct.Memory* %loadMem_427731, %struct.Memory** %MEMORY
  %loadMem_42773b = load %struct.Memory*, %struct.Memory** %MEMORY
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 33
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %331 to i64*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 9
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %RSI.i531 = bitcast %union.anon* %334 to i64*
  %335 = load i64, i64* %PC.i530
  %336 = add i64 %335, 5
  store i64 %336, i64* %PC.i530
  store i64 100, i64* %RSI.i531, align 8
  store %struct.Memory* %loadMem_42773b, %struct.Memory** %MEMORY
  %loadMem_427740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 33
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %339 to i64*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %RAX.i528 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 15
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %345 to i64*
  %346 = load i64, i64* %RBP.i529
  %347 = sub i64 %346, 20
  %348 = load i64, i64* %PC.i527
  %349 = add i64 %348, 3
  store i64 %349, i64* %PC.i527
  %350 = inttoptr i64 %347 to i32*
  %351 = load i32, i32* %350
  %352 = zext i32 %351 to i64
  store i64 %352, i64* %RAX.i528, align 8
  store %struct.Memory* %loadMem_427740, %struct.Memory** %MEMORY
  %loadMem_427743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 33
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %355 to i64*
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %358 to i64*
  %359 = load i64, i64* %RAX.i526
  %360 = load i64, i64* %PC.i525
  %361 = add i64 %360, 3
  store i64 %361, i64* %PC.i525
  %362 = trunc i64 %359 to i32
  %363 = add i32 1, %362
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RAX.i526, align 8
  %365 = icmp ult i32 %363, %362
  %366 = icmp ult i32 %363, 1
  %367 = or i1 %365, %366
  %368 = zext i1 %367 to i8
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %368, i8* %369, align 1
  %370 = and i32 %363, 255
  %371 = call i32 @llvm.ctpop.i32(i32 %370)
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  %374 = xor i8 %373, 1
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %374, i8* %375, align 1
  %376 = xor i64 1, %359
  %377 = trunc i64 %376 to i32
  %378 = xor i32 %377, %363
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %381, i8* %382, align 1
  %383 = icmp eq i32 %363, 0
  %384 = zext i1 %383 to i8
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %384, i8* %385, align 1
  %386 = lshr i32 %363, 31
  %387 = trunc i32 %386 to i8
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %387, i8* %388, align 1
  %389 = lshr i32 %362, 31
  %390 = xor i32 %386, %389
  %391 = add i32 %390, %386
  %392 = icmp eq i32 %391, 2
  %393 = zext i1 %392 to i8
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %393, i8* %394, align 1
  store %struct.Memory* %loadMem_427743, %struct.Memory** %MEMORY
  %loadMem_427746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %396 = getelementptr inbounds %struct.GPR, %struct.GPR* %395, i32 0, i32 33
  %397 = getelementptr inbounds %struct.Reg, %struct.Reg* %396, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %397 to i64*
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %399 = getelementptr inbounds %struct.GPR, %struct.GPR* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.Reg, %struct.Reg* %399, i32 0, i32 0
  %EAX.i523 = bitcast %union.anon* %400 to i32*
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 5
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %403 to i64*
  %404 = load i32, i32* %EAX.i523
  %405 = zext i32 %404 to i64
  %406 = load i64, i64* %PC.i522
  %407 = add i64 %406, 3
  store i64 %407, i64* %PC.i522
  %408 = shl i64 %405, 32
  %409 = ashr exact i64 %408, 32
  store i64 %409, i64* %RCX.i524, align 8
  store %struct.Memory* %loadMem_427746, %struct.Memory** %MEMORY
  %loadMem_427749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 33
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %412 to i64*
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 5
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %415 to i64*
  %416 = load i64, i64* %RCX.i521
  %417 = load i64, i64* %PC.i520
  %418 = add i64 %417, 4
  store i64 %418, i64* %PC.i520
  %419 = shl i64 %416, 1
  %420 = icmp slt i64 %419, 0
  %421 = shl i64 %419, 1
  store i64 %421, i64* %RCX.i521, align 8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %423 = zext i1 %420 to i8
  store i8 %423, i8* %422, align 1
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %425 = trunc i64 %421 to i32
  %426 = and i32 %425, 254
  %427 = call i32 @llvm.ctpop.i32(i32 %426)
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  %430 = xor i8 %429, 1
  store i8 %430, i8* %424, align 1
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %431, align 1
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %433 = icmp eq i64 %421, 0
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %432, align 1
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %436 = lshr i64 %421, 63
  %437 = trunc i64 %436 to i8
  store i8 %437, i8* %435, align 1
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %438, align 1
  store %struct.Memory* %loadMem_427749, %struct.Memory** %MEMORY
  %loadMem_42774d = load %struct.Memory*, %struct.Memory** %MEMORY
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 33
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %441 to i64*
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 5
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %RCX.i518 = bitcast %union.anon* %444 to i64*
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 7
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %RDX.i519 = bitcast %union.anon* %447 to i64*
  %448 = load i64, i64* %RCX.i518
  %449 = load i64, i64* %PC.i517
  %450 = add i64 %449, 3
  store i64 %450, i64* %PC.i517
  store i64 %448, i64* %RDX.i519, align 8
  store %struct.Memory* %loadMem_42774d, %struct.Memory** %MEMORY
  %loadMem1_427750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 33
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %453 to i64*
  %454 = load i64, i64* %PC.i516
  %455 = add i64 %454, 125200
  %456 = load i64, i64* %PC.i516
  %457 = add i64 %456, 5
  %458 = load i64, i64* %PC.i516
  %459 = add i64 %458, 5
  store i64 %459, i64* %PC.i516
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = add i64 %461, -8
  %463 = inttoptr i64 %462 to i64*
  store i64 %457, i64* %463
  store i64 %462, i64* %460, align 8
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %455, i64* %464, align 8
  store %struct.Memory* %loadMem1_427750, %struct.Memory** %MEMORY
  %loadMem2_427750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427750 = load i64, i64* %3
  %call2_427750 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_427750, %struct.Memory* %loadMem2_427750)
  store %struct.Memory* %call2_427750, %struct.Memory** %MEMORY
  %loadMem_427755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RAX.i514 = bitcast %union.anon* %470 to i64*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 15
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %473 to i64*
  %474 = load i64, i64* %RBP.i515
  %475 = sub i64 %474, 88
  %476 = load i64, i64* %RAX.i514
  %477 = load i64, i64* %PC.i513
  %478 = add i64 %477, 4
  store i64 %478, i64* %PC.i513
  %479 = inttoptr i64 %475 to i64*
  store i64 %476, i64* %479
  store %struct.Memory* %loadMem_427755, %struct.Memory** %MEMORY
  %loadMem_427759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 33
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %482 to i64*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 15
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %485 to i64*
  %486 = load i64, i64* %RBP.i512
  %487 = sub i64 %486, 24
  %488 = load i64, i64* %PC.i511
  %489 = add i64 %488, 7
  store i64 %489, i64* %PC.i511
  %490 = inttoptr i64 %487 to i32*
  store i32 1, i32* %490
  store %struct.Memory* %loadMem_427759, %struct.Memory** %MEMORY
  br label %block_.L_427760

block_.L_427760:                                  ; preds = %block_42776c, %block_.L_427731
  %loadMem_427760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 33
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %496 to i64*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 15
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %499 to i64*
  %500 = load i64, i64* %RBP.i510
  %501 = sub i64 %500, 24
  %502 = load i64, i64* %PC.i508
  %503 = add i64 %502, 3
  store i64 %503, i64* %PC.i508
  %504 = inttoptr i64 %501 to i32*
  %505 = load i32, i32* %504
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %RAX.i509, align 8
  store %struct.Memory* %loadMem_427760, %struct.Memory** %MEMORY
  %loadMem_427763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 33
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %509 to i64*
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 1
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %EAX.i506 = bitcast %union.anon* %512 to i32*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 15
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %515 to i64*
  %516 = load i32, i32* %EAX.i506
  %517 = zext i32 %516 to i64
  %518 = load i64, i64* %RBP.i507
  %519 = sub i64 %518, 20
  %520 = load i64, i64* %PC.i505
  %521 = add i64 %520, 3
  store i64 %521, i64* %PC.i505
  %522 = inttoptr i64 %519 to i32*
  %523 = load i32, i32* %522
  %524 = sub i32 %516, %523
  %525 = icmp ult i32 %516, %523
  %526 = zext i1 %525 to i8
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %526, i8* %527, align 1
  %528 = and i32 %524, 255
  %529 = call i32 @llvm.ctpop.i32(i32 %528)
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  %532 = xor i8 %531, 1
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %532, i8* %533, align 1
  %534 = xor i32 %523, %516
  %535 = xor i32 %534, %524
  %536 = lshr i32 %535, 4
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %538, i8* %539, align 1
  %540 = icmp eq i32 %524, 0
  %541 = zext i1 %540 to i8
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %541, i8* %542, align 1
  %543 = lshr i32 %524, 31
  %544 = trunc i32 %543 to i8
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %544, i8* %545, align 1
  %546 = lshr i32 %516, 31
  %547 = lshr i32 %523, 31
  %548 = xor i32 %547, %546
  %549 = xor i32 %543, %546
  %550 = add i32 %549, %548
  %551 = icmp eq i32 %550, 2
  %552 = zext i1 %551 to i8
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %552, i8* %553, align 1
  store %struct.Memory* %loadMem_427763, %struct.Memory** %MEMORY
  %loadMem_427766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 33
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %556 to i64*
  %557 = load i64, i64* %PC.i504
  %558 = add i64 %557, 35
  %559 = load i64, i64* %PC.i504
  %560 = add i64 %559, 6
  %561 = load i64, i64* %PC.i504
  %562 = add i64 %561, 6
  store i64 %562, i64* %PC.i504
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %564 = load i8, i8* %563, align 1
  %565 = icmp eq i8 %564, 0
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %567 = load i8, i8* %566, align 1
  %568 = icmp ne i8 %567, 0
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %570 = load i8, i8* %569, align 1
  %571 = icmp ne i8 %570, 0
  %572 = xor i1 %568, %571
  %573 = xor i1 %572, true
  %574 = and i1 %565, %573
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %BRANCH_TAKEN, align 1
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %577 = select i1 %574, i64 %558, i64 %560
  store i64 %577, i64* %576, align 8
  store %struct.Memory* %loadMem_427766, %struct.Memory** %MEMORY
  %loadBr_427766 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427766 = icmp eq i8 %loadBr_427766, 1
  br i1 %cmpBr_427766, label %block_.L_427789, label %block_42776c

block_42776c:                                     ; preds = %block_.L_427760
  %loadMem_42776c = load %struct.Memory*, %struct.Memory** %MEMORY
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 33
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 1
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 15
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %586 to i64*
  %587 = load i64, i64* %RBP.i503
  %588 = sub i64 %587, 88
  %589 = load i64, i64* %PC.i501
  %590 = add i64 %589, 4
  store i64 %590, i64* %PC.i501
  %591 = inttoptr i64 %588 to i64*
  %592 = load i64, i64* %591
  store i64 %592, i64* %RAX.i502, align 8
  store %struct.Memory* %loadMem_42776c, %struct.Memory** %MEMORY
  %loadMem_427770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 33
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %595 to i64*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 5
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %RCX.i499 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 15
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %601 to i64*
  %602 = load i64, i64* %RBP.i500
  %603 = sub i64 %602, 24
  %604 = load i64, i64* %PC.i498
  %605 = add i64 %604, 4
  store i64 %605, i64* %PC.i498
  %606 = inttoptr i64 %603 to i32*
  %607 = load i32, i32* %606
  %608 = sext i32 %607 to i64
  store i64 %608, i64* %RCX.i499, align 8
  store %struct.Memory* %loadMem_427770, %struct.Memory** %MEMORY
  %loadMem_427774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 33
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 1
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 5
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RCX.i497 = bitcast %union.anon* %617 to i64*
  %618 = load i64, i64* %RAX.i496
  %619 = load i64, i64* %RCX.i497
  %620 = mul i64 %619, 4
  %621 = add i64 %620, %618
  %622 = load i64, i64* %PC.i495
  %623 = add i64 %622, 7
  store i64 %623, i64* %PC.i495
  %624 = inttoptr i64 %621 to i32*
  store i32 0, i32* %624
  store %struct.Memory* %loadMem_427774, %struct.Memory** %MEMORY
  %loadMem_42777b = load %struct.Memory*, %struct.Memory** %MEMORY
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 33
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 1
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %RAX.i493 = bitcast %union.anon* %630 to i64*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 15
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %633 to i64*
  %634 = load i64, i64* %RBP.i494
  %635 = sub i64 %634, 24
  %636 = load i64, i64* %PC.i492
  %637 = add i64 %636, 3
  store i64 %637, i64* %PC.i492
  %638 = inttoptr i64 %635 to i32*
  %639 = load i32, i32* %638
  %640 = zext i32 %639 to i64
  store i64 %640, i64* %RAX.i493, align 8
  store %struct.Memory* %loadMem_42777b, %struct.Memory** %MEMORY
  %loadMem_42777e = load %struct.Memory*, %struct.Memory** %MEMORY
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %642 = getelementptr inbounds %struct.GPR, %struct.GPR* %641, i32 0, i32 33
  %643 = getelementptr inbounds %struct.Reg, %struct.Reg* %642, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %643 to i64*
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 1
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %646 to i64*
  %647 = load i64, i64* %RAX.i491
  %648 = load i64, i64* %PC.i490
  %649 = add i64 %648, 3
  store i64 %649, i64* %PC.i490
  %650 = trunc i64 %647 to i32
  %651 = add i32 1, %650
  %652 = zext i32 %651 to i64
  store i64 %652, i64* %RAX.i491, align 8
  %653 = icmp ult i32 %651, %650
  %654 = icmp ult i32 %651, 1
  %655 = or i1 %653, %654
  %656 = zext i1 %655 to i8
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %656, i8* %657, align 1
  %658 = and i32 %651, 255
  %659 = call i32 @llvm.ctpop.i32(i32 %658)
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  %662 = xor i8 %661, 1
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %662, i8* %663, align 1
  %664 = xor i64 1, %647
  %665 = trunc i64 %664 to i32
  %666 = xor i32 %665, %651
  %667 = lshr i32 %666, 4
  %668 = trunc i32 %667 to i8
  %669 = and i8 %668, 1
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %669, i8* %670, align 1
  %671 = icmp eq i32 %651, 0
  %672 = zext i1 %671 to i8
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %672, i8* %673, align 1
  %674 = lshr i32 %651, 31
  %675 = trunc i32 %674 to i8
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %675, i8* %676, align 1
  %677 = lshr i32 %650, 31
  %678 = xor i32 %674, %677
  %679 = add i32 %678, %674
  %680 = icmp eq i32 %679, 2
  %681 = zext i1 %680 to i8
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %681, i8* %682, align 1
  store %struct.Memory* %loadMem_42777e, %struct.Memory** %MEMORY
  %loadMem_427781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 33
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %685 to i64*
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 1
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %EAX.i488 = bitcast %union.anon* %688 to i32*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 15
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %691 to i64*
  %692 = load i64, i64* %RBP.i489
  %693 = sub i64 %692, 24
  %694 = load i32, i32* %EAX.i488
  %695 = zext i32 %694 to i64
  %696 = load i64, i64* %PC.i487
  %697 = add i64 %696, 3
  store i64 %697, i64* %PC.i487
  %698 = inttoptr i64 %693 to i32*
  store i32 %694, i32* %698
  store %struct.Memory* %loadMem_427781, %struct.Memory** %MEMORY
  %loadMem_427784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 33
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %701 to i64*
  %702 = load i64, i64* %PC.i486
  %703 = add i64 %702, -36
  %704 = load i64, i64* %PC.i486
  %705 = add i64 %704, 5
  store i64 %705, i64* %PC.i486
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %703, i64* %706, align 8
  store %struct.Memory* %loadMem_427784, %struct.Memory** %MEMORY
  br label %block_.L_427760

block_.L_427789:                                  ; preds = %block_.L_427760
  %loadMem_427789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 33
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %709 to i64*
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 15
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %714 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %713, i64 0, i64 0
  %YMM0.i485 = bitcast %union.VectorReg* %714 to %"class.std::bitset"*
  %715 = bitcast %"class.std::bitset"* %YMM0.i485 to i8*
  %716 = load i64, i64* %RBP.i484
  %717 = sub i64 %716, 80
  %718 = load i64, i64* %PC.i483
  %719 = add i64 %718, 5
  store i64 %719, i64* %PC.i483
  %720 = inttoptr i64 %717 to double*
  %721 = load double, double* %720
  %722 = bitcast i8* %715 to double*
  store double %721, double* %722, align 1
  %723 = getelementptr inbounds i8, i8* %715, i64 8
  %724 = bitcast i8* %723 to double*
  store double 0.000000e+00, double* %724, align 1
  store %struct.Memory* %loadMem_427789, %struct.Memory** %MEMORY
  %loadMem_42778e = load %struct.Memory*, %struct.Memory** %MEMORY
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 33
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %727 to i64*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 15
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %732 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %731, i64 0, i64 0
  %YMM0.i482 = bitcast %union.VectorReg* %732 to %"class.std::bitset"*
  %733 = bitcast %"class.std::bitset"* %YMM0.i482 to i8*
  %734 = bitcast %"class.std::bitset"* %YMM0.i482 to i8*
  %735 = load i64, i64* %RBP.i481
  %736 = sub i64 %735, 112
  %737 = load i64, i64* %PC.i480
  %738 = add i64 %737, 5
  store i64 %738, i64* %PC.i480
  %739 = bitcast i8* %734 to double*
  %740 = load double, double* %739, align 1
  %741 = getelementptr inbounds i8, i8* %734, i64 8
  %742 = bitcast i8* %741 to i64*
  %743 = load i64, i64* %742, align 1
  %744 = inttoptr i64 %736 to double*
  %745 = load double, double* %744
  %746 = fmul double %740, %745
  %747 = bitcast i8* %733 to double*
  store double %746, double* %747, align 1
  %748 = getelementptr inbounds i8, i8* %733, i64 8
  %749 = bitcast i8* %748 to i64*
  store i64 %743, i64* %749, align 1
  store %struct.Memory* %loadMem_42778e, %struct.Memory** %MEMORY
  %loadMem_427793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 33
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %752 to i64*
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 15
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %755 to i64*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %757 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %756, i64 0, i64 1
  %YMM1.i479 = bitcast %union.VectorReg* %757 to %"class.std::bitset"*
  %758 = bitcast %"class.std::bitset"* %YMM1.i479 to i8*
  %759 = load i64, i64* %RBP.i478
  %760 = sub i64 %759, 68
  %761 = load i64, i64* %PC.i477
  %762 = add i64 %761, 5
  store i64 %762, i64* %PC.i477
  %763 = inttoptr i64 %760 to i32*
  %764 = load i32, i32* %763
  %765 = sitofp i32 %764 to double
  %766 = bitcast i8* %758 to double*
  store double %765, double* %766, align 1
  store %struct.Memory* %loadMem_427793, %struct.Memory** %MEMORY
  %loadMem_427798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 33
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %769 to i64*
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 15
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %772 to i64*
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %774 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %773, i64 0, i64 1
  %YMM1.i476 = bitcast %union.VectorReg* %774 to %"class.std::bitset"*
  %775 = bitcast %"class.std::bitset"* %YMM1.i476 to i8*
  %776 = bitcast %"class.std::bitset"* %YMM1.i476 to i8*
  %777 = load i64, i64* %RBP.i475
  %778 = sub i64 %777, 104
  %779 = load i64, i64* %PC.i474
  %780 = add i64 %779, 5
  store i64 %780, i64* %PC.i474
  %781 = bitcast i8* %776 to double*
  %782 = load double, double* %781, align 1
  %783 = getelementptr inbounds i8, i8* %776, i64 8
  %784 = bitcast i8* %783 to i64*
  %785 = load i64, i64* %784, align 1
  %786 = inttoptr i64 %778 to double*
  %787 = load double, double* %786
  %788 = fmul double %782, %787
  %789 = bitcast i8* %775 to double*
  store double %788, double* %789, align 1
  %790 = getelementptr inbounds i8, i8* %775, i64 8
  %791 = bitcast i8* %790 to i64*
  store i64 %785, i64* %791, align 1
  store %struct.Memory* %loadMem_427798, %struct.Memory** %MEMORY
  %loadMem_42779d = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %796 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %795, i64 0, i64 0
  %YMM0.i472 = bitcast %union.VectorReg* %796 to %"class.std::bitset"*
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %798 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %797, i64 0, i64 1
  %XMM1.i473 = bitcast %union.VectorReg* %798 to %union.vec128_t*
  %799 = bitcast %"class.std::bitset"* %YMM0.i472 to i8*
  %800 = bitcast %"class.std::bitset"* %YMM0.i472 to i8*
  %801 = bitcast %union.vec128_t* %XMM1.i473 to i8*
  %802 = load i64, i64* %PC.i471
  %803 = add i64 %802, 4
  store i64 %803, i64* %PC.i471
  %804 = bitcast i8* %800 to double*
  %805 = load double, double* %804, align 1
  %806 = getelementptr inbounds i8, i8* %800, i64 8
  %807 = bitcast i8* %806 to i64*
  %808 = load i64, i64* %807, align 1
  %809 = bitcast i8* %801 to double*
  %810 = load double, double* %809, align 1
  %811 = fdiv double %805, %810
  %812 = bitcast i8* %799 to double*
  store double %811, double* %812, align 1
  %813 = getelementptr inbounds i8, i8* %799, i64 8
  %814 = bitcast i8* %813 to i64*
  store i64 %808, i64* %814, align 1
  store %struct.Memory* %loadMem_42779d, %struct.Memory** %MEMORY
  %loadMem1_4277a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 33
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %817 to i64*
  %818 = load i64, i64* %PC.i470
  %819 = add i64 %818, -156337
  %820 = load i64, i64* %PC.i470
  %821 = add i64 %820, 5
  %822 = load i64, i64* %PC.i470
  %823 = add i64 %822, 5
  store i64 %823, i64* %PC.i470
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %825 = load i64, i64* %824, align 8
  %826 = add i64 %825, -8
  %827 = inttoptr i64 %826 to i64*
  store i64 %821, i64* %827
  store i64 %826, i64* %824, align 8
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %819, i64* %828, align 8
  store %struct.Memory* %loadMem1_4277a1, %struct.Memory** %MEMORY
  %loadMem2_4277a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4277a1 = load i64, i64* %3
  %829 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %loadMem2_4277a1)
  store %struct.Memory* %829, %struct.Memory** %MEMORY
  %loadMem_4277a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 33
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %834 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %833, i64 0, i64 1
  %YMM1.i467 = bitcast %union.VectorReg* %834 to %"class.std::bitset"*
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %836 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %835, i64 0, i64 1
  %XMM1.i468 = bitcast %union.VectorReg* %836 to %union.vec128_t*
  %837 = bitcast %"class.std::bitset"* %YMM1.i467 to i8*
  %838 = bitcast %"class.std::bitset"* %YMM1.i467 to i8*
  %839 = bitcast %union.vec128_t* %XMM1.i468 to i8*
  %840 = load i64, i64* %PC.i466
  %841 = add i64 %840, 3
  store i64 %841, i64* %PC.i466
  %842 = bitcast i8* %838 to i64*
  %843 = load i64, i64* %842, align 1
  %844 = getelementptr inbounds i8, i8* %838, i64 8
  %845 = bitcast i8* %844 to i64*
  %846 = load i64, i64* %845, align 1
  %847 = bitcast i8* %839 to i64*
  %848 = load i64, i64* %847, align 1
  %849 = getelementptr inbounds i8, i8* %839, i64 8
  %850 = bitcast i8* %849 to i64*
  %851 = load i64, i64* %850, align 1
  %852 = xor i64 %848, %843
  %853 = xor i64 %851, %846
  %854 = trunc i64 %852 to i32
  %855 = lshr i64 %852, 32
  %856 = trunc i64 %855 to i32
  %857 = bitcast i8* %837 to i32*
  store i32 %854, i32* %857, align 1
  %858 = getelementptr inbounds i8, i8* %837, i64 4
  %859 = bitcast i8* %858 to i32*
  store i32 %856, i32* %859, align 1
  %860 = trunc i64 %853 to i32
  %861 = getelementptr inbounds i8, i8* %837, i64 8
  %862 = bitcast i8* %861 to i32*
  store i32 %860, i32* %862, align 1
  %863 = lshr i64 %853, 32
  %864 = trunc i64 %863 to i32
  %865 = getelementptr inbounds i8, i8* %837, i64 12
  %866 = bitcast i8* %865 to i32*
  store i32 %864, i32* %866, align 1
  store %struct.Memory* %loadMem_4277a6, %struct.Memory** %MEMORY
  %loadMem_4277a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 1
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %872 to i64*
  %873 = load i64, i64* %PC.i464
  %874 = add i64 %873, 10
  store i64 %874, i64* %PC.i464
  store i64 -9223372036854775808, i64* %RAX.i465, align 8
  store %struct.Memory* %loadMem_4277a9, %struct.Memory** %MEMORY
  %loadMem_4277b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 33
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %877 to i64*
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 5
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %RCX.i462 = bitcast %union.anon* %880 to i64*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %882 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %881, i64 0, i64 0
  %XMM0.i463 = bitcast %union.VectorReg* %882 to %union.vec128_t*
  %883 = bitcast %union.vec128_t* %XMM0.i463 to i8*
  %884 = load i64, i64* %PC.i461
  %885 = add i64 %884, 5
  store i64 %885, i64* %PC.i461
  %886 = bitcast i8* %883 to i64*
  %887 = load i64, i64* %886, align 1
  store i64 %887, i64* %RCX.i462, align 1
  store %struct.Memory* %loadMem_4277b3, %struct.Memory** %MEMORY
  %loadMem_4277b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 33
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 1
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %893 to i64*
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 5
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %RCX.i460 = bitcast %union.anon* %896 to i64*
  %897 = load i64, i64* %RCX.i460
  %898 = load i64, i64* %RAX.i459
  %899 = load i64, i64* %PC.i458
  %900 = add i64 %899, 3
  store i64 %900, i64* %PC.i458
  %901 = xor i64 %898, %897
  store i64 %901, i64* %RCX.i460, align 8
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %902, align 1
  %903 = trunc i64 %901 to i32
  %904 = and i32 %903, 255
  %905 = call i32 @llvm.ctpop.i32(i32 %904)
  %906 = trunc i32 %905 to i8
  %907 = and i8 %906, 1
  %908 = xor i8 %907, 1
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %908, i8* %909, align 1
  %910 = icmp eq i64 %901, 0
  %911 = zext i1 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %911, i8* %912, align 1
  %913 = lshr i64 %901, 63
  %914 = trunc i64 %913 to i8
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %914, i8* %915, align 1
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %916, align 1
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %917, align 1
  store %struct.Memory* %loadMem_4277b8, %struct.Memory** %MEMORY
  %loadMem_4277bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 33
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %920 to i64*
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 5
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %RCX.i456 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %925 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %924, i64 0, i64 0
  %YMM0.i457 = bitcast %union.VectorReg* %925 to %"class.std::bitset"*
  %926 = bitcast %"class.std::bitset"* %YMM0.i457 to i8*
  %927 = load i64, i64* %RCX.i456
  %928 = load i64, i64* %PC.i455
  %929 = add i64 %928, 5
  store i64 %929, i64* %PC.i455
  %930 = bitcast i8* %926 to i64*
  store i64 %927, i64* %930, align 1
  %931 = getelementptr inbounds i8, i8* %926, i64 8
  %932 = bitcast i8* %931 to i64*
  store i64 0, i64* %932, align 1
  store %struct.Memory* %loadMem_4277bb, %struct.Memory** %MEMORY
  %loadMem_4277c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 33
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %935 to i64*
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 15
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %938 to i64*
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %940 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %939, i64 0, i64 0
  %YMM0.i454 = bitcast %union.VectorReg* %940 to %"class.std::bitset"*
  %941 = bitcast %"class.std::bitset"* %YMM0.i454 to i8*
  %942 = bitcast %"class.std::bitset"* %YMM0.i454 to i8*
  %943 = load i64, i64* %RBP.i453
  %944 = sub i64 %943, 96
  %945 = load i64, i64* %PC.i452
  %946 = add i64 %945, 5
  store i64 %946, i64* %PC.i452
  %947 = bitcast i8* %942 to double*
  %948 = load double, double* %947, align 1
  %949 = getelementptr inbounds i8, i8* %942, i64 8
  %950 = bitcast i8* %949 to i64*
  %951 = load i64, i64* %950, align 1
  %952 = inttoptr i64 %944 to double*
  %953 = load double, double* %952
  %954 = fdiv double %948, %953
  %955 = bitcast i8* %941 to double*
  store double %954, double* %955, align 1
  %956 = getelementptr inbounds i8, i8* %941, i64 8
  %957 = bitcast i8* %956 to i64*
  store i64 %951, i64* %957, align 1
  store %struct.Memory* %loadMem_4277c0, %struct.Memory** %MEMORY
  %loadMem_4277c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 33
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 15
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %963 to i64*
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %965 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %964, i64 0, i64 0
  %XMM0.i451 = bitcast %union.VectorReg* %965 to %union.vec128_t*
  %966 = load i64, i64* %RBP.i450
  %967 = sub i64 %966, 64
  %968 = bitcast %union.vec128_t* %XMM0.i451 to i8*
  %969 = load i64, i64* %PC.i449
  %970 = add i64 %969, 5
  store i64 %970, i64* %PC.i449
  %971 = bitcast i8* %968 to double*
  %972 = load double, double* %971, align 1
  %973 = inttoptr i64 %967 to double*
  store double %972, double* %973
  store %struct.Memory* %loadMem_4277c5, %struct.Memory** %MEMORY
  %loadMem_4277ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 33
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %976 to i64*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 15
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %979 to i64*
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %981 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %980, i64 0, i64 0
  %YMM0.i448 = bitcast %union.VectorReg* %981 to %"class.std::bitset"*
  %982 = bitcast %"class.std::bitset"* %YMM0.i448 to i8*
  %983 = load i64, i64* %RBP.i447
  %984 = sub i64 %983, 64
  %985 = load i64, i64* %PC.i446
  %986 = add i64 %985, 5
  store i64 %986, i64* %PC.i446
  %987 = inttoptr i64 %984 to double*
  %988 = load double, double* %987
  %989 = bitcast i8* %982 to double*
  store double %988, double* %989, align 1
  %990 = getelementptr inbounds i8, i8* %982, i64 8
  %991 = bitcast i8* %990 to double*
  store double 0.000000e+00, double* %991, align 1
  store %struct.Memory* %loadMem_4277ca, %struct.Memory** %MEMORY
  %loadMem_4277cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %996 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %995, i64 0, i64 0
  %XMM0.i442 = bitcast %union.VectorReg* %996 to %union.vec128_t*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %998 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %997, i64 0, i64 1
  %XMM1.i443 = bitcast %union.VectorReg* %998 to %union.vec128_t*
  %999 = bitcast %union.vec128_t* %XMM0.i442 to i8*
  %1000 = bitcast %union.vec128_t* %XMM1.i443 to i8*
  %1001 = load i64, i64* %PC.i441
  %1002 = add i64 %1001, 4
  store i64 %1002, i64* %PC.i441
  %1003 = bitcast i8* %999 to double*
  %1004 = load double, double* %1003, align 1
  %1005 = bitcast i8* %1000 to double*
  %1006 = load double, double* %1005, align 1
  %1007 = fcmp uno double %1004, %1006
  br i1 %1007, label %1008, label %1020

; <label>:1008:                                   ; preds = %block_.L_427789
  %1009 = fadd double %1004, %1006
  %1010 = bitcast double %1009 to i64
  %1011 = and i64 %1010, 9221120237041090560
  %1012 = icmp eq i64 %1011, 9218868437227405312
  %1013 = and i64 %1010, 2251799813685247
  %1014 = icmp ne i64 %1013, 0
  %1015 = and i1 %1012, %1014
  br i1 %1015, label %1016, label %1026

; <label>:1016:                                   ; preds = %1008
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1018 = load i64, i64* %1017, align 8
  %1019 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1018, %struct.Memory* %loadMem_4277cf)
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:1020:                                   ; preds = %block_.L_427789
  %1021 = fcmp ogt double %1004, %1006
  br i1 %1021, label %1026, label %1022

; <label>:1022:                                   ; preds = %1020
  %1023 = fcmp olt double %1004, %1006
  br i1 %1023, label %1026, label %1024

; <label>:1024:                                   ; preds = %1022
  %1025 = fcmp oeq double %1004, %1006
  br i1 %1025, label %1026, label %1033

; <label>:1026:                                   ; preds = %1024, %1022, %1020, %1008
  %1027 = phi i8 [ 0, %1020 ], [ 0, %1022 ], [ 1, %1024 ], [ 1, %1008 ]
  %1028 = phi i8 [ 0, %1020 ], [ 0, %1022 ], [ 0, %1024 ], [ 1, %1008 ]
  %1029 = phi i8 [ 0, %1020 ], [ 1, %1022 ], [ 0, %1024 ], [ 1, %1008 ]
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1027, i8* %1030, align 1
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1028, i8* %1031, align 1
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1029, i8* %1032, align 1
  br label %1033

; <label>:1033:                                   ; preds = %1026, %1024
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1034, align 1
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1035, align 1
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1036, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %1016, %1033
  %1037 = phi %struct.Memory* [ %1019, %1016 ], [ %loadMem_4277cf, %1033 ]
  store %struct.Memory* %1037, %struct.Memory** %MEMORY
  %loadMem_4277d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 33
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1040 to i64*
  %1041 = load i64, i64* %PC.i440
  %1042 = add i64 %1041, 75
  %1043 = load i64, i64* %PC.i440
  %1044 = add i64 %1043, 6
  %1045 = load i64, i64* %PC.i440
  %1046 = add i64 %1045, 6
  store i64 %1046, i64* %PC.i440
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1048 = load i8, i8* %1047, align 1
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1050 = load i8, i8* %1049, align 1
  %1051 = or i8 %1050, %1048
  %1052 = icmp ne i8 %1051, 0
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %BRANCH_TAKEN, align 1
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1055 = select i1 %1052, i64 %1042, i64 %1044
  store i64 %1055, i64* %1054, align 8
  store %struct.Memory* %loadMem_4277d3, %struct.Memory** %MEMORY
  %loadBr_4277d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4277d3 = icmp eq i8 %loadBr_4277d3, 1
  br i1 %cmpBr_4277d3, label %block_.L_42781e, label %block_4277d9

block_4277d9:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_4277d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 33
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %1058 to i64*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 15
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1063 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1062, i64 0, i64 0
  %YMM0.i439 = bitcast %union.VectorReg* %1063 to %"class.std::bitset"*
  %1064 = bitcast %"class.std::bitset"* %YMM0.i439 to i8*
  %1065 = load i64, i64* %RBP.i438
  %1066 = sub i64 %1065, 64
  %1067 = load i64, i64* %PC.i437
  %1068 = add i64 %1067, 5
  store i64 %1068, i64* %PC.i437
  %1069 = inttoptr i64 %1066 to double*
  %1070 = load double, double* %1069
  %1071 = bitcast i8* %1064 to double*
  store double %1070, double* %1071, align 1
  %1072 = getelementptr inbounds i8, i8* %1064, i64 8
  %1073 = bitcast i8* %1072 to double*
  store double 0.000000e+00, double* %1073, align 1
  store %struct.Memory* %loadMem_4277d9, %struct.Memory** %MEMORY
  %loadMem_4277de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 33
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %1076 to i64*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 15
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %1079 to i64*
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1081 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1080, i64 0, i64 1
  %YMM1.i436 = bitcast %union.VectorReg* %1081 to %"class.std::bitset"*
  %1082 = bitcast %"class.std::bitset"* %YMM1.i436 to i8*
  %1083 = load i64, i64* %RBP.i435
  %1084 = sub i64 %1083, 64
  %1085 = load i64, i64* %PC.i434
  %1086 = add i64 %1085, 5
  store i64 %1086, i64* %PC.i434
  %1087 = inttoptr i64 %1084 to double*
  %1088 = load double, double* %1087
  %1089 = bitcast i8* %1082 to double*
  store double %1088, double* %1089, align 1
  %1090 = getelementptr inbounds i8, i8* %1082, i64 8
  %1091 = bitcast i8* %1090 to double*
  store double 0.000000e+00, double* %1091, align 1
  store %struct.Memory* %loadMem_4277de, %struct.Memory** %MEMORY
  %loadMem_4277e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 33
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %1094 to i64*
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 15
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %1097 to i64*
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1099 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1098, i64 0, i64 0
  %XMM0.i433 = bitcast %union.VectorReg* %1099 to %union.vec128_t*
  %1100 = load i64, i64* %RBP.i432
  %1101 = sub i64 %1100, 128
  %1102 = bitcast %union.vec128_t* %XMM0.i433 to i8*
  %1103 = load i64, i64* %PC.i431
  %1104 = add i64 %1103, 5
  store i64 %1104, i64* %PC.i431
  %1105 = bitcast i8* %1102 to double*
  %1106 = load double, double* %1105, align 1
  %1107 = inttoptr i64 %1101 to double*
  store double %1106, double* %1107
  store %struct.Memory* %loadMem_4277e3, %struct.Memory** %MEMORY
  %loadMem_4277e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 33
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1112 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1111, i64 0, i64 0
  %YMM0.i429 = bitcast %union.VectorReg* %1112 to %"class.std::bitset"*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1114 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1113, i64 0, i64 1
  %XMM1.i430 = bitcast %union.VectorReg* %1114 to %union.vec128_t*
  %1115 = bitcast %"class.std::bitset"* %YMM0.i429 to i8*
  %1116 = bitcast %union.vec128_t* %XMM1.i430 to i8*
  %1117 = load i64, i64* %PC.i428
  %1118 = add i64 %1117, 3
  store i64 %1118, i64* %PC.i428
  %1119 = bitcast i8* %1116 to <2 x i32>*
  %1120 = load <2 x i32>, <2 x i32>* %1119, align 1
  %1121 = getelementptr inbounds i8, i8* %1116, i64 8
  %1122 = bitcast i8* %1121 to <2 x i32>*
  %1123 = load <2 x i32>, <2 x i32>* %1122, align 1
  %1124 = extractelement <2 x i32> %1120, i32 0
  %1125 = bitcast i8* %1115 to i32*
  store i32 %1124, i32* %1125, align 1
  %1126 = extractelement <2 x i32> %1120, i32 1
  %1127 = getelementptr inbounds i8, i8* %1115, i64 4
  %1128 = bitcast i8* %1127 to i32*
  store i32 %1126, i32* %1128, align 1
  %1129 = extractelement <2 x i32> %1123, i32 0
  %1130 = getelementptr inbounds i8, i8* %1115, i64 8
  %1131 = bitcast i8* %1130 to i32*
  store i32 %1129, i32* %1131, align 1
  %1132 = extractelement <2 x i32> %1123, i32 1
  %1133 = getelementptr inbounds i8, i8* %1115, i64 12
  %1134 = bitcast i8* %1133 to i32*
  store i32 %1132, i32* %1134, align 1
  store %struct.Memory* %loadMem_4277e8, %struct.Memory** %MEMORY
  %loadMem1_4277eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 33
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %1137 to i64*
  %1138 = load i64, i64* %PC.i427
  %1139 = add i64 %1138, -156411
  %1140 = load i64, i64* %PC.i427
  %1141 = add i64 %1140, 5
  %1142 = load i64, i64* %PC.i427
  %1143 = add i64 %1142, 5
  store i64 %1143, i64* %PC.i427
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1145 = load i64, i64* %1144, align 8
  %1146 = add i64 %1145, -8
  %1147 = inttoptr i64 %1146 to i64*
  store i64 %1141, i64* %1147
  store i64 %1146, i64* %1144, align 8
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1139, i64* %1148, align 8
  store %struct.Memory* %loadMem1_4277eb, %struct.Memory** %MEMORY
  %loadMem2_4277eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4277eb = load i64, i64* %3
  %1149 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %loadMem2_4277eb)
  store %struct.Memory* %1149, %struct.Memory** %MEMORY
  %loadMem_4277f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 33
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %1152 to i64*
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1154 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1153, i64 0, i64 1
  %YMM1.i424 = bitcast %union.VectorReg* %1154 to %"class.std::bitset"*
  %1155 = bitcast %"class.std::bitset"* %YMM1.i424 to i8*
  %1156 = load i64, i64* %PC.i423
  %1157 = add i64 %1156, ptrtoint (%G_0x2cff8__rip__type* @G_0x2cff8__rip_ to i64)
  %1158 = load i64, i64* %PC.i423
  %1159 = add i64 %1158, 8
  store i64 %1159, i64* %PC.i423
  %1160 = inttoptr i64 %1157 to double*
  %1161 = load double, double* %1160
  %1162 = bitcast i8* %1155 to double*
  store double %1161, double* %1162, align 1
  %1163 = getelementptr inbounds i8, i8* %1155, i64 8
  %1164 = bitcast i8* %1163 to double*
  store double 0.000000e+00, double* %1164, align 1
  store %struct.Memory* %loadMem_4277f0, %struct.Memory** %MEMORY
  %loadMem_4277f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1166 = getelementptr inbounds %struct.GPR, %struct.GPR* %1165, i32 0, i32 33
  %1167 = getelementptr inbounds %struct.Reg, %struct.Reg* %1166, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %1167 to i64*
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 15
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %1170 to i64*
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1172 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1171, i64 0, i64 0
  %YMM0.i422 = bitcast %union.VectorReg* %1172 to %"class.std::bitset"*
  %1173 = bitcast %"class.std::bitset"* %YMM0.i422 to i8*
  %1174 = bitcast %"class.std::bitset"* %YMM0.i422 to i8*
  %1175 = load i64, i64* %RBP.i421
  %1176 = sub i64 %1175, 96
  %1177 = load i64, i64* %PC.i420
  %1178 = add i64 %1177, 5
  store i64 %1178, i64* %PC.i420
  %1179 = bitcast i8* %1174 to double*
  %1180 = load double, double* %1179, align 1
  %1181 = getelementptr inbounds i8, i8* %1174, i64 8
  %1182 = bitcast i8* %1181 to i64*
  %1183 = load i64, i64* %1182, align 1
  %1184 = inttoptr i64 %1176 to double*
  %1185 = load double, double* %1184
  %1186 = fdiv double %1180, %1185
  %1187 = bitcast i8* %1173 to double*
  store double %1186, double* %1187, align 1
  %1188 = getelementptr inbounds i8, i8* %1173, i64 8
  %1189 = bitcast i8* %1188 to i64*
  store i64 %1183, i64* %1189, align 1
  store %struct.Memory* %loadMem_4277f8, %struct.Memory** %MEMORY
  %loadMem_4277fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 33
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1192 to i64*
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 15
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1197 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1196, i64 0, i64 2
  %YMM2.i419 = bitcast %union.VectorReg* %1197 to %"class.std::bitset"*
  %1198 = bitcast %"class.std::bitset"* %YMM2.i419 to i8*
  %1199 = load i64, i64* %RBP.i418
  %1200 = sub i64 %1199, 128
  %1201 = load i64, i64* %PC.i417
  %1202 = add i64 %1201, 5
  store i64 %1202, i64* %PC.i417
  %1203 = inttoptr i64 %1200 to double*
  %1204 = load double, double* %1203
  %1205 = bitcast i8* %1198 to double*
  store double %1204, double* %1205, align 1
  %1206 = getelementptr inbounds i8, i8* %1198, i64 8
  %1207 = bitcast i8* %1206 to double*
  store double 0.000000e+00, double* %1207, align 1
  store %struct.Memory* %loadMem_4277fd, %struct.Memory** %MEMORY
  %loadMem_427802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 33
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1210 to i64*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1212 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1211, i64 0, i64 2
  %YMM2.i415 = bitcast %union.VectorReg* %1212 to %"class.std::bitset"*
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1214 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1213, i64 0, i64 0
  %XMM0.i416 = bitcast %union.VectorReg* %1214 to %union.vec128_t*
  %1215 = bitcast %"class.std::bitset"* %YMM2.i415 to i8*
  %1216 = bitcast %"class.std::bitset"* %YMM2.i415 to i8*
  %1217 = bitcast %union.vec128_t* %XMM0.i416 to i8*
  %1218 = load i64, i64* %PC.i414
  %1219 = add i64 %1218, 4
  store i64 %1219, i64* %PC.i414
  %1220 = bitcast i8* %1216 to double*
  %1221 = load double, double* %1220, align 1
  %1222 = getelementptr inbounds i8, i8* %1216, i64 8
  %1223 = bitcast i8* %1222 to i64*
  %1224 = load i64, i64* %1223, align 1
  %1225 = bitcast i8* %1217 to double*
  %1226 = load double, double* %1225, align 1
  %1227 = fadd double %1221, %1226
  %1228 = bitcast i8* %1215 to double*
  store double %1227, double* %1228, align 1
  %1229 = getelementptr inbounds i8, i8* %1215, i64 8
  %1230 = bitcast i8* %1229 to i64*
  store i64 %1224, i64* %1230, align 1
  store %struct.Memory* %loadMem_427802, %struct.Memory** %MEMORY
  %loadMem_427806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 33
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %1233 to i64*
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1234, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %1235 to %"class.std::bitset"*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1237 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1236, i64 0, i64 1
  %XMM1.i413 = bitcast %union.VectorReg* %1237 to %union.vec128_t*
  %1238 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %1239 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %1240 = bitcast %union.vec128_t* %XMM1.i413 to i8*
  %1241 = load i64, i64* %PC.i412
  %1242 = add i64 %1241, 4
  store i64 %1242, i64* %PC.i412
  %1243 = bitcast i8* %1239 to double*
  %1244 = load double, double* %1243, align 1
  %1245 = getelementptr inbounds i8, i8* %1239, i64 8
  %1246 = bitcast i8* %1245 to i64*
  %1247 = load i64, i64* %1246, align 1
  %1248 = bitcast i8* %1240 to double*
  %1249 = load double, double* %1248, align 1
  %1250 = fadd double %1244, %1249
  %1251 = bitcast i8* %1238 to double*
  store double %1250, double* %1251, align 1
  %1252 = getelementptr inbounds i8, i8* %1238, i64 8
  %1253 = bitcast i8* %1252 to i64*
  store i64 %1247, i64* %1253, align 1
  store %struct.Memory* %loadMem_427806, %struct.Memory** %MEMORY
  %loadMem_42780a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1258 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1257, i64 0, i64 0
  %YMM0.i411 = bitcast %union.VectorReg* %1258 to %"class.std::bitset"*
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1260 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1259, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %1260 to %union.vec128_t*
  %1261 = bitcast %"class.std::bitset"* %YMM0.i411 to i8*
  %1262 = bitcast %union.vec128_t* %XMM2.i to i8*
  %1263 = load i64, i64* %PC.i410
  %1264 = add i64 %1263, 3
  store i64 %1264, i64* %PC.i410
  %1265 = bitcast i8* %1262 to <2 x i32>*
  %1266 = load <2 x i32>, <2 x i32>* %1265, align 1
  %1267 = getelementptr inbounds i8, i8* %1262, i64 8
  %1268 = bitcast i8* %1267 to <2 x i32>*
  %1269 = load <2 x i32>, <2 x i32>* %1268, align 1
  %1270 = extractelement <2 x i32> %1266, i32 0
  %1271 = bitcast i8* %1261 to i32*
  store i32 %1270, i32* %1271, align 1
  %1272 = extractelement <2 x i32> %1266, i32 1
  %1273 = getelementptr inbounds i8, i8* %1261, i64 4
  %1274 = bitcast i8* %1273 to i32*
  store i32 %1272, i32* %1274, align 1
  %1275 = extractelement <2 x i32> %1269, i32 0
  %1276 = getelementptr inbounds i8, i8* %1261, i64 8
  %1277 = bitcast i8* %1276 to i32*
  store i32 %1275, i32* %1277, align 1
  %1278 = extractelement <2 x i32> %1269, i32 1
  %1279 = getelementptr inbounds i8, i8* %1261, i64 12
  %1280 = bitcast i8* %1279 to i32*
  store i32 %1278, i32* %1280, align 1
  store %struct.Memory* %loadMem_42780a, %struct.Memory** %MEMORY
  %loadMem1_42780d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 33
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %1283 to i64*
  %1284 = load i64, i64* %PC.i409
  %1285 = add i64 %1284, -156029
  %1286 = load i64, i64* %PC.i409
  %1287 = add i64 %1286, 5
  %1288 = load i64, i64* %PC.i409
  %1289 = add i64 %1288, 5
  store i64 %1289, i64* %PC.i409
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1291 = load i64, i64* %1290, align 8
  %1292 = add i64 %1291, -8
  %1293 = inttoptr i64 %1292 to i64*
  store i64 %1287, i64* %1293
  store i64 %1292, i64* %1290, align 8
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1285, i64* %1294, align 8
  store %struct.Memory* %loadMem1_42780d, %struct.Memory** %MEMORY
  %loadMem2_42780d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42780d = load i64, i64* %3
  %1295 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %loadMem2_42780d)
  store %struct.Memory* %1295, %struct.Memory** %MEMORY
  %loadMem_427812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 33
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 1
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1302, i64 0, i64 0
  %XMM0.i406 = bitcast %union.VectorReg* %1303 to %union.vec128_t*
  %1304 = bitcast %union.vec128_t* %XMM0.i406 to i8*
  %1305 = load i64, i64* %PC.i404
  %1306 = add i64 %1305, 4
  store i64 %1306, i64* %PC.i404
  %1307 = bitcast i8* %1304 to double*
  %1308 = load double, double* %1307, align 1
  %1309 = call double @llvm.trunc.f64(double %1308)
  %1310 = call double @llvm.fabs.f64(double %1309)
  %1311 = fcmp ogt double %1310, 0x41DFFFFFFFC00000
  %1312 = fptosi double %1309 to i32
  %1313 = zext i32 %1312 to i64
  %1314 = select i1 %1311, i64 2147483648, i64 %1313
  store i64 %1314, i64* %RAX.i405, align 8
  store %struct.Memory* %loadMem_427812, %struct.Memory** %MEMORY
  %loadMem_427816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 33
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %1317 to i64*
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 1
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %EAX.i402 = bitcast %union.anon* %1320 to i32*
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 15
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %1323 to i64*
  %1324 = load i64, i64* %RBP.i403
  %1325 = sub i64 %1324, 52
  %1326 = load i32, i32* %EAX.i402
  %1327 = zext i32 %1326 to i64
  %1328 = load i64, i64* %PC.i401
  %1329 = add i64 %1328, 3
  store i64 %1329, i64* %PC.i401
  %1330 = inttoptr i64 %1325 to i32*
  store i32 %1326, i32* %1330
  store %struct.Memory* %loadMem_427816, %struct.Memory** %MEMORY
  %loadMem_427819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 33
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %1333 to i64*
  %1334 = load i64, i64* %PC.i400
  %1335 = add i64 %1334, 12
  %1336 = load i64, i64* %PC.i400
  %1337 = add i64 %1336, 5
  store i64 %1337, i64* %PC.i400
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1335, i64* %1338, align 8
  store %struct.Memory* %loadMem_427819, %struct.Memory** %MEMORY
  br label %block_.L_427825

block_.L_42781e:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_42781e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 33
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %1341 to i64*
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 15
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %1344 to i64*
  %1345 = load i64, i64* %RBP.i399
  %1346 = sub i64 %1345, 52
  %1347 = load i64, i64* %PC.i398
  %1348 = add i64 %1347, 7
  store i64 %1348, i64* %PC.i398
  %1349 = inttoptr i64 %1346 to i32*
  store i32 0, i32* %1349
  store %struct.Memory* %loadMem_42781e, %struct.Memory** %MEMORY
  br label %block_.L_427825

block_.L_427825:                                  ; preds = %block_.L_42781e, %block_4277d9
  %loadMem_427825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 33
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1352 to i64*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1354 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1353, i64 0, i64 0
  %YMM0.i397 = bitcast %union.VectorReg* %1354 to %"class.std::bitset"*
  %1355 = bitcast %"class.std::bitset"* %YMM0.i397 to i8*
  %1356 = load i64, i64* %PC.i396
  %1357 = add i64 %1356, ptrtoint (%G_0x2d09b__rip__type* @G_0x2d09b__rip_ to i64)
  %1358 = load i64, i64* %PC.i396
  %1359 = add i64 %1358, 8
  store i64 %1359, i64* %PC.i396
  %1360 = inttoptr i64 %1357 to double*
  %1361 = load double, double* %1360
  %1362 = bitcast i8* %1355 to double*
  store double %1361, double* %1362, align 1
  %1363 = getelementptr inbounds i8, i8* %1355, i64 8
  %1364 = bitcast i8* %1363 to double*
  store double 0.000000e+00, double* %1364, align 1
  store %struct.Memory* %loadMem_427825, %struct.Memory** %MEMORY
  %loadMem_42782d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 33
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 15
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1372 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1371, i64 0, i64 1
  %YMM1.i395 = bitcast %union.VectorReg* %1372 to %"class.std::bitset"*
  %1373 = bitcast %"class.std::bitset"* %YMM1.i395 to i8*
  %1374 = load i64, i64* %RBP.i394
  %1375 = sub i64 %1374, 104
  %1376 = load i64, i64* %PC.i393
  %1377 = add i64 %1376, 5
  store i64 %1377, i64* %PC.i393
  %1378 = inttoptr i64 %1375 to double*
  %1379 = load double, double* %1378
  %1380 = bitcast i8* %1373 to double*
  store double %1379, double* %1380, align 1
  %1381 = getelementptr inbounds i8, i8* %1373, i64 8
  %1382 = bitcast i8* %1381 to double*
  store double 0.000000e+00, double* %1382, align 1
  store %struct.Memory* %loadMem_42782d, %struct.Memory** %MEMORY
  %loadMem_427832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 33
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %1385 to i64*
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1387 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1386, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %1387 to %"class.std::bitset"*
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1389 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1388, i64 0, i64 0
  %XMM0.i392 = bitcast %union.VectorReg* %1389 to %union.vec128_t*
  %1390 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1391 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1392 = bitcast %union.vec128_t* %XMM0.i392 to i8*
  %1393 = load i64, i64* %PC.i391
  %1394 = add i64 %1393, 4
  store i64 %1394, i64* %PC.i391
  %1395 = bitcast i8* %1391 to double*
  %1396 = load double, double* %1395, align 1
  %1397 = getelementptr inbounds i8, i8* %1391, i64 8
  %1398 = bitcast i8* %1397 to i64*
  %1399 = load i64, i64* %1398, align 1
  %1400 = bitcast i8* %1392 to double*
  %1401 = load double, double* %1400, align 1
  %1402 = fdiv double %1396, %1401
  %1403 = bitcast i8* %1390 to double*
  store double %1402, double* %1403, align 1
  %1404 = getelementptr inbounds i8, i8* %1390, i64 8
  %1405 = bitcast i8* %1404 to i64*
  store i64 %1399, i64* %1405, align 1
  store %struct.Memory* %loadMem_427832, %struct.Memory** %MEMORY
  %loadMem_427836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 33
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %1408 to i64*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1410 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1409, i64 0, i64 0
  %YMM0.i390 = bitcast %union.VectorReg* %1410 to %"class.std::bitset"*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1412 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1411, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %1412 to %union.vec128_t*
  %1413 = bitcast %"class.std::bitset"* %YMM0.i390 to i8*
  %1414 = bitcast %union.vec128_t* %XMM1.i to i8*
  %1415 = load i64, i64* %PC.i389
  %1416 = add i64 %1415, 3
  store i64 %1416, i64* %PC.i389
  %1417 = bitcast i8* %1414 to <2 x i32>*
  %1418 = load <2 x i32>, <2 x i32>* %1417, align 1
  %1419 = getelementptr inbounds i8, i8* %1414, i64 8
  %1420 = bitcast i8* %1419 to <2 x i32>*
  %1421 = load <2 x i32>, <2 x i32>* %1420, align 1
  %1422 = extractelement <2 x i32> %1418, i32 0
  %1423 = bitcast i8* %1413 to i32*
  store i32 %1422, i32* %1423, align 1
  %1424 = extractelement <2 x i32> %1418, i32 1
  %1425 = getelementptr inbounds i8, i8* %1413, i64 4
  %1426 = bitcast i8* %1425 to i32*
  store i32 %1424, i32* %1426, align 1
  %1427 = extractelement <2 x i32> %1421, i32 0
  %1428 = getelementptr inbounds i8, i8* %1413, i64 8
  %1429 = bitcast i8* %1428 to i32*
  store i32 %1427, i32* %1429, align 1
  %1430 = extractelement <2 x i32> %1421, i32 1
  %1431 = getelementptr inbounds i8, i8* %1413, i64 12
  %1432 = bitcast i8* %1431 to i32*
  store i32 %1430, i32* %1432, align 1
  store %struct.Memory* %loadMem_427836, %struct.Memory** %MEMORY
  %loadMem1_427839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %1435 to i64*
  %1436 = load i64, i64* %PC.i388
  %1437 = add i64 %1436, -156489
  %1438 = load i64, i64* %PC.i388
  %1439 = add i64 %1438, 5
  %1440 = load i64, i64* %PC.i388
  %1441 = add i64 %1440, 5
  store i64 %1441, i64* %PC.i388
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1443 = load i64, i64* %1442, align 8
  %1444 = add i64 %1443, -8
  %1445 = inttoptr i64 %1444 to i64*
  store i64 %1439, i64* %1445
  store i64 %1444, i64* %1442, align 8
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1437, i64* %1446, align 8
  store %struct.Memory* %loadMem1_427839, %struct.Memory** %MEMORY
  %loadMem2_427839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427839 = load i64, i64* %3
  %1447 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %loadMem2_427839)
  store %struct.Memory* %1447, %struct.Memory** %MEMORY
  %loadMem_42783e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 33
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %1450 to i64*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 1
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1455 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1454, i64 0, i64 0
  %XMM0.i385 = bitcast %union.VectorReg* %1455 to %union.vec128_t*
  %1456 = bitcast %union.vec128_t* %XMM0.i385 to i8*
  %1457 = load i64, i64* %PC.i383
  %1458 = add i64 %1457, 4
  store i64 %1458, i64* %PC.i383
  %1459 = bitcast i8* %1456 to double*
  %1460 = load double, double* %1459, align 1
  %1461 = call double @llvm.trunc.f64(double %1460)
  %1462 = call double @llvm.fabs.f64(double %1461)
  %1463 = fcmp ogt double %1462, 0x41DFFFFFFFC00000
  %1464 = fptosi double %1461 to i32
  %1465 = zext i32 %1464 to i64
  %1466 = select i1 %1463, i64 2147483648, i64 %1465
  store i64 %1466, i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_42783e, %struct.Memory** %MEMORY
  %loadMem_427842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 33
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %1469 to i64*
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 1
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %EAX.i381 = bitcast %union.anon* %1472 to i32*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1474 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1473, i64 0, i64 0
  %YMM0.i382 = bitcast %union.VectorReg* %1474 to %"class.std::bitset"*
  %1475 = bitcast %"class.std::bitset"* %YMM0.i382 to i8*
  %1476 = load i32, i32* %EAX.i381
  %1477 = zext i32 %1476 to i64
  %1478 = load i64, i64* %PC.i380
  %1479 = add i64 %1478, 4
  store i64 %1479, i64* %PC.i380
  %1480 = sitofp i32 %1476 to double
  %1481 = bitcast i8* %1475 to double*
  store double %1480, double* %1481, align 1
  store %struct.Memory* %loadMem_427842, %struct.Memory** %MEMORY
  %loadMem_427846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 33
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %1484 to i64*
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 15
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %1487 to i64*
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1489 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1488, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %1489 to %"class.std::bitset"*
  %1490 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %1491 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %1492 = load i64, i64* %RBP.i379
  %1493 = sub i64 %1492, 96
  %1494 = load i64, i64* %PC.i378
  %1495 = add i64 %1494, 5
  store i64 %1495, i64* %PC.i378
  %1496 = bitcast i8* %1491 to double*
  %1497 = load double, double* %1496, align 1
  %1498 = getelementptr inbounds i8, i8* %1491, i64 8
  %1499 = bitcast i8* %1498 to i64*
  %1500 = load i64, i64* %1499, align 1
  %1501 = inttoptr i64 %1493 to double*
  %1502 = load double, double* %1501
  %1503 = fdiv double %1497, %1502
  %1504 = bitcast i8* %1490 to double*
  store double %1503, double* %1504, align 1
  %1505 = getelementptr inbounds i8, i8* %1490, i64 8
  %1506 = bitcast i8* %1505 to i64*
  store i64 %1500, i64* %1506, align 1
  store %struct.Memory* %loadMem_427846, %struct.Memory** %MEMORY
  %loadMem_42784b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 33
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 1
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1514 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1513, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %1514 to %union.vec128_t*
  %1515 = bitcast %union.vec128_t* %XMM0.i to i8*
  %1516 = load i64, i64* %PC.i376
  %1517 = add i64 %1516, 4
  store i64 %1517, i64* %PC.i376
  %1518 = bitcast i8* %1515 to double*
  %1519 = load double, double* %1518, align 1
  %1520 = call double @llvm.trunc.f64(double %1519)
  %1521 = call double @llvm.fabs.f64(double %1520)
  %1522 = fcmp ogt double %1521, 0x41DFFFFFFFC00000
  %1523 = fptosi double %1520 to i32
  %1524 = zext i32 %1523 to i64
  %1525 = select i1 %1522, i64 2147483648, i64 %1524
  store i64 %1525, i64* %RAX.i377, align 8
  store %struct.Memory* %loadMem_42784b, %struct.Memory** %MEMORY
  %loadMem_42784f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 33
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 1
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %EAX.i374 = bitcast %union.anon* %1531 to i32*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 15
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %1534 to i64*
  %1535 = load i64, i64* %RBP.i375
  %1536 = sub i64 %1535, 56
  %1537 = load i32, i32* %EAX.i374
  %1538 = zext i32 %1537 to i64
  %1539 = load i64, i64* %PC.i373
  %1540 = add i64 %1539, 3
  store i64 %1540, i64* %PC.i373
  %1541 = inttoptr i64 %1536 to i32*
  store i32 %1537, i32* %1541
  store %struct.Memory* %loadMem_42784f, %struct.Memory** %MEMORY
  %loadMem_427852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 1
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 15
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %1550 to i64*
  %1551 = load i64, i64* %RBP.i372
  %1552 = sub i64 %1551, 72
  %1553 = load i64, i64* %PC.i370
  %1554 = add i64 %1553, 3
  store i64 %1554, i64* %PC.i370
  %1555 = inttoptr i64 %1552 to i32*
  %1556 = load i32, i32* %1555
  %1557 = zext i32 %1556 to i64
  store i64 %1557, i64* %RAX.i371, align 8
  store %struct.Memory* %loadMem_427852, %struct.Memory** %MEMORY
  %loadMem_427855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 33
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 1
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %EAX.i368 = bitcast %union.anon* %1563 to i32*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 15
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %1566 to i64*
  %1567 = load i64, i64* %RBP.i369
  %1568 = sub i64 %1567, 32
  %1569 = load i32, i32* %EAX.i368
  %1570 = zext i32 %1569 to i64
  %1571 = load i64, i64* %PC.i367
  %1572 = add i64 %1571, 3
  store i64 %1572, i64* %PC.i367
  %1573 = inttoptr i64 %1568 to i32*
  store i32 %1569, i32* %1573
  store %struct.Memory* %loadMem_427855, %struct.Memory** %MEMORY
  br label %block_.L_427858

block_.L_427858:                                  ; preds = %block_.L_427a24, %block_.L_427825
  %loadMem_427858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 33
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 1
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %1579 to i64*
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 15
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %1582 to i64*
  %1583 = load i64, i64* %RBP.i366
  %1584 = sub i64 %1583, 32
  %1585 = load i64, i64* %PC.i364
  %1586 = add i64 %1585, 3
  store i64 %1586, i64* %PC.i364
  %1587 = inttoptr i64 %1584 to i32*
  %1588 = load i32, i32* %1587
  %1589 = zext i32 %1588 to i64
  store i64 %1589, i64* %RAX.i365, align 8
  store %struct.Memory* %loadMem_427858, %struct.Memory** %MEMORY
  %loadMem_42785b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 1
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %EAX.i362 = bitcast %union.anon* %1595 to i32*
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1597 = getelementptr inbounds %struct.GPR, %struct.GPR* %1596, i32 0, i32 15
  %1598 = getelementptr inbounds %struct.Reg, %struct.Reg* %1597, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %1598 to i64*
  %1599 = load i32, i32* %EAX.i362
  %1600 = zext i32 %1599 to i64
  %1601 = load i64, i64* %RBP.i363
  %1602 = sub i64 %1601, 68
  %1603 = load i64, i64* %PC.i361
  %1604 = add i64 %1603, 3
  store i64 %1604, i64* %PC.i361
  %1605 = inttoptr i64 %1602 to i32*
  %1606 = load i32, i32* %1605
  %1607 = sub i32 %1599, %1606
  %1608 = icmp ult i32 %1599, %1606
  %1609 = zext i1 %1608 to i8
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1609, i8* %1610, align 1
  %1611 = and i32 %1607, 255
  %1612 = call i32 @llvm.ctpop.i32(i32 %1611)
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  %1615 = xor i8 %1614, 1
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1615, i8* %1616, align 1
  %1617 = xor i32 %1606, %1599
  %1618 = xor i32 %1617, %1607
  %1619 = lshr i32 %1618, 4
  %1620 = trunc i32 %1619 to i8
  %1621 = and i8 %1620, 1
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1621, i8* %1622, align 1
  %1623 = icmp eq i32 %1607, 0
  %1624 = zext i1 %1623 to i8
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1624, i8* %1625, align 1
  %1626 = lshr i32 %1607, 31
  %1627 = trunc i32 %1626 to i8
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1627, i8* %1628, align 1
  %1629 = lshr i32 %1599, 31
  %1630 = lshr i32 %1606, 31
  %1631 = xor i32 %1630, %1629
  %1632 = xor i32 %1626, %1629
  %1633 = add i32 %1632, %1631
  %1634 = icmp eq i32 %1633, 2
  %1635 = zext i1 %1634 to i8
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1635, i8* %1636, align 1
  store %struct.Memory* %loadMem_42785b, %struct.Memory** %MEMORY
  %loadMem_42785e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 33
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %1639 to i64*
  %1640 = load i64, i64* %PC.i360
  %1641 = add i64 %1640, 468
  %1642 = load i64, i64* %PC.i360
  %1643 = add i64 %1642, 6
  %1644 = load i64, i64* %PC.i360
  %1645 = add i64 %1644, 6
  store i64 %1645, i64* %PC.i360
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1647 = load i8, i8* %1646, align 1
  %1648 = icmp eq i8 %1647, 0
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1650 = load i8, i8* %1649, align 1
  %1651 = icmp ne i8 %1650, 0
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1653 = load i8, i8* %1652, align 1
  %1654 = icmp ne i8 %1653, 0
  %1655 = xor i1 %1651, %1654
  %1656 = xor i1 %1655, true
  %1657 = and i1 %1648, %1656
  %1658 = zext i1 %1657 to i8
  store i8 %1658, i8* %BRANCH_TAKEN, align 1
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1660 = select i1 %1657, i64 %1641, i64 %1643
  store i64 %1660, i64* %1659, align 8
  store %struct.Memory* %loadMem_42785e, %struct.Memory** %MEMORY
  %loadBr_42785e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42785e = icmp eq i8 %loadBr_42785e, 1
  br i1 %cmpBr_42785e, label %block_.L_427a32, label %block_427864

block_427864:                                     ; preds = %block_.L_427858
  %loadMem_427864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 33
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %1663 to i64*
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 15
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %1666 to i64*
  %1667 = load i64, i64* %RBP.i359
  %1668 = sub i64 %1667, 48
  %1669 = load i64, i64* %PC.i358
  %1670 = add i64 %1669, 7
  store i64 %1670, i64* %PC.i358
  %1671 = inttoptr i64 %1668 to i32*
  store i32 0, i32* %1671
  store %struct.Memory* %loadMem_427864, %struct.Memory** %MEMORY
  %loadMem_42786b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 33
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %1674 to i64*
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 15
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %1677 to i64*
  %1678 = load i64, i64* %RBP.i357
  %1679 = sub i64 %1678, 36
  %1680 = load i64, i64* %PC.i356
  %1681 = add i64 %1680, 7
  store i64 %1681, i64* %PC.i356
  %1682 = inttoptr i64 %1679 to i32*
  store i32 0, i32* %1682
  store %struct.Memory* %loadMem_42786b, %struct.Memory** %MEMORY
  %loadMem_427872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 33
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %1685 to i64*
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 1
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %1688 to i64*
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1690 = getelementptr inbounds %struct.GPR, %struct.GPR* %1689, i32 0, i32 15
  %1691 = getelementptr inbounds %struct.Reg, %struct.Reg* %1690, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %1691 to i64*
  %1692 = load i64, i64* %RBP.i355
  %1693 = sub i64 %1692, 32
  %1694 = load i64, i64* %PC.i353
  %1695 = add i64 %1694, 3
  store i64 %1695, i64* %PC.i353
  %1696 = inttoptr i64 %1693 to i32*
  %1697 = load i32, i32* %1696
  %1698 = zext i32 %1697 to i64
  store i64 %1698, i64* %RAX.i354, align 8
  store %struct.Memory* %loadMem_427872, %struct.Memory** %MEMORY
  %loadMem_427875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 33
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %1701 to i64*
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 1
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %EAX.i351 = bitcast %union.anon* %1704 to i32*
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 15
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %1707 to i64*
  %1708 = load i64, i64* %RBP.i352
  %1709 = sub i64 %1708, 40
  %1710 = load i32, i32* %EAX.i351
  %1711 = zext i32 %1710 to i64
  %1712 = load i64, i64* %PC.i350
  %1713 = add i64 %1712, 3
  store i64 %1713, i64* %PC.i350
  %1714 = inttoptr i64 %1709 to i32*
  store i32 %1710, i32* %1714
  store %struct.Memory* %loadMem_427875, %struct.Memory** %MEMORY
  %loadMem_427878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 33
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %1717 to i64*
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 15
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %1720 to i64*
  %1721 = load i64, i64* %RBP.i349
  %1722 = sub i64 %1721, 44
  %1723 = load i64, i64* %PC.i348
  %1724 = add i64 %1723, 7
  store i64 %1724, i64* %PC.i348
  %1725 = inttoptr i64 %1722 to i32*
  store i32 0, i32* %1725
  store %struct.Memory* %loadMem_427878, %struct.Memory** %MEMORY
  %loadMem_42787f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 33
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %1728 to i64*
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 1
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 15
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %1734 to i64*
  %1735 = load i64, i64* %RBP.i347
  %1736 = sub i64 %1735, 32
  %1737 = load i64, i64* %PC.i345
  %1738 = add i64 %1737, 3
  store i64 %1738, i64* %PC.i345
  %1739 = inttoptr i64 %1736 to i32*
  %1740 = load i32, i32* %1739
  %1741 = zext i32 %1740 to i64
  store i64 %1741, i64* %RAX.i346, align 8
  store %struct.Memory* %loadMem_42787f, %struct.Memory** %MEMORY
  %loadMem_427882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 33
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 1
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %1747 to i64*
  %1748 = load i64, i64* %RAX.i344
  %1749 = load i64, i64* %PC.i343
  %1750 = add i64 %1749, 3
  store i64 %1750, i64* %PC.i343
  %1751 = trunc i64 %1748 to i32
  %1752 = add i32 1, %1751
  %1753 = zext i32 %1752 to i64
  store i64 %1753, i64* %RAX.i344, align 8
  %1754 = icmp ult i32 %1752, %1751
  %1755 = icmp ult i32 %1752, 1
  %1756 = or i1 %1754, %1755
  %1757 = zext i1 %1756 to i8
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1757, i8* %1758, align 1
  %1759 = and i32 %1752, 255
  %1760 = call i32 @llvm.ctpop.i32(i32 %1759)
  %1761 = trunc i32 %1760 to i8
  %1762 = and i8 %1761, 1
  %1763 = xor i8 %1762, 1
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1763, i8* %1764, align 1
  %1765 = xor i64 1, %1748
  %1766 = trunc i64 %1765 to i32
  %1767 = xor i32 %1766, %1752
  %1768 = lshr i32 %1767, 4
  %1769 = trunc i32 %1768 to i8
  %1770 = and i8 %1769, 1
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1770, i8* %1771, align 1
  %1772 = icmp eq i32 %1752, 0
  %1773 = zext i1 %1772 to i8
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1773, i8* %1774, align 1
  %1775 = lshr i32 %1752, 31
  %1776 = trunc i32 %1775 to i8
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1776, i8* %1777, align 1
  %1778 = lshr i32 %1751, 31
  %1779 = xor i32 %1775, %1778
  %1780 = add i32 %1779, %1775
  %1781 = icmp eq i32 %1780, 2
  %1782 = zext i1 %1781 to i8
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1782, i8* %1783, align 1
  store %struct.Memory* %loadMem_427882, %struct.Memory** %MEMORY
  %loadMem_427885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 33
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 1
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %EAX.i341 = bitcast %union.anon* %1789 to i32*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 15
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %1792 to i64*
  %1793 = load i64, i64* %RBP.i342
  %1794 = sub i64 %1793, 24
  %1795 = load i32, i32* %EAX.i341
  %1796 = zext i32 %1795 to i64
  %1797 = load i64, i64* %PC.i340
  %1798 = add i64 %1797, 3
  store i64 %1798, i64* %PC.i340
  %1799 = inttoptr i64 %1794 to i32*
  store i32 %1795, i32* %1799
  store %struct.Memory* %loadMem_427885, %struct.Memory** %MEMORY
  br label %block_.L_427888

block_.L_427888:                                  ; preds = %block_.L_4279bd, %block_427864
  %loadMem_427888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 33
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1802 to i64*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 1
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %RAX.i338 = bitcast %union.anon* %1805 to i64*
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 15
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %1808 to i64*
  %1809 = load i64, i64* %RBP.i339
  %1810 = sub i64 %1809, 24
  %1811 = load i64, i64* %PC.i337
  %1812 = add i64 %1811, 3
  store i64 %1812, i64* %PC.i337
  %1813 = inttoptr i64 %1810 to i32*
  %1814 = load i32, i32* %1813
  %1815 = zext i32 %1814 to i64
  store i64 %1815, i64* %RAX.i338, align 8
  store %struct.Memory* %loadMem_427888, %struct.Memory** %MEMORY
  %loadMem_42788b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 33
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1818 to i64*
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 1
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %EAX.i335 = bitcast %union.anon* %1821 to i32*
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 15
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %1824 to i64*
  %1825 = load i32, i32* %EAX.i335
  %1826 = zext i32 %1825 to i64
  %1827 = load i64, i64* %RBP.i336
  %1828 = sub i64 %1827, 20
  %1829 = load i64, i64* %PC.i334
  %1830 = add i64 %1829, 3
  store i64 %1830, i64* %PC.i334
  %1831 = inttoptr i64 %1828 to i32*
  %1832 = load i32, i32* %1831
  %1833 = sub i32 %1825, %1832
  %1834 = icmp ult i32 %1825, %1832
  %1835 = zext i1 %1834 to i8
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1835, i8* %1836, align 1
  %1837 = and i32 %1833, 255
  %1838 = call i32 @llvm.ctpop.i32(i32 %1837)
  %1839 = trunc i32 %1838 to i8
  %1840 = and i8 %1839, 1
  %1841 = xor i8 %1840, 1
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1841, i8* %1842, align 1
  %1843 = xor i32 %1832, %1825
  %1844 = xor i32 %1843, %1833
  %1845 = lshr i32 %1844, 4
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1847, i8* %1848, align 1
  %1849 = icmp eq i32 %1833, 0
  %1850 = zext i1 %1849 to i8
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1850, i8* %1851, align 1
  %1852 = lshr i32 %1833, 31
  %1853 = trunc i32 %1852 to i8
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1853, i8* %1854, align 1
  %1855 = lshr i32 %1825, 31
  %1856 = lshr i32 %1832, 31
  %1857 = xor i32 %1856, %1855
  %1858 = xor i32 %1852, %1855
  %1859 = add i32 %1858, %1857
  %1860 = icmp eq i32 %1859, 2
  %1861 = zext i1 %1860 to i8
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1861, i8* %1862, align 1
  store %struct.Memory* %loadMem_42788b, %struct.Memory** %MEMORY
  %loadMem_42788e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 33
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %1865 to i64*
  %1866 = load i64, i64* %PC.i333
  %1867 = add i64 %1866, 317
  %1868 = load i64, i64* %PC.i333
  %1869 = add i64 %1868, 6
  %1870 = load i64, i64* %PC.i333
  %1871 = add i64 %1870, 6
  store i64 %1871, i64* %PC.i333
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1873 = load i8, i8* %1872, align 1
  %1874 = icmp eq i8 %1873, 0
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1876 = load i8, i8* %1875, align 1
  %1877 = icmp ne i8 %1876, 0
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1879 = load i8, i8* %1878, align 1
  %1880 = icmp ne i8 %1879, 0
  %1881 = xor i1 %1877, %1880
  %1882 = xor i1 %1881, true
  %1883 = and i1 %1874, %1882
  %1884 = zext i1 %1883 to i8
  store i8 %1884, i8* %BRANCH_TAKEN, align 1
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1886 = select i1 %1883, i64 %1867, i64 %1869
  store i64 %1886, i64* %1885, align 8
  store %struct.Memory* %loadMem_42788e, %struct.Memory** %MEMORY
  %loadBr_42788e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42788e = icmp eq i8 %loadBr_42788e, 1
  br i1 %cmpBr_42788e, label %block_.L_4279cb, label %block_427894

block_427894:                                     ; preds = %block_.L_427888
  %loadMem_427894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 33
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %1889 to i64*
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 1
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %1892 to i64*
  %1893 = load i64, i64* %PC.i331
  %1894 = add i64 %1893, 10
  store i64 %1894, i64* %PC.i331
  store i64 ptrtoint (%G__0x662070_type* @G__0x662070 to i64), i64* %RAX.i332, align 8
  store %struct.Memory* %loadMem_427894, %struct.Memory** %MEMORY
  %loadMem_42789e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 33
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1897 to i64*
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 5
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %RCX.i329 = bitcast %union.anon* %1900 to i64*
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 15
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %1903 to i64*
  %1904 = load i64, i64* %RBP.i330
  %1905 = sub i64 %1904, 16
  %1906 = load i64, i64* %PC.i328
  %1907 = add i64 %1906, 4
  store i64 %1907, i64* %PC.i328
  %1908 = inttoptr i64 %1905 to i64*
  %1909 = load i64, i64* %1908
  store i64 %1909, i64* %RCX.i329, align 8
  store %struct.Memory* %loadMem_42789e, %struct.Memory** %MEMORY
  %loadMem_4278a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 33
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1912 to i64*
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 7
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %RDX.i326 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 15
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %1918 to i64*
  %1919 = load i64, i64* %RBP.i327
  %1920 = sub i64 %1919, 24
  %1921 = load i64, i64* %PC.i325
  %1922 = add i64 %1921, 4
  store i64 %1922, i64* %PC.i325
  %1923 = inttoptr i64 %1920 to i32*
  %1924 = load i32, i32* %1923
  %1925 = sext i32 %1924 to i64
  store i64 %1925, i64* %RDX.i326, align 8
  store %struct.Memory* %loadMem_4278a2, %struct.Memory** %MEMORY
  %loadMem_4278a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 33
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %1928 to i64*
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 5
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %RCX.i322 = bitcast %union.anon* %1931 to i64*
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 7
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %RDX.i323 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 9
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %RSI.i324 = bitcast %union.anon* %1937 to i64*
  %1938 = load i64, i64* %RCX.i322
  %1939 = load i64, i64* %RDX.i323
  %1940 = add i64 %1939, %1938
  %1941 = load i64, i64* %PC.i321
  %1942 = add i64 %1941, 4
  store i64 %1942, i64* %PC.i321
  %1943 = inttoptr i64 %1940 to i8*
  %1944 = load i8, i8* %1943
  %1945 = sext i8 %1944 to i64
  %1946 = and i64 %1945, 4294967295
  store i64 %1946, i64* %RSI.i324, align 8
  store %struct.Memory* %loadMem_4278a6, %struct.Memory** %MEMORY
  %loadMem_4278aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 33
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 9
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %ESI.i319 = bitcast %union.anon* %1952 to i32*
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 5
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %RCX.i320 = bitcast %union.anon* %1955 to i64*
  %1956 = load i32, i32* %ESI.i319
  %1957 = zext i32 %1956 to i64
  %1958 = load i64, i64* %PC.i318
  %1959 = add i64 %1958, 3
  store i64 %1959, i64* %PC.i318
  %1960 = shl i64 %1957, 32
  %1961 = ashr exact i64 %1960, 32
  store i64 %1961, i64* %RCX.i320, align 8
  store %struct.Memory* %loadMem_4278aa, %struct.Memory** %MEMORY
  %loadMem_4278ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 33
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 5
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %RCX.i317 = bitcast %union.anon* %1967 to i64*
  %1968 = load i64, i64* %RCX.i317
  %1969 = load i64, i64* %PC.i316
  %1970 = add i64 %1969, 4
  store i64 %1970, i64* %PC.i316
  %1971 = sext i64 %1968 to i128
  %1972 = and i128 %1971, -18446744073709551616
  %1973 = zext i64 %1968 to i128
  %1974 = or i128 %1972, %1973
  %1975 = mul i128 92, %1974
  %1976 = trunc i128 %1975 to i64
  store i64 %1976, i64* %RCX.i317, align 8
  %1977 = sext i64 %1976 to i128
  %1978 = icmp ne i128 %1977, %1975
  %1979 = zext i1 %1978 to i8
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1979, i8* %1980, align 1
  %1981 = trunc i128 %1975 to i32
  %1982 = and i32 %1981, 255
  %1983 = call i32 @llvm.ctpop.i32(i32 %1982)
  %1984 = trunc i32 %1983 to i8
  %1985 = and i8 %1984, 1
  %1986 = xor i8 %1985, 1
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1986, i8* %1987, align 1
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1988, align 1
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1989, align 1
  %1990 = lshr i64 %1976, 63
  %1991 = trunc i64 %1990 to i8
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1991, i8* %1992, align 1
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1979, i8* %1993, align 1
  store %struct.Memory* %loadMem_4278ad, %struct.Memory** %MEMORY
  %loadMem_4278b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 33
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 1
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %1999 to i64*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 5
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %2002 to i64*
  %2003 = load i64, i64* %RAX.i314
  %2004 = load i64, i64* %RCX.i315
  %2005 = load i64, i64* %PC.i313
  %2006 = add i64 %2005, 3
  store i64 %2006, i64* %PC.i313
  %2007 = add i64 %2004, %2003
  store i64 %2007, i64* %RAX.i314, align 8
  %2008 = icmp ult i64 %2007, %2003
  %2009 = icmp ult i64 %2007, %2004
  %2010 = or i1 %2008, %2009
  %2011 = zext i1 %2010 to i8
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2011, i8* %2012, align 1
  %2013 = trunc i64 %2007 to i32
  %2014 = and i32 %2013, 255
  %2015 = call i32 @llvm.ctpop.i32(i32 %2014)
  %2016 = trunc i32 %2015 to i8
  %2017 = and i8 %2016, 1
  %2018 = xor i8 %2017, 1
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2018, i8* %2019, align 1
  %2020 = xor i64 %2004, %2003
  %2021 = xor i64 %2020, %2007
  %2022 = lshr i64 %2021, 4
  %2023 = trunc i64 %2022 to i8
  %2024 = and i8 %2023, 1
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2024, i8* %2025, align 1
  %2026 = icmp eq i64 %2007, 0
  %2027 = zext i1 %2026 to i8
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2027, i8* %2028, align 1
  %2029 = lshr i64 %2007, 63
  %2030 = trunc i64 %2029 to i8
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2030, i8* %2031, align 1
  %2032 = lshr i64 %2003, 63
  %2033 = lshr i64 %2004, 63
  %2034 = xor i64 %2029, %2032
  %2035 = xor i64 %2029, %2033
  %2036 = add i64 %2034, %2035
  %2037 = icmp eq i64 %2036, 2
  %2038 = zext i1 %2037 to i8
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2038, i8* %2039, align 1
  store %struct.Memory* %loadMem_4278b1, %struct.Memory** %MEMORY
  %loadMem_4278b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 33
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %2042 to i64*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 5
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %2045 to i64*
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 15
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %2048 to i64*
  %2049 = load i64, i64* %RBP.i312
  %2050 = sub i64 %2049, 16
  %2051 = load i64, i64* %PC.i310
  %2052 = add i64 %2051, 4
  store i64 %2052, i64* %PC.i310
  %2053 = inttoptr i64 %2050 to i64*
  %2054 = load i64, i64* %2053
  store i64 %2054, i64* %RCX.i311, align 8
  store %struct.Memory* %loadMem_4278b4, %struct.Memory** %MEMORY
  %loadMem_4278b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 33
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %2057 to i64*
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 9
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %RSI.i308 = bitcast %union.anon* %2060 to i64*
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 15
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %2063 to i64*
  %2064 = load i64, i64* %RBP.i309
  %2065 = sub i64 %2064, 24
  %2066 = load i64, i64* %PC.i307
  %2067 = add i64 %2066, 3
  store i64 %2067, i64* %PC.i307
  %2068 = inttoptr i64 %2065 to i32*
  %2069 = load i32, i32* %2068
  %2070 = zext i32 %2069 to i64
  store i64 %2070, i64* %RSI.i308, align 8
  store %struct.Memory* %loadMem_4278b8, %struct.Memory** %MEMORY
  %loadMem_4278bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 33
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %2073 to i64*
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 9
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %RSI.i305 = bitcast %union.anon* %2076 to i64*
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 15
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %2079 to i64*
  %2080 = load i64, i64* %RSI.i305
  %2081 = load i64, i64* %RBP.i306
  %2082 = sub i64 %2081, 32
  %2083 = load i64, i64* %PC.i304
  %2084 = add i64 %2083, 3
  store i64 %2084, i64* %PC.i304
  %2085 = trunc i64 %2080 to i32
  %2086 = inttoptr i64 %2082 to i32*
  %2087 = load i32, i32* %2086
  %2088 = sub i32 %2085, %2087
  %2089 = zext i32 %2088 to i64
  store i64 %2089, i64* %RSI.i305, align 8
  %2090 = icmp ult i32 %2085, %2087
  %2091 = zext i1 %2090 to i8
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2091, i8* %2092, align 1
  %2093 = and i32 %2088, 255
  %2094 = call i32 @llvm.ctpop.i32(i32 %2093)
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  %2097 = xor i8 %2096, 1
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2097, i8* %2098, align 1
  %2099 = xor i32 %2087, %2085
  %2100 = xor i32 %2099, %2088
  %2101 = lshr i32 %2100, 4
  %2102 = trunc i32 %2101 to i8
  %2103 = and i8 %2102, 1
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2103, i8* %2104, align 1
  %2105 = icmp eq i32 %2088, 0
  %2106 = zext i1 %2105 to i8
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2106, i8* %2107, align 1
  %2108 = lshr i32 %2088, 31
  %2109 = trunc i32 %2108 to i8
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2109, i8* %2110, align 1
  %2111 = lshr i32 %2085, 31
  %2112 = lshr i32 %2087, 31
  %2113 = xor i32 %2112, %2111
  %2114 = xor i32 %2108, %2111
  %2115 = add i32 %2114, %2113
  %2116 = icmp eq i32 %2115, 2
  %2117 = zext i1 %2116 to i8
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2117, i8* %2118, align 1
  store %struct.Memory* %loadMem_4278bb, %struct.Memory** %MEMORY
  %loadMem_4278be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 33
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %2121 to i64*
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 9
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %ESI.i302 = bitcast %union.anon* %2124 to i32*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 7
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %RDX.i303 = bitcast %union.anon* %2127 to i64*
  %2128 = load i32, i32* %ESI.i302
  %2129 = zext i32 %2128 to i64
  %2130 = load i64, i64* %PC.i301
  %2131 = add i64 %2130, 3
  store i64 %2131, i64* %PC.i301
  %2132 = shl i64 %2129, 32
  %2133 = ashr exact i64 %2132, 32
  store i64 %2133, i64* %RDX.i303, align 8
  store %struct.Memory* %loadMem_4278be, %struct.Memory** %MEMORY
  %loadMem_4278c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2135 = getelementptr inbounds %struct.GPR, %struct.GPR* %2134, i32 0, i32 33
  %2136 = getelementptr inbounds %struct.Reg, %struct.Reg* %2135, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %2136 to i64*
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 5
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %2139 to i64*
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 7
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %RDX.i299 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 9
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %RSI.i300 = bitcast %union.anon* %2145 to i64*
  %2146 = load i64, i64* %RCX.i298
  %2147 = load i64, i64* %RDX.i299
  %2148 = add i64 %2147, %2146
  %2149 = load i64, i64* %PC.i297
  %2150 = add i64 %2149, 4
  store i64 %2150, i64* %PC.i297
  %2151 = inttoptr i64 %2148 to i8*
  %2152 = load i8, i8* %2151
  %2153 = sext i8 %2152 to i64
  %2154 = and i64 %2153, 4294967295
  store i64 %2154, i64* %RSI.i300, align 8
  store %struct.Memory* %loadMem_4278c1, %struct.Memory** %MEMORY
  %loadMem_4278c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 33
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %2157 to i64*
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 9
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %ESI.i295 = bitcast %union.anon* %2160 to i32*
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 5
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %2163 to i64*
  %2164 = load i32, i32* %ESI.i295
  %2165 = zext i32 %2164 to i64
  %2166 = load i64, i64* %PC.i294
  %2167 = add i64 %2166, 3
  store i64 %2167, i64* %PC.i294
  %2168 = shl i64 %2165, 32
  %2169 = ashr exact i64 %2168, 32
  store i64 %2169, i64* %RCX.i296, align 8
  store %struct.Memory* %loadMem_4278c5, %struct.Memory** %MEMORY
  %loadMem_4278c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 33
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %2172 to i64*
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 1
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %2175 to i64*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 5
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %RCX.i292 = bitcast %union.anon* %2178 to i64*
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 9
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %RSI.i293 = bitcast %union.anon* %2181 to i64*
  %2182 = load i64, i64* %RAX.i291
  %2183 = load i64, i64* %RCX.i292
  %2184 = mul i64 %2183, 4
  %2185 = add i64 %2184, %2182
  %2186 = load i64, i64* %PC.i290
  %2187 = add i64 %2186, 3
  store i64 %2187, i64* %PC.i290
  %2188 = inttoptr i64 %2185 to i32*
  %2189 = load i32, i32* %2188
  %2190 = zext i32 %2189 to i64
  store i64 %2190, i64* %RSI.i293, align 8
  store %struct.Memory* %loadMem_4278c8, %struct.Memory** %MEMORY
  %loadMem_4278cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 33
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2193 to i64*
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 9
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %RSI.i288 = bitcast %union.anon* %2196 to i64*
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 15
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %2199 to i64*
  %2200 = load i64, i64* %RSI.i288
  %2201 = load i64, i64* %RBP.i289
  %2202 = sub i64 %2201, 36
  %2203 = load i64, i64* %PC.i287
  %2204 = add i64 %2203, 3
  store i64 %2204, i64* %PC.i287
  %2205 = trunc i64 %2200 to i32
  %2206 = inttoptr i64 %2202 to i32*
  %2207 = load i32, i32* %2206
  %2208 = add i32 %2207, %2205
  %2209 = zext i32 %2208 to i64
  store i64 %2209, i64* %RSI.i288, align 8
  %2210 = icmp ult i32 %2208, %2205
  %2211 = icmp ult i32 %2208, %2207
  %2212 = or i1 %2210, %2211
  %2213 = zext i1 %2212 to i8
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2213, i8* %2214, align 1
  %2215 = and i32 %2208, 255
  %2216 = call i32 @llvm.ctpop.i32(i32 %2215)
  %2217 = trunc i32 %2216 to i8
  %2218 = and i8 %2217, 1
  %2219 = xor i8 %2218, 1
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2219, i8* %2220, align 1
  %2221 = xor i32 %2207, %2205
  %2222 = xor i32 %2221, %2208
  %2223 = lshr i32 %2222, 4
  %2224 = trunc i32 %2223 to i8
  %2225 = and i8 %2224, 1
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2225, i8* %2226, align 1
  %2227 = icmp eq i32 %2208, 0
  %2228 = zext i1 %2227 to i8
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2228, i8* %2229, align 1
  %2230 = lshr i32 %2208, 31
  %2231 = trunc i32 %2230 to i8
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2231, i8* %2232, align 1
  %2233 = lshr i32 %2205, 31
  %2234 = lshr i32 %2207, 31
  %2235 = xor i32 %2230, %2233
  %2236 = xor i32 %2230, %2234
  %2237 = add i32 %2235, %2236
  %2238 = icmp eq i32 %2237, 2
  %2239 = zext i1 %2238 to i8
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2239, i8* %2240, align 1
  store %struct.Memory* %loadMem_4278cb, %struct.Memory** %MEMORY
  %loadMem_4278ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 33
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2243 to i64*
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 9
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %ESI.i285 = bitcast %union.anon* %2246 to i32*
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 15
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %2249 to i64*
  %2250 = load i64, i64* %RBP.i286
  %2251 = sub i64 %2250, 36
  %2252 = load i32, i32* %ESI.i285
  %2253 = zext i32 %2252 to i64
  %2254 = load i64, i64* %PC.i284
  %2255 = add i64 %2254, 3
  store i64 %2255, i64* %PC.i284
  %2256 = inttoptr i64 %2251 to i32*
  store i32 %2252, i32* %2256
  store %struct.Memory* %loadMem_4278ce, %struct.Memory** %MEMORY
  %loadMem_4278d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 33
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2259 to i64*
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 9
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %RSI.i282 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 15
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %2265 to i64*
  %2266 = load i64, i64* %RBP.i283
  %2267 = sub i64 %2266, 36
  %2268 = load i64, i64* %PC.i281
  %2269 = add i64 %2268, 3
  store i64 %2269, i64* %PC.i281
  %2270 = inttoptr i64 %2267 to i32*
  %2271 = load i32, i32* %2270
  %2272 = zext i32 %2271 to i64
  store i64 %2272, i64* %RSI.i282, align 8
  store %struct.Memory* %loadMem_4278d1, %struct.Memory** %MEMORY
  %loadMem_4278d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 33
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %2275 to i64*
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 9
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2278 to i32*
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 15
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %2281 to i64*
  %2282 = load i32, i32* %ESI.i
  %2283 = zext i32 %2282 to i64
  %2284 = load i64, i64* %RBP.i280
  %2285 = sub i64 %2284, 48
  %2286 = load i64, i64* %PC.i279
  %2287 = add i64 %2286, 3
  store i64 %2287, i64* %PC.i279
  %2288 = inttoptr i64 %2285 to i32*
  %2289 = load i32, i32* %2288
  %2290 = sub i32 %2282, %2289
  %2291 = icmp ult i32 %2282, %2289
  %2292 = zext i1 %2291 to i8
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2292, i8* %2293, align 1
  %2294 = and i32 %2290, 255
  %2295 = call i32 @llvm.ctpop.i32(i32 %2294)
  %2296 = trunc i32 %2295 to i8
  %2297 = and i8 %2296, 1
  %2298 = xor i8 %2297, 1
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2298, i8* %2299, align 1
  %2300 = xor i32 %2289, %2282
  %2301 = xor i32 %2300, %2290
  %2302 = lshr i32 %2301, 4
  %2303 = trunc i32 %2302 to i8
  %2304 = and i8 %2303, 1
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2304, i8* %2305, align 1
  %2306 = icmp eq i32 %2290, 0
  %2307 = zext i1 %2306 to i8
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2307, i8* %2308, align 1
  %2309 = lshr i32 %2290, 31
  %2310 = trunc i32 %2309 to i8
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2310, i8* %2311, align 1
  %2312 = lshr i32 %2282, 31
  %2313 = lshr i32 %2289, 31
  %2314 = xor i32 %2313, %2312
  %2315 = xor i32 %2309, %2312
  %2316 = add i32 %2315, %2314
  %2317 = icmp eq i32 %2316, 2
  %2318 = zext i1 %2317 to i8
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2318, i8* %2319, align 1
  store %struct.Memory* %loadMem_4278d4, %struct.Memory** %MEMORY
  %loadMem_4278d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 33
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %2322 to i64*
  %2323 = load i64, i64* %PC.i278
  %2324 = add i64 %2323, 18
  %2325 = load i64, i64* %PC.i278
  %2326 = add i64 %2325, 6
  %2327 = load i64, i64* %PC.i278
  %2328 = add i64 %2327, 6
  store i64 %2328, i64* %PC.i278
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2330 = load i8, i8* %2329, align 1
  %2331 = icmp ne i8 %2330, 0
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2333 = load i8, i8* %2332, align 1
  %2334 = icmp ne i8 %2333, 0
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2336 = load i8, i8* %2335, align 1
  %2337 = icmp ne i8 %2336, 0
  %2338 = xor i1 %2334, %2337
  %2339 = or i1 %2331, %2338
  %2340 = zext i1 %2339 to i8
  store i8 %2340, i8* %BRANCH_TAKEN, align 1
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2342 = select i1 %2339, i64 %2324, i64 %2326
  store i64 %2342, i64* %2341, align 8
  store %struct.Memory* %loadMem_4278d7, %struct.Memory** %MEMORY
  %loadBr_4278d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4278d7 = icmp eq i8 %loadBr_4278d7, 1
  br i1 %cmpBr_4278d7, label %block_.L_4278e9, label %block_4278dd

block_4278dd:                                     ; preds = %block_427894
  %loadMem_4278dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 33
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %2345 to i64*
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 1
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %2348 to i64*
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2350 = getelementptr inbounds %struct.GPR, %struct.GPR* %2349, i32 0, i32 15
  %2351 = getelementptr inbounds %struct.Reg, %struct.Reg* %2350, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %2351 to i64*
  %2352 = load i64, i64* %RBP.i277
  %2353 = sub i64 %2352, 36
  %2354 = load i64, i64* %PC.i275
  %2355 = add i64 %2354, 3
  store i64 %2355, i64* %PC.i275
  %2356 = inttoptr i64 %2353 to i32*
  %2357 = load i32, i32* %2356
  %2358 = zext i32 %2357 to i64
  store i64 %2358, i64* %RAX.i276, align 8
  store %struct.Memory* %loadMem_4278dd, %struct.Memory** %MEMORY
  %loadMem_4278e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 33
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2361 to i64*
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 1
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %EAX.i273 = bitcast %union.anon* %2364 to i32*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 15
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %2367 to i64*
  %2368 = load i64, i64* %RBP.i274
  %2369 = sub i64 %2368, 48
  %2370 = load i32, i32* %EAX.i273
  %2371 = zext i32 %2370 to i64
  %2372 = load i64, i64* %PC.i272
  %2373 = add i64 %2372, 3
  store i64 %2373, i64* %PC.i272
  %2374 = inttoptr i64 %2369 to i32*
  store i32 %2370, i32* %2374
  store %struct.Memory* %loadMem_4278e0, %struct.Memory** %MEMORY
  %loadMem_4278e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 33
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2377 to i64*
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 1
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 15
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %2383 to i64*
  %2384 = load i64, i64* %RBP.i271
  %2385 = sub i64 %2384, 24
  %2386 = load i64, i64* %PC.i269
  %2387 = add i64 %2386, 3
  store i64 %2387, i64* %PC.i269
  %2388 = inttoptr i64 %2385 to i32*
  %2389 = load i32, i32* %2388
  %2390 = zext i32 %2389 to i64
  store i64 %2390, i64* %RAX.i270, align 8
  store %struct.Memory* %loadMem_4278e3, %struct.Memory** %MEMORY
  %loadMem_4278e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 33
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2393 to i64*
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 1
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %EAX.i267 = bitcast %union.anon* %2396 to i32*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 15
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %2399 to i64*
  %2400 = load i64, i64* %RBP.i268
  %2401 = sub i64 %2400, 44
  %2402 = load i32, i32* %EAX.i267
  %2403 = zext i32 %2402 to i64
  %2404 = load i64, i64* %PC.i266
  %2405 = add i64 %2404, 3
  store i64 %2405, i64* %PC.i266
  %2406 = inttoptr i64 %2401 to i32*
  store i32 %2402, i32* %2406
  store %struct.Memory* %loadMem_4278e6, %struct.Memory** %MEMORY
  br label %block_.L_4278e9

block_.L_4278e9:                                  ; preds = %block_4278dd, %block_427894
  %loadMem_4278e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 33
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2409 to i64*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 1
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %2412 to i64*
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 15
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %2415 to i64*
  %2416 = load i64, i64* %RBP.i265
  %2417 = sub i64 %2416, 48
  %2418 = load i64, i64* %PC.i263
  %2419 = add i64 %2418, 3
  store i64 %2419, i64* %PC.i263
  %2420 = inttoptr i64 %2417 to i32*
  %2421 = load i32, i32* %2420
  %2422 = zext i32 %2421 to i64
  store i64 %2422, i64* %RAX.i264, align 8
  store %struct.Memory* %loadMem_4278e9, %struct.Memory** %MEMORY
  %loadMem_4278ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 33
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %2425 to i64*
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 1
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %EAX.i261 = bitcast %union.anon* %2428 to i32*
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 15
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %2431 to i64*
  %2432 = load i32, i32* %EAX.i261
  %2433 = zext i32 %2432 to i64
  %2434 = load i64, i64* %RBP.i262
  %2435 = sub i64 %2434, 52
  %2436 = load i64, i64* %PC.i260
  %2437 = add i64 %2436, 3
  store i64 %2437, i64* %PC.i260
  %2438 = inttoptr i64 %2435 to i32*
  %2439 = load i32, i32* %2438
  %2440 = sub i32 %2432, %2439
  %2441 = icmp ult i32 %2432, %2439
  %2442 = zext i1 %2441 to i8
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2442, i8* %2443, align 1
  %2444 = and i32 %2440, 255
  %2445 = call i32 @llvm.ctpop.i32(i32 %2444)
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  %2448 = xor i8 %2447, 1
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2448, i8* %2449, align 1
  %2450 = xor i32 %2439, %2432
  %2451 = xor i32 %2450, %2440
  %2452 = lshr i32 %2451, 4
  %2453 = trunc i32 %2452 to i8
  %2454 = and i8 %2453, 1
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2454, i8* %2455, align 1
  %2456 = icmp eq i32 %2440, 0
  %2457 = zext i1 %2456 to i8
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2457, i8* %2458, align 1
  %2459 = lshr i32 %2440, 31
  %2460 = trunc i32 %2459 to i8
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2460, i8* %2461, align 1
  %2462 = lshr i32 %2432, 31
  %2463 = lshr i32 %2439, 31
  %2464 = xor i32 %2463, %2462
  %2465 = xor i32 %2459, %2462
  %2466 = add i32 %2465, %2464
  %2467 = icmp eq i32 %2466, 2
  %2468 = zext i1 %2467 to i8
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2468, i8* %2469, align 1
  store %struct.Memory* %loadMem_4278ec, %struct.Memory** %MEMORY
  %loadMem_4278ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 33
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %2472 to i64*
  %2473 = load i64, i64* %PC.i259
  %2474 = add i64 %2473, 119
  %2475 = load i64, i64* %PC.i259
  %2476 = add i64 %2475, 6
  %2477 = load i64, i64* %PC.i259
  %2478 = add i64 %2477, 6
  store i64 %2478, i64* %PC.i259
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2480 = load i8, i8* %2479, align 1
  %2481 = icmp ne i8 %2480, 0
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2483 = load i8, i8* %2482, align 1
  %2484 = icmp ne i8 %2483, 0
  %2485 = xor i1 %2481, %2484
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %BRANCH_TAKEN, align 1
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2488 = select i1 %2485, i64 %2474, i64 %2476
  store i64 %2488, i64* %2487, align 8
  store %struct.Memory* %loadMem_4278ef, %struct.Memory** %MEMORY
  %loadBr_4278ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4278ef = icmp eq i8 %loadBr_4278ef, 1
  br i1 %cmpBr_4278ef, label %block_.L_427966, label %block_4278f5

block_4278f5:                                     ; preds = %block_.L_4278e9
  %loadMem_4278f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2490 = getelementptr inbounds %struct.GPR, %struct.GPR* %2489, i32 0, i32 33
  %2491 = getelementptr inbounds %struct.Reg, %struct.Reg* %2490, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2491 to i64*
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2493 = getelementptr inbounds %struct.GPR, %struct.GPR* %2492, i32 0, i32 1
  %2494 = getelementptr inbounds %struct.Reg, %struct.Reg* %2493, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %2494 to i64*
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 15
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %2497 to i64*
  %2498 = load i64, i64* %RBP.i258
  %2499 = sub i64 %2498, 48
  %2500 = load i64, i64* %PC.i256
  %2501 = add i64 %2500, 3
  store i64 %2501, i64* %PC.i256
  %2502 = inttoptr i64 %2499 to i32*
  %2503 = load i32, i32* %2502
  %2504 = zext i32 %2503 to i64
  store i64 %2504, i64* %RAX.i257, align 8
  store %struct.Memory* %loadMem_4278f5, %struct.Memory** %MEMORY
  %loadMem_4278f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 33
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2507 to i64*
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2509 = getelementptr inbounds %struct.GPR, %struct.GPR* %2508, i32 0, i32 1
  %2510 = getelementptr inbounds %struct.Reg, %struct.Reg* %2509, i32 0, i32 0
  %RAX.i254 = bitcast %union.anon* %2510 to i64*
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 15
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %2513 to i64*
  %2514 = load i64, i64* %RAX.i254
  %2515 = load i64, i64* %RBP.i255
  %2516 = sub i64 %2515, 36
  %2517 = load i64, i64* %PC.i253
  %2518 = add i64 %2517, 3
  store i64 %2518, i64* %PC.i253
  %2519 = trunc i64 %2514 to i32
  %2520 = inttoptr i64 %2516 to i32*
  %2521 = load i32, i32* %2520
  %2522 = sub i32 %2519, %2521
  %2523 = zext i32 %2522 to i64
  store i64 %2523, i64* %RAX.i254, align 8
  %2524 = icmp ult i32 %2519, %2521
  %2525 = zext i1 %2524 to i8
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2525, i8* %2526, align 1
  %2527 = and i32 %2522, 255
  %2528 = call i32 @llvm.ctpop.i32(i32 %2527)
  %2529 = trunc i32 %2528 to i8
  %2530 = and i8 %2529, 1
  %2531 = xor i8 %2530, 1
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2531, i8* %2532, align 1
  %2533 = xor i32 %2521, %2519
  %2534 = xor i32 %2533, %2522
  %2535 = lshr i32 %2534, 4
  %2536 = trunc i32 %2535 to i8
  %2537 = and i8 %2536, 1
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2537, i8* %2538, align 1
  %2539 = icmp eq i32 %2522, 0
  %2540 = zext i1 %2539 to i8
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2540, i8* %2541, align 1
  %2542 = lshr i32 %2522, 31
  %2543 = trunc i32 %2542 to i8
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2543, i8* %2544, align 1
  %2545 = lshr i32 %2519, 31
  %2546 = lshr i32 %2521, 31
  %2547 = xor i32 %2546, %2545
  %2548 = xor i32 %2542, %2545
  %2549 = add i32 %2548, %2547
  %2550 = icmp eq i32 %2549, 2
  %2551 = zext i1 %2550 to i8
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2551, i8* %2552, align 1
  store %struct.Memory* %loadMem_4278f8, %struct.Memory** %MEMORY
  %loadMem_4278fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 33
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2555 to i64*
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 1
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %EAX.i251 = bitcast %union.anon* %2558 to i32*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 15
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %2561 to i64*
  %2562 = load i32, i32* %EAX.i251
  %2563 = zext i32 %2562 to i64
  %2564 = load i64, i64* %RBP.i252
  %2565 = sub i64 %2564, 56
  %2566 = load i64, i64* %PC.i250
  %2567 = add i64 %2566, 3
  store i64 %2567, i64* %PC.i250
  %2568 = inttoptr i64 %2565 to i32*
  %2569 = load i32, i32* %2568
  %2570 = sub i32 %2562, %2569
  %2571 = icmp ult i32 %2562, %2569
  %2572 = zext i1 %2571 to i8
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2572, i8* %2573, align 1
  %2574 = and i32 %2570, 255
  %2575 = call i32 @llvm.ctpop.i32(i32 %2574)
  %2576 = trunc i32 %2575 to i8
  %2577 = and i8 %2576, 1
  %2578 = xor i8 %2577, 1
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2578, i8* %2579, align 1
  %2580 = xor i32 %2569, %2562
  %2581 = xor i32 %2580, %2570
  %2582 = lshr i32 %2581, 4
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2584, i8* %2585, align 1
  %2586 = icmp eq i32 %2570, 0
  %2587 = zext i1 %2586 to i8
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2587, i8* %2588, align 1
  %2589 = lshr i32 %2570, 31
  %2590 = trunc i32 %2589 to i8
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2590, i8* %2591, align 1
  %2592 = lshr i32 %2562, 31
  %2593 = lshr i32 %2569, 31
  %2594 = xor i32 %2593, %2592
  %2595 = xor i32 %2589, %2592
  %2596 = add i32 %2595, %2594
  %2597 = icmp eq i32 %2596, 2
  %2598 = zext i1 %2597 to i8
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2598, i8* %2599, align 1
  store %struct.Memory* %loadMem_4278fb, %struct.Memory** %MEMORY
  %loadMem_4278fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2601 = getelementptr inbounds %struct.GPR, %struct.GPR* %2600, i32 0, i32 33
  %2602 = getelementptr inbounds %struct.Reg, %struct.Reg* %2601, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2602 to i64*
  %2603 = load i64, i64* %PC.i249
  %2604 = add i64 %2603, 104
  %2605 = load i64, i64* %PC.i249
  %2606 = add i64 %2605, 6
  %2607 = load i64, i64* %PC.i249
  %2608 = add i64 %2607, 6
  store i64 %2608, i64* %PC.i249
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2610 = load i8, i8* %2609, align 1
  %2611 = icmp ne i8 %2610, 0
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2613 = load i8, i8* %2612, align 1
  %2614 = icmp ne i8 %2613, 0
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2616 = load i8, i8* %2615, align 1
  %2617 = icmp ne i8 %2616, 0
  %2618 = xor i1 %2614, %2617
  %2619 = or i1 %2611, %2618
  %2620 = zext i1 %2619 to i8
  store i8 %2620, i8* %BRANCH_TAKEN, align 1
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2622 = select i1 %2619, i64 %2604, i64 %2606
  store i64 %2622, i64* %2621, align 8
  store %struct.Memory* %loadMem_4278fe, %struct.Memory** %MEMORY
  %loadBr_4278fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4278fe = icmp eq i8 %loadBr_4278fe, 1
  br i1 %cmpBr_4278fe, label %block_.L_427966, label %block_427904

block_427904:                                     ; preds = %block_4278f5
  %loadMem_427904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 33
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 1
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 15
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %2631 to i64*
  %2632 = load i64, i64* %RBP.i248
  %2633 = sub i64 %2632, 40
  %2634 = load i64, i64* %PC.i246
  %2635 = add i64 %2634, 3
  store i64 %2635, i64* %PC.i246
  %2636 = inttoptr i64 %2633 to i32*
  %2637 = load i32, i32* %2636
  %2638 = zext i32 %2637 to i64
  store i64 %2638, i64* %RAX.i247, align 8
  store %struct.Memory* %loadMem_427904, %struct.Memory** %MEMORY
  %loadMem_427907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 33
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2641 to i64*
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 1
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %EAX.i244 = bitcast %union.anon* %2644 to i32*
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2646 = getelementptr inbounds %struct.GPR, %struct.GPR* %2645, i32 0, i32 15
  %2647 = getelementptr inbounds %struct.Reg, %struct.Reg* %2646, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %2647 to i64*
  %2648 = load i64, i64* %RBP.i245
  %2649 = sub i64 %2648, 28
  %2650 = load i32, i32* %EAX.i244
  %2651 = zext i32 %2650 to i64
  %2652 = load i64, i64* %PC.i243
  %2653 = add i64 %2652, 3
  store i64 %2653, i64* %PC.i243
  %2654 = inttoptr i64 %2649 to i32*
  store i32 %2650, i32* %2654
  store %struct.Memory* %loadMem_427907, %struct.Memory** %MEMORY
  br label %block_.L_42790a

block_.L_42790a:                                  ; preds = %block_427916, %block_427904
  %loadMem_42790a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 33
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %2657 to i64*
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2659 = getelementptr inbounds %struct.GPR, %struct.GPR* %2658, i32 0, i32 1
  %2660 = getelementptr inbounds %struct.Reg, %struct.Reg* %2659, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %2660 to i64*
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 15
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %2663 to i64*
  %2664 = load i64, i64* %RBP.i242
  %2665 = sub i64 %2664, 28
  %2666 = load i64, i64* %PC.i240
  %2667 = add i64 %2666, 3
  store i64 %2667, i64* %PC.i240
  %2668 = inttoptr i64 %2665 to i32*
  %2669 = load i32, i32* %2668
  %2670 = zext i32 %2669 to i64
  store i64 %2670, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_42790a, %struct.Memory** %MEMORY
  %loadMem_42790d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 33
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %2673 to i64*
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 1
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %EAX.i238 = bitcast %union.anon* %2676 to i32*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 15
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %2679 to i64*
  %2680 = load i32, i32* %EAX.i238
  %2681 = zext i32 %2680 to i64
  %2682 = load i64, i64* %RBP.i239
  %2683 = sub i64 %2682, 44
  %2684 = load i64, i64* %PC.i237
  %2685 = add i64 %2684, 3
  store i64 %2685, i64* %PC.i237
  %2686 = inttoptr i64 %2683 to i32*
  %2687 = load i32, i32* %2686
  %2688 = sub i32 %2680, %2687
  %2689 = icmp ult i32 %2680, %2687
  %2690 = zext i1 %2689 to i8
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2690, i8* %2691, align 1
  %2692 = and i32 %2688, 255
  %2693 = call i32 @llvm.ctpop.i32(i32 %2692)
  %2694 = trunc i32 %2693 to i8
  %2695 = and i8 %2694, 1
  %2696 = xor i8 %2695, 1
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2696, i8* %2697, align 1
  %2698 = xor i32 %2687, %2680
  %2699 = xor i32 %2698, %2688
  %2700 = lshr i32 %2699, 4
  %2701 = trunc i32 %2700 to i8
  %2702 = and i8 %2701, 1
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2702, i8* %2703, align 1
  %2704 = icmp eq i32 %2688, 0
  %2705 = zext i1 %2704 to i8
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2705, i8* %2706, align 1
  %2707 = lshr i32 %2688, 31
  %2708 = trunc i32 %2707 to i8
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2708, i8* %2709, align 1
  %2710 = lshr i32 %2680, 31
  %2711 = lshr i32 %2687, 31
  %2712 = xor i32 %2711, %2710
  %2713 = xor i32 %2707, %2710
  %2714 = add i32 %2713, %2712
  %2715 = icmp eq i32 %2714, 2
  %2716 = zext i1 %2715 to i8
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2716, i8* %2717, align 1
  store %struct.Memory* %loadMem_42790d, %struct.Memory** %MEMORY
  %loadMem_427910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 33
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %2720 to i64*
  %2721 = load i64, i64* %PC.i236
  %2722 = add i64 %2721, 55
  %2723 = load i64, i64* %PC.i236
  %2724 = add i64 %2723, 6
  %2725 = load i64, i64* %PC.i236
  %2726 = add i64 %2725, 6
  store i64 %2726, i64* %PC.i236
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2728 = load i8, i8* %2727, align 1
  %2729 = icmp eq i8 %2728, 0
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2731 = load i8, i8* %2730, align 1
  %2732 = icmp ne i8 %2731, 0
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2734 = load i8, i8* %2733, align 1
  %2735 = icmp ne i8 %2734, 0
  %2736 = xor i1 %2732, %2735
  %2737 = xor i1 %2736, true
  %2738 = and i1 %2729, %2737
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %BRANCH_TAKEN, align 1
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2741 = select i1 %2738, i64 %2722, i64 %2724
  store i64 %2741, i64* %2740, align 8
  store %struct.Memory* %loadMem_427910, %struct.Memory** %MEMORY
  %loadBr_427910 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427910 = icmp eq i8 %loadBr_427910, 1
  br i1 %cmpBr_427910, label %block_.L_427947, label %block_427916

block_427916:                                     ; preds = %block_.L_42790a
  %loadMem_427916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 33
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 1
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 15
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %2750 to i64*
  %2751 = load i64, i64* %RBP.i235
  %2752 = sub i64 %2751, 88
  %2753 = load i64, i64* %PC.i233
  %2754 = add i64 %2753, 4
  store i64 %2754, i64* %PC.i233
  %2755 = inttoptr i64 %2752 to i64*
  %2756 = load i64, i64* %2755
  store i64 %2756, i64* %RAX.i234, align 8
  store %struct.Memory* %loadMem_427916, %struct.Memory** %MEMORY
  %loadMem_42791a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 33
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2759 to i64*
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 5
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %RCX.i231 = bitcast %union.anon* %2762 to i64*
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 15
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %2765 to i64*
  %2766 = load i64, i64* %RBP.i232
  %2767 = sub i64 %2766, 28
  %2768 = load i64, i64* %PC.i230
  %2769 = add i64 %2768, 3
  store i64 %2769, i64* %PC.i230
  %2770 = inttoptr i64 %2767 to i32*
  %2771 = load i32, i32* %2770
  %2772 = zext i32 %2771 to i64
  store i64 %2772, i64* %RCX.i231, align 8
  store %struct.Memory* %loadMem_42791a, %struct.Memory** %MEMORY
  %loadMem_42791d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 33
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 5
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RCX.i228 = bitcast %union.anon* %2778 to i64*
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 15
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %2781 to i64*
  %2782 = load i64, i64* %RCX.i228
  %2783 = load i64, i64* %RBP.i229
  %2784 = sub i64 %2783, 32
  %2785 = load i64, i64* %PC.i227
  %2786 = add i64 %2785, 3
  store i64 %2786, i64* %PC.i227
  %2787 = trunc i64 %2782 to i32
  %2788 = inttoptr i64 %2784 to i32*
  %2789 = load i32, i32* %2788
  %2790 = sub i32 %2787, %2789
  %2791 = zext i32 %2790 to i64
  store i64 %2791, i64* %RCX.i228, align 8
  %2792 = icmp ult i32 %2787, %2789
  %2793 = zext i1 %2792 to i8
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2793, i8* %2794, align 1
  %2795 = and i32 %2790, 255
  %2796 = call i32 @llvm.ctpop.i32(i32 %2795)
  %2797 = trunc i32 %2796 to i8
  %2798 = and i8 %2797, 1
  %2799 = xor i8 %2798, 1
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2799, i8* %2800, align 1
  %2801 = xor i32 %2789, %2787
  %2802 = xor i32 %2801, %2790
  %2803 = lshr i32 %2802, 4
  %2804 = trunc i32 %2803 to i8
  %2805 = and i8 %2804, 1
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2805, i8* %2806, align 1
  %2807 = icmp eq i32 %2790, 0
  %2808 = zext i1 %2807 to i8
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2808, i8* %2809, align 1
  %2810 = lshr i32 %2790, 31
  %2811 = trunc i32 %2810 to i8
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2811, i8* %2812, align 1
  %2813 = lshr i32 %2787, 31
  %2814 = lshr i32 %2789, 31
  %2815 = xor i32 %2814, %2813
  %2816 = xor i32 %2810, %2813
  %2817 = add i32 %2816, %2815
  %2818 = icmp eq i32 %2817, 2
  %2819 = zext i1 %2818 to i8
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2819, i8* %2820, align 1
  store %struct.Memory* %loadMem_42791d, %struct.Memory** %MEMORY
  %loadMem_427920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 33
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 5
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %ECX.i225 = bitcast %union.anon* %2826 to i32*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 7
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %RDX.i226 = bitcast %union.anon* %2829 to i64*
  %2830 = load i32, i32* %ECX.i225
  %2831 = zext i32 %2830 to i64
  %2832 = load i64, i64* %PC.i224
  %2833 = add i64 %2832, 3
  store i64 %2833, i64* %PC.i224
  %2834 = shl i64 %2831, 32
  %2835 = ashr exact i64 %2834, 32
  store i64 %2835, i64* %RDX.i226, align 8
  store %struct.Memory* %loadMem_427920, %struct.Memory** %MEMORY
  %loadMem_427923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 33
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2838 to i64*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 1
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %2841 to i64*
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 7
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %RDX.i223 = bitcast %union.anon* %2844 to i64*
  %2845 = load i64, i64* %RAX.i222
  %2846 = load i64, i64* %RDX.i223
  %2847 = mul i64 %2846, 4
  %2848 = add i64 %2847, %2845
  %2849 = load i64, i64* %PC.i221
  %2850 = add i64 %2849, 7
  store i64 %2850, i64* %PC.i221
  %2851 = inttoptr i64 %2848 to i32*
  store i32 1, i32* %2851
  store %struct.Memory* %loadMem_427923, %struct.Memory** %MEMORY
  %loadMem_42792a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 33
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %2854 to i64*
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 1
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %2857 to i64*
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 15
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %2860 to i64*
  %2861 = load i64, i64* %RBP.i220
  %2862 = sub i64 %2861, 88
  %2863 = load i64, i64* %PC.i218
  %2864 = add i64 %2863, 4
  store i64 %2864, i64* %PC.i218
  %2865 = inttoptr i64 %2862 to i64*
  %2866 = load i64, i64* %2865
  store i64 %2866, i64* %RAX.i219, align 8
  store %struct.Memory* %loadMem_42792a, %struct.Memory** %MEMORY
  %loadMem_42792e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 33
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %2869 to i64*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 7
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %RDX.i216 = bitcast %union.anon* %2872 to i64*
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 15
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %2875 to i64*
  %2876 = load i64, i64* %RBP.i217
  %2877 = sub i64 %2876, 28
  %2878 = load i64, i64* %PC.i215
  %2879 = add i64 %2878, 4
  store i64 %2879, i64* %PC.i215
  %2880 = inttoptr i64 %2877 to i32*
  %2881 = load i32, i32* %2880
  %2882 = sext i32 %2881 to i64
  store i64 %2882, i64* %RDX.i216, align 8
  store %struct.Memory* %loadMem_42792e, %struct.Memory** %MEMORY
  %loadMem_427932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 33
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2885 to i64*
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 1
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %2888 to i64*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 7
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %RDX.i214 = bitcast %union.anon* %2891 to i64*
  %2892 = load i64, i64* %RAX.i213
  %2893 = load i64, i64* %RDX.i214
  %2894 = mul i64 %2893, 4
  %2895 = add i64 %2894, %2892
  %2896 = load i64, i64* %PC.i212
  %2897 = add i64 %2896, 7
  store i64 %2897, i64* %PC.i212
  %2898 = inttoptr i64 %2895 to i32*
  store i32 1, i32* %2898
  store %struct.Memory* %loadMem_427932, %struct.Memory** %MEMORY
  %loadMem_427939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 33
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 1
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %2904 to i64*
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 15
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %2907 to i64*
  %2908 = load i64, i64* %RBP.i211
  %2909 = sub i64 %2908, 28
  %2910 = load i64, i64* %PC.i209
  %2911 = add i64 %2910, 3
  store i64 %2911, i64* %PC.i209
  %2912 = inttoptr i64 %2909 to i32*
  %2913 = load i32, i32* %2912
  %2914 = zext i32 %2913 to i64
  store i64 %2914, i64* %RAX.i210, align 8
  store %struct.Memory* %loadMem_427939, %struct.Memory** %MEMORY
  %loadMem_42793c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 33
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %2917 to i64*
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 1
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %RAX.i208 = bitcast %union.anon* %2920 to i64*
  %2921 = load i64, i64* %RAX.i208
  %2922 = load i64, i64* %PC.i207
  %2923 = add i64 %2922, 3
  store i64 %2923, i64* %PC.i207
  %2924 = trunc i64 %2921 to i32
  %2925 = add i32 1, %2924
  %2926 = zext i32 %2925 to i64
  store i64 %2926, i64* %RAX.i208, align 8
  %2927 = icmp ult i32 %2925, %2924
  %2928 = icmp ult i32 %2925, 1
  %2929 = or i1 %2927, %2928
  %2930 = zext i1 %2929 to i8
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2930, i8* %2931, align 1
  %2932 = and i32 %2925, 255
  %2933 = call i32 @llvm.ctpop.i32(i32 %2932)
  %2934 = trunc i32 %2933 to i8
  %2935 = and i8 %2934, 1
  %2936 = xor i8 %2935, 1
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2936, i8* %2937, align 1
  %2938 = xor i64 1, %2921
  %2939 = trunc i64 %2938 to i32
  %2940 = xor i32 %2939, %2925
  %2941 = lshr i32 %2940, 4
  %2942 = trunc i32 %2941 to i8
  %2943 = and i8 %2942, 1
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2943, i8* %2944, align 1
  %2945 = icmp eq i32 %2925, 0
  %2946 = zext i1 %2945 to i8
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2946, i8* %2947, align 1
  %2948 = lshr i32 %2925, 31
  %2949 = trunc i32 %2948 to i8
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2949, i8* %2950, align 1
  %2951 = lshr i32 %2924, 31
  %2952 = xor i32 %2948, %2951
  %2953 = add i32 %2952, %2948
  %2954 = icmp eq i32 %2953, 2
  %2955 = zext i1 %2954 to i8
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2955, i8* %2956, align 1
  store %struct.Memory* %loadMem_42793c, %struct.Memory** %MEMORY
  %loadMem_42793f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 33
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %2959 to i64*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 1
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %EAX.i205 = bitcast %union.anon* %2962 to i32*
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2964 = getelementptr inbounds %struct.GPR, %struct.GPR* %2963, i32 0, i32 15
  %2965 = getelementptr inbounds %struct.Reg, %struct.Reg* %2964, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %2965 to i64*
  %2966 = load i64, i64* %RBP.i206
  %2967 = sub i64 %2966, 28
  %2968 = load i32, i32* %EAX.i205
  %2969 = zext i32 %2968 to i64
  %2970 = load i64, i64* %PC.i204
  %2971 = add i64 %2970, 3
  store i64 %2971, i64* %PC.i204
  %2972 = inttoptr i64 %2967 to i32*
  store i32 %2968, i32* %2972
  store %struct.Memory* %loadMem_42793f, %struct.Memory** %MEMORY
  %loadMem_427942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 33
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2975 to i64*
  %2976 = load i64, i64* %PC.i203
  %2977 = add i64 %2976, -56
  %2978 = load i64, i64* %PC.i203
  %2979 = add i64 %2978, 5
  store i64 %2979, i64* %PC.i203
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2977, i64* %2980, align 8
  store %struct.Memory* %loadMem_427942, %struct.Memory** %MEMORY
  br label %block_.L_42790a

block_.L_427947:                                  ; preds = %block_.L_42790a
  %loadMem_427947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 33
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %2983 to i64*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 15
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %2986 to i64*
  %2987 = load i64, i64* %RBP.i202
  %2988 = sub i64 %2987, 48
  %2989 = load i64, i64* %PC.i201
  %2990 = add i64 %2989, 7
  store i64 %2990, i64* %PC.i201
  %2991 = inttoptr i64 %2988 to i32*
  store i32 0, i32* %2991
  store %struct.Memory* %loadMem_427947, %struct.Memory** %MEMORY
  %loadMem_42794e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 33
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %2994 to i64*
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 15
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %2997 to i64*
  %2998 = load i64, i64* %RBP.i200
  %2999 = sub i64 %2998, 36
  %3000 = load i64, i64* %PC.i199
  %3001 = add i64 %3000, 7
  store i64 %3001, i64* %PC.i199
  %3002 = inttoptr i64 %2999 to i32*
  store i32 0, i32* %3002
  store %struct.Memory* %loadMem_42794e, %struct.Memory** %MEMORY
  %loadMem_427955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 33
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %3005 to i64*
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 1
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %3008 to i64*
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 15
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %3011 to i64*
  %3012 = load i64, i64* %RBP.i198
  %3013 = sub i64 %3012, 24
  %3014 = load i64, i64* %PC.i196
  %3015 = add i64 %3014, 3
  store i64 %3015, i64* %PC.i196
  %3016 = inttoptr i64 %3013 to i32*
  %3017 = load i32, i32* %3016
  %3018 = zext i32 %3017 to i64
  store i64 %3018, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_427955, %struct.Memory** %MEMORY
  %loadMem_427958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 1
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %3024 to i64*
  %3025 = load i64, i64* %RAX.i195
  %3026 = load i64, i64* %PC.i194
  %3027 = add i64 %3026, 3
  store i64 %3027, i64* %PC.i194
  %3028 = trunc i64 %3025 to i32
  %3029 = add i32 1, %3028
  %3030 = zext i32 %3029 to i64
  store i64 %3030, i64* %RAX.i195, align 8
  %3031 = icmp ult i32 %3029, %3028
  %3032 = icmp ult i32 %3029, 1
  %3033 = or i1 %3031, %3032
  %3034 = zext i1 %3033 to i8
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3034, i8* %3035, align 1
  %3036 = and i32 %3029, 255
  %3037 = call i32 @llvm.ctpop.i32(i32 %3036)
  %3038 = trunc i32 %3037 to i8
  %3039 = and i8 %3038, 1
  %3040 = xor i8 %3039, 1
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3040, i8* %3041, align 1
  %3042 = xor i64 1, %3025
  %3043 = trunc i64 %3042 to i32
  %3044 = xor i32 %3043, %3029
  %3045 = lshr i32 %3044, 4
  %3046 = trunc i32 %3045 to i8
  %3047 = and i8 %3046, 1
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3047, i8* %3048, align 1
  %3049 = icmp eq i32 %3029, 0
  %3050 = zext i1 %3049 to i8
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3050, i8* %3051, align 1
  %3052 = lshr i32 %3029, 31
  %3053 = trunc i32 %3052 to i8
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3053, i8* %3054, align 1
  %3055 = lshr i32 %3028, 31
  %3056 = xor i32 %3052, %3055
  %3057 = add i32 %3056, %3052
  %3058 = icmp eq i32 %3057, 2
  %3059 = zext i1 %3058 to i8
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3059, i8* %3060, align 1
  store %struct.Memory* %loadMem_427958, %struct.Memory** %MEMORY
  %loadMem_42795b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 33
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3063 to i64*
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 1
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %EAX.i192 = bitcast %union.anon* %3066 to i32*
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 15
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %3069 to i64*
  %3070 = load i64, i64* %RBP.i193
  %3071 = sub i64 %3070, 44
  %3072 = load i32, i32* %EAX.i192
  %3073 = zext i32 %3072 to i64
  %3074 = load i64, i64* %PC.i191
  %3075 = add i64 %3074, 3
  store i64 %3075, i64* %PC.i191
  %3076 = inttoptr i64 %3071 to i32*
  store i32 %3072, i32* %3076
  store %struct.Memory* %loadMem_42795b, %struct.Memory** %MEMORY
  %loadMem_42795e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 33
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 1
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %EAX.i189 = bitcast %union.anon* %3082 to i32*
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 15
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %3085 to i64*
  %3086 = load i64, i64* %RBP.i190
  %3087 = sub i64 %3086, 40
  %3088 = load i32, i32* %EAX.i189
  %3089 = zext i32 %3088 to i64
  %3090 = load i64, i64* %PC.i188
  %3091 = add i64 %3090, 3
  store i64 %3091, i64* %PC.i188
  %3092 = inttoptr i64 %3087 to i32*
  store i32 %3088, i32* %3092
  store %struct.Memory* %loadMem_42795e, %struct.Memory** %MEMORY
  %loadMem_427961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 33
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3095 to i64*
  %3096 = load i64, i64* %PC.i187
  %3097 = add i64 %3096, 51
  %3098 = load i64, i64* %PC.i187
  %3099 = add i64 %3098, 5
  store i64 %3099, i64* %PC.i187
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3097, i64* %3100, align 8
  store %struct.Memory* %loadMem_427961, %struct.Memory** %MEMORY
  br label %block_.L_427994

block_.L_427966:                                  ; preds = %block_4278f5, %block_.L_4278e9
  %loadMem_427966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 33
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3103 to i64*
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 1
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 15
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %3109 to i64*
  %3110 = load i64, i64* %RBP.i186
  %3111 = sub i64 %3110, 48
  %3112 = load i64, i64* %PC.i184
  %3113 = add i64 %3112, 3
  store i64 %3113, i64* %PC.i184
  %3114 = inttoptr i64 %3111 to i32*
  %3115 = load i32, i32* %3114
  %3116 = zext i32 %3115 to i64
  store i64 %3116, i64* %RAX.i185, align 8
  store %struct.Memory* %loadMem_427966, %struct.Memory** %MEMORY
  %loadMem_427969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 33
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %3119 to i64*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 1
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 15
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %3125 to i64*
  %3126 = load i64, i64* %RAX.i182
  %3127 = load i64, i64* %RBP.i183
  %3128 = sub i64 %3127, 36
  %3129 = load i64, i64* %PC.i181
  %3130 = add i64 %3129, 3
  store i64 %3130, i64* %PC.i181
  %3131 = trunc i64 %3126 to i32
  %3132 = inttoptr i64 %3128 to i32*
  %3133 = load i32, i32* %3132
  %3134 = sub i32 %3131, %3133
  %3135 = zext i32 %3134 to i64
  store i64 %3135, i64* %RAX.i182, align 8
  %3136 = icmp ult i32 %3131, %3133
  %3137 = zext i1 %3136 to i8
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3137, i8* %3138, align 1
  %3139 = and i32 %3134, 255
  %3140 = call i32 @llvm.ctpop.i32(i32 %3139)
  %3141 = trunc i32 %3140 to i8
  %3142 = and i8 %3141, 1
  %3143 = xor i8 %3142, 1
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3143, i8* %3144, align 1
  %3145 = xor i32 %3133, %3131
  %3146 = xor i32 %3145, %3134
  %3147 = lshr i32 %3146, 4
  %3148 = trunc i32 %3147 to i8
  %3149 = and i8 %3148, 1
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3149, i8* %3150, align 1
  %3151 = icmp eq i32 %3134, 0
  %3152 = zext i1 %3151 to i8
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3152, i8* %3153, align 1
  %3154 = lshr i32 %3134, 31
  %3155 = trunc i32 %3154 to i8
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3155, i8* %3156, align 1
  %3157 = lshr i32 %3131, 31
  %3158 = lshr i32 %3133, 31
  %3159 = xor i32 %3158, %3157
  %3160 = xor i32 %3154, %3157
  %3161 = add i32 %3160, %3159
  %3162 = icmp eq i32 %3161, 2
  %3163 = zext i1 %3162 to i8
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3163, i8* %3164, align 1
  store %struct.Memory* %loadMem_427969, %struct.Memory** %MEMORY
  %loadMem_42796c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 33
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %3167 to i64*
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 1
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %EAX.i179 = bitcast %union.anon* %3170 to i32*
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 15
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %3173 to i64*
  %3174 = load i32, i32* %EAX.i179
  %3175 = zext i32 %3174 to i64
  %3176 = load i64, i64* %RBP.i180
  %3177 = sub i64 %3176, 56
  %3178 = load i64, i64* %PC.i178
  %3179 = add i64 %3178, 3
  store i64 %3179, i64* %PC.i178
  %3180 = inttoptr i64 %3177 to i32*
  %3181 = load i32, i32* %3180
  %3182 = sub i32 %3174, %3181
  %3183 = icmp ult i32 %3174, %3181
  %3184 = zext i1 %3183 to i8
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3184, i8* %3185, align 1
  %3186 = and i32 %3182, 255
  %3187 = call i32 @llvm.ctpop.i32(i32 %3186)
  %3188 = trunc i32 %3187 to i8
  %3189 = and i8 %3188, 1
  %3190 = xor i8 %3189, 1
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3190, i8* %3191, align 1
  %3192 = xor i32 %3181, %3174
  %3193 = xor i32 %3192, %3182
  %3194 = lshr i32 %3193, 4
  %3195 = trunc i32 %3194 to i8
  %3196 = and i8 %3195, 1
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3196, i8* %3197, align 1
  %3198 = icmp eq i32 %3182, 0
  %3199 = zext i1 %3198 to i8
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3199, i8* %3200, align 1
  %3201 = lshr i32 %3182, 31
  %3202 = trunc i32 %3201 to i8
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3202, i8* %3203, align 1
  %3204 = lshr i32 %3174, 31
  %3205 = lshr i32 %3181, 31
  %3206 = xor i32 %3205, %3204
  %3207 = xor i32 %3201, %3204
  %3208 = add i32 %3207, %3206
  %3209 = icmp eq i32 %3208, 2
  %3210 = zext i1 %3209 to i8
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3210, i8* %3211, align 1
  store %struct.Memory* %loadMem_42796c, %struct.Memory** %MEMORY
  %loadMem_42796f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 33
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %3214 to i64*
  %3215 = load i64, i64* %PC.i177
  %3216 = add i64 %3215, 32
  %3217 = load i64, i64* %PC.i177
  %3218 = add i64 %3217, 6
  %3219 = load i64, i64* %PC.i177
  %3220 = add i64 %3219, 6
  store i64 %3220, i64* %PC.i177
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3222 = load i8, i8* %3221, align 1
  %3223 = icmp ne i8 %3222, 0
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3225 = load i8, i8* %3224, align 1
  %3226 = icmp ne i8 %3225, 0
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3228 = load i8, i8* %3227, align 1
  %3229 = icmp ne i8 %3228, 0
  %3230 = xor i1 %3226, %3229
  %3231 = or i1 %3223, %3230
  %3232 = zext i1 %3231 to i8
  store i8 %3232, i8* %BRANCH_TAKEN, align 1
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3234 = select i1 %3231, i64 %3216, i64 %3218
  store i64 %3234, i64* %3233, align 8
  store %struct.Memory* %loadMem_42796f, %struct.Memory** %MEMORY
  %loadBr_42796f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42796f = icmp eq i8 %loadBr_42796f, 1
  br i1 %cmpBr_42796f, label %block_.L_42798f, label %block_427975

block_427975:                                     ; preds = %block_.L_427966
  %loadMem_427975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 33
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3237 to i64*
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 15
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %3240 to i64*
  %3241 = load i64, i64* %RBP.i176
  %3242 = sub i64 %3241, 48
  %3243 = load i64, i64* %PC.i175
  %3244 = add i64 %3243, 7
  store i64 %3244, i64* %PC.i175
  %3245 = inttoptr i64 %3242 to i32*
  store i32 0, i32* %3245
  store %struct.Memory* %loadMem_427975, %struct.Memory** %MEMORY
  %loadMem_42797c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 33
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %3248 to i64*
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 15
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %3251 to i64*
  %3252 = load i64, i64* %RBP.i174
  %3253 = sub i64 %3252, 36
  %3254 = load i64, i64* %PC.i173
  %3255 = add i64 %3254, 7
  store i64 %3255, i64* %PC.i173
  %3256 = inttoptr i64 %3253 to i32*
  store i32 0, i32* %3256
  store %struct.Memory* %loadMem_42797c, %struct.Memory** %MEMORY
  %loadMem_427983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 33
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %3259 to i64*
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 1
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %3262 to i64*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 15
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %3265 to i64*
  %3266 = load i64, i64* %RBP.i172
  %3267 = sub i64 %3266, 24
  %3268 = load i64, i64* %PC.i170
  %3269 = add i64 %3268, 3
  store i64 %3269, i64* %PC.i170
  %3270 = inttoptr i64 %3267 to i32*
  %3271 = load i32, i32* %3270
  %3272 = zext i32 %3271 to i64
  store i64 %3272, i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_427983, %struct.Memory** %MEMORY
  %loadMem_427986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 33
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %3275 to i64*
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 1
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %3278 to i64*
  %3279 = load i64, i64* %RAX.i169
  %3280 = load i64, i64* %PC.i168
  %3281 = add i64 %3280, 3
  store i64 %3281, i64* %PC.i168
  %3282 = trunc i64 %3279 to i32
  %3283 = add i32 1, %3282
  %3284 = zext i32 %3283 to i64
  store i64 %3284, i64* %RAX.i169, align 8
  %3285 = icmp ult i32 %3283, %3282
  %3286 = icmp ult i32 %3283, 1
  %3287 = or i1 %3285, %3286
  %3288 = zext i1 %3287 to i8
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3288, i8* %3289, align 1
  %3290 = and i32 %3283, 255
  %3291 = call i32 @llvm.ctpop.i32(i32 %3290)
  %3292 = trunc i32 %3291 to i8
  %3293 = and i8 %3292, 1
  %3294 = xor i8 %3293, 1
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3294, i8* %3295, align 1
  %3296 = xor i64 1, %3279
  %3297 = trunc i64 %3296 to i32
  %3298 = xor i32 %3297, %3283
  %3299 = lshr i32 %3298, 4
  %3300 = trunc i32 %3299 to i8
  %3301 = and i8 %3300, 1
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3301, i8* %3302, align 1
  %3303 = icmp eq i32 %3283, 0
  %3304 = zext i1 %3303 to i8
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3304, i8* %3305, align 1
  %3306 = lshr i32 %3283, 31
  %3307 = trunc i32 %3306 to i8
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3307, i8* %3308, align 1
  %3309 = lshr i32 %3282, 31
  %3310 = xor i32 %3306, %3309
  %3311 = add i32 %3310, %3306
  %3312 = icmp eq i32 %3311, 2
  %3313 = zext i1 %3312 to i8
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3313, i8* %3314, align 1
  store %struct.Memory* %loadMem_427986, %struct.Memory** %MEMORY
  %loadMem_427989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 33
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 1
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %EAX.i166 = bitcast %union.anon* %3320 to i32*
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 15
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %3323 to i64*
  %3324 = load i64, i64* %RBP.i167
  %3325 = sub i64 %3324, 44
  %3326 = load i32, i32* %EAX.i166
  %3327 = zext i32 %3326 to i64
  %3328 = load i64, i64* %PC.i165
  %3329 = add i64 %3328, 3
  store i64 %3329, i64* %PC.i165
  %3330 = inttoptr i64 %3325 to i32*
  store i32 %3326, i32* %3330
  store %struct.Memory* %loadMem_427989, %struct.Memory** %MEMORY
  %loadMem_42798c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 33
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %3333 to i64*
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 1
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %EAX.i163 = bitcast %union.anon* %3336 to i32*
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 15
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %3339 to i64*
  %3340 = load i64, i64* %RBP.i164
  %3341 = sub i64 %3340, 40
  %3342 = load i32, i32* %EAX.i163
  %3343 = zext i32 %3342 to i64
  %3344 = load i64, i64* %PC.i162
  %3345 = add i64 %3344, 3
  store i64 %3345, i64* %PC.i162
  %3346 = inttoptr i64 %3341 to i32*
  store i32 %3342, i32* %3346
  store %struct.Memory* %loadMem_42798c, %struct.Memory** %MEMORY
  br label %block_.L_42798f

block_.L_42798f:                                  ; preds = %block_427975, %block_.L_427966
  %loadMem_42798f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 33
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %3349 to i64*
  %3350 = load i64, i64* %PC.i161
  %3351 = add i64 %3350, 5
  %3352 = load i64, i64* %PC.i161
  %3353 = add i64 %3352, 5
  store i64 %3353, i64* %PC.i161
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3351, i64* %3354, align 8
  store %struct.Memory* %loadMem_42798f, %struct.Memory** %MEMORY
  br label %block_.L_427994

block_.L_427994:                                  ; preds = %block_.L_42798f, %block_.L_427947
  %loadMem_427994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 33
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %3357 to i64*
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3359 = getelementptr inbounds %struct.GPR, %struct.GPR* %3358, i32 0, i32 15
  %3360 = getelementptr inbounds %struct.Reg, %struct.Reg* %3359, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %3360 to i64*
  %3361 = load i64, i64* %RBP.i160
  %3362 = sub i64 %3361, 36
  %3363 = load i64, i64* %PC.i159
  %3364 = add i64 %3363, 4
  store i64 %3364, i64* %PC.i159
  %3365 = inttoptr i64 %3362 to i32*
  %3366 = load i32, i32* %3365
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3367, align 1
  %3368 = and i32 %3366, 255
  %3369 = call i32 @llvm.ctpop.i32(i32 %3368)
  %3370 = trunc i32 %3369 to i8
  %3371 = and i8 %3370, 1
  %3372 = xor i8 %3371, 1
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3372, i8* %3373, align 1
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3374, align 1
  %3375 = icmp eq i32 %3366, 0
  %3376 = zext i1 %3375 to i8
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3376, i8* %3377, align 1
  %3378 = lshr i32 %3366, 31
  %3379 = trunc i32 %3378 to i8
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3379, i8* %3380, align 1
  %3381 = lshr i32 %3366, 31
  %3382 = xor i32 %3378, %3381
  %3383 = add i32 %3382, %3381
  %3384 = icmp eq i32 %3383, 2
  %3385 = zext i1 %3384 to i8
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3385, i8* %3386, align 1
  store %struct.Memory* %loadMem_427994, %struct.Memory** %MEMORY
  %loadMem_427998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 33
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %3389 to i64*
  %3390 = load i64, i64* %PC.i158
  %3391 = add i64 %3390, 32
  %3392 = load i64, i64* %PC.i158
  %3393 = add i64 %3392, 6
  %3394 = load i64, i64* %PC.i158
  %3395 = add i64 %3394, 6
  store i64 %3395, i64* %PC.i158
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3397 = load i8, i8* %3396, align 1
  %3398 = icmp ne i8 %3397, 0
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3400 = load i8, i8* %3399, align 1
  %3401 = icmp ne i8 %3400, 0
  %3402 = xor i1 %3398, %3401
  %3403 = xor i1 %3402, true
  %3404 = zext i1 %3403 to i8
  store i8 %3404, i8* %BRANCH_TAKEN, align 1
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3406 = select i1 %3402, i64 %3393, i64 %3391
  store i64 %3406, i64* %3405, align 8
  store %struct.Memory* %loadMem_427998, %struct.Memory** %MEMORY
  %loadBr_427998 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427998 = icmp eq i8 %loadBr_427998, 1
  br i1 %cmpBr_427998, label %block_.L_4279b8, label %block_42799e

block_42799e:                                     ; preds = %block_.L_427994
  %loadMem_42799e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3408 = getelementptr inbounds %struct.GPR, %struct.GPR* %3407, i32 0, i32 33
  %3409 = getelementptr inbounds %struct.Reg, %struct.Reg* %3408, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %3409 to i64*
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 1
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %3412 to i64*
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 15
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %3415 to i64*
  %3416 = load i64, i64* %RBP.i157
  %3417 = sub i64 %3416, 24
  %3418 = load i64, i64* %PC.i155
  %3419 = add i64 %3418, 3
  store i64 %3419, i64* %PC.i155
  %3420 = inttoptr i64 %3417 to i32*
  %3421 = load i32, i32* %3420
  %3422 = zext i32 %3421 to i64
  store i64 %3422, i64* %RAX.i156, align 8
  store %struct.Memory* %loadMem_42799e, %struct.Memory** %MEMORY
  %loadMem_4279a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 33
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %3425 to i64*
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 1
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %3428 to i64*
  %3429 = load i64, i64* %RAX.i154
  %3430 = load i64, i64* %PC.i153
  %3431 = add i64 %3430, 3
  store i64 %3431, i64* %PC.i153
  %3432 = trunc i64 %3429 to i32
  %3433 = add i32 1, %3432
  %3434 = zext i32 %3433 to i64
  store i64 %3434, i64* %RAX.i154, align 8
  %3435 = icmp ult i32 %3433, %3432
  %3436 = icmp ult i32 %3433, 1
  %3437 = or i1 %3435, %3436
  %3438 = zext i1 %3437 to i8
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3438, i8* %3439, align 1
  %3440 = and i32 %3433, 255
  %3441 = call i32 @llvm.ctpop.i32(i32 %3440)
  %3442 = trunc i32 %3441 to i8
  %3443 = and i8 %3442, 1
  %3444 = xor i8 %3443, 1
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3444, i8* %3445, align 1
  %3446 = xor i64 1, %3429
  %3447 = trunc i64 %3446 to i32
  %3448 = xor i32 %3447, %3433
  %3449 = lshr i32 %3448, 4
  %3450 = trunc i32 %3449 to i8
  %3451 = and i8 %3450, 1
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3451, i8* %3452, align 1
  %3453 = icmp eq i32 %3433, 0
  %3454 = zext i1 %3453 to i8
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3454, i8* %3455, align 1
  %3456 = lshr i32 %3433, 31
  %3457 = trunc i32 %3456 to i8
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3457, i8* %3458, align 1
  %3459 = lshr i32 %3432, 31
  %3460 = xor i32 %3456, %3459
  %3461 = add i32 %3460, %3456
  %3462 = icmp eq i32 %3461, 2
  %3463 = zext i1 %3462 to i8
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3463, i8* %3464, align 1
  store %struct.Memory* %loadMem_4279a1, %struct.Memory** %MEMORY
  %loadMem_4279a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 33
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %3467 to i64*
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 1
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %EAX.i151 = bitcast %union.anon* %3470 to i32*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 15
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %3473 to i64*
  %3474 = load i64, i64* %RBP.i152
  %3475 = sub i64 %3474, 44
  %3476 = load i32, i32* %EAX.i151
  %3477 = zext i32 %3476 to i64
  %3478 = load i64, i64* %PC.i150
  %3479 = add i64 %3478, 3
  store i64 %3479, i64* %PC.i150
  %3480 = inttoptr i64 %3475 to i32*
  store i32 %3476, i32* %3480
  store %struct.Memory* %loadMem_4279a4, %struct.Memory** %MEMORY
  %loadMem_4279a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 33
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %3483 to i64*
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 1
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %EAX.i148 = bitcast %union.anon* %3486 to i32*
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 15
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %3489 to i64*
  %3490 = load i64, i64* %RBP.i149
  %3491 = sub i64 %3490, 40
  %3492 = load i32, i32* %EAX.i148
  %3493 = zext i32 %3492 to i64
  %3494 = load i64, i64* %PC.i147
  %3495 = add i64 %3494, 3
  store i64 %3495, i64* %PC.i147
  %3496 = inttoptr i64 %3491 to i32*
  store i32 %3492, i32* %3496
  store %struct.Memory* %loadMem_4279a7, %struct.Memory** %MEMORY
  %loadMem_4279aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 33
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3499 to i64*
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3501 = getelementptr inbounds %struct.GPR, %struct.GPR* %3500, i32 0, i32 15
  %3502 = getelementptr inbounds %struct.Reg, %struct.Reg* %3501, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %3502 to i64*
  %3503 = load i64, i64* %RBP.i146
  %3504 = sub i64 %3503, 48
  %3505 = load i64, i64* %PC.i145
  %3506 = add i64 %3505, 7
  store i64 %3506, i64* %PC.i145
  %3507 = inttoptr i64 %3504 to i32*
  store i32 0, i32* %3507
  store %struct.Memory* %loadMem_4279aa, %struct.Memory** %MEMORY
  %loadMem_4279b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3509 = getelementptr inbounds %struct.GPR, %struct.GPR* %3508, i32 0, i32 33
  %3510 = getelementptr inbounds %struct.Reg, %struct.Reg* %3509, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %3510 to i64*
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 15
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %3513 to i64*
  %3514 = load i64, i64* %RBP.i144
  %3515 = sub i64 %3514, 36
  %3516 = load i64, i64* %PC.i143
  %3517 = add i64 %3516, 7
  store i64 %3517, i64* %PC.i143
  %3518 = inttoptr i64 %3515 to i32*
  store i32 0, i32* %3518
  store %struct.Memory* %loadMem_4279b1, %struct.Memory** %MEMORY
  br label %block_.L_4279b8

block_.L_4279b8:                                  ; preds = %block_42799e, %block_.L_427994
  %loadMem_4279b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 33
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %3521 to i64*
  %3522 = load i64, i64* %PC.i142
  %3523 = add i64 %3522, 5
  %3524 = load i64, i64* %PC.i142
  %3525 = add i64 %3524, 5
  store i64 %3525, i64* %PC.i142
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3523, i64* %3526, align 8
  store %struct.Memory* %loadMem_4279b8, %struct.Memory** %MEMORY
  br label %block_.L_4279bd

block_.L_4279bd:                                  ; preds = %block_.L_4279b8
  %loadMem_4279bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 33
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %3529 to i64*
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 1
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %3532 to i64*
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3534 = getelementptr inbounds %struct.GPR, %struct.GPR* %3533, i32 0, i32 15
  %3535 = getelementptr inbounds %struct.Reg, %struct.Reg* %3534, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %3535 to i64*
  %3536 = load i64, i64* %RBP.i141
  %3537 = sub i64 %3536, 24
  %3538 = load i64, i64* %PC.i139
  %3539 = add i64 %3538, 3
  store i64 %3539, i64* %PC.i139
  %3540 = inttoptr i64 %3537 to i32*
  %3541 = load i32, i32* %3540
  %3542 = zext i32 %3541 to i64
  store i64 %3542, i64* %RAX.i140, align 8
  store %struct.Memory* %loadMem_4279bd, %struct.Memory** %MEMORY
  %loadMem_4279c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 33
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %3545 to i64*
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 1
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %3548 to i64*
  %3549 = load i64, i64* %RAX.i138
  %3550 = load i64, i64* %PC.i137
  %3551 = add i64 %3550, 3
  store i64 %3551, i64* %PC.i137
  %3552 = trunc i64 %3549 to i32
  %3553 = add i32 1, %3552
  %3554 = zext i32 %3553 to i64
  store i64 %3554, i64* %RAX.i138, align 8
  %3555 = icmp ult i32 %3553, %3552
  %3556 = icmp ult i32 %3553, 1
  %3557 = or i1 %3555, %3556
  %3558 = zext i1 %3557 to i8
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3558, i8* %3559, align 1
  %3560 = and i32 %3553, 255
  %3561 = call i32 @llvm.ctpop.i32(i32 %3560)
  %3562 = trunc i32 %3561 to i8
  %3563 = and i8 %3562, 1
  %3564 = xor i8 %3563, 1
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3564, i8* %3565, align 1
  %3566 = xor i64 1, %3549
  %3567 = trunc i64 %3566 to i32
  %3568 = xor i32 %3567, %3553
  %3569 = lshr i32 %3568, 4
  %3570 = trunc i32 %3569 to i8
  %3571 = and i8 %3570, 1
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3571, i8* %3572, align 1
  %3573 = icmp eq i32 %3553, 0
  %3574 = zext i1 %3573 to i8
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3574, i8* %3575, align 1
  %3576 = lshr i32 %3553, 31
  %3577 = trunc i32 %3576 to i8
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3577, i8* %3578, align 1
  %3579 = lshr i32 %3552, 31
  %3580 = xor i32 %3576, %3579
  %3581 = add i32 %3580, %3576
  %3582 = icmp eq i32 %3581, 2
  %3583 = zext i1 %3582 to i8
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3583, i8* %3584, align 1
  store %struct.Memory* %loadMem_4279c0, %struct.Memory** %MEMORY
  %loadMem_4279c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 33
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %3587 to i64*
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3589 = getelementptr inbounds %struct.GPR, %struct.GPR* %3588, i32 0, i32 1
  %3590 = getelementptr inbounds %struct.Reg, %struct.Reg* %3589, i32 0, i32 0
  %EAX.i135 = bitcast %union.anon* %3590 to i32*
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 15
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %3593 to i64*
  %3594 = load i64, i64* %RBP.i136
  %3595 = sub i64 %3594, 24
  %3596 = load i32, i32* %EAX.i135
  %3597 = zext i32 %3596 to i64
  %3598 = load i64, i64* %PC.i134
  %3599 = add i64 %3598, 3
  store i64 %3599, i64* %PC.i134
  %3600 = inttoptr i64 %3595 to i32*
  store i32 %3596, i32* %3600
  store %struct.Memory* %loadMem_4279c3, %struct.Memory** %MEMORY
  %loadMem_4279c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 33
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %3603 to i64*
  %3604 = load i64, i64* %PC.i133
  %3605 = add i64 %3604, -318
  %3606 = load i64, i64* %PC.i133
  %3607 = add i64 %3606, 5
  store i64 %3607, i64* %PC.i133
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3605, i64* %3608, align 8
  store %struct.Memory* %loadMem_4279c6, %struct.Memory** %MEMORY
  br label %block_.L_427888

block_.L_4279cb:                                  ; preds = %block_.L_427888
  %loadMem_4279cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 33
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %3611 to i64*
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 1
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %3614 to i64*
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 15
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %3617 to i64*
  %3618 = load i64, i64* %RBP.i132
  %3619 = sub i64 %3618, 48
  %3620 = load i64, i64* %PC.i130
  %3621 = add i64 %3620, 3
  store i64 %3621, i64* %PC.i130
  %3622 = inttoptr i64 %3619 to i32*
  %3623 = load i32, i32* %3622
  %3624 = zext i32 %3623 to i64
  store i64 %3624, i64* %RAX.i131, align 8
  store %struct.Memory* %loadMem_4279cb, %struct.Memory** %MEMORY
  %loadMem_4279ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 33
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %3627 to i64*
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 1
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %EAX.i128 = bitcast %union.anon* %3630 to i32*
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 15
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %3633 to i64*
  %3634 = load i32, i32* %EAX.i128
  %3635 = zext i32 %3634 to i64
  %3636 = load i64, i64* %RBP.i129
  %3637 = sub i64 %3636, 52
  %3638 = load i64, i64* %PC.i127
  %3639 = add i64 %3638, 3
  store i64 %3639, i64* %PC.i127
  %3640 = inttoptr i64 %3637 to i32*
  %3641 = load i32, i32* %3640
  %3642 = sub i32 %3634, %3641
  %3643 = icmp ult i32 %3634, %3641
  %3644 = zext i1 %3643 to i8
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3644, i8* %3645, align 1
  %3646 = and i32 %3642, 255
  %3647 = call i32 @llvm.ctpop.i32(i32 %3646)
  %3648 = trunc i32 %3647 to i8
  %3649 = and i8 %3648, 1
  %3650 = xor i8 %3649, 1
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3650, i8* %3651, align 1
  %3652 = xor i32 %3641, %3634
  %3653 = xor i32 %3652, %3642
  %3654 = lshr i32 %3653, 4
  %3655 = trunc i32 %3654 to i8
  %3656 = and i8 %3655, 1
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3656, i8* %3657, align 1
  %3658 = icmp eq i32 %3642, 0
  %3659 = zext i1 %3658 to i8
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3659, i8* %3660, align 1
  %3661 = lshr i32 %3642, 31
  %3662 = trunc i32 %3661 to i8
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3662, i8* %3663, align 1
  %3664 = lshr i32 %3634, 31
  %3665 = lshr i32 %3641, 31
  %3666 = xor i32 %3665, %3664
  %3667 = xor i32 %3661, %3664
  %3668 = add i32 %3667, %3666
  %3669 = icmp eq i32 %3668, 2
  %3670 = zext i1 %3669 to i8
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3670, i8* %3671, align 1
  store %struct.Memory* %loadMem_4279ce, %struct.Memory** %MEMORY
  %loadMem_4279d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3673 = getelementptr inbounds %struct.GPR, %struct.GPR* %3672, i32 0, i32 33
  %3674 = getelementptr inbounds %struct.Reg, %struct.Reg* %3673, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %3674 to i64*
  %3675 = load i64, i64* %PC.i126
  %3676 = add i64 %3675, 78
  %3677 = load i64, i64* %PC.i126
  %3678 = add i64 %3677, 6
  %3679 = load i64, i64* %PC.i126
  %3680 = add i64 %3679, 6
  store i64 %3680, i64* %PC.i126
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3682 = load i8, i8* %3681, align 1
  %3683 = icmp ne i8 %3682, 0
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3685 = load i8, i8* %3684, align 1
  %3686 = icmp ne i8 %3685, 0
  %3687 = xor i1 %3683, %3686
  %3688 = zext i1 %3687 to i8
  store i8 %3688, i8* %BRANCH_TAKEN, align 1
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3690 = select i1 %3687, i64 %3676, i64 %3678
  store i64 %3690, i64* %3689, align 8
  store %struct.Memory* %loadMem_4279d1, %struct.Memory** %MEMORY
  %loadBr_4279d1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4279d1 = icmp eq i8 %loadBr_4279d1, 1
  br i1 %cmpBr_4279d1, label %block_.L_427a1f, label %block_4279d7

block_4279d7:                                     ; preds = %block_.L_4279cb
  %loadMem_4279d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 33
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %3693 to i64*
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 1
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %3696 to i64*
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 15
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %3699 to i64*
  %3700 = load i64, i64* %RBP.i125
  %3701 = sub i64 %3700, 40
  %3702 = load i64, i64* %PC.i123
  %3703 = add i64 %3702, 3
  store i64 %3703, i64* %PC.i123
  %3704 = inttoptr i64 %3701 to i32*
  %3705 = load i32, i32* %3704
  %3706 = zext i32 %3705 to i64
  store i64 %3706, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_4279d7, %struct.Memory** %MEMORY
  %loadMem_4279da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 33
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %3709 to i64*
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 1
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %EAX.i121 = bitcast %union.anon* %3712 to i32*
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 15
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %3715 to i64*
  %3716 = load i64, i64* %RBP.i122
  %3717 = sub i64 %3716, 28
  %3718 = load i32, i32* %EAX.i121
  %3719 = zext i32 %3718 to i64
  %3720 = load i64, i64* %PC.i120
  %3721 = add i64 %3720, 3
  store i64 %3721, i64* %PC.i120
  %3722 = inttoptr i64 %3717 to i32*
  store i32 %3718, i32* %3722
  store %struct.Memory* %loadMem_4279da, %struct.Memory** %MEMORY
  br label %block_.L_4279dd

block_.L_4279dd:                                  ; preds = %block_4279e9, %block_4279d7
  %loadMem_4279dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3724 = getelementptr inbounds %struct.GPR, %struct.GPR* %3723, i32 0, i32 33
  %3725 = getelementptr inbounds %struct.Reg, %struct.Reg* %3724, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %3725 to i64*
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 1
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %3728 to i64*
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 15
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %3731 to i64*
  %3732 = load i64, i64* %RBP.i119
  %3733 = sub i64 %3732, 28
  %3734 = load i64, i64* %PC.i117
  %3735 = add i64 %3734, 3
  store i64 %3735, i64* %PC.i117
  %3736 = inttoptr i64 %3733 to i32*
  %3737 = load i32, i32* %3736
  %3738 = zext i32 %3737 to i64
  store i64 %3738, i64* %RAX.i118, align 8
  store %struct.Memory* %loadMem_4279dd, %struct.Memory** %MEMORY
  %loadMem_4279e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 33
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3741 to i64*
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 1
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %EAX.i115 = bitcast %union.anon* %3744 to i32*
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 15
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %3747 to i64*
  %3748 = load i32, i32* %EAX.i115
  %3749 = zext i32 %3748 to i64
  %3750 = load i64, i64* %RBP.i116
  %3751 = sub i64 %3750, 44
  %3752 = load i64, i64* %PC.i114
  %3753 = add i64 %3752, 3
  store i64 %3753, i64* %PC.i114
  %3754 = inttoptr i64 %3751 to i32*
  %3755 = load i32, i32* %3754
  %3756 = sub i32 %3748, %3755
  %3757 = icmp ult i32 %3748, %3755
  %3758 = zext i1 %3757 to i8
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3758, i8* %3759, align 1
  %3760 = and i32 %3756, 255
  %3761 = call i32 @llvm.ctpop.i32(i32 %3760)
  %3762 = trunc i32 %3761 to i8
  %3763 = and i8 %3762, 1
  %3764 = xor i8 %3763, 1
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3764, i8* %3765, align 1
  %3766 = xor i32 %3755, %3748
  %3767 = xor i32 %3766, %3756
  %3768 = lshr i32 %3767, 4
  %3769 = trunc i32 %3768 to i8
  %3770 = and i8 %3769, 1
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3770, i8* %3771, align 1
  %3772 = icmp eq i32 %3756, 0
  %3773 = zext i1 %3772 to i8
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3773, i8* %3774, align 1
  %3775 = lshr i32 %3756, 31
  %3776 = trunc i32 %3775 to i8
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3776, i8* %3777, align 1
  %3778 = lshr i32 %3748, 31
  %3779 = lshr i32 %3755, 31
  %3780 = xor i32 %3779, %3778
  %3781 = xor i32 %3775, %3778
  %3782 = add i32 %3781, %3780
  %3783 = icmp eq i32 %3782, 2
  %3784 = zext i1 %3783 to i8
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3784, i8* %3785, align 1
  store %struct.Memory* %loadMem_4279e0, %struct.Memory** %MEMORY
  %loadMem_4279e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 33
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %3788 to i64*
  %3789 = load i64, i64* %PC.i113
  %3790 = add i64 %3789, 55
  %3791 = load i64, i64* %PC.i113
  %3792 = add i64 %3791, 6
  %3793 = load i64, i64* %PC.i113
  %3794 = add i64 %3793, 6
  store i64 %3794, i64* %PC.i113
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3796 = load i8, i8* %3795, align 1
  %3797 = icmp eq i8 %3796, 0
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3799 = load i8, i8* %3798, align 1
  %3800 = icmp ne i8 %3799, 0
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3802 = load i8, i8* %3801, align 1
  %3803 = icmp ne i8 %3802, 0
  %3804 = xor i1 %3800, %3803
  %3805 = xor i1 %3804, true
  %3806 = and i1 %3797, %3805
  %3807 = zext i1 %3806 to i8
  store i8 %3807, i8* %BRANCH_TAKEN, align 1
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3809 = select i1 %3806, i64 %3790, i64 %3792
  store i64 %3809, i64* %3808, align 8
  store %struct.Memory* %loadMem_4279e3, %struct.Memory** %MEMORY
  %loadBr_4279e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4279e3 = icmp eq i8 %loadBr_4279e3, 1
  br i1 %cmpBr_4279e3, label %block_.L_427a1a, label %block_4279e9

block_4279e9:                                     ; preds = %block_.L_4279dd
  %loadMem_4279e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3811 = getelementptr inbounds %struct.GPR, %struct.GPR* %3810, i32 0, i32 33
  %3812 = getelementptr inbounds %struct.Reg, %struct.Reg* %3811, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %3812 to i64*
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3814 = getelementptr inbounds %struct.GPR, %struct.GPR* %3813, i32 0, i32 1
  %3815 = getelementptr inbounds %struct.Reg, %struct.Reg* %3814, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %3815 to i64*
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 15
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %3818 to i64*
  %3819 = load i64, i64* %RBP.i112
  %3820 = sub i64 %3819, 88
  %3821 = load i64, i64* %PC.i110
  %3822 = add i64 %3821, 4
  store i64 %3822, i64* %PC.i110
  %3823 = inttoptr i64 %3820 to i64*
  %3824 = load i64, i64* %3823
  store i64 %3824, i64* %RAX.i111, align 8
  store %struct.Memory* %loadMem_4279e9, %struct.Memory** %MEMORY
  %loadMem_4279ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3826 = getelementptr inbounds %struct.GPR, %struct.GPR* %3825, i32 0, i32 33
  %3827 = getelementptr inbounds %struct.Reg, %struct.Reg* %3826, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %3827 to i64*
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3829 = getelementptr inbounds %struct.GPR, %struct.GPR* %3828, i32 0, i32 5
  %3830 = getelementptr inbounds %struct.Reg, %struct.Reg* %3829, i32 0, i32 0
  %RCX.i108 = bitcast %union.anon* %3830 to i64*
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3832 = getelementptr inbounds %struct.GPR, %struct.GPR* %3831, i32 0, i32 15
  %3833 = getelementptr inbounds %struct.Reg, %struct.Reg* %3832, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %3833 to i64*
  %3834 = load i64, i64* %RBP.i109
  %3835 = sub i64 %3834, 28
  %3836 = load i64, i64* %PC.i107
  %3837 = add i64 %3836, 3
  store i64 %3837, i64* %PC.i107
  %3838 = inttoptr i64 %3835 to i32*
  %3839 = load i32, i32* %3838
  %3840 = zext i32 %3839 to i64
  store i64 %3840, i64* %RCX.i108, align 8
  store %struct.Memory* %loadMem_4279ed, %struct.Memory** %MEMORY
  %loadMem_4279f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 33
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %3843 to i64*
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 5
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %3846 to i64*
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 15
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %3849 to i64*
  %3850 = load i64, i64* %RCX.i105
  %3851 = load i64, i64* %RBP.i106
  %3852 = sub i64 %3851, 32
  %3853 = load i64, i64* %PC.i104
  %3854 = add i64 %3853, 3
  store i64 %3854, i64* %PC.i104
  %3855 = trunc i64 %3850 to i32
  %3856 = inttoptr i64 %3852 to i32*
  %3857 = load i32, i32* %3856
  %3858 = sub i32 %3855, %3857
  %3859 = zext i32 %3858 to i64
  store i64 %3859, i64* %RCX.i105, align 8
  %3860 = icmp ult i32 %3855, %3857
  %3861 = zext i1 %3860 to i8
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3861, i8* %3862, align 1
  %3863 = and i32 %3858, 255
  %3864 = call i32 @llvm.ctpop.i32(i32 %3863)
  %3865 = trunc i32 %3864 to i8
  %3866 = and i8 %3865, 1
  %3867 = xor i8 %3866, 1
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3867, i8* %3868, align 1
  %3869 = xor i32 %3857, %3855
  %3870 = xor i32 %3869, %3858
  %3871 = lshr i32 %3870, 4
  %3872 = trunc i32 %3871 to i8
  %3873 = and i8 %3872, 1
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3873, i8* %3874, align 1
  %3875 = icmp eq i32 %3858, 0
  %3876 = zext i1 %3875 to i8
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3876, i8* %3877, align 1
  %3878 = lshr i32 %3858, 31
  %3879 = trunc i32 %3878 to i8
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3879, i8* %3880, align 1
  %3881 = lshr i32 %3855, 31
  %3882 = lshr i32 %3857, 31
  %3883 = xor i32 %3882, %3881
  %3884 = xor i32 %3878, %3881
  %3885 = add i32 %3884, %3883
  %3886 = icmp eq i32 %3885, 2
  %3887 = zext i1 %3886 to i8
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3887, i8* %3888, align 1
  store %struct.Memory* %loadMem_4279f0, %struct.Memory** %MEMORY
  %loadMem_4279f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 33
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %3891 to i64*
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 5
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %ECX.i102 = bitcast %union.anon* %3894 to i32*
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 7
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %RDX.i103 = bitcast %union.anon* %3897 to i64*
  %3898 = load i32, i32* %ECX.i102
  %3899 = zext i32 %3898 to i64
  %3900 = load i64, i64* %PC.i101
  %3901 = add i64 %3900, 3
  store i64 %3901, i64* %PC.i101
  %3902 = shl i64 %3899, 32
  %3903 = ashr exact i64 %3902, 32
  store i64 %3903, i64* %RDX.i103, align 8
  store %struct.Memory* %loadMem_4279f3, %struct.Memory** %MEMORY
  %loadMem_4279f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 33
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3906 to i64*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 1
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %3909 to i64*
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 7
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %RDX.i100 = bitcast %union.anon* %3912 to i64*
  %3913 = load i64, i64* %RAX.i99
  %3914 = load i64, i64* %RDX.i100
  %3915 = mul i64 %3914, 4
  %3916 = add i64 %3915, %3913
  %3917 = load i64, i64* %PC.i98
  %3918 = add i64 %3917, 7
  store i64 %3918, i64* %PC.i98
  %3919 = inttoptr i64 %3916 to i32*
  store i32 1, i32* %3919
  store %struct.Memory* %loadMem_4279f6, %struct.Memory** %MEMORY
  %loadMem_4279fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 33
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %3922 to i64*
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 1
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %3925 to i64*
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 15
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %3928 to i64*
  %3929 = load i64, i64* %RBP.i97
  %3930 = sub i64 %3929, 88
  %3931 = load i64, i64* %PC.i95
  %3932 = add i64 %3931, 4
  store i64 %3932, i64* %PC.i95
  %3933 = inttoptr i64 %3930 to i64*
  %3934 = load i64, i64* %3933
  store i64 %3934, i64* %RAX.i96, align 8
  store %struct.Memory* %loadMem_4279fd, %struct.Memory** %MEMORY
  %loadMem_427a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 33
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %3937 to i64*
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 7
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %RDX.i93 = bitcast %union.anon* %3940 to i64*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 15
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %3943 to i64*
  %3944 = load i64, i64* %RBP.i94
  %3945 = sub i64 %3944, 28
  %3946 = load i64, i64* %PC.i92
  %3947 = add i64 %3946, 4
  store i64 %3947, i64* %PC.i92
  %3948 = inttoptr i64 %3945 to i32*
  %3949 = load i32, i32* %3948
  %3950 = sext i32 %3949 to i64
  store i64 %3950, i64* %RDX.i93, align 8
  store %struct.Memory* %loadMem_427a01, %struct.Memory** %MEMORY
  %loadMem_427a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 33
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %3953 to i64*
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 1
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %3956 to i64*
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 7
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %RDX.i91 = bitcast %union.anon* %3959 to i64*
  %3960 = load i64, i64* %RAX.i90
  %3961 = load i64, i64* %RDX.i91
  %3962 = mul i64 %3961, 4
  %3963 = add i64 %3962, %3960
  %3964 = load i64, i64* %PC.i89
  %3965 = add i64 %3964, 7
  store i64 %3965, i64* %PC.i89
  %3966 = inttoptr i64 %3963 to i32*
  store i32 1, i32* %3966
  store %struct.Memory* %loadMem_427a05, %struct.Memory** %MEMORY
  %loadMem_427a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 33
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %3969 to i64*
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 1
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %3972 to i64*
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 15
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %3975 to i64*
  %3976 = load i64, i64* %RBP.i88
  %3977 = sub i64 %3976, 28
  %3978 = load i64, i64* %PC.i86
  %3979 = add i64 %3978, 3
  store i64 %3979, i64* %PC.i86
  %3980 = inttoptr i64 %3977 to i32*
  %3981 = load i32, i32* %3980
  %3982 = zext i32 %3981 to i64
  store i64 %3982, i64* %RAX.i87, align 8
  store %struct.Memory* %loadMem_427a0c, %struct.Memory** %MEMORY
  %loadMem_427a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 33
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3985 to i64*
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 1
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %3988 to i64*
  %3989 = load i64, i64* %RAX.i85
  %3990 = load i64, i64* %PC.i84
  %3991 = add i64 %3990, 3
  store i64 %3991, i64* %PC.i84
  %3992 = trunc i64 %3989 to i32
  %3993 = add i32 1, %3992
  %3994 = zext i32 %3993 to i64
  store i64 %3994, i64* %RAX.i85, align 8
  %3995 = icmp ult i32 %3993, %3992
  %3996 = icmp ult i32 %3993, 1
  %3997 = or i1 %3995, %3996
  %3998 = zext i1 %3997 to i8
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3998, i8* %3999, align 1
  %4000 = and i32 %3993, 255
  %4001 = call i32 @llvm.ctpop.i32(i32 %4000)
  %4002 = trunc i32 %4001 to i8
  %4003 = and i8 %4002, 1
  %4004 = xor i8 %4003, 1
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4004, i8* %4005, align 1
  %4006 = xor i64 1, %3989
  %4007 = trunc i64 %4006 to i32
  %4008 = xor i32 %4007, %3993
  %4009 = lshr i32 %4008, 4
  %4010 = trunc i32 %4009 to i8
  %4011 = and i8 %4010, 1
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4011, i8* %4012, align 1
  %4013 = icmp eq i32 %3993, 0
  %4014 = zext i1 %4013 to i8
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4014, i8* %4015, align 1
  %4016 = lshr i32 %3993, 31
  %4017 = trunc i32 %4016 to i8
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4017, i8* %4018, align 1
  %4019 = lshr i32 %3992, 31
  %4020 = xor i32 %4016, %4019
  %4021 = add i32 %4020, %4016
  %4022 = icmp eq i32 %4021, 2
  %4023 = zext i1 %4022 to i8
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4023, i8* %4024, align 1
  store %struct.Memory* %loadMem_427a0f, %struct.Memory** %MEMORY
  %loadMem_427a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4026 = getelementptr inbounds %struct.GPR, %struct.GPR* %4025, i32 0, i32 33
  %4027 = getelementptr inbounds %struct.Reg, %struct.Reg* %4026, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4027 to i64*
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4029 = getelementptr inbounds %struct.GPR, %struct.GPR* %4028, i32 0, i32 1
  %4030 = getelementptr inbounds %struct.Reg, %struct.Reg* %4029, i32 0, i32 0
  %EAX.i82 = bitcast %union.anon* %4030 to i32*
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4032 = getelementptr inbounds %struct.GPR, %struct.GPR* %4031, i32 0, i32 15
  %4033 = getelementptr inbounds %struct.Reg, %struct.Reg* %4032, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %4033 to i64*
  %4034 = load i64, i64* %RBP.i83
  %4035 = sub i64 %4034, 28
  %4036 = load i32, i32* %EAX.i82
  %4037 = zext i32 %4036 to i64
  %4038 = load i64, i64* %PC.i81
  %4039 = add i64 %4038, 3
  store i64 %4039, i64* %PC.i81
  %4040 = inttoptr i64 %4035 to i32*
  store i32 %4036, i32* %4040
  store %struct.Memory* %loadMem_427a12, %struct.Memory** %MEMORY
  %loadMem_427a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 33
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %4043 to i64*
  %4044 = load i64, i64* %PC.i80
  %4045 = add i64 %4044, -56
  %4046 = load i64, i64* %PC.i80
  %4047 = add i64 %4046, 5
  store i64 %4047, i64* %PC.i80
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4045, i64* %4048, align 8
  store %struct.Memory* %loadMem_427a15, %struct.Memory** %MEMORY
  br label %block_.L_4279dd

block_.L_427a1a:                                  ; preds = %block_.L_4279dd
  %loadMem_427a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4050 = getelementptr inbounds %struct.GPR, %struct.GPR* %4049, i32 0, i32 33
  %4051 = getelementptr inbounds %struct.Reg, %struct.Reg* %4050, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4051 to i64*
  %4052 = load i64, i64* %PC.i79
  %4053 = add i64 %4052, 5
  %4054 = load i64, i64* %PC.i79
  %4055 = add i64 %4054, 5
  store i64 %4055, i64* %PC.i79
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4053, i64* %4056, align 8
  store %struct.Memory* %loadMem_427a1a, %struct.Memory** %MEMORY
  br label %block_.L_427a1f

block_.L_427a1f:                                  ; preds = %block_.L_427a1a, %block_.L_4279cb
  %loadMem_427a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 33
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4059 to i64*
  %4060 = load i64, i64* %PC.i78
  %4061 = add i64 %4060, 5
  %4062 = load i64, i64* %PC.i78
  %4063 = add i64 %4062, 5
  store i64 %4063, i64* %PC.i78
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4061, i64* %4064, align 8
  store %struct.Memory* %loadMem_427a1f, %struct.Memory** %MEMORY
  br label %block_.L_427a24

block_.L_427a24:                                  ; preds = %block_.L_427a1f
  %loadMem_427a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4066 = getelementptr inbounds %struct.GPR, %struct.GPR* %4065, i32 0, i32 33
  %4067 = getelementptr inbounds %struct.Reg, %struct.Reg* %4066, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4067 to i64*
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4069 = getelementptr inbounds %struct.GPR, %struct.GPR* %4068, i32 0, i32 1
  %4070 = getelementptr inbounds %struct.Reg, %struct.Reg* %4069, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %4070 to i64*
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4072 = getelementptr inbounds %struct.GPR, %struct.GPR* %4071, i32 0, i32 15
  %4073 = getelementptr inbounds %struct.Reg, %struct.Reg* %4072, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %4073 to i64*
  %4074 = load i64, i64* %RBP.i77
  %4075 = sub i64 %4074, 32
  %4076 = load i64, i64* %PC.i75
  %4077 = add i64 %4076, 3
  store i64 %4077, i64* %PC.i75
  %4078 = inttoptr i64 %4075 to i32*
  %4079 = load i32, i32* %4078
  %4080 = zext i32 %4079 to i64
  store i64 %4080, i64* %RAX.i76, align 8
  store %struct.Memory* %loadMem_427a24, %struct.Memory** %MEMORY
  %loadMem_427a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4082 = getelementptr inbounds %struct.GPR, %struct.GPR* %4081, i32 0, i32 33
  %4083 = getelementptr inbounds %struct.Reg, %struct.Reg* %4082, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %4083 to i64*
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4085 = getelementptr inbounds %struct.GPR, %struct.GPR* %4084, i32 0, i32 1
  %4086 = getelementptr inbounds %struct.Reg, %struct.Reg* %4085, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %4086 to i64*
  %4087 = load i64, i64* %RAX.i74
  %4088 = load i64, i64* %PC.i73
  %4089 = add i64 %4088, 3
  store i64 %4089, i64* %PC.i73
  %4090 = trunc i64 %4087 to i32
  %4091 = add i32 1, %4090
  %4092 = zext i32 %4091 to i64
  store i64 %4092, i64* %RAX.i74, align 8
  %4093 = icmp ult i32 %4091, %4090
  %4094 = icmp ult i32 %4091, 1
  %4095 = or i1 %4093, %4094
  %4096 = zext i1 %4095 to i8
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4096, i8* %4097, align 1
  %4098 = and i32 %4091, 255
  %4099 = call i32 @llvm.ctpop.i32(i32 %4098)
  %4100 = trunc i32 %4099 to i8
  %4101 = and i8 %4100, 1
  %4102 = xor i8 %4101, 1
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4102, i8* %4103, align 1
  %4104 = xor i64 1, %4087
  %4105 = trunc i64 %4104 to i32
  %4106 = xor i32 %4105, %4091
  %4107 = lshr i32 %4106, 4
  %4108 = trunc i32 %4107 to i8
  %4109 = and i8 %4108, 1
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4109, i8* %4110, align 1
  %4111 = icmp eq i32 %4091, 0
  %4112 = zext i1 %4111 to i8
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4112, i8* %4113, align 1
  %4114 = lshr i32 %4091, 31
  %4115 = trunc i32 %4114 to i8
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4115, i8* %4116, align 1
  %4117 = lshr i32 %4090, 31
  %4118 = xor i32 %4114, %4117
  %4119 = add i32 %4118, %4114
  %4120 = icmp eq i32 %4119, 2
  %4121 = zext i1 %4120 to i8
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4121, i8* %4122, align 1
  store %struct.Memory* %loadMem_427a27, %struct.Memory** %MEMORY
  %loadMem_427a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 33
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %4125 to i64*
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4127 = getelementptr inbounds %struct.GPR, %struct.GPR* %4126, i32 0, i32 1
  %4128 = getelementptr inbounds %struct.Reg, %struct.Reg* %4127, i32 0, i32 0
  %EAX.i71 = bitcast %union.anon* %4128 to i32*
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4130 = getelementptr inbounds %struct.GPR, %struct.GPR* %4129, i32 0, i32 15
  %4131 = getelementptr inbounds %struct.Reg, %struct.Reg* %4130, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %4131 to i64*
  %4132 = load i64, i64* %RBP.i72
  %4133 = sub i64 %4132, 32
  %4134 = load i32, i32* %EAX.i71
  %4135 = zext i32 %4134 to i64
  %4136 = load i64, i64* %PC.i70
  %4137 = add i64 %4136, 3
  store i64 %4137, i64* %PC.i70
  %4138 = inttoptr i64 %4133 to i32*
  store i32 %4134, i32* %4138
  store %struct.Memory* %loadMem_427a2a, %struct.Memory** %MEMORY
  %loadMem_427a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 33
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %4141 to i64*
  %4142 = load i64, i64* %PC.i69
  %4143 = add i64 %4142, -469
  %4144 = load i64, i64* %PC.i69
  %4145 = add i64 %4144, 5
  store i64 %4145, i64* %PC.i69
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4143, i64* %4146, align 8
  store %struct.Memory* %loadMem_427a2d, %struct.Memory** %MEMORY
  br label %block_.L_427858

block_.L_427a32:                                  ; preds = %block_.L_427858
  %loadMem_427a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 15
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %4152 to i64*
  %4153 = load i64, i64* %RBP.i68
  %4154 = sub i64 %4153, 24
  %4155 = load i64, i64* %PC.i67
  %4156 = add i64 %4155, 7
  store i64 %4156, i64* %PC.i67
  %4157 = inttoptr i64 %4154 to i32*
  store i32 1, i32* %4157
  store %struct.Memory* %loadMem_427a32, %struct.Memory** %MEMORY
  br label %block_.L_427a39

block_.L_427a39:                                  ; preds = %block_.L_427a7c, %block_.L_427a32
  %loadMem_427a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4159 = getelementptr inbounds %struct.GPR, %struct.GPR* %4158, i32 0, i32 33
  %4160 = getelementptr inbounds %struct.Reg, %struct.Reg* %4159, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %4160 to i64*
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4162 = getelementptr inbounds %struct.GPR, %struct.GPR* %4161, i32 0, i32 1
  %4163 = getelementptr inbounds %struct.Reg, %struct.Reg* %4162, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %4163 to i64*
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4165 = getelementptr inbounds %struct.GPR, %struct.GPR* %4164, i32 0, i32 15
  %4166 = getelementptr inbounds %struct.Reg, %struct.Reg* %4165, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %4166 to i64*
  %4167 = load i64, i64* %RBP.i66
  %4168 = sub i64 %4167, 24
  %4169 = load i64, i64* %PC.i64
  %4170 = add i64 %4169, 3
  store i64 %4170, i64* %PC.i64
  %4171 = inttoptr i64 %4168 to i32*
  %4172 = load i32, i32* %4171
  %4173 = zext i32 %4172 to i64
  store i64 %4173, i64* %RAX.i65, align 8
  store %struct.Memory* %loadMem_427a39, %struct.Memory** %MEMORY
  %loadMem_427a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4175 = getelementptr inbounds %struct.GPR, %struct.GPR* %4174, i32 0, i32 33
  %4176 = getelementptr inbounds %struct.Reg, %struct.Reg* %4175, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %4176 to i64*
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4178 = getelementptr inbounds %struct.GPR, %struct.GPR* %4177, i32 0, i32 1
  %4179 = getelementptr inbounds %struct.Reg, %struct.Reg* %4178, i32 0, i32 0
  %EAX.i62 = bitcast %union.anon* %4179 to i32*
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4181 = getelementptr inbounds %struct.GPR, %struct.GPR* %4180, i32 0, i32 15
  %4182 = getelementptr inbounds %struct.Reg, %struct.Reg* %4181, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %4182 to i64*
  %4183 = load i32, i32* %EAX.i62
  %4184 = zext i32 %4183 to i64
  %4185 = load i64, i64* %RBP.i63
  %4186 = sub i64 %4185, 20
  %4187 = load i64, i64* %PC.i61
  %4188 = add i64 %4187, 3
  store i64 %4188, i64* %PC.i61
  %4189 = inttoptr i64 %4186 to i32*
  %4190 = load i32, i32* %4189
  %4191 = sub i32 %4183, %4190
  %4192 = icmp ult i32 %4183, %4190
  %4193 = zext i1 %4192 to i8
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4193, i8* %4194, align 1
  %4195 = and i32 %4191, 255
  %4196 = call i32 @llvm.ctpop.i32(i32 %4195)
  %4197 = trunc i32 %4196 to i8
  %4198 = and i8 %4197, 1
  %4199 = xor i8 %4198, 1
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4199, i8* %4200, align 1
  %4201 = xor i32 %4190, %4183
  %4202 = xor i32 %4201, %4191
  %4203 = lshr i32 %4202, 4
  %4204 = trunc i32 %4203 to i8
  %4205 = and i8 %4204, 1
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4205, i8* %4206, align 1
  %4207 = icmp eq i32 %4191, 0
  %4208 = zext i1 %4207 to i8
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4208, i8* %4209, align 1
  %4210 = lshr i32 %4191, 31
  %4211 = trunc i32 %4210 to i8
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4211, i8* %4212, align 1
  %4213 = lshr i32 %4183, 31
  %4214 = lshr i32 %4190, 31
  %4215 = xor i32 %4214, %4213
  %4216 = xor i32 %4210, %4213
  %4217 = add i32 %4216, %4215
  %4218 = icmp eq i32 %4217, 2
  %4219 = zext i1 %4218 to i8
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4219, i8* %4220, align 1
  store %struct.Memory* %loadMem_427a3c, %struct.Memory** %MEMORY
  %loadMem_427a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 33
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %4223 to i64*
  %4224 = load i64, i64* %PC.i60
  %4225 = add i64 %4224, 75
  %4226 = load i64, i64* %PC.i60
  %4227 = add i64 %4226, 6
  %4228 = load i64, i64* %PC.i60
  %4229 = add i64 %4228, 6
  store i64 %4229, i64* %PC.i60
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4231 = load i8, i8* %4230, align 1
  %4232 = icmp eq i8 %4231, 0
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4234 = load i8, i8* %4233, align 1
  %4235 = icmp ne i8 %4234, 0
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4237 = load i8, i8* %4236, align 1
  %4238 = icmp ne i8 %4237, 0
  %4239 = xor i1 %4235, %4238
  %4240 = xor i1 %4239, true
  %4241 = and i1 %4232, %4240
  %4242 = zext i1 %4241 to i8
  store i8 %4242, i8* %BRANCH_TAKEN, align 1
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4244 = select i1 %4241, i64 %4225, i64 %4227
  store i64 %4244, i64* %4243, align 8
  store %struct.Memory* %loadMem_427a3f, %struct.Memory** %MEMORY
  %loadBr_427a3f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427a3f = icmp eq i8 %loadBr_427a3f, 1
  br i1 %cmpBr_427a3f, label %block_.L_427a8a, label %block_427a45

block_427a45:                                     ; preds = %block_.L_427a39
  %loadMem_427a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 33
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %4247 to i64*
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 1
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %4250 to i64*
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 15
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %4253 to i64*
  %4254 = load i64, i64* %RBP.i59
  %4255 = sub i64 %4254, 88
  %4256 = load i64, i64* %PC.i57
  %4257 = add i64 %4256, 4
  store i64 %4257, i64* %PC.i57
  %4258 = inttoptr i64 %4255 to i64*
  %4259 = load i64, i64* %4258
  store i64 %4259, i64* %RAX.i58, align 8
  store %struct.Memory* %loadMem_427a45, %struct.Memory** %MEMORY
  %loadMem_427a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 33
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %4262 to i64*
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 5
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %RCX.i55 = bitcast %union.anon* %4265 to i64*
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 15
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %4268 to i64*
  %4269 = load i64, i64* %RBP.i56
  %4270 = sub i64 %4269, 24
  %4271 = load i64, i64* %PC.i54
  %4272 = add i64 %4271, 4
  store i64 %4272, i64* %PC.i54
  %4273 = inttoptr i64 %4270 to i32*
  %4274 = load i32, i32* %4273
  %4275 = sext i32 %4274 to i64
  store i64 %4275, i64* %RCX.i55, align 8
  store %struct.Memory* %loadMem_427a49, %struct.Memory** %MEMORY
  %loadMem_427a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4277 = getelementptr inbounds %struct.GPR, %struct.GPR* %4276, i32 0, i32 33
  %4278 = getelementptr inbounds %struct.Reg, %struct.Reg* %4277, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4278 to i64*
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 1
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %4281 to i64*
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4283 = getelementptr inbounds %struct.GPR, %struct.GPR* %4282, i32 0, i32 5
  %4284 = getelementptr inbounds %struct.Reg, %struct.Reg* %4283, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %4284 to i64*
  %4285 = load i64, i64* %RAX.i52
  %4286 = load i64, i64* %RCX.i53
  %4287 = mul i64 %4286, 4
  %4288 = add i64 %4287, %4285
  %4289 = load i64, i64* %PC.i51
  %4290 = add i64 %4289, 4
  store i64 %4290, i64* %PC.i51
  %4291 = inttoptr i64 %4288 to i32*
  %4292 = load i32, i32* %4291
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4293, align 1
  %4294 = and i32 %4292, 255
  %4295 = call i32 @llvm.ctpop.i32(i32 %4294)
  %4296 = trunc i32 %4295 to i8
  %4297 = and i8 %4296, 1
  %4298 = xor i8 %4297, 1
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4298, i8* %4299, align 1
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4300, align 1
  %4301 = icmp eq i32 %4292, 0
  %4302 = zext i1 %4301 to i8
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4302, i8* %4303, align 1
  %4304 = lshr i32 %4292, 31
  %4305 = trunc i32 %4304 to i8
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4305, i8* %4306, align 1
  %4307 = lshr i32 %4292, 31
  %4308 = xor i32 %4304, %4307
  %4309 = add i32 %4308, %4307
  %4310 = icmp eq i32 %4309, 2
  %4311 = zext i1 %4310 to i8
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4311, i8* %4312, align 1
  store %struct.Memory* %loadMem_427a4d, %struct.Memory** %MEMORY
  %loadMem_427a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4314 = getelementptr inbounds %struct.GPR, %struct.GPR* %4313, i32 0, i32 33
  %4315 = getelementptr inbounds %struct.Reg, %struct.Reg* %4314, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %4315 to i64*
  %4316 = load i64, i64* %PC.i50
  %4317 = add i64 %4316, 38
  %4318 = load i64, i64* %PC.i50
  %4319 = add i64 %4318, 6
  %4320 = load i64, i64* %PC.i50
  %4321 = add i64 %4320, 6
  store i64 %4321, i64* %PC.i50
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4323 = load i8, i8* %4322, align 1
  store i8 %4323, i8* %BRANCH_TAKEN, align 1
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4325 = icmp ne i8 %4323, 0
  %4326 = select i1 %4325, i64 %4317, i64 %4319
  store i64 %4326, i64* %4324, align 8
  store %struct.Memory* %loadMem_427a51, %struct.Memory** %MEMORY
  %loadBr_427a51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427a51 = icmp eq i8 %loadBr_427a51, 1
  br i1 %cmpBr_427a51, label %block_.L_427a77, label %block_427a57

block_427a57:                                     ; preds = %block_427a45
  %loadMem_427a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 33
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %4329 to i64*
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 1
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %4332 to i64*
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 15
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %4335 to i64*
  %4336 = load i64, i64* %RBP.i49
  %4337 = sub i64 %4336, 116
  %4338 = load i64, i64* %PC.i47
  %4339 = add i64 %4338, 3
  store i64 %4339, i64* %PC.i47
  %4340 = inttoptr i64 %4337 to i32*
  %4341 = load i32, i32* %4340
  %4342 = zext i32 %4341 to i64
  store i64 %4342, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_427a57, %struct.Memory** %MEMORY
  %loadMem_427a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4344 = getelementptr inbounds %struct.GPR, %struct.GPR* %4343, i32 0, i32 33
  %4345 = getelementptr inbounds %struct.Reg, %struct.Reg* %4344, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %4345 to i64*
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4347 = getelementptr inbounds %struct.GPR, %struct.GPR* %4346, i32 0, i32 1
  %4348 = getelementptr inbounds %struct.Reg, %struct.Reg* %4347, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %4348 to i64*
  %4349 = load i64, i64* %RAX.i46
  %4350 = load i64, i64* %PC.i45
  %4351 = add i64 %4350, 3
  store i64 %4351, i64* %PC.i45
  %4352 = trunc i64 %4349 to i32
  %4353 = add i32 1, %4352
  %4354 = zext i32 %4353 to i64
  store i64 %4354, i64* %RAX.i46, align 8
  %4355 = icmp ult i32 %4353, %4352
  %4356 = icmp ult i32 %4353, 1
  %4357 = or i1 %4355, %4356
  %4358 = zext i1 %4357 to i8
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4358, i8* %4359, align 1
  %4360 = and i32 %4353, 255
  %4361 = call i32 @llvm.ctpop.i32(i32 %4360)
  %4362 = trunc i32 %4361 to i8
  %4363 = and i8 %4362, 1
  %4364 = xor i8 %4363, 1
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4364, i8* %4365, align 1
  %4366 = xor i64 1, %4349
  %4367 = trunc i64 %4366 to i32
  %4368 = xor i32 %4367, %4353
  %4369 = lshr i32 %4368, 4
  %4370 = trunc i32 %4369 to i8
  %4371 = and i8 %4370, 1
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4371, i8* %4372, align 1
  %4373 = icmp eq i32 %4353, 0
  %4374 = zext i1 %4373 to i8
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4374, i8* %4375, align 1
  %4376 = lshr i32 %4353, 31
  %4377 = trunc i32 %4376 to i8
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4377, i8* %4378, align 1
  %4379 = lshr i32 %4352, 31
  %4380 = xor i32 %4376, %4379
  %4381 = add i32 %4380, %4376
  %4382 = icmp eq i32 %4381, 2
  %4383 = zext i1 %4382 to i8
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4383, i8* %4384, align 1
  store %struct.Memory* %loadMem_427a5a, %struct.Memory** %MEMORY
  %loadMem_427a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4386 = getelementptr inbounds %struct.GPR, %struct.GPR* %4385, i32 0, i32 33
  %4387 = getelementptr inbounds %struct.Reg, %struct.Reg* %4386, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4387 to i64*
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 1
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %EAX.i43 = bitcast %union.anon* %4390 to i32*
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4392 = getelementptr inbounds %struct.GPR, %struct.GPR* %4391, i32 0, i32 15
  %4393 = getelementptr inbounds %struct.Reg, %struct.Reg* %4392, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %4393 to i64*
  %4394 = load i64, i64* %RBP.i44
  %4395 = sub i64 %4394, 116
  %4396 = load i32, i32* %EAX.i43
  %4397 = zext i32 %4396 to i64
  %4398 = load i64, i64* %PC.i42
  %4399 = add i64 %4398, 3
  store i64 %4399, i64* %PC.i42
  %4400 = inttoptr i64 %4395 to i32*
  store i32 %4396, i32* %4400
  store %struct.Memory* %loadMem_427a5d, %struct.Memory** %MEMORY
  %loadMem_427a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4402 = getelementptr inbounds %struct.GPR, %struct.GPR* %4401, i32 0, i32 33
  %4403 = getelementptr inbounds %struct.Reg, %struct.Reg* %4402, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %4403 to i64*
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 1
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %4406 to i64*
  %4407 = load i64, i64* %PC.i40
  %4408 = add i64 %4407, 7
  store i64 %4408, i64* %PC.i40
  %4409 = load i32, i32* bitcast (%G_0x676ffc_type* @G_0x676ffc to i32*)
  %4410 = zext i32 %4409 to i64
  store i64 %4410, i64* %RAX.i41, align 8
  store %struct.Memory* %loadMem_427a60, %struct.Memory** %MEMORY
  %loadMem_427a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 33
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %4413 to i64*
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 1
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %4416 to i64*
  %4417 = load i64, i64* %RAX.i39
  %4418 = load i64, i64* %PC.i38
  %4419 = add i64 %4418, 3
  store i64 %4419, i64* %PC.i38
  %4420 = trunc i64 %4417 to i32
  %4421 = sub i32 %4420, 1
  %4422 = zext i32 %4421 to i64
  store i64 %4422, i64* %RAX.i39, align 8
  %4423 = icmp ult i32 %4420, 1
  %4424 = zext i1 %4423 to i8
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4424, i8* %4425, align 1
  %4426 = and i32 %4421, 255
  %4427 = call i32 @llvm.ctpop.i32(i32 %4426)
  %4428 = trunc i32 %4427 to i8
  %4429 = and i8 %4428, 1
  %4430 = xor i8 %4429, 1
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4430, i8* %4431, align 1
  %4432 = xor i64 1, %4417
  %4433 = trunc i64 %4432 to i32
  %4434 = xor i32 %4433, %4421
  %4435 = lshr i32 %4434, 4
  %4436 = trunc i32 %4435 to i8
  %4437 = and i8 %4436, 1
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4437, i8* %4438, align 1
  %4439 = icmp eq i32 %4421, 0
  %4440 = zext i1 %4439 to i8
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4440, i8* %4441, align 1
  %4442 = lshr i32 %4421, 31
  %4443 = trunc i32 %4442 to i8
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4443, i8* %4444, align 1
  %4445 = lshr i32 %4420, 31
  %4446 = xor i32 %4442, %4445
  %4447 = add i32 %4446, %4445
  %4448 = icmp eq i32 %4447, 2
  %4449 = zext i1 %4448 to i8
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4449, i8* %4450, align 1
  store %struct.Memory* %loadMem_427a67, %struct.Memory** %MEMORY
  %loadMem_427a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4452 = getelementptr inbounds %struct.GPR, %struct.GPR* %4451, i32 0, i32 33
  %4453 = getelementptr inbounds %struct.Reg, %struct.Reg* %4452, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4453 to i64*
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 1
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %4457 = bitcast %union.anon* %4456 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4457, i32 0, i32 0
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4459 = getelementptr inbounds %struct.GPR, %struct.GPR* %4458, i32 0, i32 5
  %4460 = getelementptr inbounds %struct.Reg, %struct.Reg* %4459, i32 0, i32 0
  %4461 = bitcast %union.anon* %4460 to %struct.anon.2*
  %CL.i37 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4461, i32 0, i32 0
  %4462 = load i8, i8* %AL.i
  %4463 = zext i8 %4462 to i64
  %4464 = load i64, i64* %PC.i36
  %4465 = add i64 %4464, 2
  store i64 %4465, i64* %PC.i36
  store i8 %4462, i8* %CL.i37, align 1
  store %struct.Memory* %loadMem_427a6a, %struct.Memory** %MEMORY
  %loadMem_427a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4467 = getelementptr inbounds %struct.GPR, %struct.GPR* %4466, i32 0, i32 33
  %4468 = getelementptr inbounds %struct.Reg, %struct.Reg* %4467, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4468 to i64*
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4470 = getelementptr inbounds %struct.GPR, %struct.GPR* %4469, i32 0, i32 7
  %4471 = getelementptr inbounds %struct.Reg, %struct.Reg* %4470, i32 0, i32 0
  %RDX.i34 = bitcast %union.anon* %4471 to i64*
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4473 = getelementptr inbounds %struct.GPR, %struct.GPR* %4472, i32 0, i32 15
  %4474 = getelementptr inbounds %struct.Reg, %struct.Reg* %4473, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %4474 to i64*
  %4475 = load i64, i64* %RBP.i35
  %4476 = sub i64 %4475, 16
  %4477 = load i64, i64* %PC.i33
  %4478 = add i64 %4477, 4
  store i64 %4478, i64* %PC.i33
  %4479 = inttoptr i64 %4476 to i64*
  %4480 = load i64, i64* %4479
  store i64 %4480, i64* %RDX.i34, align 8
  store %struct.Memory* %loadMem_427a6c, %struct.Memory** %MEMORY
  %loadMem_427a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4482 = getelementptr inbounds %struct.GPR, %struct.GPR* %4481, i32 0, i32 33
  %4483 = getelementptr inbounds %struct.Reg, %struct.Reg* %4482, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %4483 to i64*
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4485 = getelementptr inbounds %struct.GPR, %struct.GPR* %4484, i32 0, i32 9
  %4486 = getelementptr inbounds %struct.Reg, %struct.Reg* %4485, i32 0, i32 0
  %RSI.i31 = bitcast %union.anon* %4486 to i64*
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4488 = getelementptr inbounds %struct.GPR, %struct.GPR* %4487, i32 0, i32 15
  %4489 = getelementptr inbounds %struct.Reg, %struct.Reg* %4488, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %4489 to i64*
  %4490 = load i64, i64* %RBP.i32
  %4491 = sub i64 %4490, 24
  %4492 = load i64, i64* %PC.i30
  %4493 = add i64 %4492, 4
  store i64 %4493, i64* %PC.i30
  %4494 = inttoptr i64 %4491 to i32*
  %4495 = load i32, i32* %4494
  %4496 = sext i32 %4495 to i64
  store i64 %4496, i64* %RSI.i31, align 8
  store %struct.Memory* %loadMem_427a70, %struct.Memory** %MEMORY
  %loadMem_427a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 33
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4499 to i64*
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4501 = getelementptr inbounds %struct.GPR, %struct.GPR* %4500, i32 0, i32 5
  %4502 = getelementptr inbounds %struct.Reg, %struct.Reg* %4501, i32 0, i32 0
  %4503 = bitcast %union.anon* %4502 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4503, i32 0, i32 0
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4505 = getelementptr inbounds %struct.GPR, %struct.GPR* %4504, i32 0, i32 7
  %4506 = getelementptr inbounds %struct.Reg, %struct.Reg* %4505, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4506 to i64*
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4508 = getelementptr inbounds %struct.GPR, %struct.GPR* %4507, i32 0, i32 9
  %4509 = getelementptr inbounds %struct.Reg, %struct.Reg* %4508, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4509 to i64*
  %4510 = load i64, i64* %RDX.i
  %4511 = load i64, i64* %RSI.i
  %4512 = add i64 %4511, %4510
  %4513 = load i8, i8* %CL.i
  %4514 = zext i8 %4513 to i64
  %4515 = load i64, i64* %PC.i29
  %4516 = add i64 %4515, 3
  store i64 %4516, i64* %PC.i29
  %4517 = inttoptr i64 %4512 to i8*
  store i8 %4513, i8* %4517
  store %struct.Memory* %loadMem_427a74, %struct.Memory** %MEMORY
  br label %block_.L_427a77

block_.L_427a77:                                  ; preds = %block_427a57, %block_427a45
  %loadMem_427a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4519 = getelementptr inbounds %struct.GPR, %struct.GPR* %4518, i32 0, i32 33
  %4520 = getelementptr inbounds %struct.Reg, %struct.Reg* %4519, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4520 to i64*
  %4521 = load i64, i64* %PC.i28
  %4522 = add i64 %4521, 5
  %4523 = load i64, i64* %PC.i28
  %4524 = add i64 %4523, 5
  store i64 %4524, i64* %PC.i28
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4522, i64* %4525, align 8
  store %struct.Memory* %loadMem_427a77, %struct.Memory** %MEMORY
  br label %block_.L_427a7c

block_.L_427a7c:                                  ; preds = %block_.L_427a77
  %loadMem_427a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4527 = getelementptr inbounds %struct.GPR, %struct.GPR* %4526, i32 0, i32 33
  %4528 = getelementptr inbounds %struct.Reg, %struct.Reg* %4527, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %4528 to i64*
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4530 = getelementptr inbounds %struct.GPR, %struct.GPR* %4529, i32 0, i32 1
  %4531 = getelementptr inbounds %struct.Reg, %struct.Reg* %4530, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %4531 to i64*
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4533 = getelementptr inbounds %struct.GPR, %struct.GPR* %4532, i32 0, i32 15
  %4534 = getelementptr inbounds %struct.Reg, %struct.Reg* %4533, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %4534 to i64*
  %4535 = load i64, i64* %RBP.i27
  %4536 = sub i64 %4535, 24
  %4537 = load i64, i64* %PC.i25
  %4538 = add i64 %4537, 3
  store i64 %4538, i64* %PC.i25
  %4539 = inttoptr i64 %4536 to i32*
  %4540 = load i32, i32* %4539
  %4541 = zext i32 %4540 to i64
  store i64 %4541, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_427a7c, %struct.Memory** %MEMORY
  %loadMem_427a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4543 = getelementptr inbounds %struct.GPR, %struct.GPR* %4542, i32 0, i32 33
  %4544 = getelementptr inbounds %struct.Reg, %struct.Reg* %4543, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4544 to i64*
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4546 = getelementptr inbounds %struct.GPR, %struct.GPR* %4545, i32 0, i32 1
  %4547 = getelementptr inbounds %struct.Reg, %struct.Reg* %4546, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %4547 to i64*
  %4548 = load i64, i64* %RAX.i24
  %4549 = load i64, i64* %PC.i23
  %4550 = add i64 %4549, 3
  store i64 %4550, i64* %PC.i23
  %4551 = trunc i64 %4548 to i32
  %4552 = add i32 1, %4551
  %4553 = zext i32 %4552 to i64
  store i64 %4553, i64* %RAX.i24, align 8
  %4554 = icmp ult i32 %4552, %4551
  %4555 = icmp ult i32 %4552, 1
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
  %4565 = xor i64 1, %4548
  %4566 = trunc i64 %4565 to i32
  %4567 = xor i32 %4566, %4552
  %4568 = lshr i32 %4567, 4
  %4569 = trunc i32 %4568 to i8
  %4570 = and i8 %4569, 1
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4570, i8* %4571, align 1
  %4572 = icmp eq i32 %4552, 0
  %4573 = zext i1 %4572 to i8
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4573, i8* %4574, align 1
  %4575 = lshr i32 %4552, 31
  %4576 = trunc i32 %4575 to i8
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4576, i8* %4577, align 1
  %4578 = lshr i32 %4551, 31
  %4579 = xor i32 %4575, %4578
  %4580 = add i32 %4579, %4575
  %4581 = icmp eq i32 %4580, 2
  %4582 = zext i1 %4581 to i8
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4582, i8* %4583, align 1
  store %struct.Memory* %loadMem_427a7f, %struct.Memory** %MEMORY
  %loadMem_427a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4585 = getelementptr inbounds %struct.GPR, %struct.GPR* %4584, i32 0, i32 33
  %4586 = getelementptr inbounds %struct.Reg, %struct.Reg* %4585, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %4586 to i64*
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 1
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4589 to i32*
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 15
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %4592 to i64*
  %4593 = load i64, i64* %RBP.i22
  %4594 = sub i64 %4593, 24
  %4595 = load i32, i32* %EAX.i
  %4596 = zext i32 %4595 to i64
  %4597 = load i64, i64* %PC.i21
  %4598 = add i64 %4597, 3
  store i64 %4598, i64* %PC.i21
  %4599 = inttoptr i64 %4594 to i32*
  store i32 %4595, i32* %4599
  store %struct.Memory* %loadMem_427a82, %struct.Memory** %MEMORY
  %loadMem_427a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 33
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %4602 to i64*
  %4603 = load i64, i64* %PC.i20
  %4604 = add i64 %4603, -76
  %4605 = load i64, i64* %PC.i20
  %4606 = add i64 %4605, 5
  store i64 %4606, i64* %PC.i20
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4604, i64* %4607, align 8
  store %struct.Memory* %loadMem_427a85, %struct.Memory** %MEMORY
  br label %block_.L_427a39

block_.L_427a8a:                                  ; preds = %block_.L_427a39
  %loadMem_427a8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 33
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %4610 to i64*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 1
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %4613 to i64*
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 15
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %4616 to i64*
  %4617 = load i64, i64* %RBP.i19
  %4618 = sub i64 %4617, 88
  %4619 = load i64, i64* %PC.i17
  %4620 = add i64 %4619, 4
  store i64 %4620, i64* %PC.i17
  %4621 = inttoptr i64 %4618 to i64*
  %4622 = load i64, i64* %4621
  store i64 %4622, i64* %RAX.i18, align 8
  store %struct.Memory* %loadMem_427a8a, %struct.Memory** %MEMORY
  %loadMem_427a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 33
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %4625 to i64*
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 1
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %RAX.i16 = bitcast %union.anon* %4628 to i64*
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 11
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4631 to i64*
  %4632 = load i64, i64* %RAX.i16
  %4633 = load i64, i64* %PC.i15
  %4634 = add i64 %4633, 3
  store i64 %4634, i64* %PC.i15
  store i64 %4632, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_427a8e, %struct.Memory** %MEMORY
  %loadMem1_427a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 33
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4637 to i64*
  %4638 = load i64, i64* %PC.i14
  %4639 = add i64 %4638, -157457
  %4640 = load i64, i64* %PC.i14
  %4641 = add i64 %4640, 5
  %4642 = load i64, i64* %PC.i14
  %4643 = add i64 %4642, 5
  store i64 %4643, i64* %PC.i14
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4645 = load i64, i64* %4644, align 8
  %4646 = add i64 %4645, -8
  %4647 = inttoptr i64 %4646 to i64*
  store i64 %4641, i64* %4647
  store i64 %4646, i64* %4644, align 8
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4639, i64* %4648, align 8
  store %struct.Memory* %loadMem1_427a91, %struct.Memory** %MEMORY
  %loadMem2_427a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427a91 = load i64, i64* %3
  %4649 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_427a91)
  store %struct.Memory* %4649, %struct.Memory** %MEMORY
  %loadMem_427a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4651 = getelementptr inbounds %struct.GPR, %struct.GPR* %4650, i32 0, i32 33
  %4652 = getelementptr inbounds %struct.Reg, %struct.Reg* %4651, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4652 to i64*
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4654 = getelementptr inbounds %struct.GPR, %struct.GPR* %4653, i32 0, i32 5
  %4655 = getelementptr inbounds %struct.Reg, %struct.Reg* %4654, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4655 to i64*
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4657 = getelementptr inbounds %struct.GPR, %struct.GPR* %4656, i32 0, i32 15
  %4658 = getelementptr inbounds %struct.Reg, %struct.Reg* %4657, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %4658 to i64*
  %4659 = load i64, i64* %RBP.i10
  %4660 = sub i64 %4659, 116
  %4661 = load i64, i64* %PC.i9
  %4662 = add i64 %4661, 3
  store i64 %4662, i64* %PC.i9
  %4663 = inttoptr i64 %4660 to i32*
  %4664 = load i32, i32* %4663
  %4665 = zext i32 %4664 to i64
  store i64 %4665, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_427a96, %struct.Memory** %MEMORY
  %loadMem_427a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 33
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4668 to i64*
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4670 = getelementptr inbounds %struct.GPR, %struct.GPR* %4669, i32 0, i32 5
  %4671 = getelementptr inbounds %struct.Reg, %struct.Reg* %4670, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4671 to i32*
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4673 = getelementptr inbounds %struct.GPR, %struct.GPR* %4672, i32 0, i32 15
  %4674 = getelementptr inbounds %struct.Reg, %struct.Reg* %4673, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %4674 to i64*
  %4675 = load i64, i64* %RBP.i8
  %4676 = sub i64 %4675, 4
  %4677 = load i32, i32* %ECX.i
  %4678 = zext i32 %4677 to i64
  %4679 = load i64, i64* %PC.i7
  %4680 = add i64 %4679, 3
  store i64 %4680, i64* %PC.i7
  %4681 = inttoptr i64 %4676 to i32*
  store i32 %4677, i32* %4681
  store %struct.Memory* %loadMem_427a99, %struct.Memory** %MEMORY
  br label %block_.L_427a9c

block_.L_427a9c:                                  ; preds = %block_.L_427a8a, %block_427725
  %loadMem_427a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4683 = getelementptr inbounds %struct.GPR, %struct.GPR* %4682, i32 0, i32 33
  %4684 = getelementptr inbounds %struct.Reg, %struct.Reg* %4683, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4684 to i64*
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4686 = getelementptr inbounds %struct.GPR, %struct.GPR* %4685, i32 0, i32 1
  %4687 = getelementptr inbounds %struct.Reg, %struct.Reg* %4686, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4687 to i64*
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 15
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %4690 to i64*
  %4691 = load i64, i64* %RBP.i6
  %4692 = sub i64 %4691, 4
  %4693 = load i64, i64* %PC.i5
  %4694 = add i64 %4693, 3
  store i64 %4694, i64* %PC.i5
  %4695 = inttoptr i64 %4692 to i32*
  %4696 = load i32, i32* %4695
  %4697 = zext i32 %4696 to i64
  store i64 %4697, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_427a9c, %struct.Memory** %MEMORY
  %loadMem_427a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4699 = getelementptr inbounds %struct.GPR, %struct.GPR* %4698, i32 0, i32 33
  %4700 = getelementptr inbounds %struct.Reg, %struct.Reg* %4699, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4700 to i64*
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4702 = getelementptr inbounds %struct.GPR, %struct.GPR* %4701, i32 0, i32 13
  %4703 = getelementptr inbounds %struct.Reg, %struct.Reg* %4702, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4703 to i64*
  %4704 = load i64, i64* %RSP.i
  %4705 = load i64, i64* %PC.i4
  %4706 = add i64 %4705, 7
  store i64 %4706, i64* %PC.i4
  %4707 = add i64 128, %4704
  store i64 %4707, i64* %RSP.i, align 8
  %4708 = icmp ult i64 %4707, %4704
  %4709 = icmp ult i64 %4707, 128
  %4710 = or i1 %4708, %4709
  %4711 = zext i1 %4710 to i8
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4711, i8* %4712, align 1
  %4713 = trunc i64 %4707 to i32
  %4714 = and i32 %4713, 255
  %4715 = call i32 @llvm.ctpop.i32(i32 %4714)
  %4716 = trunc i32 %4715 to i8
  %4717 = and i8 %4716, 1
  %4718 = xor i8 %4717, 1
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4718, i8* %4719, align 1
  %4720 = xor i64 128, %4704
  %4721 = xor i64 %4720, %4707
  %4722 = lshr i64 %4721, 4
  %4723 = trunc i64 %4722 to i8
  %4724 = and i8 %4723, 1
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4724, i8* %4725, align 1
  %4726 = icmp eq i64 %4707, 0
  %4727 = zext i1 %4726 to i8
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4727, i8* %4728, align 1
  %4729 = lshr i64 %4707, 63
  %4730 = trunc i64 %4729 to i8
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4730, i8* %4731, align 1
  %4732 = lshr i64 %4704, 63
  %4733 = xor i64 %4729, %4732
  %4734 = add i64 %4733, %4729
  %4735 = icmp eq i64 %4734, 2
  %4736 = zext i1 %4735 to i8
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4736, i8* %4737, align 1
  store %struct.Memory* %loadMem_427a9f, %struct.Memory** %MEMORY
  %loadMem_427aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 33
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4740 to i64*
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 15
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4743 to i64*
  %4744 = load i64, i64* %PC.i2
  %4745 = add i64 %4744, 1
  store i64 %4745, i64* %PC.i2
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4747 = load i64, i64* %4746, align 8
  %4748 = add i64 %4747, 8
  %4749 = inttoptr i64 %4747 to i64*
  %4750 = load i64, i64* %4749
  store i64 %4750, i64* %RBP.i3, align 8
  store i64 %4748, i64* %4746, align 8
  store %struct.Memory* %loadMem_427aa6, %struct.Memory** %MEMORY
  %loadMem_427aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 33
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4753 to i64*
  %4754 = load i64, i64* %PC.i1
  %4755 = add i64 %4754, 1
  store i64 %4755, i64* %PC.i1
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4758 = load i64, i64* %4757, align 8
  %4759 = inttoptr i64 %4758 to i64*
  %4760 = load i64, i64* %4759
  store i64 %4760, i64* %4756, align 8
  %4761 = add i64 %4758, 8
  store i64 %4761, i64* %4757, align 8
  store %struct.Memory* %loadMem_427aa7, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_427aa7
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

define %struct.Memory* @routine_movsd_0x2d1d5__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x2d1d5__rip__type* @G_0x2d1d5__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x2d1d5__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x2d1d5__rip__type* @G_0x2d1d5__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x2d1d5__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x2d1d5__rip__type* @G_0x2d1d5__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x2d1d5__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x2d1d5__rip__type* @G_0x2d1d5__rip_ to i64)
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

define %struct.Memory* @routine_movl__0x4__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 4, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 80
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 104
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

define %struct.Memory* @routine_movl__0x0__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 116
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jne_.L_427731(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_427a9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x4583c6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4583c6_type* @G__0x4583c6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x64___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 100, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
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

define %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 1
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

define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
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

define %struct.Memory* @routine_jg_.L_427789(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_427760(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_mulsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 112
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
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
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

define %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
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

define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_jbe_.L_42781e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_0x2cff8__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x2cff8__rip__type* @G_0x2cff8__rip_ to i64)
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

define %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
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

define %struct.Memory* @routine_callq_.floor_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_427825(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x2d09b__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x2d09b__rip__type* @G_0x2d09b__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 68
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

define %struct.Memory* @routine_jg_.L_427a32(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4279cb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x662070___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x662070_type* @G__0x662070 to i64), i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 92, %15
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

define %struct.Memory* @routine_subl_MINUS0x20__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_addl_MINUS0x24__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 48
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

define %struct.Memory* @routine_jle_.L_4278e9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 52
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

define %struct.Memory* @routine_jl_.L_427966(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 36
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

define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 56
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

define %struct.Memory* @routine_jle_.L_427966(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 44
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

define %struct.Memory* @routine_jg_.L_427947(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
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

define %struct.Memory* @routine_movl__0x1____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  store i32 1, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42790a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_427994(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jle_.L_42798f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_4279b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4279bd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_427888(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jl_.L_427a1f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jg_.L_427a1a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4279dd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_427a1f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_427a24(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_427858(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jg_.L_427a8a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_427a77(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x676ffc___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x676ffc_type* @G_0x676ffc to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl____rdx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
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

define %struct.Memory* @routine_jmpq_.L_427a7c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_427a39(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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
