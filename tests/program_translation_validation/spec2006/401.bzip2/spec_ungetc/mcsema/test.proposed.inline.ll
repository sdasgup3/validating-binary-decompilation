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
%G_0x618d70_type = type <{ [4 x i8] }>
%G_0x618d80_type = type <{ [8 x i8] }>
%G__0x4164f1_type = type <{ [8 x i8] }>
%G__0x4166ea_type = type <{ [8 x i8] }>
%G__0x416767_type = type <{ [8 x i8] }>
%G__0x41677a_type = type <{ [8 x i8] }>
%G__0x416794_type = type <{ [8 x i8] }>
%G__0x6195e0_type = type <{ [8 x i8] }>
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
@G_0x618d70 = global %G_0x618d70_type zeroinitializer
@G_0x618d80 = global %G_0x618d80_type zeroinitializer
@G__0x4164f1 = global %G__0x4164f1_type zeroinitializer
@G__0x4166ea = global %G__0x4166ea_type zeroinitializer
@G__0x416767 = global %G__0x416767_type zeroinitializer
@G__0x41677a = global %G__0x41677a_type zeroinitializer
@G__0x416794 = global %G__0x416794_type zeroinitializer
@G__0x6195e0 = global %G__0x6195e0_type zeroinitializer

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
define %struct.Memory* @spec_ungetc(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_414ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_414ce0, %struct.Memory** %MEMORY
  %loadMem_414ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i10 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i10
  %27 = load i64, i64* %PC.i9
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i9
  store i64 %26, i64* %RBP.i11, align 8
  store %struct.Memory* %loadMem_414ce1, %struct.Memory** %MEMORY
  %loadMem_414ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i23 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i23
  %36 = load i64, i64* %PC.i22
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i22
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i23, align 8
  %39 = icmp ult i64 %35, 32
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
  %49 = xor i64 32, %35
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
  store %struct.Memory* %loadMem_414ce4, %struct.Memory** %MEMORY
  %loadMem_414ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %73 = bitcast %union.anon* %72 to %struct.anon.2*
  %AL.i31 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %73, i32 0, i32 0
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %75 = getelementptr inbounds %struct.GPR, %struct.GPR* %74, i32 0, i32 11
  %76 = getelementptr inbounds %struct.Reg, %struct.Reg* %75, i32 0, i32 0
  %77 = bitcast %union.anon* %76 to %struct.anon.2*
  %DIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %77, i32 0, i32 0
  %78 = load i8, i8* %DIL.i
  %79 = zext i8 %78 to i64
  %80 = load i64, i64* %PC.i30
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i30
  store i8 %78, i8* %AL.i31, align 1
  store %struct.Memory* %loadMem_414ce8, %struct.Memory** %MEMORY
  %loadMem_414ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 11
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RDI.i83 = bitcast %union.anon* %87 to i64*
  %88 = load i64, i64* %PC.i82
  %89 = add i64 %88, 5
  store i64 %89, i64* %PC.i82
  store i64 4, i64* %RDI.i83, align 8
  store %struct.Memory* %loadMem_414ceb, %struct.Memory** %MEMORY
  %loadMem_414cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 33
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %92 to i64*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %96 = bitcast %union.anon* %95 to %struct.anon.2*
  %AL.i92 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %96, i32 0, i32 0
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i93
  %101 = sub i64 %100, 1
  %102 = load i8, i8* %AL.i92
  %103 = zext i8 %102 to i64
  %104 = load i64, i64* %PC.i91
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC.i91
  %106 = inttoptr i64 %101 to i8*
  store i8 %102, i8* %106
  store %struct.Memory* %loadMem_414cf0, %struct.Memory** %MEMORY
  %loadMem_414cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 9
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %ESI.i128 = bitcast %union.anon* %112 to i32*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 15
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RBP.i129
  %117 = sub i64 %116, 8
  %118 = load i32, i32* %ESI.i128
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* %PC.i127
  %121 = add i64 %120, 3
  store i64 %121, i64* %PC.i127
  %122 = inttoptr i64 %117 to i32*
  store i32 %118, i32* %122
  store %struct.Memory* %loadMem_414cf3, %struct.Memory** %MEMORY
  %loadMem_414cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 15
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %128 to i64*
  %129 = load i64, i64* %RBP.i138
  %130 = sub i64 %129, 12
  %131 = load i64, i64* %PC.i137
  %132 = add i64 %131, 7
  store i64 %132, i64* %PC.i137
  %133 = inttoptr i64 %130 to i32*
  store i32 0, i32* %133
  store %struct.Memory* %loadMem_414cf6, %struct.Memory** %MEMORY
  %loadMem_414cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 11
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %EDI.i156 = bitcast %union.anon* %139 to i32*
  %140 = load i32, i32* %EDI.i156
  %141 = zext i32 %140 to i64
  %142 = load i64, i64* %PC.i155
  %143 = add i64 %142, 7
  store i64 %143, i64* %PC.i155
  %144 = load i32, i32* bitcast (%G_0x618d70_type* @G_0x618d70 to i32*)
  %145 = sub i32 %140, %144
  %146 = icmp ult i32 %140, %144
  %147 = zext i1 %146 to i8
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %147, i8* %148, align 1
  %149 = and i32 %145, 255
  %150 = call i32 @llvm.ctpop.i32(i32 %149)
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  %153 = xor i8 %152, 1
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %153, i8* %154, align 1
  %155 = xor i32 %144, %140
  %156 = xor i32 %155, %145
  %157 = lshr i32 %156, 4
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %159, i8* %160, align 1
  %161 = icmp eq i32 %145, 0
  %162 = zext i1 %161 to i8
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %162, i8* %163, align 1
  %164 = lshr i32 %145, 31
  %165 = trunc i32 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %165, i8* %166, align 1
  %167 = lshr i32 %140, 31
  %168 = lshr i32 %144, 31
  %169 = xor i32 %168, %167
  %170 = xor i32 %164, %167
  %171 = add i32 %170, %169
  %172 = icmp eq i32 %171, 2
  %173 = zext i1 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %173, i8* %174, align 1
  store %struct.Memory* %loadMem_414cfd, %struct.Memory** %MEMORY
  %loadMem_414d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 33
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %177 to i64*
  %178 = load i64, i64* %PC.i165
  %179 = add i64 %178, 29
  %180 = load i64, i64* %PC.i165
  %181 = add i64 %180, 6
  %182 = load i64, i64* %PC.i165
  %183 = add i64 %182, 6
  store i64 %183, i64* %PC.i165
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %185 = load i8, i8* %184, align 1
  %186 = icmp ne i8 %185, 0
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %188 = load i8, i8* %187, align 1
  %189 = icmp ne i8 %188, 0
  %190 = xor i1 %186, %189
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %BRANCH_TAKEN, align 1
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %194 = select i1 %190, i64 %181, i64 %179
  store i64 %194, i64* %193, align 8
  store %struct.Memory* %loadMem_414d04, %struct.Memory** %MEMORY
  %loadBr_414d04 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414d04 = icmp eq i8 %loadBr_414d04, 1
  br i1 %cmpBr_414d04, label %block_.L_414d21, label %block_414d0a

block_414d0a:                                     ; preds = %entry
  %loadMem_414d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 33
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %197 to i64*
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 11
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %RDI.i164 = bitcast %union.anon* %200 to i64*
  %201 = load i64, i64* %PC.i163
  %202 = add i64 %201, 10
  store i64 %202, i64* %PC.i163
  store i64 ptrtoint (%G__0x416767_type* @G__0x416767 to i64), i64* %RDI.i164, align 8
  store %struct.Memory* %loadMem_414d0a, %struct.Memory** %MEMORY
  %loadMem_414d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 9
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %RSI.i161 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 15
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %211 to i64*
  %212 = load i64, i64* %RBP.i162
  %213 = sub i64 %212, 8
  %214 = load i64, i64* %PC.i160
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC.i160
  %216 = inttoptr i64 %213 to i32*
  %217 = load i32, i32* %216
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RSI.i161, align 8
  store %struct.Memory* %loadMem_414d14, %struct.Memory** %MEMORY
  %loadMem_414d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 33
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %225 = bitcast %union.anon* %224 to %struct.anon.2*
  %AL.i159 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %225, i32 0, i32 0
  %226 = load i64, i64* %PC.i158
  %227 = add i64 %226, 2
  store i64 %227, i64* %PC.i158
  store i8 0, i8* %AL.i159, align 1
  store %struct.Memory* %loadMem_414d17, %struct.Memory** %MEMORY
  %loadMem1_414d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 33
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %PC.i157
  %232 = add i64 %231, -83001
  %233 = load i64, i64* %PC.i157
  %234 = add i64 %233, 5
  %235 = load i64, i64* %PC.i157
  %236 = add i64 %235, 5
  store i64 %236, i64* %PC.i157
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = add i64 %238, -8
  %240 = inttoptr i64 %239 to i64*
  store i64 %234, i64* %240
  store i64 %239, i64* %237, align 8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %232, i64* %241, align 8
  store %struct.Memory* %loadMem1_414d19, %struct.Memory** %MEMORY
  %loadMem2_414d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414d19 = load i64, i64* %3
  %242 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_414d19)
  store %struct.Memory* %242, %struct.Memory** %MEMORY
  %loadMem_414d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 33
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %245 to i64*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %EAX.i153 = bitcast %union.anon* %248 to i32*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 15
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %251 to i64*
  %252 = load i64, i64* %RBP.i154
  %253 = sub i64 %252, 16
  %254 = load i32, i32* %EAX.i153
  %255 = zext i32 %254 to i64
  %256 = load i64, i64* %PC.i152
  %257 = add i64 %256, 3
  store i64 %257, i64* %PC.i152
  %258 = inttoptr i64 %253 to i32*
  store i32 %254, i32* %258
  store %struct.Memory* %loadMem_414d1e, %struct.Memory** %MEMORY
  br label %block_.L_414d21

