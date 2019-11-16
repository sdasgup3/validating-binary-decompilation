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
%G_0xab0ef8_type = type <{ [1 x i8] }>
%G_0xae23a4_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
%G_0xb8b854_type = type <{ [4 x i8] }>
%G__0x57a4d2_type = type <{ [8 x i8] }>
%G__0x57e5fb_type = type <{ [8 x i8] }>
%G__0x57f60a_type = type <{ [8 x i8] }>
%G__0x57fb0d_type = type <{ [8 x i8] }>
%G__0x57fd27_type = type <{ [8 x i8] }>
%G__0x57febe_type = type <{ [8 x i8] }>
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
@G_0xab0ef8 = global %G_0xab0ef8_type zeroinitializer
@G_0xae23a4 = global %G_0xae23a4_type zeroinitializer
@G_0xb54ce4 = global %G_0xb54ce4_type zeroinitializer
@G_0xb8b854 = global %G_0xb8b854_type zeroinitializer
@G__0x57a4d2 = global %G__0x57a4d2_type zeroinitializer
@G__0x57e5fb = global %G__0x57e5fb_type zeroinitializer
@G__0x57f60a = global %G__0x57f60a_type zeroinitializer
@G__0x57fb0d = global %G__0x57fb0d_type zeroinitializer
@G__0x57fd27 = global %G__0x57fd27_type zeroinitializer
@G__0x57febe = global %G__0x57febe_type zeroinitializer

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

declare %struct.Memory* @sub_4141e0.find_origin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_462c90.order_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_46a300.simple_ladder_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @simple_ladder_attack(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_45e4f0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_45e4f0, %struct.Memory** %MEMORY
  %loadMem_45e4f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i494 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i494
  %27 = load i64, i64* %PC.i493
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i493
  store i64 %26, i64* %RBP.i495, align 8
  store %struct.Memory* %loadMem_45e4f1, %struct.Memory** %MEMORY
  %loadMem_45e4f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 31
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %R15.i512 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %R15.i512
  %36 = load i64, i64* %PC.i511
  %37 = add i64 %36, 2
  store i64 %37, i64* %PC.i511
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_45e4f4, %struct.Memory** %MEMORY
  %loadMem_45e4f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R14.i567 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %R14.i567
  %49 = load i64, i64* %PC.i566
  %50 = add i64 %49, 2
  store i64 %50, i64* %PC.i566
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %48, i64* %54
  store i64 %53, i64* %51, align 8
  store %struct.Memory* %loadMem_45e4f6, %struct.Memory** %MEMORY
  %loadMem_45e4f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 33
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %RBX.i584 = bitcast %union.anon* %60 to i64*
  %61 = load i64, i64* %RBX.i584
  %62 = load i64, i64* %PC.i583
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC.i583
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %61, i64* %67
  store i64 %66, i64* %64, align 8
  store %struct.Memory* %loadMem_45e4f8, %struct.Memory** %MEMORY
  %loadMem_45e4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %69 = getelementptr inbounds %struct.GPR, %struct.GPR* %68, i32 0, i32 33
  %70 = getelementptr inbounds %struct.Reg, %struct.Reg* %69, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %70 to i64*
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 13
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %RSP.i687 = bitcast %union.anon* %73 to i64*
  %74 = load i64, i64* %RSP.i687
  %75 = load i64, i64* %PC.i686
  %76 = add i64 %75, 7
  store i64 %76, i64* %PC.i686
  %77 = sub i64 %74, 600
  store i64 %77, i64* %RSP.i687, align 8
  %78 = icmp ult i64 %74, 600
  %79 = zext i1 %78 to i8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %79, i8* %80, align 1
  %81 = trunc i64 %77 to i32
  %82 = and i32 %81, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82)
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %86, i8* %87, align 1
  %88 = xor i64 600, %74
  %89 = xor i64 %88, %77
  %90 = lshr i64 %89, 4
  %91 = trunc i64 %90 to i8
  %92 = and i8 %91, 1
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %92, i8* %93, align 1
  %94 = icmp eq i64 %77, 0
  %95 = zext i1 %94 to i8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %95, i8* %96, align 1
  %97 = lshr i64 %77, 63
  %98 = trunc i64 %97 to i8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %98, i8* %99, align 1
  %100 = lshr i64 %74, 63
  %101 = xor i64 %97, %100
  %102 = add i64 %101, %100
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %104, i8* %105, align 1
  store %struct.Memory* %loadMem_45e4f9, %struct.Memory** %MEMORY
  %loadMem_45e500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RAX.i685 = bitcast %union.anon* %111 to i64*
  %112 = load i64, i64* %PC.i684
  %113 = add i64 %112, 10
  store i64 %113, i64* %PC.i684
  store i64 ptrtoint (%G__0x57febe_type* @G__0x57febe to i64), i64* %RAX.i685, align 8
  store %struct.Memory* %loadMem_45e500, %struct.Memory** %MEMORY
  %loadMem_45e50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 17
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %R8D.i683 = bitcast %union.anon* %119 to i32*
  %120 = bitcast i32* %R8D.i683 to i64*
  %121 = load i64, i64* %PC.i682
  %122 = add i64 %121, 6
  store i64 %122, i64* %PC.i682
  store i64 3, i64* %120, align 8
  store %struct.Memory* %loadMem_45e50a, %struct.Memory** %MEMORY
  %loadMem_45e510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 11
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %128 to i32*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 15
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RBP.i681 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %RBP.i681
  %133 = sub i64 %132, 32
  %134 = load i32, i32* %EDI.i
  %135 = zext i32 %134 to i64
  %136 = load i64, i64* %PC.i680
  %137 = add i64 %136, 3
  store i64 %137, i64* %PC.i680
  %138 = inttoptr i64 %133 to i32*
  store i32 %134, i32* %138
  store %struct.Memory* %loadMem_45e510, %struct.Memory** %MEMORY
  %loadMem_45e513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 33
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %141 to i64*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 9
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %RSI.i678 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 15
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RBP.i679 = bitcast %union.anon* %147 to i64*
  %148 = load i64, i64* %RBP.i679
  %149 = sub i64 %148, 40
  %150 = load i64, i64* %RSI.i678
  %151 = load i64, i64* %PC.i677
  %152 = add i64 %151, 4
  store i64 %152, i64* %PC.i677
  %153 = inttoptr i64 %149 to i64*
  store i64 %150, i64* %153
  store %struct.Memory* %loadMem_45e513, %struct.Memory** %MEMORY
  %loadMem_45e517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 33
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 7
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %EDX.i675 = bitcast %union.anon* %159 to i32*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 15
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %RBP.i676 = bitcast %union.anon* %162 to i64*
  %163 = load i64, i64* %RBP.i676
  %164 = sub i64 %163, 44
  %165 = load i32, i32* %EDX.i675
  %166 = zext i32 %165 to i64
  %167 = load i64, i64* %PC.i674
  %168 = add i64 %167, 3
  store i64 %168, i64* %PC.i674
  %169 = inttoptr i64 %164 to i32*
  store i32 %165, i32* %169
  store %struct.Memory* %loadMem_45e517, %struct.Memory** %MEMORY
  %loadMem_45e51a = load %struct.Memory*, %struct.Memory** %MEMORY
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 33
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %ECX.i672 = bitcast %union.anon* %175 to i32*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 15
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %RBP.i673 = bitcast %union.anon* %178 to i64*
  %179 = load i64, i64* %RBP.i673
  %180 = sub i64 %179, 48
  %181 = load i32, i32* %ECX.i672
  %182 = zext i32 %181 to i64
  %183 = load i64, i64* %PC.i671
  %184 = add i64 %183, 3
  store i64 %184, i64* %PC.i671
  %185 = inttoptr i64 %180 to i32*
  store i32 %181, i32* %185
  store %struct.Memory* %loadMem_45e51a, %struct.Memory** %MEMORY
  %loadMem_45e51d = load %struct.Memory*, %struct.Memory** %MEMORY
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 33
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %188 to i64*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 9
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %RSI.i669 = bitcast %union.anon* %191 to i64*
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 15
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %194 to i64*
  %195 = load i64, i64* %RBP.i670
  %196 = sub i64 %195, 32
  %197 = load i64, i64* %PC.i668
  %198 = add i64 %197, 4
  store i64 %198, i64* %PC.i668
  %199 = inttoptr i64 %196 to i32*
  %200 = load i32, i32* %199
  %201 = sext i32 %200 to i64
  store i64 %201, i64* %RSI.i669, align 8
  store %struct.Memory* %loadMem_45e51d, %struct.Memory** %MEMORY
  %loadMem_45e521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 33
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %204 to i64*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 5
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %RCX.i666 = bitcast %union.anon* %207 to i64*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 9
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %RSI.i667 = bitcast %union.anon* %210 to i64*
  %211 = load i64, i64* %RSI.i667
  %212 = add i64 %211, 12099168
  %213 = load i64, i64* %PC.i665
  %214 = add i64 %213, 8
  store i64 %214, i64* %PC.i665
  %215 = inttoptr i64 %212 to i8*
  %216 = load i8, i8* %215
  %217 = zext i8 %216 to i64
  store i64 %217, i64* %RCX.i666, align 8
  store %struct.Memory* %loadMem_45e521, %struct.Memory** %MEMORY
  %loadMem_45e529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %ECX.i663 = bitcast %union.anon* %223 to i32*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 15
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RBP.i664 = bitcast %union.anon* %226 to i64*
  %227 = load i64, i64* %RBP.i664
  %228 = sub i64 %227, 52
  %229 = load i32, i32* %ECX.i663
  %230 = zext i32 %229 to i64
  %231 = load i64, i64* %PC.i662
  %232 = add i64 %231, 3
  store i64 %232, i64* %PC.i662
  %233 = inttoptr i64 %228 to i32*
  store i32 %229, i32* %233
  store %struct.Memory* %loadMem_45e529, %struct.Memory** %MEMORY
  %loadMem_45e52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 33
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 17
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %R8D.i660 = bitcast %union.anon* %239 to i32*
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 15
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %242 to i64*
  %243 = bitcast i32* %R8D.i660 to i64*
  %244 = load i32, i32* %R8D.i660
  %245 = zext i32 %244 to i64
  %246 = load i64, i64* %RBP.i661
  %247 = sub i64 %246, 52
  %248 = load i64, i64* %PC.i659
  %249 = add i64 %248, 4
  store i64 %249, i64* %PC.i659
  %250 = inttoptr i64 %247 to i32*
  %251 = load i32, i32* %250
  %252 = sub i32 %244, %251
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %243, align 8
  %254 = icmp ult i32 %244, %251
  %255 = zext i1 %254 to i8
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %255, i8* %256, align 1
  %257 = and i32 %252, 255
  %258 = call i32 @llvm.ctpop.i32(i32 %257)
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %261, i8* %262, align 1
  %263 = xor i32 %251, %244
  %264 = xor i32 %263, %252
  %265 = lshr i32 %264, 4
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %267, i8* %268, align 1
  %269 = icmp eq i32 %252, 0
  %270 = zext i1 %269 to i8
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %270, i8* %271, align 1
  %272 = lshr i32 %252, 31
  %273 = trunc i32 %272 to i8
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %273, i8* %274, align 1
  %275 = lshr i32 %244, 31
  %276 = lshr i32 %251, 31
  %277 = xor i32 %276, %275
  %278 = xor i32 %272, %275
  %279 = add i32 %278, %277
  %280 = icmp eq i32 %279, 2
  %281 = zext i1 %280 to i8
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %281, i8* %282, align 1
  store %struct.Memory* %loadMem_45e52c, %struct.Memory** %MEMORY
  %loadMem_45e530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 33
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %285 to i64*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 17
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %R8D.i657 = bitcast %union.anon* %288 to i32*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 15
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %RBP.i658 = bitcast %union.anon* %291 to i64*
  %292 = load i64, i64* %RBP.i658
  %293 = sub i64 %292, 56
  %294 = load i32, i32* %R8D.i657
  %295 = zext i32 %294 to i64
  %296 = load i64, i64* %PC.i656
  %297 = add i64 %296, 4
  store i64 %297, i64* %PC.i656
  %298 = inttoptr i64 %293 to i32*
  store i32 %294, i32* %298
  store %struct.Memory* %loadMem_45e530, %struct.Memory** %MEMORY
  %loadMem_45e534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 33
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %301 to i64*
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 15
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %RBP.i655 = bitcast %union.anon* %304 to i64*
  %305 = load i64, i64* %RBP.i655
  %306 = sub i64 %305, 72
  %307 = load i64, i64* %PC.i654
  %308 = add i64 %307, 7
  store i64 %308, i64* %PC.i654
  %309 = inttoptr i64 %306 to i32*
  store i32 0, i32* %309
  store %struct.Memory* %loadMem_45e534, %struct.Memory** %MEMORY
  %loadMem_45e53b = load %struct.Memory*, %struct.Memory** %MEMORY
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 33
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 15
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %315 to i64*
  %316 = load i64, i64* %RBP.i653
  %317 = sub i64 %316, 76
  %318 = load i64, i64* %PC.i652
  %319 = add i64 %318, 7
  store i64 %319, i64* %PC.i652
  %320 = inttoptr i64 %317 to i32*
  store i32 0, i32* %320
  store %struct.Memory* %loadMem_45e53b, %struct.Memory** %MEMORY
  %loadMem_45e542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 33
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %323 to i64*
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %RAX.i650 = bitcast %union.anon* %326 to i64*
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 15
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %329 to i64*
  %330 = load i64, i64* %RBP.i651
  %331 = sub i64 %330, 496
  %332 = load i64, i64* %RAX.i650
  %333 = load i64, i64* %PC.i649
  %334 = add i64 %333, 7
  store i64 %334, i64* %PC.i649
  %335 = inttoptr i64 %331 to i64*
  store i64 %332, i64* %335
  store %struct.Memory* %loadMem_45e542, %struct.Memory** %MEMORY
  %loadMem_45e549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 33
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %338 to i64*
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 5
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %RCX.i647 = bitcast %union.anon* %341 to i64*
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 15
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %344 to i64*
  %345 = load i64, i64* %RBP.i648
  %346 = sub i64 %345, 32
  %347 = load i64, i64* %PC.i646
  %348 = add i64 %347, 3
  store i64 %348, i64* %PC.i646
  %349 = inttoptr i64 %346 to i32*
  %350 = load i32, i32* %349
  %351 = zext i32 %350 to i64
  store i64 %351, i64* %RCX.i647, align 8
  store %struct.Memory* %loadMem_45e549, %struct.Memory** %MEMORY
  %loadMem_45e54c = load %struct.Memory*, %struct.Memory** %MEMORY
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 33
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %354 to i64*
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 5
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %ECX.i644 = bitcast %union.anon* %357 to i32*
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 15
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %RBP.i645 = bitcast %union.anon* %360 to i64*
  %361 = load i64, i64* %RBP.i645
  %362 = sub i64 %361, 500
  %363 = load i32, i32* %ECX.i644
  %364 = zext i32 %363 to i64
  %365 = load i64, i64* %PC.i643
  %366 = add i64 %365, 6
  store i64 %366, i64* %PC.i643
  %367 = inttoptr i64 %362 to i32*
  store i32 %363, i32* %367
  store %struct.Memory* %loadMem_45e54c, %struct.Memory** %MEMORY
  %loadMem_45e552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 33
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %370 to i64*
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 5
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %RCX.i642 = bitcast %union.anon* %373 to i64*
  %374 = load i64, i64* %PC.i641
  %375 = add i64 %374, 7
  store i64 %375, i64* %PC.i641
  %376 = load i32, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*)
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RCX.i642, align 8
  store %struct.Memory* %loadMem_45e552, %struct.Memory** %MEMORY
  %loadMem_45e559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 33
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 5
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RCX.i640 = bitcast %union.anon* %383 to i64*
  %384 = load i64, i64* %RCX.i640
  %385 = load i64, i64* %PC.i639
  %386 = add i64 %385, 3
  store i64 %386, i64* %PC.i639
  %387 = trunc i64 %384 to i32
  %388 = add i32 1, %387
  %389 = zext i32 %388 to i64
  store i64 %389, i64* %RCX.i640, align 8
  %390 = icmp ult i32 %388, %387
  %391 = icmp ult i32 %388, 1
  %392 = or i1 %390, %391
  %393 = zext i1 %392 to i8
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %393, i8* %394, align 1
  %395 = and i32 %388, 255
  %396 = call i32 @llvm.ctpop.i32(i32 %395)
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  %399 = xor i8 %398, 1
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %399, i8* %400, align 1
  %401 = xor i64 1, %384
  %402 = trunc i64 %401 to i32
  %403 = xor i32 %402, %388
  %404 = lshr i32 %403, 4
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %406, i8* %407, align 1
  %408 = icmp eq i32 %388, 0
  %409 = zext i1 %408 to i8
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %409, i8* %410, align 1
  %411 = lshr i32 %388, 31
  %412 = trunc i32 %411 to i8
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %412, i8* %413, align 1
  %414 = lshr i32 %387, 31
  %415 = xor i32 %411, %414
  %416 = add i32 %415, %411
  %417 = icmp eq i32 %416, 2
  %418 = zext i1 %417 to i8
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %418, i8* %419, align 1
  store %struct.Memory* %loadMem_45e559, %struct.Memory** %MEMORY
  %loadMem_45e55c = load %struct.Memory*, %struct.Memory** %MEMORY
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 33
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 5
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %ECX.i638 = bitcast %union.anon* %425 to i32*
  %426 = load i32, i32* %ECX.i638
  %427 = zext i32 %426 to i64
  %428 = load i64, i64* %PC.i637
  %429 = add i64 %428, 7
  store i64 %429, i64* %PC.i637
  store i32 %426, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*)
  store %struct.Memory* %loadMem_45e55c, %struct.Memory** %MEMORY
  %loadMem_45e563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 33
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %432 to i64*
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 15
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %435 to i64*
  %436 = load i64, i64* %RBP.i636
  %437 = sub i64 %436, 88
  %438 = load i64, i64* %PC.i635
  %439 = add i64 %438, 7
  store i64 %439, i64* %PC.i635
  %440 = inttoptr i64 %437 to i32*
  store i32 0, i32* %440
  store %struct.Memory* %loadMem_45e563, %struct.Memory** %MEMORY
  %loadMem_45e56a = load %struct.Memory*, %struct.Memory** %MEMORY
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 33
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %443 to i64*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 11
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %RDI.i633 = bitcast %union.anon* %446 to i64*
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 15
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %449 to i64*
  %450 = load i64, i64* %RBP.i634
  %451 = sub i64 %450, 32
  %452 = load i64, i64* %PC.i632
  %453 = add i64 %452, 3
  store i64 %453, i64* %PC.i632
  %454 = inttoptr i64 %451 to i32*
  %455 = load i32, i32* %454
  %456 = zext i32 %455 to i64
  store i64 %456, i64* %RDI.i633, align 8
  store %struct.Memory* %loadMem_45e56a, %struct.Memory** %MEMORY
  %loadMem1_45e56d = load %struct.Memory*, %struct.Memory** %MEMORY
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 33
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %459 to i64*
  %460 = load i64, i64* %PC.i631
  %461 = add i64 %460, -304013
  %462 = load i64, i64* %PC.i631
  %463 = add i64 %462, 5
  %464 = load i64, i64* %PC.i631
  %465 = add i64 %464, 5
  store i64 %465, i64* %PC.i631
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %467 = load i64, i64* %466, align 8
  %468 = add i64 %467, -8
  %469 = inttoptr i64 %468 to i64*
  store i64 %463, i64* %469
  store i64 %468, i64* %466, align 8
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %461, i64* %470, align 8
  store %struct.Memory* %loadMem1_45e56d, %struct.Memory** %MEMORY
  %loadMem2_45e56d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e56d = load i64, i64* %3
  %call2_45e56d = call %struct.Memory* @sub_4141e0.find_origin(%struct.State* %0, i64 %loadPC_45e56d, %struct.Memory* %loadMem2_45e56d)
  store %struct.Memory* %call2_45e56d, %struct.Memory** %MEMORY
  %loadMem_45e572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 33
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %473 to i64*
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 1
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %EAX.i629 = bitcast %union.anon* %476 to i32*
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 15
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %479 to i64*
  %480 = load i64, i64* %RBP.i630
  %481 = sub i64 %480, 32
  %482 = load i32, i32* %EAX.i629
  %483 = zext i32 %482 to i64
  %484 = load i64, i64* %PC.i628
  %485 = add i64 %484, 3
  store i64 %485, i64* %PC.i628
  %486 = inttoptr i64 %481 to i32*
  store i32 %482, i32* %486
  store %struct.Memory* %loadMem_45e572, %struct.Memory** %MEMORY
  %loadMem_45e575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 33
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %489 to i64*
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 9
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %RSI.i626 = bitcast %union.anon* %492 to i64*
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 15
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %495 to i64*
  %496 = load i64, i64* %RBP.i627
  %497 = sub i64 %496, 32
  %498 = load i64, i64* %PC.i625
  %499 = add i64 %498, 4
  store i64 %499, i64* %PC.i625
  %500 = inttoptr i64 %497 to i32*
  %501 = load i32, i32* %500
  %502 = sext i32 %501 to i64
  store i64 %502, i64* %RSI.i626, align 8
  store %struct.Memory* %loadMem_45e575, %struct.Memory** %MEMORY
  %loadMem_45e579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 33
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 1
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %RAX.i623 = bitcast %union.anon* %508 to i64*
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 9
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %RSI.i624 = bitcast %union.anon* %511 to i64*
  %512 = load i64, i64* %RSI.i624
  %513 = add i64 %512, 12099168
  %514 = load i64, i64* %PC.i622
  %515 = add i64 %514, 8
  store i64 %515, i64* %PC.i622
  %516 = inttoptr i64 %513 to i8*
  %517 = load i8, i8* %516
  %518 = zext i8 %517 to i64
  store i64 %518, i64* %RAX.i623, align 8
  store %struct.Memory* %loadMem_45e579, %struct.Memory** %MEMORY
  %loadMem_45e581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 33
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %521 to i64*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 1
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %EAX.i621 = bitcast %union.anon* %524 to i32*
  %525 = load i32, i32* %EAX.i621
  %526 = zext i32 %525 to i64
  %527 = load i64, i64* %PC.i620
  %528 = add i64 %527, 3
  store i64 %528, i64* %PC.i620
  %529 = sub i32 %525, 1
  %530 = icmp ult i32 %525, 1
  %531 = zext i1 %530 to i8
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %531, i8* %532, align 1
  %533 = and i32 %529, 255
  %534 = call i32 @llvm.ctpop.i32(i32 %533)
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  %537 = xor i8 %536, 1
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %537, i8* %538, align 1
  %539 = xor i64 1, %526
  %540 = trunc i64 %539 to i32
  %541 = xor i32 %540, %529
  %542 = lshr i32 %541, 4
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %544, i8* %545, align 1
  %546 = icmp eq i32 %529, 0
  %547 = zext i1 %546 to i8
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %547, i8* %548, align 1
  %549 = lshr i32 %529, 31
  %550 = trunc i32 %549 to i8
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %550, i8* %551, align 1
  %552 = lshr i32 %525, 31
  %553 = xor i32 %549, %552
  %554 = add i32 %553, %552
  %555 = icmp eq i32 %554, 2
  %556 = zext i1 %555 to i8
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %556, i8* %557, align 1
  store %struct.Memory* %loadMem_45e581, %struct.Memory** %MEMORY
  %loadMem_45e584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 33
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %560 to i64*
  %561 = load i64, i64* %PC.i619
  %562 = add i64 %561, 27
  %563 = load i64, i64* %PC.i619
  %564 = add i64 %563, 6
  %565 = load i64, i64* %PC.i619
  %566 = add i64 %565, 6
  store i64 %566, i64* %PC.i619
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %568 = load i8, i8* %567, align 1
  store i8 %568, i8* %BRANCH_TAKEN, align 1
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %570 = icmp ne i8 %568, 0
  %571 = select i1 %570, i64 %562, i64 %564
  store i64 %571, i64* %569, align 8
  store %struct.Memory* %loadMem_45e584, %struct.Memory** %MEMORY
  %loadBr_45e584 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e584 = icmp eq i8 %loadBr_45e584, 1
  br i1 %cmpBr_45e584, label %block_.L_45e59f, label %block_45e58a

block_45e58a:                                     ; preds = %entry
  %loadMem_45e58a = load %struct.Memory*, %struct.Memory** %MEMORY
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 33
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %574 to i64*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 1
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %RAX.i617 = bitcast %union.anon* %577 to i64*
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 15
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %580 to i64*
  %581 = load i64, i64* %RBP.i618
  %582 = sub i64 %581, 32
  %583 = load i64, i64* %PC.i616
  %584 = add i64 %583, 4
  store i64 %584, i64* %PC.i616
  %585 = inttoptr i64 %582 to i32*
  %586 = load i32, i32* %585
  %587 = sext i32 %586 to i64
  store i64 %587, i64* %RAX.i617, align 8
  store %struct.Memory* %loadMem_45e58a, %struct.Memory** %MEMORY
  %loadMem_45e58e = load %struct.Memory*, %struct.Memory** %MEMORY
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 33
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 1
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %593 to i64*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 5
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %RCX.i615 = bitcast %union.anon* %596 to i64*
  %597 = load i64, i64* %RAX.i614
  %598 = add i64 %597, 12099168
  %599 = load i64, i64* %PC.i613
  %600 = add i64 %599, 8
  store i64 %600, i64* %PC.i613
  %601 = inttoptr i64 %598 to i8*
  %602 = load i8, i8* %601
  %603 = zext i8 %602 to i64
  store i64 %603, i64* %RCX.i615, align 8
  store %struct.Memory* %loadMem_45e58e, %struct.Memory** %MEMORY
  %loadMem_45e596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 33
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %606 to i64*
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 5
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %ECX.i612 = bitcast %union.anon* %609 to i32*
  %610 = load i32, i32* %ECX.i612
  %611 = zext i32 %610 to i64
  %612 = load i64, i64* %PC.i611
  %613 = add i64 %612, 3
  store i64 %613, i64* %PC.i611
  %614 = sub i32 %610, 2
  %615 = icmp ult i32 %610, 2
  %616 = zext i1 %615 to i8
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %616, i8* %617, align 1
  %618 = and i32 %614, 255
  %619 = call i32 @llvm.ctpop.i32(i32 %618)
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  %622 = xor i8 %621, 1
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %622, i8* %623, align 1
  %624 = xor i64 2, %611
  %625 = trunc i64 %624 to i32
  %626 = xor i32 %625, %614
  %627 = lshr i32 %626, 4
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %629, i8* %630, align 1
  %631 = icmp eq i32 %614, 0
  %632 = zext i1 %631 to i8
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %632, i8* %633, align 1
  %634 = lshr i32 %614, 31
  %635 = trunc i32 %634 to i8
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %635, i8* %636, align 1
  %637 = lshr i32 %610, 31
  %638 = xor i32 %634, %637
  %639 = add i32 %638, %637
  %640 = icmp eq i32 %639, 2
  %641 = zext i1 %640 to i8
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %641, i8* %642, align 1
  store %struct.Memory* %loadMem_45e596, %struct.Memory** %MEMORY
  %loadMem_45e599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 33
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %645 to i64*
  %646 = load i64, i64* %PC.i610
  %647 = add i64 %646, 11
  %648 = load i64, i64* %PC.i610
  %649 = add i64 %648, 6
  %650 = load i64, i64* %PC.i610
  %651 = add i64 %650, 6
  store i64 %651, i64* %PC.i610
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %653 = load i8, i8* %652, align 1
  %654 = icmp eq i8 %653, 0
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %BRANCH_TAKEN, align 1
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %657 = select i1 %654, i64 %647, i64 %649
  store i64 %657, i64* %656, align 8
  store %struct.Memory* %loadMem_45e599, %struct.Memory** %MEMORY
  %loadBr_45e599 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e599 = icmp eq i8 %loadBr_45e599, 1
  br i1 %cmpBr_45e599, label %block_.L_45e5a4, label %block_.L_45e59f

block_.L_45e59f:                                  ; preds = %block_45e58a, %entry
  %loadMem_45e59f = load %struct.Memory*, %struct.Memory** %MEMORY
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 33
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %660 to i64*
  %661 = load i64, i64* %PC.i609
  %662 = add i64 %661, 118
  %663 = load i64, i64* %PC.i609
  %664 = add i64 %663, 5
  store i64 %664, i64* %PC.i609
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %662, i64* %665, align 8
  store %struct.Memory* %loadMem_45e59f, %struct.Memory** %MEMORY
  br label %block_.L_45e615

block_.L_45e5a4:                                  ; preds = %block_45e58a
  %loadMem_45e5a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 33
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %668 to i64*
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 11
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %RDI.i608 = bitcast %union.anon* %671 to i64*
  %672 = load i64, i64* %PC.i607
  %673 = add i64 %672, 10
  store i64 %673, i64* %PC.i607
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i608, align 8
  store %struct.Memory* %loadMem_45e5a4, %struct.Memory** %MEMORY
  %loadMem_45e5ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 33
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 9
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %RSI.i606 = bitcast %union.anon* %679 to i64*
  %680 = load i64, i64* %PC.i605
  %681 = add i64 %680, 5
  store i64 %681, i64* %PC.i605
  store i64 4714, i64* %RSI.i606, align 8
  store %struct.Memory* %loadMem_45e5ae, %struct.Memory** %MEMORY
  %loadMem_45e5b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 33
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %684 to i64*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 7
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %RDX.i604 = bitcast %union.anon* %687 to i64*
  %688 = load i64, i64* %PC.i603
  %689 = add i64 %688, 10
  store i64 %689, i64* %PC.i603
  store i64 ptrtoint (%G__0x57a4d2_type* @G__0x57a4d2 to i64), i64* %RDX.i604, align 8
  store %struct.Memory* %loadMem_45e5b3, %struct.Memory** %MEMORY
  %loadMem_45e5bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 33
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 1
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %695 to i64*
  %696 = load i64, i64* %PC.i601
  %697 = add i64 %696, 5
  store i64 %697, i64* %PC.i601
  store i64 20, i64* %RAX.i602, align 8
  store %struct.Memory* %loadMem_45e5bd, %struct.Memory** %MEMORY
  %loadMem_45e5c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 33
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 5
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %RCX.i599 = bitcast %union.anon* %703 to i64*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 15
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %706 to i64*
  %707 = load i64, i64* %RBP.i600
  %708 = sub i64 %707, 32
  %709 = load i64, i64* %PC.i598
  %710 = add i64 %709, 3
  store i64 %710, i64* %PC.i598
  %711 = inttoptr i64 %708 to i32*
  %712 = load i32, i32* %711
  %713 = zext i32 %712 to i64
  store i64 %713, i64* %RCX.i599, align 8
  store %struct.Memory* %loadMem_45e5c2, %struct.Memory** %MEMORY
  %loadMem_45e5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 33
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 1
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %EAX.i596 = bitcast %union.anon* %719 to i32*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 15
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %722 to i64*
  %723 = load i64, i64* %RBP.i597
  %724 = sub i64 %723, 520
  %725 = load i32, i32* %EAX.i596
  %726 = zext i32 %725 to i64
  %727 = load i64, i64* %PC.i595
  %728 = add i64 %727, 6
  store i64 %728, i64* %PC.i595
  %729 = inttoptr i64 %724 to i32*
  store i32 %725, i32* %729
  store %struct.Memory* %loadMem_45e5c5, %struct.Memory** %MEMORY
  %loadMem_45e5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 33
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %732 to i64*
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 5
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %ECX.i593 = bitcast %union.anon* %735 to i32*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 1
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %RAX.i594 = bitcast %union.anon* %738 to i64*
  %739 = load i32, i32* %ECX.i593
  %740 = zext i32 %739 to i64
  %741 = load i64, i64* %PC.i592
  %742 = add i64 %741, 2
  store i64 %742, i64* %PC.i592
  %743 = and i64 %740, 4294967295
  store i64 %743, i64* %RAX.i594, align 8
  store %struct.Memory* %loadMem_45e5cb, %struct.Memory** %MEMORY
  %loadMem_45e5cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 33
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %746 to i64*
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 7
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %RDX.i590 = bitcast %union.anon* %749 to i64*
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 15
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %752 to i64*
  %753 = load i64, i64* %RBP.i591
  %754 = sub i64 %753, 528
  %755 = load i64, i64* %RDX.i590
  %756 = load i64, i64* %PC.i589
  %757 = add i64 %756, 7
  store i64 %757, i64* %PC.i589
  %758 = inttoptr i64 %754 to i64*
  store i64 %755, i64* %758
  store %struct.Memory* %loadMem_45e5cd, %struct.Memory** %MEMORY
  %loadMem_45e5d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 33
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %761 to i64*
  %762 = load i64, i64* %PC.i588
  %763 = add i64 %762, 1
  store i64 %763, i64* %PC.i588
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %766 = bitcast %union.anon* %765 to i32*
  %767 = load i32, i32* %766, align 8
  %768 = sext i32 %767 to i64
  %769 = lshr i64 %768, 32
  store i64 %769, i64* %764, align 8
  store %struct.Memory* %loadMem_45e5d4, %struct.Memory** %MEMORY
  %loadMem_45e5d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 33
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %772 to i64*
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 5
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %RCX.i586 = bitcast %union.anon* %775 to i64*
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 15
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %RBP.i587 = bitcast %union.anon* %778 to i64*
  %779 = load i64, i64* %RBP.i587
  %780 = sub i64 %779, 520
  %781 = load i64, i64* %PC.i585
  %782 = add i64 %781, 6
  store i64 %782, i64* %PC.i585
  %783 = inttoptr i64 %780 to i32*
  %784 = load i32, i32* %783
  %785 = zext i32 %784 to i64
  store i64 %785, i64* %RCX.i586, align 8
  store %struct.Memory* %loadMem_45e5d5, %struct.Memory** %MEMORY
  %loadMem_45e5db = load %struct.Memory*, %struct.Memory** %MEMORY
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 33
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %788 to i64*
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 5
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %ECX.i581 = bitcast %union.anon* %791 to i32*
  %792 = load i32, i32* %ECX.i581
  %793 = zext i32 %792 to i64
  %794 = load i64, i64* %PC.i580
  %795 = add i64 %794, 2
  store i64 %795, i64* %PC.i580
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %797 = bitcast %union.anon* %796 to i32*
  %798 = load i32, i32* %797, align 8
  %799 = zext i32 %798 to i64
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %801 = bitcast %union.anon* %800 to i32*
  %802 = load i32, i32* %801, align 8
  %803 = zext i32 %802 to i64
  %804 = shl i64 %793, 32
  %805 = ashr exact i64 %804, 32
  %806 = shl i64 %803, 32
  %807 = or i64 %806, %799
  %808 = sdiv i64 %807, %805
  %809 = shl i64 %808, 32
  %810 = ashr exact i64 %809, 32
  %811 = icmp eq i64 %808, %810
  br i1 %811, label %816, label %812

; <label>:812:                                    ; preds = %block_.L_45e5a4
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %814 = load i64, i64* %813, align 8
  %815 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %814, %struct.Memory* %loadMem_45e5db)
  br label %routine_idivl__ecx.exit582

; <label>:816:                                    ; preds = %block_.L_45e5a4
  %817 = srem i64 %807, %805
  %818 = getelementptr inbounds %union.anon, %union.anon* %796, i64 0, i32 0
  %819 = and i64 %808, 4294967295
  store i64 %819, i64* %818, align 8
  %820 = getelementptr inbounds %union.anon, %union.anon* %800, i64 0, i32 0
  %821 = and i64 %817, 4294967295
  store i64 %821, i64* %820, align 8
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %822, align 1
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %823, align 1
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %824, align 1
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %825, align 1
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %826, align 1
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %827, align 1
  br label %routine_idivl__ecx.exit582

