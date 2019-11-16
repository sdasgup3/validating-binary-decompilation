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
%G__0x459a0a_type = type <{ [4 x i8] }>
%G__0x459a0f_type = type <{ [4 x i8] }>
%G__0x459a14_type = type <{ [4 x i8] }>
%G__0x459a19_type = type <{ [4 x i8] }>
%G__0x459a1e_type = type <{ [4 x i8] }>
%G__0x459a4b_type = type <{ [4 x i8] }>
%G__0x459a78_type = type <{ [4 x i8] }>
%G__0x45a1f5_type = type <{ [8 x i8] }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
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
@G__0x459a0a = global %G__0x459a0a_type zeroinitializer
@G__0x459a0f = global %G__0x459a0f_type zeroinitializer
@G__0x459a14 = global %G__0x459a14_type zeroinitializer
@G__0x459a19 = global %G__0x459a19_type zeroinitializer
@G__0x459a1e = global %G__0x459a1e_type zeroinitializer
@G__0x459a4b = global %G__0x459a4b_type zeroinitializer
@G__0x459a78 = global %G__0x459a78_type zeroinitializer
@G__0x45a1f5 = global %G__0x45a1f5_type zeroinitializer
@G__0x45a1f7 = global %G__0x45a1f7_type zeroinitializer

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