block_.L_414d21:                                  ; preds = %block_414d0a, %entry
  %loadMem_414d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 33
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %261 to i64*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 15
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %264 to i64*
  %265 = load i64, i64* %RBP.i151
  %266 = sub i64 %265, 8
  %267 = load i64, i64* %PC.i150
  %268 = add i64 %267, 4
  store i64 %268, i64* %PC.i150
  %269 = inttoptr i64 %266 to i32*
  %270 = load i32, i32* %269
  %271 = sub i32 %270, 3
  %272 = icmp ult i32 %270, 3
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
  %281 = xor i32 %270, 3
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
  store %struct.Memory* %loadMem_414d21, %struct.Memory** %MEMORY
  %loadMem_414d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 33
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %301 to i64*
  %302 = load i64, i64* %PC.i149
  %303 = add i64 %302, 44
  %304 = load i64, i64* %PC.i149
  %305 = add i64 %304, 6
  %306 = load i64, i64* %PC.i149
  %307 = add i64 %306, 6
  store i64 %307, i64* %PC.i149
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %309 = load i8, i8* %308, align 1
  %310 = icmp ne i8 %309, 0
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %312 = load i8, i8* %311, align 1
  %313 = icmp ne i8 %312, 0
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %315 = load i8, i8* %314, align 1
  %316 = icmp ne i8 %315, 0
  %317 = xor i1 %313, %316
  %318 = or i1 %310, %317
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %BRANCH_TAKEN, align 1
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %321 = select i1 %318, i64 %303, i64 %305
  store i64 %321, i64* %320, align 8
  store %struct.Memory* %loadMem_414d25, %struct.Memory** %MEMORY
  %loadBr_414d25 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414d25 = icmp eq i8 %loadBr_414d25, 1
  br i1 %cmpBr_414d25, label %block_.L_414d51, label %block_414d2b

block_414d2b:                                     ; preds = %block_.L_414d21
  %loadMem_414d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 33
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %324 to i64*
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 9
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %RSI.i148 = bitcast %union.anon* %327 to i64*
  %328 = load i64, i64* %PC.i147
  %329 = add i64 %328, 10
  store i64 %329, i64* %PC.i147
  store i64 ptrtoint (%G__0x4166ea_type* @G__0x4166ea to i64), i64* %RSI.i148, align 8
  store %struct.Memory* %loadMem_414d2b, %struct.Memory** %MEMORY
  %loadMem_414d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 33
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %332 to i64*
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %334 = getelementptr inbounds %struct.GPR, %struct.GPR* %333, i32 0, i32 11
  %335 = getelementptr inbounds %struct.Reg, %struct.Reg* %334, i32 0, i32 0
  %RDI.i146 = bitcast %union.anon* %335 to i64*
  %336 = load i64, i64* %PC.i145
  %337 = add i64 %336, 8
  store i64 %337, i64* %PC.i145
  %338 = load i64, i64* bitcast (%G_0x618d80_type* @G_0x618d80 to i64*)
  store i64 %338, i64* %RDI.i146, align 8
  store %struct.Memory* %loadMem_414d35, %struct.Memory** %MEMORY
  %loadMem_414d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 33
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %341 to i64*
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 7
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %RDX.i143 = bitcast %union.anon* %344 to i64*
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 15
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %347 to i64*
  %348 = load i64, i64* %RBP.i144
  %349 = sub i64 %348, 8
  %350 = load i64, i64* %PC.i142
  %351 = add i64 %350, 3
  store i64 %351, i64* %PC.i142
  %352 = inttoptr i64 %349 to i32*
  %353 = load i32, i32* %352
  %354 = zext i32 %353 to i64
  store i64 %354, i64* %RDX.i143, align 8
  store %struct.Memory* %loadMem_414d3d, %struct.Memory** %MEMORY
  %loadMem_414d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 33
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %357 to i64*
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %361 = bitcast %union.anon* %360 to %struct.anon.2*
  %AL.i141 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %361, i32 0, i32 0
  %362 = load i64, i64* %PC.i140
  %363 = add i64 %362, 2
  store i64 %363, i64* %PC.i140
  store i8 0, i8* %AL.i141, align 1
  store %struct.Memory* %loadMem_414d40, %struct.Memory** %MEMORY
  %loadMem1_414d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %PC.i139
  %368 = add i64 %367, -82962
  %369 = load i64, i64* %PC.i139
  %370 = add i64 %369, 5
  %371 = load i64, i64* %PC.i139
  %372 = add i64 %371, 5
  store i64 %372, i64* %PC.i139
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = add i64 %374, -8
  %376 = inttoptr i64 %375 to i64*
  store i64 %370, i64* %376
  store i64 %375, i64* %373, align 8
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %368, i64* %377, align 8
  store %struct.Memory* %loadMem1_414d42, %struct.Memory** %MEMORY
  %loadMem2_414d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414d42 = load i64, i64* %3
  %378 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414d42)
  store %struct.Memory* %378, %struct.Memory** %MEMORY
  %loadMem_414d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 33
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %381 to i64*
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 11
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %EDI.i135 = bitcast %union.anon* %384 to i32*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 11
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %RDI.i136 = bitcast %union.anon* %387 to i64*
  %388 = load i64, i64* %RDI.i136
  %389 = load i32, i32* %EDI.i135
  %390 = zext i32 %389 to i64
  %391 = load i64, i64* %PC.i134
  %392 = add i64 %391, 2
  store i64 %392, i64* %PC.i134
  %393 = xor i64 %390, %388
  %394 = trunc i64 %393 to i32
  %395 = and i64 %393, 4294967295
  store i64 %395, i64* %RDI.i136, align 8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %396, align 1
  %397 = and i32 %394, 255
  %398 = call i32 @llvm.ctpop.i32(i32 %397)
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %401, i8* %402, align 1
  %403 = icmp eq i32 %394, 0
  %404 = zext i1 %403 to i8
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %404, i8* %405, align 1
  %406 = lshr i32 %394, 31
  %407 = trunc i32 %406 to i8
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %407, i8* %408, align 1
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %409, align 1
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %410, align 1
  store %struct.Memory* %loadMem_414d47, %struct.Memory** %MEMORY
  %loadMem_414d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %EAX.i132 = bitcast %union.anon* %416 to i32*
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 15
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %419 to i64*
  %420 = load i64, i64* %RBP.i133
  %421 = sub i64 %420, 20
  %422 = load i32, i32* %EAX.i132
  %423 = zext i32 %422 to i64
  %424 = load i64, i64* %PC.i131
  %425 = add i64 %424, 3
  store i64 %425, i64* %PC.i131
  %426 = inttoptr i64 %421 to i32*
  store i32 %422, i32* %426
  store %struct.Memory* %loadMem_414d49, %struct.Memory** %MEMORY
  %loadMem1_414d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 33
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %429 to i64*
  %430 = load i64, i64* %PC.i130
  %431 = add i64 %430, -82860
  %432 = load i64, i64* %PC.i130
  %433 = add i64 %432, 5
  %434 = load i64, i64* %PC.i130
  %435 = add i64 %434, 5
  store i64 %435, i64* %PC.i130
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = add i64 %437, -8
  %439 = inttoptr i64 %438 to i64*
  store i64 %433, i64* %439
  store i64 %438, i64* %436, align 8
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %431, i64* %440, align 8
  store %struct.Memory* %loadMem1_414d4c, %struct.Memory** %MEMORY
  %loadMem2_414d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414d4c = load i64, i64* %3
  %441 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %loadMem2_414d4c)
  store %struct.Memory* %441, %struct.Memory** %MEMORY
  br label %block_.L_414d51