routine_idivl__ecx.exit582:                       ; preds = %812, %816
  %828 = phi %struct.Memory* [ %815, %812 ], [ %loadMem_45e5db, %816 ]
  store %struct.Memory* %828, %struct.Memory** %MEMORY
  %loadMem_45e5dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 33
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 1
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RAX.i579 = bitcast %union.anon* %834 to i64*
  %835 = load i64, i64* %RAX.i579
  %836 = load i64, i64* %PC.i578
  %837 = add i64 %836, 3
  store i64 %837, i64* %PC.i578
  %838 = trunc i64 %835 to i32
  %839 = sub i32 %838, 1
  %840 = zext i32 %839 to i64
  store i64 %840, i64* %RAX.i579, align 8
  %841 = icmp ult i32 %838, 1
  %842 = zext i1 %841 to i8
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %842, i8* %843, align 1
  %844 = and i32 %839, 255
  %845 = call i32 @llvm.ctpop.i32(i32 %844)
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  %848 = xor i8 %847, 1
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %848, i8* %849, align 1
  %850 = xor i64 1, %835
  %851 = trunc i64 %850 to i32
  %852 = xor i32 %851, %839
  %853 = lshr i32 %852, 4
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %855, i8* %856, align 1
  %857 = icmp eq i32 %839, 0
  %858 = zext i1 %857 to i8
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %858, i8* %859, align 1
  %860 = lshr i32 %839, 31
  %861 = trunc i32 %860 to i8
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %861, i8* %862, align 1
  %863 = lshr i32 %838, 31
  %864 = xor i32 %860, %863
  %865 = add i32 %864, %863
  %866 = icmp eq i32 %865, 2
  %867 = zext i1 %866 to i8
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %867, i8* %868, align 1
  store %struct.Memory* %loadMem_45e5dd, %struct.Memory** %MEMORY
  %loadMem_45e5e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 33
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %871 to i64*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 17
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %R8D.i576 = bitcast %union.anon* %874 to i32*
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 15
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %877 to i64*
  %878 = bitcast i32* %R8D.i576 to i64*
  %879 = load i64, i64* %RBP.i577
  %880 = sub i64 %879, 32
  %881 = load i64, i64* %PC.i575
  %882 = add i64 %881, 4
  store i64 %882, i64* %PC.i575
  %883 = inttoptr i64 %880 to i32*
  %884 = load i32, i32* %883
  %885 = zext i32 %884 to i64
  store i64 %885, i64* %878, align 8
  store %struct.Memory* %loadMem_45e5e0, %struct.Memory** %MEMORY
  %loadMem_45e5e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 33
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 1
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %EAX.i573 = bitcast %union.anon* %891 to i32*
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 15
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %894 to i64*
  %895 = load i64, i64* %RBP.i574
  %896 = sub i64 %895, 532
  %897 = load i32, i32* %EAX.i573
  %898 = zext i32 %897 to i64
  %899 = load i64, i64* %PC.i572
  %900 = add i64 %899, 6
  store i64 %900, i64* %PC.i572
  %901 = inttoptr i64 %896 to i32*
  store i32 %897, i32* %901
  store %struct.Memory* %loadMem_45e5e4, %struct.Memory** %MEMORY
  %loadMem_45e5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 33
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %904 to i64*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 17
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %R8D.i570 = bitcast %union.anon* %907 to i32*
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 1
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %RAX.i571 = bitcast %union.anon* %910 to i64*
  %911 = load i32, i32* %R8D.i570
  %912 = zext i32 %911 to i64
  %913 = load i64, i64* %PC.i569
  %914 = add i64 %913, 3
  store i64 %914, i64* %PC.i569
  %915 = and i64 %912, 4294967295
  store i64 %915, i64* %RAX.i571, align 8
  store %struct.Memory* %loadMem_45e5ea, %struct.Memory** %MEMORY
  %loadMem_45e5ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 33
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %918 to i64*
  %919 = load i64, i64* %PC.i568
  %920 = add i64 %919, 1
  store i64 %920, i64* %PC.i568
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %923 = bitcast %union.anon* %922 to i32*
  %924 = load i32, i32* %923, align 8
  %925 = sext i32 %924 to i64
  %926 = lshr i64 %925, 32
  store i64 %926, i64* %921, align 8
  store %struct.Memory* %loadMem_45e5ed, %struct.Memory** %MEMORY
  %loadMem_45e5ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 33
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %929 to i64*
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %931 = getelementptr inbounds %struct.GPR, %struct.GPR* %930, i32 0, i32 5
  %932 = getelementptr inbounds %struct.Reg, %struct.Reg* %931, i32 0, i32 0
  %ECX.i564 = bitcast %union.anon* %932 to i32*
  %933 = load i32, i32* %ECX.i564
  %934 = zext i32 %933 to i64
  %935 = load i64, i64* %PC.i563
  %936 = add i64 %935, 2
  store i64 %936, i64* %PC.i563
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %938 = bitcast %union.anon* %937 to i32*
  %939 = load i32, i32* %938, align 8
  %940 = zext i32 %939 to i64
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %942 = bitcast %union.anon* %941 to i32*
  %943 = load i32, i32* %942, align 8
  %944 = zext i32 %943 to i64
  %945 = shl i64 %934, 32
  %946 = ashr exact i64 %945, 32
  %947 = shl i64 %944, 32
  %948 = or i64 %947, %940
  %949 = sdiv i64 %948, %946
  %950 = shl i64 %949, 32
  %951 = ashr exact i64 %950, 32
  %952 = icmp eq i64 %949, %951
  br i1 %952, label %957, label %953

; <label>:953:                                    ; preds = %routine_idivl__ecx.exit582
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %955 = load i64, i64* %954, align 8
  %956 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %955, %struct.Memory* %loadMem_45e5ee)
  br label %routine_idivl__ecx.exit565

; <label>:957:                                    ; preds = %routine_idivl__ecx.exit582
  %958 = srem i64 %948, %946
  %959 = getelementptr inbounds %union.anon, %union.anon* %937, i64 0, i32 0
  %960 = and i64 %949, 4294967295
  store i64 %960, i64* %959, align 8
  %961 = getelementptr inbounds %union.anon, %union.anon* %941, i64 0, i32 0
  %962 = and i64 %958, 4294967295
  store i64 %962, i64* %961, align 8
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %963, align 1
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %964, align 1
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %965, align 1
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %966, align 1
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %967, align 1
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %968, align 1
  br label %routine_idivl__ecx.exit565

routine_idivl__ecx.exit565:                       ; preds = %953, %957
  %969 = phi %struct.Memory* [ %956, %953 ], [ %loadMem_45e5ee, %957 ]
  store %struct.Memory* %969, %struct.Memory** %MEMORY
  %loadMem_45e5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 33
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %972 to i64*
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 7
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %RDX.i562 = bitcast %union.anon* %975 to i64*
  %976 = load i64, i64* %RDX.i562
  %977 = load i64, i64* %PC.i561
  %978 = add i64 %977, 3
  store i64 %978, i64* %PC.i561
  %979 = trunc i64 %976 to i32
  %980 = sub i32 %979, 1
  %981 = zext i32 %980 to i64
  store i64 %981, i64* %RDX.i562, align 8
  %982 = icmp ult i32 %979, 1
  %983 = zext i1 %982 to i8
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %983, i8* %984, align 1
  %985 = and i32 %980, 255
  %986 = call i32 @llvm.ctpop.i32(i32 %985)
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  %989 = xor i8 %988, 1
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %989, i8* %990, align 1
  %991 = xor i64 1, %976
  %992 = trunc i64 %991 to i32
  %993 = xor i32 %992, %980
  %994 = lshr i32 %993, 4
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %996, i8* %997, align 1
  %998 = icmp eq i32 %980, 0
  %999 = zext i1 %998 to i8
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %999, i8* %1000, align 1
  %1001 = lshr i32 %980, 31
  %1002 = trunc i32 %1001 to i8
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1002, i8* %1003, align 1
  %1004 = lshr i32 %979, 31
  %1005 = xor i32 %1001, %1004
  %1006 = add i32 %1005, %1004
  %1007 = icmp eq i32 %1006, 2
  %1008 = zext i1 %1007 to i8
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1008, i8* %1009, align 1
  store %struct.Memory* %loadMem_45e5f0, %struct.Memory** %MEMORY
  %loadMem_45e5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 33
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %1012 to i64*
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 15
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %RBP.i559 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 19
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %R9.i560 = bitcast %union.anon* %1018 to i64*
  %1019 = load i64, i64* %RBP.i559
  %1020 = sub i64 %1019, 528
  %1021 = load i64, i64* %PC.i558
  %1022 = add i64 %1021, 7
  store i64 %1022, i64* %PC.i558
  %1023 = inttoptr i64 %1020 to i64*
  %1024 = load i64, i64* %1023
  store i64 %1024, i64* %R9.i560, align 8
  store %struct.Memory* %loadMem_45e5f3, %struct.Memory** %MEMORY
  %loadMem_45e5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 33
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %1027 to i64*
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 7
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %EDX.i556 = bitcast %union.anon* %1030 to i32*
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 15
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %1033 to i64*
  %1034 = load i64, i64* %RBP.i557
  %1035 = sub i64 %1034, 536
  %1036 = load i32, i32* %EDX.i556
  %1037 = zext i32 %1036 to i64
  %1038 = load i64, i64* %PC.i555
  %1039 = add i64 %1038, 6
  store i64 %1039, i64* %PC.i555
  %1040 = inttoptr i64 %1035 to i32*
  store i32 %1036, i32* %1040
  store %struct.Memory* %loadMem_45e5fa, %struct.Memory** %MEMORY
  %loadMem_45e600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 33
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 7
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RDX.i553 = bitcast %union.anon* %1046 to i64*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 19
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %R9.i554 = bitcast %union.anon* %1049 to i64*
  %1050 = load i64, i64* %R9.i554
  %1051 = load i64, i64* %PC.i552
  %1052 = add i64 %1051, 3
  store i64 %1052, i64* %PC.i552
  store i64 %1050, i64* %RDX.i553, align 8
  store %struct.Memory* %loadMem_45e600, %struct.Memory** %MEMORY
  %loadMem_45e603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 33
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %1055 to i64*
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 5
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %RCX.i550 = bitcast %union.anon* %1058 to i64*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 15
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %1061 to i64*
  %1062 = load i64, i64* %RBP.i551
  %1063 = sub i64 %1062, 532
  %1064 = load i64, i64* %PC.i549
  %1065 = add i64 %1064, 6
  store i64 %1065, i64* %PC.i549
  %1066 = inttoptr i64 %1063 to i32*
  %1067 = load i32, i32* %1066
  %1068 = zext i32 %1067 to i64
  store i64 %1068, i64* %RCX.i550, align 8
  store %struct.Memory* %loadMem_45e603, %struct.Memory** %MEMORY
  %loadMem_45e609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 33
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %1071 to i64*
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 17
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %R8D.i547 = bitcast %union.anon* %1074 to i32*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 15
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %1077 to i64*
  %1078 = bitcast i32* %R8D.i547 to i64*
  %1079 = load i64, i64* %RBP.i548
  %1080 = sub i64 %1079, 536
  %1081 = load i64, i64* %PC.i546
  %1082 = add i64 %1081, 7
  store i64 %1082, i64* %PC.i546
  %1083 = inttoptr i64 %1080 to i32*
  %1084 = load i32, i32* %1083
  %1085 = zext i32 %1084 to i64
  store i64 %1085, i64* %1078, align 8
  store %struct.Memory* %loadMem_45e609, %struct.Memory** %MEMORY
  %loadMem1_45e610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 33
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %1088 to i64*
  %1089 = load i64, i64* %PC.i545
  %1090 = add i64 %1089, -50560
  %1091 = load i64, i64* %PC.i545
  %1092 = add i64 %1091, 5
  %1093 = load i64, i64* %PC.i545
  %1094 = add i64 %1093, 5
  store i64 %1094, i64* %PC.i545
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1096 = load i64, i64* %1095, align 8
  %1097 = add i64 %1096, -8
  %1098 = inttoptr i64 %1097 to i64*
  store i64 %1092, i64* %1098
  store i64 %1097, i64* %1095, align 8
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1090, i64* %1099, align 8
  store %struct.Memory* %loadMem1_45e610, %struct.Memory** %MEMORY
  %loadMem2_45e610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e610 = load i64, i64* %3
  %call2_45e610 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_45e610, %struct.Memory* %loadMem2_45e610)
  store %struct.Memory* %call2_45e610, %struct.Memory** %MEMORY
  br label %block_.L_45e615

block_.L_45e615:                                  ; preds = %routine_idivl__ecx.exit565, %block_.L_45e59f
  %loadMem_45e615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 33
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %1102 to i64*
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 11
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %RDI.i543 = bitcast %union.anon* %1105 to i64*
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 15
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %1108 to i64*
  %1109 = load i64, i64* %RBP.i544
  %1110 = sub i64 %1109, 32
  %1111 = load i64, i64* %PC.i542
  %1112 = add i64 %1111, 3
  store i64 %1112, i64* %PC.i542
  %1113 = inttoptr i64 %1110 to i32*
  %1114 = load i32, i32* %1113
  %1115 = zext i32 %1114 to i64
  store i64 %1115, i64* %RDI.i543, align 8
  store %struct.Memory* %loadMem_45e615, %struct.Memory** %MEMORY
  %loadMem1_45e618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 33
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %1118 to i64*
  %1119 = load i64, i64* %PC.i541
  %1120 = add i64 %1119, -323224
  %1121 = load i64, i64* %PC.i541
  %1122 = add i64 %1121, 5
  %1123 = load i64, i64* %PC.i541
  %1124 = add i64 %1123, 5
  store i64 %1124, i64* %PC.i541
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1126 = load i64, i64* %1125, align 8
  %1127 = add i64 %1126, -8
  %1128 = inttoptr i64 %1127 to i64*
  store i64 %1122, i64* %1128
  store i64 %1127, i64* %1125, align 8
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1120, i64* %1129, align 8
  store %struct.Memory* %loadMem1_45e618, %struct.Memory** %MEMORY
  %loadMem2_45e618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e618 = load i64, i64* %3
  %call2_45e618 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_45e618, %struct.Memory* %loadMem2_45e618)
  store %struct.Memory* %call2_45e618, %struct.Memory** %MEMORY
  %loadMem_45e61d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 33
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %1132 to i64*
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 1
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %EAX.i540 = bitcast %union.anon* %1135 to i32*
  %1136 = load i32, i32* %EAX.i540
  %1137 = zext i32 %1136 to i64
  %1138 = load i64, i64* %PC.i539
  %1139 = add i64 %1138, 3
  store i64 %1139, i64* %PC.i539
  %1140 = sub i32 %1136, 2
  %1141 = icmp ult i32 %1136, 2
  %1142 = zext i1 %1141 to i8
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1142, i8* %1143, align 1
  %1144 = and i32 %1140, 255
  %1145 = call i32 @llvm.ctpop.i32(i32 %1144)
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  %1148 = xor i8 %1147, 1
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1148, i8* %1149, align 1
  %1150 = xor i64 2, %1137
  %1151 = trunc i64 %1150 to i32
  %1152 = xor i32 %1151, %1140
  %1153 = lshr i32 %1152, 4
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1155, i8* %1156, align 1
  %1157 = icmp eq i32 %1140, 0
  %1158 = zext i1 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1158, i8* %1159, align 1
  %1160 = lshr i32 %1140, 31
  %1161 = trunc i32 %1160 to i8
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1161, i8* %1162, align 1
  %1163 = lshr i32 %1136, 31
  %1164 = xor i32 %1160, %1163
  %1165 = add i32 %1164, %1163
  %1166 = icmp eq i32 %1165, 2
  %1167 = zext i1 %1166 to i8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1167, i8* %1168, align 1
  store %struct.Memory* %loadMem_45e61d, %struct.Memory** %MEMORY
  %loadMem_45e620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 33
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %1171 to i64*
  %1172 = load i64, i64* %PC.i538
  %1173 = add i64 %1172, 11
  %1174 = load i64, i64* %PC.i538
  %1175 = add i64 %1174, 6
  %1176 = load i64, i64* %PC.i538
  %1177 = add i64 %1176, 6
  store i64 %1177, i64* %PC.i538
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1179 = load i8, i8* %1178, align 1
  %1180 = icmp eq i8 %1179, 0
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %BRANCH_TAKEN, align 1
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1183 = select i1 %1180, i64 %1173, i64 %1175
  store i64 %1183, i64* %1182, align 8
  store %struct.Memory* %loadMem_45e620, %struct.Memory** %MEMORY
  %loadBr_45e620 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e620 = icmp eq i8 %loadBr_45e620, 1
  br i1 %cmpBr_45e620, label %block_.L_45e62b, label %block_45e626

block_45e626:                                     ; preds = %block_.L_45e615
  %loadMem_45e626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 33
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %1186 to i64*
  %1187 = load i64, i64* %PC.i537
  %1188 = add i64 %1187, 118
  %1189 = load i64, i64* %PC.i537
  %1190 = add i64 %1189, 5
  store i64 %1190, i64* %PC.i537
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1188, i64* %1191, align 8
  store %struct.Memory* %loadMem_45e626, %struct.Memory** %MEMORY
  br label %block_.L_45e69c

block_.L_45e62b:                                  ; preds = %block_.L_45e615
  %loadMem_45e62b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1193 = getelementptr inbounds %struct.GPR, %struct.GPR* %1192, i32 0, i32 33
  %1194 = getelementptr inbounds %struct.Reg, %struct.Reg* %1193, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %1194 to i64*
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 11
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %RDI.i536 = bitcast %union.anon* %1197 to i64*
  %1198 = load i64, i64* %PC.i535
  %1199 = add i64 %1198, 10
  store i64 %1199, i64* %PC.i535
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i536, align 8
  store %struct.Memory* %loadMem_45e62b, %struct.Memory** %MEMORY
  %loadMem_45e635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 33
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 9
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %RSI.i534 = bitcast %union.anon* %1205 to i64*
  %1206 = load i64, i64* %PC.i533
  %1207 = add i64 %1206, 5
  store i64 %1207, i64* %PC.i533
  store i64 4715, i64* %RSI.i534, align 8
  store %struct.Memory* %loadMem_45e635, %struct.Memory** %MEMORY
  %loadMem_45e63a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 33
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %1210 to i64*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 7
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %RDX.i532 = bitcast %union.anon* %1213 to i64*
  %1214 = load i64, i64* %PC.i531
  %1215 = add i64 %1214, 10
  store i64 %1215, i64* %PC.i531
  store i64 ptrtoint (%G__0x57fd27_type* @G__0x57fd27 to i64), i64* %RDX.i532, align 8
  store %struct.Memory* %loadMem_45e63a, %struct.Memory** %MEMORY
  %loadMem_45e644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 33
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %1218 to i64*
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 1
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %RAX.i530 = bitcast %union.anon* %1221 to i64*
  %1222 = load i64, i64* %PC.i529
  %1223 = add i64 %1222, 5
  store i64 %1223, i64* %PC.i529
  store i64 20, i64* %RAX.i530, align 8
  store %struct.Memory* %loadMem_45e644, %struct.Memory** %MEMORY
  %loadMem_45e649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 33
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %1226 to i64*
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 5
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %RCX.i527 = bitcast %union.anon* %1229 to i64*
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 15
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %1232 to i64*
  %1233 = load i64, i64* %RBP.i528
  %1234 = sub i64 %1233, 32
  %1235 = load i64, i64* %PC.i526
  %1236 = add i64 %1235, 3
  store i64 %1236, i64* %PC.i526
  %1237 = inttoptr i64 %1234 to i32*
  %1238 = load i32, i32* %1237
  %1239 = zext i32 %1238 to i64
  store i64 %1239, i64* %RCX.i527, align 8
  store %struct.Memory* %loadMem_45e649, %struct.Memory** %MEMORY
  %loadMem_45e64c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 33
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %1242 to i64*
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1244 = getelementptr inbounds %struct.GPR, %struct.GPR* %1243, i32 0, i32 1
  %1245 = getelementptr inbounds %struct.Reg, %struct.Reg* %1244, i32 0, i32 0
  %EAX.i524 = bitcast %union.anon* %1245 to i32*
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 15
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %1248 to i64*
  %1249 = load i64, i64* %RBP.i525
  %1250 = sub i64 %1249, 540
  %1251 = load i32, i32* %EAX.i524
  %1252 = zext i32 %1251 to i64
  %1253 = load i64, i64* %PC.i523
  %1254 = add i64 %1253, 6
  store i64 %1254, i64* %PC.i523
  %1255 = inttoptr i64 %1250 to i32*
  store i32 %1251, i32* %1255
  store %struct.Memory* %loadMem_45e64c, %struct.Memory** %MEMORY
  %loadMem_45e652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 33
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %1258 to i64*
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 5
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %ECX.i521 = bitcast %union.anon* %1261 to i32*
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 1
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %RAX.i522 = bitcast %union.anon* %1264 to i64*
  %1265 = load i32, i32* %ECX.i521
  %1266 = zext i32 %1265 to i64
  %1267 = load i64, i64* %PC.i520
  %1268 = add i64 %1267, 2
  store i64 %1268, i64* %PC.i520
  %1269 = and i64 %1266, 4294967295
  store i64 %1269, i64* %RAX.i522, align 8
  store %struct.Memory* %loadMem_45e652, %struct.Memory** %MEMORY
  %loadMem_45e654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 33
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 7
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %RDX.i518 = bitcast %union.anon* %1275 to i64*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 15
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %1278 to i64*
  %1279 = load i64, i64* %RBP.i519
  %1280 = sub i64 %1279, 552
  %1281 = load i64, i64* %RDX.i518
  %1282 = load i64, i64* %PC.i517
  %1283 = add i64 %1282, 7
  store i64 %1283, i64* %PC.i517
  %1284 = inttoptr i64 %1280 to i64*
  store i64 %1281, i64* %1284
  store %struct.Memory* %loadMem_45e654, %struct.Memory** %MEMORY
  %loadMem_45e65b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 33
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %1287 to i64*
  %1288 = load i64, i64* %PC.i516
  %1289 = add i64 %1288, 1
  store i64 %1289, i64* %PC.i516
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1292 = bitcast %union.anon* %1291 to i32*
  %1293 = load i32, i32* %1292, align 8
  %1294 = sext i32 %1293 to i64
  %1295 = lshr i64 %1294, 32
  store i64 %1295, i64* %1290, align 8
  store %struct.Memory* %loadMem_45e65b, %struct.Memory** %MEMORY
  %loadMem_45e65c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 33
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 5
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 15
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %1304 to i64*
  %1305 = load i64, i64* %RBP.i515
  %1306 = sub i64 %1305, 540
  %1307 = load i64, i64* %PC.i513
  %1308 = add i64 %1307, 6
  store i64 %1308, i64* %PC.i513
  %1309 = inttoptr i64 %1306 to i32*
  %1310 = load i32, i32* %1309
  %1311 = zext i32 %1310 to i64
  store i64 %1311, i64* %RCX.i514, align 8
  store %struct.Memory* %loadMem_45e65c, %struct.Memory** %MEMORY
  %loadMem_45e662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 33
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 5
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %ECX.i509 = bitcast %union.anon* %1317 to i32*
  %1318 = load i32, i32* %ECX.i509
  %1319 = zext i32 %1318 to i64
  %1320 = load i64, i64* %PC.i508
  %1321 = add i64 %1320, 2
  store i64 %1321, i64* %PC.i508
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1323 = bitcast %union.anon* %1322 to i32*
  %1324 = load i32, i32* %1323, align 8
  %1325 = zext i32 %1324 to i64
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1327 = bitcast %union.anon* %1326 to i32*
  %1328 = load i32, i32* %1327, align 8
  %1329 = zext i32 %1328 to i64
  %1330 = shl i64 %1319, 32
  %1331 = ashr exact i64 %1330, 32
  %1332 = shl i64 %1329, 32
  %1333 = or i64 %1332, %1325
  %1334 = sdiv i64 %1333, %1331
  %1335 = shl i64 %1334, 32
  %1336 = ashr exact i64 %1335, 32
  %1337 = icmp eq i64 %1334, %1336
  br i1 %1337, label %1342, label %1338

; <label>:1338:                                   ; preds = %block_.L_45e62b
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1340 = load i64, i64* %1339, align 8
  %1341 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1340, %struct.Memory* %loadMem_45e662)
  br label %routine_idivl__ecx.exit510

; <label>:1342:                                   ; preds = %block_.L_45e62b
  %1343 = srem i64 %1333, %1331
  %1344 = getelementptr inbounds %union.anon, %union.anon* %1322, i64 0, i32 0
  %1345 = and i64 %1334, 4294967295
  store i64 %1345, i64* %1344, align 8
  %1346 = getelementptr inbounds %union.anon, %union.anon* %1326, i64 0, i32 0
  %1347 = and i64 %1343, 4294967295
  store i64 %1347, i64* %1346, align 8
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1348, align 1
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1349, align 1
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1350, align 1
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1351, align 1
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1352, align 1
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1353, align 1
  br label %routine_idivl__ecx.exit510

routine_idivl__ecx.exit510:                       ; preds = %1338, %1342
  %1354 = phi %struct.Memory* [ %1341, %1338 ], [ %loadMem_45e662, %1342 ]
  store %struct.Memory* %1354, %struct.Memory** %MEMORY
  %loadMem_45e664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 33
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 1
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RAX.i507 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %RAX.i507
  %1362 = load i64, i64* %PC.i506
  %1363 = add i64 %1362, 3
  store i64 %1363, i64* %PC.i506
  %1364 = trunc i64 %1361 to i32
  %1365 = sub i32 %1364, 1
  %1366 = zext i32 %1365 to i64
  store i64 %1366, i64* %RAX.i507, align 8
  %1367 = icmp ult i32 %1364, 1
  %1368 = zext i1 %1367 to i8
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1368, i8* %1369, align 1
  %1370 = and i32 %1365, 255
  %1371 = call i32 @llvm.ctpop.i32(i32 %1370)
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  %1374 = xor i8 %1373, 1
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1374, i8* %1375, align 1
  %1376 = xor i64 1, %1361
  %1377 = trunc i64 %1376 to i32
  %1378 = xor i32 %1377, %1365
  %1379 = lshr i32 %1378, 4
  %1380 = trunc i32 %1379 to i8
  %1381 = and i8 %1380, 1
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1381, i8* %1382, align 1
  %1383 = icmp eq i32 %1365, 0
  %1384 = zext i1 %1383 to i8
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1384, i8* %1385, align 1
  %1386 = lshr i32 %1365, 31
  %1387 = trunc i32 %1386 to i8
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1387, i8* %1388, align 1
  %1389 = lshr i32 %1364, 31
  %1390 = xor i32 %1386, %1389
  %1391 = add i32 %1390, %1389
  %1392 = icmp eq i32 %1391, 2
  %1393 = zext i1 %1392 to i8
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1393, i8* %1394, align 1
  store %struct.Memory* %loadMem_45e664, %struct.Memory** %MEMORY
  %loadMem_45e667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 33
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %1397 to i64*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 17
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %R8D.i504 = bitcast %union.anon* %1400 to i32*
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 15
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %1403 to i64*
  %1404 = bitcast i32* %R8D.i504 to i64*
  %1405 = load i64, i64* %RBP.i505
  %1406 = sub i64 %1405, 32
  %1407 = load i64, i64* %PC.i503
  %1408 = add i64 %1407, 4
  store i64 %1408, i64* %PC.i503
  %1409 = inttoptr i64 %1406 to i32*
  %1410 = load i32, i32* %1409
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %1404, align 8
  store %struct.Memory* %loadMem_45e667, %struct.Memory** %MEMORY
  %loadMem_45e66b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 33
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 1
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %EAX.i501 = bitcast %union.anon* %1417 to i32*
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 15
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %1420 to i64*
  %1421 = load i64, i64* %RBP.i502
  %1422 = sub i64 %1421, 556
  %1423 = load i32, i32* %EAX.i501
  %1424 = zext i32 %1423 to i64
  %1425 = load i64, i64* %PC.i500
  %1426 = add i64 %1425, 6
  store i64 %1426, i64* %PC.i500
  %1427 = inttoptr i64 %1422 to i32*
  store i32 %1423, i32* %1427
  store %struct.Memory* %loadMem_45e66b, %struct.Memory** %MEMORY
  %loadMem_45e671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 33
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %1430 to i64*
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 17
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %R8D.i498 = bitcast %union.anon* %1433 to i32*
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 1
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %1436 to i64*
  %1437 = load i32, i32* %R8D.i498
  %1438 = zext i32 %1437 to i64
  %1439 = load i64, i64* %PC.i497
  %1440 = add i64 %1439, 3
  store i64 %1440, i64* %PC.i497
  %1441 = and i64 %1438, 4294967295
  store i64 %1441, i64* %RAX.i499, align 8
  store %struct.Memory* %loadMem_45e671, %struct.Memory** %MEMORY
  %loadMem_45e674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 33
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %1444 to i64*
  %1445 = load i64, i64* %PC.i496
  %1446 = add i64 %1445, 1
  store i64 %1446, i64* %PC.i496
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1449 = bitcast %union.anon* %1448 to i32*
  %1450 = load i32, i32* %1449, align 8
  %1451 = sext i32 %1450 to i64
  %1452 = lshr i64 %1451, 32
  store i64 %1452, i64* %1447, align 8
  store %struct.Memory* %loadMem_45e674, %struct.Memory** %MEMORY
  %loadMem_45e675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 33
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %1455 to i64*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 5
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %ECX.i492 = bitcast %union.anon* %1458 to i32*
  %1459 = load i32, i32* %ECX.i492
  %1460 = zext i32 %1459 to i64
  %1461 = load i64, i64* %PC.i491
  %1462 = add i64 %1461, 2
  store i64 %1462, i64* %PC.i491
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1464 = bitcast %union.anon* %1463 to i32*
  %1465 = load i32, i32* %1464, align 8
  %1466 = zext i32 %1465 to i64
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1468 = bitcast %union.anon* %1467 to i32*
  %1469 = load i32, i32* %1468, align 8
  %1470 = zext i32 %1469 to i64
  %1471 = shl i64 %1460, 32
  %1472 = ashr exact i64 %1471, 32
  %1473 = shl i64 %1470, 32
  %1474 = or i64 %1473, %1466
  %1475 = sdiv i64 %1474, %1472
  %1476 = shl i64 %1475, 32
  %1477 = ashr exact i64 %1476, 32
  %1478 = icmp eq i64 %1475, %1477
  br i1 %1478, label %1483, label %1479

; <label>:1479:                                   ; preds = %routine_idivl__ecx.exit510
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1481 = load i64, i64* %1480, align 8
  %1482 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1481, %struct.Memory* %loadMem_45e675)
  br label %routine_idivl__ecx.exit

; <label>:1483:                                   ; preds = %routine_idivl__ecx.exit510
  %1484 = srem i64 %1474, %1472
  %1485 = getelementptr inbounds %union.anon, %union.anon* %1463, i64 0, i32 0
  %1486 = and i64 %1475, 4294967295
  store i64 %1486, i64* %1485, align 8
  %1487 = getelementptr inbounds %union.anon, %union.anon* %1467, i64 0, i32 0
  %1488 = and i64 %1484, 4294967295
  store i64 %1488, i64* %1487, align 8
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1489, align 1
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1490, align 1
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1491, align 1
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1492, align 1
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1493, align 1
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1494, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1479, %1483
  %1495 = phi %struct.Memory* [ %1482, %1479 ], [ %loadMem_45e675, %1483 ]
  store %struct.Memory* %1495, %struct.Memory** %MEMORY
  %loadMem_45e677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 33
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %1498 to i64*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 7
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %RDX.i490 = bitcast %union.anon* %1501 to i64*
  %1502 = load i64, i64* %RDX.i490
  %1503 = load i64, i64* %PC.i489
  %1504 = add i64 %1503, 3
  store i64 %1504, i64* %PC.i489
  %1505 = trunc i64 %1502 to i32
  %1506 = sub i32 %1505, 1
  %1507 = zext i32 %1506 to i64
  store i64 %1507, i64* %RDX.i490, align 8
  %1508 = icmp ult i32 %1505, 1
  %1509 = zext i1 %1508 to i8
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1509, i8* %1510, align 1
  %1511 = and i32 %1506, 255
  %1512 = call i32 @llvm.ctpop.i32(i32 %1511)
  %1513 = trunc i32 %1512 to i8
  %1514 = and i8 %1513, 1
  %1515 = xor i8 %1514, 1
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1515, i8* %1516, align 1
  %1517 = xor i64 1, %1502
  %1518 = trunc i64 %1517 to i32
  %1519 = xor i32 %1518, %1506
  %1520 = lshr i32 %1519, 4
  %1521 = trunc i32 %1520 to i8
  %1522 = and i8 %1521, 1
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1522, i8* %1523, align 1
  %1524 = icmp eq i32 %1506, 0
  %1525 = zext i1 %1524 to i8
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1525, i8* %1526, align 1
  %1527 = lshr i32 %1506, 31
  %1528 = trunc i32 %1527 to i8
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1528, i8* %1529, align 1
  %1530 = lshr i32 %1505, 31
  %1531 = xor i32 %1527, %1530
  %1532 = add i32 %1531, %1530
  %1533 = icmp eq i32 %1532, 2
  %1534 = zext i1 %1533 to i8
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1534, i8* %1535, align 1
  store %struct.Memory* %loadMem_45e677, %struct.Memory** %MEMORY
  %loadMem_45e67a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 33
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %1538 to i64*
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 15
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %1541 to i64*
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 19
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %R9.i488 = bitcast %union.anon* %1544 to i64*
  %1545 = load i64, i64* %RBP.i487
  %1546 = sub i64 %1545, 552
  %1547 = load i64, i64* %PC.i486
  %1548 = add i64 %1547, 7
  store i64 %1548, i64* %PC.i486
  %1549 = inttoptr i64 %1546 to i64*
  %1550 = load i64, i64* %1549
  store i64 %1550, i64* %R9.i488, align 8
  store %struct.Memory* %loadMem_45e67a, %struct.Memory** %MEMORY
  %loadMem_45e681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 33
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %1553 to i64*
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 7
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %1556 to i32*
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 15
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %1559 to i64*
  %1560 = load i64, i64* %RBP.i485
  %1561 = sub i64 %1560, 560
  %1562 = load i32, i32* %EDX.i
  %1563 = zext i32 %1562 to i64
  %1564 = load i64, i64* %PC.i484
  %1565 = add i64 %1564, 6
  store i64 %1565, i64* %PC.i484
  %1566 = inttoptr i64 %1561 to i32*
  store i32 %1562, i32* %1566
  store %struct.Memory* %loadMem_45e681, %struct.Memory** %MEMORY
  %loadMem_45e687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 33
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 7
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RDX.i483 = bitcast %union.anon* %1572 to i64*
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 19
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %R9.i = bitcast %union.anon* %1575 to i64*
  %1576 = load i64, i64* %R9.i
  %1577 = load i64, i64* %PC.i482
  %1578 = add i64 %1577, 3
  store i64 %1578, i64* %PC.i482
  store i64 %1576, i64* %RDX.i483, align 8
  store %struct.Memory* %loadMem_45e687, %struct.Memory** %MEMORY
  %loadMem_45e68a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 33
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1581 to i64*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 5
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %RCX.i480 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 15
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %1587 to i64*
  %1588 = load i64, i64* %RBP.i481
  %1589 = sub i64 %1588, 556
  %1590 = load i64, i64* %PC.i479
  %1591 = add i64 %1590, 6
  store i64 %1591, i64* %PC.i479
  %1592 = inttoptr i64 %1589 to i32*
  %1593 = load i32, i32* %1592
  %1594 = zext i32 %1593 to i64
  store i64 %1594, i64* %RCX.i480, align 8
  store %struct.Memory* %loadMem_45e68a, %struct.Memory** %MEMORY
  %loadMem_45e690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 33
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 17
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %R8D.i477 = bitcast %union.anon* %1600 to i32*
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 15
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %1603 to i64*
  %1604 = bitcast i32* %R8D.i477 to i64*
  %1605 = load i64, i64* %RBP.i478
  %1606 = sub i64 %1605, 560
  %1607 = load i64, i64* %PC.i476
  %1608 = add i64 %1607, 7
  store i64 %1608, i64* %PC.i476
  %1609 = inttoptr i64 %1606 to i32*
  %1610 = load i32, i32* %1609
  %1611 = zext i32 %1610 to i64
  store i64 %1611, i64* %1604, align 8
  store %struct.Memory* %loadMem_45e690, %struct.Memory** %MEMORY
  %loadMem1_45e697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 33
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %1614 to i64*
  %1615 = load i64, i64* %PC.i475
  %1616 = add i64 %1615, -50695
  %1617 = load i64, i64* %PC.i475
  %1618 = add i64 %1617, 5
  %1619 = load i64, i64* %PC.i475
  %1620 = add i64 %1619, 5
  store i64 %1620, i64* %PC.i475
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1622 = load i64, i64* %1621, align 8
  %1623 = add i64 %1622, -8
  %1624 = inttoptr i64 %1623 to i64*
  store i64 %1618, i64* %1624
  store i64 %1623, i64* %1621, align 8
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1616, i64* %1625, align 8
  store %struct.Memory* %loadMem1_45e697, %struct.Memory** %MEMORY
  %loadMem2_45e697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e697 = load i64, i64* %3
  %call2_45e697 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_45e697, %struct.Memory* %loadMem2_45e697)
  store %struct.Memory* %call2_45e697, %struct.Memory** %MEMORY
  br label %block_.L_45e69c