declare %struct.Memory* @sub_446650.sre_strtok(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_446720.sre_strdup(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42d7d0.MSAAddGF(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @parse_gf(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_44a900 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_44a900, %struct.Memory** %MEMORY
  %loadMem_44a901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i36 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i36
  %27 = load i64, i64* %PC.i35
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i35
  store i64 %26, i64* %RBP.i37, align 8
  store %struct.Memory* %loadMem_44a901, %struct.Memory** %MEMORY
  %loadMem_44a904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i73 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i73
  %36 = load i64, i64* %PC.i72
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i72
  %38 = sub i64 %35, 64
  store i64 %38, i64* %RSP.i73, align 8
  %39 = icmp ult i64 %35, 64
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
  %49 = xor i64 64, %35
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
  store %struct.Memory* %loadMem_44a904, %struct.Memory** %MEMORY
  %loadMem_44a908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i110
  %77 = sub i64 %76, 56
  %78 = load i64, i64* %PC.i108
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC.i108
  store i64 %77, i64* %RAX.i109, align 8
  store %struct.Memory* %loadMem_44a908, %struct.Memory** %MEMORY
  %loadMem_44a90c = load %struct.Memory*, %struct.Memory** %MEMORY
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 33
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %82 to i64*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %RCX.i136 = bitcast %union.anon* %85 to i64*
  %86 = load i64, i64* %PC.i135
  %87 = add i64 %86, 10
  store i64 %87, i64* %PC.i135
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RCX.i136, align 8
  store %struct.Memory* %loadMem_44a90c, %struct.Memory** %MEMORY
  %loadMem_44a916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 33
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %90 to i64*
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %93 to i32*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RDX.i174 = bitcast %union.anon* %96 to i64*
  %97 = load i64, i64* %RDX.i174
  %98 = load i32, i32* %EDX.i
  %99 = zext i32 %98 to i64
  %100 = load i64, i64* %PC.i173
  %101 = add i64 %100, 2
  store i64 %101, i64* %PC.i173
  %102 = xor i64 %99, %97
  %103 = trunc i64 %102 to i32
  %104 = and i64 %102, 4294967295
  store i64 %104, i64* %RDX.i174, align 8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %105, align 1
  %106 = and i32 %103, 255
  %107 = call i32 @llvm.ctpop.i32(i32 %106)
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  %110 = xor i8 %109, 1
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %110, i8* %111, align 1
  %112 = icmp eq i32 %103, 0
  %113 = zext i1 %112 to i8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %113, i8* %114, align 1
  %115 = lshr i32 %103, 31
  %116 = trunc i32 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %116, i8* %117, align 1
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %118, align 1
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %119, align 1
  store %struct.Memory* %loadMem_44a916, %struct.Memory** %MEMORY
  %loadMem_44a918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 33
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %122 to i64*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 11
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %RDI.i210 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 15
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %128 to i64*
  %129 = load i64, i64* %RBP.i211
  %130 = sub i64 %129, 16
  %131 = load i64, i64* %RDI.i210
  %132 = load i64, i64* %PC.i209
  %133 = add i64 %132, 4
  store i64 %133, i64* %PC.i209
  %134 = inttoptr i64 %130 to i64*
  store i64 %131, i64* %134
  store %struct.Memory* %loadMem_44a918, %struct.Memory** %MEMORY
  %loadMem_44a91c = load %struct.Memory*, %struct.Memory** %MEMORY
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %137 to i64*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 9
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %RSI.i237 = bitcast %union.anon* %140 to i64*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 15
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %143 to i64*
  %144 = load i64, i64* %RBP.i238
  %145 = sub i64 %144, 24
  %146 = load i64, i64* %RSI.i237
  %147 = load i64, i64* %PC.i236
  %148 = add i64 %147, 4
  store i64 %148, i64* %PC.i236
  %149 = inttoptr i64 %145 to i64*
  store i64 %146, i64* %149
  store %struct.Memory* %loadMem_44a91c, %struct.Memory** %MEMORY
  %loadMem_44a920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 9
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %RSI.i276 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %RBP.i277
  %160 = sub i64 %159, 24
  %161 = load i64, i64* %PC.i275
  %162 = add i64 %161, 4
  store i64 %162, i64* %PC.i275
  %163 = inttoptr i64 %160 to i64*
  %164 = load i64, i64* %163
  store i64 %164, i64* %RSI.i276, align 8
  store %struct.Memory* %loadMem_44a920, %struct.Memory** %MEMORY
  %loadMem_44a924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 33
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 9
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %RSI.i313 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 15
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %173 to i64*
  %174 = load i64, i64* %RBP.i314
  %175 = sub i64 %174, 56
  %176 = load i64, i64* %RSI.i313
  %177 = load i64, i64* %PC.i312
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC.i312
  %179 = inttoptr i64 %175 to i64*
  store i64 %176, i64* %179
  store %struct.Memory* %loadMem_44a924, %struct.Memory** %MEMORY
  %loadMem_44a928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 33
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %185 to i64*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 11
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %RDI.i342 = bitcast %union.anon* %188 to i64*
  %189 = load i64, i64* %RAX.i341
  %190 = load i64, i64* %PC.i340
  %191 = add i64 %190, 3
  store i64 %191, i64* %PC.i340
  store i64 %189, i64* %RDI.i342, align 8
  store %struct.Memory* %loadMem_44a928, %struct.Memory** %MEMORY
  %loadMem_44a92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 33
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %194 to i64*
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %RCX.i369 = bitcast %union.anon* %197 to i64*
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 9
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %RSI.i370 = bitcast %union.anon* %200 to i64*
  %201 = load i64, i64* %RCX.i369
  %202 = load i64, i64* %PC.i368
  %203 = add i64 %202, 3
  store i64 %203, i64* %PC.i368
  store i64 %201, i64* %RSI.i370, align 8
  store %struct.Memory* %loadMem_44a92b, %struct.Memory** %MEMORY
  %loadMem1_44a92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 33
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %206 to i64*
  %207 = load i64, i64* %PC.i396
  %208 = add i64 %207, -17118
  %209 = load i64, i64* %PC.i396
  %210 = add i64 %209, 5
  %211 = load i64, i64* %PC.i396
  %212 = add i64 %211, 5
  store i64 %212, i64* %PC.i396
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = add i64 %214, -8
  %216 = inttoptr i64 %215 to i64*
  store i64 %210, i64* %216
  store i64 %215, i64* %213, align 8
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %208, i64* %217, align 8
  store %struct.Memory* %loadMem1_44a92e, %struct.Memory** %MEMORY
  %loadMem2_44a92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44a92e = load i64, i64* %3
  %call2_44a92e = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64 %loadPC_44a92e, %struct.Memory* %loadMem2_44a92e)
  store %struct.Memory* %call2_44a92e, %struct.Memory** %MEMORY
  %loadMem_44a933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 15
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %226 to i64*
  %227 = load i64, i64* %RBP.i424
  %228 = sub i64 %227, 32
  %229 = load i64, i64* %RAX.i423
  %230 = load i64, i64* %PC.i422
  %231 = add i64 %230, 4
  store i64 %231, i64* %PC.i422
  %232 = inttoptr i64 %228 to i64*
  store i64 %229, i64* %232
  store %struct.Memory* %loadMem_44a933, %struct.Memory** %MEMORY
  %loadMem_44a937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 33
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %RAX.i545 = bitcast %union.anon* %238 to i64*
  %239 = load i64, i64* %RAX.i545
  %240 = load i64, i64* %PC.i544
  %241 = add i64 %240, 4
  store i64 %241, i64* %PC.i544
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %242, align 1
  %243 = trunc i64 %239 to i32
  %244 = and i32 %243, 255
  %245 = call i32 @llvm.ctpop.i32(i32 %244)
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %248, i8* %249, align 1
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %250, align 1
  %251 = icmp eq i64 %239, 0
  %252 = zext i1 %251 to i8
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %252, i8* %253, align 1
  %254 = lshr i64 %239, 63
  %255 = trunc i64 %254 to i8
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %255, i8* %256, align 1
  %257 = lshr i64 %239, 63
  %258 = xor i64 %254, %257
  %259 = add i64 %258, %257
  %260 = icmp eq i64 %259, 2
  %261 = zext i1 %260 to i8
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %261, i8* %262, align 1
  store %struct.Memory* %loadMem_44a937, %struct.Memory** %MEMORY
  %loadMem_44a93b = load %struct.Memory*, %struct.Memory** %MEMORY
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 33
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %265 to i64*
  %266 = load i64, i64* %PC.i543
  %267 = add i64 %266, 18
  %268 = load i64, i64* %PC.i543
  %269 = add i64 %268, 6
  %270 = load i64, i64* %PC.i543
  %271 = add i64 %270, 6
  store i64 %271, i64* %PC.i543
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %273 = load i8, i8* %272, align 1
  %274 = icmp eq i8 %273, 0
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %BRANCH_TAKEN, align 1
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %277 = select i1 %274, i64 %267, i64 %269
  store i64 %277, i64* %276, align 8
  store %struct.Memory* %loadMem_44a93b, %struct.Memory** %MEMORY
  %loadBr_44a93b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a93b = icmp eq i8 %loadBr_44a93b, 1
  br i1 %cmpBr_44a93b, label %block_.L_44a94d, label %block_44a941

block_44a941:                                     ; preds = %entry
  %loadMem_44a941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 33
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %280 to i64*
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 15
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %283 to i64*
  %284 = load i64, i64* %RBP.i542
  %285 = sub i64 %284, 4
  %286 = load i64, i64* %PC.i541
  %287 = add i64 %286, 7
  store i64 %287, i64* %PC.i541
  %288 = inttoptr i64 %285 to i32*
  store i32 0, i32* %288
  store %struct.Memory* %loadMem_44a941, %struct.Memory** %MEMORY
  %loadMem_44a948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 33
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %291 to i64*
  %292 = load i64, i64* %PC.i540
  %293 = add i64 %292, 1075
  %294 = load i64, i64* %PC.i540
  %295 = add i64 %294, 5
  store i64 %295, i64* %PC.i540
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %293, i64* %296, align 8
  store %struct.Memory* %loadMem_44a948, %struct.Memory** %MEMORY
  br label %block_.L_44ad7b

block_.L_44a94d:                                  ; preds = %entry
  %loadMem_44a94d = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 11
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RDI.i538 = bitcast %union.anon* %302 to i64*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 15
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %305 to i64*
  %306 = load i64, i64* %RBP.i539
  %307 = sub i64 %306, 56
  %308 = load i64, i64* %PC.i537
  %309 = add i64 %308, 4
  store i64 %309, i64* %PC.i537
  store i64 %307, i64* %RDI.i538, align 8
  store %struct.Memory* %loadMem_44a94d, %struct.Memory** %MEMORY
  %loadMem_44a951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 33
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 9
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %RSI.i536 = bitcast %union.anon* %315 to i64*
  %316 = load i64, i64* %PC.i535
  %317 = add i64 %316, 10
  store i64 %317, i64* %PC.i535
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i536, align 8
  store %struct.Memory* %loadMem_44a951, %struct.Memory** %MEMORY
  %loadMem_44a95b = load %struct.Memory*, %struct.Memory** %MEMORY
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 33
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %320 to i64*
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %EAX.i533 = bitcast %union.anon* %323 to i32*
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %RAX.i534 = bitcast %union.anon* %326 to i64*
  %327 = load i64, i64* %RAX.i534
  %328 = load i32, i32* %EAX.i533
  %329 = zext i32 %328 to i64
  %330 = load i64, i64* %PC.i532
  %331 = add i64 %330, 2
  store i64 %331, i64* %PC.i532
  %332 = xor i64 %329, %327
  %333 = trunc i64 %332 to i32
  %334 = and i64 %332, 4294967295
  store i64 %334, i64* %RAX.i534, align 8
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %335, align 1
  %336 = and i32 %333, 255
  %337 = call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %340, i8* %341, align 1
  %342 = icmp eq i32 %333, 0
  %343 = zext i1 %342 to i8
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %343, i8* %344, align 1
  %345 = lshr i32 %333, 31
  %346 = trunc i32 %345 to i8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %346, i8* %347, align 1
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %348, align 1
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %349, align 1
  store %struct.Memory* %loadMem_44a95b, %struct.Memory** %MEMORY
  %loadMem_44a95d = load %struct.Memory*, %struct.Memory** %MEMORY
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 33
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %EAX.i530 = bitcast %union.anon* %355 to i32*
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 7
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %RDX.i531 = bitcast %union.anon* %358 to i64*
  %359 = load i32, i32* %EAX.i530
  %360 = zext i32 %359 to i64
  %361 = load i64, i64* %PC.i529
  %362 = add i64 %361, 2
  store i64 %362, i64* %PC.i529
  %363 = and i64 %360, 4294967295
  store i64 %363, i64* %RDX.i531, align 8
  store %struct.Memory* %loadMem_44a95d, %struct.Memory** %MEMORY
  %loadMem1_44a95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %PC.i528
  %368 = add i64 %367, -17167
  %369 = load i64, i64* %PC.i528
  %370 = add i64 %369, 5
  %371 = load i64, i64* %PC.i528
  %372 = add i64 %371, 5
  store i64 %372, i64* %PC.i528
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = add i64 %374, -8
  %376 = inttoptr i64 %375 to i64*
  store i64 %370, i64* %376
  store i64 %375, i64* %373, align 8
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %368, i64* %377, align 8
  store %struct.Memory* %loadMem1_44a95f, %struct.Memory** %MEMORY
  %loadMem2_44a95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44a95f = load i64, i64* %3
  %call2_44a95f = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64 %loadPC_44a95f, %struct.Memory* %loadMem2_44a95f)
  store %struct.Memory* %call2_44a95f, %struct.Memory** %MEMORY
  %loadMem_44a964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 33
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %383 to i64*
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 15
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %386 to i64*
  %387 = load i64, i64* %RBP.i527
  %388 = sub i64 %387, 40
  %389 = load i64, i64* %RAX.i526
  %390 = load i64, i64* %PC.i525
  %391 = add i64 %390, 4
  store i64 %391, i64* %PC.i525
  %392 = inttoptr i64 %388 to i64*
  store i64 %389, i64* %392
  store %struct.Memory* %loadMem_44a964, %struct.Memory** %MEMORY
  %loadMem_44a968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 33
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %395 to i64*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %398 to i64*
  %399 = load i64, i64* %RAX.i524
  %400 = load i64, i64* %PC.i523
  %401 = add i64 %400, 4
  store i64 %401, i64* %PC.i523
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %402, align 1
  %403 = trunc i64 %399 to i32
  %404 = and i32 %403, 255
  %405 = call i32 @llvm.ctpop.i32(i32 %404)
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %408, i8* %409, align 1
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %410, align 1
  %411 = icmp eq i64 %399, 0
  %412 = zext i1 %411 to i8
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %412, i8* %413, align 1
  %414 = lshr i64 %399, 63
  %415 = trunc i64 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %415, i8* %416, align 1
  %417 = lshr i64 %399, 63
  %418 = xor i64 %414, %417
  %419 = add i64 %418, %417
  %420 = icmp eq i64 %419, 2
  %421 = zext i1 %420 to i8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %421, i8* %422, align 1
  store %struct.Memory* %loadMem_44a968, %struct.Memory** %MEMORY
  %loadMem_44a96c = load %struct.Memory*, %struct.Memory** %MEMORY
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 33
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %425 to i64*
  %426 = load i64, i64* %PC.i522
  %427 = add i64 %426, 18
  %428 = load i64, i64* %PC.i522
  %429 = add i64 %428, 6
  %430 = load i64, i64* %PC.i522
  %431 = add i64 %430, 6
  store i64 %431, i64* %PC.i522
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %433 = load i8, i8* %432, align 1
  %434 = icmp eq i8 %433, 0
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %BRANCH_TAKEN, align 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %437 = select i1 %434, i64 %427, i64 %429
  store i64 %437, i64* %436, align 8
  store %struct.Memory* %loadMem_44a96c, %struct.Memory** %MEMORY
  %loadBr_44a96c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a96c = icmp eq i8 %loadBr_44a96c, 1
  br i1 %cmpBr_44a96c, label %block_.L_44a97e, label %block_44a972

block_44a972:                                     ; preds = %block_.L_44a94d
  %loadMem_44a972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 33
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 15
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %443 to i64*
  %444 = load i64, i64* %RBP.i521
  %445 = sub i64 %444, 4
  %446 = load i64, i64* %PC.i520
  %447 = add i64 %446, 7
  store i64 %447, i64* %PC.i520
  %448 = inttoptr i64 %445 to i32*
  store i32 0, i32* %448
  store %struct.Memory* %loadMem_44a972, %struct.Memory** %MEMORY
  %loadMem_44a979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 33
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %451 to i64*
  %452 = load i64, i64* %PC.i519
  %453 = add i64 %452, 1026
  %454 = load i64, i64* %PC.i519
  %455 = add i64 %454, 5
  store i64 %455, i64* %PC.i519
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %453, i64* %456, align 8
  store %struct.Memory* %loadMem_44a979, %struct.Memory** %MEMORY
  br label %block_.L_44ad7b

block_.L_44a97e:                                  ; preds = %block_.L_44a94d
  %loadMem_44a97e = load %struct.Memory*, %struct.Memory** %MEMORY
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 33
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %459 to i64*
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 11
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %RDI.i517 = bitcast %union.anon* %462 to i64*
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 15
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %465 to i64*
  %466 = load i64, i64* %RBP.i518
  %467 = sub i64 %466, 56
  %468 = load i64, i64* %PC.i516
  %469 = add i64 %468, 4
  store i64 %469, i64* %PC.i516
  store i64 %467, i64* %RDI.i517, align 8
  store %struct.Memory* %loadMem_44a97e, %struct.Memory** %MEMORY
  %loadMem_44a982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 33
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %472 to i64*
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 9
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %RSI.i515 = bitcast %union.anon* %475 to i64*
  %476 = load i64, i64* %PC.i514
  %477 = add i64 %476, 10
  store i64 %477, i64* %PC.i514
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i515, align 8
  store %struct.Memory* %loadMem_44a982, %struct.Memory** %MEMORY
  %loadMem_44a98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 33
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %480 to i64*
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %482 = getelementptr inbounds %struct.GPR, %struct.GPR* %481, i32 0, i32 1
  %483 = getelementptr inbounds %struct.Reg, %struct.Reg* %482, i32 0, i32 0
  %EAX.i512 = bitcast %union.anon* %483 to i32*
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %486 to i64*
  %487 = load i64, i64* %RAX.i513
  %488 = load i32, i32* %EAX.i512
  %489 = zext i32 %488 to i64
  %490 = load i64, i64* %PC.i511
  %491 = add i64 %490, 2
  store i64 %491, i64* %PC.i511
  %492 = xor i64 %489, %487
  %493 = trunc i64 %492 to i32
  %494 = and i64 %492, 4294967295
  store i64 %494, i64* %RAX.i513, align 8
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %495, align 1
  %496 = and i32 %493, 255
  %497 = call i32 @llvm.ctpop.i32(i32 %496)
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  %500 = xor i8 %499, 1
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %500, i8* %501, align 1
  %502 = icmp eq i32 %493, 0
  %503 = zext i1 %502 to i8
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %503, i8* %504, align 1
  %505 = lshr i32 %493, 31
  %506 = trunc i32 %505 to i8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %506, i8* %507, align 1
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %508, align 1
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %509, align 1
  store %struct.Memory* %loadMem_44a98c, %struct.Memory** %MEMORY
  %loadMem_44a98e = load %struct.Memory*, %struct.Memory** %MEMORY
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 33
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %512 to i64*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %EAX.i509 = bitcast %union.anon* %515 to i32*
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 7
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %RDX.i510 = bitcast %union.anon* %518 to i64*
  %519 = load i32, i32* %EAX.i509
  %520 = zext i32 %519 to i64
  %521 = load i64, i64* %PC.i508
  %522 = add i64 %521, 2
  store i64 %522, i64* %PC.i508
  %523 = and i64 %520, 4294967295
  store i64 %523, i64* %RDX.i510, align 8
  store %struct.Memory* %loadMem_44a98e, %struct.Memory** %MEMORY
  %loadMem1_44a990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 33
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %526 to i64*
  %527 = load i64, i64* %PC.i507
  %528 = add i64 %527, -17216
  %529 = load i64, i64* %PC.i507
  %530 = add i64 %529, 5
  %531 = load i64, i64* %PC.i507
  %532 = add i64 %531, 5
  store i64 %532, i64* %PC.i507
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = add i64 %534, -8
  %536 = inttoptr i64 %535 to i64*
  store i64 %530, i64* %536
  store i64 %535, i64* %533, align 8
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %528, i64* %537, align 8
  store %struct.Memory* %loadMem1_44a990, %struct.Memory** %MEMORY
  %loadMem2_44a990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44a990 = load i64, i64* %3
  %call2_44a990 = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64 %loadPC_44a990, %struct.Memory* %loadMem2_44a990)
  store %struct.Memory* %call2_44a990, %struct.Memory** %MEMORY
  %loadMem_44a995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 33
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %540 to i64*
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 1
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %543 to i64*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 15
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %546 to i64*
  %547 = load i64, i64* %RBP.i506
  %548 = sub i64 %547, 48
  %549 = load i64, i64* %RAX.i505
  %550 = load i64, i64* %PC.i504
  %551 = add i64 %550, 4
  store i64 %551, i64* %PC.i504
  %552 = inttoptr i64 %548 to i64*
  store i64 %549, i64* %552
  store %struct.Memory* %loadMem_44a995, %struct.Memory** %MEMORY
  %loadMem_44a999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 33
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %555 to i64*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 1
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %RAX.i503 = bitcast %union.anon* %558 to i64*
  %559 = load i64, i64* %RAX.i503
  %560 = load i64, i64* %PC.i502
  %561 = add i64 %560, 4
  store i64 %561, i64* %PC.i502
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %562, align 1
  %563 = trunc i64 %559 to i32
  %564 = and i32 %563, 255
  %565 = call i32 @llvm.ctpop.i32(i32 %564)
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  %568 = xor i8 %567, 1
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %568, i8* %569, align 1
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %570, align 1
  %571 = icmp eq i64 %559, 0
  %572 = zext i1 %571 to i8
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %572, i8* %573, align 1
  %574 = lshr i64 %559, 63
  %575 = trunc i64 %574 to i8
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %575, i8* %576, align 1
  %577 = lshr i64 %559, 63
  %578 = xor i64 %574, %577
  %579 = add i64 %578, %577
  %580 = icmp eq i64 %579, 2
  %581 = zext i1 %580 to i8
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %581, i8* %582, align 1
  store %struct.Memory* %loadMem_44a999, %struct.Memory** %MEMORY
  %loadMem_44a99d = load %struct.Memory*, %struct.Memory** %MEMORY
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 33
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %585 to i64*
  %586 = load i64, i64* %PC.i501
  %587 = add i64 %586, 18
  %588 = load i64, i64* %PC.i501
  %589 = add i64 %588, 6
  %590 = load i64, i64* %PC.i501
  %591 = add i64 %590, 6
  store i64 %591, i64* %PC.i501
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %593 = load i8, i8* %592, align 1
  %594 = icmp eq i8 %593, 0
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %BRANCH_TAKEN, align 1
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %597 = select i1 %594, i64 %587, i64 %589
  store i64 %597, i64* %596, align 8
  store %struct.Memory* %loadMem_44a99d, %struct.Memory** %MEMORY
  %loadBr_44a99d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a99d = icmp eq i8 %loadBr_44a99d, 1
  br i1 %cmpBr_44a99d, label %block_.L_44a9af, label %block_44a9a3

block_44a9a3:                                     ; preds = %block_.L_44a97e
  %loadMem_44a9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 33
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %600 to i64*
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 15
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %603 to i64*
  %604 = load i64, i64* %RBP.i500
  %605 = sub i64 %604, 4
  %606 = load i64, i64* %PC.i499
  %607 = add i64 %606, 7
  store i64 %607, i64* %PC.i499
  %608 = inttoptr i64 %605 to i32*
  store i32 0, i32* %608
  store %struct.Memory* %loadMem_44a9a3, %struct.Memory** %MEMORY
  %loadMem_44a9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 33
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %611 to i64*
  %612 = load i64, i64* %PC.i498
  %613 = add i64 %612, 977
  %614 = load i64, i64* %PC.i498
  %615 = add i64 %614, 5
  store i64 %615, i64* %PC.i498
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %613, i64* %616, align 8
  store %struct.Memory* %loadMem_44a9aa, %struct.Memory** %MEMORY
  br label %block_.L_44ad7b

block_.L_44a9af:                                  ; preds = %block_.L_44a97e
  %loadMem_44a9af = load %struct.Memory*, %struct.Memory** %MEMORY
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 33
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %619 to i64*
  %620 = load i64, i64* %PC.i497
  %621 = add i64 %620, 5
  %622 = load i64, i64* %PC.i497
  %623 = add i64 %622, 5
  store i64 %623, i64* %PC.i497
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %621, i64* %624, align 8
  store %struct.Memory* %loadMem_44a9af, %struct.Memory** %MEMORY
  br label %block_.L_44a9b4

block_.L_44a9b4:                                  ; preds = %block_.L_44aa06, %block_.L_44a9af
  %loadMem_44a9b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 33
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 1
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %EAX.i495 = bitcast %union.anon* %630 to i32*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 1
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %633 to i64*
  %634 = load i64, i64* %RAX.i496
  %635 = load i32, i32* %EAX.i495
  %636 = zext i32 %635 to i64
  %637 = load i64, i64* %PC.i494
  %638 = add i64 %637, 2
  store i64 %638, i64* %PC.i494
  %639 = xor i64 %636, %634
  %640 = trunc i64 %639 to i32
  %641 = and i64 %639, 4294967295
  store i64 %641, i64* %RAX.i496, align 8
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %642, align 1
  %643 = and i32 %640, 255
  %644 = call i32 @llvm.ctpop.i32(i32 %643)
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  %647 = xor i8 %646, 1
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %647, i8* %648, align 1
  %649 = icmp eq i32 %640, 0
  %650 = zext i1 %649 to i8
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %650, i8* %651, align 1
  %652 = lshr i32 %640, 31
  %653 = trunc i32 %652 to i8
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %653, i8* %654, align 1
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %655, align 1
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %656, align 1
  store %struct.Memory* %loadMem_44a9b4, %struct.Memory** %MEMORY
  %loadMem_44a9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 33
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %659 to i64*
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 1
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %663 = bitcast %union.anon* %662 to %struct.anon.2*
  %AL.i492 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %663, i32 0, i32 0
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 5
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %667 = bitcast %union.anon* %666 to %struct.anon.2*
  %CL.i493 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %667, i32 0, i32 0
  %668 = load i8, i8* %AL.i492
  %669 = zext i8 %668 to i64
  %670 = load i64, i64* %PC.i491
  %671 = add i64 %670, 2
  store i64 %671, i64* %PC.i491
  store i8 %668, i8* %CL.i493, align 1
  store %struct.Memory* %loadMem_44a9b6, %struct.Memory** %MEMORY
  %loadMem_44a9b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 7
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %RDX.i489 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 15
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %680 to i64*
  %681 = load i64, i64* %RBP.i490
  %682 = sub i64 %681, 48
  %683 = load i64, i64* %PC.i488
  %684 = add i64 %683, 4
  store i64 %684, i64* %PC.i488
  %685 = inttoptr i64 %682 to i64*
  %686 = load i64, i64* %685
  store i64 %686, i64* %RDX.i489, align 8
  store %struct.Memory* %loadMem_44a9b8, %struct.Memory** %MEMORY
  %loadMem_44a9bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 33
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %689 to i64*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 1
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 7
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %RDX.i487 = bitcast %union.anon* %695 to i64*
  %696 = load i64, i64* %RDX.i487
  %697 = load i64, i64* %PC.i485
  %698 = add i64 %697, 3
  store i64 %698, i64* %PC.i485
  %699 = inttoptr i64 %696 to i8*
  %700 = load i8, i8* %699
  %701 = sext i8 %700 to i64
  %702 = and i64 %701, 4294967295
  store i64 %702, i64* %RAX.i486, align 8
  store %struct.Memory* %loadMem_44a9bc, %struct.Memory** %MEMORY
  %loadMem_44a9bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 1
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %EAX.i484 = bitcast %union.anon* %708 to i32*
  %709 = load i32, i32* %EAX.i484
  %710 = zext i32 %709 to i64
  %711 = load i64, i64* %PC.i483
  %712 = add i64 %711, 3
  store i64 %712, i64* %PC.i483
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %713, align 1
  %714 = and i32 %709, 255
  %715 = call i32 @llvm.ctpop.i32(i32 %714)
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %718, i8* %719, align 1
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %720, align 1
  %721 = icmp eq i32 %709, 0
  %722 = zext i1 %721 to i8
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %722, i8* %723, align 1
  %724 = lshr i32 %709, 31
  %725 = trunc i32 %724 to i8
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %725, i8* %726, align 1
  %727 = lshr i32 %709, 31
  %728 = xor i32 %724, %727
  %729 = add i32 %728, %727
  %730 = icmp eq i32 %729, 2
  %731 = zext i1 %730 to i8
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %731, i8* %732, align 1
  store %struct.Memory* %loadMem_44a9bf, %struct.Memory** %MEMORY
  %loadMem_44a9c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 33
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 5
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %739 = bitcast %union.anon* %738 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %739, i32 0, i32 0
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 15
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %742 to i64*
  %743 = load i64, i64* %RBP.i482
  %744 = sub i64 %743, 57
  %745 = load i8, i8* %CL.i
  %746 = zext i8 %745 to i64
  %747 = load i64, i64* %PC.i481
  %748 = add i64 %747, 3
  store i64 %748, i64* %PC.i481
  %749 = inttoptr i64 %744 to i8*
  store i8 %745, i8* %749
  store %struct.Memory* %loadMem_44a9c2, %struct.Memory** %MEMORY
  %loadMem_44a9c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 33
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %752 to i64*
  %753 = load i64, i64* %PC.i480
  %754 = add i64 %753, 49
  %755 = load i64, i64* %PC.i480
  %756 = add i64 %755, 6
  %757 = load i64, i64* %PC.i480
  %758 = add i64 %757, 6
  store i64 %758, i64* %PC.i480
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %760 = load i8, i8* %759, align 1
  store i8 %760, i8* %BRANCH_TAKEN, align 1
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %762 = icmp ne i8 %760, 0
  %763 = select i1 %762, i64 %754, i64 %756
  store i64 %763, i64* %761, align 8
  store %struct.Memory* %loadMem_44a9c5, %struct.Memory** %MEMORY
  %loadBr_44a9c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a9c5 = icmp eq i8 %loadBr_44a9c5, 1
  br i1 %cmpBr_44a9c5, label %block_.L_44a9f6, label %block_44a9cb

block_44a9cb:                                     ; preds = %block_.L_44a9b4
  %loadMem_44a9cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 33
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %766 to i64*
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 1
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %770 = bitcast %union.anon* %769 to %struct.anon.2*
  %AL.i479 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %770, i32 0, i32 0
  %771 = load i64, i64* %PC.i478
  %772 = add i64 %771, 2
  store i64 %772, i64* %PC.i478
  store i8 1, i8* %AL.i479, align 1
  store %struct.Memory* %loadMem_44a9cb, %struct.Memory** %MEMORY
  %loadMem_44a9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 33
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %775 to i64*
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 5
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %RCX.i476 = bitcast %union.anon* %778 to i64*
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 15
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %781 to i64*
  %782 = load i64, i64* %RBP.i477
  %783 = sub i64 %782, 48
  %784 = load i64, i64* %PC.i475
  %785 = add i64 %784, 4
  store i64 %785, i64* %PC.i475
  %786 = inttoptr i64 %783 to i64*
  %787 = load i64, i64* %786
  store i64 %787, i64* %RCX.i476, align 8
  store %struct.Memory* %loadMem_44a9cd, %struct.Memory** %MEMORY
  %loadMem_44a9d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 33
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 5
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %RCX.i473 = bitcast %union.anon* %793 to i64*
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 7
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %RDX.i474 = bitcast %union.anon* %796 to i64*
  %797 = load i64, i64* %RCX.i473
  %798 = load i64, i64* %PC.i472
  %799 = add i64 %798, 3
  store i64 %799, i64* %PC.i472
  %800 = inttoptr i64 %797 to i8*
  %801 = load i8, i8* %800
  %802 = sext i8 %801 to i64
  %803 = and i64 %802, 4294967295
  store i64 %803, i64* %RDX.i474, align 8
  store %struct.Memory* %loadMem_44a9d1, %struct.Memory** %MEMORY
  %loadMem_44a9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 33
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %806 to i64*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 7
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %EDX.i471 = bitcast %union.anon* %809 to i32*
  %810 = load i32, i32* %EDX.i471
  %811 = zext i32 %810 to i64
  %812 = load i64, i64* %PC.i470
  %813 = add i64 %812, 3
  store i64 %813, i64* %PC.i470
  %814 = sub i32 %810, 32
  %815 = icmp ult i32 %810, 32
  %816 = zext i1 %815 to i8
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %816, i8* %817, align 1
  %818 = and i32 %814, 255
  %819 = call i32 @llvm.ctpop.i32(i32 %818)
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = xor i8 %821, 1
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %822, i8* %823, align 1
  %824 = xor i64 32, %811
  %825 = trunc i64 %824 to i32
  %826 = xor i32 %825, %814
  %827 = lshr i32 %826, 4
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %829, i8* %830, align 1
  %831 = icmp eq i32 %814, 0
  %832 = zext i1 %831 to i8
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %832, i8* %833, align 1
  %834 = lshr i32 %814, 31
  %835 = trunc i32 %834 to i8
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %835, i8* %836, align 1
  %837 = lshr i32 %810, 31
  %838 = xor i32 %834, %837
  %839 = add i32 %838, %837
  %840 = icmp eq i32 %839, 2
  %841 = zext i1 %840 to i8
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %841, i8* %842, align 1
  store %struct.Memory* %loadMem_44a9d4, %struct.Memory** %MEMORY
  %loadMem_44a9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 33
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %845 to i64*
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 1
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %849 = bitcast %union.anon* %848 to %struct.anon.2*
  %AL.i468 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %849, i32 0, i32 0
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 15
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %852 to i64*
  %853 = load i64, i64* %RBP.i469
  %854 = sub i64 %853, 58
  %855 = load i8, i8* %AL.i468
  %856 = zext i8 %855 to i64
  %857 = load i64, i64* %PC.i467
  %858 = add i64 %857, 3
  store i64 %858, i64* %PC.i467
  %859 = inttoptr i64 %854 to i8*
  store i8 %855, i8* %859
  store %struct.Memory* %loadMem_44a9d7, %struct.Memory** %MEMORY
  %loadMem_44a9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %862 to i64*
  %863 = load i64, i64* %PC.i466
  %864 = add i64 %863, 22
  %865 = load i64, i64* %PC.i466
  %866 = add i64 %865, 6
  %867 = load i64, i64* %PC.i466
  %868 = add i64 %867, 6
  store i64 %868, i64* %PC.i466
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %870 = load i8, i8* %869, align 1
  store i8 %870, i8* %BRANCH_TAKEN, align 1
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %872 = icmp ne i8 %870, 0
  %873 = select i1 %872, i64 %864, i64 %866
  store i64 %873, i64* %871, align 8
  store %struct.Memory* %loadMem_44a9da, %struct.Memory** %MEMORY
  %loadBr_44a9da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a9da = icmp eq i8 %loadBr_44a9da, 1
  br i1 %cmpBr_44a9da, label %block_.L_44a9f0, label %block_44a9e0

block_44a9e0:                                     ; preds = %block_44a9cb
  %loadMem_44a9e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 33
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 1
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %879 to i64*
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 15
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %RBP.i465 = bitcast %union.anon* %882 to i64*
  %883 = load i64, i64* %RBP.i465
  %884 = sub i64 %883, 48
  %885 = load i64, i64* %PC.i463
  %886 = add i64 %885, 4
  store i64 %886, i64* %PC.i463
  %887 = inttoptr i64 %884 to i64*
  %888 = load i64, i64* %887
  store i64 %888, i64* %RAX.i464, align 8
  store %struct.Memory* %loadMem_44a9e0, %struct.Memory** %MEMORY
  %loadMem_44a9e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 33
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %891 to i64*
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 1
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %RAX.i461 = bitcast %union.anon* %894 to i64*
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 5
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %RCX.i462 = bitcast %union.anon* %897 to i64*
  %898 = load i64, i64* %RAX.i461
  %899 = load i64, i64* %PC.i460
  %900 = add i64 %899, 3
  store i64 %900, i64* %PC.i460
  %901 = inttoptr i64 %898 to i8*
  %902 = load i8, i8* %901
  %903 = sext i8 %902 to i64
  %904 = and i64 %903, 4294967295
  store i64 %904, i64* %RCX.i462, align 8
  store %struct.Memory* %loadMem_44a9e4, %struct.Memory** %MEMORY
  %loadMem_44a9e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 33
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %907 to i64*
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 5
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %910 to i32*
  %911 = load i32, i32* %ECX.i
  %912 = zext i32 %911 to i64
  %913 = load i64, i64* %PC.i459
  %914 = add i64 %913, 3
  store i64 %914, i64* %PC.i459
  %915 = sub i32 %911, 9
  %916 = icmp ult i32 %911, 9
  %917 = zext i1 %916 to i8
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %917, i8* %918, align 1
  %919 = and i32 %915, 255
  %920 = call i32 @llvm.ctpop.i32(i32 %919)
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  %923 = xor i8 %922, 1
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %923, i8* %924, align 1
  %925 = xor i64 9, %912
  %926 = trunc i64 %925 to i32
  %927 = xor i32 %926, %915
  %928 = lshr i32 %927, 4
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %930, i8* %931, align 1
  %932 = icmp eq i32 %915, 0
  %933 = zext i1 %932 to i8
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %933, i8* %934, align 1
  %935 = lshr i32 %915, 31
  %936 = trunc i32 %935 to i8
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %936, i8* %937, align 1
  %938 = lshr i32 %911, 31
  %939 = xor i32 %935, %938
  %940 = add i32 %939, %938
  %941 = icmp eq i32 %940, 2
  %942 = zext i1 %941 to i8
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %942, i8* %943, align 1
  store %struct.Memory* %loadMem_44a9e7, %struct.Memory** %MEMORY
  %loadMem_44a9ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 33
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %946 to i64*
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 7
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %950 = bitcast %union.anon* %949 to %struct.anon.2*
  %DL.i458 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %950, i32 0, i32 0
  %951 = load i64, i64* %PC.i457
  %952 = add i64 %951, 3
  store i64 %952, i64* %PC.i457
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %954 = load i8, i8* %953, align 1
  store i8 %954, i8* %DL.i458, align 1
  store %struct.Memory* %loadMem_44a9ea, %struct.Memory** %MEMORY
  %loadMem_44a9ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 33
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %957 to i64*
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 7
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %961 = bitcast %union.anon* %960 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %961, i32 0, i32 0
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 15
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %964 to i64*
  %965 = load i64, i64* %RBP.i456
  %966 = sub i64 %965, 58
  %967 = load i8, i8* %DL.i
  %968 = zext i8 %967 to i64
  %969 = load i64, i64* %PC.i455
  %970 = add i64 %969, 3
  store i64 %970, i64* %PC.i455
  %971 = inttoptr i64 %966 to i8*
  store i8 %967, i8* %971
  store %struct.Memory* %loadMem_44a9ed, %struct.Memory** %MEMORY
  br label %block_.L_44a9f0

block_.L_44a9f0:                                  ; preds = %block_44a9e0, %block_44a9cb
  %loadMem_44a9f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 33
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %974 to i64*
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 1
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %978 = bitcast %union.anon* %977 to %struct.anon.2*
  %AL.i453 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %978, i32 0, i32 0
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 15
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %981 to i64*
  %982 = load i64, i64* %RBP.i454
  %983 = sub i64 %982, 58
  %984 = load i64, i64* %PC.i452
  %985 = add i64 %984, 3
  store i64 %985, i64* %PC.i452
  %986 = inttoptr i64 %983 to i8*
  %987 = load i8, i8* %986
  store i8 %987, i8* %AL.i453, align 1
  store %struct.Memory* %loadMem_44a9f0, %struct.Memory** %MEMORY
  %loadMem_44a9f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 33
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %990 to i64*
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 1
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %994 = bitcast %union.anon* %993 to %struct.anon.2*
  %AL.i450 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %994, i32 0, i32 0
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 15
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %997 to i64*
  %998 = load i64, i64* %RBP.i451
  %999 = sub i64 %998, 57
  %1000 = load i8, i8* %AL.i450
  %1001 = zext i8 %1000 to i64
  %1002 = load i64, i64* %PC.i449
  %1003 = add i64 %1002, 3
  store i64 %1003, i64* %PC.i449
  %1004 = inttoptr i64 %999 to i8*
  store i8 %1000, i8* %1004
  store %struct.Memory* %loadMem_44a9f3, %struct.Memory** %MEMORY
  br label %block_.L_44a9f6

block_.L_44a9f6:                                  ; preds = %block_.L_44a9f0, %block_.L_44a9b4
  %loadMem_44a9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 33
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %1007 to i64*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 1
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %1011 = bitcast %union.anon* %1010 to %struct.anon.2*
  %AL.i447 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1011, i32 0, i32 0
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 15
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %1014 to i64*
  %1015 = load i64, i64* %RBP.i448
  %1016 = sub i64 %1015, 57
  %1017 = load i64, i64* %PC.i446
  %1018 = add i64 %1017, 3
  store i64 %1018, i64* %PC.i446
  %1019 = inttoptr i64 %1016 to i8*
  %1020 = load i8, i8* %1019
  store i8 %1020, i8* %AL.i447, align 1
  store %struct.Memory* %loadMem_44a9f6, %struct.Memory** %MEMORY
  %loadMem_44a9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 33
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1023 to i64*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 1
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %1027 = bitcast %union.anon* %1026 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1027, i32 0, i32 0
  %1028 = load i8, i8* %AL.i
  %1029 = zext i8 %1028 to i64
  %1030 = load i64, i64* %PC.i445
  %1031 = add i64 %1030, 2
  store i64 %1031, i64* %PC.i445
  %1032 = and i64 1, %1029
  %1033 = trunc i64 %1032 to i8
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1034, align 1
  %1035 = trunc i64 %1032 to i32
  %1036 = and i32 %1035, 255
  %1037 = call i32 @llvm.ctpop.i32(i32 %1036)
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  %1040 = xor i8 %1039, 1
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1040, i8* %1041, align 1
  %1042 = icmp eq i8 %1033, 0
  %1043 = zext i1 %1042 to i8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1043, i8* %1044, align 1
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1045, align 1
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1046, align 1
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1047, align 1
  store %struct.Memory* %loadMem_44a9f9, %struct.Memory** %MEMORY
  %loadMem_44a9fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 33
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1050 to i64*
  %1051 = load i64, i64* %PC.i444
  %1052 = add i64 %1051, 11
  %1053 = load i64, i64* %PC.i444
  %1054 = add i64 %1053, 6
  %1055 = load i64, i64* %PC.i444
  %1056 = add i64 %1055, 6
  store i64 %1056, i64* %PC.i444
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1058 = load i8, i8* %1057, align 1
  %1059 = icmp eq i8 %1058, 0
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %BRANCH_TAKEN, align 1
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1062 = select i1 %1059, i64 %1052, i64 %1054
  store i64 %1062, i64* %1061, align 8
  store %struct.Memory* %loadMem_44a9fb, %struct.Memory** %MEMORY
  %loadBr_44a9fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a9fb = icmp eq i8 %loadBr_44a9fb, 1
  br i1 %cmpBr_44a9fb, label %block_.L_44aa06, label %block_44aa01

block_44aa01:                                     ; preds = %block_.L_44a9f6
  %loadMem_44aa01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 33
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %1065 to i64*
  %1066 = load i64, i64* %PC.i443
  %1067 = add i64 %1066, 22
  %1068 = load i64, i64* %PC.i443
  %1069 = add i64 %1068, 5
  store i64 %1069, i64* %PC.i443
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1067, i64* %1070, align 8
  store %struct.Memory* %loadMem_44aa01, %struct.Memory** %MEMORY
  br label %block_.L_44aa17

block_.L_44aa06:                                  ; preds = %block_.L_44a9f6
  %loadMem_44aa06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 33
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1073 to i64*
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 1
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %1076 to i64*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 15
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %1079 to i64*
  %1080 = load i64, i64* %RBP.i442
  %1081 = sub i64 %1080, 48
  %1082 = load i64, i64* %PC.i440
  %1083 = add i64 %1082, 4
  store i64 %1083, i64* %PC.i440
  %1084 = inttoptr i64 %1081 to i64*
  %1085 = load i64, i64* %1084
  store i64 %1085, i64* %RAX.i441, align 8
  store %struct.Memory* %loadMem_44aa06, %struct.Memory** %MEMORY
  %loadMem_44aa0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 33
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 1
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %1091 to i64*
  %1092 = load i64, i64* %RAX.i439
  %1093 = load i64, i64* %PC.i438
  %1094 = add i64 %1093, 4
  store i64 %1094, i64* %PC.i438
  %1095 = add i64 1, %1092
  store i64 %1095, i64* %RAX.i439, align 8
  %1096 = icmp ult i64 %1095, %1092
  %1097 = icmp ult i64 %1095, 1
  %1098 = or i1 %1096, %1097
  %1099 = zext i1 %1098 to i8
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1099, i8* %1100, align 1
  %1101 = trunc i64 %1095 to i32
  %1102 = and i32 %1101, 255
  %1103 = call i32 @llvm.ctpop.i32(i32 %1102)
  %1104 = trunc i32 %1103 to i8
  %1105 = and i8 %1104, 1
  %1106 = xor i8 %1105, 1
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1106, i8* %1107, align 1
  %1108 = xor i64 1, %1092
  %1109 = xor i64 %1108, %1095
  %1110 = lshr i64 %1109, 4
  %1111 = trunc i64 %1110 to i8
  %1112 = and i8 %1111, 1
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1112, i8* %1113, align 1
  %1114 = icmp eq i64 %1095, 0
  %1115 = zext i1 %1114 to i8
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1115, i8* %1116, align 1
  %1117 = lshr i64 %1095, 63
  %1118 = trunc i64 %1117 to i8
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1118, i8* %1119, align 1
  %1120 = lshr i64 %1092, 63
  %1121 = xor i64 %1117, %1120
  %1122 = add i64 %1121, %1117
  %1123 = icmp eq i64 %1122, 2
  %1124 = zext i1 %1123 to i8
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1124, i8* %1125, align 1
  store %struct.Memory* %loadMem_44aa0a, %struct.Memory** %MEMORY
  %loadMem_44aa0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 33
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %1128 to i64*
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 1
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %1131 to i64*
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 15
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %1134 to i64*
  %1135 = load i64, i64* %RBP.i437
  %1136 = sub i64 %1135, 48
  %1137 = load i64, i64* %RAX.i436
  %1138 = load i64, i64* %PC.i435
  %1139 = add i64 %1138, 4
  store i64 %1139, i64* %PC.i435
  %1140 = inttoptr i64 %1136 to i64*
  store i64 %1137, i64* %1140
  store %struct.Memory* %loadMem_44aa0e, %struct.Memory** %MEMORY
  %loadMem_44aa12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 33
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %1143 to i64*
  %1144 = load i64, i64* %PC.i434
  %1145 = add i64 %1144, -94
  %1146 = load i64, i64* %PC.i434
  %1147 = add i64 %1146, 5
  store i64 %1147, i64* %PC.i434
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1145, i64* %1148, align 8
  store %struct.Memory* %loadMem_44aa12, %struct.Memory** %MEMORY
  br label %block_.L_44a9b4

block_.L_44aa17:                                  ; preds = %block_44aa01
  %loadMem_44aa17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %1151 to i64*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 11
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %RDI.i432 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 15
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %1157 to i64*
  %1158 = load i64, i64* %RBP.i433
  %1159 = sub i64 %1158, 40
  %1160 = load i64, i64* %PC.i431
  %1161 = add i64 %1160, 4
  store i64 %1161, i64* %PC.i431
  %1162 = inttoptr i64 %1159 to i64*
  %1163 = load i64, i64* %1162
  store i64 %1163, i64* %RDI.i432, align 8
  store %struct.Memory* %loadMem_44aa17, %struct.Memory** %MEMORY
  %loadMem_44aa1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 33
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %1166 to i64*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 1
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %1169 to i64*
  %1170 = load i64, i64* %PC.i429
  %1171 = add i64 %1170, 5
  store i64 %1171, i64* %PC.i429
  store i64 and (i64 ptrtoint (%G__0x459a0f_type* @G__0x459a0f to i64), i64 4294967295), i64* %RAX.i430, align 8
  store %struct.Memory* %loadMem_44aa1b, %struct.Memory** %MEMORY
  %loadMem_44aa20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 33
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1174 to i64*
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 1
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %EAX.i427 = bitcast %union.anon* %1177 to i32*
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 9
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %RSI.i428 = bitcast %union.anon* %1180 to i64*
  %1181 = load i32, i32* %EAX.i427
  %1182 = zext i32 %1181 to i64
  %1183 = load i64, i64* %PC.i426
  %1184 = add i64 %1183, 2
  store i64 %1184, i64* %PC.i426
  %1185 = and i64 %1182, 4294967295
  store i64 %1185, i64* %RSI.i428, align 8
  store %struct.Memory* %loadMem_44aa20, %struct.Memory** %MEMORY
  %loadMem1_44aa22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 33
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %1188 to i64*
  %1189 = load i64, i64* %PC.i425
  %1190 = add i64 %1189, -300226
  %1191 = load i64, i64* %PC.i425
  %1192 = add i64 %1191, 5
  %1193 = load i64, i64* %PC.i425
  %1194 = add i64 %1193, 5
  store i64 %1194, i64* %PC.i425
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1196 = load i64, i64* %1195, align 8
  %1197 = add i64 %1196, -8
  %1198 = inttoptr i64 %1197 to i64*
  store i64 %1192, i64* %1198
  store i64 %1197, i64* %1195, align 8
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1190, i64* %1199, align 8
  store %struct.Memory* %loadMem1_44aa22, %struct.Memory** %MEMORY
  %loadMem2_44aa22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aa22 = load i64, i64* %3
  %1200 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %loadMem2_44aa22)
  store %struct.Memory* %1200, %struct.Memory** %MEMORY
  %loadMem_44aa27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 33
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 1
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %EAX.i421 = bitcast %union.anon* %1206 to i32*
  %1207 = load i32, i32* %EAX.i421
  %1208 = zext i32 %1207 to i64
  %1209 = load i64, i64* %PC.i420
  %1210 = add i64 %1209, 3
  store i64 %1210, i64* %PC.i420
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1211, align 1
  %1212 = and i32 %1207, 255
  %1213 = call i32 @llvm.ctpop.i32(i32 %1212)
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  %1216 = xor i8 %1215, 1
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1216, i8* %1217, align 1
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1218, align 1
  %1219 = icmp eq i32 %1207, 0
  %1220 = zext i1 %1219 to i8
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1220, i8* %1221, align 1
  %1222 = lshr i32 %1207, 31
  %1223 = trunc i32 %1222 to i8
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1223, i8* %1224, align 1
  %1225 = lshr i32 %1207, 31
  %1226 = xor i32 %1222, %1225
  %1227 = add i32 %1226, %1225
  %1228 = icmp eq i32 %1227, 2
  %1229 = zext i1 %1228 to i8
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1229, i8* %1230, align 1
  store %struct.Memory* %loadMem_44aa27, %struct.Memory** %MEMORY
  %loadMem_44aa2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 33
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1233 to i64*
  %1234 = load i64, i64* %PC.i419
  %1235 = add i64 %1234, 33
  %1236 = load i64, i64* %PC.i419
  %1237 = add i64 %1236, 6
  %1238 = load i64, i64* %PC.i419
  %1239 = add i64 %1238, 6
  store i64 %1239, i64* %PC.i419
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1241 = load i8, i8* %1240, align 1
  %1242 = icmp eq i8 %1241, 0
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %BRANCH_TAKEN, align 1
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1245 = select i1 %1242, i64 %1235, i64 %1237
  store i64 %1245, i64* %1244, align 8
  store %struct.Memory* %loadMem_44aa2a, %struct.Memory** %MEMORY
  %loadBr_44aa2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44aa2a = icmp eq i8 %loadBr_44aa2a, 1
  br i1 %cmpBr_44aa2a, label %block_.L_44aa4b, label %block_44aa30