block_.L_414d51:                                  ; preds = %block_414d2b, %block_.L_414d21
  %loadMem_414d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 33
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %444 to i64*
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 1
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %447 to i64*
  %448 = load i64, i64* %PC.i125
  %449 = add i64 %448, 10
  store i64 %449, i64* %PC.i125
  store i64 ptrtoint (%G__0x6195e0_type* @G__0x6195e0 to i64), i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_414d51, %struct.Memory** %MEMORY
  %loadMem_414d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 33
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %452 to i64*
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 5
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %455 to i64*
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 15
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %458 to i64*
  %459 = load i64, i64* %RBP.i124
  %460 = sub i64 %459, 8
  %461 = load i64, i64* %PC.i122
  %462 = add i64 %461, 4
  store i64 %462, i64* %PC.i122
  %463 = inttoptr i64 %460 to i32*
  %464 = load i32, i32* %463
  %465 = sext i32 %464 to i64
  store i64 %465, i64* %RCX.i123, align 8
  store %struct.Memory* %loadMem_414d5b, %struct.Memory** %MEMORY
  %loadMem_414d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 33
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 5
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %471 to i64*
  %472 = load i64, i64* %RCX.i121
  %473 = load i64, i64* %PC.i120
  %474 = add i64 %473, 4
  store i64 %474, i64* %PC.i120
  %475 = sext i64 %472 to i128
  %476 = and i128 %475, -18446744073709551616
  %477 = zext i64 %472 to i128
  %478 = or i128 %476, %477
  %479 = mul i128 24, %478
  %480 = trunc i128 %479 to i64
  store i64 %480, i64* %RCX.i121, align 8
  %481 = sext i64 %480 to i128
  %482 = icmp ne i128 %481, %479
  %483 = zext i1 %482 to i8
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %483, i8* %484, align 1
  %485 = trunc i128 %479 to i32
  %486 = and i32 %485, 255
  %487 = call i32 @llvm.ctpop.i32(i32 %486)
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %490, i8* %491, align 1
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %492, align 1
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %493, align 1
  %494 = lshr i64 %480, 63
  %495 = trunc i64 %494 to i8
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %495, i8* %496, align 1
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %483, i8* %497, align 1
  store %struct.Memory* %loadMem_414d5f, %struct.Memory** %MEMORY
  %loadMem_414d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 33
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 5
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %RAX.i118
  %508 = load i64, i64* %RCX.i119
  %509 = load i64, i64* %PC.i117
  %510 = add i64 %509, 3
  store i64 %510, i64* %PC.i117
  %511 = add i64 %508, %507
  store i64 %511, i64* %RAX.i118, align 8
  %512 = icmp ult i64 %511, %507
  %513 = icmp ult i64 %511, %508
  %514 = or i1 %512, %513
  %515 = zext i1 %514 to i8
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %515, i8* %516, align 1
  %517 = trunc i64 %511 to i32
  %518 = and i32 %517, 255
  %519 = call i32 @llvm.ctpop.i32(i32 %518)
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  %522 = xor i8 %521, 1
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %522, i8* %523, align 1
  %524 = xor i64 %508, %507
  %525 = xor i64 %524, %511
  %526 = lshr i64 %525, 4
  %527 = trunc i64 %526 to i8
  %528 = and i8 %527, 1
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %528, i8* %529, align 1
  %530 = icmp eq i64 %511, 0
  %531 = zext i1 %530 to i8
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %531, i8* %532, align 1
  %533 = lshr i64 %511, 63
  %534 = trunc i64 %533 to i8
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %534, i8* %535, align 1
  %536 = lshr i64 %507, 63
  %537 = lshr i64 %508, 63
  %538 = xor i64 %533, %536
  %539 = xor i64 %533, %537
  %540 = add i64 %538, %539
  %541 = icmp eq i64 %540, 2
  %542 = zext i1 %541 to i8
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %542, i8* %543, align 1
  store %struct.Memory* %loadMem_414d63, %struct.Memory** %MEMORY
  %loadMem_414d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 33
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 1
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %549 to i64*
  %550 = load i64, i64* %RAX.i116
  %551 = add i64 %550, 8
  %552 = load i64, i64* %PC.i115
  %553 = add i64 %552, 4
  store i64 %553, i64* %PC.i115
  %554 = inttoptr i64 %551 to i32*
  %555 = load i32, i32* %554
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %556, align 1
  %557 = and i32 %555, 255
  %558 = call i32 @llvm.ctpop.i32(i32 %557)
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = xor i8 %560, 1
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %561, i8* %562, align 1
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %563, align 1
  %564 = icmp eq i32 %555, 0
  %565 = zext i1 %564 to i8
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %565, i8* %566, align 1
  %567 = lshr i32 %555, 31
  %568 = trunc i32 %567 to i8
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %568, i8* %569, align 1
  %570 = lshr i32 %555, 31
  %571 = xor i32 %567, %570
  %572 = add i32 %571, %570
  %573 = icmp eq i32 %572, 2
  %574 = zext i1 %573 to i8
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %574, i8* %575, align 1
  store %struct.Memory* %loadMem_414d66, %struct.Memory** %MEMORY
  %loadMem_414d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 33
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %578 to i64*
  %579 = load i64, i64* %PC.i114
  %580 = add i64 %579, 65
  %581 = load i64, i64* %PC.i114
  %582 = add i64 %581, 6
  %583 = load i64, i64* %PC.i114
  %584 = add i64 %583, 6
  store i64 %584, i64* %PC.i114
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %586 = load i8, i8* %585, align 1
  %587 = icmp eq i8 %586, 0
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %589 = load i8, i8* %588, align 1
  %590 = icmp ne i8 %589, 0
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %592 = load i8, i8* %591, align 1
  %593 = icmp ne i8 %592, 0
  %594 = xor i1 %590, %593
  %595 = xor i1 %594, true
  %596 = and i1 %587, %595
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %BRANCH_TAKEN, align 1
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %599 = select i1 %596, i64 %580, i64 %582
  store i64 %599, i64* %598, align 8
  store %struct.Memory* %loadMem_414d6a, %struct.Memory** %MEMORY
  %loadBr_414d6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414d6a = icmp eq i8 %loadBr_414d6a, 1
  br i1 %cmpBr_414d6a, label %block_.L_414dab, label %block_414d70