block_.L_45e69c:                                  ; preds = %routine_idivl__ecx.exit, %block_45e626
  %loadMem_45e69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 33
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %1628 to i64*
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 1
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %1631 to i64*
  %1632 = load i64, i64* %PC.i473
  %1633 = add i64 %1632, 7
  store i64 %1633, i64* %PC.i473
  %1634 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %1635 = zext i32 %1634 to i64
  store i64 %1635, i64* %RAX.i474, align 8
  store %struct.Memory* %loadMem_45e69c, %struct.Memory** %MEMORY
  %loadMem_45e6a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 33
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %1638 to i64*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 5
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %RCX.i472 = bitcast %union.anon* %1641 to i64*
  %1642 = load i64, i64* %PC.i471
  %1643 = add i64 %1642, 7
  store i64 %1643, i64* %PC.i471
  %1644 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*)
  %1645 = zext i32 %1644 to i64
  store i64 %1645, i64* %RCX.i472, align 8
  store %struct.Memory* %loadMem_45e6a3, %struct.Memory** %MEMORY
  %loadMem_45e6aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 33
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %1648 to i64*
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 5
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %1651 to i64*
  %1652 = load i64, i64* %RCX.i470
  %1653 = load i64, i64* %PC.i469
  %1654 = add i64 %1653, 3
  store i64 %1654, i64* %PC.i469
  %1655 = trunc i64 %1652 to i32
  %1656 = add i32 20, %1655
  %1657 = zext i32 %1656 to i64
  store i64 %1657, i64* %RCX.i470, align 8
  %1658 = icmp ult i32 %1656, %1655
  %1659 = icmp ult i32 %1656, 20
  %1660 = or i1 %1658, %1659
  %1661 = zext i1 %1660 to i8
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1661, i8* %1662, align 1
  %1663 = and i32 %1656, 255
  %1664 = call i32 @llvm.ctpop.i32(i32 %1663)
  %1665 = trunc i32 %1664 to i8
  %1666 = and i8 %1665, 1
  %1667 = xor i8 %1666, 1
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1667, i8* %1668, align 1
  %1669 = xor i64 20, %1652
  %1670 = trunc i64 %1669 to i32
  %1671 = xor i32 %1670, %1656
  %1672 = lshr i32 %1671, 4
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1674, i8* %1675, align 1
  %1676 = icmp eq i32 %1656, 0
  %1677 = zext i1 %1676 to i8
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1677, i8* %1678, align 1
  %1679 = lshr i32 %1656, 31
  %1680 = trunc i32 %1679 to i8
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1680, i8* %1681, align 1
  %1682 = lshr i32 %1655, 31
  %1683 = xor i32 %1679, %1682
  %1684 = add i32 %1683, %1679
  %1685 = icmp eq i32 %1684, 2
  %1686 = zext i1 %1685 to i8
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1686, i8* %1687, align 1
  store %struct.Memory* %loadMem_45e6aa, %struct.Memory** %MEMORY
  %loadMem_45e6ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 33
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %1690 to i64*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 1
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %EAX.i467 = bitcast %union.anon* %1693 to i32*
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 5
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %ECX.i468 = bitcast %union.anon* %1696 to i32*
  %1697 = load i32, i32* %EAX.i467
  %1698 = zext i32 %1697 to i64
  %1699 = load i32, i32* %ECX.i468
  %1700 = zext i32 %1699 to i64
  %1701 = load i64, i64* %PC.i466
  %1702 = add i64 %1701, 2
  store i64 %1702, i64* %PC.i466
  %1703 = sub i32 %1697, %1699
  %1704 = icmp ult i32 %1697, %1699
  %1705 = zext i1 %1704 to i8
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1705, i8* %1706, align 1
  %1707 = and i32 %1703, 255
  %1708 = call i32 @llvm.ctpop.i32(i32 %1707)
  %1709 = trunc i32 %1708 to i8
  %1710 = and i8 %1709, 1
  %1711 = xor i8 %1710, 1
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1711, i8* %1712, align 1
  %1713 = xor i64 %1700, %1698
  %1714 = trunc i64 %1713 to i32
  %1715 = xor i32 %1714, %1703
  %1716 = lshr i32 %1715, 4
  %1717 = trunc i32 %1716 to i8
  %1718 = and i8 %1717, 1
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1718, i8* %1719, align 1
  %1720 = icmp eq i32 %1703, 0
  %1721 = zext i1 %1720 to i8
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1721, i8* %1722, align 1
  %1723 = lshr i32 %1703, 31
  %1724 = trunc i32 %1723 to i8
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1724, i8* %1725, align 1
  %1726 = lshr i32 %1697, 31
  %1727 = lshr i32 %1699, 31
  %1728 = xor i32 %1727, %1726
  %1729 = xor i32 %1723, %1726
  %1730 = add i32 %1729, %1728
  %1731 = icmp eq i32 %1730, 2
  %1732 = zext i1 %1731 to i8
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1732, i8* %1733, align 1
  store %struct.Memory* %loadMem_45e6ad, %struct.Memory** %MEMORY
  %loadMem_45e6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 33
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %1736 to i64*
  %1737 = load i64, i64* %PC.i465
  %1738 = add i64 %1737, 113
  %1739 = load i64, i64* %PC.i465
  %1740 = add i64 %1739, 6
  %1741 = load i64, i64* %PC.i465
  %1742 = add i64 %1741, 6
  store i64 %1742, i64* %PC.i465
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1744 = load i8, i8* %1743, align 1
  %1745 = icmp ne i8 %1744, 0
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1747 = load i8, i8* %1746, align 1
  %1748 = icmp ne i8 %1747, 0
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1750 = load i8, i8* %1749, align 1
  %1751 = icmp ne i8 %1750, 0
  %1752 = xor i1 %1748, %1751
  %1753 = or i1 %1745, %1752
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %BRANCH_TAKEN, align 1
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1756 = select i1 %1753, i64 %1738, i64 %1740
  store i64 %1756, i64* %1755, align 8
  store %struct.Memory* %loadMem_45e6af, %struct.Memory** %MEMORY
  %loadBr_45e6af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e6af = icmp eq i8 %loadBr_45e6af, 1
  br i1 %cmpBr_45e6af, label %block_.L_45e720, label %block_45e6b5

block_45e6b5:                                     ; preds = %block_.L_45e69c
  %loadMem_45e6b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 33
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %1759 to i64*
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 1
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %1762 to i64*
  %1763 = load i64, i64* %PC.i463
  %1764 = add i64 %1763, 5
  store i64 %1764, i64* %PC.i463
  store i64 3, i64* %RAX.i464, align 8
  store %struct.Memory* %loadMem_45e6b5, %struct.Memory** %MEMORY
  %loadMem_45e6ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 33
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 5
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %RCX.i461 = bitcast %union.anon* %1770 to i64*
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 15
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %1773 to i64*
  %1774 = load i64, i64* %RBP.i462
  %1775 = sub i64 %1774, 44
  %1776 = load i64, i64* %PC.i460
  %1777 = add i64 %1776, 3
  store i64 %1777, i64* %PC.i460
  %1778 = inttoptr i64 %1775 to i32*
  %1779 = load i32, i32* %1778
  %1780 = zext i32 %1779 to i64
  store i64 %1780, i64* %RCX.i461, align 8
  store %struct.Memory* %loadMem_45e6ba, %struct.Memory** %MEMORY
  %loadMem_45e6bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 33
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1783 to i64*
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 7
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %RDX.i458 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 15
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %1789 to i64*
  %1790 = load i64, i64* %RBP.i459
  %1791 = sub i64 %1790, 32
  %1792 = load i64, i64* %PC.i457
  %1793 = add i64 %1792, 4
  store i64 %1793, i64* %PC.i457
  %1794 = inttoptr i64 %1791 to i32*
  %1795 = load i32, i32* %1794
  %1796 = sext i32 %1795 to i64
  store i64 %1796, i64* %RDX.i458, align 8
  store %struct.Memory* %loadMem_45e6bd, %struct.Memory** %MEMORY
  %loadMem_45e6c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1799 to i64*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 7
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %RDX.i455 = bitcast %union.anon* %1802 to i64*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 9
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %RSI.i456 = bitcast %union.anon* %1805 to i64*
  %1806 = load i64, i64* %RDX.i455
  %1807 = add i64 %1806, 12099168
  %1808 = load i64, i64* %PC.i454
  %1809 = add i64 %1808, 8
  store i64 %1809, i64* %PC.i454
  %1810 = inttoptr i64 %1807 to i8*
  %1811 = load i8, i8* %1810
  %1812 = zext i8 %1811 to i64
  store i64 %1812, i64* %RSI.i456, align 8
  store %struct.Memory* %loadMem_45e6c1, %struct.Memory** %MEMORY
  %loadMem_45e6c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 33
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %1815 to i64*
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 9
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %1818 to i32*
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 1
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %1821 to i64*
  %1822 = load i64, i64* %RAX.i453
  %1823 = load i32, i32* %ESI.i
  %1824 = zext i32 %1823 to i64
  %1825 = load i64, i64* %PC.i452
  %1826 = add i64 %1825, 2
  store i64 %1826, i64* %PC.i452
  %1827 = trunc i64 %1822 to i32
  %1828 = sub i32 %1827, %1823
  %1829 = zext i32 %1828 to i64
  store i64 %1829, i64* %RAX.i453, align 8
  %1830 = icmp ult i32 %1827, %1823
  %1831 = zext i1 %1830 to i8
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1831, i8* %1832, align 1
  %1833 = and i32 %1828, 255
  %1834 = call i32 @llvm.ctpop.i32(i32 %1833)
  %1835 = trunc i32 %1834 to i8
  %1836 = and i8 %1835, 1
  %1837 = xor i8 %1836, 1
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1837, i8* %1838, align 1
  %1839 = xor i64 %1824, %1822
  %1840 = trunc i64 %1839 to i32
  %1841 = xor i32 %1840, %1828
  %1842 = lshr i32 %1841, 4
  %1843 = trunc i32 %1842 to i8
  %1844 = and i8 %1843, 1
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1844, i8* %1845, align 1
  %1846 = icmp eq i32 %1828, 0
  %1847 = zext i1 %1846 to i8
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1847, i8* %1848, align 1
  %1849 = lshr i32 %1828, 31
  %1850 = trunc i32 %1849 to i8
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1850, i8* %1851, align 1
  %1852 = lshr i32 %1827, 31
  %1853 = lshr i32 %1823, 31
  %1854 = xor i32 %1853, %1852
  %1855 = xor i32 %1849, %1852
  %1856 = add i32 %1855, %1854
  %1857 = icmp eq i32 %1856, 2
  %1858 = zext i1 %1857 to i8
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1858, i8* %1859, align 1
  store %struct.Memory* %loadMem_45e6c9, %struct.Memory** %MEMORY
  %loadMem_45e6cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 33
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %1862 to i64*
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 1
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %EAX.i450 = bitcast %union.anon* %1865 to i32*
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 5
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %ECX.i451 = bitcast %union.anon* %1868 to i32*
  %1869 = load i32, i32* %ECX.i451
  %1870 = zext i32 %1869 to i64
  %1871 = load i32, i32* %EAX.i450
  %1872 = zext i32 %1871 to i64
  %1873 = load i64, i64* %PC.i449
  %1874 = add i64 %1873, 2
  store i64 %1874, i64* %PC.i449
  %1875 = sub i32 %1869, %1871
  %1876 = icmp ult i32 %1869, %1871
  %1877 = zext i1 %1876 to i8
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1877, i8* %1878, align 1
  %1879 = and i32 %1875, 255
  %1880 = call i32 @llvm.ctpop.i32(i32 %1879)
  %1881 = trunc i32 %1880 to i8
  %1882 = and i8 %1881, 1
  %1883 = xor i8 %1882, 1
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1883, i8* %1884, align 1
  %1885 = xor i64 %1872, %1870
  %1886 = trunc i64 %1885 to i32
  %1887 = xor i32 %1886, %1875
  %1888 = lshr i32 %1887, 4
  %1889 = trunc i32 %1888 to i8
  %1890 = and i8 %1889, 1
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1890, i8* %1891, align 1
  %1892 = icmp eq i32 %1875, 0
  %1893 = zext i1 %1892 to i8
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1893, i8* %1894, align 1
  %1895 = lshr i32 %1875, 31
  %1896 = trunc i32 %1895 to i8
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1896, i8* %1897, align 1
  %1898 = lshr i32 %1869, 31
  %1899 = lshr i32 %1871, 31
  %1900 = xor i32 %1899, %1898
  %1901 = xor i32 %1895, %1898
  %1902 = add i32 %1901, %1900
  %1903 = icmp eq i32 %1902, 2
  %1904 = zext i1 %1903 to i8
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1904, i8* %1905, align 1
  store %struct.Memory* %loadMem_45e6cb, %struct.Memory** %MEMORY
  %loadMem_45e6cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 33
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1908 to i64*
  %1909 = load i64, i64* %PC.i448
  %1910 = add i64 %1909, 83
  %1911 = load i64, i64* %PC.i448
  %1912 = add i64 %1911, 6
  %1913 = load i64, i64* %PC.i448
  %1914 = add i64 %1913, 6
  store i64 %1914, i64* %PC.i448
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1916 = load i8, i8* %1915, align 1
  %1917 = icmp eq i8 %1916, 0
  %1918 = zext i1 %1917 to i8
  store i8 %1918, i8* %BRANCH_TAKEN, align 1
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1920 = select i1 %1917, i64 %1910, i64 %1912
  store i64 %1920, i64* %1919, align 8
  store %struct.Memory* %loadMem_45e6cd, %struct.Memory** %MEMORY
  %loadBr_45e6cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e6cd = icmp eq i8 %loadBr_45e6cd, 1
  br i1 %cmpBr_45e6cd, label %block_.L_45e720, label %block_45e6d3

block_45e6d3:                                     ; preds = %block_45e6b5
  %loadMem_45e6d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %1923 to i64*
  %1924 = load i64, i64* %PC.i447
  %1925 = add i64 %1924, 9
  store i64 %1925, i64* %PC.i447
  %1926 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1927, align 1
  %1928 = trunc i64 %1926 to i32
  %1929 = and i32 %1928, 255
  %1930 = call i32 @llvm.ctpop.i32(i32 %1929)
  %1931 = trunc i32 %1930 to i8
  %1932 = and i8 %1931, 1
  %1933 = xor i8 %1932, 1
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1933, i8* %1934, align 1
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1935, align 1
  %1936 = icmp eq i64 %1926, 0
  %1937 = zext i1 %1936 to i8
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1937, i8* %1938, align 1
  %1939 = lshr i64 %1926, 63
  %1940 = trunc i64 %1939 to i8
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1940, i8* %1941, align 1
  %1942 = lshr i64 %1926, 63
  %1943 = xor i64 %1939, %1942
  %1944 = add i64 %1943, %1942
  %1945 = icmp eq i64 %1944, 2
  %1946 = zext i1 %1945 to i8
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1946, i8* %1947, align 1
  store %struct.Memory* %loadMem_45e6d3, %struct.Memory** %MEMORY
  %loadMem_45e6dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 33
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %1950 to i64*
  %1951 = load i64, i64* %PC.i446
  %1952 = add i64 %1951, 35
  %1953 = load i64, i64* %PC.i446
  %1954 = add i64 %1953, 6
  %1955 = load i64, i64* %PC.i446
  %1956 = add i64 %1955, 6
  store i64 %1956, i64* %PC.i446
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1958 = load i8, i8* %1957, align 1
  store i8 %1958, i8* %BRANCH_TAKEN, align 1
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1960 = icmp ne i8 %1958, 0
  %1961 = select i1 %1960, i64 %1952, i64 %1954
  store i64 %1961, i64* %1959, align 8
  store %struct.Memory* %loadMem_45e6dc, %struct.Memory** %MEMORY
  %loadBr_45e6dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e6dc = icmp eq i8 %loadBr_45e6dc, 1
  br i1 %cmpBr_45e6dc, label %block_.L_45e6ff, label %block_45e6e2

block_45e6e2:                                     ; preds = %block_45e6d3
  %loadMem_45e6e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 33
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 1
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %EAX.i444 = bitcast %union.anon* %1967 to i32*
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 1
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %1970 to i64*
  %1971 = load i64, i64* %RAX.i445
  %1972 = load i32, i32* %EAX.i444
  %1973 = zext i32 %1972 to i64
  %1974 = load i64, i64* %PC.i443
  %1975 = add i64 %1974, 2
  store i64 %1975, i64* %PC.i443
  %1976 = xor i64 %1973, %1971
  %1977 = trunc i64 %1976 to i32
  %1978 = and i64 %1976, 4294967295
  store i64 %1978, i64* %RAX.i445, align 8
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1979, align 1
  %1980 = and i32 %1977, 255
  %1981 = call i32 @llvm.ctpop.i32(i32 %1980)
  %1982 = trunc i32 %1981 to i8
  %1983 = and i8 %1982, 1
  %1984 = xor i8 %1983, 1
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1984, i8* %1985, align 1
  %1986 = icmp eq i32 %1977, 0
  %1987 = zext i1 %1986 to i8
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1987, i8* %1988, align 1
  %1989 = lshr i32 %1977, 31
  %1990 = trunc i32 %1989 to i8
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1990, i8* %1991, align 1
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1992, align 1
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1993, align 1
  store %struct.Memory* %loadMem_45e6e2, %struct.Memory** %MEMORY
  %loadMem_45e6e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 33
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 5
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %ECX.i441 = bitcast %union.anon* %1999 to i32*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 5
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %RCX.i442 = bitcast %union.anon* %2002 to i64*
  %2003 = load i64, i64* %RCX.i442
  %2004 = load i32, i32* %ECX.i441
  %2005 = zext i32 %2004 to i64
  %2006 = load i64, i64* %PC.i440
  %2007 = add i64 %2006, 2
  store i64 %2007, i64* %PC.i440
  %2008 = xor i64 %2005, %2003
  %2009 = trunc i64 %2008 to i32
  %2010 = and i64 %2008, 4294967295
  store i64 %2010, i64* %RCX.i442, align 8
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2011, align 1
  %2012 = and i32 %2009, 255
  %2013 = call i32 @llvm.ctpop.i32(i32 %2012)
  %2014 = trunc i32 %2013 to i8
  %2015 = and i8 %2014, 1
  %2016 = xor i8 %2015, 1
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2016, i8* %2017, align 1
  %2018 = icmp eq i32 %2009, 0
  %2019 = zext i1 %2018 to i8
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2019, i8* %2020, align 1
  %2021 = lshr i32 %2009, 31
  %2022 = trunc i32 %2021 to i8
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2022, i8* %2023, align 1
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2024, align 1
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2025, align 1
  store %struct.Memory* %loadMem_45e6e4, %struct.Memory** %MEMORY
  %loadMem_45e6e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 33
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 5
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %ECX.i438 = bitcast %union.anon* %2031 to i32*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 17
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %R8D.i439 = bitcast %union.anon* %2034 to i32*
  %2035 = bitcast i32* %R8D.i439 to i64*
  %2036 = load i32, i32* %ECX.i438
  %2037 = zext i32 %2036 to i64
  %2038 = load i64, i64* %PC.i437
  %2039 = add i64 %2038, 3
  store i64 %2039, i64* %PC.i437
  %2040 = and i64 %2037, 4294967295
  store i64 %2040, i64* %2035, align 8
  store %struct.Memory* %loadMem_45e6e6, %struct.Memory** %MEMORY
  %loadMem_45e6e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 33
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %2043 to i64*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 11
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %RDI.i435 = bitcast %union.anon* %2046 to i64*
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 15
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %2049 to i64*
  %2050 = load i64, i64* %RBP.i436
  %2051 = sub i64 %2050, 496
  %2052 = load i64, i64* %PC.i434
  %2053 = add i64 %2052, 7
  store i64 %2053, i64* %PC.i434
  %2054 = inttoptr i64 %2051 to i64*
  %2055 = load i64, i64* %2054
  store i64 %2055, i64* %RDI.i435, align 8
  store %struct.Memory* %loadMem_45e6e9, %struct.Memory** %MEMORY
  %loadMem_45e6f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 33
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %2058 to i64*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 9
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %RSI.i432 = bitcast %union.anon* %2061 to i64*
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 15
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %2064 to i64*
  %2065 = load i64, i64* %RBP.i433
  %2066 = sub i64 %2065, 500
  %2067 = load i64, i64* %PC.i431
  %2068 = add i64 %2067, 6
  store i64 %2068, i64* %PC.i431
  %2069 = inttoptr i64 %2066 to i32*
  %2070 = load i32, i32* %2069
  %2071 = zext i32 %2070 to i64
  store i64 %2071, i64* %RSI.i432, align 8
  store %struct.Memory* %loadMem_45e6f0, %struct.Memory** %MEMORY
  %loadMem_45e6f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 33
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 1
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %EAX.i429 = bitcast %union.anon* %2077 to i32*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 7
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %RDX.i430 = bitcast %union.anon* %2080 to i64*
  %2081 = load i32, i32* %EAX.i429
  %2082 = zext i32 %2081 to i64
  %2083 = load i64, i64* %PC.i428
  %2084 = add i64 %2083, 2
  store i64 %2084, i64* %PC.i428
  %2085 = and i64 %2082, 4294967295
  store i64 %2085, i64* %RDX.i430, align 8
  store %struct.Memory* %loadMem_45e6f6, %struct.Memory** %MEMORY
  %loadMem_45e6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 33
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %2088 to i64*
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 1
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %EAX.i426 = bitcast %union.anon* %2091 to i32*
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 5
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %RCX.i427 = bitcast %union.anon* %2094 to i64*
  %2095 = load i32, i32* %EAX.i426
  %2096 = zext i32 %2095 to i64
  %2097 = load i64, i64* %PC.i425
  %2098 = add i64 %2097, 2
  store i64 %2098, i64* %PC.i425
  %2099 = and i64 %2096, 4294967295
  store i64 %2099, i64* %RCX.i427, align 8
  store %struct.Memory* %loadMem_45e6f8, %struct.Memory** %MEMORY
  %loadMem1_45e6fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 33
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %2102 to i64*
  %2103 = load i64, i64* %PC.i424
  %2104 = add i64 %2103, -288570
  %2105 = load i64, i64* %PC.i424
  %2106 = add i64 %2105, 5
  %2107 = load i64, i64* %PC.i424
  %2108 = add i64 %2107, 5
  store i64 %2108, i64* %PC.i424
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2110 = load i64, i64* %2109, align 8
  %2111 = add i64 %2110, -8
  %2112 = inttoptr i64 %2111 to i64*
  store i64 %2106, i64* %2112
  store i64 %2111, i64* %2109, align 8
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2104, i64* %2113, align 8
  store %struct.Memory* %loadMem1_45e6fa, %struct.Memory** %MEMORY
  %loadMem2_45e6fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e6fa = load i64, i64* %3
  %call2_45e6fa = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64 %loadPC_45e6fa, %struct.Memory* %loadMem2_45e6fa)
  store %struct.Memory* %call2_45e6fa, %struct.Memory** %MEMORY
  br label %block_.L_45e6ff

block_.L_45e6ff:                                  ; preds = %block_45e6e2, %block_45e6d3
  %loadMem_45e6ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 33
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %2116 to i64*
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 15
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %2119 to i64*
  %2120 = load i64, i64* %RBP.i423
  %2121 = sub i64 %2120, 40
  %2122 = load i64, i64* %PC.i422
  %2123 = add i64 %2122, 5
  store i64 %2123, i64* %PC.i422
  %2124 = inttoptr i64 %2121 to i64*
  %2125 = load i64, i64* %2124
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2126, align 1
  %2127 = trunc i64 %2125 to i32
  %2128 = and i32 %2127, 255
  %2129 = call i32 @llvm.ctpop.i32(i32 %2128)
  %2130 = trunc i32 %2129 to i8
  %2131 = and i8 %2130, 1
  %2132 = xor i8 %2131, 1
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2132, i8* %2133, align 1
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2134, align 1
  %2135 = icmp eq i64 %2125, 0
  %2136 = zext i1 %2135 to i8
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2136, i8* %2137, align 1
  %2138 = lshr i64 %2125, 63
  %2139 = trunc i64 %2138 to i8
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2139, i8* %2140, align 1
  %2141 = lshr i64 %2125, 63
  %2142 = xor i64 %2138, %2141
  %2143 = add i64 %2142, %2141
  %2144 = icmp eq i64 %2143, 2
  %2145 = zext i1 %2144 to i8
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2145, i8* %2146, align 1
  store %struct.Memory* %loadMem_45e6ff, %struct.Memory** %MEMORY
  %loadMem_45e704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 33
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %2149 to i64*
  %2150 = load i64, i64* %PC.i421
  %2151 = add i64 %2150, 16
  %2152 = load i64, i64* %PC.i421
  %2153 = add i64 %2152, 6
  %2154 = load i64, i64* %PC.i421
  %2155 = add i64 %2154, 6
  store i64 %2155, i64* %PC.i421
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2157 = load i8, i8* %2156, align 1
  store i8 %2157, i8* %BRANCH_TAKEN, align 1
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2159 = icmp ne i8 %2157, 0
  %2160 = select i1 %2159, i64 %2151, i64 %2153
  store i64 %2160, i64* %2158, align 8
  store %struct.Memory* %loadMem_45e704, %struct.Memory** %MEMORY
  %loadBr_45e704 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e704 = icmp eq i8 %loadBr_45e704, 1
  br i1 %cmpBr_45e704, label %block_.L_45e714, label %block_45e70a

block_45e70a:                                     ; preds = %block_.L_45e6ff
  %loadMem_45e70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 33
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 1
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 15
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %2169 to i64*
  %2170 = load i64, i64* %RBP.i420
  %2171 = sub i64 %2170, 40
  %2172 = load i64, i64* %PC.i418
  %2173 = add i64 %2172, 4
  store i64 %2173, i64* %PC.i418
  %2174 = inttoptr i64 %2171 to i64*
  %2175 = load i64, i64* %2174
  store i64 %2175, i64* %RAX.i419, align 8
  store %struct.Memory* %loadMem_45e70a, %struct.Memory** %MEMORY
  %loadMem_45e70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 33
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %2178 to i64*
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 1
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %RAX.i417 = bitcast %union.anon* %2181 to i64*
  %2182 = load i64, i64* %RAX.i417
  %2183 = load i64, i64* %PC.i416
  %2184 = add i64 %2183, 6
  store i64 %2184, i64* %PC.i416
  %2185 = inttoptr i64 %2182 to i32*
  store i32 0, i32* %2185
  store %struct.Memory* %loadMem_45e70e, %struct.Memory** %MEMORY
  br label %block_.L_45e714

block_.L_45e714:                                  ; preds = %block_45e70a, %block_.L_45e6ff
  %loadMem_45e714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 33
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %2188 to i64*
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 15
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %2191 to i64*
  %2192 = load i64, i64* %RBP.i415
  %2193 = sub i64 %2192, 28
  %2194 = load i64, i64* %PC.i414
  %2195 = add i64 %2194, 7
  store i64 %2195, i64* %PC.i414
  %2196 = inttoptr i64 %2193 to i32*
  store i32 0, i32* %2196
  store %struct.Memory* %loadMem_45e714, %struct.Memory** %MEMORY
  %loadMem_45e71b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 33
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %2199 to i64*
  %2200 = load i64, i64* %PC.i413
  %2201 = add i64 %2200, 870
  %2202 = load i64, i64* %PC.i413
  %2203 = add i64 %2202, 5
  store i64 %2203, i64* %PC.i413
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2201, i64* %2204, align 8
  store %struct.Memory* %loadMem_45e71b, %struct.Memory** %MEMORY
  br label %block_.L_45ea81

block_.L_45e720:                                  ; preds = %block_45e6b5, %block_.L_45e69c
  %loadMem_45e720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 33
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %2207 to i64*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 9
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %RSI.i412 = bitcast %union.anon* %2210 to i64*
  %2211 = load i64, i64* %PC.i411
  %2212 = add i64 %2211, 5
  store i64 %2212, i64* %PC.i411
  store i64 2, i64* %RSI.i412, align 8
  store %struct.Memory* %loadMem_45e720, %struct.Memory** %MEMORY
  %loadMem_45e725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 33
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %2215 to i64*
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 7
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %RDX.i409 = bitcast %union.anon* %2218 to i64*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 15
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %2221 to i64*
  %2222 = load i64, i64* %RBP.i410
  %2223 = sub i64 %2222, 68
  %2224 = load i64, i64* %PC.i408
  %2225 = add i64 %2224, 4
  store i64 %2225, i64* %PC.i408
  store i64 %2223, i64* %RDX.i409, align 8
  store %struct.Memory* %loadMem_45e725, %struct.Memory** %MEMORY
  %loadMem_45e729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 33
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %2228 to i64*
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 11
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %RDI.i406 = bitcast %union.anon* %2231 to i64*
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 15
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %2234 to i64*
  %2235 = load i64, i64* %RBP.i407
  %2236 = sub i64 %2235, 32
  %2237 = load i64, i64* %PC.i405
  %2238 = add i64 %2237, 3
  store i64 %2238, i64* %PC.i405
  %2239 = inttoptr i64 %2236 to i32*
  %2240 = load i32, i32* %2239
  %2241 = zext i32 %2240 to i64
  store i64 %2241, i64* %RDI.i406, align 8
  store %struct.Memory* %loadMem_45e729, %struct.Memory** %MEMORY
  %loadMem1_45e72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 33
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %2244 to i64*
  %2245 = load i64, i64* %PC.i404
  %2246 = add i64 %2245, -323308
  %2247 = load i64, i64* %PC.i404
  %2248 = add i64 %2247, 5
  %2249 = load i64, i64* %PC.i404
  %2250 = add i64 %2249, 5
  store i64 %2250, i64* %PC.i404
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2252 = load i64, i64* %2251, align 8
  %2253 = add i64 %2252, -8
  %2254 = inttoptr i64 %2253 to i64*
  store i64 %2248, i64* %2254
  store i64 %2253, i64* %2251, align 8
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2246, i64* %2255, align 8
  store %struct.Memory* %loadMem1_45e72c, %struct.Memory** %MEMORY
  %loadMem2_45e72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e72c = load i64, i64* %3
  %call2_45e72c = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_45e72c, %struct.Memory* %loadMem2_45e72c)
  store %struct.Memory* %call2_45e72c, %struct.Memory** %MEMORY
  %loadMem_45e731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 33
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 15
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %2261 to i64*
  %2262 = load i64, i64* %RBP.i403
  %2263 = sub i64 %2262, 84
  %2264 = load i64, i64* %PC.i402
  %2265 = add i64 %2264, 7
  store i64 %2265, i64* %PC.i402
  %2266 = inttoptr i64 %2263 to i32*
  store i32 0, i32* %2266
  store %struct.Memory* %loadMem_45e731, %struct.Memory** %MEMORY
  %loadMem_45e738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 33
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 1
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %EAX.i400 = bitcast %union.anon* %2272 to i32*
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 15
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %2275 to i64*
  %2276 = load i64, i64* %RBP.i401
  %2277 = sub i64 %2276, 564
  %2278 = load i32, i32* %EAX.i400
  %2279 = zext i32 %2278 to i64
  %2280 = load i64, i64* %PC.i399
  %2281 = add i64 %2280, 6
  store i64 %2281, i64* %PC.i399
  %2282 = inttoptr i64 %2277 to i32*
  store i32 %2278, i32* %2282
  store %struct.Memory* %loadMem_45e738, %struct.Memory** %MEMORY
  br label %block_.L_45e73e

block_.L_45e73e:                                  ; preds = %block_.L_45e806, %block_.L_45e720
  %loadMem_45e73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 33
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %2285 to i64*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 15
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %2288 to i64*
  %2289 = load i64, i64* %RBP.i398
  %2290 = sub i64 %2289, 84
  %2291 = load i64, i64* %PC.i397
  %2292 = add i64 %2291, 4
  store i64 %2292, i64* %PC.i397
  %2293 = inttoptr i64 %2290 to i32*
  %2294 = load i32, i32* %2293
  %2295 = sub i32 %2294, 2
  %2296 = icmp ult i32 %2294, 2
  %2297 = zext i1 %2296 to i8
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2297, i8* %2298, align 1
  %2299 = and i32 %2295, 255
  %2300 = call i32 @llvm.ctpop.i32(i32 %2299)
  %2301 = trunc i32 %2300 to i8
  %2302 = and i8 %2301, 1
  %2303 = xor i8 %2302, 1
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2303, i8* %2304, align 1
  %2305 = xor i32 %2294, 2
  %2306 = xor i32 %2305, %2295
  %2307 = lshr i32 %2306, 4
  %2308 = trunc i32 %2307 to i8
  %2309 = and i8 %2308, 1
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2309, i8* %2310, align 1
  %2311 = icmp eq i32 %2295, 0
  %2312 = zext i1 %2311 to i8
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2312, i8* %2313, align 1
  %2314 = lshr i32 %2295, 31
  %2315 = trunc i32 %2314 to i8
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2315, i8* %2316, align 1
  %2317 = lshr i32 %2294, 31
  %2318 = xor i32 %2314, %2317
  %2319 = add i32 %2318, %2317
  %2320 = icmp eq i32 %2319, 2
  %2321 = zext i1 %2320 to i8
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2321, i8* %2322, align 1
  store %struct.Memory* %loadMem_45e73e, %struct.Memory** %MEMORY
  %loadMem_45e742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 33
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %2325 to i64*
  %2326 = load i64, i64* %PC.i396
  %2327 = add i64 %2326, 210
  %2328 = load i64, i64* %PC.i396
  %2329 = add i64 %2328, 6
  %2330 = load i64, i64* %PC.i396
  %2331 = add i64 %2330, 6
  store i64 %2331, i64* %PC.i396
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2333 = load i8, i8* %2332, align 1
  %2334 = icmp ne i8 %2333, 0
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2336 = load i8, i8* %2335, align 1
  %2337 = icmp ne i8 %2336, 0
  %2338 = xor i1 %2334, %2337
  %2339 = xor i1 %2338, true
  %2340 = zext i1 %2339 to i8
  store i8 %2340, i8* %BRANCH_TAKEN, align 1
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2342 = select i1 %2338, i64 %2329, i64 %2327
  store i64 %2342, i64* %2341, align 8
  store %struct.Memory* %loadMem_45e742, %struct.Memory** %MEMORY
  %loadBr_45e742 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e742 = icmp eq i8 %loadBr_45e742, 1
  br i1 %cmpBr_45e742, label %block_.L_45e814, label %block_45e748

block_45e748:                                     ; preds = %block_.L_45e73e
  %loadMem_45e748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 33
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %2345 to i64*
  %2346 = load i64, i64* %PC.i395
  %2347 = add i64 %2346, 5
  %2348 = load i64, i64* %PC.i395
  %2349 = add i64 %2348, 5
  store i64 %2349, i64* %PC.i395
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2347, i64* %2350, align 8
  store %struct.Memory* %loadMem_45e748, %struct.Memory** %MEMORY
  br label %block_.L_45e74d

block_.L_45e74d:                                  ; preds = %block_45e748
  %loadMem_45e74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 33
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %2353 to i64*
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 15
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %2356 to i64*
  %2357 = load i64, i64* %RBP.i394
  %2358 = sub i64 %2357, 504
  %2359 = load i64, i64* %PC.i393
  %2360 = add i64 %2359, 10
  store i64 %2360, i64* %PC.i393
  %2361 = inttoptr i64 %2358 to i32*
  store i32 0, i32* %2361
  store %struct.Memory* %loadMem_45e74d, %struct.Memory** %MEMORY
  br label %block_.L_45e757

block_.L_45e757:                                  ; preds = %block_.L_45e7a4, %block_.L_45e74d
  %loadMem_45e757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 1
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 15
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %2370 to i64*
  %2371 = load i64, i64* %RBP.i392
  %2372 = sub i64 %2371, 504
  %2373 = load i64, i64* %PC.i390
  %2374 = add i64 %2373, 6
  store i64 %2374, i64* %PC.i390
  %2375 = inttoptr i64 %2372 to i32*
  %2376 = load i32, i32* %2375
  %2377 = zext i32 %2376 to i64
  store i64 %2377, i64* %RAX.i391, align 8
  store %struct.Memory* %loadMem_45e757, %struct.Memory** %MEMORY
  %loadMem_45e75d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 33
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 1
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %EAX.i388 = bitcast %union.anon* %2383 to i32*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 15
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %2386 to i64*
  %2387 = load i32, i32* %EAX.i388
  %2388 = zext i32 %2387 to i64
  %2389 = load i64, i64* %RBP.i389
  %2390 = sub i64 %2389, 88
  %2391 = load i64, i64* %PC.i387
  %2392 = add i64 %2391, 3
  store i64 %2392, i64* %PC.i387
  %2393 = inttoptr i64 %2390 to i32*
  %2394 = load i32, i32* %2393
  %2395 = sub i32 %2387, %2394
  %2396 = icmp ult i32 %2387, %2394
  %2397 = zext i1 %2396 to i8
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2397, i8* %2398, align 1
  %2399 = and i32 %2395, 255
  %2400 = call i32 @llvm.ctpop.i32(i32 %2399)
  %2401 = trunc i32 %2400 to i8
  %2402 = and i8 %2401, 1
  %2403 = xor i8 %2402, 1
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2403, i8* %2404, align 1
  %2405 = xor i32 %2394, %2387
  %2406 = xor i32 %2405, %2395
  %2407 = lshr i32 %2406, 4
  %2408 = trunc i32 %2407 to i8
  %2409 = and i8 %2408, 1
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2409, i8* %2410, align 1
  %2411 = icmp eq i32 %2395, 0
  %2412 = zext i1 %2411 to i8
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2412, i8* %2413, align 1
  %2414 = lshr i32 %2395, 31
  %2415 = trunc i32 %2414 to i8
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2415, i8* %2416, align 1
  %2417 = lshr i32 %2387, 31
  %2418 = lshr i32 %2394, 31
  %2419 = xor i32 %2418, %2417
  %2420 = xor i32 %2414, %2417
  %2421 = add i32 %2420, %2419
  %2422 = icmp eq i32 %2421, 2
  %2423 = zext i1 %2422 to i8
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2423, i8* %2424, align 1
  store %struct.Memory* %loadMem_45e75d, %struct.Memory** %MEMORY
  %loadMem_45e760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 33
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %2427 to i64*
  %2428 = load i64, i64* %PC.i386
  %2429 = add i64 %2428, 88
  %2430 = load i64, i64* %PC.i386
  %2431 = add i64 %2430, 6
  %2432 = load i64, i64* %PC.i386
  %2433 = add i64 %2432, 6
  store i64 %2433, i64* %PC.i386
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2435 = load i8, i8* %2434, align 1
  %2436 = icmp ne i8 %2435, 0
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2438 = load i8, i8* %2437, align 1
  %2439 = icmp ne i8 %2438, 0
  %2440 = xor i1 %2436, %2439
  %2441 = xor i1 %2440, true
  %2442 = zext i1 %2441 to i8
  store i8 %2442, i8* %BRANCH_TAKEN, align 1
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2444 = select i1 %2440, i64 %2431, i64 %2429
  store i64 %2444, i64* %2443, align 8
  store %struct.Memory* %loadMem_45e760, %struct.Memory** %MEMORY
  %loadBr_45e760 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e760 = icmp eq i8 %loadBr_45e760, 1
  br i1 %cmpBr_45e760, label %block_.L_45e7b8, label %block_45e766