block_44aa30:                                     ; preds = %block_.L_44aa17
  %loadMem_44aa30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 9
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RSI.i418 = bitcast %union.anon* %1251 to i64*
  %1252 = load i64, i64* %PC.i417
  %1253 = add i64 %1252, 5
  store i64 %1253, i64* %PC.i417
  store i64 4294967295, i64* %RSI.i418, align 8
  store %struct.Memory* %loadMem_44aa30, %struct.Memory** %MEMORY
  %loadMem_44aa35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 11
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %RDI.i415 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 15
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %1262 to i64*
  %1263 = load i64, i64* %RBP.i416
  %1264 = sub i64 %1263, 48
  %1265 = load i64, i64* %PC.i414
  %1266 = add i64 %1265, 4
  store i64 %1266, i64* %PC.i414
  %1267 = inttoptr i64 %1264 to i64*
  %1268 = load i64, i64* %1267
  store i64 %1268, i64* %RDI.i415, align 8
  store %struct.Memory* %loadMem_44aa35, %struct.Memory** %MEMORY
  %loadMem1_44aa39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 33
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %1271 to i64*
  %1272 = load i64, i64* %PC.i413
  %1273 = add i64 %1272, -17177
  %1274 = load i64, i64* %PC.i413
  %1275 = add i64 %1274, 5
  %1276 = load i64, i64* %PC.i413
  %1277 = add i64 %1276, 5
  store i64 %1277, i64* %PC.i413
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1279 = load i64, i64* %1278, align 8
  %1280 = add i64 %1279, -8
  %1281 = inttoptr i64 %1280 to i64*
  store i64 %1275, i64* %1281
  store i64 %1280, i64* %1278, align 8
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1273, i64* %1282, align 8
  store %struct.Memory* %loadMem1_44aa39, %struct.Memory** %MEMORY
  %loadMem2_44aa39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aa39 = load i64, i64* %3
  %call2_44aa39 = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64 %loadPC_44aa39, %struct.Memory* %loadMem2_44aa39)
  store %struct.Memory* %call2_44aa39, %struct.Memory** %MEMORY
  %loadMem_44aa3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 33
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %1285 to i64*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 11
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %RDI.i411 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 15
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %1291 to i64*
  %1292 = load i64, i64* %RBP.i412
  %1293 = sub i64 %1292, 16
  %1294 = load i64, i64* %PC.i410
  %1295 = add i64 %1294, 4
  store i64 %1295, i64* %PC.i410
  %1296 = inttoptr i64 %1293 to i64*
  %1297 = load i64, i64* %1296
  store i64 %1297, i64* %RDI.i411, align 8
  store %struct.Memory* %loadMem_44aa3e, %struct.Memory** %MEMORY
  %loadMem_44aa42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1299 = getelementptr inbounds %struct.GPR, %struct.GPR* %1298, i32 0, i32 33
  %1300 = getelementptr inbounds %struct.Reg, %struct.Reg* %1299, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %1300 to i64*
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 1
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %RAX.i408 = bitcast %union.anon* %1303 to i64*
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 11
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %RDI.i409 = bitcast %union.anon* %1306 to i64*
  %1307 = load i64, i64* %RDI.i409
  %1308 = add i64 %1307, 40
  %1309 = load i64, i64* %RAX.i408
  %1310 = load i64, i64* %PC.i407
  %1311 = add i64 %1310, 4
  store i64 %1311, i64* %PC.i407
  %1312 = inttoptr i64 %1308 to i64*
  store i64 %1309, i64* %1312
  store %struct.Memory* %loadMem_44aa42, %struct.Memory** %MEMORY
  %loadMem_44aa46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 33
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %1315 to i64*
  %1316 = load i64, i64* %PC.i406
  %1317 = add i64 %1316, 814
  %1318 = load i64, i64* %PC.i406
  %1319 = add i64 %1318, 5
  store i64 %1319, i64* %PC.i406
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1317, i64* %1320, align 8
  store %struct.Memory* %loadMem_44aa46, %struct.Memory** %MEMORY
  br label %block_.L_44ad74

block_.L_44aa4b:                                  ; preds = %block_.L_44aa17
  %loadMem_44aa4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 33
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %1323 to i64*
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 11
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %RDI.i404 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 15
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %1329 to i64*
  %1330 = load i64, i64* %RBP.i405
  %1331 = sub i64 %1330, 40
  %1332 = load i64, i64* %PC.i403
  %1333 = add i64 %1332, 4
  store i64 %1333, i64* %PC.i403
  %1334 = inttoptr i64 %1331 to i64*
  %1335 = load i64, i64* %1334
  store i64 %1335, i64* %RDI.i404, align 8
  store %struct.Memory* %loadMem_44aa4b, %struct.Memory** %MEMORY
  %loadMem_44aa4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 33
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %1338 to i64*
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 1
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %1341 to i64*
  %1342 = load i64, i64* %PC.i401
  %1343 = add i64 %1342, 5
  store i64 %1343, i64* %PC.i401
  store i64 and (i64 ptrtoint (%G__0x459a14_type* @G__0x459a14 to i64), i64 4294967295), i64* %RAX.i402, align 8
  store %struct.Memory* %loadMem_44aa4f, %struct.Memory** %MEMORY
  %loadMem_44aa54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 33
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %1346 to i64*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 1
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %EAX.i399 = bitcast %union.anon* %1349 to i32*
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 9
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %RSI.i400 = bitcast %union.anon* %1352 to i64*
  %1353 = load i32, i32* %EAX.i399
  %1354 = zext i32 %1353 to i64
  %1355 = load i64, i64* %PC.i398
  %1356 = add i64 %1355, 2
  store i64 %1356, i64* %PC.i398
  %1357 = and i64 %1354, 4294967295
  store i64 %1357, i64* %RSI.i400, align 8
  store %struct.Memory* %loadMem_44aa54, %struct.Memory** %MEMORY
  %loadMem1_44aa56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 33
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %PC.i397
  %1362 = add i64 %1361, -300278
  %1363 = load i64, i64* %PC.i397
  %1364 = add i64 %1363, 5
  %1365 = load i64, i64* %PC.i397
  %1366 = add i64 %1365, 5
  store i64 %1366, i64* %PC.i397
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1368 = load i64, i64* %1367, align 8
  %1369 = add i64 %1368, -8
  %1370 = inttoptr i64 %1369 to i64*
  store i64 %1364, i64* %1370
  store i64 %1369, i64* %1367, align 8
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1362, i64* %1371, align 8
  store %struct.Memory* %loadMem1_44aa56, %struct.Memory** %MEMORY
  %loadMem2_44aa56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aa56 = load i64, i64* %3
  %1372 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %loadMem2_44aa56)
  store %struct.Memory* %1372, %struct.Memory** %MEMORY
  %loadMem_44aa5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 33
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %1375 to i64*
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 1
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %EAX.i395 = bitcast %union.anon* %1378 to i32*
  %1379 = load i32, i32* %EAX.i395
  %1380 = zext i32 %1379 to i64
  %1381 = load i64, i64* %PC.i394
  %1382 = add i64 %1381, 3
  store i64 %1382, i64* %PC.i394
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1383, align 1
  %1384 = and i32 %1379, 255
  %1385 = call i32 @llvm.ctpop.i32(i32 %1384)
  %1386 = trunc i32 %1385 to i8
  %1387 = and i8 %1386, 1
  %1388 = xor i8 %1387, 1
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1388, i8* %1389, align 1
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1390, align 1
  %1391 = icmp eq i32 %1379, 0
  %1392 = zext i1 %1391 to i8
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1392, i8* %1393, align 1
  %1394 = lshr i32 %1379, 31
  %1395 = trunc i32 %1394 to i8
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1395, i8* %1396, align 1
  %1397 = lshr i32 %1379, 31
  %1398 = xor i32 %1394, %1397
  %1399 = add i32 %1398, %1397
  %1400 = icmp eq i32 %1399, 2
  %1401 = zext i1 %1400 to i8
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1401, i8* %1402, align 1
  store %struct.Memory* %loadMem_44aa5b, %struct.Memory** %MEMORY
  %loadMem_44aa5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 33
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %1405 to i64*
  %1406 = load i64, i64* %PC.i393
  %1407 = add i64 %1406, 33
  %1408 = load i64, i64* %PC.i393
  %1409 = add i64 %1408, 6
  %1410 = load i64, i64* %PC.i393
  %1411 = add i64 %1410, 6
  store i64 %1411, i64* %PC.i393
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1413 = load i8, i8* %1412, align 1
  %1414 = icmp eq i8 %1413, 0
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %BRANCH_TAKEN, align 1
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1417 = select i1 %1414, i64 %1407, i64 %1409
  store i64 %1417, i64* %1416, align 8
  store %struct.Memory* %loadMem_44aa5e, %struct.Memory** %MEMORY
  %loadBr_44aa5e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44aa5e = icmp eq i8 %loadBr_44aa5e, 1
  br i1 %cmpBr_44aa5e, label %block_.L_44aa7f, label %block_44aa64

block_44aa64:                                     ; preds = %block_.L_44aa4b
  %loadMem_44aa64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 33
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 9
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %RSI.i392 = bitcast %union.anon* %1423 to i64*
  %1424 = load i64, i64* %PC.i391
  %1425 = add i64 %1424, 5
  store i64 %1425, i64* %PC.i391
  store i64 4294967295, i64* %RSI.i392, align 8
  store %struct.Memory* %loadMem_44aa64, %struct.Memory** %MEMORY
  %loadMem_44aa69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 33
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %1428 to i64*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 11
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %RDI.i389 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 15
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %1434 to i64*
  %1435 = load i64, i64* %RBP.i390
  %1436 = sub i64 %1435, 48
  %1437 = load i64, i64* %PC.i388
  %1438 = add i64 %1437, 4
  store i64 %1438, i64* %PC.i388
  %1439 = inttoptr i64 %1436 to i64*
  %1440 = load i64, i64* %1439
  store i64 %1440, i64* %RDI.i389, align 8
  store %struct.Memory* %loadMem_44aa69, %struct.Memory** %MEMORY
  %loadMem1_44aa6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 33
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %1443 to i64*
  %1444 = load i64, i64* %PC.i387
  %1445 = add i64 %1444, -17229
  %1446 = load i64, i64* %PC.i387
  %1447 = add i64 %1446, 5
  %1448 = load i64, i64* %PC.i387
  %1449 = add i64 %1448, 5
  store i64 %1449, i64* %PC.i387
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1451 = load i64, i64* %1450, align 8
  %1452 = add i64 %1451, -8
  %1453 = inttoptr i64 %1452 to i64*
  store i64 %1447, i64* %1453
  store i64 %1452, i64* %1450, align 8
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1445, i64* %1454, align 8
  store %struct.Memory* %loadMem1_44aa6d, %struct.Memory** %MEMORY
  %loadMem2_44aa6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aa6d = load i64, i64* %3
  %call2_44aa6d = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64 %loadPC_44aa6d, %struct.Memory* %loadMem2_44aa6d)
  store %struct.Memory* %call2_44aa6d, %struct.Memory** %MEMORY
  %loadMem_44aa72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 33
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %1457 to i64*
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 11
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %RDI.i385 = bitcast %union.anon* %1460 to i64*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 15
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %RBP.i386
  %1465 = sub i64 %1464, 16
  %1466 = load i64, i64* %PC.i384
  %1467 = add i64 %1466, 4
  store i64 %1467, i64* %PC.i384
  %1468 = inttoptr i64 %1465 to i64*
  %1469 = load i64, i64* %1468
  store i64 %1469, i64* %RDI.i385, align 8
  store %struct.Memory* %loadMem_44aa72, %struct.Memory** %MEMORY
  %loadMem_44aa76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 33
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1472 to i64*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 1
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %RAX.i382 = bitcast %union.anon* %1475 to i64*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 11
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RDI.i383 = bitcast %union.anon* %1478 to i64*
  %1479 = load i64, i64* %RDI.i383
  %1480 = add i64 %1479, 56
  %1481 = load i64, i64* %RAX.i382
  %1482 = load i64, i64* %PC.i381
  %1483 = add i64 %1482, 4
  store i64 %1483, i64* %PC.i381
  %1484 = inttoptr i64 %1480 to i64*
  store i64 %1481, i64* %1484
  store %struct.Memory* %loadMem_44aa76, %struct.Memory** %MEMORY
  %loadMem_44aa7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 33
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %1487 to i64*
  %1488 = load i64, i64* %PC.i380
  %1489 = add i64 %1488, 757
  %1490 = load i64, i64* %PC.i380
  %1491 = add i64 %1490, 5
  store i64 %1491, i64* %PC.i380
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1489, i64* %1492, align 8
  store %struct.Memory* %loadMem_44aa7a, %struct.Memory** %MEMORY
  br label %block_.L_44ad6f

block_.L_44aa7f:                                  ; preds = %block_.L_44aa4b
  %loadMem_44aa7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 33
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 11
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %RDI.i378 = bitcast %union.anon* %1498 to i64*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 15
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %1501 to i64*
  %1502 = load i64, i64* %RBP.i379
  %1503 = sub i64 %1502, 40
  %1504 = load i64, i64* %PC.i377
  %1505 = add i64 %1504, 4
  store i64 %1505, i64* %PC.i377
  %1506 = inttoptr i64 %1503 to i64*
  %1507 = load i64, i64* %1506
  store i64 %1507, i64* %RDI.i378, align 8
  store %struct.Memory* %loadMem_44aa7f, %struct.Memory** %MEMORY
  %loadMem_44aa83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1509 = getelementptr inbounds %struct.GPR, %struct.GPR* %1508, i32 0, i32 33
  %1510 = getelementptr inbounds %struct.Reg, %struct.Reg* %1509, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1510 to i64*
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 1
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %RAX.i376 = bitcast %union.anon* %1513 to i64*
  %1514 = load i64, i64* %PC.i375
  %1515 = add i64 %1514, 5
  store i64 %1515, i64* %PC.i375
  store i64 and (i64 ptrtoint (%G__0x459a19_type* @G__0x459a19 to i64), i64 4294967295), i64* %RAX.i376, align 8
  store %struct.Memory* %loadMem_44aa83, %struct.Memory** %MEMORY
  %loadMem_44aa88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 33
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %1518 to i64*
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 1
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %EAX.i373 = bitcast %union.anon* %1521 to i32*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 9
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %RSI.i374 = bitcast %union.anon* %1524 to i64*
  %1525 = load i32, i32* %EAX.i373
  %1526 = zext i32 %1525 to i64
  %1527 = load i64, i64* %PC.i372
  %1528 = add i64 %1527, 2
  store i64 %1528, i64* %PC.i372
  %1529 = and i64 %1526, 4294967295
  store i64 %1529, i64* %RSI.i374, align 8
  store %struct.Memory* %loadMem_44aa88, %struct.Memory** %MEMORY
  %loadMem1_44aa8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 33
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %1532 to i64*
  %1533 = load i64, i64* %PC.i371
  %1534 = add i64 %1533, -300330
  %1535 = load i64, i64* %PC.i371
  %1536 = add i64 %1535, 5
  %1537 = load i64, i64* %PC.i371
  %1538 = add i64 %1537, 5
  store i64 %1538, i64* %PC.i371
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1540 = load i64, i64* %1539, align 8
  %1541 = add i64 %1540, -8
  %1542 = inttoptr i64 %1541 to i64*
  store i64 %1536, i64* %1542
  store i64 %1541, i64* %1539, align 8
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1534, i64* %1543, align 8
  store %struct.Memory* %loadMem1_44aa8a, %struct.Memory** %MEMORY
  %loadMem2_44aa8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aa8a = load i64, i64* %3
  %1544 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %loadMem2_44aa8a)
  store %struct.Memory* %1544, %struct.Memory** %MEMORY
  %loadMem_44aa8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 33
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 1
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %EAX.i367 = bitcast %union.anon* %1550 to i32*
  %1551 = load i32, i32* %EAX.i367
  %1552 = zext i32 %1551 to i64
  %1553 = load i64, i64* %PC.i366
  %1554 = add i64 %1553, 3
  store i64 %1554, i64* %PC.i366
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1555, align 1
  %1556 = and i32 %1551, 255
  %1557 = call i32 @llvm.ctpop.i32(i32 %1556)
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  %1560 = xor i8 %1559, 1
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1560, i8* %1561, align 1
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1562, align 1
  %1563 = icmp eq i32 %1551, 0
  %1564 = zext i1 %1563 to i8
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1564, i8* %1565, align 1
  %1566 = lshr i32 %1551, 31
  %1567 = trunc i32 %1566 to i8
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1567, i8* %1568, align 1
  %1569 = lshr i32 %1551, 31
  %1570 = xor i32 %1566, %1569
  %1571 = add i32 %1570, %1569
  %1572 = icmp eq i32 %1571, 2
  %1573 = zext i1 %1572 to i8
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1573, i8* %1574, align 1
  store %struct.Memory* %loadMem_44aa8f, %struct.Memory** %MEMORY
  %loadMem_44aa92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %1577 to i64*
  %1578 = load i64, i64* %PC.i365
  %1579 = add i64 %1578, 33
  %1580 = load i64, i64* %PC.i365
  %1581 = add i64 %1580, 6
  %1582 = load i64, i64* %PC.i365
  %1583 = add i64 %1582, 6
  store i64 %1583, i64* %PC.i365
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1585 = load i8, i8* %1584, align 1
  %1586 = icmp eq i8 %1585, 0
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %BRANCH_TAKEN, align 1
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1589 = select i1 %1586, i64 %1579, i64 %1581
  store i64 %1589, i64* %1588, align 8
  store %struct.Memory* %loadMem_44aa92, %struct.Memory** %MEMORY
  %loadBr_44aa92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44aa92 = icmp eq i8 %loadBr_44aa92, 1
  br i1 %cmpBr_44aa92, label %block_.L_44aab3, label %block_44aa98

block_44aa98:                                     ; preds = %block_.L_44aa7f
  %loadMem_44aa98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 9
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %RSI.i364 = bitcast %union.anon* %1595 to i64*
  %1596 = load i64, i64* %PC.i363
  %1597 = add i64 %1596, 5
  store i64 %1597, i64* %PC.i363
  store i64 4294967295, i64* %RSI.i364, align 8
  store %struct.Memory* %loadMem_44aa98, %struct.Memory** %MEMORY
  %loadMem_44aa9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 33
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %1600 to i64*
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 11
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %RDI.i361 = bitcast %union.anon* %1603 to i64*
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 15
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %1606 to i64*
  %1607 = load i64, i64* %RBP.i362
  %1608 = sub i64 %1607, 48
  %1609 = load i64, i64* %PC.i360
  %1610 = add i64 %1609, 4
  store i64 %1610, i64* %PC.i360
  %1611 = inttoptr i64 %1608 to i64*
  %1612 = load i64, i64* %1611
  store i64 %1612, i64* %RDI.i361, align 8
  store %struct.Memory* %loadMem_44aa9d, %struct.Memory** %MEMORY
  %loadMem1_44aaa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1614 = getelementptr inbounds %struct.GPR, %struct.GPR* %1613, i32 0, i32 33
  %1615 = getelementptr inbounds %struct.Reg, %struct.Reg* %1614, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1615 to i64*
  %1616 = load i64, i64* %PC.i359
  %1617 = add i64 %1616, -17281
  %1618 = load i64, i64* %PC.i359
  %1619 = add i64 %1618, 5
  %1620 = load i64, i64* %PC.i359
  %1621 = add i64 %1620, 5
  store i64 %1621, i64* %PC.i359
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1623 = load i64, i64* %1622, align 8
  %1624 = add i64 %1623, -8
  %1625 = inttoptr i64 %1624 to i64*
  store i64 %1619, i64* %1625
  store i64 %1624, i64* %1622, align 8
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1617, i64* %1626, align 8
  store %struct.Memory* %loadMem1_44aaa1, %struct.Memory** %MEMORY
  %loadMem2_44aaa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aaa1 = load i64, i64* %3
  %call2_44aaa1 = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64 %loadPC_44aaa1, %struct.Memory* %loadMem2_44aaa1)
  store %struct.Memory* %call2_44aaa1, %struct.Memory** %MEMORY
  %loadMem_44aaa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 33
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %1629 to i64*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 11
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %RDI.i357 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 15
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %1635 to i64*
  %1636 = load i64, i64* %RBP.i358
  %1637 = sub i64 %1636, 16
  %1638 = load i64, i64* %PC.i356
  %1639 = add i64 %1638, 4
  store i64 %1639, i64* %PC.i356
  %1640 = inttoptr i64 %1637 to i64*
  %1641 = load i64, i64* %1640
  store i64 %1641, i64* %RDI.i357, align 8
  store %struct.Memory* %loadMem_44aaa6, %struct.Memory** %MEMORY
  %loadMem_44aaaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 33
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %1644 to i64*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 1
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %1647 to i64*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 11
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %RDI.i355 = bitcast %union.anon* %1650 to i64*
  %1651 = load i64, i64* %RDI.i355
  %1652 = add i64 %1651, 48
  %1653 = load i64, i64* %RAX.i354
  %1654 = load i64, i64* %PC.i353
  %1655 = add i64 %1654, 4
  store i64 %1655, i64* %PC.i353
  %1656 = inttoptr i64 %1652 to i64*
  store i64 %1653, i64* %1656
  store %struct.Memory* %loadMem_44aaaa, %struct.Memory** %MEMORY
  %loadMem_44aaae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 33
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1659 to i64*
  %1660 = load i64, i64* %PC.i352
  %1661 = add i64 %1660, 700
  %1662 = load i64, i64* %PC.i352
  %1663 = add i64 %1662, 5
  store i64 %1663, i64* %PC.i352
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1661, i64* %1664, align 8
  store %struct.Memory* %loadMem_44aaae, %struct.Memory** %MEMORY
  br label %block_.L_44ad6a