block_414d70:                                     ; preds = %block_.L_414d51
  %loadMem_414d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 33
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 9
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %RSI.i113 = bitcast %union.anon* %605 to i64*
  %606 = load i64, i64* %PC.i112
  %607 = add i64 %606, 10
  store i64 %607, i64* %PC.i112
  store i64 ptrtoint (%G__0x41677a_type* @G__0x41677a to i64), i64* %RSI.i113, align 8
  store %struct.Memory* %loadMem_414d70, %struct.Memory** %MEMORY
  %loadMem_414d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 33
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %610 to i64*
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 1
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %613 to i64*
  %614 = load i64, i64* %PC.i110
  %615 = add i64 %614, 10
  store i64 %615, i64* %PC.i110
  store i64 ptrtoint (%G__0x6195e0_type* @G__0x6195e0 to i64), i64* %RAX.i111, align 8
  store %struct.Memory* %loadMem_414d7a, %struct.Memory** %MEMORY
  %loadMem_414d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 33
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %618 to i64*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 11
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %RDI.i109 = bitcast %union.anon* %621 to i64*
  %622 = load i64, i64* %PC.i108
  %623 = add i64 %622, 8
  store i64 %623, i64* %PC.i108
  %624 = load i64, i64* bitcast (%G_0x618d80_type* @G_0x618d80 to i64*)
  store i64 %624, i64* %RDI.i109, align 8
  store %struct.Memory* %loadMem_414d84, %struct.Memory** %MEMORY
  %loadMem_414d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 33
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 5
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %RCX.i106 = bitcast %union.anon* %630 to i64*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 15
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %633 to i64*
  %634 = load i64, i64* %RBP.i107
  %635 = sub i64 %634, 8
  %636 = load i64, i64* %PC.i105
  %637 = add i64 %636, 4
  store i64 %637, i64* %PC.i105
  %638 = inttoptr i64 %635 to i32*
  %639 = load i32, i32* %638
  %640 = sext i32 %639 to i64
  store i64 %640, i64* %RCX.i106, align 8
  store %struct.Memory* %loadMem_414d8c, %struct.Memory** %MEMORY
  %loadMem_414d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %642 = getelementptr inbounds %struct.GPR, %struct.GPR* %641, i32 0, i32 33
  %643 = getelementptr inbounds %struct.Reg, %struct.Reg* %642, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %643 to i64*
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 5
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %RCX.i104 = bitcast %union.anon* %646 to i64*
  %647 = load i64, i64* %RCX.i104
  %648 = load i64, i64* %PC.i103
  %649 = add i64 %648, 4
  store i64 %649, i64* %PC.i103
  %650 = sext i64 %647 to i128
  %651 = and i128 %650, -18446744073709551616
  %652 = zext i64 %647 to i128
  %653 = or i128 %651, %652
  %654 = mul i128 24, %653
  %655 = trunc i128 %654 to i64
  store i64 %655, i64* %RCX.i104, align 8
  %656 = sext i64 %655 to i128
  %657 = icmp ne i128 %656, %654
  %658 = zext i1 %657 to i8
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %658, i8* %659, align 1
  %660 = trunc i128 %654 to i32
  %661 = and i32 %660, 255
  %662 = call i32 @llvm.ctpop.i32(i32 %661)
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  %665 = xor i8 %664, 1
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %665, i8* %666, align 1
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %667, align 1
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %668, align 1
  %669 = lshr i64 %655, 63
  %670 = trunc i64 %669 to i8
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %670, i8* %671, align 1
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %658, i8* %672, align 1
  store %struct.Memory* %loadMem_414d90, %struct.Memory** %MEMORY
  %loadMem_414d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 33
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %675 to i64*
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 1
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %678 to i64*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 5
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %681 to i64*
  %682 = load i64, i64* %RAX.i101
  %683 = load i64, i64* %RCX.i102
  %684 = load i64, i64* %PC.i100
  %685 = add i64 %684, 3
  store i64 %685, i64* %PC.i100
  %686 = add i64 %683, %682
  store i64 %686, i64* %RAX.i101, align 8
  %687 = icmp ult i64 %686, %682
  %688 = icmp ult i64 %686, %683
  %689 = or i1 %687, %688
  %690 = zext i1 %689 to i8
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %690, i8* %691, align 1
  %692 = trunc i64 %686 to i32
  %693 = and i32 %692, 255
  %694 = call i32 @llvm.ctpop.i32(i32 %693)
  %695 = trunc i32 %694 to i8
  %696 = and i8 %695, 1
  %697 = xor i8 %696, 1
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %697, i8* %698, align 1
  %699 = xor i64 %683, %682
  %700 = xor i64 %699, %686
  %701 = lshr i64 %700, 4
  %702 = trunc i64 %701 to i8
  %703 = and i8 %702, 1
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %703, i8* %704, align 1
  %705 = icmp eq i64 %686, 0
  %706 = zext i1 %705 to i8
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %706, i8* %707, align 1
  %708 = lshr i64 %686, 63
  %709 = trunc i64 %708 to i8
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %709, i8* %710, align 1
  %711 = lshr i64 %682, 63
  %712 = lshr i64 %683, 63
  %713 = xor i64 %708, %711
  %714 = xor i64 %708, %712
  %715 = add i64 %713, %714
  %716 = icmp eq i64 %715, 2
  %717 = zext i1 %716 to i8
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %717, i8* %718, align 1
  store %struct.Memory* %loadMem_414d94, %struct.Memory** %MEMORY
  %loadMem_414d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 33
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %721 to i64*
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 1
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %724 to i64*
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 7
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %RDX.i99 = bitcast %union.anon* %727 to i64*
  %728 = load i64, i64* %RAX.i98
  %729 = add i64 %728, 8
  %730 = load i64, i64* %PC.i97
  %731 = add i64 %730, 3
  store i64 %731, i64* %PC.i97
  %732 = inttoptr i64 %729 to i32*
  %733 = load i32, i32* %732
  %734 = zext i32 %733 to i64
  store i64 %734, i64* %RDX.i99, align 8
  store %struct.Memory* %loadMem_414d97, %struct.Memory** %MEMORY
  %loadMem_414d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 33
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %737 to i64*
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 1
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %741 = bitcast %union.anon* %740 to %struct.anon.2*
  %AL.i96 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %741, i32 0, i32 0
  %742 = load i64, i64* %PC.i95
  %743 = add i64 %742, 2
  store i64 %743, i64* %PC.i95
  store i8 0, i8* %AL.i96, align 1
  store %struct.Memory* %loadMem_414d9a, %struct.Memory** %MEMORY
  %loadMem1_414d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 33
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %746 to i64*
  %747 = load i64, i64* %PC.i94
  %748 = add i64 %747, -83052
  %749 = load i64, i64* %PC.i94
  %750 = add i64 %749, 5
  %751 = load i64, i64* %PC.i94
  %752 = add i64 %751, 5
  store i64 %752, i64* %PC.i94
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %754 = load i64, i64* %753, align 8
  %755 = add i64 %754, -8
  %756 = inttoptr i64 %755 to i64*
  store i64 %750, i64* %756
  store i64 %755, i64* %753, align 8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %748, i64* %757, align 8
  store %struct.Memory* %loadMem1_414d9c, %struct.Memory** %MEMORY
  %loadMem2_414d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414d9c = load i64, i64* %3
  %758 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414d9c)
  store %struct.Memory* %758, %struct.Memory** %MEMORY
  %loadMem_414da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 33
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %761 to i64*
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 11
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %EDI.i89 = bitcast %union.anon* %764 to i32*
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 11
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %RDI.i90 = bitcast %union.anon* %767 to i64*
  %768 = load i64, i64* %RDI.i90
  %769 = load i32, i32* %EDI.i89
  %770 = zext i32 %769 to i64
  %771 = load i64, i64* %PC.i88
  %772 = add i64 %771, 2
  store i64 %772, i64* %PC.i88
  %773 = xor i64 %770, %768
  %774 = trunc i64 %773 to i32
  %775 = and i64 %773, 4294967295
  store i64 %775, i64* %RDI.i90, align 8
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %776, align 1
  %777 = and i32 %774, 255
  %778 = call i32 @llvm.ctpop.i32(i32 %777)
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %781, i8* %782, align 1
  %783 = icmp eq i32 %774, 0
  %784 = zext i1 %783 to i8
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %784, i8* %785, align 1
  %786 = lshr i32 %774, 31
  %787 = trunc i32 %786 to i8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %787, i8* %788, align 1
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %789, align 1
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %790, align 1
  store %struct.Memory* %loadMem_414da1, %struct.Memory** %MEMORY
  %loadMem_414da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 33
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %793 to i64*
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 1
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %EAX.i86 = bitcast %union.anon* %796 to i32*
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 15
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %799 to i64*
  %800 = load i64, i64* %RBP.i87
  %801 = sub i64 %800, 24
  %802 = load i32, i32* %EAX.i86
  %803 = zext i32 %802 to i64
  %804 = load i64, i64* %PC.i85
  %805 = add i64 %804, 3
  store i64 %805, i64* %PC.i85
  %806 = inttoptr i64 %801 to i32*
  store i32 %802, i32* %806
  store %struct.Memory* %loadMem_414da3, %struct.Memory** %MEMORY
  %loadMem1_414da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 33
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %809 to i64*
  %810 = load i64, i64* %PC.i84
  %811 = add i64 %810, -82950
  %812 = load i64, i64* %PC.i84
  %813 = add i64 %812, 5
  %814 = load i64, i64* %PC.i84
  %815 = add i64 %814, 5
  store i64 %815, i64* %PC.i84
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %817 = load i64, i64* %816, align 8
  %818 = add i64 %817, -8
  %819 = inttoptr i64 %818 to i64*
  store i64 %813, i64* %819
  store i64 %818, i64* %816, align 8
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %811, i64* %820, align 8
  store %struct.Memory* %loadMem1_414da6, %struct.Memory** %MEMORY
  %loadMem2_414da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414da6 = load i64, i64* %3
  %821 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %loadMem2_414da6)
  store %struct.Memory* %821, %struct.Memory** %MEMORY
  br label %block_.L_414dab