block_45e766:                                     ; preds = %block_.L_45e757
  %loadMem_45e766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2446 = getelementptr inbounds %struct.GPR, %struct.GPR* %2445, i32 0, i32 33
  %2447 = getelementptr inbounds %struct.Reg, %struct.Reg* %2446, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %2447 to i64*
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 1
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %2450 to i64*
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 15
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %2453 to i64*
  %2454 = load i64, i64* %RBP.i385
  %2455 = sub i64 %2454, 504
  %2456 = load i64, i64* %PC.i383
  %2457 = add i64 %2456, 7
  store i64 %2457, i64* %PC.i383
  %2458 = inttoptr i64 %2455 to i32*
  %2459 = load i32, i32* %2458
  %2460 = sext i32 %2459 to i64
  store i64 %2460, i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_45e766, %struct.Memory** %MEMORY
  %loadMem_45e76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 33
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %2463 to i64*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 1
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 5
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RCX.i381 = bitcast %union.anon* %2469 to i64*
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 15
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %2472 to i64*
  %2473 = load i64, i64* %RBP.i382
  %2474 = load i64, i64* %RAX.i380
  %2475 = mul i64 %2474, 4
  %2476 = add i64 %2473, -488
  %2477 = add i64 %2476, %2475
  %2478 = load i64, i64* %PC.i379
  %2479 = add i64 %2478, 7
  store i64 %2479, i64* %PC.i379
  %2480 = inttoptr i64 %2477 to i32*
  %2481 = load i32, i32* %2480
  %2482 = zext i32 %2481 to i64
  store i64 %2482, i64* %RCX.i381, align 8
  store %struct.Memory* %loadMem_45e76d, %struct.Memory** %MEMORY
  %loadMem_45e774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 33
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %2485 to i64*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 1
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %2488 to i64*
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2490 = getelementptr inbounds %struct.GPR, %struct.GPR* %2489, i32 0, i32 15
  %2491 = getelementptr inbounds %struct.Reg, %struct.Reg* %2490, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %2491 to i64*
  %2492 = load i64, i64* %RBP.i378
  %2493 = sub i64 %2492, 84
  %2494 = load i64, i64* %PC.i376
  %2495 = add i64 %2494, 4
  store i64 %2495, i64* %PC.i376
  %2496 = inttoptr i64 %2493 to i32*
  %2497 = load i32, i32* %2496
  %2498 = sext i32 %2497 to i64
  store i64 %2498, i64* %RAX.i377, align 8
  store %struct.Memory* %loadMem_45e774, %struct.Memory** %MEMORY
  %loadMem_45e778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 33
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 5
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %ECX.i373 = bitcast %union.anon* %2504 to i32*
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 1
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %2507 to i64*
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2509 = getelementptr inbounds %struct.GPR, %struct.GPR* %2508, i32 0, i32 15
  %2510 = getelementptr inbounds %struct.Reg, %struct.Reg* %2509, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %2510 to i64*
  %2511 = load i32, i32* %ECX.i373
  %2512 = zext i32 %2511 to i64
  %2513 = load i64, i64* %RBP.i375
  %2514 = load i64, i64* %RAX.i374
  %2515 = mul i64 %2514, 4
  %2516 = add i64 %2513, -68
  %2517 = add i64 %2516, %2515
  %2518 = load i64, i64* %PC.i372
  %2519 = add i64 %2518, 4
  store i64 %2519, i64* %PC.i372
  %2520 = inttoptr i64 %2517 to i32*
  %2521 = load i32, i32* %2520
  %2522 = sub i32 %2511, %2521
  %2523 = icmp ult i32 %2511, %2521
  %2524 = zext i1 %2523 to i8
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2524, i8* %2525, align 1
  %2526 = and i32 %2522, 255
  %2527 = call i32 @llvm.ctpop.i32(i32 %2526)
  %2528 = trunc i32 %2527 to i8
  %2529 = and i8 %2528, 1
  %2530 = xor i8 %2529, 1
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2530, i8* %2531, align 1
  %2532 = xor i32 %2521, %2511
  %2533 = xor i32 %2532, %2522
  %2534 = lshr i32 %2533, 4
  %2535 = trunc i32 %2534 to i8
  %2536 = and i8 %2535, 1
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2536, i8* %2537, align 1
  %2538 = icmp eq i32 %2522, 0
  %2539 = zext i1 %2538 to i8
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2539, i8* %2540, align 1
  %2541 = lshr i32 %2522, 31
  %2542 = trunc i32 %2541 to i8
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2542, i8* %2543, align 1
  %2544 = lshr i32 %2511, 31
  %2545 = lshr i32 %2521, 31
  %2546 = xor i32 %2545, %2544
  %2547 = xor i32 %2541, %2544
  %2548 = add i32 %2547, %2546
  %2549 = icmp eq i32 %2548, 2
  %2550 = zext i1 %2549 to i8
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2550, i8* %2551, align 1
  store %struct.Memory* %loadMem_45e778, %struct.Memory** %MEMORY
  %loadMem_45e77c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 33
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %2554 to i64*
  %2555 = load i64, i64* %PC.i371
  %2556 = add i64 %2555, 35
  %2557 = load i64, i64* %PC.i371
  %2558 = add i64 %2557, 6
  %2559 = load i64, i64* %PC.i371
  %2560 = add i64 %2559, 6
  store i64 %2560, i64* %PC.i371
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2562 = load i8, i8* %2561, align 1
  %2563 = icmp eq i8 %2562, 0
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %BRANCH_TAKEN, align 1
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2566 = select i1 %2563, i64 %2556, i64 %2558
  store i64 %2566, i64* %2565, align 8
  store %struct.Memory* %loadMem_45e77c, %struct.Memory** %MEMORY
  %loadBr_45e77c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e77c = icmp eq i8 %loadBr_45e77c, 1
  br i1 %cmpBr_45e77c, label %block_.L_45e79f, label %block_45e782

block_45e782:                                     ; preds = %block_45e766
  %loadMem_45e782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 33
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %2569 to i64*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 1
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %2572 to i64*
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2574 = getelementptr inbounds %struct.GPR, %struct.GPR* %2573, i32 0, i32 15
  %2575 = getelementptr inbounds %struct.Reg, %struct.Reg* %2574, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %2575 to i64*
  %2576 = load i64, i64* %RBP.i370
  %2577 = sub i64 %2576, 504
  %2578 = load i64, i64* %PC.i368
  %2579 = add i64 %2578, 7
  store i64 %2579, i64* %PC.i368
  %2580 = inttoptr i64 %2577 to i32*
  %2581 = load i32, i32* %2580
  %2582 = sext i32 %2581 to i64
  store i64 %2582, i64* %RAX.i369, align 8
  store %struct.Memory* %loadMem_45e782, %struct.Memory** %MEMORY
  %loadMem_45e789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 33
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 1
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 5
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %2591 to i64*
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 15
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %2594 to i64*
  %2595 = load i64, i64* %RBP.i367
  %2596 = load i64, i64* %RAX.i365
  %2597 = mul i64 %2596, 4
  %2598 = add i64 %2595, -288
  %2599 = add i64 %2598, %2597
  %2600 = load i64, i64* %PC.i364
  %2601 = add i64 %2600, 7
  store i64 %2601, i64* %PC.i364
  %2602 = inttoptr i64 %2599 to i32*
  %2603 = load i32, i32* %2602
  %2604 = zext i32 %2603 to i64
  store i64 %2604, i64* %RCX.i366, align 8
  store %struct.Memory* %loadMem_45e789, %struct.Memory** %MEMORY
  %loadMem_45e790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 5
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RCX.i363 = bitcast %union.anon* %2610 to i64*
  %2611 = load i64, i64* %RCX.i363
  %2612 = load i64, i64* %PC.i362
  %2613 = add i64 %2612, 3
  store i64 %2613, i64* %PC.i362
  %2614 = trunc i64 %2611 to i32
  %2615 = zext i32 %2614 to i64
  store i64 %2615, i64* %RCX.i363, align 8
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2616, align 1
  %2617 = and i32 %2614, 255
  %2618 = call i32 @llvm.ctpop.i32(i32 %2617)
  %2619 = trunc i32 %2618 to i8
  %2620 = and i8 %2619, 1
  %2621 = xor i8 %2620, 1
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2621, i8* %2622, align 1
  %2623 = trunc i64 %2611 to i32
  %2624 = xor i32 %2623, %2614
  %2625 = lshr i32 %2624, 4
  %2626 = trunc i32 %2625 to i8
  %2627 = and i8 %2626, 1
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2627, i8* %2628, align 1
  %2629 = icmp eq i32 %2614, 0
  %2630 = zext i1 %2629 to i8
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2630, i8* %2631, align 1
  %2632 = lshr i32 %2614, 31
  %2633 = trunc i32 %2632 to i8
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2633, i8* %2634, align 1
  %2635 = lshr i32 %2614, 31
  %2636 = xor i32 %2632, %2635
  %2637 = add i32 %2636, %2632
  %2638 = icmp eq i32 %2637, 2
  %2639 = zext i1 %2638 to i8
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2639, i8* %2640, align 1
  store %struct.Memory* %loadMem_45e790, %struct.Memory** %MEMORY
  %loadMem_45e793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 33
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %2643 to i64*
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 5
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %ECX.i359 = bitcast %union.anon* %2646 to i32*
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2648 = getelementptr inbounds %struct.GPR, %struct.GPR* %2647, i32 0, i32 1
  %2649 = getelementptr inbounds %struct.Reg, %struct.Reg* %2648, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %2649 to i64*
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 15
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %2652 to i64*
  %2653 = load i64, i64* %RBP.i361
  %2654 = load i64, i64* %RAX.i360
  %2655 = mul i64 %2654, 4
  %2656 = add i64 %2653, -288
  %2657 = add i64 %2656, %2655
  %2658 = load i32, i32* %ECX.i359
  %2659 = zext i32 %2658 to i64
  %2660 = load i64, i64* %PC.i358
  %2661 = add i64 %2660, 7
  store i64 %2661, i64* %PC.i358
  %2662 = inttoptr i64 %2657 to i32*
  store i32 %2658, i32* %2662
  store %struct.Memory* %loadMem_45e793, %struct.Memory** %MEMORY
  %loadMem_45e79a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 33
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2665 to i64*
  %2666 = load i64, i64* %PC.i357
  %2667 = add i64 %2666, 30
  %2668 = load i64, i64* %PC.i357
  %2669 = add i64 %2668, 5
  store i64 %2669, i64* %PC.i357
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2667, i64* %2670, align 8
  store %struct.Memory* %loadMem_45e79a, %struct.Memory** %MEMORY
  br label %block_.L_45e7b8

block_.L_45e79f:                                  ; preds = %block_45e766
  %loadMem_45e79f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 33
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %2673 to i64*
  %2674 = load i64, i64* %PC.i356
  %2675 = add i64 %2674, 5
  %2676 = load i64, i64* %PC.i356
  %2677 = add i64 %2676, 5
  store i64 %2677, i64* %PC.i356
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2675, i64* %2678, align 8
  store %struct.Memory* %loadMem_45e79f, %struct.Memory** %MEMORY
  br label %block_.L_45e7a4

block_.L_45e7a4:                                  ; preds = %block_.L_45e79f
  %loadMem_45e7a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 33
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2681 to i64*
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 1
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %2684 to i64*
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 15
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %2687 to i64*
  %2688 = load i64, i64* %RBP.i355
  %2689 = sub i64 %2688, 504
  %2690 = load i64, i64* %PC.i353
  %2691 = add i64 %2690, 6
  store i64 %2691, i64* %PC.i353
  %2692 = inttoptr i64 %2689 to i32*
  %2693 = load i32, i32* %2692
  %2694 = zext i32 %2693 to i64
  store i64 %2694, i64* %RAX.i354, align 8
  store %struct.Memory* %loadMem_45e7a4, %struct.Memory** %MEMORY
  %loadMem_45e7aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 33
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %2697 to i64*
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 1
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %2700 to i64*
  %2701 = load i64, i64* %RAX.i352
  %2702 = load i64, i64* %PC.i351
  %2703 = add i64 %2702, 3
  store i64 %2703, i64* %PC.i351
  %2704 = trunc i64 %2701 to i32
  %2705 = add i32 1, %2704
  %2706 = zext i32 %2705 to i64
  store i64 %2706, i64* %RAX.i352, align 8
  %2707 = icmp ult i32 %2705, %2704
  %2708 = icmp ult i32 %2705, 1
  %2709 = or i1 %2707, %2708
  %2710 = zext i1 %2709 to i8
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2710, i8* %2711, align 1
  %2712 = and i32 %2705, 255
  %2713 = call i32 @llvm.ctpop.i32(i32 %2712)
  %2714 = trunc i32 %2713 to i8
  %2715 = and i8 %2714, 1
  %2716 = xor i8 %2715, 1
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2716, i8* %2717, align 1
  %2718 = xor i64 1, %2701
  %2719 = trunc i64 %2718 to i32
  %2720 = xor i32 %2719, %2705
  %2721 = lshr i32 %2720, 4
  %2722 = trunc i32 %2721 to i8
  %2723 = and i8 %2722, 1
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2723, i8* %2724, align 1
  %2725 = icmp eq i32 %2705, 0
  %2726 = zext i1 %2725 to i8
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2726, i8* %2727, align 1
  %2728 = lshr i32 %2705, 31
  %2729 = trunc i32 %2728 to i8
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2729, i8* %2730, align 1
  %2731 = lshr i32 %2704, 31
  %2732 = xor i32 %2728, %2731
  %2733 = add i32 %2732, %2728
  %2734 = icmp eq i32 %2733, 2
  %2735 = zext i1 %2734 to i8
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2735, i8* %2736, align 1
  store %struct.Memory* %loadMem_45e7aa, %struct.Memory** %MEMORY
  %loadMem_45e7ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2738 = getelementptr inbounds %struct.GPR, %struct.GPR* %2737, i32 0, i32 33
  %2739 = getelementptr inbounds %struct.Reg, %struct.Reg* %2738, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %2739 to i64*
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 1
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %EAX.i349 = bitcast %union.anon* %2742 to i32*
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 15
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %2745 to i64*
  %2746 = load i64, i64* %RBP.i350
  %2747 = sub i64 %2746, 504
  %2748 = load i32, i32* %EAX.i349
  %2749 = zext i32 %2748 to i64
  %2750 = load i64, i64* %PC.i348
  %2751 = add i64 %2750, 6
  store i64 %2751, i64* %PC.i348
  %2752 = inttoptr i64 %2747 to i32*
  store i32 %2748, i32* %2752
  store %struct.Memory* %loadMem_45e7ad, %struct.Memory** %MEMORY
  %loadMem_45e7b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 33
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2755 to i64*
  %2756 = load i64, i64* %PC.i347
  %2757 = add i64 %2756, -92
  %2758 = load i64, i64* %PC.i347
  %2759 = add i64 %2758, 5
  store i64 %2759, i64* %PC.i347
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2757, i64* %2760, align 8
  store %struct.Memory* %loadMem_45e7b3, %struct.Memory** %MEMORY
  br label %block_.L_45e757

block_.L_45e7b8:                                  ; preds = %block_45e782, %block_.L_45e757
  %loadMem_45e7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 33
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %2763 to i64*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 1
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %2766 to i64*
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 15
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %2769 to i64*
  %2770 = load i64, i64* %RBP.i346
  %2771 = sub i64 %2770, 504
  %2772 = load i64, i64* %PC.i344
  %2773 = add i64 %2772, 6
  store i64 %2773, i64* %PC.i344
  %2774 = inttoptr i64 %2771 to i32*
  %2775 = load i32, i32* %2774
  %2776 = zext i32 %2775 to i64
  store i64 %2776, i64* %RAX.i345, align 8
  store %struct.Memory* %loadMem_45e7b8, %struct.Memory** %MEMORY
  %loadMem_45e7be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 33
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %2779 to i64*
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 1
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %EAX.i342 = bitcast %union.anon* %2782 to i32*
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 15
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %2785 to i64*
  %2786 = load i32, i32* %EAX.i342
  %2787 = zext i32 %2786 to i64
  %2788 = load i64, i64* %RBP.i343
  %2789 = sub i64 %2788, 88
  %2790 = load i64, i64* %PC.i341
  %2791 = add i64 %2790, 3
  store i64 %2791, i64* %PC.i341
  %2792 = inttoptr i64 %2789 to i32*
  %2793 = load i32, i32* %2792
  %2794 = sub i32 %2786, %2793
  %2795 = icmp ult i32 %2786, %2793
  %2796 = zext i1 %2795 to i8
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2796, i8* %2797, align 1
  %2798 = and i32 %2794, 255
  %2799 = call i32 @llvm.ctpop.i32(i32 %2798)
  %2800 = trunc i32 %2799 to i8
  %2801 = and i8 %2800, 1
  %2802 = xor i8 %2801, 1
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2802, i8* %2803, align 1
  %2804 = xor i32 %2793, %2786
  %2805 = xor i32 %2804, %2794
  %2806 = lshr i32 %2805, 4
  %2807 = trunc i32 %2806 to i8
  %2808 = and i8 %2807, 1
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2808, i8* %2809, align 1
  %2810 = icmp eq i32 %2794, 0
  %2811 = zext i1 %2810 to i8
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2811, i8* %2812, align 1
  %2813 = lshr i32 %2794, 31
  %2814 = trunc i32 %2813 to i8
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2814, i8* %2815, align 1
  %2816 = lshr i32 %2786, 31
  %2817 = lshr i32 %2793, 31
  %2818 = xor i32 %2817, %2816
  %2819 = xor i32 %2813, %2816
  %2820 = add i32 %2819, %2818
  %2821 = icmp eq i32 %2820, 2
  %2822 = zext i1 %2821 to i8
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2822, i8* %2823, align 1
  store %struct.Memory* %loadMem_45e7be, %struct.Memory** %MEMORY
  %loadMem_45e7c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 33
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2826 to i64*
  %2827 = load i64, i64* %PC.i340
  %2828 = add i64 %2827, 59
  %2829 = load i64, i64* %PC.i340
  %2830 = add i64 %2829, 6
  %2831 = load i64, i64* %PC.i340
  %2832 = add i64 %2831, 6
  store i64 %2832, i64* %PC.i340
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2834 = load i8, i8* %2833, align 1
  %2835 = icmp eq i8 %2834, 0
  %2836 = zext i1 %2835 to i8
  store i8 %2836, i8* %BRANCH_TAKEN, align 1
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2838 = select i1 %2835, i64 %2828, i64 %2830
  store i64 %2838, i64* %2837, align 8
  store %struct.Memory* %loadMem_45e7c1, %struct.Memory** %MEMORY
  %loadBr_45e7c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e7c1 = icmp eq i8 %loadBr_45e7c1, 1
  br i1 %cmpBr_45e7c1, label %block_.L_45e7fc, label %block_45e7c7

block_45e7c7:                                     ; preds = %block_.L_45e7b8
  %loadMem_45e7c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 33
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %2841 to i64*
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 15
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %2844 to i64*
  %2845 = load i64, i64* %RBP.i339
  %2846 = sub i64 %2845, 88
  %2847 = load i64, i64* %PC.i338
  %2848 = add i64 %2847, 4
  store i64 %2848, i64* %PC.i338
  %2849 = inttoptr i64 %2846 to i32*
  %2850 = load i32, i32* %2849
  %2851 = sub i32 %2850, 50
  %2852 = icmp ult i32 %2850, 50
  %2853 = zext i1 %2852 to i8
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2853, i8* %2854, align 1
  %2855 = and i32 %2851, 255
  %2856 = call i32 @llvm.ctpop.i32(i32 %2855)
  %2857 = trunc i32 %2856 to i8
  %2858 = and i8 %2857, 1
  %2859 = xor i8 %2858, 1
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2859, i8* %2860, align 1
  %2861 = xor i32 %2850, 50
  %2862 = xor i32 %2861, %2851
  %2863 = lshr i32 %2862, 4
  %2864 = trunc i32 %2863 to i8
  %2865 = and i8 %2864, 1
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2865, i8* %2866, align 1
  %2867 = icmp eq i32 %2851, 0
  %2868 = zext i1 %2867 to i8
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2868, i8* %2869, align 1
  %2870 = lshr i32 %2851, 31
  %2871 = trunc i32 %2870 to i8
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2871, i8* %2872, align 1
  %2873 = lshr i32 %2850, 31
  %2874 = xor i32 %2870, %2873
  %2875 = add i32 %2874, %2873
  %2876 = icmp eq i32 %2875, 2
  %2877 = zext i1 %2876 to i8
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2877, i8* %2878, align 1
  store %struct.Memory* %loadMem_45e7c7, %struct.Memory** %MEMORY
  %loadMem_45e7cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 33
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2881 to i64*
  %2882 = load i64, i64* %PC.i337
  %2883 = add i64 %2882, 49
  %2884 = load i64, i64* %PC.i337
  %2885 = add i64 %2884, 6
  %2886 = load i64, i64* %PC.i337
  %2887 = add i64 %2886, 6
  store i64 %2887, i64* %PC.i337
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2889 = load i8, i8* %2888, align 1
  %2890 = icmp ne i8 %2889, 0
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2892 = load i8, i8* %2891, align 1
  %2893 = icmp ne i8 %2892, 0
  %2894 = xor i1 %2890, %2893
  %2895 = xor i1 %2894, true
  %2896 = zext i1 %2895 to i8
  store i8 %2896, i8* %BRANCH_TAKEN, align 1
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2898 = select i1 %2894, i64 %2885, i64 %2883
  store i64 %2898, i64* %2897, align 8
  store %struct.Memory* %loadMem_45e7cb, %struct.Memory** %MEMORY
  %loadBr_45e7cb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e7cb = icmp eq i8 %loadBr_45e7cb, 1
  br i1 %cmpBr_45e7cb, label %block_.L_45e7fc, label %block_45e7d1

block_45e7d1:                                     ; preds = %block_45e7c7
  %loadMem_45e7d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 33
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 1
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %RAX.i335 = bitcast %union.anon* %2904 to i64*
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 15
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %2907 to i64*
  %2908 = load i64, i64* %RBP.i336
  %2909 = sub i64 %2908, 84
  %2910 = load i64, i64* %PC.i334
  %2911 = add i64 %2910, 4
  store i64 %2911, i64* %PC.i334
  %2912 = inttoptr i64 %2909 to i32*
  %2913 = load i32, i32* %2912
  %2914 = sext i32 %2913 to i64
  store i64 %2914, i64* %RAX.i335, align 8
  store %struct.Memory* %loadMem_45e7d1, %struct.Memory** %MEMORY
  %loadMem_45e7d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 33
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %2917 to i64*
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 1
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %2920 to i64*
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 5
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %2923 to i64*
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 15
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %2926 to i64*
  %2927 = load i64, i64* %RBP.i333
  %2928 = load i64, i64* %RAX.i331
  %2929 = mul i64 %2928, 4
  %2930 = add i64 %2927, -68
  %2931 = add i64 %2930, %2929
  %2932 = load i64, i64* %PC.i330
  %2933 = add i64 %2932, 4
  store i64 %2933, i64* %PC.i330
  %2934 = inttoptr i64 %2931 to i32*
  %2935 = load i32, i32* %2934
  %2936 = zext i32 %2935 to i64
  store i64 %2936, i64* %RCX.i332, align 8
  store %struct.Memory* %loadMem_45e7d5, %struct.Memory** %MEMORY
  %loadMem_45e7d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 33
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %2939 to i64*
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 1
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %2942 to i64*
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 15
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %2945 to i64*
  %2946 = load i64, i64* %RBP.i329
  %2947 = sub i64 %2946, 88
  %2948 = load i64, i64* %PC.i327
  %2949 = add i64 %2948, 4
  store i64 %2949, i64* %PC.i327
  %2950 = inttoptr i64 %2947 to i32*
  %2951 = load i32, i32* %2950
  %2952 = sext i32 %2951 to i64
  store i64 %2952, i64* %RAX.i328, align 8
  store %struct.Memory* %loadMem_45e7d9, %struct.Memory** %MEMORY
  %loadMem_45e7dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 33
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2955 to i64*
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 5
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %ECX.i324 = bitcast %union.anon* %2958 to i32*
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 1
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %2961 to i64*
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 15
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %2964 to i64*
  %2965 = load i64, i64* %RBP.i326
  %2966 = load i64, i64* %RAX.i325
  %2967 = mul i64 %2966, 4
  %2968 = add i64 %2965, -488
  %2969 = add i64 %2968, %2967
  %2970 = load i32, i32* %ECX.i324
  %2971 = zext i32 %2970 to i64
  %2972 = load i64, i64* %PC.i323
  %2973 = add i64 %2972, 7
  store i64 %2973, i64* %PC.i323
  %2974 = inttoptr i64 %2969 to i32*
  store i32 %2970, i32* %2974
  store %struct.Memory* %loadMem_45e7dd, %struct.Memory** %MEMORY
  %loadMem_45e7e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 33
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2977 to i64*
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 1
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %2980 to i64*
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 15
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %2983 to i64*
  %2984 = load i64, i64* %RBP.i322
  %2985 = sub i64 %2984, 88
  %2986 = load i64, i64* %PC.i320
  %2987 = add i64 %2986, 4
  store i64 %2987, i64* %PC.i320
  %2988 = inttoptr i64 %2985 to i32*
  %2989 = load i32, i32* %2988
  %2990 = sext i32 %2989 to i64
  store i64 %2990, i64* %RAX.i321, align 8
  store %struct.Memory* %loadMem_45e7e4, %struct.Memory** %MEMORY
  %loadMem_45e7e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2992 = getelementptr inbounds %struct.GPR, %struct.GPR* %2991, i32 0, i32 33
  %2993 = getelementptr inbounds %struct.Reg, %struct.Reg* %2992, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %2993 to i64*
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 1
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %2996 to i64*
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 15
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %2999 to i64*
  %3000 = load i64, i64* %RBP.i319
  %3001 = load i64, i64* %RAX.i318
  %3002 = mul i64 %3001, 4
  %3003 = add i64 %3000, -288
  %3004 = add i64 %3003, %3002
  %3005 = load i64, i64* %PC.i317
  %3006 = add i64 %3005, 11
  store i64 %3006, i64* %PC.i317
  %3007 = inttoptr i64 %3004 to i32*
  store i32 0, i32* %3007
  store %struct.Memory* %loadMem_45e7e8, %struct.Memory** %MEMORY
  %loadMem_45e7f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 33
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %3010 to i64*
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 5
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %3013 to i64*
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 15
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %3016 to i64*
  %3017 = load i64, i64* %RBP.i316
  %3018 = sub i64 %3017, 88
  %3019 = load i64, i64* %PC.i314
  %3020 = add i64 %3019, 3
  store i64 %3020, i64* %PC.i314
  %3021 = inttoptr i64 %3018 to i32*
  %3022 = load i32, i32* %3021
  %3023 = zext i32 %3022 to i64
  store i64 %3023, i64* %RCX.i315, align 8
  store %struct.Memory* %loadMem_45e7f3, %struct.Memory** %MEMORY
  %loadMem_45e7f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 33
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %3026 to i64*
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 5
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %3029 to i64*
  %3030 = load i64, i64* %RCX.i313
  %3031 = load i64, i64* %PC.i312
  %3032 = add i64 %3031, 3
  store i64 %3032, i64* %PC.i312
  %3033 = trunc i64 %3030 to i32
  %3034 = add i32 1, %3033
  %3035 = zext i32 %3034 to i64
  store i64 %3035, i64* %RCX.i313, align 8
  %3036 = icmp ult i32 %3034, %3033
  %3037 = icmp ult i32 %3034, 1
  %3038 = or i1 %3036, %3037
  %3039 = zext i1 %3038 to i8
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3039, i8* %3040, align 1
  %3041 = and i32 %3034, 255
  %3042 = call i32 @llvm.ctpop.i32(i32 %3041)
  %3043 = trunc i32 %3042 to i8
  %3044 = and i8 %3043, 1
  %3045 = xor i8 %3044, 1
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3045, i8* %3046, align 1
  %3047 = xor i64 1, %3030
  %3048 = trunc i64 %3047 to i32
  %3049 = xor i32 %3048, %3034
  %3050 = lshr i32 %3049, 4
  %3051 = trunc i32 %3050 to i8
  %3052 = and i8 %3051, 1
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3052, i8* %3053, align 1
  %3054 = icmp eq i32 %3034, 0
  %3055 = zext i1 %3054 to i8
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3055, i8* %3056, align 1
  %3057 = lshr i32 %3034, 31
  %3058 = trunc i32 %3057 to i8
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3058, i8* %3059, align 1
  %3060 = lshr i32 %3033, 31
  %3061 = xor i32 %3057, %3060
  %3062 = add i32 %3061, %3057
  %3063 = icmp eq i32 %3062, 2
  %3064 = zext i1 %3063 to i8
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3064, i8* %3065, align 1
  store %struct.Memory* %loadMem_45e7f6, %struct.Memory** %MEMORY
  %loadMem_45e7f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 33
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %3068 to i64*
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3070 = getelementptr inbounds %struct.GPR, %struct.GPR* %3069, i32 0, i32 5
  %3071 = getelementptr inbounds %struct.Reg, %struct.Reg* %3070, i32 0, i32 0
  %ECX.i310 = bitcast %union.anon* %3071 to i32*
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 15
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %3074 to i64*
  %3075 = load i64, i64* %RBP.i311
  %3076 = sub i64 %3075, 88
  %3077 = load i32, i32* %ECX.i310
  %3078 = zext i32 %3077 to i64
  %3079 = load i64, i64* %PC.i309
  %3080 = add i64 %3079, 3
  store i64 %3080, i64* %PC.i309
  %3081 = inttoptr i64 %3076 to i32*
  store i32 %3077, i32* %3081
  store %struct.Memory* %loadMem_45e7f9, %struct.Memory** %MEMORY
  br label %block_.L_45e7fc

block_.L_45e7fc:                                  ; preds = %block_45e7d1, %block_45e7c7, %block_.L_45e7b8
  %loadMem_45e7fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 33
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %3084 to i64*
  %3085 = load i64, i64* %PC.i308
  %3086 = add i64 %3085, 5
  %3087 = load i64, i64* %PC.i308
  %3088 = add i64 %3087, 5
  store i64 %3088, i64* %PC.i308
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3086, i64* %3089, align 8
  store %struct.Memory* %loadMem_45e7fc, %struct.Memory** %MEMORY
  br label %block_.L_45e801

block_.L_45e801:                                  ; preds = %block_.L_45e7fc
  %loadMem_45e801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 33
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %3092 to i64*
  %3093 = load i64, i64* %PC.i307
  %3094 = add i64 %3093, 5
  %3095 = load i64, i64* %PC.i307
  %3096 = add i64 %3095, 5
  store i64 %3096, i64* %PC.i307
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3094, i64* %3097, align 8
  store %struct.Memory* %loadMem_45e801, %struct.Memory** %MEMORY
  br label %block_.L_45e806

block_.L_45e806:                                  ; preds = %block_.L_45e801
  %loadMem_45e806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3099 = getelementptr inbounds %struct.GPR, %struct.GPR* %3098, i32 0, i32 33
  %3100 = getelementptr inbounds %struct.Reg, %struct.Reg* %3099, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %3100 to i64*
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 1
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %3103 to i64*
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 15
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %3106 to i64*
  %3107 = load i64, i64* %RBP.i306
  %3108 = sub i64 %3107, 84
  %3109 = load i64, i64* %PC.i304
  %3110 = add i64 %3109, 3
  store i64 %3110, i64* %PC.i304
  %3111 = inttoptr i64 %3108 to i32*
  %3112 = load i32, i32* %3111
  %3113 = zext i32 %3112 to i64
  store i64 %3113, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_45e806, %struct.Memory** %MEMORY
  %loadMem_45e809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 33
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %3116 to i64*
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 1
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %3119 to i64*
  %3120 = load i64, i64* %RAX.i303
  %3121 = load i64, i64* %PC.i302
  %3122 = add i64 %3121, 3
  store i64 %3122, i64* %PC.i302
  %3123 = trunc i64 %3120 to i32
  %3124 = add i32 1, %3123
  %3125 = zext i32 %3124 to i64
  store i64 %3125, i64* %RAX.i303, align 8
  %3126 = icmp ult i32 %3124, %3123
  %3127 = icmp ult i32 %3124, 1
  %3128 = or i1 %3126, %3127
  %3129 = zext i1 %3128 to i8
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3129, i8* %3130, align 1
  %3131 = and i32 %3124, 255
  %3132 = call i32 @llvm.ctpop.i32(i32 %3131)
  %3133 = trunc i32 %3132 to i8
  %3134 = and i8 %3133, 1
  %3135 = xor i8 %3134, 1
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3135, i8* %3136, align 1
  %3137 = xor i64 1, %3120
  %3138 = trunc i64 %3137 to i32
  %3139 = xor i32 %3138, %3124
  %3140 = lshr i32 %3139, 4
  %3141 = trunc i32 %3140 to i8
  %3142 = and i8 %3141, 1
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3142, i8* %3143, align 1
  %3144 = icmp eq i32 %3124, 0
  %3145 = zext i1 %3144 to i8
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3145, i8* %3146, align 1
  %3147 = lshr i32 %3124, 31
  %3148 = trunc i32 %3147 to i8
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3148, i8* %3149, align 1
  %3150 = lshr i32 %3123, 31
  %3151 = xor i32 %3147, %3150
  %3152 = add i32 %3151, %3147
  %3153 = icmp eq i32 %3152, 2
  %3154 = zext i1 %3153 to i8
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3154, i8* %3155, align 1
  store %struct.Memory* %loadMem_45e809, %struct.Memory** %MEMORY
  %loadMem_45e80c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 33
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %3158 to i64*
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3160 = getelementptr inbounds %struct.GPR, %struct.GPR* %3159, i32 0, i32 1
  %3161 = getelementptr inbounds %struct.Reg, %struct.Reg* %3160, i32 0, i32 0
  %EAX.i300 = bitcast %union.anon* %3161 to i32*
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 15
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %3164 to i64*
  %3165 = load i64, i64* %RBP.i301
  %3166 = sub i64 %3165, 84
  %3167 = load i32, i32* %EAX.i300
  %3168 = zext i32 %3167 to i64
  %3169 = load i64, i64* %PC.i299
  %3170 = add i64 %3169, 3
  store i64 %3170, i64* %PC.i299
  %3171 = inttoptr i64 %3166 to i32*
  store i32 %3167, i32* %3171
  store %struct.Memory* %loadMem_45e80c, %struct.Memory** %MEMORY
  %loadMem_45e80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3173 = getelementptr inbounds %struct.GPR, %struct.GPR* %3172, i32 0, i32 33
  %3174 = getelementptr inbounds %struct.Reg, %struct.Reg* %3173, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %3174 to i64*
  %3175 = load i64, i64* %PC.i298
  %3176 = add i64 %3175, -209
  %3177 = load i64, i64* %PC.i298
  %3178 = add i64 %3177, 5
  store i64 %3178, i64* %PC.i298
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3176, i64* %3179, align 8
  store %struct.Memory* %loadMem_45e80f, %struct.Memory** %MEMORY
  br label %block_.L_45e73e

block_.L_45e814:                                  ; preds = %block_.L_45e73e
  %loadMem_45e814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 33
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %3182 to i64*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 9
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %RSI.i296 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 15
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %3188 to i64*
  %3189 = load i64, i64* %RBP.i297
  %3190 = sub i64 %3189, 488
  %3191 = load i64, i64* %PC.i295
  %3192 = add i64 %3191, 7
  store i64 %3192, i64* %PC.i295
  store i64 %3190, i64* %RSI.i296, align 8
  store %struct.Memory* %loadMem_45e814, %struct.Memory** %MEMORY
  %loadMem_45e81b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 33
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %3195 to i64*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 17
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %R8D.i294 = bitcast %union.anon* %3198 to i32*
  %3199 = bitcast i32* %R8D.i294 to i64*
  %3200 = load i32, i32* %R8D.i294
  %3201 = zext i32 %3200 to i64
  %3202 = load i32, i32* %R8D.i294
  %3203 = zext i32 %3202 to i64
  %3204 = load i64, i64* %PC.i293
  %3205 = add i64 %3204, 3
  store i64 %3205, i64* %PC.i293
  %3206 = xor i64 %3203, %3201
  %3207 = trunc i64 %3206 to i32
  %3208 = and i64 %3206, 4294967295
  store i64 %3208, i64* %3199, align 8
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3209, align 1
  %3210 = and i32 %3207, 255
  %3211 = call i32 @llvm.ctpop.i32(i32 %3210)
  %3212 = trunc i32 %3211 to i8
  %3213 = and i8 %3212, 1
  %3214 = xor i8 %3213, 1
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3214, i8* %3215, align 1
  %3216 = icmp eq i32 %3207, 0
  %3217 = zext i1 %3216 to i8
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3217, i8* %3218, align 1
  %3219 = lshr i32 %3207, 31
  %3220 = trunc i32 %3219 to i8
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3220, i8* %3221, align 1
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3222, align 1
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3223, align 1
  store %struct.Memory* %loadMem_45e81b, %struct.Memory** %MEMORY
  %loadMem_45e81e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 33
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %3226 to i64*
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 11
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %RDI.i291 = bitcast %union.anon* %3229 to i64*
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 15
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %3232 to i64*
  %3233 = load i64, i64* %RBP.i292
  %3234 = sub i64 %3233, 32
  %3235 = load i64, i64* %PC.i290
  %3236 = add i64 %3235, 3
  store i64 %3236, i64* %PC.i290
  %3237 = inttoptr i64 %3234 to i32*
  %3238 = load i32, i32* %3237
  %3239 = zext i32 %3238 to i64
  store i64 %3239, i64* %RDI.i291, align 8
  store %struct.Memory* %loadMem_45e81e, %struct.Memory** %MEMORY
  %loadMem_45e821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 33
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 7
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RDX.i288 = bitcast %union.anon* %3245 to i64*
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 15
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %3248 to i64*
  %3249 = load i64, i64* %RBP.i289
  %3250 = sub i64 %3249, 56
  %3251 = load i64, i64* %PC.i287
  %3252 = add i64 %3251, 3
  store i64 %3252, i64* %PC.i287
  %3253 = inttoptr i64 %3250 to i32*
  %3254 = load i32, i32* %3253
  %3255 = zext i32 %3254 to i64
  store i64 %3255, i64* %RDX.i288, align 8
  store %struct.Memory* %loadMem_45e821, %struct.Memory** %MEMORY
  %loadMem_45e824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 33
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %3258 to i64*
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 5
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %RCX.i285 = bitcast %union.anon* %3261 to i64*
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 15
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %3264 to i64*
  %3265 = load i64, i64* %RBP.i286
  %3266 = sub i64 %3265, 496
  %3267 = load i64, i64* %PC.i284
  %3268 = add i64 %3267, 7
  store i64 %3268, i64* %PC.i284
  %3269 = inttoptr i64 %3266 to i64*
  %3270 = load i64, i64* %3269
  store i64 %3270, i64* %RCX.i285, align 8
  store %struct.Memory* %loadMem_45e824, %struct.Memory** %MEMORY
  %loadMem1_45e82b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 33
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %3273 to i64*
  %3274 = load i64, i64* %PC.i283
  %3275 = add i64 %3274, 17509
  %3276 = load i64, i64* %PC.i283
  %3277 = add i64 %3276, 5
  %3278 = load i64, i64* %PC.i283
  %3279 = add i64 %3278, 5
  store i64 %3279, i64* %PC.i283
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3281 = load i64, i64* %3280, align 8
  %3282 = add i64 %3281, -8
  %3283 = inttoptr i64 %3282 to i64*
  store i64 %3277, i64* %3283
  store i64 %3282, i64* %3280, align 8
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3275, i64* %3284, align 8
  store %struct.Memory* %loadMem1_45e82b, %struct.Memory** %MEMORY
  %loadMem2_45e82b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e82b = load i64, i64* %3
  %call2_45e82b = call %struct.Memory* @sub_462c90.order_moves(%struct.State* %0, i64 %loadPC_45e82b, %struct.Memory* %loadMem2_45e82b)
  store %struct.Memory* %call2_45e82b, %struct.Memory** %MEMORY
  %loadMem_45e830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 33
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %3287 to i64*
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 15
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %3290 to i64*
  %3291 = load i64, i64* %RBP.i282
  %3292 = sub i64 %3291, 84
  %3293 = load i64, i64* %PC.i281
  %3294 = add i64 %3293, 7
  store i64 %3294, i64* %PC.i281
  %3295 = inttoptr i64 %3292 to i32*
  store i32 0, i32* %3295
  store %struct.Memory* %loadMem_45e830, %struct.Memory** %MEMORY
  br label %block_.L_45e837

