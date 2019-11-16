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
%G_0x99da04_type = type <{ [4 x i8] }>
%G_0x99da08_type = type <{ [4 x i8] }>
%G_0xa0e710_type = type <{ [8 x i8] }>
%G__0xa7f430_type = type <{ [8 x i8] }>
%G__0xaab3f0_type = type <{ [8 x i8] }>
%G__0xaaba30_type = type <{ [8 x i8] }>
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
@G_0x99da04 = global %G_0x99da04_type zeroinitializer
@G_0x99da08 = global %G_0x99da08_type zeroinitializer
@G_0xa0e710 = global %G_0xa0e710_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer
@G__0xaab3f0 = global %G__0xaab3f0_type zeroinitializer
@G__0xaaba30 = global %G__0xaaba30_type zeroinitializer

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

declare %struct.Memory* @sub_40d280.update_liberties(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40d770.remove_neighbor(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @assimilate_string(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_40cd50 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40cd50, %struct.Memory** %MEMORY
  %loadMem_40cd51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i688 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i688
  %27 = load i64, i64* %PC.i687
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i687
  store i64 %26, i64* %RBP.i689, align 8
  store %struct.Memory* %loadMem_40cd51, %struct.Memory** %MEMORY
  %loadMem_40cd54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i686 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i686
  %36 = load i64, i64* %PC.i685
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i685
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i686, align 8
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
  store %struct.Memory* %loadMem_40cd54, %struct.Memory** %MEMORY
  %loadMem_40cd58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i684 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i683
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i683
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i684, align 8
  store %struct.Memory* %loadMem_40cd58, %struct.Memory** %MEMORY
  %loadMem_40cd62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EDI.i681 = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i682 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i682
  %85 = sub i64 %84, 4
  %86 = load i32, i32* %EDI.i681
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i680
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i680
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_40cd62, %struct.Memory** %MEMORY
  %loadMem_40cd65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %ESI.i678 = bitcast %union.anon* %96 to i32*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i679 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i679
  %101 = sub i64 %100, 8
  %102 = load i32, i32* %ESI.i678
  %103 = zext i32 %102 to i64
  %104 = load i64, i64* %PC.i677
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC.i677
  %106 = inttoptr i64 %101 to i32*
  store i32 %102, i32* %106
  store %struct.Memory* %loadMem_40cd65, %struct.Memory** %MEMORY
  %loadMem_40cd68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RCX.i675 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 15
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RBP.i676 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RBP.i676
  %117 = sub i64 %116, 8
  %118 = load i64, i64* %PC.i674
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC.i674
  %120 = inttoptr i64 %117 to i32*
  %121 = load i32, i32* %120
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %RCX.i675, align 8
  store %struct.Memory* %loadMem_40cd68, %struct.Memory** %MEMORY
  %loadMem_40cd6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %RCX.i672 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 9
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RSI.i673 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %RCX.i672
  %133 = mul i64 %132, 4
  %134 = add i64 %133, 11187184
  %135 = load i64, i64* %PC.i671
  %136 = add i64 %135, 7
  store i64 %136, i64* %PC.i671
  %137 = inttoptr i64 %134 to i32*
  %138 = load i32, i32* %137
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RSI.i673, align 8
  store %struct.Memory* %loadMem_40cd6c, %struct.Memory** %MEMORY
  %loadMem_40cd73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 9
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %ESI.i669 = bitcast %union.anon* %145 to i32*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 15
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %148 to i64*
  %149 = load i64, i64* %RBP.i670
  %150 = sub i64 %149, 20
  %151 = load i32, i32* %ESI.i669
  %152 = zext i32 %151 to i64
  %153 = load i64, i64* %PC.i668
  %154 = add i64 %153, 3
  store i64 %154, i64* %PC.i668
  %155 = inttoptr i64 %150 to i32*
  store i32 %151, i32* %155
  store %struct.Memory* %loadMem_40cd73, %struct.Memory** %MEMORY
  %loadMem_40cd76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 33
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %RCX.i666 = bitcast %union.anon* %161 to i64*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 15
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %164 to i64*
  %165 = load i64, i64* %RBP.i667
  %166 = sub i64 %165, 20
  %167 = load i64, i64* %PC.i665
  %168 = add i64 %167, 4
  store i64 %168, i64* %PC.i665
  %169 = inttoptr i64 %166 to i32*
  %170 = load i32, i32* %169
  %171 = sext i32 %170 to i64
  store i64 %171, i64* %RCX.i666, align 8
  store %struct.Memory* %loadMem_40cd76, %struct.Memory** %MEMORY
  %loadMem_40cd7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 33
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %174 to i64*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %RCX.i664 = bitcast %union.anon* %177 to i64*
  %178 = load i64, i64* %RCX.i664
  %179 = load i64, i64* %PC.i663
  %180 = add i64 %179, 7
  store i64 %180, i64* %PC.i663
  %181 = sext i64 %178 to i128
  %182 = and i128 %181, -18446744073709551616
  %183 = zext i64 %178 to i128
  %184 = or i128 %182, %183
  %185 = mul i128 744, %184
  %186 = trunc i128 %185 to i64
  store i64 %186, i64* %RCX.i664, align 8
  %187 = sext i64 %186 to i128
  %188 = icmp ne i128 %187, %185
  %189 = zext i1 %188 to i8
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %189, i8* %190, align 1
  %191 = trunc i128 %185 to i32
  %192 = and i32 %191, 255
  %193 = call i32 @llvm.ctpop.i32(i32 %192)
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %196, i8* %197, align 1
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %198, align 1
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %199, align 1
  %200 = lshr i64 %186, 63
  %201 = trunc i64 %200 to i8
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %201, i8* %202, align 1
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %189, i8* %203, align 1
  store %struct.Memory* %loadMem_40cd7a, %struct.Memory** %MEMORY
  %loadMem_40cd81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 33
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RAX.i661 = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 7
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %RDX.i662 = bitcast %union.anon* %212 to i64*
  %213 = load i64, i64* %RAX.i661
  %214 = load i64, i64* %PC.i660
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC.i660
  store i64 %213, i64* %RDX.i662, align 8
  store %struct.Memory* %loadMem_40cd81, %struct.Memory** %MEMORY
  %loadMem_40cd84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 33
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %218 to i64*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %RCX.i658 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 7
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %RDX.i659 = bitcast %union.anon* %224 to i64*
  %225 = load i64, i64* %RDX.i659
  %226 = load i64, i64* %RCX.i658
  %227 = load i64, i64* %PC.i657
  %228 = add i64 %227, 3
  store i64 %228, i64* %PC.i657
  %229 = add i64 %226, %225
  store i64 %229, i64* %RDX.i659, align 8
  %230 = icmp ult i64 %229, %225
  %231 = icmp ult i64 %229, %226
  %232 = or i1 %230, %231
  %233 = zext i1 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %233, i8* %234, align 1
  %235 = trunc i64 %229 to i32
  %236 = and i32 %235, 255
  %237 = call i32 @llvm.ctpop.i32(i32 %236)
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  %240 = xor i8 %239, 1
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %240, i8* %241, align 1
  %242 = xor i64 %226, %225
  %243 = xor i64 %242, %229
  %244 = lshr i64 %243, 4
  %245 = trunc i64 %244 to i8
  %246 = and i8 %245, 1
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %246, i8* %247, align 1
  %248 = icmp eq i64 %229, 0
  %249 = zext i1 %248 to i8
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %249, i8* %250, align 1
  %251 = lshr i64 %229, 63
  %252 = trunc i64 %251 to i8
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %252, i8* %253, align 1
  %254 = lshr i64 %225, 63
  %255 = lshr i64 %226, 63
  %256 = xor i64 %251, %254
  %257 = xor i64 %251, %255
  %258 = add i64 %256, %257
  %259 = icmp eq i64 %258, 2
  %260 = zext i1 %259 to i8
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %260, i8* %261, align 1
  store %struct.Memory* %loadMem_40cd84, %struct.Memory** %MEMORY
  %loadMem_40cd87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 33
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %264 to i64*
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 7
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %RDX.i655 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 9
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %RSI.i656 = bitcast %union.anon* %270 to i64*
  %271 = load i64, i64* %RDX.i655
  %272 = add i64 %271, 4
  %273 = load i64, i64* %PC.i654
  %274 = add i64 %273, 3
  store i64 %274, i64* %PC.i654
  %275 = inttoptr i64 %272 to i32*
  %276 = load i32, i32* %275
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %RSI.i656, align 8
  store %struct.Memory* %loadMem_40cd87, %struct.Memory** %MEMORY
  %loadMem_40cd8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 33
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %280 to i64*
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 5
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %RCX.i652 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 15
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %286 to i64*
  %287 = load i64, i64* %RBP.i653
  %288 = sub i64 %287, 4
  %289 = load i64, i64* %PC.i651
  %290 = add i64 %289, 4
  store i64 %290, i64* %PC.i651
  %291 = inttoptr i64 %288 to i32*
  %292 = load i32, i32* %291
  %293 = sext i32 %292 to i64
  store i64 %293, i64* %RCX.i652, align 8
  store %struct.Memory* %loadMem_40cd8a, %struct.Memory** %MEMORY
  %loadMem_40cd8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 5
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RCX.i650 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %RCX.i650
  %301 = load i64, i64* %PC.i649
  %302 = add i64 %301, 7
  store i64 %302, i64* %PC.i649
  %303 = sext i64 %300 to i128
  %304 = and i128 %303, -18446744073709551616
  %305 = zext i64 %300 to i128
  %306 = or i128 %304, %305
  %307 = mul i128 744, %306
  %308 = trunc i128 %307 to i64
  store i64 %308, i64* %RCX.i650, align 8
  %309 = sext i64 %308 to i128
  %310 = icmp ne i128 %309, %307
  %311 = zext i1 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %311, i8* %312, align 1
  %313 = trunc i128 %307 to i32
  %314 = and i32 %313, 255
  %315 = call i32 @llvm.ctpop.i32(i32 %314)
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = xor i8 %317, 1
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %318, i8* %319, align 1
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %320, align 1
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %321, align 1
  %322 = lshr i64 %308, 63
  %323 = trunc i64 %322 to i8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %323, i8* %324, align 1
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %311, i8* %325, align 1
  store %struct.Memory* %loadMem_40cd8e, %struct.Memory** %MEMORY
  %loadMem_40cd95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %331 to i64*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 7
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %RDX.i648 = bitcast %union.anon* %334 to i64*
  %335 = load i64, i64* %RAX.i647
  %336 = load i64, i64* %PC.i646
  %337 = add i64 %336, 3
  store i64 %337, i64* %PC.i646
  store i64 %335, i64* %RDX.i648, align 8
  store %struct.Memory* %loadMem_40cd95, %struct.Memory** %MEMORY
  %loadMem_40cd98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 33
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %340 to i64*
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 5
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %RCX.i644 = bitcast %union.anon* %343 to i64*
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 7
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %RDX.i645 = bitcast %union.anon* %346 to i64*
  %347 = load i64, i64* %RDX.i645
  %348 = load i64, i64* %RCX.i644
  %349 = load i64, i64* %PC.i643
  %350 = add i64 %349, 3
  store i64 %350, i64* %PC.i643
  %351 = add i64 %348, %347
  store i64 %351, i64* %RDX.i645, align 8
  %352 = icmp ult i64 %351, %347
  %353 = icmp ult i64 %351, %348
  %354 = or i1 %352, %353
  %355 = zext i1 %354 to i8
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %355, i8* %356, align 1
  %357 = trunc i64 %351 to i32
  %358 = and i32 %357, 255
  %359 = call i32 @llvm.ctpop.i32(i32 %358)
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %362, i8* %363, align 1
  %364 = xor i64 %348, %347
  %365 = xor i64 %364, %351
  %366 = lshr i64 %365, 4
  %367 = trunc i64 %366 to i8
  %368 = and i8 %367, 1
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %368, i8* %369, align 1
  %370 = icmp eq i64 %351, 0
  %371 = zext i1 %370 to i8
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %371, i8* %372, align 1
  %373 = lshr i64 %351, 63
  %374 = trunc i64 %373 to i8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %374, i8* %375, align 1
  %376 = lshr i64 %347, 63
  %377 = lshr i64 %348, 63
  %378 = xor i64 %373, %376
  %379 = xor i64 %373, %377
  %380 = add i64 %378, %379
  %381 = icmp eq i64 %380, 2
  %382 = zext i1 %381 to i8
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %382, i8* %383, align 1
  store %struct.Memory* %loadMem_40cd98, %struct.Memory** %MEMORY
  %loadMem_40cd9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 33
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %386 to i64*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 7
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %RDX.i641 = bitcast %union.anon* %389 to i64*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 9
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RSI.i642 = bitcast %union.anon* %392 to i64*
  %393 = load i64, i64* %RSI.i642
  %394 = load i64, i64* %RDX.i641
  %395 = add i64 %394, 4
  %396 = load i64, i64* %PC.i640
  %397 = add i64 %396, 3
  store i64 %397, i64* %PC.i640
  %398 = trunc i64 %393 to i32
  %399 = inttoptr i64 %395 to i32*
  %400 = load i32, i32* %399
  %401 = add i32 %400, %398
  %402 = zext i32 %401 to i64
  store i64 %402, i64* %RSI.i642, align 8
  %403 = icmp ult i32 %401, %398
  %404 = icmp ult i32 %401, %400
  %405 = or i1 %403, %404
  %406 = zext i1 %405 to i8
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %406, i8* %407, align 1
  %408 = and i32 %401, 255
  %409 = call i32 @llvm.ctpop.i32(i32 %408)
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = xor i8 %411, 1
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %412, i8* %413, align 1
  %414 = xor i32 %400, %398
  %415 = xor i32 %414, %401
  %416 = lshr i32 %415, 4
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %418, i8* %419, align 1
  %420 = icmp eq i32 %401, 0
  %421 = zext i1 %420 to i8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %421, i8* %422, align 1
  %423 = lshr i32 %401, 31
  %424 = trunc i32 %423 to i8
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %424, i8* %425, align 1
  %426 = lshr i32 %398, 31
  %427 = lshr i32 %400, 31
  %428 = xor i32 %423, %426
  %429 = xor i32 %423, %427
  %430 = add i32 %428, %429
  %431 = icmp eq i32 %430, 2
  %432 = zext i1 %431 to i8
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %432, i8* %433, align 1
  store %struct.Memory* %loadMem_40cd9b, %struct.Memory** %MEMORY
  %loadMem_40cd9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 9
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %ESI.i638 = bitcast %union.anon* %439 to i32*
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 7
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %RDX.i639 = bitcast %union.anon* %442 to i64*
  %443 = load i64, i64* %RDX.i639
  %444 = add i64 %443, 4
  %445 = load i32, i32* %ESI.i638
  %446 = zext i32 %445 to i64
  %447 = load i64, i64* %PC.i637
  %448 = add i64 %447, 3
  store i64 %448, i64* %PC.i637
  %449 = inttoptr i64 %444 to i32*
  store i32 %445, i32* %449
  store %struct.Memory* %loadMem_40cd9e, %struct.Memory** %MEMORY
  %loadMem_40cda1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 33
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %452 to i64*
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 5
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %RCX.i635 = bitcast %union.anon* %455 to i64*
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 15
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %458 to i64*
  %459 = load i64, i64* %RBP.i636
  %460 = sub i64 %459, 20
  %461 = load i64, i64* %PC.i634
  %462 = add i64 %461, 4
  store i64 %462, i64* %PC.i634
  %463 = inttoptr i64 %460 to i32*
  %464 = load i32, i32* %463
  %465 = sext i32 %464 to i64
  store i64 %465, i64* %RCX.i635, align 8
  store %struct.Memory* %loadMem_40cda1, %struct.Memory** %MEMORY
  %loadMem_40cda5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 33
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 5
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %RCX.i633 = bitcast %union.anon* %471 to i64*
  %472 = load i64, i64* %RCX.i633
  %473 = load i64, i64* %PC.i632
  %474 = add i64 %473, 7
  store i64 %474, i64* %PC.i632
  %475 = sext i64 %472 to i128
  %476 = and i128 %475, -18446744073709551616
  %477 = zext i64 %472 to i128
  %478 = or i128 %476, %477
  %479 = mul i128 744, %478
  %480 = trunc i128 %479 to i64
  store i64 %480, i64* %RCX.i633, align 8
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
  store %struct.Memory* %loadMem_40cda5, %struct.Memory** %MEMORY
  %loadMem_40cdac = load %struct.Memory*, %struct.Memory** %MEMORY
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 33
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %RAX.i630 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 5
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RCX.i631 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %RAX.i630
  %508 = load i64, i64* %RCX.i631
  %509 = load i64, i64* %PC.i629
  %510 = add i64 %509, 3
  store i64 %510, i64* %PC.i629
  %511 = add i64 %508, %507
  store i64 %511, i64* %RAX.i630, align 8
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
  store %struct.Memory* %loadMem_40cdac, %struct.Memory** %MEMORY
  %loadMem_40cdaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 33
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 1
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %RAX.i627 = bitcast %union.anon* %549 to i64*
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 9
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %RSI.i628 = bitcast %union.anon* %552 to i64*
  %553 = load i64, i64* %RAX.i627
  %554 = add i64 %553, 8
  %555 = load i64, i64* %PC.i626
  %556 = add i64 %555, 3
  store i64 %556, i64* %PC.i626
  %557 = inttoptr i64 %554 to i32*
  %558 = load i32, i32* %557
  %559 = zext i32 %558 to i64
  store i64 %559, i64* %RSI.i628, align 8
  store %struct.Memory* %loadMem_40cdaf, %struct.Memory** %MEMORY
  %loadMem_40cdb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 33
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %562 to i64*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 9
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %ESI.i624 = bitcast %union.anon* %565 to i32*
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 15
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %RBP.i625 = bitcast %union.anon* %568 to i64*
  %569 = load i64, i64* %RBP.i625
  %570 = sub i64 %569, 8
  %571 = load i32, i32* %ESI.i624
  %572 = zext i32 %571 to i64
  %573 = load i64, i64* %PC.i623
  %574 = add i64 %573, 3
  store i64 %574, i64* %PC.i623
  %575 = inttoptr i64 %570 to i32*
  store i32 %571, i32* %575
  store %struct.Memory* %loadMem_40cdb2, %struct.Memory** %MEMORY
  br label %block_.L_40cdb5

block_.L_40cdb5:                                  ; preds = %block_.L_40cdb5, %entry
  %loadMem_40cdb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 33
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %578 to i64*
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 1
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %581 to i64*
  %582 = load i64, i64* %PC.i621
  %583 = add i64 %582, 10
  store i64 %583, i64* %PC.i621
  store i64 ptrtoint (%G__0xaab3f0_type* @G__0xaab3f0 to i64), i64* %RAX.i622, align 8
  store %struct.Memory* %loadMem_40cdb5, %struct.Memory** %MEMORY
  %loadMem_40cdbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 33
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %586 to i64*
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 5
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %RCX.i619 = bitcast %union.anon* %589 to i64*
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 15
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %592 to i64*
  %593 = load i64, i64* %RBP.i620
  %594 = sub i64 %593, 8
  %595 = load i64, i64* %PC.i618
  %596 = add i64 %595, 4
  store i64 %596, i64* %PC.i618
  %597 = inttoptr i64 %594 to i32*
  %598 = load i32, i32* %597
  %599 = sext i32 %598 to i64
  store i64 %599, i64* %RCX.i619, align 8
  store %struct.Memory* %loadMem_40cdbf, %struct.Memory** %MEMORY
  %loadMem_40cdc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 33
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 5
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %RCX.i617 = bitcast %union.anon* %605 to i64*
  %606 = load i64, i64* %RCX.i617
  %607 = load i64, i64* %PC.i616
  %608 = add i64 %607, 4
  store i64 %608, i64* %PC.i616
  %609 = shl i64 %606, 1
  %610 = icmp slt i64 %609, 0
  %611 = shl i64 %609, 1
  store i64 %611, i64* %RCX.i617, align 8
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %613 = zext i1 %610 to i8
  store i8 %613, i8* %612, align 1
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %615 = trunc i64 %611 to i32
  %616 = and i32 %615, 254
  %617 = call i32 @llvm.ctpop.i32(i32 %616)
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  %620 = xor i8 %619, 1
  store i8 %620, i8* %614, align 1
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %621, align 1
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %623 = icmp eq i64 %611, 0
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %622, align 1
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %626 = lshr i64 %611, 63
  %627 = trunc i64 %626 to i8
  store i8 %627, i8* %625, align 1
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %628, align 1
  store %struct.Memory* %loadMem_40cdc3, %struct.Memory** %MEMORY
  %loadMem_40cdc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 33
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 1
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 5
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RCX.i615 = bitcast %union.anon* %637 to i64*
  %638 = load i64, i64* %RAX.i614
  %639 = load i64, i64* %RCX.i615
  %640 = load i64, i64* %PC.i613
  %641 = add i64 %640, 3
  store i64 %641, i64* %PC.i613
  %642 = add i64 %639, %638
  store i64 %642, i64* %RAX.i614, align 8
  %643 = icmp ult i64 %642, %638
  %644 = icmp ult i64 %642, %639
  %645 = or i1 %643, %644
  %646 = zext i1 %645 to i8
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %646, i8* %647, align 1
  %648 = trunc i64 %642 to i32
  %649 = and i32 %648, 255
  %650 = call i32 @llvm.ctpop.i32(i32 %649)
  %651 = trunc i32 %650 to i8
  %652 = and i8 %651, 1
  %653 = xor i8 %652, 1
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %653, i8* %654, align 1
  %655 = xor i64 %639, %638
  %656 = xor i64 %655, %642
  %657 = lshr i64 %656, 4
  %658 = trunc i64 %657 to i8
  %659 = and i8 %658, 1
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %659, i8* %660, align 1
  %661 = icmp eq i64 %642, 0
  %662 = zext i1 %661 to i8
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %662, i8* %663, align 1
  %664 = lshr i64 %642, 63
  %665 = trunc i64 %664 to i8
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %665, i8* %666, align 1
  %667 = lshr i64 %638, 63
  %668 = lshr i64 %639, 63
  %669 = xor i64 %664, %667
  %670 = xor i64 %664, %668
  %671 = add i64 %669, %670
  %672 = icmp eq i64 %671, 2
  %673 = zext i1 %672 to i8
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %673, i8* %674, align 1
  store %struct.Memory* %loadMem_40cdc7, %struct.Memory** %MEMORY
  %loadMem_40cdca = load %struct.Memory*, %struct.Memory** %MEMORY
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 33
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 5
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %RCX.i612 = bitcast %union.anon* %680 to i64*
  %681 = load i64, i64* %PC.i611
  %682 = add i64 %681, 8
  store i64 %682, i64* %PC.i611
  %683 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  store i64 %683, i64* %RCX.i612, align 8
  store %struct.Memory* %loadMem_40cdca, %struct.Memory** %MEMORY
  %loadMem_40cdd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 33
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %686 to i64*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 1
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %RAX.i609 = bitcast %union.anon* %689 to i64*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 5
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %RCX.i610 = bitcast %union.anon* %692 to i64*
  %693 = load i64, i64* %RCX.i610
  %694 = load i64, i64* %RAX.i609
  %695 = load i64, i64* %PC.i608
  %696 = add i64 %695, 3
  store i64 %696, i64* %PC.i608
  %697 = inttoptr i64 %693 to i64*
  store i64 %694, i64* %697
  store %struct.Memory* %loadMem_40cdd2, %struct.Memory** %MEMORY
  %loadMem_40cdd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 33
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 1
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %RAX.i606 = bitcast %union.anon* %703 to i64*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 15
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %RBP.i607 = bitcast %union.anon* %706 to i64*
  %707 = load i64, i64* %RBP.i607
  %708 = sub i64 %707, 8
  %709 = load i64, i64* %PC.i605
  %710 = add i64 %709, 4
  store i64 %710, i64* %PC.i605
  %711 = inttoptr i64 %708 to i32*
  %712 = load i32, i32* %711
  %713 = sext i32 %712 to i64
  store i64 %713, i64* %RAX.i606, align 8
  store %struct.Memory* %loadMem_40cdd5, %struct.Memory** %MEMORY
  %loadMem_40cdd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 33
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 1
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %RAX.i603 = bitcast %union.anon* %719 to i64*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 7
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RDX.i604 = bitcast %union.anon* %722 to i64*
  %723 = load i64, i64* %RAX.i603
  %724 = mul i64 %723, 4
  %725 = add i64 %724, 11187184
  %726 = load i64, i64* %PC.i602
  %727 = add i64 %726, 7
  store i64 %727, i64* %PC.i602
  %728 = inttoptr i64 %725 to i32*
  %729 = load i32, i32* %728
  %730 = zext i32 %729 to i64
  store i64 %730, i64* %RDX.i604, align 8
  store %struct.Memory* %loadMem_40cdd9, %struct.Memory** %MEMORY
  %loadMem_40cde0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 33
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %733 to i64*
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 1
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %RAX.i601 = bitcast %union.anon* %736 to i64*
  %737 = load i64, i64* %PC.i600
  %738 = add i64 %737, 8
  store i64 %738, i64* %PC.i600
  %739 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  store i64 %739, i64* %RAX.i601, align 8
  store %struct.Memory* %loadMem_40cde0, %struct.Memory** %MEMORY
  %loadMem_40cde8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 33
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %742 to i64*
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 1
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %RAX.i598 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 5
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %RCX.i599 = bitcast %union.anon* %748 to i64*
  %749 = load i64, i64* %RAX.i598
  %750 = load i64, i64* %PC.i597
  %751 = add i64 %750, 3
  store i64 %751, i64* %PC.i597
  store i64 %749, i64* %RCX.i599, align 8
  store %struct.Memory* %loadMem_40cde8, %struct.Memory** %MEMORY
  %loadMem_40cdeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 33
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 5
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %RCX.i596 = bitcast %union.anon* %757 to i64*
  %758 = load i64, i64* %RCX.i596
  %759 = load i64, i64* %PC.i595
  %760 = add i64 %759, 4
  store i64 %760, i64* %PC.i595
  %761 = add i64 16, %758
  store i64 %761, i64* %RCX.i596, align 8
  %762 = icmp ult i64 %761, %758
  %763 = icmp ult i64 %761, 16
  %764 = or i1 %762, %763
  %765 = zext i1 %764 to i8
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %765, i8* %766, align 1
  %767 = trunc i64 %761 to i32
  %768 = and i32 %767, 255
  %769 = call i32 @llvm.ctpop.i32(i32 %768)
  %770 = trunc i32 %769 to i8
  %771 = and i8 %770, 1
  %772 = xor i8 %771, 1
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %772, i8* %773, align 1
  %774 = xor i64 16, %758
  %775 = xor i64 %774, %761
  %776 = lshr i64 %775, 4
  %777 = trunc i64 %776 to i8
  %778 = and i8 %777, 1
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %778, i8* %779, align 1
  %780 = icmp eq i64 %761, 0
  %781 = zext i1 %780 to i8
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %781, i8* %782, align 1
  %783 = lshr i64 %761, 63
  %784 = trunc i64 %783 to i8
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %784, i8* %785, align 1
  %786 = lshr i64 %758, 63
  %787 = xor i64 %783, %786
  %788 = add i64 %787, %783
  %789 = icmp eq i64 %788, 2
  %790 = zext i1 %789 to i8
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %790, i8* %791, align 1
  store %struct.Memory* %loadMem_40cdeb, %struct.Memory** %MEMORY
  %loadMem_40cdef = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 5
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RCX.i594 = bitcast %union.anon* %797 to i64*
  %798 = load i64, i64* %RCX.i594
  %799 = load i64, i64* %PC.i593
  %800 = add i64 %799, 8
  store i64 %800, i64* %PC.i593
  store i64 %798, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  store %struct.Memory* %loadMem_40cdef, %struct.Memory** %MEMORY
  %loadMem_40cdf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 33
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %803 to i64*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 7
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %EDX.i591 = bitcast %union.anon* %806 to i32*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 1
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %RAX.i592 = bitcast %union.anon* %809 to i64*
  %810 = load i64, i64* %RAX.i592
  %811 = add i64 %810, 8
  %812 = load i32, i32* %EDX.i591
  %813 = zext i32 %812 to i64
  %814 = load i64, i64* %PC.i590
  %815 = add i64 %814, 3
  store i64 %815, i64* %PC.i590
  %816 = inttoptr i64 %811 to i32*
  store i32 %812, i32* %816
  store %struct.Memory* %loadMem_40cdf7, %struct.Memory** %MEMORY
  %loadMem_40cdfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 33
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %819 to i64*
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 7
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %RDX.i588 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 15
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %825 to i64*
  %826 = load i64, i64* %RBP.i589
  %827 = sub i64 %826, 4
  %828 = load i64, i64* %PC.i587
  %829 = add i64 %828, 3
  store i64 %829, i64* %PC.i587
  %830 = inttoptr i64 %827 to i32*
  %831 = load i32, i32* %830
  %832 = zext i32 %831 to i64
  store i64 %832, i64* %RDX.i588, align 8
  store %struct.Memory* %loadMem_40cdfa, %struct.Memory** %MEMORY
  %loadMem_40cdfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 33
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 1
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %RAX.i585 = bitcast %union.anon* %838 to i64*
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 15
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %841 to i64*
  %842 = load i64, i64* %RBP.i586
  %843 = sub i64 %842, 8
  %844 = load i64, i64* %PC.i584
  %845 = add i64 %844, 4
  store i64 %845, i64* %PC.i584
  %846 = inttoptr i64 %843 to i32*
  %847 = load i32, i32* %846
  %848 = sext i32 %847 to i64
  store i64 %848, i64* %RAX.i585, align 8
  store %struct.Memory* %loadMem_40cdfd, %struct.Memory** %MEMORY
  %loadMem_40ce01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 33
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 7
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %EDX.i582 = bitcast %union.anon* %854 to i32*
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 1
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %857 to i64*
  %858 = load i64, i64* %RAX.i583
  %859 = mul i64 %858, 4
  %860 = add i64 %859, 11187184
  %861 = load i32, i32* %EDX.i582
  %862 = zext i32 %861 to i64
  %863 = load i64, i64* %PC.i581
  %864 = add i64 %863, 7
  store i64 %864, i64* %PC.i581
  %865 = inttoptr i64 %860 to i32*
  store i32 %861, i32* %865
  store %struct.Memory* %loadMem_40ce01, %struct.Memory** %MEMORY
  %loadMem_40ce08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 33
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %868 to i64*
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 7
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %RDX.i579 = bitcast %union.anon* %871 to i64*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 15
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %874 to i64*
  %875 = load i64, i64* %RBP.i580
  %876 = sub i64 %875, 8
  %877 = load i64, i64* %PC.i578
  %878 = add i64 %877, 3
  store i64 %878, i64* %PC.i578
  %879 = inttoptr i64 %876 to i32*
  %880 = load i32, i32* %879
  %881 = zext i32 %880 to i64
  store i64 %881, i64* %RDX.i579, align 8
  store %struct.Memory* %loadMem_40ce08, %struct.Memory** %MEMORY
  %loadMem_40ce0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 33
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 7
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %EDX.i576 = bitcast %union.anon* %887 to i32*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 15
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %890 to i64*
  %891 = load i64, i64* %RBP.i577
  %892 = sub i64 %891, 16
  %893 = load i32, i32* %EDX.i576
  %894 = zext i32 %893 to i64
  %895 = load i64, i64* %PC.i575
  %896 = add i64 %895, 3
  store i64 %896, i64* %PC.i575
  %897 = inttoptr i64 %892 to i32*
  store i32 %893, i32* %897
  store %struct.Memory* %loadMem_40ce0b, %struct.Memory** %MEMORY
  %loadMem_40ce0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 1
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 15
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %906 to i64*
  %907 = load i64, i64* %RBP.i574
  %908 = sub i64 %907, 8
  %909 = load i64, i64* %PC.i572
  %910 = add i64 %909, 4
  store i64 %910, i64* %PC.i572
  %911 = inttoptr i64 %908 to i32*
  %912 = load i32, i32* %911
  %913 = sext i32 %912 to i64
  store i64 %913, i64* %RAX.i573, align 8
  store %struct.Memory* %loadMem_40ce0e, %struct.Memory** %MEMORY
  %loadMem_40ce12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 33
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %916 to i64*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 1
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 7
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %RDX.i571 = bitcast %union.anon* %922 to i64*
  %923 = load i64, i64* %RAX.i570
  %924 = mul i64 %923, 4
  %925 = add i64 %924, 11188784
  %926 = load i64, i64* %PC.i569
  %927 = add i64 %926, 7
  store i64 %927, i64* %PC.i569
  %928 = inttoptr i64 %925 to i32*
  %929 = load i32, i32* %928
  %930 = zext i32 %929 to i64
  store i64 %930, i64* %RDX.i571, align 8
  store %struct.Memory* %loadMem_40ce12, %struct.Memory** %MEMORY
  %loadMem_40ce19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 7
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %EDX.i567 = bitcast %union.anon* %936 to i32*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 15
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %939 to i64*
  %940 = load i64, i64* %RBP.i568
  %941 = sub i64 %940, 8
  %942 = load i32, i32* %EDX.i567
  %943 = zext i32 %942 to i64
  %944 = load i64, i64* %PC.i566
  %945 = add i64 %944, 3
  store i64 %945, i64* %PC.i566
  %946 = inttoptr i64 %941 to i32*
  store i32 %942, i32* %946
  store %struct.Memory* %loadMem_40ce19, %struct.Memory** %MEMORY
  %loadMem_40ce1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 33
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %949 to i64*
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 1
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %952 to i64*
  %953 = load i64, i64* %PC.i564
  %954 = add i64 %953, 10
  store i64 %954, i64* %PC.i564
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i565, align 8
  store %struct.Memory* %loadMem_40ce1c, %struct.Memory** %MEMORY
  %loadMem_40ce26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 33
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %957 to i64*
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 5
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %RCX.i562 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 15
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %963 to i64*
  %964 = load i64, i64* %RBP.i563
  %965 = sub i64 %964, 8
  %966 = load i64, i64* %PC.i561
  %967 = add i64 %966, 3
  store i64 %967, i64* %PC.i561
  %968 = inttoptr i64 %965 to i32*
  %969 = load i32, i32* %968
  %970 = zext i32 %969 to i64
  store i64 %970, i64* %RCX.i562, align 8
  store %struct.Memory* %loadMem_40ce26, %struct.Memory** %MEMORY
  %loadMem_40ce29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 33
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 7
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %RDX.i559 = bitcast %union.anon* %976 to i64*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 15
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %979 to i64*
  %980 = load i64, i64* %RBP.i560
  %981 = sub i64 %980, 20
  %982 = load i64, i64* %PC.i558
  %983 = add i64 %982, 4
  store i64 %983, i64* %PC.i558
  %984 = inttoptr i64 %981 to i32*
  %985 = load i32, i32* %984
  %986 = sext i32 %985 to i64
  store i64 %986, i64* %RDX.i559, align 8
  store %struct.Memory* %loadMem_40ce29, %struct.Memory** %MEMORY
  %loadMem_40ce2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 33
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %989 to i64*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 7
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %RDX.i557 = bitcast %union.anon* %992 to i64*
  %993 = load i64, i64* %RDX.i557
  %994 = load i64, i64* %PC.i556
  %995 = add i64 %994, 7
  store i64 %995, i64* %PC.i556
  %996 = sext i64 %993 to i128
  %997 = and i128 %996, -18446744073709551616
  %998 = zext i64 %993 to i128
  %999 = or i128 %997, %998
  %1000 = mul i128 744, %999
  %1001 = trunc i128 %1000 to i64
  store i64 %1001, i64* %RDX.i557, align 8
  %1002 = sext i64 %1001 to i128
  %1003 = icmp ne i128 %1002, %1000
  %1004 = zext i1 %1003 to i8
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1004, i8* %1005, align 1
  %1006 = trunc i128 %1000 to i32
  %1007 = and i32 %1006, 255
  %1008 = call i32 @llvm.ctpop.i32(i32 %1007)
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  %1011 = xor i8 %1010, 1
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1011, i8* %1012, align 1
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1013, align 1
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1014, align 1
  %1015 = lshr i64 %1001, 63
  %1016 = trunc i64 %1015 to i8
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1016, i8* %1017, align 1
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1004, i8* %1018, align 1
  store %struct.Memory* %loadMem_40ce2d, %struct.Memory** %MEMORY
  %loadMem_40ce34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 33
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %1021 to i64*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 1
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %RAX.i554 = bitcast %union.anon* %1024 to i64*
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 7
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %RDX.i555 = bitcast %union.anon* %1027 to i64*
  %1028 = load i64, i64* %RAX.i554
  %1029 = load i64, i64* %RDX.i555
  %1030 = load i64, i64* %PC.i553
  %1031 = add i64 %1030, 3
  store i64 %1031, i64* %PC.i553
  %1032 = add i64 %1029, %1028
  store i64 %1032, i64* %RAX.i554, align 8
  %1033 = icmp ult i64 %1032, %1028
  %1034 = icmp ult i64 %1032, %1029
  %1035 = or i1 %1033, %1034
  %1036 = zext i1 %1035 to i8
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1036, i8* %1037, align 1
  %1038 = trunc i64 %1032 to i32
  %1039 = and i32 %1038, 255
  %1040 = call i32 @llvm.ctpop.i32(i32 %1039)
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  %1043 = xor i8 %1042, 1
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1043, i8* %1044, align 1
  %1045 = xor i64 %1029, %1028
  %1046 = xor i64 %1045, %1032
  %1047 = lshr i64 %1046, 4
  %1048 = trunc i64 %1047 to i8
  %1049 = and i8 %1048, 1
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1049, i8* %1050, align 1
  %1051 = icmp eq i64 %1032, 0
  %1052 = zext i1 %1051 to i8
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1052, i8* %1053, align 1
  %1054 = lshr i64 %1032, 63
  %1055 = trunc i64 %1054 to i8
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1055, i8* %1056, align 1
  %1057 = lshr i64 %1028, 63
  %1058 = lshr i64 %1029, 63
  %1059 = xor i64 %1054, %1057
  %1060 = xor i64 %1054, %1058
  %1061 = add i64 %1059, %1060
  %1062 = icmp eq i64 %1061, 2
  %1063 = zext i1 %1062 to i8
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1063, i8* %1064, align 1
  store %struct.Memory* %loadMem_40ce34, %struct.Memory** %MEMORY
  %loadMem_40ce37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 33
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %1067 to i64*
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 5
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %ECX.i551 = bitcast %union.anon* %1070 to i32*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 1
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %RAX.i552 = bitcast %union.anon* %1073 to i64*
  %1074 = load i32, i32* %ECX.i551
  %1075 = zext i32 %1074 to i64
  %1076 = load i64, i64* %RAX.i552
  %1077 = add i64 %1076, 8
  %1078 = load i64, i64* %PC.i550
  %1079 = add i64 %1078, 3
  store i64 %1079, i64* %PC.i550
  %1080 = inttoptr i64 %1077 to i32*
  %1081 = load i32, i32* %1080
  %1082 = sub i32 %1074, %1081
  %1083 = icmp ult i32 %1074, %1081
  %1084 = zext i1 %1083 to i8
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1084, i8* %1085, align 1
  %1086 = and i32 %1082, 255
  %1087 = call i32 @llvm.ctpop.i32(i32 %1086)
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  %1090 = xor i8 %1089, 1
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1090, i8* %1091, align 1
  %1092 = xor i32 %1081, %1074
  %1093 = xor i32 %1092, %1082
  %1094 = lshr i32 %1093, 4
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1096, i8* %1097, align 1
  %1098 = icmp eq i32 %1082, 0
  %1099 = zext i1 %1098 to i8
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1099, i8* %1100, align 1
  %1101 = lshr i32 %1082, 31
  %1102 = trunc i32 %1101 to i8
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1102, i8* %1103, align 1
  %1104 = lshr i32 %1074, 31
  %1105 = lshr i32 %1081, 31
  %1106 = xor i32 %1105, %1104
  %1107 = xor i32 %1101, %1104
  %1108 = add i32 %1107, %1106
  %1109 = icmp eq i32 %1108, 2
  %1110 = zext i1 %1109 to i8
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1110, i8* %1111, align 1
  store %struct.Memory* %loadMem_40ce37, %struct.Memory** %MEMORY
  %loadMem_40ce3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 33
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 9
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %1118 = bitcast %union.anon* %1117 to %struct.anon.2*
  %SIL.i549 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1118, i32 0, i32 0
  %1119 = load i64, i64* %PC.i548
  %1120 = add i64 %1119, 4
  store i64 %1120, i64* %PC.i548
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1122 = load i8, i8* %1121, align 1
  store i8 %1122, i8* %SIL.i549, align 1
  store %struct.Memory* %loadMem_40ce3a, %struct.Memory** %MEMORY
  %loadMem_40ce3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 33
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %1125 to i64*
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 9
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %1129 = bitcast %union.anon* %1128 to %struct.anon.2*
  %SIL.i547 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1129, i32 0, i32 0
  %1130 = load i8, i8* %SIL.i547
  %1131 = zext i8 %1130 to i64
  %1132 = load i64, i64* %PC.i546
  %1133 = add i64 %1132, 4
  store i64 %1133, i64* %PC.i546
  %1134 = xor i64 255, %1131
  %1135 = trunc i64 %1134 to i8
  store i8 %1135, i8* %SIL.i547, align 1
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1136, align 1
  %1137 = trunc i64 %1134 to i32
  %1138 = and i32 %1137, 255
  %1139 = call i32 @llvm.ctpop.i32(i32 %1138)
  %1140 = trunc i32 %1139 to i8
  %1141 = and i8 %1140, 1
  %1142 = xor i8 %1141, 1
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1142, i8* %1143, align 1
  %1144 = icmp eq i8 %1135, 0
  %1145 = zext i1 %1144 to i8
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1145, i8* %1146, align 1
  %1147 = lshr i8 %1135, 7
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1147, i8* %1148, align 1
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1149, align 1
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1150, align 1
  store %struct.Memory* %loadMem_40ce3e, %struct.Memory** %MEMORY
  %loadMem_40ce42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 33
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %1153 to i64*
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 9
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %1157 = bitcast %union.anon* %1156 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1157, i32 0, i32 0
  %1158 = load i8, i8* %SIL.i
  %1159 = zext i8 %1158 to i64
  %1160 = load i64, i64* %PC.i545
  %1161 = add i64 %1160, 4
  store i64 %1161, i64* %PC.i545
  %1162 = and i64 1, %1159
  %1163 = trunc i64 %1162 to i8
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1164, align 1
  %1165 = trunc i64 %1162 to i32
  %1166 = and i32 %1165, 255
  %1167 = call i32 @llvm.ctpop.i32(i32 %1166)
  %1168 = trunc i32 %1167 to i8
  %1169 = and i8 %1168, 1
  %1170 = xor i8 %1169, 1
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1170, i8* %1171, align 1
  %1172 = icmp eq i8 %1163, 0
  %1173 = zext i1 %1172 to i8
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1173, i8* %1174, align 1
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1175, align 1
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1176, align 1
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1177, align 1
  store %struct.Memory* %loadMem_40ce42, %struct.Memory** %MEMORY
  %loadMem_40ce46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 33
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %1180 to i64*
  %1181 = load i64, i64* %PC.i544
  %1182 = add i64 %1181, -145
  %1183 = load i64, i64* %PC.i544
  %1184 = add i64 %1183, 6
  %1185 = load i64, i64* %PC.i544
  %1186 = add i64 %1185, 6
  store i64 %1186, i64* %PC.i544
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1188 = load i8, i8* %1187, align 1
  %1189 = icmp eq i8 %1188, 0
  %1190 = zext i1 %1189 to i8
  store i8 %1190, i8* %BRANCH_TAKEN, align 1
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1192 = select i1 %1189, i64 %1182, i64 %1184
  store i64 %1192, i64* %1191, align 8
  store %struct.Memory* %loadMem_40ce46, %struct.Memory** %MEMORY
  %loadBr_40ce46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ce46 = icmp eq i8 %loadBr_40ce46, 1
  br i1 %cmpBr_40ce46, label %block_.L_40cdb5, label %block_40ce4c

block_40ce4c:                                     ; preds = %block_.L_40cdb5
  %loadMem_40ce4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 33
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 1
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %RAX.i543 = bitcast %union.anon* %1198 to i64*
  %1199 = load i64, i64* %PC.i542
  %1200 = add i64 %1199, 10
  store i64 %1200, i64* %PC.i542
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i543, align 8
  store %struct.Memory* %loadMem_40ce4c, %struct.Memory** %MEMORY
  %loadMem_40ce56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 33
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 5
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %RCX.i541 = bitcast %union.anon* %1206 to i64*
  %1207 = load i64, i64* %PC.i540
  %1208 = add i64 %1207, 10
  store i64 %1208, i64* %PC.i540
  store i64 ptrtoint (%G__0xaaba30_type* @G__0xaaba30 to i64), i64* %RCX.i541, align 8
  store %struct.Memory* %loadMem_40ce56, %struct.Memory** %MEMORY
  %loadMem_40ce60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 33
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 7
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %RDX.i538 = bitcast %union.anon* %1214 to i64*
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 15
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %1217 to i64*
  %1218 = load i64, i64* %RBP.i539
  %1219 = sub i64 %1218, 4
  %1220 = load i64, i64* %PC.i537
  %1221 = add i64 %1220, 4
  store i64 %1221, i64* %PC.i537
  %1222 = inttoptr i64 %1219 to i32*
  %1223 = load i32, i32* %1222
  %1224 = sext i32 %1223 to i64
  store i64 %1224, i64* %RDX.i538, align 8
  store %struct.Memory* %loadMem_40ce60, %struct.Memory** %MEMORY
  %loadMem_40ce64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 33
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %1227 to i64*
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 7
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %RDX.i536 = bitcast %union.anon* %1230 to i64*
  %1231 = load i64, i64* %RDX.i536
  %1232 = load i64, i64* %PC.i535
  %1233 = add i64 %1232, 7
  store i64 %1233, i64* %PC.i535
  %1234 = sext i64 %1231 to i128
  %1235 = and i128 %1234, -18446744073709551616
  %1236 = zext i64 %1231 to i128
  %1237 = or i128 %1235, %1236
  %1238 = mul i128 744, %1237
  %1239 = trunc i128 %1238 to i64
  store i64 %1239, i64* %RDX.i536, align 8
  %1240 = sext i64 %1239 to i128
  %1241 = icmp ne i128 %1240, %1238
  %1242 = zext i1 %1241 to i8
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1242, i8* %1243, align 1
  %1244 = trunc i128 %1238 to i32
  %1245 = and i32 %1244, 255
  %1246 = call i32 @llvm.ctpop.i32(i32 %1245)
  %1247 = trunc i32 %1246 to i8
  %1248 = and i8 %1247, 1
  %1249 = xor i8 %1248, 1
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1249, i8* %1250, align 1
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1251, align 1
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1252, align 1
  %1253 = lshr i64 %1239, 63
  %1254 = trunc i64 %1253 to i8
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1254, i8* %1255, align 1
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1242, i8* %1256, align 1
  store %struct.Memory* %loadMem_40ce64, %struct.Memory** %MEMORY
  %loadMem_40ce6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 33
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 1
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RAX.i533 = bitcast %union.anon* %1262 to i64*
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 9
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %RSI.i534 = bitcast %union.anon* %1265 to i64*
  %1266 = load i64, i64* %RAX.i533
  %1267 = load i64, i64* %PC.i532
  %1268 = add i64 %1267, 3
  store i64 %1268, i64* %PC.i532
  store i64 %1266, i64* %RSI.i534, align 8
  store %struct.Memory* %loadMem_40ce6b, %struct.Memory** %MEMORY
  %loadMem_40ce6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 33
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %1271 to i64*
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 7
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %RDX.i530 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 9
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %RSI.i531 = bitcast %union.anon* %1277 to i64*
  %1278 = load i64, i64* %RSI.i531
  %1279 = load i64, i64* %RDX.i530
  %1280 = load i64, i64* %PC.i529
  %1281 = add i64 %1280, 3
  store i64 %1281, i64* %PC.i529
  %1282 = add i64 %1279, %1278
  store i64 %1282, i64* %RSI.i531, align 8
  %1283 = icmp ult i64 %1282, %1278
  %1284 = icmp ult i64 %1282, %1279
  %1285 = or i1 %1283, %1284
  %1286 = zext i1 %1285 to i8
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1286, i8* %1287, align 1
  %1288 = trunc i64 %1282 to i32
  %1289 = and i32 %1288, 255
  %1290 = call i32 @llvm.ctpop.i32(i32 %1289)
  %1291 = trunc i32 %1290 to i8
  %1292 = and i8 %1291, 1
  %1293 = xor i8 %1292, 1
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1293, i8* %1294, align 1
  %1295 = xor i64 %1279, %1278
  %1296 = xor i64 %1295, %1282
  %1297 = lshr i64 %1296, 4
  %1298 = trunc i64 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1299, i8* %1300, align 1
  %1301 = icmp eq i64 %1282, 0
  %1302 = zext i1 %1301 to i8
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1302, i8* %1303, align 1
  %1304 = lshr i64 %1282, 63
  %1305 = trunc i64 %1304 to i8
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1305, i8* %1306, align 1
  %1307 = lshr i64 %1278, 63
  %1308 = lshr i64 %1279, 63
  %1309 = xor i64 %1304, %1307
  %1310 = xor i64 %1304, %1308
  %1311 = add i64 %1309, %1310
  %1312 = icmp eq i64 %1311, 2
  %1313 = zext i1 %1312 to i8
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1313, i8* %1314, align 1
  store %struct.Memory* %loadMem_40ce6e, %struct.Memory** %MEMORY
  %loadMem_40ce71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 33
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %1317 to i64*
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 9
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %RSI.i527 = bitcast %union.anon* %1320 to i64*
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 11
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %RDI.i528 = bitcast %union.anon* %1323 to i64*
  %1324 = load i64, i64* %RSI.i527
  %1325 = add i64 %1324, 8
  %1326 = load i64, i64* %PC.i526
  %1327 = add i64 %1326, 3
  store i64 %1327, i64* %PC.i526
  %1328 = inttoptr i64 %1325 to i32*
  %1329 = load i32, i32* %1328
  %1330 = zext i32 %1329 to i64
  store i64 %1330, i64* %RDI.i528, align 8
  store %struct.Memory* %loadMem_40ce71, %struct.Memory** %MEMORY
  %loadMem_40ce74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 33
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %1333 to i64*
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1335 = getelementptr inbounds %struct.GPR, %struct.GPR* %1334, i32 0, i32 11
  %1336 = getelementptr inbounds %struct.Reg, %struct.Reg* %1335, i32 0, i32 0
  %EDI.i524 = bitcast %union.anon* %1336 to i32*
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 15
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %1339 to i64*
  %1340 = load i64, i64* %RBP.i525
  %1341 = sub i64 %1340, 24
  %1342 = load i32, i32* %EDI.i524
  %1343 = zext i32 %1342 to i64
  %1344 = load i64, i64* %PC.i523
  %1345 = add i64 %1344, 3
  store i64 %1345, i64* %PC.i523
  %1346 = inttoptr i64 %1341 to i32*
  store i32 %1342, i32* %1346
  store %struct.Memory* %loadMem_40ce74, %struct.Memory** %MEMORY
  %loadMem_40ce77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 33
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %1349 to i64*
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 7
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %RDX.i521 = bitcast %union.anon* %1352 to i64*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 15
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %1355 to i64*
  %1356 = load i64, i64* %RBP.i522
  %1357 = sub i64 %1356, 16
  %1358 = load i64, i64* %PC.i520
  %1359 = add i64 %1358, 4
  store i64 %1359, i64* %PC.i520
  %1360 = inttoptr i64 %1357 to i32*
  %1361 = load i32, i32* %1360
  %1362 = sext i32 %1361 to i64
  store i64 %1362, i64* %RDX.i521, align 8
  store %struct.Memory* %loadMem_40ce77, %struct.Memory** %MEMORY
  %loadMem_40ce7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 33
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %1365 to i64*
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 7
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %RDX.i519 = bitcast %union.anon* %1368 to i64*
  %1369 = load i64, i64* %RDX.i519
  %1370 = load i64, i64* %PC.i518
  %1371 = add i64 %1370, 4
  store i64 %1371, i64* %PC.i518
  %1372 = shl i64 %1369, 1
  %1373 = icmp slt i64 %1372, 0
  %1374 = shl i64 %1372, 1
  store i64 %1374, i64* %RDX.i519, align 8
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1376 = zext i1 %1373 to i8
  store i8 %1376, i8* %1375, align 1
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1378 = trunc i64 %1374 to i32
  %1379 = and i32 %1378, 254
  %1380 = call i32 @llvm.ctpop.i32(i32 %1379)
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  %1383 = xor i8 %1382, 1
  store i8 %1383, i8* %1377, align 1
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1384, align 1
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1386 = icmp eq i64 %1374, 0
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %1385, align 1
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1389 = lshr i64 %1374, 63
  %1390 = trunc i64 %1389 to i8
  store i8 %1390, i8* %1388, align 1
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1391, align 1
  store %struct.Memory* %loadMem_40ce7b, %struct.Memory** %MEMORY
  %loadMem_40ce7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 33
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 5
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %RCX.i516 = bitcast %union.anon* %1397 to i64*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 9
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %RSI.i517 = bitcast %union.anon* %1400 to i64*
  %1401 = load i64, i64* %RCX.i516
  %1402 = load i64, i64* %PC.i515
  %1403 = add i64 %1402, 3
  store i64 %1403, i64* %PC.i515
  store i64 %1401, i64* %RSI.i517, align 8
  store %struct.Memory* %loadMem_40ce7f, %struct.Memory** %MEMORY
  %loadMem_40ce82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 33
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %1406 to i64*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 7
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %RDX.i513 = bitcast %union.anon* %1409 to i64*
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 9
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %RSI.i514 = bitcast %union.anon* %1412 to i64*
  %1413 = load i64, i64* %RSI.i514
  %1414 = load i64, i64* %RDX.i513
  %1415 = load i64, i64* %PC.i512
  %1416 = add i64 %1415, 3
  store i64 %1416, i64* %PC.i512
  %1417 = add i64 %1414, %1413
  store i64 %1417, i64* %RSI.i514, align 8
  %1418 = icmp ult i64 %1417, %1413
  %1419 = icmp ult i64 %1417, %1414
  %1420 = or i1 %1418, %1419
  %1421 = zext i1 %1420 to i8
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1421, i8* %1422, align 1
  %1423 = trunc i64 %1417 to i32
  %1424 = and i32 %1423, 255
  %1425 = call i32 @llvm.ctpop.i32(i32 %1424)
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  %1428 = xor i8 %1427, 1
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1428, i8* %1429, align 1
  %1430 = xor i64 %1414, %1413
  %1431 = xor i64 %1430, %1417
  %1432 = lshr i64 %1431, 4
  %1433 = trunc i64 %1432 to i8
  %1434 = and i8 %1433, 1
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1434, i8* %1435, align 1
  %1436 = icmp eq i64 %1417, 0
  %1437 = zext i1 %1436 to i8
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1437, i8* %1438, align 1
  %1439 = lshr i64 %1417, 63
  %1440 = trunc i64 %1439 to i8
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1440, i8* %1441, align 1
  %1442 = lshr i64 %1413, 63
  %1443 = lshr i64 %1414, 63
  %1444 = xor i64 %1439, %1442
  %1445 = xor i64 %1439, %1443
  %1446 = add i64 %1444, %1445
  %1447 = icmp eq i64 %1446, 2
  %1448 = zext i1 %1447 to i8
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1448, i8* %1449, align 1
  store %struct.Memory* %loadMem_40ce82, %struct.Memory** %MEMORY
  %loadMem_40ce85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 33
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 7
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %RDX.i511 = bitcast %union.anon* %1455 to i64*
  %1456 = load i64, i64* %PC.i510
  %1457 = add i64 %1456, 8
  store i64 %1457, i64* %PC.i510
  %1458 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  store i64 %1458, i64* %RDX.i511, align 8
  store %struct.Memory* %loadMem_40ce85, %struct.Memory** %MEMORY
  %loadMem_40ce8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 33
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 7
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %RDX.i508 = bitcast %union.anon* %1464 to i64*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 9
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %RSI.i509 = bitcast %union.anon* %1467 to i64*
  %1468 = load i64, i64* %RDX.i508
  %1469 = load i64, i64* %RSI.i509
  %1470 = load i64, i64* %PC.i507
  %1471 = add i64 %1470, 3
  store i64 %1471, i64* %PC.i507
  %1472 = inttoptr i64 %1468 to i64*
  store i64 %1469, i64* %1472
  store %struct.Memory* %loadMem_40ce8d, %struct.Memory** %MEMORY
  %loadMem_40ce90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 33
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %1475 to i64*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 7
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RDX.i505 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 15
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %1481 to i64*
  %1482 = load i64, i64* %RBP.i506
  %1483 = sub i64 %1482, 16
  %1484 = load i64, i64* %PC.i504
  %1485 = add i64 %1484, 4
  store i64 %1485, i64* %PC.i504
  %1486 = inttoptr i64 %1483 to i32*
  %1487 = load i32, i32* %1486
  %1488 = sext i32 %1487 to i64
  store i64 %1488, i64* %RDX.i505, align 8
  store %struct.Memory* %loadMem_40ce90, %struct.Memory** %MEMORY
  %loadMem_40ce94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 33
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %1491 to i64*
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 7
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %RDX.i502 = bitcast %union.anon* %1494 to i64*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 11
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %RDI.i503 = bitcast %union.anon* %1497 to i64*
  %1498 = load i64, i64* %RDX.i502
  %1499 = mul i64 %1498, 4
  %1500 = add i64 %1499, 11188784
  %1501 = load i64, i64* %PC.i501
  %1502 = add i64 %1501, 7
  store i64 %1502, i64* %PC.i501
  %1503 = inttoptr i64 %1500 to i32*
  %1504 = load i32, i32* %1503
  %1505 = zext i32 %1504 to i64
  store i64 %1505, i64* %RDI.i503, align 8
  store %struct.Memory* %loadMem_40ce94, %struct.Memory** %MEMORY
  %loadMem_40ce9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 33
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %1508 to i64*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 7
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %RDX.i500 = bitcast %union.anon* %1511 to i64*
  %1512 = load i64, i64* %PC.i499
  %1513 = add i64 %1512, 8
  store i64 %1513, i64* %PC.i499
  %1514 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  store i64 %1514, i64* %RDX.i500, align 8
  store %struct.Memory* %loadMem_40ce9b, %struct.Memory** %MEMORY
  %loadMem_40cea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 33
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %1517 to i64*
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1519 = getelementptr inbounds %struct.GPR, %struct.GPR* %1518, i32 0, i32 7
  %1520 = getelementptr inbounds %struct.Reg, %struct.Reg* %1519, i32 0, i32 0
  %RDX.i497 = bitcast %union.anon* %1520 to i64*
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 9
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %RSI.i498 = bitcast %union.anon* %1523 to i64*
  %1524 = load i64, i64* %RDX.i497
  %1525 = load i64, i64* %PC.i496
  %1526 = add i64 %1525, 3
  store i64 %1526, i64* %PC.i496
  store i64 %1524, i64* %RSI.i498, align 8
  store %struct.Memory* %loadMem_40cea3, %struct.Memory** %MEMORY
  %loadMem_40cea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 33
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %1529 to i64*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 9
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %RSI.i495 = bitcast %union.anon* %1532 to i64*
  %1533 = load i64, i64* %RSI.i495
  %1534 = load i64, i64* %PC.i494
  %1535 = add i64 %1534, 4
  store i64 %1535, i64* %PC.i494
  %1536 = add i64 16, %1533
  store i64 %1536, i64* %RSI.i495, align 8
  %1537 = icmp ult i64 %1536, %1533
  %1538 = icmp ult i64 %1536, 16
  %1539 = or i1 %1537, %1538
  %1540 = zext i1 %1539 to i8
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1540, i8* %1541, align 1
  %1542 = trunc i64 %1536 to i32
  %1543 = and i32 %1542, 255
  %1544 = call i32 @llvm.ctpop.i32(i32 %1543)
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = xor i8 %1546, 1
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1547, i8* %1548, align 1
  %1549 = xor i64 16, %1533
  %1550 = xor i64 %1549, %1536
  %1551 = lshr i64 %1550, 4
  %1552 = trunc i64 %1551 to i8
  %1553 = and i8 %1552, 1
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1553, i8* %1554, align 1
  %1555 = icmp eq i64 %1536, 0
  %1556 = zext i1 %1555 to i8
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1556, i8* %1557, align 1
  %1558 = lshr i64 %1536, 63
  %1559 = trunc i64 %1558 to i8
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1559, i8* %1560, align 1
  %1561 = lshr i64 %1533, 63
  %1562 = xor i64 %1558, %1561
  %1563 = add i64 %1562, %1558
  %1564 = icmp eq i64 %1563, 2
  %1565 = zext i1 %1564 to i8
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1565, i8* %1566, align 1
  store %struct.Memory* %loadMem_40cea6, %struct.Memory** %MEMORY
  %loadMem_40ceaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 33
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 9
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RSI.i493 = bitcast %union.anon* %1572 to i64*
  %1573 = load i64, i64* %RSI.i493
  %1574 = load i64, i64* %PC.i492
  %1575 = add i64 %1574, 8
  store i64 %1575, i64* %PC.i492
  store i64 %1573, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  store %struct.Memory* %loadMem_40ceaa, %struct.Memory** %MEMORY
  %loadMem_40ceb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 33
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %1578 to i64*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 11
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %EDI.i490 = bitcast %union.anon* %1581 to i32*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 7
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %RDX.i491 = bitcast %union.anon* %1584 to i64*
  %1585 = load i64, i64* %RDX.i491
  %1586 = add i64 %1585, 8
  %1587 = load i32, i32* %EDI.i490
  %1588 = zext i32 %1587 to i64
  %1589 = load i64, i64* %PC.i489
  %1590 = add i64 %1589, 3
  store i64 %1590, i64* %PC.i489
  %1591 = inttoptr i64 %1586 to i32*
  store i32 %1587, i32* %1591
  store %struct.Memory* %loadMem_40ceb2, %struct.Memory** %MEMORY
  %loadMem_40ceb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 33
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %1594 to i64*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 7
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %RDX.i487 = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 15
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %1600 to i64*
  %1601 = load i64, i64* %RBP.i488
  %1602 = sub i64 %1601, 24
  %1603 = load i64, i64* %PC.i486
  %1604 = add i64 %1603, 4
  store i64 %1604, i64* %PC.i486
  %1605 = inttoptr i64 %1602 to i32*
  %1606 = load i32, i32* %1605
  %1607 = sext i32 %1606 to i64
  store i64 %1607, i64* %RDX.i487, align 8
  store %struct.Memory* %loadMem_40ceb5, %struct.Memory** %MEMORY
  %loadMem_40ceb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 33
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %1610 to i64*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 7
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %RDX.i485 = bitcast %union.anon* %1613 to i64*
  %1614 = load i64, i64* %RDX.i485
  %1615 = load i64, i64* %PC.i484
  %1616 = add i64 %1615, 4
  store i64 %1616, i64* %PC.i484
  %1617 = shl i64 %1614, 1
  %1618 = icmp slt i64 %1617, 0
  %1619 = shl i64 %1617, 1
  store i64 %1619, i64* %RDX.i485, align 8
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1621 = zext i1 %1618 to i8
  store i8 %1621, i8* %1620, align 1
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1623 = trunc i64 %1619 to i32
  %1624 = and i32 %1623, 254
  %1625 = call i32 @llvm.ctpop.i32(i32 %1624)
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = xor i8 %1627, 1
  store i8 %1628, i8* %1622, align 1
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1629, align 1
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1631 = icmp eq i64 %1619, 0
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %1630, align 1
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1634 = lshr i64 %1619, 63
  %1635 = trunc i64 %1634 to i8
  store i8 %1635, i8* %1633, align 1
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1636, align 1
  store %struct.Memory* %loadMem_40ceb9, %struct.Memory** %MEMORY
  %loadMem_40cebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 33
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %1639 to i64*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 5
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %RCX.i482 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 7
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %RDX.i483 = bitcast %union.anon* %1645 to i64*
  %1646 = load i64, i64* %RCX.i482
  %1647 = load i64, i64* %RDX.i483
  %1648 = load i64, i64* %PC.i481
  %1649 = add i64 %1648, 3
  store i64 %1649, i64* %PC.i481
  %1650 = add i64 %1647, %1646
  store i64 %1650, i64* %RCX.i482, align 8
  %1651 = icmp ult i64 %1650, %1646
  %1652 = icmp ult i64 %1650, %1647
  %1653 = or i1 %1651, %1652
  %1654 = zext i1 %1653 to i8
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1654, i8* %1655, align 1
  %1656 = trunc i64 %1650 to i32
  %1657 = and i32 %1656, 255
  %1658 = call i32 @llvm.ctpop.i32(i32 %1657)
  %1659 = trunc i32 %1658 to i8
  %1660 = and i8 %1659, 1
  %1661 = xor i8 %1660, 1
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1661, i8* %1662, align 1
  %1663 = xor i64 %1647, %1646
  %1664 = xor i64 %1663, %1650
  %1665 = lshr i64 %1664, 4
  %1666 = trunc i64 %1665 to i8
  %1667 = and i8 %1666, 1
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1667, i8* %1668, align 1
  %1669 = icmp eq i64 %1650, 0
  %1670 = zext i1 %1669 to i8
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1670, i8* %1671, align 1
  %1672 = lshr i64 %1650, 63
  %1673 = trunc i64 %1672 to i8
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1673, i8* %1674, align 1
  %1675 = lshr i64 %1646, 63
  %1676 = lshr i64 %1647, 63
  %1677 = xor i64 %1672, %1675
  %1678 = xor i64 %1672, %1676
  %1679 = add i64 %1677, %1678
  %1680 = icmp eq i64 %1679, 2
  %1681 = zext i1 %1680 to i8
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1681, i8* %1682, align 1
  store %struct.Memory* %loadMem_40cebd, %struct.Memory** %MEMORY
  %loadMem_40cec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 33
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1685 to i64*
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 7
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %RDX.i480 = bitcast %union.anon* %1688 to i64*
  %1689 = load i64, i64* %PC.i479
  %1690 = add i64 %1689, 8
  store i64 %1690, i64* %PC.i479
  %1691 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  store i64 %1691, i64* %RDX.i480, align 8
  store %struct.Memory* %loadMem_40cec0, %struct.Memory** %MEMORY
  %loadMem_40cec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 33
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %1694 to i64*
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 5
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %RCX.i477 = bitcast %union.anon* %1697 to i64*
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 7
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %RDX.i478 = bitcast %union.anon* %1700 to i64*
  %1701 = load i64, i64* %RDX.i478
  %1702 = load i64, i64* %RCX.i477
  %1703 = load i64, i64* %PC.i476
  %1704 = add i64 %1703, 3
  store i64 %1704, i64* %PC.i476
  %1705 = inttoptr i64 %1701 to i64*
  store i64 %1702, i64* %1705
  store %struct.Memory* %loadMem_40cec8, %struct.Memory** %MEMORY
  %loadMem_40cecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 33
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %1708 to i64*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 5
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %RCX.i474 = bitcast %union.anon* %1711 to i64*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 15
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %1714 to i64*
  %1715 = load i64, i64* %RBP.i475
  %1716 = sub i64 %1715, 24
  %1717 = load i64, i64* %PC.i473
  %1718 = add i64 %1717, 4
  store i64 %1718, i64* %PC.i473
  %1719 = inttoptr i64 %1716 to i32*
  %1720 = load i32, i32* %1719
  %1721 = sext i32 %1720 to i64
  store i64 %1721, i64* %RCX.i474, align 8
  store %struct.Memory* %loadMem_40cecb, %struct.Memory** %MEMORY
  %loadMem_40cecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 33
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %1724 to i64*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 5
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %RCX.i471 = bitcast %union.anon* %1727 to i64*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 11
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %RDI.i472 = bitcast %union.anon* %1730 to i64*
  %1731 = load i64, i64* %RCX.i471
  %1732 = mul i64 %1731, 4
  %1733 = add i64 %1732, 11188784
  %1734 = load i64, i64* %PC.i470
  %1735 = add i64 %1734, 7
  store i64 %1735, i64* %PC.i470
  %1736 = inttoptr i64 %1733 to i32*
  %1737 = load i32, i32* %1736
  %1738 = zext i32 %1737 to i64
  store i64 %1738, i64* %RDI.i472, align 8
  store %struct.Memory* %loadMem_40cecf, %struct.Memory** %MEMORY
  %loadMem_40ced6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 33
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %1741 to i64*
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 5
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %RCX.i469 = bitcast %union.anon* %1744 to i64*
  %1745 = load i64, i64* %PC.i468
  %1746 = add i64 %1745, 8
  store i64 %1746, i64* %PC.i468
  %1747 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  store i64 %1747, i64* %RCX.i469, align 8
  store %struct.Memory* %loadMem_40ced6, %struct.Memory** %MEMORY
  %loadMem_40cede = load %struct.Memory*, %struct.Memory** %MEMORY
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 33
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %1750 to i64*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 5
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %1753 to i64*
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 7
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %RDX.i467 = bitcast %union.anon* %1756 to i64*
  %1757 = load i64, i64* %RCX.i466
  %1758 = load i64, i64* %PC.i465
  %1759 = add i64 %1758, 3
  store i64 %1759, i64* %PC.i465
  store i64 %1757, i64* %RDX.i467, align 8
  store %struct.Memory* %loadMem_40cede, %struct.Memory** %MEMORY
  %loadMem_40cee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 33
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %1762 to i64*
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 7
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %RDX.i464 = bitcast %union.anon* %1765 to i64*
  %1766 = load i64, i64* %RDX.i464
  %1767 = load i64, i64* %PC.i463
  %1768 = add i64 %1767, 4
  store i64 %1768, i64* %PC.i463
  %1769 = add i64 16, %1766
  store i64 %1769, i64* %RDX.i464, align 8
  %1770 = icmp ult i64 %1769, %1766
  %1771 = icmp ult i64 %1769, 16
  %1772 = or i1 %1770, %1771
  %1773 = zext i1 %1772 to i8
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1773, i8* %1774, align 1
  %1775 = trunc i64 %1769 to i32
  %1776 = and i32 %1775, 255
  %1777 = call i32 @llvm.ctpop.i32(i32 %1776)
  %1778 = trunc i32 %1777 to i8
  %1779 = and i8 %1778, 1
  %1780 = xor i8 %1779, 1
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1780, i8* %1781, align 1
  %1782 = xor i64 16, %1766
  %1783 = xor i64 %1782, %1769
  %1784 = lshr i64 %1783, 4
  %1785 = trunc i64 %1784 to i8
  %1786 = and i8 %1785, 1
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1786, i8* %1787, align 1
  %1788 = icmp eq i64 %1769, 0
  %1789 = zext i1 %1788 to i8
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1789, i8* %1790, align 1
  %1791 = lshr i64 %1769, 63
  %1792 = trunc i64 %1791 to i8
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1792, i8* %1793, align 1
  %1794 = lshr i64 %1766, 63
  %1795 = xor i64 %1791, %1794
  %1796 = add i64 %1795, %1791
  %1797 = icmp eq i64 %1796, 2
  %1798 = zext i1 %1797 to i8
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1798, i8* %1799, align 1
  store %struct.Memory* %loadMem_40cee1, %struct.Memory** %MEMORY
  %loadMem_40cee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 33
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %1802 to i64*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 7
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %RDX.i462 = bitcast %union.anon* %1805 to i64*
  %1806 = load i64, i64* %RDX.i462
  %1807 = load i64, i64* %PC.i461
  %1808 = add i64 %1807, 8
  store i64 %1808, i64* %PC.i461
  store i64 %1806, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  store %struct.Memory* %loadMem_40cee5, %struct.Memory** %MEMORY
  %loadMem_40ceed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 33
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 11
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %EDI.i459 = bitcast %union.anon* %1814 to i32*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 5
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RCX.i460 = bitcast %union.anon* %1817 to i64*
  %1818 = load i64, i64* %RCX.i460
  %1819 = add i64 %1818, 8
  %1820 = load i32, i32* %EDI.i459
  %1821 = zext i32 %1820 to i64
  %1822 = load i64, i64* %PC.i458
  %1823 = add i64 %1822, 3
  store i64 %1823, i64* %PC.i458
  %1824 = inttoptr i64 %1819 to i32*
  store i32 %1820, i32* %1824
  store %struct.Memory* %loadMem_40ceed, %struct.Memory** %MEMORY
  %loadMem_40cef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 33
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %1827 to i64*
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 5
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %RCX.i456 = bitcast %union.anon* %1830 to i64*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 15
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %1833 to i64*
  %1834 = load i64, i64* %RBP.i457
  %1835 = sub i64 %1834, 24
  %1836 = load i64, i64* %PC.i455
  %1837 = add i64 %1836, 4
  store i64 %1837, i64* %PC.i455
  %1838 = inttoptr i64 %1835 to i32*
  %1839 = load i32, i32* %1838
  %1840 = sext i32 %1839 to i64
  store i64 %1840, i64* %RCX.i456, align 8
  store %struct.Memory* %loadMem_40cef0, %struct.Memory** %MEMORY
  %loadMem_40cef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 33
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %1843 to i64*
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 5
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %RCX.i453 = bitcast %union.anon* %1846 to i64*
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 11
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %RDI.i454 = bitcast %union.anon* %1849 to i64*
  %1850 = load i64, i64* %RCX.i453
  %1851 = mul i64 %1850, 4
  %1852 = add i64 %1851, 11188784
  %1853 = load i64, i64* %PC.i452
  %1854 = add i64 %1853, 7
  store i64 %1854, i64* %PC.i452
  %1855 = inttoptr i64 %1852 to i32*
  %1856 = load i32, i32* %1855
  %1857 = zext i32 %1856 to i64
  store i64 %1857, i64* %RDI.i454, align 8
  store %struct.Memory* %loadMem_40cef4, %struct.Memory** %MEMORY
  %loadMem_40cefb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 33
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %1860 to i64*
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1862 = getelementptr inbounds %struct.GPR, %struct.GPR* %1861, i32 0, i32 5
  %1863 = getelementptr inbounds %struct.Reg, %struct.Reg* %1862, i32 0, i32 0
  %RCX.i450 = bitcast %union.anon* %1863 to i64*
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 15
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %1866 to i64*
  %1867 = load i64, i64* %RBP.i451
  %1868 = sub i64 %1867, 16
  %1869 = load i64, i64* %PC.i449
  %1870 = add i64 %1869, 4
  store i64 %1870, i64* %PC.i449
  %1871 = inttoptr i64 %1868 to i32*
  %1872 = load i32, i32* %1871
  %1873 = sext i32 %1872 to i64
  store i64 %1873, i64* %RCX.i450, align 8
  store %struct.Memory* %loadMem_40cefb, %struct.Memory** %MEMORY
  %loadMem_40ceff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 11
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %EDI.i447 = bitcast %union.anon* %1879 to i32*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 5
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %RCX.i448 = bitcast %union.anon* %1882 to i64*
  %1883 = load i64, i64* %RCX.i448
  %1884 = mul i64 %1883, 4
  %1885 = add i64 %1884, 11188784
  %1886 = load i32, i32* %EDI.i447
  %1887 = zext i32 %1886 to i64
  %1888 = load i64, i64* %PC.i446
  %1889 = add i64 %1888, 7
  store i64 %1889, i64* %PC.i446
  %1890 = inttoptr i64 %1885 to i32*
  store i32 %1886, i32* %1890
  store %struct.Memory* %loadMem_40ceff, %struct.Memory** %MEMORY
  %loadMem_40cf06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1892 = getelementptr inbounds %struct.GPR, %struct.GPR* %1891, i32 0, i32 33
  %1893 = getelementptr inbounds %struct.Reg, %struct.Reg* %1892, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %1893 to i64*
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1895 = getelementptr inbounds %struct.GPR, %struct.GPR* %1894, i32 0, i32 5
  %1896 = getelementptr inbounds %struct.Reg, %struct.Reg* %1895, i32 0, i32 0
  %RCX.i444 = bitcast %union.anon* %1896 to i64*
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 15
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %1899 to i64*
  %1900 = load i64, i64* %RBP.i445
  %1901 = sub i64 %1900, 20
  %1902 = load i64, i64* %PC.i443
  %1903 = add i64 %1902, 4
  store i64 %1903, i64* %PC.i443
  %1904 = inttoptr i64 %1901 to i32*
  %1905 = load i32, i32* %1904
  %1906 = sext i32 %1905 to i64
  store i64 %1906, i64* %RCX.i444, align 8
  store %struct.Memory* %loadMem_40cf06, %struct.Memory** %MEMORY
  %loadMem_40cf0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 33
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %1909 to i64*
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 5
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %RCX.i442 = bitcast %union.anon* %1912 to i64*
  %1913 = load i64, i64* %RCX.i442
  %1914 = load i64, i64* %PC.i441
  %1915 = add i64 %1914, 7
  store i64 %1915, i64* %PC.i441
  %1916 = sext i64 %1913 to i128
  %1917 = and i128 %1916, -18446744073709551616
  %1918 = zext i64 %1913 to i128
  %1919 = or i128 %1917, %1918
  %1920 = mul i128 744, %1919
  %1921 = trunc i128 %1920 to i64
  store i64 %1921, i64* %RCX.i442, align 8
  %1922 = sext i64 %1921 to i128
  %1923 = icmp ne i128 %1922, %1920
  %1924 = zext i1 %1923 to i8
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1924, i8* %1925, align 1
  %1926 = trunc i128 %1920 to i32
  %1927 = and i32 %1926, 255
  %1928 = call i32 @llvm.ctpop.i32(i32 %1927)
  %1929 = trunc i32 %1928 to i8
  %1930 = and i8 %1929, 1
  %1931 = xor i8 %1930, 1
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1931, i8* %1932, align 1
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1933, align 1
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1934, align 1
  %1935 = lshr i64 %1921, 63
  %1936 = trunc i64 %1935 to i8
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1936, i8* %1937, align 1
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1924, i8* %1938, align 1
  store %struct.Memory* %loadMem_40cf0a, %struct.Memory** %MEMORY
  %loadMem_40cf11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 33
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %1941 to i64*
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 1
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %1944 to i64*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 7
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %RDX.i440 = bitcast %union.anon* %1947 to i64*
  %1948 = load i64, i64* %RAX.i439
  %1949 = load i64, i64* %PC.i438
  %1950 = add i64 %1949, 3
  store i64 %1950, i64* %PC.i438
  store i64 %1948, i64* %RDX.i440, align 8
  store %struct.Memory* %loadMem_40cf11, %struct.Memory** %MEMORY
  %loadMem_40cf14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 33
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %1953 to i64*
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 5
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %RCX.i436 = bitcast %union.anon* %1956 to i64*
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 7
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %RDX.i437 = bitcast %union.anon* %1959 to i64*
  %1960 = load i64, i64* %RDX.i437
  %1961 = load i64, i64* %RCX.i436
  %1962 = load i64, i64* %PC.i435
  %1963 = add i64 %1962, 3
  store i64 %1963, i64* %PC.i435
  %1964 = add i64 %1961, %1960
  store i64 %1964, i64* %RDX.i437, align 8
  %1965 = icmp ult i64 %1964, %1960
  %1966 = icmp ult i64 %1964, %1961
  %1967 = or i1 %1965, %1966
  %1968 = zext i1 %1967 to i8
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1968, i8* %1969, align 1
  %1970 = trunc i64 %1964 to i32
  %1971 = and i32 %1970, 255
  %1972 = call i32 @llvm.ctpop.i32(i32 %1971)
  %1973 = trunc i32 %1972 to i8
  %1974 = and i8 %1973, 1
  %1975 = xor i8 %1974, 1
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1975, i8* %1976, align 1
  %1977 = xor i64 %1961, %1960
  %1978 = xor i64 %1977, %1964
  %1979 = lshr i64 %1978, 4
  %1980 = trunc i64 %1979 to i8
  %1981 = and i8 %1980, 1
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1981, i8* %1982, align 1
  %1983 = icmp eq i64 %1964, 0
  %1984 = zext i1 %1983 to i8
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1984, i8* %1985, align 1
  %1986 = lshr i64 %1964, 63
  %1987 = trunc i64 %1986 to i8
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1987, i8* %1988, align 1
  %1989 = lshr i64 %1960, 63
  %1990 = lshr i64 %1961, 63
  %1991 = xor i64 %1986, %1989
  %1992 = xor i64 %1986, %1990
  %1993 = add i64 %1991, %1992
  %1994 = icmp eq i64 %1993, 2
  %1995 = zext i1 %1994 to i8
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1995, i8* %1996, align 1
  store %struct.Memory* %loadMem_40cf14, %struct.Memory** %MEMORY
  %loadMem_40cf17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 33
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %1999 to i64*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 7
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %RDX.i433 = bitcast %union.anon* %2002 to i64*
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 11
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %RDI.i434 = bitcast %union.anon* %2005 to i64*
  %2006 = load i64, i64* %RDX.i433
  %2007 = add i64 %2006, 8
  %2008 = load i64, i64* %PC.i432
  %2009 = add i64 %2008, 3
  store i64 %2009, i64* %PC.i432
  %2010 = inttoptr i64 %2007 to i32*
  %2011 = load i32, i32* %2010
  %2012 = zext i32 %2011 to i64
  store i64 %2012, i64* %RDI.i434, align 8
  store %struct.Memory* %loadMem_40cf17, %struct.Memory** %MEMORY
  %loadMem_40cf1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 33
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %2015 to i64*
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 5
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %RCX.i430 = bitcast %union.anon* %2018 to i64*
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 15
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %2021 to i64*
  %2022 = load i64, i64* %RBP.i431
  %2023 = sub i64 %2022, 24
  %2024 = load i64, i64* %PC.i429
  %2025 = add i64 %2024, 4
  store i64 %2025, i64* %PC.i429
  %2026 = inttoptr i64 %2023 to i32*
  %2027 = load i32, i32* %2026
  %2028 = sext i32 %2027 to i64
  store i64 %2028, i64* %RCX.i430, align 8
  store %struct.Memory* %loadMem_40cf1a, %struct.Memory** %MEMORY
  %loadMem_40cf1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 33
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 11
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %EDI.i427 = bitcast %union.anon* %2034 to i32*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 5
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %RCX.i428 = bitcast %union.anon* %2037 to i64*
  %2038 = load i64, i64* %RCX.i428
  %2039 = mul i64 %2038, 4
  %2040 = add i64 %2039, 11188784
  %2041 = load i32, i32* %EDI.i427
  %2042 = zext i32 %2041 to i64
  %2043 = load i64, i64* %PC.i426
  %2044 = add i64 %2043, 7
  store i64 %2044, i64* %PC.i426
  %2045 = inttoptr i64 %2040 to i32*
  store i32 %2041, i32* %2045
  store %struct.Memory* %loadMem_40cf1e, %struct.Memory** %MEMORY
  %loadMem_40cf25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 33
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %2048 to i64*
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 5
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %RCX.i424 = bitcast %union.anon* %2051 to i64*
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 15
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %2054 to i64*
  %2055 = load i64, i64* %RBP.i425
  %2056 = sub i64 %2055, 20
  %2057 = load i64, i64* %PC.i423
  %2058 = add i64 %2057, 4
  store i64 %2058, i64* %PC.i423
  %2059 = inttoptr i64 %2056 to i32*
  %2060 = load i32, i32* %2059
  %2061 = sext i32 %2060 to i64
  store i64 %2061, i64* %RCX.i424, align 8
  store %struct.Memory* %loadMem_40cf25, %struct.Memory** %MEMORY
  %loadMem_40cf29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 33
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %2064 to i64*
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2066 = getelementptr inbounds %struct.GPR, %struct.GPR* %2065, i32 0, i32 5
  %2067 = getelementptr inbounds %struct.Reg, %struct.Reg* %2066, i32 0, i32 0
  %RCX.i422 = bitcast %union.anon* %2067 to i64*
  %2068 = load i64, i64* %RCX.i422
  %2069 = load i64, i64* %PC.i421
  %2070 = add i64 %2069, 7
  store i64 %2070, i64* %PC.i421
  %2071 = sext i64 %2068 to i128
  %2072 = and i128 %2071, -18446744073709551616
  %2073 = zext i64 %2068 to i128
  %2074 = or i128 %2072, %2073
  %2075 = mul i128 744, %2074
  %2076 = trunc i128 %2075 to i64
  store i64 %2076, i64* %RCX.i422, align 8
  %2077 = sext i64 %2076 to i128
  %2078 = icmp ne i128 %2077, %2075
  %2079 = zext i1 %2078 to i8
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2079, i8* %2080, align 1
  %2081 = trunc i128 %2075 to i32
  %2082 = and i32 %2081, 255
  %2083 = call i32 @llvm.ctpop.i32(i32 %2082)
  %2084 = trunc i32 %2083 to i8
  %2085 = and i8 %2084, 1
  %2086 = xor i8 %2085, 1
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2086, i8* %2087, align 1
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2088, align 1
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2089, align 1
  %2090 = lshr i64 %2076, 63
  %2091 = trunc i64 %2090 to i8
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2091, i8* %2092, align 1
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2079, i8* %2093, align 1
  store %struct.Memory* %loadMem_40cf29, %struct.Memory** %MEMORY
  %loadMem_40cf30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 33
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 1
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 5
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %RCX.i420 = bitcast %union.anon* %2102 to i64*
  %2103 = load i64, i64* %RAX.i419
  %2104 = load i64, i64* %RCX.i420
  %2105 = load i64, i64* %PC.i418
  %2106 = add i64 %2105, 3
  store i64 %2106, i64* %PC.i418
  %2107 = add i64 %2104, %2103
  store i64 %2107, i64* %RAX.i419, align 8
  %2108 = icmp ult i64 %2107, %2103
  %2109 = icmp ult i64 %2107, %2104
  %2110 = or i1 %2108, %2109
  %2111 = zext i1 %2110 to i8
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2111, i8* %2112, align 1
  %2113 = trunc i64 %2107 to i32
  %2114 = and i32 %2113, 255
  %2115 = call i32 @llvm.ctpop.i32(i32 %2114)
  %2116 = trunc i32 %2115 to i8
  %2117 = and i8 %2116, 1
  %2118 = xor i8 %2117, 1
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2118, i8* %2119, align 1
  %2120 = xor i64 %2104, %2103
  %2121 = xor i64 %2120, %2107
  %2122 = lshr i64 %2121, 4
  %2123 = trunc i64 %2122 to i8
  %2124 = and i8 %2123, 1
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2124, i8* %2125, align 1
  %2126 = icmp eq i64 %2107, 0
  %2127 = zext i1 %2126 to i8
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2127, i8* %2128, align 1
  %2129 = lshr i64 %2107, 63
  %2130 = trunc i64 %2129 to i8
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2130, i8* %2131, align 1
  %2132 = lshr i64 %2103, 63
  %2133 = lshr i64 %2104, 63
  %2134 = xor i64 %2129, %2132
  %2135 = xor i64 %2129, %2133
  %2136 = add i64 %2134, %2135
  %2137 = icmp eq i64 %2136, 2
  %2138 = zext i1 %2137 to i8
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2138, i8* %2139, align 1
  store %struct.Memory* %loadMem_40cf30, %struct.Memory** %MEMORY
  %loadMem_40cf33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 33
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 1
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %2145 to i64*
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 11
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %RDI.i417 = bitcast %union.anon* %2148 to i64*
  %2149 = load i64, i64* %RAX.i416
  %2150 = add i64 %2149, 8
  %2151 = load i64, i64* %PC.i415
  %2152 = add i64 %2151, 3
  store i64 %2152, i64* %PC.i415
  %2153 = inttoptr i64 %2150 to i32*
  %2154 = load i32, i32* %2153
  %2155 = zext i32 %2154 to i64
  store i64 %2155, i64* %RDI.i417, align 8
  store %struct.Memory* %loadMem_40cf33, %struct.Memory** %MEMORY
  %loadMem_40cf36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 33
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %2158 to i64*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 11
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %2161 to i32*
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 15
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %2164 to i64*
  %2165 = load i32, i32* %EDI.i
  %2166 = zext i32 %2165 to i64
  %2167 = load i64, i64* %RBP.i414
  %2168 = sub i64 %2167, 24
  %2169 = load i64, i64* %PC.i413
  %2170 = add i64 %2169, 3
  store i64 %2170, i64* %PC.i413
  %2171 = inttoptr i64 %2168 to i32*
  %2172 = load i32, i32* %2171
  %2173 = sub i32 %2165, %2172
  %2174 = icmp ult i32 %2165, %2172
  %2175 = zext i1 %2174 to i8
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2175, i8* %2176, align 1
  %2177 = and i32 %2173, 255
  %2178 = call i32 @llvm.ctpop.i32(i32 %2177)
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  %2181 = xor i8 %2180, 1
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2181, i8* %2182, align 1
  %2183 = xor i32 %2172, %2165
  %2184 = xor i32 %2183, %2173
  %2185 = lshr i32 %2184, 4
  %2186 = trunc i32 %2185 to i8
  %2187 = and i8 %2186, 1
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2187, i8* %2188, align 1
  %2189 = icmp eq i32 %2173, 0
  %2190 = zext i1 %2189 to i8
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2190, i8* %2191, align 1
  %2192 = lshr i32 %2173, 31
  %2193 = trunc i32 %2192 to i8
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2193, i8* %2194, align 1
  %2195 = lshr i32 %2165, 31
  %2196 = lshr i32 %2172, 31
  %2197 = xor i32 %2196, %2195
  %2198 = xor i32 %2192, %2195
  %2199 = add i32 %2198, %2197
  %2200 = icmp eq i32 %2199, 2
  %2201 = zext i1 %2200 to i8
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2201, i8* %2202, align 1
  store %struct.Memory* %loadMem_40cf36, %struct.Memory** %MEMORY
  %loadMem_40cf39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 33
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %2205 to i64*
  %2206 = load i64, i64* %PC.i412
  %2207 = add i64 %2206, 53
  %2208 = load i64, i64* %PC.i412
  %2209 = add i64 %2208, 6
  %2210 = load i64, i64* %PC.i412
  %2211 = add i64 %2210, 6
  store i64 %2211, i64* %PC.i412
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2213 = load i8, i8* %2212, align 1
  %2214 = icmp ne i8 %2213, 0
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2216 = load i8, i8* %2215, align 1
  %2217 = icmp ne i8 %2216, 0
  %2218 = xor i1 %2214, %2217
  %2219 = xor i1 %2218, true
  %2220 = zext i1 %2219 to i8
  store i8 %2220, i8* %BRANCH_TAKEN, align 1
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2222 = select i1 %2218, i64 %2209, i64 %2207
  store i64 %2222, i64* %2221, align 8
  store %struct.Memory* %loadMem_40cf39, %struct.Memory** %MEMORY
  %loadBr_40cf39 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40cf39 = icmp eq i8 %loadBr_40cf39, 1
  br i1 %cmpBr_40cf39, label %block_.L_40cf6e, label %block_40cf3f

block_40cf3f:                                     ; preds = %block_40ce4c
  %loadMem_40cf3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 33
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %2225 to i64*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 1
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %2228 to i64*
  %2229 = load i64, i64* %PC.i410
  %2230 = add i64 %2229, 10
  store i64 %2230, i64* %PC.i410
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i411, align 8
  store %struct.Memory* %loadMem_40cf3f, %struct.Memory** %MEMORY
  %loadMem_40cf49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 33
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %2233 to i64*
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 5
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %2236 to i64*
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 15
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %2239 to i64*
  %2240 = load i64, i64* %RBP.i409
  %2241 = sub i64 %2240, 20
  %2242 = load i64, i64* %PC.i407
  %2243 = add i64 %2242, 4
  store i64 %2243, i64* %PC.i407
  %2244 = inttoptr i64 %2241 to i32*
  %2245 = load i32, i32* %2244
  %2246 = sext i32 %2245 to i64
  store i64 %2246, i64* %RCX.i408, align 8
  store %struct.Memory* %loadMem_40cf49, %struct.Memory** %MEMORY
  %loadMem_40cf4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 33
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %2249 to i64*
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 5
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %RCX.i406 = bitcast %union.anon* %2252 to i64*
  %2253 = load i64, i64* %RCX.i406
  %2254 = load i64, i64* %PC.i405
  %2255 = add i64 %2254, 7
  store i64 %2255, i64* %PC.i405
  %2256 = sext i64 %2253 to i128
  %2257 = and i128 %2256, -18446744073709551616
  %2258 = zext i64 %2253 to i128
  %2259 = or i128 %2257, %2258
  %2260 = mul i128 744, %2259
  %2261 = trunc i128 %2260 to i64
  store i64 %2261, i64* %RCX.i406, align 8
  %2262 = sext i64 %2261 to i128
  %2263 = icmp ne i128 %2262, %2260
  %2264 = zext i1 %2263 to i8
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2264, i8* %2265, align 1
  %2266 = trunc i128 %2260 to i32
  %2267 = and i32 %2266, 255
  %2268 = call i32 @llvm.ctpop.i32(i32 %2267)
  %2269 = trunc i32 %2268 to i8
  %2270 = and i8 %2269, 1
  %2271 = xor i8 %2270, 1
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2271, i8* %2272, align 1
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2273, align 1
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2274, align 1
  %2275 = lshr i64 %2261, 63
  %2276 = trunc i64 %2275 to i8
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2276, i8* %2277, align 1
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2264, i8* %2278, align 1
  store %struct.Memory* %loadMem_40cf4d, %struct.Memory** %MEMORY
  %loadMem_40cf54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 33
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %2281 to i64*
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 1
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %2284 to i64*
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 7
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %RDX.i404 = bitcast %union.anon* %2287 to i64*
  %2288 = load i64, i64* %RAX.i403
  %2289 = load i64, i64* %PC.i402
  %2290 = add i64 %2289, 3
  store i64 %2290, i64* %PC.i402
  store i64 %2288, i64* %RDX.i404, align 8
  store %struct.Memory* %loadMem_40cf54, %struct.Memory** %MEMORY
  %loadMem_40cf57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 33
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %2293 to i64*
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 5
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %2296 to i64*
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 7
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %RDX.i401 = bitcast %union.anon* %2299 to i64*
  %2300 = load i64, i64* %RDX.i401
  %2301 = load i64, i64* %RCX.i400
  %2302 = load i64, i64* %PC.i399
  %2303 = add i64 %2302, 3
  store i64 %2303, i64* %PC.i399
  %2304 = add i64 %2301, %2300
  store i64 %2304, i64* %RDX.i401, align 8
  %2305 = icmp ult i64 %2304, %2300
  %2306 = icmp ult i64 %2304, %2301
  %2307 = or i1 %2305, %2306
  %2308 = zext i1 %2307 to i8
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2308, i8* %2309, align 1
  %2310 = trunc i64 %2304 to i32
  %2311 = and i32 %2310, 255
  %2312 = call i32 @llvm.ctpop.i32(i32 %2311)
  %2313 = trunc i32 %2312 to i8
  %2314 = and i8 %2313, 1
  %2315 = xor i8 %2314, 1
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2315, i8* %2316, align 1
  %2317 = xor i64 %2301, %2300
  %2318 = xor i64 %2317, %2304
  %2319 = lshr i64 %2318, 4
  %2320 = trunc i64 %2319 to i8
  %2321 = and i8 %2320, 1
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2321, i8* %2322, align 1
  %2323 = icmp eq i64 %2304, 0
  %2324 = zext i1 %2323 to i8
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2324, i8* %2325, align 1
  %2326 = lshr i64 %2304, 63
  %2327 = trunc i64 %2326 to i8
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2327, i8* %2328, align 1
  %2329 = lshr i64 %2300, 63
  %2330 = lshr i64 %2301, 63
  %2331 = xor i64 %2326, %2329
  %2332 = xor i64 %2326, %2330
  %2333 = add i64 %2331, %2332
  %2334 = icmp eq i64 %2333, 2
  %2335 = zext i1 %2334 to i8
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2335, i8* %2336, align 1
  store %struct.Memory* %loadMem_40cf57, %struct.Memory** %MEMORY
  %loadMem_40cf5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 33
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %2339 to i64*
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 7
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %RDX.i397 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 9
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %RSI.i398 = bitcast %union.anon* %2345 to i64*
  %2346 = load i64, i64* %RDX.i397
  %2347 = add i64 %2346, 8
  %2348 = load i64, i64* %PC.i396
  %2349 = add i64 %2348, 3
  store i64 %2349, i64* %PC.i396
  %2350 = inttoptr i64 %2347 to i32*
  %2351 = load i32, i32* %2350
  %2352 = zext i32 %2351 to i64
  store i64 %2352, i64* %RSI.i398, align 8
  store %struct.Memory* %loadMem_40cf5a, %struct.Memory** %MEMORY
  %loadMem_40cf5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 33
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %2355 to i64*
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 5
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %RCX.i394 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 15
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %2361 to i64*
  %2362 = load i64, i64* %RBP.i395
  %2363 = sub i64 %2362, 4
  %2364 = load i64, i64* %PC.i393
  %2365 = add i64 %2364, 4
  store i64 %2365, i64* %PC.i393
  %2366 = inttoptr i64 %2363 to i32*
  %2367 = load i32, i32* %2366
  %2368 = sext i32 %2367 to i64
  store i64 %2368, i64* %RCX.i394, align 8
  store %struct.Memory* %loadMem_40cf5d, %struct.Memory** %MEMORY
  %loadMem_40cf61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 33
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %2371 to i64*
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 5
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %2374 to i64*
  %2375 = load i64, i64* %RCX.i392
  %2376 = load i64, i64* %PC.i391
  %2377 = add i64 %2376, 7
  store i64 %2377, i64* %PC.i391
  %2378 = sext i64 %2375 to i128
  %2379 = and i128 %2378, -18446744073709551616
  %2380 = zext i64 %2375 to i128
  %2381 = or i128 %2379, %2380
  %2382 = mul i128 744, %2381
  %2383 = trunc i128 %2382 to i64
  store i64 %2383, i64* %RCX.i392, align 8
  %2384 = sext i64 %2383 to i128
  %2385 = icmp ne i128 %2384, %2382
  %2386 = zext i1 %2385 to i8
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2386, i8* %2387, align 1
  %2388 = trunc i128 %2382 to i32
  %2389 = and i32 %2388, 255
  %2390 = call i32 @llvm.ctpop.i32(i32 %2389)
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  %2393 = xor i8 %2392, 1
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2393, i8* %2394, align 1
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2395, align 1
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2396, align 1
  %2397 = lshr i64 %2383, 63
  %2398 = trunc i64 %2397 to i8
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2398, i8* %2399, align 1
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2386, i8* %2400, align 1
  store %struct.Memory* %loadMem_40cf61, %struct.Memory** %MEMORY
  %loadMem_40cf68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 33
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 1
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 5
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %RCX.i390 = bitcast %union.anon* %2409 to i64*
  %2410 = load i64, i64* %RAX.i389
  %2411 = load i64, i64* %RCX.i390
  %2412 = load i64, i64* %PC.i388
  %2413 = add i64 %2412, 3
  store i64 %2413, i64* %PC.i388
  %2414 = add i64 %2411, %2410
  store i64 %2414, i64* %RAX.i389, align 8
  %2415 = icmp ult i64 %2414, %2410
  %2416 = icmp ult i64 %2414, %2411
  %2417 = or i1 %2415, %2416
  %2418 = zext i1 %2417 to i8
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2418, i8* %2419, align 1
  %2420 = trunc i64 %2414 to i32
  %2421 = and i32 %2420, 255
  %2422 = call i32 @llvm.ctpop.i32(i32 %2421)
  %2423 = trunc i32 %2422 to i8
  %2424 = and i8 %2423, 1
  %2425 = xor i8 %2424, 1
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2425, i8* %2426, align 1
  %2427 = xor i64 %2411, %2410
  %2428 = xor i64 %2427, %2414
  %2429 = lshr i64 %2428, 4
  %2430 = trunc i64 %2429 to i8
  %2431 = and i8 %2430, 1
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2431, i8* %2432, align 1
  %2433 = icmp eq i64 %2414, 0
  %2434 = zext i1 %2433 to i8
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2434, i8* %2435, align 1
  %2436 = lshr i64 %2414, 63
  %2437 = trunc i64 %2436 to i8
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2437, i8* %2438, align 1
  %2439 = lshr i64 %2410, 63
  %2440 = lshr i64 %2411, 63
  %2441 = xor i64 %2436, %2439
  %2442 = xor i64 %2436, %2440
  %2443 = add i64 %2441, %2442
  %2444 = icmp eq i64 %2443, 2
  %2445 = zext i1 %2444 to i8
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2445, i8* %2446, align 1
  store %struct.Memory* %loadMem_40cf68, %struct.Memory** %MEMORY
  %loadMem_40cf6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 33
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %2449 to i64*
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 9
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %ESI.i386 = bitcast %union.anon* %2452 to i32*
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 1
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %2455 to i64*
  %2456 = load i64, i64* %RAX.i387
  %2457 = add i64 %2456, 8
  %2458 = load i32, i32* %ESI.i386
  %2459 = zext i32 %2458 to i64
  %2460 = load i64, i64* %PC.i385
  %2461 = add i64 %2460, 3
  store i64 %2461, i64* %PC.i385
  %2462 = inttoptr i64 %2457 to i32*
  store i32 %2458, i32* %2462
  store %struct.Memory* %loadMem_40cf6b, %struct.Memory** %MEMORY
  br label %block_.L_40cf6e

block_.L_40cf6e:                                  ; preds = %block_40cf3f, %block_40ce4c
  %loadMem_40cf6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 33
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %2465 to i64*
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 1
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %2468 to i64*
  %2469 = load i64, i64* %PC.i383
  %2470 = add i64 %2469, 10
  store i64 %2470, i64* %PC.i383
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_40cf6e, %struct.Memory** %MEMORY
  %loadMem_40cf78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 33
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %2473 to i64*
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 5
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %RCX.i381 = bitcast %union.anon* %2476 to i64*
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 15
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %2479 to i64*
  %2480 = load i64, i64* %RBP.i382
  %2481 = sub i64 %2480, 20
  %2482 = load i64, i64* %PC.i380
  %2483 = add i64 %2482, 4
  store i64 %2483, i64* %PC.i380
  %2484 = inttoptr i64 %2481 to i32*
  %2485 = load i32, i32* %2484
  %2486 = sext i32 %2485 to i64
  store i64 %2486, i64* %RCX.i381, align 8
  store %struct.Memory* %loadMem_40cf78, %struct.Memory** %MEMORY
  %loadMem_40cf7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 5
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RCX.i379 = bitcast %union.anon* %2492 to i64*
  %2493 = load i64, i64* %RCX.i379
  %2494 = load i64, i64* %PC.i378
  %2495 = add i64 %2494, 7
  store i64 %2495, i64* %PC.i378
  %2496 = sext i64 %2493 to i128
  %2497 = and i128 %2496, -18446744073709551616
  %2498 = zext i64 %2493 to i128
  %2499 = or i128 %2497, %2498
  %2500 = mul i128 744, %2499
  %2501 = trunc i128 %2500 to i64
  store i64 %2501, i64* %RCX.i379, align 8
  %2502 = sext i64 %2501 to i128
  %2503 = icmp ne i128 %2502, %2500
  %2504 = zext i1 %2503 to i8
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2504, i8* %2505, align 1
  %2506 = trunc i128 %2500 to i32
  %2507 = and i32 %2506, 255
  %2508 = call i32 @llvm.ctpop.i32(i32 %2507)
  %2509 = trunc i32 %2508 to i8
  %2510 = and i8 %2509, 1
  %2511 = xor i8 %2510, 1
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2511, i8* %2512, align 1
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2513, align 1
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2514, align 1
  %2515 = lshr i64 %2501, 63
  %2516 = trunc i64 %2515 to i8
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2516, i8* %2517, align 1
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2504, i8* %2518, align 1
  store %struct.Memory* %loadMem_40cf7c, %struct.Memory** %MEMORY
  %loadMem_40cf83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 33
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %2521 to i64*
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 1
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %RAX.i376 = bitcast %union.anon* %2524 to i64*
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 5
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %RCX.i377 = bitcast %union.anon* %2527 to i64*
  %2528 = load i64, i64* %RAX.i376
  %2529 = load i64, i64* %RCX.i377
  %2530 = load i64, i64* %PC.i375
  %2531 = add i64 %2530, 3
  store i64 %2531, i64* %PC.i375
  %2532 = add i64 %2529, %2528
  store i64 %2532, i64* %RAX.i376, align 8
  %2533 = icmp ult i64 %2532, %2528
  %2534 = icmp ult i64 %2532, %2529
  %2535 = or i1 %2533, %2534
  %2536 = zext i1 %2535 to i8
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2536, i8* %2537, align 1
  %2538 = trunc i64 %2532 to i32
  %2539 = and i32 %2538, 255
  %2540 = call i32 @llvm.ctpop.i32(i32 %2539)
  %2541 = trunc i32 %2540 to i8
  %2542 = and i8 %2541, 1
  %2543 = xor i8 %2542, 1
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2543, i8* %2544, align 1
  %2545 = xor i64 %2529, %2528
  %2546 = xor i64 %2545, %2532
  %2547 = lshr i64 %2546, 4
  %2548 = trunc i64 %2547 to i8
  %2549 = and i8 %2548, 1
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2549, i8* %2550, align 1
  %2551 = icmp eq i64 %2532, 0
  %2552 = zext i1 %2551 to i8
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2552, i8* %2553, align 1
  %2554 = lshr i64 %2532, 63
  %2555 = trunc i64 %2554 to i8
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2555, i8* %2556, align 1
  %2557 = lshr i64 %2528, 63
  %2558 = lshr i64 %2529, 63
  %2559 = xor i64 %2554, %2557
  %2560 = xor i64 %2554, %2558
  %2561 = add i64 %2559, %2560
  %2562 = icmp eq i64 %2561, 2
  %2563 = zext i1 %2562 to i8
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2563, i8* %2564, align 1
  store %struct.Memory* %loadMem_40cf83, %struct.Memory** %MEMORY
  %loadMem_40cf86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 33
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 1
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %2570 to i64*
  %2571 = load i64, i64* %RAX.i374
  %2572 = add i64 %2571, 12
  %2573 = load i64, i64* %PC.i373
  %2574 = add i64 %2573, 4
  store i64 %2574, i64* %PC.i373
  %2575 = inttoptr i64 %2572 to i32*
  %2576 = load i32, i32* %2575
  %2577 = sub i32 %2576, 20
  %2578 = icmp ult i32 %2576, 20
  %2579 = zext i1 %2578 to i8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2579, i8* %2580, align 1
  %2581 = and i32 %2577, 255
  %2582 = call i32 @llvm.ctpop.i32(i32 %2581)
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  %2585 = xor i8 %2584, 1
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2585, i8* %2586, align 1
  %2587 = xor i32 %2576, 20
  %2588 = xor i32 %2587, %2577
  %2589 = lshr i32 %2588, 4
  %2590 = trunc i32 %2589 to i8
  %2591 = and i8 %2590, 1
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2591, i8* %2592, align 1
  %2593 = icmp eq i32 %2577, 0
  %2594 = zext i1 %2593 to i8
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2594, i8* %2595, align 1
  %2596 = lshr i32 %2577, 31
  %2597 = trunc i32 %2596 to i8
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2597, i8* %2598, align 1
  %2599 = lshr i32 %2576, 31
  %2600 = xor i32 %2596, %2599
  %2601 = add i32 %2600, %2599
  %2602 = icmp eq i32 %2601, 2
  %2603 = zext i1 %2602 to i8
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2603, i8* %2604, align 1
  store %struct.Memory* %loadMem_40cf86, %struct.Memory** %MEMORY
  %loadMem_40cf8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %2607 to i64*
  %2608 = load i64, i64* %PC.i372
  %2609 = add i64 %2608, 300
  %2610 = load i64, i64* %PC.i372
  %2611 = add i64 %2610, 6
  %2612 = load i64, i64* %PC.i372
  %2613 = add i64 %2612, 6
  store i64 %2613, i64* %PC.i372
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2615 = load i8, i8* %2614, align 1
  %2616 = icmp eq i8 %2615, 0
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2618 = load i8, i8* %2617, align 1
  %2619 = icmp ne i8 %2618, 0
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2621 = load i8, i8* %2620, align 1
  %2622 = icmp ne i8 %2621, 0
  %2623 = xor i1 %2619, %2622
  %2624 = xor i1 %2623, true
  %2625 = and i1 %2616, %2624
  %2626 = zext i1 %2625 to i8
  store i8 %2626, i8* %BRANCH_TAKEN, align 1
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2628 = select i1 %2625, i64 %2609, i64 %2611
  store i64 %2628, i64* %2627, align 8
  store %struct.Memory* %loadMem_40cf8a, %struct.Memory** %MEMORY
  %loadBr_40cf8a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40cf8a = icmp eq i8 %loadBr_40cf8a, 1
  br i1 %cmpBr_40cf8a, label %block_.L_40d0b6, label %block_40cf90

block_40cf90:                                     ; preds = %block_.L_40cf6e
  %loadMem_40cf90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 33
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %2631 to i64*
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2633 = getelementptr inbounds %struct.GPR, %struct.GPR* %2632, i32 0, i32 15
  %2634 = getelementptr inbounds %struct.Reg, %struct.Reg* %2633, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %2634 to i64*
  %2635 = load i64, i64* %RBP.i371
  %2636 = sub i64 %2635, 12
  %2637 = load i64, i64* %PC.i370
  %2638 = add i64 %2637, 7
  store i64 %2638, i64* %PC.i370
  %2639 = inttoptr i64 %2636 to i32*
  store i32 0, i32* %2639
  store %struct.Memory* %loadMem_40cf90, %struct.Memory** %MEMORY
  br label %block_.L_40cf97

block_.L_40cf97:                                  ; preds = %block_.L_40d0a3, %block_40cf90
  %loadMem_40cf97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 33
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %2642 to i64*
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 1
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %2645 to i64*
  %2646 = load i64, i64* %PC.i368
  %2647 = add i64 %2646, 10
  store i64 %2647, i64* %PC.i368
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i369, align 8
  store %struct.Memory* %loadMem_40cf97, %struct.Memory** %MEMORY
  %loadMem_40cfa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 5
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 15
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %2656 to i64*
  %2657 = load i64, i64* %RBP.i367
  %2658 = sub i64 %2657, 12
  %2659 = load i64, i64* %PC.i365
  %2660 = add i64 %2659, 3
  store i64 %2660, i64* %PC.i365
  %2661 = inttoptr i64 %2658 to i32*
  %2662 = load i32, i32* %2661
  %2663 = zext i32 %2662 to i64
  store i64 %2663, i64* %RCX.i366, align 8
  store %struct.Memory* %loadMem_40cfa1, %struct.Memory** %MEMORY
  %loadMem_40cfa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 33
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2666 to i64*
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 7
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %RDX.i363 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 15
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %2672 to i64*
  %2673 = load i64, i64* %RBP.i364
  %2674 = sub i64 %2673, 20
  %2675 = load i64, i64* %PC.i362
  %2676 = add i64 %2675, 4
  store i64 %2676, i64* %PC.i362
  %2677 = inttoptr i64 %2674 to i32*
  %2678 = load i32, i32* %2677
  %2679 = sext i32 %2678 to i64
  store i64 %2679, i64* %RDX.i363, align 8
  store %struct.Memory* %loadMem_40cfa4, %struct.Memory** %MEMORY
  %loadMem_40cfa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 33
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 7
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %RDX.i361 = bitcast %union.anon* %2685 to i64*
  %2686 = load i64, i64* %RDX.i361
  %2687 = load i64, i64* %PC.i360
  %2688 = add i64 %2687, 7
  store i64 %2688, i64* %PC.i360
  %2689 = sext i64 %2686 to i128
  %2690 = and i128 %2689, -18446744073709551616
  %2691 = zext i64 %2686 to i128
  %2692 = or i128 %2690, %2691
  %2693 = mul i128 744, %2692
  %2694 = trunc i128 %2693 to i64
  store i64 %2694, i64* %RDX.i361, align 8
  %2695 = sext i64 %2694 to i128
  %2696 = icmp ne i128 %2695, %2693
  %2697 = zext i1 %2696 to i8
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2697, i8* %2698, align 1
  %2699 = trunc i128 %2693 to i32
  %2700 = and i32 %2699, 255
  %2701 = call i32 @llvm.ctpop.i32(i32 %2700)
  %2702 = trunc i32 %2701 to i8
  %2703 = and i8 %2702, 1
  %2704 = xor i8 %2703, 1
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2704, i8* %2705, align 1
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2706, align 1
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2707, align 1
  %2708 = lshr i64 %2694, 63
  %2709 = trunc i64 %2708 to i8
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2709, i8* %2710, align 1
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2697, i8* %2711, align 1
  store %struct.Memory* %loadMem_40cfa8, %struct.Memory** %MEMORY
  %loadMem_40cfaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 33
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2714 to i64*
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 1
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 7
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %RDX.i359 = bitcast %union.anon* %2720 to i64*
  %2721 = load i64, i64* %RAX.i358
  %2722 = load i64, i64* %RDX.i359
  %2723 = load i64, i64* %PC.i357
  %2724 = add i64 %2723, 3
  store i64 %2724, i64* %PC.i357
  %2725 = add i64 %2722, %2721
  store i64 %2725, i64* %RAX.i358, align 8
  %2726 = icmp ult i64 %2725, %2721
  %2727 = icmp ult i64 %2725, %2722
  %2728 = or i1 %2726, %2727
  %2729 = zext i1 %2728 to i8
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2729, i8* %2730, align 1
  %2731 = trunc i64 %2725 to i32
  %2732 = and i32 %2731, 255
  %2733 = call i32 @llvm.ctpop.i32(i32 %2732)
  %2734 = trunc i32 %2733 to i8
  %2735 = and i8 %2734, 1
  %2736 = xor i8 %2735, 1
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2736, i8* %2737, align 1
  %2738 = xor i64 %2722, %2721
  %2739 = xor i64 %2738, %2725
  %2740 = lshr i64 %2739, 4
  %2741 = trunc i64 %2740 to i8
  %2742 = and i8 %2741, 1
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2742, i8* %2743, align 1
  %2744 = icmp eq i64 %2725, 0
  %2745 = zext i1 %2744 to i8
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2745, i8* %2746, align 1
  %2747 = lshr i64 %2725, 63
  %2748 = trunc i64 %2747 to i8
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2748, i8* %2749, align 1
  %2750 = lshr i64 %2721, 63
  %2751 = lshr i64 %2722, 63
  %2752 = xor i64 %2747, %2750
  %2753 = xor i64 %2747, %2751
  %2754 = add i64 %2752, %2753
  %2755 = icmp eq i64 %2754, 2
  %2756 = zext i1 %2755 to i8
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2756, i8* %2757, align 1
  store %struct.Memory* %loadMem_40cfaf, %struct.Memory** %MEMORY
  %loadMem_40cfb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 33
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %2760 to i64*
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 5
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %ECX.i355 = bitcast %union.anon* %2763 to i32*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 1
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %2766 to i64*
  %2767 = load i32, i32* %ECX.i355
  %2768 = zext i32 %2767 to i64
  %2769 = load i64, i64* %RAX.i356
  %2770 = add i64 %2769, 12
  %2771 = load i64, i64* %PC.i354
  %2772 = add i64 %2771, 3
  store i64 %2772, i64* %PC.i354
  %2773 = inttoptr i64 %2770 to i32*
  %2774 = load i32, i32* %2773
  %2775 = sub i32 %2767, %2774
  %2776 = icmp ult i32 %2767, %2774
  %2777 = zext i1 %2776 to i8
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2777, i8* %2778, align 1
  %2779 = and i32 %2775, 255
  %2780 = call i32 @llvm.ctpop.i32(i32 %2779)
  %2781 = trunc i32 %2780 to i8
  %2782 = and i8 %2781, 1
  %2783 = xor i8 %2782, 1
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2783, i8* %2784, align 1
  %2785 = xor i32 %2774, %2767
  %2786 = xor i32 %2785, %2775
  %2787 = lshr i32 %2786, 4
  %2788 = trunc i32 %2787 to i8
  %2789 = and i8 %2788, 1
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2789, i8* %2790, align 1
  %2791 = icmp eq i32 %2775, 0
  %2792 = zext i1 %2791 to i8
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2792, i8* %2793, align 1
  %2794 = lshr i32 %2775, 31
  %2795 = trunc i32 %2794 to i8
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2795, i8* %2796, align 1
  %2797 = lshr i32 %2767, 31
  %2798 = lshr i32 %2774, 31
  %2799 = xor i32 %2798, %2797
  %2800 = xor i32 %2794, %2797
  %2801 = add i32 %2800, %2799
  %2802 = icmp eq i32 %2801, 2
  %2803 = zext i1 %2802 to i8
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2803, i8* %2804, align 1
  store %struct.Memory* %loadMem_40cfb2, %struct.Memory** %MEMORY
  %loadMem_40cfb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 33
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2807 to i64*
  %2808 = load i64, i64* %PC.i353
  %2809 = add i64 %2808, 252
  %2810 = load i64, i64* %PC.i353
  %2811 = add i64 %2810, 6
  %2812 = load i64, i64* %PC.i353
  %2813 = add i64 %2812, 6
  store i64 %2813, i64* %PC.i353
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2815 = load i8, i8* %2814, align 1
  %2816 = icmp ne i8 %2815, 0
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2818 = load i8, i8* %2817, align 1
  %2819 = icmp ne i8 %2818, 0
  %2820 = xor i1 %2816, %2819
  %2821 = xor i1 %2820, true
  %2822 = zext i1 %2821 to i8
  store i8 %2822, i8* %BRANCH_TAKEN, align 1
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2824 = select i1 %2820, i64 %2811, i64 %2809
  store i64 %2824, i64* %2823, align 8
  store %struct.Memory* %loadMem_40cfb5, %struct.Memory** %MEMORY
  %loadBr_40cfb5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40cfb5 = icmp eq i8 %loadBr_40cfb5, 1
  br i1 %cmpBr_40cfb5, label %block_.L_40d0b1, label %block_40cfbb

block_40cfbb:                                     ; preds = %block_.L_40cf97
  %loadMem_40cfbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 33
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %2827 to i64*
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 1
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %2830 to i64*
  %2831 = load i64, i64* %PC.i351
  %2832 = add i64 %2831, 10
  store i64 %2832, i64* %PC.i351
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i352, align 8
  store %struct.Memory* %loadMem_40cfbb, %struct.Memory** %MEMORY
  %loadMem_40cfc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 33
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %2835 to i64*
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 5
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %2838 to i64*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 15
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %2841 to i64*
  %2842 = load i64, i64* %RBP.i350
  %2843 = sub i64 %2842, 20
  %2844 = load i64, i64* %PC.i348
  %2845 = add i64 %2844, 4
  store i64 %2845, i64* %PC.i348
  %2846 = inttoptr i64 %2843 to i32*
  %2847 = load i32, i32* %2846
  %2848 = sext i32 %2847 to i64
  store i64 %2848, i64* %RCX.i349, align 8
  store %struct.Memory* %loadMem_40cfc5, %struct.Memory** %MEMORY
  %loadMem_40cfc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 33
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %2851 to i64*
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 5
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %2854 to i64*
  %2855 = load i64, i64* %RCX.i347
  %2856 = load i64, i64* %PC.i346
  %2857 = add i64 %2856, 7
  store i64 %2857, i64* %PC.i346
  %2858 = sext i64 %2855 to i128
  %2859 = and i128 %2858, -18446744073709551616
  %2860 = zext i64 %2855 to i128
  %2861 = or i128 %2859, %2860
  %2862 = mul i128 744, %2861
  %2863 = trunc i128 %2862 to i64
  store i64 %2863, i64* %RCX.i347, align 8
  %2864 = sext i64 %2863 to i128
  %2865 = icmp ne i128 %2864, %2862
  %2866 = zext i1 %2865 to i8
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2866, i8* %2867, align 1
  %2868 = trunc i128 %2862 to i32
  %2869 = and i32 %2868, 255
  %2870 = call i32 @llvm.ctpop.i32(i32 %2869)
  %2871 = trunc i32 %2870 to i8
  %2872 = and i8 %2871, 1
  %2873 = xor i8 %2872, 1
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2873, i8* %2874, align 1
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2875, align 1
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2876, align 1
  %2877 = lshr i64 %2863, 63
  %2878 = trunc i64 %2877 to i8
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2878, i8* %2879, align 1
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2866, i8* %2880, align 1
  store %struct.Memory* %loadMem_40cfc9, %struct.Memory** %MEMORY
  %loadMem_40cfd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 33
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2883 to i64*
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 1
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %2886 to i64*
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 5
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %2889 to i64*
  %2890 = load i64, i64* %RAX.i344
  %2891 = load i64, i64* %RCX.i345
  %2892 = load i64, i64* %PC.i343
  %2893 = add i64 %2892, 3
  store i64 %2893, i64* %PC.i343
  %2894 = add i64 %2891, %2890
  store i64 %2894, i64* %RAX.i344, align 8
  %2895 = icmp ult i64 %2894, %2890
  %2896 = icmp ult i64 %2894, %2891
  %2897 = or i1 %2895, %2896
  %2898 = zext i1 %2897 to i8
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2898, i8* %2899, align 1
  %2900 = trunc i64 %2894 to i32
  %2901 = and i32 %2900, 255
  %2902 = call i32 @llvm.ctpop.i32(i32 %2901)
  %2903 = trunc i32 %2902 to i8
  %2904 = and i8 %2903, 1
  %2905 = xor i8 %2904, 1
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2905, i8* %2906, align 1
  %2907 = xor i64 %2891, %2890
  %2908 = xor i64 %2907, %2894
  %2909 = lshr i64 %2908, 4
  %2910 = trunc i64 %2909 to i8
  %2911 = and i8 %2910, 1
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2911, i8* %2912, align 1
  %2913 = icmp eq i64 %2894, 0
  %2914 = zext i1 %2913 to i8
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2914, i8* %2915, align 1
  %2916 = lshr i64 %2894, 63
  %2917 = trunc i64 %2916 to i8
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2917, i8* %2918, align 1
  %2919 = lshr i64 %2890, 63
  %2920 = lshr i64 %2891, 63
  %2921 = xor i64 %2916, %2919
  %2922 = xor i64 %2916, %2920
  %2923 = add i64 %2921, %2922
  %2924 = icmp eq i64 %2923, 2
  %2925 = zext i1 %2924 to i8
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2925, i8* %2926, align 1
  store %struct.Memory* %loadMem_40cfd0, %struct.Memory** %MEMORY
  %loadMem_40cfd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 33
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2929 to i64*
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 5
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %2932 to i64*
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 15
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %2935 to i64*
  %2936 = load i64, i64* %RBP.i342
  %2937 = sub i64 %2936, 12
  %2938 = load i64, i64* %PC.i340
  %2939 = add i64 %2938, 4
  store i64 %2939, i64* %PC.i340
  %2940 = inttoptr i64 %2937 to i32*
  %2941 = load i32, i32* %2940
  %2942 = sext i32 %2941 to i64
  store i64 %2942, i64* %RCX.i341, align 8
  store %struct.Memory* %loadMem_40cfd3, %struct.Memory** %MEMORY
  %loadMem_40cfd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 33
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %2945 to i64*
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 1
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %2948 to i64*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 5
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %RCX.i338 = bitcast %union.anon* %2951 to i64*
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 7
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %RDX.i339 = bitcast %union.anon* %2954 to i64*
  %2955 = load i64, i64* %RAX.i337
  %2956 = load i64, i64* %RCX.i338
  %2957 = mul i64 %2956, 4
  %2958 = add i64 %2955, 16
  %2959 = add i64 %2958, %2957
  %2960 = load i64, i64* %PC.i336
  %2961 = add i64 %2960, 4
  store i64 %2961, i64* %PC.i336
  %2962 = inttoptr i64 %2959 to i32*
  %2963 = load i32, i32* %2962
  %2964 = zext i32 %2963 to i64
  store i64 %2964, i64* %RDX.i339, align 8
  store %struct.Memory* %loadMem_40cfd7, %struct.Memory** %MEMORY
  %loadMem_40cfdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 33
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %2967 to i64*
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 7
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %EDX.i334 = bitcast %union.anon* %2970 to i32*
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 15
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %2973 to i64*
  %2974 = load i64, i64* %RBP.i335
  %2975 = sub i64 %2974, 28
  %2976 = load i32, i32* %EDX.i334
  %2977 = zext i32 %2976 to i64
  %2978 = load i64, i64* %PC.i333
  %2979 = add i64 %2978, 3
  store i64 %2979, i64* %PC.i333
  %2980 = inttoptr i64 %2975 to i32*
  store i32 %2976, i32* %2980
  store %struct.Memory* %loadMem_40cfdb, %struct.Memory** %MEMORY
  %loadMem_40cfde = load %struct.Memory*, %struct.Memory** %MEMORY
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 33
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %2983 to i64*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 1
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %2986 to i64*
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 15
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %2989 to i64*
  %2990 = load i64, i64* %RBP.i332
  %2991 = sub i64 %2990, 28
  %2992 = load i64, i64* %PC.i330
  %2993 = add i64 %2992, 4
  store i64 %2993, i64* %PC.i330
  %2994 = inttoptr i64 %2991 to i32*
  %2995 = load i32, i32* %2994
  %2996 = sext i32 %2995 to i64
  store i64 %2996, i64* %RAX.i331, align 8
  store %struct.Memory* %loadMem_40cfde, %struct.Memory** %MEMORY
  %loadMem_40cfe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 33
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %2999 to i64*
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 1
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %3002 to i64*
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 7
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %RDX.i329 = bitcast %union.anon* %3005 to i64*
  %3006 = load i64, i64* %RAX.i328
  %3007 = add i64 %3006, 12099168
  %3008 = load i64, i64* %PC.i327
  %3009 = add i64 %3008, 8
  store i64 %3009, i64* %PC.i327
  %3010 = inttoptr i64 %3007 to i8*
  %3011 = load i8, i8* %3010
  %3012 = zext i8 %3011 to i64
  store i64 %3012, i64* %RDX.i329, align 8
  store %struct.Memory* %loadMem_40cfe2, %struct.Memory** %MEMORY
  %loadMem_40cfea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 33
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %3015 to i64*
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 7
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %EDX.i326 = bitcast %union.anon* %3018 to i32*
  %3019 = load i32, i32* %EDX.i326
  %3020 = zext i32 %3019 to i64
  %3021 = load i64, i64* %PC.i325
  %3022 = add i64 %3021, 3
  store i64 %3022, i64* %PC.i325
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3023, align 1
  %3024 = and i32 %3019, 255
  %3025 = call i32 @llvm.ctpop.i32(i32 %3024)
  %3026 = trunc i32 %3025 to i8
  %3027 = and i8 %3026, 1
  %3028 = xor i8 %3027, 1
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3028, i8* %3029, align 1
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3030, align 1
  %3031 = icmp eq i32 %3019, 0
  %3032 = zext i1 %3031 to i8
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3032, i8* %3033, align 1
  %3034 = lshr i32 %3019, 31
  %3035 = trunc i32 %3034 to i8
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3035, i8* %3036, align 1
  %3037 = lshr i32 %3019, 31
  %3038 = xor i32 %3034, %3037
  %3039 = add i32 %3038, %3037
  %3040 = icmp eq i32 %3039, 2
  %3041 = zext i1 %3040 to i8
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3041, i8* %3042, align 1
  store %struct.Memory* %loadMem_40cfea, %struct.Memory** %MEMORY
  %loadMem_40cfed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 33
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %3045 to i64*
  %3046 = load i64, i64* %PC.i324
  %3047 = add i64 %3046, 177
  %3048 = load i64, i64* %PC.i324
  %3049 = add i64 %3048, 6
  %3050 = load i64, i64* %PC.i324
  %3051 = add i64 %3050, 6
  store i64 %3051, i64* %PC.i324
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3053 = load i8, i8* %3052, align 1
  %3054 = icmp eq i8 %3053, 0
  %3055 = zext i1 %3054 to i8
  store i8 %3055, i8* %BRANCH_TAKEN, align 1
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3057 = select i1 %3054, i64 %3047, i64 %3049
  store i64 %3057, i64* %3056, align 8
  store %struct.Memory* %loadMem_40cfed, %struct.Memory** %MEMORY
  %loadBr_40cfed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40cfed = icmp eq i8 %loadBr_40cfed, 1
  br i1 %cmpBr_40cfed, label %block_.L_40d09e, label %block_40cff3

block_40cff3:                                     ; preds = %block_40cfbb
  %loadMem_40cff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 33
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %3060 to i64*
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 1
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %3063 to i64*
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 15
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %3066 to i64*
  %3067 = load i64, i64* %RBP.i323
  %3068 = sub i64 %3067, 28
  %3069 = load i64, i64* %PC.i321
  %3070 = add i64 %3069, 4
  store i64 %3070, i64* %PC.i321
  %3071 = inttoptr i64 %3068 to i32*
  %3072 = load i32, i32* %3071
  %3073 = sext i32 %3072 to i64
  store i64 %3073, i64* %RAX.i322, align 8
  store %struct.Memory* %loadMem_40cff3, %struct.Memory** %MEMORY
  %loadMem_40cff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 33
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %3076 to i64*
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 1
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %RAX.i319 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 5
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %RCX.i320 = bitcast %union.anon* %3082 to i64*
  %3083 = load i64, i64* %RAX.i319
  %3084 = mul i64 %3083, 4
  %3085 = add i64 %3084, 11185584
  %3086 = load i64, i64* %PC.i318
  %3087 = add i64 %3086, 7
  store i64 %3087, i64* %PC.i318
  %3088 = inttoptr i64 %3085 to i32*
  %3089 = load i32, i32* %3088
  %3090 = zext i32 %3089 to i64
  store i64 %3090, i64* %RCX.i320, align 8
  store %struct.Memory* %loadMem_40cff7, %struct.Memory** %MEMORY
  %loadMem_40cffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 33
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %3093 to i64*
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 5
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %ECX.i317 = bitcast %union.anon* %3096 to i32*
  %3097 = load i32, i32* %ECX.i317
  %3098 = zext i32 %3097 to i64
  %3099 = load i64, i64* %PC.i316
  %3100 = add i64 %3099, 7
  store i64 %3100, i64* %PC.i316
  %3101 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %3102 = sub i32 %3097, %3101
  %3103 = icmp ult i32 %3097, %3101
  %3104 = zext i1 %3103 to i8
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3104, i8* %3105, align 1
  %3106 = and i32 %3102, 255
  %3107 = call i32 @llvm.ctpop.i32(i32 %3106)
  %3108 = trunc i32 %3107 to i8
  %3109 = and i8 %3108, 1
  %3110 = xor i8 %3109, 1
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3110, i8* %3111, align 1
  %3112 = xor i32 %3101, %3097
  %3113 = xor i32 %3112, %3102
  %3114 = lshr i32 %3113, 4
  %3115 = trunc i32 %3114 to i8
  %3116 = and i8 %3115, 1
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3116, i8* %3117, align 1
  %3118 = icmp eq i32 %3102, 0
  %3119 = zext i1 %3118 to i8
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3119, i8* %3120, align 1
  %3121 = lshr i32 %3102, 31
  %3122 = trunc i32 %3121 to i8
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3122, i8* %3123, align 1
  %3124 = lshr i32 %3097, 31
  %3125 = lshr i32 %3101, 31
  %3126 = xor i32 %3125, %3124
  %3127 = xor i32 %3121, %3124
  %3128 = add i32 %3127, %3126
  %3129 = icmp eq i32 %3128, 2
  %3130 = zext i1 %3129 to i8
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3130, i8* %3131, align 1
  store %struct.Memory* %loadMem_40cffe, %struct.Memory** %MEMORY
  %loadMem_40d005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 33
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %3134 to i64*
  %3135 = load i64, i64* %PC.i315
  %3136 = add i64 %3135, 153
  %3137 = load i64, i64* %PC.i315
  %3138 = add i64 %3137, 6
  %3139 = load i64, i64* %PC.i315
  %3140 = add i64 %3139, 6
  store i64 %3140, i64* %PC.i315
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3142 = load i8, i8* %3141, align 1
  store i8 %3142, i8* %BRANCH_TAKEN, align 1
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3144 = icmp ne i8 %3142, 0
  %3145 = select i1 %3144, i64 %3136, i64 %3138
  store i64 %3145, i64* %3143, align 8
  store %struct.Memory* %loadMem_40d005, %struct.Memory** %MEMORY
  %loadBr_40d005 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d005 = icmp eq i8 %loadBr_40d005, 1
  br i1 %cmpBr_40d005, label %block_.L_40d09e, label %block_40d00b

block_40d00b:                                     ; preds = %block_40cff3
  %loadMem_40d00b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 33
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %3148 to i64*
  %3149 = load i64, i64* %PC.i314
  %3150 = add i64 %3149, 5
  %3151 = load i64, i64* %PC.i314
  %3152 = add i64 %3151, 5
  store i64 %3152, i64* %PC.i314
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3150, i64* %3153, align 8
  store %struct.Memory* %loadMem_40d00b, %struct.Memory** %MEMORY
  br label %block_.L_40d010

block_.L_40d010:                                  ; preds = %block_40d00b
  %loadMem_40d010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 33
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %3156 to i64*
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 1
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %3159 to i64*
  %3160 = load i64, i64* %PC.i312
  %3161 = add i64 %3160, 10
  store i64 %3161, i64* %PC.i312
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i313, align 8
  store %struct.Memory* %loadMem_40d010, %struct.Memory** %MEMORY
  %loadMem_40d01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 33
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %3164 to i64*
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 5
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %3167 to i64*
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 15
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %3170 to i64*
  %3171 = load i64, i64* %RBP.i311
  %3172 = sub i64 %3171, 4
  %3173 = load i64, i64* %PC.i309
  %3174 = add i64 %3173, 4
  store i64 %3174, i64* %PC.i309
  %3175 = inttoptr i64 %3172 to i32*
  %3176 = load i32, i32* %3175
  %3177 = sext i32 %3176 to i64
  store i64 %3177, i64* %RCX.i310, align 8
  store %struct.Memory* %loadMem_40d01a, %struct.Memory** %MEMORY
  %loadMem_40d01e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 33
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 5
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %3183 to i64*
  %3184 = load i64, i64* %RCX.i308
  %3185 = load i64, i64* %PC.i307
  %3186 = add i64 %3185, 7
  store i64 %3186, i64* %PC.i307
  %3187 = sext i64 %3184 to i128
  %3188 = and i128 %3187, -18446744073709551616
  %3189 = zext i64 %3184 to i128
  %3190 = or i128 %3188, %3189
  %3191 = mul i128 744, %3190
  %3192 = trunc i128 %3191 to i64
  store i64 %3192, i64* %RCX.i308, align 8
  %3193 = sext i64 %3192 to i128
  %3194 = icmp ne i128 %3193, %3191
  %3195 = zext i1 %3194 to i8
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3195, i8* %3196, align 1
  %3197 = trunc i128 %3191 to i32
  %3198 = and i32 %3197, 255
  %3199 = call i32 @llvm.ctpop.i32(i32 %3198)
  %3200 = trunc i32 %3199 to i8
  %3201 = and i8 %3200, 1
  %3202 = xor i8 %3201, 1
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3202, i8* %3203, align 1
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3204, align 1
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3205, align 1
  %3206 = lshr i64 %3192, 63
  %3207 = trunc i64 %3206 to i8
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3207, i8* %3208, align 1
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3195, i8* %3209, align 1
  store %struct.Memory* %loadMem_40d01e, %struct.Memory** %MEMORY
  %loadMem_40d025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 33
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %3212 to i64*
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3214 = getelementptr inbounds %struct.GPR, %struct.GPR* %3213, i32 0, i32 1
  %3215 = getelementptr inbounds %struct.Reg, %struct.Reg* %3214, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %3215 to i64*
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 5
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %RCX.i306 = bitcast %union.anon* %3218 to i64*
  %3219 = load i64, i64* %RAX.i305
  %3220 = load i64, i64* %RCX.i306
  %3221 = load i64, i64* %PC.i304
  %3222 = add i64 %3221, 3
  store i64 %3222, i64* %PC.i304
  %3223 = add i64 %3220, %3219
  store i64 %3223, i64* %RAX.i305, align 8
  %3224 = icmp ult i64 %3223, %3219
  %3225 = icmp ult i64 %3223, %3220
  %3226 = or i1 %3224, %3225
  %3227 = zext i1 %3226 to i8
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3227, i8* %3228, align 1
  %3229 = trunc i64 %3223 to i32
  %3230 = and i32 %3229, 255
  %3231 = call i32 @llvm.ctpop.i32(i32 %3230)
  %3232 = trunc i32 %3231 to i8
  %3233 = and i8 %3232, 1
  %3234 = xor i8 %3233, 1
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3234, i8* %3235, align 1
  %3236 = xor i64 %3220, %3219
  %3237 = xor i64 %3236, %3223
  %3238 = lshr i64 %3237, 4
  %3239 = trunc i64 %3238 to i8
  %3240 = and i8 %3239, 1
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3240, i8* %3241, align 1
  %3242 = icmp eq i64 %3223, 0
  %3243 = zext i1 %3242 to i8
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3243, i8* %3244, align 1
  %3245 = lshr i64 %3223, 63
  %3246 = trunc i64 %3245 to i8
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3246, i8* %3247, align 1
  %3248 = lshr i64 %3219, 63
  %3249 = lshr i64 %3220, 63
  %3250 = xor i64 %3245, %3248
  %3251 = xor i64 %3245, %3249
  %3252 = add i64 %3250, %3251
  %3253 = icmp eq i64 %3252, 2
  %3254 = zext i1 %3253 to i8
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3254, i8* %3255, align 1
  store %struct.Memory* %loadMem_40d025, %struct.Memory** %MEMORY
  %loadMem_40d028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 33
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %3258 to i64*
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 1
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %3261 to i64*
  %3262 = load i64, i64* %RAX.i303
  %3263 = add i64 %3262, 12
  %3264 = load i64, i64* %PC.i302
  %3265 = add i64 %3264, 4
  store i64 %3265, i64* %PC.i302
  %3266 = inttoptr i64 %3263 to i32*
  %3267 = load i32, i32* %3266
  %3268 = sub i32 %3267, 20
  %3269 = icmp ult i32 %3267, 20
  %3270 = zext i1 %3269 to i8
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3270, i8* %3271, align 1
  %3272 = and i32 %3268, 255
  %3273 = call i32 @llvm.ctpop.i32(i32 %3272)
  %3274 = trunc i32 %3273 to i8
  %3275 = and i8 %3274, 1
  %3276 = xor i8 %3275, 1
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3276, i8* %3277, align 1
  %3278 = xor i32 %3267, 20
  %3279 = xor i32 %3278, %3268
  %3280 = lshr i32 %3279, 4
  %3281 = trunc i32 %3280 to i8
  %3282 = and i8 %3281, 1
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3282, i8* %3283, align 1
  %3284 = icmp eq i32 %3268, 0
  %3285 = zext i1 %3284 to i8
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3285, i8* %3286, align 1
  %3287 = lshr i32 %3268, 31
  %3288 = trunc i32 %3287 to i8
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3288, i8* %3289, align 1
  %3290 = lshr i32 %3267, 31
  %3291 = xor i32 %3287, %3290
  %3292 = add i32 %3291, %3290
  %3293 = icmp eq i32 %3292, 2
  %3294 = zext i1 %3293 to i8
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3294, i8* %3295, align 1
  store %struct.Memory* %loadMem_40d028, %struct.Memory** %MEMORY
  %loadMem_40d02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 33
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %3298 to i64*
  %3299 = load i64, i64* %PC.i301
  %3300 = add i64 %3299, 58
  %3301 = load i64, i64* %PC.i301
  %3302 = add i64 %3301, 6
  %3303 = load i64, i64* %PC.i301
  %3304 = add i64 %3303, 6
  store i64 %3304, i64* %PC.i301
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3306 = load i8, i8* %3305, align 1
  %3307 = icmp ne i8 %3306, 0
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3309 = load i8, i8* %3308, align 1
  %3310 = icmp ne i8 %3309, 0
  %3311 = xor i1 %3307, %3310
  %3312 = xor i1 %3311, true
  %3313 = zext i1 %3312 to i8
  store i8 %3313, i8* %BRANCH_TAKEN, align 1
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3315 = select i1 %3311, i64 %3302, i64 %3300
  store i64 %3315, i64* %3314, align 8
  store %struct.Memory* %loadMem_40d02c, %struct.Memory** %MEMORY
  %loadBr_40d02c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d02c = icmp eq i8 %loadBr_40d02c, 1
  br i1 %cmpBr_40d02c, label %block_.L_40d066, label %block_40d032

block_40d032:                                     ; preds = %block_.L_40d010
  %loadMem_40d032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 33
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %3318 to i64*
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 1
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %3321 to i64*
  %3322 = load i64, i64* %PC.i299
  %3323 = add i64 %3322, 10
  store i64 %3323, i64* %PC.i299
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i300, align 8
  store %struct.Memory* %loadMem_40d032, %struct.Memory** %MEMORY
  %loadMem_40d03c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 33
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 5
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %3329 to i64*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 15
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %3332 to i64*
  %3333 = load i64, i64* %RBP.i298
  %3334 = sub i64 %3333, 28
  %3335 = load i64, i64* %PC.i296
  %3336 = add i64 %3335, 3
  store i64 %3336, i64* %PC.i296
  %3337 = inttoptr i64 %3334 to i32*
  %3338 = load i32, i32* %3337
  %3339 = zext i32 %3338 to i64
  store i64 %3339, i64* %RCX.i297, align 8
  store %struct.Memory* %loadMem_40d03c, %struct.Memory** %MEMORY
  %loadMem_40d03f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 33
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %3342 to i64*
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 7
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %RDX.i294 = bitcast %union.anon* %3345 to i64*
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3347 = getelementptr inbounds %struct.GPR, %struct.GPR* %3346, i32 0, i32 15
  %3348 = getelementptr inbounds %struct.Reg, %struct.Reg* %3347, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %3348 to i64*
  %3349 = load i64, i64* %RBP.i295
  %3350 = sub i64 %3349, 4
  %3351 = load i64, i64* %PC.i293
  %3352 = add i64 %3351, 4
  store i64 %3352, i64* %PC.i293
  %3353 = inttoptr i64 %3350 to i32*
  %3354 = load i32, i32* %3353
  %3355 = sext i32 %3354 to i64
  store i64 %3355, i64* %RDX.i294, align 8
  store %struct.Memory* %loadMem_40d03f, %struct.Memory** %MEMORY
  %loadMem_40d043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 33
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %3358 to i64*
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 7
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %RDX.i292 = bitcast %union.anon* %3361 to i64*
  %3362 = load i64, i64* %RDX.i292
  %3363 = load i64, i64* %PC.i291
  %3364 = add i64 %3363, 7
  store i64 %3364, i64* %PC.i291
  %3365 = sext i64 %3362 to i128
  %3366 = and i128 %3365, -18446744073709551616
  %3367 = zext i64 %3362 to i128
  %3368 = or i128 %3366, %3367
  %3369 = mul i128 744, %3368
  %3370 = trunc i128 %3369 to i64
  store i64 %3370, i64* %RDX.i292, align 8
  %3371 = sext i64 %3370 to i128
  %3372 = icmp ne i128 %3371, %3369
  %3373 = zext i1 %3372 to i8
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3373, i8* %3374, align 1
  %3375 = trunc i128 %3369 to i32
  %3376 = and i32 %3375, 255
  %3377 = call i32 @llvm.ctpop.i32(i32 %3376)
  %3378 = trunc i32 %3377 to i8
  %3379 = and i8 %3378, 1
  %3380 = xor i8 %3379, 1
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3380, i8* %3381, align 1
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3382, align 1
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3383, align 1
  %3384 = lshr i64 %3370, 63
  %3385 = trunc i64 %3384 to i8
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3385, i8* %3386, align 1
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3373, i8* %3387, align 1
  store %struct.Memory* %loadMem_40d043, %struct.Memory** %MEMORY
  %loadMem_40d04a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 33
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %3390 to i64*
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3392 = getelementptr inbounds %struct.GPR, %struct.GPR* %3391, i32 0, i32 1
  %3393 = getelementptr inbounds %struct.Reg, %struct.Reg* %3392, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %3393 to i64*
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 9
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %RSI.i290 = bitcast %union.anon* %3396 to i64*
  %3397 = load i64, i64* %RAX.i289
  %3398 = load i64, i64* %PC.i288
  %3399 = add i64 %3398, 3
  store i64 %3399, i64* %PC.i288
  store i64 %3397, i64* %RSI.i290, align 8
  store %struct.Memory* %loadMem_40d04a, %struct.Memory** %MEMORY
  %loadMem_40d04d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 33
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %3402 to i64*
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 7
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %RDX.i286 = bitcast %union.anon* %3405 to i64*
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 9
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %RSI.i287 = bitcast %union.anon* %3408 to i64*
  %3409 = load i64, i64* %RSI.i287
  %3410 = load i64, i64* %RDX.i286
  %3411 = load i64, i64* %PC.i285
  %3412 = add i64 %3411, 3
  store i64 %3412, i64* %PC.i285
  %3413 = add i64 %3410, %3409
  store i64 %3413, i64* %RSI.i287, align 8
  %3414 = icmp ult i64 %3413, %3409
  %3415 = icmp ult i64 %3413, %3410
  %3416 = or i1 %3414, %3415
  %3417 = zext i1 %3416 to i8
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3417, i8* %3418, align 1
  %3419 = trunc i64 %3413 to i32
  %3420 = and i32 %3419, 255
  %3421 = call i32 @llvm.ctpop.i32(i32 %3420)
  %3422 = trunc i32 %3421 to i8
  %3423 = and i8 %3422, 1
  %3424 = xor i8 %3423, 1
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3424, i8* %3425, align 1
  %3426 = xor i64 %3410, %3409
  %3427 = xor i64 %3426, %3413
  %3428 = lshr i64 %3427, 4
  %3429 = trunc i64 %3428 to i8
  %3430 = and i8 %3429, 1
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3430, i8* %3431, align 1
  %3432 = icmp eq i64 %3413, 0
  %3433 = zext i1 %3432 to i8
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3433, i8* %3434, align 1
  %3435 = lshr i64 %3413, 63
  %3436 = trunc i64 %3435 to i8
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3436, i8* %3437, align 1
  %3438 = lshr i64 %3409, 63
  %3439 = lshr i64 %3410, 63
  %3440 = xor i64 %3435, %3438
  %3441 = xor i64 %3435, %3439
  %3442 = add i64 %3440, %3441
  %3443 = icmp eq i64 %3442, 2
  %3444 = zext i1 %3443 to i8
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3444, i8* %3445, align 1
  store %struct.Memory* %loadMem_40d04d, %struct.Memory** %MEMORY
  %loadMem_40d050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 33
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %3448 to i64*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 7
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %RDX.i283 = bitcast %union.anon* %3451 to i64*
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 15
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %3454 to i64*
  %3455 = load i64, i64* %RBP.i284
  %3456 = sub i64 %3455, 4
  %3457 = load i64, i64* %PC.i282
  %3458 = add i64 %3457, 4
  store i64 %3458, i64* %PC.i282
  %3459 = inttoptr i64 %3456 to i32*
  %3460 = load i32, i32* %3459
  %3461 = sext i32 %3460 to i64
  store i64 %3461, i64* %RDX.i283, align 8
  store %struct.Memory* %loadMem_40d050, %struct.Memory** %MEMORY
  %loadMem_40d054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 33
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %3464 to i64*
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 7
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %RDX.i281 = bitcast %union.anon* %3467 to i64*
  %3468 = load i64, i64* %RDX.i281
  %3469 = load i64, i64* %PC.i280
  %3470 = add i64 %3469, 7
  store i64 %3470, i64* %PC.i280
  %3471 = sext i64 %3468 to i128
  %3472 = and i128 %3471, -18446744073709551616
  %3473 = zext i64 %3468 to i128
  %3474 = or i128 %3472, %3473
  %3475 = mul i128 744, %3474
  %3476 = trunc i128 %3475 to i64
  store i64 %3476, i64* %RDX.i281, align 8
  %3477 = sext i64 %3476 to i128
  %3478 = icmp ne i128 %3477, %3475
  %3479 = zext i1 %3478 to i8
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3479, i8* %3480, align 1
  %3481 = trunc i128 %3475 to i32
  %3482 = and i32 %3481, 255
  %3483 = call i32 @llvm.ctpop.i32(i32 %3482)
  %3484 = trunc i32 %3483 to i8
  %3485 = and i8 %3484, 1
  %3486 = xor i8 %3485, 1
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3486, i8* %3487, align 1
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3488, align 1
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3489, align 1
  %3490 = lshr i64 %3476, 63
  %3491 = trunc i64 %3490 to i8
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3491, i8* %3492, align 1
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3479, i8* %3493, align 1
  store %struct.Memory* %loadMem_40d054, %struct.Memory** %MEMORY
  %loadMem_40d05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 33
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %3496 to i64*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 1
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %3499 to i64*
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3501 = getelementptr inbounds %struct.GPR, %struct.GPR* %3500, i32 0, i32 7
  %3502 = getelementptr inbounds %struct.Reg, %struct.Reg* %3501, i32 0, i32 0
  %RDX.i279 = bitcast %union.anon* %3502 to i64*
  %3503 = load i64, i64* %RAX.i278
  %3504 = load i64, i64* %RDX.i279
  %3505 = load i64, i64* %PC.i277
  %3506 = add i64 %3505, 3
  store i64 %3506, i64* %PC.i277
  %3507 = add i64 %3504, %3503
  store i64 %3507, i64* %RAX.i278, align 8
  %3508 = icmp ult i64 %3507, %3503
  %3509 = icmp ult i64 %3507, %3504
  %3510 = or i1 %3508, %3509
  %3511 = zext i1 %3510 to i8
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3511, i8* %3512, align 1
  %3513 = trunc i64 %3507 to i32
  %3514 = and i32 %3513, 255
  %3515 = call i32 @llvm.ctpop.i32(i32 %3514)
  %3516 = trunc i32 %3515 to i8
  %3517 = and i8 %3516, 1
  %3518 = xor i8 %3517, 1
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3518, i8* %3519, align 1
  %3520 = xor i64 %3504, %3503
  %3521 = xor i64 %3520, %3507
  %3522 = lshr i64 %3521, 4
  %3523 = trunc i64 %3522 to i8
  %3524 = and i8 %3523, 1
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3524, i8* %3525, align 1
  %3526 = icmp eq i64 %3507, 0
  %3527 = zext i1 %3526 to i8
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3527, i8* %3528, align 1
  %3529 = lshr i64 %3507, 63
  %3530 = trunc i64 %3529 to i8
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3530, i8* %3531, align 1
  %3532 = lshr i64 %3503, 63
  %3533 = lshr i64 %3504, 63
  %3534 = xor i64 %3529, %3532
  %3535 = xor i64 %3529, %3533
  %3536 = add i64 %3534, %3535
  %3537 = icmp eq i64 %3536, 2
  %3538 = zext i1 %3537 to i8
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3538, i8* %3539, align 1
  store %struct.Memory* %loadMem_40d05b, %struct.Memory** %MEMORY
  %loadMem_40d05e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 33
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %3542 to i64*
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 1
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %3545 to i64*
  %3546 = load i64, i64* %RAX.i276
  %3547 = add i64 %3546, 12
  %3548 = load i64, i64* %PC.i275
  %3549 = add i64 %3548, 4
  store i64 %3549, i64* %PC.i275
  %3550 = inttoptr i64 %3547 to i32*
  %3551 = load i32, i32* %3550
  %3552 = sext i32 %3551 to i64
  store i64 %3552, i64* %RAX.i276, align 8
  store %struct.Memory* %loadMem_40d05e, %struct.Memory** %MEMORY
  %loadMem_40d062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3554 = getelementptr inbounds %struct.GPR, %struct.GPR* %3553, i32 0, i32 33
  %3555 = getelementptr inbounds %struct.Reg, %struct.Reg* %3554, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %3555 to i64*
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 5
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %ECX.i272 = bitcast %union.anon* %3558 to i32*
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 1
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %3561 to i64*
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 9
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %RSI.i274 = bitcast %union.anon* %3564 to i64*
  %3565 = load i64, i64* %RSI.i274
  %3566 = load i64, i64* %RAX.i273
  %3567 = mul i64 %3566, 4
  %3568 = add i64 %3565, 16
  %3569 = add i64 %3568, %3567
  %3570 = load i32, i32* %ECX.i272
  %3571 = zext i32 %3570 to i64
  %3572 = load i64, i64* %PC.i271
  %3573 = add i64 %3572, 4
  store i64 %3573, i64* %PC.i271
  %3574 = inttoptr i64 %3569 to i32*
  store i32 %3570, i32* %3574
  store %struct.Memory* %loadMem_40d062, %struct.Memory** %MEMORY
  br label %block_.L_40d066

block_.L_40d066:                                  ; preds = %block_40d032, %block_.L_40d010
  %loadMem_40d066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 33
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %3577 to i64*
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3579 = getelementptr inbounds %struct.GPR, %struct.GPR* %3578, i32 0, i32 1
  %3580 = getelementptr inbounds %struct.Reg, %struct.Reg* %3579, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %3580 to i64*
  %3581 = load i64, i64* %PC.i269
  %3582 = add i64 %3581, 10
  store i64 %3582, i64* %PC.i269
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i270, align 8
  store %struct.Memory* %loadMem_40d066, %struct.Memory** %MEMORY
  %loadMem_40d070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 33
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %3585 to i64*
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 5
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %RCX.i267 = bitcast %union.anon* %3588 to i64*
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 15
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %3591 to i64*
  %3592 = load i64, i64* %RBP.i268
  %3593 = sub i64 %3592, 4
  %3594 = load i64, i64* %PC.i266
  %3595 = add i64 %3594, 4
  store i64 %3595, i64* %PC.i266
  %3596 = inttoptr i64 %3593 to i32*
  %3597 = load i32, i32* %3596
  %3598 = sext i32 %3597 to i64
  store i64 %3598, i64* %RCX.i267, align 8
  store %struct.Memory* %loadMem_40d070, %struct.Memory** %MEMORY
  %loadMem_40d074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 33
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %3601 to i64*
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 5
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %RCX.i265 = bitcast %union.anon* %3604 to i64*
  %3605 = load i64, i64* %RCX.i265
  %3606 = load i64, i64* %PC.i264
  %3607 = add i64 %3606, 7
  store i64 %3607, i64* %PC.i264
  %3608 = sext i64 %3605 to i128
  %3609 = and i128 %3608, -18446744073709551616
  %3610 = zext i64 %3605 to i128
  %3611 = or i128 %3609, %3610
  %3612 = mul i128 744, %3611
  %3613 = trunc i128 %3612 to i64
  store i64 %3613, i64* %RCX.i265, align 8
  %3614 = sext i64 %3613 to i128
  %3615 = icmp ne i128 %3614, %3612
  %3616 = zext i1 %3615 to i8
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3616, i8* %3617, align 1
  %3618 = trunc i128 %3612 to i32
  %3619 = and i32 %3618, 255
  %3620 = call i32 @llvm.ctpop.i32(i32 %3619)
  %3621 = trunc i32 %3620 to i8
  %3622 = and i8 %3621, 1
  %3623 = xor i8 %3622, 1
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3623, i8* %3624, align 1
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3625, align 1
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3626, align 1
  %3627 = lshr i64 %3613, 63
  %3628 = trunc i64 %3627 to i8
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3628, i8* %3629, align 1
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3616, i8* %3630, align 1
  store %struct.Memory* %loadMem_40d074, %struct.Memory** %MEMORY
  %loadMem_40d07b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 33
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %3633 to i64*
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 1
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %3636 to i64*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 5
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %RCX.i263 = bitcast %union.anon* %3639 to i64*
  %3640 = load i64, i64* %RAX.i262
  %3641 = load i64, i64* %RCX.i263
  %3642 = load i64, i64* %PC.i261
  %3643 = add i64 %3642, 3
  store i64 %3643, i64* %PC.i261
  %3644 = add i64 %3641, %3640
  store i64 %3644, i64* %RAX.i262, align 8
  %3645 = icmp ult i64 %3644, %3640
  %3646 = icmp ult i64 %3644, %3641
  %3647 = or i1 %3645, %3646
  %3648 = zext i1 %3647 to i8
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3648, i8* %3649, align 1
  %3650 = trunc i64 %3644 to i32
  %3651 = and i32 %3650, 255
  %3652 = call i32 @llvm.ctpop.i32(i32 %3651)
  %3653 = trunc i32 %3652 to i8
  %3654 = and i8 %3653, 1
  %3655 = xor i8 %3654, 1
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3655, i8* %3656, align 1
  %3657 = xor i64 %3641, %3640
  %3658 = xor i64 %3657, %3644
  %3659 = lshr i64 %3658, 4
  %3660 = trunc i64 %3659 to i8
  %3661 = and i8 %3660, 1
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3661, i8* %3662, align 1
  %3663 = icmp eq i64 %3644, 0
  %3664 = zext i1 %3663 to i8
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3664, i8* %3665, align 1
  %3666 = lshr i64 %3644, 63
  %3667 = trunc i64 %3666 to i8
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3667, i8* %3668, align 1
  %3669 = lshr i64 %3640, 63
  %3670 = lshr i64 %3641, 63
  %3671 = xor i64 %3666, %3669
  %3672 = xor i64 %3666, %3670
  %3673 = add i64 %3671, %3672
  %3674 = icmp eq i64 %3673, 2
  %3675 = zext i1 %3674 to i8
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3675, i8* %3676, align 1
  store %struct.Memory* %loadMem_40d07b, %struct.Memory** %MEMORY
  %loadMem_40d07e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 33
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %3679 to i64*
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3681 = getelementptr inbounds %struct.GPR, %struct.GPR* %3680, i32 0, i32 1
  %3682 = getelementptr inbounds %struct.Reg, %struct.Reg* %3681, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %3682 to i64*
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 7
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %RDX.i260 = bitcast %union.anon* %3685 to i64*
  %3686 = load i64, i64* %RAX.i259
  %3687 = add i64 %3686, 12
  %3688 = load i64, i64* %PC.i258
  %3689 = add i64 %3688, 3
  store i64 %3689, i64* %PC.i258
  %3690 = inttoptr i64 %3687 to i32*
  %3691 = load i32, i32* %3690
  %3692 = zext i32 %3691 to i64
  store i64 %3692, i64* %RDX.i260, align 8
  store %struct.Memory* %loadMem_40d07e, %struct.Memory** %MEMORY
  %loadMem_40d081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3694 = getelementptr inbounds %struct.GPR, %struct.GPR* %3693, i32 0, i32 33
  %3695 = getelementptr inbounds %struct.Reg, %struct.Reg* %3694, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %3695 to i64*
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3697 = getelementptr inbounds %struct.GPR, %struct.GPR* %3696, i32 0, i32 7
  %3698 = getelementptr inbounds %struct.Reg, %struct.Reg* %3697, i32 0, i32 0
  %RDX.i257 = bitcast %union.anon* %3698 to i64*
  %3699 = load i64, i64* %RDX.i257
  %3700 = load i64, i64* %PC.i256
  %3701 = add i64 %3700, 3
  store i64 %3701, i64* %PC.i256
  %3702 = trunc i64 %3699 to i32
  %3703 = add i32 1, %3702
  %3704 = zext i32 %3703 to i64
  store i64 %3704, i64* %RDX.i257, align 8
  %3705 = icmp ult i32 %3703, %3702
  %3706 = icmp ult i32 %3703, 1
  %3707 = or i1 %3705, %3706
  %3708 = zext i1 %3707 to i8
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3708, i8* %3709, align 1
  %3710 = and i32 %3703, 255
  %3711 = call i32 @llvm.ctpop.i32(i32 %3710)
  %3712 = trunc i32 %3711 to i8
  %3713 = and i8 %3712, 1
  %3714 = xor i8 %3713, 1
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3714, i8* %3715, align 1
  %3716 = xor i64 1, %3699
  %3717 = trunc i64 %3716 to i32
  %3718 = xor i32 %3717, %3703
  %3719 = lshr i32 %3718, 4
  %3720 = trunc i32 %3719 to i8
  %3721 = and i8 %3720, 1
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3721, i8* %3722, align 1
  %3723 = icmp eq i32 %3703, 0
  %3724 = zext i1 %3723 to i8
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3724, i8* %3725, align 1
  %3726 = lshr i32 %3703, 31
  %3727 = trunc i32 %3726 to i8
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3727, i8* %3728, align 1
  %3729 = lshr i32 %3702, 31
  %3730 = xor i32 %3726, %3729
  %3731 = add i32 %3730, %3726
  %3732 = icmp eq i32 %3731, 2
  %3733 = zext i1 %3732 to i8
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3733, i8* %3734, align 1
  store %struct.Memory* %loadMem_40d081, %struct.Memory** %MEMORY
  %loadMem_40d084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 33
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %3737 to i64*
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 7
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %EDX.i254 = bitcast %union.anon* %3740 to i32*
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3742 = getelementptr inbounds %struct.GPR, %struct.GPR* %3741, i32 0, i32 1
  %3743 = getelementptr inbounds %struct.Reg, %struct.Reg* %3742, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %3743 to i64*
  %3744 = load i64, i64* %RAX.i255
  %3745 = add i64 %3744, 12
  %3746 = load i32, i32* %EDX.i254
  %3747 = zext i32 %3746 to i64
  %3748 = load i64, i64* %PC.i253
  %3749 = add i64 %3748, 3
  store i64 %3749, i64* %PC.i253
  %3750 = inttoptr i64 %3745 to i32*
  store i32 %3746, i32* %3750
  store %struct.Memory* %loadMem_40d084, %struct.Memory** %MEMORY
  %loadMem_40d087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 33
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %3753 to i64*
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 7
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %RDX.i252 = bitcast %union.anon* %3756 to i64*
  %3757 = load i64, i64* %PC.i251
  %3758 = add i64 %3757, 7
  store i64 %3758, i64* %PC.i251
  %3759 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %3760 = zext i32 %3759 to i64
  store i64 %3760, i64* %RDX.i252, align 8
  store %struct.Memory* %loadMem_40d087, %struct.Memory** %MEMORY
  %loadMem_40d08e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3762 = getelementptr inbounds %struct.GPR, %struct.GPR* %3761, i32 0, i32 33
  %3763 = getelementptr inbounds %struct.Reg, %struct.Reg* %3762, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %3763 to i64*
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3765 = getelementptr inbounds %struct.GPR, %struct.GPR* %3764, i32 0, i32 1
  %3766 = getelementptr inbounds %struct.Reg, %struct.Reg* %3765, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %3766 to i64*
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3768 = getelementptr inbounds %struct.GPR, %struct.GPR* %3767, i32 0, i32 15
  %3769 = getelementptr inbounds %struct.Reg, %struct.Reg* %3768, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %3769 to i64*
  %3770 = load i64, i64* %RBP.i250
  %3771 = sub i64 %3770, 28
  %3772 = load i64, i64* %PC.i248
  %3773 = add i64 %3772, 4
  store i64 %3773, i64* %PC.i248
  %3774 = inttoptr i64 %3771 to i32*
  %3775 = load i32, i32* %3774
  %3776 = sext i32 %3775 to i64
  store i64 %3776, i64* %RAX.i249, align 8
  store %struct.Memory* %loadMem_40d08e, %struct.Memory** %MEMORY
  %loadMem_40d092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 33
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %3779 to i64*
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3781 = getelementptr inbounds %struct.GPR, %struct.GPR* %3780, i32 0, i32 7
  %3782 = getelementptr inbounds %struct.Reg, %struct.Reg* %3781, i32 0, i32 0
  %EDX.i246 = bitcast %union.anon* %3782 to i32*
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 1
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %3785 to i64*
  %3786 = load i64, i64* %RAX.i247
  %3787 = mul i64 %3786, 4
  %3788 = add i64 %3787, 11185584
  %3789 = load i32, i32* %EDX.i246
  %3790 = zext i32 %3789 to i64
  %3791 = load i64, i64* %PC.i245
  %3792 = add i64 %3791, 7
  store i64 %3792, i64* %PC.i245
  %3793 = inttoptr i64 %3788 to i32*
  store i32 %3789, i32* %3793
  store %struct.Memory* %loadMem_40d092, %struct.Memory** %MEMORY
  %loadMem_40d099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3795 = getelementptr inbounds %struct.GPR, %struct.GPR* %3794, i32 0, i32 33
  %3796 = getelementptr inbounds %struct.Reg, %struct.Reg* %3795, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %3796 to i64*
  %3797 = load i64, i64* %PC.i244
  %3798 = add i64 %3797, 5
  %3799 = load i64, i64* %PC.i244
  %3800 = add i64 %3799, 5
  store i64 %3800, i64* %PC.i244
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3798, i64* %3801, align 8
  store %struct.Memory* %loadMem_40d099, %struct.Memory** %MEMORY
  br label %block_.L_40d09e

block_.L_40d09e:                                  ; preds = %block_.L_40d066, %block_40cff3, %block_40cfbb
  %loadMem_40d09e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3803 = getelementptr inbounds %struct.GPR, %struct.GPR* %3802, i32 0, i32 33
  %3804 = getelementptr inbounds %struct.Reg, %struct.Reg* %3803, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %3804 to i64*
  %3805 = load i64, i64* %PC.i243
  %3806 = add i64 %3805, 5
  %3807 = load i64, i64* %PC.i243
  %3808 = add i64 %3807, 5
  store i64 %3808, i64* %PC.i243
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3806, i64* %3809, align 8
  store %struct.Memory* %loadMem_40d09e, %struct.Memory** %MEMORY
  br label %block_.L_40d0a3

block_.L_40d0a3:                                  ; preds = %block_.L_40d09e
  %loadMem_40d0a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3811 = getelementptr inbounds %struct.GPR, %struct.GPR* %3810, i32 0, i32 33
  %3812 = getelementptr inbounds %struct.Reg, %struct.Reg* %3811, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %3812 to i64*
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3814 = getelementptr inbounds %struct.GPR, %struct.GPR* %3813, i32 0, i32 1
  %3815 = getelementptr inbounds %struct.Reg, %struct.Reg* %3814, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %3815 to i64*
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 15
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %3818 to i64*
  %3819 = load i64, i64* %RBP.i242
  %3820 = sub i64 %3819, 12
  %3821 = load i64, i64* %PC.i240
  %3822 = add i64 %3821, 3
  store i64 %3822, i64* %PC.i240
  %3823 = inttoptr i64 %3820 to i32*
  %3824 = load i32, i32* %3823
  %3825 = zext i32 %3824 to i64
  store i64 %3825, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_40d0a3, %struct.Memory** %MEMORY
  %loadMem_40d0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 33
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %3828 to i64*
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 1
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %3831 to i64*
  %3832 = load i64, i64* %RAX.i239
  %3833 = load i64, i64* %PC.i238
  %3834 = add i64 %3833, 3
  store i64 %3834, i64* %PC.i238
  %3835 = trunc i64 %3832 to i32
  %3836 = add i32 1, %3835
  %3837 = zext i32 %3836 to i64
  store i64 %3837, i64* %RAX.i239, align 8
  %3838 = icmp ult i32 %3836, %3835
  %3839 = icmp ult i32 %3836, 1
  %3840 = or i1 %3838, %3839
  %3841 = zext i1 %3840 to i8
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3841, i8* %3842, align 1
  %3843 = and i32 %3836, 255
  %3844 = call i32 @llvm.ctpop.i32(i32 %3843)
  %3845 = trunc i32 %3844 to i8
  %3846 = and i8 %3845, 1
  %3847 = xor i8 %3846, 1
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3847, i8* %3848, align 1
  %3849 = xor i64 1, %3832
  %3850 = trunc i64 %3849 to i32
  %3851 = xor i32 %3850, %3836
  %3852 = lshr i32 %3851, 4
  %3853 = trunc i32 %3852 to i8
  %3854 = and i8 %3853, 1
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3854, i8* %3855, align 1
  %3856 = icmp eq i32 %3836, 0
  %3857 = zext i1 %3856 to i8
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3857, i8* %3858, align 1
  %3859 = lshr i32 %3836, 31
  %3860 = trunc i32 %3859 to i8
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3860, i8* %3861, align 1
  %3862 = lshr i32 %3835, 31
  %3863 = xor i32 %3859, %3862
  %3864 = add i32 %3863, %3859
  %3865 = icmp eq i32 %3864, 2
  %3866 = zext i1 %3865 to i8
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3866, i8* %3867, align 1
  store %struct.Memory* %loadMem_40d0a6, %struct.Memory** %MEMORY
  %loadMem_40d0a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 33
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %3870 to i64*
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3872 = getelementptr inbounds %struct.GPR, %struct.GPR* %3871, i32 0, i32 1
  %3873 = getelementptr inbounds %struct.Reg, %struct.Reg* %3872, i32 0, i32 0
  %EAX.i236 = bitcast %union.anon* %3873 to i32*
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3875 = getelementptr inbounds %struct.GPR, %struct.GPR* %3874, i32 0, i32 15
  %3876 = getelementptr inbounds %struct.Reg, %struct.Reg* %3875, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %3876 to i64*
  %3877 = load i64, i64* %RBP.i237
  %3878 = sub i64 %3877, 12
  %3879 = load i32, i32* %EAX.i236
  %3880 = zext i32 %3879 to i64
  %3881 = load i64, i64* %PC.i235
  %3882 = add i64 %3881, 3
  store i64 %3882, i64* %PC.i235
  %3883 = inttoptr i64 %3878 to i32*
  store i32 %3879, i32* %3883
  store %struct.Memory* %loadMem_40d0a9, %struct.Memory** %MEMORY
  %loadMem_40d0ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3885 = getelementptr inbounds %struct.GPR, %struct.GPR* %3884, i32 0, i32 33
  %3886 = getelementptr inbounds %struct.Reg, %struct.Reg* %3885, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %3886 to i64*
  %3887 = load i64, i64* %PC.i234
  %3888 = add i64 %3887, -277
  %3889 = load i64, i64* %PC.i234
  %3890 = add i64 %3889, 5
  store i64 %3890, i64* %PC.i234
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3888, i64* %3891, align 8
  store %struct.Memory* %loadMem_40d0ac, %struct.Memory** %MEMORY
  br label %block_.L_40cf97

block_.L_40d0b1:                                  ; preds = %block_.L_40cf97
  %loadMem_40d0b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 33
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %3894 to i64*
  %3895 = load i64, i64* %PC.i233
  %3896 = add i64 %3895, 61
  %3897 = load i64, i64* %PC.i233
  %3898 = add i64 %3897, 5
  store i64 %3898, i64* %PC.i233
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3896, i64* %3899, align 8
  store %struct.Memory* %loadMem_40d0b1, %struct.Memory** %MEMORY
  br label %block_.L_40d0ee

block_.L_40d0b6:                                  ; preds = %block_.L_40cf6e
  %loadMem_40d0b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3901 = getelementptr inbounds %struct.GPR, %struct.GPR* %3900, i32 0, i32 33
  %3902 = getelementptr inbounds %struct.Reg, %struct.Reg* %3901, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %3902 to i64*
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3904 = getelementptr inbounds %struct.GPR, %struct.GPR* %3903, i32 0, i32 1
  %3905 = getelementptr inbounds %struct.Reg, %struct.Reg* %3904, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %3905 to i64*
  %3906 = load i64, i64* %PC.i231
  %3907 = add i64 %3906, 10
  store i64 %3907, i64* %PC.i231
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i232, align 8
  store %struct.Memory* %loadMem_40d0b6, %struct.Memory** %MEMORY
  %loadMem_40d0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 33
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %3910 to i64*
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3912 = getelementptr inbounds %struct.GPR, %struct.GPR* %3911, i32 0, i32 5
  %3913 = getelementptr inbounds %struct.Reg, %struct.Reg* %3912, i32 0, i32 0
  %RCX.i230 = bitcast %union.anon* %3913 to i64*
  %3914 = load i64, i64* %PC.i229
  %3915 = add i64 %3914, 7
  store i64 %3915, i64* %PC.i229
  %3916 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %3917 = zext i32 %3916 to i64
  store i64 %3917, i64* %RCX.i230, align 8
  store %struct.Memory* %loadMem_40d0c0, %struct.Memory** %MEMORY
  %loadMem_40d0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3919 = getelementptr inbounds %struct.GPR, %struct.GPR* %3918, i32 0, i32 33
  %3920 = getelementptr inbounds %struct.Reg, %struct.Reg* %3919, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %3920 to i64*
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 5
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %RCX.i228 = bitcast %union.anon* %3923 to i64*
  %3924 = load i64, i64* %RCX.i228
  %3925 = load i64, i64* %PC.i227
  %3926 = add i64 %3925, 3
  store i64 %3926, i64* %PC.i227
  %3927 = trunc i64 %3924 to i32
  %3928 = add i32 1, %3927
  %3929 = zext i32 %3928 to i64
  store i64 %3929, i64* %RCX.i228, align 8
  %3930 = icmp ult i32 %3928, %3927
  %3931 = icmp ult i32 %3928, 1
  %3932 = or i1 %3930, %3931
  %3933 = zext i1 %3932 to i8
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3933, i8* %3934, align 1
  %3935 = and i32 %3928, 255
  %3936 = call i32 @llvm.ctpop.i32(i32 %3935)
  %3937 = trunc i32 %3936 to i8
  %3938 = and i8 %3937, 1
  %3939 = xor i8 %3938, 1
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3939, i8* %3940, align 1
  %3941 = xor i64 1, %3924
  %3942 = trunc i64 %3941 to i32
  %3943 = xor i32 %3942, %3928
  %3944 = lshr i32 %3943, 4
  %3945 = trunc i32 %3944 to i8
  %3946 = and i8 %3945, 1
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3946, i8* %3947, align 1
  %3948 = icmp eq i32 %3928, 0
  %3949 = zext i1 %3948 to i8
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3949, i8* %3950, align 1
  %3951 = lshr i32 %3928, 31
  %3952 = trunc i32 %3951 to i8
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3952, i8* %3953, align 1
  %3954 = lshr i32 %3927, 31
  %3955 = xor i32 %3951, %3954
  %3956 = add i32 %3955, %3951
  %3957 = icmp eq i32 %3956, 2
  %3958 = zext i1 %3957 to i8
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3958, i8* %3959, align 1
  store %struct.Memory* %loadMem_40d0c7, %struct.Memory** %MEMORY
  %loadMem_40d0ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 33
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %3962 to i64*
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3964 = getelementptr inbounds %struct.GPR, %struct.GPR* %3963, i32 0, i32 5
  %3965 = getelementptr inbounds %struct.Reg, %struct.Reg* %3964, i32 0, i32 0
  %ECX.i226 = bitcast %union.anon* %3965 to i32*
  %3966 = load i32, i32* %ECX.i226
  %3967 = zext i32 %3966 to i64
  %3968 = load i64, i64* %PC.i225
  %3969 = add i64 %3968, 7
  store i64 %3969, i64* %PC.i225
  store i32 %3966, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  store %struct.Memory* %loadMem_40d0ca, %struct.Memory** %MEMORY
  %loadMem_40d0d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 33
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %3972 to i64*
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 7
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %RDX.i223 = bitcast %union.anon* %3975 to i64*
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3977 = getelementptr inbounds %struct.GPR, %struct.GPR* %3976, i32 0, i32 15
  %3978 = getelementptr inbounds %struct.Reg, %struct.Reg* %3977, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %3978 to i64*
  %3979 = load i64, i64* %RBP.i224
  %3980 = sub i64 %3979, 4
  %3981 = load i64, i64* %PC.i222
  %3982 = add i64 %3981, 4
  store i64 %3982, i64* %PC.i222
  %3983 = inttoptr i64 %3980 to i32*
  %3984 = load i32, i32* %3983
  %3985 = sext i32 %3984 to i64
  store i64 %3985, i64* %RDX.i223, align 8
  store %struct.Memory* %loadMem_40d0d1, %struct.Memory** %MEMORY
  %loadMem_40d0d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 33
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3988 to i64*
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 7
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %RDX.i221 = bitcast %union.anon* %3991 to i64*
  %3992 = load i64, i64* %RDX.i221
  %3993 = load i64, i64* %PC.i220
  %3994 = add i64 %3993, 7
  store i64 %3994, i64* %PC.i220
  %3995 = sext i64 %3992 to i128
  %3996 = and i128 %3995, -18446744073709551616
  %3997 = zext i64 %3992 to i128
  %3998 = or i128 %3996, %3997
  %3999 = mul i128 744, %3998
  %4000 = trunc i128 %3999 to i64
  store i64 %4000, i64* %RDX.i221, align 8
  %4001 = sext i64 %4000 to i128
  %4002 = icmp ne i128 %4001, %3999
  %4003 = zext i1 %4002 to i8
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4003, i8* %4004, align 1
  %4005 = trunc i128 %3999 to i32
  %4006 = and i32 %4005, 255
  %4007 = call i32 @llvm.ctpop.i32(i32 %4006)
  %4008 = trunc i32 %4007 to i8
  %4009 = and i8 %4008, 1
  %4010 = xor i8 %4009, 1
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4010, i8* %4011, align 1
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4012, align 1
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4013, align 1
  %4014 = lshr i64 %4000, 63
  %4015 = trunc i64 %4014 to i8
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4015, i8* %4016, align 1
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4003, i8* %4017, align 1
  store %struct.Memory* %loadMem_40d0d5, %struct.Memory** %MEMORY
  %loadMem_40d0dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 33
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %4020 to i64*
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 1
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %4023 to i64*
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 7
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %RDX.i219 = bitcast %union.anon* %4026 to i64*
  %4027 = load i64, i64* %RAX.i218
  %4028 = load i64, i64* %RDX.i219
  %4029 = load i64, i64* %PC.i217
  %4030 = add i64 %4029, 3
  store i64 %4030, i64* %PC.i217
  %4031 = add i64 %4028, %4027
  store i64 %4031, i64* %RAX.i218, align 8
  %4032 = icmp ult i64 %4031, %4027
  %4033 = icmp ult i64 %4031, %4028
  %4034 = or i1 %4032, %4033
  %4035 = zext i1 %4034 to i8
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4035, i8* %4036, align 1
  %4037 = trunc i64 %4031 to i32
  %4038 = and i32 %4037, 255
  %4039 = call i32 @llvm.ctpop.i32(i32 %4038)
  %4040 = trunc i32 %4039 to i8
  %4041 = and i8 %4040, 1
  %4042 = xor i8 %4041, 1
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4042, i8* %4043, align 1
  %4044 = xor i64 %4028, %4027
  %4045 = xor i64 %4044, %4031
  %4046 = lshr i64 %4045, 4
  %4047 = trunc i64 %4046 to i8
  %4048 = and i8 %4047, 1
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4048, i8* %4049, align 1
  %4050 = icmp eq i64 %4031, 0
  %4051 = zext i1 %4050 to i8
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4051, i8* %4052, align 1
  %4053 = lshr i64 %4031, 63
  %4054 = trunc i64 %4053 to i8
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4054, i8* %4055, align 1
  %4056 = lshr i64 %4027, 63
  %4057 = lshr i64 %4028, 63
  %4058 = xor i64 %4053, %4056
  %4059 = xor i64 %4053, %4057
  %4060 = add i64 %4058, %4059
  %4061 = icmp eq i64 %4060, 2
  %4062 = zext i1 %4061 to i8
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4062, i8* %4063, align 1
  store %struct.Memory* %loadMem_40d0dc, %struct.Memory** %MEMORY
  %loadMem_40d0df = load %struct.Memory*, %struct.Memory** %MEMORY
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 33
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %4066 to i64*
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 1
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %4069 to i64*
  %4070 = load i64, i64* %RAX.i216
  %4071 = add i64 %4070, 12
  %4072 = load i64, i64* %PC.i215
  %4073 = add i64 %4072, 7
  store i64 %4073, i64* %PC.i215
  %4074 = inttoptr i64 %4071 to i32*
  store i32 0, i32* %4074
  store %struct.Memory* %loadMem_40d0df, %struct.Memory** %MEMORY
  %loadMem_40d0e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4076 = getelementptr inbounds %struct.GPR, %struct.GPR* %4075, i32 0, i32 33
  %4077 = getelementptr inbounds %struct.Reg, %struct.Reg* %4076, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %4077 to i64*
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4079 = getelementptr inbounds %struct.GPR, %struct.GPR* %4078, i32 0, i32 11
  %4080 = getelementptr inbounds %struct.Reg, %struct.Reg* %4079, i32 0, i32 0
  %RDI.i213 = bitcast %union.anon* %4080 to i64*
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4082 = getelementptr inbounds %struct.GPR, %struct.GPR* %4081, i32 0, i32 15
  %4083 = getelementptr inbounds %struct.Reg, %struct.Reg* %4082, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %4083 to i64*
  %4084 = load i64, i64* %RBP.i214
  %4085 = sub i64 %4084, 4
  %4086 = load i64, i64* %PC.i212
  %4087 = add i64 %4086, 3
  store i64 %4087, i64* %PC.i212
  %4088 = inttoptr i64 %4085 to i32*
  %4089 = load i32, i32* %4088
  %4090 = zext i32 %4089 to i64
  store i64 %4090, i64* %RDI.i213, align 8
  store %struct.Memory* %loadMem_40d0e6, %struct.Memory** %MEMORY
  %loadMem1_40d0e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 33
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %4093 to i64*
  %4094 = load i64, i64* %PC.i211
  %4095 = add i64 %4094, 407
  %4096 = load i64, i64* %PC.i211
  %4097 = add i64 %4096, 5
  %4098 = load i64, i64* %PC.i211
  %4099 = add i64 %4098, 5
  store i64 %4099, i64* %PC.i211
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4101 = load i64, i64* %4100, align 8
  %4102 = add i64 %4101, -8
  %4103 = inttoptr i64 %4102 to i64*
  store i64 %4097, i64* %4103
  store i64 %4102, i64* %4100, align 8
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4095, i64* %4104, align 8
  store %struct.Memory* %loadMem1_40d0e9, %struct.Memory** %MEMORY
  %loadMem2_40d0e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40d0e9 = load i64, i64* %3
  %call2_40d0e9 = call %struct.Memory* @sub_40d280.update_liberties(%struct.State* %0, i64 %loadPC_40d0e9, %struct.Memory* %loadMem2_40d0e9)
  store %struct.Memory* %call2_40d0e9, %struct.Memory** %MEMORY
  br label %block_.L_40d0ee

block_.L_40d0ee:                                  ; preds = %block_.L_40d0b6, %block_.L_40d0b1
  %loadMem_40d0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4106 = getelementptr inbounds %struct.GPR, %struct.GPR* %4105, i32 0, i32 33
  %4107 = getelementptr inbounds %struct.Reg, %struct.Reg* %4106, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %4107 to i64*
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4109 = getelementptr inbounds %struct.GPR, %struct.GPR* %4108, i32 0, i32 15
  %4110 = getelementptr inbounds %struct.Reg, %struct.Reg* %4109, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %4110 to i64*
  %4111 = load i64, i64* %RBP.i210
  %4112 = sub i64 %4111, 12
  %4113 = load i64, i64* %PC.i209
  %4114 = add i64 %4113, 7
  store i64 %4114, i64* %PC.i209
  %4115 = inttoptr i64 %4112 to i32*
  store i32 0, i32* %4115
  store %struct.Memory* %loadMem_40d0ee, %struct.Memory** %MEMORY
  br label %block_.L_40d0f5

block_.L_40d0f5:                                  ; preds = %block_.L_40d260, %block_.L_40d0ee
  %loadMem_40d0f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 33
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %4118 to i64*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 1
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %RAX.i208 = bitcast %union.anon* %4121 to i64*
  %4122 = load i64, i64* %PC.i207
  %4123 = add i64 %4122, 10
  store i64 %4123, i64* %PC.i207
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i208, align 8
  store %struct.Memory* %loadMem_40d0f5, %struct.Memory** %MEMORY
  %loadMem_40d0ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4125 = getelementptr inbounds %struct.GPR, %struct.GPR* %4124, i32 0, i32 33
  %4126 = getelementptr inbounds %struct.Reg, %struct.Reg* %4125, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %4126 to i64*
  %4127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4128 = getelementptr inbounds %struct.GPR, %struct.GPR* %4127, i32 0, i32 5
  %4129 = getelementptr inbounds %struct.Reg, %struct.Reg* %4128, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %4129 to i64*
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4131 = getelementptr inbounds %struct.GPR, %struct.GPR* %4130, i32 0, i32 15
  %4132 = getelementptr inbounds %struct.Reg, %struct.Reg* %4131, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %4132 to i64*
  %4133 = load i64, i64* %RBP.i206
  %4134 = sub i64 %4133, 12
  %4135 = load i64, i64* %PC.i204
  %4136 = add i64 %4135, 3
  store i64 %4136, i64* %PC.i204
  %4137 = inttoptr i64 %4134 to i32*
  %4138 = load i32, i32* %4137
  %4139 = zext i32 %4138 to i64
  store i64 %4139, i64* %RCX.i205, align 8
  store %struct.Memory* %loadMem_40d0ff, %struct.Memory** %MEMORY
  %loadMem_40d102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4141 = getelementptr inbounds %struct.GPR, %struct.GPR* %4140, i32 0, i32 33
  %4142 = getelementptr inbounds %struct.Reg, %struct.Reg* %4141, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %4142 to i64*
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4144 = getelementptr inbounds %struct.GPR, %struct.GPR* %4143, i32 0, i32 7
  %4145 = getelementptr inbounds %struct.Reg, %struct.Reg* %4144, i32 0, i32 0
  %RDX.i202 = bitcast %union.anon* %4145 to i64*
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4147 = getelementptr inbounds %struct.GPR, %struct.GPR* %4146, i32 0, i32 15
  %4148 = getelementptr inbounds %struct.Reg, %struct.Reg* %4147, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %4148 to i64*
  %4149 = load i64, i64* %RBP.i203
  %4150 = sub i64 %4149, 20
  %4151 = load i64, i64* %PC.i201
  %4152 = add i64 %4151, 4
  store i64 %4152, i64* %PC.i201
  %4153 = inttoptr i64 %4150 to i32*
  %4154 = load i32, i32* %4153
  %4155 = sext i32 %4154 to i64
  store i64 %4155, i64* %RDX.i202, align 8
  store %struct.Memory* %loadMem_40d102, %struct.Memory** %MEMORY
  %loadMem_40d106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4157 = getelementptr inbounds %struct.GPR, %struct.GPR* %4156, i32 0, i32 33
  %4158 = getelementptr inbounds %struct.Reg, %struct.Reg* %4157, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %4158 to i64*
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 7
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %RDX.i200 = bitcast %union.anon* %4161 to i64*
  %4162 = load i64, i64* %RDX.i200
  %4163 = load i64, i64* %PC.i199
  %4164 = add i64 %4163, 7
  store i64 %4164, i64* %PC.i199
  %4165 = sext i64 %4162 to i128
  %4166 = and i128 %4165, -18446744073709551616
  %4167 = zext i64 %4162 to i128
  %4168 = or i128 %4166, %4167
  %4169 = mul i128 744, %4168
  %4170 = trunc i128 %4169 to i64
  store i64 %4170, i64* %RDX.i200, align 8
  %4171 = sext i64 %4170 to i128
  %4172 = icmp ne i128 %4171, %4169
  %4173 = zext i1 %4172 to i8
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4173, i8* %4174, align 1
  %4175 = trunc i128 %4169 to i32
  %4176 = and i32 %4175, 255
  %4177 = call i32 @llvm.ctpop.i32(i32 %4176)
  %4178 = trunc i32 %4177 to i8
  %4179 = and i8 %4178, 1
  %4180 = xor i8 %4179, 1
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4180, i8* %4181, align 1
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4182, align 1
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4183, align 1
  %4184 = lshr i64 %4170, 63
  %4185 = trunc i64 %4184 to i8
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4185, i8* %4186, align 1
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4173, i8* %4187, align 1
  store %struct.Memory* %loadMem_40d106, %struct.Memory** %MEMORY
  %loadMem_40d10d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4189 = getelementptr inbounds %struct.GPR, %struct.GPR* %4188, i32 0, i32 33
  %4190 = getelementptr inbounds %struct.Reg, %struct.Reg* %4189, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %4190 to i64*
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4192 = getelementptr inbounds %struct.GPR, %struct.GPR* %4191, i32 0, i32 1
  %4193 = getelementptr inbounds %struct.Reg, %struct.Reg* %4192, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %4193 to i64*
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 7
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %RDX.i198 = bitcast %union.anon* %4196 to i64*
  %4197 = load i64, i64* %RAX.i197
  %4198 = load i64, i64* %RDX.i198
  %4199 = load i64, i64* %PC.i196
  %4200 = add i64 %4199, 3
  store i64 %4200, i64* %PC.i196
  %4201 = add i64 %4198, %4197
  store i64 %4201, i64* %RAX.i197, align 8
  %4202 = icmp ult i64 %4201, %4197
  %4203 = icmp ult i64 %4201, %4198
  %4204 = or i1 %4202, %4203
  %4205 = zext i1 %4204 to i8
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4205, i8* %4206, align 1
  %4207 = trunc i64 %4201 to i32
  %4208 = and i32 %4207, 255
  %4209 = call i32 @llvm.ctpop.i32(i32 %4208)
  %4210 = trunc i32 %4209 to i8
  %4211 = and i8 %4210, 1
  %4212 = xor i8 %4211, 1
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4212, i8* %4213, align 1
  %4214 = xor i64 %4198, %4197
  %4215 = xor i64 %4214, %4201
  %4216 = lshr i64 %4215, 4
  %4217 = trunc i64 %4216 to i8
  %4218 = and i8 %4217, 1
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4218, i8* %4219, align 1
  %4220 = icmp eq i64 %4201, 0
  %4221 = zext i1 %4220 to i8
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4221, i8* %4222, align 1
  %4223 = lshr i64 %4201, 63
  %4224 = trunc i64 %4223 to i8
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4224, i8* %4225, align 1
  %4226 = lshr i64 %4197, 63
  %4227 = lshr i64 %4198, 63
  %4228 = xor i64 %4223, %4226
  %4229 = xor i64 %4223, %4227
  %4230 = add i64 %4228, %4229
  %4231 = icmp eq i64 %4230, 2
  %4232 = zext i1 %4231 to i8
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4232, i8* %4233, align 1
  store %struct.Memory* %loadMem_40d10d, %struct.Memory** %MEMORY
  %loadMem_40d110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 33
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %4236 to i64*
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4238 = getelementptr inbounds %struct.GPR, %struct.GPR* %4237, i32 0, i32 5
  %4239 = getelementptr inbounds %struct.Reg, %struct.Reg* %4238, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4239 to i32*
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4241 = getelementptr inbounds %struct.GPR, %struct.GPR* %4240, i32 0, i32 1
  %4242 = getelementptr inbounds %struct.Reg, %struct.Reg* %4241, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %4242 to i64*
  %4243 = load i32, i32* %ECX.i
  %4244 = zext i32 %4243 to i64
  %4245 = load i64, i64* %RAX.i195
  %4246 = add i64 %4245, 96
  %4247 = load i64, i64* %PC.i194
  %4248 = add i64 %4247, 3
  store i64 %4248, i64* %PC.i194
  %4249 = inttoptr i64 %4246 to i32*
  %4250 = load i32, i32* %4249
  %4251 = sub i32 %4243, %4250
  %4252 = icmp ult i32 %4243, %4250
  %4253 = zext i1 %4252 to i8
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4253, i8* %4254, align 1
  %4255 = and i32 %4251, 255
  %4256 = call i32 @llvm.ctpop.i32(i32 %4255)
  %4257 = trunc i32 %4256 to i8
  %4258 = and i8 %4257, 1
  %4259 = xor i8 %4258, 1
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4259, i8* %4260, align 1
  %4261 = xor i32 %4250, %4243
  %4262 = xor i32 %4261, %4251
  %4263 = lshr i32 %4262, 4
  %4264 = trunc i32 %4263 to i8
  %4265 = and i8 %4264, 1
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4265, i8* %4266, align 1
  %4267 = icmp eq i32 %4251, 0
  %4268 = zext i1 %4267 to i8
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4268, i8* %4269, align 1
  %4270 = lshr i32 %4251, 31
  %4271 = trunc i32 %4270 to i8
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4271, i8* %4272, align 1
  %4273 = lshr i32 %4243, 31
  %4274 = lshr i32 %4250, 31
  %4275 = xor i32 %4274, %4273
  %4276 = xor i32 %4270, %4273
  %4277 = add i32 %4276, %4275
  %4278 = icmp eq i32 %4277, 2
  %4279 = zext i1 %4278 to i8
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4279, i8* %4280, align 1
  store %struct.Memory* %loadMem_40d110, %struct.Memory** %MEMORY
  %loadMem_40d113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4282 = getelementptr inbounds %struct.GPR, %struct.GPR* %4281, i32 0, i32 33
  %4283 = getelementptr inbounds %struct.Reg, %struct.Reg* %4282, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %4283 to i64*
  %4284 = load i64, i64* %PC.i193
  %4285 = add i64 %4284, 347
  %4286 = load i64, i64* %PC.i193
  %4287 = add i64 %4286, 6
  %4288 = load i64, i64* %PC.i193
  %4289 = add i64 %4288, 6
  store i64 %4289, i64* %PC.i193
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4291 = load i8, i8* %4290, align 1
  %4292 = icmp ne i8 %4291, 0
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4294 = load i8, i8* %4293, align 1
  %4295 = icmp ne i8 %4294, 0
  %4296 = xor i1 %4292, %4295
  %4297 = xor i1 %4296, true
  %4298 = zext i1 %4297 to i8
  store i8 %4298, i8* %BRANCH_TAKEN, align 1
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4300 = select i1 %4296, i64 %4287, i64 %4285
  store i64 %4300, i64* %4299, align 8
  store %struct.Memory* %loadMem_40d113, %struct.Memory** %MEMORY
  %loadBr_40d113 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d113 = icmp eq i8 %loadBr_40d113, 1
  br i1 %cmpBr_40d113, label %block_.L_40d26e, label %block_40d119

block_40d119:                                     ; preds = %block_.L_40d0f5
  %loadMem_40d119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 33
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %4303 to i64*
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4305 = getelementptr inbounds %struct.GPR, %struct.GPR* %4304, i32 0, i32 1
  %4306 = getelementptr inbounds %struct.Reg, %struct.Reg* %4305, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %4306 to i64*
  %4307 = load i64, i64* %PC.i191
  %4308 = add i64 %4307, 10
  store i64 %4308, i64* %PC.i191
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i192, align 8
  store %struct.Memory* %loadMem_40d119, %struct.Memory** %MEMORY
  %loadMem_40d123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4310 = getelementptr inbounds %struct.GPR, %struct.GPR* %4309, i32 0, i32 33
  %4311 = getelementptr inbounds %struct.Reg, %struct.Reg* %4310, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %4311 to i64*
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 5
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %RCX.i189 = bitcast %union.anon* %4314 to i64*
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 15
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %4317 to i64*
  %4318 = load i64, i64* %RBP.i190
  %4319 = sub i64 %4318, 20
  %4320 = load i64, i64* %PC.i188
  %4321 = add i64 %4320, 4
  store i64 %4321, i64* %PC.i188
  %4322 = inttoptr i64 %4319 to i32*
  %4323 = load i32, i32* %4322
  %4324 = sext i32 %4323 to i64
  store i64 %4324, i64* %RCX.i189, align 8
  store %struct.Memory* %loadMem_40d123, %struct.Memory** %MEMORY
  %loadMem_40d127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4326 = getelementptr inbounds %struct.GPR, %struct.GPR* %4325, i32 0, i32 33
  %4327 = getelementptr inbounds %struct.Reg, %struct.Reg* %4326, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %4327 to i64*
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4329 = getelementptr inbounds %struct.GPR, %struct.GPR* %4328, i32 0, i32 5
  %4330 = getelementptr inbounds %struct.Reg, %struct.Reg* %4329, i32 0, i32 0
  %RCX.i187 = bitcast %union.anon* %4330 to i64*
  %4331 = load i64, i64* %RCX.i187
  %4332 = load i64, i64* %PC.i186
  %4333 = add i64 %4332, 7
  store i64 %4333, i64* %PC.i186
  %4334 = sext i64 %4331 to i128
  %4335 = and i128 %4334, -18446744073709551616
  %4336 = zext i64 %4331 to i128
  %4337 = or i128 %4335, %4336
  %4338 = mul i128 744, %4337
  %4339 = trunc i128 %4338 to i64
  store i64 %4339, i64* %RCX.i187, align 8
  %4340 = sext i64 %4339 to i128
  %4341 = icmp ne i128 %4340, %4338
  %4342 = zext i1 %4341 to i8
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4342, i8* %4343, align 1
  %4344 = trunc i128 %4338 to i32
  %4345 = and i32 %4344, 255
  %4346 = call i32 @llvm.ctpop.i32(i32 %4345)
  %4347 = trunc i32 %4346 to i8
  %4348 = and i8 %4347, 1
  %4349 = xor i8 %4348, 1
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4349, i8* %4350, align 1
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4351, align 1
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4352, align 1
  %4353 = lshr i64 %4339, 63
  %4354 = trunc i64 %4353 to i8
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4354, i8* %4355, align 1
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4342, i8* %4356, align 1
  store %struct.Memory* %loadMem_40d127, %struct.Memory** %MEMORY
  %loadMem_40d12e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 33
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %4359 to i64*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 1
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %4362 to i64*
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4364 = getelementptr inbounds %struct.GPR, %struct.GPR* %4363, i32 0, i32 5
  %4365 = getelementptr inbounds %struct.Reg, %struct.Reg* %4364, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %4365 to i64*
  %4366 = load i64, i64* %RAX.i184
  %4367 = load i64, i64* %RCX.i185
  %4368 = load i64, i64* %PC.i183
  %4369 = add i64 %4368, 3
  store i64 %4369, i64* %PC.i183
  %4370 = add i64 %4367, %4366
  store i64 %4370, i64* %RAX.i184, align 8
  %4371 = icmp ult i64 %4370, %4366
  %4372 = icmp ult i64 %4370, %4367
  %4373 = or i1 %4371, %4372
  %4374 = zext i1 %4373 to i8
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4374, i8* %4375, align 1
  %4376 = trunc i64 %4370 to i32
  %4377 = and i32 %4376, 255
  %4378 = call i32 @llvm.ctpop.i32(i32 %4377)
  %4379 = trunc i32 %4378 to i8
  %4380 = and i8 %4379, 1
  %4381 = xor i8 %4380, 1
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4381, i8* %4382, align 1
  %4383 = xor i64 %4367, %4366
  %4384 = xor i64 %4383, %4370
  %4385 = lshr i64 %4384, 4
  %4386 = trunc i64 %4385 to i8
  %4387 = and i8 %4386, 1
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4387, i8* %4388, align 1
  %4389 = icmp eq i64 %4370, 0
  %4390 = zext i1 %4389 to i8
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4390, i8* %4391, align 1
  %4392 = lshr i64 %4370, 63
  %4393 = trunc i64 %4392 to i8
  %4394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4393, i8* %4394, align 1
  %4395 = lshr i64 %4366, 63
  %4396 = lshr i64 %4367, 63
  %4397 = xor i64 %4392, %4395
  %4398 = xor i64 %4392, %4396
  %4399 = add i64 %4397, %4398
  %4400 = icmp eq i64 %4399, 2
  %4401 = zext i1 %4400 to i8
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4401, i8* %4402, align 1
  store %struct.Memory* %loadMem_40d12e, %struct.Memory** %MEMORY
  %loadMem_40d131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4404 = getelementptr inbounds %struct.GPR, %struct.GPR* %4403, i32 0, i32 33
  %4405 = getelementptr inbounds %struct.Reg, %struct.Reg* %4404, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %4405 to i64*
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4407 = getelementptr inbounds %struct.GPR, %struct.GPR* %4406, i32 0, i32 5
  %4408 = getelementptr inbounds %struct.Reg, %struct.Reg* %4407, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %4408 to i64*
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 15
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %4411 to i64*
  %4412 = load i64, i64* %RBP.i182
  %4413 = sub i64 %4412, 12
  %4414 = load i64, i64* %PC.i180
  %4415 = add i64 %4414, 4
  store i64 %4415, i64* %PC.i180
  %4416 = inttoptr i64 %4413 to i32*
  %4417 = load i32, i32* %4416
  %4418 = sext i32 %4417 to i64
  store i64 %4418, i64* %RCX.i181, align 8
  store %struct.Memory* %loadMem_40d131, %struct.Memory** %MEMORY
  %loadMem_40d135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4420 = getelementptr inbounds %struct.GPR, %struct.GPR* %4419, i32 0, i32 33
  %4421 = getelementptr inbounds %struct.Reg, %struct.Reg* %4420, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %4421 to i64*
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4423 = getelementptr inbounds %struct.GPR, %struct.GPR* %4422, i32 0, i32 1
  %4424 = getelementptr inbounds %struct.Reg, %struct.Reg* %4423, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %4424 to i64*
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4426 = getelementptr inbounds %struct.GPR, %struct.GPR* %4425, i32 0, i32 5
  %4427 = getelementptr inbounds %struct.Reg, %struct.Reg* %4426, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %4427 to i64*
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4429 = getelementptr inbounds %struct.GPR, %struct.GPR* %4428, i32 0, i32 7
  %4430 = getelementptr inbounds %struct.Reg, %struct.Reg* %4429, i32 0, i32 0
  %RDX.i179 = bitcast %union.anon* %4430 to i64*
  %4431 = load i64, i64* %RAX.i177
  %4432 = load i64, i64* %RCX.i178
  %4433 = mul i64 %4432, 4
  %4434 = add i64 %4431, 100
  %4435 = add i64 %4434, %4433
  %4436 = load i64, i64* %PC.i176
  %4437 = add i64 %4436, 4
  store i64 %4437, i64* %PC.i176
  %4438 = inttoptr i64 %4435 to i32*
  %4439 = load i32, i32* %4438
  %4440 = zext i32 %4439 to i64
  store i64 %4440, i64* %RDX.i179, align 8
  store %struct.Memory* %loadMem_40d135, %struct.Memory** %MEMORY
  %loadMem_40d139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4442 = getelementptr inbounds %struct.GPR, %struct.GPR* %4441, i32 0, i32 33
  %4443 = getelementptr inbounds %struct.Reg, %struct.Reg* %4442, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %4443 to i64*
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 7
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %EDX.i174 = bitcast %union.anon* %4446 to i32*
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4448 = getelementptr inbounds %struct.GPR, %struct.GPR* %4447, i32 0, i32 15
  %4449 = getelementptr inbounds %struct.Reg, %struct.Reg* %4448, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %4449 to i64*
  %4450 = load i64, i64* %RBP.i175
  %4451 = sub i64 %4450, 32
  %4452 = load i32, i32* %EDX.i174
  %4453 = zext i32 %4452 to i64
  %4454 = load i64, i64* %PC.i173
  %4455 = add i64 %4454, 3
  store i64 %4455, i64* %PC.i173
  %4456 = inttoptr i64 %4451 to i32*
  store i32 %4452, i32* %4456
  store %struct.Memory* %loadMem_40d139, %struct.Memory** %MEMORY
  %loadMem_40d13c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 33
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %4459 to i64*
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 11
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %RDI.i171 = bitcast %union.anon* %4462 to i64*
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 15
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %4465 to i64*
  %4466 = load i64, i64* %RBP.i172
  %4467 = sub i64 %4466, 32
  %4468 = load i64, i64* %PC.i170
  %4469 = add i64 %4468, 3
  store i64 %4469, i64* %PC.i170
  %4470 = inttoptr i64 %4467 to i32*
  %4471 = load i32, i32* %4470
  %4472 = zext i32 %4471 to i64
  store i64 %4472, i64* %RDI.i171, align 8
  store %struct.Memory* %loadMem_40d13c, %struct.Memory** %MEMORY
  %loadMem_40d13f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 33
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %4475 to i64*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 9
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %RSI.i168 = bitcast %union.anon* %4478 to i64*
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4480 = getelementptr inbounds %struct.GPR, %struct.GPR* %4479, i32 0, i32 15
  %4481 = getelementptr inbounds %struct.Reg, %struct.Reg* %4480, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %4481 to i64*
  %4482 = load i64, i64* %RBP.i169
  %4483 = sub i64 %4482, 20
  %4484 = load i64, i64* %PC.i167
  %4485 = add i64 %4484, 3
  store i64 %4485, i64* %PC.i167
  %4486 = inttoptr i64 %4483 to i32*
  %4487 = load i32, i32* %4486
  %4488 = zext i32 %4487 to i64
  store i64 %4488, i64* %RSI.i168, align 8
  store %struct.Memory* %loadMem_40d13f, %struct.Memory** %MEMORY
  %loadMem1_40d142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 33
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %4491 to i64*
  %4492 = load i64, i64* %PC.i166
  %4493 = add i64 %4492, 1582
  %4494 = load i64, i64* %PC.i166
  %4495 = add i64 %4494, 5
  %4496 = load i64, i64* %PC.i166
  %4497 = add i64 %4496, 5
  store i64 %4497, i64* %PC.i166
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4499 = load i64, i64* %4498, align 8
  %4500 = add i64 %4499, -8
  %4501 = inttoptr i64 %4500 to i64*
  store i64 %4495, i64* %4501
  store i64 %4500, i64* %4498, align 8
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4493, i64* %4502, align 8
  store %struct.Memory* %loadMem1_40d142, %struct.Memory** %MEMORY
  %loadMem2_40d142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40d142 = load i64, i64* %3
  %call2_40d142 = call %struct.Memory* @sub_40d770.remove_neighbor(%struct.State* %0, i64 %loadPC_40d142, %struct.Memory* %loadMem2_40d142)
  store %struct.Memory* %call2_40d142, %struct.Memory** %MEMORY
  %loadMem_40d147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 33
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %4505 to i64*
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 1
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %4508 to i64*
  %4509 = load i64, i64* %PC.i164
  %4510 = add i64 %4509, 10
  store i64 %4510, i64* %PC.i164
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i165, align 8
  store %struct.Memory* %loadMem_40d147, %struct.Memory** %MEMORY
  %loadMem_40d151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 33
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %4513 to i64*
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4515 = getelementptr inbounds %struct.GPR, %struct.GPR* %4514, i32 0, i32 5
  %4516 = getelementptr inbounds %struct.Reg, %struct.Reg* %4515, i32 0, i32 0
  %RCX.i162 = bitcast %union.anon* %4516 to i64*
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4518 = getelementptr inbounds %struct.GPR, %struct.GPR* %4517, i32 0, i32 15
  %4519 = getelementptr inbounds %struct.Reg, %struct.Reg* %4518, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %4519 to i64*
  %4520 = load i64, i64* %RBP.i163
  %4521 = sub i64 %4520, 32
  %4522 = load i64, i64* %PC.i161
  %4523 = add i64 %4522, 4
  store i64 %4523, i64* %PC.i161
  %4524 = inttoptr i64 %4521 to i32*
  %4525 = load i32, i32* %4524
  %4526 = sext i32 %4525 to i64
  store i64 %4526, i64* %RCX.i162, align 8
  store %struct.Memory* %loadMem_40d151, %struct.Memory** %MEMORY
  %loadMem_40d155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 33
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4529 to i64*
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 5
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %RCX.i160 = bitcast %union.anon* %4532 to i64*
  %4533 = load i64, i64* %RCX.i160
  %4534 = load i64, i64* %PC.i159
  %4535 = add i64 %4534, 7
  store i64 %4535, i64* %PC.i159
  %4536 = sext i64 %4533 to i128
  %4537 = and i128 %4536, -18446744073709551616
  %4538 = zext i64 %4533 to i128
  %4539 = or i128 %4537, %4538
  %4540 = mul i128 744, %4539
  %4541 = trunc i128 %4540 to i64
  store i64 %4541, i64* %RCX.i160, align 8
  %4542 = sext i64 %4541 to i128
  %4543 = icmp ne i128 %4542, %4540
  %4544 = zext i1 %4543 to i8
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4544, i8* %4545, align 1
  %4546 = trunc i128 %4540 to i32
  %4547 = and i32 %4546, 255
  %4548 = call i32 @llvm.ctpop.i32(i32 %4547)
  %4549 = trunc i32 %4548 to i8
  %4550 = and i8 %4549, 1
  %4551 = xor i8 %4550, 1
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4551, i8* %4552, align 1
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4553, align 1
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4554, align 1
  %4555 = lshr i64 %4541, 63
  %4556 = trunc i64 %4555 to i8
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4556, i8* %4557, align 1
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4544, i8* %4558, align 1
  store %struct.Memory* %loadMem_40d155, %struct.Memory** %MEMORY
  %loadMem_40d15c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4560 = getelementptr inbounds %struct.GPR, %struct.GPR* %4559, i32 0, i32 33
  %4561 = getelementptr inbounds %struct.Reg, %struct.Reg* %4560, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %4561 to i64*
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4563 = getelementptr inbounds %struct.GPR, %struct.GPR* %4562, i32 0, i32 1
  %4564 = getelementptr inbounds %struct.Reg, %struct.Reg* %4563, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %4564 to i64*
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4566 = getelementptr inbounds %struct.GPR, %struct.GPR* %4565, i32 0, i32 5
  %4567 = getelementptr inbounds %struct.Reg, %struct.Reg* %4566, i32 0, i32 0
  %RCX.i158 = bitcast %union.anon* %4567 to i64*
  %4568 = load i64, i64* %RAX.i157
  %4569 = load i64, i64* %RCX.i158
  %4570 = load i64, i64* %PC.i156
  %4571 = add i64 %4570, 3
  store i64 %4571, i64* %PC.i156
  %4572 = add i64 %4569, %4568
  store i64 %4572, i64* %RAX.i157, align 8
  %4573 = icmp ult i64 %4572, %4568
  %4574 = icmp ult i64 %4572, %4569
  %4575 = or i1 %4573, %4574
  %4576 = zext i1 %4575 to i8
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4576, i8* %4577, align 1
  %4578 = trunc i64 %4572 to i32
  %4579 = and i32 %4578, 255
  %4580 = call i32 @llvm.ctpop.i32(i32 %4579)
  %4581 = trunc i32 %4580 to i8
  %4582 = and i8 %4581, 1
  %4583 = xor i8 %4582, 1
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4583, i8* %4584, align 1
  %4585 = xor i64 %4569, %4568
  %4586 = xor i64 %4585, %4572
  %4587 = lshr i64 %4586, 4
  %4588 = trunc i64 %4587 to i8
  %4589 = and i8 %4588, 1
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4589, i8* %4590, align 1
  %4591 = icmp eq i64 %4572, 0
  %4592 = zext i1 %4591 to i8
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4592, i8* %4593, align 1
  %4594 = lshr i64 %4572, 63
  %4595 = trunc i64 %4594 to i8
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4595, i8* %4596, align 1
  %4597 = lshr i64 %4568, 63
  %4598 = lshr i64 %4569, 63
  %4599 = xor i64 %4594, %4597
  %4600 = xor i64 %4594, %4598
  %4601 = add i64 %4599, %4600
  %4602 = icmp eq i64 %4601, 2
  %4603 = zext i1 %4602 to i8
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4603, i8* %4604, align 1
  store %struct.Memory* %loadMem_40d15c, %struct.Memory** %MEMORY
  %loadMem_40d15f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 33
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %4607 to i64*
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 1
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %4610 to i64*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 7
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %RDX.i155 = bitcast %union.anon* %4613 to i64*
  %4614 = load i64, i64* %RAX.i154
  %4615 = add i64 %4614, 740
  %4616 = load i64, i64* %PC.i153
  %4617 = add i64 %4616, 6
  store i64 %4617, i64* %PC.i153
  %4618 = inttoptr i64 %4615 to i32*
  %4619 = load i32, i32* %4618
  %4620 = zext i32 %4619 to i64
  store i64 %4620, i64* %RDX.i155, align 8
  store %struct.Memory* %loadMem_40d15f, %struct.Memory** %MEMORY
  %loadMem_40d165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 33
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4623 to i64*
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4625 = getelementptr inbounds %struct.GPR, %struct.GPR* %4624, i32 0, i32 7
  %4626 = getelementptr inbounds %struct.Reg, %struct.Reg* %4625, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4626 to i32*
  %4627 = load i32, i32* %EDX.i
  %4628 = zext i32 %4627 to i64
  %4629 = load i64, i64* %PC.i152
  %4630 = add i64 %4629, 7
  store i64 %4630, i64* %PC.i152
  %4631 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %4632 = sub i32 %4627, %4631
  %4633 = icmp ult i32 %4627, %4631
  %4634 = zext i1 %4633 to i8
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4634, i8* %4635, align 1
  %4636 = and i32 %4632, 255
  %4637 = call i32 @llvm.ctpop.i32(i32 %4636)
  %4638 = trunc i32 %4637 to i8
  %4639 = and i8 %4638, 1
  %4640 = xor i8 %4639, 1
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4640, i8* %4641, align 1
  %4642 = xor i32 %4631, %4627
  %4643 = xor i32 %4642, %4632
  %4644 = lshr i32 %4643, 4
  %4645 = trunc i32 %4644 to i8
  %4646 = and i8 %4645, 1
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4646, i8* %4647, align 1
  %4648 = icmp eq i32 %4632, 0
  %4649 = zext i1 %4648 to i8
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4649, i8* %4650, align 1
  %4651 = lshr i32 %4632, 31
  %4652 = trunc i32 %4651 to i8
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4652, i8* %4653, align 1
  %4654 = lshr i32 %4627, 31
  %4655 = lshr i32 %4631, 31
  %4656 = xor i32 %4655, %4654
  %4657 = xor i32 %4651, %4654
  %4658 = add i32 %4657, %4656
  %4659 = icmp eq i32 %4658, 2
  %4660 = zext i1 %4659 to i8
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4660, i8* %4661, align 1
  store %struct.Memory* %loadMem_40d165, %struct.Memory** %MEMORY
  %loadMem_40d16c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4663 = getelementptr inbounds %struct.GPR, %struct.GPR* %4662, i32 0, i32 33
  %4664 = getelementptr inbounds %struct.Reg, %struct.Reg* %4663, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %4664 to i64*
  %4665 = load i64, i64* %PC.i151
  %4666 = add i64 %4665, 239
  %4667 = load i64, i64* %PC.i151
  %4668 = add i64 %4667, 6
  %4669 = load i64, i64* %PC.i151
  %4670 = add i64 %4669, 6
  store i64 %4670, i64* %PC.i151
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4672 = load i8, i8* %4671, align 1
  store i8 %4672, i8* %BRANCH_TAKEN, align 1
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4674 = icmp ne i8 %4672, 0
  %4675 = select i1 %4674, i64 %4666, i64 %4668
  store i64 %4675, i64* %4673, align 8
  store %struct.Memory* %loadMem_40d16c, %struct.Memory** %MEMORY
  %loadBr_40d16c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d16c = icmp eq i8 %loadBr_40d16c, 1
  br i1 %cmpBr_40d16c, label %block_.L_40d25b, label %block_40d172

block_40d172:                                     ; preds = %block_40d119
  %loadMem_40d172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 33
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %4678 to i64*
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4680 = getelementptr inbounds %struct.GPR, %struct.GPR* %4679, i32 0, i32 1
  %4681 = getelementptr inbounds %struct.Reg, %struct.Reg* %4680, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %4681 to i64*
  %4682 = load i64, i64* %PC.i149
  %4683 = add i64 %4682, 10
  store i64 %4683, i64* %PC.i149
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i150, align 8
  store %struct.Memory* %loadMem_40d172, %struct.Memory** %MEMORY
  %loadMem_40d17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4685 = getelementptr inbounds %struct.GPR, %struct.GPR* %4684, i32 0, i32 33
  %4686 = getelementptr inbounds %struct.Reg, %struct.Reg* %4685, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %4686 to i64*
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4688 = getelementptr inbounds %struct.GPR, %struct.GPR* %4687, i32 0, i32 5
  %4689 = getelementptr inbounds %struct.Reg, %struct.Reg* %4688, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %4689 to i64*
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 15
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %4692 to i64*
  %4693 = load i64, i64* %RBP.i148
  %4694 = sub i64 %4693, 32
  %4695 = load i64, i64* %PC.i146
  %4696 = add i64 %4695, 4
  store i64 %4696, i64* %PC.i146
  %4697 = inttoptr i64 %4694 to i32*
  %4698 = load i32, i32* %4697
  %4699 = sext i32 %4698 to i64
  store i64 %4699, i64* %RCX.i147, align 8
  store %struct.Memory* %loadMem_40d17c, %struct.Memory** %MEMORY
  %loadMem_40d180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4701 = getelementptr inbounds %struct.GPR, %struct.GPR* %4700, i32 0, i32 33
  %4702 = getelementptr inbounds %struct.Reg, %struct.Reg* %4701, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %4702 to i64*
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4704 = getelementptr inbounds %struct.GPR, %struct.GPR* %4703, i32 0, i32 5
  %4705 = getelementptr inbounds %struct.Reg, %struct.Reg* %4704, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %4705 to i64*
  %4706 = load i64, i64* %RCX.i145
  %4707 = load i64, i64* %PC.i144
  %4708 = add i64 %4707, 7
  store i64 %4708, i64* %PC.i144
  %4709 = sext i64 %4706 to i128
  %4710 = and i128 %4709, -18446744073709551616
  %4711 = zext i64 %4706 to i128
  %4712 = or i128 %4710, %4711
  %4713 = mul i128 744, %4712
  %4714 = trunc i128 %4713 to i64
  store i64 %4714, i64* %RCX.i145, align 8
  %4715 = sext i64 %4714 to i128
  %4716 = icmp ne i128 %4715, %4713
  %4717 = zext i1 %4716 to i8
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4717, i8* %4718, align 1
  %4719 = trunc i128 %4713 to i32
  %4720 = and i32 %4719, 255
  %4721 = call i32 @llvm.ctpop.i32(i32 %4720)
  %4722 = trunc i32 %4721 to i8
  %4723 = and i8 %4722, 1
  %4724 = xor i8 %4723, 1
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4724, i8* %4725, align 1
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4726, align 1
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4727, align 1
  %4728 = lshr i64 %4714, 63
  %4729 = trunc i64 %4728 to i8
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4729, i8* %4730, align 1
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4717, i8* %4731, align 1
  store %struct.Memory* %loadMem_40d180, %struct.Memory** %MEMORY
  %loadMem_40d187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4733 = getelementptr inbounds %struct.GPR, %struct.GPR* %4732, i32 0, i32 33
  %4734 = getelementptr inbounds %struct.Reg, %struct.Reg* %4733, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %4734 to i64*
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4736 = getelementptr inbounds %struct.GPR, %struct.GPR* %4735, i32 0, i32 1
  %4737 = getelementptr inbounds %struct.Reg, %struct.Reg* %4736, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %4737 to i64*
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 7
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %RDX.i143 = bitcast %union.anon* %4740 to i64*
  %4741 = load i64, i64* %RAX.i142
  %4742 = load i64, i64* %PC.i141
  %4743 = add i64 %4742, 3
  store i64 %4743, i64* %PC.i141
  store i64 %4741, i64* %RDX.i143, align 8
  store %struct.Memory* %loadMem_40d187, %struct.Memory** %MEMORY
  %loadMem_40d18a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4745 = getelementptr inbounds %struct.GPR, %struct.GPR* %4744, i32 0, i32 33
  %4746 = getelementptr inbounds %struct.Reg, %struct.Reg* %4745, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %4746 to i64*
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4748 = getelementptr inbounds %struct.GPR, %struct.GPR* %4747, i32 0, i32 5
  %4749 = getelementptr inbounds %struct.Reg, %struct.Reg* %4748, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %4749 to i64*
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4751 = getelementptr inbounds %struct.GPR, %struct.GPR* %4750, i32 0, i32 7
  %4752 = getelementptr inbounds %struct.Reg, %struct.Reg* %4751, i32 0, i32 0
  %RDX.i140 = bitcast %union.anon* %4752 to i64*
  %4753 = load i64, i64* %RDX.i140
  %4754 = load i64, i64* %RCX.i139
  %4755 = load i64, i64* %PC.i138
  %4756 = add i64 %4755, 3
  store i64 %4756, i64* %PC.i138
  %4757 = add i64 %4754, %4753
  store i64 %4757, i64* %RDX.i140, align 8
  %4758 = icmp ult i64 %4757, %4753
  %4759 = icmp ult i64 %4757, %4754
  %4760 = or i1 %4758, %4759
  %4761 = zext i1 %4760 to i8
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4761, i8* %4762, align 1
  %4763 = trunc i64 %4757 to i32
  %4764 = and i32 %4763, 255
  %4765 = call i32 @llvm.ctpop.i32(i32 %4764)
  %4766 = trunc i32 %4765 to i8
  %4767 = and i8 %4766, 1
  %4768 = xor i8 %4767, 1
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4768, i8* %4769, align 1
  %4770 = xor i64 %4754, %4753
  %4771 = xor i64 %4770, %4757
  %4772 = lshr i64 %4771, 4
  %4773 = trunc i64 %4772 to i8
  %4774 = and i8 %4773, 1
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4774, i8* %4775, align 1
  %4776 = icmp eq i64 %4757, 0
  %4777 = zext i1 %4776 to i8
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4777, i8* %4778, align 1
  %4779 = lshr i64 %4757, 63
  %4780 = trunc i64 %4779 to i8
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4780, i8* %4781, align 1
  %4782 = lshr i64 %4753, 63
  %4783 = lshr i64 %4754, 63
  %4784 = xor i64 %4779, %4782
  %4785 = xor i64 %4779, %4783
  %4786 = add i64 %4784, %4785
  %4787 = icmp eq i64 %4786, 2
  %4788 = zext i1 %4787 to i8
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4788, i8* %4789, align 1
  store %struct.Memory* %loadMem_40d18a, %struct.Memory** %MEMORY
  %loadMem_40d18d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4791 = getelementptr inbounds %struct.GPR, %struct.GPR* %4790, i32 0, i32 33
  %4792 = getelementptr inbounds %struct.Reg, %struct.Reg* %4791, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %4792 to i64*
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4794 = getelementptr inbounds %struct.GPR, %struct.GPR* %4793, i32 0, i32 7
  %4795 = getelementptr inbounds %struct.Reg, %struct.Reg* %4794, i32 0, i32 0
  %RDX.i137 = bitcast %union.anon* %4795 to i64*
  %4796 = load i64, i64* %RDX.i137
  %4797 = load i64, i64* %PC.i136
  %4798 = add i64 %4797, 4
  store i64 %4798, i64* %PC.i136
  %4799 = add i64 96, %4796
  store i64 %4799, i64* %RDX.i137, align 8
  %4800 = icmp ult i64 %4799, %4796
  %4801 = icmp ult i64 %4799, 96
  %4802 = or i1 %4800, %4801
  %4803 = zext i1 %4802 to i8
  %4804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4803, i8* %4804, align 1
  %4805 = trunc i64 %4799 to i32
  %4806 = and i32 %4805, 255
  %4807 = call i32 @llvm.ctpop.i32(i32 %4806)
  %4808 = trunc i32 %4807 to i8
  %4809 = and i8 %4808, 1
  %4810 = xor i8 %4809, 1
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4810, i8* %4811, align 1
  %4812 = xor i64 96, %4796
  %4813 = xor i64 %4812, %4799
  %4814 = lshr i64 %4813, 4
  %4815 = trunc i64 %4814 to i8
  %4816 = and i8 %4815, 1
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4816, i8* %4817, align 1
  %4818 = icmp eq i64 %4799, 0
  %4819 = zext i1 %4818 to i8
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4819, i8* %4820, align 1
  %4821 = lshr i64 %4799, 63
  %4822 = trunc i64 %4821 to i8
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4822, i8* %4823, align 1
  %4824 = lshr i64 %4796, 63
  %4825 = xor i64 %4821, %4824
  %4826 = add i64 %4825, %4821
  %4827 = icmp eq i64 %4826, 2
  %4828 = zext i1 %4827 to i8
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4828, i8* %4829, align 1
  store %struct.Memory* %loadMem_40d18d, %struct.Memory** %MEMORY
  %loadMem_40d191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4831 = getelementptr inbounds %struct.GPR, %struct.GPR* %4830, i32 0, i32 33
  %4832 = getelementptr inbounds %struct.Reg, %struct.Reg* %4831, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %4832 to i64*
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4834 = getelementptr inbounds %struct.GPR, %struct.GPR* %4833, i32 0, i32 5
  %4835 = getelementptr inbounds %struct.Reg, %struct.Reg* %4834, i32 0, i32 0
  %RCX.i135 = bitcast %union.anon* %4835 to i64*
  %4836 = load i64, i64* %PC.i134
  %4837 = add i64 %4836, 8
  store i64 %4837, i64* %PC.i134
  %4838 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  store i64 %4838, i64* %RCX.i135, align 8
  store %struct.Memory* %loadMem_40d191, %struct.Memory** %MEMORY
  %loadMem_40d199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4840 = getelementptr inbounds %struct.GPR, %struct.GPR* %4839, i32 0, i32 33
  %4841 = getelementptr inbounds %struct.Reg, %struct.Reg* %4840, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %4841 to i64*
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 5
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %RCX.i132 = bitcast %union.anon* %4844 to i64*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 7
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %RDX.i133 = bitcast %union.anon* %4847 to i64*
  %4848 = load i64, i64* %RCX.i132
  %4849 = load i64, i64* %RDX.i133
  %4850 = load i64, i64* %PC.i131
  %4851 = add i64 %4850, 3
  store i64 %4851, i64* %PC.i131
  %4852 = inttoptr i64 %4848 to i64*
  store i64 %4849, i64* %4852
  store %struct.Memory* %loadMem_40d199, %struct.Memory** %MEMORY
  %loadMem_40d19c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4854 = getelementptr inbounds %struct.GPR, %struct.GPR* %4853, i32 0, i32 33
  %4855 = getelementptr inbounds %struct.Reg, %struct.Reg* %4854, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %4855 to i64*
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4857 = getelementptr inbounds %struct.GPR, %struct.GPR* %4856, i32 0, i32 5
  %4858 = getelementptr inbounds %struct.Reg, %struct.Reg* %4857, i32 0, i32 0
  %RCX.i129 = bitcast %union.anon* %4858 to i64*
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4860 = getelementptr inbounds %struct.GPR, %struct.GPR* %4859, i32 0, i32 15
  %4861 = getelementptr inbounds %struct.Reg, %struct.Reg* %4860, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %4861 to i64*
  %4862 = load i64, i64* %RBP.i130
  %4863 = sub i64 %4862, 32
  %4864 = load i64, i64* %PC.i128
  %4865 = add i64 %4864, 4
  store i64 %4865, i64* %PC.i128
  %4866 = inttoptr i64 %4863 to i32*
  %4867 = load i32, i32* %4866
  %4868 = sext i32 %4867 to i64
  store i64 %4868, i64* %RCX.i129, align 8
  store %struct.Memory* %loadMem_40d19c, %struct.Memory** %MEMORY
  %loadMem_40d1a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4870 = getelementptr inbounds %struct.GPR, %struct.GPR* %4869, i32 0, i32 33
  %4871 = getelementptr inbounds %struct.Reg, %struct.Reg* %4870, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %4871 to i64*
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4873 = getelementptr inbounds %struct.GPR, %struct.GPR* %4872, i32 0, i32 5
  %4874 = getelementptr inbounds %struct.Reg, %struct.Reg* %4873, i32 0, i32 0
  %RCX.i127 = bitcast %union.anon* %4874 to i64*
  %4875 = load i64, i64* %RCX.i127
  %4876 = load i64, i64* %PC.i126
  %4877 = add i64 %4876, 7
  store i64 %4877, i64* %PC.i126
  %4878 = sext i64 %4875 to i128
  %4879 = and i128 %4878, -18446744073709551616
  %4880 = zext i64 %4875 to i128
  %4881 = or i128 %4879, %4880
  %4882 = mul i128 744, %4881
  %4883 = trunc i128 %4882 to i64
  store i64 %4883, i64* %RCX.i127, align 8
  %4884 = sext i64 %4883 to i128
  %4885 = icmp ne i128 %4884, %4882
  %4886 = zext i1 %4885 to i8
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4886, i8* %4887, align 1
  %4888 = trunc i128 %4882 to i32
  %4889 = and i32 %4888, 255
  %4890 = call i32 @llvm.ctpop.i32(i32 %4889)
  %4891 = trunc i32 %4890 to i8
  %4892 = and i8 %4891, 1
  %4893 = xor i8 %4892, 1
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4893, i8* %4894, align 1
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4895, align 1
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4896, align 1
  %4897 = lshr i64 %4883, 63
  %4898 = trunc i64 %4897 to i8
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4898, i8* %4899, align 1
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4886, i8* %4900, align 1
  store %struct.Memory* %loadMem_40d1a0, %struct.Memory** %MEMORY
  %loadMem_40d1a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4902 = getelementptr inbounds %struct.GPR, %struct.GPR* %4901, i32 0, i32 33
  %4903 = getelementptr inbounds %struct.Reg, %struct.Reg* %4902, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %4903 to i64*
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4905 = getelementptr inbounds %struct.GPR, %struct.GPR* %4904, i32 0, i32 1
  %4906 = getelementptr inbounds %struct.Reg, %struct.Reg* %4905, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %4906 to i64*
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4908 = getelementptr inbounds %struct.GPR, %struct.GPR* %4907, i32 0, i32 7
  %4909 = getelementptr inbounds %struct.Reg, %struct.Reg* %4908, i32 0, i32 0
  %RDX.i125 = bitcast %union.anon* %4909 to i64*
  %4910 = load i64, i64* %RAX.i124
  %4911 = load i64, i64* %PC.i123
  %4912 = add i64 %4911, 3
  store i64 %4912, i64* %PC.i123
  store i64 %4910, i64* %RDX.i125, align 8
  store %struct.Memory* %loadMem_40d1a7, %struct.Memory** %MEMORY
  %loadMem_40d1aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4914 = getelementptr inbounds %struct.GPR, %struct.GPR* %4913, i32 0, i32 33
  %4915 = getelementptr inbounds %struct.Reg, %struct.Reg* %4914, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4915 to i64*
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4917 = getelementptr inbounds %struct.GPR, %struct.GPR* %4916, i32 0, i32 5
  %4918 = getelementptr inbounds %struct.Reg, %struct.Reg* %4917, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %4918 to i64*
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 7
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %RDX.i122 = bitcast %union.anon* %4921 to i64*
  %4922 = load i64, i64* %RDX.i122
  %4923 = load i64, i64* %RCX.i121
  %4924 = load i64, i64* %PC.i120
  %4925 = add i64 %4924, 3
  store i64 %4925, i64* %PC.i120
  %4926 = add i64 %4923, %4922
  store i64 %4926, i64* %RDX.i122, align 8
  %4927 = icmp ult i64 %4926, %4922
  %4928 = icmp ult i64 %4926, %4923
  %4929 = or i1 %4927, %4928
  %4930 = zext i1 %4929 to i8
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4930, i8* %4931, align 1
  %4932 = trunc i64 %4926 to i32
  %4933 = and i32 %4932, 255
  %4934 = call i32 @llvm.ctpop.i32(i32 %4933)
  %4935 = trunc i32 %4934 to i8
  %4936 = and i8 %4935, 1
  %4937 = xor i8 %4936, 1
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4937, i8* %4938, align 1
  %4939 = xor i64 %4923, %4922
  %4940 = xor i64 %4939, %4926
  %4941 = lshr i64 %4940, 4
  %4942 = trunc i64 %4941 to i8
  %4943 = and i8 %4942, 1
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4943, i8* %4944, align 1
  %4945 = icmp eq i64 %4926, 0
  %4946 = zext i1 %4945 to i8
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4946, i8* %4947, align 1
  %4948 = lshr i64 %4926, 63
  %4949 = trunc i64 %4948 to i8
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4949, i8* %4950, align 1
  %4951 = lshr i64 %4922, 63
  %4952 = lshr i64 %4923, 63
  %4953 = xor i64 %4948, %4951
  %4954 = xor i64 %4948, %4952
  %4955 = add i64 %4953, %4954
  %4956 = icmp eq i64 %4955, 2
  %4957 = zext i1 %4956 to i8
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4957, i8* %4958, align 1
  store %struct.Memory* %loadMem_40d1aa, %struct.Memory** %MEMORY
  %loadMem_40d1ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4960 = getelementptr inbounds %struct.GPR, %struct.GPR* %4959, i32 0, i32 33
  %4961 = getelementptr inbounds %struct.Reg, %struct.Reg* %4960, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4961 to i64*
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4963 = getelementptr inbounds %struct.GPR, %struct.GPR* %4962, i32 0, i32 7
  %4964 = getelementptr inbounds %struct.Reg, %struct.Reg* %4963, i32 0, i32 0
  %RDX.i118 = bitcast %union.anon* %4964 to i64*
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4966 = getelementptr inbounds %struct.GPR, %struct.GPR* %4965, i32 0, i32 9
  %4967 = getelementptr inbounds %struct.Reg, %struct.Reg* %4966, i32 0, i32 0
  %RSI.i119 = bitcast %union.anon* %4967 to i64*
  %4968 = load i64, i64* %RDX.i118
  %4969 = add i64 %4968, 96
  %4970 = load i64, i64* %PC.i117
  %4971 = add i64 %4970, 3
  store i64 %4971, i64* %PC.i117
  %4972 = inttoptr i64 %4969 to i32*
  %4973 = load i32, i32* %4972
  %4974 = zext i32 %4973 to i64
  store i64 %4974, i64* %RSI.i119, align 8
  store %struct.Memory* %loadMem_40d1ad, %struct.Memory** %MEMORY
  %loadMem_40d1b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 33
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %4977 to i64*
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 5
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %4980 to i64*
  %4981 = load i64, i64* %PC.i115
  %4982 = add i64 %4981, 8
  store i64 %4982, i64* %PC.i115
  %4983 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  store i64 %4983, i64* %RCX.i116, align 8
  store %struct.Memory* %loadMem_40d1b0, %struct.Memory** %MEMORY
  %loadMem_40d1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 33
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %4986 to i64*
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4988 = getelementptr inbounds %struct.GPR, %struct.GPR* %4987, i32 0, i32 5
  %4989 = getelementptr inbounds %struct.Reg, %struct.Reg* %4988, i32 0, i32 0
  %RCX.i113 = bitcast %union.anon* %4989 to i64*
  %4990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4991 = getelementptr inbounds %struct.GPR, %struct.GPR* %4990, i32 0, i32 7
  %4992 = getelementptr inbounds %struct.Reg, %struct.Reg* %4991, i32 0, i32 0
  %RDX.i114 = bitcast %union.anon* %4992 to i64*
  %4993 = load i64, i64* %RCX.i113
  %4994 = load i64, i64* %PC.i112
  %4995 = add i64 %4994, 3
  store i64 %4995, i64* %PC.i112
  store i64 %4993, i64* %RDX.i114, align 8
  store %struct.Memory* %loadMem_40d1b8, %struct.Memory** %MEMORY
  %loadMem_40d1bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4997 = getelementptr inbounds %struct.GPR, %struct.GPR* %4996, i32 0, i32 33
  %4998 = getelementptr inbounds %struct.Reg, %struct.Reg* %4997, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4998 to i64*
  %4999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5000 = getelementptr inbounds %struct.GPR, %struct.GPR* %4999, i32 0, i32 7
  %5001 = getelementptr inbounds %struct.Reg, %struct.Reg* %5000, i32 0, i32 0
  %RDX.i111 = bitcast %union.anon* %5001 to i64*
  %5002 = load i64, i64* %RDX.i111
  %5003 = load i64, i64* %PC.i110
  %5004 = add i64 %5003, 4
  store i64 %5004, i64* %PC.i110
  %5005 = add i64 16, %5002
  store i64 %5005, i64* %RDX.i111, align 8
  %5006 = icmp ult i64 %5005, %5002
  %5007 = icmp ult i64 %5005, 16
  %5008 = or i1 %5006, %5007
  %5009 = zext i1 %5008 to i8
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5009, i8* %5010, align 1
  %5011 = trunc i64 %5005 to i32
  %5012 = and i32 %5011, 255
  %5013 = call i32 @llvm.ctpop.i32(i32 %5012)
  %5014 = trunc i32 %5013 to i8
  %5015 = and i8 %5014, 1
  %5016 = xor i8 %5015, 1
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5016, i8* %5017, align 1
  %5018 = xor i64 16, %5002
  %5019 = xor i64 %5018, %5005
  %5020 = lshr i64 %5019, 4
  %5021 = trunc i64 %5020 to i8
  %5022 = and i8 %5021, 1
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5022, i8* %5023, align 1
  %5024 = icmp eq i64 %5005, 0
  %5025 = zext i1 %5024 to i8
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5025, i8* %5026, align 1
  %5027 = lshr i64 %5005, 63
  %5028 = trunc i64 %5027 to i8
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5028, i8* %5029, align 1
  %5030 = lshr i64 %5002, 63
  %5031 = xor i64 %5027, %5030
  %5032 = add i64 %5031, %5027
  %5033 = icmp eq i64 %5032, 2
  %5034 = zext i1 %5033 to i8
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5034, i8* %5035, align 1
  store %struct.Memory* %loadMem_40d1bb, %struct.Memory** %MEMORY
  %loadMem_40d1bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5037 = getelementptr inbounds %struct.GPR, %struct.GPR* %5036, i32 0, i32 33
  %5038 = getelementptr inbounds %struct.Reg, %struct.Reg* %5037, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %5038 to i64*
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5040 = getelementptr inbounds %struct.GPR, %struct.GPR* %5039, i32 0, i32 7
  %5041 = getelementptr inbounds %struct.Reg, %struct.Reg* %5040, i32 0, i32 0
  %RDX.i109 = bitcast %union.anon* %5041 to i64*
  %5042 = load i64, i64* %RDX.i109
  %5043 = load i64, i64* %PC.i108
  %5044 = add i64 %5043, 8
  store i64 %5044, i64* %PC.i108
  store i64 %5042, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  store %struct.Memory* %loadMem_40d1bf, %struct.Memory** %MEMORY
  %loadMem_40d1c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5046 = getelementptr inbounds %struct.GPR, %struct.GPR* %5045, i32 0, i32 33
  %5047 = getelementptr inbounds %struct.Reg, %struct.Reg* %5046, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %5047 to i64*
  %5048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5049 = getelementptr inbounds %struct.GPR, %struct.GPR* %5048, i32 0, i32 9
  %5050 = getelementptr inbounds %struct.Reg, %struct.Reg* %5049, i32 0, i32 0
  %ESI.i106 = bitcast %union.anon* %5050 to i32*
  %5051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5052 = getelementptr inbounds %struct.GPR, %struct.GPR* %5051, i32 0, i32 5
  %5053 = getelementptr inbounds %struct.Reg, %struct.Reg* %5052, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %5053 to i64*
  %5054 = load i64, i64* %RCX.i107
  %5055 = add i64 %5054, 8
  %5056 = load i32, i32* %ESI.i106
  %5057 = zext i32 %5056 to i64
  %5058 = load i64, i64* %PC.i105
  %5059 = add i64 %5058, 3
  store i64 %5059, i64* %PC.i105
  %5060 = inttoptr i64 %5055 to i32*
  store i32 %5056, i32* %5060
  store %struct.Memory* %loadMem_40d1c7, %struct.Memory** %MEMORY
  %loadMem_40d1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5062 = getelementptr inbounds %struct.GPR, %struct.GPR* %5061, i32 0, i32 33
  %5063 = getelementptr inbounds %struct.Reg, %struct.Reg* %5062, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %5063 to i64*
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5065 = getelementptr inbounds %struct.GPR, %struct.GPR* %5064, i32 0, i32 9
  %5066 = getelementptr inbounds %struct.Reg, %struct.Reg* %5065, i32 0, i32 0
  %RSI.i103 = bitcast %union.anon* %5066 to i64*
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5068 = getelementptr inbounds %struct.GPR, %struct.GPR* %5067, i32 0, i32 15
  %5069 = getelementptr inbounds %struct.Reg, %struct.Reg* %5068, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %5069 to i64*
  %5070 = load i64, i64* %RBP.i104
  %5071 = sub i64 %5070, 4
  %5072 = load i64, i64* %PC.i102
  %5073 = add i64 %5072, 3
  store i64 %5073, i64* %PC.i102
  %5074 = inttoptr i64 %5071 to i32*
  %5075 = load i32, i32* %5074
  %5076 = zext i32 %5075 to i64
  store i64 %5076, i64* %RSI.i103, align 8
  store %struct.Memory* %loadMem_40d1ca, %struct.Memory** %MEMORY
  %loadMem_40d1cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 33
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %5079 to i64*
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 5
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %5082 to i64*
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 15
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %5085 to i64*
  %5086 = load i64, i64* %RBP.i101
  %5087 = sub i64 %5086, 32
  %5088 = load i64, i64* %PC.i99
  %5089 = add i64 %5088, 4
  store i64 %5089, i64* %PC.i99
  %5090 = inttoptr i64 %5087 to i32*
  %5091 = load i32, i32* %5090
  %5092 = sext i32 %5091 to i64
  store i64 %5092, i64* %RCX.i100, align 8
  store %struct.Memory* %loadMem_40d1cd, %struct.Memory** %MEMORY
  %loadMem_40d1d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 33
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %5095 to i64*
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5097 = getelementptr inbounds %struct.GPR, %struct.GPR* %5096, i32 0, i32 5
  %5098 = getelementptr inbounds %struct.Reg, %struct.Reg* %5097, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %5098 to i64*
  %5099 = load i64, i64* %RCX.i98
  %5100 = load i64, i64* %PC.i97
  %5101 = add i64 %5100, 7
  store i64 %5101, i64* %PC.i97
  %5102 = sext i64 %5099 to i128
  %5103 = and i128 %5102, -18446744073709551616
  %5104 = zext i64 %5099 to i128
  %5105 = or i128 %5103, %5104
  %5106 = mul i128 744, %5105
  %5107 = trunc i128 %5106 to i64
  store i64 %5107, i64* %RCX.i98, align 8
  %5108 = sext i64 %5107 to i128
  %5109 = icmp ne i128 %5108, %5106
  %5110 = zext i1 %5109 to i8
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5110, i8* %5111, align 1
  %5112 = trunc i128 %5106 to i32
  %5113 = and i32 %5112, 255
  %5114 = call i32 @llvm.ctpop.i32(i32 %5113)
  %5115 = trunc i32 %5114 to i8
  %5116 = and i8 %5115, 1
  %5117 = xor i8 %5116, 1
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5117, i8* %5118, align 1
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5119, align 1
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5120, align 1
  %5121 = lshr i64 %5107, 63
  %5122 = trunc i64 %5121 to i8
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5122, i8* %5123, align 1
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5110, i8* %5124, align 1
  store %struct.Memory* %loadMem_40d1d1, %struct.Memory** %MEMORY
  %loadMem_40d1d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5126 = getelementptr inbounds %struct.GPR, %struct.GPR* %5125, i32 0, i32 33
  %5127 = getelementptr inbounds %struct.Reg, %struct.Reg* %5126, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %5127 to i64*
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5129 = getelementptr inbounds %struct.GPR, %struct.GPR* %5128, i32 0, i32 1
  %5130 = getelementptr inbounds %struct.Reg, %struct.Reg* %5129, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %5130 to i64*
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 7
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %RDX.i96 = bitcast %union.anon* %5133 to i64*
  %5134 = load i64, i64* %RAX.i95
  %5135 = load i64, i64* %PC.i94
  %5136 = add i64 %5135, 3
  store i64 %5136, i64* %PC.i94
  store i64 %5134, i64* %RDX.i96, align 8
  store %struct.Memory* %loadMem_40d1d8, %struct.Memory** %MEMORY
  %loadMem_40d1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5138 = getelementptr inbounds %struct.GPR, %struct.GPR* %5137, i32 0, i32 33
  %5139 = getelementptr inbounds %struct.Reg, %struct.Reg* %5138, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %5139 to i64*
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5141 = getelementptr inbounds %struct.GPR, %struct.GPR* %5140, i32 0, i32 5
  %5142 = getelementptr inbounds %struct.Reg, %struct.Reg* %5141, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %5142 to i64*
  %5143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5144 = getelementptr inbounds %struct.GPR, %struct.GPR* %5143, i32 0, i32 7
  %5145 = getelementptr inbounds %struct.Reg, %struct.Reg* %5144, i32 0, i32 0
  %RDX.i93 = bitcast %union.anon* %5145 to i64*
  %5146 = load i64, i64* %RDX.i93
  %5147 = load i64, i64* %RCX.i92
  %5148 = load i64, i64* %PC.i91
  %5149 = add i64 %5148, 3
  store i64 %5149, i64* %PC.i91
  %5150 = add i64 %5147, %5146
  store i64 %5150, i64* %RDX.i93, align 8
  %5151 = icmp ult i64 %5150, %5146
  %5152 = icmp ult i64 %5150, %5147
  %5153 = or i1 %5151, %5152
  %5154 = zext i1 %5153 to i8
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5154, i8* %5155, align 1
  %5156 = trunc i64 %5150 to i32
  %5157 = and i32 %5156, 255
  %5158 = call i32 @llvm.ctpop.i32(i32 %5157)
  %5159 = trunc i32 %5158 to i8
  %5160 = and i8 %5159, 1
  %5161 = xor i8 %5160, 1
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5161, i8* %5162, align 1
  %5163 = xor i64 %5147, %5146
  %5164 = xor i64 %5163, %5150
  %5165 = lshr i64 %5164, 4
  %5166 = trunc i64 %5165 to i8
  %5167 = and i8 %5166, 1
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5167, i8* %5168, align 1
  %5169 = icmp eq i64 %5150, 0
  %5170 = zext i1 %5169 to i8
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5170, i8* %5171, align 1
  %5172 = lshr i64 %5150, 63
  %5173 = trunc i64 %5172 to i8
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5173, i8* %5174, align 1
  %5175 = lshr i64 %5146, 63
  %5176 = lshr i64 %5147, 63
  %5177 = xor i64 %5172, %5175
  %5178 = xor i64 %5172, %5176
  %5179 = add i64 %5177, %5178
  %5180 = icmp eq i64 %5179, 2
  %5181 = zext i1 %5180 to i8
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5181, i8* %5182, align 1
  store %struct.Memory* %loadMem_40d1db, %struct.Memory** %MEMORY
  %loadMem_40d1de = load %struct.Memory*, %struct.Memory** %MEMORY
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5184 = getelementptr inbounds %struct.GPR, %struct.GPR* %5183, i32 0, i32 33
  %5185 = getelementptr inbounds %struct.Reg, %struct.Reg* %5184, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %5185 to i64*
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5187 = getelementptr inbounds %struct.GPR, %struct.GPR* %5186, i32 0, i32 5
  %5188 = getelementptr inbounds %struct.Reg, %struct.Reg* %5187, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %5188 to i64*
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5190 = getelementptr inbounds %struct.GPR, %struct.GPR* %5189, i32 0, i32 15
  %5191 = getelementptr inbounds %struct.Reg, %struct.Reg* %5190, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %5191 to i64*
  %5192 = load i64, i64* %RBP.i90
  %5193 = sub i64 %5192, 32
  %5194 = load i64, i64* %PC.i88
  %5195 = add i64 %5194, 4
  store i64 %5195, i64* %PC.i88
  %5196 = inttoptr i64 %5193 to i32*
  %5197 = load i32, i32* %5196
  %5198 = sext i32 %5197 to i64
  store i64 %5198, i64* %RCX.i89, align 8
  store %struct.Memory* %loadMem_40d1de, %struct.Memory** %MEMORY
  %loadMem_40d1e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5200 = getelementptr inbounds %struct.GPR, %struct.GPR* %5199, i32 0, i32 33
  %5201 = getelementptr inbounds %struct.Reg, %struct.Reg* %5200, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %5201 to i64*
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5203 = getelementptr inbounds %struct.GPR, %struct.GPR* %5202, i32 0, i32 5
  %5204 = getelementptr inbounds %struct.Reg, %struct.Reg* %5203, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %5204 to i64*
  %5205 = load i64, i64* %RCX.i87
  %5206 = load i64, i64* %PC.i86
  %5207 = add i64 %5206, 7
  store i64 %5207, i64* %PC.i86
  %5208 = sext i64 %5205 to i128
  %5209 = and i128 %5208, -18446744073709551616
  %5210 = zext i64 %5205 to i128
  %5211 = or i128 %5209, %5210
  %5212 = mul i128 744, %5211
  %5213 = trunc i128 %5212 to i64
  store i64 %5213, i64* %RCX.i87, align 8
  %5214 = sext i64 %5213 to i128
  %5215 = icmp ne i128 %5214, %5212
  %5216 = zext i1 %5215 to i8
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5216, i8* %5217, align 1
  %5218 = trunc i128 %5212 to i32
  %5219 = and i32 %5218, 255
  %5220 = call i32 @llvm.ctpop.i32(i32 %5219)
  %5221 = trunc i32 %5220 to i8
  %5222 = and i8 %5221, 1
  %5223 = xor i8 %5222, 1
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5223, i8* %5224, align 1
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5225, align 1
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5226, align 1
  %5227 = lshr i64 %5213, 63
  %5228 = trunc i64 %5227 to i8
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5228, i8* %5229, align 1
  %5230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5216, i8* %5230, align 1
  store %struct.Memory* %loadMem_40d1e2, %struct.Memory** %MEMORY
  %loadMem_40d1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5232 = getelementptr inbounds %struct.GPR, %struct.GPR* %5231, i32 0, i32 33
  %5233 = getelementptr inbounds %struct.Reg, %struct.Reg* %5232, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %5233 to i64*
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5235 = getelementptr inbounds %struct.GPR, %struct.GPR* %5234, i32 0, i32 1
  %5236 = getelementptr inbounds %struct.Reg, %struct.Reg* %5235, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %5236 to i64*
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5238 = getelementptr inbounds %struct.GPR, %struct.GPR* %5237, i32 0, i32 11
  %5239 = getelementptr inbounds %struct.Reg, %struct.Reg* %5238, i32 0, i32 0
  %RDI.i85 = bitcast %union.anon* %5239 to i64*
  %5240 = load i64, i64* %RAX.i84
  %5241 = load i64, i64* %PC.i83
  %5242 = add i64 %5241, 3
  store i64 %5242, i64* %PC.i83
  store i64 %5240, i64* %RDI.i85, align 8
  store %struct.Memory* %loadMem_40d1e9, %struct.Memory** %MEMORY
  %loadMem_40d1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5244 = getelementptr inbounds %struct.GPR, %struct.GPR* %5243, i32 0, i32 33
  %5245 = getelementptr inbounds %struct.Reg, %struct.Reg* %5244, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %5245 to i64*
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5247 = getelementptr inbounds %struct.GPR, %struct.GPR* %5246, i32 0, i32 5
  %5248 = getelementptr inbounds %struct.Reg, %struct.Reg* %5247, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %5248 to i64*
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5250 = getelementptr inbounds %struct.GPR, %struct.GPR* %5249, i32 0, i32 11
  %5251 = getelementptr inbounds %struct.Reg, %struct.Reg* %5250, i32 0, i32 0
  %RDI.i82 = bitcast %union.anon* %5251 to i64*
  %5252 = load i64, i64* %RDI.i82
  %5253 = load i64, i64* %RCX.i81
  %5254 = load i64, i64* %PC.i80
  %5255 = add i64 %5254, 3
  store i64 %5255, i64* %PC.i80
  %5256 = add i64 %5253, %5252
  store i64 %5256, i64* %RDI.i82, align 8
  %5257 = icmp ult i64 %5256, %5252
  %5258 = icmp ult i64 %5256, %5253
  %5259 = or i1 %5257, %5258
  %5260 = zext i1 %5259 to i8
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5260, i8* %5261, align 1
  %5262 = trunc i64 %5256 to i32
  %5263 = and i32 %5262, 255
  %5264 = call i32 @llvm.ctpop.i32(i32 %5263)
  %5265 = trunc i32 %5264 to i8
  %5266 = and i8 %5265, 1
  %5267 = xor i8 %5266, 1
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5267, i8* %5268, align 1
  %5269 = xor i64 %5253, %5252
  %5270 = xor i64 %5269, %5256
  %5271 = lshr i64 %5270, 4
  %5272 = trunc i64 %5271 to i8
  %5273 = and i8 %5272, 1
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5273, i8* %5274, align 1
  %5275 = icmp eq i64 %5256, 0
  %5276 = zext i1 %5275 to i8
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5276, i8* %5277, align 1
  %5278 = lshr i64 %5256, 63
  %5279 = trunc i64 %5278 to i8
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5279, i8* %5280, align 1
  %5281 = lshr i64 %5252, 63
  %5282 = lshr i64 %5253, 63
  %5283 = xor i64 %5278, %5281
  %5284 = xor i64 %5278, %5282
  %5285 = add i64 %5283, %5284
  %5286 = icmp eq i64 %5285, 2
  %5287 = zext i1 %5286 to i8
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5287, i8* %5288, align 1
  store %struct.Memory* %loadMem_40d1ec, %struct.Memory** %MEMORY
  %loadMem_40d1ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5290 = getelementptr inbounds %struct.GPR, %struct.GPR* %5289, i32 0, i32 33
  %5291 = getelementptr inbounds %struct.Reg, %struct.Reg* %5290, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %5291 to i64*
  %5292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5293 = getelementptr inbounds %struct.GPR, %struct.GPR* %5292, i32 0, i32 17
  %5294 = getelementptr inbounds %struct.Reg, %struct.Reg* %5293, i32 0, i32 0
  %R8D.i78 = bitcast %union.anon* %5294 to i32*
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5296 = getelementptr inbounds %struct.GPR, %struct.GPR* %5295, i32 0, i32 11
  %5297 = getelementptr inbounds %struct.Reg, %struct.Reg* %5296, i32 0, i32 0
  %RDI.i79 = bitcast %union.anon* %5297 to i64*
  %5298 = bitcast i32* %R8D.i78 to i64*
  %5299 = load i64, i64* %RDI.i79
  %5300 = add i64 %5299, 96
  %5301 = load i64, i64* %PC.i77
  %5302 = add i64 %5301, 4
  store i64 %5302, i64* %PC.i77
  %5303 = inttoptr i64 %5300 to i32*
  %5304 = load i32, i32* %5303
  %5305 = zext i32 %5304 to i64
  store i64 %5305, i64* %5298, align 8
  store %struct.Memory* %loadMem_40d1ef, %struct.Memory** %MEMORY
  %loadMem_40d1f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5307 = getelementptr inbounds %struct.GPR, %struct.GPR* %5306, i32 0, i32 33
  %5308 = getelementptr inbounds %struct.Reg, %struct.Reg* %5307, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %5308 to i64*
  %5309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5310 = getelementptr inbounds %struct.GPR, %struct.GPR* %5309, i32 0, i32 17
  %5311 = getelementptr inbounds %struct.Reg, %struct.Reg* %5310, i32 0, i32 0
  %R8D.i75 = bitcast %union.anon* %5311 to i32*
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 19
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %R9D.i76 = bitcast %union.anon* %5314 to i32*
  %5315 = bitcast i32* %R9D.i76 to i64*
  %5316 = load i32, i32* %R8D.i75
  %5317 = zext i32 %5316 to i64
  %5318 = load i64, i64* %PC.i74
  %5319 = add i64 %5318, 3
  store i64 %5319, i64* %PC.i74
  %5320 = and i64 %5317, 4294967295
  store i64 %5320, i64* %5315, align 8
  store %struct.Memory* %loadMem_40d1f3, %struct.Memory** %MEMORY
  %loadMem_40d1f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5322 = getelementptr inbounds %struct.GPR, %struct.GPR* %5321, i32 0, i32 33
  %5323 = getelementptr inbounds %struct.Reg, %struct.Reg* %5322, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %5323 to i64*
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5325 = getelementptr inbounds %struct.GPR, %struct.GPR* %5324, i32 0, i32 19
  %5326 = getelementptr inbounds %struct.Reg, %struct.Reg* %5325, i32 0, i32 0
  %R9D.i73 = bitcast %union.anon* %5326 to i32*
  %5327 = bitcast i32* %R9D.i73 to i64*
  %5328 = load i32, i32* %R9D.i73
  %5329 = zext i32 %5328 to i64
  %5330 = load i64, i64* %PC.i72
  %5331 = add i64 %5330, 4
  store i64 %5331, i64* %PC.i72
  %5332 = add i32 1, %5328
  %5333 = zext i32 %5332 to i64
  store i64 %5333, i64* %5327, align 8
  %5334 = icmp ult i32 %5332, %5328
  %5335 = icmp ult i32 %5332, 1
  %5336 = or i1 %5334, %5335
  %5337 = zext i1 %5336 to i8
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5337, i8* %5338, align 1
  %5339 = and i32 %5332, 255
  %5340 = call i32 @llvm.ctpop.i32(i32 %5339)
  %5341 = trunc i32 %5340 to i8
  %5342 = and i8 %5341, 1
  %5343 = xor i8 %5342, 1
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5343, i8* %5344, align 1
  %5345 = xor i64 1, %5329
  %5346 = trunc i64 %5345 to i32
  %5347 = xor i32 %5346, %5332
  %5348 = lshr i32 %5347, 4
  %5349 = trunc i32 %5348 to i8
  %5350 = and i8 %5349, 1
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5350, i8* %5351, align 1
  %5352 = icmp eq i32 %5332, 0
  %5353 = zext i1 %5352 to i8
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5353, i8* %5354, align 1
  %5355 = lshr i32 %5332, 31
  %5356 = trunc i32 %5355 to i8
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5356, i8* %5357, align 1
  %5358 = lshr i32 %5328, 31
  %5359 = xor i32 %5355, %5358
  %5360 = add i32 %5359, %5355
  %5361 = icmp eq i32 %5360, 2
  %5362 = zext i1 %5361 to i8
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5362, i8* %5363, align 1
  store %struct.Memory* %loadMem_40d1f6, %struct.Memory** %MEMORY
  %loadMem_40d1fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5365 = getelementptr inbounds %struct.GPR, %struct.GPR* %5364, i32 0, i32 33
  %5366 = getelementptr inbounds %struct.Reg, %struct.Reg* %5365, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %5366 to i64*
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5368 = getelementptr inbounds %struct.GPR, %struct.GPR* %5367, i32 0, i32 19
  %5369 = getelementptr inbounds %struct.Reg, %struct.Reg* %5368, i32 0, i32 0
  %R9D.i70 = bitcast %union.anon* %5369 to i32*
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5371 = getelementptr inbounds %struct.GPR, %struct.GPR* %5370, i32 0, i32 11
  %5372 = getelementptr inbounds %struct.Reg, %struct.Reg* %5371, i32 0, i32 0
  %RDI.i71 = bitcast %union.anon* %5372 to i64*
  %5373 = load i64, i64* %RDI.i71
  %5374 = add i64 %5373, 96
  %5375 = load i32, i32* %R9D.i70
  %5376 = zext i32 %5375 to i64
  %5377 = load i64, i64* %PC.i69
  %5378 = add i64 %5377, 4
  store i64 %5378, i64* %PC.i69
  %5379 = inttoptr i64 %5374 to i32*
  store i32 %5375, i32* %5379
  store %struct.Memory* %loadMem_40d1fa, %struct.Memory** %MEMORY
  %loadMem_40d1fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5381 = getelementptr inbounds %struct.GPR, %struct.GPR* %5380, i32 0, i32 33
  %5382 = getelementptr inbounds %struct.Reg, %struct.Reg* %5381, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %5382 to i64*
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5384 = getelementptr inbounds %struct.GPR, %struct.GPR* %5383, i32 0, i32 17
  %5385 = getelementptr inbounds %struct.Reg, %struct.Reg* %5384, i32 0, i32 0
  %R8D.i67 = bitcast %union.anon* %5385 to i32*
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5387 = getelementptr inbounds %struct.GPR, %struct.GPR* %5386, i32 0, i32 5
  %5388 = getelementptr inbounds %struct.Reg, %struct.Reg* %5387, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %5388 to i64*
  %5389 = load i32, i32* %R8D.i67
  %5390 = zext i32 %5389 to i64
  %5391 = load i64, i64* %PC.i66
  %5392 = add i64 %5391, 3
  store i64 %5392, i64* %PC.i66
  %5393 = shl i64 %5390, 32
  %5394 = ashr exact i64 %5393, 32
  store i64 %5394, i64* %RCX.i68, align 8
  store %struct.Memory* %loadMem_40d1fe, %struct.Memory** %MEMORY
  %loadMem_40d201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5396 = getelementptr inbounds %struct.GPR, %struct.GPR* %5395, i32 0, i32 33
  %5397 = getelementptr inbounds %struct.Reg, %struct.Reg* %5396, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %5397 to i64*
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5399 = getelementptr inbounds %struct.GPR, %struct.GPR* %5398, i32 0, i32 9
  %5400 = getelementptr inbounds %struct.Reg, %struct.Reg* %5399, i32 0, i32 0
  %ESI.i63 = bitcast %union.anon* %5400 to i32*
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5402 = getelementptr inbounds %struct.GPR, %struct.GPR* %5401, i32 0, i32 5
  %5403 = getelementptr inbounds %struct.Reg, %struct.Reg* %5402, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %5403 to i64*
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5405 = getelementptr inbounds %struct.GPR, %struct.GPR* %5404, i32 0, i32 7
  %5406 = getelementptr inbounds %struct.Reg, %struct.Reg* %5405, i32 0, i32 0
  %RDX.i65 = bitcast %union.anon* %5406 to i64*
  %5407 = load i64, i64* %RDX.i65
  %5408 = load i64, i64* %RCX.i64
  %5409 = mul i64 %5408, 4
  %5410 = add i64 %5407, 100
  %5411 = add i64 %5410, %5409
  %5412 = load i32, i32* %ESI.i63
  %5413 = zext i32 %5412 to i64
  %5414 = load i64, i64* %PC.i62
  %5415 = add i64 %5414, 4
  store i64 %5415, i64* %PC.i62
  %5416 = inttoptr i64 %5411 to i32*
  store i32 %5412, i32* %5416
  store %struct.Memory* %loadMem_40d201, %struct.Memory** %MEMORY
  %loadMem_40d205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5418 = getelementptr inbounds %struct.GPR, %struct.GPR* %5417, i32 0, i32 33
  %5419 = getelementptr inbounds %struct.Reg, %struct.Reg* %5418, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %5419 to i64*
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5421 = getelementptr inbounds %struct.GPR, %struct.GPR* %5420, i32 0, i32 9
  %5422 = getelementptr inbounds %struct.Reg, %struct.Reg* %5421, i32 0, i32 0
  %RSI.i60 = bitcast %union.anon* %5422 to i64*
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5424 = getelementptr inbounds %struct.GPR, %struct.GPR* %5423, i32 0, i32 15
  %5425 = getelementptr inbounds %struct.Reg, %struct.Reg* %5424, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %5425 to i64*
  %5426 = load i64, i64* %RBP.i61
  %5427 = sub i64 %5426, 32
  %5428 = load i64, i64* %PC.i59
  %5429 = add i64 %5428, 3
  store i64 %5429, i64* %PC.i59
  %5430 = inttoptr i64 %5427 to i32*
  %5431 = load i32, i32* %5430
  %5432 = zext i32 %5431 to i64
  store i64 %5432, i64* %RSI.i60, align 8
  store %struct.Memory* %loadMem_40d205, %struct.Memory** %MEMORY
  %loadMem_40d208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5434 = getelementptr inbounds %struct.GPR, %struct.GPR* %5433, i32 0, i32 33
  %5435 = getelementptr inbounds %struct.Reg, %struct.Reg* %5434, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %5435 to i64*
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5437 = getelementptr inbounds %struct.GPR, %struct.GPR* %5436, i32 0, i32 5
  %5438 = getelementptr inbounds %struct.Reg, %struct.Reg* %5437, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %5438 to i64*
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5440 = getelementptr inbounds %struct.GPR, %struct.GPR* %5439, i32 0, i32 15
  %5441 = getelementptr inbounds %struct.Reg, %struct.Reg* %5440, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %5441 to i64*
  %5442 = load i64, i64* %RBP.i58
  %5443 = sub i64 %5442, 4
  %5444 = load i64, i64* %PC.i56
  %5445 = add i64 %5444, 4
  store i64 %5445, i64* %PC.i56
  %5446 = inttoptr i64 %5443 to i32*
  %5447 = load i32, i32* %5446
  %5448 = sext i32 %5447 to i64
  store i64 %5448, i64* %RCX.i57, align 8
  store %struct.Memory* %loadMem_40d208, %struct.Memory** %MEMORY
  %loadMem_40d20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5450 = getelementptr inbounds %struct.GPR, %struct.GPR* %5449, i32 0, i32 33
  %5451 = getelementptr inbounds %struct.Reg, %struct.Reg* %5450, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %5451 to i64*
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5453 = getelementptr inbounds %struct.GPR, %struct.GPR* %5452, i32 0, i32 5
  %5454 = getelementptr inbounds %struct.Reg, %struct.Reg* %5453, i32 0, i32 0
  %RCX.i55 = bitcast %union.anon* %5454 to i64*
  %5455 = load i64, i64* %RCX.i55
  %5456 = load i64, i64* %PC.i54
  %5457 = add i64 %5456, 7
  store i64 %5457, i64* %PC.i54
  %5458 = sext i64 %5455 to i128
  %5459 = and i128 %5458, -18446744073709551616
  %5460 = zext i64 %5455 to i128
  %5461 = or i128 %5459, %5460
  %5462 = mul i128 744, %5461
  %5463 = trunc i128 %5462 to i64
  store i64 %5463, i64* %RCX.i55, align 8
  %5464 = sext i64 %5463 to i128
  %5465 = icmp ne i128 %5464, %5462
  %5466 = zext i1 %5465 to i8
  %5467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5466, i8* %5467, align 1
  %5468 = trunc i128 %5462 to i32
  %5469 = and i32 %5468, 255
  %5470 = call i32 @llvm.ctpop.i32(i32 %5469)
  %5471 = trunc i32 %5470 to i8
  %5472 = and i8 %5471, 1
  %5473 = xor i8 %5472, 1
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5473, i8* %5474, align 1
  %5475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5475, align 1
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5476, align 1
  %5477 = lshr i64 %5463, 63
  %5478 = trunc i64 %5477 to i8
  %5479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5478, i8* %5479, align 1
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5466, i8* %5480, align 1
  store %struct.Memory* %loadMem_40d20c, %struct.Memory** %MEMORY
  %loadMem_40d213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5482 = getelementptr inbounds %struct.GPR, %struct.GPR* %5481, i32 0, i32 33
  %5483 = getelementptr inbounds %struct.Reg, %struct.Reg* %5482, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %5483 to i64*
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5485 = getelementptr inbounds %struct.GPR, %struct.GPR* %5484, i32 0, i32 1
  %5486 = getelementptr inbounds %struct.Reg, %struct.Reg* %5485, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %5486 to i64*
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5488 = getelementptr inbounds %struct.GPR, %struct.GPR* %5487, i32 0, i32 7
  %5489 = getelementptr inbounds %struct.Reg, %struct.Reg* %5488, i32 0, i32 0
  %RDX.i53 = bitcast %union.anon* %5489 to i64*
  %5490 = load i64, i64* %RAX.i52
  %5491 = load i64, i64* %PC.i51
  %5492 = add i64 %5491, 3
  store i64 %5492, i64* %PC.i51
  store i64 %5490, i64* %RDX.i53, align 8
  store %struct.Memory* %loadMem_40d213, %struct.Memory** %MEMORY
  %loadMem_40d216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5494 = getelementptr inbounds %struct.GPR, %struct.GPR* %5493, i32 0, i32 33
  %5495 = getelementptr inbounds %struct.Reg, %struct.Reg* %5494, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %5495 to i64*
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5497 = getelementptr inbounds %struct.GPR, %struct.GPR* %5496, i32 0, i32 5
  %5498 = getelementptr inbounds %struct.Reg, %struct.Reg* %5497, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %5498 to i64*
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5500 = getelementptr inbounds %struct.GPR, %struct.GPR* %5499, i32 0, i32 7
  %5501 = getelementptr inbounds %struct.Reg, %struct.Reg* %5500, i32 0, i32 0
  %RDX.i50 = bitcast %union.anon* %5501 to i64*
  %5502 = load i64, i64* %RDX.i50
  %5503 = load i64, i64* %RCX.i49
  %5504 = load i64, i64* %PC.i48
  %5505 = add i64 %5504, 3
  store i64 %5505, i64* %PC.i48
  %5506 = add i64 %5503, %5502
  store i64 %5506, i64* %RDX.i50, align 8
  %5507 = icmp ult i64 %5506, %5502
  %5508 = icmp ult i64 %5506, %5503
  %5509 = or i1 %5507, %5508
  %5510 = zext i1 %5509 to i8
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5510, i8* %5511, align 1
  %5512 = trunc i64 %5506 to i32
  %5513 = and i32 %5512, 255
  %5514 = call i32 @llvm.ctpop.i32(i32 %5513)
  %5515 = trunc i32 %5514 to i8
  %5516 = and i8 %5515, 1
  %5517 = xor i8 %5516, 1
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5517, i8* %5518, align 1
  %5519 = xor i64 %5503, %5502
  %5520 = xor i64 %5519, %5506
  %5521 = lshr i64 %5520, 4
  %5522 = trunc i64 %5521 to i8
  %5523 = and i8 %5522, 1
  %5524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5523, i8* %5524, align 1
  %5525 = icmp eq i64 %5506, 0
  %5526 = zext i1 %5525 to i8
  %5527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5526, i8* %5527, align 1
  %5528 = lshr i64 %5506, 63
  %5529 = trunc i64 %5528 to i8
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5529, i8* %5530, align 1
  %5531 = lshr i64 %5502, 63
  %5532 = lshr i64 %5503, 63
  %5533 = xor i64 %5528, %5531
  %5534 = xor i64 %5528, %5532
  %5535 = add i64 %5533, %5534
  %5536 = icmp eq i64 %5535, 2
  %5537 = zext i1 %5536 to i8
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5537, i8* %5538, align 1
  store %struct.Memory* %loadMem_40d216, %struct.Memory** %MEMORY
  %loadMem_40d219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5540 = getelementptr inbounds %struct.GPR, %struct.GPR* %5539, i32 0, i32 33
  %5541 = getelementptr inbounds %struct.Reg, %struct.Reg* %5540, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5541 to i64*
  %5542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5543 = getelementptr inbounds %struct.GPR, %struct.GPR* %5542, i32 0, i32 5
  %5544 = getelementptr inbounds %struct.Reg, %struct.Reg* %5543, i32 0, i32 0
  %RCX.i46 = bitcast %union.anon* %5544 to i64*
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5546 = getelementptr inbounds %struct.GPR, %struct.GPR* %5545, i32 0, i32 15
  %5547 = getelementptr inbounds %struct.Reg, %struct.Reg* %5546, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %5547 to i64*
  %5548 = load i64, i64* %RBP.i47
  %5549 = sub i64 %5548, 4
  %5550 = load i64, i64* %PC.i45
  %5551 = add i64 %5550, 4
  store i64 %5551, i64* %PC.i45
  %5552 = inttoptr i64 %5549 to i32*
  %5553 = load i32, i32* %5552
  %5554 = sext i32 %5553 to i64
  store i64 %5554, i64* %RCX.i46, align 8
  store %struct.Memory* %loadMem_40d219, %struct.Memory** %MEMORY
  %loadMem_40d21d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 33
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %5557 to i64*
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5559 = getelementptr inbounds %struct.GPR, %struct.GPR* %5558, i32 0, i32 5
  %5560 = getelementptr inbounds %struct.Reg, %struct.Reg* %5559, i32 0, i32 0
  %RCX.i44 = bitcast %union.anon* %5560 to i64*
  %5561 = load i64, i64* %RCX.i44
  %5562 = load i64, i64* %PC.i43
  %5563 = add i64 %5562, 7
  store i64 %5563, i64* %PC.i43
  %5564 = sext i64 %5561 to i128
  %5565 = and i128 %5564, -18446744073709551616
  %5566 = zext i64 %5561 to i128
  %5567 = or i128 %5565, %5566
  %5568 = mul i128 744, %5567
  %5569 = trunc i128 %5568 to i64
  store i64 %5569, i64* %RCX.i44, align 8
  %5570 = sext i64 %5569 to i128
  %5571 = icmp ne i128 %5570, %5568
  %5572 = zext i1 %5571 to i8
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5572, i8* %5573, align 1
  %5574 = trunc i128 %5568 to i32
  %5575 = and i32 %5574, 255
  %5576 = call i32 @llvm.ctpop.i32(i32 %5575)
  %5577 = trunc i32 %5576 to i8
  %5578 = and i8 %5577, 1
  %5579 = xor i8 %5578, 1
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5579, i8* %5580, align 1
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5581, align 1
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5582, align 1
  %5583 = lshr i64 %5569, 63
  %5584 = trunc i64 %5583 to i8
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5584, i8* %5585, align 1
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5572, i8* %5586, align 1
  store %struct.Memory* %loadMem_40d21d, %struct.Memory** %MEMORY
  %loadMem_40d224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5588 = getelementptr inbounds %struct.GPR, %struct.GPR* %5587, i32 0, i32 33
  %5589 = getelementptr inbounds %struct.Reg, %struct.Reg* %5588, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %5589 to i64*
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5591 = getelementptr inbounds %struct.GPR, %struct.GPR* %5590, i32 0, i32 1
  %5592 = getelementptr inbounds %struct.Reg, %struct.Reg* %5591, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %5592 to i64*
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5594 = getelementptr inbounds %struct.GPR, %struct.GPR* %5593, i32 0, i32 11
  %5595 = getelementptr inbounds %struct.Reg, %struct.Reg* %5594, i32 0, i32 0
  %RDI.i42 = bitcast %union.anon* %5595 to i64*
  %5596 = load i64, i64* %RAX.i41
  %5597 = load i64, i64* %PC.i40
  %5598 = add i64 %5597, 3
  store i64 %5598, i64* %PC.i40
  store i64 %5596, i64* %RDI.i42, align 8
  store %struct.Memory* %loadMem_40d224, %struct.Memory** %MEMORY
  %loadMem_40d227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5600 = getelementptr inbounds %struct.GPR, %struct.GPR* %5599, i32 0, i32 33
  %5601 = getelementptr inbounds %struct.Reg, %struct.Reg* %5600, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5601 to i64*
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5603 = getelementptr inbounds %struct.GPR, %struct.GPR* %5602, i32 0, i32 5
  %5604 = getelementptr inbounds %struct.Reg, %struct.Reg* %5603, i32 0, i32 0
  %RCX.i38 = bitcast %union.anon* %5604 to i64*
  %5605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5606 = getelementptr inbounds %struct.GPR, %struct.GPR* %5605, i32 0, i32 11
  %5607 = getelementptr inbounds %struct.Reg, %struct.Reg* %5606, i32 0, i32 0
  %RDI.i39 = bitcast %union.anon* %5607 to i64*
  %5608 = load i64, i64* %RDI.i39
  %5609 = load i64, i64* %RCX.i38
  %5610 = load i64, i64* %PC.i37
  %5611 = add i64 %5610, 3
  store i64 %5611, i64* %PC.i37
  %5612 = add i64 %5609, %5608
  store i64 %5612, i64* %RDI.i39, align 8
  %5613 = icmp ult i64 %5612, %5608
  %5614 = icmp ult i64 %5612, %5609
  %5615 = or i1 %5613, %5614
  %5616 = zext i1 %5615 to i8
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5616, i8* %5617, align 1
  %5618 = trunc i64 %5612 to i32
  %5619 = and i32 %5618, 255
  %5620 = call i32 @llvm.ctpop.i32(i32 %5619)
  %5621 = trunc i32 %5620 to i8
  %5622 = and i8 %5621, 1
  %5623 = xor i8 %5622, 1
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5623, i8* %5624, align 1
  %5625 = xor i64 %5609, %5608
  %5626 = xor i64 %5625, %5612
  %5627 = lshr i64 %5626, 4
  %5628 = trunc i64 %5627 to i8
  %5629 = and i8 %5628, 1
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5629, i8* %5630, align 1
  %5631 = icmp eq i64 %5612, 0
  %5632 = zext i1 %5631 to i8
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5632, i8* %5633, align 1
  %5634 = lshr i64 %5612, 63
  %5635 = trunc i64 %5634 to i8
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5635, i8* %5636, align 1
  %5637 = lshr i64 %5608, 63
  %5638 = lshr i64 %5609, 63
  %5639 = xor i64 %5634, %5637
  %5640 = xor i64 %5634, %5638
  %5641 = add i64 %5639, %5640
  %5642 = icmp eq i64 %5641, 2
  %5643 = zext i1 %5642 to i8
  %5644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5643, i8* %5644, align 1
  store %struct.Memory* %loadMem_40d227, %struct.Memory** %MEMORY
  %loadMem_40d22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 33
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5647 to i64*
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5649 = getelementptr inbounds %struct.GPR, %struct.GPR* %5648, i32 0, i32 17
  %5650 = getelementptr inbounds %struct.Reg, %struct.Reg* %5649, i32 0, i32 0
  %R8D.i35 = bitcast %union.anon* %5650 to i32*
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5652 = getelementptr inbounds %struct.GPR, %struct.GPR* %5651, i32 0, i32 11
  %5653 = getelementptr inbounds %struct.Reg, %struct.Reg* %5652, i32 0, i32 0
  %RDI.i36 = bitcast %union.anon* %5653 to i64*
  %5654 = bitcast i32* %R8D.i35 to i64*
  %5655 = load i64, i64* %RDI.i36
  %5656 = add i64 %5655, 96
  %5657 = load i64, i64* %PC.i34
  %5658 = add i64 %5657, 4
  store i64 %5658, i64* %PC.i34
  %5659 = inttoptr i64 %5656 to i32*
  %5660 = load i32, i32* %5659
  %5661 = zext i32 %5660 to i64
  store i64 %5661, i64* %5654, align 8
  store %struct.Memory* %loadMem_40d22a, %struct.Memory** %MEMORY
  %loadMem_40d22e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5663 = getelementptr inbounds %struct.GPR, %struct.GPR* %5662, i32 0, i32 33
  %5664 = getelementptr inbounds %struct.Reg, %struct.Reg* %5663, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5664 to i64*
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5666 = getelementptr inbounds %struct.GPR, %struct.GPR* %5665, i32 0, i32 17
  %5667 = getelementptr inbounds %struct.Reg, %struct.Reg* %5666, i32 0, i32 0
  %R8D.i32 = bitcast %union.anon* %5667 to i32*
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5669 = getelementptr inbounds %struct.GPR, %struct.GPR* %5668, i32 0, i32 19
  %5670 = getelementptr inbounds %struct.Reg, %struct.Reg* %5669, i32 0, i32 0
  %R9D.i33 = bitcast %union.anon* %5670 to i32*
  %5671 = bitcast i32* %R9D.i33 to i64*
  %5672 = load i32, i32* %R8D.i32
  %5673 = zext i32 %5672 to i64
  %5674 = load i64, i64* %PC.i31
  %5675 = add i64 %5674, 3
  store i64 %5675, i64* %PC.i31
  %5676 = and i64 %5673, 4294967295
  store i64 %5676, i64* %5671, align 8
  store %struct.Memory* %loadMem_40d22e, %struct.Memory** %MEMORY
  %loadMem_40d231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5678 = getelementptr inbounds %struct.GPR, %struct.GPR* %5677, i32 0, i32 33
  %5679 = getelementptr inbounds %struct.Reg, %struct.Reg* %5678, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5679 to i64*
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5681 = getelementptr inbounds %struct.GPR, %struct.GPR* %5680, i32 0, i32 19
  %5682 = getelementptr inbounds %struct.Reg, %struct.Reg* %5681, i32 0, i32 0
  %R9D.i30 = bitcast %union.anon* %5682 to i32*
  %5683 = bitcast i32* %R9D.i30 to i64*
  %5684 = load i32, i32* %R9D.i30
  %5685 = zext i32 %5684 to i64
  %5686 = load i64, i64* %PC.i29
  %5687 = add i64 %5686, 4
  store i64 %5687, i64* %PC.i29
  %5688 = add i32 1, %5684
  %5689 = zext i32 %5688 to i64
  store i64 %5689, i64* %5683, align 8
  %5690 = icmp ult i32 %5688, %5684
  %5691 = icmp ult i32 %5688, 1
  %5692 = or i1 %5690, %5691
  %5693 = zext i1 %5692 to i8
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5693, i8* %5694, align 1
  %5695 = and i32 %5688, 255
  %5696 = call i32 @llvm.ctpop.i32(i32 %5695)
  %5697 = trunc i32 %5696 to i8
  %5698 = and i8 %5697, 1
  %5699 = xor i8 %5698, 1
  %5700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5699, i8* %5700, align 1
  %5701 = xor i64 1, %5685
  %5702 = trunc i64 %5701 to i32
  %5703 = xor i32 %5702, %5688
  %5704 = lshr i32 %5703, 4
  %5705 = trunc i32 %5704 to i8
  %5706 = and i8 %5705, 1
  %5707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5706, i8* %5707, align 1
  %5708 = icmp eq i32 %5688, 0
  %5709 = zext i1 %5708 to i8
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5709, i8* %5710, align 1
  %5711 = lshr i32 %5688, 31
  %5712 = trunc i32 %5711 to i8
  %5713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5712, i8* %5713, align 1
  %5714 = lshr i32 %5684, 31
  %5715 = xor i32 %5711, %5714
  %5716 = add i32 %5715, %5711
  %5717 = icmp eq i32 %5716, 2
  %5718 = zext i1 %5717 to i8
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5718, i8* %5719, align 1
  store %struct.Memory* %loadMem_40d231, %struct.Memory** %MEMORY
  %loadMem_40d235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5721 = getelementptr inbounds %struct.GPR, %struct.GPR* %5720, i32 0, i32 33
  %5722 = getelementptr inbounds %struct.Reg, %struct.Reg* %5721, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %5722 to i64*
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5724 = getelementptr inbounds %struct.GPR, %struct.GPR* %5723, i32 0, i32 19
  %5725 = getelementptr inbounds %struct.Reg, %struct.Reg* %5724, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %5725 to i32*
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5727 = getelementptr inbounds %struct.GPR, %struct.GPR* %5726, i32 0, i32 11
  %5728 = getelementptr inbounds %struct.Reg, %struct.Reg* %5727, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5728 to i64*
  %5729 = load i64, i64* %RDI.i
  %5730 = add i64 %5729, 96
  %5731 = load i32, i32* %R9D.i
  %5732 = zext i32 %5731 to i64
  %5733 = load i64, i64* %PC.i28
  %5734 = add i64 %5733, 4
  store i64 %5734, i64* %PC.i28
  %5735 = inttoptr i64 %5730 to i32*
  store i32 %5731, i32* %5735
  store %struct.Memory* %loadMem_40d235, %struct.Memory** %MEMORY
  %loadMem_40d239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5737 = getelementptr inbounds %struct.GPR, %struct.GPR* %5736, i32 0, i32 33
  %5738 = getelementptr inbounds %struct.Reg, %struct.Reg* %5737, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5738 to i64*
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5740 = getelementptr inbounds %struct.GPR, %struct.GPR* %5739, i32 0, i32 17
  %5741 = getelementptr inbounds %struct.Reg, %struct.Reg* %5740, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %5741 to i32*
  %5742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5743 = getelementptr inbounds %struct.GPR, %struct.GPR* %5742, i32 0, i32 5
  %5744 = getelementptr inbounds %struct.Reg, %struct.Reg* %5743, i32 0, i32 0
  %RCX.i27 = bitcast %union.anon* %5744 to i64*
  %5745 = load i32, i32* %R8D.i
  %5746 = zext i32 %5745 to i64
  %5747 = load i64, i64* %PC.i26
  %5748 = add i64 %5747, 3
  store i64 %5748, i64* %PC.i26
  %5749 = shl i64 %5746, 32
  %5750 = ashr exact i64 %5749, 32
  store i64 %5750, i64* %RCX.i27, align 8
  store %struct.Memory* %loadMem_40d239, %struct.Memory** %MEMORY
  %loadMem_40d23c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5752 = getelementptr inbounds %struct.GPR, %struct.GPR* %5751, i32 0, i32 33
  %5753 = getelementptr inbounds %struct.Reg, %struct.Reg* %5752, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5753 to i64*
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5755 = getelementptr inbounds %struct.GPR, %struct.GPR* %5754, i32 0, i32 9
  %5756 = getelementptr inbounds %struct.Reg, %struct.Reg* %5755, i32 0, i32 0
  %ESI.i24 = bitcast %union.anon* %5756 to i32*
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5758 = getelementptr inbounds %struct.GPR, %struct.GPR* %5757, i32 0, i32 5
  %5759 = getelementptr inbounds %struct.Reg, %struct.Reg* %5758, i32 0, i32 0
  %RCX.i25 = bitcast %union.anon* %5759 to i64*
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5761 = getelementptr inbounds %struct.GPR, %struct.GPR* %5760, i32 0, i32 7
  %5762 = getelementptr inbounds %struct.Reg, %struct.Reg* %5761, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5762 to i64*
  %5763 = load i64, i64* %RDX.i
  %5764 = load i64, i64* %RCX.i25
  %5765 = mul i64 %5764, 4
  %5766 = add i64 %5763, 100
  %5767 = add i64 %5766, %5765
  %5768 = load i32, i32* %ESI.i24
  %5769 = zext i32 %5768 to i64
  %5770 = load i64, i64* %PC.i23
  %5771 = add i64 %5770, 4
  store i64 %5771, i64* %PC.i23
  %5772 = inttoptr i64 %5767 to i32*
  store i32 %5768, i32* %5772
  store %struct.Memory* %loadMem_40d23c, %struct.Memory** %MEMORY
  %loadMem_40d240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5774 = getelementptr inbounds %struct.GPR, %struct.GPR* %5773, i32 0, i32 33
  %5775 = getelementptr inbounds %struct.Reg, %struct.Reg* %5774, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5775 to i64*
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5777 = getelementptr inbounds %struct.GPR, %struct.GPR* %5776, i32 0, i32 9
  %5778 = getelementptr inbounds %struct.Reg, %struct.Reg* %5777, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5778 to i64*
  %5779 = load i64, i64* %PC.i22
  %5780 = add i64 %5779, 7
  store i64 %5780, i64* %PC.i22
  %5781 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %5782 = zext i32 %5781 to i64
  store i64 %5782, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_40d240, %struct.Memory** %MEMORY
  %loadMem_40d247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5784 = getelementptr inbounds %struct.GPR, %struct.GPR* %5783, i32 0, i32 33
  %5785 = getelementptr inbounds %struct.Reg, %struct.Reg* %5784, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5785 to i64*
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5787 = getelementptr inbounds %struct.GPR, %struct.GPR* %5786, i32 0, i32 5
  %5788 = getelementptr inbounds %struct.Reg, %struct.Reg* %5787, i32 0, i32 0
  %RCX.i20 = bitcast %union.anon* %5788 to i64*
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5790 = getelementptr inbounds %struct.GPR, %struct.GPR* %5789, i32 0, i32 15
  %5791 = getelementptr inbounds %struct.Reg, %struct.Reg* %5790, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %5791 to i64*
  %5792 = load i64, i64* %RBP.i21
  %5793 = sub i64 %5792, 32
  %5794 = load i64, i64* %PC.i19
  %5795 = add i64 %5794, 4
  store i64 %5795, i64* %PC.i19
  %5796 = inttoptr i64 %5793 to i32*
  %5797 = load i32, i32* %5796
  %5798 = sext i32 %5797 to i64
  store i64 %5798, i64* %RCX.i20, align 8
  store %struct.Memory* %loadMem_40d247, %struct.Memory** %MEMORY
  %loadMem_40d24b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5800 = getelementptr inbounds %struct.GPR, %struct.GPR* %5799, i32 0, i32 33
  %5801 = getelementptr inbounds %struct.Reg, %struct.Reg* %5800, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5801 to i64*
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5803 = getelementptr inbounds %struct.GPR, %struct.GPR* %5802, i32 0, i32 5
  %5804 = getelementptr inbounds %struct.Reg, %struct.Reg* %5803, i32 0, i32 0
  %RCX.i18 = bitcast %union.anon* %5804 to i64*
  %5805 = load i64, i64* %RCX.i18
  %5806 = load i64, i64* %PC.i17
  %5807 = add i64 %5806, 7
  store i64 %5807, i64* %PC.i17
  %5808 = sext i64 %5805 to i128
  %5809 = and i128 %5808, -18446744073709551616
  %5810 = zext i64 %5805 to i128
  %5811 = or i128 %5809, %5810
  %5812 = mul i128 744, %5811
  %5813 = trunc i128 %5812 to i64
  store i64 %5813, i64* %RCX.i18, align 8
  %5814 = sext i64 %5813 to i128
  %5815 = icmp ne i128 %5814, %5812
  %5816 = zext i1 %5815 to i8
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5816, i8* %5817, align 1
  %5818 = trunc i128 %5812 to i32
  %5819 = and i32 %5818, 255
  %5820 = call i32 @llvm.ctpop.i32(i32 %5819)
  %5821 = trunc i32 %5820 to i8
  %5822 = and i8 %5821, 1
  %5823 = xor i8 %5822, 1
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5823, i8* %5824, align 1
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5825, align 1
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5826, align 1
  %5827 = lshr i64 %5813, 63
  %5828 = trunc i64 %5827 to i8
  %5829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5828, i8* %5829, align 1
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5816, i8* %5830, align 1
  store %struct.Memory* %loadMem_40d24b, %struct.Memory** %MEMORY
  %loadMem_40d252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 33
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %5833 to i64*
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5835 = getelementptr inbounds %struct.GPR, %struct.GPR* %5834, i32 0, i32 1
  %5836 = getelementptr inbounds %struct.Reg, %struct.Reg* %5835, i32 0, i32 0
  %RAX.i16 = bitcast %union.anon* %5836 to i64*
  %5837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5838 = getelementptr inbounds %struct.GPR, %struct.GPR* %5837, i32 0, i32 5
  %5839 = getelementptr inbounds %struct.Reg, %struct.Reg* %5838, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5839 to i64*
  %5840 = load i64, i64* %RAX.i16
  %5841 = load i64, i64* %RCX.i
  %5842 = load i64, i64* %PC.i15
  %5843 = add i64 %5842, 3
  store i64 %5843, i64* %PC.i15
  %5844 = add i64 %5841, %5840
  store i64 %5844, i64* %RAX.i16, align 8
  %5845 = icmp ult i64 %5844, %5840
  %5846 = icmp ult i64 %5844, %5841
  %5847 = or i1 %5845, %5846
  %5848 = zext i1 %5847 to i8
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5848, i8* %5849, align 1
  %5850 = trunc i64 %5844 to i32
  %5851 = and i32 %5850, 255
  %5852 = call i32 @llvm.ctpop.i32(i32 %5851)
  %5853 = trunc i32 %5852 to i8
  %5854 = and i8 %5853, 1
  %5855 = xor i8 %5854, 1
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5855, i8* %5856, align 1
  %5857 = xor i64 %5841, %5840
  %5858 = xor i64 %5857, %5844
  %5859 = lshr i64 %5858, 4
  %5860 = trunc i64 %5859 to i8
  %5861 = and i8 %5860, 1
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5861, i8* %5862, align 1
  %5863 = icmp eq i64 %5844, 0
  %5864 = zext i1 %5863 to i8
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5864, i8* %5865, align 1
  %5866 = lshr i64 %5844, 63
  %5867 = trunc i64 %5866 to i8
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5867, i8* %5868, align 1
  %5869 = lshr i64 %5840, 63
  %5870 = lshr i64 %5841, 63
  %5871 = xor i64 %5866, %5869
  %5872 = xor i64 %5866, %5870
  %5873 = add i64 %5871, %5872
  %5874 = icmp eq i64 %5873, 2
  %5875 = zext i1 %5874 to i8
  %5876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5875, i8* %5876, align 1
  store %struct.Memory* %loadMem_40d252, %struct.Memory** %MEMORY
  %loadMem_40d255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 33
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5879 to i64*
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5881 = getelementptr inbounds %struct.GPR, %struct.GPR* %5880, i32 0, i32 9
  %5882 = getelementptr inbounds %struct.Reg, %struct.Reg* %5881, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %5882 to i32*
  %5883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5884 = getelementptr inbounds %struct.GPR, %struct.GPR* %5883, i32 0, i32 1
  %5885 = getelementptr inbounds %struct.Reg, %struct.Reg* %5884, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %5885 to i64*
  %5886 = load i64, i64* %RAX.i14
  %5887 = add i64 %5886, 740
  %5888 = load i32, i32* %ESI.i
  %5889 = zext i32 %5888 to i64
  %5890 = load i64, i64* %PC.i13
  %5891 = add i64 %5890, 6
  store i64 %5891, i64* %PC.i13
  %5892 = inttoptr i64 %5887 to i32*
  store i32 %5888, i32* %5892
  store %struct.Memory* %loadMem_40d255, %struct.Memory** %MEMORY
  br label %block_.L_40d25b

block_.L_40d25b:                                  ; preds = %block_40d172, %block_40d119
  %loadMem_40d25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5894 = getelementptr inbounds %struct.GPR, %struct.GPR* %5893, i32 0, i32 33
  %5895 = getelementptr inbounds %struct.Reg, %struct.Reg* %5894, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5895 to i64*
  %5896 = load i64, i64* %PC.i12
  %5897 = add i64 %5896, 5
  %5898 = load i64, i64* %PC.i12
  %5899 = add i64 %5898, 5
  store i64 %5899, i64* %PC.i12
  %5900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5897, i64* %5900, align 8
  store %struct.Memory* %loadMem_40d25b, %struct.Memory** %MEMORY
  br label %block_.L_40d260

block_.L_40d260:                                  ; preds = %block_.L_40d25b
  %loadMem_40d260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5902 = getelementptr inbounds %struct.GPR, %struct.GPR* %5901, i32 0, i32 33
  %5903 = getelementptr inbounds %struct.Reg, %struct.Reg* %5902, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5903 to i64*
  %5904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5905 = getelementptr inbounds %struct.GPR, %struct.GPR* %5904, i32 0, i32 1
  %5906 = getelementptr inbounds %struct.Reg, %struct.Reg* %5905, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %5906 to i64*
  %5907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5908 = getelementptr inbounds %struct.GPR, %struct.GPR* %5907, i32 0, i32 15
  %5909 = getelementptr inbounds %struct.Reg, %struct.Reg* %5908, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %5909 to i64*
  %5910 = load i64, i64* %RBP.i11
  %5911 = sub i64 %5910, 12
  %5912 = load i64, i64* %PC.i9
  %5913 = add i64 %5912, 3
  store i64 %5913, i64* %PC.i9
  %5914 = inttoptr i64 %5911 to i32*
  %5915 = load i32, i32* %5914
  %5916 = zext i32 %5915 to i64
  store i64 %5916, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_40d260, %struct.Memory** %MEMORY
  %loadMem_40d263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5918 = getelementptr inbounds %struct.GPR, %struct.GPR* %5917, i32 0, i32 33
  %5919 = getelementptr inbounds %struct.Reg, %struct.Reg* %5918, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5919 to i64*
  %5920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5921 = getelementptr inbounds %struct.GPR, %struct.GPR* %5920, i32 0, i32 1
  %5922 = getelementptr inbounds %struct.Reg, %struct.Reg* %5921, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5922 to i64*
  %5923 = load i64, i64* %RAX.i
  %5924 = load i64, i64* %PC.i8
  %5925 = add i64 %5924, 3
  store i64 %5925, i64* %PC.i8
  %5926 = trunc i64 %5923 to i32
  %5927 = add i32 1, %5926
  %5928 = zext i32 %5927 to i64
  store i64 %5928, i64* %RAX.i, align 8
  %5929 = icmp ult i32 %5927, %5926
  %5930 = icmp ult i32 %5927, 1
  %5931 = or i1 %5929, %5930
  %5932 = zext i1 %5931 to i8
  %5933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5932, i8* %5933, align 1
  %5934 = and i32 %5927, 255
  %5935 = call i32 @llvm.ctpop.i32(i32 %5934)
  %5936 = trunc i32 %5935 to i8
  %5937 = and i8 %5936, 1
  %5938 = xor i8 %5937, 1
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5938, i8* %5939, align 1
  %5940 = xor i64 1, %5923
  %5941 = trunc i64 %5940 to i32
  %5942 = xor i32 %5941, %5927
  %5943 = lshr i32 %5942, 4
  %5944 = trunc i32 %5943 to i8
  %5945 = and i8 %5944, 1
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5945, i8* %5946, align 1
  %5947 = icmp eq i32 %5927, 0
  %5948 = zext i1 %5947 to i8
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5948, i8* %5949, align 1
  %5950 = lshr i32 %5927, 31
  %5951 = trunc i32 %5950 to i8
  %5952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5951, i8* %5952, align 1
  %5953 = lshr i32 %5926, 31
  %5954 = xor i32 %5950, %5953
  %5955 = add i32 %5954, %5950
  %5956 = icmp eq i32 %5955, 2
  %5957 = zext i1 %5956 to i8
  %5958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5957, i8* %5958, align 1
  store %struct.Memory* %loadMem_40d263, %struct.Memory** %MEMORY
  %loadMem_40d266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5960 = getelementptr inbounds %struct.GPR, %struct.GPR* %5959, i32 0, i32 33
  %5961 = getelementptr inbounds %struct.Reg, %struct.Reg* %5960, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5961 to i64*
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5963 = getelementptr inbounds %struct.GPR, %struct.GPR* %5962, i32 0, i32 1
  %5964 = getelementptr inbounds %struct.Reg, %struct.Reg* %5963, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5964 to i32*
  %5965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5966 = getelementptr inbounds %struct.GPR, %struct.GPR* %5965, i32 0, i32 15
  %5967 = getelementptr inbounds %struct.Reg, %struct.Reg* %5966, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %5967 to i64*
  %5968 = load i64, i64* %RBP.i7
  %5969 = sub i64 %5968, 12
  %5970 = load i32, i32* %EAX.i
  %5971 = zext i32 %5970 to i64
  %5972 = load i64, i64* %PC.i6
  %5973 = add i64 %5972, 3
  store i64 %5973, i64* %PC.i6
  %5974 = inttoptr i64 %5969 to i32*
  store i32 %5970, i32* %5974
  store %struct.Memory* %loadMem_40d266, %struct.Memory** %MEMORY
  %loadMem_40d269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5976 = getelementptr inbounds %struct.GPR, %struct.GPR* %5975, i32 0, i32 33
  %5977 = getelementptr inbounds %struct.Reg, %struct.Reg* %5976, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5977 to i64*
  %5978 = load i64, i64* %PC.i5
  %5979 = add i64 %5978, -372
  %5980 = load i64, i64* %PC.i5
  %5981 = add i64 %5980, 5
  store i64 %5981, i64* %PC.i5
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5979, i64* %5982, align 8
  store %struct.Memory* %loadMem_40d269, %struct.Memory** %MEMORY
  br label %block_.L_40d0f5

block_.L_40d26e:                                  ; preds = %block_.L_40d0f5
  %loadMem_40d26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5984 = getelementptr inbounds %struct.GPR, %struct.GPR* %5983, i32 0, i32 33
  %5985 = getelementptr inbounds %struct.Reg, %struct.Reg* %5984, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5985 to i64*
  %5986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5987 = getelementptr inbounds %struct.GPR, %struct.GPR* %5986, i32 0, i32 13
  %5988 = getelementptr inbounds %struct.Reg, %struct.Reg* %5987, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5988 to i64*
  %5989 = load i64, i64* %RSP.i
  %5990 = load i64, i64* %PC.i4
  %5991 = add i64 %5990, 4
  store i64 %5991, i64* %PC.i4
  %5992 = add i64 32, %5989
  store i64 %5992, i64* %RSP.i, align 8
  %5993 = icmp ult i64 %5992, %5989
  %5994 = icmp ult i64 %5992, 32
  %5995 = or i1 %5993, %5994
  %5996 = zext i1 %5995 to i8
  %5997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5996, i8* %5997, align 1
  %5998 = trunc i64 %5992 to i32
  %5999 = and i32 %5998, 255
  %6000 = call i32 @llvm.ctpop.i32(i32 %5999)
  %6001 = trunc i32 %6000 to i8
  %6002 = and i8 %6001, 1
  %6003 = xor i8 %6002, 1
  %6004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6003, i8* %6004, align 1
  %6005 = xor i64 32, %5989
  %6006 = xor i64 %6005, %5992
  %6007 = lshr i64 %6006, 4
  %6008 = trunc i64 %6007 to i8
  %6009 = and i8 %6008, 1
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6009, i8* %6010, align 1
  %6011 = icmp eq i64 %5992, 0
  %6012 = zext i1 %6011 to i8
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6012, i8* %6013, align 1
  %6014 = lshr i64 %5992, 63
  %6015 = trunc i64 %6014 to i8
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6015, i8* %6016, align 1
  %6017 = lshr i64 %5989, 63
  %6018 = xor i64 %6014, %6017
  %6019 = add i64 %6018, %6014
  %6020 = icmp eq i64 %6019, 2
  %6021 = zext i1 %6020 to i8
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6021, i8* %6022, align 1
  store %struct.Memory* %loadMem_40d26e, %struct.Memory** %MEMORY
  %loadMem_40d272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6024 = getelementptr inbounds %struct.GPR, %struct.GPR* %6023, i32 0, i32 33
  %6025 = getelementptr inbounds %struct.Reg, %struct.Reg* %6024, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6025 to i64*
  %6026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6027 = getelementptr inbounds %struct.GPR, %struct.GPR* %6026, i32 0, i32 15
  %6028 = getelementptr inbounds %struct.Reg, %struct.Reg* %6027, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6028 to i64*
  %6029 = load i64, i64* %PC.i2
  %6030 = add i64 %6029, 1
  store i64 %6030, i64* %PC.i2
  %6031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6032 = load i64, i64* %6031, align 8
  %6033 = add i64 %6032, 8
  %6034 = inttoptr i64 %6032 to i64*
  %6035 = load i64, i64* %6034
  store i64 %6035, i64* %RBP.i3, align 8
  store i64 %6033, i64* %6031, align 8
  store %struct.Memory* %loadMem_40d272, %struct.Memory** %MEMORY
  %loadMem_40d273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6037 = getelementptr inbounds %struct.GPR, %struct.GPR* %6036, i32 0, i32 33
  %6038 = getelementptr inbounds %struct.Reg, %struct.Reg* %6037, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6038 to i64*
  %6039 = load i64, i64* %PC.i1
  %6040 = add i64 %6039, 1
  store i64 %6040, i64* %PC.i1
  %6041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6043 = load i64, i64* %6042, align 8
  %6044 = inttoptr i64 %6043 to i64*
  %6045 = load i64, i64* %6044
  store i64 %6045, i64* %6041, align 8
  %6046 = add i64 %6043, 8
  store i64 %6046, i64* %6042, align 8
  store %struct.Memory* %loadMem_40d273, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40d273
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

define %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 744, %15
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

define %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x4__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 4
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

define %struct.Memory* @routine_movl__esi__0x4__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movq__0xaab3f0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xaab3f0_type* @G__0xaab3f0 to i64), i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_0xa0e710___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xaab3f0___rax_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0xa0e710___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x10___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 16, %9
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 16
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
  %25 = xor i64 16, %9
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

define %struct.Memory* @routine_movq__rcx__0xa0e710(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %9, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0xaab3f0___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
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

define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xaaba30___rax_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11188784
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 744, %15
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

define %struct.Memory* @routine_cmpl_0x8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_sete__sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %SIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorb__0xff___sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %SIL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = xor i64 255, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %SIL, align 1
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
  %27 = lshr i8 %15, 7
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_testb__0x1___sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %SIL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
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

define %struct.Memory* @routine_jne_.L_40cdb5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xaaba30___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xaaba30_type* @G__0xaaba30 to i64), i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__rax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_0x8__rsi____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 1
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

define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xaaba30___rdx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11188784
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x10___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 16, %9
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 16
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
  %25 = xor i64 16, %9
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

define %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__0x8__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movq__rcx____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
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

define %struct.Memory* @routine_movl_0xaaba30___rcx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11188784
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDI, align 8
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

define %struct.Memory* @routine_addq__0x10___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 16, %9
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 16
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
  %25 = xor i64 16, %9
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

define %struct.Memory* @routine_movq__rdx__0xa0e710(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__0x8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__edi__0xaaba30___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11188784
  %15 = load i32, i32* %EDI
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rdx____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_40cf6e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x8__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 20
  %16 = icmp ult i32 %14, 20
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
  %25 = xor i32 %14, 20
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

define %struct.Memory* @routine_jg_.L_40d0b6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 12
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

define %struct.Memory* @routine_jge_.L_40d0b1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x10__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 16
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_40d09e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xaaadb0___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 11185584
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x99da04___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
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

define %struct.Memory* @routine_je_.L_40d09e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40d010(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_40d066(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 16
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
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

define %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 12
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x99da04___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0xaaadb0___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11185584
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40d09e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40d0a3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40cf97(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40d0ee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x99da04___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__0x99da04(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  store i32 %9, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_callq_.update_liberties(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x60__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 96
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

define %struct.Memory* @routine_jge_.L_40d26e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x64__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 100
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_callq_.remove_neighbor(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x2e4__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 740
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x99da08___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
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

define %struct.Memory* @routine_je_.L_40d25b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x60___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 96, %9
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 96
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
  %25 = xor i64 96, %9
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

define %struct.Memory* @routine_movq__rdx____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x60__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__0x8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_addq__rcx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R9D to i64*
  %10 = load i32, i32* %R9D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = add i32 1, %10
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = icmp ult i32 %14, %10
  %17 = icmp ult i32 %14, 1
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i64 1, %11
  %28 = trunc i64 %27 to i32
  %29 = xor i32 %28, %14
  %30 = lshr i32 %29, 4
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %32, i8* %33, align 1
  %34 = icmp eq i32 %14, 0
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %14, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %10, 31
  %41 = xor i32 %37, %40
  %42 = add i32 %41, %37
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 96
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__r8d___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__0x64__rdx__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 100
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ESI
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
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

define %struct.Memory* @routine_movl_0x99da08___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__0x2e4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 740
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40d260(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40d0f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