block_.L_414dab:                                  ; preds = %block_414d70, %block_.L_414d51
  %loadMem_414dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 33
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %824 to i64*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 1
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %827 to i64*
  %828 = load i64, i64* %PC.i80
  %829 = add i64 %828, 10
  store i64 %829, i64* %PC.i80
  store i64 ptrtoint (%G__0x6195e0_type* @G__0x6195e0 to i64), i64* %RAX.i81, align 8
  store %struct.Memory* %loadMem_414dab, %struct.Memory** %MEMORY
  %loadMem_414db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 33
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 5
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %RCX.i78 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 15
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %838 to i64*
  %839 = load i64, i64* %RBP.i79
  %840 = sub i64 %839, 8
  %841 = load i64, i64* %PC.i77
  %842 = add i64 %841, 4
  store i64 %842, i64* %PC.i77
  %843 = inttoptr i64 %840 to i32*
  %844 = load i32, i32* %843
  %845 = sext i32 %844 to i64
  store i64 %845, i64* %RCX.i78, align 8
  store %struct.Memory* %loadMem_414db5, %struct.Memory** %MEMORY
  %loadMem_414db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 33
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 5
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %851 to i64*
  %852 = load i64, i64* %RCX.i76
  %853 = load i64, i64* %PC.i75
  %854 = add i64 %853, 4
  store i64 %854, i64* %PC.i75
  %855 = sext i64 %852 to i128
  %856 = and i128 %855, -18446744073709551616
  %857 = zext i64 %852 to i128
  %858 = or i128 %856, %857
  %859 = mul i128 24, %858
  %860 = trunc i128 %859 to i64
  store i64 %860, i64* %RCX.i76, align 8
  %861 = sext i64 %860 to i128
  %862 = icmp ne i128 %861, %859
  %863 = zext i1 %862 to i8
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %863, i8* %864, align 1
  %865 = trunc i128 %859 to i32
  %866 = and i32 %865, 255
  %867 = call i32 @llvm.ctpop.i32(i32 %866)
  %868 = trunc i32 %867 to i8
  %869 = and i8 %868, 1
  %870 = xor i8 %869, 1
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %870, i8* %871, align 1
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %872, align 1
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %873, align 1
  %874 = lshr i64 %860, 63
  %875 = trunc i64 %874 to i8
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %875, i8* %876, align 1
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %863, i8* %877, align 1
  store %struct.Memory* %loadMem_414db9, %struct.Memory** %MEMORY
  %loadMem_414dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 33
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %880 to i64*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 1
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %883 to i64*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 7
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %RDX.i74 = bitcast %union.anon* %886 to i64*
  %887 = load i64, i64* %RAX.i73
  %888 = load i64, i64* %PC.i72
  %889 = add i64 %888, 3
  store i64 %889, i64* %PC.i72
  store i64 %887, i64* %RDX.i74, align 8
  store %struct.Memory* %loadMem_414dbd, %struct.Memory** %MEMORY
  %loadMem_414dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 33
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %892 to i64*
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 5
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %RCX.i70 = bitcast %union.anon* %895 to i64*
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 7
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %RDX.i71 = bitcast %union.anon* %898 to i64*
  %899 = load i64, i64* %RDX.i71
  %900 = load i64, i64* %RCX.i70
  %901 = load i64, i64* %PC.i69
  %902 = add i64 %901, 3
  store i64 %902, i64* %PC.i69
  %903 = add i64 %900, %899
  store i64 %903, i64* %RDX.i71, align 8
  %904 = icmp ult i64 %903, %899
  %905 = icmp ult i64 %903, %900
  %906 = or i1 %904, %905
  %907 = zext i1 %906 to i8
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %907, i8* %908, align 1
  %909 = trunc i64 %903 to i32
  %910 = and i32 %909, 255
  %911 = call i32 @llvm.ctpop.i32(i32 %910)
  %912 = trunc i32 %911 to i8
  %913 = and i8 %912, 1
  %914 = xor i8 %913, 1
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %914, i8* %915, align 1
  %916 = xor i64 %900, %899
  %917 = xor i64 %916, %903
  %918 = lshr i64 %917, 4
  %919 = trunc i64 %918 to i8
  %920 = and i8 %919, 1
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %920, i8* %921, align 1
  %922 = icmp eq i64 %903, 0
  %923 = zext i1 %922 to i8
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %923, i8* %924, align 1
  %925 = lshr i64 %903, 63
  %926 = trunc i64 %925 to i8
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %926, i8* %927, align 1
  %928 = lshr i64 %899, 63
  %929 = lshr i64 %900, 63
  %930 = xor i64 %925, %928
  %931 = xor i64 %925, %929
  %932 = add i64 %930, %931
  %933 = icmp eq i64 %932, 2
  %934 = zext i1 %933 to i8
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %934, i8* %935, align 1
  store %struct.Memory* %loadMem_414dc0, %struct.Memory** %MEMORY
  %loadMem_414dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 33
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %938 to i64*
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 5
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %941 to i64*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 7
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %RDX.i68 = bitcast %union.anon* %944 to i64*
  %945 = load i64, i64* %RDX.i68
  %946 = add i64 %945, 16
  %947 = load i64, i64* %PC.i66
  %948 = add i64 %947, 4
  store i64 %948, i64* %PC.i66
  %949 = inttoptr i64 %946 to i64*
  %950 = load i64, i64* %949
  store i64 %950, i64* %RCX.i67, align 8
  store %struct.Memory* %loadMem_414dc3, %struct.Memory** %MEMORY
  %loadMem_414dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %953 to i64*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 7
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %RDX.i64 = bitcast %union.anon* %956 to i64*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 15
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %959 to i64*
  %960 = load i64, i64* %RBP.i65
  %961 = sub i64 %960, 8
  %962 = load i64, i64* %PC.i63
  %963 = add i64 %962, 4
  store i64 %963, i64* %PC.i63
  %964 = inttoptr i64 %961 to i32*
  %965 = load i32, i32* %964
  %966 = sext i32 %965 to i64
  store i64 %966, i64* %RDX.i64, align 8
  store %struct.Memory* %loadMem_414dc7, %struct.Memory** %MEMORY
  %loadMem_414dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 33
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %969 to i64*
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 7
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %RDX.i62 = bitcast %union.anon* %972 to i64*
  %973 = load i64, i64* %RDX.i62
  %974 = load i64, i64* %PC.i61
  %975 = add i64 %974, 4
  store i64 %975, i64* %PC.i61
  %976 = sext i64 %973 to i128
  %977 = and i128 %976, -18446744073709551616
  %978 = zext i64 %973 to i128
  %979 = or i128 %977, %978
  %980 = mul i128 24, %979
  %981 = trunc i128 %980 to i64
  store i64 %981, i64* %RDX.i62, align 8
  %982 = sext i64 %981 to i128
  %983 = icmp ne i128 %982, %980
  %984 = zext i1 %983 to i8
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %984, i8* %985, align 1
  %986 = trunc i128 %980 to i32
  %987 = and i32 %986, 255
  %988 = call i32 @llvm.ctpop.i32(i32 %987)
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  %991 = xor i8 %990, 1
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %991, i8* %992, align 1
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %993, align 1
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %994, align 1
  %995 = lshr i64 %981, 63
  %996 = trunc i64 %995 to i8
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %996, i8* %997, align 1
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %984, i8* %998, align 1
  store %struct.Memory* %loadMem_414dcb, %struct.Memory** %MEMORY
  %loadMem_414dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 33
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %1001 to i64*
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 1
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %1004 to i64*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 7
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1007 to i64*
  %1008 = load i64, i64* %RAX.i60
  %1009 = load i64, i64* %RDX.i
  %1010 = load i64, i64* %PC.i59
  %1011 = add i64 %1010, 3
  store i64 %1011, i64* %PC.i59
  %1012 = add i64 %1009, %1008
  store i64 %1012, i64* %RAX.i60, align 8
  %1013 = icmp ult i64 %1012, %1008
  %1014 = icmp ult i64 %1012, %1009
  %1015 = or i1 %1013, %1014
  %1016 = zext i1 %1015 to i8
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1016, i8* %1017, align 1
  %1018 = trunc i64 %1012 to i32
  %1019 = and i32 %1018, 255
  %1020 = call i32 @llvm.ctpop.i32(i32 %1019)
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  %1023 = xor i8 %1022, 1
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1023, i8* %1024, align 1
  %1025 = xor i64 %1009, %1008
  %1026 = xor i64 %1025, %1012
  %1027 = lshr i64 %1026, 4
  %1028 = trunc i64 %1027 to i8
  %1029 = and i8 %1028, 1
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1029, i8* %1030, align 1
  %1031 = icmp eq i64 %1012, 0
  %1032 = zext i1 %1031 to i8
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1032, i8* %1033, align 1
  %1034 = lshr i64 %1012, 63
  %1035 = trunc i64 %1034 to i8
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1035, i8* %1036, align 1
  %1037 = lshr i64 %1008, 63
  %1038 = lshr i64 %1009, 63
  %1039 = xor i64 %1034, %1037
  %1040 = xor i64 %1034, %1038
  %1041 = add i64 %1039, %1040
  %1042 = icmp eq i64 %1041, 2
  %1043 = zext i1 %1042 to i8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1043, i8* %1044, align 1
  store %struct.Memory* %loadMem_414dcf, %struct.Memory** %MEMORY
  %loadMem_414dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 33
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 1
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %1050 to i64*
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 9
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %RSI.i58 = bitcast %union.anon* %1053 to i64*
  %1054 = load i64, i64* %RAX.i57
  %1055 = add i64 %1054, 8
  %1056 = load i64, i64* %PC.i56
  %1057 = add i64 %1056, 3
  store i64 %1057, i64* %PC.i56
  %1058 = inttoptr i64 %1055 to i32*
  %1059 = load i32, i32* %1058
  %1060 = zext i32 %1059 to i64
  store i64 %1060, i64* %RSI.i58, align 8
  store %struct.Memory* %loadMem_414dd2, %struct.Memory** %MEMORY
  %loadMem_414dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 9
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %RSI.i55 = bitcast %union.anon* %1066 to i64*
  %1067 = load i64, i64* %RSI.i55
  %1068 = load i64, i64* %PC.i54
  %1069 = add i64 %1068, 3
  store i64 %1069, i64* %PC.i54
  %1070 = trunc i64 %1067 to i32
  %1071 = add i32 -1, %1070
  %1072 = zext i32 %1071 to i64
  store i64 %1072, i64* %RSI.i55, align 8
  %1073 = icmp ult i32 %1071, %1070
  %1074 = icmp ult i32 %1071, -1
  %1075 = or i1 %1073, %1074
  %1076 = zext i1 %1075 to i8
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1076, i8* %1077, align 1
  %1078 = and i32 %1071, 255
  %1079 = call i32 @llvm.ctpop.i32(i32 %1078)
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  %1082 = xor i8 %1081, 1
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1082, i8* %1083, align 1
  %1084 = xor i64 -1, %1067
  %1085 = trunc i64 %1084 to i32
  %1086 = xor i32 %1085, %1071
  %1087 = lshr i32 %1086, 4
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1089, i8* %1090, align 1
  %1091 = icmp eq i32 %1071, 0
  %1092 = zext i1 %1091 to i8
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1092, i8* %1093, align 1
  %1094 = lshr i32 %1071, 31
  %1095 = trunc i32 %1094 to i8
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1095, i8* %1096, align 1
  %1097 = lshr i32 %1070, 31
  %1098 = xor i32 %1094, %1097
  %1099 = xor i32 %1094, 1
  %1100 = add i32 %1098, %1099
  %1101 = icmp eq i32 %1100, 2
  %1102 = zext i1 %1101 to i8
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1102, i8* %1103, align 1
  store %struct.Memory* %loadMem_414dd5, %struct.Memory** %MEMORY
  %loadMem_414dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 33
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %1106 to i64*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 9
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %ESI.i52 = bitcast %union.anon* %1109 to i32*
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 1
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %1112 to i64*
  %1113 = load i64, i64* %RAX.i53
  %1114 = add i64 %1113, 8
  %1115 = load i32, i32* %ESI.i52
  %1116 = zext i32 %1115 to i64
  %1117 = load i64, i64* %PC.i51
  %1118 = add i64 %1117, 3
  store i64 %1118, i64* %PC.i51
  %1119 = inttoptr i64 %1114 to i32*
  store i32 %1115, i32* %1119
  store %struct.Memory* %loadMem_414dd8, %struct.Memory** %MEMORY
  %loadMem_414ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 33
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 9
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %ESI.i49 = bitcast %union.anon* %1125 to i32*
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 1
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %1128 to i64*
  %1129 = load i32, i32* %ESI.i49
  %1130 = zext i32 %1129 to i64
  %1131 = load i64, i64* %PC.i48
  %1132 = add i64 %1131, 3
  store i64 %1132, i64* %PC.i48
  %1133 = shl i64 %1130, 32
  %1134 = ashr exact i64 %1133, 32
  store i64 %1134, i64* %RAX.i50, align 8
  store %struct.Memory* %loadMem_414ddb, %struct.Memory** %MEMORY
  %loadMem_414dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 33
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %1137 to i64*
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 1
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %1140 to i64*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 5
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %1143 to i64*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 9
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %RSI.i47 = bitcast %union.anon* %1146 to i64*
  %1147 = load i64, i64* %RCX.i
  %1148 = load i64, i64* %RAX.i46
  %1149 = add i64 %1148, %1147
  %1150 = load i64, i64* %PC.i45
  %1151 = add i64 %1150, 4
  store i64 %1151, i64* %PC.i45
  %1152 = inttoptr i64 %1149 to i8*
  %1153 = load i8, i8* %1152
  %1154 = zext i8 %1153 to i64
  store i64 %1154, i64* %RSI.i47, align 8
  store %struct.Memory* %loadMem_414dde, %struct.Memory** %MEMORY
  %loadMem_414de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 33
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 11
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %RDI.i43 = bitcast %union.anon* %1160 to i64*
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 15
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %1163 to i64*
  %1164 = load i64, i64* %RBP.i44
  %1165 = sub i64 %1164, 1
  %1166 = load i64, i64* %PC.i42
  %1167 = add i64 %1166, 4
  store i64 %1167, i64* %PC.i42
  %1168 = inttoptr i64 %1165 to i8*
  %1169 = load i8, i8* %1168
  %1170 = zext i8 %1169 to i64
  store i64 %1170, i64* %RDI.i43, align 8
  store %struct.Memory* %loadMem_414de2, %struct.Memory** %MEMORY
  %loadMem_414de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 33
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %1173 to i64*
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 9
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %1176 to i32*
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 11
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %EDI.i41 = bitcast %union.anon* %1179 to i32*
  %1180 = load i32, i32* %ESI.i
  %1181 = zext i32 %1180 to i64
  %1182 = load i32, i32* %EDI.i41
  %1183 = zext i32 %1182 to i64
  %1184 = load i64, i64* %PC.i40
  %1185 = add i64 %1184, 2
  store i64 %1185, i64* %PC.i40
  %1186 = sub i32 %1180, %1182
  %1187 = icmp ult i32 %1180, %1182
  %1188 = zext i1 %1187 to i8
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1188, i8* %1189, align 1
  %1190 = and i32 %1186, 255
  %1191 = call i32 @llvm.ctpop.i32(i32 %1190)
  %1192 = trunc i32 %1191 to i8
  %1193 = and i8 %1192, 1
  %1194 = xor i8 %1193, 1
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1194, i8* %1195, align 1
  %1196 = xor i64 %1183, %1181
  %1197 = trunc i64 %1196 to i32
  %1198 = xor i32 %1197, %1186
  %1199 = lshr i32 %1198, 4
  %1200 = trunc i32 %1199 to i8
  %1201 = and i8 %1200, 1
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1201, i8* %1202, align 1
  %1203 = icmp eq i32 %1186, 0
  %1204 = zext i1 %1203 to i8
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1204, i8* %1205, align 1
  %1206 = lshr i32 %1186, 31
  %1207 = trunc i32 %1206 to i8
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1207, i8* %1208, align 1
  %1209 = lshr i32 %1180, 31
  %1210 = lshr i32 %1182, 31
  %1211 = xor i32 %1210, %1209
  %1212 = xor i32 %1206, %1209
  %1213 = add i32 %1212, %1211
  %1214 = icmp eq i32 %1213, 2
  %1215 = zext i1 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1215, i8* %1216, align 1
  store %struct.Memory* %loadMem_414de6, %struct.Memory** %MEMORY
  %loadMem_414de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 33
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %1219 to i64*
  %1220 = load i64, i64* %PC.i39
  %1221 = add i64 %1220, 41
  %1222 = load i64, i64* %PC.i39
  %1223 = add i64 %1222, 6
  %1224 = load i64, i64* %PC.i39
  %1225 = add i64 %1224, 6
  store i64 %1225, i64* %PC.i39
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1227 = load i8, i8* %1226, align 1
  store i8 %1227, i8* %BRANCH_TAKEN, align 1
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1229 = icmp ne i8 %1227, 0
  %1230 = select i1 %1229, i64 %1221, i64 %1223
  store i64 %1230, i64* %1228, align 8
  store %struct.Memory* %loadMem_414de8, %struct.Memory** %MEMORY
  %loadBr_414de8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414de8 = icmp eq i8 %loadBr_414de8, 1
  br i1 %cmpBr_414de8, label %block_.L_414e11, label %block_414dee