block_.L_45e837:                                  ; preds = %block_.L_45e9e3, %block_.L_45e814
  %loadMem_45e837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 33
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %3298 to i64*
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 1
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %3301 to i64*
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 15
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %3304 to i64*
  %3305 = load i64, i64* %RBP.i280
  %3306 = sub i64 %3305, 84
  %3307 = load i64, i64* %PC.i278
  %3308 = add i64 %3307, 3
  store i64 %3308, i64* %PC.i278
  %3309 = inttoptr i64 %3306 to i32*
  %3310 = load i32, i32* %3309
  %3311 = zext i32 %3310 to i64
  store i64 %3311, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_45e837, %struct.Memory** %MEMORY
  %loadMem_45e83a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 33
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %3314 to i64*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 1
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %EAX.i276 = bitcast %union.anon* %3317 to i32*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 15
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %3320 to i64*
  %3321 = load i32, i32* %EAX.i276
  %3322 = zext i32 %3321 to i64
  %3323 = load i64, i64* %RBP.i277
  %3324 = sub i64 %3323, 88
  %3325 = load i64, i64* %PC.i275
  %3326 = add i64 %3325, 3
  store i64 %3326, i64* %PC.i275
  %3327 = inttoptr i64 %3324 to i32*
  %3328 = load i32, i32* %3327
  %3329 = sub i32 %3321, %3328
  %3330 = icmp ult i32 %3321, %3328
  %3331 = zext i1 %3330 to i8
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3331, i8* %3332, align 1
  %3333 = and i32 %3329, 255
  %3334 = call i32 @llvm.ctpop.i32(i32 %3333)
  %3335 = trunc i32 %3334 to i8
  %3336 = and i8 %3335, 1
  %3337 = xor i8 %3336, 1
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3337, i8* %3338, align 1
  %3339 = xor i32 %3328, %3321
  %3340 = xor i32 %3339, %3329
  %3341 = lshr i32 %3340, 4
  %3342 = trunc i32 %3341 to i8
  %3343 = and i8 %3342, 1
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3343, i8* %3344, align 1
  %3345 = icmp eq i32 %3329, 0
  %3346 = zext i1 %3345 to i8
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3346, i8* %3347, align 1
  %3348 = lshr i32 %3329, 31
  %3349 = trunc i32 %3348 to i8
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3349, i8* %3350, align 1
  %3351 = lshr i32 %3321, 31
  %3352 = lshr i32 %3328, 31
  %3353 = xor i32 %3352, %3351
  %3354 = xor i32 %3348, %3351
  %3355 = add i32 %3354, %3353
  %3356 = icmp eq i32 %3355, 2
  %3357 = zext i1 %3356 to i8
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3357, i8* %3358, align 1
  store %struct.Memory* %loadMem_45e83a, %struct.Memory** %MEMORY
  %loadMem_45e83d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 33
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %3361 to i64*
  %3362 = load i64, i64* %PC.i274
  %3363 = add i64 %3362, 436
  %3364 = load i64, i64* %PC.i274
  %3365 = add i64 %3364, 6
  %3366 = load i64, i64* %PC.i274
  %3367 = add i64 %3366, 6
  store i64 %3367, i64* %PC.i274
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3369 = load i8, i8* %3368, align 1
  %3370 = icmp ne i8 %3369, 0
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3372 = load i8, i8* %3371, align 1
  %3373 = icmp ne i8 %3372, 0
  %3374 = xor i1 %3370, %3373
  %3375 = xor i1 %3374, true
  %3376 = zext i1 %3375 to i8
  store i8 %3376, i8* %BRANCH_TAKEN, align 1
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3378 = select i1 %3374, i64 %3365, i64 %3363
  store i64 %3378, i64* %3377, align 8
  store %struct.Memory* %loadMem_45e83d, %struct.Memory** %MEMORY
  %loadBr_45e83d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e83d = icmp eq i8 %loadBr_45e83d, 1
  br i1 %cmpBr_45e83d, label %block_.L_45e9f1, label %block_45e843

block_45e843:                                     ; preds = %block_.L_45e837
  %loadMem_45e843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 33
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %3381 to i64*
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 7
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %RDX.i273 = bitcast %union.anon* %3384 to i64*
  %3385 = load i64, i64* %PC.i272
  %3386 = add i64 %3385, 10
  store i64 %3386, i64* %PC.i272
  store i64 ptrtoint (%G__0x57febe_type* @G__0x57febe to i64), i64* %RDX.i273, align 8
  store %struct.Memory* %loadMem_45e843, %struct.Memory** %MEMORY
  %loadMem_45e84d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 33
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %3389 to i64*
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 1
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %3392 to i64*
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 15
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %3395 to i64*
  %3396 = load i64, i64* %RBP.i271
  %3397 = sub i64 %3396, 508
  %3398 = load i64, i64* %PC.i269
  %3399 = add i64 %3398, 7
  store i64 %3399, i64* %PC.i269
  store i64 %3397, i64* %RAX.i270, align 8
  store %struct.Memory* %loadMem_45e84d, %struct.Memory** %MEMORY
  %loadMem_45e854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 33
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %3402 to i64*
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 5
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %RCX.i267 = bitcast %union.anon* %3405 to i64*
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 15
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %3408 to i64*
  %3409 = load i64, i64* %RBP.i268
  %3410 = sub i64 %3409, 512
  %3411 = load i64, i64* %PC.i266
  %3412 = add i64 %3411, 7
  store i64 %3412, i64* %PC.i266
  store i64 %3410, i64* %RCX.i267, align 8
  store %struct.Memory* %loadMem_45e854, %struct.Memory** %MEMORY
  %loadMem_45e85b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 33
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %3415 to i64*
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3417 = getelementptr inbounds %struct.GPR, %struct.GPR* %3416, i32 0, i32 9
  %3418 = getelementptr inbounds %struct.Reg, %struct.Reg* %3417, i32 0, i32 0
  %RSI.i264 = bitcast %union.anon* %3418 to i64*
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 15
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %3421 to i64*
  %3422 = load i64, i64* %RBP.i265
  %3423 = sub i64 %3422, 516
  %3424 = load i64, i64* %PC.i263
  %3425 = add i64 %3424, 7
  store i64 %3425, i64* %PC.i263
  store i64 %3423, i64* %RSI.i264, align 8
  store %struct.Memory* %loadMem_45e85b, %struct.Memory** %MEMORY
  %loadMem_45e862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 33
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %3428 to i64*
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 11
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %RDI.i261 = bitcast %union.anon* %3431 to i64*
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 15
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %3434 to i64*
  %3435 = load i64, i64* %RBP.i262
  %3436 = sub i64 %3435, 84
  %3437 = load i64, i64* %PC.i260
  %3438 = add i64 %3437, 4
  store i64 %3438, i64* %PC.i260
  %3439 = inttoptr i64 %3436 to i32*
  %3440 = load i32, i32* %3439
  %3441 = sext i32 %3440 to i64
  store i64 %3441, i64* %RDI.i261, align 8
  store %struct.Memory* %loadMem_45e862, %struct.Memory** %MEMORY
  %loadMem_45e866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3443 = getelementptr inbounds %struct.GPR, %struct.GPR* %3442, i32 0, i32 33
  %3444 = getelementptr inbounds %struct.Reg, %struct.Reg* %3443, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %3444 to i64*
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 17
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %R8D.i257 = bitcast %union.anon* %3447 to i32*
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 11
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %RDI.i258 = bitcast %union.anon* %3450 to i64*
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 15
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %3453 to i64*
  %3454 = bitcast i32* %R8D.i257 to i64*
  %3455 = load i64, i64* %RBP.i259
  %3456 = load i64, i64* %RDI.i258
  %3457 = mul i64 %3456, 4
  %3458 = add i64 %3455, -488
  %3459 = add i64 %3458, %3457
  %3460 = load i64, i64* %PC.i256
  %3461 = add i64 %3460, 8
  store i64 %3461, i64* %PC.i256
  %3462 = inttoptr i64 %3459 to i32*
  %3463 = load i32, i32* %3462
  %3464 = zext i32 %3463 to i64
  store i64 %3464, i64* %3454, align 8
  store %struct.Memory* %loadMem_45e866, %struct.Memory** %MEMORY
  %loadMem_45e86e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 33
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %3467 to i64*
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 17
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %R8D.i254 = bitcast %union.anon* %3470 to i32*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 15
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %3473 to i64*
  %3474 = load i64, i64* %RBP.i255
  %3475 = sub i64 %3474, 60
  %3476 = load i32, i32* %R8D.i254
  %3477 = zext i32 %3476 to i64
  %3478 = load i64, i64* %PC.i253
  %3479 = add i64 %3478, 4
  store i64 %3479, i64* %PC.i253
  %3480 = inttoptr i64 %3475 to i32*
  store i32 %3476, i32* %3480
  store %struct.Memory* %loadMem_45e86e, %struct.Memory** %MEMORY
  %loadMem_45e872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 33
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %3483 to i64*
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 11
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %RDI.i251 = bitcast %union.anon* %3486 to i64*
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 15
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %3489 to i64*
  %3490 = load i64, i64* %RBP.i252
  %3491 = sub i64 %3490, 60
  %3492 = load i64, i64* %PC.i250
  %3493 = add i64 %3492, 3
  store i64 %3493, i64* %PC.i250
  %3494 = inttoptr i64 %3491 to i32*
  %3495 = load i32, i32* %3494
  %3496 = zext i32 %3495 to i64
  store i64 %3496, i64* %RDI.i251, align 8
  store %struct.Memory* %loadMem_45e872, %struct.Memory** %MEMORY
  %loadMem_45e875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 33
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %3499 to i64*
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3501 = getelementptr inbounds %struct.GPR, %struct.GPR* %3500, i32 0, i32 17
  %3502 = getelementptr inbounds %struct.Reg, %struct.Reg* %3501, i32 0, i32 0
  %R8D.i248 = bitcast %union.anon* %3502 to i32*
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3504 = getelementptr inbounds %struct.GPR, %struct.GPR* %3503, i32 0, i32 15
  %3505 = getelementptr inbounds %struct.Reg, %struct.Reg* %3504, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %3505 to i64*
  %3506 = bitcast i32* %R8D.i248 to i64*
  %3507 = load i64, i64* %RBP.i249
  %3508 = sub i64 %3507, 56
  %3509 = load i64, i64* %PC.i247
  %3510 = add i64 %3509, 4
  store i64 %3510, i64* %PC.i247
  %3511 = inttoptr i64 %3508 to i32*
  %3512 = load i32, i32* %3511
  %3513 = zext i32 %3512 to i64
  store i64 %3513, i64* %3506, align 8
  store %struct.Memory* %loadMem_45e875, %struct.Memory** %MEMORY
  %loadMem_45e879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 33
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %3516 to i64*
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 19
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %R9D.i245 = bitcast %union.anon* %3519 to i32*
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 15
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %3522 to i64*
  %3523 = bitcast i32* %R9D.i245 to i64*
  %3524 = load i64, i64* %RBP.i246
  %3525 = sub i64 %3524, 32
  %3526 = load i64, i64* %PC.i244
  %3527 = add i64 %3526, 4
  store i64 %3527, i64* %PC.i244
  %3528 = inttoptr i64 %3525 to i32*
  %3529 = load i32, i32* %3528
  %3530 = zext i32 %3529 to i64
  store i64 %3530, i64* %3523, align 8
  store %struct.Memory* %loadMem_45e879, %struct.Memory** %MEMORY
  %loadMem_45e87d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 33
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %3533 to i64*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 21
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %R10D.i242 = bitcast %union.anon* %3536 to i32*
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 15
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %3539 to i64*
  %3540 = bitcast i32* %R10D.i242 to i64*
  %3541 = load i64, i64* %RBP.i243
  %3542 = sub i64 %3541, 44
  %3543 = load i64, i64* %PC.i241
  %3544 = add i64 %3543, 4
  store i64 %3544, i64* %PC.i241
  %3545 = inttoptr i64 %3542 to i32*
  %3546 = load i32, i32* %3545
  %3547 = zext i32 %3546 to i64
  store i64 %3547, i64* %3540, align 8
  store %struct.Memory* %loadMem_45e87d, %struct.Memory** %MEMORY
  %loadMem_45e881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 33
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %3550 to i64*
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 23
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %R11D.i239 = bitcast %union.anon* %3553 to i32*
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 15
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %3556 to i64*
  %3557 = bitcast i32* %R11D.i239 to i64*
  %3558 = load i64, i64* %RBP.i240
  %3559 = sub i64 %3558, 48
  %3560 = load i64, i64* %PC.i238
  %3561 = add i64 %3560, 4
  store i64 %3561, i64* %PC.i238
  %3562 = inttoptr i64 %3559 to i32*
  %3563 = load i32, i32* %3562
  %3564 = zext i32 %3563 to i64
  store i64 %3564, i64* %3557, align 8
  store %struct.Memory* %loadMem_45e881, %struct.Memory** %MEMORY
  %loadMem_45e885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 15
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %3570 to i64*
  %3571 = load i64, i64* %RBP.i237
  %3572 = sub i64 %3571, 76
  %3573 = load i64, i64* %PC.i236
  %3574 = add i64 %3573, 4
  store i64 %3574, i64* %PC.i236
  %3575 = inttoptr i64 %3572 to i32*
  %3576 = load i32, i32* %3575
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3577, align 1
  %3578 = and i32 %3576, 255
  %3579 = call i32 @llvm.ctpop.i32(i32 %3578)
  %3580 = trunc i32 %3579 to i8
  %3581 = and i8 %3580, 1
  %3582 = xor i8 %3581, 1
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3582, i8* %3583, align 1
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3584, align 1
  %3585 = icmp eq i32 %3576, 0
  %3586 = zext i1 %3585 to i8
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3586, i8* %3587, align 1
  %3588 = lshr i32 %3576, 31
  %3589 = trunc i32 %3588 to i8
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3589, i8* %3590, align 1
  %3591 = lshr i32 %3576, 31
  %3592 = xor i32 %3588, %3591
  %3593 = add i32 %3592, %3591
  %3594 = icmp eq i32 %3593, 2
  %3595 = zext i1 %3594 to i8
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3595, i8* %3596, align 1
  store %struct.Memory* %loadMem_45e885, %struct.Memory** %MEMORY
  %loadMem_45e889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 33
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %3599 to i64*
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 3
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %3603 = bitcast %union.anon* %3602 to %struct.anon.2*
  %BL.i235 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3603, i32 0, i32 0
  %3604 = load i64, i64* %PC.i234
  %3605 = add i64 %3604, 3
  store i64 %3605, i64* %PC.i234
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3607 = load i8, i8* %3606, align 1
  store i8 %3607, i8* %BL.i235, align 1
  store %struct.Memory* %loadMem_45e889, %struct.Memory** %MEMORY
  %loadMem_45e88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3609 = getelementptr inbounds %struct.GPR, %struct.GPR* %3608, i32 0, i32 33
  %3610 = getelementptr inbounds %struct.Reg, %struct.Reg* %3609, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3610 to i64*
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 3
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %3614 = bitcast %union.anon* %3613 to %struct.anon.2*
  %BL.i233 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3614, i32 0, i32 0
  %3615 = load i8, i8* %BL.i233
  %3616 = zext i8 %3615 to i64
  %3617 = load i64, i64* %PC.i232
  %3618 = add i64 %3617, 3
  store i64 %3618, i64* %PC.i232
  %3619 = and i64 1, %3616
  %3620 = trunc i64 %3619 to i8
  store i8 %3620, i8* %BL.i233, align 1
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3621, align 1
  %3622 = trunc i64 %3619 to i32
  %3623 = and i32 %3622, 255
  %3624 = call i32 @llvm.ctpop.i32(i32 %3623)
  %3625 = trunc i32 %3624 to i8
  %3626 = and i8 %3625, 1
  %3627 = xor i8 %3626, 1
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3627, i8* %3628, align 1
  %3629 = icmp eq i8 %3620, 0
  %3630 = zext i1 %3629 to i8
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3630, i8* %3631, align 1
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3632, align 1
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3633, align 1
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3634, align 1
  store %struct.Memory* %loadMem_45e88c, %struct.Memory** %MEMORY
  %loadMem_45e88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3636 = getelementptr inbounds %struct.GPR, %struct.GPR* %3635, i32 0, i32 33
  %3637 = getelementptr inbounds %struct.Reg, %struct.Reg* %3636, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3637 to i64*
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3639 = getelementptr inbounds %struct.GPR, %struct.GPR* %3638, i32 0, i32 3
  %3640 = getelementptr inbounds %struct.Reg, %struct.Reg* %3639, i32 0, i32 0
  %3641 = bitcast %union.anon* %3640 to %struct.anon.2*
  %BL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3641, i32 0, i32 0
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3643 = getelementptr inbounds %struct.GPR, %struct.GPR* %3642, i32 0, i32 29
  %3644 = getelementptr inbounds %struct.Reg, %struct.Reg* %3643, i32 0, i32 0
  %R14D.i231 = bitcast %union.anon* %3644 to i32*
  %3645 = bitcast i32* %R14D.i231 to i64*
  %3646 = load i8, i8* %BL.i
  %3647 = zext i8 %3646 to i64
  %3648 = load i64, i64* %PC.i230
  %3649 = add i64 %3648, 4
  store i64 %3649, i64* %PC.i230
  %3650 = and i64 %3647, 255
  store i64 %3650, i64* %3645, align 8
  store %struct.Memory* %loadMem_45e88f, %struct.Memory** %MEMORY
  %loadMem_45e893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3652 = getelementptr inbounds %struct.GPR, %struct.GPR* %3651, i32 0, i32 33
  %3653 = getelementptr inbounds %struct.Reg, %struct.Reg* %3652, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %3653 to i64*
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3655 = getelementptr inbounds %struct.GPR, %struct.GPR* %3654, i32 0, i32 9
  %3656 = getelementptr inbounds %struct.Reg, %struct.Reg* %3655, i32 0, i32 0
  %RSI.i228 = bitcast %union.anon* %3656 to i64*
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3658 = getelementptr inbounds %struct.GPR, %struct.GPR* %3657, i32 0, i32 15
  %3659 = getelementptr inbounds %struct.Reg, %struct.Reg* %3658, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %3659 to i64*
  %3660 = load i64, i64* %RBP.i229
  %3661 = sub i64 %3660, 576
  %3662 = load i64, i64* %RSI.i228
  %3663 = load i64, i64* %PC.i227
  %3664 = add i64 %3663, 7
  store i64 %3664, i64* %PC.i227
  %3665 = inttoptr i64 %3661 to i64*
  store i64 %3662, i64* %3665
  store %struct.Memory* %loadMem_45e893, %struct.Memory** %MEMORY
  %loadMem_45e89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 33
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %3668 to i64*
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3670 = getelementptr inbounds %struct.GPR, %struct.GPR* %3669, i32 0, i32 17
  %3671 = getelementptr inbounds %struct.Reg, %struct.Reg* %3670, i32 0, i32 0
  %R8D.i225 = bitcast %union.anon* %3671 to i32*
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3673 = getelementptr inbounds %struct.GPR, %struct.GPR* %3672, i32 0, i32 9
  %3674 = getelementptr inbounds %struct.Reg, %struct.Reg* %3673, i32 0, i32 0
  %RSI.i226 = bitcast %union.anon* %3674 to i64*
  %3675 = load i32, i32* %R8D.i225
  %3676 = zext i32 %3675 to i64
  %3677 = load i64, i64* %PC.i224
  %3678 = add i64 %3677, 3
  store i64 %3678, i64* %PC.i224
  %3679 = and i64 %3676, 4294967295
  store i64 %3679, i64* %RSI.i226, align 8
  store %struct.Memory* %loadMem_45e89a, %struct.Memory** %MEMORY
  %loadMem_45e89d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3681 = getelementptr inbounds %struct.GPR, %struct.GPR* %3680, i32 0, i32 33
  %3682 = getelementptr inbounds %struct.Reg, %struct.Reg* %3681, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %3682 to i64*
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 5
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %3685 to i64*
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 15
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %3688 to i64*
  %3689 = load i64, i64* %RBP.i223
  %3690 = sub i64 %3689, 584
  %3691 = load i64, i64* %RCX.i222
  %3692 = load i64, i64* %PC.i221
  %3693 = add i64 %3692, 7
  store i64 %3693, i64* %PC.i221
  %3694 = inttoptr i64 %3690 to i64*
  store i64 %3691, i64* %3694
  store %struct.Memory* %loadMem_45e89d, %struct.Memory** %MEMORY
  %loadMem_45e8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3696 = getelementptr inbounds %struct.GPR, %struct.GPR* %3695, i32 0, i32 33
  %3697 = getelementptr inbounds %struct.Reg, %struct.Reg* %3696, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3697 to i64*
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3699 = getelementptr inbounds %struct.GPR, %struct.GPR* %3698, i32 0, i32 19
  %3700 = getelementptr inbounds %struct.Reg, %struct.Reg* %3699, i32 0, i32 0
  %R9D.i219 = bitcast %union.anon* %3700 to i32*
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 5
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %3703 to i64*
  %3704 = load i32, i32* %R9D.i219
  %3705 = zext i32 %3704 to i64
  %3706 = load i64, i64* %PC.i218
  %3707 = add i64 %3706, 3
  store i64 %3707, i64* %PC.i218
  %3708 = and i64 %3705, 4294967295
  store i64 %3708, i64* %RCX.i220, align 8
  store %struct.Memory* %loadMem_45e8a4, %struct.Memory** %MEMORY
  %loadMem_45e8a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 33
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %3711 to i64*
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 17
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %R8D.i217 = bitcast %union.anon* %3714 to i32*
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 21
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %3717 to i32*
  %3718 = bitcast i32* %R8D.i217 to i64*
  %3719 = load i32, i32* %R10D.i
  %3720 = zext i32 %3719 to i64
  %3721 = load i64, i64* %PC.i216
  %3722 = add i64 %3721, 3
  store i64 %3722, i64* %PC.i216
  %3723 = and i64 %3720, 4294967295
  store i64 %3723, i64* %3718, align 8
  store %struct.Memory* %loadMem_45e8a7, %struct.Memory** %MEMORY
  %loadMem_45e8aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 33
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %3726 to i64*
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3728 = getelementptr inbounds %struct.GPR, %struct.GPR* %3727, i32 0, i32 19
  %3729 = getelementptr inbounds %struct.Reg, %struct.Reg* %3728, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %3729 to i32*
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 23
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %3732 to i32*
  %3733 = bitcast i32* %R9D.i to i64*
  %3734 = load i32, i32* %R11D.i
  %3735 = zext i32 %3734 to i64
  %3736 = load i64, i64* %PC.i215
  %3737 = add i64 %3736, 3
  store i64 %3737, i64* %PC.i215
  %3738 = and i64 %3735, 4294967295
  store i64 %3738, i64* %3733, align 8
  store %struct.Memory* %loadMem_45e8aa, %struct.Memory** %MEMORY
  %loadMem_45e8ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 33
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %3741 to i64*
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 1
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %3744 to i64*
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 13
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %RSP.i214 = bitcast %union.anon* %3747 to i64*
  %3748 = load i64, i64* %RSP.i214
  %3749 = load i64, i64* %RAX.i213
  %3750 = load i64, i64* %PC.i212
  %3751 = add i64 %3750, 4
  store i64 %3751, i64* %PC.i212
  %3752 = inttoptr i64 %3748 to i64*
  store i64 %3749, i64* %3752
  store %struct.Memory* %loadMem_45e8ad, %struct.Memory** %MEMORY
  %loadMem_45e8b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3754 = getelementptr inbounds %struct.GPR, %struct.GPR* %3753, i32 0, i32 33
  %3755 = getelementptr inbounds %struct.Reg, %struct.Reg* %3754, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %3755 to i64*
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3757 = getelementptr inbounds %struct.GPR, %struct.GPR* %3756, i32 0, i32 1
  %3758 = getelementptr inbounds %struct.Reg, %struct.Reg* %3757, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %3758 to i64*
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3760 = getelementptr inbounds %struct.GPR, %struct.GPR* %3759, i32 0, i32 15
  %3761 = getelementptr inbounds %struct.Reg, %struct.Reg* %3760, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %3761 to i64*
  %3762 = load i64, i64* %RBP.i211
  %3763 = sub i64 %3762, 584
  %3764 = load i64, i64* %PC.i209
  %3765 = add i64 %3764, 7
  store i64 %3765, i64* %PC.i209
  %3766 = inttoptr i64 %3763 to i64*
  %3767 = load i64, i64* %3766
  store i64 %3767, i64* %RAX.i210, align 8
  store %struct.Memory* %loadMem_45e8b1, %struct.Memory** %MEMORY
  %loadMem_45e8b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 33
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 1
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %3773 to i64*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 13
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %RSP.i208 = bitcast %union.anon* %3776 to i64*
  %3777 = load i64, i64* %RSP.i208
  %3778 = add i64 %3777, 8
  %3779 = load i64, i64* %RAX.i207
  %3780 = load i64, i64* %PC.i206
  %3781 = add i64 %3780, 5
  store i64 %3781, i64* %PC.i206
  %3782 = inttoptr i64 %3778 to i64*
  store i64 %3779, i64* %3782
  store %struct.Memory* %loadMem_45e8b8, %struct.Memory** %MEMORY
  %loadMem_45e8bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 33
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3785 to i64*
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 15
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %3788 to i64*
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 31
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %R15.i205 = bitcast %union.anon* %3791 to i64*
  %3792 = load i64, i64* %RBP.i204
  %3793 = sub i64 %3792, 576
  %3794 = load i64, i64* %PC.i203
  %3795 = add i64 %3794, 7
  store i64 %3795, i64* %PC.i203
  %3796 = inttoptr i64 %3793 to i64*
  %3797 = load i64, i64* %3796
  store i64 %3797, i64* %R15.i205, align 8
  store %struct.Memory* %loadMem_45e8bd, %struct.Memory** %MEMORY
  %loadMem_45e8c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 33
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3800 to i64*
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 13
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %RSP.i201 = bitcast %union.anon* %3803 to i64*
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 31
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %R15.i202 = bitcast %union.anon* %3806 to i64*
  %3807 = load i64, i64* %RSP.i201
  %3808 = add i64 %3807, 16
  %3809 = load i64, i64* %R15.i202
  %3810 = load i64, i64* %PC.i200
  %3811 = add i64 %3810, 5
  store i64 %3811, i64* %PC.i200
  %3812 = inttoptr i64 %3808 to i64*
  store i64 %3809, i64* %3812
  store %struct.Memory* %loadMem_45e8c4, %struct.Memory** %MEMORY
  %loadMem_45e8c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3814 = getelementptr inbounds %struct.GPR, %struct.GPR* %3813, i32 0, i32 33
  %3815 = getelementptr inbounds %struct.Reg, %struct.Reg* %3814, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3815 to i64*
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 29
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %R14D.i = bitcast %union.anon* %3818 to i32*
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 13
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %RSP.i199 = bitcast %union.anon* %3821 to i64*
  %3822 = load i64, i64* %RSP.i199
  %3823 = add i64 %3822, 24
  %3824 = load i32, i32* %R14D.i
  %3825 = zext i32 %3824 to i64
  %3826 = load i64, i64* %PC.i198
  %3827 = add i64 %3826, 5
  store i64 %3827, i64* %PC.i198
  %3828 = inttoptr i64 %3823 to i32*
  store i32 %3824, i32* %3828
  store %struct.Memory* %loadMem_45e8c9, %struct.Memory** %MEMORY
  %loadMem1_45e8ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 33
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %3831 to i64*
  %3832 = load i64, i64* %PC.i197
  %3833 = add i64 %3832, -326366
  %3834 = load i64, i64* %PC.i197
  %3835 = add i64 %3834, 5
  %3836 = load i64, i64* %PC.i197
  %3837 = add i64 %3836, 5
  store i64 %3837, i64* %PC.i197
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3839 = load i64, i64* %3838, align 8
  %3840 = add i64 %3839, -8
  %3841 = inttoptr i64 %3840 to i64*
  store i64 %3835, i64* %3841
  store i64 %3840, i64* %3838, align 8
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3833, i64* %3842, align 8
  store %struct.Memory* %loadMem1_45e8ce, %struct.Memory** %MEMORY
  %loadMem2_45e8ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e8ce = load i64, i64* %3
  %call2_45e8ce = call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* %0, i64 %loadPC_45e8ce, %struct.Memory* %loadMem2_45e8ce)
  store %struct.Memory* %call2_45e8ce, %struct.Memory** %MEMORY
  %loadMem_45e8d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 33
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %3845 to i64*
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 1
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %EAX.i196 = bitcast %union.anon* %3848 to i32*
  %3849 = load i32, i32* %EAX.i196
  %3850 = zext i32 %3849 to i64
  %3851 = load i64, i64* %PC.i195
  %3852 = add i64 %3851, 3
  store i64 %3852, i64* %PC.i195
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3853, align 1
  %3854 = and i32 %3849, 255
  %3855 = call i32 @llvm.ctpop.i32(i32 %3854)
  %3856 = trunc i32 %3855 to i8
  %3857 = and i8 %3856, 1
  %3858 = xor i8 %3857, 1
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3858, i8* %3859, align 1
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3860, align 1
  %3861 = icmp eq i32 %3849, 0
  %3862 = zext i1 %3861 to i8
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3862, i8* %3863, align 1
  %3864 = lshr i32 %3849, 31
  %3865 = trunc i32 %3864 to i8
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3865, i8* %3866, align 1
  %3867 = lshr i32 %3849, 31
  %3868 = xor i32 %3864, %3867
  %3869 = add i32 %3868, %3867
  %3870 = icmp eq i32 %3869, 2
  %3871 = zext i1 %3870 to i8
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3871, i8* %3872, align 1
  store %struct.Memory* %loadMem_45e8d3, %struct.Memory** %MEMORY
  %loadMem_45e8d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3874 = getelementptr inbounds %struct.GPR, %struct.GPR* %3873, i32 0, i32 33
  %3875 = getelementptr inbounds %struct.Reg, %struct.Reg* %3874, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3875 to i64*
  %3876 = load i64, i64* %PC.i194
  %3877 = add i64 %3876, 264
  %3878 = load i64, i64* %PC.i194
  %3879 = add i64 %3878, 6
  %3880 = load i64, i64* %PC.i194
  %3881 = add i64 %3880, 6
  store i64 %3881, i64* %PC.i194
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3883 = load i8, i8* %3882, align 1
  store i8 %3883, i8* %BRANCH_TAKEN, align 1
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3885 = icmp ne i8 %3883, 0
  %3886 = select i1 %3885, i64 %3877, i64 %3879
  store i64 %3886, i64* %3884, align 8
  store %struct.Memory* %loadMem_45e8d6, %struct.Memory** %MEMORY
  %loadBr_45e8d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e8d6 = icmp eq i8 %loadBr_45e8d6, 1
  br i1 %cmpBr_45e8d6, label %block_.L_45e9de, label %block_45e8dc

block_45e8dc:                                     ; preds = %block_45e843
  %loadMem_45e8dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3888 = getelementptr inbounds %struct.GPR, %struct.GPR* %3887, i32 0, i32 33
  %3889 = getelementptr inbounds %struct.Reg, %struct.Reg* %3888, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %3889 to i64*
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 15
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %3892 to i64*
  %3893 = load i64, i64* %RBP.i193
  %3894 = sub i64 %3893, 516
  %3895 = load i64, i64* %PC.i192
  %3896 = add i64 %3895, 7
  store i64 %3896, i64* %PC.i192
  %3897 = inttoptr i64 %3894 to i32*
  %3898 = load i32, i32* %3897
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3899, align 1
  %3900 = and i32 %3898, 255
  %3901 = call i32 @llvm.ctpop.i32(i32 %3900)
  %3902 = trunc i32 %3901 to i8
  %3903 = and i8 %3902, 1
  %3904 = xor i8 %3903, 1
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3904, i8* %3905, align 1
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3906, align 1
  %3907 = icmp eq i32 %3898, 0
  %3908 = zext i1 %3907 to i8
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3908, i8* %3909, align 1
  %3910 = lshr i32 %3898, 31
  %3911 = trunc i32 %3910 to i8
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3911, i8* %3912, align 1
  %3913 = lshr i32 %3898, 31
  %3914 = xor i32 %3910, %3913
  %3915 = add i32 %3914, %3913
  %3916 = icmp eq i32 %3915, 2
  %3917 = zext i1 %3916 to i8
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3917, i8* %3918, align 1
  store %struct.Memory* %loadMem_45e8dc, %struct.Memory** %MEMORY
  %loadMem_45e8e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3920 = getelementptr inbounds %struct.GPR, %struct.GPR* %3919, i32 0, i32 33
  %3921 = getelementptr inbounds %struct.Reg, %struct.Reg* %3920, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3921 to i64*
  %3922 = load i64, i64* %PC.i191
  %3923 = add i64 %3922, 195
  %3924 = load i64, i64* %PC.i191
  %3925 = add i64 %3924, 6
  %3926 = load i64, i64* %PC.i191
  %3927 = add i64 %3926, 6
  store i64 %3927, i64* %PC.i191
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3929 = load i8, i8* %3928, align 1
  %3930 = icmp eq i8 %3929, 0
  %3931 = zext i1 %3930 to i8
  store i8 %3931, i8* %BRANCH_TAKEN, align 1
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3933 = select i1 %3930, i64 %3923, i64 %3925
  store i64 %3933, i64* %3932, align 8
  store %struct.Memory* %loadMem_45e8e3, %struct.Memory** %MEMORY
  %loadBr_45e8e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e8e3 = icmp eq i8 %loadBr_45e8e3, 1
  br i1 %cmpBr_45e8e3, label %block_.L_45e9a6, label %block_45e8e9