block_.L_44aab3:                                  ; preds = %block_.L_44aa7f
  %loadMem_44aab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 11
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %RDI.i350 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 15
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %1673 to i64*
  %1674 = load i64, i64* %RBP.i351
  %1675 = sub i64 %1674, 40
  %1676 = load i64, i64* %PC.i349
  %1677 = add i64 %1676, 4
  store i64 %1677, i64* %PC.i349
  %1678 = inttoptr i64 %1675 to i64*
  %1679 = load i64, i64* %1678
  store i64 %1679, i64* %RDI.i350, align 8
  store %struct.Memory* %loadMem_44aab3, %struct.Memory** %MEMORY
  %loadMem_44aab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 33
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1682 to i64*
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 1
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %1685 to i64*
  %1686 = load i64, i64* %PC.i347
  %1687 = add i64 %1686, 5
  store i64 %1687, i64* %PC.i347
  store i64 and (i64 ptrtoint (%G__0x459a0a_type* @G__0x459a0a to i64), i64 4294967295), i64* %RAX.i348, align 8
  store %struct.Memory* %loadMem_44aab7, %struct.Memory** %MEMORY
  %loadMem_44aabc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 33
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1690 to i64*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 1
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %EAX.i345 = bitcast %union.anon* %1693 to i32*
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 9
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %RSI.i346 = bitcast %union.anon* %1696 to i64*
  %1697 = load i32, i32* %EAX.i345
  %1698 = zext i32 %1697 to i64
  %1699 = load i64, i64* %PC.i344
  %1700 = add i64 %1699, 2
  store i64 %1700, i64* %PC.i344
  %1701 = and i64 %1698, 4294967295
  store i64 %1701, i64* %RSI.i346, align 8
  store %struct.Memory* %loadMem_44aabc, %struct.Memory** %MEMORY
  %loadMem1_44aabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 33
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %1704 to i64*
  %1705 = load i64, i64* %PC.i343
  %1706 = add i64 %1705, -300382
  %1707 = load i64, i64* %PC.i343
  %1708 = add i64 %1707, 5
  %1709 = load i64, i64* %PC.i343
  %1710 = add i64 %1709, 5
  store i64 %1710, i64* %PC.i343
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1712 = load i64, i64* %1711, align 8
  %1713 = add i64 %1712, -8
  %1714 = inttoptr i64 %1713 to i64*
  store i64 %1708, i64* %1714
  store i64 %1713, i64* %1711, align 8
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1706, i64* %1715, align 8
  store %struct.Memory* %loadMem1_44aabe, %struct.Memory** %MEMORY
  %loadMem2_44aabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aabe = load i64, i64* %3
  %1716 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %loadMem2_44aabe)
  store %struct.Memory* %1716, %struct.Memory** %MEMORY
  %loadMem_44aac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 33
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1719 to i64*
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 1
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %EAX.i339 = bitcast %union.anon* %1722 to i32*
  %1723 = load i32, i32* %EAX.i339
  %1724 = zext i32 %1723 to i64
  %1725 = load i64, i64* %PC.i338
  %1726 = add i64 %1725, 3
  store i64 %1726, i64* %PC.i338
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1727, align 1
  %1728 = and i32 %1723, 255
  %1729 = call i32 @llvm.ctpop.i32(i32 %1728)
  %1730 = trunc i32 %1729 to i8
  %1731 = and i8 %1730, 1
  %1732 = xor i8 %1731, 1
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1732, i8* %1733, align 1
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1734, align 1
  %1735 = icmp eq i32 %1723, 0
  %1736 = zext i1 %1735 to i8
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1736, i8* %1737, align 1
  %1738 = lshr i32 %1723, 31
  %1739 = trunc i32 %1738 to i8
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1739, i8* %1740, align 1
  %1741 = lshr i32 %1723, 31
  %1742 = xor i32 %1738, %1741
  %1743 = add i32 %1742, %1741
  %1744 = icmp eq i32 %1743, 2
  %1745 = zext i1 %1744 to i8
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1745, i8* %1746, align 1
  store %struct.Memory* %loadMem_44aac3, %struct.Memory** %MEMORY
  %loadMem_44aac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 33
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1749 to i64*
  %1750 = load i64, i64* %PC.i337
  %1751 = add i64 %1750, 33
  %1752 = load i64, i64* %PC.i337
  %1753 = add i64 %1752, 6
  %1754 = load i64, i64* %PC.i337
  %1755 = add i64 %1754, 6
  store i64 %1755, i64* %PC.i337
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1757 = load i8, i8* %1756, align 1
  %1758 = icmp eq i8 %1757, 0
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %BRANCH_TAKEN, align 1
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1761 = select i1 %1758, i64 %1751, i64 %1753
  store i64 %1761, i64* %1760, align 8
  store %struct.Memory* %loadMem_44aac6, %struct.Memory** %MEMORY
  %loadBr_44aac6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44aac6 = icmp eq i8 %loadBr_44aac6, 1
  br i1 %cmpBr_44aac6, label %block_.L_44aae7, label %block_44aacc

block_44aacc:                                     ; preds = %block_.L_44aab3
  %loadMem_44aacc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 33
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 9
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RSI.i336 = bitcast %union.anon* %1767 to i64*
  %1768 = load i64, i64* %PC.i335
  %1769 = add i64 %1768, 5
  store i64 %1769, i64* %PC.i335
  store i64 4294967295, i64* %RSI.i336, align 8
  store %struct.Memory* %loadMem_44aacc, %struct.Memory** %MEMORY
  %loadMem_44aad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 33
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1772 to i64*
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 11
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %RDI.i333 = bitcast %union.anon* %1775 to i64*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 15
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %1778 to i64*
  %1779 = load i64, i64* %RBP.i334
  %1780 = sub i64 %1779, 48
  %1781 = load i64, i64* %PC.i332
  %1782 = add i64 %1781, 4
  store i64 %1782, i64* %PC.i332
  %1783 = inttoptr i64 %1780 to i64*
  %1784 = load i64, i64* %1783
  store i64 %1784, i64* %RDI.i333, align 8
  store %struct.Memory* %loadMem_44aad1, %struct.Memory** %MEMORY
  %loadMem1_44aad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1786 = getelementptr inbounds %struct.GPR, %struct.GPR* %1785, i32 0, i32 33
  %1787 = getelementptr inbounds %struct.Reg, %struct.Reg* %1786, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %1787 to i64*
  %1788 = load i64, i64* %PC.i331
  %1789 = add i64 %1788, -17333
  %1790 = load i64, i64* %PC.i331
  %1791 = add i64 %1790, 5
  %1792 = load i64, i64* %PC.i331
  %1793 = add i64 %1792, 5
  store i64 %1793, i64* %PC.i331
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1795 = load i64, i64* %1794, align 8
  %1796 = add i64 %1795, -8
  %1797 = inttoptr i64 %1796 to i64*
  store i64 %1791, i64* %1797
  store i64 %1796, i64* %1794, align 8
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1789, i64* %1798, align 8
  store %struct.Memory* %loadMem1_44aad5, %struct.Memory** %MEMORY
  %loadMem2_44aad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aad5 = load i64, i64* %3
  %call2_44aad5 = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64 %loadPC_44aad5, %struct.Memory* %loadMem2_44aad5)
  store %struct.Memory* %call2_44aad5, %struct.Memory** %MEMORY
  %loadMem_44aada = load %struct.Memory*, %struct.Memory** %MEMORY
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 33
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1801 to i64*
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1803 = getelementptr inbounds %struct.GPR, %struct.GPR* %1802, i32 0, i32 11
  %1804 = getelementptr inbounds %struct.Reg, %struct.Reg* %1803, i32 0, i32 0
  %RDI.i329 = bitcast %union.anon* %1804 to i64*
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 15
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %1807 to i64*
  %1808 = load i64, i64* %RBP.i330
  %1809 = sub i64 %1808, 16
  %1810 = load i64, i64* %PC.i328
  %1811 = add i64 %1810, 4
  store i64 %1811, i64* %PC.i328
  %1812 = inttoptr i64 %1809 to i64*
  %1813 = load i64, i64* %1812
  store i64 %1813, i64* %RDI.i329, align 8
  store %struct.Memory* %loadMem_44aada, %struct.Memory** %MEMORY
  %loadMem_44aade = load %struct.Memory*, %struct.Memory** %MEMORY
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1815 = getelementptr inbounds %struct.GPR, %struct.GPR* %1814, i32 0, i32 33
  %1816 = getelementptr inbounds %struct.Reg, %struct.Reg* %1815, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1816 to i64*
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 1
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %1819 to i64*
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 11
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %RDI.i327 = bitcast %union.anon* %1822 to i64*
  %1823 = load i64, i64* %RDI.i327
  %1824 = add i64 %1823, 64
  %1825 = load i64, i64* %RAX.i326
  %1826 = load i64, i64* %PC.i325
  %1827 = add i64 %1826, 4
  store i64 %1827, i64* %PC.i325
  %1828 = inttoptr i64 %1824 to i64*
  store i64 %1825, i64* %1828
  store %struct.Memory* %loadMem_44aade, %struct.Memory** %MEMORY
  %loadMem_44aae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 33
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %1831 to i64*
  %1832 = load i64, i64* %PC.i324
  %1833 = add i64 %1832, 643
  %1834 = load i64, i64* %PC.i324
  %1835 = add i64 %1834, 5
  store i64 %1835, i64* %PC.i324
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1833, i64* %1836, align 8
  store %struct.Memory* %loadMem_44aae2, %struct.Memory** %MEMORY
  br label %block_.L_44ad65

block_.L_44aae7:                                  ; preds = %block_.L_44aab3
  %loadMem_44aae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 33
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 11
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %RDI.i322 = bitcast %union.anon* %1842 to i64*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 15
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %1845 to i64*
  %1846 = load i64, i64* %RBP.i323
  %1847 = sub i64 %1846, 40
  %1848 = load i64, i64* %PC.i321
  %1849 = add i64 %1848, 4
  store i64 %1849, i64* %PC.i321
  %1850 = inttoptr i64 %1847 to i64*
  %1851 = load i64, i64* %1850
  store i64 %1851, i64* %RDI.i322, align 8
  store %struct.Memory* %loadMem_44aae7, %struct.Memory** %MEMORY
  %loadMem_44aaeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 1
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %1857 to i64*
  %1858 = load i64, i64* %PC.i319
  %1859 = add i64 %1858, 5
  store i64 %1859, i64* %PC.i319
  store i64 and (i64 ptrtoint (%G__0x459a1e_type* @G__0x459a1e to i64), i64 4294967295), i64* %RAX.i320, align 8
  store %struct.Memory* %loadMem_44aaeb, %struct.Memory** %MEMORY
  %loadMem_44aaf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 33
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1862 to i64*
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 1
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %EAX.i317 = bitcast %union.anon* %1865 to i32*
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 9
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %RSI.i318 = bitcast %union.anon* %1868 to i64*
  %1869 = load i32, i32* %EAX.i317
  %1870 = zext i32 %1869 to i64
  %1871 = load i64, i64* %PC.i316
  %1872 = add i64 %1871, 2
  store i64 %1872, i64* %PC.i316
  %1873 = and i64 %1870, 4294967295
  store i64 %1873, i64* %RSI.i318, align 8
  store %struct.Memory* %loadMem_44aaf0, %struct.Memory** %MEMORY
  %loadMem1_44aaf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %1876 to i64*
  %1877 = load i64, i64* %PC.i315
  %1878 = add i64 %1877, -300434
  %1879 = load i64, i64* %PC.i315
  %1880 = add i64 %1879, 5
  %1881 = load i64, i64* %PC.i315
  %1882 = add i64 %1881, 5
  store i64 %1882, i64* %PC.i315
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1884 = load i64, i64* %1883, align 8
  %1885 = add i64 %1884, -8
  %1886 = inttoptr i64 %1885 to i64*
  store i64 %1880, i64* %1886
  store i64 %1885, i64* %1883, align 8
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1878, i64* %1887, align 8
  store %struct.Memory* %loadMem1_44aaf2, %struct.Memory** %MEMORY
  %loadMem2_44aaf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aaf2 = load i64, i64* %3
  %1888 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %loadMem2_44aaf2)
  store %struct.Memory* %1888, %struct.Memory** %MEMORY
  %loadMem_44aaf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 33
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %1891 to i64*
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 1
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %EAX.i311 = bitcast %union.anon* %1894 to i32*
  %1895 = load i32, i32* %EAX.i311
  %1896 = zext i32 %1895 to i64
  %1897 = load i64, i64* %PC.i310
  %1898 = add i64 %1897, 3
  store i64 %1898, i64* %PC.i310
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1899, align 1
  %1900 = and i32 %1895, 255
  %1901 = call i32 @llvm.ctpop.i32(i32 %1900)
  %1902 = trunc i32 %1901 to i8
  %1903 = and i8 %1902, 1
  %1904 = xor i8 %1903, 1
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1904, i8* %1905, align 1
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1906, align 1
  %1907 = icmp eq i32 %1895, 0
  %1908 = zext i1 %1907 to i8
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1908, i8* %1909, align 1
  %1910 = lshr i32 %1895, 31
  %1911 = trunc i32 %1910 to i8
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1911, i8* %1912, align 1
  %1913 = lshr i32 %1895, 31
  %1914 = xor i32 %1910, %1913
  %1915 = add i32 %1914, %1913
  %1916 = icmp eq i32 %1915, 2
  %1917 = zext i1 %1916 to i8
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1917, i8* %1918, align 1
  store %struct.Memory* %loadMem_44aaf7, %struct.Memory** %MEMORY
  %loadMem_44aafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 33
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1921 to i64*
  %1922 = load i64, i64* %PC.i309
  %1923 = add i64 %1922, 183
  %1924 = load i64, i64* %PC.i309
  %1925 = add i64 %1924, 6
  %1926 = load i64, i64* %PC.i309
  %1927 = add i64 %1926, 6
  store i64 %1927, i64* %PC.i309
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1929 = load i8, i8* %1928, align 1
  %1930 = icmp eq i8 %1929, 0
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %BRANCH_TAKEN, align 1
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1933 = select i1 %1930, i64 %1923, i64 %1925
  store i64 %1933, i64* %1932, align 8
  store %struct.Memory* %loadMem_44aafa, %struct.Memory** %MEMORY
  %loadBr_44aafa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44aafa = icmp eq i8 %loadBr_44aafa, 1
  br i1 %cmpBr_44aafa, label %block_.L_44abb1, label %block_44ab00

block_44ab00:                                     ; preds = %block_.L_44aae7
  %loadMem_44ab00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 11
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RDI.i307 = bitcast %union.anon* %1939 to i64*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 15
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %1942 to i64*
  %1943 = load i64, i64* %RBP.i308
  %1944 = sub i64 %1943, 56
  %1945 = load i64, i64* %PC.i306
  %1946 = add i64 %1945, 4
  store i64 %1946, i64* %PC.i306
  store i64 %1944, i64* %RDI.i307, align 8
  store %struct.Memory* %loadMem_44ab00, %struct.Memory** %MEMORY
  %loadMem_44ab04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 33
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 9
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RSI.i305 = bitcast %union.anon* %1952 to i64*
  %1953 = load i64, i64* %PC.i304
  %1954 = add i64 %1953, 10
  store i64 %1954, i64* %PC.i304
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i305, align 8
  store %struct.Memory* %loadMem_44ab04, %struct.Memory** %MEMORY
  %loadMem_44ab0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 33
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1957 to i64*
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 1
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %EAX.i302 = bitcast %union.anon* %1960 to i32*
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 1
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %1963 to i64*
  %1964 = load i64, i64* %RAX.i303
  %1965 = load i32, i32* %EAX.i302
  %1966 = zext i32 %1965 to i64
  %1967 = load i64, i64* %PC.i301
  %1968 = add i64 %1967, 2
  store i64 %1968, i64* %PC.i301
  %1969 = xor i64 %1966, %1964
  %1970 = trunc i64 %1969 to i32
  %1971 = and i64 %1969, 4294967295
  store i64 %1971, i64* %RAX.i303, align 8
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1972, align 1
  %1973 = and i32 %1970, 255
  %1974 = call i32 @llvm.ctpop.i32(i32 %1973)
  %1975 = trunc i32 %1974 to i8
  %1976 = and i8 %1975, 1
  %1977 = xor i8 %1976, 1
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1977, i8* %1978, align 1
  %1979 = icmp eq i32 %1970, 0
  %1980 = zext i1 %1979 to i8
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1980, i8* %1981, align 1
  %1982 = lshr i32 %1970, 31
  %1983 = trunc i32 %1982 to i8
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1983, i8* %1984, align 1
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1985, align 1
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1986, align 1
  store %struct.Memory* %loadMem_44ab0e, %struct.Memory** %MEMORY
  %loadMem_44ab10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 33
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1989 to i64*
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 1
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %EAX.i299 = bitcast %union.anon* %1992 to i32*
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 7
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %RDX.i300 = bitcast %union.anon* %1995 to i64*
  %1996 = load i32, i32* %EAX.i299
  %1997 = zext i32 %1996 to i64
  %1998 = load i64, i64* %PC.i298
  %1999 = add i64 %1998, 2
  store i64 %1999, i64* %PC.i298
  %2000 = and i64 %1997, 4294967295
  store i64 %2000, i64* %RDX.i300, align 8
  store %struct.Memory* %loadMem_44ab10, %struct.Memory** %MEMORY
  %loadMem_44ab12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 33
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 5
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %2006 to i64*
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 15
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %2009 to i64*
  %2010 = load i64, i64* %RBP.i297
  %2011 = sub i64 %2010, 48
  %2012 = load i64, i64* %PC.i295
  %2013 = add i64 %2012, 4
  store i64 %2013, i64* %PC.i295
  %2014 = inttoptr i64 %2011 to i64*
  %2015 = load i64, i64* %2014
  store i64 %2015, i64* %RCX.i296, align 8
  store %struct.Memory* %loadMem_44ab12, %struct.Memory** %MEMORY
  %loadMem_44ab16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 33
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %2018 to i64*
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 5
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %2021 to i64*
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 15
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %2024 to i64*
  %2025 = load i64, i64* %RBP.i294
  %2026 = sub i64 %2025, 56
  %2027 = load i64, i64* %RCX.i293
  %2028 = load i64, i64* %PC.i292
  %2029 = add i64 %2028, 4
  store i64 %2029, i64* %PC.i292
  %2030 = inttoptr i64 %2026 to i64*
  store i64 %2027, i64* %2030
  store %struct.Memory* %loadMem_44ab16, %struct.Memory** %MEMORY
  %loadMem1_44ab1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 33
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2033 to i64*
  %2034 = load i64, i64* %PC.i291
  %2035 = add i64 %2034, -17610
  %2036 = load i64, i64* %PC.i291
  %2037 = add i64 %2036, 5
  %2038 = load i64, i64* %PC.i291
  %2039 = add i64 %2038, 5
  store i64 %2039, i64* %PC.i291
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2041 = load i64, i64* %2040, align 8
  %2042 = add i64 %2041, -8
  %2043 = inttoptr i64 %2042 to i64*
  store i64 %2037, i64* %2043
  store i64 %2042, i64* %2040, align 8
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2035, i64* %2044, align 8
  store %struct.Memory* %loadMem1_44ab1a, %struct.Memory** %MEMORY
  %loadMem2_44ab1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ab1a = load i64, i64* %3
  %call2_44ab1a = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64 %loadPC_44ab1a, %struct.Memory* %loadMem2_44ab1a)
  store %struct.Memory* %call2_44ab1a, %struct.Memory** %MEMORY
  %loadMem_44ab1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 33
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %2047 to i64*
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 1
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %2050 to i64*
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 15
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %2053 to i64*
  %2054 = load i64, i64* %RBP.i290
  %2055 = sub i64 %2054, 48
  %2056 = load i64, i64* %RAX.i289
  %2057 = load i64, i64* %PC.i288
  %2058 = add i64 %2057, 4
  store i64 %2058, i64* %PC.i288
  %2059 = inttoptr i64 %2055 to i64*
  store i64 %2056, i64* %2059
  store %struct.Memory* %loadMem_44ab1f, %struct.Memory** %MEMORY
  %loadMem_44ab23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 33
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %2062 to i64*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 1
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %2065 to i64*
  %2066 = load i64, i64* %RAX.i287
  %2067 = load i64, i64* %PC.i286
  %2068 = add i64 %2067, 4
  store i64 %2068, i64* %PC.i286
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2069, align 1
  %2070 = trunc i64 %2066 to i32
  %2071 = and i32 %2070, 255
  %2072 = call i32 @llvm.ctpop.i32(i32 %2071)
  %2073 = trunc i32 %2072 to i8
  %2074 = and i8 %2073, 1
  %2075 = xor i8 %2074, 1
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2075, i8* %2076, align 1
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2077, align 1
  %2078 = icmp eq i64 %2066, 0
  %2079 = zext i1 %2078 to i8
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2079, i8* %2080, align 1
  %2081 = lshr i64 %2066, 63
  %2082 = trunc i64 %2081 to i8
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2082, i8* %2083, align 1
  %2084 = lshr i64 %2066, 63
  %2085 = xor i64 %2081, %2084
  %2086 = add i64 %2085, %2084
  %2087 = icmp eq i64 %2086, 2
  %2088 = zext i1 %2087 to i8
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2088, i8* %2089, align 1
  store %struct.Memory* %loadMem_44ab23, %struct.Memory** %MEMORY
  %loadMem_44ab27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 33
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %2092 to i64*
  %2093 = load i64, i64* %PC.i285
  %2094 = add i64 %2093, 18
  %2095 = load i64, i64* %PC.i285
  %2096 = add i64 %2095, 6
  %2097 = load i64, i64* %PC.i285
  %2098 = add i64 %2097, 6
  store i64 %2098, i64* %PC.i285
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2100 = load i8, i8* %2099, align 1
  %2101 = icmp eq i8 %2100, 0
  %2102 = zext i1 %2101 to i8
  store i8 %2102, i8* %BRANCH_TAKEN, align 1
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2104 = select i1 %2101, i64 %2094, i64 %2096
  store i64 %2104, i64* %2103, align 8
  store %struct.Memory* %loadMem_44ab27, %struct.Memory** %MEMORY
  %loadBr_44ab27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ab27 = icmp eq i8 %loadBr_44ab27, 1
  br i1 %cmpBr_44ab27, label %block_.L_44ab39, label %block_44ab2d

block_44ab2d:                                     ; preds = %block_44ab00
  %loadMem_44ab2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 33
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 15
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %2110 to i64*
  %2111 = load i64, i64* %RBP.i284
  %2112 = sub i64 %2111, 4
  %2113 = load i64, i64* %PC.i283
  %2114 = add i64 %2113, 7
  store i64 %2114, i64* %PC.i283
  %2115 = inttoptr i64 %2112 to i32*
  store i32 0, i32* %2115
  store %struct.Memory* %loadMem_44ab2d, %struct.Memory** %MEMORY
  %loadMem_44ab34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 33
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %2118 to i64*
  %2119 = load i64, i64* %PC.i282
  %2120 = add i64 %2119, 583
  %2121 = load i64, i64* %PC.i282
  %2122 = add i64 %2121, 5
  store i64 %2122, i64* %PC.i282
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2120, i64* %2123, align 8
  store %struct.Memory* %loadMem_44ab34, %struct.Memory** %MEMORY
  br label %block_.L_44ad7b