block_414dee:                                     ; preds = %block_.L_414dab
  %loadMem_414dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 33
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %1233 to i64*
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 9
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %RSI.i38 = bitcast %union.anon* %1236 to i64*
  %1237 = load i64, i64* %PC.i37
  %1238 = add i64 %1237, 10
  store i64 %1238, i64* %PC.i37
  store i64 ptrtoint (%G__0x416794_type* @G__0x416794 to i64), i64* %RSI.i38, align 8
  store %struct.Memory* %loadMem_414dee, %struct.Memory** %MEMORY
  %loadMem_414df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 33
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %1241 to i64*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 11
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %RDI.i36 = bitcast %union.anon* %1244 to i64*
  %1245 = load i64, i64* %PC.i35
  %1246 = add i64 %1245, 8
  store i64 %1246, i64* %PC.i35
  %1247 = load i64, i64* bitcast (%G_0x618d80_type* @G_0x618d80 to i64*)
  store i64 %1247, i64* %RDI.i36, align 8
  store %struct.Memory* %loadMem_414df8, %struct.Memory** %MEMORY
  %loadMem_414e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 33
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %1250 to i64*
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1252 = getelementptr inbounds %struct.GPR, %struct.GPR* %1251, i32 0, i32 1
  %1253 = getelementptr inbounds %struct.Reg, %struct.Reg* %1252, i32 0, i32 0
  %1254 = bitcast %union.anon* %1253 to %struct.anon.2*
  %AL.i34 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1254, i32 0, i32 0
  %1255 = load i64, i64* %PC.i33
  %1256 = add i64 %1255, 2
  store i64 %1256, i64* %PC.i33
  store i8 0, i8* %AL.i34, align 1
  store %struct.Memory* %loadMem_414e00, %struct.Memory** %MEMORY
  %loadMem1_414e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 33
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %1259 to i64*
  %1260 = load i64, i64* %PC.i32
  %1261 = add i64 %1260, -83154
  %1262 = load i64, i64* %PC.i32
  %1263 = add i64 %1262, 5
  %1264 = load i64, i64* %PC.i32
  %1265 = add i64 %1264, 5
  store i64 %1265, i64* %PC.i32
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1267 = load i64, i64* %1266, align 8
  %1268 = add i64 %1267, -8
  %1269 = inttoptr i64 %1268 to i64*
  store i64 %1263, i64* %1269
  store i64 %1268, i64* %1266, align 8
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1261, i64* %1270, align 8
  store %struct.Memory* %loadMem1_414e02, %struct.Memory** %MEMORY
  %loadMem2_414e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414e02 = load i64, i64* %3
  %1271 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414e02)
  store %struct.Memory* %1271, %struct.Memory** %MEMORY
  %loadMem_414e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 33
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 11
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %1277 to i32*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 11
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %RDI.i29 = bitcast %union.anon* %1280 to i64*
  %1281 = load i64, i64* %RDI.i29
  %1282 = load i32, i32* %EDI.i
  %1283 = zext i32 %1282 to i64
  %1284 = load i64, i64* %PC.i28
  %1285 = add i64 %1284, 2
  store i64 %1285, i64* %PC.i28
  %1286 = xor i64 %1283, %1281
  %1287 = trunc i64 %1286 to i32
  %1288 = and i64 %1286, 4294967295
  store i64 %1288, i64* %RDI.i29, align 8
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1289, align 1
  %1290 = and i32 %1287, 255
  %1291 = call i32 @llvm.ctpop.i32(i32 %1290)
  %1292 = trunc i32 %1291 to i8
  %1293 = and i8 %1292, 1
  %1294 = xor i8 %1293, 1
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1294, i8* %1295, align 1
  %1296 = icmp eq i32 %1287, 0
  %1297 = zext i1 %1296 to i8
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1297, i8* %1298, align 1
  %1299 = lshr i32 %1287, 31
  %1300 = trunc i32 %1299 to i8
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1300, i8* %1301, align 1
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1302, align 1
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1303, align 1
  store %struct.Memory* %loadMem_414e07, %struct.Memory** %MEMORY
  %loadMem_414e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 33
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %1306 to i64*
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 1
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %EAX.i26 = bitcast %union.anon* %1309 to i32*
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 15
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %1312 to i64*
  %1313 = load i64, i64* %RBP.i27
  %1314 = sub i64 %1313, 28
  %1315 = load i32, i32* %EAX.i26
  %1316 = zext i32 %1315 to i64
  %1317 = load i64, i64* %PC.i25
  %1318 = add i64 %1317, 3
  store i64 %1318, i64* %PC.i25
  %1319 = inttoptr i64 %1314 to i32*
  store i32 %1315, i32* %1319
  store %struct.Memory* %loadMem_414e09, %struct.Memory** %MEMORY
  %loadMem1_414e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 33
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %1322 to i64*
  %1323 = load i64, i64* %PC.i24
  %1324 = add i64 %1323, -83052
  %1325 = load i64, i64* %PC.i24
  %1326 = add i64 %1325, 5
  %1327 = load i64, i64* %PC.i24
  %1328 = add i64 %1327, 5
  store i64 %1328, i64* %PC.i24
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1330 = load i64, i64* %1329, align 8
  %1331 = add i64 %1330, -8
  %1332 = inttoptr i64 %1331 to i64*
  store i64 %1326, i64* %1332
  store i64 %1331, i64* %1329, align 8
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1324, i64* %1333, align 8
  store %struct.Memory* %loadMem1_414e0c, %struct.Memory** %MEMORY
  %loadMem2_414e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414e0c = load i64, i64* %3
  %1334 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %loadMem2_414e0c)
  store %struct.Memory* %1334, %struct.Memory** %MEMORY
  br label %block_.L_414e11