block_45e8e9:                                     ; preds = %block_45e8dc
  %loadMem_45e8e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 33
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %3936 to i64*
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3938 = getelementptr inbounds %struct.GPR, %struct.GPR* %3937, i32 0, i32 1
  %3939 = getelementptr inbounds %struct.Reg, %struct.Reg* %3938, i32 0, i32 0
  %EAX.i189 = bitcast %union.anon* %3939 to i32*
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3941 = getelementptr inbounds %struct.GPR, %struct.GPR* %3940, i32 0, i32 1
  %3942 = getelementptr inbounds %struct.Reg, %struct.Reg* %3941, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %3942 to i64*
  %3943 = load i64, i64* %RAX.i190
  %3944 = load i32, i32* %EAX.i189
  %3945 = zext i32 %3944 to i64
  %3946 = load i64, i64* %PC.i188
  %3947 = add i64 %3946, 2
  store i64 %3947, i64* %PC.i188
  %3948 = xor i64 %3945, %3943
  %3949 = trunc i64 %3948 to i32
  %3950 = and i64 %3948, 4294967295
  store i64 %3950, i64* %RAX.i190, align 8
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3951, align 1
  %3952 = and i32 %3949, 255
  %3953 = call i32 @llvm.ctpop.i32(i32 %3952)
  %3954 = trunc i32 %3953 to i8
  %3955 = and i8 %3954, 1
  %3956 = xor i8 %3955, 1
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3956, i8* %3957, align 1
  %3958 = icmp eq i32 %3949, 0
  %3959 = zext i1 %3958 to i8
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3959, i8* %3960, align 1
  %3961 = lshr i32 %3949, 31
  %3962 = trunc i32 %3961 to i8
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3962, i8* %3963, align 1
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3964, align 1
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3965, align 1
  store %struct.Memory* %loadMem_45e8e9, %struct.Memory** %MEMORY
  %loadMem_45e8eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 33
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %3968 to i64*
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 1
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %EAX.i186 = bitcast %union.anon* %3971 to i32*
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 9
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %RSI.i187 = bitcast %union.anon* %3974 to i64*
  %3975 = load i32, i32* %EAX.i186
  %3976 = zext i32 %3975 to i64
  %3977 = load i64, i64* %PC.i185
  %3978 = add i64 %3977, 2
  store i64 %3978, i64* %PC.i185
  %3979 = and i64 %3976, 4294967295
  store i64 %3979, i64* %RSI.i187, align 8
  store %struct.Memory* %loadMem_45e8eb, %struct.Memory** %MEMORY
  %loadMem_45e8ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 33
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3982 to i64*
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 11
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %RDI.i183 = bitcast %union.anon* %3985 to i64*
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 15
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %3988 to i64*
  %3989 = load i64, i64* %RBP.i184
  %3990 = sub i64 %3989, 32
  %3991 = load i64, i64* %PC.i182
  %3992 = add i64 %3991, 3
  store i64 %3992, i64* %PC.i182
  %3993 = inttoptr i64 %3990 to i32*
  %3994 = load i32, i32* %3993
  %3995 = zext i32 %3994 to i64
  store i64 %3995, i64* %RDI.i183, align 8
  store %struct.Memory* %loadMem_45e8ed, %struct.Memory** %MEMORY
  %loadMem_45e8f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 33
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3998 to i64*
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 7
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %RDX.i180 = bitcast %union.anon* %4001 to i64*
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 15
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %4004 to i64*
  %4005 = load i64, i64* %RBP.i181
  %4006 = sub i64 %4005, 508
  %4007 = load i64, i64* %PC.i179
  %4008 = add i64 %4007, 6
  store i64 %4008, i64* %PC.i179
  %4009 = inttoptr i64 %4006 to i32*
  %4010 = load i32, i32* %4009
  %4011 = zext i32 %4010 to i64
  store i64 %4011, i64* %RDX.i180, align 8
  store %struct.Memory* %loadMem_45e8f0, %struct.Memory** %MEMORY
  %loadMem_45e8f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 33
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %4014 to i64*
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 5
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %RCX.i177 = bitcast %union.anon* %4017 to i64*
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 15
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %4020 to i64*
  %4021 = load i64, i64* %RBP.i178
  %4022 = sub i64 %4021, 512
  %4023 = load i64, i64* %PC.i176
  %4024 = add i64 %4023, 6
  store i64 %4024, i64* %PC.i176
  %4025 = inttoptr i64 %4022 to i32*
  %4026 = load i32, i32* %4025
  %4027 = zext i32 %4026 to i64
  store i64 %4027, i64* %RCX.i177, align 8
  store %struct.Memory* %loadMem_45e8f6, %struct.Memory** %MEMORY
  %loadMem1_45e8fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4029 = getelementptr inbounds %struct.GPR, %struct.GPR* %4028, i32 0, i32 33
  %4030 = getelementptr inbounds %struct.Reg, %struct.Reg* %4029, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %4030 to i64*
  %4031 = load i64, i64* %PC.i175
  %4032 = add i64 %4031, 47620
  %4033 = load i64, i64* %PC.i175
  %4034 = add i64 %4033, 5
  %4035 = load i64, i64* %PC.i175
  %4036 = add i64 %4035, 5
  store i64 %4036, i64* %PC.i175
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4038 = load i64, i64* %4037, align 8
  %4039 = add i64 %4038, -8
  %4040 = inttoptr i64 %4039 to i64*
  store i64 %4034, i64* %4040
  store i64 %4039, i64* %4037, align 8
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4032, i64* %4041, align 8
  store %struct.Memory* %loadMem1_45e8fc, %struct.Memory** %MEMORY
  %loadMem2_45e8fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e8fc = load i64, i64* %3
  %call2_45e8fc = call %struct.Memory* @sub_46a300.simple_ladder_defend(%struct.State* %0, i64 %loadPC_45e8fc, %struct.Memory* %loadMem2_45e8fc)
  store %struct.Memory* %call2_45e8fc, %struct.Memory** %MEMORY
  %loadMem_45e901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 33
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %4044 to i64*
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 1
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %EAX.i173 = bitcast %union.anon* %4047 to i32*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 15
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %4050 to i64*
  %4051 = load i64, i64* %RBP.i174
  %4052 = sub i64 %4051, 80
  %4053 = load i32, i32* %EAX.i173
  %4054 = zext i32 %4053 to i64
  %4055 = load i64, i64* %PC.i172
  %4056 = add i64 %4055, 3
  store i64 %4056, i64* %PC.i172
  %4057 = inttoptr i64 %4052 to i32*
  store i32 %4053, i32* %4057
  store %struct.Memory* %loadMem_45e901, %struct.Memory** %MEMORY
  %loadMem_45e904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 33
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %4060 to i64*
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 15
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %4063 to i64*
  %4064 = load i64, i64* %RBP.i171
  %4065 = sub i64 %4064, 80
  %4066 = load i64, i64* %PC.i170
  %4067 = add i64 %4066, 4
  store i64 %4067, i64* %PC.i170
  %4068 = inttoptr i64 %4065 to i32*
  %4069 = load i32, i32* %4068
  %4070 = sub i32 %4069, 5
  %4071 = icmp ult i32 %4069, 5
  %4072 = zext i1 %4071 to i8
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4072, i8* %4073, align 1
  %4074 = and i32 %4070, 255
  %4075 = call i32 @llvm.ctpop.i32(i32 %4074)
  %4076 = trunc i32 %4075 to i8
  %4077 = and i8 %4076, 1
  %4078 = xor i8 %4077, 1
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4078, i8* %4079, align 1
  %4080 = xor i32 %4069, 5
  %4081 = xor i32 %4080, %4070
  %4082 = lshr i32 %4081, 4
  %4083 = trunc i32 %4082 to i8
  %4084 = and i8 %4083, 1
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4084, i8* %4085, align 1
  %4086 = icmp eq i32 %4070, 0
  %4087 = zext i1 %4086 to i8
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4087, i8* %4088, align 1
  %4089 = lshr i32 %4070, 31
  %4090 = trunc i32 %4089 to i8
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4090, i8* %4091, align 1
  %4092 = lshr i32 %4069, 31
  %4093 = xor i32 %4089, %4092
  %4094 = add i32 %4093, %4092
  %4095 = icmp eq i32 %4094, 2
  %4096 = zext i1 %4095 to i8
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4096, i8* %4097, align 1
  store %struct.Memory* %loadMem_45e904, %struct.Memory** %MEMORY
  %loadMem_45e908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4099 = getelementptr inbounds %struct.GPR, %struct.GPR* %4098, i32 0, i32 33
  %4100 = getelementptr inbounds %struct.Reg, %struct.Reg* %4099, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %4100 to i64*
  %4101 = load i64, i64* %PC.i169
  %4102 = add i64 %4101, 153
  %4103 = load i64, i64* %PC.i169
  %4104 = add i64 %4103, 6
  %4105 = load i64, i64* %PC.i169
  %4106 = add i64 %4105, 6
  store i64 %4106, i64* %PC.i169
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4108 = load i8, i8* %4107, align 1
  store i8 %4108, i8* %BRANCH_TAKEN, align 1
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4110 = icmp ne i8 %4108, 0
  %4111 = select i1 %4110, i64 %4102, i64 %4104
  store i64 %4111, i64* %4109, align 8
  store %struct.Memory* %loadMem_45e908, %struct.Memory** %MEMORY
  %loadBr_45e908 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e908 = icmp eq i8 %loadBr_45e908, 1
  br i1 %cmpBr_45e908, label %block_.L_45e9a1, label %block_45e90e

block_45e90e:                                     ; preds = %block_45e8e9
  %loadMem_45e90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 33
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %4114 to i64*
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 15
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %4117 to i64*
  %4118 = load i64, i64* %RBP.i168
  %4119 = sub i64 %4118, 80
  %4120 = load i64, i64* %PC.i167
  %4121 = add i64 %4120, 4
  store i64 %4121, i64* %PC.i167
  %4122 = inttoptr i64 %4119 to i32*
  %4123 = load i32, i32* %4122
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4124, align 1
  %4125 = and i32 %4123, 255
  %4126 = call i32 @llvm.ctpop.i32(i32 %4125)
  %4127 = trunc i32 %4126 to i8
  %4128 = and i8 %4127, 1
  %4129 = xor i8 %4128, 1
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4129, i8* %4130, align 1
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4131, align 1
  %4132 = icmp eq i32 %4123, 0
  %4133 = zext i1 %4132 to i8
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4133, i8* %4134, align 1
  %4135 = lshr i32 %4123, 31
  %4136 = trunc i32 %4135 to i8
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4136, i8* %4137, align 1
  %4138 = lshr i32 %4123, 31
  %4139 = xor i32 %4135, %4138
  %4140 = add i32 %4139, %4138
  %4141 = icmp eq i32 %4140, 2
  %4142 = zext i1 %4141 to i8
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4142, i8* %4143, align 1
  store %struct.Memory* %loadMem_45e90e, %struct.Memory** %MEMORY
  %loadMem_45e912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 33
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %4146 to i64*
  %4147 = load i64, i64* %PC.i166
  %4148 = add i64 %4147, 94
  %4149 = load i64, i64* %PC.i166
  %4150 = add i64 %4149, 6
  %4151 = load i64, i64* %PC.i166
  %4152 = add i64 %4151, 6
  store i64 %4152, i64* %PC.i166
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4154 = load i8, i8* %4153, align 1
  %4155 = icmp eq i8 %4154, 0
  %4156 = zext i1 %4155 to i8
  store i8 %4156, i8* %BRANCH_TAKEN, align 1
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4158 = select i1 %4155, i64 %4148, i64 %4150
  store i64 %4158, i64* %4157, align 8
  store %struct.Memory* %loadMem_45e912, %struct.Memory** %MEMORY
  %loadBr_45e912 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e912 = icmp eq i8 %loadBr_45e912, 1
  br i1 %cmpBr_45e912, label %block_.L_45e970, label %block_45e918

block_45e918:                                     ; preds = %block_45e90e
  %loadMem1_45e918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 33
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %4161 to i64*
  %4162 = load i64, i64* %PC.i165
  %4163 = add i64 %4162, -330680
  %4164 = load i64, i64* %PC.i165
  %4165 = add i64 %4164, 5
  %4166 = load i64, i64* %PC.i165
  %4167 = add i64 %4166, 5
  store i64 %4167, i64* %PC.i165
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4169 = load i64, i64* %4168, align 8
  %4170 = add i64 %4169, -8
  %4171 = inttoptr i64 %4170 to i64*
  store i64 %4165, i64* %4171
  store i64 %4170, i64* %4168, align 8
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4163, i64* %4172, align 8
  store %struct.Memory* %loadMem1_45e918, %struct.Memory** %MEMORY
  %loadMem2_45e918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e918 = load i64, i64* %3
  %call2_45e918 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_45e918, %struct.Memory* %loadMem2_45e918)
  store %struct.Memory* %call2_45e918, %struct.Memory** %MEMORY
  %loadMem_45e91d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 33
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %4175 to i64*
  %4176 = load i64, i64* %PC.i164
  %4177 = add i64 %4176, 9
  store i64 %4177, i64* %PC.i164
  %4178 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4179, align 1
  %4180 = trunc i64 %4178 to i32
  %4181 = and i32 %4180, 255
  %4182 = call i32 @llvm.ctpop.i32(i32 %4181)
  %4183 = trunc i32 %4182 to i8
  %4184 = and i8 %4183, 1
  %4185 = xor i8 %4184, 1
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4185, i8* %4186, align 1
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4187, align 1
  %4188 = icmp eq i64 %4178, 0
  %4189 = zext i1 %4188 to i8
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4189, i8* %4190, align 1
  %4191 = lshr i64 %4178, 63
  %4192 = trunc i64 %4191 to i8
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4192, i8* %4193, align 1
  %4194 = lshr i64 %4178, 63
  %4195 = xor i64 %4191, %4194
  %4196 = add i64 %4195, %4194
  %4197 = icmp eq i64 %4196, 2
  %4198 = zext i1 %4197 to i8
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4198, i8* %4199, align 1
  store %struct.Memory* %loadMem_45e91d, %struct.Memory** %MEMORY
  %loadMem_45e926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 33
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %4202 to i64*
  %4203 = load i64, i64* %PC.i163
  %4204 = add i64 %4203, 42
  %4205 = load i64, i64* %PC.i163
  %4206 = add i64 %4205, 6
  %4207 = load i64, i64* %PC.i163
  %4208 = add i64 %4207, 6
  store i64 %4208, i64* %PC.i163
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4210 = load i8, i8* %4209, align 1
  store i8 %4210, i8* %BRANCH_TAKEN, align 1
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4212 = icmp ne i8 %4210, 0
  %4213 = select i1 %4212, i64 %4204, i64 %4206
  store i64 %4213, i64* %4211, align 8
  store %struct.Memory* %loadMem_45e926, %struct.Memory** %MEMORY
  %loadBr_45e926 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e926 = icmp eq i8 %loadBr_45e926, 1
  br i1 %cmpBr_45e926, label %block_.L_45e950, label %block_45e92c

block_45e92c:                                     ; preds = %block_45e918
  %loadMem_45e92c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 33
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %4216 to i64*
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 5
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %RCX.i162 = bitcast %union.anon* %4219 to i64*
  %4220 = load i64, i64* %PC.i161
  %4221 = add i64 %4220, 5
  store i64 %4221, i64* %PC.i161
  store i64 5, i64* %RCX.i162, align 8
  store %struct.Memory* %loadMem_45e92c, %struct.Memory** %MEMORY
  %loadMem_45e931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4223 = getelementptr inbounds %struct.GPR, %struct.GPR* %4222, i32 0, i32 33
  %4224 = getelementptr inbounds %struct.Reg, %struct.Reg* %4223, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4224 to i64*
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4226 = getelementptr inbounds %struct.GPR, %struct.GPR* %4225, i32 0, i32 17
  %4227 = getelementptr inbounds %struct.Reg, %struct.Reg* %4226, i32 0, i32 0
  %R8.i160 = bitcast %union.anon* %4227 to i64*
  %4228 = load i64, i64* %PC.i159
  %4229 = add i64 %4228, 10
  store i64 %4229, i64* %PC.i159
  store i64 ptrtoint (%G__0x57e5fb_type* @G__0x57e5fb to i64), i64* %R8.i160, align 8
  store %struct.Memory* %loadMem_45e931, %struct.Memory** %MEMORY
  %loadMem_45e93b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 33
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %4232 to i64*
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 11
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %RDI.i157 = bitcast %union.anon* %4235 to i64*
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4237 = getelementptr inbounds %struct.GPR, %struct.GPR* %4236, i32 0, i32 15
  %4238 = getelementptr inbounds %struct.Reg, %struct.Reg* %4237, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %4238 to i64*
  %4239 = load i64, i64* %RBP.i158
  %4240 = sub i64 %4239, 496
  %4241 = load i64, i64* %PC.i156
  %4242 = add i64 %4241, 7
  store i64 %4242, i64* %PC.i156
  %4243 = inttoptr i64 %4240 to i64*
  %4244 = load i64, i64* %4243
  store i64 %4244, i64* %RDI.i157, align 8
  store %struct.Memory* %loadMem_45e93b, %struct.Memory** %MEMORY
  %loadMem_45e942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 33
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %4247 to i64*
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 9
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %RSI.i154 = bitcast %union.anon* %4250 to i64*
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 15
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %4253 to i64*
  %4254 = load i64, i64* %RBP.i155
  %4255 = sub i64 %4254, 500
  %4256 = load i64, i64* %PC.i153
  %4257 = add i64 %4256, 6
  store i64 %4257, i64* %PC.i153
  %4258 = inttoptr i64 %4255 to i32*
  %4259 = load i32, i32* %4258
  %4260 = zext i32 %4259 to i64
  store i64 %4260, i64* %RSI.i154, align 8
  store %struct.Memory* %loadMem_45e942, %struct.Memory** %MEMORY
  %loadMem_45e948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4262 = getelementptr inbounds %struct.GPR, %struct.GPR* %4261, i32 0, i32 33
  %4263 = getelementptr inbounds %struct.Reg, %struct.Reg* %4262, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %4263 to i64*
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4265 = getelementptr inbounds %struct.GPR, %struct.GPR* %4264, i32 0, i32 7
  %4266 = getelementptr inbounds %struct.Reg, %struct.Reg* %4265, i32 0, i32 0
  %RDX.i151 = bitcast %union.anon* %4266 to i64*
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 15
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %4269 to i64*
  %4270 = load i64, i64* %RBP.i152
  %4271 = sub i64 %4270, 60
  %4272 = load i64, i64* %PC.i150
  %4273 = add i64 %4272, 3
  store i64 %4273, i64* %PC.i150
  %4274 = inttoptr i64 %4271 to i32*
  %4275 = load i32, i32* %4274
  %4276 = zext i32 %4275 to i64
  store i64 %4276, i64* %RDX.i151, align 8
  store %struct.Memory* %loadMem_45e948, %struct.Memory** %MEMORY
  %loadMem1_45e94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4278 = getelementptr inbounds %struct.GPR, %struct.GPR* %4277, i32 0, i32 33
  %4279 = getelementptr inbounds %struct.Reg, %struct.Reg* %4278, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %4279 to i64*
  %4280 = load i64, i64* %PC.i149
  %4281 = add i64 %4280, -289163
  %4282 = load i64, i64* %PC.i149
  %4283 = add i64 %4282, 5
  %4284 = load i64, i64* %PC.i149
  %4285 = add i64 %4284, 5
  store i64 %4285, i64* %PC.i149
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4287 = load i64, i64* %4286, align 8
  %4288 = add i64 %4287, -8
  %4289 = inttoptr i64 %4288 to i64*
  store i64 %4283, i64* %4289
  store i64 %4288, i64* %4286, align 8
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4281, i64* %4290, align 8
  store %struct.Memory* %loadMem1_45e94b, %struct.Memory** %MEMORY
  %loadMem2_45e94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e94b = load i64, i64* %3
  %call2_45e94b = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64 %loadPC_45e94b, %struct.Memory* %loadMem2_45e94b)
  store %struct.Memory* %call2_45e94b, %struct.Memory** %MEMORY
  br label %block_.L_45e950

block_.L_45e950:                                  ; preds = %block_45e92c, %block_45e918
  %loadMem_45e950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4292 = getelementptr inbounds %struct.GPR, %struct.GPR* %4291, i32 0, i32 33
  %4293 = getelementptr inbounds %struct.Reg, %struct.Reg* %4292, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %4293 to i64*
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4295 = getelementptr inbounds %struct.GPR, %struct.GPR* %4294, i32 0, i32 15
  %4296 = getelementptr inbounds %struct.Reg, %struct.Reg* %4295, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %4296 to i64*
  %4297 = load i64, i64* %RBP.i148
  %4298 = sub i64 %4297, 40
  %4299 = load i64, i64* %PC.i147
  %4300 = add i64 %4299, 5
  store i64 %4300, i64* %PC.i147
  %4301 = inttoptr i64 %4298 to i64*
  %4302 = load i64, i64* %4301
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4303, align 1
  %4304 = trunc i64 %4302 to i32
  %4305 = and i32 %4304, 255
  %4306 = call i32 @llvm.ctpop.i32(i32 %4305)
  %4307 = trunc i32 %4306 to i8
  %4308 = and i8 %4307, 1
  %4309 = xor i8 %4308, 1
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4309, i8* %4310, align 1
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4311, align 1
  %4312 = icmp eq i64 %4302, 0
  %4313 = zext i1 %4312 to i8
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4313, i8* %4314, align 1
  %4315 = lshr i64 %4302, 63
  %4316 = trunc i64 %4315 to i8
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4316, i8* %4317, align 1
  %4318 = lshr i64 %4302, 63
  %4319 = xor i64 %4315, %4318
  %4320 = add i64 %4319, %4318
  %4321 = icmp eq i64 %4320, 2
  %4322 = zext i1 %4321 to i8
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4322, i8* %4323, align 1
  store %struct.Memory* %loadMem_45e950, %struct.Memory** %MEMORY
  %loadMem_45e955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4325 = getelementptr inbounds %struct.GPR, %struct.GPR* %4324, i32 0, i32 33
  %4326 = getelementptr inbounds %struct.Reg, %struct.Reg* %4325, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %4326 to i64*
  %4327 = load i64, i64* %PC.i146
  %4328 = add i64 %4327, 15
  %4329 = load i64, i64* %PC.i146
  %4330 = add i64 %4329, 6
  %4331 = load i64, i64* %PC.i146
  %4332 = add i64 %4331, 6
  store i64 %4332, i64* %PC.i146
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4334 = load i8, i8* %4333, align 1
  store i8 %4334, i8* %BRANCH_TAKEN, align 1
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4336 = icmp ne i8 %4334, 0
  %4337 = select i1 %4336, i64 %4328, i64 %4330
  store i64 %4337, i64* %4335, align 8
  store %struct.Memory* %loadMem_45e955, %struct.Memory** %MEMORY
  %loadBr_45e955 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e955 = icmp eq i8 %loadBr_45e955, 1
  br i1 %cmpBr_45e955, label %block_.L_45e964, label %block_45e95b

block_45e95b:                                     ; preds = %block_.L_45e950
  %loadMem_45e95b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4339 = getelementptr inbounds %struct.GPR, %struct.GPR* %4338, i32 0, i32 33
  %4340 = getelementptr inbounds %struct.Reg, %struct.Reg* %4339, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %4340 to i64*
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4342 = getelementptr inbounds %struct.GPR, %struct.GPR* %4341, i32 0, i32 1
  %4343 = getelementptr inbounds %struct.Reg, %struct.Reg* %4342, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %4343 to i64*
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 15
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %4346 to i64*
  %4347 = load i64, i64* %RBP.i145
  %4348 = sub i64 %4347, 60
  %4349 = load i64, i64* %PC.i143
  %4350 = add i64 %4349, 3
  store i64 %4350, i64* %PC.i143
  %4351 = inttoptr i64 %4348 to i32*
  %4352 = load i32, i32* %4351
  %4353 = zext i32 %4352 to i64
  store i64 %4353, i64* %RAX.i144, align 8
  store %struct.Memory* %loadMem_45e95b, %struct.Memory** %MEMORY
  %loadMem_45e95e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4355 = getelementptr inbounds %struct.GPR, %struct.GPR* %4354, i32 0, i32 33
  %4356 = getelementptr inbounds %struct.Reg, %struct.Reg* %4355, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %4356 to i64*
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 5
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %4359 to i64*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 15
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %4362 to i64*
  %4363 = load i64, i64* %RBP.i142
  %4364 = sub i64 %4363, 40
  %4365 = load i64, i64* %PC.i140
  %4366 = add i64 %4365, 4
  store i64 %4366, i64* %PC.i140
  %4367 = inttoptr i64 %4364 to i64*
  %4368 = load i64, i64* %4367
  store i64 %4368, i64* %RCX.i141, align 8
  store %struct.Memory* %loadMem_45e95e, %struct.Memory** %MEMORY
  %loadMem_45e962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 33
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %4371 to i64*
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 1
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %EAX.i138 = bitcast %union.anon* %4374 to i32*
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 5
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %4377 to i64*
  %4378 = load i64, i64* %RCX.i139
  %4379 = load i32, i32* %EAX.i138
  %4380 = zext i32 %4379 to i64
  %4381 = load i64, i64* %PC.i137
  %4382 = add i64 %4381, 2
  store i64 %4382, i64* %PC.i137
  %4383 = inttoptr i64 %4378 to i32*
  store i32 %4379, i32* %4383
  store %struct.Memory* %loadMem_45e962, %struct.Memory** %MEMORY
  br label %block_.L_45e964

block_.L_45e964:                                  ; preds = %block_45e95b, %block_.L_45e950
  %loadMem_45e964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4385 = getelementptr inbounds %struct.GPR, %struct.GPR* %4384, i32 0, i32 33
  %4386 = getelementptr inbounds %struct.Reg, %struct.Reg* %4385, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %4386 to i64*
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4388 = getelementptr inbounds %struct.GPR, %struct.GPR* %4387, i32 0, i32 15
  %4389 = getelementptr inbounds %struct.Reg, %struct.Reg* %4388, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %4389 to i64*
  %4390 = load i64, i64* %RBP.i136
  %4391 = sub i64 %4390, 28
  %4392 = load i64, i64* %PC.i135
  %4393 = add i64 %4392, 7
  store i64 %4393, i64* %PC.i135
  %4394 = inttoptr i64 %4391 to i32*
  store i32 5, i32* %4394
  store %struct.Memory* %loadMem_45e964, %struct.Memory** %MEMORY
  %loadMem_45e96b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 33
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %4397 to i64*
  %4398 = load i64, i64* %PC.i134
  %4399 = add i64 %4398, 278
  %4400 = load i64, i64* %PC.i134
  %4401 = add i64 %4400, 5
  store i64 %4401, i64* %PC.i134
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4399, i64* %4402, align 8
  store %struct.Memory* %loadMem_45e96b, %struct.Memory** %MEMORY
  br label %block_.L_45ea81

block_.L_45e970:                                  ; preds = %block_45e90e
  %loadMem_45e970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4404 = getelementptr inbounds %struct.GPR, %struct.GPR* %4403, i32 0, i32 33
  %4405 = getelementptr inbounds %struct.Reg, %struct.Reg* %4404, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %4405 to i64*
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4407 = getelementptr inbounds %struct.GPR, %struct.GPR* %4406, i32 0, i32 15
  %4408 = getelementptr inbounds %struct.Reg, %struct.Reg* %4407, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %4408 to i64*
  %4409 = load i64, i64* %RBP.i133
  %4410 = sub i64 %4409, 80
  %4411 = load i64, i64* %PC.i132
  %4412 = add i64 %4411, 4
  store i64 %4412, i64* %PC.i132
  %4413 = inttoptr i64 %4410 to i32*
  %4414 = load i32, i32* %4413
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4415, align 1
  %4416 = and i32 %4414, 255
  %4417 = call i32 @llvm.ctpop.i32(i32 %4416)
  %4418 = trunc i32 %4417 to i8
  %4419 = and i8 %4418, 1
  %4420 = xor i8 %4419, 1
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4420, i8* %4421, align 1
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4422, align 1
  %4423 = icmp eq i32 %4414, 0
  %4424 = zext i1 %4423 to i8
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4424, i8* %4425, align 1
  %4426 = lshr i32 %4414, 31
  %4427 = trunc i32 %4426 to i8
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4427, i8* %4428, align 1
  %4429 = lshr i32 %4414, 31
  %4430 = xor i32 %4426, %4429
  %4431 = add i32 %4430, %4429
  %4432 = icmp eq i32 %4431, 2
  %4433 = zext i1 %4432 to i8
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4433, i8* %4434, align 1
  store %struct.Memory* %loadMem_45e970, %struct.Memory** %MEMORY
  %loadMem_45e974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4436 = getelementptr inbounds %struct.GPR, %struct.GPR* %4435, i32 0, i32 33
  %4437 = getelementptr inbounds %struct.Reg, %struct.Reg* %4436, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %4437 to i64*
  %4438 = load i64, i64* %PC.i131
  %4439 = add i64 %4438, 40
  %4440 = load i64, i64* %PC.i131
  %4441 = add i64 %4440, 6
  %4442 = load i64, i64* %PC.i131
  %4443 = add i64 %4442, 6
  store i64 %4443, i64* %PC.i131
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4445 = load i8, i8* %4444, align 1
  store i8 %4445, i8* %BRANCH_TAKEN, align 1
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4447 = icmp ne i8 %4445, 0
  %4448 = select i1 %4447, i64 %4439, i64 %4441
  store i64 %4448, i64* %4446, align 8
  store %struct.Memory* %loadMem_45e974, %struct.Memory** %MEMORY
  %loadBr_45e974 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e974 = icmp eq i8 %loadBr_45e974, 1
  br i1 %cmpBr_45e974, label %block_.L_45e99c, label %block_45e97a

block_45e97a:                                     ; preds = %block_.L_45e970
  %loadMem_45e97a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4450 = getelementptr inbounds %struct.GPR, %struct.GPR* %4449, i32 0, i32 33
  %4451 = getelementptr inbounds %struct.Reg, %struct.Reg* %4450, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %4451 to i64*
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4453 = getelementptr inbounds %struct.GPR, %struct.GPR* %4452, i32 0, i32 1
  %4454 = getelementptr inbounds %struct.Reg, %struct.Reg* %4453, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %4454 to i64*
  %4455 = load i64, i64* %PC.i129
  %4456 = add i64 %4455, 5
  store i64 %4456, i64* %PC.i129
  store i64 5, i64* %RAX.i130, align 8
  store %struct.Memory* %loadMem_45e97a, %struct.Memory** %MEMORY
  %loadMem_45e97f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 33
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %4459 to i64*
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 1
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %4462 to i64*
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 15
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %4465 to i64*
  %4466 = load i64, i64* %RAX.i127
  %4467 = load i64, i64* %RBP.i128
  %4468 = sub i64 %4467, 80
  %4469 = load i64, i64* %PC.i126
  %4470 = add i64 %4469, 3
  store i64 %4470, i64* %PC.i126
  %4471 = trunc i64 %4466 to i32
  %4472 = inttoptr i64 %4468 to i32*
  %4473 = load i32, i32* %4472
  %4474 = sub i32 %4471, %4473
  %4475 = zext i32 %4474 to i64
  store i64 %4475, i64* %RAX.i127, align 8
  %4476 = icmp ult i32 %4471, %4473
  %4477 = zext i1 %4476 to i8
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4477, i8* %4478, align 1
  %4479 = and i32 %4474, 255
  %4480 = call i32 @llvm.ctpop.i32(i32 %4479)
  %4481 = trunc i32 %4480 to i8
  %4482 = and i8 %4481, 1
  %4483 = xor i8 %4482, 1
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4483, i8* %4484, align 1
  %4485 = xor i32 %4473, %4471
  %4486 = xor i32 %4485, %4474
  %4487 = lshr i32 %4486, 4
  %4488 = trunc i32 %4487 to i8
  %4489 = and i8 %4488, 1
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4489, i8* %4490, align 1
  %4491 = icmp eq i32 %4474, 0
  %4492 = zext i1 %4491 to i8
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4492, i8* %4493, align 1
  %4494 = lshr i32 %4474, 31
  %4495 = trunc i32 %4494 to i8
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4495, i8* %4496, align 1
  %4497 = lshr i32 %4471, 31
  %4498 = lshr i32 %4473, 31
  %4499 = xor i32 %4498, %4497
  %4500 = xor i32 %4494, %4497
  %4501 = add i32 %4500, %4499
  %4502 = icmp eq i32 %4501, 2
  %4503 = zext i1 %4502 to i8
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4503, i8* %4504, align 1
  store %struct.Memory* %loadMem_45e97f, %struct.Memory** %MEMORY
  %loadMem_45e982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4506 = getelementptr inbounds %struct.GPR, %struct.GPR* %4505, i32 0, i32 33
  %4507 = getelementptr inbounds %struct.Reg, %struct.Reg* %4506, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %4507 to i64*
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4509 = getelementptr inbounds %struct.GPR, %struct.GPR* %4508, i32 0, i32 1
  %4510 = getelementptr inbounds %struct.Reg, %struct.Reg* %4509, i32 0, i32 0
  %EAX.i124 = bitcast %union.anon* %4510 to i32*
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 15
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %4513 to i64*
  %4514 = load i32, i32* %EAX.i124
  %4515 = zext i32 %4514 to i64
  %4516 = load i64, i64* %RBP.i125
  %4517 = sub i64 %4516, 76
  %4518 = load i64, i64* %PC.i123
  %4519 = add i64 %4518, 3
  store i64 %4519, i64* %PC.i123
  %4520 = inttoptr i64 %4517 to i32*
  %4521 = load i32, i32* %4520
  %4522 = sub i32 %4514, %4521
  %4523 = icmp ult i32 %4514, %4521
  %4524 = zext i1 %4523 to i8
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4524, i8* %4525, align 1
  %4526 = and i32 %4522, 255
  %4527 = call i32 @llvm.ctpop.i32(i32 %4526)
  %4528 = trunc i32 %4527 to i8
  %4529 = and i8 %4528, 1
  %4530 = xor i8 %4529, 1
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4530, i8* %4531, align 1
  %4532 = xor i32 %4521, %4514
  %4533 = xor i32 %4532, %4522
  %4534 = lshr i32 %4533, 4
  %4535 = trunc i32 %4534 to i8
  %4536 = and i8 %4535, 1
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4536, i8* %4537, align 1
  %4538 = icmp eq i32 %4522, 0
  %4539 = zext i1 %4538 to i8
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4539, i8* %4540, align 1
  %4541 = lshr i32 %4522, 31
  %4542 = trunc i32 %4541 to i8
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4542, i8* %4543, align 1
  %4544 = lshr i32 %4514, 31
  %4545 = lshr i32 %4521, 31
  %4546 = xor i32 %4545, %4544
  %4547 = xor i32 %4541, %4544
  %4548 = add i32 %4547, %4546
  %4549 = icmp eq i32 %4548, 2
  %4550 = zext i1 %4549 to i8
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4550, i8* %4551, align 1
  store %struct.Memory* %loadMem_45e982, %struct.Memory** %MEMORY
  %loadMem_45e985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 33
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %4554 to i64*
  %4555 = load i64, i64* %PC.i122
  %4556 = add i64 %4555, 23
  %4557 = load i64, i64* %PC.i122
  %4558 = add i64 %4557, 6
  %4559 = load i64, i64* %PC.i122
  %4560 = add i64 %4559, 6
  store i64 %4560, i64* %PC.i122
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4562 = load i8, i8* %4561, align 1
  %4563 = icmp ne i8 %4562, 0
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4565 = load i8, i8* %4564, align 1
  %4566 = icmp ne i8 %4565, 0
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4568 = load i8, i8* %4567, align 1
  %4569 = icmp ne i8 %4568, 0
  %4570 = xor i1 %4566, %4569
  %4571 = or i1 %4563, %4570
  %4572 = zext i1 %4571 to i8
  store i8 %4572, i8* %BRANCH_TAKEN, align 1
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4574 = select i1 %4571, i64 %4556, i64 %4558
  store i64 %4574, i64* %4573, align 8
  store %struct.Memory* %loadMem_45e985, %struct.Memory** %MEMORY
  %loadBr_45e985 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e985 = icmp eq i8 %loadBr_45e985, 1
  br i1 %cmpBr_45e985, label %block_.L_45e99c, label %block_45e98b

block_45e98b:                                     ; preds = %block_45e97a
  %loadMem_45e98b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4576 = getelementptr inbounds %struct.GPR, %struct.GPR* %4575, i32 0, i32 33
  %4577 = getelementptr inbounds %struct.Reg, %struct.Reg* %4576, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4577 to i64*
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4579 = getelementptr inbounds %struct.GPR, %struct.GPR* %4578, i32 0, i32 1
  %4580 = getelementptr inbounds %struct.Reg, %struct.Reg* %4579, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %4580 to i64*
  %4581 = load i64, i64* %PC.i120
  %4582 = add i64 %4581, 5
  store i64 %4582, i64* %PC.i120
  store i64 5, i64* %RAX.i121, align 8
  store %struct.Memory* %loadMem_45e98b, %struct.Memory** %MEMORY
  %loadMem_45e990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 33
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4585 to i64*
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4587 = getelementptr inbounds %struct.GPR, %struct.GPR* %4586, i32 0, i32 5
  %4588 = getelementptr inbounds %struct.Reg, %struct.Reg* %4587, i32 0, i32 0
  %RCX.i118 = bitcast %union.anon* %4588 to i64*
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4590 = getelementptr inbounds %struct.GPR, %struct.GPR* %4589, i32 0, i32 15
  %4591 = getelementptr inbounds %struct.Reg, %struct.Reg* %4590, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %4591 to i64*
  %4592 = load i64, i64* %RBP.i119
  %4593 = sub i64 %4592, 60
  %4594 = load i64, i64* %PC.i117
  %4595 = add i64 %4594, 3
  store i64 %4595, i64* %PC.i117
  %4596 = inttoptr i64 %4593 to i32*
  %4597 = load i32, i32* %4596
  %4598 = zext i32 %4597 to i64
  store i64 %4598, i64* %RCX.i118, align 8
  store %struct.Memory* %loadMem_45e990, %struct.Memory** %MEMORY
  %loadMem_45e993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4600 = getelementptr inbounds %struct.GPR, %struct.GPR* %4599, i32 0, i32 33
  %4601 = getelementptr inbounds %struct.Reg, %struct.Reg* %4600, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %4601 to i64*
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4603 = getelementptr inbounds %struct.GPR, %struct.GPR* %4602, i32 0, i32 5
  %4604 = getelementptr inbounds %struct.Reg, %struct.Reg* %4603, i32 0, i32 0
  %ECX.i115 = bitcast %union.anon* %4604 to i32*
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 15
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %4607 to i64*
  %4608 = load i64, i64* %RBP.i116
  %4609 = sub i64 %4608, 72
  %4610 = load i32, i32* %ECX.i115
  %4611 = zext i32 %4610 to i64
  %4612 = load i64, i64* %PC.i114
  %4613 = add i64 %4612, 3
  store i64 %4613, i64* %PC.i114
  %4614 = inttoptr i64 %4609 to i32*
  store i32 %4610, i32* %4614
  store %struct.Memory* %loadMem_45e993, %struct.Memory** %MEMORY
  %loadMem_45e996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4616 = getelementptr inbounds %struct.GPR, %struct.GPR* %4615, i32 0, i32 33
  %4617 = getelementptr inbounds %struct.Reg, %struct.Reg* %4616, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %4617 to i64*
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4619 = getelementptr inbounds %struct.GPR, %struct.GPR* %4618, i32 0, i32 1
  %4620 = getelementptr inbounds %struct.Reg, %struct.Reg* %4619, i32 0, i32 0
  %RAX.i112 = bitcast %union.anon* %4620 to i64*
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 15
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %4623 to i64*
  %4624 = load i64, i64* %RAX.i112
  %4625 = load i64, i64* %RBP.i113
  %4626 = sub i64 %4625, 80
  %4627 = load i64, i64* %PC.i111
  %4628 = add i64 %4627, 3
  store i64 %4628, i64* %PC.i111
  %4629 = trunc i64 %4624 to i32
  %4630 = inttoptr i64 %4626 to i32*
  %4631 = load i32, i32* %4630
  %4632 = sub i32 %4629, %4631
  %4633 = zext i32 %4632 to i64
  store i64 %4633, i64* %RAX.i112, align 8
  %4634 = icmp ult i32 %4629, %4631
  %4635 = zext i1 %4634 to i8
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4635, i8* %4636, align 1
  %4637 = and i32 %4632, 255
  %4638 = call i32 @llvm.ctpop.i32(i32 %4637)
  %4639 = trunc i32 %4638 to i8
  %4640 = and i8 %4639, 1
  %4641 = xor i8 %4640, 1
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4641, i8* %4642, align 1
  %4643 = xor i32 %4631, %4629
  %4644 = xor i32 %4643, %4632
  %4645 = lshr i32 %4644, 4
  %4646 = trunc i32 %4645 to i8
  %4647 = and i8 %4646, 1
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4647, i8* %4648, align 1
  %4649 = icmp eq i32 %4632, 0
  %4650 = zext i1 %4649 to i8
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4650, i8* %4651, align 1
  %4652 = lshr i32 %4632, 31
  %4653 = trunc i32 %4652 to i8
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4653, i8* %4654, align 1
  %4655 = lshr i32 %4629, 31
  %4656 = lshr i32 %4631, 31
  %4657 = xor i32 %4656, %4655
  %4658 = xor i32 %4652, %4655
  %4659 = add i32 %4658, %4657
  %4660 = icmp eq i32 %4659, 2
  %4661 = zext i1 %4660 to i8
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4661, i8* %4662, align 1
  store %struct.Memory* %loadMem_45e996, %struct.Memory** %MEMORY
  %loadMem_45e999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 33
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %4665 to i64*
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 1
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %EAX.i109 = bitcast %union.anon* %4668 to i32*
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4670 = getelementptr inbounds %struct.GPR, %struct.GPR* %4669, i32 0, i32 15
  %4671 = getelementptr inbounds %struct.Reg, %struct.Reg* %4670, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %4671 to i64*
  %4672 = load i64, i64* %RBP.i110
  %4673 = sub i64 %4672, 76
  %4674 = load i32, i32* %EAX.i109
  %4675 = zext i32 %4674 to i64
  %4676 = load i64, i64* %PC.i108
  %4677 = add i64 %4676, 3
  store i64 %4677, i64* %PC.i108
  %4678 = inttoptr i64 %4673 to i32*
  store i32 %4674, i32* %4678
  store %struct.Memory* %loadMem_45e999, %struct.Memory** %MEMORY
  br label %block_.L_45e99c