block_.L_44ab39:                                  ; preds = %block_44ab00
  %loadMem_44ab39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 11
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RDI.i280 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 15
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %RBP.i281
  %2134 = sub i64 %2133, 48
  %2135 = load i64, i64* %PC.i279
  %2136 = add i64 %2135, 4
  store i64 %2136, i64* %PC.i279
  %2137 = inttoptr i64 %2134 to i64*
  %2138 = load i64, i64* %2137
  store i64 %2138, i64* %RDI.i280, align 8
  store %struct.Memory* %loadMem_44ab39, %struct.Memory** %MEMORY
  %loadMem1_44ab3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 33
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %2141 to i64*
  %2142 = load i64, i64* %PC.i278
  %2143 = add i64 %2142, -300813
  %2144 = load i64, i64* %PC.i278
  %2145 = add i64 %2144, 5
  %2146 = load i64, i64* %PC.i278
  %2147 = add i64 %2146, 5
  store i64 %2147, i64* %PC.i278
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2149 = load i64, i64* %2148, align 8
  %2150 = add i64 %2149, -8
  %2151 = inttoptr i64 %2150 to i64*
  store i64 %2145, i64* %2151
  store i64 %2150, i64* %2148, align 8
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2143, i64* %2152, align 8
  store %struct.Memory* %loadMem1_44ab3d, %struct.Memory** %MEMORY
  %loadMem2_44ab3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ab3d = load i64, i64* %3
  %2153 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %loadMem2_44ab3d)
  store %struct.Memory* %2153, %struct.Memory** %MEMORY
  %loadMem_44ab42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 33
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2156 to i64*
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 11
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %RDI.i273 = bitcast %union.anon* %2159 to i64*
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 15
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %2162 to i64*
  %2163 = load i64, i64* %RBP.i274
  %2164 = sub i64 %2163, 56
  %2165 = load i64, i64* %PC.i272
  %2166 = add i64 %2165, 4
  store i64 %2166, i64* %PC.i272
  store i64 %2164, i64* %RDI.i273, align 8
  store %struct.Memory* %loadMem_44ab42, %struct.Memory** %MEMORY
  %loadMem_44ab46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 33
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %2169 to i64*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 9
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %RSI.i271 = bitcast %union.anon* %2172 to i64*
  %2173 = load i64, i64* %PC.i270
  %2174 = add i64 %2173, 10
  store i64 %2174, i64* %PC.i270
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i271, align 8
  store %struct.Memory* %loadMem_44ab46, %struct.Memory** %MEMORY
  %loadMem_44ab50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 33
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 1
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %EAX.i268 = bitcast %union.anon* %2180 to i32*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 1
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %2183 to i64*
  %2184 = load i64, i64* %RAX.i269
  %2185 = load i32, i32* %EAX.i268
  %2186 = zext i32 %2185 to i64
  %2187 = load i64, i64* %PC.i267
  %2188 = add i64 %2187, 2
  store i64 %2188, i64* %PC.i267
  %2189 = xor i64 %2186, %2184
  %2190 = trunc i64 %2189 to i32
  %2191 = and i64 %2189, 4294967295
  store i64 %2191, i64* %RAX.i269, align 8
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2192, align 1
  %2193 = and i32 %2190, 255
  %2194 = call i32 @llvm.ctpop.i32(i32 %2193)
  %2195 = trunc i32 %2194 to i8
  %2196 = and i8 %2195, 1
  %2197 = xor i8 %2196, 1
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2197, i8* %2198, align 1
  %2199 = icmp eq i32 %2190, 0
  %2200 = zext i1 %2199 to i8
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2200, i8* %2201, align 1
  %2202 = lshr i32 %2190, 31
  %2203 = trunc i32 %2202 to i8
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2203, i8* %2204, align 1
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2205, align 1
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2206, align 1
  store %struct.Memory* %loadMem_44ab50, %struct.Memory** %MEMORY
  %loadMem_44ab52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 33
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 1
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %EAX.i265 = bitcast %union.anon* %2212 to i32*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 7
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RDX.i266 = bitcast %union.anon* %2215 to i64*
  %2216 = load i32, i32* %EAX.i265
  %2217 = zext i32 %2216 to i64
  %2218 = load i64, i64* %PC.i264
  %2219 = add i64 %2218, 2
  store i64 %2219, i64* %PC.i264
  %2220 = and i64 %2217, 4294967295
  store i64 %2220, i64* %RDX.i266, align 8
  store %struct.Memory* %loadMem_44ab52, %struct.Memory** %MEMORY
  %loadMem_44ab54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 33
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2223 to i64*
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2225 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2224, i64 0, i64 0
  %YMM0.i262 = bitcast %union.VectorReg* %2225 to %"class.std::bitset"*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2227 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2226, i64 0, i64 0
  %XMM0.i263 = bitcast %union.VectorReg* %2227 to %union.vec128_t*
  %2228 = bitcast %"class.std::bitset"* %YMM0.i262 to i8*
  %2229 = bitcast %union.vec128_t* %XMM0.i263 to i8*
  %2230 = load i64, i64* %PC.i261
  %2231 = add i64 %2230, 4
  store i64 %2231, i64* %PC.i261
  %2232 = bitcast i8* %2228 to <2 x i32>*
  %2233 = load <2 x i32>, <2 x i32>* %2232, align 1
  %2234 = getelementptr inbounds i8, i8* %2228, i64 8
  %2235 = bitcast i8* %2234 to <2 x i32>*
  %2236 = load <2 x i32>, <2 x i32>* %2235, align 1
  %2237 = bitcast i8* %2229 to double*
  %2238 = load double, double* %2237, align 1
  %2239 = fptrunc double %2238 to float
  %2240 = bitcast i8* %2228 to float*
  store float %2239, float* %2240, align 1
  %2241 = extractelement <2 x i32> %2233, i32 1
  %2242 = getelementptr inbounds i8, i8* %2228, i64 4
  %2243 = bitcast i8* %2242 to i32*
  store i32 %2241, i32* %2243, align 1
  %2244 = extractelement <2 x i32> %2236, i32 0
  %2245 = bitcast i8* %2234 to i32*
  store i32 %2244, i32* %2245, align 1
  %2246 = extractelement <2 x i32> %2236, i32 1
  %2247 = getelementptr inbounds i8, i8* %2228, i64 12
  %2248 = bitcast i8* %2247 to i32*
  store i32 %2246, i32* %2248, align 1
  store %struct.Memory* %loadMem_44ab54, %struct.Memory** %MEMORY
  %loadMem_44ab58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 33
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %2251 to i64*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 5
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 15
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %2257 to i64*
  %2258 = load i64, i64* %RBP.i260
  %2259 = sub i64 %2258, 16
  %2260 = load i64, i64* %PC.i258
  %2261 = add i64 %2260, 4
  store i64 %2261, i64* %PC.i258
  %2262 = inttoptr i64 %2259 to i64*
  %2263 = load i64, i64* %2262
  store i64 %2263, i64* %RCX.i259, align 8
  store %struct.Memory* %loadMem_44ab58, %struct.Memory** %MEMORY
  %loadMem_44ab5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 33
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 5
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2270, i64 0, i64 0
  %XMM0.i257 = bitcast %union.VectorReg* %2271 to %union.vec128_t*
  %2272 = load i64, i64* %RCX.i256
  %2273 = add i64 %2272, 136
  %2274 = bitcast %union.vec128_t* %XMM0.i257 to i8*
  %2275 = load i64, i64* %PC.i255
  %2276 = add i64 %2275, 8
  store i64 %2276, i64* %PC.i255
  %2277 = bitcast i8* %2274 to <2 x float>*
  %2278 = load <2 x float>, <2 x float>* %2277, align 1
  %2279 = extractelement <2 x float> %2278, i32 0
  %2280 = inttoptr i64 %2273 to float*
  store float %2279, float* %2280
  store %struct.Memory* %loadMem_44ab5c, %struct.Memory** %MEMORY
  %loadMem_44ab64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 33
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %2283 to i64*
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 5
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %RCX.i253 = bitcast %union.anon* %2286 to i64*
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 15
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %2289 to i64*
  %2290 = load i64, i64* %RBP.i254
  %2291 = sub i64 %2290, 16
  %2292 = load i64, i64* %PC.i252
  %2293 = add i64 %2292, 4
  store i64 %2293, i64* %PC.i252
  %2294 = inttoptr i64 %2291 to i64*
  %2295 = load i64, i64* %2294
  store i64 %2295, i64* %RCX.i253, align 8
  store %struct.Memory* %loadMem_44ab64, %struct.Memory** %MEMORY
  %loadMem_44ab68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 33
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2298 to i64*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 5
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %RCX.i251 = bitcast %union.anon* %2301 to i64*
  %2302 = load i64, i64* %RCX.i251
  %2303 = add i64 %2302, 160
  %2304 = load i64, i64* %PC.i250
  %2305 = add i64 %2304, 10
  store i64 %2305, i64* %PC.i250
  %2306 = inttoptr i64 %2303 to i32*
  store i32 1, i32* %2306
  store %struct.Memory* %loadMem_44ab68, %struct.Memory** %MEMORY
  %loadMem1_44ab72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 33
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2309 to i64*
  %2310 = load i64, i64* %PC.i249
  %2311 = add i64 %2310, -17698
  %2312 = load i64, i64* %PC.i249
  %2313 = add i64 %2312, 5
  %2314 = load i64, i64* %PC.i249
  %2315 = add i64 %2314, 5
  store i64 %2315, i64* %PC.i249
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2317 = load i64, i64* %2316, align 8
  %2318 = add i64 %2317, -8
  %2319 = inttoptr i64 %2318 to i64*
  store i64 %2313, i64* %2319
  store i64 %2318, i64* %2316, align 8
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2311, i64* %2320, align 8
  store %struct.Memory* %loadMem1_44ab72, %struct.Memory** %MEMORY
  %loadMem2_44ab72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ab72 = load i64, i64* %3
  %call2_44ab72 = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64 %loadPC_44ab72, %struct.Memory* %loadMem2_44ab72)
  store %struct.Memory* %call2_44ab72, %struct.Memory** %MEMORY
  %loadMem_44ab77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 33
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2323 to i64*
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 1
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %2326 to i64*
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 15
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %2329 to i64*
  %2330 = load i64, i64* %RBP.i248
  %2331 = sub i64 %2330, 48
  %2332 = load i64, i64* %RAX.i247
  %2333 = load i64, i64* %PC.i246
  %2334 = add i64 %2333, 4
  store i64 %2334, i64* %PC.i246
  %2335 = inttoptr i64 %2331 to i64*
  store i64 %2332, i64* %2335
  store %struct.Memory* %loadMem_44ab77, %struct.Memory** %MEMORY
  %loadMem_44ab7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 33
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %2338 to i64*
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 1
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %2341 to i64*
  %2342 = load i64, i64* %RAX.i245
  %2343 = load i64, i64* %PC.i244
  %2344 = add i64 %2343, 4
  store i64 %2344, i64* %PC.i244
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2345, align 1
  %2346 = trunc i64 %2342 to i32
  %2347 = and i32 %2346, 255
  %2348 = call i32 @llvm.ctpop.i32(i32 %2347)
  %2349 = trunc i32 %2348 to i8
  %2350 = and i8 %2349, 1
  %2351 = xor i8 %2350, 1
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2351, i8* %2352, align 1
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2353, align 1
  %2354 = icmp eq i64 %2342, 0
  %2355 = zext i1 %2354 to i8
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2355, i8* %2356, align 1
  %2357 = lshr i64 %2342, 63
  %2358 = trunc i64 %2357 to i8
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2358, i8* %2359, align 1
  %2360 = lshr i64 %2342, 63
  %2361 = xor i64 %2357, %2360
  %2362 = add i64 %2361, %2360
  %2363 = icmp eq i64 %2362, 2
  %2364 = zext i1 %2363 to i8
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2364, i8* %2365, align 1
  store %struct.Memory* %loadMem_44ab7b, %struct.Memory** %MEMORY
  %loadMem_44ab7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 33
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2368 to i64*
  %2369 = load i64, i64* %PC.i243
  %2370 = add i64 %2369, 45
  %2371 = load i64, i64* %PC.i243
  %2372 = add i64 %2371, 6
  %2373 = load i64, i64* %PC.i243
  %2374 = add i64 %2373, 6
  store i64 %2374, i64* %PC.i243
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2376 = load i8, i8* %2375, align 1
  store i8 %2376, i8* %BRANCH_TAKEN, align 1
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2378 = icmp ne i8 %2376, 0
  %2379 = select i1 %2378, i64 %2370, i64 %2372
  store i64 %2379, i64* %2377, align 8
  store %struct.Memory* %loadMem_44ab7f, %struct.Memory** %MEMORY
  %loadBr_44ab7f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ab7f = icmp eq i8 %loadBr_44ab7f, 1
  br i1 %cmpBr_44ab7f, label %block_.L_44abac, label %block_44ab85

block_44ab85:                                     ; preds = %block_.L_44ab39
  %loadMem_44ab85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 33
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 11
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RDI.i241 = bitcast %union.anon* %2385 to i64*
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 15
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %2388 to i64*
  %2389 = load i64, i64* %RBP.i242
  %2390 = sub i64 %2389, 48
  %2391 = load i64, i64* %PC.i240
  %2392 = add i64 %2391, 4
  store i64 %2392, i64* %PC.i240
  %2393 = inttoptr i64 %2390 to i64*
  %2394 = load i64, i64* %2393
  store i64 %2394, i64* %RDI.i241, align 8
  store %struct.Memory* %loadMem_44ab85, %struct.Memory** %MEMORY
  %loadMem1_44ab89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 33
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %2397 to i64*
  %2398 = load i64, i64* %PC.i239
  %2399 = add i64 %2398, -300889
  %2400 = load i64, i64* %PC.i239
  %2401 = add i64 %2400, 5
  %2402 = load i64, i64* %PC.i239
  %2403 = add i64 %2402, 5
  store i64 %2403, i64* %PC.i239
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2405 = load i64, i64* %2404, align 8
  %2406 = add i64 %2405, -8
  %2407 = inttoptr i64 %2406 to i64*
  store i64 %2401, i64* %2407
  store i64 %2406, i64* %2404, align 8
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2399, i64* %2408, align 8
  store %struct.Memory* %loadMem1_44ab89, %struct.Memory** %MEMORY
  %loadMem2_44ab89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ab89 = load i64, i64* %3
  %2409 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %loadMem2_44ab89)
  store %struct.Memory* %2409, %struct.Memory** %MEMORY
  %loadMem_44ab8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 33
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %2412 to i64*
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2414 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2413, i64 0, i64 0
  %YMM0.i234 = bitcast %union.VectorReg* %2414 to %"class.std::bitset"*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2416 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2415, i64 0, i64 0
  %XMM0.i235 = bitcast %union.VectorReg* %2416 to %union.vec128_t*
  %2417 = bitcast %"class.std::bitset"* %YMM0.i234 to i8*
  %2418 = bitcast %union.vec128_t* %XMM0.i235 to i8*
  %2419 = load i64, i64* %PC.i233
  %2420 = add i64 %2419, 4
  store i64 %2420, i64* %PC.i233
  %2421 = bitcast i8* %2417 to <2 x i32>*
  %2422 = load <2 x i32>, <2 x i32>* %2421, align 1
  %2423 = getelementptr inbounds i8, i8* %2417, i64 8
  %2424 = bitcast i8* %2423 to <2 x i32>*
  %2425 = load <2 x i32>, <2 x i32>* %2424, align 1
  %2426 = bitcast i8* %2418 to double*
  %2427 = load double, double* %2426, align 1
  %2428 = fptrunc double %2427 to float
  %2429 = bitcast i8* %2417 to float*
  store float %2428, float* %2429, align 1
  %2430 = extractelement <2 x i32> %2422, i32 1
  %2431 = getelementptr inbounds i8, i8* %2417, i64 4
  %2432 = bitcast i8* %2431 to i32*
  store i32 %2430, i32* %2432, align 1
  %2433 = extractelement <2 x i32> %2425, i32 0
  %2434 = bitcast i8* %2423 to i32*
  store i32 %2433, i32* %2434, align 1
  %2435 = extractelement <2 x i32> %2425, i32 1
  %2436 = getelementptr inbounds i8, i8* %2417, i64 12
  %2437 = bitcast i8* %2436 to i32*
  store i32 %2435, i32* %2437, align 1
  store %struct.Memory* %loadMem_44ab8e, %struct.Memory** %MEMORY
  %loadMem_44ab92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 33
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2440 to i64*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 11
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %RDI.i231 = bitcast %union.anon* %2443 to i64*
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 15
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %2446 to i64*
  %2447 = load i64, i64* %RBP.i232
  %2448 = sub i64 %2447, 16
  %2449 = load i64, i64* %PC.i230
  %2450 = add i64 %2449, 4
  store i64 %2450, i64* %PC.i230
  %2451 = inttoptr i64 %2448 to i64*
  %2452 = load i64, i64* %2451
  store i64 %2452, i64* %RDI.i231, align 8
  store %struct.Memory* %loadMem_44ab92, %struct.Memory** %MEMORY
  %loadMem_44ab96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 33
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %2455 to i64*
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 11
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %RDI.i228 = bitcast %union.anon* %2458 to i64*
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2460 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2459, i64 0, i64 0
  %XMM0.i229 = bitcast %union.VectorReg* %2460 to %union.vec128_t*
  %2461 = load i64, i64* %RDI.i228
  %2462 = add i64 %2461, 140
  %2463 = bitcast %union.vec128_t* %XMM0.i229 to i8*
  %2464 = load i64, i64* %PC.i227
  %2465 = add i64 %2464, 8
  store i64 %2465, i64* %PC.i227
  %2466 = bitcast i8* %2463 to <2 x float>*
  %2467 = load <2 x float>, <2 x float>* %2466, align 1
  %2468 = extractelement <2 x float> %2467, i32 0
  %2469 = inttoptr i64 %2462 to float*
  store float %2468, float* %2469
  store %struct.Memory* %loadMem_44ab96, %struct.Memory** %MEMORY
  %loadMem_44ab9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 33
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %2472 to i64*
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2474 = getelementptr inbounds %struct.GPR, %struct.GPR* %2473, i32 0, i32 11
  %2475 = getelementptr inbounds %struct.Reg, %struct.Reg* %2474, i32 0, i32 0
  %RDI.i225 = bitcast %union.anon* %2475 to i64*
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 15
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %2478 to i64*
  %2479 = load i64, i64* %RBP.i226
  %2480 = sub i64 %2479, 16
  %2481 = load i64, i64* %PC.i224
  %2482 = add i64 %2481, 4
  store i64 %2482, i64* %PC.i224
  %2483 = inttoptr i64 %2480 to i64*
  %2484 = load i64, i64* %2483
  store i64 %2484, i64* %RDI.i225, align 8
  store %struct.Memory* %loadMem_44ab9e, %struct.Memory** %MEMORY
  %loadMem_44aba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 33
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %2487 to i64*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 11
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RDI.i223 = bitcast %union.anon* %2490 to i64*
  %2491 = load i64, i64* %RDI.i223
  %2492 = add i64 %2491, 164
  %2493 = load i64, i64* %PC.i222
  %2494 = add i64 %2493, 10
  store i64 %2494, i64* %PC.i222
  %2495 = inttoptr i64 %2492 to i32*
  store i32 1, i32* %2495
  store %struct.Memory* %loadMem_44aba2, %struct.Memory** %MEMORY
  br label %block_.L_44abac

block_.L_44abac:                                  ; preds = %block_44ab85, %block_.L_44ab39
  %loadMem_44abac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 33
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2498 to i64*
  %2499 = load i64, i64* %PC.i221
  %2500 = add i64 %2499, 436
  %2501 = load i64, i64* %PC.i221
  %2502 = add i64 %2501, 5
  store i64 %2502, i64* %PC.i221
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2500, i64* %2503, align 8
  store %struct.Memory* %loadMem_44abac, %struct.Memory** %MEMORY
  br label %block_.L_44ad60

block_.L_44abb1:                                  ; preds = %block_.L_44aae7
  %loadMem_44abb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 33
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %2506 to i64*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 11
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %RDI.i219 = bitcast %union.anon* %2509 to i64*
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 15
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %2512 to i64*
  %2513 = load i64, i64* %RBP.i220
  %2514 = sub i64 %2513, 40
  %2515 = load i64, i64* %PC.i218
  %2516 = add i64 %2515, 4
  store i64 %2516, i64* %PC.i218
  %2517 = inttoptr i64 %2514 to i64*
  %2518 = load i64, i64* %2517
  store i64 %2518, i64* %RDI.i219, align 8
  store %struct.Memory* %loadMem_44abb1, %struct.Memory** %MEMORY
  %loadMem_44abb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 33
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2521 to i64*
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 1
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %2524 to i64*
  %2525 = load i64, i64* %PC.i216
  %2526 = add i64 %2525, 5
  store i64 %2526, i64* %PC.i216
  store i64 and (i64 ptrtoint (%G__0x459a78_type* @G__0x459a78 to i64), i64 4294967295), i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_44abb5, %struct.Memory** %MEMORY
  %loadMem_44abba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 33
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %2529 to i64*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 1
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %EAX.i214 = bitcast %union.anon* %2532 to i32*
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 9
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %RSI.i215 = bitcast %union.anon* %2535 to i64*
  %2536 = load i32, i32* %EAX.i214
  %2537 = zext i32 %2536 to i64
  %2538 = load i64, i64* %PC.i213
  %2539 = add i64 %2538, 2
  store i64 %2539, i64* %PC.i213
  %2540 = and i64 %2537, 4294967295
  store i64 %2540, i64* %RSI.i215, align 8
  store %struct.Memory* %loadMem_44abba, %struct.Memory** %MEMORY
  %loadMem1_44abbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 33
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2543 to i64*
  %2544 = load i64, i64* %PC.i212
  %2545 = add i64 %2544, -300636
  %2546 = load i64, i64* %PC.i212
  %2547 = add i64 %2546, 5
  %2548 = load i64, i64* %PC.i212
  %2549 = add i64 %2548, 5
  store i64 %2549, i64* %PC.i212
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2551 = load i64, i64* %2550, align 8
  %2552 = add i64 %2551, -8
  %2553 = inttoptr i64 %2552 to i64*
  store i64 %2547, i64* %2553
  store i64 %2552, i64* %2550, align 8
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2545, i64* %2554, align 8
  store %struct.Memory* %loadMem1_44abbc, %struct.Memory** %MEMORY
  %loadMem2_44abbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44abbc = load i64, i64* %3
  %2555 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %loadMem2_44abbc)
  store %struct.Memory* %2555, %struct.Memory** %MEMORY
  %loadMem_44abc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 1
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %EAX.i208 = bitcast %union.anon* %2561 to i32*
  %2562 = load i32, i32* %EAX.i208
  %2563 = zext i32 %2562 to i64
  %2564 = load i64, i64* %PC.i207
  %2565 = add i64 %2564, 3
  store i64 %2565, i64* %PC.i207
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2566, align 1
  %2567 = and i32 %2562, 255
  %2568 = call i32 @llvm.ctpop.i32(i32 %2567)
  %2569 = trunc i32 %2568 to i8
  %2570 = and i8 %2569, 1
  %2571 = xor i8 %2570, 1
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2571, i8* %2572, align 1
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2573, align 1
  %2574 = icmp eq i32 %2562, 0
  %2575 = zext i1 %2574 to i8
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2575, i8* %2576, align 1
  %2577 = lshr i32 %2562, 31
  %2578 = trunc i32 %2577 to i8
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2578, i8* %2579, align 1
  %2580 = lshr i32 %2562, 31
  %2581 = xor i32 %2577, %2580
  %2582 = add i32 %2581, %2580
  %2583 = icmp eq i32 %2582, 2
  %2584 = zext i1 %2583 to i8
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2584, i8* %2585, align 1
  store %struct.Memory* %loadMem_44abc1, %struct.Memory** %MEMORY
  %loadMem_44abc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 33
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2588 to i64*
  %2589 = load i64, i64* %PC.i206
  %2590 = add i64 %2589, 183
  %2591 = load i64, i64* %PC.i206
  %2592 = add i64 %2591, 6
  %2593 = load i64, i64* %PC.i206
  %2594 = add i64 %2593, 6
  store i64 %2594, i64* %PC.i206
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2596 = load i8, i8* %2595, align 1
  %2597 = icmp eq i8 %2596, 0
  %2598 = zext i1 %2597 to i8
  store i8 %2598, i8* %BRANCH_TAKEN, align 1
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2600 = select i1 %2597, i64 %2590, i64 %2592
  store i64 %2600, i64* %2599, align 8
  store %struct.Memory* %loadMem_44abc4, %struct.Memory** %MEMORY
  %loadBr_44abc4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44abc4 = icmp eq i8 %loadBr_44abc4, 1
  br i1 %cmpBr_44abc4, label %block_.L_44ac7b, label %block_44abca

block_44abca:                                     ; preds = %block_.L_44abb1
  %loadMem_44abca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 33
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2603 to i64*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 11
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %RDI.i204 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 15
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %2609 to i64*
  %2610 = load i64, i64* %RBP.i205
  %2611 = sub i64 %2610, 56
  %2612 = load i64, i64* %PC.i203
  %2613 = add i64 %2612, 4
  store i64 %2613, i64* %PC.i203
  store i64 %2611, i64* %RDI.i204, align 8
  store %struct.Memory* %loadMem_44abca, %struct.Memory** %MEMORY
  %loadMem_44abce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2615 = getelementptr inbounds %struct.GPR, %struct.GPR* %2614, i32 0, i32 33
  %2616 = getelementptr inbounds %struct.Reg, %struct.Reg* %2615, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %2616 to i64*
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2618 = getelementptr inbounds %struct.GPR, %struct.GPR* %2617, i32 0, i32 9
  %2619 = getelementptr inbounds %struct.Reg, %struct.Reg* %2618, i32 0, i32 0
  %RSI.i202 = bitcast %union.anon* %2619 to i64*
  %2620 = load i64, i64* %PC.i201
  %2621 = add i64 %2620, 10
  store i64 %2621, i64* %PC.i201
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i202, align 8
  store %struct.Memory* %loadMem_44abce, %struct.Memory** %MEMORY
  %loadMem_44abd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 33
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2624 to i64*
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 1
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %EAX.i199 = bitcast %union.anon* %2627 to i32*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 1
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %2630 to i64*
  %2631 = load i64, i64* %RAX.i200
  %2632 = load i32, i32* %EAX.i199
  %2633 = zext i32 %2632 to i64
  %2634 = load i64, i64* %PC.i198
  %2635 = add i64 %2634, 2
  store i64 %2635, i64* %PC.i198
  %2636 = xor i64 %2633, %2631
  %2637 = trunc i64 %2636 to i32
  %2638 = and i64 %2636, 4294967295
  store i64 %2638, i64* %RAX.i200, align 8
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2639, align 1
  %2640 = and i32 %2637, 255
  %2641 = call i32 @llvm.ctpop.i32(i32 %2640)
  %2642 = trunc i32 %2641 to i8
  %2643 = and i8 %2642, 1
  %2644 = xor i8 %2643, 1
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2644, i8* %2645, align 1
  %2646 = icmp eq i32 %2637, 0
  %2647 = zext i1 %2646 to i8
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2647, i8* %2648, align 1
  %2649 = lshr i32 %2637, 31
  %2650 = trunc i32 %2649 to i8
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2650, i8* %2651, align 1
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2652, align 1
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2653, align 1
  store %struct.Memory* %loadMem_44abd8, %struct.Memory** %MEMORY
  %loadMem_44abda = load %struct.Memory*, %struct.Memory** %MEMORY
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 33
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2656 to i64*
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 1
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %EAX.i196 = bitcast %union.anon* %2659 to i32*
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 7
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %RDX.i197 = bitcast %union.anon* %2662 to i64*
  %2663 = load i32, i32* %EAX.i196
  %2664 = zext i32 %2663 to i64
  %2665 = load i64, i64* %PC.i195
  %2666 = add i64 %2665, 2
  store i64 %2666, i64* %PC.i195
  %2667 = and i64 %2664, 4294967295
  store i64 %2667, i64* %RDX.i197, align 8
  store %struct.Memory* %loadMem_44abda, %struct.Memory** %MEMORY
  %loadMem_44abdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 33
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2670 to i64*
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 5
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %RCX.i193 = bitcast %union.anon* %2673 to i64*
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 15
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %2676 to i64*
  %2677 = load i64, i64* %RBP.i194
  %2678 = sub i64 %2677, 48
  %2679 = load i64, i64* %PC.i192
  %2680 = add i64 %2679, 4
  store i64 %2680, i64* %PC.i192
  %2681 = inttoptr i64 %2678 to i64*
  %2682 = load i64, i64* %2681
  store i64 %2682, i64* %RCX.i193, align 8
  store %struct.Memory* %loadMem_44abdc, %struct.Memory** %MEMORY
  %loadMem_44abe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 33
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2685 to i64*
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 5
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %RCX.i190 = bitcast %union.anon* %2688 to i64*
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 15
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %2691 to i64*
  %2692 = load i64, i64* %RBP.i191
  %2693 = sub i64 %2692, 56
  %2694 = load i64, i64* %RCX.i190
  %2695 = load i64, i64* %PC.i189
  %2696 = add i64 %2695, 4
  store i64 %2696, i64* %PC.i189
  %2697 = inttoptr i64 %2693 to i64*
  store i64 %2694, i64* %2697
  store %struct.Memory* %loadMem_44abe0, %struct.Memory** %MEMORY
  %loadMem1_44abe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %2700 to i64*
  %2701 = load i64, i64* %PC.i188
  %2702 = add i64 %2701, -17812
  %2703 = load i64, i64* %PC.i188
  %2704 = add i64 %2703, 5
  %2705 = load i64, i64* %PC.i188
  %2706 = add i64 %2705, 5
  store i64 %2706, i64* %PC.i188
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2708 = load i64, i64* %2707, align 8
  %2709 = add i64 %2708, -8
  %2710 = inttoptr i64 %2709 to i64*
  store i64 %2704, i64* %2710
  store i64 %2709, i64* %2707, align 8
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2702, i64* %2711, align 8
  store %struct.Memory* %loadMem1_44abe4, %struct.Memory** %MEMORY
  %loadMem2_44abe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44abe4 = load i64, i64* %3
  %call2_44abe4 = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64 %loadPC_44abe4, %struct.Memory* %loadMem2_44abe4)
  store %struct.Memory* %call2_44abe4, %struct.Memory** %MEMORY
  %loadMem_44abe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 33
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %2714 to i64*
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 1
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 15
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %2720 to i64*
  %2721 = load i64, i64* %RBP.i187
  %2722 = sub i64 %2721, 48
  %2723 = load i64, i64* %RAX.i186
  %2724 = load i64, i64* %PC.i185
  %2725 = add i64 %2724, 4
  store i64 %2725, i64* %PC.i185
  %2726 = inttoptr i64 %2722 to i64*
  store i64 %2723, i64* %2726
  store %struct.Memory* %loadMem_44abe9, %struct.Memory** %MEMORY
  %loadMem_44abed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 33
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2729 to i64*
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 1
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %2732 to i64*
  %2733 = load i64, i64* %RAX.i184
  %2734 = load i64, i64* %PC.i183
  %2735 = add i64 %2734, 4
  store i64 %2735, i64* %PC.i183
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2736, align 1
  %2737 = trunc i64 %2733 to i32
  %2738 = and i32 %2737, 255
  %2739 = call i32 @llvm.ctpop.i32(i32 %2738)
  %2740 = trunc i32 %2739 to i8
  %2741 = and i8 %2740, 1
  %2742 = xor i8 %2741, 1
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2742, i8* %2743, align 1
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2744, align 1
  %2745 = icmp eq i64 %2733, 0
  %2746 = zext i1 %2745 to i8
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2746, i8* %2747, align 1
  %2748 = lshr i64 %2733, 63
  %2749 = trunc i64 %2748 to i8
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2749, i8* %2750, align 1
  %2751 = lshr i64 %2733, 63
  %2752 = xor i64 %2748, %2751
  %2753 = add i64 %2752, %2751
  %2754 = icmp eq i64 %2753, 2
  %2755 = zext i1 %2754 to i8
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2755, i8* %2756, align 1
  store %struct.Memory* %loadMem_44abed, %struct.Memory** %MEMORY
  %loadMem_44abf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 33
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2759 to i64*
  %2760 = load i64, i64* %PC.i182
  %2761 = add i64 %2760, 18
  %2762 = load i64, i64* %PC.i182
  %2763 = add i64 %2762, 6
  %2764 = load i64, i64* %PC.i182
  %2765 = add i64 %2764, 6
  store i64 %2765, i64* %PC.i182
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2767 = load i8, i8* %2766, align 1
  %2768 = icmp eq i8 %2767, 0
  %2769 = zext i1 %2768 to i8
  store i8 %2769, i8* %BRANCH_TAKEN, align 1
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2771 = select i1 %2768, i64 %2761, i64 %2763
  store i64 %2771, i64* %2770, align 8
  store %struct.Memory* %loadMem_44abf1, %struct.Memory** %MEMORY
  %loadBr_44abf1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44abf1 = icmp eq i8 %loadBr_44abf1, 1
  br i1 %cmpBr_44abf1, label %block_.L_44ac03, label %block_44abf7