block_.L_414e11:                                  ; preds = %block_414dee, %block_.L_414dab
  %loadMem_414e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 33
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %1337 to i64*
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 1
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %1340 to i64*
  %1341 = load i64, i64* %PC.i20
  %1342 = add i64 %1341, 5
  store i64 %1342, i64* %PC.i20
  store i64 4, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_414e11, %struct.Memory** %MEMORY
  %loadMem_414e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 33
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 1
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %EAX.i19 = bitcast %union.anon* %1348 to i32*
  %1349 = load i32, i32* %EAX.i19
  %1350 = zext i32 %1349 to i64
  %1351 = load i64, i64* %PC.i18
  %1352 = add i64 %1351, 7
  store i64 %1352, i64* %PC.i18
  %1353 = load i32, i32* bitcast (%G_0x618d70_type* @G_0x618d70 to i32*)
  %1354 = sub i32 %1349, %1353
  %1355 = icmp ult i32 %1349, %1353
  %1356 = zext i1 %1355 to i8
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1356, i8* %1357, align 1
  %1358 = and i32 %1354, 255
  %1359 = call i32 @llvm.ctpop.i32(i32 %1358)
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  %1362 = xor i8 %1361, 1
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1362, i8* %1363, align 1
  %1364 = xor i32 %1353, %1349
  %1365 = xor i32 %1364, %1354
  %1366 = lshr i32 %1365, 4
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1368, i8* %1369, align 1
  %1370 = icmp eq i32 %1354, 0
  %1371 = zext i1 %1370 to i8
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1371, i8* %1372, align 1
  %1373 = lshr i32 %1354, 31
  %1374 = trunc i32 %1373 to i8
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1374, i8* %1375, align 1
  %1376 = lshr i32 %1349, 31
  %1377 = lshr i32 %1353, 31
  %1378 = xor i32 %1377, %1376
  %1379 = xor i32 %1373, %1376
  %1380 = add i32 %1379, %1378
  %1381 = icmp eq i32 %1380, 2
  %1382 = zext i1 %1381 to i8
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1382, i8* %1383, align 1
  store %struct.Memory* %loadMem_414e16, %struct.Memory** %MEMORY
  %loadMem_414e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 33
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %1386 to i64*
  %1387 = load i64, i64* %PC.i17
  %1388 = add i64 %1387, 29
  %1389 = load i64, i64* %PC.i17
  %1390 = add i64 %1389, 6
  %1391 = load i64, i64* %PC.i17
  %1392 = add i64 %1391, 6
  store i64 %1392, i64* %PC.i17
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1394 = load i8, i8* %1393, align 1
  %1395 = icmp ne i8 %1394, 0
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1397 = load i8, i8* %1396, align 1
  %1398 = icmp ne i8 %1397, 0
  %1399 = xor i1 %1395, %1398
  %1400 = xor i1 %1399, true
  %1401 = zext i1 %1400 to i8
  store i8 %1401, i8* %BRANCH_TAKEN, align 1
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1403 = select i1 %1399, i64 %1390, i64 %1388
  store i64 %1403, i64* %1402, align 8
  store %struct.Memory* %loadMem_414e1d, %struct.Memory** %MEMORY
  %loadBr_414e1d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414e1d = icmp eq i8 %loadBr_414e1d, 1
  br i1 %cmpBr_414e1d, label %block_.L_414e3a, label %block_414e23