block_.L_45e99c:                                  ; preds = %block_45e98b, %block_45e97a, %block_.L_45e970
  %loadMem_45e99c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4680 = getelementptr inbounds %struct.GPR, %struct.GPR* %4679, i32 0, i32 33
  %4681 = getelementptr inbounds %struct.Reg, %struct.Reg* %4680, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4681 to i64*
  %4682 = load i64, i64* %PC.i107
  %4683 = add i64 %4682, 5
  %4684 = load i64, i64* %PC.i107
  %4685 = add i64 %4684, 5
  store i64 %4685, i64* %PC.i107
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4683, i64* %4686, align 8
  store %struct.Memory* %loadMem_45e99c, %struct.Memory** %MEMORY
  br label %block_.L_45e9a1

block_.L_45e9a1:                                  ; preds = %block_.L_45e99c, %block_45e8e9
  %loadMem_45e9a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4688 = getelementptr inbounds %struct.GPR, %struct.GPR* %4687, i32 0, i32 33
  %4689 = getelementptr inbounds %struct.Reg, %struct.Reg* %4688, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4689 to i64*
  %4690 = load i64, i64* %PC.i106
  %4691 = add i64 %4690, 56
  %4692 = load i64, i64* %PC.i106
  %4693 = add i64 %4692, 5
  store i64 %4693, i64* %PC.i106
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4691, i64* %4694, align 8
  store %struct.Memory* %loadMem_45e9a1, %struct.Memory** %MEMORY
  br label %block_.L_45e9d9

block_.L_45e9a6:                                  ; preds = %block_45e8dc
  %loadMem_45e9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4696 = getelementptr inbounds %struct.GPR, %struct.GPR* %4695, i32 0, i32 33
  %4697 = getelementptr inbounds %struct.Reg, %struct.Reg* %4696, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4697 to i64*
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4699 = getelementptr inbounds %struct.GPR, %struct.GPR* %4698, i32 0, i32 1
  %4700 = getelementptr inbounds %struct.Reg, %struct.Reg* %4699, i32 0, i32 0
  %EAX.i104 = bitcast %union.anon* %4700 to i32*
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4702 = getelementptr inbounds %struct.GPR, %struct.GPR* %4701, i32 0, i32 1
  %4703 = getelementptr inbounds %struct.Reg, %struct.Reg* %4702, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %4703 to i64*
  %4704 = load i64, i64* %RAX.i105
  %4705 = load i32, i32* %EAX.i104
  %4706 = zext i32 %4705 to i64
  %4707 = load i64, i64* %PC.i103
  %4708 = add i64 %4707, 2
  store i64 %4708, i64* %PC.i103
  %4709 = xor i64 %4706, %4704
  %4710 = trunc i64 %4709 to i32
  %4711 = and i64 %4709, 4294967295
  store i64 %4711, i64* %RAX.i105, align 8
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4712, align 1
  %4713 = and i32 %4710, 255
  %4714 = call i32 @llvm.ctpop.i32(i32 %4713)
  %4715 = trunc i32 %4714 to i8
  %4716 = and i8 %4715, 1
  %4717 = xor i8 %4716, 1
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4717, i8* %4718, align 1
  %4719 = icmp eq i32 %4710, 0
  %4720 = zext i1 %4719 to i8
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4720, i8* %4721, align 1
  %4722 = lshr i32 %4710, 31
  %4723 = trunc i32 %4722 to i8
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4723, i8* %4724, align 1
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4725, align 1
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4726, align 1
  store %struct.Memory* %loadMem_45e9a6, %struct.Memory** %MEMORY
  %loadMem_45e9a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4728 = getelementptr inbounds %struct.GPR, %struct.GPR* %4727, i32 0, i32 33
  %4729 = getelementptr inbounds %struct.Reg, %struct.Reg* %4728, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4729 to i64*
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4731 = getelementptr inbounds %struct.GPR, %struct.GPR* %4730, i32 0, i32 1
  %4732 = getelementptr inbounds %struct.Reg, %struct.Reg* %4731, i32 0, i32 0
  %EAX.i101 = bitcast %union.anon* %4732 to i32*
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4734 = getelementptr inbounds %struct.GPR, %struct.GPR* %4733, i32 0, i32 9
  %4735 = getelementptr inbounds %struct.Reg, %struct.Reg* %4734, i32 0, i32 0
  %RSI.i102 = bitcast %union.anon* %4735 to i64*
  %4736 = load i32, i32* %EAX.i101
  %4737 = zext i32 %4736 to i64
  %4738 = load i64, i64* %PC.i100
  %4739 = add i64 %4738, 2
  store i64 %4739, i64* %PC.i100
  %4740 = and i64 %4737, 4294967295
  store i64 %4740, i64* %RSI.i102, align 8
  store %struct.Memory* %loadMem_45e9a8, %struct.Memory** %MEMORY
  %loadMem_45e9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 33
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %4743 to i64*
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4745 = getelementptr inbounds %struct.GPR, %struct.GPR* %4744, i32 0, i32 11
  %4746 = getelementptr inbounds %struct.Reg, %struct.Reg* %4745, i32 0, i32 0
  %RDI.i98 = bitcast %union.anon* %4746 to i64*
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4748 = getelementptr inbounds %struct.GPR, %struct.GPR* %4747, i32 0, i32 15
  %4749 = getelementptr inbounds %struct.Reg, %struct.Reg* %4748, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %4749 to i64*
  %4750 = load i64, i64* %RBP.i99
  %4751 = sub i64 %4750, 32
  %4752 = load i64, i64* %PC.i97
  %4753 = add i64 %4752, 3
  store i64 %4753, i64* %PC.i97
  %4754 = inttoptr i64 %4751 to i32*
  %4755 = load i32, i32* %4754
  %4756 = zext i32 %4755 to i64
  store i64 %4756, i64* %RDI.i98, align 8
  store %struct.Memory* %loadMem_45e9aa, %struct.Memory** %MEMORY
  %loadMem_45e9ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 33
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %4759 to i64*
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4761 = getelementptr inbounds %struct.GPR, %struct.GPR* %4760, i32 0, i32 7
  %4762 = getelementptr inbounds %struct.Reg, %struct.Reg* %4761, i32 0, i32 0
  %RDX.i95 = bitcast %union.anon* %4762 to i64*
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4764 = getelementptr inbounds %struct.GPR, %struct.GPR* %4763, i32 0, i32 15
  %4765 = getelementptr inbounds %struct.Reg, %struct.Reg* %4764, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %4765 to i64*
  %4766 = load i64, i64* %RBP.i96
  %4767 = sub i64 %4766, 508
  %4768 = load i64, i64* %PC.i94
  %4769 = add i64 %4768, 6
  store i64 %4769, i64* %PC.i94
  %4770 = inttoptr i64 %4767 to i32*
  %4771 = load i32, i32* %4770
  %4772 = zext i32 %4771 to i64
  store i64 %4772, i64* %RDX.i95, align 8
  store %struct.Memory* %loadMem_45e9ad, %struct.Memory** %MEMORY
  %loadMem_45e9b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 33
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4775 to i64*
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4777 = getelementptr inbounds %struct.GPR, %struct.GPR* %4776, i32 0, i32 5
  %4778 = getelementptr inbounds %struct.Reg, %struct.Reg* %4777, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %4778 to i64*
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4780 = getelementptr inbounds %struct.GPR, %struct.GPR* %4779, i32 0, i32 15
  %4781 = getelementptr inbounds %struct.Reg, %struct.Reg* %4780, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %4781 to i64*
  %4782 = load i64, i64* %RBP.i93
  %4783 = sub i64 %4782, 512
  %4784 = load i64, i64* %PC.i91
  %4785 = add i64 %4784, 6
  store i64 %4785, i64* %PC.i91
  %4786 = inttoptr i64 %4783 to i32*
  %4787 = load i32, i32* %4786
  %4788 = zext i32 %4787 to i64
  store i64 %4788, i64* %RCX.i92, align 8
  store %struct.Memory* %loadMem_45e9b3, %struct.Memory** %MEMORY
  %loadMem1_45e9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 33
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %4791 to i64*
  %4792 = load i64, i64* %PC.i90
  %4793 = add i64 %4792, 47431
  %4794 = load i64, i64* %PC.i90
  %4795 = add i64 %4794, 5
  %4796 = load i64, i64* %PC.i90
  %4797 = add i64 %4796, 5
  store i64 %4797, i64* %PC.i90
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4799 = load i64, i64* %4798, align 8
  %4800 = add i64 %4799, -8
  %4801 = inttoptr i64 %4800 to i64*
  store i64 %4795, i64* %4801
  store i64 %4800, i64* %4798, align 8
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4793, i64* %4802, align 8
  store %struct.Memory* %loadMem1_45e9b9, %struct.Memory** %MEMORY
  %loadMem2_45e9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e9b9 = load i64, i64* %3
  %call2_45e9b9 = call %struct.Memory* @sub_46a300.simple_ladder_defend(%struct.State* %0, i64 %loadPC_45e9b9, %struct.Memory* %loadMem2_45e9b9)
  store %struct.Memory* %call2_45e9b9, %struct.Memory** %MEMORY
  %loadMem_45e9be = load %struct.Memory*, %struct.Memory** %MEMORY
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4804 = getelementptr inbounds %struct.GPR, %struct.GPR* %4803, i32 0, i32 33
  %4805 = getelementptr inbounds %struct.Reg, %struct.Reg* %4804, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %4805 to i64*
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4807 = getelementptr inbounds %struct.GPR, %struct.GPR* %4806, i32 0, i32 1
  %4808 = getelementptr inbounds %struct.Reg, %struct.Reg* %4807, i32 0, i32 0
  %EAX.i89 = bitcast %union.anon* %4808 to i32*
  %4809 = load i32, i32* %EAX.i89
  %4810 = zext i32 %4809 to i64
  %4811 = load i64, i64* %PC.i88
  %4812 = add i64 %4811, 3
  store i64 %4812, i64* %PC.i88
  %4813 = sub i32 %4809, 5
  %4814 = icmp ult i32 %4809, 5
  %4815 = zext i1 %4814 to i8
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4815, i8* %4816, align 1
  %4817 = and i32 %4813, 255
  %4818 = call i32 @llvm.ctpop.i32(i32 %4817)
  %4819 = trunc i32 %4818 to i8
  %4820 = and i8 %4819, 1
  %4821 = xor i8 %4820, 1
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4821, i8* %4822, align 1
  %4823 = xor i64 5, %4810
  %4824 = trunc i64 %4823 to i32
  %4825 = xor i32 %4824, %4813
  %4826 = lshr i32 %4825, 4
  %4827 = trunc i32 %4826 to i8
  %4828 = and i8 %4827, 1
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4828, i8* %4829, align 1
  %4830 = icmp eq i32 %4813, 0
  %4831 = zext i1 %4830 to i8
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4831, i8* %4832, align 1
  %4833 = lshr i32 %4813, 31
  %4834 = trunc i32 %4833 to i8
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4834, i8* %4835, align 1
  %4836 = lshr i32 %4809, 31
  %4837 = xor i32 %4833, %4836
  %4838 = add i32 %4837, %4836
  %4839 = icmp eq i32 %4838, 2
  %4840 = zext i1 %4839 to i8
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4840, i8* %4841, align 1
  store %struct.Memory* %loadMem_45e9be, %struct.Memory** %MEMORY
  %loadMem_45e9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 33
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4844 to i64*
  %4845 = load i64, i64* %PC.i87
  %4846 = add i64 %4845, 19
  %4847 = load i64, i64* %PC.i87
  %4848 = add i64 %4847, 6
  %4849 = load i64, i64* %PC.i87
  %4850 = add i64 %4849, 6
  store i64 %4850, i64* %PC.i87
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4852 = load i8, i8* %4851, align 1
  store i8 %4852, i8* %BRANCH_TAKEN, align 1
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4854 = icmp ne i8 %4852, 0
  %4855 = select i1 %4854, i64 %4846, i64 %4848
  store i64 %4855, i64* %4853, align 8
  store %struct.Memory* %loadMem_45e9c1, %struct.Memory** %MEMORY
  %loadBr_45e9c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e9c1 = icmp eq i8 %loadBr_45e9c1, 1
  br i1 %cmpBr_45e9c1, label %block_.L_45e9d4, label %block_45e9c7

block_45e9c7:                                     ; preds = %block_.L_45e9a6
  %loadMem_45e9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4857 = getelementptr inbounds %struct.GPR, %struct.GPR* %4856, i32 0, i32 33
  %4858 = getelementptr inbounds %struct.Reg, %struct.Reg* %4857, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4858 to i64*
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4860 = getelementptr inbounds %struct.GPR, %struct.GPR* %4859, i32 0, i32 1
  %4861 = getelementptr inbounds %struct.Reg, %struct.Reg* %4860, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %4861 to i64*
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4863 = getelementptr inbounds %struct.GPR, %struct.GPR* %4862, i32 0, i32 15
  %4864 = getelementptr inbounds %struct.Reg, %struct.Reg* %4863, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %4864 to i64*
  %4865 = load i64, i64* %RBP.i86
  %4866 = sub i64 %4865, 60
  %4867 = load i64, i64* %PC.i84
  %4868 = add i64 %4867, 3
  store i64 %4868, i64* %PC.i84
  %4869 = inttoptr i64 %4866 to i32*
  %4870 = load i32, i32* %4869
  %4871 = zext i32 %4870 to i64
  store i64 %4871, i64* %RAX.i85, align 8
  store %struct.Memory* %loadMem_45e9c7, %struct.Memory** %MEMORY
  %loadMem_45e9ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4873 = getelementptr inbounds %struct.GPR, %struct.GPR* %4872, i32 0, i32 33
  %4874 = getelementptr inbounds %struct.Reg, %struct.Reg* %4873, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4874 to i64*
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4876 = getelementptr inbounds %struct.GPR, %struct.GPR* %4875, i32 0, i32 1
  %4877 = getelementptr inbounds %struct.Reg, %struct.Reg* %4876, i32 0, i32 0
  %EAX.i82 = bitcast %union.anon* %4877 to i32*
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4879 = getelementptr inbounds %struct.GPR, %struct.GPR* %4878, i32 0, i32 15
  %4880 = getelementptr inbounds %struct.Reg, %struct.Reg* %4879, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %4880 to i64*
  %4881 = load i64, i64* %RBP.i83
  %4882 = sub i64 %4881, 72
  %4883 = load i32, i32* %EAX.i82
  %4884 = zext i32 %4883 to i64
  %4885 = load i64, i64* %PC.i81
  %4886 = add i64 %4885, 3
  store i64 %4886, i64* %PC.i81
  %4887 = inttoptr i64 %4882 to i32*
  store i32 %4883, i32* %4887
  store %struct.Memory* %loadMem_45e9ca, %struct.Memory** %MEMORY
  %loadMem_45e9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4889 = getelementptr inbounds %struct.GPR, %struct.GPR* %4888, i32 0, i32 33
  %4890 = getelementptr inbounds %struct.Reg, %struct.Reg* %4889, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4890 to i64*
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4892 = getelementptr inbounds %struct.GPR, %struct.GPR* %4891, i32 0, i32 15
  %4893 = getelementptr inbounds %struct.Reg, %struct.Reg* %4892, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %4893 to i64*
  %4894 = load i64, i64* %RBP.i80
  %4895 = sub i64 %4894, 76
  %4896 = load i64, i64* %PC.i79
  %4897 = add i64 %4896, 7
  store i64 %4897, i64* %PC.i79
  %4898 = inttoptr i64 %4895 to i32*
  store i32 1, i32* %4898
  store %struct.Memory* %loadMem_45e9cd, %struct.Memory** %MEMORY
  br label %block_.L_45e9d4

block_.L_45e9d4:                                  ; preds = %block_45e9c7, %block_.L_45e9a6
  %loadMem_45e9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4900 = getelementptr inbounds %struct.GPR, %struct.GPR* %4899, i32 0, i32 33
  %4901 = getelementptr inbounds %struct.Reg, %struct.Reg* %4900, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4901 to i64*
  %4902 = load i64, i64* %PC.i78
  %4903 = add i64 %4902, 5
  %4904 = load i64, i64* %PC.i78
  %4905 = add i64 %4904, 5
  store i64 %4905, i64* %PC.i78
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4903, i64* %4906, align 8
  store %struct.Memory* %loadMem_45e9d4, %struct.Memory** %MEMORY
  br label %block_.L_45e9d9

block_.L_45e9d9:                                  ; preds = %block_.L_45e9d4, %block_.L_45e9a1
  %loadMem1_45e9d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4908 = getelementptr inbounds %struct.GPR, %struct.GPR* %4907, i32 0, i32 33
  %4909 = getelementptr inbounds %struct.Reg, %struct.Reg* %4908, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %4909 to i64*
  %4910 = load i64, i64* %PC.i77
  %4911 = add i64 %4910, -330873
  %4912 = load i64, i64* %PC.i77
  %4913 = add i64 %4912, 5
  %4914 = load i64, i64* %PC.i77
  %4915 = add i64 %4914, 5
  store i64 %4915, i64* %PC.i77
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4917 = load i64, i64* %4916, align 8
  %4918 = add i64 %4917, -8
  %4919 = inttoptr i64 %4918 to i64*
  store i64 %4913, i64* %4919
  store i64 %4918, i64* %4916, align 8
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4911, i64* %4920, align 8
  store %struct.Memory* %loadMem1_45e9d9, %struct.Memory** %MEMORY
  %loadMem2_45e9d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e9d9 = load i64, i64* %3
  %call2_45e9d9 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_45e9d9, %struct.Memory* %loadMem2_45e9d9)
  store %struct.Memory* %call2_45e9d9, %struct.Memory** %MEMORY
  br label %block_.L_45e9de

block_.L_45e9de:                                  ; preds = %block_.L_45e9d9, %block_45e843
  %loadMem_45e9de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4922 = getelementptr inbounds %struct.GPR, %struct.GPR* %4921, i32 0, i32 33
  %4923 = getelementptr inbounds %struct.Reg, %struct.Reg* %4922, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %4923 to i64*
  %4924 = load i64, i64* %PC.i76
  %4925 = add i64 %4924, 5
  %4926 = load i64, i64* %PC.i76
  %4927 = add i64 %4926, 5
  store i64 %4927, i64* %PC.i76
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4925, i64* %4928, align 8
  store %struct.Memory* %loadMem_45e9de, %struct.Memory** %MEMORY
  br label %block_.L_45e9e3

block_.L_45e9e3:                                  ; preds = %block_.L_45e9de
  %loadMem_45e9e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4930 = getelementptr inbounds %struct.GPR, %struct.GPR* %4929, i32 0, i32 33
  %4931 = getelementptr inbounds %struct.Reg, %struct.Reg* %4930, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %4931 to i64*
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4933 = getelementptr inbounds %struct.GPR, %struct.GPR* %4932, i32 0, i32 1
  %4934 = getelementptr inbounds %struct.Reg, %struct.Reg* %4933, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %4934 to i64*
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4936 = getelementptr inbounds %struct.GPR, %struct.GPR* %4935, i32 0, i32 15
  %4937 = getelementptr inbounds %struct.Reg, %struct.Reg* %4936, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %4937 to i64*
  %4938 = load i64, i64* %RBP.i75
  %4939 = sub i64 %4938, 84
  %4940 = load i64, i64* %PC.i73
  %4941 = add i64 %4940, 3
  store i64 %4941, i64* %PC.i73
  %4942 = inttoptr i64 %4939 to i32*
  %4943 = load i32, i32* %4942
  %4944 = zext i32 %4943 to i64
  store i64 %4944, i64* %RAX.i74, align 8
  store %struct.Memory* %loadMem_45e9e3, %struct.Memory** %MEMORY
  %loadMem_45e9e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4946 = getelementptr inbounds %struct.GPR, %struct.GPR* %4945, i32 0, i32 33
  %4947 = getelementptr inbounds %struct.Reg, %struct.Reg* %4946, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4947 to i64*
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4949 = getelementptr inbounds %struct.GPR, %struct.GPR* %4948, i32 0, i32 1
  %4950 = getelementptr inbounds %struct.Reg, %struct.Reg* %4949, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %4950 to i64*
  %4951 = load i64, i64* %RAX.i72
  %4952 = load i64, i64* %PC.i71
  %4953 = add i64 %4952, 3
  store i64 %4953, i64* %PC.i71
  %4954 = trunc i64 %4951 to i32
  %4955 = add i32 1, %4954
  %4956 = zext i32 %4955 to i64
  store i64 %4956, i64* %RAX.i72, align 8
  %4957 = icmp ult i32 %4955, %4954
  %4958 = icmp ult i32 %4955, 1
  %4959 = or i1 %4957, %4958
  %4960 = zext i1 %4959 to i8
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4960, i8* %4961, align 1
  %4962 = and i32 %4955, 255
  %4963 = call i32 @llvm.ctpop.i32(i32 %4962)
  %4964 = trunc i32 %4963 to i8
  %4965 = and i8 %4964, 1
  %4966 = xor i8 %4965, 1
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4966, i8* %4967, align 1
  %4968 = xor i64 1, %4951
  %4969 = trunc i64 %4968 to i32
  %4970 = xor i32 %4969, %4955
  %4971 = lshr i32 %4970, 4
  %4972 = trunc i32 %4971 to i8
  %4973 = and i8 %4972, 1
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4973, i8* %4974, align 1
  %4975 = icmp eq i32 %4955, 0
  %4976 = zext i1 %4975 to i8
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4976, i8* %4977, align 1
  %4978 = lshr i32 %4955, 31
  %4979 = trunc i32 %4978 to i8
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4979, i8* %4980, align 1
  %4981 = lshr i32 %4954, 31
  %4982 = xor i32 %4978, %4981
  %4983 = add i32 %4982, %4978
  %4984 = icmp eq i32 %4983, 2
  %4985 = zext i1 %4984 to i8
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4985, i8* %4986, align 1
  store %struct.Memory* %loadMem_45e9e6, %struct.Memory** %MEMORY
  %loadMem_45e9e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4988 = getelementptr inbounds %struct.GPR, %struct.GPR* %4987, i32 0, i32 33
  %4989 = getelementptr inbounds %struct.Reg, %struct.Reg* %4988, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4989 to i64*
  %4990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4991 = getelementptr inbounds %struct.GPR, %struct.GPR* %4990, i32 0, i32 1
  %4992 = getelementptr inbounds %struct.Reg, %struct.Reg* %4991, i32 0, i32 0
  %EAX.i69 = bitcast %union.anon* %4992 to i32*
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4994 = getelementptr inbounds %struct.GPR, %struct.GPR* %4993, i32 0, i32 15
  %4995 = getelementptr inbounds %struct.Reg, %struct.Reg* %4994, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %4995 to i64*
  %4996 = load i64, i64* %RBP.i70
  %4997 = sub i64 %4996, 84
  %4998 = load i32, i32* %EAX.i69
  %4999 = zext i32 %4998 to i64
  %5000 = load i64, i64* %PC.i68
  %5001 = add i64 %5000, 3
  store i64 %5001, i64* %PC.i68
  %5002 = inttoptr i64 %4997 to i32*
  store i32 %4998, i32* %5002
  store %struct.Memory* %loadMem_45e9e9, %struct.Memory** %MEMORY
  %loadMem_45e9ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5004 = getelementptr inbounds %struct.GPR, %struct.GPR* %5003, i32 0, i32 33
  %5005 = getelementptr inbounds %struct.Reg, %struct.Reg* %5004, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %5005 to i64*
  %5006 = load i64, i64* %PC.i67
  %5007 = add i64 %5006, -437
  %5008 = load i64, i64* %PC.i67
  %5009 = add i64 %5008, 5
  store i64 %5009, i64* %PC.i67
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5007, i64* %5010, align 8
  store %struct.Memory* %loadMem_45e9ec, %struct.Memory** %MEMORY
  br label %block_.L_45e837

block_.L_45e9f1:                                  ; preds = %block_.L_45e837
  %loadMem_45e9f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5012 = getelementptr inbounds %struct.GPR, %struct.GPR* %5011, i32 0, i32 33
  %5013 = getelementptr inbounds %struct.Reg, %struct.Reg* %5012, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %5013 to i64*
  %5014 = load i64, i64* %PC.i66
  %5015 = add i64 %5014, 5
  %5016 = load i64, i64* %PC.i66
  %5017 = add i64 %5016, 5
  store i64 %5017, i64* %PC.i66
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5015, i64* %5018, align 8
  store %struct.Memory* %loadMem_45e9f1, %struct.Memory** %MEMORY
  br label %block_.L_45e9f6

block_.L_45e9f6:                                  ; preds = %block_.L_45e9f1
  %loadMem_45e9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5020 = getelementptr inbounds %struct.GPR, %struct.GPR* %5019, i32 0, i32 33
  %5021 = getelementptr inbounds %struct.Reg, %struct.Reg* %5020, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %5021 to i64*
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5023 = getelementptr inbounds %struct.GPR, %struct.GPR* %5022, i32 0, i32 15
  %5024 = getelementptr inbounds %struct.Reg, %struct.Reg* %5023, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %5024 to i64*
  %5025 = load i64, i64* %RBP.i65
  %5026 = sub i64 %5025, 76
  %5027 = load i64, i64* %PC.i64
  %5028 = add i64 %5027, 4
  store i64 %5028, i64* %PC.i64
  %5029 = inttoptr i64 %5026 to i32*
  %5030 = load i32, i32* %5029
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5031, align 1
  %5032 = and i32 %5030, 255
  %5033 = call i32 @llvm.ctpop.i32(i32 %5032)
  %5034 = trunc i32 %5033 to i8
  %5035 = and i8 %5034, 1
  %5036 = xor i8 %5035, 1
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5036, i8* %5037, align 1
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5038, align 1
  %5039 = icmp eq i32 %5030, 0
  %5040 = zext i1 %5039 to i8
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5040, i8* %5041, align 1
  %5042 = lshr i32 %5030, 31
  %5043 = trunc i32 %5042 to i8
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5043, i8* %5044, align 1
  %5045 = lshr i32 %5030, 31
  %5046 = xor i32 %5042, %5045
  %5047 = add i32 %5046, %5045
  %5048 = icmp eq i32 %5047, 2
  %5049 = zext i1 %5048 to i8
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5049, i8* %5050, align 1
  store %struct.Memory* %loadMem_45e9f6, %struct.Memory** %MEMORY
  %loadMem_45e9fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5052 = getelementptr inbounds %struct.GPR, %struct.GPR* %5051, i32 0, i32 33
  %5053 = getelementptr inbounds %struct.Reg, %struct.Reg* %5052, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %5053 to i64*
  %5054 = load i64, i64* %PC.i63
  %5055 = add i64 %5054, 80
  %5056 = load i64, i64* %PC.i63
  %5057 = add i64 %5056, 6
  %5058 = load i64, i64* %PC.i63
  %5059 = add i64 %5058, 6
  store i64 %5059, i64* %PC.i63
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5061 = load i8, i8* %5060, align 1
  store i8 %5061, i8* %BRANCH_TAKEN, align 1
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5063 = icmp ne i8 %5061, 0
  %5064 = select i1 %5063, i64 %5055, i64 %5057
  store i64 %5064, i64* %5062, align 8
  store %struct.Memory* %loadMem_45e9fa, %struct.Memory** %MEMORY
  %loadBr_45e9fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e9fa = icmp eq i8 %loadBr_45e9fa, 1
  br i1 %cmpBr_45e9fa, label %block_.L_45ea4a, label %block_45ea00

block_45ea00:                                     ; preds = %block_.L_45e9f6
  %loadMem_45ea00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5066 = getelementptr inbounds %struct.GPR, %struct.GPR* %5065, i32 0, i32 33
  %5067 = getelementptr inbounds %struct.Reg, %struct.Reg* %5066, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %5067 to i64*
  %5068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5069 = getelementptr inbounds %struct.GPR, %struct.GPR* %5068, i32 0, i32 15
  %5070 = getelementptr inbounds %struct.Reg, %struct.Reg* %5069, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %5070 to i64*
  %5071 = load i64, i64* %RBP.i62
  %5072 = sub i64 %5071, 40
  %5073 = load i64, i64* %PC.i61
  %5074 = add i64 %5073, 5
  store i64 %5074, i64* %PC.i61
  %5075 = inttoptr i64 %5072 to i64*
  %5076 = load i64, i64* %5075
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5077, align 1
  %5078 = trunc i64 %5076 to i32
  %5079 = and i32 %5078, 255
  %5080 = call i32 @llvm.ctpop.i32(i32 %5079)
  %5081 = trunc i32 %5080 to i8
  %5082 = and i8 %5081, 1
  %5083 = xor i8 %5082, 1
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5083, i8* %5084, align 1
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5085, align 1
  %5086 = icmp eq i64 %5076, 0
  %5087 = zext i1 %5086 to i8
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5087, i8* %5088, align 1
  %5089 = lshr i64 %5076, 63
  %5090 = trunc i64 %5089 to i8
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5090, i8* %5091, align 1
  %5092 = lshr i64 %5076, 63
  %5093 = xor i64 %5089, %5092
  %5094 = add i64 %5093, %5092
  %5095 = icmp eq i64 %5094, 2
  %5096 = zext i1 %5095 to i8
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5096, i8* %5097, align 1
  store %struct.Memory* %loadMem_45ea00, %struct.Memory** %MEMORY
  %loadMem_45ea05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5099 = getelementptr inbounds %struct.GPR, %struct.GPR* %5098, i32 0, i32 33
  %5100 = getelementptr inbounds %struct.Reg, %struct.Reg* %5099, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %5100 to i64*
  %5101 = load i64, i64* %PC.i60
  %5102 = add i64 %5101, 15
  %5103 = load i64, i64* %PC.i60
  %5104 = add i64 %5103, 6
  %5105 = load i64, i64* %PC.i60
  %5106 = add i64 %5105, 6
  store i64 %5106, i64* %PC.i60
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5108 = load i8, i8* %5107, align 1
  store i8 %5108, i8* %BRANCH_TAKEN, align 1
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5110 = icmp ne i8 %5108, 0
  %5111 = select i1 %5110, i64 %5102, i64 %5104
  store i64 %5111, i64* %5109, align 8
  store %struct.Memory* %loadMem_45ea05, %struct.Memory** %MEMORY
  %loadBr_45ea05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ea05 = icmp eq i8 %loadBr_45ea05, 1
  br i1 %cmpBr_45ea05, label %block_.L_45ea14, label %block_45ea0b

block_45ea0b:                                     ; preds = %block_45ea00
  %loadMem_45ea0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5113 = getelementptr inbounds %struct.GPR, %struct.GPR* %5112, i32 0, i32 33
  %5114 = getelementptr inbounds %struct.Reg, %struct.Reg* %5113, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %5114 to i64*
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 1
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %5117 to i64*
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 15
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %5120 to i64*
  %5121 = load i64, i64* %RBP.i59
  %5122 = sub i64 %5121, 72
  %5123 = load i64, i64* %PC.i57
  %5124 = add i64 %5123, 3
  store i64 %5124, i64* %PC.i57
  %5125 = inttoptr i64 %5122 to i32*
  %5126 = load i32, i32* %5125
  %5127 = zext i32 %5126 to i64
  store i64 %5127, i64* %RAX.i58, align 8
  store %struct.Memory* %loadMem_45ea0b, %struct.Memory** %MEMORY
  %loadMem_45ea0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5129 = getelementptr inbounds %struct.GPR, %struct.GPR* %5128, i32 0, i32 33
  %5130 = getelementptr inbounds %struct.Reg, %struct.Reg* %5129, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %5130 to i64*
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 5
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %RCX.i55 = bitcast %union.anon* %5133 to i64*
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 15
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %5136 to i64*
  %5137 = load i64, i64* %RBP.i56
  %5138 = sub i64 %5137, 40
  %5139 = load i64, i64* %PC.i54
  %5140 = add i64 %5139, 4
  store i64 %5140, i64* %PC.i54
  %5141 = inttoptr i64 %5138 to i64*
  %5142 = load i64, i64* %5141
  store i64 %5142, i64* %RCX.i55, align 8
  store %struct.Memory* %loadMem_45ea0e, %struct.Memory** %MEMORY
  %loadMem_45ea12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5144 = getelementptr inbounds %struct.GPR, %struct.GPR* %5143, i32 0, i32 33
  %5145 = getelementptr inbounds %struct.Reg, %struct.Reg* %5144, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %5145 to i64*
  %5146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5147 = getelementptr inbounds %struct.GPR, %struct.GPR* %5146, i32 0, i32 1
  %5148 = getelementptr inbounds %struct.Reg, %struct.Reg* %5147, i32 0, i32 0
  %EAX.i52 = bitcast %union.anon* %5148 to i32*
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5150 = getelementptr inbounds %struct.GPR, %struct.GPR* %5149, i32 0, i32 5
  %5151 = getelementptr inbounds %struct.Reg, %struct.Reg* %5150, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %5151 to i64*
  %5152 = load i64, i64* %RCX.i53
  %5153 = load i32, i32* %EAX.i52
  %5154 = zext i32 %5153 to i64
  %5155 = load i64, i64* %PC.i51
  %5156 = add i64 %5155, 2
  store i64 %5156, i64* %PC.i51
  %5157 = inttoptr i64 %5152 to i32*
  store i32 %5153, i32* %5157
  store %struct.Memory* %loadMem_45ea12, %struct.Memory** %MEMORY
  br label %block_.L_45ea14

block_.L_45ea14:                                  ; preds = %block_45ea0b, %block_45ea00
  %loadMem_45ea14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5159 = getelementptr inbounds %struct.GPR, %struct.GPR* %5158, i32 0, i32 33
  %5160 = getelementptr inbounds %struct.Reg, %struct.Reg* %5159, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %5160 to i64*
  %5161 = load i64, i64* %PC.i50
  %5162 = add i64 %5161, 9
  store i64 %5162, i64* %PC.i50
  %5163 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5164, align 1
  %5165 = trunc i64 %5163 to i32
  %5166 = and i32 %5165, 255
  %5167 = call i32 @llvm.ctpop.i32(i32 %5166)
  %5168 = trunc i32 %5167 to i8
  %5169 = and i8 %5168, 1
  %5170 = xor i8 %5169, 1
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5170, i8* %5171, align 1
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5172, align 1
  %5173 = icmp eq i64 %5163, 0
  %5174 = zext i1 %5173 to i8
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5174, i8* %5175, align 1
  %5176 = lshr i64 %5163, 63
  %5177 = trunc i64 %5176 to i8
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5177, i8* %5178, align 1
  %5179 = lshr i64 %5163, 63
  %5180 = xor i64 %5176, %5179
  %5181 = add i64 %5180, %5179
  %5182 = icmp eq i64 %5181, 2
  %5183 = zext i1 %5182 to i8
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5183, i8* %5184, align 1
  store %struct.Memory* %loadMem_45ea14, %struct.Memory** %MEMORY
  %loadMem_45ea1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 33
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %5187 to i64*
  %5188 = load i64, i64* %PC.i49
  %5189 = add i64 %5188, 40
  %5190 = load i64, i64* %PC.i49
  %5191 = add i64 %5190, 6
  %5192 = load i64, i64* %PC.i49
  %5193 = add i64 %5192, 6
  store i64 %5193, i64* %PC.i49
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5195 = load i8, i8* %5194, align 1
  store i8 %5195, i8* %BRANCH_TAKEN, align 1
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5197 = icmp ne i8 %5195, 0
  %5198 = select i1 %5197, i64 %5189, i64 %5191
  store i64 %5198, i64* %5196, align 8
  store %struct.Memory* %loadMem_45ea1d, %struct.Memory** %MEMORY
  %loadBr_45ea1d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ea1d = icmp eq i8 %loadBr_45ea1d, 1
  br i1 %cmpBr_45ea1d, label %block_.L_45ea45, label %block_45ea23