block_44abf7:                                     ; preds = %block_44abca
  %loadMem_44abf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 33
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %2774 to i64*
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 15
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %2777 to i64*
  %2778 = load i64, i64* %RBP.i181
  %2779 = sub i64 %2778, 4
  %2780 = load i64, i64* %PC.i180
  %2781 = add i64 %2780, 7
  store i64 %2781, i64* %PC.i180
  %2782 = inttoptr i64 %2779 to i32*
  store i32 0, i32* %2782
  store %struct.Memory* %loadMem_44abf7, %struct.Memory** %MEMORY
  %loadMem_44abfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 33
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %2785 to i64*
  %2786 = load i64, i64* %PC.i179
  %2787 = add i64 %2786, 381
  %2788 = load i64, i64* %PC.i179
  %2789 = add i64 %2788, 5
  store i64 %2789, i64* %PC.i179
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2787, i64* %2790, align 8
  store %struct.Memory* %loadMem_44abfe, %struct.Memory** %MEMORY
  br label %block_.L_44ad7b

block_.L_44ac03:                                  ; preds = %block_44abca
  %loadMem_44ac03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2792 = getelementptr inbounds %struct.GPR, %struct.GPR* %2791, i32 0, i32 33
  %2793 = getelementptr inbounds %struct.Reg, %struct.Reg* %2792, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2793 to i64*
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 11
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %RDI.i177 = bitcast %union.anon* %2796 to i64*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 15
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %2799 to i64*
  %2800 = load i64, i64* %RBP.i178
  %2801 = sub i64 %2800, 48
  %2802 = load i64, i64* %PC.i176
  %2803 = add i64 %2802, 4
  store i64 %2803, i64* %PC.i176
  %2804 = inttoptr i64 %2801 to i64*
  %2805 = load i64, i64* %2804
  store i64 %2805, i64* %RDI.i177, align 8
  store %struct.Memory* %loadMem_44ac03, %struct.Memory** %MEMORY
  %loadMem1_44ac07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 33
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %2808 to i64*
  %2809 = load i64, i64* %PC.i175
  %2810 = add i64 %2809, -301015
  %2811 = load i64, i64* %PC.i175
  %2812 = add i64 %2811, 5
  %2813 = load i64, i64* %PC.i175
  %2814 = add i64 %2813, 5
  store i64 %2814, i64* %PC.i175
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2816 = load i64, i64* %2815, align 8
  %2817 = add i64 %2816, -8
  %2818 = inttoptr i64 %2817 to i64*
  store i64 %2812, i64* %2818
  store i64 %2817, i64* %2815, align 8
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2810, i64* %2819, align 8
  store %struct.Memory* %loadMem1_44ac07, %struct.Memory** %MEMORY
  %loadMem2_44ac07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ac07 = load i64, i64* %3
  %2820 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %loadMem2_44ac07)
  store %struct.Memory* %2820, %struct.Memory** %MEMORY
  %loadMem_44ac0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 33
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 11
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %RDI.i171 = bitcast %union.anon* %2826 to i64*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 15
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %2829 to i64*
  %2830 = load i64, i64* %RBP.i172
  %2831 = sub i64 %2830, 56
  %2832 = load i64, i64* %PC.i170
  %2833 = add i64 %2832, 4
  store i64 %2833, i64* %PC.i170
  store i64 %2831, i64* %RDI.i171, align 8
  store %struct.Memory* %loadMem_44ac0c, %struct.Memory** %MEMORY
  %loadMem_44ac10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 33
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %2836 to i64*
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 9
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %RSI.i169 = bitcast %union.anon* %2839 to i64*
  %2840 = load i64, i64* %PC.i168
  %2841 = add i64 %2840, 10
  store i64 %2841, i64* %PC.i168
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i169, align 8
  store %struct.Memory* %loadMem_44ac10, %struct.Memory** %MEMORY
  %loadMem_44ac1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 33
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2844 to i64*
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 1
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %EAX.i166 = bitcast %union.anon* %2847 to i32*
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 1
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %2850 to i64*
  %2851 = load i64, i64* %RAX.i167
  %2852 = load i32, i32* %EAX.i166
  %2853 = zext i32 %2852 to i64
  %2854 = load i64, i64* %PC.i165
  %2855 = add i64 %2854, 2
  store i64 %2855, i64* %PC.i165
  %2856 = xor i64 %2853, %2851
  %2857 = trunc i64 %2856 to i32
  %2858 = and i64 %2856, 4294967295
  store i64 %2858, i64* %RAX.i167, align 8
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2859, align 1
  %2860 = and i32 %2857, 255
  %2861 = call i32 @llvm.ctpop.i32(i32 %2860)
  %2862 = trunc i32 %2861 to i8
  %2863 = and i8 %2862, 1
  %2864 = xor i8 %2863, 1
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2864, i8* %2865, align 1
  %2866 = icmp eq i32 %2857, 0
  %2867 = zext i1 %2866 to i8
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2867, i8* %2868, align 1
  %2869 = lshr i32 %2857, 31
  %2870 = trunc i32 %2869 to i8
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2870, i8* %2871, align 1
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2872, align 1
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2873, align 1
  store %struct.Memory* %loadMem_44ac1a, %struct.Memory** %MEMORY
  %loadMem_44ac1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 33
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2876 to i64*
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 1
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %EAX.i163 = bitcast %union.anon* %2879 to i32*
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 7
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %RDX.i164 = bitcast %union.anon* %2882 to i64*
  %2883 = load i32, i32* %EAX.i163
  %2884 = zext i32 %2883 to i64
  %2885 = load i64, i64* %PC.i162
  %2886 = add i64 %2885, 2
  store i64 %2886, i64* %PC.i162
  %2887 = and i64 %2884, 4294967295
  store i64 %2887, i64* %RDX.i164, align 8
  store %struct.Memory* %loadMem_44ac1c, %struct.Memory** %MEMORY
  %loadMem_44ac1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2889 = getelementptr inbounds %struct.GPR, %struct.GPR* %2888, i32 0, i32 33
  %2890 = getelementptr inbounds %struct.Reg, %struct.Reg* %2889, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2890 to i64*
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2892 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2891, i64 0, i64 0
  %YMM0.i160 = bitcast %union.VectorReg* %2892 to %"class.std::bitset"*
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2894 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2893, i64 0, i64 0
  %XMM0.i161 = bitcast %union.VectorReg* %2894 to %union.vec128_t*
  %2895 = bitcast %"class.std::bitset"* %YMM0.i160 to i8*
  %2896 = bitcast %union.vec128_t* %XMM0.i161 to i8*
  %2897 = load i64, i64* %PC.i159
  %2898 = add i64 %2897, 4
  store i64 %2898, i64* %PC.i159
  %2899 = bitcast i8* %2895 to <2 x i32>*
  %2900 = load <2 x i32>, <2 x i32>* %2899, align 1
  %2901 = getelementptr inbounds i8, i8* %2895, i64 8
  %2902 = bitcast i8* %2901 to <2 x i32>*
  %2903 = load <2 x i32>, <2 x i32>* %2902, align 1
  %2904 = bitcast i8* %2896 to double*
  %2905 = load double, double* %2904, align 1
  %2906 = fptrunc double %2905 to float
  %2907 = bitcast i8* %2895 to float*
  store float %2906, float* %2907, align 1
  %2908 = extractelement <2 x i32> %2900, i32 1
  %2909 = getelementptr inbounds i8, i8* %2895, i64 4
  %2910 = bitcast i8* %2909 to i32*
  store i32 %2908, i32* %2910, align 1
  %2911 = extractelement <2 x i32> %2903, i32 0
  %2912 = bitcast i8* %2901 to i32*
  store i32 %2911, i32* %2912, align 1
  %2913 = extractelement <2 x i32> %2903, i32 1
  %2914 = getelementptr inbounds i8, i8* %2895, i64 12
  %2915 = bitcast i8* %2914 to i32*
  store i32 %2913, i32* %2915, align 1
  store %struct.Memory* %loadMem_44ac1e, %struct.Memory** %MEMORY
  %loadMem_44ac22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 33
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 5
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %RCX.i157 = bitcast %union.anon* %2921 to i64*
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 15
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %2924 to i64*
  %2925 = load i64, i64* %RBP.i158
  %2926 = sub i64 %2925, 16
  %2927 = load i64, i64* %PC.i156
  %2928 = add i64 %2927, 4
  store i64 %2928, i64* %PC.i156
  %2929 = inttoptr i64 %2926 to i64*
  %2930 = load i64, i64* %2929
  store i64 %2930, i64* %RCX.i157, align 8
  store %struct.Memory* %loadMem_44ac22, %struct.Memory** %MEMORY
  %loadMem_44ac26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 33
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2933 to i64*
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 5
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %RCX.i154 = bitcast %union.anon* %2936 to i64*
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2938 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2937, i64 0, i64 0
  %XMM0.i155 = bitcast %union.VectorReg* %2938 to %union.vec128_t*
  %2939 = load i64, i64* %RCX.i154
  %2940 = add i64 %2939, 144
  %2941 = bitcast %union.vec128_t* %XMM0.i155 to i8*
  %2942 = load i64, i64* %PC.i153
  %2943 = add i64 %2942, 8
  store i64 %2943, i64* %PC.i153
  %2944 = bitcast i8* %2941 to <2 x float>*
  %2945 = load <2 x float>, <2 x float>* %2944, align 1
  %2946 = extractelement <2 x float> %2945, i32 0
  %2947 = inttoptr i64 %2940 to float*
  store float %2946, float* %2947
  store %struct.Memory* %loadMem_44ac26, %struct.Memory** %MEMORY
  %loadMem_44ac2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 33
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %2950 to i64*
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 5
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %RCX.i151 = bitcast %union.anon* %2953 to i64*
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 15
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %2956 to i64*
  %2957 = load i64, i64* %RBP.i152
  %2958 = sub i64 %2957, 16
  %2959 = load i64, i64* %PC.i150
  %2960 = add i64 %2959, 4
  store i64 %2960, i64* %PC.i150
  %2961 = inttoptr i64 %2958 to i64*
  %2962 = load i64, i64* %2961
  store i64 %2962, i64* %RCX.i151, align 8
  store %struct.Memory* %loadMem_44ac2e, %struct.Memory** %MEMORY
  %loadMem_44ac32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2964 = getelementptr inbounds %struct.GPR, %struct.GPR* %2963, i32 0, i32 33
  %2965 = getelementptr inbounds %struct.Reg, %struct.Reg* %2964, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2965 to i64*
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 5
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %2968 to i64*
  %2969 = load i64, i64* %RCX.i149
  %2970 = add i64 %2969, 168
  %2971 = load i64, i64* %PC.i148
  %2972 = add i64 %2971, 10
  store i64 %2972, i64* %PC.i148
  %2973 = inttoptr i64 %2970 to i32*
  store i32 1, i32* %2973
  store %struct.Memory* %loadMem_44ac32, %struct.Memory** %MEMORY
  %loadMem1_44ac3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 33
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %2976 to i64*
  %2977 = load i64, i64* %PC.i147
  %2978 = add i64 %2977, -17900
  %2979 = load i64, i64* %PC.i147
  %2980 = add i64 %2979, 5
  %2981 = load i64, i64* %PC.i147
  %2982 = add i64 %2981, 5
  store i64 %2982, i64* %PC.i147
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2984 = load i64, i64* %2983, align 8
  %2985 = add i64 %2984, -8
  %2986 = inttoptr i64 %2985 to i64*
  store i64 %2980, i64* %2986
  store i64 %2985, i64* %2983, align 8
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2978, i64* %2987, align 8
  store %struct.Memory* %loadMem1_44ac3c, %struct.Memory** %MEMORY
  %loadMem2_44ac3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ac3c = load i64, i64* %3
  %call2_44ac3c = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64 %loadPC_44ac3c, %struct.Memory* %loadMem2_44ac3c)
  store %struct.Memory* %call2_44ac3c, %struct.Memory** %MEMORY
  %loadMem_44ac41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2989 = getelementptr inbounds %struct.GPR, %struct.GPR* %2988, i32 0, i32 33
  %2990 = getelementptr inbounds %struct.Reg, %struct.Reg* %2989, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %2990 to i64*
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2992 = getelementptr inbounds %struct.GPR, %struct.GPR* %2991, i32 0, i32 1
  %2993 = getelementptr inbounds %struct.Reg, %struct.Reg* %2992, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %2993 to i64*
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 15
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %2996 to i64*
  %2997 = load i64, i64* %RBP.i146
  %2998 = sub i64 %2997, 48
  %2999 = load i64, i64* %RAX.i145
  %3000 = load i64, i64* %PC.i144
  %3001 = add i64 %3000, 4
  store i64 %3001, i64* %PC.i144
  %3002 = inttoptr i64 %2998 to i64*
  store i64 %2999, i64* %3002
  store %struct.Memory* %loadMem_44ac41, %struct.Memory** %MEMORY
  %loadMem_44ac45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 33
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %3005 to i64*
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 1
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %3008 to i64*
  %3009 = load i64, i64* %RAX.i143
  %3010 = load i64, i64* %PC.i142
  %3011 = add i64 %3010, 4
  store i64 %3011, i64* %PC.i142
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3012, align 1
  %3013 = trunc i64 %3009 to i32
  %3014 = and i32 %3013, 255
  %3015 = call i32 @llvm.ctpop.i32(i32 %3014)
  %3016 = trunc i32 %3015 to i8
  %3017 = and i8 %3016, 1
  %3018 = xor i8 %3017, 1
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3018, i8* %3019, align 1
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3020, align 1
  %3021 = icmp eq i64 %3009, 0
  %3022 = zext i1 %3021 to i8
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3022, i8* %3023, align 1
  %3024 = lshr i64 %3009, 63
  %3025 = trunc i64 %3024 to i8
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3025, i8* %3026, align 1
  %3027 = lshr i64 %3009, 63
  %3028 = xor i64 %3024, %3027
  %3029 = add i64 %3028, %3027
  %3030 = icmp eq i64 %3029, 2
  %3031 = zext i1 %3030 to i8
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3031, i8* %3032, align 1
  store %struct.Memory* %loadMem_44ac45, %struct.Memory** %MEMORY
  %loadMem_44ac49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 33
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %3035 to i64*
  %3036 = load i64, i64* %PC.i141
  %3037 = add i64 %3036, 45
  %3038 = load i64, i64* %PC.i141
  %3039 = add i64 %3038, 6
  %3040 = load i64, i64* %PC.i141
  %3041 = add i64 %3040, 6
  store i64 %3041, i64* %PC.i141
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3043 = load i8, i8* %3042, align 1
  store i8 %3043, i8* %BRANCH_TAKEN, align 1
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3045 = icmp ne i8 %3043, 0
  %3046 = select i1 %3045, i64 %3037, i64 %3039
  store i64 %3046, i64* %3044, align 8
  store %struct.Memory* %loadMem_44ac49, %struct.Memory** %MEMORY
  %loadBr_44ac49 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ac49 = icmp eq i8 %loadBr_44ac49, 1
  br i1 %cmpBr_44ac49, label %block_.L_44ac76, label %block_44ac4f

block_44ac4f:                                     ; preds = %block_.L_44ac03
  %loadMem_44ac4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 33
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %3049 to i64*
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 11
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %RDI.i139 = bitcast %union.anon* %3052 to i64*
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 15
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %3055 to i64*
  %3056 = load i64, i64* %RBP.i140
  %3057 = sub i64 %3056, 48
  %3058 = load i64, i64* %PC.i138
  %3059 = add i64 %3058, 4
  store i64 %3059, i64* %PC.i138
  %3060 = inttoptr i64 %3057 to i64*
  %3061 = load i64, i64* %3060
  store i64 %3061, i64* %RDI.i139, align 8
  store %struct.Memory* %loadMem_44ac4f, %struct.Memory** %MEMORY
  %loadMem1_44ac53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 33
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %3064 to i64*
  %3065 = load i64, i64* %PC.i137
  %3066 = add i64 %3065, -301091
  %3067 = load i64, i64* %PC.i137
  %3068 = add i64 %3067, 5
  %3069 = load i64, i64* %PC.i137
  %3070 = add i64 %3069, 5
  store i64 %3070, i64* %PC.i137
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3072 = load i64, i64* %3071, align 8
  %3073 = add i64 %3072, -8
  %3074 = inttoptr i64 %3073 to i64*
  store i64 %3068, i64* %3074
  store i64 %3073, i64* %3071, align 8
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3066, i64* %3075, align 8
  store %struct.Memory* %loadMem1_44ac53, %struct.Memory** %MEMORY
  %loadMem2_44ac53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ac53 = load i64, i64* %3
  %3076 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %loadMem2_44ac53)
  store %struct.Memory* %3076, %struct.Memory** %MEMORY
  %loadMem_44ac58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 33
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3081 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3080, i64 0, i64 0
  %YMM0.i133 = bitcast %union.VectorReg* %3081 to %"class.std::bitset"*
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3083 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3082, i64 0, i64 0
  %XMM0.i134 = bitcast %union.VectorReg* %3083 to %union.vec128_t*
  %3084 = bitcast %"class.std::bitset"* %YMM0.i133 to i8*
  %3085 = bitcast %union.vec128_t* %XMM0.i134 to i8*
  %3086 = load i64, i64* %PC.i132
  %3087 = add i64 %3086, 4
  store i64 %3087, i64* %PC.i132
  %3088 = bitcast i8* %3084 to <2 x i32>*
  %3089 = load <2 x i32>, <2 x i32>* %3088, align 1
  %3090 = getelementptr inbounds i8, i8* %3084, i64 8
  %3091 = bitcast i8* %3090 to <2 x i32>*
  %3092 = load <2 x i32>, <2 x i32>* %3091, align 1
  %3093 = bitcast i8* %3085 to double*
  %3094 = load double, double* %3093, align 1
  %3095 = fptrunc double %3094 to float
  %3096 = bitcast i8* %3084 to float*
  store float %3095, float* %3096, align 1
  %3097 = extractelement <2 x i32> %3089, i32 1
  %3098 = getelementptr inbounds i8, i8* %3084, i64 4
  %3099 = bitcast i8* %3098 to i32*
  store i32 %3097, i32* %3099, align 1
  %3100 = extractelement <2 x i32> %3092, i32 0
  %3101 = bitcast i8* %3090 to i32*
  store i32 %3100, i32* %3101, align 1
  %3102 = extractelement <2 x i32> %3092, i32 1
  %3103 = getelementptr inbounds i8, i8* %3084, i64 12
  %3104 = bitcast i8* %3103 to i32*
  store i32 %3102, i32* %3104, align 1
  store %struct.Memory* %loadMem_44ac58, %struct.Memory** %MEMORY
  %loadMem_44ac5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 33
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %3107 to i64*
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3109 = getelementptr inbounds %struct.GPR, %struct.GPR* %3108, i32 0, i32 11
  %3110 = getelementptr inbounds %struct.Reg, %struct.Reg* %3109, i32 0, i32 0
  %RDI.i130 = bitcast %union.anon* %3110 to i64*
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3112 = getelementptr inbounds %struct.GPR, %struct.GPR* %3111, i32 0, i32 15
  %3113 = getelementptr inbounds %struct.Reg, %struct.Reg* %3112, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %3113 to i64*
  %3114 = load i64, i64* %RBP.i131
  %3115 = sub i64 %3114, 16
  %3116 = load i64, i64* %PC.i129
  %3117 = add i64 %3116, 4
  store i64 %3117, i64* %PC.i129
  %3118 = inttoptr i64 %3115 to i64*
  %3119 = load i64, i64* %3118
  store i64 %3119, i64* %RDI.i130, align 8
  store %struct.Memory* %loadMem_44ac5c, %struct.Memory** %MEMORY
  %loadMem_44ac60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 33
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 11
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %RDI.i127 = bitcast %union.anon* %3125 to i64*
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3127 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3126, i64 0, i64 0
  %XMM0.i128 = bitcast %union.VectorReg* %3127 to %union.vec128_t*
  %3128 = load i64, i64* %RDI.i127
  %3129 = add i64 %3128, 148
  %3130 = bitcast %union.vec128_t* %XMM0.i128 to i8*
  %3131 = load i64, i64* %PC.i126
  %3132 = add i64 %3131, 8
  store i64 %3132, i64* %PC.i126
  %3133 = bitcast i8* %3130 to <2 x float>*
  %3134 = load <2 x float>, <2 x float>* %3133, align 1
  %3135 = extractelement <2 x float> %3134, i32 0
  %3136 = inttoptr i64 %3129 to float*
  store float %3135, float* %3136
  store %struct.Memory* %loadMem_44ac60, %struct.Memory** %MEMORY
  %loadMem_44ac68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %3139 to i64*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 11
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %RDI.i124 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 15
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %3145 to i64*
  %3146 = load i64, i64* %RBP.i125
  %3147 = sub i64 %3146, 16
  %3148 = load i64, i64* %PC.i123
  %3149 = add i64 %3148, 4
  store i64 %3149, i64* %PC.i123
  %3150 = inttoptr i64 %3147 to i64*
  %3151 = load i64, i64* %3150
  store i64 %3151, i64* %RDI.i124, align 8
  store %struct.Memory* %loadMem_44ac68, %struct.Memory** %MEMORY
  %loadMem_44ac6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 33
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %3154 to i64*
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 11
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %RDI.i122 = bitcast %union.anon* %3157 to i64*
  %3158 = load i64, i64* %RDI.i122
  %3159 = add i64 %3158, 172
  %3160 = load i64, i64* %PC.i121
  %3161 = add i64 %3160, 10
  store i64 %3161, i64* %PC.i121
  %3162 = inttoptr i64 %3159 to i32*
  store i32 1, i32* %3162
  store %struct.Memory* %loadMem_44ac6c, %struct.Memory** %MEMORY
  br label %block_.L_44ac76

block_.L_44ac76:                                  ; preds = %block_44ac4f, %block_.L_44ac03
  %loadMem_44ac76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 33
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %3165 to i64*
  %3166 = load i64, i64* %PC.i120
  %3167 = add i64 %3166, 229
  %3168 = load i64, i64* %PC.i120
  %3169 = add i64 %3168, 5
  store i64 %3169, i64* %PC.i120
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3167, i64* %3170, align 8
  store %struct.Memory* %loadMem_44ac76, %struct.Memory** %MEMORY
  br label %block_.L_44ad5b

