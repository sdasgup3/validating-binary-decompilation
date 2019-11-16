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
%G_0x4bd7e0_type = type <{ [8 x i8] }>
%G_0x4bd7e8_type = type <{ [8 x i8] }>
%G_0x4bd7f0_type = type <{ [8 x i8] }>
%G_0x4bd7f8_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x722cb0_type = type <{ [8 x i8] }>
%G__0x4c236c_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x4bd7e0 = global %G_0x4bd7e0_type zeroinitializer
@G_0x4bd7e8 = global %G_0x4bd7e8_type zeroinitializer
@G_0x4bd7f0 = global %G_0x4bd7f0_type zeroinitializer
@G_0x4bd7f8 = global %G_0x4bd7f8_type zeroinitializer
@G_0x6cb8f8 = global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G_0x722cb0 = global %G_0x722cb0_type zeroinitializer
@G__0x4c236c = global %G__0x4c236c_type zeroinitializer

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

declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_475680.img2buf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401010.write_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @write_out_picture(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_475a70 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_475a70, %struct.Memory** %MEMORY
  %loadMem_475a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i7 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i7
  %27 = load i64, i64* %PC.i6
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i6
  store i64 %26, i64* %RBP.i8, align 8
  store %struct.Memory* %loadMem_475a71, %struct.Memory** %MEMORY
  %loadMem_475a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RBX.i605 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RBX.i605
  %36 = load i64, i64* %PC.i604
  %37 = add i64 %36, 1
  store i64 %37, i64* %PC.i604
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_475a74, %struct.Memory** %MEMORY
  %loadMem_475a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 13
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %RSP.i774 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %RSP.i774
  %49 = load i64, i64* %PC.i773
  %50 = add i64 %49, 7
  store i64 %50, i64* %PC.i773
  %51 = sub i64 %48, 152
  store i64 %51, i64* %RSP.i774, align 8
  %52 = icmp ult i64 %48, 152
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %53, i8* %54, align 1
  %55 = trunc i64 %51 to i32
  %56 = and i32 %55, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %60, i8* %61, align 1
  %62 = xor i64 152, %48
  %63 = xor i64 %62, %51
  %64 = lshr i64 %63, 4
  %65 = trunc i64 %64 to i8
  %66 = and i8 %65, 1
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %66, i8* %67, align 1
  %68 = icmp eq i64 %51, 0
  %69 = zext i1 %68 to i8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %69, i8* %70, align 1
  %71 = lshr i64 %51, 63
  %72 = trunc i64 %71 to i8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %72, i8* %73, align 1
  %74 = lshr i64 %48, 63
  %75 = xor i64 %71, %74
  %76 = add i64 %75, %74
  %77 = icmp eq i64 %76, 2
  %78 = zext i1 %77 to i8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %78, i8* %79, align 1
  store %struct.Memory* %loadMem_475a75, %struct.Memory** %MEMORY
  %loadMem_475a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 33
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %82 to i64*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %EAX.i822 = bitcast %union.anon* %85 to i32*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RAX.i823 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %RAX.i823
  %90 = load i32, i32* %EAX.i822
  %91 = zext i32 %90 to i64
  %92 = load i64, i64* %PC.i821
  %93 = add i64 %92, 2
  store i64 %93, i64* %PC.i821
  %94 = xor i64 %91, %89
  %95 = trunc i64 %94 to i32
  %96 = and i64 %94, 4294967295
  store i64 %96, i64* %RAX.i823, align 8
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %97, align 1
  %98 = and i32 %95, 255
  %99 = call i32 @llvm.ctpop.i32(i32 %98)
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  %102 = xor i8 %101, 1
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %102, i8* %103, align 1
  %104 = icmp eq i32 %95, 0
  %105 = zext i1 %104 to i8
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %105, i8* %106, align 1
  %107 = lshr i32 %95, 31
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %108, i8* %109, align 1
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %110, align 1
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %111, align 1
  store %struct.Memory* %loadMem_475a7c, %struct.Memory** %MEMORY
  %loadMem_475a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %118 = bitcast %union.anon* %117 to %struct.anon.2*
  %AL.i819 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %118, i32 0, i32 0
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %122 = bitcast %union.anon* %121 to %struct.anon.2*
  %CL.i820 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %122, i32 0, i32 0
  %123 = load i8, i8* %AL.i819
  %124 = zext i8 %123 to i64
  %125 = load i64, i64* %PC.i818
  %126 = add i64 %125, 2
  store i64 %126, i64* %PC.i818
  store i8 %123, i8* %CL.i820, align 1
  store %struct.Memory* %loadMem_475a7e, %struct.Memory** %MEMORY
  %loadMem_475a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 33
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %129 to i64*
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %RAX.i817 = bitcast %union.anon* %132 to i64*
  %133 = load i64, i64* %PC.i816
  %134 = add i64 %133, 5
  store i64 %134, i64* %PC.i816
  store i64 8, i64* %RAX.i817, align 8
  store %struct.Memory* %loadMem_475a80, %struct.Memory** %MEMORY
  %loadMem_475a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %137 to i64*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 11
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %RDI.i814 = bitcast %union.anon* %140 to i64*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 15
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %RBP.i815 = bitcast %union.anon* %143 to i64*
  %144 = load i64, i64* %RBP.i815
  %145 = sub i64 %144, 16
  %146 = load i64, i64* %RDI.i814
  %147 = load i64, i64* %PC.i813
  %148 = add i64 %147, 4
  store i64 %148, i64* %PC.i813
  %149 = inttoptr i64 %145 to i64*
  store i64 %146, i64* %149
  store %struct.Memory* %loadMem_475a85, %struct.Memory** %MEMORY
  %loadMem_475a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 9
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %ESI.i811 = bitcast %union.anon* %155 to i32*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i812 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %RBP.i812
  %160 = sub i64 %159, 20
  %161 = load i32, i32* %ESI.i811
  %162 = zext i32 %161 to i64
  %163 = load i64, i64* %PC.i810
  %164 = add i64 %163, 3
  store i64 %164, i64* %PC.i810
  %165 = inttoptr i64 %160 to i32*
  store i32 %161, i32* %165
  store %struct.Memory* %loadMem_475a89, %struct.Memory** %MEMORY
  %loadMem_475a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 33
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %168 to i64*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 11
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %RDI.i809 = bitcast %union.anon* %171 to i64*
  %172 = load i64, i64* %PC.i808
  %173 = add i64 %172, 8
  store i64 %173, i64* %PC.i808
  %174 = load i64, i64* bitcast (%G_0x4bd7e0_type* @G_0x4bd7e0 to i64*)
  store i64 %174, i64* %RDI.i809, align 8
  store %struct.Memory* %loadMem_475a8c, %struct.Memory** %MEMORY
  %loadMem_475a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 33
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %177 to i64*
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 11
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %RDI.i806 = bitcast %union.anon* %180 to i64*
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 15
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %RBP.i807 = bitcast %union.anon* %183 to i64*
  %184 = load i64, i64* %RBP.i807
  %185 = sub i64 %184, 48
  %186 = load i64, i64* %RDI.i806
  %187 = load i64, i64* %PC.i805
  %188 = add i64 %187, 4
  store i64 %188, i64* %PC.i805
  %189 = inttoptr i64 %185 to i64*
  store i64 %186, i64* %189
  store %struct.Memory* %loadMem_475a94, %struct.Memory** %MEMORY
  %loadMem_475a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 33
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 11
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %RDI.i804 = bitcast %union.anon* %195 to i64*
  %196 = load i64, i64* %PC.i803
  %197 = add i64 %196, 8
  store i64 %197, i64* %PC.i803
  %198 = load i64, i64* bitcast (%G_0x4bd7e8_type* @G_0x4bd7e8 to i64*)
  store i64 %198, i64* %RDI.i804, align 8
  store %struct.Memory* %loadMem_475a98, %struct.Memory** %MEMORY
  %loadMem_475aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 33
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 11
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RDI.i801 = bitcast %union.anon* %204 to i64*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 15
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %RBP.i802 = bitcast %union.anon* %207 to i64*
  %208 = load i64, i64* %RBP.i802
  %209 = sub i64 %208, 40
  %210 = load i64, i64* %RDI.i801
  %211 = load i64, i64* %PC.i800
  %212 = add i64 %211, 4
  store i64 %212, i64* %PC.i800
  %213 = inttoptr i64 %209 to i64*
  store i64 %210, i64* %213
  store %struct.Memory* %loadMem_475aa0, %struct.Memory** %MEMORY
  %loadMem_475aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 33
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %216 to i64*
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 11
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %RDI.i799 = bitcast %union.anon* %219 to i64*
  %220 = load i64, i64* %PC.i798
  %221 = add i64 %220, 8
  store i64 %221, i64* %PC.i798
  %222 = load i64, i64* bitcast (%G_0x4bd7f0_type* @G_0x4bd7f0 to i64*)
  store i64 %222, i64* %RDI.i799, align 8
  store %struct.Memory* %loadMem_475aa4, %struct.Memory** %MEMORY
  %loadMem_475aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 33
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %225 to i64*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 11
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %RDI.i796 = bitcast %union.anon* %228 to i64*
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 15
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %RBP.i797 = bitcast %union.anon* %231 to i64*
  %232 = load i64, i64* %RBP.i797
  %233 = sub i64 %232, 64
  %234 = load i64, i64* %RDI.i796
  %235 = load i64, i64* %PC.i795
  %236 = add i64 %235, 4
  store i64 %236, i64* %PC.i795
  %237 = inttoptr i64 %233 to i64*
  store i64 %234, i64* %237
  store %struct.Memory* %loadMem_475aac, %struct.Memory** %MEMORY
  %loadMem_475ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 11
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RDI.i794 = bitcast %union.anon* %243 to i64*
  %244 = load i64, i64* %PC.i793
  %245 = add i64 %244, 8
  store i64 %245, i64* %PC.i793
  %246 = load i64, i64* bitcast (%G_0x4bd7f8_type* @G_0x4bd7f8 to i64*)
  store i64 %246, i64* %RDI.i794, align 8
  store %struct.Memory* %loadMem_475ab0, %struct.Memory** %MEMORY
  %loadMem_475ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 33
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %249 to i64*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 11
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %RDI.i791 = bitcast %union.anon* %252 to i64*
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 15
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %RBP.i792 = bitcast %union.anon* %255 to i64*
  %256 = load i64, i64* %RBP.i792
  %257 = sub i64 %256, 56
  %258 = load i64, i64* %RDI.i791
  %259 = load i64, i64* %PC.i790
  %260 = add i64 %259, 4
  store i64 %260, i64* %PC.i790
  %261 = inttoptr i64 %257 to i64*
  store i64 %258, i64* %261
  store %struct.Memory* %loadMem_475ab8, %struct.Memory** %MEMORY
  %loadMem_475abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 33
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %264 to i64*
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 11
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %RDI.i789 = bitcast %union.anon* %267 to i64*
  %268 = load i64, i64* %PC.i788
  %269 = add i64 %268, 8
  store i64 %269, i64* %PC.i788
  %270 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %270, i64* %RDI.i789, align 8
  store %struct.Memory* %loadMem_475abc, %struct.Memory** %MEMORY
  %loadMem_475ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 33
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %273 to i64*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 9
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %RSI.i786 = bitcast %union.anon* %276 to i64*
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 11
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %RDI.i787 = bitcast %union.anon* %279 to i64*
  %280 = load i64, i64* %RDI.i787
  %281 = add i64 %280, 72656
  %282 = load i64, i64* %PC.i785
  %283 = add i64 %282, 6
  store i64 %283, i64* %PC.i785
  %284 = inttoptr i64 %281 to i32*
  %285 = load i32, i32* %284
  %286 = zext i32 %285 to i64
  store i64 %286, i64* %RSI.i786, align 8
  store %struct.Memory* %loadMem_475ac4, %struct.Memory** %MEMORY
  %loadMem_475aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 33
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %289 to i64*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %EAX.i783 = bitcast %union.anon* %292 to i32*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 15
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %RBP.i784 = bitcast %union.anon* %295 to i64*
  %296 = load i64, i64* %RBP.i784
  %297 = sub i64 %296, 100
  %298 = load i32, i32* %EAX.i783
  %299 = zext i32 %298 to i64
  %300 = load i64, i64* %PC.i782
  %301 = add i64 %300, 3
  store i64 %301, i64* %PC.i782
  %302 = inttoptr i64 %297 to i32*
  store i32 %298, i32* %302
  store %struct.Memory* %loadMem_475aca, %struct.Memory** %MEMORY
  %loadMem_475acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 33
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %305 to i64*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 9
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %ESI.i780 = bitcast %union.anon* %308 to i32*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %RAX.i781 = bitcast %union.anon* %311 to i64*
  %312 = load i32, i32* %ESI.i780
  %313 = zext i32 %312 to i64
  %314 = load i64, i64* %PC.i779
  %315 = add i64 %314, 2
  store i64 %315, i64* %PC.i779
  %316 = and i64 %313, 4294967295
  store i64 %316, i64* %RAX.i781, align 8
  store %struct.Memory* %loadMem_475acd, %struct.Memory** %MEMORY
  %loadMem_475acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %319 to i64*
  %320 = load i64, i64* %PC.i778
  %321 = add i64 %320, 1
  store i64 %321, i64* %PC.i778
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %324 = bitcast %union.anon* %323 to i32*
  %325 = load i32, i32* %324, align 8
  %326 = sext i32 %325 to i64
  %327 = lshr i64 %326, 32
  store i64 %327, i64* %322, align 8
  store %struct.Memory* %loadMem_475acf, %struct.Memory** %MEMORY
  %loadMem_475ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 33
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 9
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %RSI.i776 = bitcast %union.anon* %333 to i64*
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 15
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %RBP.i777 = bitcast %union.anon* %336 to i64*
  %337 = load i64, i64* %RBP.i777
  %338 = sub i64 %337, 100
  %339 = load i64, i64* %PC.i775
  %340 = add i64 %339, 3
  store i64 %340, i64* %PC.i775
  %341 = inttoptr i64 %338 to i32*
  %342 = load i32, i32* %341
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %RSI.i776, align 8
  store %struct.Memory* %loadMem_475ad0, %struct.Memory** %MEMORY
  %loadMem_475ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 33
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %346 to i64*
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 9
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %ESI.i772 = bitcast %union.anon* %349 to i32*
  %350 = load i32, i32* %ESI.i772
  %351 = zext i32 %350 to i64
  %352 = load i64, i64* %PC.i771
  %353 = add i64 %352, 2
  store i64 %353, i64* %PC.i771
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %355 = bitcast %union.anon* %354 to i32*
  %356 = load i32, i32* %355, align 8
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %359 = bitcast %union.anon* %358 to i32*
  %360 = load i32, i32* %359, align 8
  %361 = zext i32 %360 to i64
  %362 = shl i64 %351, 32
  %363 = ashr exact i64 %362, 32
  %364 = shl i64 %361, 32
  %365 = or i64 %364, %357
  %366 = sdiv i64 %365, %363
  %367 = shl i64 %366, 32
  %368 = ashr exact i64 %367, 32
  %369 = icmp eq i64 %366, %368
  br i1 %369, label %374, label %370

; <label>:370:                                    ; preds = %entry
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %372, %struct.Memory* %loadMem_475ad3)
  br label %routine_idivl__esi.exit

; <label>:374:                                    ; preds = %entry
  %375 = srem i64 %365, %363
  %376 = getelementptr inbounds %union.anon, %union.anon* %354, i64 0, i32 0
  %377 = and i64 %366, 4294967295
  store i64 %377, i64* %376, align 8
  %378 = getelementptr inbounds %union.anon, %union.anon* %358, i64 0, i32 0
  %379 = and i64 %375, 4294967295
  store i64 %379, i64* %378, align 8
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %380, align 1
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %381, align 1
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %382, align 1
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %383, align 1
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %384, align 1
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %385, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %370, %374
  %386 = phi %struct.Memory* [ %373, %370 ], [ %loadMem_475ad3, %374 ]
  store %struct.Memory* %386, %struct.Memory** %MEMORY
  %loadMem_475ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 33
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %389 to i64*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %EAX.i769 = bitcast %union.anon* %392 to i32*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 15
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %RBP.i770 = bitcast %union.anon* %395 to i64*
  %396 = load i64, i64* %RBP.i770
  %397 = sub i64 %396, 84
  %398 = load i32, i32* %EAX.i769
  %399 = zext i32 %398 to i64
  %400 = load i64, i64* %PC.i768
  %401 = add i64 %400, 3
  store i64 %401, i64* %PC.i768
  %402 = inttoptr i64 %397 to i32*
  store i32 %398, i32* %402
  store %struct.Memory* %loadMem_475ad5, %struct.Memory** %MEMORY
  %loadMem_475ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 33
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 11
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %RDI.i767 = bitcast %union.anon* %408 to i64*
  %409 = load i64, i64* %PC.i766
  %410 = add i64 %409, 8
  store i64 %410, i64* %PC.i766
  %411 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %411, i64* %RDI.i767, align 8
  store %struct.Memory* %loadMem_475ad8, %struct.Memory** %MEMORY
  %loadMem_475ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 33
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %414 to i64*
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 11
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %RDI.i765 = bitcast %union.anon* %417 to i64*
  %418 = load i64, i64* %RDI.i765
  %419 = add i64 %418, 3312
  %420 = load i64, i64* %PC.i764
  %421 = add i64 %420, 7
  store i64 %421, i64* %PC.i764
  %422 = inttoptr i64 %419 to i32*
  %423 = load i32, i32* %422
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %424, align 1
  %425 = and i32 %423, 255
  %426 = call i32 @llvm.ctpop.i32(i32 %425)
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %429, i8* %430, align 1
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %431, align 1
  %432 = icmp eq i32 %423, 0
  %433 = zext i1 %432 to i8
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %433, i8* %434, align 1
  %435 = lshr i32 %423, 31
  %436 = trunc i32 %435 to i8
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %436, i8* %437, align 1
  %438 = lshr i32 %423, 31
  %439 = xor i32 %435, %438
  %440 = add i32 %439, %438
  %441 = icmp eq i32 %440, 2
  %442 = zext i1 %441 to i8
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %442, i8* %443, align 1
  store %struct.Memory* %loadMem_475ae0, %struct.Memory** %MEMORY
  %loadMem_475ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 33
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %446 to i64*
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 5
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %450 = bitcast %union.anon* %449 to %struct.anon.2*
  %CL.i762 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %450, i32 0, i32 0
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 15
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RBP.i763 = bitcast %union.anon* %453 to i64*
  %454 = load i64, i64* %RBP.i763
  %455 = sub i64 %454, 101
  %456 = load i8, i8* %CL.i762
  %457 = zext i8 %456 to i64
  %458 = load i64, i64* %PC.i761
  %459 = add i64 %458, 3
  store i64 %459, i64* %PC.i761
  %460 = inttoptr i64 %455 to i8*
  store i8 %456, i8* %460
  store %struct.Memory* %loadMem_475ae7, %struct.Memory** %MEMORY
  %loadMem_475aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 33
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %463 to i64*
  %464 = load i64, i64* %PC.i760
  %465 = add i64 %464, 24
  %466 = load i64, i64* %PC.i760
  %467 = add i64 %466, 6
  %468 = load i64, i64* %PC.i760
  %469 = add i64 %468, 6
  store i64 %469, i64* %PC.i760
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %471 = load i8, i8* %470, align 1
  store i8 %471, i8* %BRANCH_TAKEN, align 1
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %473 = icmp ne i8 %471, 0
  %474 = select i1 %473, i64 %465, i64 %467
  store i64 %474, i64* %472, align 8
  store %struct.Memory* %loadMem_475aea, %struct.Memory** %MEMORY
  %loadBr_475aea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_475aea = icmp eq i8 %loadBr_475aea, 1
  br i1 %cmpBr_475aea, label %block_.L_475b02, label %block_475af0

block_475af0:                                     ; preds = %routine_idivl__esi.exit
  %loadMem_475af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 33
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %477 to i64*
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 1
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %RAX.i759 = bitcast %union.anon* %480 to i64*
  %481 = load i64, i64* %PC.i758
  %482 = add i64 %481, 8
  store i64 %482, i64* %PC.i758
  %483 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %483, i64* %RAX.i759, align 8
  store %struct.Memory* %loadMem_475af0, %struct.Memory** %MEMORY
  %loadMem_475af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 33
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %486 to i64*
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 1
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %RAX.i757 = bitcast %union.anon* %489 to i64*
  %490 = load i64, i64* %RAX.i757
  %491 = add i64 %490, 72
  %492 = load i64, i64* %PC.i756
  %493 = add i64 %492, 4
  store i64 %493, i64* %PC.i756
  %494 = inttoptr i64 %491 to i32*
  %495 = load i32, i32* %494
  %496 = sub i32 %495, 3
  %497 = icmp ult i32 %495, 3
  %498 = zext i1 %497 to i8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %498, i8* %499, align 1
  %500 = and i32 %496, 255
  %501 = call i32 @llvm.ctpop.i32(i32 %500)
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  %504 = xor i8 %503, 1
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %504, i8* %505, align 1
  %506 = xor i32 %495, 3
  %507 = xor i32 %506, %496
  %508 = lshr i32 %507, 4
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %510, i8* %511, align 1
  %512 = icmp eq i32 %496, 0
  %513 = zext i1 %512 to i8
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %513, i8* %514, align 1
  %515 = lshr i32 %496, 31
  %516 = trunc i32 %515 to i8
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %516, i8* %517, align 1
  %518 = lshr i32 %495, 31
  %519 = xor i32 %515, %518
  %520 = add i32 %519, %518
  %521 = icmp eq i32 %520, 2
  %522 = zext i1 %521 to i8
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %522, i8* %523, align 1
  store %struct.Memory* %loadMem_475af8, %struct.Memory** %MEMORY
  %loadMem_475afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 33
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 5
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %530 = bitcast %union.anon* %529 to %struct.anon.2*
  %CL.i755 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %530, i32 0, i32 0
  %531 = load i64, i64* %PC.i754
  %532 = add i64 %531, 3
  store i64 %532, i64* %PC.i754
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %534 = load i8, i8* %533, align 1
  store i8 %534, i8* %CL.i755, align 1
  store %struct.Memory* %loadMem_475afc, %struct.Memory** %MEMORY
  %loadMem_475aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 33
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %537 to i64*
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 5
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %541 = bitcast %union.anon* %540 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %541, i32 0, i32 0
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 15
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %544 to i64*
  %545 = load i64, i64* %RBP.i753
  %546 = sub i64 %545, 101
  %547 = load i8, i8* %CL.i
  %548 = zext i8 %547 to i64
  %549 = load i64, i64* %PC.i752
  %550 = add i64 %549, 3
  store i64 %550, i64* %PC.i752
  %551 = inttoptr i64 %546 to i8*
  store i8 %547, i8* %551
  store %struct.Memory* %loadMem_475aff, %struct.Memory** %MEMORY
  br label %block_.L_475b02

block_.L_475b02:                                  ; preds = %block_475af0, %routine_idivl__esi.exit
  %loadMem_475b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 33
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %554 to i64*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 1
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %558 = bitcast %union.anon* %557 to %struct.anon.2*
  %AL.i750 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %558, i32 0, i32 0
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 15
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %561 to i64*
  %562 = load i64, i64* %RBP.i751
  %563 = sub i64 %562, 101
  %564 = load i64, i64* %PC.i749
  %565 = add i64 %564, 3
  store i64 %565, i64* %PC.i749
  %566 = inttoptr i64 %563 to i8*
  %567 = load i8, i8* %566
  store i8 %567, i8* %AL.i750, align 1
  store %struct.Memory* %loadMem_475b02, %struct.Memory** %MEMORY
  %loadMem_475b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 33
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 1
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %574 = bitcast %union.anon* %573 to %struct.anon.2*
  %AL.i748 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %574, i32 0, i32 0
  %575 = load i8, i8* %AL.i748
  %576 = zext i8 %575 to i64
  %577 = load i64, i64* %PC.i747
  %578 = add i64 %577, 2
  store i64 %578, i64* %PC.i747
  %579 = and i64 1, %576
  %580 = trunc i64 %579 to i8
  store i8 %580, i8* %AL.i748, align 1
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %581, align 1
  %582 = trunc i64 %579 to i32
  %583 = and i32 %582, 255
  %584 = call i32 @llvm.ctpop.i32(i32 %583)
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %587, i8* %588, align 1
  %589 = icmp eq i8 %580, 0
  %590 = zext i1 %589 to i8
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %590, i8* %591, align 1
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %592, align 1
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %593, align 1
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %594, align 1
  store %struct.Memory* %loadMem_475b05, %struct.Memory** %MEMORY
  %loadMem_475b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 33
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %597 to i64*
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 1
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %601 = bitcast %union.anon* %600 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %601, i32 0, i32 0
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 5
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %RCX.i746 = bitcast %union.anon* %604 to i64*
  %605 = load i8, i8* %AL.i
  %606 = zext i8 %605 to i64
  %607 = load i64, i64* %PC.i745
  %608 = add i64 %607, 3
  store i64 %608, i64* %PC.i745
  %609 = and i64 %606, 255
  store i64 %609, i64* %RCX.i746, align 8
  store %struct.Memory* %loadMem_475b07, %struct.Memory** %MEMORY
  %loadMem_475b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 33
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %612 to i64*
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 5
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %ECX.i743 = bitcast %union.anon* %615 to i32*
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 15
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %RBP.i744 = bitcast %union.anon* %618 to i64*
  %619 = load i64, i64* %RBP.i744
  %620 = sub i64 %619, 88
  %621 = load i32, i32* %ECX.i743
  %622 = zext i32 %621 to i64
  %623 = load i64, i64* %PC.i742
  %624 = add i64 %623, 3
  store i64 %624, i64* %PC.i742
  %625 = inttoptr i64 %620 to i32*
  store i32 %621, i32* %625
  store %struct.Memory* %loadMem_475b0a, %struct.Memory** %MEMORY
  %loadMem_475b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 33
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %628 to i64*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 7
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %RDX.i740 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 15
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RBP.i741 = bitcast %union.anon* %634 to i64*
  %635 = load i64, i64* %RBP.i741
  %636 = sub i64 %635, 16
  %637 = load i64, i64* %PC.i739
  %638 = add i64 %637, 4
  store i64 %638, i64* %PC.i739
  %639 = inttoptr i64 %636 to i64*
  %640 = load i64, i64* %639
  store i64 %640, i64* %RDX.i740, align 8
  store %struct.Memory* %loadMem_475b0d, %struct.Memory** %MEMORY
  %loadMem_475b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %642 = getelementptr inbounds %struct.GPR, %struct.GPR* %641, i32 0, i32 33
  %643 = getelementptr inbounds %struct.Reg, %struct.Reg* %642, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %643 to i64*
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 7
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %RDX.i738 = bitcast %union.anon* %646 to i64*
  %647 = load i64, i64* %RDX.i738
  %648 = add i64 %647, 6388
  %649 = load i64, i64* %PC.i737
  %650 = add i64 %649, 7
  store i64 %650, i64* %PC.i737
  %651 = inttoptr i64 %648 to i32*
  %652 = load i32, i32* %651
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %653, align 1
  %654 = and i32 %652, 255
  %655 = call i32 @llvm.ctpop.i32(i32 %654)
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  %658 = xor i8 %657, 1
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %658, i8* %659, align 1
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %660, align 1
  %661 = icmp eq i32 %652, 0
  %662 = zext i1 %661 to i8
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %662, i8* %663, align 1
  %664 = lshr i32 %652, 31
  %665 = trunc i32 %664 to i8
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %665, i8* %666, align 1
  %667 = lshr i32 %652, 31
  %668 = xor i32 %664, %667
  %669 = add i32 %668, %667
  %670 = icmp eq i32 %669, 2
  %671 = zext i1 %670 to i8
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %671, i8* %672, align 1
  store %struct.Memory* %loadMem_475b11, %struct.Memory** %MEMORY
  %loadMem_475b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 33
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %675 to i64*
  %676 = load i64, i64* %PC.i736
  %677 = add i64 %676, 11
  %678 = load i64, i64* %PC.i736
  %679 = add i64 %678, 6
  %680 = load i64, i64* %PC.i736
  %681 = add i64 %680, 6
  store i64 %681, i64* %PC.i736
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %683 = load i8, i8* %682, align 1
  store i8 %683, i8* %BRANCH_TAKEN, align 1
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %685 = icmp ne i8 %683, 0
  %686 = select i1 %685, i64 %677, i64 %679
  store i64 %686, i64* %684, align 8
  store %struct.Memory* %loadMem_475b18, %struct.Memory** %MEMORY
  %loadBr_475b18 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_475b18 = icmp eq i8 %loadBr_475b18, 1
  br i1 %cmpBr_475b18, label %block_.L_475b23, label %block_475b1e

block_475b1e:                                     ; preds = %block_.L_475b02
  %loadMem_475b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 33
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %689 to i64*
  %690 = load i64, i64* %PC.i735
  %691 = add i64 %690, 1224
  %692 = load i64, i64* %PC.i735
  %693 = add i64 %692, 5
  store i64 %693, i64* %PC.i735
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %691, i64* %694, align 8
  store %struct.Memory* %loadMem_475b1e, %struct.Memory** %MEMORY
  br label %block_.L_475fe6

block_.L_475b23:                                  ; preds = %block_.L_475b02
  %loadMem_475b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 33
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %697 to i64*
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 1
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %RAX.i733 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 15
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %RBP.i734 = bitcast %union.anon* %703 to i64*
  %704 = load i64, i64* %RBP.i734
  %705 = sub i64 %704, 16
  %706 = load i64, i64* %PC.i732
  %707 = add i64 %706, 4
  store i64 %707, i64* %PC.i732
  %708 = inttoptr i64 %705 to i64*
  %709 = load i64, i64* %708
  store i64 %709, i64* %RAX.i733, align 8
  store %struct.Memory* %loadMem_475b23, %struct.Memory** %MEMORY
  %loadMem_475b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 1
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %RAX.i731 = bitcast %union.anon* %715 to i64*
  %716 = load i64, i64* %RAX.i731
  %717 = add i64 %716, 6560
  %718 = load i64, i64* %PC.i730
  %719 = add i64 %718, 7
  store i64 %719, i64* %PC.i730
  %720 = inttoptr i64 %717 to i32*
  %721 = load i32, i32* %720
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %722, align 1
  %723 = and i32 %721, 255
  %724 = call i32 @llvm.ctpop.i32(i32 %723)
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  %727 = xor i8 %726, 1
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %727, i8* %728, align 1
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %729, align 1
  %730 = icmp eq i32 %721, 0
  %731 = zext i1 %730 to i8
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %731, i8* %732, align 1
  %733 = lshr i32 %721, 31
  %734 = trunc i32 %733 to i8
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %734, i8* %735, align 1
  %736 = lshr i32 %721, 31
  %737 = xor i32 %733, %736
  %738 = add i32 %737, %736
  %739 = icmp eq i32 %738, 2
  %740 = zext i1 %739 to i8
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %740, i8* %741, align 1
  store %struct.Memory* %loadMem_475b27, %struct.Memory** %MEMORY
  %loadMem_475b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 33
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %744 to i64*
  %745 = load i64, i64* %PC.i729
  %746 = add i64 %745, 160
  %747 = load i64, i64* %PC.i729
  %748 = add i64 %747, 6
  %749 = load i64, i64* %PC.i729
  %750 = add i64 %749, 6
  store i64 %750, i64* %PC.i729
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %752 = load i8, i8* %751, align 1
  store i8 %752, i8* %BRANCH_TAKEN, align 1
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %754 = icmp ne i8 %752, 0
  %755 = select i1 %754, i64 %746, i64 %748
  store i64 %755, i64* %753, align 8
  store %struct.Memory* %loadMem_475b2e, %struct.Memory** %MEMORY
  %loadBr_475b2e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_475b2e = icmp eq i8 %loadBr_475b2e, 1
  br i1 %cmpBr_475b2e, label %block_.L_475bce, label %block_475b34

block_475b34:                                     ; preds = %block_.L_475b23
  %loadMem_475b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 33
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %758 to i64*
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 1
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %RAX.i728 = bitcast %union.anon* %761 to i64*
  %762 = load i64, i64* %PC.i727
  %763 = add i64 %762, 5
  store i64 %763, i64* %PC.i727
  store i64 2, i64* %RAX.i728, align 8
  store %struct.Memory* %loadMem_475b34, %struct.Memory** %MEMORY
  %loadMem_475b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 33
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %766 to i64*
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 5
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %RCX.i725 = bitcast %union.anon* %769 to i64*
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 15
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %RBP.i726 = bitcast %union.anon* %772 to i64*
  %773 = load i64, i64* %RBP.i726
  %774 = sub i64 %773, 16
  %775 = load i64, i64* %PC.i724
  %776 = add i64 %775, 4
  store i64 %776, i64* %PC.i724
  %777 = inttoptr i64 %774 to i64*
  %778 = load i64, i64* %777
  store i64 %778, i64* %RCX.i725, align 8
  store %struct.Memory* %loadMem_475b39, %struct.Memory** %MEMORY
  %loadMem_475b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 33
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %781 to i64*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 5
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %RCX.i723 = bitcast %union.anon* %784 to i64*
  %785 = load i64, i64* %RCX.i723
  %786 = add i64 %785, 6552
  %787 = load i64, i64* %PC.i722
  %788 = add i64 %787, 7
  store i64 %788, i64* %PC.i722
  %789 = inttoptr i64 %786 to i32*
  %790 = load i32, i32* %789
  %791 = sext i32 %790 to i64
  store i64 %791, i64* %RCX.i723, align 8
  store %struct.Memory* %loadMem_475b3d, %struct.Memory** %MEMORY
  %loadMem_475b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 5
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RCX.i719 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 7
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %RDX.i720 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 15
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %RBP.i721 = bitcast %union.anon* %803 to i64*
  %804 = load i64, i64* %RBP.i721
  %805 = load i64, i64* %RCX.i719
  %806 = mul i64 %805, 4
  %807 = add i64 %804, -48
  %808 = add i64 %807, %806
  %809 = load i64, i64* %PC.i718
  %810 = add i64 %809, 4
  store i64 %810, i64* %PC.i718
  %811 = inttoptr i64 %808 to i32*
  %812 = load i32, i32* %811
  %813 = zext i32 %812 to i64
  store i64 %813, i64* %RDX.i720, align 8
  store %struct.Memory* %loadMem_475b44, %struct.Memory** %MEMORY
  %loadMem_475b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 33
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 5
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %RCX.i716 = bitcast %union.anon* %819 to i64*
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 15
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %RBP.i717 = bitcast %union.anon* %822 to i64*
  %823 = load i64, i64* %RBP.i717
  %824 = sub i64 %823, 16
  %825 = load i64, i64* %PC.i715
  %826 = add i64 %825, 4
  store i64 %826, i64* %PC.i715
  %827 = inttoptr i64 %824 to i64*
  %828 = load i64, i64* %827
  store i64 %828, i64* %RCX.i716, align 8
  store %struct.Memory* %loadMem_475b48, %struct.Memory** %MEMORY
  %loadMem_475b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 33
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 5
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RCX.i713 = bitcast %union.anon* %834 to i64*
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 7
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %RDX.i714 = bitcast %union.anon* %837 to i64*
  %838 = load i64, i64* %RDX.i714
  %839 = load i64, i64* %RCX.i713
  %840 = add i64 %839, 6564
  %841 = load i64, i64* %PC.i712
  %842 = add i64 %841, 7
  store i64 %842, i64* %PC.i712
  %843 = inttoptr i64 %840 to i32*
  %844 = load i32, i32* %843
  %845 = shl i64 %838, 32
  %846 = ashr exact i64 %845, 32
  %847 = sext i32 %844 to i64
  %848 = mul i64 %847, %846
  %849 = trunc i64 %848 to i32
  %850 = and i64 %848, 4294967295
  store i64 %850, i64* %RDX.i714, align 8
  %851 = shl i64 %848, 32
  %852 = ashr exact i64 %851, 32
  %853 = icmp ne i64 %852, %848
  %854 = zext i1 %853 to i8
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %854, i8* %855, align 1
  %856 = and i32 %849, 255
  %857 = call i32 @llvm.ctpop.i32(i32 %856)
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  %860 = xor i8 %859, 1
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %860, i8* %861, align 1
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %862, align 1
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %863, align 1
  %864 = lshr i32 %849, 31
  %865 = trunc i32 %864 to i8
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %865, i8* %866, align 1
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %854, i8* %867, align 1
  store %struct.Memory* %loadMem_475b4c, %struct.Memory** %MEMORY
  %loadMem_475b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 33
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %870 to i64*
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 7
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %EDX.i710 = bitcast %union.anon* %873 to i32*
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 15
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %876 to i64*
  %877 = load i64, i64* %RBP.i711
  %878 = sub i64 %877, 68
  %879 = load i32, i32* %EDX.i710
  %880 = zext i32 %879 to i64
  %881 = load i64, i64* %PC.i709
  %882 = add i64 %881, 3
  store i64 %882, i64* %PC.i709
  %883 = inttoptr i64 %878 to i32*
  store i32 %879, i32* %883
  store %struct.Memory* %loadMem_475b53, %struct.Memory** %MEMORY
  %loadMem_475b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 33
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 5
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RCX.i707 = bitcast %union.anon* %889 to i64*
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 15
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %RBP.i708 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %RBP.i708
  %894 = sub i64 %893, 16
  %895 = load i64, i64* %PC.i706
  %896 = add i64 %895, 4
  store i64 %896, i64* %PC.i706
  %897 = inttoptr i64 %894 to i64*
  %898 = load i64, i64* %897
  store i64 %898, i64* %RCX.i707, align 8
  store %struct.Memory* %loadMem_475b56, %struct.Memory** %MEMORY
  %loadMem_475b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %901 to i64*
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 5
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %RCX.i705 = bitcast %union.anon* %904 to i64*
  %905 = load i64, i64* %RCX.i705
  %906 = add i64 %905, 6552
  %907 = load i64, i64* %PC.i704
  %908 = add i64 %907, 7
  store i64 %908, i64* %PC.i704
  %909 = inttoptr i64 %906 to i32*
  %910 = load i32, i32* %909
  %911 = sext i32 %910 to i64
  store i64 %911, i64* %RCX.i705, align 8
  store %struct.Memory* %loadMem_475b5a, %struct.Memory** %MEMORY
  %loadMem_475b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 33
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %914 to i64*
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 5
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %RCX.i701 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 7
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %RDX.i702 = bitcast %union.anon* %920 to i64*
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 15
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %RBP.i703 = bitcast %union.anon* %923 to i64*
  %924 = load i64, i64* %RBP.i703
  %925 = load i64, i64* %RCX.i701
  %926 = mul i64 %925, 4
  %927 = add i64 %924, -48
  %928 = add i64 %927, %926
  %929 = load i64, i64* %PC.i700
  %930 = add i64 %929, 4
  store i64 %930, i64* %PC.i700
  %931 = inttoptr i64 %928 to i32*
  %932 = load i32, i32* %931
  %933 = zext i32 %932 to i64
  store i64 %933, i64* %RDX.i702, align 8
  store %struct.Memory* %loadMem_475b61, %struct.Memory** %MEMORY
  %loadMem_475b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 33
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 5
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RCX.i698 = bitcast %union.anon* %939 to i64*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 15
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %RBP.i699 = bitcast %union.anon* %942 to i64*
  %943 = load i64, i64* %RBP.i699
  %944 = sub i64 %943, 16
  %945 = load i64, i64* %PC.i697
  %946 = add i64 %945, 4
  store i64 %946, i64* %PC.i697
  %947 = inttoptr i64 %944 to i64*
  %948 = load i64, i64* %947
  store i64 %948, i64* %RCX.i698, align 8
  store %struct.Memory* %loadMem_475b65, %struct.Memory** %MEMORY
  %loadMem_475b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 33
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %951 to i64*
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 5
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %RCX.i695 = bitcast %union.anon* %954 to i64*
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 7
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %RDX.i696 = bitcast %union.anon* %957 to i64*
  %958 = load i64, i64* %RDX.i696
  %959 = load i64, i64* %RCX.i695
  %960 = add i64 %959, 6568
  %961 = load i64, i64* %PC.i694
  %962 = add i64 %961, 7
  store i64 %962, i64* %PC.i694
  %963 = inttoptr i64 %960 to i32*
  %964 = load i32, i32* %963
  %965 = shl i64 %958, 32
  %966 = ashr exact i64 %965, 32
  %967 = sext i32 %964 to i64
  %968 = mul i64 %967, %966
  %969 = trunc i64 %968 to i32
  %970 = and i64 %968, 4294967295
  store i64 %970, i64* %RDX.i696, align 8
  %971 = shl i64 %968, 32
  %972 = ashr exact i64 %971, 32
  %973 = icmp ne i64 %972, %968
  %974 = zext i1 %973 to i8
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %974, i8* %975, align 1
  %976 = and i32 %969, 255
  %977 = call i32 @llvm.ctpop.i32(i32 %976)
  %978 = trunc i32 %977 to i8
  %979 = and i8 %978, 1
  %980 = xor i8 %979, 1
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %980, i8* %981, align 1
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %982, align 1
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %983, align 1
  %984 = lshr i32 %969, 31
  %985 = trunc i32 %984 to i8
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %985, i8* %986, align 1
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %974, i8* %987, align 1
  store %struct.Memory* %loadMem_475b69, %struct.Memory** %MEMORY
  %loadMem_475b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 33
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %990 to i64*
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 7
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %EDX.i692 = bitcast %union.anon* %993 to i32*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 15
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RBP.i693 = bitcast %union.anon* %996 to i64*
  %997 = load i64, i64* %RBP.i693
  %998 = sub i64 %997, 72
  %999 = load i32, i32* %EDX.i692
  %1000 = zext i32 %999 to i64
  %1001 = load i64, i64* %PC.i691
  %1002 = add i64 %1001, 3
  store i64 %1002, i64* %PC.i691
  %1003 = inttoptr i64 %998 to i32*
  store i32 %999, i32* %1003
  store %struct.Memory* %loadMem_475b70, %struct.Memory** %MEMORY
  %loadMem_475b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 33
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 5
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RCX.i689 = bitcast %union.anon* %1009 to i64*
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 15
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %RBP.i690 = bitcast %union.anon* %1012 to i64*
  %1013 = load i64, i64* %RBP.i690
  %1014 = sub i64 %1013, 16
  %1015 = load i64, i64* %PC.i688
  %1016 = add i64 %1015, 4
  store i64 %1016, i64* %PC.i688
  %1017 = inttoptr i64 %1014 to i64*
  %1018 = load i64, i64* %1017
  store i64 %1018, i64* %RCX.i689, align 8
  store %struct.Memory* %loadMem_475b73, %struct.Memory** %MEMORY
  %loadMem_475b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 33
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %1021 to i64*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 5
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %RCX.i687 = bitcast %union.anon* %1024 to i64*
  %1025 = load i64, i64* %RCX.i687
  %1026 = add i64 %1025, 6552
  %1027 = load i64, i64* %PC.i686
  %1028 = add i64 %1027, 7
  store i64 %1028, i64* %PC.i686
  %1029 = inttoptr i64 %1026 to i32*
  %1030 = load i32, i32* %1029
  %1031 = sext i32 %1030 to i64
  store i64 %1031, i64* %RCX.i687, align 8
  store %struct.Memory* %loadMem_475b77, %struct.Memory** %MEMORY
  %loadMem_475b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 33
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %1034 to i64*
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 5
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %RCX.i683 = bitcast %union.anon* %1037 to i64*
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 7
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %RDX.i684 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 15
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %RBP.i685 = bitcast %union.anon* %1043 to i64*
  %1044 = load i64, i64* %RBP.i685
  %1045 = load i64, i64* %RCX.i683
  %1046 = mul i64 %1045, 4
  %1047 = add i64 %1044, -64
  %1048 = add i64 %1047, %1046
  %1049 = load i64, i64* %PC.i682
  %1050 = add i64 %1049, 4
  store i64 %1050, i64* %PC.i682
  %1051 = inttoptr i64 %1048 to i32*
  %1052 = load i32, i32* %1051
  %1053 = zext i32 %1052 to i64
  store i64 %1053, i64* %RDX.i684, align 8
  store %struct.Memory* %loadMem_475b7e, %struct.Memory** %MEMORY
  %loadMem_475b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 33
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 5
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %RCX.i680 = bitcast %union.anon* %1059 to i64*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 15
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %RBP.i681 = bitcast %union.anon* %1062 to i64*
  %1063 = load i64, i64* %RBP.i681
  %1064 = sub i64 %1063, 16
  %1065 = load i64, i64* %PC.i679
  %1066 = add i64 %1065, 4
  store i64 %1066, i64* %PC.i679
  %1067 = inttoptr i64 %1064 to i64*
  %1068 = load i64, i64* %1067
  store i64 %1068, i64* %RCX.i680, align 8
  store %struct.Memory* %loadMem_475b82, %struct.Memory** %MEMORY
  %loadMem_475b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 33
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %1071 to i64*
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 1
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %EAX.i677 = bitcast %union.anon* %1074 to i32*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 9
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %RSI.i678 = bitcast %union.anon* %1077 to i64*
  %1078 = load i32, i32* %EAX.i677
  %1079 = zext i32 %1078 to i64
  %1080 = load i64, i64* %PC.i676
  %1081 = add i64 %1080, 2
  store i64 %1081, i64* %PC.i676
  %1082 = and i64 %1079, 4294967295
  store i64 %1082, i64* %RSI.i678, align 8
  store %struct.Memory* %loadMem_475b86, %struct.Memory** %MEMORY
  %loadMem_475b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 33
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %1085 to i64*
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 5
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %RCX.i674 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 9
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %RSI.i675 = bitcast %union.anon* %1091 to i64*
  %1092 = load i64, i64* %RSI.i675
  %1093 = load i64, i64* %RCX.i674
  %1094 = add i64 %1093, 6556
  %1095 = load i64, i64* %PC.i673
  %1096 = add i64 %1095, 6
  store i64 %1096, i64* %PC.i673
  %1097 = trunc i64 %1092 to i32
  %1098 = inttoptr i64 %1094 to i32*
  %1099 = load i32, i32* %1098
  %1100 = sub i32 %1097, %1099
  %1101 = zext i32 %1100 to i64
  store i64 %1101, i64* %RSI.i675, align 8
  %1102 = icmp ult i32 %1097, %1099
  %1103 = zext i1 %1102 to i8
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1103, i8* %1104, align 1
  %1105 = and i32 %1100, 255
  %1106 = call i32 @llvm.ctpop.i32(i32 %1105)
  %1107 = trunc i32 %1106 to i8
  %1108 = and i8 %1107, 1
  %1109 = xor i8 %1108, 1
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1109, i8* %1110, align 1
  %1111 = xor i32 %1099, %1097
  %1112 = xor i32 %1111, %1100
  %1113 = lshr i32 %1112, 4
  %1114 = trunc i32 %1113 to i8
  %1115 = and i8 %1114, 1
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1115, i8* %1116, align 1
  %1117 = icmp eq i32 %1100, 0
  %1118 = zext i1 %1117 to i8
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1118, i8* %1119, align 1
  %1120 = lshr i32 %1100, 31
  %1121 = trunc i32 %1120 to i8
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1121, i8* %1122, align 1
  %1123 = lshr i32 %1097, 31
  %1124 = lshr i32 %1099, 31
  %1125 = xor i32 %1124, %1123
  %1126 = xor i32 %1120, %1123
  %1127 = add i32 %1126, %1125
  %1128 = icmp eq i32 %1127, 2
  %1129 = zext i1 %1128 to i8
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1129, i8* %1130, align 1
  store %struct.Memory* %loadMem_475b88, %struct.Memory** %MEMORY
  %loadMem_475b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 33
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %1133 to i64*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 9
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %ESI.i671 = bitcast %union.anon* %1136 to i32*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 7
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %RDX.i672 = bitcast %union.anon* %1139 to i64*
  %1140 = load i64, i64* %RDX.i672
  %1141 = load i32, i32* %ESI.i671
  %1142 = zext i32 %1141 to i64
  %1143 = load i64, i64* %PC.i670
  %1144 = add i64 %1143, 3
  store i64 %1144, i64* %PC.i670
  %1145 = shl i64 %1140, 32
  %1146 = ashr exact i64 %1145, 32
  %1147 = shl i64 %1142, 32
  %1148 = ashr exact i64 %1147, 32
  %1149 = mul i64 %1148, %1146
  %1150 = trunc i64 %1149 to i32
  %1151 = and i64 %1149, 4294967295
  store i64 %1151, i64* %RDX.i672, align 8
  %1152 = shl i64 %1149, 32
  %1153 = ashr exact i64 %1152, 32
  %1154 = icmp ne i64 %1153, %1149
  %1155 = zext i1 %1154 to i8
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1155, i8* %1156, align 1
  %1157 = and i32 %1150, 255
  %1158 = call i32 @llvm.ctpop.i32(i32 %1157)
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  %1161 = xor i8 %1160, 1
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1161, i8* %1162, align 1
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1163, align 1
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1164, align 1
  %1165 = lshr i32 %1150, 31
  %1166 = trunc i32 %1165 to i8
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1166, i8* %1167, align 1
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1155, i8* %1168, align 1
  store %struct.Memory* %loadMem_475b8e, %struct.Memory** %MEMORY
  %loadMem_475b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 33
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %1171 to i64*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 5
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %RCX.i668 = bitcast %union.anon* %1174 to i64*
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 15
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %RBP.i669 = bitcast %union.anon* %1177 to i64*
  %1178 = load i64, i64* %RBP.i669
  %1179 = sub i64 %1178, 16
  %1180 = load i64, i64* %PC.i667
  %1181 = add i64 %1180, 4
  store i64 %1181, i64* %PC.i667
  %1182 = inttoptr i64 %1179 to i64*
  %1183 = load i64, i64* %1182
  store i64 %1183, i64* %RCX.i668, align 8
  store %struct.Memory* %loadMem_475b91, %struct.Memory** %MEMORY
  %loadMem_475b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 33
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %1186 to i64*
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 5
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %RCX.i665 = bitcast %union.anon* %1189 to i64*
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 7
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %RDX.i666 = bitcast %union.anon* %1192 to i64*
  %1193 = load i64, i64* %RDX.i666
  %1194 = load i64, i64* %RCX.i665
  %1195 = add i64 %1194, 6572
  %1196 = load i64, i64* %PC.i664
  %1197 = add i64 %1196, 7
  store i64 %1197, i64* %PC.i664
  %1198 = inttoptr i64 %1195 to i32*
  %1199 = load i32, i32* %1198
  %1200 = shl i64 %1193, 32
  %1201 = ashr exact i64 %1200, 32
  %1202 = sext i32 %1199 to i64
  %1203 = mul i64 %1202, %1201
  %1204 = trunc i64 %1203 to i32
  %1205 = and i64 %1203, 4294967295
  store i64 %1205, i64* %RDX.i666, align 8
  %1206 = shl i64 %1203, 32
  %1207 = ashr exact i64 %1206, 32
  %1208 = icmp ne i64 %1207, %1203
  %1209 = zext i1 %1208 to i8
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1209, i8* %1210, align 1
  %1211 = and i32 %1204, 255
  %1212 = call i32 @llvm.ctpop.i32(i32 %1211)
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  %1215 = xor i8 %1214, 1
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1215, i8* %1216, align 1
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1217, align 1
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1218, align 1
  %1219 = lshr i32 %1204, 31
  %1220 = trunc i32 %1219 to i8
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1220, i8* %1221, align 1
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1209, i8* %1222, align 1
  store %struct.Memory* %loadMem_475b95, %struct.Memory** %MEMORY
  %loadMem_475b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 33
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %1225 to i64*
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 7
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %EDX.i662 = bitcast %union.anon* %1228 to i32*
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1230 = getelementptr inbounds %struct.GPR, %struct.GPR* %1229, i32 0, i32 15
  %1231 = getelementptr inbounds %struct.Reg, %struct.Reg* %1230, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %1231 to i64*
  %1232 = load i64, i64* %RBP.i663
  %1233 = sub i64 %1232, 76
  %1234 = load i32, i32* %EDX.i662
  %1235 = zext i32 %1234 to i64
  %1236 = load i64, i64* %PC.i661
  %1237 = add i64 %1236, 3
  store i64 %1237, i64* %PC.i661
  %1238 = inttoptr i64 %1233 to i32*
  store i32 %1234, i32* %1238
  store %struct.Memory* %loadMem_475b9c, %struct.Memory** %MEMORY
  %loadMem_475b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 33
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %1241 to i64*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 5
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %RCX.i659 = bitcast %union.anon* %1244 to i64*
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 15
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %1247 to i64*
  %1248 = load i64, i64* %RBP.i660
  %1249 = sub i64 %1248, 16
  %1250 = load i64, i64* %PC.i658
  %1251 = add i64 %1250, 4
  store i64 %1251, i64* %PC.i658
  %1252 = inttoptr i64 %1249 to i64*
  %1253 = load i64, i64* %1252
  store i64 %1253, i64* %RCX.i659, align 8
  store %struct.Memory* %loadMem_475b9f, %struct.Memory** %MEMORY
  %loadMem_475ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 5
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %RCX.i657 = bitcast %union.anon* %1259 to i64*
  %1260 = load i64, i64* %RCX.i657
  %1261 = add i64 %1260, 6552
  %1262 = load i64, i64* %PC.i656
  %1263 = add i64 %1262, 7
  store i64 %1263, i64* %PC.i656
  %1264 = inttoptr i64 %1261 to i32*
  %1265 = load i32, i32* %1264
  %1266 = sext i32 %1265 to i64
  store i64 %1266, i64* %RCX.i657, align 8
  store %struct.Memory* %loadMem_475ba3, %struct.Memory** %MEMORY
  %loadMem_475baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 33
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %1269 to i64*
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 5
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %RCX.i653 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 7
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %RDX.i654 = bitcast %union.anon* %1275 to i64*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 15
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RBP.i655 = bitcast %union.anon* %1278 to i64*
  %1279 = load i64, i64* %RBP.i655
  %1280 = load i64, i64* %RCX.i653
  %1281 = mul i64 %1280, 4
  %1282 = add i64 %1279, -64
  %1283 = add i64 %1282, %1281
  %1284 = load i64, i64* %PC.i652
  %1285 = add i64 %1284, 4
  store i64 %1285, i64* %PC.i652
  %1286 = inttoptr i64 %1283 to i32*
  %1287 = load i32, i32* %1286
  %1288 = zext i32 %1287 to i64
  store i64 %1288, i64* %RDX.i654, align 8
  store %struct.Memory* %loadMem_475baa, %struct.Memory** %MEMORY
  %loadMem_475bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 33
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %1291 to i64*
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 5
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %RCX.i650 = bitcast %union.anon* %1294 to i64*
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1296 = getelementptr inbounds %struct.GPR, %struct.GPR* %1295, i32 0, i32 15
  %1297 = getelementptr inbounds %struct.Reg, %struct.Reg* %1296, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %1297 to i64*
  %1298 = load i64, i64* %RBP.i651
  %1299 = sub i64 %1298, 16
  %1300 = load i64, i64* %PC.i649
  %1301 = add i64 %1300, 4
  store i64 %1301, i64* %PC.i649
  %1302 = inttoptr i64 %1299 to i64*
  %1303 = load i64, i64* %1302
  store i64 %1303, i64* %RCX.i650, align 8
  store %struct.Memory* %loadMem_475bae, %struct.Memory** %MEMORY
  %loadMem_475bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 33
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %1306 to i64*
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 1
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %1309 to i64*
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 5
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %RCX.i648 = bitcast %union.anon* %1312 to i64*
  %1313 = load i64, i64* %RAX.i647
  %1314 = load i64, i64* %RCX.i648
  %1315 = add i64 %1314, 6556
  %1316 = load i64, i64* %PC.i646
  %1317 = add i64 %1316, 6
  store i64 %1317, i64* %PC.i646
  %1318 = trunc i64 %1313 to i32
  %1319 = inttoptr i64 %1315 to i32*
  %1320 = load i32, i32* %1319
  %1321 = sub i32 %1318, %1320
  %1322 = zext i32 %1321 to i64
  store i64 %1322, i64* %RAX.i647, align 8
  %1323 = icmp ult i32 %1318, %1320
  %1324 = zext i1 %1323 to i8
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1324, i8* %1325, align 1
  %1326 = and i32 %1321, 255
  %1327 = call i32 @llvm.ctpop.i32(i32 %1326)
  %1328 = trunc i32 %1327 to i8
  %1329 = and i8 %1328, 1
  %1330 = xor i8 %1329, 1
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1330, i8* %1331, align 1
  %1332 = xor i32 %1320, %1318
  %1333 = xor i32 %1332, %1321
  %1334 = lshr i32 %1333, 4
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1336, i8* %1337, align 1
  %1338 = icmp eq i32 %1321, 0
  %1339 = zext i1 %1338 to i8
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1339, i8* %1340, align 1
  %1341 = lshr i32 %1321, 31
  %1342 = trunc i32 %1341 to i8
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1342, i8* %1343, align 1
  %1344 = lshr i32 %1318, 31
  %1345 = lshr i32 %1320, 31
  %1346 = xor i32 %1345, %1344
  %1347 = xor i32 %1341, %1344
  %1348 = add i32 %1347, %1346
  %1349 = icmp eq i32 %1348, 2
  %1350 = zext i1 %1349 to i8
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1350, i8* %1351, align 1
  store %struct.Memory* %loadMem_475bb2, %struct.Memory** %MEMORY
  %loadMem_475bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 1
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %EAX.i644 = bitcast %union.anon* %1357 to i32*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 7
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RDX.i645 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %RDX.i645
  %1362 = load i32, i32* %EAX.i644
  %1363 = zext i32 %1362 to i64
  %1364 = load i64, i64* %PC.i643
  %1365 = add i64 %1364, 3
  store i64 %1365, i64* %PC.i643
  %1366 = shl i64 %1361, 32
  %1367 = ashr exact i64 %1366, 32
  %1368 = shl i64 %1363, 32
  %1369 = ashr exact i64 %1368, 32
  %1370 = mul i64 %1369, %1367
  %1371 = trunc i64 %1370 to i32
  %1372 = and i64 %1370, 4294967295
  store i64 %1372, i64* %RDX.i645, align 8
  %1373 = shl i64 %1370, 32
  %1374 = ashr exact i64 %1373, 32
  %1375 = icmp ne i64 %1374, %1370
  %1376 = zext i1 %1375 to i8
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1376, i8* %1377, align 1
  %1378 = and i32 %1371, 255
  %1379 = call i32 @llvm.ctpop.i32(i32 %1378)
  %1380 = trunc i32 %1379 to i8
  %1381 = and i8 %1380, 1
  %1382 = xor i8 %1381, 1
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1382, i8* %1383, align 1
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1384, align 1
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1385, align 1
  %1386 = lshr i32 %1371, 31
  %1387 = trunc i32 %1386 to i8
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1387, i8* %1388, align 1
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1376, i8* %1389, align 1
  store %struct.Memory* %loadMem_475bb8, %struct.Memory** %MEMORY
  %loadMem_475bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 33
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %1392 to i64*
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 5
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %RCX.i641 = bitcast %union.anon* %1395 to i64*
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 15
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %RBP.i642 = bitcast %union.anon* %1398 to i64*
  %1399 = load i64, i64* %RBP.i642
  %1400 = sub i64 %1399, 16
  %1401 = load i64, i64* %PC.i640
  %1402 = add i64 %1401, 4
  store i64 %1402, i64* %PC.i640
  %1403 = inttoptr i64 %1400 to i64*
  %1404 = load i64, i64* %1403
  store i64 %1404, i64* %RCX.i641, align 8
  store %struct.Memory* %loadMem_475bbb, %struct.Memory** %MEMORY
  %loadMem_475bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 33
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %1407 to i64*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 5
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %RCX.i638 = bitcast %union.anon* %1410 to i64*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 7
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %RDX.i639 = bitcast %union.anon* %1413 to i64*
  %1414 = load i64, i64* %RDX.i639
  %1415 = load i64, i64* %RCX.i638
  %1416 = add i64 %1415, 6576
  %1417 = load i64, i64* %PC.i637
  %1418 = add i64 %1417, 7
  store i64 %1418, i64* %PC.i637
  %1419 = inttoptr i64 %1416 to i32*
  %1420 = load i32, i32* %1419
  %1421 = shl i64 %1414, 32
  %1422 = ashr exact i64 %1421, 32
  %1423 = sext i32 %1420 to i64
  %1424 = mul i64 %1423, %1422
  %1425 = trunc i64 %1424 to i32
  %1426 = and i64 %1424, 4294967295
  store i64 %1426, i64* %RDX.i639, align 8
  %1427 = shl i64 %1424, 32
  %1428 = ashr exact i64 %1427, 32
  %1429 = icmp ne i64 %1428, %1424
  %1430 = zext i1 %1429 to i8
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1430, i8* %1431, align 1
  %1432 = and i32 %1425, 255
  %1433 = call i32 @llvm.ctpop.i32(i32 %1432)
  %1434 = trunc i32 %1433 to i8
  %1435 = and i8 %1434, 1
  %1436 = xor i8 %1435, 1
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1436, i8* %1437, align 1
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1438, align 1
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1439, align 1
  %1440 = lshr i32 %1425, 31
  %1441 = trunc i32 %1440 to i8
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1441, i8* %1442, align 1
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1430, i8* %1443, align 1
  store %struct.Memory* %loadMem_475bbf, %struct.Memory** %MEMORY
  %loadMem_475bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 33
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %1446 to i64*
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 7
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %EDX.i635 = bitcast %union.anon* %1449 to i32*
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 15
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %1452 to i64*
  %1453 = load i64, i64* %RBP.i636
  %1454 = sub i64 %1453, 80
  %1455 = load i32, i32* %EDX.i635
  %1456 = zext i32 %1455 to i64
  %1457 = load i64, i64* %PC.i634
  %1458 = add i64 %1457, 3
  store i64 %1458, i64* %PC.i634
  %1459 = inttoptr i64 %1454 to i32*
  store i32 %1455, i32* %1459
  store %struct.Memory* %loadMem_475bc6, %struct.Memory** %MEMORY
  %loadMem_475bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 33
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %1462 to i64*
  %1463 = load i64, i64* %PC.i633
  %1464 = add i64 %1463, 33
  %1465 = load i64, i64* %PC.i633
  %1466 = add i64 %1465, 5
  store i64 %1466, i64* %PC.i633
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1464, i64* %1467, align 8
  store %struct.Memory* %loadMem_475bc9, %struct.Memory** %MEMORY
  br label %block_.L_475bea

block_.L_475bce:                                  ; preds = %block_.L_475b23
  %loadMem_475bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 33
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %1470 to i64*
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 15
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %1473 to i64*
  %1474 = load i64, i64* %RBP.i632
  %1475 = sub i64 %1474, 80
  %1476 = load i64, i64* %PC.i631
  %1477 = add i64 %1476, 7
  store i64 %1477, i64* %PC.i631
  %1478 = inttoptr i64 %1475 to i32*
  store i32 0, i32* %1478
  store %struct.Memory* %loadMem_475bce, %struct.Memory** %MEMORY
  %loadMem_475bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 33
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %1481 to i64*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 15
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %1484 to i64*
  %1485 = load i64, i64* %RBP.i630
  %1486 = sub i64 %1485, 76
  %1487 = load i64, i64* %PC.i629
  %1488 = add i64 %1487, 7
  store i64 %1488, i64* %PC.i629
  %1489 = inttoptr i64 %1486 to i32*
  store i32 0, i32* %1489
  store %struct.Memory* %loadMem_475bd5, %struct.Memory** %MEMORY
  %loadMem_475bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 33
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 15
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %1495 to i64*
  %1496 = load i64, i64* %RBP.i628
  %1497 = sub i64 %1496, 72
  %1498 = load i64, i64* %PC.i627
  %1499 = add i64 %1498, 7
  store i64 %1499, i64* %PC.i627
  %1500 = inttoptr i64 %1497 to i32*
  store i32 0, i32* %1500
  store %struct.Memory* %loadMem_475bdc, %struct.Memory** %MEMORY
  %loadMem_475be3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 33
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %1503 to i64*
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 15
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %1506 to i64*
  %1507 = load i64, i64* %RBP.i626
  %1508 = sub i64 %1507, 68
  %1509 = load i64, i64* %PC.i625
  %1510 = add i64 %1509, 7
  store i64 %1510, i64* %PC.i625
  %1511 = inttoptr i64 %1508 to i32*
  store i32 0, i32* %1511
  store %struct.Memory* %loadMem_475be3, %struct.Memory** %MEMORY
  br label %block_.L_475bea

block_.L_475bea:                                  ; preds = %block_.L_475bce, %block_475b34
  %loadMem_475bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1513 = getelementptr inbounds %struct.GPR, %struct.GPR* %1512, i32 0, i32 33
  %1514 = getelementptr inbounds %struct.Reg, %struct.Reg* %1513, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %1514 to i64*
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 1
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %RAX.i623 = bitcast %union.anon* %1517 to i64*
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1519 = getelementptr inbounds %struct.GPR, %struct.GPR* %1518, i32 0, i32 15
  %1520 = getelementptr inbounds %struct.Reg, %struct.Reg* %1519, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %1520 to i64*
  %1521 = load i64, i64* %RBP.i624
  %1522 = sub i64 %1521, 16
  %1523 = load i64, i64* %PC.i622
  %1524 = add i64 %1523, 4
  store i64 %1524, i64* %PC.i622
  %1525 = inttoptr i64 %1522 to i64*
  %1526 = load i64, i64* %1525
  store i64 %1526, i64* %RAX.i623, align 8
  store %struct.Memory* %loadMem_475bea, %struct.Memory** %MEMORY
  %loadMem_475bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 33
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %1529 to i64*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 1
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %RAX.i620 = bitcast %union.anon* %1532 to i64*
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 5
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %RCX.i621 = bitcast %union.anon* %1535 to i64*
  %1536 = load i64, i64* %RAX.i620
  %1537 = add i64 %1536, 6392
  %1538 = load i64, i64* %PC.i619
  %1539 = add i64 %1538, 6
  store i64 %1539, i64* %PC.i619
  %1540 = inttoptr i64 %1537 to i32*
  %1541 = load i32, i32* %1540
  %1542 = zext i32 %1541 to i64
  store i64 %1542, i64* %RCX.i621, align 8
  store %struct.Memory* %loadMem_475bee, %struct.Memory** %MEMORY
  %loadMem_475bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 33
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %1545 to i64*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 1
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %RAX.i617 = bitcast %union.anon* %1548 to i64*
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 15
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %1551 to i64*
  %1552 = load i64, i64* %RBP.i618
  %1553 = sub i64 %1552, 16
  %1554 = load i64, i64* %PC.i616
  %1555 = add i64 %1554, 4
  store i64 %1555, i64* %PC.i616
  %1556 = inttoptr i64 %1553 to i64*
  %1557 = load i64, i64* %1556
  store i64 %1557, i64* %RAX.i617, align 8
  store %struct.Memory* %loadMem_475bf4, %struct.Memory** %MEMORY
  %loadMem_475bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 33
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 1
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %1563 to i64*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 5
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %RCX.i615 = bitcast %union.anon* %1566 to i64*
  %1567 = load i64, i64* %RCX.i615
  %1568 = load i64, i64* %RAX.i614
  %1569 = add i64 %1568, 6396
  %1570 = load i64, i64* %PC.i613
  %1571 = add i64 %1570, 7
  store i64 %1571, i64* %PC.i613
  %1572 = inttoptr i64 %1569 to i32*
  %1573 = load i32, i32* %1572
  %1574 = shl i64 %1567, 32
  %1575 = ashr exact i64 %1574, 32
  %1576 = sext i32 %1573 to i64
  %1577 = mul i64 %1576, %1575
  %1578 = trunc i64 %1577 to i32
  %1579 = and i64 %1577, 4294967295
  store i64 %1579, i64* %RCX.i615, align 8
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
  store %struct.Memory* %loadMem_475bf8, %struct.Memory** %MEMORY
  %loadMem_475bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 33
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %1599 to i64*
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 5
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %RCX.i611 = bitcast %union.anon* %1602 to i64*
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 15
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %1605 to i64*
  %1606 = load i64, i64* %RCX.i611
  %1607 = load i64, i64* %RBP.i612
  %1608 = sub i64 %1607, 84
  %1609 = load i64, i64* %PC.i610
  %1610 = add i64 %1609, 4
  store i64 %1610, i64* %PC.i610
  %1611 = inttoptr i64 %1608 to i32*
  %1612 = load i32, i32* %1611
  %1613 = shl i64 %1606, 32
  %1614 = ashr exact i64 %1613, 32
  %1615 = sext i32 %1612 to i64
  %1616 = mul i64 %1615, %1614
  %1617 = trunc i64 %1616 to i32
  %1618 = and i64 %1616, 4294967295
  store i64 %1618, i64* %RCX.i611, align 8
  %1619 = shl i64 %1616, 32
  %1620 = ashr exact i64 %1619, 32
  %1621 = icmp ne i64 %1620, %1616
  %1622 = zext i1 %1621 to i8
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1622, i8* %1623, align 1
  %1624 = and i32 %1617, 255
  %1625 = call i32 @llvm.ctpop.i32(i32 %1624)
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = xor i8 %1627, 1
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1628, i8* %1629, align 1
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1630, align 1
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1631, align 1
  %1632 = lshr i32 %1617, 31
  %1633 = trunc i32 %1632 to i8
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1633, i8* %1634, align 1
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1622, i8* %1635, align 1
  store %struct.Memory* %loadMem_475bff, %struct.Memory** %MEMORY
  %loadMem_475c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 33
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %1638 to i64*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 5
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %ECX.i608 = bitcast %union.anon* %1641 to i32*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 11
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %RDI.i609 = bitcast %union.anon* %1644 to i64*
  %1645 = load i32, i32* %ECX.i608
  %1646 = zext i32 %1645 to i64
  %1647 = load i64, i64* %PC.i607
  %1648 = add i64 %1647, 3
  store i64 %1648, i64* %PC.i607
  %1649 = shl i64 %1646, 32
  %1650 = ashr exact i64 %1649, 32
  store i64 %1650, i64* %RDI.i609, align 8
  store %struct.Memory* %loadMem_475c03, %struct.Memory** %MEMORY
  %loadMem1_475c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 33
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %1653 to i64*
  %1654 = load i64, i64* %PC.i606
  %1655 = add i64 %1654, -477878
  %1656 = load i64, i64* %PC.i606
  %1657 = add i64 %1656, 5
  %1658 = load i64, i64* %PC.i606
  %1659 = add i64 %1658, 5
  store i64 %1659, i64* %PC.i606
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1661 = load i64, i64* %1660, align 8
  %1662 = add i64 %1661, -8
  %1663 = inttoptr i64 %1662 to i64*
  store i64 %1657, i64* %1663
  store i64 %1662, i64* %1660, align 8
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1655, i64* %1664, align 8
  store %struct.Memory* %loadMem1_475c06, %struct.Memory** %MEMORY
  %loadMem2_475c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_475c06 = load i64, i64* %3
  %1665 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %loadMem2_475c06)
  store %struct.Memory* %1665, %struct.Memory** %MEMORY
  %loadMem_475c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 33
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 5
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %ECX.i602 = bitcast %union.anon* %1671 to i32*
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 5
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %RCX.i603 = bitcast %union.anon* %1674 to i64*
  %1675 = load i64, i64* %RCX.i603
  %1676 = load i32, i32* %ECX.i602
  %1677 = zext i32 %1676 to i64
  %1678 = load i64, i64* %PC.i601
  %1679 = add i64 %1678, 2
  store i64 %1679, i64* %PC.i601
  %1680 = xor i64 %1677, %1675
  %1681 = trunc i64 %1680 to i32
  %1682 = and i64 %1680, 4294967295
  store i64 %1682, i64* %RCX.i603, align 8
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1683, align 1
  %1684 = and i32 %1681, 255
  %1685 = call i32 @llvm.ctpop.i32(i32 %1684)
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  %1688 = xor i8 %1687, 1
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1688, i8* %1689, align 1
  %1690 = icmp eq i32 %1681, 0
  %1691 = zext i1 %1690 to i8
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1691, i8* %1692, align 1
  %1693 = lshr i32 %1681, 31
  %1694 = trunc i32 %1693 to i8
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1694, i8* %1695, align 1
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1696, align 1
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1697, align 1
  store %struct.Memory* %loadMem_475c0b, %struct.Memory** %MEMORY
  %loadMem_475c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 33
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %1700 to i64*
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 5
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %ECX.i599 = bitcast %union.anon* %1703 to i32*
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 11
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %RDI.i600 = bitcast %union.anon* %1706 to i64*
  %1707 = load i32, i32* %ECX.i599
  %1708 = zext i32 %1707 to i64
  %1709 = load i64, i64* %PC.i598
  %1710 = add i64 %1709, 2
  store i64 %1710, i64* %PC.i598
  %1711 = and i64 %1708, 4294967295
  store i64 %1711, i64* %RDI.i600, align 8
  store %struct.Memory* %loadMem_475c0d, %struct.Memory** %MEMORY
  %loadMem_475c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 33
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %1714 to i64*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 1
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %RAX.i596 = bitcast %union.anon* %1717 to i64*
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 15
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %1720 to i64*
  %1721 = load i64, i64* %RBP.i597
  %1722 = sub i64 %1721, 96
  %1723 = load i64, i64* %RAX.i596
  %1724 = load i64, i64* %PC.i595
  %1725 = add i64 %1724, 4
  store i64 %1725, i64* %PC.i595
  %1726 = inttoptr i64 %1722 to i64*
  store i64 %1723, i64* %1726
  store %struct.Memory* %loadMem_475c0f, %struct.Memory** %MEMORY
  %loadMem_475c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 33
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %1729 to i64*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 1
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %RAX.i593 = bitcast %union.anon* %1732 to i64*
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 11
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %RDI.i594 = bitcast %union.anon* %1735 to i64*
  %1736 = load i64, i64* %RDI.i594
  %1737 = load i64, i64* %RAX.i593
  %1738 = load i64, i64* %PC.i592
  %1739 = add i64 %1738, 3
  store i64 %1739, i64* %PC.i592
  %1740 = sub i64 %1736, %1737
  %1741 = icmp ult i64 %1736, %1737
  %1742 = zext i1 %1741 to i8
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1742, i8* %1743, align 1
  %1744 = trunc i64 %1740 to i32
  %1745 = and i32 %1744, 255
  %1746 = call i32 @llvm.ctpop.i32(i32 %1745)
  %1747 = trunc i32 %1746 to i8
  %1748 = and i8 %1747, 1
  %1749 = xor i8 %1748, 1
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1749, i8* %1750, align 1
  %1751 = xor i64 %1737, %1736
  %1752 = xor i64 %1751, %1740
  %1753 = lshr i64 %1752, 4
  %1754 = trunc i64 %1753 to i8
  %1755 = and i8 %1754, 1
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1755, i8* %1756, align 1
  %1757 = icmp eq i64 %1740, 0
  %1758 = zext i1 %1757 to i8
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1758, i8* %1759, align 1
  %1760 = lshr i64 %1740, 63
  %1761 = trunc i64 %1760 to i8
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1761, i8* %1762, align 1
  %1763 = lshr i64 %1736, 63
  %1764 = lshr i64 %1737, 63
  %1765 = xor i64 %1764, %1763
  %1766 = xor i64 %1760, %1763
  %1767 = add i64 %1766, %1765
  %1768 = icmp eq i64 %1767, 2
  %1769 = zext i1 %1768 to i8
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1769, i8* %1770, align 1
  store %struct.Memory* %loadMem_475c13, %struct.Memory** %MEMORY
  %loadMem_475c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 33
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %1773 to i64*
  %1774 = load i64, i64* %PC.i591
  %1775 = add i64 %1774, 21
  %1776 = load i64, i64* %PC.i591
  %1777 = add i64 %1776, 6
  %1778 = load i64, i64* %PC.i591
  %1779 = add i64 %1778, 6
  store i64 %1779, i64* %PC.i591
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1781 = load i8, i8* %1780, align 1
  %1782 = icmp eq i8 %1781, 0
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %BRANCH_TAKEN, align 1
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1785 = select i1 %1782, i64 %1775, i64 %1777
  store i64 %1785, i64* %1784, align 8
  store %struct.Memory* %loadMem_475c16, %struct.Memory** %MEMORY
  %loadBr_475c16 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_475c16 = icmp eq i8 %loadBr_475c16, 1
  br i1 %cmpBr_475c16, label %block_.L_475c2b, label %block_475c1c

block_475c1c:                                     ; preds = %block_.L_475bea
  %loadMem_475c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 33
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %1788 to i64*
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 11
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %RDI.i590 = bitcast %union.anon* %1791 to i64*
  %1792 = load i64, i64* %PC.i589
  %1793 = add i64 %1792, 10
  store i64 %1793, i64* %PC.i589
  store i64 ptrtoint (%G__0x4c236c_type* @G__0x4c236c to i64), i64* %RDI.i590, align 8
  store %struct.Memory* %loadMem_475c1c, %struct.Memory** %MEMORY
  %loadMem1_475c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 33
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %1796 to i64*
  %1797 = load i64, i64* %PC.i588
  %1798 = add i64 %1797, -116790
  %1799 = load i64, i64* %PC.i588
  %1800 = add i64 %1799, 5
  %1801 = load i64, i64* %PC.i588
  %1802 = add i64 %1801, 5
  store i64 %1802, i64* %PC.i588
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1804 = load i64, i64* %1803, align 8
  %1805 = add i64 %1804, -8
  %1806 = inttoptr i64 %1805 to i64*
  store i64 %1800, i64* %1806
  store i64 %1805, i64* %1803, align 8
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1798, i64* %1807, align 8
  store %struct.Memory* %loadMem1_475c26, %struct.Memory** %MEMORY
  %loadMem2_475c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_475c26 = load i64, i64* %3
  %call2_475c26 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_475c26, %struct.Memory* %loadMem2_475c26)
  store %struct.Memory* %call2_475c26, %struct.Memory** %MEMORY
  br label %block_.L_475c2b

block_.L_475c2b:                                  ; preds = %block_475c1c, %block_.L_475bea
  %loadMem_475c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 33
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %1810 to i64*
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 15
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %RBP.i587 = bitcast %union.anon* %1813 to i64*
  %1814 = load i64, i64* %RBP.i587
  %1815 = sub i64 %1814, 88
  %1816 = load i64, i64* %PC.i586
  %1817 = add i64 %1816, 4
  store i64 %1817, i64* %PC.i586
  %1818 = inttoptr i64 %1815 to i32*
  %1819 = load i32, i32* %1818
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1820, align 1
  %1821 = and i32 %1819, 255
  %1822 = call i32 @llvm.ctpop.i32(i32 %1821)
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  %1825 = xor i8 %1824, 1
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1825, i8* %1826, align 1
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1827, align 1
  %1828 = icmp eq i32 %1819, 0
  %1829 = zext i1 %1828 to i8
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1829, i8* %1830, align 1
  %1831 = lshr i32 %1819, 31
  %1832 = trunc i32 %1831 to i8
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1832, i8* %1833, align 1
  %1834 = lshr i32 %1819, 31
  %1835 = xor i32 %1831, %1834
  %1836 = add i32 %1835, %1834
  %1837 = icmp eq i32 %1836, 2
  %1838 = zext i1 %1837 to i8
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1838, i8* %1839, align 1
  store %struct.Memory* %loadMem_475c2b, %struct.Memory** %MEMORY
  %loadMem_475c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 33
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %1842 to i64*
  %1843 = load i64, i64* %PC.i585
  %1844 = add i64 %1843, 429
  %1845 = load i64, i64* %PC.i585
  %1846 = add i64 %1845, 6
  %1847 = load i64, i64* %PC.i585
  %1848 = add i64 %1847, 6
  store i64 %1848, i64* %PC.i585
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1850 = load i8, i8* %1849, align 1
  store i8 %1850, i8* %BRANCH_TAKEN, align 1
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1852 = icmp ne i8 %1850, 0
  %1853 = select i1 %1852, i64 %1844, i64 %1846
  store i64 %1853, i64* %1851, align 8
  store %struct.Memory* %loadMem_475c2f, %struct.Memory** %MEMORY
  %loadBr_475c2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_475c2f = icmp eq i8 %loadBr_475c2f, 1
  br i1 %cmpBr_475c2f, label %block_.L_475ddc, label %block_475c35

block_475c35:                                     ; preds = %block_.L_475c2b
  %loadMem_475c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 33
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 1
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %1859 to i64*
  %1860 = load i64, i64* %PC.i583
  %1861 = add i64 %1860, 5
  store i64 %1861, i64* %PC.i583
  store i64 2, i64* %RAX.i584, align 8
  store %struct.Memory* %loadMem_475c35, %struct.Memory** %MEMORY
  %loadMem_475c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 33
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %1864 to i64*
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 5
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %RCX.i581 = bitcast %union.anon* %1867 to i64*
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 15
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %1870 to i64*
  %1871 = load i64, i64* %RBP.i582
  %1872 = sub i64 %1871, 16
  %1873 = load i64, i64* %PC.i580
  %1874 = add i64 %1873, 4
  store i64 %1874, i64* %PC.i580
  %1875 = inttoptr i64 %1872 to i64*
  %1876 = load i64, i64* %1875
  store i64 %1876, i64* %RCX.i581, align 8
  store %struct.Memory* %loadMem_475c3a, %struct.Memory** %MEMORY
  %loadMem_475c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 33
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 5
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %RCX.i578 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 7
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %RDX.i579 = bitcast %union.anon* %1885 to i64*
  %1886 = load i64, i64* %RCX.i578
  %1887 = add i64 %1886, 6564
  %1888 = load i64, i64* %PC.i577
  %1889 = add i64 %1888, 6
  store i64 %1889, i64* %PC.i577
  %1890 = inttoptr i64 %1887 to i32*
  %1891 = load i32, i32* %1890
  %1892 = zext i32 %1891 to i64
  store i64 %1892, i64* %RDX.i579, align 8
  store %struct.Memory* %loadMem_475c3e, %struct.Memory** %MEMORY
  %loadMem_475c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 33
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 7
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %EDX.i575 = bitcast %union.anon* %1898 to i32*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 15
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %RBP.i576 = bitcast %union.anon* %1901 to i64*
  %1902 = load i64, i64* %RBP.i576
  %1903 = sub i64 %1902, 68
  %1904 = load i32, i32* %EDX.i575
  %1905 = zext i32 %1904 to i64
  %1906 = load i64, i64* %PC.i574
  %1907 = add i64 %1906, 3
  store i64 %1907, i64* %PC.i574
  %1908 = inttoptr i64 %1903 to i32*
  store i32 %1904, i32* %1908
  store %struct.Memory* %loadMem_475c44, %struct.Memory** %MEMORY
  %loadMem_475c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 33
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %1911 to i64*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 5
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %RCX.i572 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 15
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %1917 to i64*
  %1918 = load i64, i64* %RBP.i573
  %1919 = sub i64 %1918, 16
  %1920 = load i64, i64* %PC.i571
  %1921 = add i64 %1920, 4
  store i64 %1921, i64* %PC.i571
  %1922 = inttoptr i64 %1919 to i64*
  %1923 = load i64, i64* %1922
  store i64 %1923, i64* %RCX.i572, align 8
  store %struct.Memory* %loadMem_475c47, %struct.Memory** %MEMORY
  %loadMem_475c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 33
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 5
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %RCX.i569 = bitcast %union.anon* %1929 to i64*
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 7
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %RDX.i570 = bitcast %union.anon* %1932 to i64*
  %1933 = load i64, i64* %RCX.i569
  %1934 = add i64 %1933, 6568
  %1935 = load i64, i64* %PC.i568
  %1936 = add i64 %1935, 6
  store i64 %1936, i64* %PC.i568
  %1937 = inttoptr i64 %1934 to i32*
  %1938 = load i32, i32* %1937
  %1939 = zext i32 %1938 to i64
  store i64 %1939, i64* %RDX.i570, align 8
  store %struct.Memory* %loadMem_475c4b, %struct.Memory** %MEMORY
  %loadMem_475c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 33
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %1942 to i64*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 7
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %EDX.i566 = bitcast %union.anon* %1945 to i32*
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 15
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %RBP.i567 = bitcast %union.anon* %1948 to i64*
  %1949 = load i64, i64* %RBP.i567
  %1950 = sub i64 %1949, 72
  %1951 = load i32, i32* %EDX.i566
  %1952 = zext i32 %1951 to i64
  %1953 = load i64, i64* %PC.i565
  %1954 = add i64 %1953, 3
  store i64 %1954, i64* %PC.i565
  %1955 = inttoptr i64 %1950 to i32*
  store i32 %1951, i32* %1955
  store %struct.Memory* %loadMem_475c51, %struct.Memory** %MEMORY
  %loadMem_475c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 33
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %1958 to i64*
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 5
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %RCX.i563 = bitcast %union.anon* %1961 to i64*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 15
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %RBP.i564 = bitcast %union.anon* %1964 to i64*
  %1965 = load i64, i64* %RBP.i564
  %1966 = sub i64 %1965, 16
  %1967 = load i64, i64* %PC.i562
  %1968 = add i64 %1967, 4
  store i64 %1968, i64* %PC.i562
  %1969 = inttoptr i64 %1966 to i64*
  %1970 = load i64, i64* %1969
  store i64 %1970, i64* %RCX.i563, align 8
  store %struct.Memory* %loadMem_475c54, %struct.Memory** %MEMORY
  %loadMem_475c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 33
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %1973 to i64*
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 1
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %EAX.i560 = bitcast %union.anon* %1976 to i32*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 7
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %RDX.i561 = bitcast %union.anon* %1979 to i64*
  %1980 = load i32, i32* %EAX.i560
  %1981 = zext i32 %1980 to i64
  %1982 = load i64, i64* %PC.i559
  %1983 = add i64 %1982, 2
  store i64 %1983, i64* %PC.i559
  %1984 = and i64 %1981, 4294967295
  store i64 %1984, i64* %RDX.i561, align 8
  store %struct.Memory* %loadMem_475c58, %struct.Memory** %MEMORY
  %loadMem_475c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 33
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %1987 to i64*
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 5
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %RCX.i557 = bitcast %union.anon* %1990 to i64*
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 7
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %RDX.i558 = bitcast %union.anon* %1993 to i64*
  %1994 = load i64, i64* %RDX.i558
  %1995 = load i64, i64* %RCX.i557
  %1996 = add i64 %1995, 6556
  %1997 = load i64, i64* %PC.i556
  %1998 = add i64 %1997, 6
  store i64 %1998, i64* %PC.i556
  %1999 = trunc i64 %1994 to i32
  %2000 = inttoptr i64 %1996 to i32*
  %2001 = load i32, i32* %2000
  %2002 = sub i32 %1999, %2001
  %2003 = zext i32 %2002 to i64
  store i64 %2003, i64* %RDX.i558, align 8
  %2004 = icmp ult i32 %1999, %2001
  %2005 = zext i1 %2004 to i8
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2005, i8* %2006, align 1
  %2007 = and i32 %2002, 255
  %2008 = call i32 @llvm.ctpop.i32(i32 %2007)
  %2009 = trunc i32 %2008 to i8
  %2010 = and i8 %2009, 1
  %2011 = xor i8 %2010, 1
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2011, i8* %2012, align 1
  %2013 = xor i32 %2001, %1999
  %2014 = xor i32 %2013, %2002
  %2015 = lshr i32 %2014, 4
  %2016 = trunc i32 %2015 to i8
  %2017 = and i8 %2016, 1
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2017, i8* %2018, align 1
  %2019 = icmp eq i32 %2002, 0
  %2020 = zext i1 %2019 to i8
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2020, i8* %2021, align 1
  %2022 = lshr i32 %2002, 31
  %2023 = trunc i32 %2022 to i8
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2023, i8* %2024, align 1
  %2025 = lshr i32 %1999, 31
  %2026 = lshr i32 %2001, 31
  %2027 = xor i32 %2026, %2025
  %2028 = xor i32 %2022, %2025
  %2029 = add i32 %2028, %2027
  %2030 = icmp eq i32 %2029, 2
  %2031 = zext i1 %2030 to i8
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2031, i8* %2032, align 1
  store %struct.Memory* %loadMem_475c5a, %struct.Memory** %MEMORY
  %loadMem_475c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 33
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %2035 to i64*
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2037 = getelementptr inbounds %struct.GPR, %struct.GPR* %2036, i32 0, i32 5
  %2038 = getelementptr inbounds %struct.Reg, %struct.Reg* %2037, i32 0, i32 0
  %RCX.i554 = bitcast %union.anon* %2038 to i64*
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2040 = getelementptr inbounds %struct.GPR, %struct.GPR* %2039, i32 0, i32 15
  %2041 = getelementptr inbounds %struct.Reg, %struct.Reg* %2040, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %2041 to i64*
  %2042 = load i64, i64* %RBP.i555
  %2043 = sub i64 %2042, 16
  %2044 = load i64, i64* %PC.i553
  %2045 = add i64 %2044, 4
  store i64 %2045, i64* %PC.i553
  %2046 = inttoptr i64 %2043 to i64*
  %2047 = load i64, i64* %2046
  store i64 %2047, i64* %RCX.i554, align 8
  store %struct.Memory* %loadMem_475c60, %struct.Memory** %MEMORY
  %loadMem_475c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 33
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %2050 to i64*
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 5
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %RCX.i551 = bitcast %union.anon* %2053 to i64*
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 7
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %RDX.i552 = bitcast %union.anon* %2056 to i64*
  %2057 = load i64, i64* %RDX.i552
  %2058 = load i64, i64* %RCX.i551
  %2059 = add i64 %2058, 6572
  %2060 = load i64, i64* %PC.i550
  %2061 = add i64 %2060, 7
  store i64 %2061, i64* %PC.i550
  %2062 = inttoptr i64 %2059 to i32*
  %2063 = load i32, i32* %2062
  %2064 = shl i64 %2057, 32
  %2065 = ashr exact i64 %2064, 32
  %2066 = sext i32 %2063 to i64
  %2067 = mul i64 %2066, %2065
  %2068 = trunc i64 %2067 to i32
  %2069 = and i64 %2067, 4294967295
  store i64 %2069, i64* %RDX.i552, align 8
  %2070 = shl i64 %2067, 32
  %2071 = ashr exact i64 %2070, 32
  %2072 = icmp ne i64 %2071, %2067
  %2073 = zext i1 %2072 to i8
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2073, i8* %2074, align 1
  %2075 = and i32 %2068, 255
  %2076 = call i32 @llvm.ctpop.i32(i32 %2075)
  %2077 = trunc i32 %2076 to i8
  %2078 = and i8 %2077, 1
  %2079 = xor i8 %2078, 1
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2079, i8* %2080, align 1
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2081, align 1
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2082, align 1
  %2083 = lshr i32 %2068, 31
  %2084 = trunc i32 %2083 to i8
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2084, i8* %2085, align 1
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2073, i8* %2086, align 1
  store %struct.Memory* %loadMem_475c64, %struct.Memory** %MEMORY
  %loadMem_475c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 33
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %2089 to i64*
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 7
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %EDX.i548 = bitcast %union.anon* %2092 to i32*
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 15
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %2095 to i64*
  %2096 = load i64, i64* %RBP.i549
  %2097 = sub i64 %2096, 76
  %2098 = load i32, i32* %EDX.i548
  %2099 = zext i32 %2098 to i64
  %2100 = load i64, i64* %PC.i547
  %2101 = add i64 %2100, 3
  store i64 %2101, i64* %PC.i547
  %2102 = inttoptr i64 %2097 to i32*
  store i32 %2098, i32* %2102
  store %struct.Memory* %loadMem_475c6b, %struct.Memory** %MEMORY
  %loadMem_475c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 33
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %2105 to i64*
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 5
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %RCX.i545 = bitcast %union.anon* %2108 to i64*
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 15
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %2111 to i64*
  %2112 = load i64, i64* %RBP.i546
  %2113 = sub i64 %2112, 16
  %2114 = load i64, i64* %PC.i544
  %2115 = add i64 %2114, 4
  store i64 %2115, i64* %PC.i544
  %2116 = inttoptr i64 %2113 to i64*
  %2117 = load i64, i64* %2116
  store i64 %2117, i64* %RCX.i545, align 8
  store %struct.Memory* %loadMem_475c6e, %struct.Memory** %MEMORY
  %loadMem_475c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 33
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %2120 to i64*
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 1
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 5
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %RCX.i543 = bitcast %union.anon* %2126 to i64*
  %2127 = load i64, i64* %RAX.i542
  %2128 = load i64, i64* %RCX.i543
  %2129 = add i64 %2128, 6556
  %2130 = load i64, i64* %PC.i541
  %2131 = add i64 %2130, 6
  store i64 %2131, i64* %PC.i541
  %2132 = trunc i64 %2127 to i32
  %2133 = inttoptr i64 %2129 to i32*
  %2134 = load i32, i32* %2133
  %2135 = sub i32 %2132, %2134
  %2136 = zext i32 %2135 to i64
  store i64 %2136, i64* %RAX.i542, align 8
  %2137 = icmp ult i32 %2132, %2134
  %2138 = zext i1 %2137 to i8
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2138, i8* %2139, align 1
  %2140 = and i32 %2135, 255
  %2141 = call i32 @llvm.ctpop.i32(i32 %2140)
  %2142 = trunc i32 %2141 to i8
  %2143 = and i8 %2142, 1
  %2144 = xor i8 %2143, 1
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2144, i8* %2145, align 1
  %2146 = xor i32 %2134, %2132
  %2147 = xor i32 %2146, %2135
  %2148 = lshr i32 %2147, 4
  %2149 = trunc i32 %2148 to i8
  %2150 = and i8 %2149, 1
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2150, i8* %2151, align 1
  %2152 = icmp eq i32 %2135, 0
  %2153 = zext i1 %2152 to i8
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2153, i8* %2154, align 1
  %2155 = lshr i32 %2135, 31
  %2156 = trunc i32 %2155 to i8
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2156, i8* %2157, align 1
  %2158 = lshr i32 %2132, 31
  %2159 = lshr i32 %2134, 31
  %2160 = xor i32 %2159, %2158
  %2161 = xor i32 %2155, %2158
  %2162 = add i32 %2161, %2160
  %2163 = icmp eq i32 %2162, 2
  %2164 = zext i1 %2163 to i8
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2164, i8* %2165, align 1
  store %struct.Memory* %loadMem_475c72, %struct.Memory** %MEMORY
  %loadMem_475c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 33
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %2168 to i64*
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2170 = getelementptr inbounds %struct.GPR, %struct.GPR* %2169, i32 0, i32 5
  %2171 = getelementptr inbounds %struct.Reg, %struct.Reg* %2170, i32 0, i32 0
  %RCX.i539 = bitcast %union.anon* %2171 to i64*
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 15
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %2174 to i64*
  %2175 = load i64, i64* %RBP.i540
  %2176 = sub i64 %2175, 16
  %2177 = load i64, i64* %PC.i538
  %2178 = add i64 %2177, 4
  store i64 %2178, i64* %PC.i538
  %2179 = inttoptr i64 %2176 to i64*
  %2180 = load i64, i64* %2179
  store i64 %2180, i64* %RCX.i539, align 8
  store %struct.Memory* %loadMem_475c78, %struct.Memory** %MEMORY
  %loadMem_475c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 33
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %2183 to i64*
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 1
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %RAX.i536 = bitcast %union.anon* %2186 to i64*
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 5
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %RCX.i537 = bitcast %union.anon* %2189 to i64*
  %2190 = load i64, i64* %RAX.i536
  %2191 = load i64, i64* %RCX.i537
  %2192 = add i64 %2191, 6576
  %2193 = load i64, i64* %PC.i535
  %2194 = add i64 %2193, 7
  store i64 %2194, i64* %PC.i535
  %2195 = inttoptr i64 %2192 to i32*
  %2196 = load i32, i32* %2195
  %2197 = shl i64 %2190, 32
  %2198 = ashr exact i64 %2197, 32
  %2199 = sext i32 %2196 to i64
  %2200 = mul i64 %2199, %2198
  %2201 = trunc i64 %2200 to i32
  %2202 = and i64 %2200, 4294967295
  store i64 %2202, i64* %RAX.i536, align 8
  %2203 = shl i64 %2200, 32
  %2204 = ashr exact i64 %2203, 32
  %2205 = icmp ne i64 %2204, %2200
  %2206 = zext i1 %2205 to i8
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2206, i8* %2207, align 1
  %2208 = and i32 %2201, 255
  %2209 = call i32 @llvm.ctpop.i32(i32 %2208)
  %2210 = trunc i32 %2209 to i8
  %2211 = and i8 %2210, 1
  %2212 = xor i8 %2211, 1
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2212, i8* %2213, align 1
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2214, align 1
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2215, align 1
  %2216 = lshr i32 %2201, 31
  %2217 = trunc i32 %2216 to i8
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2217, i8* %2218, align 1
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2206, i8* %2219, align 1
  store %struct.Memory* %loadMem_475c7c, %struct.Memory** %MEMORY
  %loadMem_475c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 33
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %2222 to i64*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 1
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %EAX.i533 = bitcast %union.anon* %2225 to i32*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 15
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %RBP.i534 = bitcast %union.anon* %2228 to i64*
  %2229 = load i64, i64* %RBP.i534
  %2230 = sub i64 %2229, 80
  %2231 = load i32, i32* %EAX.i533
  %2232 = zext i32 %2231 to i64
  %2233 = load i64, i64* %PC.i532
  %2234 = add i64 %2233, 3
  store i64 %2234, i64* %PC.i532
  %2235 = inttoptr i64 %2230 to i32*
  store i32 %2231, i32* %2235
  store %struct.Memory* %loadMem_475c83, %struct.Memory** %MEMORY
  %loadMem_475c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 33
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 5
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %RCX.i530 = bitcast %union.anon* %2241 to i64*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 15
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %2244 to i64*
  %2245 = load i64, i64* %RBP.i531
  %2246 = sub i64 %2245, 16
  %2247 = load i64, i64* %PC.i529
  %2248 = add i64 %2247, 4
  store i64 %2248, i64* %PC.i529
  %2249 = inttoptr i64 %2246 to i64*
  %2250 = load i64, i64* %2249
  store i64 %2250, i64* %RCX.i530, align 8
  store %struct.Memory* %loadMem_475c86, %struct.Memory** %MEMORY
  %loadMem_475c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 33
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %2253 to i64*
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 5
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %RCX.i528 = bitcast %union.anon* %2256 to i64*
  %2257 = load i64, i64* %RCX.i528
  %2258 = add i64 %2257, 6464
  %2259 = load i64, i64* %PC.i527
  %2260 = add i64 %2259, 7
  store i64 %2260, i64* %PC.i527
  %2261 = inttoptr i64 %2258 to i64*
  %2262 = load i64, i64* %2261
  store i64 %2262, i64* %RCX.i528, align 8
  store %struct.Memory* %loadMem_475c8a, %struct.Memory** %MEMORY
  %loadMem_475c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 33
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %2265 to i64*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 5
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %2268 to i64*
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 11
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %RDI.i526 = bitcast %union.anon* %2271 to i64*
  %2272 = load i64, i64* %RCX.i525
  %2273 = add i64 %2272, 8
  %2274 = load i64, i64* %PC.i524
  %2275 = add i64 %2274, 4
  store i64 %2275, i64* %PC.i524
  %2276 = inttoptr i64 %2273 to i64*
  %2277 = load i64, i64* %2276
  store i64 %2277, i64* %RDI.i526, align 8
  store %struct.Memory* %loadMem_475c91, %struct.Memory** %MEMORY
  %loadMem_475c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 33
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %2280 to i64*
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 9
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %RSI.i522 = bitcast %union.anon* %2283 to i64*
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 15
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %2286 to i64*
  %2287 = load i64, i64* %RBP.i523
  %2288 = sub i64 %2287, 96
  %2289 = load i64, i64* %PC.i521
  %2290 = add i64 %2289, 4
  store i64 %2290, i64* %PC.i521
  %2291 = inttoptr i64 %2288 to i64*
  %2292 = load i64, i64* %2291
  store i64 %2292, i64* %RSI.i522, align 8
  store %struct.Memory* %loadMem_475c95, %struct.Memory** %MEMORY
  %loadMem_475c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 33
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %2295 to i64*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 5
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %RCX.i519 = bitcast %union.anon* %2298 to i64*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 15
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %2301 to i64*
  %2302 = load i64, i64* %RBP.i520
  %2303 = sub i64 %2302, 16
  %2304 = load i64, i64* %PC.i518
  %2305 = add i64 %2304, 4
  store i64 %2305, i64* %PC.i518
  %2306 = inttoptr i64 %2303 to i64*
  %2307 = load i64, i64* %2306
  store i64 %2307, i64* %RCX.i519, align 8
  store %struct.Memory* %loadMem_475c99, %struct.Memory** %MEMORY
  %loadMem_475c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 33
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %2310 to i64*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 5
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %RCX.i516 = bitcast %union.anon* %2313 to i64*
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 7
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %RDX.i517 = bitcast %union.anon* %2316 to i64*
  %2317 = load i64, i64* %RCX.i516
  %2318 = add i64 %2317, 6400
  %2319 = load i64, i64* %PC.i515
  %2320 = add i64 %2319, 6
  store i64 %2320, i64* %PC.i515
  %2321 = inttoptr i64 %2318 to i32*
  %2322 = load i32, i32* %2321
  %2323 = zext i32 %2322 to i64
  store i64 %2323, i64* %RDX.i517, align 8
  store %struct.Memory* %loadMem_475c9d, %struct.Memory** %MEMORY
  %loadMem_475ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 33
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %2326 to i64*
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 5
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %RCX.i513 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 15
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %RBP.i514 = bitcast %union.anon* %2332 to i64*
  %2333 = load i64, i64* %RBP.i514
  %2334 = sub i64 %2333, 16
  %2335 = load i64, i64* %PC.i512
  %2336 = add i64 %2335, 4
  store i64 %2336, i64* %PC.i512
  %2337 = inttoptr i64 %2334 to i64*
  %2338 = load i64, i64* %2337
  store i64 %2338, i64* %RCX.i513, align 8
  store %struct.Memory* %loadMem_475ca3, %struct.Memory** %MEMORY
  %loadMem_475ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 33
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %2341 to i64*
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 5
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %RCX.i511 = bitcast %union.anon* %2344 to i64*
  %2345 = load i64, i64* %RCX.i511
  %2346 = add i64 %2345, 6404
  %2347 = load i64, i64* %PC.i510
  %2348 = add i64 %2347, 6
  store i64 %2348, i64* %PC.i510
  %2349 = inttoptr i64 %2346 to i32*
  %2350 = load i32, i32* %2349
  %2351 = zext i32 %2350 to i64
  store i64 %2351, i64* %RCX.i511, align 8
  store %struct.Memory* %loadMem_475ca7, %struct.Memory** %MEMORY
  %loadMem_475cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 17
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %R8D.i508 = bitcast %union.anon* %2357 to i32*
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 15
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %2360 to i64*
  %2361 = bitcast i32* %R8D.i508 to i64*
  %2362 = load i64, i64* %RBP.i509
  %2363 = sub i64 %2362, 84
  %2364 = load i64, i64* %PC.i507
  %2365 = add i64 %2364, 4
  store i64 %2365, i64* %PC.i507
  %2366 = inttoptr i64 %2363 to i32*
  %2367 = load i32, i32* %2366
  %2368 = zext i32 %2367 to i64
  store i64 %2368, i64* %2361, align 8
  store %struct.Memory* %loadMem_475cad, %struct.Memory** %MEMORY
  %loadMem_475cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 33
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %2371 to i64*
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 19
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %R9D.i505 = bitcast %union.anon* %2374 to i32*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 15
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %2377 to i64*
  %2378 = bitcast i32* %R9D.i505 to i64*
  %2379 = load i64, i64* %RBP.i506
  %2380 = sub i64 %2379, 68
  %2381 = load i64, i64* %PC.i504
  %2382 = add i64 %2381, 4
  store i64 %2382, i64* %PC.i504
  %2383 = inttoptr i64 %2380 to i32*
  %2384 = load i32, i32* %2383
  %2385 = zext i32 %2384 to i64
  store i64 %2385, i64* %2378, align 8
  store %struct.Memory* %loadMem_475cb1, %struct.Memory** %MEMORY
  %loadMem_475cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 33
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %2388 to i64*
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2390 = getelementptr inbounds %struct.GPR, %struct.GPR* %2389, i32 0, i32 1
  %2391 = getelementptr inbounds %struct.Reg, %struct.Reg* %2390, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %2391 to i64*
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 15
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %2394 to i64*
  %2395 = load i64, i64* %RBP.i503
  %2396 = sub i64 %2395, 72
  %2397 = load i64, i64* %PC.i501
  %2398 = add i64 %2397, 3
  store i64 %2398, i64* %PC.i501
  %2399 = inttoptr i64 %2396 to i32*
  %2400 = load i32, i32* %2399
  %2401 = zext i32 %2400 to i64
  store i64 %2401, i64* %RAX.i502, align 8
  store %struct.Memory* %loadMem_475cb5, %struct.Memory** %MEMORY
  %loadMem_475cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 33
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %2404 to i64*
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 21
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %R10D.i499 = bitcast %union.anon* %2407 to i32*
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 15
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %2410 to i64*
  %2411 = bitcast i32* %R10D.i499 to i64*
  %2412 = load i64, i64* %RBP.i500
  %2413 = sub i64 %2412, 76
  %2414 = load i64, i64* %PC.i498
  %2415 = add i64 %2414, 4
  store i64 %2415, i64* %PC.i498
  %2416 = inttoptr i64 %2413 to i32*
  %2417 = load i32, i32* %2416
  %2418 = zext i32 %2417 to i64
  store i64 %2418, i64* %2411, align 8
  store %struct.Memory* %loadMem_475cb8, %struct.Memory** %MEMORY
  %loadMem_475cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 33
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %2421 to i64*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 23
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %R11D.i496 = bitcast %union.anon* %2424 to i32*
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 15
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %2427 to i64*
  %2428 = bitcast i32* %R11D.i496 to i64*
  %2429 = load i64, i64* %RBP.i497
  %2430 = sub i64 %2429, 80
  %2431 = load i64, i64* %PC.i495
  %2432 = add i64 %2431, 4
  store i64 %2432, i64* %PC.i495
  %2433 = inttoptr i64 %2430 to i32*
  %2434 = load i32, i32* %2433
  %2435 = zext i32 %2434 to i64
  store i64 %2435, i64* %2428, align 8
  store %struct.Memory* %loadMem_475cbc, %struct.Memory** %MEMORY
  %loadMem_475cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2437 = getelementptr inbounds %struct.GPR, %struct.GPR* %2436, i32 0, i32 33
  %2438 = getelementptr inbounds %struct.Reg, %struct.Reg* %2437, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %2438 to i64*
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2440 = getelementptr inbounds %struct.GPR, %struct.GPR* %2439, i32 0, i32 1
  %2441 = getelementptr inbounds %struct.Reg, %struct.Reg* %2440, i32 0, i32 0
  %EAX.i493 = bitcast %union.anon* %2441 to i32*
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 13
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %RSP.i494 = bitcast %union.anon* %2444 to i64*
  %2445 = load i64, i64* %RSP.i494
  %2446 = load i32, i32* %EAX.i493
  %2447 = zext i32 %2446 to i64
  %2448 = load i64, i64* %PC.i492
  %2449 = add i64 %2448, 3
  store i64 %2449, i64* %PC.i492
  %2450 = inttoptr i64 %2445 to i32*
  store i32 %2446, i32* %2450
  store %struct.Memory* %loadMem_475cc0, %struct.Memory** %MEMORY
  %loadMem_475cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 33
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %2453 to i64*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 21
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %R10D.i490 = bitcast %union.anon* %2456 to i32*
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2458 = getelementptr inbounds %struct.GPR, %struct.GPR* %2457, i32 0, i32 13
  %2459 = getelementptr inbounds %struct.Reg, %struct.Reg* %2458, i32 0, i32 0
  %RSP.i491 = bitcast %union.anon* %2459 to i64*
  %2460 = load i64, i64* %RSP.i491
  %2461 = add i64 %2460, 8
  %2462 = load i32, i32* %R10D.i490
  %2463 = zext i32 %2462 to i64
  %2464 = load i64, i64* %PC.i489
  %2465 = add i64 %2464, 5
  store i64 %2465, i64* %PC.i489
  %2466 = inttoptr i64 %2461 to i32*
  store i32 %2462, i32* %2466
  store %struct.Memory* %loadMem_475cc3, %struct.Memory** %MEMORY
  %loadMem_475cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 33
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %2469 to i64*
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 23
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %R11D.i487 = bitcast %union.anon* %2472 to i32*
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2474 = getelementptr inbounds %struct.GPR, %struct.GPR* %2473, i32 0, i32 13
  %2475 = getelementptr inbounds %struct.Reg, %struct.Reg* %2474, i32 0, i32 0
  %RSP.i488 = bitcast %union.anon* %2475 to i64*
  %2476 = load i64, i64* %RSP.i488
  %2477 = add i64 %2476, 16
  %2478 = load i32, i32* %R11D.i487
  %2479 = zext i32 %2478 to i64
  %2480 = load i64, i64* %PC.i486
  %2481 = add i64 %2480, 5
  store i64 %2481, i64* %PC.i486
  %2482 = inttoptr i64 %2477 to i32*
  store i32 %2478, i32* %2482
  store %struct.Memory* %loadMem_475cc8, %struct.Memory** %MEMORY
  %loadMem1_475ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 33
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %2485 to i64*
  %2486 = load i64, i64* %PC.i485
  %2487 = add i64 %2486, -1613
  %2488 = load i64, i64* %PC.i485
  %2489 = add i64 %2488, 5
  %2490 = load i64, i64* %PC.i485
  %2491 = add i64 %2490, 5
  store i64 %2491, i64* %PC.i485
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2493 = load i64, i64* %2492, align 8
  %2494 = add i64 %2493, -8
  %2495 = inttoptr i64 %2494 to i64*
  store i64 %2489, i64* %2495
  store i64 %2494, i64* %2492, align 8
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2487, i64* %2496, align 8
  store %struct.Memory* %loadMem1_475ccd, %struct.Memory** %MEMORY
  %loadMem2_475ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_475ccd = load i64, i64* %3
  %call2_475ccd = call %struct.Memory* @sub_475680.img2buf(%struct.State* %0, i64 %loadPC_475ccd, %struct.Memory* %loadMem2_475ccd)
  store %struct.Memory* %call2_475ccd, %struct.Memory** %MEMORY
  %loadMem_475cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 33
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %2499 to i64*
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 11
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %RDI.i483 = bitcast %union.anon* %2502 to i64*
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 15
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %2505 to i64*
  %2506 = load i64, i64* %RBP.i484
  %2507 = sub i64 %2506, 20
  %2508 = load i64, i64* %PC.i482
  %2509 = add i64 %2508, 3
  store i64 %2509, i64* %PC.i482
  %2510 = inttoptr i64 %2507 to i32*
  %2511 = load i32, i32* %2510
  %2512 = zext i32 %2511 to i64
  store i64 %2512, i64* %RDI.i483, align 8
  store %struct.Memory* %loadMem_475cd2, %struct.Memory** %MEMORY
  %loadMem_475cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 33
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 9
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RSI.i480 = bitcast %union.anon* %2518 to i64*
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 15
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %2521 to i64*
  %2522 = load i64, i64* %RBP.i481
  %2523 = sub i64 %2522, 96
  %2524 = load i64, i64* %PC.i479
  %2525 = add i64 %2524, 4
  store i64 %2525, i64* %PC.i479
  %2526 = inttoptr i64 %2523 to i64*
  %2527 = load i64, i64* %2526
  store i64 %2527, i64* %RSI.i480, align 8
  store %struct.Memory* %loadMem_475cd5, %struct.Memory** %MEMORY
  %loadMem_475cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 33
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %2530 to i64*
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 3
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %RBX.i477 = bitcast %union.anon* %2533 to i64*
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 15
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %2536 to i64*
  %2537 = load i64, i64* %RBP.i478
  %2538 = sub i64 %2537, 16
  %2539 = load i64, i64* %PC.i476
  %2540 = add i64 %2539, 4
  store i64 %2540, i64* %PC.i476
  %2541 = inttoptr i64 %2538 to i64*
  %2542 = load i64, i64* %2541
  store i64 %2542, i64* %RBX.i477, align 8
  store %struct.Memory* %loadMem_475cd9, %struct.Memory** %MEMORY
  %loadMem_475cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 33
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %2545 to i64*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 1
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %2548 to i64*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 3
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %RBX.i475 = bitcast %union.anon* %2551 to i64*
  %2552 = load i64, i64* %RBX.i475
  %2553 = add i64 %2552, 6404
  %2554 = load i64, i64* %PC.i473
  %2555 = add i64 %2554, 6
  store i64 %2555, i64* %PC.i473
  %2556 = inttoptr i64 %2553 to i32*
  %2557 = load i32, i32* %2556
  %2558 = zext i32 %2557 to i64
  store i64 %2558, i64* %RAX.i474, align 8
  store %struct.Memory* %loadMem_475cdd, %struct.Memory** %MEMORY
  %loadMem_475ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 33
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %2561 to i64*
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 1
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %RAX.i471 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 15
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %2567 to i64*
  %2568 = load i64, i64* %RAX.i471
  %2569 = load i64, i64* %RBP.i472
  %2570 = sub i64 %2569, 80
  %2571 = load i64, i64* %PC.i470
  %2572 = add i64 %2571, 3
  store i64 %2572, i64* %PC.i470
  %2573 = trunc i64 %2568 to i32
  %2574 = inttoptr i64 %2570 to i32*
  %2575 = load i32, i32* %2574
  %2576 = sub i32 %2573, %2575
  %2577 = zext i32 %2576 to i64
  store i64 %2577, i64* %RAX.i471, align 8
  %2578 = icmp ult i32 %2573, %2575
  %2579 = zext i1 %2578 to i8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2579, i8* %2580, align 1
  %2581 = and i32 %2576, 255
  %2582 = call i32 @llvm.ctpop.i32(i32 %2581)
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  %2585 = xor i8 %2584, 1
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2585, i8* %2586, align 1
  %2587 = xor i32 %2575, %2573
  %2588 = xor i32 %2587, %2576
  %2589 = lshr i32 %2588, 4
  %2590 = trunc i32 %2589 to i8
  %2591 = and i8 %2590, 1
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2591, i8* %2592, align 1
  %2593 = icmp eq i32 %2576, 0
  %2594 = zext i1 %2593 to i8
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2594, i8* %2595, align 1
  %2596 = lshr i32 %2576, 31
  %2597 = trunc i32 %2596 to i8
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2597, i8* %2598, align 1
  %2599 = lshr i32 %2573, 31
  %2600 = lshr i32 %2575, 31
  %2601 = xor i32 %2600, %2599
  %2602 = xor i32 %2596, %2599
  %2603 = add i32 %2602, %2601
  %2604 = icmp eq i32 %2603, 2
  %2605 = zext i1 %2604 to i8
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2605, i8* %2606, align 1
  store %struct.Memory* %loadMem_475ce3, %struct.Memory** %MEMORY
  %loadMem_475ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 33
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %2609 to i64*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 1
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %2612 to i64*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 15
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %2615 to i64*
  %2616 = load i64, i64* %RAX.i468
  %2617 = load i64, i64* %RBP.i469
  %2618 = sub i64 %2617, 76
  %2619 = load i64, i64* %PC.i467
  %2620 = add i64 %2619, 3
  store i64 %2620, i64* %PC.i467
  %2621 = trunc i64 %2616 to i32
  %2622 = inttoptr i64 %2618 to i32*
  %2623 = load i32, i32* %2622
  %2624 = sub i32 %2621, %2623
  %2625 = zext i32 %2624 to i64
  store i64 %2625, i64* %RAX.i468, align 8
  %2626 = icmp ult i32 %2621, %2623
  %2627 = zext i1 %2626 to i8
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2627, i8* %2628, align 1
  %2629 = and i32 %2624, 255
  %2630 = call i32 @llvm.ctpop.i32(i32 %2629)
  %2631 = trunc i32 %2630 to i8
  %2632 = and i8 %2631, 1
  %2633 = xor i8 %2632, 1
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2633, i8* %2634, align 1
  %2635 = xor i32 %2623, %2621
  %2636 = xor i32 %2635, %2624
  %2637 = lshr i32 %2636, 4
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2639, i8* %2640, align 1
  %2641 = icmp eq i32 %2624, 0
  %2642 = zext i1 %2641 to i8
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2642, i8* %2643, align 1
  %2644 = lshr i32 %2624, 31
  %2645 = trunc i32 %2644 to i8
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2645, i8* %2646, align 1
  %2647 = lshr i32 %2621, 31
  %2648 = lshr i32 %2623, 31
  %2649 = xor i32 %2648, %2647
  %2650 = xor i32 %2644, %2647
  %2651 = add i32 %2650, %2649
  %2652 = icmp eq i32 %2651, 2
  %2653 = zext i1 %2652 to i8
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2653, i8* %2654, align 1
  store %struct.Memory* %loadMem_475ce6, %struct.Memory** %MEMORY
  %loadMem_475ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 33
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %2657 to i64*
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2659 = getelementptr inbounds %struct.GPR, %struct.GPR* %2658, i32 0, i32 3
  %2660 = getelementptr inbounds %struct.Reg, %struct.Reg* %2659, i32 0, i32 0
  %RBX.i465 = bitcast %union.anon* %2660 to i64*
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 15
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %2663 to i64*
  %2664 = load i64, i64* %RBP.i466
  %2665 = sub i64 %2664, 16
  %2666 = load i64, i64* %PC.i464
  %2667 = add i64 %2666, 4
  store i64 %2667, i64* %PC.i464
  %2668 = inttoptr i64 %2665 to i64*
  %2669 = load i64, i64* %2668
  store i64 %2669, i64* %RBX.i465, align 8
  store %struct.Memory* %loadMem_475ce9, %struct.Memory** %MEMORY
  %loadMem_475ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 33
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %2672 to i64*
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 3
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %RBX.i462 = bitcast %union.anon* %2675 to i64*
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2677 = getelementptr inbounds %struct.GPR, %struct.GPR* %2676, i32 0, i32 5
  %2678 = getelementptr inbounds %struct.Reg, %struct.Reg* %2677, i32 0, i32 0
  %RCX.i463 = bitcast %union.anon* %2678 to i64*
  %2679 = load i64, i64* %RBX.i462
  %2680 = add i64 %2679, 6400
  %2681 = load i64, i64* %PC.i461
  %2682 = add i64 %2681, 6
  store i64 %2682, i64* %PC.i461
  %2683 = inttoptr i64 %2680 to i32*
  %2684 = load i32, i32* %2683
  %2685 = zext i32 %2684 to i64
  store i64 %2685, i64* %RCX.i463, align 8
  store %struct.Memory* %loadMem_475ced, %struct.Memory** %MEMORY
  %loadMem_475cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 33
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %2688 to i64*
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 5
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %RCX.i459 = bitcast %union.anon* %2691 to i64*
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 15
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %2694 to i64*
  %2695 = load i64, i64* %RCX.i459
  %2696 = load i64, i64* %RBP.i460
  %2697 = sub i64 %2696, 72
  %2698 = load i64, i64* %PC.i458
  %2699 = add i64 %2698, 3
  store i64 %2699, i64* %PC.i458
  %2700 = trunc i64 %2695 to i32
  %2701 = inttoptr i64 %2697 to i32*
  %2702 = load i32, i32* %2701
  %2703 = sub i32 %2700, %2702
  %2704 = zext i32 %2703 to i64
  store i64 %2704, i64* %RCX.i459, align 8
  %2705 = icmp ult i32 %2700, %2702
  %2706 = zext i1 %2705 to i8
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2706, i8* %2707, align 1
  %2708 = and i32 %2703, 255
  %2709 = call i32 @llvm.ctpop.i32(i32 %2708)
  %2710 = trunc i32 %2709 to i8
  %2711 = and i8 %2710, 1
  %2712 = xor i8 %2711, 1
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2712, i8* %2713, align 1
  %2714 = xor i32 %2702, %2700
  %2715 = xor i32 %2714, %2703
  %2716 = lshr i32 %2715, 4
  %2717 = trunc i32 %2716 to i8
  %2718 = and i8 %2717, 1
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2718, i8* %2719, align 1
  %2720 = icmp eq i32 %2703, 0
  %2721 = zext i1 %2720 to i8
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2721, i8* %2722, align 1
  %2723 = lshr i32 %2703, 31
  %2724 = trunc i32 %2723 to i8
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2724, i8* %2725, align 1
  %2726 = lshr i32 %2700, 31
  %2727 = lshr i32 %2702, 31
  %2728 = xor i32 %2727, %2726
  %2729 = xor i32 %2723, %2726
  %2730 = add i32 %2729, %2728
  %2731 = icmp eq i32 %2730, 2
  %2732 = zext i1 %2731 to i8
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2732, i8* %2733, align 1
  store %struct.Memory* %loadMem_475cf3, %struct.Memory** %MEMORY
  %loadMem_475cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2735 = getelementptr inbounds %struct.GPR, %struct.GPR* %2734, i32 0, i32 33
  %2736 = getelementptr inbounds %struct.Reg, %struct.Reg* %2735, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %2736 to i64*
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2738 = getelementptr inbounds %struct.GPR, %struct.GPR* %2737, i32 0, i32 5
  %2739 = getelementptr inbounds %struct.Reg, %struct.Reg* %2738, i32 0, i32 0
  %RCX.i456 = bitcast %union.anon* %2739 to i64*
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 15
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %2742 to i64*
  %2743 = load i64, i64* %RCX.i456
  %2744 = load i64, i64* %RBP.i457
  %2745 = sub i64 %2744, 68
  %2746 = load i64, i64* %PC.i455
  %2747 = add i64 %2746, 3
  store i64 %2747, i64* %PC.i455
  %2748 = trunc i64 %2743 to i32
  %2749 = inttoptr i64 %2745 to i32*
  %2750 = load i32, i32* %2749
  %2751 = sub i32 %2748, %2750
  %2752 = zext i32 %2751 to i64
  store i64 %2752, i64* %RCX.i456, align 8
  %2753 = icmp ult i32 %2748, %2750
  %2754 = zext i1 %2753 to i8
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2754, i8* %2755, align 1
  %2756 = and i32 %2751, 255
  %2757 = call i32 @llvm.ctpop.i32(i32 %2756)
  %2758 = trunc i32 %2757 to i8
  %2759 = and i8 %2758, 1
  %2760 = xor i8 %2759, 1
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2760, i8* %2761, align 1
  %2762 = xor i32 %2750, %2748
  %2763 = xor i32 %2762, %2751
  %2764 = lshr i32 %2763, 4
  %2765 = trunc i32 %2764 to i8
  %2766 = and i8 %2765, 1
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2766, i8* %2767, align 1
  %2768 = icmp eq i32 %2751, 0
  %2769 = zext i1 %2768 to i8
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2769, i8* %2770, align 1
  %2771 = lshr i32 %2751, 31
  %2772 = trunc i32 %2771 to i8
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2772, i8* %2773, align 1
  %2774 = lshr i32 %2748, 31
  %2775 = lshr i32 %2750, 31
  %2776 = xor i32 %2775, %2774
  %2777 = xor i32 %2771, %2774
  %2778 = add i32 %2777, %2776
  %2779 = icmp eq i32 %2778, 2
  %2780 = zext i1 %2779 to i8
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2780, i8* %2781, align 1
  store %struct.Memory* %loadMem_475cf6, %struct.Memory** %MEMORY
  %loadMem_475cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 33
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %2784 to i64*
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 5
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %ECX.i453 = bitcast %union.anon* %2787 to i32*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 1
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %2790 to i64*
  %2791 = load i64, i64* %RAX.i454
  %2792 = load i32, i32* %ECX.i453
  %2793 = zext i32 %2792 to i64
  %2794 = load i64, i64* %PC.i452
  %2795 = add i64 %2794, 3
  store i64 %2795, i64* %PC.i452
  %2796 = shl i64 %2791, 32
  %2797 = ashr exact i64 %2796, 32
  %2798 = shl i64 %2793, 32
  %2799 = ashr exact i64 %2798, 32
  %2800 = mul i64 %2799, %2797
  %2801 = trunc i64 %2800 to i32
  %2802 = and i64 %2800, 4294967295
  store i64 %2802, i64* %RAX.i454, align 8
  %2803 = shl i64 %2800, 32
  %2804 = ashr exact i64 %2803, 32
  %2805 = icmp ne i64 %2804, %2800
  %2806 = zext i1 %2805 to i8
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2806, i8* %2807, align 1
  %2808 = and i32 %2801, 255
  %2809 = call i32 @llvm.ctpop.i32(i32 %2808)
  %2810 = trunc i32 %2809 to i8
  %2811 = and i8 %2810, 1
  %2812 = xor i8 %2811, 1
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2812, i8* %2813, align 1
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2814, align 1
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2815, align 1
  %2816 = lshr i32 %2801, 31
  %2817 = trunc i32 %2816 to i8
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2817, i8* %2818, align 1
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2806, i8* %2819, align 1
  store %struct.Memory* %loadMem_475cf9, %struct.Memory** %MEMORY
  %loadMem_475cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 33
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %2822 to i64*
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 1
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 15
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %2828 to i64*
  %2829 = load i64, i64* %RAX.i450
  %2830 = load i64, i64* %RBP.i451
  %2831 = sub i64 %2830, 84
  %2832 = load i64, i64* %PC.i449
  %2833 = add i64 %2832, 4
  store i64 %2833, i64* %PC.i449
  %2834 = inttoptr i64 %2831 to i32*
  %2835 = load i32, i32* %2834
  %2836 = shl i64 %2829, 32
  %2837 = ashr exact i64 %2836, 32
  %2838 = sext i32 %2835 to i64
  %2839 = mul i64 %2838, %2837
  %2840 = trunc i64 %2839 to i32
  %2841 = and i64 %2839, 4294967295
  store i64 %2841, i64* %RAX.i450, align 8
  %2842 = shl i64 %2839, 32
  %2843 = ashr exact i64 %2842, 32
  %2844 = icmp ne i64 %2843, %2839
  %2845 = zext i1 %2844 to i8
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2845, i8* %2846, align 1
  %2847 = and i32 %2840, 255
  %2848 = call i32 @llvm.ctpop.i32(i32 %2847)
  %2849 = trunc i32 %2848 to i8
  %2850 = and i8 %2849, 1
  %2851 = xor i8 %2850, 1
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2851, i8* %2852, align 1
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2853, align 1
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2854, align 1
  %2855 = lshr i32 %2840, 31
  %2856 = trunc i32 %2855 to i8
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2856, i8* %2857, align 1
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2845, i8* %2858, align 1
  store %struct.Memory* %loadMem_475cfc, %struct.Memory** %MEMORY
  %loadMem_475d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 33
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %2861 to i64*
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 1
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %EAX.i447 = bitcast %union.anon* %2864 to i32*
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 7
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %RDX.i448 = bitcast %union.anon* %2867 to i64*
  %2868 = load i32, i32* %EAX.i447
  %2869 = zext i32 %2868 to i64
  %2870 = load i64, i64* %PC.i446
  %2871 = add i64 %2870, 3
  store i64 %2871, i64* %PC.i446
  %2872 = shl i64 %2869, 32
  %2873 = ashr exact i64 %2872, 32
  store i64 %2873, i64* %RDX.i448, align 8
  store %struct.Memory* %loadMem_475d00, %struct.Memory** %MEMORY
  %loadMem1_475d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 33
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %2876 to i64*
  %2877 = load i64, i64* %PC.i445
  %2878 = add i64 %2877, -478451
  %2879 = load i64, i64* %PC.i445
  %2880 = add i64 %2879, 5
  %2881 = load i64, i64* %PC.i445
  %2882 = add i64 %2881, 5
  store i64 %2882, i64* %PC.i445
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2884 = load i64, i64* %2883, align 8
  %2885 = add i64 %2884, -8
  %2886 = inttoptr i64 %2885 to i64*
  store i64 %2880, i64* %2886
  store i64 %2885, i64* %2883, align 8
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2878, i64* %2887, align 8
  store %struct.Memory* %loadMem1_475d03, %struct.Memory** %MEMORY
  %loadMem2_475d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_475d03 = load i64, i64* %3
  %call2_475d03 = call %struct.Memory* @sub_401010.write_plt(%struct.State* %0, i64 %loadPC_475d03, %struct.Memory* %loadMem2_475d03)
  store %struct.Memory* %call2_475d03, %struct.Memory** %MEMORY
  %loadMem_475d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2889 = getelementptr inbounds %struct.GPR, %struct.GPR* %2888, i32 0, i32 33
  %2890 = getelementptr inbounds %struct.Reg, %struct.Reg* %2889, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %2890 to i64*
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 7
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %RDX.i444 = bitcast %union.anon* %2893 to i64*
  %2894 = load i64, i64* %PC.i443
  %2895 = add i64 %2894, 8
  store i64 %2895, i64* %PC.i443
  %2896 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*)
  store i64 %2896, i64* %RDX.i444, align 8
  store %struct.Memory* %loadMem_475d08, %struct.Memory** %MEMORY
  %loadMem_475d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 33
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %2899 to i64*
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 7
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %RDX.i442 = bitcast %union.anon* %2902 to i64*
  %2903 = load i64, i64* %RDX.i442
  %2904 = add i64 %2903, 1160
  %2905 = load i64, i64* %PC.i441
  %2906 = add i64 %2905, 7
  store i64 %2906, i64* %PC.i441
  %2907 = inttoptr i64 %2904 to i32*
  %2908 = load i32, i32* %2907
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2909, align 1
  %2910 = and i32 %2908, 255
  %2911 = call i32 @llvm.ctpop.i32(i32 %2910)
  %2912 = trunc i32 %2911 to i8
  %2913 = and i8 %2912, 1
  %2914 = xor i8 %2913, 1
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2914, i8* %2915, align 1
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2916, align 1
  %2917 = icmp eq i32 %2908, 0
  %2918 = zext i1 %2917 to i8
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2918, i8* %2919, align 1
  %2920 = lshr i32 %2908, 31
  %2921 = trunc i32 %2920 to i8
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2921, i8* %2922, align 1
  %2923 = lshr i32 %2908, 31
  %2924 = xor i32 %2920, %2923
  %2925 = add i32 %2924, %2923
  %2926 = icmp eq i32 %2925, 2
  %2927 = zext i1 %2926 to i8
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2927, i8* %2928, align 1
  store %struct.Memory* %loadMem_475d10, %struct.Memory** %MEMORY
  %loadMem_475d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 33
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %2931 to i64*
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 1
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %2934 to i64*
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 15
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %2937 to i64*
  %2938 = load i64, i64* %RBP.i440
  %2939 = sub i64 %2938, 112
  %2940 = load i64, i64* %RAX.i439
  %2941 = load i64, i64* %PC.i438
  %2942 = add i64 %2941, 4
  store i64 %2942, i64* %PC.i438
  %2943 = inttoptr i64 %2939 to i64*
  store i64 %2940, i64* %2943
  store %struct.Memory* %loadMem_475d17, %struct.Memory** %MEMORY
  %loadMem_475d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 33
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %2946 to i64*
  %2947 = load i64, i64* %PC.i437
  %2948 = add i64 %2947, 160
  %2949 = load i64, i64* %PC.i437
  %2950 = add i64 %2949, 6
  %2951 = load i64, i64* %PC.i437
  %2952 = add i64 %2951, 6
  store i64 %2952, i64* %PC.i437
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2954 = load i8, i8* %2953, align 1
  store i8 %2954, i8* %BRANCH_TAKEN, align 1
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2956 = icmp ne i8 %2954, 0
  %2957 = select i1 %2956, i64 %2948, i64 %2950
  store i64 %2957, i64* %2955, align 8
  store %struct.Memory* %loadMem_475d1b, %struct.Memory** %MEMORY
  %loadBr_475d1b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_475d1b = icmp eq i8 %loadBr_475d1b, 1
  br i1 %cmpBr_475d1b, label %block_.L_475dbb, label %block_475d21

block_475d21:                                     ; preds = %block_475c35
  %loadMem_475d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 33
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %2960 to i64*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 1
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %2963 to i64*
  %2964 = load i64, i64* %PC.i435
  %2965 = add i64 %2964, 5
  store i64 %2965, i64* %PC.i435
  store i64 2, i64* %RAX.i436, align 8
  store %struct.Memory* %loadMem_475d21, %struct.Memory** %MEMORY
  %loadMem_475d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 33
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %2968 to i64*
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2970 = getelementptr inbounds %struct.GPR, %struct.GPR* %2969, i32 0, i32 5
  %2971 = getelementptr inbounds %struct.Reg, %struct.Reg* %2970, i32 0, i32 0
  %RCX.i433 = bitcast %union.anon* %2971 to i64*
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 15
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %2974 to i64*
  %2975 = load i64, i64* %RBP.i434
  %2976 = sub i64 %2975, 16
  %2977 = load i64, i64* %PC.i432
  %2978 = add i64 %2977, 4
  store i64 %2978, i64* %PC.i432
  %2979 = inttoptr i64 %2976 to i64*
  %2980 = load i64, i64* %2979
  store i64 %2980, i64* %RCX.i433, align 8
  store %struct.Memory* %loadMem_475d26, %struct.Memory** %MEMORY
  %loadMem_475d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 33
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %2983 to i64*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 5
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %RCX.i431 = bitcast %union.anon* %2986 to i64*
  %2987 = load i64, i64* %RCX.i431
  %2988 = add i64 %2987, 6552
  %2989 = load i64, i64* %PC.i430
  %2990 = add i64 %2989, 7
  store i64 %2990, i64* %PC.i430
  %2991 = inttoptr i64 %2988 to i32*
  %2992 = load i32, i32* %2991
  %2993 = sext i32 %2992 to i64
  store i64 %2993, i64* %RCX.i431, align 8
  store %struct.Memory* %loadMem_475d2a, %struct.Memory** %MEMORY
  %loadMem_475d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 33
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %2996 to i64*
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 5
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %RCX.i427 = bitcast %union.anon* %2999 to i64*
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 7
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %RDX.i428 = bitcast %union.anon* %3002 to i64*
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 15
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %3005 to i64*
  %3006 = load i64, i64* %RBP.i429
  %3007 = load i64, i64* %RCX.i427
  %3008 = mul i64 %3007, 4
  %3009 = add i64 %3006, -48
  %3010 = add i64 %3009, %3008
  %3011 = load i64, i64* %PC.i426
  %3012 = add i64 %3011, 4
  store i64 %3012, i64* %PC.i426
  %3013 = inttoptr i64 %3010 to i32*
  %3014 = load i32, i32* %3013
  %3015 = zext i32 %3014 to i64
  store i64 %3015, i64* %RDX.i428, align 8
  store %struct.Memory* %loadMem_475d31, %struct.Memory** %MEMORY
  %loadMem_475d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 33
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %3018 to i64*
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 5
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %RCX.i424 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 15
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %3024 to i64*
  %3025 = load i64, i64* %RBP.i425
  %3026 = sub i64 %3025, 16
  %3027 = load i64, i64* %PC.i423
  %3028 = add i64 %3027, 4
  store i64 %3028, i64* %PC.i423
  %3029 = inttoptr i64 %3026 to i64*
  %3030 = load i64, i64* %3029
  store i64 %3030, i64* %RCX.i424, align 8
  store %struct.Memory* %loadMem_475d35, %struct.Memory** %MEMORY
  %loadMem_475d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 33
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %3033 to i64*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 5
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %RCX.i421 = bitcast %union.anon* %3036 to i64*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 7
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %RDX.i422 = bitcast %union.anon* %3039 to i64*
  %3040 = load i64, i64* %RDX.i422
  %3041 = load i64, i64* %RCX.i421
  %3042 = add i64 %3041, 6564
  %3043 = load i64, i64* %PC.i420
  %3044 = add i64 %3043, 7
  store i64 %3044, i64* %PC.i420
  %3045 = inttoptr i64 %3042 to i32*
  %3046 = load i32, i32* %3045
  %3047 = shl i64 %3040, 32
  %3048 = ashr exact i64 %3047, 32
  %3049 = sext i32 %3046 to i64
  %3050 = mul i64 %3049, %3048
  %3051 = trunc i64 %3050 to i32
  %3052 = and i64 %3050, 4294967295
  store i64 %3052, i64* %RDX.i422, align 8
  %3053 = shl i64 %3050, 32
  %3054 = ashr exact i64 %3053, 32
  %3055 = icmp ne i64 %3054, %3050
  %3056 = zext i1 %3055 to i8
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3056, i8* %3057, align 1
  %3058 = and i32 %3051, 255
  %3059 = call i32 @llvm.ctpop.i32(i32 %3058)
  %3060 = trunc i32 %3059 to i8
  %3061 = and i8 %3060, 1
  %3062 = xor i8 %3061, 1
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3062, i8* %3063, align 1
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3064, align 1
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3065, align 1
  %3066 = lshr i32 %3051, 31
  %3067 = trunc i32 %3066 to i8
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3067, i8* %3068, align 1
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3056, i8* %3069, align 1
  store %struct.Memory* %loadMem_475d39, %struct.Memory** %MEMORY
  %loadMem_475d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3071 = getelementptr inbounds %struct.GPR, %struct.GPR* %3070, i32 0, i32 33
  %3072 = getelementptr inbounds %struct.Reg, %struct.Reg* %3071, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %3072 to i64*
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 7
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %EDX.i418 = bitcast %union.anon* %3075 to i32*
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 15
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %3078 to i64*
  %3079 = load i64, i64* %RBP.i419
  %3080 = sub i64 %3079, 68
  %3081 = load i32, i32* %EDX.i418
  %3082 = zext i32 %3081 to i64
  %3083 = load i64, i64* %PC.i417
  %3084 = add i64 %3083, 3
  store i64 %3084, i64* %PC.i417
  %3085 = inttoptr i64 %3080 to i32*
  store i32 %3081, i32* %3085
  store %struct.Memory* %loadMem_475d40, %struct.Memory** %MEMORY
  %loadMem_475d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 33
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %3088 to i64*
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 5
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %RCX.i415 = bitcast %union.anon* %3091 to i64*
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3093 = getelementptr inbounds %struct.GPR, %struct.GPR* %3092, i32 0, i32 15
  %3094 = getelementptr inbounds %struct.Reg, %struct.Reg* %3093, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %3094 to i64*
  %3095 = load i64, i64* %RBP.i416
  %3096 = sub i64 %3095, 16
  %3097 = load i64, i64* %PC.i414
  %3098 = add i64 %3097, 4
  store i64 %3098, i64* %PC.i414
  %3099 = inttoptr i64 %3096 to i64*
  %3100 = load i64, i64* %3099
  store i64 %3100, i64* %RCX.i415, align 8
  store %struct.Memory* %loadMem_475d43, %struct.Memory** %MEMORY
  %loadMem_475d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 33
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %3103 to i64*
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 5
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %RCX.i413 = bitcast %union.anon* %3106 to i64*
  %3107 = load i64, i64* %RCX.i413
  %3108 = add i64 %3107, 6552
  %3109 = load i64, i64* %PC.i412
  %3110 = add i64 %3109, 7
  store i64 %3110, i64* %PC.i412
  %3111 = inttoptr i64 %3108 to i32*
  %3112 = load i32, i32* %3111
  %3113 = sext i32 %3112 to i64
  store i64 %3113, i64* %RCX.i413, align 8
  store %struct.Memory* %loadMem_475d47, %struct.Memory** %MEMORY
  %loadMem_475d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 33
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %3116 to i64*
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 5
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %RCX.i409 = bitcast %union.anon* %3119 to i64*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 7
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %RDX.i410 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 15
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %3125 to i64*
  %3126 = load i64, i64* %RBP.i411
  %3127 = load i64, i64* %RCX.i409
  %3128 = mul i64 %3127, 4
  %3129 = add i64 %3126, -48
  %3130 = add i64 %3129, %3128
  %3131 = load i64, i64* %PC.i408
  %3132 = add i64 %3131, 4
  store i64 %3132, i64* %PC.i408
  %3133 = inttoptr i64 %3130 to i32*
  %3134 = load i32, i32* %3133
  %3135 = zext i32 %3134 to i64
  store i64 %3135, i64* %RDX.i410, align 8
  store %struct.Memory* %loadMem_475d4e, %struct.Memory** %MEMORY
  %loadMem_475d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 33
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %3138 to i64*
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 5
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %RCX.i406 = bitcast %union.anon* %3141 to i64*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 15
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %3144 to i64*
  %3145 = load i64, i64* %RBP.i407
  %3146 = sub i64 %3145, 16
  %3147 = load i64, i64* %PC.i405
  %3148 = add i64 %3147, 4
  store i64 %3148, i64* %PC.i405
  %3149 = inttoptr i64 %3146 to i64*
  %3150 = load i64, i64* %3149
  store i64 %3150, i64* %RCX.i406, align 8
  store %struct.Memory* %loadMem_475d52, %struct.Memory** %MEMORY
  %loadMem_475d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 33
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %3153 to i64*
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 5
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %RCX.i403 = bitcast %union.anon* %3156 to i64*
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 7
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %RDX.i404 = bitcast %union.anon* %3159 to i64*
  %3160 = load i64, i64* %RDX.i404
  %3161 = load i64, i64* %RCX.i403
  %3162 = add i64 %3161, 6568
  %3163 = load i64, i64* %PC.i402
  %3164 = add i64 %3163, 7
  store i64 %3164, i64* %PC.i402
  %3165 = inttoptr i64 %3162 to i32*
  %3166 = load i32, i32* %3165
  %3167 = shl i64 %3160, 32
  %3168 = ashr exact i64 %3167, 32
  %3169 = sext i32 %3166 to i64
  %3170 = mul i64 %3169, %3168
  %3171 = trunc i64 %3170 to i32
  %3172 = and i64 %3170, 4294967295
  store i64 %3172, i64* %RDX.i404, align 8
  %3173 = shl i64 %3170, 32
  %3174 = ashr exact i64 %3173, 32
  %3175 = icmp ne i64 %3174, %3170
  %3176 = zext i1 %3175 to i8
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3176, i8* %3177, align 1
  %3178 = and i32 %3171, 255
  %3179 = call i32 @llvm.ctpop.i32(i32 %3178)
  %3180 = trunc i32 %3179 to i8
  %3181 = and i8 %3180, 1
  %3182 = xor i8 %3181, 1
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3182, i8* %3183, align 1
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3184, align 1
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3185, align 1
  %3186 = lshr i32 %3171, 31
  %3187 = trunc i32 %3186 to i8
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3187, i8* %3188, align 1
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3176, i8* %3189, align 1
  store %struct.Memory* %loadMem_475d56, %struct.Memory** %MEMORY
  %loadMem_475d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 33
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %3192 to i64*
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 7
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %EDX.i400 = bitcast %union.anon* %3195 to i32*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 15
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %3198 to i64*
  %3199 = load i64, i64* %RBP.i401
  %3200 = sub i64 %3199, 72
  %3201 = load i32, i32* %EDX.i400
  %3202 = zext i32 %3201 to i64
  %3203 = load i64, i64* %PC.i399
  %3204 = add i64 %3203, 3
  store i64 %3204, i64* %PC.i399
  %3205 = inttoptr i64 %3200 to i32*
  store i32 %3201, i32* %3205
  store %struct.Memory* %loadMem_475d5d, %struct.Memory** %MEMORY
  %loadMem_475d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3207 = getelementptr inbounds %struct.GPR, %struct.GPR* %3206, i32 0, i32 33
  %3208 = getelementptr inbounds %struct.Reg, %struct.Reg* %3207, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %3208 to i64*
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 5
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %RCX.i397 = bitcast %union.anon* %3211 to i64*
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 15
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %3214 to i64*
  %3215 = load i64, i64* %RBP.i398
  %3216 = sub i64 %3215, 16
  %3217 = load i64, i64* %PC.i396
  %3218 = add i64 %3217, 4
  store i64 %3218, i64* %PC.i396
  %3219 = inttoptr i64 %3216 to i64*
  %3220 = load i64, i64* %3219
  store i64 %3220, i64* %RCX.i397, align 8
  store %struct.Memory* %loadMem_475d60, %struct.Memory** %MEMORY
  %loadMem_475d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 33
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %3223 to i64*
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 5
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %RCX.i395 = bitcast %union.anon* %3226 to i64*
  %3227 = load i64, i64* %RCX.i395
  %3228 = add i64 %3227, 6552
  %3229 = load i64, i64* %PC.i394
  %3230 = add i64 %3229, 7
  store i64 %3230, i64* %PC.i394
  %3231 = inttoptr i64 %3228 to i32*
  %3232 = load i32, i32* %3231
  %3233 = sext i32 %3232 to i64
  store i64 %3233, i64* %RCX.i395, align 8
  store %struct.Memory* %loadMem_475d64, %struct.Memory** %MEMORY
  %loadMem_475d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 33
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %3236 to i64*
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 5
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %RCX.i391 = bitcast %union.anon* %3239 to i64*
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 7
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %RDX.i392 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 15
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %3245 to i64*
  %3246 = load i64, i64* %RBP.i393
  %3247 = load i64, i64* %RCX.i391
  %3248 = mul i64 %3247, 4
  %3249 = add i64 %3246, -64
  %3250 = add i64 %3249, %3248
  %3251 = load i64, i64* %PC.i390
  %3252 = add i64 %3251, 4
  store i64 %3252, i64* %PC.i390
  %3253 = inttoptr i64 %3250 to i32*
  %3254 = load i32, i32* %3253
  %3255 = zext i32 %3254 to i64
  store i64 %3255, i64* %RDX.i392, align 8
  store %struct.Memory* %loadMem_475d6b, %struct.Memory** %MEMORY
  %loadMem_475d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 33
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %3258 to i64*
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 5
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %RCX.i388 = bitcast %union.anon* %3261 to i64*
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 15
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %3264 to i64*
  %3265 = load i64, i64* %RBP.i389
  %3266 = sub i64 %3265, 16
  %3267 = load i64, i64* %PC.i387
  %3268 = add i64 %3267, 4
  store i64 %3268, i64* %PC.i387
  %3269 = inttoptr i64 %3266 to i64*
  %3270 = load i64, i64* %3269
  store i64 %3270, i64* %RCX.i388, align 8
  store %struct.Memory* %loadMem_475d6f, %struct.Memory** %MEMORY
  %loadMem_475d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 33
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %3273 to i64*
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 1
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %EAX.i385 = bitcast %union.anon* %3276 to i32*
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 9
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %RSI.i386 = bitcast %union.anon* %3279 to i64*
  %3280 = load i32, i32* %EAX.i385
  %3281 = zext i32 %3280 to i64
  %3282 = load i64, i64* %PC.i384
  %3283 = add i64 %3282, 2
  store i64 %3283, i64* %PC.i384
  %3284 = and i64 %3281, 4294967295
  store i64 %3284, i64* %RSI.i386, align 8
  store %struct.Memory* %loadMem_475d73, %struct.Memory** %MEMORY
  %loadMem_475d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 33
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %3287 to i64*
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 5
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %RCX.i382 = bitcast %union.anon* %3290 to i64*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 9
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %RSI.i383 = bitcast %union.anon* %3293 to i64*
  %3294 = load i64, i64* %RSI.i383
  %3295 = load i64, i64* %RCX.i382
  %3296 = add i64 %3295, 6556
  %3297 = load i64, i64* %PC.i381
  %3298 = add i64 %3297, 6
  store i64 %3298, i64* %PC.i381
  %3299 = trunc i64 %3294 to i32
  %3300 = inttoptr i64 %3296 to i32*
  %3301 = load i32, i32* %3300
  %3302 = sub i32 %3299, %3301
  %3303 = zext i32 %3302 to i64
  store i64 %3303, i64* %RSI.i383, align 8
  %3304 = icmp ult i32 %3299, %3301
  %3305 = zext i1 %3304 to i8
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3305, i8* %3306, align 1
  %3307 = and i32 %3302, 255
  %3308 = call i32 @llvm.ctpop.i32(i32 %3307)
  %3309 = trunc i32 %3308 to i8
  %3310 = and i8 %3309, 1
  %3311 = xor i8 %3310, 1
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3311, i8* %3312, align 1
  %3313 = xor i32 %3301, %3299
  %3314 = xor i32 %3313, %3302
  %3315 = lshr i32 %3314, 4
  %3316 = trunc i32 %3315 to i8
  %3317 = and i8 %3316, 1
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3317, i8* %3318, align 1
  %3319 = icmp eq i32 %3302, 0
  %3320 = zext i1 %3319 to i8
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3320, i8* %3321, align 1
  %3322 = lshr i32 %3302, 31
  %3323 = trunc i32 %3322 to i8
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3323, i8* %3324, align 1
  %3325 = lshr i32 %3299, 31
  %3326 = lshr i32 %3301, 31
  %3327 = xor i32 %3326, %3325
  %3328 = xor i32 %3322, %3325
  %3329 = add i32 %3328, %3327
  %3330 = icmp eq i32 %3329, 2
  %3331 = zext i1 %3330 to i8
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3331, i8* %3332, align 1
  store %struct.Memory* %loadMem_475d75, %struct.Memory** %MEMORY
  %loadMem_475d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 33
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %3335 to i64*
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 9
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %3338 to i32*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 7
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %RDX.i380 = bitcast %union.anon* %3341 to i64*
  %3342 = load i64, i64* %RDX.i380
  %3343 = load i32, i32* %ESI.i
  %3344 = zext i32 %3343 to i64
  %3345 = load i64, i64* %PC.i379
  %3346 = add i64 %3345, 3
  store i64 %3346, i64* %PC.i379
  %3347 = shl i64 %3342, 32
  %3348 = ashr exact i64 %3347, 32
  %3349 = shl i64 %3344, 32
  %3350 = ashr exact i64 %3349, 32
  %3351 = mul i64 %3350, %3348
  %3352 = trunc i64 %3351 to i32
  %3353 = and i64 %3351, 4294967295
  store i64 %3353, i64* %RDX.i380, align 8
  %3354 = shl i64 %3351, 32
  %3355 = ashr exact i64 %3354, 32
  %3356 = icmp ne i64 %3355, %3351
  %3357 = zext i1 %3356 to i8
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3357, i8* %3358, align 1
  %3359 = and i32 %3352, 255
  %3360 = call i32 @llvm.ctpop.i32(i32 %3359)
  %3361 = trunc i32 %3360 to i8
  %3362 = and i8 %3361, 1
  %3363 = xor i8 %3362, 1
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3363, i8* %3364, align 1
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3365, align 1
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3366, align 1
  %3367 = lshr i32 %3352, 31
  %3368 = trunc i32 %3367 to i8
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3368, i8* %3369, align 1
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3357, i8* %3370, align 1
  store %struct.Memory* %loadMem_475d7b, %struct.Memory** %MEMORY
  %loadMem_475d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 33
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %3373 to i64*
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 5
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %RCX.i377 = bitcast %union.anon* %3376 to i64*
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 15
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %3379 to i64*
  %3380 = load i64, i64* %RBP.i378
  %3381 = sub i64 %3380, 16
  %3382 = load i64, i64* %PC.i376
  %3383 = add i64 %3382, 4
  store i64 %3383, i64* %PC.i376
  %3384 = inttoptr i64 %3381 to i64*
  %3385 = load i64, i64* %3384
  store i64 %3385, i64* %RCX.i377, align 8
  store %struct.Memory* %loadMem_475d7e, %struct.Memory** %MEMORY
  %loadMem_475d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 33
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %3388 to i64*
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 5
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %RCX.i374 = bitcast %union.anon* %3391 to i64*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 7
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %RDX.i375 = bitcast %union.anon* %3394 to i64*
  %3395 = load i64, i64* %RDX.i375
  %3396 = load i64, i64* %RCX.i374
  %3397 = add i64 %3396, 6572
  %3398 = load i64, i64* %PC.i373
  %3399 = add i64 %3398, 7
  store i64 %3399, i64* %PC.i373
  %3400 = inttoptr i64 %3397 to i32*
  %3401 = load i32, i32* %3400
  %3402 = shl i64 %3395, 32
  %3403 = ashr exact i64 %3402, 32
  %3404 = sext i32 %3401 to i64
  %3405 = mul i64 %3404, %3403
  %3406 = trunc i64 %3405 to i32
  %3407 = and i64 %3405, 4294967295
  store i64 %3407, i64* %RDX.i375, align 8
  %3408 = shl i64 %3405, 32
  %3409 = ashr exact i64 %3408, 32
  %3410 = icmp ne i64 %3409, %3405
  %3411 = zext i1 %3410 to i8
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3411, i8* %3412, align 1
  %3413 = and i32 %3406, 255
  %3414 = call i32 @llvm.ctpop.i32(i32 %3413)
  %3415 = trunc i32 %3414 to i8
  %3416 = and i8 %3415, 1
  %3417 = xor i8 %3416, 1
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3417, i8* %3418, align 1
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3419, align 1
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3420, align 1
  %3421 = lshr i32 %3406, 31
  %3422 = trunc i32 %3421 to i8
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3422, i8* %3423, align 1
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3411, i8* %3424, align 1
  store %struct.Memory* %loadMem_475d82, %struct.Memory** %MEMORY
  %loadMem_475d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 33
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %3427 to i64*
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 7
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %EDX.i371 = bitcast %union.anon* %3430 to i32*
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 15
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %3433 to i64*
  %3434 = load i64, i64* %RBP.i372
  %3435 = sub i64 %3434, 76
  %3436 = load i32, i32* %EDX.i371
  %3437 = zext i32 %3436 to i64
  %3438 = load i64, i64* %PC.i370
  %3439 = add i64 %3438, 3
  store i64 %3439, i64* %PC.i370
  %3440 = inttoptr i64 %3435 to i32*
  store i32 %3436, i32* %3440
  store %struct.Memory* %loadMem_475d89, %struct.Memory** %MEMORY
  %loadMem_475d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3442 = getelementptr inbounds %struct.GPR, %struct.GPR* %3441, i32 0, i32 33
  %3443 = getelementptr inbounds %struct.Reg, %struct.Reg* %3442, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %3443 to i64*
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3445 = getelementptr inbounds %struct.GPR, %struct.GPR* %3444, i32 0, i32 5
  %3446 = getelementptr inbounds %struct.Reg, %struct.Reg* %3445, i32 0, i32 0
  %RCX.i368 = bitcast %union.anon* %3446 to i64*
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 15
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %3449 to i64*
  %3450 = load i64, i64* %RBP.i369
  %3451 = sub i64 %3450, 16
  %3452 = load i64, i64* %PC.i367
  %3453 = add i64 %3452, 4
  store i64 %3453, i64* %PC.i367
  %3454 = inttoptr i64 %3451 to i64*
  %3455 = load i64, i64* %3454
  store i64 %3455, i64* %RCX.i368, align 8
  store %struct.Memory* %loadMem_475d8c, %struct.Memory** %MEMORY
  %loadMem_475d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 33
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %3458 to i64*
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 5
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %3461 to i64*
  %3462 = load i64, i64* %RCX.i366
  %3463 = add i64 %3462, 6552
  %3464 = load i64, i64* %PC.i365
  %3465 = add i64 %3464, 7
  store i64 %3465, i64* %PC.i365
  %3466 = inttoptr i64 %3463 to i32*
  %3467 = load i32, i32* %3466
  %3468 = sext i32 %3467 to i64
  store i64 %3468, i64* %RCX.i366, align 8
  store %struct.Memory* %loadMem_475d90, %struct.Memory** %MEMORY
  %loadMem_475d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 33
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %3471 to i64*
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 5
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %RCX.i362 = bitcast %union.anon* %3474 to i64*
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 7
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %RDX.i363 = bitcast %union.anon* %3477 to i64*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 15
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %3480 to i64*
  %3481 = load i64, i64* %RBP.i364
  %3482 = load i64, i64* %RCX.i362
  %3483 = mul i64 %3482, 4
  %3484 = add i64 %3481, -64
  %3485 = add i64 %3484, %3483
  %3486 = load i64, i64* %PC.i361
  %3487 = add i64 %3486, 4
  store i64 %3487, i64* %PC.i361
  %3488 = inttoptr i64 %3485 to i32*
  %3489 = load i32, i32* %3488
  %3490 = zext i32 %3489 to i64
  store i64 %3490, i64* %RDX.i363, align 8
  store %struct.Memory* %loadMem_475d97, %struct.Memory** %MEMORY
  %loadMem_475d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 33
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %3493 to i64*
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 5
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %3496 to i64*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 15
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %3499 to i64*
  %3500 = load i64, i64* %RBP.i360
  %3501 = sub i64 %3500, 16
  %3502 = load i64, i64* %PC.i358
  %3503 = add i64 %3502, 4
  store i64 %3503, i64* %PC.i358
  %3504 = inttoptr i64 %3501 to i64*
  %3505 = load i64, i64* %3504
  store i64 %3505, i64* %RCX.i359, align 8
  store %struct.Memory* %loadMem_475d9b, %struct.Memory** %MEMORY
  %loadMem_475d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %3508 to i64*
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 1
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 5
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %RCX.i357 = bitcast %union.anon* %3514 to i64*
  %3515 = load i64, i64* %RAX.i356
  %3516 = load i64, i64* %RCX.i357
  %3517 = add i64 %3516, 6556
  %3518 = load i64, i64* %PC.i355
  %3519 = add i64 %3518, 6
  store i64 %3519, i64* %PC.i355
  %3520 = trunc i64 %3515 to i32
  %3521 = inttoptr i64 %3517 to i32*
  %3522 = load i32, i32* %3521
  %3523 = sub i32 %3520, %3522
  %3524 = zext i32 %3523 to i64
  store i64 %3524, i64* %RAX.i356, align 8
  %3525 = icmp ult i32 %3520, %3522
  %3526 = zext i1 %3525 to i8
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3526, i8* %3527, align 1
  %3528 = and i32 %3523, 255
  %3529 = call i32 @llvm.ctpop.i32(i32 %3528)
  %3530 = trunc i32 %3529 to i8
  %3531 = and i8 %3530, 1
  %3532 = xor i8 %3531, 1
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3532, i8* %3533, align 1
  %3534 = xor i32 %3522, %3520
  %3535 = xor i32 %3534, %3523
  %3536 = lshr i32 %3535, 4
  %3537 = trunc i32 %3536 to i8
  %3538 = and i8 %3537, 1
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3538, i8* %3539, align 1
  %3540 = icmp eq i32 %3523, 0
  %3541 = zext i1 %3540 to i8
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3541, i8* %3542, align 1
  %3543 = lshr i32 %3523, 31
  %3544 = trunc i32 %3543 to i8
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3544, i8* %3545, align 1
  %3546 = lshr i32 %3520, 31
  %3547 = lshr i32 %3522, 31
  %3548 = xor i32 %3547, %3546
  %3549 = xor i32 %3543, %3546
  %3550 = add i32 %3549, %3548
  %3551 = icmp eq i32 %3550, 2
  %3552 = zext i1 %3551 to i8
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3552, i8* %3553, align 1
  store %struct.Memory* %loadMem_475d9f, %struct.Memory** %MEMORY
  %loadMem_475da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 33
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %3556 to i64*
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3558 = getelementptr inbounds %struct.GPR, %struct.GPR* %3557, i32 0, i32 1
  %3559 = getelementptr inbounds %struct.Reg, %struct.Reg* %3558, i32 0, i32 0
  %EAX.i353 = bitcast %union.anon* %3559 to i32*
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3561 = getelementptr inbounds %struct.GPR, %struct.GPR* %3560, i32 0, i32 7
  %3562 = getelementptr inbounds %struct.Reg, %struct.Reg* %3561, i32 0, i32 0
  %RDX.i354 = bitcast %union.anon* %3562 to i64*
  %3563 = load i64, i64* %RDX.i354
  %3564 = load i32, i32* %EAX.i353
  %3565 = zext i32 %3564 to i64
  %3566 = load i64, i64* %PC.i352
  %3567 = add i64 %3566, 3
  store i64 %3567, i64* %PC.i352
  %3568 = shl i64 %3563, 32
  %3569 = ashr exact i64 %3568, 32
  %3570 = shl i64 %3565, 32
  %3571 = ashr exact i64 %3570, 32
  %3572 = mul i64 %3571, %3569
  %3573 = trunc i64 %3572 to i32
  %3574 = and i64 %3572, 4294967295
  store i64 %3574, i64* %RDX.i354, align 8
  %3575 = shl i64 %3572, 32
  %3576 = ashr exact i64 %3575, 32
  %3577 = icmp ne i64 %3576, %3572
  %3578 = zext i1 %3577 to i8
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3578, i8* %3579, align 1
  %3580 = and i32 %3573, 255
  %3581 = call i32 @llvm.ctpop.i32(i32 %3580)
  %3582 = trunc i32 %3581 to i8
  %3583 = and i8 %3582, 1
  %3584 = xor i8 %3583, 1
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3584, i8* %3585, align 1
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3586, align 1
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3587, align 1
  %3588 = lshr i32 %3573, 31
  %3589 = trunc i32 %3588 to i8
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3589, i8* %3590, align 1
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3578, i8* %3591, align 1
  store %struct.Memory* %loadMem_475da5, %struct.Memory** %MEMORY
  %loadMem_475da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 33
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %3594 to i64*
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 5
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %RCX.i350 = bitcast %union.anon* %3597 to i64*
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 15
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %3600 to i64*
  %3601 = load i64, i64* %RBP.i351
  %3602 = sub i64 %3601, 16
  %3603 = load i64, i64* %PC.i349
  %3604 = add i64 %3603, 4
  store i64 %3604, i64* %PC.i349
  %3605 = inttoptr i64 %3602 to i64*
  %3606 = load i64, i64* %3605
  store i64 %3606, i64* %RCX.i350, align 8
  store %struct.Memory* %loadMem_475da8, %struct.Memory** %MEMORY
  %loadMem_475dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3608 = getelementptr inbounds %struct.GPR, %struct.GPR* %3607, i32 0, i32 33
  %3609 = getelementptr inbounds %struct.Reg, %struct.Reg* %3608, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %3609 to i64*
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3611 = getelementptr inbounds %struct.GPR, %struct.GPR* %3610, i32 0, i32 5
  %3612 = getelementptr inbounds %struct.Reg, %struct.Reg* %3611, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %3612 to i64*
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3614 = getelementptr inbounds %struct.GPR, %struct.GPR* %3613, i32 0, i32 7
  %3615 = getelementptr inbounds %struct.Reg, %struct.Reg* %3614, i32 0, i32 0
  %RDX.i348 = bitcast %union.anon* %3615 to i64*
  %3616 = load i64, i64* %RDX.i348
  %3617 = load i64, i64* %RCX.i347
  %3618 = add i64 %3617, 6576
  %3619 = load i64, i64* %PC.i346
  %3620 = add i64 %3619, 7
  store i64 %3620, i64* %PC.i346
  %3621 = inttoptr i64 %3618 to i32*
  %3622 = load i32, i32* %3621
  %3623 = shl i64 %3616, 32
  %3624 = ashr exact i64 %3623, 32
  %3625 = sext i32 %3622 to i64
  %3626 = mul i64 %3625, %3624
  %3627 = trunc i64 %3626 to i32
  %3628 = and i64 %3626, 4294967295
  store i64 %3628, i64* %RDX.i348, align 8
  %3629 = shl i64 %3626, 32
  %3630 = ashr exact i64 %3629, 32
  %3631 = icmp ne i64 %3630, %3626
  %3632 = zext i1 %3631 to i8
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3632, i8* %3633, align 1
  %3634 = and i32 %3627, 255
  %3635 = call i32 @llvm.ctpop.i32(i32 %3634)
  %3636 = trunc i32 %3635 to i8
  %3637 = and i8 %3636, 1
  %3638 = xor i8 %3637, 1
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3638, i8* %3639, align 1
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3640, align 1
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3641, align 1
  %3642 = lshr i32 %3627, 31
  %3643 = trunc i32 %3642 to i8
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3643, i8* %3644, align 1
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3632, i8* %3645, align 1
  store %struct.Memory* %loadMem_475dac, %struct.Memory** %MEMORY
  %loadMem_475db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 33
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %3648 to i64*
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3650 = getelementptr inbounds %struct.GPR, %struct.GPR* %3649, i32 0, i32 7
  %3651 = getelementptr inbounds %struct.Reg, %struct.Reg* %3650, i32 0, i32 0
  %EDX.i344 = bitcast %union.anon* %3651 to i32*
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 15
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %3654 to i64*
  %3655 = load i64, i64* %RBP.i345
  %3656 = sub i64 %3655, 80
  %3657 = load i32, i32* %EDX.i344
  %3658 = zext i32 %3657 to i64
  %3659 = load i64, i64* %PC.i343
  %3660 = add i64 %3659, 3
  store i64 %3660, i64* %PC.i343
  %3661 = inttoptr i64 %3656 to i32*
  store i32 %3657, i32* %3661
  store %struct.Memory* %loadMem_475db3, %struct.Memory** %MEMORY
  %loadMem_475db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 33
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %3664 to i64*
  %3665 = load i64, i64* %PC.i342
  %3666 = add i64 %3665, 33
  %3667 = load i64, i64* %PC.i342
  %3668 = add i64 %3667, 5
  store i64 %3668, i64* %PC.i342
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3666, i64* %3669, align 8
  store %struct.Memory* %loadMem_475db6, %struct.Memory** %MEMORY
  br label %block_.L_475dd7

block_.L_475dbb:                                  ; preds = %block_475c35
  %loadMem_475dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 33
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %3672 to i64*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 15
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %3675 to i64*
  %3676 = load i64, i64* %RBP.i341
  %3677 = sub i64 %3676, 80
  %3678 = load i64, i64* %PC.i340
  %3679 = add i64 %3678, 7
  store i64 %3679, i64* %PC.i340
  %3680 = inttoptr i64 %3677 to i32*
  store i32 0, i32* %3680
  store %struct.Memory* %loadMem_475dbb, %struct.Memory** %MEMORY
  %loadMem_475dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3682 = getelementptr inbounds %struct.GPR, %struct.GPR* %3681, i32 0, i32 33
  %3683 = getelementptr inbounds %struct.Reg, %struct.Reg* %3682, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %3683 to i64*
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 15
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %3686 to i64*
  %3687 = load i64, i64* %RBP.i339
  %3688 = sub i64 %3687, 76
  %3689 = load i64, i64* %PC.i338
  %3690 = add i64 %3689, 7
  store i64 %3690, i64* %PC.i338
  %3691 = inttoptr i64 %3688 to i32*
  store i32 0, i32* %3691
  store %struct.Memory* %loadMem_475dc2, %struct.Memory** %MEMORY
  %loadMem_475dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3693 = getelementptr inbounds %struct.GPR, %struct.GPR* %3692, i32 0, i32 33
  %3694 = getelementptr inbounds %struct.Reg, %struct.Reg* %3693, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %3694 to i64*
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3696 = getelementptr inbounds %struct.GPR, %struct.GPR* %3695, i32 0, i32 15
  %3697 = getelementptr inbounds %struct.Reg, %struct.Reg* %3696, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %3697 to i64*
  %3698 = load i64, i64* %RBP.i337
  %3699 = sub i64 %3698, 72
  %3700 = load i64, i64* %PC.i336
  %3701 = add i64 %3700, 7
  store i64 %3701, i64* %PC.i336
  %3702 = inttoptr i64 %3699 to i32*
  store i32 0, i32* %3702
  store %struct.Memory* %loadMem_475dc9, %struct.Memory** %MEMORY
  %loadMem_475dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 33
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %3705 to i64*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 15
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %3708 to i64*
  %3709 = load i64, i64* %RBP.i335
  %3710 = sub i64 %3709, 68
  %3711 = load i64, i64* %PC.i334
  %3712 = add i64 %3711, 7
  store i64 %3712, i64* %PC.i334
  %3713 = inttoptr i64 %3710 to i32*
  store i32 0, i32* %3713
  store %struct.Memory* %loadMem_475dd0, %struct.Memory** %MEMORY
  br label %block_.L_475dd7

block_.L_475dd7:                                  ; preds = %block_.L_475dbb, %block_475d21
  %loadMem_475dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3715 = getelementptr inbounds %struct.GPR, %struct.GPR* %3714, i32 0, i32 33
  %3716 = getelementptr inbounds %struct.Reg, %struct.Reg* %3715, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %3716 to i64*
  %3717 = load i64, i64* %PC.i333
  %3718 = add i64 %3717, 5
  %3719 = load i64, i64* %PC.i333
  %3720 = add i64 %3719, 5
  store i64 %3720, i64* %PC.i333
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3718, i64* %3721, align 8
  store %struct.Memory* %loadMem_475dd7, %struct.Memory** %MEMORY
  br label %block_.L_475ddc

block_.L_475ddc:                                  ; preds = %block_.L_475dd7, %block_.L_475c2b
  %loadMem_475ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 33
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %3724 to i64*
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3726 = getelementptr inbounds %struct.GPR, %struct.GPR* %3725, i32 0, i32 1
  %3727 = getelementptr inbounds %struct.Reg, %struct.Reg* %3726, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %3727 to i64*
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 15
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %3730 to i64*
  %3731 = load i64, i64* %RBP.i332
  %3732 = sub i64 %3731, 16
  %3733 = load i64, i64* %PC.i330
  %3734 = add i64 %3733, 4
  store i64 %3734, i64* %PC.i330
  %3735 = inttoptr i64 %3732 to i64*
  %3736 = load i64, i64* %3735
  store i64 %3736, i64* %RAX.i331, align 8
  store %struct.Memory* %loadMem_475ddc, %struct.Memory** %MEMORY
  %loadMem_475de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 33
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %3739 to i64*
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 1
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %3742 to i64*
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 11
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %RDI.i329 = bitcast %union.anon* %3745 to i64*
  %3746 = load i64, i64* %RAX.i328
  %3747 = add i64 %3746, 6424
  %3748 = load i64, i64* %PC.i327
  %3749 = add i64 %3748, 7
  store i64 %3749, i64* %PC.i327
  %3750 = inttoptr i64 %3747 to i64*
  %3751 = load i64, i64* %3750
  store i64 %3751, i64* %RDI.i329, align 8
  store %struct.Memory* %loadMem_475de0, %struct.Memory** %MEMORY
  %loadMem_475de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 33
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %3754 to i64*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 9
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %RSI.i325 = bitcast %union.anon* %3757 to i64*
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 15
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %3760 to i64*
  %3761 = load i64, i64* %RBP.i326
  %3762 = sub i64 %3761, 96
  %3763 = load i64, i64* %PC.i324
  %3764 = add i64 %3763, 4
  store i64 %3764, i64* %PC.i324
  %3765 = inttoptr i64 %3762 to i64*
  %3766 = load i64, i64* %3765
  store i64 %3766, i64* %RSI.i325, align 8
  store %struct.Memory* %loadMem_475de7, %struct.Memory** %MEMORY
  %loadMem_475deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3768 = getelementptr inbounds %struct.GPR, %struct.GPR* %3767, i32 0, i32 33
  %3769 = getelementptr inbounds %struct.Reg, %struct.Reg* %3768, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %3769 to i64*
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 1
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %3772 to i64*
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3774 = getelementptr inbounds %struct.GPR, %struct.GPR* %3773, i32 0, i32 15
  %3775 = getelementptr inbounds %struct.Reg, %struct.Reg* %3774, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %3775 to i64*
  %3776 = load i64, i64* %RBP.i323
  %3777 = sub i64 %3776, 16
  %3778 = load i64, i64* %PC.i321
  %3779 = add i64 %3778, 4
  store i64 %3779, i64* %PC.i321
  %3780 = inttoptr i64 %3777 to i64*
  %3781 = load i64, i64* %3780
  store i64 %3781, i64* %RAX.i322, align 8
  store %struct.Memory* %loadMem_475deb, %struct.Memory** %MEMORY
  %loadMem_475def = load %struct.Memory*, %struct.Memory** %MEMORY
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 33
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %3784 to i64*
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 1
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %RAX.i319 = bitcast %union.anon* %3787 to i64*
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 7
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %RDX.i320 = bitcast %union.anon* %3790 to i64*
  %3791 = load i64, i64* %RAX.i319
  %3792 = add i64 %3791, 6392
  %3793 = load i64, i64* %PC.i318
  %3794 = add i64 %3793, 6
  store i64 %3794, i64* %PC.i318
  %3795 = inttoptr i64 %3792 to i32*
  %3796 = load i32, i32* %3795
  %3797 = zext i32 %3796 to i64
  store i64 %3797, i64* %RDX.i320, align 8
  store %struct.Memory* %loadMem_475def, %struct.Memory** %MEMORY
  %loadMem_475df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 33
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %3800 to i64*
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 1
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %3803 to i64*
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 15
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %3806 to i64*
  %3807 = load i64, i64* %RBP.i317
  %3808 = sub i64 %3807, 16
  %3809 = load i64, i64* %PC.i315
  %3810 = add i64 %3809, 4
  store i64 %3810, i64* %PC.i315
  %3811 = inttoptr i64 %3808 to i64*
  %3812 = load i64, i64* %3811
  store i64 %3812, i64* %RAX.i316, align 8
  store %struct.Memory* %loadMem_475df5, %struct.Memory** %MEMORY
  %loadMem_475df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3814 = getelementptr inbounds %struct.GPR, %struct.GPR* %3813, i32 0, i32 33
  %3815 = getelementptr inbounds %struct.Reg, %struct.Reg* %3814, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %3815 to i64*
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 1
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %3818 to i64*
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 5
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %RCX.i314 = bitcast %union.anon* %3821 to i64*
  %3822 = load i64, i64* %RAX.i313
  %3823 = add i64 %3822, 6396
  %3824 = load i64, i64* %PC.i312
  %3825 = add i64 %3824, 6
  store i64 %3825, i64* %PC.i312
  %3826 = inttoptr i64 %3823 to i32*
  %3827 = load i32, i32* %3826
  %3828 = zext i32 %3827 to i64
  store i64 %3828, i64* %RCX.i314, align 8
  store %struct.Memory* %loadMem_475df9, %struct.Memory** %MEMORY
  %loadMem_475dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 33
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %3831 to i64*
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 17
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %R8D.i310 = bitcast %union.anon* %3834 to i32*
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 15
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %3837 to i64*
  %3838 = bitcast i32* %R8D.i310 to i64*
  %3839 = load i64, i64* %RBP.i311
  %3840 = sub i64 %3839, 84
  %3841 = load i64, i64* %PC.i309
  %3842 = add i64 %3841, 4
  store i64 %3842, i64* %PC.i309
  %3843 = inttoptr i64 %3840 to i32*
  %3844 = load i32, i32* %3843
  %3845 = zext i32 %3844 to i64
  store i64 %3845, i64* %3838, align 8
  store %struct.Memory* %loadMem_475dff, %struct.Memory** %MEMORY
  %loadMem_475e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 33
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %3848 to i64*
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 19
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %R9D.i307 = bitcast %union.anon* %3851 to i32*
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 15
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %3854 to i64*
  %3855 = bitcast i32* %R9D.i307 to i64*
  %3856 = load i64, i64* %RBP.i308
  %3857 = sub i64 %3856, 68
  %3858 = load i64, i64* %PC.i306
  %3859 = add i64 %3858, 4
  store i64 %3859, i64* %PC.i306
  %3860 = inttoptr i64 %3857 to i32*
  %3861 = load i32, i32* %3860
  %3862 = zext i32 %3861 to i64
  store i64 %3862, i64* %3855, align 8
  store %struct.Memory* %loadMem_475e03, %struct.Memory** %MEMORY
  %loadMem_475e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 33
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %3865 to i64*
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 21
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %R10D.i304 = bitcast %union.anon* %3868 to i32*
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3870 = getelementptr inbounds %struct.GPR, %struct.GPR* %3869, i32 0, i32 15
  %3871 = getelementptr inbounds %struct.Reg, %struct.Reg* %3870, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %3871 to i64*
  %3872 = bitcast i32* %R10D.i304 to i64*
  %3873 = load i64, i64* %RBP.i305
  %3874 = sub i64 %3873, 72
  %3875 = load i64, i64* %PC.i303
  %3876 = add i64 %3875, 4
  store i64 %3876, i64* %PC.i303
  %3877 = inttoptr i64 %3874 to i32*
  %3878 = load i32, i32* %3877
  %3879 = zext i32 %3878 to i64
  store i64 %3879, i64* %3872, align 8
  store %struct.Memory* %loadMem_475e07, %struct.Memory** %MEMORY
  %loadMem_475e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 33
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %3882 to i64*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 23
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %R11D.i301 = bitcast %union.anon* %3885 to i32*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 15
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %3888 to i64*
  %3889 = bitcast i32* %R11D.i301 to i64*
  %3890 = load i64, i64* %RBP.i302
  %3891 = sub i64 %3890, 76
  %3892 = load i64, i64* %PC.i300
  %3893 = add i64 %3892, 4
  store i64 %3893, i64* %PC.i300
  %3894 = inttoptr i64 %3891 to i32*
  %3895 = load i32, i32* %3894
  %3896 = zext i32 %3895 to i64
  store i64 %3896, i64* %3889, align 8
  store %struct.Memory* %loadMem_475e0b, %struct.Memory** %MEMORY
  %loadMem_475e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3898 = getelementptr inbounds %struct.GPR, %struct.GPR* %3897, i32 0, i32 33
  %3899 = getelementptr inbounds %struct.Reg, %struct.Reg* %3898, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %3899 to i64*
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3901 = getelementptr inbounds %struct.GPR, %struct.GPR* %3900, i32 0, i32 3
  %3902 = getelementptr inbounds %struct.Reg, %struct.Reg* %3901, i32 0, i32 0
  %RBX.i298 = bitcast %union.anon* %3902 to i64*
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3904 = getelementptr inbounds %struct.GPR, %struct.GPR* %3903, i32 0, i32 15
  %3905 = getelementptr inbounds %struct.Reg, %struct.Reg* %3904, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %3905 to i64*
  %3906 = load i64, i64* %RBP.i299
  %3907 = sub i64 %3906, 80
  %3908 = load i64, i64* %PC.i297
  %3909 = add i64 %3908, 3
  store i64 %3909, i64* %PC.i297
  %3910 = inttoptr i64 %3907 to i32*
  %3911 = load i32, i32* %3910
  %3912 = zext i32 %3911 to i64
  store i64 %3912, i64* %RBX.i298, align 8
  store %struct.Memory* %loadMem_475e0f, %struct.Memory** %MEMORY
  %loadMem_475e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3914 = getelementptr inbounds %struct.GPR, %struct.GPR* %3913, i32 0, i32 33
  %3915 = getelementptr inbounds %struct.Reg, %struct.Reg* %3914, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %3915 to i64*
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3917 = getelementptr inbounds %struct.GPR, %struct.GPR* %3916, i32 0, i32 21
  %3918 = getelementptr inbounds %struct.Reg, %struct.Reg* %3917, i32 0, i32 0
  %R10D.i295 = bitcast %union.anon* %3918 to i32*
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3920 = getelementptr inbounds %struct.GPR, %struct.GPR* %3919, i32 0, i32 13
  %3921 = getelementptr inbounds %struct.Reg, %struct.Reg* %3920, i32 0, i32 0
  %RSP.i296 = bitcast %union.anon* %3921 to i64*
  %3922 = load i64, i64* %RSP.i296
  %3923 = load i32, i32* %R10D.i295
  %3924 = zext i32 %3923 to i64
  %3925 = load i64, i64* %PC.i294
  %3926 = add i64 %3925, 4
  store i64 %3926, i64* %PC.i294
  %3927 = inttoptr i64 %3922 to i32*
  store i32 %3923, i32* %3927
  store %struct.Memory* %loadMem_475e12, %struct.Memory** %MEMORY
  %loadMem_475e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3929 = getelementptr inbounds %struct.GPR, %struct.GPR* %3928, i32 0, i32 33
  %3930 = getelementptr inbounds %struct.Reg, %struct.Reg* %3929, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %3930 to i64*
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 23
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %R11D.i292 = bitcast %union.anon* %3933 to i32*
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 13
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %RSP.i293 = bitcast %union.anon* %3936 to i64*
  %3937 = load i64, i64* %RSP.i293
  %3938 = add i64 %3937, 8
  %3939 = load i32, i32* %R11D.i292
  %3940 = zext i32 %3939 to i64
  %3941 = load i64, i64* %PC.i291
  %3942 = add i64 %3941, 5
  store i64 %3942, i64* %PC.i291
  %3943 = inttoptr i64 %3938 to i32*
  store i32 %3939, i32* %3943
  store %struct.Memory* %loadMem_475e16, %struct.Memory** %MEMORY
  %loadMem_475e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 33
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %3946 to i64*
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3948 = getelementptr inbounds %struct.GPR, %struct.GPR* %3947, i32 0, i32 3
  %3949 = getelementptr inbounds %struct.Reg, %struct.Reg* %3948, i32 0, i32 0
  %EBX.i289 = bitcast %union.anon* %3949 to i32*
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3951 = getelementptr inbounds %struct.GPR, %struct.GPR* %3950, i32 0, i32 13
  %3952 = getelementptr inbounds %struct.Reg, %struct.Reg* %3951, i32 0, i32 0
  %RSP.i290 = bitcast %union.anon* %3952 to i64*
  %3953 = load i64, i64* %RSP.i290
  %3954 = add i64 %3953, 16
  %3955 = load i32, i32* %EBX.i289
  %3956 = zext i32 %3955 to i64
  %3957 = load i64, i64* %PC.i288
  %3958 = add i64 %3957, 4
  store i64 %3958, i64* %PC.i288
  %3959 = inttoptr i64 %3954 to i32*
  store i32 %3955, i32* %3959
  store %struct.Memory* %loadMem_475e1b, %struct.Memory** %MEMORY
  %loadMem1_475e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 33
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %3962 to i64*
  %3963 = load i64, i64* %PC.i287
  %3964 = add i64 %3963, -1951
  %3965 = load i64, i64* %PC.i287
  %3966 = add i64 %3965, 5
  %3967 = load i64, i64* %PC.i287
  %3968 = add i64 %3967, 5
  store i64 %3968, i64* %PC.i287
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3970 = load i64, i64* %3969, align 8
  %3971 = add i64 %3970, -8
  %3972 = inttoptr i64 %3971 to i64*
  store i64 %3966, i64* %3972
  store i64 %3971, i64* %3969, align 8
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3964, i64* %3973, align 8
  store %struct.Memory* %loadMem1_475e1f, %struct.Memory** %MEMORY
  %loadMem2_475e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_475e1f = load i64, i64* %3
  %call2_475e1f = call %struct.Memory* @sub_475680.img2buf(%struct.State* %0, i64 %loadPC_475e1f, %struct.Memory* %loadMem2_475e1f)
  store %struct.Memory* %call2_475e1f, %struct.Memory** %MEMORY
  %loadMem_475e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3975 = getelementptr inbounds %struct.GPR, %struct.GPR* %3974, i32 0, i32 33
  %3976 = getelementptr inbounds %struct.Reg, %struct.Reg* %3975, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %3976 to i64*
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 11
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %RDI.i285 = bitcast %union.anon* %3979 to i64*
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 15
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %3982 to i64*
  %3983 = load i64, i64* %RBP.i286
  %3984 = sub i64 %3983, 20
  %3985 = load i64, i64* %PC.i284
  %3986 = add i64 %3985, 3
  store i64 %3986, i64* %PC.i284
  %3987 = inttoptr i64 %3984 to i32*
  %3988 = load i32, i32* %3987
  %3989 = zext i32 %3988 to i64
  store i64 %3989, i64* %RDI.i285, align 8
  store %struct.Memory* %loadMem_475e24, %struct.Memory** %MEMORY
  %loadMem_475e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 33
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %3992 to i64*
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 9
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %RSI.i282 = bitcast %union.anon* %3995 to i64*
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 15
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %3998 to i64*
  %3999 = load i64, i64* %RBP.i283
  %4000 = sub i64 %3999, 96
  %4001 = load i64, i64* %PC.i281
  %4002 = add i64 %4001, 4
  store i64 %4002, i64* %PC.i281
  %4003 = inttoptr i64 %4000 to i64*
  %4004 = load i64, i64* %4003
  store i64 %4004, i64* %RSI.i282, align 8
  store %struct.Memory* %loadMem_475e27, %struct.Memory** %MEMORY
  %loadMem_475e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 33
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %4007 to i64*
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 1
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %4010 to i64*
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4012 = getelementptr inbounds %struct.GPR, %struct.GPR* %4011, i32 0, i32 15
  %4013 = getelementptr inbounds %struct.Reg, %struct.Reg* %4012, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %4013 to i64*
  %4014 = load i64, i64* %RBP.i280
  %4015 = sub i64 %4014, 16
  %4016 = load i64, i64* %PC.i278
  %4017 = add i64 %4016, 4
  store i64 %4017, i64* %PC.i278
  %4018 = inttoptr i64 %4015 to i64*
  %4019 = load i64, i64* %4018
  store i64 %4019, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_475e2b, %struct.Memory** %MEMORY
  %loadMem_475e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 33
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %4022 to i64*
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4024 = getelementptr inbounds %struct.GPR, %struct.GPR* %4023, i32 0, i32 1
  %4025 = getelementptr inbounds %struct.Reg, %struct.Reg* %4024, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %4025 to i64*
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4027 = getelementptr inbounds %struct.GPR, %struct.GPR* %4026, i32 0, i32 5
  %4028 = getelementptr inbounds %struct.Reg, %struct.Reg* %4027, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %4028 to i64*
  %4029 = load i64, i64* %RAX.i276
  %4030 = add i64 %4029, 6396
  %4031 = load i64, i64* %PC.i275
  %4032 = add i64 %4031, 6
  store i64 %4032, i64* %PC.i275
  %4033 = inttoptr i64 %4030 to i32*
  %4034 = load i32, i32* %4033
  %4035 = zext i32 %4034 to i64
  store i64 %4035, i64* %RCX.i277, align 8
  store %struct.Memory* %loadMem_475e2f, %struct.Memory** %MEMORY
  %loadMem_475e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4037 = getelementptr inbounds %struct.GPR, %struct.GPR* %4036, i32 0, i32 33
  %4038 = getelementptr inbounds %struct.Reg, %struct.Reg* %4037, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %4038 to i64*
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4040 = getelementptr inbounds %struct.GPR, %struct.GPR* %4039, i32 0, i32 5
  %4041 = getelementptr inbounds %struct.Reg, %struct.Reg* %4040, i32 0, i32 0
  %RCX.i273 = bitcast %union.anon* %4041 to i64*
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 15
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %4044 to i64*
  %4045 = load i64, i64* %RCX.i273
  %4046 = load i64, i64* %RBP.i274
  %4047 = sub i64 %4046, 80
  %4048 = load i64, i64* %PC.i272
  %4049 = add i64 %4048, 3
  store i64 %4049, i64* %PC.i272
  %4050 = trunc i64 %4045 to i32
  %4051 = inttoptr i64 %4047 to i32*
  %4052 = load i32, i32* %4051
  %4053 = sub i32 %4050, %4052
  %4054 = zext i32 %4053 to i64
  store i64 %4054, i64* %RCX.i273, align 8
  %4055 = icmp ult i32 %4050, %4052
  %4056 = zext i1 %4055 to i8
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4056, i8* %4057, align 1
  %4058 = and i32 %4053, 255
  %4059 = call i32 @llvm.ctpop.i32(i32 %4058)
  %4060 = trunc i32 %4059 to i8
  %4061 = and i8 %4060, 1
  %4062 = xor i8 %4061, 1
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4062, i8* %4063, align 1
  %4064 = xor i32 %4052, %4050
  %4065 = xor i32 %4064, %4053
  %4066 = lshr i32 %4065, 4
  %4067 = trunc i32 %4066 to i8
  %4068 = and i8 %4067, 1
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4068, i8* %4069, align 1
  %4070 = icmp eq i32 %4053, 0
  %4071 = zext i1 %4070 to i8
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4071, i8* %4072, align 1
  %4073 = lshr i32 %4053, 31
  %4074 = trunc i32 %4073 to i8
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4074, i8* %4075, align 1
  %4076 = lshr i32 %4050, 31
  %4077 = lshr i32 %4052, 31
  %4078 = xor i32 %4077, %4076
  %4079 = xor i32 %4073, %4076
  %4080 = add i32 %4079, %4078
  %4081 = icmp eq i32 %4080, 2
  %4082 = zext i1 %4081 to i8
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4082, i8* %4083, align 1
  store %struct.Memory* %loadMem_475e35, %struct.Memory** %MEMORY
  %loadMem_475e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4085 = getelementptr inbounds %struct.GPR, %struct.GPR* %4084, i32 0, i32 33
  %4086 = getelementptr inbounds %struct.Reg, %struct.Reg* %4085, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %4086 to i64*
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 5
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %4089 to i64*
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 15
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %4092 to i64*
  %4093 = load i64, i64* %RCX.i270
  %4094 = load i64, i64* %RBP.i271
  %4095 = sub i64 %4094, 76
  %4096 = load i64, i64* %PC.i269
  %4097 = add i64 %4096, 3
  store i64 %4097, i64* %PC.i269
  %4098 = trunc i64 %4093 to i32
  %4099 = inttoptr i64 %4095 to i32*
  %4100 = load i32, i32* %4099
  %4101 = sub i32 %4098, %4100
  %4102 = zext i32 %4101 to i64
  store i64 %4102, i64* %RCX.i270, align 8
  %4103 = icmp ult i32 %4098, %4100
  %4104 = zext i1 %4103 to i8
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4104, i8* %4105, align 1
  %4106 = and i32 %4101, 255
  %4107 = call i32 @llvm.ctpop.i32(i32 %4106)
  %4108 = trunc i32 %4107 to i8
  %4109 = and i8 %4108, 1
  %4110 = xor i8 %4109, 1
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4110, i8* %4111, align 1
  %4112 = xor i32 %4100, %4098
  %4113 = xor i32 %4112, %4101
  %4114 = lshr i32 %4113, 4
  %4115 = trunc i32 %4114 to i8
  %4116 = and i8 %4115, 1
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4116, i8* %4117, align 1
  %4118 = icmp eq i32 %4101, 0
  %4119 = zext i1 %4118 to i8
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4119, i8* %4120, align 1
  %4121 = lshr i32 %4101, 31
  %4122 = trunc i32 %4121 to i8
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4122, i8* %4123, align 1
  %4124 = lshr i32 %4098, 31
  %4125 = lshr i32 %4100, 31
  %4126 = xor i32 %4125, %4124
  %4127 = xor i32 %4121, %4124
  %4128 = add i32 %4127, %4126
  %4129 = icmp eq i32 %4128, 2
  %4130 = zext i1 %4129 to i8
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4130, i8* %4131, align 1
  store %struct.Memory* %loadMem_475e38, %struct.Memory** %MEMORY
  %loadMem_475e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 33
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %4134 to i64*
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 1
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %4137 to i64*
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 15
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %4140 to i64*
  %4141 = load i64, i64* %RBP.i268
  %4142 = sub i64 %4141, 16
  %4143 = load i64, i64* %PC.i266
  %4144 = add i64 %4143, 4
  store i64 %4144, i64* %PC.i266
  %4145 = inttoptr i64 %4142 to i64*
  %4146 = load i64, i64* %4145
  store i64 %4146, i64* %RAX.i267, align 8
  store %struct.Memory* %loadMem_475e3b, %struct.Memory** %MEMORY
  %loadMem_475e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 1
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %4152 to i64*
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 7
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %RDX.i265 = bitcast %union.anon* %4155 to i64*
  %4156 = load i64, i64* %RAX.i264
  %4157 = add i64 %4156, 6392
  %4158 = load i64, i64* %PC.i263
  %4159 = add i64 %4158, 6
  store i64 %4159, i64* %PC.i263
  %4160 = inttoptr i64 %4157 to i32*
  %4161 = load i32, i32* %4160
  %4162 = zext i32 %4161 to i64
  store i64 %4162, i64* %RDX.i265, align 8
  store %struct.Memory* %loadMem_475e3f, %struct.Memory** %MEMORY
  %loadMem_475e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 33
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %4165 to i64*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 7
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %RDX.i261 = bitcast %union.anon* %4168 to i64*
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 15
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %4171 to i64*
  %4172 = load i64, i64* %RDX.i261
  %4173 = load i64, i64* %RBP.i262
  %4174 = sub i64 %4173, 72
  %4175 = load i64, i64* %PC.i260
  %4176 = add i64 %4175, 3
  store i64 %4176, i64* %PC.i260
  %4177 = trunc i64 %4172 to i32
  %4178 = inttoptr i64 %4174 to i32*
  %4179 = load i32, i32* %4178
  %4180 = sub i32 %4177, %4179
  %4181 = zext i32 %4180 to i64
  store i64 %4181, i64* %RDX.i261, align 8
  %4182 = icmp ult i32 %4177, %4179
  %4183 = zext i1 %4182 to i8
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4183, i8* %4184, align 1
  %4185 = and i32 %4180, 255
  %4186 = call i32 @llvm.ctpop.i32(i32 %4185)
  %4187 = trunc i32 %4186 to i8
  %4188 = and i8 %4187, 1
  %4189 = xor i8 %4188, 1
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4189, i8* %4190, align 1
  %4191 = xor i32 %4179, %4177
  %4192 = xor i32 %4191, %4180
  %4193 = lshr i32 %4192, 4
  %4194 = trunc i32 %4193 to i8
  %4195 = and i8 %4194, 1
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4195, i8* %4196, align 1
  %4197 = icmp eq i32 %4180, 0
  %4198 = zext i1 %4197 to i8
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4198, i8* %4199, align 1
  %4200 = lshr i32 %4180, 31
  %4201 = trunc i32 %4200 to i8
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4201, i8* %4202, align 1
  %4203 = lshr i32 %4177, 31
  %4204 = lshr i32 %4179, 31
  %4205 = xor i32 %4204, %4203
  %4206 = xor i32 %4200, %4203
  %4207 = add i32 %4206, %4205
  %4208 = icmp eq i32 %4207, 2
  %4209 = zext i1 %4208 to i8
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4209, i8* %4210, align 1
  store %struct.Memory* %loadMem_475e45, %struct.Memory** %MEMORY
  %loadMem_475e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4212 = getelementptr inbounds %struct.GPR, %struct.GPR* %4211, i32 0, i32 33
  %4213 = getelementptr inbounds %struct.Reg, %struct.Reg* %4212, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %4213 to i64*
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 7
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %RDX.i258 = bitcast %union.anon* %4216 to i64*
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 15
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %4219 to i64*
  %4220 = load i64, i64* %RDX.i258
  %4221 = load i64, i64* %RBP.i259
  %4222 = sub i64 %4221, 68
  %4223 = load i64, i64* %PC.i257
  %4224 = add i64 %4223, 3
  store i64 %4224, i64* %PC.i257
  %4225 = trunc i64 %4220 to i32
  %4226 = inttoptr i64 %4222 to i32*
  %4227 = load i32, i32* %4226
  %4228 = sub i32 %4225, %4227
  %4229 = zext i32 %4228 to i64
  store i64 %4229, i64* %RDX.i258, align 8
  %4230 = icmp ult i32 %4225, %4227
  %4231 = zext i1 %4230 to i8
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4231, i8* %4232, align 1
  %4233 = and i32 %4228, 255
  %4234 = call i32 @llvm.ctpop.i32(i32 %4233)
  %4235 = trunc i32 %4234 to i8
  %4236 = and i8 %4235, 1
  %4237 = xor i8 %4236, 1
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4237, i8* %4238, align 1
  %4239 = xor i32 %4227, %4225
  %4240 = xor i32 %4239, %4228
  %4241 = lshr i32 %4240, 4
  %4242 = trunc i32 %4241 to i8
  %4243 = and i8 %4242, 1
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4243, i8* %4244, align 1
  %4245 = icmp eq i32 %4228, 0
  %4246 = zext i1 %4245 to i8
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4246, i8* %4247, align 1
  %4248 = lshr i32 %4228, 31
  %4249 = trunc i32 %4248 to i8
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4249, i8* %4250, align 1
  %4251 = lshr i32 %4225, 31
  %4252 = lshr i32 %4227, 31
  %4253 = xor i32 %4252, %4251
  %4254 = xor i32 %4248, %4251
  %4255 = add i32 %4254, %4253
  %4256 = icmp eq i32 %4255, 2
  %4257 = zext i1 %4256 to i8
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4257, i8* %4258, align 1
  store %struct.Memory* %loadMem_475e48, %struct.Memory** %MEMORY
  %loadMem_475e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 33
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %4261 to i64*
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4263 = getelementptr inbounds %struct.GPR, %struct.GPR* %4262, i32 0, i32 7
  %4264 = getelementptr inbounds %struct.Reg, %struct.Reg* %4263, i32 0, i32 0
  %EDX.i255 = bitcast %union.anon* %4264 to i32*
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4266 = getelementptr inbounds %struct.GPR, %struct.GPR* %4265, i32 0, i32 5
  %4267 = getelementptr inbounds %struct.Reg, %struct.Reg* %4266, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %4267 to i64*
  %4268 = load i64, i64* %RCX.i256
  %4269 = load i32, i32* %EDX.i255
  %4270 = zext i32 %4269 to i64
  %4271 = load i64, i64* %PC.i254
  %4272 = add i64 %4271, 3
  store i64 %4272, i64* %PC.i254
  %4273 = shl i64 %4268, 32
  %4274 = ashr exact i64 %4273, 32
  %4275 = shl i64 %4270, 32
  %4276 = ashr exact i64 %4275, 32
  %4277 = mul i64 %4276, %4274
  %4278 = trunc i64 %4277 to i32
  %4279 = and i64 %4277, 4294967295
  store i64 %4279, i64* %RCX.i256, align 8
  %4280 = shl i64 %4277, 32
  %4281 = ashr exact i64 %4280, 32
  %4282 = icmp ne i64 %4281, %4277
  %4283 = zext i1 %4282 to i8
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4283, i8* %4284, align 1
  %4285 = and i32 %4278, 255
  %4286 = call i32 @llvm.ctpop.i32(i32 %4285)
  %4287 = trunc i32 %4286 to i8
  %4288 = and i8 %4287, 1
  %4289 = xor i8 %4288, 1
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4289, i8* %4290, align 1
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4291, align 1
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4292, align 1
  %4293 = lshr i32 %4278, 31
  %4294 = trunc i32 %4293 to i8
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4294, i8* %4295, align 1
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4283, i8* %4296, align 1
  store %struct.Memory* %loadMem_475e4b, %struct.Memory** %MEMORY
  %loadMem_475e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 33
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %4299 to i64*
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 5
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %4302 to i64*
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 15
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %4305 to i64*
  %4306 = load i64, i64* %RCX.i252
  %4307 = load i64, i64* %RBP.i253
  %4308 = sub i64 %4307, 84
  %4309 = load i64, i64* %PC.i251
  %4310 = add i64 %4309, 4
  store i64 %4310, i64* %PC.i251
  %4311 = inttoptr i64 %4308 to i32*
  %4312 = load i32, i32* %4311
  %4313 = shl i64 %4306, 32
  %4314 = ashr exact i64 %4313, 32
  %4315 = sext i32 %4312 to i64
  %4316 = mul i64 %4315, %4314
  %4317 = trunc i64 %4316 to i32
  %4318 = and i64 %4316, 4294967295
  store i64 %4318, i64* %RCX.i252, align 8
  %4319 = shl i64 %4316, 32
  %4320 = ashr exact i64 %4319, 32
  %4321 = icmp ne i64 %4320, %4316
  %4322 = zext i1 %4321 to i8
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4322, i8* %4323, align 1
  %4324 = and i32 %4317, 255
  %4325 = call i32 @llvm.ctpop.i32(i32 %4324)
  %4326 = trunc i32 %4325 to i8
  %4327 = and i8 %4326, 1
  %4328 = xor i8 %4327, 1
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4328, i8* %4329, align 1
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4330, align 1
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4331, align 1
  %4332 = lshr i32 %4317, 31
  %4333 = trunc i32 %4332 to i8
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4333, i8* %4334, align 1
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4322, i8* %4335, align 1
  store %struct.Memory* %loadMem_475e4e, %struct.Memory** %MEMORY
  %loadMem_475e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 33
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %4338 to i64*
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 5
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %ECX.i249 = bitcast %union.anon* %4341 to i32*
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4343 = getelementptr inbounds %struct.GPR, %struct.GPR* %4342, i32 0, i32 7
  %4344 = getelementptr inbounds %struct.Reg, %struct.Reg* %4343, i32 0, i32 0
  %RDX.i250 = bitcast %union.anon* %4344 to i64*
  %4345 = load i32, i32* %ECX.i249
  %4346 = zext i32 %4345 to i64
  %4347 = load i64, i64* %PC.i248
  %4348 = add i64 %4347, 3
  store i64 %4348, i64* %PC.i248
  %4349 = shl i64 %4346, 32
  %4350 = ashr exact i64 %4349, 32
  store i64 %4350, i64* %RDX.i250, align 8
  store %struct.Memory* %loadMem_475e52, %struct.Memory** %MEMORY
  %loadMem1_475e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 33
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %4353 to i64*
  %4354 = load i64, i64* %PC.i247
  %4355 = add i64 %4354, -478789
  %4356 = load i64, i64* %PC.i247
  %4357 = add i64 %4356, 5
  %4358 = load i64, i64* %PC.i247
  %4359 = add i64 %4358, 5
  store i64 %4359, i64* %PC.i247
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4361 = load i64, i64* %4360, align 8
  %4362 = add i64 %4361, -8
  %4363 = inttoptr i64 %4362 to i64*
  store i64 %4357, i64* %4363
  store i64 %4362, i64* %4360, align 8
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4355, i64* %4364, align 8
  store %struct.Memory* %loadMem1_475e55, %struct.Memory** %MEMORY
  %loadMem2_475e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_475e55 = load i64, i64* %3
  %call2_475e55 = call %struct.Memory* @sub_401010.write_plt(%struct.State* %0, i64 %loadPC_475e55, %struct.Memory* %loadMem2_475e55)
  store %struct.Memory* %call2_475e55, %struct.Memory** %MEMORY
  %loadMem_475e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 33
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %4367 to i64*
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 7
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %RDX.i245 = bitcast %union.anon* %4370 to i64*
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 15
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %4373 to i64*
  %4374 = load i64, i64* %RBP.i246
  %4375 = sub i64 %4374, 16
  %4376 = load i64, i64* %PC.i244
  %4377 = add i64 %4376, 4
  store i64 %4377, i64* %PC.i244
  %4378 = inttoptr i64 %4375 to i64*
  %4379 = load i64, i64* %4378
  store i64 %4379, i64* %RDX.i245, align 8
  store %struct.Memory* %loadMem_475e5a, %struct.Memory** %MEMORY
  %loadMem_475e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4381 = getelementptr inbounds %struct.GPR, %struct.GPR* %4380, i32 0, i32 33
  %4382 = getelementptr inbounds %struct.Reg, %struct.Reg* %4381, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %4382 to i64*
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4384 = getelementptr inbounds %struct.GPR, %struct.GPR* %4383, i32 0, i32 7
  %4385 = getelementptr inbounds %struct.Reg, %struct.Reg* %4384, i32 0, i32 0
  %RDX.i243 = bitcast %union.anon* %4385 to i64*
  %4386 = load i64, i64* %RDX.i243
  %4387 = add i64 %4386, 6552
  %4388 = load i64, i64* %PC.i242
  %4389 = add i64 %4388, 7
  store i64 %4389, i64* %PC.i242
  %4390 = inttoptr i64 %4387 to i32*
  %4391 = load i32, i32* %4390
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4392, align 1
  %4393 = and i32 %4391, 255
  %4394 = call i32 @llvm.ctpop.i32(i32 %4393)
  %4395 = trunc i32 %4394 to i8
  %4396 = and i8 %4395, 1
  %4397 = xor i8 %4396, 1
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4397, i8* %4398, align 1
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4399, align 1
  %4400 = icmp eq i32 %4391, 0
  %4401 = zext i1 %4400 to i8
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4401, i8* %4402, align 1
  %4403 = lshr i32 %4391, 31
  %4404 = trunc i32 %4403 to i8
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4404, i8* %4405, align 1
  %4406 = lshr i32 %4391, 31
  %4407 = xor i32 %4403, %4406
  %4408 = add i32 %4407, %4406
  %4409 = icmp eq i32 %4408, 2
  %4410 = zext i1 %4409 to i8
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4410, i8* %4411, align 1
  store %struct.Memory* %loadMem_475e5e, %struct.Memory** %MEMORY
  %loadMem_475e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 33
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %4414 to i64*
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4416 = getelementptr inbounds %struct.GPR, %struct.GPR* %4415, i32 0, i32 1
  %4417 = getelementptr inbounds %struct.Reg, %struct.Reg* %4416, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %4417 to i64*
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4419 = getelementptr inbounds %struct.GPR, %struct.GPR* %4418, i32 0, i32 15
  %4420 = getelementptr inbounds %struct.Reg, %struct.Reg* %4419, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %4420 to i64*
  %4421 = load i64, i64* %RBP.i241
  %4422 = sub i64 %4421, 120
  %4423 = load i64, i64* %RAX.i240
  %4424 = load i64, i64* %PC.i239
  %4425 = add i64 %4424, 4
  store i64 %4425, i64* %PC.i239
  %4426 = inttoptr i64 %4422 to i64*
  store i64 %4423, i64* %4426
  store %struct.Memory* %loadMem_475e65, %struct.Memory** %MEMORY
  %loadMem_475e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4428 = getelementptr inbounds %struct.GPR, %struct.GPR* %4427, i32 0, i32 33
  %4429 = getelementptr inbounds %struct.Reg, %struct.Reg* %4428, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %4429 to i64*
  %4430 = load i64, i64* %PC.i238
  %4431 = add i64 %4430, 372
  %4432 = load i64, i64* %PC.i238
  %4433 = add i64 %4432, 6
  %4434 = load i64, i64* %PC.i238
  %4435 = add i64 %4434, 6
  store i64 %4435, i64* %PC.i238
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4437 = load i8, i8* %4436, align 1
  store i8 %4437, i8* %BRANCH_TAKEN, align 1
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4439 = icmp ne i8 %4437, 0
  %4440 = select i1 %4439, i64 %4431, i64 %4433
  store i64 %4440, i64* %4438, align 8
  store %struct.Memory* %loadMem_475e69, %struct.Memory** %MEMORY
  %loadBr_475e69 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_475e69 = icmp eq i8 %loadBr_475e69, 1
  br i1 %cmpBr_475e69, label %block_.L_475fdd, label %block_475e6f

block_475e6f:                                     ; preds = %block_.L_475ddc
  %loadMem_475e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4442 = getelementptr inbounds %struct.GPR, %struct.GPR* %4441, i32 0, i32 33
  %4443 = getelementptr inbounds %struct.Reg, %struct.Reg* %4442, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %4443 to i64*
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 1
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %4446 to i64*
  %4447 = load i64, i64* %PC.i236
  %4448 = add i64 %4447, 5
  store i64 %4448, i64* %PC.i236
  store i64 2, i64* %RAX.i237, align 8
  store %struct.Memory* %loadMem_475e6f, %struct.Memory** %MEMORY
  %loadMem_475e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4450 = getelementptr inbounds %struct.GPR, %struct.GPR* %4449, i32 0, i32 33
  %4451 = getelementptr inbounds %struct.Reg, %struct.Reg* %4450, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %4451 to i64*
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4453 = getelementptr inbounds %struct.GPR, %struct.GPR* %4452, i32 0, i32 5
  %4454 = getelementptr inbounds %struct.Reg, %struct.Reg* %4453, i32 0, i32 0
  %RCX.i234 = bitcast %union.anon* %4454 to i64*
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4456 = getelementptr inbounds %struct.GPR, %struct.GPR* %4455, i32 0, i32 15
  %4457 = getelementptr inbounds %struct.Reg, %struct.Reg* %4456, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %4457 to i64*
  %4458 = load i64, i64* %RBP.i235
  %4459 = sub i64 %4458, 16
  %4460 = load i64, i64* %PC.i233
  %4461 = add i64 %4460, 4
  store i64 %4461, i64* %PC.i233
  %4462 = inttoptr i64 %4459 to i64*
  %4463 = load i64, i64* %4462
  store i64 %4463, i64* %RCX.i234, align 8
  store %struct.Memory* %loadMem_475e74, %struct.Memory** %MEMORY
  %loadMem_475e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 33
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %4466 to i64*
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 5
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %RCX.i231 = bitcast %union.anon* %4469 to i64*
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 7
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %RDX.i232 = bitcast %union.anon* %4472 to i64*
  %4473 = load i64, i64* %RCX.i231
  %4474 = add i64 %4473, 6564
  %4475 = load i64, i64* %PC.i230
  %4476 = add i64 %4475, 6
  store i64 %4476, i64* %PC.i230
  %4477 = inttoptr i64 %4474 to i32*
  %4478 = load i32, i32* %4477
  %4479 = zext i32 %4478 to i64
  store i64 %4479, i64* %RDX.i232, align 8
  store %struct.Memory* %loadMem_475e78, %struct.Memory** %MEMORY
  %loadMem_475e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4481 = getelementptr inbounds %struct.GPR, %struct.GPR* %4480, i32 0, i32 33
  %4482 = getelementptr inbounds %struct.Reg, %struct.Reg* %4481, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %4482 to i64*
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4484 = getelementptr inbounds %struct.GPR, %struct.GPR* %4483, i32 0, i32 7
  %4485 = getelementptr inbounds %struct.Reg, %struct.Reg* %4484, i32 0, i32 0
  %EDX.i228 = bitcast %union.anon* %4485 to i32*
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4487 = getelementptr inbounds %struct.GPR, %struct.GPR* %4486, i32 0, i32 15
  %4488 = getelementptr inbounds %struct.Reg, %struct.Reg* %4487, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %4488 to i64*
  %4489 = load i64, i64* %RBP.i229
  %4490 = sub i64 %4489, 68
  %4491 = load i32, i32* %EDX.i228
  %4492 = zext i32 %4491 to i64
  %4493 = load i64, i64* %PC.i227
  %4494 = add i64 %4493, 3
  store i64 %4494, i64* %PC.i227
  %4495 = inttoptr i64 %4490 to i32*
  store i32 %4491, i32* %4495
  store %struct.Memory* %loadMem_475e7e, %struct.Memory** %MEMORY
  %loadMem_475e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 33
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %4498 to i64*
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4500 = getelementptr inbounds %struct.GPR, %struct.GPR* %4499, i32 0, i32 5
  %4501 = getelementptr inbounds %struct.Reg, %struct.Reg* %4500, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %4501 to i64*
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4503 = getelementptr inbounds %struct.GPR, %struct.GPR* %4502, i32 0, i32 15
  %4504 = getelementptr inbounds %struct.Reg, %struct.Reg* %4503, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %4504 to i64*
  %4505 = load i64, i64* %RBP.i226
  %4506 = sub i64 %4505, 16
  %4507 = load i64, i64* %PC.i224
  %4508 = add i64 %4507, 4
  store i64 %4508, i64* %PC.i224
  %4509 = inttoptr i64 %4506 to i64*
  %4510 = load i64, i64* %4509
  store i64 %4510, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_475e81, %struct.Memory** %MEMORY
  %loadMem_475e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 33
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %4513 to i64*
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4515 = getelementptr inbounds %struct.GPR, %struct.GPR* %4514, i32 0, i32 5
  %4516 = getelementptr inbounds %struct.Reg, %struct.Reg* %4515, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %4516 to i64*
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4518 = getelementptr inbounds %struct.GPR, %struct.GPR* %4517, i32 0, i32 7
  %4519 = getelementptr inbounds %struct.Reg, %struct.Reg* %4518, i32 0, i32 0
  %RDX.i223 = bitcast %union.anon* %4519 to i64*
  %4520 = load i64, i64* %RCX.i222
  %4521 = add i64 %4520, 6568
  %4522 = load i64, i64* %PC.i221
  %4523 = add i64 %4522, 6
  store i64 %4523, i64* %PC.i221
  %4524 = inttoptr i64 %4521 to i32*
  %4525 = load i32, i32* %4524
  %4526 = zext i32 %4525 to i64
  store i64 %4526, i64* %RDX.i223, align 8
  store %struct.Memory* %loadMem_475e85, %struct.Memory** %MEMORY
  %loadMem_475e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 33
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %4529 to i64*
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 7
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %EDX.i219 = bitcast %union.anon* %4532 to i32*
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 15
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %4535 to i64*
  %4536 = load i64, i64* %RBP.i220
  %4537 = sub i64 %4536, 72
  %4538 = load i32, i32* %EDX.i219
  %4539 = zext i32 %4538 to i64
  %4540 = load i64, i64* %PC.i218
  %4541 = add i64 %4540, 3
  store i64 %4541, i64* %PC.i218
  %4542 = inttoptr i64 %4537 to i32*
  store i32 %4538, i32* %4542
  store %struct.Memory* %loadMem_475e8b, %struct.Memory** %MEMORY
  %loadMem_475e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4544 = getelementptr inbounds %struct.GPR, %struct.GPR* %4543, i32 0, i32 33
  %4545 = getelementptr inbounds %struct.Reg, %struct.Reg* %4544, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %4545 to i64*
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 5
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %RCX.i216 = bitcast %union.anon* %4548 to i64*
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4550 = getelementptr inbounds %struct.GPR, %struct.GPR* %4549, i32 0, i32 15
  %4551 = getelementptr inbounds %struct.Reg, %struct.Reg* %4550, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %4551 to i64*
  %4552 = load i64, i64* %RBP.i217
  %4553 = sub i64 %4552, 16
  %4554 = load i64, i64* %PC.i215
  %4555 = add i64 %4554, 4
  store i64 %4555, i64* %PC.i215
  %4556 = inttoptr i64 %4553 to i64*
  %4557 = load i64, i64* %4556
  store i64 %4557, i64* %RCX.i216, align 8
  store %struct.Memory* %loadMem_475e8e, %struct.Memory** %MEMORY
  %loadMem_475e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4559 = getelementptr inbounds %struct.GPR, %struct.GPR* %4558, i32 0, i32 33
  %4560 = getelementptr inbounds %struct.Reg, %struct.Reg* %4559, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %4560 to i64*
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4562 = getelementptr inbounds %struct.GPR, %struct.GPR* %4561, i32 0, i32 1
  %4563 = getelementptr inbounds %struct.Reg, %struct.Reg* %4562, i32 0, i32 0
  %EAX.i213 = bitcast %union.anon* %4563 to i32*
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4565 = getelementptr inbounds %struct.GPR, %struct.GPR* %4564, i32 0, i32 7
  %4566 = getelementptr inbounds %struct.Reg, %struct.Reg* %4565, i32 0, i32 0
  %RDX.i214 = bitcast %union.anon* %4566 to i64*
  %4567 = load i32, i32* %EAX.i213
  %4568 = zext i32 %4567 to i64
  %4569 = load i64, i64* %PC.i212
  %4570 = add i64 %4569, 2
  store i64 %4570, i64* %PC.i212
  %4571 = and i64 %4568, 4294967295
  store i64 %4571, i64* %RDX.i214, align 8
  store %struct.Memory* %loadMem_475e92, %struct.Memory** %MEMORY
  %loadMem_475e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 33
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %4574 to i64*
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4576 = getelementptr inbounds %struct.GPR, %struct.GPR* %4575, i32 0, i32 5
  %4577 = getelementptr inbounds %struct.Reg, %struct.Reg* %4576, i32 0, i32 0
  %RCX.i210 = bitcast %union.anon* %4577 to i64*
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4579 = getelementptr inbounds %struct.GPR, %struct.GPR* %4578, i32 0, i32 7
  %4580 = getelementptr inbounds %struct.Reg, %struct.Reg* %4579, i32 0, i32 0
  %RDX.i211 = bitcast %union.anon* %4580 to i64*
  %4581 = load i64, i64* %RDX.i211
  %4582 = load i64, i64* %RCX.i210
  %4583 = add i64 %4582, 6556
  %4584 = load i64, i64* %PC.i209
  %4585 = add i64 %4584, 6
  store i64 %4585, i64* %PC.i209
  %4586 = trunc i64 %4581 to i32
  %4587 = inttoptr i64 %4583 to i32*
  %4588 = load i32, i32* %4587
  %4589 = sub i32 %4586, %4588
  %4590 = zext i32 %4589 to i64
  store i64 %4590, i64* %RDX.i211, align 8
  %4591 = icmp ult i32 %4586, %4588
  %4592 = zext i1 %4591 to i8
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4592, i8* %4593, align 1
  %4594 = and i32 %4589, 255
  %4595 = call i32 @llvm.ctpop.i32(i32 %4594)
  %4596 = trunc i32 %4595 to i8
  %4597 = and i8 %4596, 1
  %4598 = xor i8 %4597, 1
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4598, i8* %4599, align 1
  %4600 = xor i32 %4588, %4586
  %4601 = xor i32 %4600, %4589
  %4602 = lshr i32 %4601, 4
  %4603 = trunc i32 %4602 to i8
  %4604 = and i8 %4603, 1
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4604, i8* %4605, align 1
  %4606 = icmp eq i32 %4589, 0
  %4607 = zext i1 %4606 to i8
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4607, i8* %4608, align 1
  %4609 = lshr i32 %4589, 31
  %4610 = trunc i32 %4609 to i8
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4610, i8* %4611, align 1
  %4612 = lshr i32 %4586, 31
  %4613 = lshr i32 %4588, 31
  %4614 = xor i32 %4613, %4612
  %4615 = xor i32 %4609, %4612
  %4616 = add i32 %4615, %4614
  %4617 = icmp eq i32 %4616, 2
  %4618 = zext i1 %4617 to i8
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4618, i8* %4619, align 1
  store %struct.Memory* %loadMem_475e94, %struct.Memory** %MEMORY
  %loadMem_475e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 33
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %4622 to i64*
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 5
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %4625 to i64*
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 15
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %4628 to i64*
  %4629 = load i64, i64* %RBP.i208
  %4630 = sub i64 %4629, 16
  %4631 = load i64, i64* %PC.i206
  %4632 = add i64 %4631, 4
  store i64 %4632, i64* %PC.i206
  %4633 = inttoptr i64 %4630 to i64*
  %4634 = load i64, i64* %4633
  store i64 %4634, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_475e9a, %struct.Memory** %MEMORY
  %loadMem_475e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 33
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %4637 to i64*
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 5
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %4640 to i64*
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 7
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %RDX.i205 = bitcast %union.anon* %4643 to i64*
  %4644 = load i64, i64* %RDX.i205
  %4645 = load i64, i64* %RCX.i204
  %4646 = add i64 %4645, 6572
  %4647 = load i64, i64* %PC.i203
  %4648 = add i64 %4647, 7
  store i64 %4648, i64* %PC.i203
  %4649 = inttoptr i64 %4646 to i32*
  %4650 = load i32, i32* %4649
  %4651 = shl i64 %4644, 32
  %4652 = ashr exact i64 %4651, 32
  %4653 = sext i32 %4650 to i64
  %4654 = mul i64 %4653, %4652
  %4655 = trunc i64 %4654 to i32
  %4656 = and i64 %4654, 4294967295
  store i64 %4656, i64* %RDX.i205, align 8
  %4657 = shl i64 %4654, 32
  %4658 = ashr exact i64 %4657, 32
  %4659 = icmp ne i64 %4658, %4654
  %4660 = zext i1 %4659 to i8
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4660, i8* %4661, align 1
  %4662 = and i32 %4655, 255
  %4663 = call i32 @llvm.ctpop.i32(i32 %4662)
  %4664 = trunc i32 %4663 to i8
  %4665 = and i8 %4664, 1
  %4666 = xor i8 %4665, 1
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4666, i8* %4667, align 1
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4668, align 1
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4669, align 1
  %4670 = lshr i32 %4655, 31
  %4671 = trunc i32 %4670 to i8
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4671, i8* %4672, align 1
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4660, i8* %4673, align 1
  store %struct.Memory* %loadMem_475e9e, %struct.Memory** %MEMORY
  %loadMem_475ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4675 = getelementptr inbounds %struct.GPR, %struct.GPR* %4674, i32 0, i32 33
  %4676 = getelementptr inbounds %struct.Reg, %struct.Reg* %4675, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %4676 to i64*
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4678 = getelementptr inbounds %struct.GPR, %struct.GPR* %4677, i32 0, i32 7
  %4679 = getelementptr inbounds %struct.Reg, %struct.Reg* %4678, i32 0, i32 0
  %EDX.i201 = bitcast %union.anon* %4679 to i32*
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 15
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %4682 to i64*
  %4683 = load i64, i64* %RBP.i202
  %4684 = sub i64 %4683, 76
  %4685 = load i32, i32* %EDX.i201
  %4686 = zext i32 %4685 to i64
  %4687 = load i64, i64* %PC.i200
  %4688 = add i64 %4687, 3
  store i64 %4688, i64* %PC.i200
  %4689 = inttoptr i64 %4684 to i32*
  store i32 %4685, i32* %4689
  store %struct.Memory* %loadMem_475ea5, %struct.Memory** %MEMORY
  %loadMem_475ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 33
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %4692 to i64*
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 5
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %4695 to i64*
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 15
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %4698 to i64*
  %4699 = load i64, i64* %RBP.i199
  %4700 = sub i64 %4699, 16
  %4701 = load i64, i64* %PC.i197
  %4702 = add i64 %4701, 4
  store i64 %4702, i64* %PC.i197
  %4703 = inttoptr i64 %4700 to i64*
  %4704 = load i64, i64* %4703
  store i64 %4704, i64* %RCX.i198, align 8
  store %struct.Memory* %loadMem_475ea8, %struct.Memory** %MEMORY
  %loadMem_475eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4706 = getelementptr inbounds %struct.GPR, %struct.GPR* %4705, i32 0, i32 33
  %4707 = getelementptr inbounds %struct.Reg, %struct.Reg* %4706, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %4707 to i64*
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4709 = getelementptr inbounds %struct.GPR, %struct.GPR* %4708, i32 0, i32 1
  %4710 = getelementptr inbounds %struct.Reg, %struct.Reg* %4709, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %4710 to i64*
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 5
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %4713 to i64*
  %4714 = load i64, i64* %RAX.i195
  %4715 = load i64, i64* %RCX.i196
  %4716 = add i64 %4715, 6556
  %4717 = load i64, i64* %PC.i194
  %4718 = add i64 %4717, 6
  store i64 %4718, i64* %PC.i194
  %4719 = trunc i64 %4714 to i32
  %4720 = inttoptr i64 %4716 to i32*
  %4721 = load i32, i32* %4720
  %4722 = sub i32 %4719, %4721
  %4723 = zext i32 %4722 to i64
  store i64 %4723, i64* %RAX.i195, align 8
  %4724 = icmp ult i32 %4719, %4721
  %4725 = zext i1 %4724 to i8
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4725, i8* %4726, align 1
  %4727 = and i32 %4722, 255
  %4728 = call i32 @llvm.ctpop.i32(i32 %4727)
  %4729 = trunc i32 %4728 to i8
  %4730 = and i8 %4729, 1
  %4731 = xor i8 %4730, 1
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4731, i8* %4732, align 1
  %4733 = xor i32 %4721, %4719
  %4734 = xor i32 %4733, %4722
  %4735 = lshr i32 %4734, 4
  %4736 = trunc i32 %4735 to i8
  %4737 = and i8 %4736, 1
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4737, i8* %4738, align 1
  %4739 = icmp eq i32 %4722, 0
  %4740 = zext i1 %4739 to i8
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4740, i8* %4741, align 1
  %4742 = lshr i32 %4722, 31
  %4743 = trunc i32 %4742 to i8
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4743, i8* %4744, align 1
  %4745 = lshr i32 %4719, 31
  %4746 = lshr i32 %4721, 31
  %4747 = xor i32 %4746, %4745
  %4748 = xor i32 %4742, %4745
  %4749 = add i32 %4748, %4747
  %4750 = icmp eq i32 %4749, 2
  %4751 = zext i1 %4750 to i8
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4751, i8* %4752, align 1
  store %struct.Memory* %loadMem_475eac, %struct.Memory** %MEMORY
  %loadMem_475eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4754 = getelementptr inbounds %struct.GPR, %struct.GPR* %4753, i32 0, i32 33
  %4755 = getelementptr inbounds %struct.Reg, %struct.Reg* %4754, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %4755 to i64*
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4757 = getelementptr inbounds %struct.GPR, %struct.GPR* %4756, i32 0, i32 5
  %4758 = getelementptr inbounds %struct.Reg, %struct.Reg* %4757, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %4758 to i64*
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4760 = getelementptr inbounds %struct.GPR, %struct.GPR* %4759, i32 0, i32 15
  %4761 = getelementptr inbounds %struct.Reg, %struct.Reg* %4760, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %4761 to i64*
  %4762 = load i64, i64* %RBP.i193
  %4763 = sub i64 %4762, 16
  %4764 = load i64, i64* %PC.i191
  %4765 = add i64 %4764, 4
  store i64 %4765, i64* %PC.i191
  %4766 = inttoptr i64 %4763 to i64*
  %4767 = load i64, i64* %4766
  store i64 %4767, i64* %RCX.i192, align 8
  store %struct.Memory* %loadMem_475eb2, %struct.Memory** %MEMORY
  %loadMem_475eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4769 = getelementptr inbounds %struct.GPR, %struct.GPR* %4768, i32 0, i32 33
  %4770 = getelementptr inbounds %struct.Reg, %struct.Reg* %4769, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %4770 to i64*
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4772 = getelementptr inbounds %struct.GPR, %struct.GPR* %4771, i32 0, i32 1
  %4773 = getelementptr inbounds %struct.Reg, %struct.Reg* %4772, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %4773 to i64*
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 5
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %RCX.i190 = bitcast %union.anon* %4776 to i64*
  %4777 = load i64, i64* %RAX.i189
  %4778 = load i64, i64* %RCX.i190
  %4779 = add i64 %4778, 6576
  %4780 = load i64, i64* %PC.i188
  %4781 = add i64 %4780, 7
  store i64 %4781, i64* %PC.i188
  %4782 = inttoptr i64 %4779 to i32*
  %4783 = load i32, i32* %4782
  %4784 = shl i64 %4777, 32
  %4785 = ashr exact i64 %4784, 32
  %4786 = sext i32 %4783 to i64
  %4787 = mul i64 %4786, %4785
  %4788 = trunc i64 %4787 to i32
  %4789 = and i64 %4787, 4294967295
  store i64 %4789, i64* %RAX.i189, align 8
  %4790 = shl i64 %4787, 32
  %4791 = ashr exact i64 %4790, 32
  %4792 = icmp ne i64 %4791, %4787
  %4793 = zext i1 %4792 to i8
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4793, i8* %4794, align 1
  %4795 = and i32 %4788, 255
  %4796 = call i32 @llvm.ctpop.i32(i32 %4795)
  %4797 = trunc i32 %4796 to i8
  %4798 = and i8 %4797, 1
  %4799 = xor i8 %4798, 1
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4799, i8* %4800, align 1
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4801, align 1
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4802, align 1
  %4803 = lshr i32 %4788, 31
  %4804 = trunc i32 %4803 to i8
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4804, i8* %4805, align 1
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4793, i8* %4806, align 1
  store %struct.Memory* %loadMem_475eb6, %struct.Memory** %MEMORY
  %loadMem_475ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4808 = getelementptr inbounds %struct.GPR, %struct.GPR* %4807, i32 0, i32 33
  %4809 = getelementptr inbounds %struct.Reg, %struct.Reg* %4808, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %4809 to i64*
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4811 = getelementptr inbounds %struct.GPR, %struct.GPR* %4810, i32 0, i32 1
  %4812 = getelementptr inbounds %struct.Reg, %struct.Reg* %4811, i32 0, i32 0
  %EAX.i186 = bitcast %union.anon* %4812 to i32*
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4814 = getelementptr inbounds %struct.GPR, %struct.GPR* %4813, i32 0, i32 15
  %4815 = getelementptr inbounds %struct.Reg, %struct.Reg* %4814, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %4815 to i64*
  %4816 = load i64, i64* %RBP.i187
  %4817 = sub i64 %4816, 80
  %4818 = load i32, i32* %EAX.i186
  %4819 = zext i32 %4818 to i64
  %4820 = load i64, i64* %PC.i185
  %4821 = add i64 %4820, 3
  store i64 %4821, i64* %PC.i185
  %4822 = inttoptr i64 %4817 to i32*
  store i32 %4818, i32* %4822
  store %struct.Memory* %loadMem_475ebd, %struct.Memory** %MEMORY
  %loadMem_475ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4824 = getelementptr inbounds %struct.GPR, %struct.GPR* %4823, i32 0, i32 33
  %4825 = getelementptr inbounds %struct.Reg, %struct.Reg* %4824, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %4825 to i64*
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 5
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %4828 to i64*
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 15
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %4831 to i64*
  %4832 = load i64, i64* %RBP.i184
  %4833 = sub i64 %4832, 16
  %4834 = load i64, i64* %PC.i182
  %4835 = add i64 %4834, 4
  store i64 %4835, i64* %PC.i182
  %4836 = inttoptr i64 %4833 to i64*
  %4837 = load i64, i64* %4836
  store i64 %4837, i64* %RCX.i183, align 8
  store %struct.Memory* %loadMem_475ec0, %struct.Memory** %MEMORY
  %loadMem_475ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4839 = getelementptr inbounds %struct.GPR, %struct.GPR* %4838, i32 0, i32 33
  %4840 = getelementptr inbounds %struct.Reg, %struct.Reg* %4839, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %4840 to i64*
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4842 = getelementptr inbounds %struct.GPR, %struct.GPR* %4841, i32 0, i32 5
  %4843 = getelementptr inbounds %struct.Reg, %struct.Reg* %4842, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %4843 to i64*
  %4844 = load i64, i64* %RCX.i181
  %4845 = add i64 %4844, 6464
  %4846 = load i64, i64* %PC.i180
  %4847 = add i64 %4846, 7
  store i64 %4847, i64* %PC.i180
  %4848 = inttoptr i64 %4845 to i64*
  %4849 = load i64, i64* %4848
  store i64 %4849, i64* %RCX.i181, align 8
  store %struct.Memory* %loadMem_475ec4, %struct.Memory** %MEMORY
  %loadMem_475ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4851 = getelementptr inbounds %struct.GPR, %struct.GPR* %4850, i32 0, i32 33
  %4852 = getelementptr inbounds %struct.Reg, %struct.Reg* %4851, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %4852 to i64*
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4854 = getelementptr inbounds %struct.GPR, %struct.GPR* %4853, i32 0, i32 5
  %4855 = getelementptr inbounds %struct.Reg, %struct.Reg* %4854, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %4855 to i64*
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4857 = getelementptr inbounds %struct.GPR, %struct.GPR* %4856, i32 0, i32 11
  %4858 = getelementptr inbounds %struct.Reg, %struct.Reg* %4857, i32 0, i32 0
  %RDI.i179 = bitcast %union.anon* %4858 to i64*
  %4859 = load i64, i64* %RCX.i178
  %4860 = load i64, i64* %PC.i177
  %4861 = add i64 %4860, 3
  store i64 %4861, i64* %PC.i177
  %4862 = inttoptr i64 %4859 to i64*
  %4863 = load i64, i64* %4862
  store i64 %4863, i64* %RDI.i179, align 8
  store %struct.Memory* %loadMem_475ecb, %struct.Memory** %MEMORY
  %loadMem_475ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 33
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %4866 to i64*
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4868 = getelementptr inbounds %struct.GPR, %struct.GPR* %4867, i32 0, i32 9
  %4869 = getelementptr inbounds %struct.Reg, %struct.Reg* %4868, i32 0, i32 0
  %RSI.i175 = bitcast %union.anon* %4869 to i64*
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4871 = getelementptr inbounds %struct.GPR, %struct.GPR* %4870, i32 0, i32 15
  %4872 = getelementptr inbounds %struct.Reg, %struct.Reg* %4871, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %4872 to i64*
  %4873 = load i64, i64* %RBP.i176
  %4874 = sub i64 %4873, 96
  %4875 = load i64, i64* %PC.i174
  %4876 = add i64 %4875, 4
  store i64 %4876, i64* %PC.i174
  %4877 = inttoptr i64 %4874 to i64*
  %4878 = load i64, i64* %4877
  store i64 %4878, i64* %RSI.i175, align 8
  store %struct.Memory* %loadMem_475ece, %struct.Memory** %MEMORY
  %loadMem_475ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4880 = getelementptr inbounds %struct.GPR, %struct.GPR* %4879, i32 0, i32 33
  %4881 = getelementptr inbounds %struct.Reg, %struct.Reg* %4880, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %4881 to i64*
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4883 = getelementptr inbounds %struct.GPR, %struct.GPR* %4882, i32 0, i32 5
  %4884 = getelementptr inbounds %struct.Reg, %struct.Reg* %4883, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %4884 to i64*
  %4885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4886 = getelementptr inbounds %struct.GPR, %struct.GPR* %4885, i32 0, i32 15
  %4887 = getelementptr inbounds %struct.Reg, %struct.Reg* %4886, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %4887 to i64*
  %4888 = load i64, i64* %RBP.i173
  %4889 = sub i64 %4888, 16
  %4890 = load i64, i64* %PC.i171
  %4891 = add i64 %4890, 4
  store i64 %4891, i64* %PC.i171
  %4892 = inttoptr i64 %4889 to i64*
  %4893 = load i64, i64* %4892
  store i64 %4893, i64* %RCX.i172, align 8
  store %struct.Memory* %loadMem_475ed2, %struct.Memory** %MEMORY
  %loadMem_475ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4895 = getelementptr inbounds %struct.GPR, %struct.GPR* %4894, i32 0, i32 33
  %4896 = getelementptr inbounds %struct.Reg, %struct.Reg* %4895, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %4896 to i64*
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4898 = getelementptr inbounds %struct.GPR, %struct.GPR* %4897, i32 0, i32 5
  %4899 = getelementptr inbounds %struct.Reg, %struct.Reg* %4898, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %4899 to i64*
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4901 = getelementptr inbounds %struct.GPR, %struct.GPR* %4900, i32 0, i32 7
  %4902 = getelementptr inbounds %struct.Reg, %struct.Reg* %4901, i32 0, i32 0
  %RDX.i170 = bitcast %union.anon* %4902 to i64*
  %4903 = load i64, i64* %RCX.i169
  %4904 = add i64 %4903, 6400
  %4905 = load i64, i64* %PC.i168
  %4906 = add i64 %4905, 6
  store i64 %4906, i64* %PC.i168
  %4907 = inttoptr i64 %4904 to i32*
  %4908 = load i32, i32* %4907
  %4909 = zext i32 %4908 to i64
  store i64 %4909, i64* %RDX.i170, align 8
  store %struct.Memory* %loadMem_475ed6, %struct.Memory** %MEMORY
  %loadMem_475edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4911 = getelementptr inbounds %struct.GPR, %struct.GPR* %4910, i32 0, i32 33
  %4912 = getelementptr inbounds %struct.Reg, %struct.Reg* %4911, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %4912 to i64*
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4914 = getelementptr inbounds %struct.GPR, %struct.GPR* %4913, i32 0, i32 5
  %4915 = getelementptr inbounds %struct.Reg, %struct.Reg* %4914, i32 0, i32 0
  %RCX.i166 = bitcast %union.anon* %4915 to i64*
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4917 = getelementptr inbounds %struct.GPR, %struct.GPR* %4916, i32 0, i32 15
  %4918 = getelementptr inbounds %struct.Reg, %struct.Reg* %4917, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %4918 to i64*
  %4919 = load i64, i64* %RBP.i167
  %4920 = sub i64 %4919, 16
  %4921 = load i64, i64* %PC.i165
  %4922 = add i64 %4921, 4
  store i64 %4922, i64* %PC.i165
  %4923 = inttoptr i64 %4920 to i64*
  %4924 = load i64, i64* %4923
  store i64 %4924, i64* %RCX.i166, align 8
  store %struct.Memory* %loadMem_475edc, %struct.Memory** %MEMORY
  %loadMem_475ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 33
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %4927 to i64*
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4929 = getelementptr inbounds %struct.GPR, %struct.GPR* %4928, i32 0, i32 5
  %4930 = getelementptr inbounds %struct.Reg, %struct.Reg* %4929, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %4930 to i64*
  %4931 = load i64, i64* %RCX.i164
  %4932 = add i64 %4931, 6404
  %4933 = load i64, i64* %PC.i163
  %4934 = add i64 %4933, 6
  store i64 %4934, i64* %PC.i163
  %4935 = inttoptr i64 %4932 to i32*
  %4936 = load i32, i32* %4935
  %4937 = zext i32 %4936 to i64
  store i64 %4937, i64* %RCX.i164, align 8
  store %struct.Memory* %loadMem_475ee0, %struct.Memory** %MEMORY
  %loadMem_475ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4939 = getelementptr inbounds %struct.GPR, %struct.GPR* %4938, i32 0, i32 33
  %4940 = getelementptr inbounds %struct.Reg, %struct.Reg* %4939, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %4940 to i64*
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4942 = getelementptr inbounds %struct.GPR, %struct.GPR* %4941, i32 0, i32 17
  %4943 = getelementptr inbounds %struct.Reg, %struct.Reg* %4942, i32 0, i32 0
  %R8D.i161 = bitcast %union.anon* %4943 to i32*
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4945 = getelementptr inbounds %struct.GPR, %struct.GPR* %4944, i32 0, i32 15
  %4946 = getelementptr inbounds %struct.Reg, %struct.Reg* %4945, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %4946 to i64*
  %4947 = bitcast i32* %R8D.i161 to i64*
  %4948 = load i64, i64* %RBP.i162
  %4949 = sub i64 %4948, 84
  %4950 = load i64, i64* %PC.i160
  %4951 = add i64 %4950, 4
  store i64 %4951, i64* %PC.i160
  %4952 = inttoptr i64 %4949 to i32*
  %4953 = load i32, i32* %4952
  %4954 = zext i32 %4953 to i64
  store i64 %4954, i64* %4947, align 8
  store %struct.Memory* %loadMem_475ee6, %struct.Memory** %MEMORY
  %loadMem_475eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4956 = getelementptr inbounds %struct.GPR, %struct.GPR* %4955, i32 0, i32 33
  %4957 = getelementptr inbounds %struct.Reg, %struct.Reg* %4956, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %4957 to i64*
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4959 = getelementptr inbounds %struct.GPR, %struct.GPR* %4958, i32 0, i32 19
  %4960 = getelementptr inbounds %struct.Reg, %struct.Reg* %4959, i32 0, i32 0
  %R9D.i158 = bitcast %union.anon* %4960 to i32*
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4962 = getelementptr inbounds %struct.GPR, %struct.GPR* %4961, i32 0, i32 15
  %4963 = getelementptr inbounds %struct.Reg, %struct.Reg* %4962, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %4963 to i64*
  %4964 = bitcast i32* %R9D.i158 to i64*
  %4965 = load i64, i64* %RBP.i159
  %4966 = sub i64 %4965, 68
  %4967 = load i64, i64* %PC.i157
  %4968 = add i64 %4967, 4
  store i64 %4968, i64* %PC.i157
  %4969 = inttoptr i64 %4966 to i32*
  %4970 = load i32, i32* %4969
  %4971 = zext i32 %4970 to i64
  store i64 %4971, i64* %4964, align 8
  store %struct.Memory* %loadMem_475eea, %struct.Memory** %MEMORY
  %loadMem_475eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 33
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %4974 to i64*
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 1
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %4977 to i64*
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 15
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %4980 to i64*
  %4981 = load i64, i64* %RBP.i156
  %4982 = sub i64 %4981, 72
  %4983 = load i64, i64* %PC.i154
  %4984 = add i64 %4983, 3
  store i64 %4984, i64* %PC.i154
  %4985 = inttoptr i64 %4982 to i32*
  %4986 = load i32, i32* %4985
  %4987 = zext i32 %4986 to i64
  store i64 %4987, i64* %RAX.i155, align 8
  store %struct.Memory* %loadMem_475eee, %struct.Memory** %MEMORY
  %loadMem_475ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4989 = getelementptr inbounds %struct.GPR, %struct.GPR* %4988, i32 0, i32 33
  %4990 = getelementptr inbounds %struct.Reg, %struct.Reg* %4989, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %4990 to i64*
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 21
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %R10D.i152 = bitcast %union.anon* %4993 to i32*
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 15
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %4996 to i64*
  %4997 = bitcast i32* %R10D.i152 to i64*
  %4998 = load i64, i64* %RBP.i153
  %4999 = sub i64 %4998, 76
  %5000 = load i64, i64* %PC.i151
  %5001 = add i64 %5000, 4
  store i64 %5001, i64* %PC.i151
  %5002 = inttoptr i64 %4999 to i32*
  %5003 = load i32, i32* %5002
  %5004 = zext i32 %5003 to i64
  store i64 %5004, i64* %4997, align 8
  store %struct.Memory* %loadMem_475ef1, %struct.Memory** %MEMORY
  %loadMem_475ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5006 = getelementptr inbounds %struct.GPR, %struct.GPR* %5005, i32 0, i32 33
  %5007 = getelementptr inbounds %struct.Reg, %struct.Reg* %5006, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %5007 to i64*
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5009 = getelementptr inbounds %struct.GPR, %struct.GPR* %5008, i32 0, i32 23
  %5010 = getelementptr inbounds %struct.Reg, %struct.Reg* %5009, i32 0, i32 0
  %R11D.i149 = bitcast %union.anon* %5010 to i32*
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5012 = getelementptr inbounds %struct.GPR, %struct.GPR* %5011, i32 0, i32 15
  %5013 = getelementptr inbounds %struct.Reg, %struct.Reg* %5012, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %5013 to i64*
  %5014 = bitcast i32* %R11D.i149 to i64*
  %5015 = load i64, i64* %RBP.i150
  %5016 = sub i64 %5015, 80
  %5017 = load i64, i64* %PC.i148
  %5018 = add i64 %5017, 4
  store i64 %5018, i64* %PC.i148
  %5019 = inttoptr i64 %5016 to i32*
  %5020 = load i32, i32* %5019
  %5021 = zext i32 %5020 to i64
  store i64 %5021, i64* %5014, align 8
  store %struct.Memory* %loadMem_475ef5, %struct.Memory** %MEMORY
  %loadMem_475ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5023 = getelementptr inbounds %struct.GPR, %struct.GPR* %5022, i32 0, i32 33
  %5024 = getelementptr inbounds %struct.Reg, %struct.Reg* %5023, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %5024 to i64*
  %5025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5026 = getelementptr inbounds %struct.GPR, %struct.GPR* %5025, i32 0, i32 1
  %5027 = getelementptr inbounds %struct.Reg, %struct.Reg* %5026, i32 0, i32 0
  %EAX.i146 = bitcast %union.anon* %5027 to i32*
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5029 = getelementptr inbounds %struct.GPR, %struct.GPR* %5028, i32 0, i32 13
  %5030 = getelementptr inbounds %struct.Reg, %struct.Reg* %5029, i32 0, i32 0
  %RSP.i147 = bitcast %union.anon* %5030 to i64*
  %5031 = load i64, i64* %RSP.i147
  %5032 = load i32, i32* %EAX.i146
  %5033 = zext i32 %5032 to i64
  %5034 = load i64, i64* %PC.i145
  %5035 = add i64 %5034, 3
  store i64 %5035, i64* %PC.i145
  %5036 = inttoptr i64 %5031 to i32*
  store i32 %5032, i32* %5036
  store %struct.Memory* %loadMem_475ef9, %struct.Memory** %MEMORY
  %loadMem_475efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5038 = getelementptr inbounds %struct.GPR, %struct.GPR* %5037, i32 0, i32 33
  %5039 = getelementptr inbounds %struct.Reg, %struct.Reg* %5038, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %5039 to i64*
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 21
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %R10D.i143 = bitcast %union.anon* %5042 to i32*
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 13
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %RSP.i144 = bitcast %union.anon* %5045 to i64*
  %5046 = load i64, i64* %RSP.i144
  %5047 = add i64 %5046, 8
  %5048 = load i32, i32* %R10D.i143
  %5049 = zext i32 %5048 to i64
  %5050 = load i64, i64* %PC.i142
  %5051 = add i64 %5050, 5
  store i64 %5051, i64* %PC.i142
  %5052 = inttoptr i64 %5047 to i32*
  store i32 %5048, i32* %5052
  store %struct.Memory* %loadMem_475efc, %struct.Memory** %MEMORY
  %loadMem_475f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5054 = getelementptr inbounds %struct.GPR, %struct.GPR* %5053, i32 0, i32 33
  %5055 = getelementptr inbounds %struct.Reg, %struct.Reg* %5054, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %5055 to i64*
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 23
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %R11D.i140 = bitcast %union.anon* %5058 to i32*
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5060 = getelementptr inbounds %struct.GPR, %struct.GPR* %5059, i32 0, i32 13
  %5061 = getelementptr inbounds %struct.Reg, %struct.Reg* %5060, i32 0, i32 0
  %RSP.i141 = bitcast %union.anon* %5061 to i64*
  %5062 = load i64, i64* %RSP.i141
  %5063 = add i64 %5062, 16
  %5064 = load i32, i32* %R11D.i140
  %5065 = zext i32 %5064 to i64
  %5066 = load i64, i64* %PC.i139
  %5067 = add i64 %5066, 5
  store i64 %5067, i64* %PC.i139
  %5068 = inttoptr i64 %5063 to i32*
  store i32 %5064, i32* %5068
  store %struct.Memory* %loadMem_475f01, %struct.Memory** %MEMORY
  %loadMem1_475f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5070 = getelementptr inbounds %struct.GPR, %struct.GPR* %5069, i32 0, i32 33
  %5071 = getelementptr inbounds %struct.Reg, %struct.Reg* %5070, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %5071 to i64*
  %5072 = load i64, i64* %PC.i138
  %5073 = add i64 %5072, -2182
  %5074 = load i64, i64* %PC.i138
  %5075 = add i64 %5074, 5
  %5076 = load i64, i64* %PC.i138
  %5077 = add i64 %5076, 5
  store i64 %5077, i64* %PC.i138
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5079 = load i64, i64* %5078, align 8
  %5080 = add i64 %5079, -8
  %5081 = inttoptr i64 %5080 to i64*
  store i64 %5075, i64* %5081
  store i64 %5080, i64* %5078, align 8
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5073, i64* %5082, align 8
  store %struct.Memory* %loadMem1_475f06, %struct.Memory** %MEMORY
  %loadMem2_475f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_475f06 = load i64, i64* %3
  %call2_475f06 = call %struct.Memory* @sub_475680.img2buf(%struct.State* %0, i64 %loadPC_475f06, %struct.Memory* %loadMem2_475f06)
  store %struct.Memory* %call2_475f06, %struct.Memory** %MEMORY
  %loadMem_475f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 33
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %5085 to i64*
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5087 = getelementptr inbounds %struct.GPR, %struct.GPR* %5086, i32 0, i32 11
  %5088 = getelementptr inbounds %struct.Reg, %struct.Reg* %5087, i32 0, i32 0
  %RDI.i136 = bitcast %union.anon* %5088 to i64*
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5090 = getelementptr inbounds %struct.GPR, %struct.GPR* %5089, i32 0, i32 15
  %5091 = getelementptr inbounds %struct.Reg, %struct.Reg* %5090, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %5091 to i64*
  %5092 = load i64, i64* %RBP.i137
  %5093 = sub i64 %5092, 20
  %5094 = load i64, i64* %PC.i135
  %5095 = add i64 %5094, 3
  store i64 %5095, i64* %PC.i135
  %5096 = inttoptr i64 %5093 to i32*
  %5097 = load i32, i32* %5096
  %5098 = zext i32 %5097 to i64
  store i64 %5098, i64* %RDI.i136, align 8
  store %struct.Memory* %loadMem_475f0b, %struct.Memory** %MEMORY
  %loadMem_475f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5100 = getelementptr inbounds %struct.GPR, %struct.GPR* %5099, i32 0, i32 33
  %5101 = getelementptr inbounds %struct.Reg, %struct.Reg* %5100, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %5101 to i64*
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5103 = getelementptr inbounds %struct.GPR, %struct.GPR* %5102, i32 0, i32 9
  %5104 = getelementptr inbounds %struct.Reg, %struct.Reg* %5103, i32 0, i32 0
  %RSI.i133 = bitcast %union.anon* %5104 to i64*
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5106 = getelementptr inbounds %struct.GPR, %struct.GPR* %5105, i32 0, i32 15
  %5107 = getelementptr inbounds %struct.Reg, %struct.Reg* %5106, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %5107 to i64*
  %5108 = load i64, i64* %RBP.i134
  %5109 = sub i64 %5108, 96
  %5110 = load i64, i64* %PC.i132
  %5111 = add i64 %5110, 4
  store i64 %5111, i64* %PC.i132
  %5112 = inttoptr i64 %5109 to i64*
  %5113 = load i64, i64* %5112
  store i64 %5113, i64* %RSI.i133, align 8
  store %struct.Memory* %loadMem_475f0e, %struct.Memory** %MEMORY
  %loadMem_475f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5115 = getelementptr inbounds %struct.GPR, %struct.GPR* %5114, i32 0, i32 33
  %5116 = getelementptr inbounds %struct.Reg, %struct.Reg* %5115, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %5116 to i64*
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 3
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %RBX.i130 = bitcast %union.anon* %5119 to i64*
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5121 = getelementptr inbounds %struct.GPR, %struct.GPR* %5120, i32 0, i32 15
  %5122 = getelementptr inbounds %struct.Reg, %struct.Reg* %5121, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %5122 to i64*
  %5123 = load i64, i64* %RBP.i131
  %5124 = sub i64 %5123, 16
  %5125 = load i64, i64* %PC.i129
  %5126 = add i64 %5125, 4
  store i64 %5126, i64* %PC.i129
  %5127 = inttoptr i64 %5124 to i64*
  %5128 = load i64, i64* %5127
  store i64 %5128, i64* %RBX.i130, align 8
  store %struct.Memory* %loadMem_475f12, %struct.Memory** %MEMORY
  %loadMem_475f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5130 = getelementptr inbounds %struct.GPR, %struct.GPR* %5129, i32 0, i32 33
  %5131 = getelementptr inbounds %struct.Reg, %struct.Reg* %5130, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %5131 to i64*
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5133 = getelementptr inbounds %struct.GPR, %struct.GPR* %5132, i32 0, i32 1
  %5134 = getelementptr inbounds %struct.Reg, %struct.Reg* %5133, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %5134 to i64*
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5136 = getelementptr inbounds %struct.GPR, %struct.GPR* %5135, i32 0, i32 3
  %5137 = getelementptr inbounds %struct.Reg, %struct.Reg* %5136, i32 0, i32 0
  %RBX.i128 = bitcast %union.anon* %5137 to i64*
  %5138 = load i64, i64* %RBX.i128
  %5139 = add i64 %5138, 6404
  %5140 = load i64, i64* %PC.i126
  %5141 = add i64 %5140, 6
  store i64 %5141, i64* %PC.i126
  %5142 = inttoptr i64 %5139 to i32*
  %5143 = load i32, i32* %5142
  %5144 = zext i32 %5143 to i64
  store i64 %5144, i64* %RAX.i127, align 8
  store %struct.Memory* %loadMem_475f16, %struct.Memory** %MEMORY
  %loadMem_475f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5146 = getelementptr inbounds %struct.GPR, %struct.GPR* %5145, i32 0, i32 33
  %5147 = getelementptr inbounds %struct.Reg, %struct.Reg* %5146, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %5147 to i64*
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5149 = getelementptr inbounds %struct.GPR, %struct.GPR* %5148, i32 0, i32 1
  %5150 = getelementptr inbounds %struct.Reg, %struct.Reg* %5149, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %5150 to i64*
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 15
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %5153 to i64*
  %5154 = load i64, i64* %RAX.i124
  %5155 = load i64, i64* %RBP.i125
  %5156 = sub i64 %5155, 80
  %5157 = load i64, i64* %PC.i123
  %5158 = add i64 %5157, 3
  store i64 %5158, i64* %PC.i123
  %5159 = trunc i64 %5154 to i32
  %5160 = inttoptr i64 %5156 to i32*
  %5161 = load i32, i32* %5160
  %5162 = sub i32 %5159, %5161
  %5163 = zext i32 %5162 to i64
  store i64 %5163, i64* %RAX.i124, align 8
  %5164 = icmp ult i32 %5159, %5161
  %5165 = zext i1 %5164 to i8
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5165, i8* %5166, align 1
  %5167 = and i32 %5162, 255
  %5168 = call i32 @llvm.ctpop.i32(i32 %5167)
  %5169 = trunc i32 %5168 to i8
  %5170 = and i8 %5169, 1
  %5171 = xor i8 %5170, 1
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5171, i8* %5172, align 1
  %5173 = xor i32 %5161, %5159
  %5174 = xor i32 %5173, %5162
  %5175 = lshr i32 %5174, 4
  %5176 = trunc i32 %5175 to i8
  %5177 = and i8 %5176, 1
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5177, i8* %5178, align 1
  %5179 = icmp eq i32 %5162, 0
  %5180 = zext i1 %5179 to i8
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5180, i8* %5181, align 1
  %5182 = lshr i32 %5162, 31
  %5183 = trunc i32 %5182 to i8
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5183, i8* %5184, align 1
  %5185 = lshr i32 %5159, 31
  %5186 = lshr i32 %5161, 31
  %5187 = xor i32 %5186, %5185
  %5188 = xor i32 %5182, %5185
  %5189 = add i32 %5188, %5187
  %5190 = icmp eq i32 %5189, 2
  %5191 = zext i1 %5190 to i8
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5191, i8* %5192, align 1
  store %struct.Memory* %loadMem_475f1c, %struct.Memory** %MEMORY
  %loadMem_475f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5194 = getelementptr inbounds %struct.GPR, %struct.GPR* %5193, i32 0, i32 33
  %5195 = getelementptr inbounds %struct.Reg, %struct.Reg* %5194, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %5195 to i64*
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 1
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %5198 to i64*
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5200 = getelementptr inbounds %struct.GPR, %struct.GPR* %5199, i32 0, i32 15
  %5201 = getelementptr inbounds %struct.Reg, %struct.Reg* %5200, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %5201 to i64*
  %5202 = load i64, i64* %RAX.i121
  %5203 = load i64, i64* %RBP.i122
  %5204 = sub i64 %5203, 76
  %5205 = load i64, i64* %PC.i120
  %5206 = add i64 %5205, 3
  store i64 %5206, i64* %PC.i120
  %5207 = trunc i64 %5202 to i32
  %5208 = inttoptr i64 %5204 to i32*
  %5209 = load i32, i32* %5208
  %5210 = sub i32 %5207, %5209
  %5211 = zext i32 %5210 to i64
  store i64 %5211, i64* %RAX.i121, align 8
  %5212 = icmp ult i32 %5207, %5209
  %5213 = zext i1 %5212 to i8
  %5214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5213, i8* %5214, align 1
  %5215 = and i32 %5210, 255
  %5216 = call i32 @llvm.ctpop.i32(i32 %5215)
  %5217 = trunc i32 %5216 to i8
  %5218 = and i8 %5217, 1
  %5219 = xor i8 %5218, 1
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5219, i8* %5220, align 1
  %5221 = xor i32 %5209, %5207
  %5222 = xor i32 %5221, %5210
  %5223 = lshr i32 %5222, 4
  %5224 = trunc i32 %5223 to i8
  %5225 = and i8 %5224, 1
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5225, i8* %5226, align 1
  %5227 = icmp eq i32 %5210, 0
  %5228 = zext i1 %5227 to i8
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5228, i8* %5229, align 1
  %5230 = lshr i32 %5210, 31
  %5231 = trunc i32 %5230 to i8
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5231, i8* %5232, align 1
  %5233 = lshr i32 %5207, 31
  %5234 = lshr i32 %5209, 31
  %5235 = xor i32 %5234, %5233
  %5236 = xor i32 %5230, %5233
  %5237 = add i32 %5236, %5235
  %5238 = icmp eq i32 %5237, 2
  %5239 = zext i1 %5238 to i8
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5239, i8* %5240, align 1
  store %struct.Memory* %loadMem_475f1f, %struct.Memory** %MEMORY
  %loadMem_475f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5242 = getelementptr inbounds %struct.GPR, %struct.GPR* %5241, i32 0, i32 33
  %5243 = getelementptr inbounds %struct.Reg, %struct.Reg* %5242, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %5243 to i64*
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5245 = getelementptr inbounds %struct.GPR, %struct.GPR* %5244, i32 0, i32 3
  %5246 = getelementptr inbounds %struct.Reg, %struct.Reg* %5245, i32 0, i32 0
  %RBX.i118 = bitcast %union.anon* %5246 to i64*
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5248 = getelementptr inbounds %struct.GPR, %struct.GPR* %5247, i32 0, i32 15
  %5249 = getelementptr inbounds %struct.Reg, %struct.Reg* %5248, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %5249 to i64*
  %5250 = load i64, i64* %RBP.i119
  %5251 = sub i64 %5250, 16
  %5252 = load i64, i64* %PC.i117
  %5253 = add i64 %5252, 4
  store i64 %5253, i64* %PC.i117
  %5254 = inttoptr i64 %5251 to i64*
  %5255 = load i64, i64* %5254
  store i64 %5255, i64* %RBX.i118, align 8
  store %struct.Memory* %loadMem_475f22, %struct.Memory** %MEMORY
  %loadMem_475f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5257 = getelementptr inbounds %struct.GPR, %struct.GPR* %5256, i32 0, i32 33
  %5258 = getelementptr inbounds %struct.Reg, %struct.Reg* %5257, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %5258 to i64*
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5260 = getelementptr inbounds %struct.GPR, %struct.GPR* %5259, i32 0, i32 3
  %5261 = getelementptr inbounds %struct.Reg, %struct.Reg* %5260, i32 0, i32 0
  %RBX.i115 = bitcast %union.anon* %5261 to i64*
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5263 = getelementptr inbounds %struct.GPR, %struct.GPR* %5262, i32 0, i32 5
  %5264 = getelementptr inbounds %struct.Reg, %struct.Reg* %5263, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %5264 to i64*
  %5265 = load i64, i64* %RBX.i115
  %5266 = add i64 %5265, 6400
  %5267 = load i64, i64* %PC.i114
  %5268 = add i64 %5267, 6
  store i64 %5268, i64* %PC.i114
  %5269 = inttoptr i64 %5266 to i32*
  %5270 = load i32, i32* %5269
  %5271 = zext i32 %5270 to i64
  store i64 %5271, i64* %RCX.i116, align 8
  store %struct.Memory* %loadMem_475f26, %struct.Memory** %MEMORY
  %loadMem_475f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 33
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %5274 to i64*
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5276 = getelementptr inbounds %struct.GPR, %struct.GPR* %5275, i32 0, i32 5
  %5277 = getelementptr inbounds %struct.Reg, %struct.Reg* %5276, i32 0, i32 0
  %RCX.i112 = bitcast %union.anon* %5277 to i64*
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5279 = getelementptr inbounds %struct.GPR, %struct.GPR* %5278, i32 0, i32 15
  %5280 = getelementptr inbounds %struct.Reg, %struct.Reg* %5279, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %5280 to i64*
  %5281 = load i64, i64* %RCX.i112
  %5282 = load i64, i64* %RBP.i113
  %5283 = sub i64 %5282, 72
  %5284 = load i64, i64* %PC.i111
  %5285 = add i64 %5284, 3
  store i64 %5285, i64* %PC.i111
  %5286 = trunc i64 %5281 to i32
  %5287 = inttoptr i64 %5283 to i32*
  %5288 = load i32, i32* %5287
  %5289 = sub i32 %5286, %5288
  %5290 = zext i32 %5289 to i64
  store i64 %5290, i64* %RCX.i112, align 8
  %5291 = icmp ult i32 %5286, %5288
  %5292 = zext i1 %5291 to i8
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5292, i8* %5293, align 1
  %5294 = and i32 %5289, 255
  %5295 = call i32 @llvm.ctpop.i32(i32 %5294)
  %5296 = trunc i32 %5295 to i8
  %5297 = and i8 %5296, 1
  %5298 = xor i8 %5297, 1
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5298, i8* %5299, align 1
  %5300 = xor i32 %5288, %5286
  %5301 = xor i32 %5300, %5289
  %5302 = lshr i32 %5301, 4
  %5303 = trunc i32 %5302 to i8
  %5304 = and i8 %5303, 1
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5304, i8* %5305, align 1
  %5306 = icmp eq i32 %5289, 0
  %5307 = zext i1 %5306 to i8
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5307, i8* %5308, align 1
  %5309 = lshr i32 %5289, 31
  %5310 = trunc i32 %5309 to i8
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5310, i8* %5311, align 1
  %5312 = lshr i32 %5286, 31
  %5313 = lshr i32 %5288, 31
  %5314 = xor i32 %5313, %5312
  %5315 = xor i32 %5309, %5312
  %5316 = add i32 %5315, %5314
  %5317 = icmp eq i32 %5316, 2
  %5318 = zext i1 %5317 to i8
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5318, i8* %5319, align 1
  store %struct.Memory* %loadMem_475f2c, %struct.Memory** %MEMORY
  %loadMem_475f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5321 = getelementptr inbounds %struct.GPR, %struct.GPR* %5320, i32 0, i32 33
  %5322 = getelementptr inbounds %struct.Reg, %struct.Reg* %5321, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %5322 to i64*
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5324 = getelementptr inbounds %struct.GPR, %struct.GPR* %5323, i32 0, i32 5
  %5325 = getelementptr inbounds %struct.Reg, %struct.Reg* %5324, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %5325 to i64*
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5327 = getelementptr inbounds %struct.GPR, %struct.GPR* %5326, i32 0, i32 15
  %5328 = getelementptr inbounds %struct.Reg, %struct.Reg* %5327, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %5328 to i64*
  %5329 = load i64, i64* %RCX.i109
  %5330 = load i64, i64* %RBP.i110
  %5331 = sub i64 %5330, 68
  %5332 = load i64, i64* %PC.i108
  %5333 = add i64 %5332, 3
  store i64 %5333, i64* %PC.i108
  %5334 = trunc i64 %5329 to i32
  %5335 = inttoptr i64 %5331 to i32*
  %5336 = load i32, i32* %5335
  %5337 = sub i32 %5334, %5336
  %5338 = zext i32 %5337 to i64
  store i64 %5338, i64* %RCX.i109, align 8
  %5339 = icmp ult i32 %5334, %5336
  %5340 = zext i1 %5339 to i8
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5340, i8* %5341, align 1
  %5342 = and i32 %5337, 255
  %5343 = call i32 @llvm.ctpop.i32(i32 %5342)
  %5344 = trunc i32 %5343 to i8
  %5345 = and i8 %5344, 1
  %5346 = xor i8 %5345, 1
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5346, i8* %5347, align 1
  %5348 = xor i32 %5336, %5334
  %5349 = xor i32 %5348, %5337
  %5350 = lshr i32 %5349, 4
  %5351 = trunc i32 %5350 to i8
  %5352 = and i8 %5351, 1
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5352, i8* %5353, align 1
  %5354 = icmp eq i32 %5337, 0
  %5355 = zext i1 %5354 to i8
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5355, i8* %5356, align 1
  %5357 = lshr i32 %5337, 31
  %5358 = trunc i32 %5357 to i8
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5358, i8* %5359, align 1
  %5360 = lshr i32 %5334, 31
  %5361 = lshr i32 %5336, 31
  %5362 = xor i32 %5361, %5360
  %5363 = xor i32 %5357, %5360
  %5364 = add i32 %5363, %5362
  %5365 = icmp eq i32 %5364, 2
  %5366 = zext i1 %5365 to i8
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5366, i8* %5367, align 1
  store %struct.Memory* %loadMem_475f2f, %struct.Memory** %MEMORY
  %loadMem_475f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 33
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %5370 to i64*
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 5
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %ECX.i106 = bitcast %union.anon* %5373 to i32*
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5375 = getelementptr inbounds %struct.GPR, %struct.GPR* %5374, i32 0, i32 1
  %5376 = getelementptr inbounds %struct.Reg, %struct.Reg* %5375, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %5376 to i64*
  %5377 = load i64, i64* %RAX.i107
  %5378 = load i32, i32* %ECX.i106
  %5379 = zext i32 %5378 to i64
  %5380 = load i64, i64* %PC.i105
  %5381 = add i64 %5380, 3
  store i64 %5381, i64* %PC.i105
  %5382 = shl i64 %5377, 32
  %5383 = ashr exact i64 %5382, 32
  %5384 = shl i64 %5379, 32
  %5385 = ashr exact i64 %5384, 32
  %5386 = mul i64 %5385, %5383
  %5387 = trunc i64 %5386 to i32
  %5388 = and i64 %5386, 4294967295
  store i64 %5388, i64* %RAX.i107, align 8
  %5389 = shl i64 %5386, 32
  %5390 = ashr exact i64 %5389, 32
  %5391 = icmp ne i64 %5390, %5386
  %5392 = zext i1 %5391 to i8
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5392, i8* %5393, align 1
  %5394 = and i32 %5387, 255
  %5395 = call i32 @llvm.ctpop.i32(i32 %5394)
  %5396 = trunc i32 %5395 to i8
  %5397 = and i8 %5396, 1
  %5398 = xor i8 %5397, 1
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5398, i8* %5399, align 1
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5400, align 1
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5401, align 1
  %5402 = lshr i32 %5387, 31
  %5403 = trunc i32 %5402 to i8
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5403, i8* %5404, align 1
  %5405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5392, i8* %5405, align 1
  store %struct.Memory* %loadMem_475f32, %struct.Memory** %MEMORY
  %loadMem_475f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5407 = getelementptr inbounds %struct.GPR, %struct.GPR* %5406, i32 0, i32 33
  %5408 = getelementptr inbounds %struct.Reg, %struct.Reg* %5407, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %5408 to i64*
  %5409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5410 = getelementptr inbounds %struct.GPR, %struct.GPR* %5409, i32 0, i32 1
  %5411 = getelementptr inbounds %struct.Reg, %struct.Reg* %5410, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %5411 to i64*
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5413 = getelementptr inbounds %struct.GPR, %struct.GPR* %5412, i32 0, i32 15
  %5414 = getelementptr inbounds %struct.Reg, %struct.Reg* %5413, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %5414 to i64*
  %5415 = load i64, i64* %RAX.i103
  %5416 = load i64, i64* %RBP.i104
  %5417 = sub i64 %5416, 84
  %5418 = load i64, i64* %PC.i102
  %5419 = add i64 %5418, 4
  store i64 %5419, i64* %PC.i102
  %5420 = inttoptr i64 %5417 to i32*
  %5421 = load i32, i32* %5420
  %5422 = shl i64 %5415, 32
  %5423 = ashr exact i64 %5422, 32
  %5424 = sext i32 %5421 to i64
  %5425 = mul i64 %5424, %5423
  %5426 = trunc i64 %5425 to i32
  %5427 = and i64 %5425, 4294967295
  store i64 %5427, i64* %RAX.i103, align 8
  %5428 = shl i64 %5425, 32
  %5429 = ashr exact i64 %5428, 32
  %5430 = icmp ne i64 %5429, %5425
  %5431 = zext i1 %5430 to i8
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5431, i8* %5432, align 1
  %5433 = and i32 %5426, 255
  %5434 = call i32 @llvm.ctpop.i32(i32 %5433)
  %5435 = trunc i32 %5434 to i8
  %5436 = and i8 %5435, 1
  %5437 = xor i8 %5436, 1
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5437, i8* %5438, align 1
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5439, align 1
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5440, align 1
  %5441 = lshr i32 %5426, 31
  %5442 = trunc i32 %5441 to i8
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5442, i8* %5443, align 1
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5431, i8* %5444, align 1
  store %struct.Memory* %loadMem_475f35, %struct.Memory** %MEMORY
  %loadMem_475f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5446 = getelementptr inbounds %struct.GPR, %struct.GPR* %5445, i32 0, i32 33
  %5447 = getelementptr inbounds %struct.Reg, %struct.Reg* %5446, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %5447 to i64*
  %5448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5449 = getelementptr inbounds %struct.GPR, %struct.GPR* %5448, i32 0, i32 1
  %5450 = getelementptr inbounds %struct.Reg, %struct.Reg* %5449, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5450 to i32*
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5452 = getelementptr inbounds %struct.GPR, %struct.GPR* %5451, i32 0, i32 7
  %5453 = getelementptr inbounds %struct.Reg, %struct.Reg* %5452, i32 0, i32 0
  %RDX.i101 = bitcast %union.anon* %5453 to i64*
  %5454 = load i32, i32* %EAX.i
  %5455 = zext i32 %5454 to i64
  %5456 = load i64, i64* %PC.i100
  %5457 = add i64 %5456, 3
  store i64 %5457, i64* %PC.i100
  %5458 = shl i64 %5455, 32
  %5459 = ashr exact i64 %5458, 32
  store i64 %5459, i64* %RDX.i101, align 8
  store %struct.Memory* %loadMem_475f39, %struct.Memory** %MEMORY
  %loadMem1_475f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5461 = getelementptr inbounds %struct.GPR, %struct.GPR* %5460, i32 0, i32 33
  %5462 = getelementptr inbounds %struct.Reg, %struct.Reg* %5461, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %5462 to i64*
  %5463 = load i64, i64* %PC.i99
  %5464 = add i64 %5463, -479020
  %5465 = load i64, i64* %PC.i99
  %5466 = add i64 %5465, 5
  %5467 = load i64, i64* %PC.i99
  %5468 = add i64 %5467, 5
  store i64 %5468, i64* %PC.i99
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5470 = load i64, i64* %5469, align 8
  %5471 = add i64 %5470, -8
  %5472 = inttoptr i64 %5471 to i64*
  store i64 %5466, i64* %5472
  store i64 %5471, i64* %5469, align 8
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5464, i64* %5473, align 8
  store %struct.Memory* %loadMem1_475f3c, %struct.Memory** %MEMORY
  %loadMem2_475f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_475f3c = load i64, i64* %3
  %call2_475f3c = call %struct.Memory* @sub_401010.write_plt(%struct.State* %0, i64 %loadPC_475f3c, %struct.Memory* %loadMem2_475f3c)
  store %struct.Memory* %call2_475f3c, %struct.Memory** %MEMORY
  %loadMem_475f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5475 = getelementptr inbounds %struct.GPR, %struct.GPR* %5474, i32 0, i32 33
  %5476 = getelementptr inbounds %struct.Reg, %struct.Reg* %5475, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %5476 to i64*
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5478 = getelementptr inbounds %struct.GPR, %struct.GPR* %5477, i32 0, i32 15
  %5479 = getelementptr inbounds %struct.Reg, %struct.Reg* %5478, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %5479 to i64*
  %5480 = load i64, i64* %RBP.i98
  %5481 = sub i64 %5480, 88
  %5482 = load i64, i64* %PC.i97
  %5483 = add i64 %5482, 4
  store i64 %5483, i64* %PC.i97
  %5484 = inttoptr i64 %5481 to i32*
  %5485 = load i32, i32* %5484
  %5486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5486, align 1
  %5487 = and i32 %5485, 255
  %5488 = call i32 @llvm.ctpop.i32(i32 %5487)
  %5489 = trunc i32 %5488 to i8
  %5490 = and i8 %5489, 1
  %5491 = xor i8 %5490, 1
  %5492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5491, i8* %5492, align 1
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5493, align 1
  %5494 = icmp eq i32 %5485, 0
  %5495 = zext i1 %5494 to i8
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5495, i8* %5496, align 1
  %5497 = lshr i32 %5485, 31
  %5498 = trunc i32 %5497 to i8
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5498, i8* %5499, align 1
  %5500 = lshr i32 %5485, 31
  %5501 = xor i32 %5497, %5500
  %5502 = add i32 %5501, %5500
  %5503 = icmp eq i32 %5502, 2
  %5504 = zext i1 %5503 to i8
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5504, i8* %5505, align 1
  store %struct.Memory* %loadMem_475f41, %struct.Memory** %MEMORY
  %loadMem_475f45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5507 = getelementptr inbounds %struct.GPR, %struct.GPR* %5506, i32 0, i32 33
  %5508 = getelementptr inbounds %struct.Reg, %struct.Reg* %5507, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %5508 to i64*
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5510 = getelementptr inbounds %struct.GPR, %struct.GPR* %5509, i32 0, i32 1
  %5511 = getelementptr inbounds %struct.Reg, %struct.Reg* %5510, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %5511 to i64*
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5513 = getelementptr inbounds %struct.GPR, %struct.GPR* %5512, i32 0, i32 15
  %5514 = getelementptr inbounds %struct.Reg, %struct.Reg* %5513, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %5514 to i64*
  %5515 = load i64, i64* %RBP.i96
  %5516 = sub i64 %5515, 128
  %5517 = load i64, i64* %RAX.i95
  %5518 = load i64, i64* %PC.i94
  %5519 = add i64 %5518, 4
  store i64 %5519, i64* %PC.i94
  %5520 = inttoptr i64 %5516 to i64*
  store i64 %5517, i64* %5520
  store %struct.Memory* %loadMem_475f45, %struct.Memory** %MEMORY
  %loadMem_475f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5522 = getelementptr inbounds %struct.GPR, %struct.GPR* %5521, i32 0, i32 33
  %5523 = getelementptr inbounds %struct.Reg, %struct.Reg* %5522, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %5523 to i64*
  %5524 = load i64, i64* %PC.i93
  %5525 = add i64 %5524, 143
  %5526 = load i64, i64* %PC.i93
  %5527 = add i64 %5526, 6
  %5528 = load i64, i64* %PC.i93
  %5529 = add i64 %5528, 6
  store i64 %5529, i64* %PC.i93
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5531 = load i8, i8* %5530, align 1
  %5532 = icmp eq i8 %5531, 0
  %5533 = zext i1 %5532 to i8
  store i8 %5533, i8* %BRANCH_TAKEN, align 1
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5535 = select i1 %5532, i64 %5525, i64 %5527
  store i64 %5535, i64* %5534, align 8
  store %struct.Memory* %loadMem_475f49, %struct.Memory** %MEMORY
  %loadBr_475f49 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_475f49 = icmp eq i8 %loadBr_475f49, 1
  br i1 %cmpBr_475f49, label %block_.L_475fd8, label %block_475f4f

block_475f4f:                                     ; preds = %block_475e6f
  %loadMem_475f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5537 = getelementptr inbounds %struct.GPR, %struct.GPR* %5536, i32 0, i32 33
  %5538 = getelementptr inbounds %struct.Reg, %struct.Reg* %5537, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %5538 to i64*
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5540 = getelementptr inbounds %struct.GPR, %struct.GPR* %5539, i32 0, i32 1
  %5541 = getelementptr inbounds %struct.Reg, %struct.Reg* %5540, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %5541 to i64*
  %5542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5543 = getelementptr inbounds %struct.GPR, %struct.GPR* %5542, i32 0, i32 15
  %5544 = getelementptr inbounds %struct.Reg, %struct.Reg* %5543, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %5544 to i64*
  %5545 = load i64, i64* %RBP.i92
  %5546 = sub i64 %5545, 16
  %5547 = load i64, i64* %PC.i90
  %5548 = add i64 %5547, 4
  store i64 %5548, i64* %PC.i90
  %5549 = inttoptr i64 %5546 to i64*
  %5550 = load i64, i64* %5549
  store i64 %5550, i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_475f4f, %struct.Memory** %MEMORY
  %loadMem_475f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5552 = getelementptr inbounds %struct.GPR, %struct.GPR* %5551, i32 0, i32 33
  %5553 = getelementptr inbounds %struct.Reg, %struct.Reg* %5552, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %5553 to i64*
  %5554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5555 = getelementptr inbounds %struct.GPR, %struct.GPR* %5554, i32 0, i32 1
  %5556 = getelementptr inbounds %struct.Reg, %struct.Reg* %5555, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %5556 to i64*
  %5557 = load i64, i64* %RAX.i89
  %5558 = add i64 %5557, 6464
  %5559 = load i64, i64* %PC.i88
  %5560 = add i64 %5559, 7
  store i64 %5560, i64* %PC.i88
  %5561 = inttoptr i64 %5558 to i64*
  %5562 = load i64, i64* %5561
  store i64 %5562, i64* %RAX.i89, align 8
  store %struct.Memory* %loadMem_475f53, %struct.Memory** %MEMORY
  %loadMem_475f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5564 = getelementptr inbounds %struct.GPR, %struct.GPR* %5563, i32 0, i32 33
  %5565 = getelementptr inbounds %struct.Reg, %struct.Reg* %5564, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %5565 to i64*
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5567 = getelementptr inbounds %struct.GPR, %struct.GPR* %5566, i32 0, i32 1
  %5568 = getelementptr inbounds %struct.Reg, %struct.Reg* %5567, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %5568 to i64*
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5570 = getelementptr inbounds %struct.GPR, %struct.GPR* %5569, i32 0, i32 11
  %5571 = getelementptr inbounds %struct.Reg, %struct.Reg* %5570, i32 0, i32 0
  %RDI.i87 = bitcast %union.anon* %5571 to i64*
  %5572 = load i64, i64* %RAX.i86
  %5573 = add i64 %5572, 8
  %5574 = load i64, i64* %PC.i85
  %5575 = add i64 %5574, 4
  store i64 %5575, i64* %PC.i85
  %5576 = inttoptr i64 %5573 to i64*
  %5577 = load i64, i64* %5576
  store i64 %5577, i64* %RDI.i87, align 8
  store %struct.Memory* %loadMem_475f5a, %struct.Memory** %MEMORY
  %loadMem_475f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5579 = getelementptr inbounds %struct.GPR, %struct.GPR* %5578, i32 0, i32 33
  %5580 = getelementptr inbounds %struct.Reg, %struct.Reg* %5579, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %5580 to i64*
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5582 = getelementptr inbounds %struct.GPR, %struct.GPR* %5581, i32 0, i32 9
  %5583 = getelementptr inbounds %struct.Reg, %struct.Reg* %5582, i32 0, i32 0
  %RSI.i83 = bitcast %union.anon* %5583 to i64*
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5585 = getelementptr inbounds %struct.GPR, %struct.GPR* %5584, i32 0, i32 15
  %5586 = getelementptr inbounds %struct.Reg, %struct.Reg* %5585, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %5586 to i64*
  %5587 = load i64, i64* %RBP.i84
  %5588 = sub i64 %5587, 96
  %5589 = load i64, i64* %PC.i82
  %5590 = add i64 %5589, 4
  store i64 %5590, i64* %PC.i82
  %5591 = inttoptr i64 %5588 to i64*
  %5592 = load i64, i64* %5591
  store i64 %5592, i64* %RSI.i83, align 8
  store %struct.Memory* %loadMem_475f5e, %struct.Memory** %MEMORY
  %loadMem_475f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5594 = getelementptr inbounds %struct.GPR, %struct.GPR* %5593, i32 0, i32 33
  %5595 = getelementptr inbounds %struct.Reg, %struct.Reg* %5594, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %5595 to i64*
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5597 = getelementptr inbounds %struct.GPR, %struct.GPR* %5596, i32 0, i32 1
  %5598 = getelementptr inbounds %struct.Reg, %struct.Reg* %5597, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %5598 to i64*
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5600 = getelementptr inbounds %struct.GPR, %struct.GPR* %5599, i32 0, i32 15
  %5601 = getelementptr inbounds %struct.Reg, %struct.Reg* %5600, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %5601 to i64*
  %5602 = load i64, i64* %RBP.i81
  %5603 = sub i64 %5602, 16
  %5604 = load i64, i64* %PC.i79
  %5605 = add i64 %5604, 4
  store i64 %5605, i64* %PC.i79
  %5606 = inttoptr i64 %5603 to i64*
  %5607 = load i64, i64* %5606
  store i64 %5607, i64* %RAX.i80, align 8
  store %struct.Memory* %loadMem_475f62, %struct.Memory** %MEMORY
  %loadMem_475f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5609 = getelementptr inbounds %struct.GPR, %struct.GPR* %5608, i32 0, i32 33
  %5610 = getelementptr inbounds %struct.Reg, %struct.Reg* %5609, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %5610 to i64*
  %5611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5612 = getelementptr inbounds %struct.GPR, %struct.GPR* %5611, i32 0, i32 1
  %5613 = getelementptr inbounds %struct.Reg, %struct.Reg* %5612, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %5613 to i64*
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5615 = getelementptr inbounds %struct.GPR, %struct.GPR* %5614, i32 0, i32 7
  %5616 = getelementptr inbounds %struct.Reg, %struct.Reg* %5615, i32 0, i32 0
  %RDX.i78 = bitcast %union.anon* %5616 to i64*
  %5617 = load i64, i64* %RAX.i77
  %5618 = add i64 %5617, 6400
  %5619 = load i64, i64* %PC.i76
  %5620 = add i64 %5619, 6
  store i64 %5620, i64* %PC.i76
  %5621 = inttoptr i64 %5618 to i32*
  %5622 = load i32, i32* %5621
  %5623 = zext i32 %5622 to i64
  store i64 %5623, i64* %RDX.i78, align 8
  store %struct.Memory* %loadMem_475f66, %struct.Memory** %MEMORY
  %loadMem_475f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5625 = getelementptr inbounds %struct.GPR, %struct.GPR* %5624, i32 0, i32 33
  %5626 = getelementptr inbounds %struct.Reg, %struct.Reg* %5625, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %5626 to i64*
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 1
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %5629 to i64*
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5631 = getelementptr inbounds %struct.GPR, %struct.GPR* %5630, i32 0, i32 15
  %5632 = getelementptr inbounds %struct.Reg, %struct.Reg* %5631, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %5632 to i64*
  %5633 = load i64, i64* %RBP.i75
  %5634 = sub i64 %5633, 16
  %5635 = load i64, i64* %PC.i73
  %5636 = add i64 %5635, 4
  store i64 %5636, i64* %PC.i73
  %5637 = inttoptr i64 %5634 to i64*
  %5638 = load i64, i64* %5637
  store i64 %5638, i64* %RAX.i74, align 8
  store %struct.Memory* %loadMem_475f6c, %struct.Memory** %MEMORY
  %loadMem_475f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5640 = getelementptr inbounds %struct.GPR, %struct.GPR* %5639, i32 0, i32 33
  %5641 = getelementptr inbounds %struct.Reg, %struct.Reg* %5640, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %5641 to i64*
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5643 = getelementptr inbounds %struct.GPR, %struct.GPR* %5642, i32 0, i32 1
  %5644 = getelementptr inbounds %struct.Reg, %struct.Reg* %5643, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %5644 to i64*
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 5
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %RCX.i72 = bitcast %union.anon* %5647 to i64*
  %5648 = load i64, i64* %RAX.i71
  %5649 = add i64 %5648, 6404
  %5650 = load i64, i64* %PC.i70
  %5651 = add i64 %5650, 6
  store i64 %5651, i64* %PC.i70
  %5652 = inttoptr i64 %5649 to i32*
  %5653 = load i32, i32* %5652
  %5654 = zext i32 %5653 to i64
  store i64 %5654, i64* %RCX.i72, align 8
  store %struct.Memory* %loadMem_475f70, %struct.Memory** %MEMORY
  %loadMem_475f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5656 = getelementptr inbounds %struct.GPR, %struct.GPR* %5655, i32 0, i32 33
  %5657 = getelementptr inbounds %struct.Reg, %struct.Reg* %5656, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %5657 to i64*
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5659 = getelementptr inbounds %struct.GPR, %struct.GPR* %5658, i32 0, i32 17
  %5660 = getelementptr inbounds %struct.Reg, %struct.Reg* %5659, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %5660 to i32*
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5662 = getelementptr inbounds %struct.GPR, %struct.GPR* %5661, i32 0, i32 15
  %5663 = getelementptr inbounds %struct.Reg, %struct.Reg* %5662, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %5663 to i64*
  %5664 = bitcast i32* %R8D.i to i64*
  %5665 = load i64, i64* %RBP.i69
  %5666 = sub i64 %5665, 84
  %5667 = load i64, i64* %PC.i68
  %5668 = add i64 %5667, 4
  store i64 %5668, i64* %PC.i68
  %5669 = inttoptr i64 %5666 to i32*
  %5670 = load i32, i32* %5669
  %5671 = zext i32 %5670 to i64
  store i64 %5671, i64* %5664, align 8
  store %struct.Memory* %loadMem_475f76, %struct.Memory** %MEMORY
  %loadMem_475f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5673 = getelementptr inbounds %struct.GPR, %struct.GPR* %5672, i32 0, i32 33
  %5674 = getelementptr inbounds %struct.Reg, %struct.Reg* %5673, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %5674 to i64*
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5676 = getelementptr inbounds %struct.GPR, %struct.GPR* %5675, i32 0, i32 19
  %5677 = getelementptr inbounds %struct.Reg, %struct.Reg* %5676, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %5677 to i32*
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5679 = getelementptr inbounds %struct.GPR, %struct.GPR* %5678, i32 0, i32 15
  %5680 = getelementptr inbounds %struct.Reg, %struct.Reg* %5679, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %5680 to i64*
  %5681 = bitcast i32* %R9D.i to i64*
  %5682 = load i64, i64* %RBP.i67
  %5683 = sub i64 %5682, 68
  %5684 = load i64, i64* %PC.i66
  %5685 = add i64 %5684, 4
  store i64 %5685, i64* %PC.i66
  %5686 = inttoptr i64 %5683 to i32*
  %5687 = load i32, i32* %5686
  %5688 = zext i32 %5687 to i64
  store i64 %5688, i64* %5681, align 8
  store %struct.Memory* %loadMem_475f7a, %struct.Memory** %MEMORY
  %loadMem_475f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5690 = getelementptr inbounds %struct.GPR, %struct.GPR* %5689, i32 0, i32 33
  %5691 = getelementptr inbounds %struct.Reg, %struct.Reg* %5690, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %5691 to i64*
  %5692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5693 = getelementptr inbounds %struct.GPR, %struct.GPR* %5692, i32 0, i32 21
  %5694 = getelementptr inbounds %struct.Reg, %struct.Reg* %5693, i32 0, i32 0
  %R10D.i64 = bitcast %union.anon* %5694 to i32*
  %5695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5696 = getelementptr inbounds %struct.GPR, %struct.GPR* %5695, i32 0, i32 15
  %5697 = getelementptr inbounds %struct.Reg, %struct.Reg* %5696, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %5697 to i64*
  %5698 = bitcast i32* %R10D.i64 to i64*
  %5699 = load i64, i64* %RBP.i65
  %5700 = sub i64 %5699, 72
  %5701 = load i64, i64* %PC.i63
  %5702 = add i64 %5701, 4
  store i64 %5702, i64* %PC.i63
  %5703 = inttoptr i64 %5700 to i32*
  %5704 = load i32, i32* %5703
  %5705 = zext i32 %5704 to i64
  store i64 %5705, i64* %5698, align 8
  store %struct.Memory* %loadMem_475f7e, %struct.Memory** %MEMORY
  %loadMem_475f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5707 = getelementptr inbounds %struct.GPR, %struct.GPR* %5706, i32 0, i32 33
  %5708 = getelementptr inbounds %struct.Reg, %struct.Reg* %5707, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %5708 to i64*
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5710 = getelementptr inbounds %struct.GPR, %struct.GPR* %5709, i32 0, i32 23
  %5711 = getelementptr inbounds %struct.Reg, %struct.Reg* %5710, i32 0, i32 0
  %R11D.i61 = bitcast %union.anon* %5711 to i32*
  %5712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5713 = getelementptr inbounds %struct.GPR, %struct.GPR* %5712, i32 0, i32 15
  %5714 = getelementptr inbounds %struct.Reg, %struct.Reg* %5713, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %5714 to i64*
  %5715 = bitcast i32* %R11D.i61 to i64*
  %5716 = load i64, i64* %RBP.i62
  %5717 = sub i64 %5716, 76
  %5718 = load i64, i64* %PC.i60
  %5719 = add i64 %5718, 4
  store i64 %5719, i64* %PC.i60
  %5720 = inttoptr i64 %5717 to i32*
  %5721 = load i32, i32* %5720
  %5722 = zext i32 %5721 to i64
  store i64 %5722, i64* %5715, align 8
  store %struct.Memory* %loadMem_475f82, %struct.Memory** %MEMORY
  %loadMem_475f86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5724 = getelementptr inbounds %struct.GPR, %struct.GPR* %5723, i32 0, i32 33
  %5725 = getelementptr inbounds %struct.Reg, %struct.Reg* %5724, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %5725 to i64*
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5727 = getelementptr inbounds %struct.GPR, %struct.GPR* %5726, i32 0, i32 3
  %5728 = getelementptr inbounds %struct.Reg, %struct.Reg* %5727, i32 0, i32 0
  %RBX.i58 = bitcast %union.anon* %5728 to i64*
  %5729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5730 = getelementptr inbounds %struct.GPR, %struct.GPR* %5729, i32 0, i32 15
  %5731 = getelementptr inbounds %struct.Reg, %struct.Reg* %5730, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %5731 to i64*
  %5732 = load i64, i64* %RBP.i59
  %5733 = sub i64 %5732, 80
  %5734 = load i64, i64* %PC.i57
  %5735 = add i64 %5734, 3
  store i64 %5735, i64* %PC.i57
  %5736 = inttoptr i64 %5733 to i32*
  %5737 = load i32, i32* %5736
  %5738 = zext i32 %5737 to i64
  store i64 %5738, i64* %RBX.i58, align 8
  store %struct.Memory* %loadMem_475f86, %struct.Memory** %MEMORY
  %loadMem_475f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5740 = getelementptr inbounds %struct.GPR, %struct.GPR* %5739, i32 0, i32 33
  %5741 = getelementptr inbounds %struct.Reg, %struct.Reg* %5740, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %5741 to i64*
  %5742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5743 = getelementptr inbounds %struct.GPR, %struct.GPR* %5742, i32 0, i32 21
  %5744 = getelementptr inbounds %struct.Reg, %struct.Reg* %5743, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %5744 to i32*
  %5745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5746 = getelementptr inbounds %struct.GPR, %struct.GPR* %5745, i32 0, i32 13
  %5747 = getelementptr inbounds %struct.Reg, %struct.Reg* %5746, i32 0, i32 0
  %RSP.i56 = bitcast %union.anon* %5747 to i64*
  %5748 = load i64, i64* %RSP.i56
  %5749 = load i32, i32* %R10D.i
  %5750 = zext i32 %5749 to i64
  %5751 = load i64, i64* %PC.i55
  %5752 = add i64 %5751, 4
  store i64 %5752, i64* %PC.i55
  %5753 = inttoptr i64 %5748 to i32*
  store i32 %5749, i32* %5753
  store %struct.Memory* %loadMem_475f89, %struct.Memory** %MEMORY
  %loadMem_475f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5755 = getelementptr inbounds %struct.GPR, %struct.GPR* %5754, i32 0, i32 33
  %5756 = getelementptr inbounds %struct.Reg, %struct.Reg* %5755, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %5756 to i64*
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5758 = getelementptr inbounds %struct.GPR, %struct.GPR* %5757, i32 0, i32 23
  %5759 = getelementptr inbounds %struct.Reg, %struct.Reg* %5758, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %5759 to i32*
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5761 = getelementptr inbounds %struct.GPR, %struct.GPR* %5760, i32 0, i32 13
  %5762 = getelementptr inbounds %struct.Reg, %struct.Reg* %5761, i32 0, i32 0
  %RSP.i54 = bitcast %union.anon* %5762 to i64*
  %5763 = load i64, i64* %RSP.i54
  %5764 = add i64 %5763, 8
  %5765 = load i32, i32* %R11D.i
  %5766 = zext i32 %5765 to i64
  %5767 = load i64, i64* %PC.i53
  %5768 = add i64 %5767, 5
  store i64 %5768, i64* %PC.i53
  %5769 = inttoptr i64 %5764 to i32*
  store i32 %5765, i32* %5769
  store %struct.Memory* %loadMem_475f8d, %struct.Memory** %MEMORY
  %loadMem_475f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5771 = getelementptr inbounds %struct.GPR, %struct.GPR* %5770, i32 0, i32 33
  %5772 = getelementptr inbounds %struct.Reg, %struct.Reg* %5771, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %5772 to i64*
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5774 = getelementptr inbounds %struct.GPR, %struct.GPR* %5773, i32 0, i32 3
  %5775 = getelementptr inbounds %struct.Reg, %struct.Reg* %5774, i32 0, i32 0
  %EBX.i = bitcast %union.anon* %5775 to i32*
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5777 = getelementptr inbounds %struct.GPR, %struct.GPR* %5776, i32 0, i32 13
  %5778 = getelementptr inbounds %struct.Reg, %struct.Reg* %5777, i32 0, i32 0
  %RSP.i52 = bitcast %union.anon* %5778 to i64*
  %5779 = load i64, i64* %RSP.i52
  %5780 = add i64 %5779, 16
  %5781 = load i32, i32* %EBX.i
  %5782 = zext i32 %5781 to i64
  %5783 = load i64, i64* %PC.i51
  %5784 = add i64 %5783, 4
  store i64 %5784, i64* %PC.i51
  %5785 = inttoptr i64 %5780 to i32*
  store i32 %5781, i32* %5785
  store %struct.Memory* %loadMem_475f92, %struct.Memory** %MEMORY
  %loadMem1_475f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5787 = getelementptr inbounds %struct.GPR, %struct.GPR* %5786, i32 0, i32 33
  %5788 = getelementptr inbounds %struct.Reg, %struct.Reg* %5787, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %5788 to i64*
  %5789 = load i64, i64* %PC.i50
  %5790 = add i64 %5789, -2326
  %5791 = load i64, i64* %PC.i50
  %5792 = add i64 %5791, 5
  %5793 = load i64, i64* %PC.i50
  %5794 = add i64 %5793, 5
  store i64 %5794, i64* %PC.i50
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5796 = load i64, i64* %5795, align 8
  %5797 = add i64 %5796, -8
  %5798 = inttoptr i64 %5797 to i64*
  store i64 %5792, i64* %5798
  store i64 %5797, i64* %5795, align 8
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5790, i64* %5799, align 8
  store %struct.Memory* %loadMem1_475f96, %struct.Memory** %MEMORY
  %loadMem2_475f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_475f96 = load i64, i64* %3
  %call2_475f96 = call %struct.Memory* @sub_475680.img2buf(%struct.State* %0, i64 %loadPC_475f96, %struct.Memory* %loadMem2_475f96)
  store %struct.Memory* %call2_475f96, %struct.Memory** %MEMORY
  %loadMem_475f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5801 = getelementptr inbounds %struct.GPR, %struct.GPR* %5800, i32 0, i32 33
  %5802 = getelementptr inbounds %struct.Reg, %struct.Reg* %5801, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %5802 to i64*
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5804 = getelementptr inbounds %struct.GPR, %struct.GPR* %5803, i32 0, i32 11
  %5805 = getelementptr inbounds %struct.Reg, %struct.Reg* %5804, i32 0, i32 0
  %RDI.i48 = bitcast %union.anon* %5805 to i64*
  %5806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5807 = getelementptr inbounds %struct.GPR, %struct.GPR* %5806, i32 0, i32 15
  %5808 = getelementptr inbounds %struct.Reg, %struct.Reg* %5807, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %5808 to i64*
  %5809 = load i64, i64* %RBP.i49
  %5810 = sub i64 %5809, 20
  %5811 = load i64, i64* %PC.i47
  %5812 = add i64 %5811, 3
  store i64 %5812, i64* %PC.i47
  %5813 = inttoptr i64 %5810 to i32*
  %5814 = load i32, i32* %5813
  %5815 = zext i32 %5814 to i64
  store i64 %5815, i64* %RDI.i48, align 8
  store %struct.Memory* %loadMem_475f9b, %struct.Memory** %MEMORY
  %loadMem_475f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5817 = getelementptr inbounds %struct.GPR, %struct.GPR* %5816, i32 0, i32 33
  %5818 = getelementptr inbounds %struct.Reg, %struct.Reg* %5817, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5818 to i64*
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5820 = getelementptr inbounds %struct.GPR, %struct.GPR* %5819, i32 0, i32 9
  %5821 = getelementptr inbounds %struct.Reg, %struct.Reg* %5820, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5821 to i64*
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5823 = getelementptr inbounds %struct.GPR, %struct.GPR* %5822, i32 0, i32 15
  %5824 = getelementptr inbounds %struct.Reg, %struct.Reg* %5823, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %5824 to i64*
  %5825 = load i64, i64* %RBP.i46
  %5826 = sub i64 %5825, 96
  %5827 = load i64, i64* %PC.i45
  %5828 = add i64 %5827, 4
  store i64 %5828, i64* %PC.i45
  %5829 = inttoptr i64 %5826 to i64*
  %5830 = load i64, i64* %5829
  store i64 %5830, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_475f9e, %struct.Memory** %MEMORY
  %loadMem_475fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 33
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %5833 to i64*
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5835 = getelementptr inbounds %struct.GPR, %struct.GPR* %5834, i32 0, i32 1
  %5836 = getelementptr inbounds %struct.Reg, %struct.Reg* %5835, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %5836 to i64*
  %5837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5838 = getelementptr inbounds %struct.GPR, %struct.GPR* %5837, i32 0, i32 15
  %5839 = getelementptr inbounds %struct.Reg, %struct.Reg* %5838, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %5839 to i64*
  %5840 = load i64, i64* %RBP.i44
  %5841 = sub i64 %5840, 16
  %5842 = load i64, i64* %PC.i42
  %5843 = add i64 %5842, 4
  store i64 %5843, i64* %PC.i42
  %5844 = inttoptr i64 %5841 to i64*
  %5845 = load i64, i64* %5844
  store i64 %5845, i64* %RAX.i43, align 8
  store %struct.Memory* %loadMem_475fa2, %struct.Memory** %MEMORY
  %loadMem_475fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5847 = getelementptr inbounds %struct.GPR, %struct.GPR* %5846, i32 0, i32 33
  %5848 = getelementptr inbounds %struct.Reg, %struct.Reg* %5847, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5848 to i64*
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5850 = getelementptr inbounds %struct.GPR, %struct.GPR* %5849, i32 0, i32 1
  %5851 = getelementptr inbounds %struct.Reg, %struct.Reg* %5850, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %5851 to i64*
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5853 = getelementptr inbounds %struct.GPR, %struct.GPR* %5852, i32 0, i32 5
  %5854 = getelementptr inbounds %struct.Reg, %struct.Reg* %5853, i32 0, i32 0
  %RCX.i41 = bitcast %union.anon* %5854 to i64*
  %5855 = load i64, i64* %RAX.i40
  %5856 = add i64 %5855, 6404
  %5857 = load i64, i64* %PC.i39
  %5858 = add i64 %5857, 6
  store i64 %5858, i64* %PC.i39
  %5859 = inttoptr i64 %5856 to i32*
  %5860 = load i32, i32* %5859
  %5861 = zext i32 %5860 to i64
  store i64 %5861, i64* %RCX.i41, align 8
  store %struct.Memory* %loadMem_475fa6, %struct.Memory** %MEMORY
  %loadMem_475fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5863 = getelementptr inbounds %struct.GPR, %struct.GPR* %5862, i32 0, i32 33
  %5864 = getelementptr inbounds %struct.Reg, %struct.Reg* %5863, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %5864 to i64*
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5866 = getelementptr inbounds %struct.GPR, %struct.GPR* %5865, i32 0, i32 5
  %5867 = getelementptr inbounds %struct.Reg, %struct.Reg* %5866, i32 0, i32 0
  %RCX.i37 = bitcast %union.anon* %5867 to i64*
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5869 = getelementptr inbounds %struct.GPR, %struct.GPR* %5868, i32 0, i32 15
  %5870 = getelementptr inbounds %struct.Reg, %struct.Reg* %5869, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %5870 to i64*
  %5871 = load i64, i64* %RCX.i37
  %5872 = load i64, i64* %RBP.i38
  %5873 = sub i64 %5872, 80
  %5874 = load i64, i64* %PC.i36
  %5875 = add i64 %5874, 3
  store i64 %5875, i64* %PC.i36
  %5876 = trunc i64 %5871 to i32
  %5877 = inttoptr i64 %5873 to i32*
  %5878 = load i32, i32* %5877
  %5879 = sub i32 %5876, %5878
  %5880 = zext i32 %5879 to i64
  store i64 %5880, i64* %RCX.i37, align 8
  %5881 = icmp ult i32 %5876, %5878
  %5882 = zext i1 %5881 to i8
  %5883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5882, i8* %5883, align 1
  %5884 = and i32 %5879, 255
  %5885 = call i32 @llvm.ctpop.i32(i32 %5884)
  %5886 = trunc i32 %5885 to i8
  %5887 = and i8 %5886, 1
  %5888 = xor i8 %5887, 1
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5888, i8* %5889, align 1
  %5890 = xor i32 %5878, %5876
  %5891 = xor i32 %5890, %5879
  %5892 = lshr i32 %5891, 4
  %5893 = trunc i32 %5892 to i8
  %5894 = and i8 %5893, 1
  %5895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5894, i8* %5895, align 1
  %5896 = icmp eq i32 %5879, 0
  %5897 = zext i1 %5896 to i8
  %5898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5897, i8* %5898, align 1
  %5899 = lshr i32 %5879, 31
  %5900 = trunc i32 %5899 to i8
  %5901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5900, i8* %5901, align 1
  %5902 = lshr i32 %5876, 31
  %5903 = lshr i32 %5878, 31
  %5904 = xor i32 %5903, %5902
  %5905 = xor i32 %5899, %5902
  %5906 = add i32 %5905, %5904
  %5907 = icmp eq i32 %5906, 2
  %5908 = zext i1 %5907 to i8
  %5909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5908, i8* %5909, align 1
  store %struct.Memory* %loadMem_475fac, %struct.Memory** %MEMORY
  %loadMem_475faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5911 = getelementptr inbounds %struct.GPR, %struct.GPR* %5910, i32 0, i32 33
  %5912 = getelementptr inbounds %struct.Reg, %struct.Reg* %5911, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5912 to i64*
  %5913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5914 = getelementptr inbounds %struct.GPR, %struct.GPR* %5913, i32 0, i32 5
  %5915 = getelementptr inbounds %struct.Reg, %struct.Reg* %5914, i32 0, i32 0
  %RCX.i34 = bitcast %union.anon* %5915 to i64*
  %5916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5917 = getelementptr inbounds %struct.GPR, %struct.GPR* %5916, i32 0, i32 15
  %5918 = getelementptr inbounds %struct.Reg, %struct.Reg* %5917, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %5918 to i64*
  %5919 = load i64, i64* %RCX.i34
  %5920 = load i64, i64* %RBP.i35
  %5921 = sub i64 %5920, 76
  %5922 = load i64, i64* %PC.i33
  %5923 = add i64 %5922, 3
  store i64 %5923, i64* %PC.i33
  %5924 = trunc i64 %5919 to i32
  %5925 = inttoptr i64 %5921 to i32*
  %5926 = load i32, i32* %5925
  %5927 = sub i32 %5924, %5926
  %5928 = zext i32 %5927 to i64
  store i64 %5928, i64* %RCX.i34, align 8
  %5929 = icmp ult i32 %5924, %5926
  %5930 = zext i1 %5929 to i8
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5930, i8* %5931, align 1
  %5932 = and i32 %5927, 255
  %5933 = call i32 @llvm.ctpop.i32(i32 %5932)
  %5934 = trunc i32 %5933 to i8
  %5935 = and i8 %5934, 1
  %5936 = xor i8 %5935, 1
  %5937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5936, i8* %5937, align 1
  %5938 = xor i32 %5926, %5924
  %5939 = xor i32 %5938, %5927
  %5940 = lshr i32 %5939, 4
  %5941 = trunc i32 %5940 to i8
  %5942 = and i8 %5941, 1
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5942, i8* %5943, align 1
  %5944 = icmp eq i32 %5927, 0
  %5945 = zext i1 %5944 to i8
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5945, i8* %5946, align 1
  %5947 = lshr i32 %5927, 31
  %5948 = trunc i32 %5947 to i8
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5948, i8* %5949, align 1
  %5950 = lshr i32 %5924, 31
  %5951 = lshr i32 %5926, 31
  %5952 = xor i32 %5951, %5950
  %5953 = xor i32 %5947, %5950
  %5954 = add i32 %5953, %5952
  %5955 = icmp eq i32 %5954, 2
  %5956 = zext i1 %5955 to i8
  %5957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5956, i8* %5957, align 1
  store %struct.Memory* %loadMem_475faf, %struct.Memory** %MEMORY
  %loadMem_475fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5959 = getelementptr inbounds %struct.GPR, %struct.GPR* %5958, i32 0, i32 33
  %5960 = getelementptr inbounds %struct.Reg, %struct.Reg* %5959, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %5960 to i64*
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5962 = getelementptr inbounds %struct.GPR, %struct.GPR* %5961, i32 0, i32 1
  %5963 = getelementptr inbounds %struct.Reg, %struct.Reg* %5962, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %5963 to i64*
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5965 = getelementptr inbounds %struct.GPR, %struct.GPR* %5964, i32 0, i32 15
  %5966 = getelementptr inbounds %struct.Reg, %struct.Reg* %5965, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %5966 to i64*
  %5967 = load i64, i64* %RBP.i32
  %5968 = sub i64 %5967, 16
  %5969 = load i64, i64* %PC.i30
  %5970 = add i64 %5969, 4
  store i64 %5970, i64* %PC.i30
  %5971 = inttoptr i64 %5968 to i64*
  %5972 = load i64, i64* %5971
  store i64 %5972, i64* %RAX.i31, align 8
  store %struct.Memory* %loadMem_475fb2, %struct.Memory** %MEMORY
  %loadMem_475fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5974 = getelementptr inbounds %struct.GPR, %struct.GPR* %5973, i32 0, i32 33
  %5975 = getelementptr inbounds %struct.Reg, %struct.Reg* %5974, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %5975 to i64*
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5977 = getelementptr inbounds %struct.GPR, %struct.GPR* %5976, i32 0, i32 1
  %5978 = getelementptr inbounds %struct.Reg, %struct.Reg* %5977, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %5978 to i64*
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 7
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %RDX.i29 = bitcast %union.anon* %5981 to i64*
  %5982 = load i64, i64* %RAX.i28
  %5983 = add i64 %5982, 6400
  %5984 = load i64, i64* %PC.i27
  %5985 = add i64 %5984, 6
  store i64 %5985, i64* %PC.i27
  %5986 = inttoptr i64 %5983 to i32*
  %5987 = load i32, i32* %5986
  %5988 = zext i32 %5987 to i64
  store i64 %5988, i64* %RDX.i29, align 8
  store %struct.Memory* %loadMem_475fb6, %struct.Memory** %MEMORY
  %loadMem_475fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5990 = getelementptr inbounds %struct.GPR, %struct.GPR* %5989, i32 0, i32 33
  %5991 = getelementptr inbounds %struct.Reg, %struct.Reg* %5990, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %5991 to i64*
  %5992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5993 = getelementptr inbounds %struct.GPR, %struct.GPR* %5992, i32 0, i32 7
  %5994 = getelementptr inbounds %struct.Reg, %struct.Reg* %5993, i32 0, i32 0
  %RDX.i25 = bitcast %union.anon* %5994 to i64*
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5996 = getelementptr inbounds %struct.GPR, %struct.GPR* %5995, i32 0, i32 15
  %5997 = getelementptr inbounds %struct.Reg, %struct.Reg* %5996, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %5997 to i64*
  %5998 = load i64, i64* %RDX.i25
  %5999 = load i64, i64* %RBP.i26
  %6000 = sub i64 %5999, 72
  %6001 = load i64, i64* %PC.i24
  %6002 = add i64 %6001, 3
  store i64 %6002, i64* %PC.i24
  %6003 = trunc i64 %5998 to i32
  %6004 = inttoptr i64 %6000 to i32*
  %6005 = load i32, i32* %6004
  %6006 = sub i32 %6003, %6005
  %6007 = zext i32 %6006 to i64
  store i64 %6007, i64* %RDX.i25, align 8
  %6008 = icmp ult i32 %6003, %6005
  %6009 = zext i1 %6008 to i8
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6009, i8* %6010, align 1
  %6011 = and i32 %6006, 255
  %6012 = call i32 @llvm.ctpop.i32(i32 %6011)
  %6013 = trunc i32 %6012 to i8
  %6014 = and i8 %6013, 1
  %6015 = xor i8 %6014, 1
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6015, i8* %6016, align 1
  %6017 = xor i32 %6005, %6003
  %6018 = xor i32 %6017, %6006
  %6019 = lshr i32 %6018, 4
  %6020 = trunc i32 %6019 to i8
  %6021 = and i8 %6020, 1
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6021, i8* %6022, align 1
  %6023 = icmp eq i32 %6006, 0
  %6024 = zext i1 %6023 to i8
  %6025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6024, i8* %6025, align 1
  %6026 = lshr i32 %6006, 31
  %6027 = trunc i32 %6026 to i8
  %6028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6027, i8* %6028, align 1
  %6029 = lshr i32 %6003, 31
  %6030 = lshr i32 %6005, 31
  %6031 = xor i32 %6030, %6029
  %6032 = xor i32 %6026, %6029
  %6033 = add i32 %6032, %6031
  %6034 = icmp eq i32 %6033, 2
  %6035 = zext i1 %6034 to i8
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6035, i8* %6036, align 1
  store %struct.Memory* %loadMem_475fbc, %struct.Memory** %MEMORY
  %loadMem_475fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6038 = getelementptr inbounds %struct.GPR, %struct.GPR* %6037, i32 0, i32 33
  %6039 = getelementptr inbounds %struct.Reg, %struct.Reg* %6038, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %6039 to i64*
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6041 = getelementptr inbounds %struct.GPR, %struct.GPR* %6040, i32 0, i32 7
  %6042 = getelementptr inbounds %struct.Reg, %struct.Reg* %6041, i32 0, i32 0
  %RDX.i22 = bitcast %union.anon* %6042 to i64*
  %6043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6044 = getelementptr inbounds %struct.GPR, %struct.GPR* %6043, i32 0, i32 15
  %6045 = getelementptr inbounds %struct.Reg, %struct.Reg* %6044, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %6045 to i64*
  %6046 = load i64, i64* %RDX.i22
  %6047 = load i64, i64* %RBP.i23
  %6048 = sub i64 %6047, 68
  %6049 = load i64, i64* %PC.i21
  %6050 = add i64 %6049, 3
  store i64 %6050, i64* %PC.i21
  %6051 = trunc i64 %6046 to i32
  %6052 = inttoptr i64 %6048 to i32*
  %6053 = load i32, i32* %6052
  %6054 = sub i32 %6051, %6053
  %6055 = zext i32 %6054 to i64
  store i64 %6055, i64* %RDX.i22, align 8
  %6056 = icmp ult i32 %6051, %6053
  %6057 = zext i1 %6056 to i8
  %6058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6057, i8* %6058, align 1
  %6059 = and i32 %6054, 255
  %6060 = call i32 @llvm.ctpop.i32(i32 %6059)
  %6061 = trunc i32 %6060 to i8
  %6062 = and i8 %6061, 1
  %6063 = xor i8 %6062, 1
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6063, i8* %6064, align 1
  %6065 = xor i32 %6053, %6051
  %6066 = xor i32 %6065, %6054
  %6067 = lshr i32 %6066, 4
  %6068 = trunc i32 %6067 to i8
  %6069 = and i8 %6068, 1
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6069, i8* %6070, align 1
  %6071 = icmp eq i32 %6054, 0
  %6072 = zext i1 %6071 to i8
  %6073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6072, i8* %6073, align 1
  %6074 = lshr i32 %6054, 31
  %6075 = trunc i32 %6074 to i8
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6075, i8* %6076, align 1
  %6077 = lshr i32 %6051, 31
  %6078 = lshr i32 %6053, 31
  %6079 = xor i32 %6078, %6077
  %6080 = xor i32 %6074, %6077
  %6081 = add i32 %6080, %6079
  %6082 = icmp eq i32 %6081, 2
  %6083 = zext i1 %6082 to i8
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6083, i8* %6084, align 1
  store %struct.Memory* %loadMem_475fbf, %struct.Memory** %MEMORY
  %loadMem_475fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6086 = getelementptr inbounds %struct.GPR, %struct.GPR* %6085, i32 0, i32 33
  %6087 = getelementptr inbounds %struct.Reg, %struct.Reg* %6086, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %6087 to i64*
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6089 = getelementptr inbounds %struct.GPR, %struct.GPR* %6088, i32 0, i32 7
  %6090 = getelementptr inbounds %struct.Reg, %struct.Reg* %6089, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %6090 to i32*
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6092 = getelementptr inbounds %struct.GPR, %struct.GPR* %6091, i32 0, i32 5
  %6093 = getelementptr inbounds %struct.Reg, %struct.Reg* %6092, i32 0, i32 0
  %RCX.i20 = bitcast %union.anon* %6093 to i64*
  %6094 = load i64, i64* %RCX.i20
  %6095 = load i32, i32* %EDX.i
  %6096 = zext i32 %6095 to i64
  %6097 = load i64, i64* %PC.i19
  %6098 = add i64 %6097, 3
  store i64 %6098, i64* %PC.i19
  %6099 = shl i64 %6094, 32
  %6100 = ashr exact i64 %6099, 32
  %6101 = shl i64 %6096, 32
  %6102 = ashr exact i64 %6101, 32
  %6103 = mul i64 %6102, %6100
  %6104 = trunc i64 %6103 to i32
  %6105 = and i64 %6103, 4294967295
  store i64 %6105, i64* %RCX.i20, align 8
  %6106 = shl i64 %6103, 32
  %6107 = ashr exact i64 %6106, 32
  %6108 = icmp ne i64 %6107, %6103
  %6109 = zext i1 %6108 to i8
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6109, i8* %6110, align 1
  %6111 = and i32 %6104, 255
  %6112 = call i32 @llvm.ctpop.i32(i32 %6111)
  %6113 = trunc i32 %6112 to i8
  %6114 = and i8 %6113, 1
  %6115 = xor i8 %6114, 1
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6115, i8* %6116, align 1
  %6117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6117, align 1
  %6118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6118, align 1
  %6119 = lshr i32 %6104, 31
  %6120 = trunc i32 %6119 to i8
  %6121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6120, i8* %6121, align 1
  %6122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6109, i8* %6122, align 1
  store %struct.Memory* %loadMem_475fc2, %struct.Memory** %MEMORY
  %loadMem_475fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6124 = getelementptr inbounds %struct.GPR, %struct.GPR* %6123, i32 0, i32 33
  %6125 = getelementptr inbounds %struct.Reg, %struct.Reg* %6124, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %6125 to i64*
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6127 = getelementptr inbounds %struct.GPR, %struct.GPR* %6126, i32 0, i32 5
  %6128 = getelementptr inbounds %struct.Reg, %struct.Reg* %6127, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6128 to i64*
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6130 = getelementptr inbounds %struct.GPR, %struct.GPR* %6129, i32 0, i32 15
  %6131 = getelementptr inbounds %struct.Reg, %struct.Reg* %6130, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %6131 to i64*
  %6132 = load i64, i64* %RCX.i
  %6133 = load i64, i64* %RBP.i18
  %6134 = sub i64 %6133, 84
  %6135 = load i64, i64* %PC.i17
  %6136 = add i64 %6135, 4
  store i64 %6136, i64* %PC.i17
  %6137 = inttoptr i64 %6134 to i32*
  %6138 = load i32, i32* %6137
  %6139 = shl i64 %6132, 32
  %6140 = ashr exact i64 %6139, 32
  %6141 = sext i32 %6138 to i64
  %6142 = mul i64 %6141, %6140
  %6143 = trunc i64 %6142 to i32
  %6144 = and i64 %6142, 4294967295
  store i64 %6144, i64* %RCX.i, align 8
  %6145 = shl i64 %6142, 32
  %6146 = ashr exact i64 %6145, 32
  %6147 = icmp ne i64 %6146, %6142
  %6148 = zext i1 %6147 to i8
  %6149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6148, i8* %6149, align 1
  %6150 = and i32 %6143, 255
  %6151 = call i32 @llvm.ctpop.i32(i32 %6150)
  %6152 = trunc i32 %6151 to i8
  %6153 = and i8 %6152, 1
  %6154 = xor i8 %6153, 1
  %6155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6154, i8* %6155, align 1
  %6156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6156, align 1
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6157, align 1
  %6158 = lshr i32 %6143, 31
  %6159 = trunc i32 %6158 to i8
  %6160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6159, i8* %6160, align 1
  %6161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6148, i8* %6161, align 1
  store %struct.Memory* %loadMem_475fc5, %struct.Memory** %MEMORY
  %loadMem_475fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6163 = getelementptr inbounds %struct.GPR, %struct.GPR* %6162, i32 0, i32 33
  %6164 = getelementptr inbounds %struct.Reg, %struct.Reg* %6163, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %6164 to i64*
  %6165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6166 = getelementptr inbounds %struct.GPR, %struct.GPR* %6165, i32 0, i32 5
  %6167 = getelementptr inbounds %struct.Reg, %struct.Reg* %6166, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %6167 to i32*
  %6168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6169 = getelementptr inbounds %struct.GPR, %struct.GPR* %6168, i32 0, i32 7
  %6170 = getelementptr inbounds %struct.Reg, %struct.Reg* %6169, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6170 to i64*
  %6171 = load i32, i32* %ECX.i
  %6172 = zext i32 %6171 to i64
  %6173 = load i64, i64* %PC.i16
  %6174 = add i64 %6173, 3
  store i64 %6174, i64* %PC.i16
  %6175 = shl i64 %6172, 32
  %6176 = ashr exact i64 %6175, 32
  store i64 %6176, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_475fc9, %struct.Memory** %MEMORY
  %loadMem1_475fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6178 = getelementptr inbounds %struct.GPR, %struct.GPR* %6177, i32 0, i32 33
  %6179 = getelementptr inbounds %struct.Reg, %struct.Reg* %6178, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %6179 to i64*
  %6180 = load i64, i64* %PC.i15
  %6181 = add i64 %6180, -479164
  %6182 = load i64, i64* %PC.i15
  %6183 = add i64 %6182, 5
  %6184 = load i64, i64* %PC.i15
  %6185 = add i64 %6184, 5
  store i64 %6185, i64* %PC.i15
  %6186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6187 = load i64, i64* %6186, align 8
  %6188 = add i64 %6187, -8
  %6189 = inttoptr i64 %6188 to i64*
  store i64 %6183, i64* %6189
  store i64 %6188, i64* %6186, align 8
  %6190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6181, i64* %6190, align 8
  store %struct.Memory* %loadMem1_475fcc, %struct.Memory** %MEMORY
  %loadMem2_475fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_475fcc = load i64, i64* %3
  %call2_475fcc = call %struct.Memory* @sub_401010.write_plt(%struct.State* %0, i64 %loadPC_475fcc, %struct.Memory* %loadMem2_475fcc)
  store %struct.Memory* %call2_475fcc, %struct.Memory** %MEMORY
  %loadMem_475fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6192 = getelementptr inbounds %struct.GPR, %struct.GPR* %6191, i32 0, i32 33
  %6193 = getelementptr inbounds %struct.Reg, %struct.Reg* %6192, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %6193 to i64*
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6195 = getelementptr inbounds %struct.GPR, %struct.GPR* %6194, i32 0, i32 1
  %6196 = getelementptr inbounds %struct.Reg, %struct.Reg* %6195, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6196 to i64*
  %6197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6198 = getelementptr inbounds %struct.GPR, %struct.GPR* %6197, i32 0, i32 15
  %6199 = getelementptr inbounds %struct.Reg, %struct.Reg* %6198, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %6199 to i64*
  %6200 = load i64, i64* %RBP.i14
  %6201 = sub i64 %6200, 136
  %6202 = load i64, i64* %RAX.i
  %6203 = load i64, i64* %PC.i13
  %6204 = add i64 %6203, 7
  store i64 %6204, i64* %PC.i13
  %6205 = inttoptr i64 %6201 to i64*
  store i64 %6202, i64* %6205
  store %struct.Memory* %loadMem_475fd1, %struct.Memory** %MEMORY
  br label %block_.L_475fd8

block_.L_475fd8:                                  ; preds = %block_475f4f, %block_475e6f
  %loadMem_475fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6207 = getelementptr inbounds %struct.GPR, %struct.GPR* %6206, i32 0, i32 33
  %6208 = getelementptr inbounds %struct.Reg, %struct.Reg* %6207, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %6208 to i64*
  %6209 = load i64, i64* %PC.i12
  %6210 = add i64 %6209, 5
  %6211 = load i64, i64* %PC.i12
  %6212 = add i64 %6211, 5
  store i64 %6212, i64* %PC.i12
  %6213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6210, i64* %6213, align 8
  store %struct.Memory* %loadMem_475fd8, %struct.Memory** %MEMORY
  br label %block_.L_475fdd

block_.L_475fdd:                                  ; preds = %block_.L_475fd8, %block_.L_475ddc
  %loadMem_475fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6215 = getelementptr inbounds %struct.GPR, %struct.GPR* %6214, i32 0, i32 33
  %6216 = getelementptr inbounds %struct.Reg, %struct.Reg* %6215, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %6216 to i64*
  %6217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6218 = getelementptr inbounds %struct.GPR, %struct.GPR* %6217, i32 0, i32 11
  %6219 = getelementptr inbounds %struct.Reg, %struct.Reg* %6218, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %6219 to i64*
  %6220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6221 = getelementptr inbounds %struct.GPR, %struct.GPR* %6220, i32 0, i32 15
  %6222 = getelementptr inbounds %struct.Reg, %struct.Reg* %6221, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %6222 to i64*
  %6223 = load i64, i64* %RBP.i11
  %6224 = sub i64 %6223, 96
  %6225 = load i64, i64* %PC.i10
  %6226 = add i64 %6225, 4
  store i64 %6226, i64* %PC.i10
  %6227 = inttoptr i64 %6224 to i64*
  %6228 = load i64, i64* %6227
  store i64 %6228, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_475fdd, %struct.Memory** %MEMORY
  %loadMem1_475fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6230 = getelementptr inbounds %struct.GPR, %struct.GPR* %6229, i32 0, i32 33
  %6231 = getelementptr inbounds %struct.Reg, %struct.Reg* %6230, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6231 to i64*
  %6232 = load i64, i64* %PC.i9
  %6233 = add i64 %6232, -479329
  %6234 = load i64, i64* %PC.i9
  %6235 = add i64 %6234, 5
  %6236 = load i64, i64* %PC.i9
  %6237 = add i64 %6236, 5
  store i64 %6237, i64* %PC.i9
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6239 = load i64, i64* %6238, align 8
  %6240 = add i64 %6239, -8
  %6241 = inttoptr i64 %6240 to i64*
  store i64 %6235, i64* %6241
  store i64 %6240, i64* %6238, align 8
  %6242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6233, i64* %6242, align 8
  store %struct.Memory* %loadMem1_475fe1, %struct.Memory** %MEMORY
  %loadMem2_475fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_475fe1 = load i64, i64* %3
  %6243 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_475fe1)
  store %struct.Memory* %6243, %struct.Memory** %MEMORY
  br label %block_.L_475fe6

block_.L_475fe6:                                  ; preds = %block_.L_475fdd, %block_475b1e
  %loadMem_475fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6245 = getelementptr inbounds %struct.GPR, %struct.GPR* %6244, i32 0, i32 33
  %6246 = getelementptr inbounds %struct.Reg, %struct.Reg* %6245, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6246 to i64*
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6248 = getelementptr inbounds %struct.GPR, %struct.GPR* %6247, i32 0, i32 13
  %6249 = getelementptr inbounds %struct.Reg, %struct.Reg* %6248, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6249 to i64*
  %6250 = load i64, i64* %RSP.i
  %6251 = load i64, i64* %PC.i5
  %6252 = add i64 %6251, 7
  store i64 %6252, i64* %PC.i5
  %6253 = add i64 152, %6250
  store i64 %6253, i64* %RSP.i, align 8
  %6254 = icmp ult i64 %6253, %6250
  %6255 = icmp ult i64 %6253, 152
  %6256 = or i1 %6254, %6255
  %6257 = zext i1 %6256 to i8
  %6258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6257, i8* %6258, align 1
  %6259 = trunc i64 %6253 to i32
  %6260 = and i32 %6259, 255
  %6261 = call i32 @llvm.ctpop.i32(i32 %6260)
  %6262 = trunc i32 %6261 to i8
  %6263 = and i8 %6262, 1
  %6264 = xor i8 %6263, 1
  %6265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6264, i8* %6265, align 1
  %6266 = xor i64 152, %6250
  %6267 = xor i64 %6266, %6253
  %6268 = lshr i64 %6267, 4
  %6269 = trunc i64 %6268 to i8
  %6270 = and i8 %6269, 1
  %6271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6270, i8* %6271, align 1
  %6272 = icmp eq i64 %6253, 0
  %6273 = zext i1 %6272 to i8
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6273, i8* %6274, align 1
  %6275 = lshr i64 %6253, 63
  %6276 = trunc i64 %6275 to i8
  %6277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6276, i8* %6277, align 1
  %6278 = lshr i64 %6250, 63
  %6279 = xor i64 %6275, %6278
  %6280 = add i64 %6279, %6275
  %6281 = icmp eq i64 %6280, 2
  %6282 = zext i1 %6281 to i8
  %6283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6282, i8* %6283, align 1
  store %struct.Memory* %loadMem_475fe6, %struct.Memory** %MEMORY
  %loadMem_475fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6285 = getelementptr inbounds %struct.GPR, %struct.GPR* %6284, i32 0, i32 33
  %6286 = getelementptr inbounds %struct.Reg, %struct.Reg* %6285, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6286 to i64*
  %6287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6288 = getelementptr inbounds %struct.GPR, %struct.GPR* %6287, i32 0, i32 3
  %6289 = getelementptr inbounds %struct.Reg, %struct.Reg* %6288, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %6289 to i64*
  %6290 = load i64, i64* %PC.i4
  %6291 = add i64 %6290, 1
  store i64 %6291, i64* %PC.i4
  %6292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6293 = load i64, i64* %6292, align 8
  %6294 = add i64 %6293, 8
  %6295 = inttoptr i64 %6293 to i64*
  %6296 = load i64, i64* %6295
  store i64 %6296, i64* %RBX.i, align 8
  store i64 %6294, i64* %6292, align 8
  store %struct.Memory* %loadMem_475fed, %struct.Memory** %MEMORY
  %loadMem_475fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6298 = getelementptr inbounds %struct.GPR, %struct.GPR* %6297, i32 0, i32 33
  %6299 = getelementptr inbounds %struct.Reg, %struct.Reg* %6298, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6299 to i64*
  %6300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6301 = getelementptr inbounds %struct.GPR, %struct.GPR* %6300, i32 0, i32 15
  %6302 = getelementptr inbounds %struct.Reg, %struct.Reg* %6301, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6302 to i64*
  %6303 = load i64, i64* %PC.i2
  %6304 = add i64 %6303, 1
  store i64 %6304, i64* %PC.i2
  %6305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6306 = load i64, i64* %6305, align 8
  %6307 = add i64 %6306, 8
  %6308 = inttoptr i64 %6306 to i64*
  %6309 = load i64, i64* %6308
  store i64 %6309, i64* %RBP.i3, align 8
  store i64 %6307, i64* %6305, align 8
  store %struct.Memory* %loadMem_475fee, %struct.Memory** %MEMORY
  %loadMem_475fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6311 = getelementptr inbounds %struct.GPR, %struct.GPR* %6310, i32 0, i32 33
  %6312 = getelementptr inbounds %struct.Reg, %struct.Reg* %6311, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6312 to i64*
  %6313 = load i64, i64* %PC.i1
  %6314 = add i64 %6313, 1
  store i64 %6314, i64* %PC.i1
  %6315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6317 = load i64, i64* %6316, align 8
  %6318 = inttoptr i64 %6317 to i64*
  %6319 = load i64, i64* %6318
  store i64 %6319, i64* %6315, align 8
  %6320 = add i64 %6317, 8
  store i64 %6320, i64* %6316, align 8
  store %struct.Memory* %loadMem_475fef, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_475fef
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

define %struct.Memory* @routine_pushq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBX
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

define %struct.Memory* @routine_subq__0x98___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 152
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 152
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
  %23 = xor i64 152, %9
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

define %struct.Memory* @routine_movl__0x8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 8, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_0x4bd7e0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x4bd7e0_type* @G_0x4bd7e0 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x4bd7e8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x4bd7e8_type* @G_0x4bd7e8 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x4bd7f0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x4bd7f0_type* @G_0x4bd7f0 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x4bd7f8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x4bd7f8_type* @G_0x4bd7f8 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11bd0__rdi____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 72656
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x64__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ESI
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

define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0xcf0__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDI
  %10 = add i64 %9, 3312
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

define %struct.Memory* @routine_movb__cl__MINUS0x65__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 101
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_475b02(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3__0x48__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
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

define %struct.Memory* @routine_sete__cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x65__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 101
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 %15, i8* %AL, align 1
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

define %struct.Memory* @routine_movzbl__al___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %AL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_cmpl__0x0__0x18f4__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6388
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

define %struct.Memory* @routine_je_.L_475b23(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_475fe6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0x19a0__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6560
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

define %struct.Memory* @routine_je_.L_475bce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_0x1998__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6552
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -48
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

define %struct.Memory* @routine_imull_0x19a4__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 6564
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RDX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_0x19a8__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 6568
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RDX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -64
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

define %struct.Memory* @routine_subl_0x199c__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 6556
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_imull__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = shl i64 %12, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = mul i64 %20, %18
  %22 = trunc i64 %21 to i32
  %23 = and i64 %21, 4294967295
  store i64 %23, i64* %RDX, align 8
  %24 = shl i64 %21, 32
  %25 = ashr exact i64 %24, 32
  %26 = icmp ne i64 %25, %21
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %22, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = lshr i32 %22, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_0x19ac__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 6572
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RDX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x199c__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 6556
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_imull__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = shl i64 %12, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = mul i64 %20, %18
  %22 = trunc i64 %21 to i32
  %23 = and i64 %21, 4294967295
  store i64 %23, i64* %RDX, align 8
  %24 = shl i64 %21, 32
  %25 = ashr exact i64 %24, 32
  %26 = icmp ne i64 %25, %21
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %22, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = lshr i32 %22, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_0x19b0__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 6576
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RDX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_475bea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x18f8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6392
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_0x18fc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 6396
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RCX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x54__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 84
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RCX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.malloc_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__rax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = sub i64 %12, %13
  %17 = icmp ult i64 %12, %13
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = trunc i64 %16 to i32
  %21 = and i32 %20, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i64 %13, %12
  %28 = xor i64 %27, %16
  %29 = lshr i64 %28, 4
  %30 = trunc i64 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i64 %16, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i64 %16, 63
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %12, 63
  %40 = lshr i64 %13, 63
  %41 = xor i64 %40, %39
  %42 = xor i64 %36, %39
  %43 = add i64 %42, %41
  %44 = icmp eq i64 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_475c2b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4c236c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c236c_type* @G__0x4c236c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 88
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

define %struct.Memory* @routine_je_.L_475ddc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x19a4__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6564
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x19a8__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6568
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_subl_0x199c__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 6556
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_imull_0x19b0__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 6576
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RAX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x1940__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__rcx____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x60__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1900__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1904__rcx____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6404
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 84
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 68
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r10d__0x8__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d__0x10__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 16
  %14 = load i32, i32* %R11D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.img2buf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
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
  store i64 %17, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1904__rbx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBX
  %13 = add i64 %12, 6404
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
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

define %struct.Memory* @routine_subl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 76
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

define %struct.Memory* @routine_movl_0x1900__rbx____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBX
  %13 = add i64 %12, 6400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x48__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
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

define %struct.Memory* @routine_subl_MINUS0x44__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 68
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

define %struct.Memory* @routine_imull__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = shl i64 %12, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = mul i64 %20, %18
  %22 = trunc i64 %21 to i32
  %23 = and i64 %21, 4294967295
  store i64 %23, i64* %RAX, align 8
  %24 = shl i64 %21, 32
  %25 = ashr exact i64 %24, 32
  %26 = icmp ne i64 %25, %21
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %22, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = lshr i32 %22, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 84
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RAX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
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

define %struct.Memory* @routine_callq_.write_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x722cb0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x488__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1160
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

define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_475dbb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_475dd7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_475ddc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x1918__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6424
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x18f8__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6392
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x18fc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6396
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____ebx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r10d____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i32, i32* %R10D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d__0x8__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i32, i32* %R11D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ebx__0x10__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 16
  %14 = load i32, i32* %EBX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x50__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
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

define %struct.Memory* @routine_subl_MINUS0x4c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 76
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

define %struct.Memory* @routine_subl_MINUS0x48__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_subl_MINUS0x44__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 68
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_imull__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = shl i64 %12, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = mul i64 %20, %18
  %22 = trunc i64 %21 to i32
  %23 = and i64 %21, 4294967295
  store i64 %23, i64* %RCX, align 8
  %24 = shl i64 %21, 32
  %25 = ashr exact i64 %24, 32
  %26 = icmp ne i64 %25, %21
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %22, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = lshr i32 %22, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %40, align 1
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

define %struct.Memory* @routine_cmpl__0x0__0x1998__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6552
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

define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_475fdd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq___rcx____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_475fd8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x1940__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1900__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1904__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6404
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_475fdd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_addq__0x98___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 152, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 152
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
  %25 = xor i64 152, %9
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

define %struct.Memory* @routine_popq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RBX, align 8
  store i64 %13, i64* %11, align 8
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