block_45ea23:                                     ; preds = %block_.L_45ea14
  %loadMem_45ea23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5200 = getelementptr inbounds %struct.GPR, %struct.GPR* %5199, i32 0, i32 33
  %5201 = getelementptr inbounds %struct.Reg, %struct.Reg* %5200, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %5201 to i64*
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5203 = getelementptr inbounds %struct.GPR, %struct.GPR* %5202, i32 0, i32 17
  %5204 = getelementptr inbounds %struct.Reg, %struct.Reg* %5203, i32 0, i32 0
  %R8.i = bitcast %union.anon* %5204 to i64*
  %5205 = load i64, i64* %PC.i48
  %5206 = add i64 %5205, 10
  store i64 %5206, i64* %PC.i48
  store i64 ptrtoint (%G__0x57f60a_type* @G__0x57f60a to i64), i64* %R8.i, align 8
  store %struct.Memory* %loadMem_45ea23, %struct.Memory** %MEMORY
  %loadMem_45ea2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5208 = getelementptr inbounds %struct.GPR, %struct.GPR* %5207, i32 0, i32 33
  %5209 = getelementptr inbounds %struct.Reg, %struct.Reg* %5208, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5209 to i64*
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5211 = getelementptr inbounds %struct.GPR, %struct.GPR* %5210, i32 0, i32 11
  %5212 = getelementptr inbounds %struct.Reg, %struct.Reg* %5211, i32 0, i32 0
  %RDI.i46 = bitcast %union.anon* %5212 to i64*
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5214 = getelementptr inbounds %struct.GPR, %struct.GPR* %5213, i32 0, i32 15
  %5215 = getelementptr inbounds %struct.Reg, %struct.Reg* %5214, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %5215 to i64*
  %5216 = load i64, i64* %RBP.i47
  %5217 = sub i64 %5216, 496
  %5218 = load i64, i64* %PC.i45
  %5219 = add i64 %5218, 7
  store i64 %5219, i64* %PC.i45
  %5220 = inttoptr i64 %5217 to i64*
  %5221 = load i64, i64* %5220
  store i64 %5221, i64* %RDI.i46, align 8
  store %struct.Memory* %loadMem_45ea2d, %struct.Memory** %MEMORY
  %loadMem_45ea34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5223 = getelementptr inbounds %struct.GPR, %struct.GPR* %5222, i32 0, i32 33
  %5224 = getelementptr inbounds %struct.Reg, %struct.Reg* %5223, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %5224 to i64*
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 9
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %RSI.i43 = bitcast %union.anon* %5227 to i64*
  %5228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5229 = getelementptr inbounds %struct.GPR, %struct.GPR* %5228, i32 0, i32 15
  %5230 = getelementptr inbounds %struct.Reg, %struct.Reg* %5229, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %5230 to i64*
  %5231 = load i64, i64* %RBP.i44
  %5232 = sub i64 %5231, 500
  %5233 = load i64, i64* %PC.i42
  %5234 = add i64 %5233, 6
  store i64 %5234, i64* %PC.i42
  %5235 = inttoptr i64 %5232 to i32*
  %5236 = load i32, i32* %5235
  %5237 = zext i32 %5236 to i64
  store i64 %5237, i64* %RSI.i43, align 8
  store %struct.Memory* %loadMem_45ea34, %struct.Memory** %MEMORY
  %loadMem_45ea3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5239 = getelementptr inbounds %struct.GPR, %struct.GPR* %5238, i32 0, i32 33
  %5240 = getelementptr inbounds %struct.Reg, %struct.Reg* %5239, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5240 to i64*
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5242 = getelementptr inbounds %struct.GPR, %struct.GPR* %5241, i32 0, i32 7
  %5243 = getelementptr inbounds %struct.Reg, %struct.Reg* %5242, i32 0, i32 0
  %RDX.i40 = bitcast %union.anon* %5243 to i64*
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5245 = getelementptr inbounds %struct.GPR, %struct.GPR* %5244, i32 0, i32 15
  %5246 = getelementptr inbounds %struct.Reg, %struct.Reg* %5245, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %5246 to i64*
  %5247 = load i64, i64* %RBP.i41
  %5248 = sub i64 %5247, 72
  %5249 = load i64, i64* %PC.i39
  %5250 = add i64 %5249, 3
  store i64 %5250, i64* %PC.i39
  %5251 = inttoptr i64 %5248 to i32*
  %5252 = load i32, i32* %5251
  %5253 = zext i32 %5252 to i64
  store i64 %5253, i64* %RDX.i40, align 8
  store %struct.Memory* %loadMem_45ea3a, %struct.Memory** %MEMORY
  %loadMem_45ea3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5255 = getelementptr inbounds %struct.GPR, %struct.GPR* %5254, i32 0, i32 33
  %5256 = getelementptr inbounds %struct.Reg, %struct.Reg* %5255, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %5256 to i64*
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5258 = getelementptr inbounds %struct.GPR, %struct.GPR* %5257, i32 0, i32 5
  %5259 = getelementptr inbounds %struct.Reg, %struct.Reg* %5258, i32 0, i32 0
  %RCX.i37 = bitcast %union.anon* %5259 to i64*
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5261 = getelementptr inbounds %struct.GPR, %struct.GPR* %5260, i32 0, i32 15
  %5262 = getelementptr inbounds %struct.Reg, %struct.Reg* %5261, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %5262 to i64*
  %5263 = load i64, i64* %RBP.i38
  %5264 = sub i64 %5263, 76
  %5265 = load i64, i64* %PC.i36
  %5266 = add i64 %5265, 3
  store i64 %5266, i64* %PC.i36
  %5267 = inttoptr i64 %5264 to i32*
  %5268 = load i32, i32* %5267
  %5269 = zext i32 %5268 to i64
  store i64 %5269, i64* %RCX.i37, align 8
  store %struct.Memory* %loadMem_45ea3d, %struct.Memory** %MEMORY
  %loadMem1_45ea40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 33
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %5272 to i64*
  %5273 = load i64, i64* %PC.i35
  %5274 = add i64 %5273, -289408
  %5275 = load i64, i64* %PC.i35
  %5276 = add i64 %5275, 5
  %5277 = load i64, i64* %PC.i35
  %5278 = add i64 %5277, 5
  store i64 %5278, i64* %PC.i35
  %5279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5280 = load i64, i64* %5279, align 8
  %5281 = add i64 %5280, -8
  %5282 = inttoptr i64 %5281 to i64*
  store i64 %5276, i64* %5282
  store i64 %5281, i64* %5279, align 8
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5274, i64* %5283, align 8
  store %struct.Memory* %loadMem1_45ea40, %struct.Memory** %MEMORY
  %loadMem2_45ea40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45ea40 = load i64, i64* %3
  %call2_45ea40 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64 %loadPC_45ea40, %struct.Memory* %loadMem2_45ea40)
  store %struct.Memory* %call2_45ea40, %struct.Memory** %MEMORY
  br label %block_.L_45ea45

block_.L_45ea45:                                  ; preds = %block_45ea23, %block_.L_45ea14
  %loadMem_45ea45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5285 = getelementptr inbounds %struct.GPR, %struct.GPR* %5284, i32 0, i32 33
  %5286 = getelementptr inbounds %struct.Reg, %struct.Reg* %5285, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5286 to i64*
  %5287 = load i64, i64* %PC.i34
  %5288 = add i64 %5287, 54
  %5289 = load i64, i64* %PC.i34
  %5290 = add i64 %5289, 5
  store i64 %5290, i64* %PC.i34
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5288, i64* %5291, align 8
  store %struct.Memory* %loadMem_45ea45, %struct.Memory** %MEMORY
  br label %block_.L_45ea7b

block_.L_45ea4a:                                  ; preds = %block_.L_45e9f6
  %loadMem_45ea4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5293 = getelementptr inbounds %struct.GPR, %struct.GPR* %5292, i32 0, i32 33
  %5294 = getelementptr inbounds %struct.Reg, %struct.Reg* %5293, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5294 to i64*
  %5295 = load i64, i64* %PC.i33
  %5296 = add i64 %5295, 9
  store i64 %5296, i64* %PC.i33
  %5297 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5298, align 1
  %5299 = trunc i64 %5297 to i32
  %5300 = and i32 %5299, 255
  %5301 = call i32 @llvm.ctpop.i32(i32 %5300)
  %5302 = trunc i32 %5301 to i8
  %5303 = and i8 %5302, 1
  %5304 = xor i8 %5303, 1
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5304, i8* %5305, align 1
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5306, align 1
  %5307 = icmp eq i64 %5297, 0
  %5308 = zext i1 %5307 to i8
  %5309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5308, i8* %5309, align 1
  %5310 = lshr i64 %5297, 63
  %5311 = trunc i64 %5310 to i8
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5311, i8* %5312, align 1
  %5313 = lshr i64 %5297, 63
  %5314 = xor i64 %5310, %5313
  %5315 = add i64 %5314, %5313
  %5316 = icmp eq i64 %5315, 2
  %5317 = zext i1 %5316 to i8
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5317, i8* %5318, align 1
  store %struct.Memory* %loadMem_45ea4a, %struct.Memory** %MEMORY
  %loadMem_45ea53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5320 = getelementptr inbounds %struct.GPR, %struct.GPR* %5319, i32 0, i32 33
  %5321 = getelementptr inbounds %struct.Reg, %struct.Reg* %5320, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %5321 to i64*
  %5322 = load i64, i64* %PC.i32
  %5323 = add i64 %5322, 35
  %5324 = load i64, i64* %PC.i32
  %5325 = add i64 %5324, 6
  %5326 = load i64, i64* %PC.i32
  %5327 = add i64 %5326, 6
  store i64 %5327, i64* %PC.i32
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5329 = load i8, i8* %5328, align 1
  store i8 %5329, i8* %BRANCH_TAKEN, align 1
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5331 = icmp ne i8 %5329, 0
  %5332 = select i1 %5331, i64 %5323, i64 %5325
  store i64 %5332, i64* %5330, align 8
  store %struct.Memory* %loadMem_45ea53, %struct.Memory** %MEMORY
  %loadBr_45ea53 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ea53 = icmp eq i8 %loadBr_45ea53, 1
  br i1 %cmpBr_45ea53, label %block_.L_45ea76, label %block_45ea59

block_45ea59:                                     ; preds = %block_.L_45ea4a
  %loadMem_45ea59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5334 = getelementptr inbounds %struct.GPR, %struct.GPR* %5333, i32 0, i32 33
  %5335 = getelementptr inbounds %struct.Reg, %struct.Reg* %5334, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5335 to i64*
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5337 = getelementptr inbounds %struct.GPR, %struct.GPR* %5336, i32 0, i32 1
  %5338 = getelementptr inbounds %struct.Reg, %struct.Reg* %5337, i32 0, i32 0
  %EAX.i30 = bitcast %union.anon* %5338 to i32*
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5340 = getelementptr inbounds %struct.GPR, %struct.GPR* %5339, i32 0, i32 1
  %5341 = getelementptr inbounds %struct.Reg, %struct.Reg* %5340, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %5341 to i64*
  %5342 = load i64, i64* %RAX.i31
  %5343 = load i32, i32* %EAX.i30
  %5344 = zext i32 %5343 to i64
  %5345 = load i64, i64* %PC.i29
  %5346 = add i64 %5345, 2
  store i64 %5346, i64* %PC.i29
  %5347 = xor i64 %5344, %5342
  %5348 = trunc i64 %5347 to i32
  %5349 = and i64 %5347, 4294967295
  store i64 %5349, i64* %RAX.i31, align 8
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5350, align 1
  %5351 = and i32 %5348, 255
  %5352 = call i32 @llvm.ctpop.i32(i32 %5351)
  %5353 = trunc i32 %5352 to i8
  %5354 = and i8 %5353, 1
  %5355 = xor i8 %5354, 1
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5355, i8* %5356, align 1
  %5357 = icmp eq i32 %5348, 0
  %5358 = zext i1 %5357 to i8
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5358, i8* %5359, align 1
  %5360 = lshr i32 %5348, 31
  %5361 = trunc i32 %5360 to i8
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5361, i8* %5362, align 1
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5363, align 1
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5364, align 1
  store %struct.Memory* %loadMem_45ea59, %struct.Memory** %MEMORY
  %loadMem_45ea5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 33
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5367 to i64*
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 5
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %ECX.i27 = bitcast %union.anon* %5370 to i32*
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 5
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %RCX.i28 = bitcast %union.anon* %5373 to i64*
  %5374 = load i64, i64* %RCX.i28
  %5375 = load i32, i32* %ECX.i27
  %5376 = zext i32 %5375 to i64
  %5377 = load i64, i64* %PC.i26
  %5378 = add i64 %5377, 2
  store i64 %5378, i64* %PC.i26
  %5379 = xor i64 %5376, %5374
  %5380 = trunc i64 %5379 to i32
  %5381 = and i64 %5379, 4294967295
  store i64 %5381, i64* %RCX.i28, align 8
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5382, align 1
  %5383 = and i32 %5380, 255
  %5384 = call i32 @llvm.ctpop.i32(i32 %5383)
  %5385 = trunc i32 %5384 to i8
  %5386 = and i8 %5385, 1
  %5387 = xor i8 %5386, 1
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5387, i8* %5388, align 1
  %5389 = icmp eq i32 %5380, 0
  %5390 = zext i1 %5389 to i8
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5390, i8* %5391, align 1
  %5392 = lshr i32 %5380, 31
  %5393 = trunc i32 %5392 to i8
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5393, i8* %5394, align 1
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5395, align 1
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5396, align 1
  store %struct.Memory* %loadMem_45ea5b, %struct.Memory** %MEMORY
  %loadMem_45ea5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5398 = getelementptr inbounds %struct.GPR, %struct.GPR* %5397, i32 0, i32 33
  %5399 = getelementptr inbounds %struct.Reg, %struct.Reg* %5398, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %5399 to i64*
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5401 = getelementptr inbounds %struct.GPR, %struct.GPR* %5400, i32 0, i32 5
  %5402 = getelementptr inbounds %struct.Reg, %struct.Reg* %5401, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5402 to i32*
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 17
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %5405 to i32*
  %5406 = bitcast i32* %R8D.i to i64*
  %5407 = load i32, i32* %ECX.i
  %5408 = zext i32 %5407 to i64
  %5409 = load i64, i64* %PC.i25
  %5410 = add i64 %5409, 3
  store i64 %5410, i64* %PC.i25
  %5411 = and i64 %5408, 4294967295
  store i64 %5411, i64* %5406, align 8
  store %struct.Memory* %loadMem_45ea5d, %struct.Memory** %MEMORY
  %loadMem_45ea60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5413 = getelementptr inbounds %struct.GPR, %struct.GPR* %5412, i32 0, i32 33
  %5414 = getelementptr inbounds %struct.Reg, %struct.Reg* %5413, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5414 to i64*
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5416 = getelementptr inbounds %struct.GPR, %struct.GPR* %5415, i32 0, i32 11
  %5417 = getelementptr inbounds %struct.Reg, %struct.Reg* %5416, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5417 to i64*
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5419 = getelementptr inbounds %struct.GPR, %struct.GPR* %5418, i32 0, i32 15
  %5420 = getelementptr inbounds %struct.Reg, %struct.Reg* %5419, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %5420 to i64*
  %5421 = load i64, i64* %RBP.i24
  %5422 = sub i64 %5421, 496
  %5423 = load i64, i64* %PC.i23
  %5424 = add i64 %5423, 7
  store i64 %5424, i64* %PC.i23
  %5425 = inttoptr i64 %5422 to i64*
  %5426 = load i64, i64* %5425
  store i64 %5426, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_45ea60, %struct.Memory** %MEMORY
  %loadMem_45ea67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5428 = getelementptr inbounds %struct.GPR, %struct.GPR* %5427, i32 0, i32 33
  %5429 = getelementptr inbounds %struct.Reg, %struct.Reg* %5428, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %5429 to i64*
  %5430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5431 = getelementptr inbounds %struct.GPR, %struct.GPR* %5430, i32 0, i32 9
  %5432 = getelementptr inbounds %struct.Reg, %struct.Reg* %5431, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5432 to i64*
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5434 = getelementptr inbounds %struct.GPR, %struct.GPR* %5433, i32 0, i32 15
  %5435 = getelementptr inbounds %struct.Reg, %struct.Reg* %5434, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %5435 to i64*
  %5436 = load i64, i64* %RBP.i22
  %5437 = sub i64 %5436, 500
  %5438 = load i64, i64* %PC.i21
  %5439 = add i64 %5438, 6
  store i64 %5439, i64* %PC.i21
  %5440 = inttoptr i64 %5437 to i32*
  %5441 = load i32, i32* %5440
  %5442 = zext i32 %5441 to i64
  store i64 %5442, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_45ea67, %struct.Memory** %MEMORY
  %loadMem_45ea6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5444 = getelementptr inbounds %struct.GPR, %struct.GPR* %5443, i32 0, i32 33
  %5445 = getelementptr inbounds %struct.Reg, %struct.Reg* %5444, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5445 to i64*
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5447 = getelementptr inbounds %struct.GPR, %struct.GPR* %5446, i32 0, i32 1
  %5448 = getelementptr inbounds %struct.Reg, %struct.Reg* %5447, i32 0, i32 0
  %EAX.i20 = bitcast %union.anon* %5448 to i32*
  %5449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5450 = getelementptr inbounds %struct.GPR, %struct.GPR* %5449, i32 0, i32 7
  %5451 = getelementptr inbounds %struct.Reg, %struct.Reg* %5450, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5451 to i64*
  %5452 = load i32, i32* %EAX.i20
  %5453 = zext i32 %5452 to i64
  %5454 = load i64, i64* %PC.i19
  %5455 = add i64 %5454, 2
  store i64 %5455, i64* %PC.i19
  %5456 = and i64 %5453, 4294967295
  store i64 %5456, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_45ea6d, %struct.Memory** %MEMORY
  %loadMem_45ea6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5458 = getelementptr inbounds %struct.GPR, %struct.GPR* %5457, i32 0, i32 33
  %5459 = getelementptr inbounds %struct.Reg, %struct.Reg* %5458, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5459 to i64*
  %5460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5461 = getelementptr inbounds %struct.GPR, %struct.GPR* %5460, i32 0, i32 1
  %5462 = getelementptr inbounds %struct.Reg, %struct.Reg* %5461, i32 0, i32 0
  %EAX.i18 = bitcast %union.anon* %5462 to i32*
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5464 = getelementptr inbounds %struct.GPR, %struct.GPR* %5463, i32 0, i32 5
  %5465 = getelementptr inbounds %struct.Reg, %struct.Reg* %5464, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5465 to i64*
  %5466 = load i32, i32* %EAX.i18
  %5467 = zext i32 %5466 to i64
  %5468 = load i64, i64* %PC.i17
  %5469 = add i64 %5468, 2
  store i64 %5469, i64* %PC.i17
  %5470 = and i64 %5467, 4294967295
  store i64 %5470, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_45ea6f, %struct.Memory** %MEMORY
  %loadMem1_45ea71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5472 = getelementptr inbounds %struct.GPR, %struct.GPR* %5471, i32 0, i32 33
  %5473 = getelementptr inbounds %struct.Reg, %struct.Reg* %5472, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %5473 to i64*
  %5474 = load i64, i64* %PC.i16
  %5475 = add i64 %5474, -289457
  %5476 = load i64, i64* %PC.i16
  %5477 = add i64 %5476, 5
  %5478 = load i64, i64* %PC.i16
  %5479 = add i64 %5478, 5
  store i64 %5479, i64* %PC.i16
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5481 = load i64, i64* %5480, align 8
  %5482 = add i64 %5481, -8
  %5483 = inttoptr i64 %5482 to i64*
  store i64 %5477, i64* %5483
  store i64 %5482, i64* %5480, align 8
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5475, i64* %5484, align 8
  store %struct.Memory* %loadMem1_45ea71, %struct.Memory** %MEMORY
  %loadMem2_45ea71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45ea71 = load i64, i64* %3
  %call2_45ea71 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64 %loadPC_45ea71, %struct.Memory* %loadMem2_45ea71)
  store %struct.Memory* %call2_45ea71, %struct.Memory** %MEMORY
  br label %block_.L_45ea76

block_.L_45ea76:                                  ; preds = %block_45ea59, %block_.L_45ea4a
  %loadMem_45ea76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5486 = getelementptr inbounds %struct.GPR, %struct.GPR* %5485, i32 0, i32 33
  %5487 = getelementptr inbounds %struct.Reg, %struct.Reg* %5486, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %5487 to i64*
  %5488 = load i64, i64* %PC.i15
  %5489 = add i64 %5488, 5
  %5490 = load i64, i64* %PC.i15
  %5491 = add i64 %5490, 5
  store i64 %5491, i64* %PC.i15
  %5492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5489, i64* %5492, align 8
  store %struct.Memory* %loadMem_45ea76, %struct.Memory** %MEMORY
  br label %block_.L_45ea7b

block_.L_45ea7b:                                  ; preds = %block_.L_45ea76, %block_.L_45ea45
  %loadMem_45ea7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5494 = getelementptr inbounds %struct.GPR, %struct.GPR* %5493, i32 0, i32 33
  %5495 = getelementptr inbounds %struct.Reg, %struct.Reg* %5494, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5495 to i64*
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5497 = getelementptr inbounds %struct.GPR, %struct.GPR* %5496, i32 0, i32 1
  %5498 = getelementptr inbounds %struct.Reg, %struct.Reg* %5497, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %5498 to i64*
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5500 = getelementptr inbounds %struct.GPR, %struct.GPR* %5499, i32 0, i32 15
  %5501 = getelementptr inbounds %struct.Reg, %struct.Reg* %5500, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %5501 to i64*
  %5502 = load i64, i64* %RBP.i14
  %5503 = sub i64 %5502, 76
  %5504 = load i64, i64* %PC.i12
  %5505 = add i64 %5504, 3
  store i64 %5505, i64* %PC.i12
  %5506 = inttoptr i64 %5503 to i32*
  %5507 = load i32, i32* %5506
  %5508 = zext i32 %5507 to i64
  store i64 %5508, i64* %RAX.i13, align 8
  store %struct.Memory* %loadMem_45ea7b, %struct.Memory** %MEMORY
  %loadMem_45ea7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5510 = getelementptr inbounds %struct.GPR, %struct.GPR* %5509, i32 0, i32 33
  %5511 = getelementptr inbounds %struct.Reg, %struct.Reg* %5510, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %5511 to i64*
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5513 = getelementptr inbounds %struct.GPR, %struct.GPR* %5512, i32 0, i32 1
  %5514 = getelementptr inbounds %struct.Reg, %struct.Reg* %5513, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5514 to i32*
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5516 = getelementptr inbounds %struct.GPR, %struct.GPR* %5515, i32 0, i32 15
  %5517 = getelementptr inbounds %struct.Reg, %struct.Reg* %5516, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %5517 to i64*
  %5518 = load i64, i64* %RBP.i11
  %5519 = sub i64 %5518, 28
  %5520 = load i32, i32* %EAX.i
  %5521 = zext i32 %5520 to i64
  %5522 = load i64, i64* %PC.i10
  %5523 = add i64 %5522, 3
  store i64 %5523, i64* %PC.i10
  %5524 = inttoptr i64 %5519 to i32*
  store i32 %5520, i32* %5524
  store %struct.Memory* %loadMem_45ea7e, %struct.Memory** %MEMORY
  br label %block_.L_45ea81

block_.L_45ea81:                                  ; preds = %block_.L_45ea7b, %block_.L_45e964, %block_.L_45e714
  %loadMem_45ea81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5526 = getelementptr inbounds %struct.GPR, %struct.GPR* %5525, i32 0, i32 33
  %5527 = getelementptr inbounds %struct.Reg, %struct.Reg* %5526, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5527 to i64*
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5529 = getelementptr inbounds %struct.GPR, %struct.GPR* %5528, i32 0, i32 1
  %5530 = getelementptr inbounds %struct.Reg, %struct.Reg* %5529, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5530 to i64*
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5532 = getelementptr inbounds %struct.GPR, %struct.GPR* %5531, i32 0, i32 15
  %5533 = getelementptr inbounds %struct.Reg, %struct.Reg* %5532, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %5533 to i64*
  %5534 = load i64, i64* %RBP.i9
  %5535 = sub i64 %5534, 28
  %5536 = load i64, i64* %PC.i8
  %5537 = add i64 %5536, 3
  store i64 %5537, i64* %PC.i8
  %5538 = inttoptr i64 %5535 to i32*
  %5539 = load i32, i32* %5538
  %5540 = zext i32 %5539 to i64
  store i64 %5540, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_45ea81, %struct.Memory** %MEMORY
  %loadMem_45ea84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5542 = getelementptr inbounds %struct.GPR, %struct.GPR* %5541, i32 0, i32 33
  %5543 = getelementptr inbounds %struct.Reg, %struct.Reg* %5542, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5543 to i64*
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5545 = getelementptr inbounds %struct.GPR, %struct.GPR* %5544, i32 0, i32 13
  %5546 = getelementptr inbounds %struct.Reg, %struct.Reg* %5545, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5546 to i64*
  %5547 = load i64, i64* %RSP.i
  %5548 = load i64, i64* %PC.i7
  %5549 = add i64 %5548, 7
  store i64 %5549, i64* %PC.i7
  %5550 = add i64 600, %5547
  store i64 %5550, i64* %RSP.i, align 8
  %5551 = icmp ult i64 %5550, %5547
  %5552 = icmp ult i64 %5550, 600
  %5553 = or i1 %5551, %5552
  %5554 = zext i1 %5553 to i8
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5554, i8* %5555, align 1
  %5556 = trunc i64 %5550 to i32
  %5557 = and i32 %5556, 255
  %5558 = call i32 @llvm.ctpop.i32(i32 %5557)
  %5559 = trunc i32 %5558 to i8
  %5560 = and i8 %5559, 1
  %5561 = xor i8 %5560, 1
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5561, i8* %5562, align 1
  %5563 = xor i64 600, %5547
  %5564 = xor i64 %5563, %5550
  %5565 = lshr i64 %5564, 4
  %5566 = trunc i64 %5565 to i8
  %5567 = and i8 %5566, 1
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5567, i8* %5568, align 1
  %5569 = icmp eq i64 %5550, 0
  %5570 = zext i1 %5569 to i8
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5570, i8* %5571, align 1
  %5572 = lshr i64 %5550, 63
  %5573 = trunc i64 %5572 to i8
  %5574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5573, i8* %5574, align 1
  %5575 = lshr i64 %5547, 63
  %5576 = xor i64 %5572, %5575
  %5577 = add i64 %5576, %5572
  %5578 = icmp eq i64 %5577, 2
  %5579 = zext i1 %5578 to i8
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5579, i8* %5580, align 1
  store %struct.Memory* %loadMem_45ea84, %struct.Memory** %MEMORY
  %loadMem_45ea8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5582 = getelementptr inbounds %struct.GPR, %struct.GPR* %5581, i32 0, i32 33
  %5583 = getelementptr inbounds %struct.Reg, %struct.Reg* %5582, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5583 to i64*
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5585 = getelementptr inbounds %struct.GPR, %struct.GPR* %5584, i32 0, i32 3
  %5586 = getelementptr inbounds %struct.Reg, %struct.Reg* %5585, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %5586 to i64*
  %5587 = load i64, i64* %PC.i6
  %5588 = add i64 %5587, 1
  store i64 %5588, i64* %PC.i6
  %5589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5590 = load i64, i64* %5589, align 8
  %5591 = add i64 %5590, 8
  %5592 = inttoptr i64 %5590 to i64*
  %5593 = load i64, i64* %5592
  store i64 %5593, i64* %RBX.i, align 8
  store i64 %5591, i64* %5589, align 8
  store %struct.Memory* %loadMem_45ea8b, %struct.Memory** %MEMORY
  %loadMem_45ea8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5595 = getelementptr inbounds %struct.GPR, %struct.GPR* %5594, i32 0, i32 33
  %5596 = getelementptr inbounds %struct.Reg, %struct.Reg* %5595, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5596 to i64*
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5598 = getelementptr inbounds %struct.GPR, %struct.GPR* %5597, i32 0, i32 29
  %5599 = getelementptr inbounds %struct.Reg, %struct.Reg* %5598, i32 0, i32 0
  %R14.i = bitcast %union.anon* %5599 to i64*
  %5600 = load i64, i64* %PC.i5
  %5601 = add i64 %5600, 2
  store i64 %5601, i64* %PC.i5
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5603 = load i64, i64* %5602, align 8
  %5604 = add i64 %5603, 8
  %5605 = inttoptr i64 %5603 to i64*
  %5606 = load i64, i64* %5605
  store i64 %5606, i64* %R14.i, align 8
  store i64 %5604, i64* %5602, align 8
  store %struct.Memory* %loadMem_45ea8c, %struct.Memory** %MEMORY
  %loadMem_45ea8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5608 = getelementptr inbounds %struct.GPR, %struct.GPR* %5607, i32 0, i32 33
  %5609 = getelementptr inbounds %struct.Reg, %struct.Reg* %5608, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5609 to i64*
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5611 = getelementptr inbounds %struct.GPR, %struct.GPR* %5610, i32 0, i32 31
  %5612 = getelementptr inbounds %struct.Reg, %struct.Reg* %5611, i32 0, i32 0
  %R15.i = bitcast %union.anon* %5612 to i64*
  %5613 = load i64, i64* %PC.i4
  %5614 = add i64 %5613, 2
  store i64 %5614, i64* %PC.i4
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5616 = load i64, i64* %5615, align 8
  %5617 = add i64 %5616, 8
  %5618 = inttoptr i64 %5616 to i64*
  %5619 = load i64, i64* %5618
  store i64 %5619, i64* %R15.i, align 8
  store i64 %5617, i64* %5615, align 8
  store %struct.Memory* %loadMem_45ea8e, %struct.Memory** %MEMORY
  %loadMem_45ea90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5621 = getelementptr inbounds %struct.GPR, %struct.GPR* %5620, i32 0, i32 33
  %5622 = getelementptr inbounds %struct.Reg, %struct.Reg* %5621, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5622 to i64*
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5624 = getelementptr inbounds %struct.GPR, %struct.GPR* %5623, i32 0, i32 15
  %5625 = getelementptr inbounds %struct.Reg, %struct.Reg* %5624, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5625 to i64*
  %5626 = load i64, i64* %PC.i2
  %5627 = add i64 %5626, 1
  store i64 %5627, i64* %PC.i2
  %5628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5629 = load i64, i64* %5628, align 8
  %5630 = add i64 %5629, 8
  %5631 = inttoptr i64 %5629 to i64*
  %5632 = load i64, i64* %5631
  store i64 %5632, i64* %RBP.i3, align 8
  store i64 %5630, i64* %5628, align 8
  store %struct.Memory* %loadMem_45ea90, %struct.Memory** %MEMORY
  %loadMem_45ea91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 33
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5635 to i64*
  %5636 = load i64, i64* %PC.i1
  %5637 = add i64 %5636, 1
  store i64 %5637, i64* %PC.i1
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5640 = load i64, i64* %5639, align 8
  %5641 = inttoptr i64 %5640 to i64*
  %5642 = load i64, i64* %5641
  store i64 %5642, i64* %5638, align 8
  %5643 = add i64 %5640, 8
  store i64 %5643, i64* %5639, align 8
  store %struct.Memory* %loadMem_45ea91, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_45ea91
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

define %struct.Memory* @routine_pushq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R15
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R14
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
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

define %struct.Memory* @routine_subq__0x258___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 600
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 600
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
  %23 = xor i64 600, %9
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

define %struct.Memory* @routine_movq__0x57febe___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57febe_type* @G__0x57febe to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 3, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x34__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 52
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %13, %20
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %12, align 8
  %23 = icmp ult i32 %13, %20
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %21, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i32 %20, %13
  %33 = xor i32 %32, %21
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %21, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %21, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %13, 31
  %45 = lshr i32 %20, 31
  %46 = xor i32 %45, %44
  %47 = xor i32 %41, %44
  %48 = add i32 %47, %46
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movq__rax__MINUS0x1f0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 496
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__ecx__MINUS0x1f4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 500
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xae23a4___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*)
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

define %struct.Memory* @routine_movl__ecx__0xae23a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_callq_.find_origin(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 1
  %14 = icmp ult i32 %9, 1
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
  %23 = xor i64 1, %10
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

define %struct.Memory* @routine_je_.L_45e59f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 2
  %14 = icmp ult i32 %9, 2
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
  %23 = xor i64 2, %10
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

define %struct.Memory* @routine_jne_.L_45e5a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_45e615(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x126a___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4714, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a4d2___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x57a4d2_type* @G__0x57a4d2 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x208__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 520
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x210__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 528
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl_MINUS0x208__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 520
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x214__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 532
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x210__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 528
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x218__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 536
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x214__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 532
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x218__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 536
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.abortgo(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.countlib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 2
  %14 = icmp ult i32 %9, 2
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
  %23 = xor i64 2, %10
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

define %struct.Memory* @routine_jne_.L_45e62b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_45e69c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x126b___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4715, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57fd27___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x57fd27_type* @G__0x57fd27 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x21c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 540
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x228__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 552
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x21c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 540
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x22c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 556
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x228__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x230__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 560
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x22c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 556
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x230__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 560
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb8b854___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x14___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 20, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 20
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
  %26 = xor i64 20, %9
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

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_jle_.L_45e720(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i32 %17, %13
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %18, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %14, %12
  %30 = trunc i64 %29 to i32
  %31 = xor i32 %30, %18
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %18, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %18, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %17, 31
  %43 = lshr i32 %13, 31
  %44 = xor i32 %43, %42
  %45 = xor i32 %39, %42
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
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

define %struct.Memory* @routine_jne_.L_45e720(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC
  %8 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = lshr i64 %8, 63
  %25 = xor i64 %21, %24
  %26 = add i64 %25, %24
  %27 = icmp eq i64 %26, 2
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_45e6ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__ecx___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x1f0__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 496
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1f4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 500
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sgf_trace(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 40
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

define %struct.Memory* @routine_je_.L_45e714(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = inttoptr i64 %9 to i32*
  store i32 0, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45ea81(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x44__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.findlib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x234__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 564
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 2
  %16 = icmp ult i32 %14, 2
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
  %25 = xor i32 %14, 2
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

define %struct.Memory* @routine_jge_.L_45e814(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_45e74d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x1f8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 504
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1f8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 88
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

define %struct.Memory* @routine_jge_.L_45e7b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x1f8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1e8__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -488
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

define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x44__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RBP
  %18 = load i64, i64* %RAX
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -68
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %21 to i32*
  %25 = load i32, i32* %24
  %26 = sub i32 %15, %25
  %27 = icmp ult i32 %15, %25
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %26, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = xor i32 %25, %15
  %37 = xor i32 %36, %26
  %38 = lshr i32 %37, 4
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %40, i8* %41, align 1
  %42 = icmp eq i32 %26, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %26, 31
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %15, 31
  %49 = lshr i32 %25, 31
  %50 = xor i32 %49, %48
  %51 = xor i32 %45, %48
  %52 = add i32 %51, %50
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %54, i8* %55, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_45e79f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x120__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -288
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

define %struct.Memory* @routine_addl__0x0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RCX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %12, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = trunc i64 %9 to i32
  %22 = xor i32 %21, %12
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %12, 31
  %34 = xor i32 %30, %33
  %35 = add i32 %34, %30
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x120__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -288
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45e7b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_45e7a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x1f8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 504
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45e757(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_45e7fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x32__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 50
  %16 = icmp ult i32 %14, 50
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
  %25 = xor i32 %14, 50
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

define %struct.Memory* @routine_jge_.L_45e7fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -68
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x1e8__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -488
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x120__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, -288
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 0, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x58__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_45e801(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_45e806(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
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

define %struct.Memory* @routine_jmpq_.L_45e73e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x1e8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 488
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = xor i64 %13, %11
  %17 = trunc i64 %16 to i32
  %18 = and i64 %16, 4294967295
  store i64 %18, i64* %9, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %19, align 1
  %20 = and i32 %17, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %17, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %17, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x1f0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 496
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.order_moves(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_45e9f1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57febe___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x57febe_type* @G__0x57febe to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x1fc__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 508
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x200__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 512
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x204__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 516
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1e8__rbp__rdi_4____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R8D to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -488
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %20 to i32*
  %24 = load i32, i32* %23
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_sete__bl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___bl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %BL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %BL, align 1
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

define %struct.Memory* @routine_movzbl__bl___r14d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 29
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %R14D = bitcast %union.anon* %12 to i32*
  %13 = bitcast i32* %R14D to i64*
  %14 = load i8, i8* %BL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = and i64 %15, 255
  store i64 %18, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x240__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 576
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x248__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 584
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r10d___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %R10D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %R11D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x248__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 584
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x8__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x240__rbp____r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r15__0x10__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %R15
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r14d__0x18__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 24
  %14 = load i32, i32* %R14D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.komaster_trymove(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_45e9de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x204__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 516
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

define %struct.Memory* @routine_jne_.L_45e9a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1fc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 508
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x200__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 512
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.simple_ladder_defend(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 5
  %16 = icmp ult i32 %14, 5
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
  %25 = xor i32 %14, 5
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

define %struct.Memory* @routine_je_.L_45e9a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_45e970(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.popgo(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_45e950(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x5___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57e5fb___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x57e5fb_type* @G__0x57e5fb to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_45e964(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x5__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 5, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_45e99c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 76
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

define %struct.Memory* @routine_jle_.L_45e99c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45e9a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_45e9d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 5
  %14 = icmp ult i32 %9, 5
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
  %23 = xor i64 5, %10
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

define %struct.Memory* @routine_je_.L_45e9d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45e9e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_45e837(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_45e9f6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_45ea4a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_45ea14(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_45ea45(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57f60a___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x57f60a_type* @G__0x57f60a to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45ea7b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_45ea76(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
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

define %struct.Memory* @routine_addq__0x258___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 600, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 600
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
  %25 = xor i64 600, %9
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

define %struct.Memory* @routine_popq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R14, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R15, align 8
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