block_.L_44ac7b:                                  ; preds = %block_.L_44abb1
  %loadMem_44ac7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 33
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %3173 to i64*
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 11
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %RDI.i118 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 15
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %3179 to i64*
  %3180 = load i64, i64* %RBP.i119
  %3181 = sub i64 %3180, 40
  %3182 = load i64, i64* %PC.i117
  %3183 = add i64 %3182, 4
  store i64 %3183, i64* %PC.i117
  %3184 = inttoptr i64 %3181 to i64*
  %3185 = load i64, i64* %3184
  store i64 %3185, i64* %RDI.i118, align 8
  store %struct.Memory* %loadMem_44ac7b, %struct.Memory** %MEMORY
  %loadMem_44ac7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 33
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %3188 to i64*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 1
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %3191 to i64*
  %3192 = load i64, i64* %PC.i115
  %3193 = add i64 %3192, 5
  store i64 %3193, i64* %PC.i115
  store i64 and (i64 ptrtoint (%G__0x459a4b_type* @G__0x459a4b to i64), i64 4294967295), i64* %RAX.i116, align 8
  store %struct.Memory* %loadMem_44ac7f, %struct.Memory** %MEMORY
  %loadMem_44ac84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 33
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %3196 to i64*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 1
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %EAX.i113 = bitcast %union.anon* %3199 to i32*
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 9
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %RSI.i114 = bitcast %union.anon* %3202 to i64*
  %3203 = load i32, i32* %EAX.i113
  %3204 = zext i32 %3203 to i64
  %3205 = load i64, i64* %PC.i112
  %3206 = add i64 %3205, 2
  store i64 %3206, i64* %PC.i112
  %3207 = and i64 %3204, 4294967295
  store i64 %3207, i64* %RSI.i114, align 8
  store %struct.Memory* %loadMem_44ac84, %struct.Memory** %MEMORY
  %loadMem1_44ac86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 33
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %3210 to i64*
  %3211 = load i64, i64* %PC.i111
  %3212 = add i64 %3211, -300838
  %3213 = load i64, i64* %PC.i111
  %3214 = add i64 %3213, 5
  %3215 = load i64, i64* %PC.i111
  %3216 = add i64 %3215, 5
  store i64 %3216, i64* %PC.i111
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3218 = load i64, i64* %3217, align 8
  %3219 = add i64 %3218, -8
  %3220 = inttoptr i64 %3219 to i64*
  store i64 %3214, i64* %3220
  store i64 %3219, i64* %3217, align 8
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3212, i64* %3221, align 8
  store %struct.Memory* %loadMem1_44ac86, %struct.Memory** %MEMORY
  %loadMem2_44ac86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ac86 = load i64, i64* %3
  %3222 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %loadMem2_44ac86)
  store %struct.Memory* %3222, %struct.Memory** %MEMORY
  %loadMem_44ac8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 33
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %3225 to i64*
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 1
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %EAX.i107 = bitcast %union.anon* %3228 to i32*
  %3229 = load i32, i32* %EAX.i107
  %3230 = zext i32 %3229 to i64
  %3231 = load i64, i64* %PC.i106
  %3232 = add i64 %3231, 3
  store i64 %3232, i64* %PC.i106
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3233, align 1
  %3234 = and i32 %3229, 255
  %3235 = call i32 @llvm.ctpop.i32(i32 %3234)
  %3236 = trunc i32 %3235 to i8
  %3237 = and i8 %3236, 1
  %3238 = xor i8 %3237, 1
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3238, i8* %3239, align 1
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3240, align 1
  %3241 = icmp eq i32 %3229, 0
  %3242 = zext i1 %3241 to i8
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3242, i8* %3243, align 1
  %3244 = lshr i32 %3229, 31
  %3245 = trunc i32 %3244 to i8
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3245, i8* %3246, align 1
  %3247 = lshr i32 %3229, 31
  %3248 = xor i32 %3244, %3247
  %3249 = add i32 %3248, %3247
  %3250 = icmp eq i32 %3249, 2
  %3251 = zext i1 %3250 to i8
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3251, i8* %3252, align 1
  store %struct.Memory* %loadMem_44ac8b, %struct.Memory** %MEMORY
  %loadMem_44ac8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3254 = getelementptr inbounds %struct.GPR, %struct.GPR* %3253, i32 0, i32 33
  %3255 = getelementptr inbounds %struct.Reg, %struct.Reg* %3254, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %3255 to i64*
  %3256 = load i64, i64* %PC.i105
  %3257 = add i64 %3256, 183
  %3258 = load i64, i64* %PC.i105
  %3259 = add i64 %3258, 6
  %3260 = load i64, i64* %PC.i105
  %3261 = add i64 %3260, 6
  store i64 %3261, i64* %PC.i105
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3263 = load i8, i8* %3262, align 1
  %3264 = icmp eq i8 %3263, 0
  %3265 = zext i1 %3264 to i8
  store i8 %3265, i8* %BRANCH_TAKEN, align 1
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3267 = select i1 %3264, i64 %3257, i64 %3259
  store i64 %3267, i64* %3266, align 8
  store %struct.Memory* %loadMem_44ac8e, %struct.Memory** %MEMORY
  %loadBr_44ac8e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ac8e = icmp eq i8 %loadBr_44ac8e, 1
  br i1 %cmpBr_44ac8e, label %block_.L_44ad45, label %block_44ac94

block_44ac94:                                     ; preds = %block_.L_44ac7b
  %loadMem_44ac94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 33
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %3270 to i64*
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 11
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %RDI.i103 = bitcast %union.anon* %3273 to i64*
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 15
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %3276 to i64*
  %3277 = load i64, i64* %RBP.i104
  %3278 = sub i64 %3277, 56
  %3279 = load i64, i64* %PC.i102
  %3280 = add i64 %3279, 4
  store i64 %3280, i64* %PC.i102
  store i64 %3278, i64* %RDI.i103, align 8
  store %struct.Memory* %loadMem_44ac94, %struct.Memory** %MEMORY
  %loadMem_44ac98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 33
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %3283 to i64*
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 9
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %RSI.i101 = bitcast %union.anon* %3286 to i64*
  %3287 = load i64, i64* %PC.i100
  %3288 = add i64 %3287, 10
  store i64 %3288, i64* %PC.i100
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i101, align 8
  store %struct.Memory* %loadMem_44ac98, %struct.Memory** %MEMORY
  %loadMem_44aca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 33
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %3291 to i64*
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 1
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %EAX.i98 = bitcast %union.anon* %3294 to i32*
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 1
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %3297 to i64*
  %3298 = load i64, i64* %RAX.i99
  %3299 = load i32, i32* %EAX.i98
  %3300 = zext i32 %3299 to i64
  %3301 = load i64, i64* %PC.i97
  %3302 = add i64 %3301, 2
  store i64 %3302, i64* %PC.i97
  %3303 = xor i64 %3300, %3298
  %3304 = trunc i64 %3303 to i32
  %3305 = and i64 %3303, 4294967295
  store i64 %3305, i64* %RAX.i99, align 8
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3306, align 1
  %3307 = and i32 %3304, 255
  %3308 = call i32 @llvm.ctpop.i32(i32 %3307)
  %3309 = trunc i32 %3308 to i8
  %3310 = and i8 %3309, 1
  %3311 = xor i8 %3310, 1
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3311, i8* %3312, align 1
  %3313 = icmp eq i32 %3304, 0
  %3314 = zext i1 %3313 to i8
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3314, i8* %3315, align 1
  %3316 = lshr i32 %3304, 31
  %3317 = trunc i32 %3316 to i8
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3317, i8* %3318, align 1
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3319, align 1
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3320, align 1
  store %struct.Memory* %loadMem_44aca2, %struct.Memory** %MEMORY
  %loadMem_44aca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 1
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %EAX.i95 = bitcast %union.anon* %3326 to i32*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 7
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RDX.i96 = bitcast %union.anon* %3329 to i64*
  %3330 = load i32, i32* %EAX.i95
  %3331 = zext i32 %3330 to i64
  %3332 = load i64, i64* %PC.i94
  %3333 = add i64 %3332, 2
  store i64 %3333, i64* %PC.i94
  %3334 = and i64 %3331, 4294967295
  store i64 %3334, i64* %RDX.i96, align 8
  store %struct.Memory* %loadMem_44aca4, %struct.Memory** %MEMORY
  %loadMem_44aca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3336 = getelementptr inbounds %struct.GPR, %struct.GPR* %3335, i32 0, i32 33
  %3337 = getelementptr inbounds %struct.Reg, %struct.Reg* %3336, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %3337 to i64*
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3339 = getelementptr inbounds %struct.GPR, %struct.GPR* %3338, i32 0, i32 5
  %3340 = getelementptr inbounds %struct.Reg, %struct.Reg* %3339, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %3340 to i64*
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 15
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %3343 to i64*
  %3344 = load i64, i64* %RBP.i93
  %3345 = sub i64 %3344, 48
  %3346 = load i64, i64* %PC.i91
  %3347 = add i64 %3346, 4
  store i64 %3347, i64* %PC.i91
  %3348 = inttoptr i64 %3345 to i64*
  %3349 = load i64, i64* %3348
  store i64 %3349, i64* %RCX.i92, align 8
  store %struct.Memory* %loadMem_44aca6, %struct.Memory** %MEMORY
  %loadMem_44acaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3351 = getelementptr inbounds %struct.GPR, %struct.GPR* %3350, i32 0, i32 33
  %3352 = getelementptr inbounds %struct.Reg, %struct.Reg* %3351, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %3352 to i64*
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 5
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %3355 to i64*
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 15
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %3358 to i64*
  %3359 = load i64, i64* %RBP.i90
  %3360 = sub i64 %3359, 56
  %3361 = load i64, i64* %RCX.i89
  %3362 = load i64, i64* %PC.i88
  %3363 = add i64 %3362, 4
  store i64 %3363, i64* %PC.i88
  %3364 = inttoptr i64 %3360 to i64*
  store i64 %3361, i64* %3364
  store %struct.Memory* %loadMem_44acaa, %struct.Memory** %MEMORY
  %loadMem1_44acae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 33
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %3367 to i64*
  %3368 = load i64, i64* %PC.i87
  %3369 = add i64 %3368, -18014
  %3370 = load i64, i64* %PC.i87
  %3371 = add i64 %3370, 5
  %3372 = load i64, i64* %PC.i87
  %3373 = add i64 %3372, 5
  store i64 %3373, i64* %PC.i87
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3375 = load i64, i64* %3374, align 8
  %3376 = add i64 %3375, -8
  %3377 = inttoptr i64 %3376 to i64*
  store i64 %3371, i64* %3377
  store i64 %3376, i64* %3374, align 8
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3369, i64* %3378, align 8
  store %struct.Memory* %loadMem1_44acae, %struct.Memory** %MEMORY
  %loadMem2_44acae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44acae = load i64, i64* %3
  %call2_44acae = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64 %loadPC_44acae, %struct.Memory* %loadMem2_44acae)
  store %struct.Memory* %call2_44acae, %struct.Memory** %MEMORY
  %loadMem_44acb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 33
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3381 to i64*
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 1
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %3384 to i64*
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 15
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %3387 to i64*
  %3388 = load i64, i64* %RBP.i86
  %3389 = sub i64 %3388, 48
  %3390 = load i64, i64* %RAX.i85
  %3391 = load i64, i64* %PC.i84
  %3392 = add i64 %3391, 4
  store i64 %3392, i64* %PC.i84
  %3393 = inttoptr i64 %3389 to i64*
  store i64 %3390, i64* %3393
  store %struct.Memory* %loadMem_44acb3, %struct.Memory** %MEMORY
  %loadMem_44acb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 33
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3396 to i64*
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 1
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %3399 to i64*
  %3400 = load i64, i64* %RAX.i83
  %3401 = load i64, i64* %PC.i82
  %3402 = add i64 %3401, 4
  store i64 %3402, i64* %PC.i82
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3403, align 1
  %3404 = trunc i64 %3400 to i32
  %3405 = and i32 %3404, 255
  %3406 = call i32 @llvm.ctpop.i32(i32 %3405)
  %3407 = trunc i32 %3406 to i8
  %3408 = and i8 %3407, 1
  %3409 = xor i8 %3408, 1
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3409, i8* %3410, align 1
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3411, align 1
  %3412 = icmp eq i64 %3400, 0
  %3413 = zext i1 %3412 to i8
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3413, i8* %3414, align 1
  %3415 = lshr i64 %3400, 63
  %3416 = trunc i64 %3415 to i8
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3416, i8* %3417, align 1
  %3418 = lshr i64 %3400, 63
  %3419 = xor i64 %3415, %3418
  %3420 = add i64 %3419, %3418
  %3421 = icmp eq i64 %3420, 2
  %3422 = zext i1 %3421 to i8
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3422, i8* %3423, align 1
  store %struct.Memory* %loadMem_44acb7, %struct.Memory** %MEMORY
  %loadMem_44acbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 33
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %3426 to i64*
  %3427 = load i64, i64* %PC.i81
  %3428 = add i64 %3427, 18
  %3429 = load i64, i64* %PC.i81
  %3430 = add i64 %3429, 6
  %3431 = load i64, i64* %PC.i81
  %3432 = add i64 %3431, 6
  store i64 %3432, i64* %PC.i81
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3434 = load i8, i8* %3433, align 1
  %3435 = icmp eq i8 %3434, 0
  %3436 = zext i1 %3435 to i8
  store i8 %3436, i8* %BRANCH_TAKEN, align 1
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3438 = select i1 %3435, i64 %3428, i64 %3430
  store i64 %3438, i64* %3437, align 8
  store %struct.Memory* %loadMem_44acbb, %struct.Memory** %MEMORY
  %loadBr_44acbb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44acbb = icmp eq i8 %loadBr_44acbb, 1
  br i1 %cmpBr_44acbb, label %block_.L_44accd, label %block_44acc1

block_44acc1:                                     ; preds = %block_44ac94
  %loadMem_44acc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3440 = getelementptr inbounds %struct.GPR, %struct.GPR* %3439, i32 0, i32 33
  %3441 = getelementptr inbounds %struct.Reg, %struct.Reg* %3440, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3441 to i64*
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3443 = getelementptr inbounds %struct.GPR, %struct.GPR* %3442, i32 0, i32 15
  %3444 = getelementptr inbounds %struct.Reg, %struct.Reg* %3443, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %3444 to i64*
  %3445 = load i64, i64* %RBP.i80
  %3446 = sub i64 %3445, 4
  %3447 = load i64, i64* %PC.i79
  %3448 = add i64 %3447, 7
  store i64 %3448, i64* %PC.i79
  %3449 = inttoptr i64 %3446 to i32*
  store i32 0, i32* %3449
  store %struct.Memory* %loadMem_44acc1, %struct.Memory** %MEMORY
  %loadMem_44acc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 33
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %3452 to i64*
  %3453 = load i64, i64* %PC.i78
  %3454 = add i64 %3453, 179
  %3455 = load i64, i64* %PC.i78
  %3456 = add i64 %3455, 5
  store i64 %3456, i64* %PC.i78
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3454, i64* %3457, align 8
  store %struct.Memory* %loadMem_44acc8, %struct.Memory** %MEMORY
  br label %block_.L_44ad7b

block_.L_44accd:                                  ; preds = %block_44ac94
  %loadMem_44accd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 33
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %3460 to i64*
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 11
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %RDI.i76 = bitcast %union.anon* %3463 to i64*
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3465 = getelementptr inbounds %struct.GPR, %struct.GPR* %3464, i32 0, i32 15
  %3466 = getelementptr inbounds %struct.Reg, %struct.Reg* %3465, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %3466 to i64*
  %3467 = load i64, i64* %RBP.i77
  %3468 = sub i64 %3467, 48
  %3469 = load i64, i64* %PC.i75
  %3470 = add i64 %3469, 4
  store i64 %3470, i64* %PC.i75
  %3471 = inttoptr i64 %3468 to i64*
  %3472 = load i64, i64* %3471
  store i64 %3472, i64* %RDI.i76, align 8
  store %struct.Memory* %loadMem_44accd, %struct.Memory** %MEMORY
  %loadMem1_44acd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3474 = getelementptr inbounds %struct.GPR, %struct.GPR* %3473, i32 0, i32 33
  %3475 = getelementptr inbounds %struct.Reg, %struct.Reg* %3474, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %3475 to i64*
  %3476 = load i64, i64* %PC.i74
  %3477 = add i64 %3476, -301217
  %3478 = load i64, i64* %PC.i74
  %3479 = add i64 %3478, 5
  %3480 = load i64, i64* %PC.i74
  %3481 = add i64 %3480, 5
  store i64 %3481, i64* %PC.i74
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3483 = load i64, i64* %3482, align 8
  %3484 = add i64 %3483, -8
  %3485 = inttoptr i64 %3484 to i64*
  store i64 %3479, i64* %3485
  store i64 %3484, i64* %3482, align 8
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3477, i64* %3486, align 8
  store %struct.Memory* %loadMem1_44acd1, %struct.Memory** %MEMORY
  %loadMem2_44acd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44acd1 = load i64, i64* %3
  %3487 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %loadMem2_44acd1)
  store %struct.Memory* %3487, %struct.Memory** %MEMORY
  %loadMem_44acd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 33
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %3490 to i64*
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 11
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %RDI.i70 = bitcast %union.anon* %3493 to i64*
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 15
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %3496 to i64*
  %3497 = load i64, i64* %RBP.i71
  %3498 = sub i64 %3497, 56
  %3499 = load i64, i64* %PC.i69
  %3500 = add i64 %3499, 4
  store i64 %3500, i64* %PC.i69
  store i64 %3498, i64* %RDI.i70, align 8
  store %struct.Memory* %loadMem_44acd6, %struct.Memory** %MEMORY
  %loadMem_44acda = load %struct.Memory*, %struct.Memory** %MEMORY
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 33
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %3503 to i64*
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 9
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %RSI.i68 = bitcast %union.anon* %3506 to i64*
  %3507 = load i64, i64* %PC.i67
  %3508 = add i64 %3507, 10
  store i64 %3508, i64* %PC.i67
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i68, align 8
  store %struct.Memory* %loadMem_44acda, %struct.Memory** %MEMORY
  %loadMem_44ace4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 33
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 1
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %EAX.i65 = bitcast %union.anon* %3514 to i32*
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 1
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %3517 to i64*
  %3518 = load i64, i64* %RAX.i66
  %3519 = load i32, i32* %EAX.i65
  %3520 = zext i32 %3519 to i64
  %3521 = load i64, i64* %PC.i64
  %3522 = add i64 %3521, 2
  store i64 %3522, i64* %PC.i64
  %3523 = xor i64 %3520, %3518
  %3524 = trunc i64 %3523 to i32
  %3525 = and i64 %3523, 4294967295
  store i64 %3525, i64* %RAX.i66, align 8
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3526, align 1
  %3527 = and i32 %3524, 255
  %3528 = call i32 @llvm.ctpop.i32(i32 %3527)
  %3529 = trunc i32 %3528 to i8
  %3530 = and i8 %3529, 1
  %3531 = xor i8 %3530, 1
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3531, i8* %3532, align 1
  %3533 = icmp eq i32 %3524, 0
  %3534 = zext i1 %3533 to i8
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3534, i8* %3535, align 1
  %3536 = lshr i32 %3524, 31
  %3537 = trunc i32 %3536 to i8
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3537, i8* %3538, align 1
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3539, align 1
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3540, align 1
  store %struct.Memory* %loadMem_44ace4, %struct.Memory** %MEMORY
  %loadMem_44ace6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 33
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %3543 to i64*
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 1
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3546 to i32*
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 7
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %RDX.i63 = bitcast %union.anon* %3549 to i64*
  %3550 = load i32, i32* %EAX.i
  %3551 = zext i32 %3550 to i64
  %3552 = load i64, i64* %PC.i62
  %3553 = add i64 %3552, 2
  store i64 %3553, i64* %PC.i62
  %3554 = and i64 %3551, 4294967295
  store i64 %3554, i64* %RDX.i63, align 8
  store %struct.Memory* %loadMem_44ace6, %struct.Memory** %MEMORY
  %loadMem_44ace8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 33
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %3557 to i64*
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3559 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3558, i64 0, i64 0
  %YMM0.i60 = bitcast %union.VectorReg* %3559 to %"class.std::bitset"*
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3561 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3560, i64 0, i64 0
  %XMM0.i61 = bitcast %union.VectorReg* %3561 to %union.vec128_t*
  %3562 = bitcast %"class.std::bitset"* %YMM0.i60 to i8*
  %3563 = bitcast %union.vec128_t* %XMM0.i61 to i8*
  %3564 = load i64, i64* %PC.i59
  %3565 = add i64 %3564, 4
  store i64 %3565, i64* %PC.i59
  %3566 = bitcast i8* %3562 to <2 x i32>*
  %3567 = load <2 x i32>, <2 x i32>* %3566, align 1
  %3568 = getelementptr inbounds i8, i8* %3562, i64 8
  %3569 = bitcast i8* %3568 to <2 x i32>*
  %3570 = load <2 x i32>, <2 x i32>* %3569, align 1
  %3571 = bitcast i8* %3563 to double*
  %3572 = load double, double* %3571, align 1
  %3573 = fptrunc double %3572 to float
  %3574 = bitcast i8* %3562 to float*
  store float %3573, float* %3574, align 1
  %3575 = extractelement <2 x i32> %3567, i32 1
  %3576 = getelementptr inbounds i8, i8* %3562, i64 4
  %3577 = bitcast i8* %3576 to i32*
  store i32 %3575, i32* %3577, align 1
  %3578 = extractelement <2 x i32> %3570, i32 0
  %3579 = bitcast i8* %3568 to i32*
  store i32 %3578, i32* %3579, align 1
  %3580 = extractelement <2 x i32> %3570, i32 1
  %3581 = getelementptr inbounds i8, i8* %3562, i64 12
  %3582 = bitcast i8* %3581 to i32*
  store i32 %3580, i32* %3582, align 1
  store %struct.Memory* %loadMem_44ace8, %struct.Memory** %MEMORY
  %loadMem_44acec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 33
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %3585 to i64*
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 5
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %3588 to i64*
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 15
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %3591 to i64*
  %3592 = load i64, i64* %RBP.i58
  %3593 = sub i64 %3592, 16
  %3594 = load i64, i64* %PC.i56
  %3595 = add i64 %3594, 4
  store i64 %3595, i64* %PC.i56
  %3596 = inttoptr i64 %3593 to i64*
  %3597 = load i64, i64* %3596
  store i64 %3597, i64* %RCX.i57, align 8
  store %struct.Memory* %loadMem_44acec, %struct.Memory** %MEMORY
  %loadMem_44acf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 33
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %3600 to i64*
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 5
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %RCX.i54 = bitcast %union.anon* %3603 to i64*
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3605 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3604, i64 0, i64 0
  %XMM0.i55 = bitcast %union.VectorReg* %3605 to %union.vec128_t*
  %3606 = load i64, i64* %RCX.i54
  %3607 = add i64 %3606, 128
  %3608 = bitcast %union.vec128_t* %XMM0.i55 to i8*
  %3609 = load i64, i64* %PC.i53
  %3610 = add i64 %3609, 8
  store i64 %3610, i64* %PC.i53
  %3611 = bitcast i8* %3608 to <2 x float>*
  %3612 = load <2 x float>, <2 x float>* %3611, align 1
  %3613 = extractelement <2 x float> %3612, i32 0
  %3614 = inttoptr i64 %3607 to float*
  store float %3613, float* %3614
  store %struct.Memory* %loadMem_44acf0, %struct.Memory** %MEMORY
  %loadMem_44acf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 33
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %3617 to i64*
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 5
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %RCX.i51 = bitcast %union.anon* %3620 to i64*
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3622 = getelementptr inbounds %struct.GPR, %struct.GPR* %3621, i32 0, i32 15
  %3623 = getelementptr inbounds %struct.Reg, %struct.Reg* %3622, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %3623 to i64*
  %3624 = load i64, i64* %RBP.i52
  %3625 = sub i64 %3624, 16
  %3626 = load i64, i64* %PC.i50
  %3627 = add i64 %3626, 4
  store i64 %3627, i64* %PC.i50
  %3628 = inttoptr i64 %3625 to i64*
  %3629 = load i64, i64* %3628
  store i64 %3629, i64* %RCX.i51, align 8
  store %struct.Memory* %loadMem_44acf8, %struct.Memory** %MEMORY
  %loadMem_44acfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 33
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3632 to i64*
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 5
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3635 to i64*
  %3636 = load i64, i64* %RCX.i
  %3637 = add i64 %3636, 152
  %3638 = load i64, i64* %PC.i49
  %3639 = add i64 %3638, 10
  store i64 %3639, i64* %PC.i49
  %3640 = inttoptr i64 %3637 to i32*
  store i32 1, i32* %3640
  store %struct.Memory* %loadMem_44acfc, %struct.Memory** %MEMORY
  %loadMem1_44ad06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3642 = getelementptr inbounds %struct.GPR, %struct.GPR* %3641, i32 0, i32 33
  %3643 = getelementptr inbounds %struct.Reg, %struct.Reg* %3642, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3643 to i64*
  %3644 = load i64, i64* %PC.i48
  %3645 = add i64 %3644, -18102
  %3646 = load i64, i64* %PC.i48
  %3647 = add i64 %3646, 5
  %3648 = load i64, i64* %PC.i48
  %3649 = add i64 %3648, 5
  store i64 %3649, i64* %PC.i48
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3651 = load i64, i64* %3650, align 8
  %3652 = add i64 %3651, -8
  %3653 = inttoptr i64 %3652 to i64*
  store i64 %3647, i64* %3653
  store i64 %3652, i64* %3650, align 8
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3645, i64* %3654, align 8
  store %struct.Memory* %loadMem1_44ad06, %struct.Memory** %MEMORY
  %loadMem2_44ad06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ad06 = load i64, i64* %3
  %call2_44ad06 = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64 %loadPC_44ad06, %struct.Memory* %loadMem2_44ad06)
  store %struct.Memory* %call2_44ad06, %struct.Memory** %MEMORY
  %loadMem_44ad0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3656 = getelementptr inbounds %struct.GPR, %struct.GPR* %3655, i32 0, i32 33
  %3657 = getelementptr inbounds %struct.Reg, %struct.Reg* %3656, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3657 to i64*
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 1
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %3660 to i64*
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 15
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %3663 to i64*
  %3664 = load i64, i64* %RBP.i47
  %3665 = sub i64 %3664, 48
  %3666 = load i64, i64* %RAX.i46
  %3667 = load i64, i64* %PC.i45
  %3668 = add i64 %3667, 4
  store i64 %3668, i64* %PC.i45
  %3669 = inttoptr i64 %3665 to i64*
  store i64 %3666, i64* %3669
  store %struct.Memory* %loadMem_44ad0b, %struct.Memory** %MEMORY
  %loadMem_44ad0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 33
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %3672 to i64*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 1
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %3675 to i64*
  %3676 = load i64, i64* %RAX.i44
  %3677 = load i64, i64* %PC.i43
  %3678 = add i64 %3677, 4
  store i64 %3678, i64* %PC.i43
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3679, align 1
  %3680 = trunc i64 %3676 to i32
  %3681 = and i32 %3680, 255
  %3682 = call i32 @llvm.ctpop.i32(i32 %3681)
  %3683 = trunc i32 %3682 to i8
  %3684 = and i8 %3683, 1
  %3685 = xor i8 %3684, 1
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3685, i8* %3686, align 1
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3687, align 1
  %3688 = icmp eq i64 %3676, 0
  %3689 = zext i1 %3688 to i8
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3689, i8* %3690, align 1
  %3691 = lshr i64 %3676, 63
  %3692 = trunc i64 %3691 to i8
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3692, i8* %3693, align 1
  %3694 = lshr i64 %3676, 63
  %3695 = xor i64 %3691, %3694
  %3696 = add i64 %3695, %3694
  %3697 = icmp eq i64 %3696, 2
  %3698 = zext i1 %3697 to i8
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3698, i8* %3699, align 1
  store %struct.Memory* %loadMem_44ad0f, %struct.Memory** %MEMORY
  %loadMem_44ad13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 33
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3702 to i64*
  %3703 = load i64, i64* %PC.i42
  %3704 = add i64 %3703, 45
  %3705 = load i64, i64* %PC.i42
  %3706 = add i64 %3705, 6
  %3707 = load i64, i64* %PC.i42
  %3708 = add i64 %3707, 6
  store i64 %3708, i64* %PC.i42
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3710 = load i8, i8* %3709, align 1
  store i8 %3710, i8* %BRANCH_TAKEN, align 1
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3712 = icmp ne i8 %3710, 0
  %3713 = select i1 %3712, i64 %3704, i64 %3706
  store i64 %3713, i64* %3711, align 8
  store %struct.Memory* %loadMem_44ad13, %struct.Memory** %MEMORY
  %loadBr_44ad13 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ad13 = icmp eq i8 %loadBr_44ad13, 1
  br i1 %cmpBr_44ad13, label %block_.L_44ad40, label %block_44ad19