block_414e23:                                     ; preds = %block_.L_414e11
  %loadMem_414e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 33
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %1406 to i64*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 11
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1409 to i64*
  %1410 = load i64, i64* %PC.i16
  %1411 = add i64 %1410, 10
  store i64 %1411, i64* %PC.i16
  store i64 ptrtoint (%G__0x4164f1_type* @G__0x4164f1 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_414e23, %struct.Memory** %MEMORY
  %loadMem_414e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 33
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 9
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1417 to i64*
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 15
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %1420 to i64*
  %1421 = load i64, i64* %RBP.i15
  %1422 = sub i64 %1421, 12
  %1423 = load i64, i64* %PC.i14
  %1424 = add i64 %1423, 3
  store i64 %1424, i64* %PC.i14
  %1425 = inttoptr i64 %1422 to i32*
  %1426 = load i32, i32* %1425
  %1427 = zext i32 %1426 to i64
  store i64 %1427, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_414e2d, %struct.Memory** %MEMORY
  %loadMem_414e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 33
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %1430 to i64*
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 1
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %1434 = bitcast %union.anon* %1433 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1434, i32 0, i32 0
  %1435 = load i64, i64* %PC.i13
  %1436 = add i64 %1435, 2
  store i64 %1436, i64* %PC.i13
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_414e30, %struct.Memory** %MEMORY
  %loadMem1_414e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 33
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %1439 to i64*
  %1440 = load i64, i64* %PC.i12
  %1441 = add i64 %1440, -83282
  %1442 = load i64, i64* %PC.i12
  %1443 = add i64 %1442, 5
  %1444 = load i64, i64* %PC.i12
  %1445 = add i64 %1444, 5
  store i64 %1445, i64* %PC.i12
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1447 = load i64, i64* %1446, align 8
  %1448 = add i64 %1447, -8
  %1449 = inttoptr i64 %1448 to i64*
  store i64 %1443, i64* %1449
  store i64 %1448, i64* %1446, align 8
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1441, i64* %1450, align 8
  store %struct.Memory* %loadMem1_414e32, %struct.Memory** %MEMORY
  %loadMem2_414e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414e32 = load i64, i64* %3
  %1451 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_414e32)
  store %struct.Memory* %1451, %struct.Memory** %MEMORY
  %loadMem_414e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 33
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %1454 to i64*
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 1
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1457 to i32*
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 15
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %1460 to i64*
  %1461 = load i64, i64* %RBP.i8
  %1462 = sub i64 %1461, 32
  %1463 = load i32, i32* %EAX.i
  %1464 = zext i32 %1463 to i64
  %1465 = load i64, i64* %PC.i7
  %1466 = add i64 %1465, 3
  store i64 %1466, i64* %PC.i7
  %1467 = inttoptr i64 %1462 to i32*
  store i32 %1463, i32* %1467
  store %struct.Memory* %loadMem_414e37, %struct.Memory** %MEMORY
  br label %block_.L_414e3a

block_.L_414e3a:                                  ; preds = %block_414e23, %block_.L_414e11
  %loadMem_414e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 33
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %1470 to i64*
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 1
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 15
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %1476 to i64*
  %1477 = load i64, i64* %RBP.i6
  %1478 = sub i64 %1477, 1
  %1479 = load i64, i64* %PC.i5
  %1480 = add i64 %1479, 4
  store i64 %1480, i64* %PC.i5
  %1481 = inttoptr i64 %1478 to i8*
  %1482 = load i8, i8* %1481
  %1483 = zext i8 %1482 to i64
  store i64 %1483, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_414e3a, %struct.Memory** %MEMORY
  %loadMem_414e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 13
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %1489 to i64*
  %1490 = load i64, i64* %RSP.i
  %1491 = load i64, i64* %PC.i4
  %1492 = add i64 %1491, 4
  store i64 %1492, i64* %PC.i4
  %1493 = add i64 32, %1490
  store i64 %1493, i64* %RSP.i, align 8
  %1494 = icmp ult i64 %1493, %1490
  %1495 = icmp ult i64 %1493, 32
  %1496 = or i1 %1494, %1495
  %1497 = zext i1 %1496 to i8
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1497, i8* %1498, align 1
  %1499 = trunc i64 %1493 to i32
  %1500 = and i32 %1499, 255
  %1501 = call i32 @llvm.ctpop.i32(i32 %1500)
  %1502 = trunc i32 %1501 to i8
  %1503 = and i8 %1502, 1
  %1504 = xor i8 %1503, 1
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1504, i8* %1505, align 1
  %1506 = xor i64 32, %1490
  %1507 = xor i64 %1506, %1493
  %1508 = lshr i64 %1507, 4
  %1509 = trunc i64 %1508 to i8
  %1510 = and i8 %1509, 1
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1510, i8* %1511, align 1
  %1512 = icmp eq i64 %1493, 0
  %1513 = zext i1 %1512 to i8
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1513, i8* %1514, align 1
  %1515 = lshr i64 %1493, 63
  %1516 = trunc i64 %1515 to i8
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1516, i8* %1517, align 1
  %1518 = lshr i64 %1490, 63
  %1519 = xor i64 %1515, %1518
  %1520 = add i64 %1519, %1515
  %1521 = icmp eq i64 %1520, 2
  %1522 = zext i1 %1521 to i8
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1522, i8* %1523, align 1
  store %struct.Memory* %loadMem_414e3e, %struct.Memory** %MEMORY
  %loadMem_414e42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 33
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %1526 to i64*
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 15
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %1529 to i64*
  %1530 = load i64, i64* %PC.i2
  %1531 = add i64 %1530, 1
  store i64 %1531, i64* %PC.i2
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1533 = load i64, i64* %1532, align 8
  %1534 = add i64 %1533, 8
  %1535 = inttoptr i64 %1533 to i64*
  %1536 = load i64, i64* %1535
  store i64 %1536, i64* %RBP.i3, align 8
  store i64 %1534, i64* %1532, align 8
  store %struct.Memory* %loadMem_414e42, %struct.Memory** %MEMORY
  %loadMem_414e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 33
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %1539 to i64*
  %1540 = load i64, i64* %PC.i1
  %1541 = add i64 %1540, 1
  store i64 %1541, i64* %PC.i1
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1544 = load i64, i64* %1543, align 8
  %1545 = inttoptr i64 %1544 to i64*
  %1546 = load i64, i64* %1545
  store i64 %1546, i64* %1542, align 8
  %1547 = add i64 %1544, 8
  store i64 %1547, i64* %1543, align 8
  store %struct.Memory* %loadMem_414e43, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_414e43
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

define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 32
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 32
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
  %23 = xor i64 32, %9
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

define %struct.Memory* @routine_movb__dil___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i8, i8* %DIL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__MINUS0x1__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
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

define %struct.Memory* @routine_cmpl_0x618d70___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDI
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = load i32, i32* bitcast (%G_0x618d70_type* @G_0x618d70 to i32*)
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

define %struct.Memory* @routine_jge_.L_414d21(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x416767___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x416767_type* @G__0x416767 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 3
  %16 = icmp ult i32 %14, 3
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
  %25 = xor i32 %14, 3
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

define %struct.Memory* @routine_jle_.L_414d51(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4166ea___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x4166ea_type* @G__0x4166ea to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x618d80___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x618d80_type* @G_0x618d80 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorl__edi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.exit_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x6195e0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x6195e0_type* @G__0x6195e0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 24, %15
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

define %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jg_.L_414dab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x41677a___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x41677a_type* @G__0x41677a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movq_0x10__rdx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 24, %15
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

define %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__esi___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl___rcx__rax_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RAX
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = zext i8 %21 to i64
  store i64 %22, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_MINUS0x1__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__edi___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %EDI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDI
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

define %struct.Memory* @routine_je_.L_414e11(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x416794___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x416794_type* @G__0x416794 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x618d70___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x618d70_type* @G_0x618d70 to i32*)
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

define %struct.Memory* @routine_jge_.L_414e3a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4164f1___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4164f1_type* @G__0x4164f1 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movzbl_MINUS0x1__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 32, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 32
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
  %25 = xor i64 32, %9
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