block_44ad19:                                     ; preds = %block_.L_44accd
  %loadMem_44ad19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3715 = getelementptr inbounds %struct.GPR, %struct.GPR* %3714, i32 0, i32 33
  %3716 = getelementptr inbounds %struct.Reg, %struct.Reg* %3715, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3716 to i64*
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3718 = getelementptr inbounds %struct.GPR, %struct.GPR* %3717, i32 0, i32 11
  %3719 = getelementptr inbounds %struct.Reg, %struct.Reg* %3718, i32 0, i32 0
  %RDI.i40 = bitcast %union.anon* %3719 to i64*
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3721 = getelementptr inbounds %struct.GPR, %struct.GPR* %3720, i32 0, i32 15
  %3722 = getelementptr inbounds %struct.Reg, %struct.Reg* %3721, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %3722 to i64*
  %3723 = load i64, i64* %RBP.i41
  %3724 = sub i64 %3723, 48
  %3725 = load i64, i64* %PC.i39
  %3726 = add i64 %3725, 4
  store i64 %3726, i64* %PC.i39
  %3727 = inttoptr i64 %3724 to i64*
  %3728 = load i64, i64* %3727
  store i64 %3728, i64* %RDI.i40, align 8
  store %struct.Memory* %loadMem_44ad19, %struct.Memory** %MEMORY
  %loadMem1_44ad1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 33
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %3731 to i64*
  %3732 = load i64, i64* %PC.i38
  %3733 = add i64 %3732, -301293
  %3734 = load i64, i64* %PC.i38
  %3735 = add i64 %3734, 5
  %3736 = load i64, i64* %PC.i38
  %3737 = add i64 %3736, 5
  store i64 %3737, i64* %PC.i38
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3739 = load i64, i64* %3738, align 8
  %3740 = add i64 %3739, -8
  %3741 = inttoptr i64 %3740 to i64*
  store i64 %3735, i64* %3741
  store i64 %3740, i64* %3738, align 8
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3733, i64* %3742, align 8
  store %struct.Memory* %loadMem1_44ad1d, %struct.Memory** %MEMORY
  %loadMem2_44ad1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ad1d = load i64, i64* %3
  %3743 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %loadMem2_44ad1d)
  store %struct.Memory* %3743, %struct.Memory** %MEMORY
  %loadMem_44ad22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 33
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %3746 to i64*
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3748 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3747, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3748 to %"class.std::bitset"*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3750 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3749, i64 0, i64 0
  %XMM0.i34 = bitcast %union.VectorReg* %3750 to %union.vec128_t*
  %3751 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3752 = bitcast %union.vec128_t* %XMM0.i34 to i8*
  %3753 = load i64, i64* %PC.i33
  %3754 = add i64 %3753, 4
  store i64 %3754, i64* %PC.i33
  %3755 = bitcast i8* %3751 to <2 x i32>*
  %3756 = load <2 x i32>, <2 x i32>* %3755, align 1
  %3757 = getelementptr inbounds i8, i8* %3751, i64 8
  %3758 = bitcast i8* %3757 to <2 x i32>*
  %3759 = load <2 x i32>, <2 x i32>* %3758, align 1
  %3760 = bitcast i8* %3752 to double*
  %3761 = load double, double* %3760, align 1
  %3762 = fptrunc double %3761 to float
  %3763 = bitcast i8* %3751 to float*
  store float %3762, float* %3763, align 1
  %3764 = extractelement <2 x i32> %3756, i32 1
  %3765 = getelementptr inbounds i8, i8* %3751, i64 4
  %3766 = bitcast i8* %3765 to i32*
  store i32 %3764, i32* %3766, align 1
  %3767 = extractelement <2 x i32> %3759, i32 0
  %3768 = bitcast i8* %3757 to i32*
  store i32 %3767, i32* %3768, align 1
  %3769 = extractelement <2 x i32> %3759, i32 1
  %3770 = getelementptr inbounds i8, i8* %3751, i64 12
  %3771 = bitcast i8* %3770 to i32*
  store i32 %3769, i32* %3771, align 1
  store %struct.Memory* %loadMem_44ad22, %struct.Memory** %MEMORY
  %loadMem_44ad26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 33
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %3774 to i64*
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3776 = getelementptr inbounds %struct.GPR, %struct.GPR* %3775, i32 0, i32 11
  %3777 = getelementptr inbounds %struct.Reg, %struct.Reg* %3776, i32 0, i32 0
  %RDI.i31 = bitcast %union.anon* %3777 to i64*
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 15
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %3780 to i64*
  %3781 = load i64, i64* %RBP.i32
  %3782 = sub i64 %3781, 16
  %3783 = load i64, i64* %PC.i30
  %3784 = add i64 %3783, 4
  store i64 %3784, i64* %PC.i30
  %3785 = inttoptr i64 %3782 to i64*
  %3786 = load i64, i64* %3785
  store i64 %3786, i64* %RDI.i31, align 8
  store %struct.Memory* %loadMem_44ad26, %struct.Memory** %MEMORY
  %loadMem_44ad2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 33
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3789 to i64*
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 11
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %RDI.i29 = bitcast %union.anon* %3792 to i64*
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3794 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3793, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3794 to %union.vec128_t*
  %3795 = load i64, i64* %RDI.i29
  %3796 = add i64 %3795, 132
  %3797 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3798 = load i64, i64* %PC.i28
  %3799 = add i64 %3798, 8
  store i64 %3799, i64* %PC.i28
  %3800 = bitcast i8* %3797 to <2 x float>*
  %3801 = load <2 x float>, <2 x float>* %3800, align 1
  %3802 = extractelement <2 x float> %3801, i32 0
  %3803 = inttoptr i64 %3796 to float*
  store float %3802, float* %3803
  store %struct.Memory* %loadMem_44ad2a, %struct.Memory** %MEMORY
  %loadMem_44ad32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 33
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3806 to i64*
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3808 = getelementptr inbounds %struct.GPR, %struct.GPR* %3807, i32 0, i32 11
  %3809 = getelementptr inbounds %struct.Reg, %struct.Reg* %3808, i32 0, i32 0
  %RDI.i26 = bitcast %union.anon* %3809 to i64*
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3811 = getelementptr inbounds %struct.GPR, %struct.GPR* %3810, i32 0, i32 15
  %3812 = getelementptr inbounds %struct.Reg, %struct.Reg* %3811, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %3812 to i64*
  %3813 = load i64, i64* %RBP.i27
  %3814 = sub i64 %3813, 16
  %3815 = load i64, i64* %PC.i25
  %3816 = add i64 %3815, 4
  store i64 %3816, i64* %PC.i25
  %3817 = inttoptr i64 %3814 to i64*
  %3818 = load i64, i64* %3817
  store i64 %3818, i64* %RDI.i26, align 8
  store %struct.Memory* %loadMem_44ad32, %struct.Memory** %MEMORY
  %loadMem_44ad36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 33
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %3821 to i64*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 11
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %RDI.i24 = bitcast %union.anon* %3824 to i64*
  %3825 = load i64, i64* %RDI.i24
  %3826 = add i64 %3825, 156
  %3827 = load i64, i64* %PC.i23
  %3828 = add i64 %3827, 10
  store i64 %3828, i64* %PC.i23
  %3829 = inttoptr i64 %3826 to i32*
  store i32 1, i32* %3829
  store %struct.Memory* %loadMem_44ad36, %struct.Memory** %MEMORY
  br label %block_.L_44ad40

block_.L_44ad40:                                  ; preds = %block_44ad19, %block_.L_44accd
  %loadMem_44ad40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 33
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3832 to i64*
  %3833 = load i64, i64* %PC.i22
  %3834 = add i64 %3833, 22
  %3835 = load i64, i64* %PC.i22
  %3836 = add i64 %3835, 5
  store i64 %3836, i64* %PC.i22
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3834, i64* %3837, align 8
  store %struct.Memory* %loadMem_44ad40, %struct.Memory** %MEMORY
  br label %block_.L_44ad56

block_.L_44ad45:                                  ; preds = %block_.L_44ac7b
  %loadMem_44ad45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 33
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3840 to i64*
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 11
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3843 to i64*
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 15
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %3846 to i64*
  %3847 = load i64, i64* %RBP.i21
  %3848 = sub i64 %3847, 16
  %3849 = load i64, i64* %PC.i20
  %3850 = add i64 %3849, 4
  store i64 %3850, i64* %PC.i20
  %3851 = inttoptr i64 %3848 to i64*
  %3852 = load i64, i64* %3851
  store i64 %3852, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_44ad45, %struct.Memory** %MEMORY
  %loadMem_44ad49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3854 = getelementptr inbounds %struct.GPR, %struct.GPR* %3853, i32 0, i32 33
  %3855 = getelementptr inbounds %struct.Reg, %struct.Reg* %3854, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3855 to i64*
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3857 = getelementptr inbounds %struct.GPR, %struct.GPR* %3856, i32 0, i32 9
  %3858 = getelementptr inbounds %struct.Reg, %struct.Reg* %3857, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3858 to i64*
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3860 = getelementptr inbounds %struct.GPR, %struct.GPR* %3859, i32 0, i32 15
  %3861 = getelementptr inbounds %struct.Reg, %struct.Reg* %3860, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %3861 to i64*
  %3862 = load i64, i64* %RBP.i19
  %3863 = sub i64 %3862, 40
  %3864 = load i64, i64* %PC.i18
  %3865 = add i64 %3864, 4
  store i64 %3865, i64* %PC.i18
  %3866 = inttoptr i64 %3863 to i64*
  %3867 = load i64, i64* %3866
  store i64 %3867, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_44ad49, %struct.Memory** %MEMORY
  %loadMem_44ad4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 33
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3870 to i64*
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3872 = getelementptr inbounds %struct.GPR, %struct.GPR* %3871, i32 0, i32 7
  %3873 = getelementptr inbounds %struct.Reg, %struct.Reg* %3872, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3873 to i64*
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3875 = getelementptr inbounds %struct.GPR, %struct.GPR* %3874, i32 0, i32 15
  %3876 = getelementptr inbounds %struct.Reg, %struct.Reg* %3875, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %3876 to i64*
  %3877 = load i64, i64* %RBP.i17
  %3878 = sub i64 %3877, 48
  %3879 = load i64, i64* %PC.i16
  %3880 = add i64 %3879, 4
  store i64 %3880, i64* %PC.i16
  %3881 = inttoptr i64 %3878 to i64*
  %3882 = load i64, i64* %3881
  store i64 %3882, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_44ad4d, %struct.Memory** %MEMORY
  %loadMem1_44ad51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 33
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3885 to i64*
  %3886 = load i64, i64* %PC.i15
  %3887 = add i64 %3886, -120193
  %3888 = load i64, i64* %PC.i15
  %3889 = add i64 %3888, 5
  %3890 = load i64, i64* %PC.i15
  %3891 = add i64 %3890, 5
  store i64 %3891, i64* %PC.i15
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3893 = load i64, i64* %3892, align 8
  %3894 = add i64 %3893, -8
  %3895 = inttoptr i64 %3894 to i64*
  store i64 %3889, i64* %3895
  store i64 %3894, i64* %3892, align 8
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3887, i64* %3896, align 8
  store %struct.Memory* %loadMem1_44ad51, %struct.Memory** %MEMORY
  %loadMem2_44ad51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ad51 = load i64, i64* %3
  %call2_44ad51 = call %struct.Memory* @sub_42d7d0.MSAAddGF(%struct.State* %0, i64 %loadPC_44ad51, %struct.Memory* %loadMem2_44ad51)
  store %struct.Memory* %call2_44ad51, %struct.Memory** %MEMORY
  br label %block_.L_44ad56

block_.L_44ad56:                                  ; preds = %block_.L_44ad45, %block_.L_44ad40
  %loadMem_44ad56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3898 = getelementptr inbounds %struct.GPR, %struct.GPR* %3897, i32 0, i32 33
  %3899 = getelementptr inbounds %struct.Reg, %struct.Reg* %3898, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3899 to i64*
  %3900 = load i64, i64* %PC.i14
  %3901 = add i64 %3900, 5
  %3902 = load i64, i64* %PC.i14
  %3903 = add i64 %3902, 5
  store i64 %3903, i64* %PC.i14
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3901, i64* %3904, align 8
  store %struct.Memory* %loadMem_44ad56, %struct.Memory** %MEMORY
  br label %block_.L_44ad5b

block_.L_44ad5b:                                  ; preds = %block_.L_44ad56, %block_.L_44ac76
  %loadMem_44ad5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 33
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3907 to i64*
  %3908 = load i64, i64* %PC.i13
  %3909 = add i64 %3908, 5
  %3910 = load i64, i64* %PC.i13
  %3911 = add i64 %3910, 5
  store i64 %3911, i64* %PC.i13
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3909, i64* %3912, align 8
  store %struct.Memory* %loadMem_44ad5b, %struct.Memory** %MEMORY
  br label %block_.L_44ad60

block_.L_44ad60:                                  ; preds = %block_.L_44ad5b, %block_.L_44abac
  %loadMem_44ad60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3914 = getelementptr inbounds %struct.GPR, %struct.GPR* %3913, i32 0, i32 33
  %3915 = getelementptr inbounds %struct.Reg, %struct.Reg* %3914, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3915 to i64*
  %3916 = load i64, i64* %PC.i12
  %3917 = add i64 %3916, 5
  %3918 = load i64, i64* %PC.i12
  %3919 = add i64 %3918, 5
  store i64 %3919, i64* %PC.i12
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3917, i64* %3920, align 8
  store %struct.Memory* %loadMem_44ad60, %struct.Memory** %MEMORY
  br label %block_.L_44ad65

block_.L_44ad65:                                  ; preds = %block_.L_44ad60, %block_44aacc
  %loadMem_44ad65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 33
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3923 to i64*
  %3924 = load i64, i64* %PC.i11
  %3925 = add i64 %3924, 5
  %3926 = load i64, i64* %PC.i11
  %3927 = add i64 %3926, 5
  store i64 %3927, i64* %PC.i11
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3925, i64* %3928, align 8
  store %struct.Memory* %loadMem_44ad65, %struct.Memory** %MEMORY
  br label %block_.L_44ad6a

block_.L_44ad6a:                                  ; preds = %block_.L_44ad65, %block_44aa98
  %loadMem_44ad6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 33
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %3931 to i64*
  %3932 = load i64, i64* %PC.i10
  %3933 = add i64 %3932, 5
  %3934 = load i64, i64* %PC.i10
  %3935 = add i64 %3934, 5
  store i64 %3935, i64* %PC.i10
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3933, i64* %3936, align 8
  store %struct.Memory* %loadMem_44ad6a, %struct.Memory** %MEMORY
  br label %block_.L_44ad6f

block_.L_44ad6f:                                  ; preds = %block_.L_44ad6a, %block_44aa64
  %loadMem_44ad6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3938 = getelementptr inbounds %struct.GPR, %struct.GPR* %3937, i32 0, i32 33
  %3939 = getelementptr inbounds %struct.Reg, %struct.Reg* %3938, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3939 to i64*
  %3940 = load i64, i64* %PC.i9
  %3941 = add i64 %3940, 5
  %3942 = load i64, i64* %PC.i9
  %3943 = add i64 %3942, 5
  store i64 %3943, i64* %PC.i9
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3941, i64* %3944, align 8
  store %struct.Memory* %loadMem_44ad6f, %struct.Memory** %MEMORY
  br label %block_.L_44ad74

block_.L_44ad74:                                  ; preds = %block_.L_44ad6f, %block_44aa30
  %loadMem_44ad74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 33
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3947 to i64*
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 15
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %3950 to i64*
  %3951 = load i64, i64* %RBP.i8
  %3952 = sub i64 %3951, 4
  %3953 = load i64, i64* %PC.i7
  %3954 = add i64 %3953, 7
  store i64 %3954, i64* %PC.i7
  %3955 = inttoptr i64 %3952 to i32*
  store i32 1, i32* %3955
  store %struct.Memory* %loadMem_44ad74, %struct.Memory** %MEMORY
  br label %block_.L_44ad7b

block_.L_44ad7b:                                  ; preds = %block_.L_44ad74, %block_44acc1, %block_44abf7, %block_44ab2d, %block_44a9a3, %block_44a972, %block_44a941
  %loadMem_44ad7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 33
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3958 to i64*
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 1
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3961 to i64*
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3963 = getelementptr inbounds %struct.GPR, %struct.GPR* %3962, i32 0, i32 15
  %3964 = getelementptr inbounds %struct.Reg, %struct.Reg* %3963, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %3964 to i64*
  %3965 = load i64, i64* %RBP.i6
  %3966 = sub i64 %3965, 4
  %3967 = load i64, i64* %PC.i5
  %3968 = add i64 %3967, 3
  store i64 %3968, i64* %PC.i5
  %3969 = inttoptr i64 %3966 to i32*
  %3970 = load i32, i32* %3969
  %3971 = zext i32 %3970 to i64
  store i64 %3971, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_44ad7b, %struct.Memory** %MEMORY
  %loadMem_44ad7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 33
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3974 to i64*
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3976 = getelementptr inbounds %struct.GPR, %struct.GPR* %3975, i32 0, i32 13
  %3977 = getelementptr inbounds %struct.Reg, %struct.Reg* %3976, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3977 to i64*
  %3978 = load i64, i64* %RSP.i
  %3979 = load i64, i64* %PC.i4
  %3980 = add i64 %3979, 4
  store i64 %3980, i64* %PC.i4
  %3981 = add i64 64, %3978
  store i64 %3981, i64* %RSP.i, align 8
  %3982 = icmp ult i64 %3981, %3978
  %3983 = icmp ult i64 %3981, 64
  %3984 = or i1 %3982, %3983
  %3985 = zext i1 %3984 to i8
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3985, i8* %3986, align 1
  %3987 = trunc i64 %3981 to i32
  %3988 = and i32 %3987, 255
  %3989 = call i32 @llvm.ctpop.i32(i32 %3988)
  %3990 = trunc i32 %3989 to i8
  %3991 = and i8 %3990, 1
  %3992 = xor i8 %3991, 1
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3992, i8* %3993, align 1
  %3994 = xor i64 64, %3978
  %3995 = xor i64 %3994, %3981
  %3996 = lshr i64 %3995, 4
  %3997 = trunc i64 %3996 to i8
  %3998 = and i8 %3997, 1
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3998, i8* %3999, align 1
  %4000 = icmp eq i64 %3981, 0
  %4001 = zext i1 %4000 to i8
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4001, i8* %4002, align 1
  %4003 = lshr i64 %3981, 63
  %4004 = trunc i64 %4003 to i8
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4004, i8* %4005, align 1
  %4006 = lshr i64 %3978, 63
  %4007 = xor i64 %4003, %4006
  %4008 = add i64 %4007, %4003
  %4009 = icmp eq i64 %4008, 2
  %4010 = zext i1 %4009 to i8
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4010, i8* %4011, align 1
  store %struct.Memory* %loadMem_44ad7e, %struct.Memory** %MEMORY
  %loadMem_44ad82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 33
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4014 to i64*
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 15
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4017 to i64*
  %4018 = load i64, i64* %PC.i2
  %4019 = add i64 %4018, 1
  store i64 %4019, i64* %PC.i2
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4021 = load i64, i64* %4020, align 8
  %4022 = add i64 %4021, 8
  %4023 = inttoptr i64 %4021 to i64*
  %4024 = load i64, i64* %4023
  store i64 %4024, i64* %RBP.i3, align 8
  store i64 %4022, i64* %4020, align 8
  store %struct.Memory* %loadMem_44ad82, %struct.Memory** %MEMORY
  %loadMem_44ad83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4026 = getelementptr inbounds %struct.GPR, %struct.GPR* %4025, i32 0, i32 33
  %4027 = getelementptr inbounds %struct.Reg, %struct.Reg* %4026, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4027 to i64*
  %4028 = load i64, i64* %PC.i1
  %4029 = add i64 %4028, 1
  store i64 %4029, i64* %PC.i1
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4032 = load i64, i64* %4031, align 8
  %4033 = inttoptr i64 %4032 to i64*
  %4034 = load i64, i64* %4033
  store i64 %4034, i64* %4030, align 8
  %4035 = add i64 %4032, 8
  store i64 %4035, i64* %4031, align 8
  store %struct.Memory* %loadMem_44ad83, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_44ad83
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

define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 64
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 64
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
  %23 = xor i64 64, %9
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

define %struct.Memory* @routine_leaq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x45a1f5___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__edx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_callq_.sre_strtok(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = trunc i64 %9 to i32
  %14 = and i32 %13, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = icmp eq i64 %9, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i64 %9, 63
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %9, 63
  %28 = xor i64 %24, %27
  %29 = add i64 %28, %27
  %30 = icmp eq i64 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_44a94d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_44ad7b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_44a97e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_44a9af(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_44a9b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rdx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i8*
  %16 = load i8, i8* %15
  %17 = sext i8 %16 to i64
  %18 = and i64 %17, 4294967295
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movb__cl__MINUS0x39__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 57
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_44a9f6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i8*
  %16 = load i8, i8* %15
  %17 = sext i8 %16 to i64
  %18 = and i64 %17, 4294967295
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 32
  %14 = icmp ult i32 %9, 32
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
  %23 = xor i64 32, %10
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

define %struct.Memory* @routine_movb__al__MINUS0x3a__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 58
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_44a9f0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i8*
  %16 = load i8, i8* %15
  %17 = sext i8 %16 to i64
  %18 = and i64 %17, 4294967295
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x9___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 9
  %14 = icmp ult i32 %9, 9
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
  %23 = xor i64 9, %10
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

define %struct.Memory* @routine_sete__dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %DL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl__MINUS0x3a__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 58
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x3a__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 58
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__MINUS0x39__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 57
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x39__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 57
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
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

define %struct.Memory* @routine_jne_.L_44aa06(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_44aa17(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 1, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1
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
  %25 = xor i64 1, %9
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x459a0f___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 and (i64 ptrtoint (%G__0x459a0f_type* @G__0x459a0f to i64), i64 4294967295), i64* %RAX, align 8
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

define %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_44aa4b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4294967295, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sre_strdup(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__0x28__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_44ad74(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x459a14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 and (i64 ptrtoint (%G__0x459a14_type* @G__0x459a14 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_44aa7f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__0x38__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_44ad6f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x459a19___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 and (i64 ptrtoint (%G__0x459a19_type* @G__0x459a19 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_44aab3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__0x30__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_44ad6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x459a0a___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 and (i64 ptrtoint (%G__0x459a0a_type* @G__0x459a0a to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_44aae7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__0x40__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_44ad65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x459a1e___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 and (i64 ptrtoint (%G__0x459a1e_type* @G__0x459a1e to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_44abb1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rcx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_44ab39(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.atof_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__0x88__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 136
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

define %struct.Memory* @routine_movl__0x1__0xa0__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_44abac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__0x8c__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 140
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

define %struct.Memory* @routine_movl__0x1__0xa4__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 164
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_44ad60(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x459a78___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 and (i64 ptrtoint (%G__0x459a78_type* @G__0x459a78 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_44ac7b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_44ac03(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__0x90__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 144
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

define %struct.Memory* @routine_movl__0x1__0xa8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_44ac76(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__0x94__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 148
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

define %struct.Memory* @routine_movl__0x1__0xac__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 172
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_44ad5b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x459a4b___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 and (i64 ptrtoint (%G__0x459a4b_type* @G__0x459a4b to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_44ad45(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_44accd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__0x80__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 128
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

define %struct.Memory* @routine_movl__0x1__0x98__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_44ad40(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__0x84__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 132
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

define %struct.Memory* @routine_movl__0x1__0x9c__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_44ad56(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.MSAAddGF(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 64, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 64
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
  %25 = xor i64 64, %9
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
